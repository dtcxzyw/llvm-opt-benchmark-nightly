inline.NumInlined: 1469
inline.NumDeleted: 612
begin_hunk_0_@_ZN6Assimp3PLY8Property13ParseSemanticERSt6vectorIcSaIcEE:bb.a
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  switch i8 %i.cy, label %bb.ak [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92:   ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  %.not11.i.i93 = icmp eq i8 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %storemerge.i.i94 = select i1 %.not11.i.i93, ptr %i.cx, ptr %i.cz ; 2 uses
  %i.da = ptrtoint ptr %storemerge.i.i94 to i64   ; 3 uses
  %i.db = ptrtoint ptr %i.a to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.a, i64 %i.dc ; 2 uses
  %.not11.i.i.i95 = icmp eq ptr %storemerge.i.i94, %i.c
  br i1 %.not11.i.i.i95, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i96, label %bb.ag

bb.ag:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92
  %i.de = ptrtoint ptr %i.c to i64
  %i.df = sub i64 %i.de, %i.da                    ; 3 uses
  %i.dg = icmp sgt i64 %i.df, 1
  br i1 %i.dg, label %bb.ah, label %bb.ai, !prof !3

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.dd, i64 %i.df, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i96

bb.ai:                                            ; preds = %bb.ag
  %i.dh = icmp eq i64 %i.df, 1
  br i1 %i.dh, label %bb.aj, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i96

bb.aj:                                            ; preds = %bb.ai
  %i.di = load i8, ptr %i.dd, align 1
  store i8 %i.di, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i96

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i96: ; preds = %bb.aj, %bb.ai, %bb.ah, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i92
  %i.dj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.da
  %i.dm = getelementptr inbounds i8, ptr %i.a, i64 %i.dl ; 2 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i.i.i.i97, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i98

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i98:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i96
  store ptr %i.dm, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit

bb.ak:                                            ; preds = %bb.a, %bb.ae, %bb.af
  %i.dn = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.30, i32 noundef 8)
  br i1 %i.dn, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.31, i32 noundef 14)
  br i1 %i.do, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.32, i32 noundef 11)
  br i1 %i.dp, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dq = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.33, i32 noundef 13)
  br i1 %i.dq, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.34, i32 noundef 12)
  br i1 %i.dr, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ds = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.35, i32 noundef 13)
  br i1 %i.ds, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dt = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.36, i32 noundef 11)
  br i1 %i.dt, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.du = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.37, i32 noundef 13)
  br i1 %i.du, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dv = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.38, i32 noundef 12)
  br i1 %i.dv, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.39, i32 noundef 13)
  br i1 %i.dw, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dx = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.40, i32 noundef 12)
  br i1 %i.dx, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dy = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.41, i32 noundef 14)
  br i1 %i.dy, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dz = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.42, i32 noundef 13)
  br i1 %i.dz, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ea = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.43, i32 noundef 14)
  br i1 %i.ea, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eb = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.44, i32 noundef 7)
  br i1 %i.eb, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ec = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.45, i32 noundef 14)
  br i1 %i.ec, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ed = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.46, i32 noundef 1)
  br i1 %i.ed, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ee = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.47, i32 noundef 1)
  br i1 %i.ee, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ef = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.48, i32 noundef 1)
  br i1 %i.ef, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eg = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.49, i32 noundef 1)
  br i1 %i.eg, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eh = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.50, i32 noundef 1)
  br i1 %i.eh, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ei = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.51, i32 noundef 2)
  br i1 %i.ei, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ej = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.52, i32 noundef 9)
  br i1 %i.ej, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ek = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.53, i32 noundef 1)
  br i1 %i.ek, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.el = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.54, i32 noundef 1)
  br i1 %i.el, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.em = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.55, i32 noundef 2)
  br i1 %i.em, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.en = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.56, i32 noundef 9)
  br i1 %i.en, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eo = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.57, i32 noundef 1)
  br i1 %i.eo, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ep = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.58, i32 noundef 1)
  br i1 %i.ep, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eq = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.59, i32 noundef 1)
  br i1 %i.eq, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.er = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.60, i32 noundef 2)
  br i1 %i.er, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.es = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.61, i32 noundef 2)
  br i1 %i.es, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.et = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.62, i32 noundef 2)
  br i1 %i.et, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eu = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.eu, ptr noundef nonnull @.str.63)
  %i.ev = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit: ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i98, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i96, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i86, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i84, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i74, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i72, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i62, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i60, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i50, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i48, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.br
  %.0 = phi i32 [ 30, %bb.br ], [ 5, %bb.bq ], [ 8, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ 9, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i50 ], [ 10, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i62 ], [ 11, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i74 ], [ 14, %bb.ak ], [ 15, %bb.al ], [ 16, %bb.am ], [ 17, %bb.an ], [ 18, %bb.ao ], [ 19, %bb.ap ], [ 20, %bb.aq ], [ 21, %bb.ar ], [ 22, %bb.as ], [ 23, %bb.at ], [ 24, %bb.au ], [ 25, %bb.av ], [ 26, %bb.aw ], [ 27, %bb.ax ], [ 29, %bb.ay ], [ 28, %bb.az ], [ 8, %bb.ba ], [ 9, %bb.bb ], [ 10, %bb.bc ], [ 6, %bb.bd ], [ 7, %bb.bh ], [ 0, %bb.bl ], [ 1, %bb.bm ], [ 2, %bb.bn ], [ 3, %bb.bo ], [ 4, %bb.bp ], [ 12, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i86 ], [ 6, %bb.bg ], [ 6, %bb.bf ], [ 6, %bb.be ], [ 7, %bb.bk ], [ 7, %bb.bj ], [ 7, %bb.bi ], [ 8, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i ], [ 9, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i48 ], [ 10, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i60 ], [ 11, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i72 ], [ 12, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i84 ], [ 12, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i96 ], [ 12, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i98 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %1 = ptrtoaddr ptr %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0.i = phi ptr [ %i.a, %bb.c ], [ %i.j, %bb.f ] ; 7 uses
  %i.i = load i8, ptr %.0.i, align 1
  switch i8 %i.i, label %bb.e [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 35, label %.critedge.i
  ]

bb.e:                                             ; preds = %bb.d
  %.not22.i = icmp eq ptr %.0.i, %i.c
  br i1 %.not22.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.d, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.e, %bb.d, %bb.d, %bb.d, %bb.d
  %.0.lcssa.i = phi ptr [ %.0.i, %bb.d ], [ %.0.i, %bb.d ], [ %.0.i, %bb.d ], [ %.0.i, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %.0.lcssa24.i = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.k = sub i64 %1, %.0.lcssa24.i
  %scevgep25.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.k ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.critedge.i
  %.1.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %i.m, %bb.i ] ; 4 uses
  %i.l = load i8, ptr %.1.i, align 1              ; 2 uses
  switch i8 %i.l, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit [
    i8 13, label %bb.h
    i8 10, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %.not23.i = icmp eq ptr %.1.i, %i.c
  br i1 %.not23.i, label %._ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit_crit_edge, label %bb.i

._ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit_crit_edge: ; preds = %bb.h
  %.pre = load i8, ptr %scevgep25.i, align 1
  br label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %bb.g, !llvm.loop !6

_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit:         ; preds = %bb.g, %._ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit_crit_edge
  %i.n = phi i8 [ %.pre, %._ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit_crit_edge ], [ %i.l, %bb.g ]
  %.1.lcssa.i = phi ptr [ %scevgep25.i, %._ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit_crit_edge ], [ %.1.i, %bb.g ] ; 3 uses
  %i.o = icmp ne i8 %i.n, 0                       ; 3 uses
  %i.p = ptrtoint ptr %.1.lcssa.i to i64          ; 3 uses
  %i.q = sub i64 %i.p, %i.f
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, %.1.lcssa.i
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit
  %.not11.i.i = icmp eq ptr %.1.lcssa.i, %i.c
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = sub i64 %i.e, %i.p                       ; 3 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.l, label %bb.m, !prof !3

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.r, i64 %i.s, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.u = icmp eq i64 %i.s, 1
  br i1 %i.u, label %bb.n, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.v = load i8, ptr %i.r, align 1
  store i8 %i.v, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.w = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.p
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %i.y ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.z
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.z, ptr %i.b, align 8
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit, %bb.b
  %.0 = phi i1 [ %i.o, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i ], [ false, %bb.b ], [ %i.o, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit ], [ %i.o, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY8Property13ParsePropertyERSt6vectorIcSaIcEEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0.i.i = phi ptr [ %i.a, %bb.c ], [ %i.j, %bb.f ] ; 4 uses
  %i.i = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.i, label %.critedge.i.i [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not.i.i = icmp eq ptr %.0.i.i, %i.c
  br i1 %.not.i.i, label %.critedge.ithread-pre-split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.d, !llvm.loop !7

.critedge.ithread-pre-split.i:                    ; preds = %bb.e
  %.pr.i = load i8, ptr %i.h, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.d, %.critedge.ithread-pre-split.i
  %i.k = phi i8 [ %.pr.i, %.critedge.ithread-pre-split.i ], [ %i.i, %bb.d ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.h, %.critedge.ithread-pre-split.i ], [ %.0.i.i, %bb.d ] ; 3 uses
  %i.l = icmp ugt i8 %i.k, 13
  %switch.cast = zext nneg i8 %i.k to i14
  %switch.downshift = lshr i14 3070, %switch.cast
  %switch.masked = trunc i14 %switch.downshift to i1
  %i.m = select i1 %i.l, i1 true, i1 %switch.masked ; 2 uses
  %i.n = ptrtoint ptr %.0.lcssa.i.i to i64        ; 3 uses
  %i.o = sub i64 %i.n, %i.f
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, %.0.lcssa.i.i
  br i1 %.not.i.i.i, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  %.not11.i.i.i = icmp eq ptr %.0.lcssa.i.i, %i.c
  br i1 %.not11.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sub i64 %i.e, %i.n                       ; 3 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %bb.j, !prof !3

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.k, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.t = load i8, ptr %i.p, align 1
  store i8 %i.t, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.u = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.n
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.x
  br i1 %.not.i.i.i.i, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.x, ptr %i.b, align 8
  br i1 %i.m, label %bb.l, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit: ; preds = %.critedge.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i
  %i.y = phi ptr [ %i.c, %.critedge.i.i ], [ %i.u, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i ]
  br i1 %i.m, label %bb.l, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

bb.l:                                             ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit
  %i.z = phi ptr [ %i.x, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.y, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit ] ; 3 uses
  %i.aa = load ptr, ptr %0, align 8               ; 10 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  %.not.i25 = icmp eq ptr %i.aa, null
  %or.cond.i = or i1 %.not.i25, %i.ab
  br i1 %or.cond.i, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.64, ptr noundef nonnull dereferenceable(1) %i.aa, i64 noundef 8) #26
  %.not.i.i26 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i26, label %bb.n, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  switch i8 %i.ae, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i:     ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %.not11.i.i = icmp eq i8 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %storemerge.i.i = select i1 %.not11.i.i, ptr %i.ad, ptr %i.af ; 2 uses
  %i.ag = ptrtoint ptr %storemerge.i.i to i64     ; 3 uses
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai ; 2 uses
  %.not11.i.i.i29 = icmp eq ptr %storemerge.i.i, %i.z
  br i1 %.not11.i.i.i29, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i30, label %bb.o

bb.o:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  %i.ak = ptrtoint ptr %i.z to i64
  %i.al = sub i64 %i.ak, %i.ag                    ; 3 uses
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.p, label %bb.q, !prof !3

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %i.aj, i64 %i.al, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i30

bb.q:                                             ; preds = %bb.o
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i30

bb.r:                                             ; preds = %bb.q
  %i.ao = load i8, ptr %i.aj, align 1
  store i8 %i.ao, ptr %i.aa, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i30

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i30: ; preds = %bb.r, %bb.q, %bb.p, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  %i.ap = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ag
  %i.as = getelementptr inbounds i8, ptr %i.aa, i64 %i.ar ; 3 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i.i.i31, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i32

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i32:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i30
  store ptr %i.as, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit: ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i32, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i30
  %i.at = phi ptr [ %i.as, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i32 ], [ %i.ap, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i30 ] ; 5 uses
  %i.au = load ptr, ptr %0, align 8               ; 10 uses
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit
  %i.aw = ptrtoint ptr %i.at to i64               ; 2 uses
  %.not.i33 = icmp eq ptr %i.au, null
  br i1 %.not.i33, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.0.i.i34 = phi ptr [ %i.au, %bb.t ], [ %i.bb, %bb.w ] ; 4 uses
  %i.ba = load i8, ptr %.0.i.i34, align 1         ; 2 uses
  switch i8 %i.ba, label %.critedge.i.i38 [
    i8 32, label %bb.v
    i8 9, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %.not.i.i35 = icmp eq ptr %.0.i.i34, %i.at
  br i1 %.not.i.i35, label %.critedge.ithread-pre-split.i36, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 1
  br label %bb.u, !llvm.loop !7

.critedge.ithread-pre-split.i36:                  ; preds = %bb.v
  %.pr.i37 = load i8, ptr %i.az, align 1
  br label %.critedge.i.i38

.critedge.i.i38:                                  ; preds = %bb.u, %.critedge.ithread-pre-split.i36
  %i.bc = phi i8 [ %.pr.i37, %.critedge.ithread-pre-split.i36 ], [ %i.ba, %bb.u ] ; 2 uses
  %.0.lcssa.i.i39 = phi ptr [ %i.az, %.critedge.ithread-pre-split.i36 ], [ %.0.i.i34, %bb.u ] ; 3 uses
  %i.bd = icmp ugt i8 %i.bc, 13
  %switch.cast216 = zext nneg i8 %i.bc to i14
  %switch.downshift218 = lshr i14 3070, %switch.cast216
  %switch.masked219 = trunc i14 %switch.downshift218 to i1
  %i.be = select i1 %i.bd, i1 true, i1 %switch.masked219 ; 2 uses
  %i.bf = ptrtoint ptr %.0.lcssa.i.i39 to i64     ; 3 uses
  %i.bg = sub i64 %i.bf, %i.ax
  %i.bh = getelementptr inbounds i8, ptr %i.au, i64 %i.bg ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.au, %.0.lcssa.i.i39
  br i1 %.not.i.i.i41, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit47, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i38
  %.not11.i.i.i42 = icmp eq ptr %.0.lcssa.i.i39, %i.at
  br i1 %.not11.i.i.i42, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i43, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = sub i64 %i.aw, %i.bf                    ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %bb.aa, !prof !3

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.bh, i64 %i.bi, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i43

bb.aa:                                            ; preds = %bb.y
  %i.bk = icmp eq i64 %i.bi, 1
  br i1 %i.bk, label %bb.ab, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i43

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load i8, ptr %i.bh, align 1
  store i8 %i.bl, ptr %i.au, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i43

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i43: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.bm = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.bf
  %i.bp = getelementptr inbounds i8, ptr %i.au, i64 %i.bo ; 3 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.bm, %i.bp
  br i1 %.not.i.i.i.i44, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit47, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i45

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i45:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i43
  store ptr %i.bp, ptr %i.b, align 8
  br i1 %i.be, label %bb.ac, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit47: ; preds = %.critedge.i.i38, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i43
  %i.bq = phi ptr [ %i.at, %.critedge.i.i38 ], [ %i.bm, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i43 ]
  br i1 %i.be, label %bb.ac, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

bb.ac:                                            ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i45, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit47
  %i.br = phi ptr [ %i.bp, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i45 ], [ %i.bq, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit47 ] ; 3 uses
  %i.bs = load ptr, ptr %0, align 8               ; 10 uses
  %i.bt = icmp eq ptr %i.bs, %i.br
  %.not.i48 = icmp eq ptr %i.bs, null
  %or.cond.i49 = or i1 %.not.i48, %i.bt
  br i1 %or.cond.i49, label %bb.bk, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.65, ptr noundef nonnull dereferenceable(1) %i.bs, i64 noundef 4) #26
  %.not.i.i50 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i50, label %bb.ae, label %bb.bk

bb.ae:                                            ; preds = %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1             ; 2 uses
  switch i8 %i.bw, label %bb.bk [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52:   ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %.not11.i.i53 = icmp eq i8 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 5
  %storemerge.i.i54 = select i1 %.not11.i.i53, ptr %i.bv, ptr %i.bx ; 2 uses
  %i.by = ptrtoint ptr %storemerge.i.i54 to i64   ; 3 uses
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.bs, i64 %i.ca ; 2 uses
  %.not11.i.i.i56 = icmp eq ptr %storemerge.i.i54, %i.br
  br i1 %.not11.i.i.i56, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i57, label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52
  %i.cc = ptrtoint ptr %i.br to i64
  %i.cd = sub i64 %i.cc, %i.by                    ; 3 uses
  %i.ce = icmp sgt i64 %i.cd, 1
  br i1 %i.ce, label %bb.ag, label %bb.ah, !prof !3

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull align 1 %i.cb, i64 %i.cd, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i57

bb.ah:                                            ; preds = %bb.af
  %i.cf = icmp eq i64 %i.cd, 1
  br i1 %i.cf, label %bb.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i57

bb.ai:                                            ; preds = %bb.ah
  %i.cg = load i8, ptr %i.cb, align 1
  store i8 %i.cg, ptr %i.bs, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i57

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i57: ; preds = %bb.ai, %bb.ah, %bb.ag, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i52
  %i.ch = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.by
  %i.ck = getelementptr inbounds i8, ptr %i.bs, i64 %i.cj ; 2 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.ch, %i.ck
  br i1 %.not.i.i.i.i58, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit60, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i59

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i59:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i57
  store ptr %i.ck, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit60

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit60: ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i59, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i57
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.cl, align 8
  %i.cm = tail call noundef i32 @_ZN6Assimp3PLY8Property13ParseDataTypeERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.cm, ptr %i.cn, align 4
  %i.co = icmp eq i32 %i.cm, 8
  %i.cp = load ptr, ptr %0, align 8               ; 19 uses
  %i.cq = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq                ; 2 uses
  br i1 %i.co, label %bb.aj, label %bb.ax

bb.aj:                                            ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit60
  br i1 %i.cr, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %.not.i61 = icmp eq ptr %i.cp, null
  br i1 %.not.i61, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ct = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cu
  %4 = ptrtoaddr ptr %i.cq to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.0.i.i62 = phi ptr [ %i.cp, %bb.al ], [ %i.cx, %bb.ao ] ; 7 uses
  %i.cw = load i8, ptr %.0.i.i62, align 1
  switch i8 %i.cw, label %bb.an [
    i8 13, label %.critedge.i.i63
    i8 10, label %.critedge.i.i63
    i8 0, label %.critedge.i.i63
    i8 35, label %.critedge.i.i63
  ]

bb.an:                                            ; preds = %bb.am
  %.not22.i.i = icmp eq ptr %.0.i.i62, %i.cq
  br i1 %.not22.i.i, label %.critedge.i.i63, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i62, i64 1
  br label %bb.am, !llvm.loop !4

.critedge.i.i63:                                  ; preds = %bb.an, %bb.am, %bb.am, %bb.am, %bb.am
  %.0.lcssa.i.i64 = phi ptr [ %.0.i.i62, %bb.am ], [ %.0.i.i62, %bb.am ], [ %.0.i.i62, %bb.am ], [ %.0.i.i62, %bb.am ], [ %i.cv, %bb.an ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i64 to i64
  %i.cy = sub i64 %4, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i64, i64 %i.cy
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.critedge.i.i63
  %.1.i.i = phi ptr [ %.0.lcssa.i.i64, %.critedge.i.i63 ], [ %i.da, %bb.ar ] ; 4 uses
  %i.cz = load i8, ptr %.1.i.i, align 1
  switch i8 %i.cz, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i [
    i8 13, label %bb.aq
    i8 10, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %.not23.i.i = icmp eq ptr %.1.i.i, %i.cq
  br i1 %.not23.i.i, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.ap, !llvm.loop !6

_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i:       ; preds = %bb.aq, %bb.ap
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.ap ], [ %scevgep25.i.i, %bb.aq ] ; 3 uses
  %i.db = ptrtoint ptr %.1.lcssa.i.i to i64       ; 3 uses
  %i.dc = sub i64 %i.db, %i.ct
  %i.dd = getelementptr inbounds i8, ptr %i.cp, i64 %i.dc ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.cp, %.1.lcssa.i.i
  br i1 %.not.i.i.i65, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.as

bb.as:                                            ; preds = %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i
  %.not11.i.i.i66 = icmp eq ptr %.1.lcssa.i.i, %i.cq
  br i1 %.not11.i.i.i66, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i67, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.de = sub i64 %i.cs, %i.db                    ; 3 uses
  %i.df = icmp sgt i64 %i.de, 1
  br i1 %i.df, label %bb.au, label %bb.av, !prof !3

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull align 1 %i.dd, i64 %i.de, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i67

bb.av:                                            ; preds = %bb.at
  %i.dg = icmp eq i64 %i.de, 1
  br i1 %i.dg, label %bb.aw, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i67

bb.aw:                                            ; preds = %bb.av
  %i.dh = load i8, ptr %i.dd, align 1
  store i8 %i.dh, ptr %i.cp, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i67

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i67: ; preds = %bb.aw, %bb.av, %bb.au, %bb.as
  %i.di = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.db
  %i.dl = getelementptr inbounds i8, ptr %i.cp, i64 %i.dk ; 2 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.di, %i.dl
  br i1 %.not.i.i.i.i68, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i69

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i69:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i67
  store ptr %i.dl, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

bb.ax:                                            ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit60
  br i1 %i.cr, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dm = ptrtoint ptr %i.cq to i64               ; 2 uses
  %.not.i71 = icmp eq ptr %i.cp, null
  br i1 %.not.i71, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dn = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.do ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %.0.i.i72 = phi ptr [ %i.cp, %bb.az ], [ %i.dr, %bb.bc ] ; 4 uses
  %i.dq = load i8, ptr %.0.i.i72, align 1         ; 2 uses
  switch i8 %i.dq, label %.critedge.i.i76 [
    i8 32, label %bb.bb
    i8 9, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %.not.i.i73 = icmp eq ptr %.0.i.i72, %i.cq
  br i1 %.not.i.i73, label %.critedge.ithread-pre-split.i74, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 1
  br label %bb.ba, !llvm.loop !7

.critedge.ithread-pre-split.i74:                  ; preds = %bb.bb
  %.pr.i75 = load i8, ptr %i.dp, align 1
  br label %.critedge.i.i76

.critedge.i.i76:                                  ; preds = %bb.ba, %.critedge.ithread-pre-split.i74
  %i.ds = phi i8 [ %.pr.i75, %.critedge.ithread-pre-split.i74 ], [ %i.dq, %bb.ba ] ; 2 uses
  %.0.lcssa.i.i77 = phi ptr [ %i.dp, %.critedge.ithread-pre-split.i74 ], [ %.0.i.i72, %bb.ba ] ; 3 uses
  %i.dt = icmp ugt i8 %i.ds, 13
  %switch.cast221 = zext nneg i8 %i.ds to i14
  %switch.downshift223 = lshr i14 3070, %switch.cast221
  %switch.masked224 = trunc i14 %switch.downshift223 to i1
  %i.du = select i1 %i.dt, i1 true, i1 %switch.masked224 ; 2 uses
  %i.dv = ptrtoint ptr %.0.lcssa.i.i77 to i64     ; 3 uses
  %i.dw = sub i64 %i.dv, %i.dn
  %i.dx = getelementptr inbounds i8, ptr %i.cp, i64 %i.dw ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.cp, %.0.lcssa.i.i77
  br i1 %.not.i.i.i79, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit85, label %bb.bd

bb.bd:                                            ; preds = %.critedge.i.i76
  %.not11.i.i.i80 = icmp eq ptr %.0.lcssa.i.i77, %i.cq
  br i1 %.not11.i.i.i80, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i81, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dy = sub i64 %i.dm, %i.dv                    ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, 1
  br i1 %i.dz, label %bb.bf, label %bb.bg, !prof !3

bb.bf:                                            ; preds = %bb.be
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull align 1 %i.dx, i64 %i.dy, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i81

bb.bg:                                            ; preds = %bb.be
  %i.ea = icmp eq i64 %i.dy, 1
  br i1 %i.ea, label %bb.bh, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i81

bb.bh:                                            ; preds = %bb.bg
  %i.eb = load i8, ptr %i.dx, align 1
  store i8 %i.eb, ptr %i.cp, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i81

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i81: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd
  %i.ec = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.dv
  %i.ef = getelementptr inbounds i8, ptr %i.cp, i64 %i.ee ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.ec, %i.ef
  br i1 %.not.i.i.i.i82, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit85, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i83

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i83:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i81
  store ptr %i.ef, ptr %i.b, align 8
  br i1 %i.du, label %bb.bi, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit85: ; preds = %.critedge.i.i76, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i81
  br i1 %i.du, label %bb.bi, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

bb.bi:                                            ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i83, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit85
  %i.eg = tail call noundef i32 @_ZN6Assimp3PLY8Property13ParseDataTypeERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  store i32 %i.eg, ptr %1, align 8
  %i.eh = icmp eq i32 %i.eg, 8
  br i1 %i.eh, label %bb.bj, label %bb.bz

bb.bj:                                            ; preds = %bb.bi
  %i.ei = tail call noundef zeroext i1 @_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

bb.bk:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.ej = tail call noundef i32 @_ZN6Assimp3PLY8Property13ParseDataTypeERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  store i32 %i.ej, ptr %1, align 8
  %i.ek = icmp eq i32 %i.ej, 8
  br i1 %i.ek, label %bb.bl, label %bb.bz

bb.bl:                                            ; preds = %bb.bk
  %i.el = load ptr, ptr %0, align 8               ; 10 uses
  %i.em = load ptr, ptr %i.b, align 8             ; 6 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eo = ptrtoint ptr %i.em to i64               ; 2 uses
  %.not.i86 = icmp eq ptr %i.el, null
  br i1 %.not.i86, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ep = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eq
  %5 = ptrtoaddr ptr %i.em to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %.0.i.i87 = phi ptr [ %i.el, %bb.bn ], [ %i.et, %bb.bq ] ; 7 uses
  %i.es = load i8, ptr %.0.i.i87, align 1
  switch i8 %i.es, label %bb.bp [
    i8 13, label %.critedge.i.i88
    i8 10, label %.critedge.i.i88
    i8 0, label %.critedge.i.i88
    i8 35, label %.critedge.i.i88
  ]

bb.bp:                                            ; preds = %bb.bo
  %.not22.i.i104 = icmp eq ptr %.0.i.i87, %i.em
  br i1 %.not22.i.i104, label %.critedge.i.i88, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i87, i64 1
  br label %bb.bo, !llvm.loop !4

.critedge.i.i88:                                  ; preds = %bb.bp, %bb.bo, %bb.bo, %bb.bo, %bb.bo
  %.0.lcssa.i.i89 = phi ptr [ %.0.i.i87, %bb.bo ], [ %.0.i.i87, %bb.bo ], [ %.0.i.i87, %bb.bo ], [ %.0.i.i87, %bb.bo ], [ %i.er, %bb.bp ] ; 3 uses
  %.0.lcssa24.i.i90 = ptrtoaddr ptr %.0.lcssa.i.i89 to i64
  %i.eu = sub i64 %5, %.0.lcssa24.i.i90
  %scevgep25.i.i91 = getelementptr i8, ptr %.0.lcssa.i.i89, i64 %i.eu
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.critedge.i.i88
  %.1.i.i92 = phi ptr [ %.0.lcssa.i.i89, %.critedge.i.i88 ], [ %i.ew, %bb.bt ] ; 4 uses
  %i.ev = load i8, ptr %.1.i.i92, align 1
  switch i8 %i.ev, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i96 [
    i8 13, label %bb.bs
    i8 10, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  %.not23.i.i93 = icmp eq ptr %.1.i.i92, %i.em
  br i1 %.not23.i.i93, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i96, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ew = getelementptr inbounds nuw i8, ptr %.1.i.i92, i64 1
  br label %bb.br, !llvm.loop !6

_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i96:     ; preds = %bb.bs, %bb.br
  %.1.lcssa.i.i97 = phi ptr [ %.1.i.i92, %bb.br ], [ %scevgep25.i.i91, %bb.bs ] ; 3 uses
  %i.ex = ptrtoint ptr %.1.lcssa.i.i97 to i64     ; 3 uses
  %i.ey = sub i64 %i.ex, %i.ep
  %i.ez = getelementptr inbounds i8, ptr %i.el, i64 %i.ey ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.el, %.1.lcssa.i.i97
  br i1 %.not.i.i.i98, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i96
  %.not11.i.i.i99 = icmp eq ptr %.1.lcssa.i.i97, %i.em
  br i1 %.not11.i.i.i99, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i100, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fa = sub i64 %i.eo, %i.ex                    ; 3 uses
  %i.fb = icmp sgt i64 %i.fa, 1
  br i1 %i.fb, label %bb.bw, label %bb.bx, !prof !3

bb.bw:                                            ; preds = %bb.bv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.el, ptr nonnull align 1 %i.ez, i64 %i.fa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i100

bb.bx:                                            ; preds = %bb.bv
  %i.fc = icmp eq i64 %i.fa, 1
  br i1 %i.fc, label %bb.by, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i100

bb.by:                                            ; preds = %bb.bx
  %i.fd = load i8, ptr %i.ez, align 1
  store i8 %i.fd, ptr %i.el, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i100

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i100: ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bu
  %i.fe = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.ex
  %i.fh = getelementptr inbounds i8, ptr %i.el, i64 %i.fg ; 2 uses
  %.not.i.i.i.i101 = icmp eq ptr %i.fe, %i.fh
  br i1 %.not.i.i.i.i101, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i102

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i102: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i100
  store ptr %i.fh, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

bb.bz:                                            ; preds = %bb.bk, %bb.bi
  %i.fi = load ptr, ptr %0, align 8               ; 10 uses
  %i.fj = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fl = ptrtoint ptr %i.fj to i64               ; 2 uses
  %.not.i106 = icmp eq ptr %i.fi, null
  br i1 %.not.i106, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fm = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fn ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %bb.cb
  %.0.i.i107 = phi ptr [ %i.fi, %bb.cb ], [ %i.fq, %bb.ce ] ; 4 uses
  %i.fp = load i8, ptr %.0.i.i107, align 1        ; 2 uses
  switch i8 %i.fp, label %.critedge.i.i111 [
    i8 32, label %bb.cd
    i8 9, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %.not.i.i108 = icmp eq ptr %.0.i.i107, %i.fj
  br i1 %.not.i.i108, label %.critedge.ithread-pre-split.i109, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i107, i64 1
  br label %bb.cc, !llvm.loop !7

.critedge.ithread-pre-split.i109:                 ; preds = %bb.cd
  %.pr.i110 = load i8, ptr %i.fo, align 1
  br label %.critedge.i.i111

.critedge.i.i111:                                 ; preds = %bb.cc, %.critedge.ithread-pre-split.i109
  %i.fr = phi i8 [ %.pr.i110, %.critedge.ithread-pre-split.i109 ], [ %i.fp, %bb.cc ] ; 2 uses
  %.0.lcssa.i.i112 = phi ptr [ %i.fo, %.critedge.ithread-pre-split.i109 ], [ %.0.i.i107, %bb.cc ] ; 3 uses
  %i.fs = icmp ugt i8 %i.fr, 13
  %switch.cast226 = zext nneg i8 %i.fr to i14
  %switch.downshift228 = lshr i14 3070, %switch.cast226
  %switch.masked229 = trunc i14 %switch.downshift228 to i1
  %i.ft = select i1 %i.fs, i1 true, i1 %switch.masked229 ; 2 uses
  %i.fu = ptrtoint ptr %.0.lcssa.i.i112 to i64    ; 3 uses
  %i.fv = sub i64 %i.fu, %i.fm
  %i.fw = getelementptr inbounds i8, ptr %i.fi, i64 %i.fv ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.fi, %.0.lcssa.i.i112
  br i1 %.not.i.i.i114, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit120, label %bb.cf

bb.cf:                                            ; preds = %.critedge.i.i111
  %.not11.i.i.i115 = icmp eq ptr %.0.lcssa.i.i112, %i.fj
  br i1 %.not11.i.i.i115, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i116, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fx = sub i64 %i.fl, %i.fu                    ; 3 uses
  %i.fy = icmp sgt i64 %i.fx, 1
  br i1 %i.fy, label %bb.ch, label %bb.ci, !prof !3

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull align 1 %i.fw, i64 %i.fx, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i116

bb.ci:                                            ; preds = %bb.cg
  %i.fz = icmp eq i64 %i.fx, 1
  br i1 %i.fz, label %bb.cj, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i116

bb.cj:                                            ; preds = %bb.ci
  %i.ga = load i8, ptr %i.fw, align 1
  store i8 %i.ga, ptr %i.fi, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i116

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i116: ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf
  %i.gb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.fu
  %i.ge = getelementptr inbounds i8, ptr %i.fi, i64 %i.gd ; 2 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.gb, %i.ge
  br i1 %.not.i.i.i.i117, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit120, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i118

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i118: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i116
  store ptr %i.ge, ptr %i.b, align 8
  br i1 %i.ft, label %bb.ck, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit120: ; preds = %.critedge.i.i111, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i116
  br i1 %i.ft, label %bb.ck, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

bb.ck:                                            ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i118, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit120
  %i.gf = tail call noundef i32 @_ZN6Assimp3PLY8Property13ParseSemanticERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.gf, ptr %i.gg, align 4
  %i.gh = icmp eq i32 %i.gf, 30
  br i1 %i.gh, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.gi = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.gi, ptr noundef nonnull @.str.66)
  %i.gj = load ptr, ptr %0, align 8               ; 3 uses
  %i.gk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gj) #26
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.gj, ptr noundef nonnull %i.gl, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.gm = load ptr, ptr %2, align 8               ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cl
  %i.gp = load i64, ptr %i.gn, align 8
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ck
  %i.gr = call noundef zeroext i1 @_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit: ; preds = %bb.bz, %bb.ca, %bb.ax, %bb.ay, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, %bb.s, %bb.n, %bb.m, %bb.l, %bb.a, %bb.b, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i118, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i102, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i100, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i96, %bb.bm, %bb.bl, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i83, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i69, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i67, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i, %bb.ak, %bb.aj, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i45, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit120, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit85, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit47, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit, %bb.cm, %bb.bj
  %.0 = phi i1 [ false, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i45 ], [ false, %bb.bj ], [ true, %bb.cm ], [ false, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit85 ], [ false, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit47 ], [ false, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i83 ], [ false, %bb.a ], [ false, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit ], [ false, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit120 ], [ false, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i118 ], [ false, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ false, %bb.n ], [ false, %bb.aj ], [ false, %bb.ak ], [ false, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i ], [ false, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i67 ], [ false, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i69 ], [ false, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit ], [ false, %bb.bl ], [ false, %bb.bm ], [ false, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i96 ], [ false, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i100 ], [ false, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i102 ], [ false, %bb.ax ], [ false, %bb.b ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.s ], [ false, %bb.ay ], [ false, %bb.ca ], [ false, %bb.bz ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %.not = icmp eq ptr %i.a, null
end_hunk_0
begin_hunk_1_@_ZN6Assimp3PLY3DOM12SkipCommentsESt6vectorIcSaIcEE:bb.a
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.r ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, %.0.lcssa.i.i
  br i1 %.not.i.i.i, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i
  %.not11.i.i.i = icmp eq ptr %.0.lcssa.i.i, %i.f
  %.pre100 = sub i64 %i.h, %i.q                   ; 6 uses
  br i1 %.not11.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp sgt i64 %.pre100, 1
  br i1 %i.t, label %bb.i, label %bb.j, !prof !3

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.s, i64 %.pre100, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.u = icmp eq i64 %.pre100, 1
  br i1 %i.u, label %bb.k, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.v = load i8, ptr %i.s, align 1
  store i8 %i.v, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.g, %bb.k, %bb.j, %bb.i
  %.pre-phi101 = phi i64 [ %.pre100, %bb.i ], [ 1, %bb.k ], [ %.pre100, %bb.j ], [ %.pre100, %bb.g ]
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi101 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.w
  br i1 %.not.i.i.i.i, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.w, ptr %i.b, align 8
  br i1 %i.p, label %bb.n, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, %.critedge.i.i
  br i1 %i.p, label %bb.n, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48

bb.l:                                             ; preds = %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.x

bb.n:                                             ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit
  %i.ad = phi ptr [ %i.w, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.f, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit ] ; 5 uses
  %i.ae = icmp eq ptr %i.a, %i.ad
  br i1 %i.ae, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.69, ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 7) #26
  %.not.i.i4 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i4, label %bb.p, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  switch i8 %i.ah, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i:     ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %.not11.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %storemerge.i.i = select i1 %.not11.i.i, ptr %i.ag, ptr %i.ai ; 2 uses
  %i.aj = ptrtoint ptr %storemerge.i.i to i64     ; 2 uses
  %i.ak = sub i64 %i.aj, %i.i
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %i.ak ; 2 uses
  %.not11.i.i.i7 = icmp eq ptr %storemerge.i.i, %i.ad
  %.pre = ptrtoint ptr %i.ad to i64
  %.pre88 = sub i64 %.pre, %i.aj                  ; 6 uses
  br i1 %.not11.i.i.i7, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i8, label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  %i.am = icmp sgt i64 %.pre88, 1
  br i1 %i.am, label %bb.r, label %bb.s, !prof !3

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.al, i64 %.pre88, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i8

bb.s:                                             ; preds = %bb.q
  %i.an = icmp eq i64 %.pre88, 1
  br i1 %i.an, label %bb.t, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i8

bb.t:                                             ; preds = %bb.s
  %i.ao = load i8, ptr %i.al, align 1
  store i8 %i.ao, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i8

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i8: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i, %bb.t, %bb.s, %bb.r
  %.pre-phi89 = phi i64 [ %.pre88, %bb.r ], [ 1, %bb.t ], [ %.pre88, %bb.s ], [ %.pre88, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i ]
  %i.ap = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi89 ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ad, %i.ap
  br i1 %.not.i.i.i.i9, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i10

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i10:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i8
  store ptr %i.ap, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i8, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i10
  %i.aq = phi ptr [ %i.ad, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i8 ], [ %i.ap, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i10 ] ; 7 uses
  %i.ar = icmp eq ptr %i.a, %i.aq
  br i1 %i.ar, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68, label %bb.u

bb.u:                                             ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.as, %i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.0.i.i12 = phi ptr [ %i.a, %bb.u ], [ %i.aw, %bb.x ] ; 4 uses
  %i.av = load i8, ptr %.0.i.i12, align 1         ; 2 uses
  switch i8 %i.av, label %.critedge.i.i16 [
    i8 32, label %bb.w
    i8 9, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.not.i.i13 = icmp eq ptr %.0.i.i12, %i.aq
  br i1 %.not.i.i13, label %.critedge.ithread-pre-split.i14, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i12, i64 1
  br label %bb.v, !llvm.loop !7

.critedge.ithread-pre-split.i14:                  ; preds = %bb.w
  %.pr.i15 = load i8, ptr %i.au, align 1
  br label %.critedge.i.i16

.critedge.i.i16:                                  ; preds = %bb.v, %.critedge.ithread-pre-split.i14
  %i.ax = phi i8 [ %.pr.i15, %.critedge.ithread-pre-split.i14 ], [ %i.av, %bb.v ] ; 2 uses
  %.0.lcssa.i.i17 = phi ptr [ %i.au, %.critedge.ithread-pre-split.i14 ], [ %.0.i.i12, %bb.v ] ; 3 uses
  %i.ay = icmp ugt i8 %i.ax, 13
  %switch.cast148 = zext nneg i8 %i.ax to i14
  %switch.downshift150 = lshr i14 3070, %switch.cast148
  %switch.masked151 = trunc i14 %switch.downshift150 to i1
  %i.az = select i1 %i.ay, i1 true, i1 %switch.masked151 ; 2 uses
  %i.ba = ptrtoint ptr %.0.lcssa.i.i17 to i64     ; 2 uses
  %i.bb = sub i64 %i.ba, %i.i
  %i.bc = getelementptr inbounds i8, ptr %i.a, i64 %i.bb ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.a, %.0.lcssa.i.i17
  br i1 %.not.i.i.i19, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25, label %bb.y

bb.y:                                             ; preds = %.critedge.i.i16
  %.not11.i.i.i20 = icmp eq ptr %.0.lcssa.i.i17, %i.aq
  %.pre98 = sub i64 %i.as, %i.ba                  ; 6 uses
  br i1 %.not11.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i21, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = icmp sgt i64 %.pre98, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab, !prof !3

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.bc, i64 %.pre98, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i21

bb.ab:                                            ; preds = %bb.z
  %i.be = icmp eq i64 %.pre98, 1
  br i1 %i.be, label %bb.ac, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i21

bb.ac:                                            ; preds = %bb.ab
  %i.bf = load i8, ptr %i.bc, align 1
  store i8 %i.bf, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i21

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i21: ; preds = %bb.y, %bb.ac, %bb.ab, %bb.aa
  %.pre-phi99 = phi i64 [ %.pre98, %bb.aa ], [ 1, %bb.ac ], [ %.pre98, %bb.ab ], [ %.pre98, %bb.y ]
  %i.bg = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi99 ; 4 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.aq, %i.bg
  br i1 %.not.i.i.i.i22, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i23

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i23:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i21
  store ptr %i.bg, ptr %i.b, align 8
  br i1 %i.az, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25.thread

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i21, %.critedge.i.i16
  br i1 %i.az, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25.thread

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25.thread: ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i23, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25
  %i.bh = phi ptr [ %i.aq, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25 ], [ %i.bg, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i23 ] ; 9 uses
  %i.bi = icmp eq ptr %i.a, %i.bh
  br i1 %i.bi, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68, label %bb.ad

bb.ad:                                            ; preds = %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25.thread
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bj, %i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %2 = ptrtoaddr ptr %i.bh to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.0.i.i27 = phi ptr [ %i.a, %bb.ad ], [ %i.bn, %bb.ag ] ; 7 uses
  %i.bm = load i8, ptr %.0.i.i27, align 1
  switch i8 %i.bm, label %bb.af [
    i8 13, label %.critedge.i.i28
    i8 10, label %.critedge.i.i28
    i8 0, label %.critedge.i.i28
    i8 35, label %.critedge.i.i28
  ]

bb.af:                                            ; preds = %bb.ae
  %.not22.i.i = icmp eq ptr %.0.i.i27, %i.bh
  br i1 %.not22.i.i, label %.critedge.i.i28, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 1
  br label %bb.ae, !llvm.loop !4

.critedge.i.i28:                                  ; preds = %bb.af, %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %.0.lcssa.i.i29 = phi ptr [ %.0.i.i27, %bb.ae ], [ %.0.i.i27, %bb.ae ], [ %.0.i.i27, %bb.ae ], [ %.0.i.i27, %bb.ae ], [ %i.bl, %bb.af ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i29 to i64
  %i.bo = sub i64 %2, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i29, i64 %i.bo
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.critedge.i.i28
  %.1.i.i = phi ptr [ %.0.lcssa.i.i29, %.critedge.i.i28 ], [ %i.bq, %bb.aj ] ; 4 uses
  %i.bp = load i8, ptr %.1.i.i, align 1
  switch i8 %i.bp, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i [
    i8 13, label %bb.ai
    i8 10, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %.not23.i.i = icmp eq ptr %.1.i.i, %i.bh
  br i1 %.not23.i.i, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.ah, !llvm.loop !6

_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i:       ; preds = %bb.ai, %bb.ah
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.ah ], [ %scevgep25.i.i, %bb.ai ] ; 3 uses
  %i.br = ptrtoint ptr %.1.lcssa.i.i to i64       ; 2 uses
  %i.bs = sub i64 %i.br, %i.i
  %i.bt = getelementptr inbounds i8, ptr %i.a, i64 %i.bs ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.a, %.1.lcssa.i.i
  br i1 %.not.i.i.i30, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i
  %.not11.i.i.i31 = icmp eq ptr %.1.lcssa.i.i, %i.bh
  %.pre96 = sub i64 %i.bj, %i.br                  ; 6 uses
  br i1 %.not11.i.i.i31, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i32, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = icmp sgt i64 %.pre96, 1
  br i1 %i.bu, label %bb.am, label %bb.an, !prof !3

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.bt, i64 %.pre96, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i32

bb.an:                                            ; preds = %bb.al
  %i.bv = icmp eq i64 %.pre96, 1
  br i1 %i.bv, label %bb.ao, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i32

bb.ao:                                            ; preds = %bb.an
  %i.bw = load i8, ptr %i.bt, align 1
  store i8 %i.bw, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i32

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i32: ; preds = %bb.ak, %bb.ao, %bb.an, %bb.am
  %.pre-phi97 = phi i64 [ %.pre96, %bb.am ], [ 1, %bb.ao ], [ %.pre96, %bb.an ], [ %.pre96, %bb.ak ]
  %i.bx = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi97 ; 3 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.bh, %i.bx
  br i1 %.not.i.i.i.i33, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i34

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i34:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i32
  store ptr %i.bx, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit: ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i34, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i32, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i23, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25
  %i.by = phi ptr [ %i.aq, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25 ], [ %i.bx, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i34 ], [ %i.bh, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i32 ], [ %i.bh, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i ], [ %i.bg, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i23 ] ; 10 uses
  %i.bz = icmp eq ptr %i.a, %i.by
  br i1 %i.bz, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68, label %bb.ap

bb.ap:                                            ; preds = %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit
  %i.ca = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.4, ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 11) #26
  %.not.i.i38 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i38, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  switch i8 %i.cc, label %bb.av [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40:   ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.aq
  %.not11.i.i41 = icmp eq i8 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %storemerge.i.i42 = select i1 %.not11.i.i41, ptr %i.cb, ptr %i.cd ; 2 uses
  %i.ce = ptrtoint ptr %storemerge.i.i42 to i64   ; 2 uses
  %i.cf = sub i64 %i.ce, %i.i
  %i.cg = getelementptr inbounds i8, ptr %i.a, i64 %i.cf ; 2 uses
  %.not11.i.i.i44 = icmp eq ptr %storemerge.i.i42, %i.by
  %.pre92 = ptrtoint ptr %i.by to i64
  %.pre94 = sub i64 %.pre92, %i.ce                ; 6 uses
  br i1 %.not11.i.i.i44, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45, label %bb.ar

bb.ar:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40
  %i.ch = icmp sgt i64 %.pre94, 1
  br i1 %i.ch, label %bb.as, label %bb.at, !prof !3

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.cg, i64 %.pre94, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45

bb.at:                                            ; preds = %bb.ar
  %i.ci = icmp eq i64 %.pre94, 1
  br i1 %i.ci, label %bb.au, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45

bb.au:                                            ; preds = %bb.at
  %i.cj = load i8, ptr %i.cg, align 1
  store i8 %i.cj, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40, %bb.au, %bb.at, %bb.as
  %.pre-phi95 = phi i64 [ %.pre94, %bb.as ], [ 1, %bb.au ], [ %.pre94, %bb.at ], [ %.pre94, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i40 ]
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi95 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.by, %i.ck
  br i1 %.not.i.i.i.i46, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i47

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i47:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45
  store ptr %i.ck, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread

bb.av:                                            ; preds = %bb.ap, %bb.aq
  %i.cl = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cm = sub i64 %i.cl, %i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  %3 = ptrtoaddr ptr %i.by to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %.0.i.i50 = phi ptr [ %i.a, %bb.av ], [ %i.cp, %bb.ay ] ; 7 uses
  %i.co = load i8, ptr %.0.i.i50, align 1
  switch i8 %i.co, label %bb.ax [
    i8 13, label %.critedge.i.i51
    i8 10, label %.critedge.i.i51
    i8 0, label %.critedge.i.i51
    i8 35, label %.critedge.i.i51
  ]

bb.ax:                                            ; preds = %bb.aw
  %.not22.i.i67 = icmp eq ptr %.0.i.i50, %i.by
  br i1 %.not22.i.i67, label %.critedge.i.i51, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i50, i64 1
  br label %bb.aw, !llvm.loop !4

.critedge.i.i51:                                  ; preds = %bb.ax, %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %.0.lcssa.i.i52 = phi ptr [ %.0.i.i50, %bb.aw ], [ %.0.i.i50, %bb.aw ], [ %.0.i.i50, %bb.aw ], [ %.0.i.i50, %bb.aw ], [ %i.cn, %bb.ax ] ; 3 uses
  %.0.lcssa24.i.i53 = ptrtoaddr ptr %.0.lcssa.i.i52 to i64
  %i.cq = sub i64 %3, %.0.lcssa24.i.i53
  %scevgep25.i.i54 = getelementptr i8, ptr %.0.lcssa.i.i52, i64 %i.cq
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %.critedge.i.i51
  %.1.i.i55 = phi ptr [ %.0.lcssa.i.i52, %.critedge.i.i51 ], [ %i.cs, %bb.bb ] ; 4 uses
  %i.cr = load i8, ptr %.1.i.i55, align 1
  switch i8 %i.cr, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i59 [
    i8 13, label %bb.ba
    i8 10, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %.not23.i.i56 = icmp eq ptr %.1.i.i55, %i.by
  br i1 %.not23.i.i56, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i59, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i.i55, i64 1
  br label %bb.az, !llvm.loop !6

_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i59:     ; preds = %bb.ba, %bb.az
  %.1.lcssa.i.i60 = phi ptr [ %.1.i.i55, %bb.az ], [ %scevgep25.i.i54, %bb.ba ] ; 3 uses
  %i.ct = ptrtoint ptr %.1.lcssa.i.i60 to i64     ; 2 uses
  %i.cu = sub i64 %i.ct, %i.i
  %i.cv = getelementptr inbounds i8, ptr %i.a, i64 %i.cu ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.a, %.1.lcssa.i.i60
  br i1 %.not.i.i.i61, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68, label %bb.bc

bb.bc:                                            ; preds = %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i59
  %.not11.i.i.i62 = icmp eq ptr %.1.lcssa.i.i60, %i.by
  %.pre90 = sub i64 %i.cl, %i.ct                  ; 6 uses
  br i1 %.not11.i.i.i62, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cw = icmp sgt i64 %.pre90, 1
  br i1 %i.cw, label %bb.be, label %bb.bf, !prof !3

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.cv, i64 %.pre90, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63

bb.bf:                                            ; preds = %bb.bd
  %i.cx = icmp eq i64 %.pre90, 1
  br i1 %i.cx, label %bb.bg, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63

bb.bg:                                            ; preds = %bb.bf
  %i.cy = load i8, ptr %i.cv, align 1
  store i8 %i.cy, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63: ; preds = %bb.bc, %bb.bg, %bb.bf, %bb.be
  %.pre-phi91 = phi i64 [ %.pre90, %bb.be ], [ 1, %bb.bg ], [ %.pre90, %bb.bf ], [ %.pre90, %bb.bc ]
  %i.cz = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi91 ; 2 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.by, %i.cz
  br i1 %.not.i.i.i.i64, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i65

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i65:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63
  store ptr %i.cz, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68

_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68: ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25.thread, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i65, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i59
  %i.da = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIcSaIcEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge unwind label %bb.l ; 0 uses

_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge: ; preds = %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68
  %.pr76.pre = load ptr, ptr %1, align 8
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48: ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge, %bb.n
  %i.db = phi ptr [ %i.a, %bb.n ], [ %i.a, %bb.a ], [ %i.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %.pr76.pre, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge ], [ %i.a, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit ] ; 2 uses
  %.0 = phi i1 [ false, %bb.n ], [ false, %bb.a ], [ false, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ true, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge ], [ false, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit ] ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIcSaIcEED2Ev.exit70, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i47, %bb.o, %bb.p, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48
  %.0132 = phi i1 [ %.0, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48 ], [ true, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45 ], [ true, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i47 ], [ false, %bb.o ], [ false, %bb.p ]
  %i.dc = phi ptr [ %i.db, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48 ], [ %i.a, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45 ], [ %i.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i47 ], [ %i.a, %bb.o ], [ %i.a, %bb.p ] ; 2 uses
  %i.dd = load ptr, ptr %i.d, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit70

_ZNSt6vectorIcSaIcEED2Ev.exit70:                  ; preds = %bb.b, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread
  %.0133 = phi i1 [ %.0, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48 ], [ %.0132, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i1 %.0133
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIcSaIcEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !3

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1
  store i8 %i.q, ptr %i.o, align 1
  br label %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit

_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit: ; preds = %bb.e, %bb.f
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.r, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.v, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp sgt i64 %i.f, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !3

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %i.f, 1
  br i1 %i.x, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %i.c, align 1
  store i8 %i.y, ptr %i.i, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.z = icmp sgt i64 %i.v, 1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !3

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.v, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.aa = icmp eq i64 %i.v, 1
  br i1 %i.aa, label %bb.p, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ab = load i8, ptr %i.c, align 1
  store i8 %i.ab, ptr %i.i, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.ae = load ptr, ptr %0, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EE15_M_erase_at_endEPS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN6Assimp3PLY19ElementInstanceListEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.al, %_ZSt8_DestroyIN6Assimp3PLY19ElementInstanceListEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN6Assimp3PLY15ElementInstanceEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN6Assimp3PLY15ElementInstanceEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i ] ; 5 uses
  %i.o = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8
  br label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.y = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY15ElementInstanceEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY15ElementInstanceEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN6Assimp3PLY15ElementInstanceEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !26

_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY15ElementInstanceEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8
  br label %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.af = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY19ElementInstanceListEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY19ElementInstanceListEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3PLY19ElementInstanceListEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY19ElementInstanceListES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPN6Assimp3PLY19ElementInstanceListES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY19ElementInstanceListEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY19ElementInstanceListES2_EvT_S4_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY19ElementInstanceList17ParseInstanceListERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEEPKNS0_7ElementEPS1_PNS_11PLYImporterE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %"class.Assimp::PLY::ElementInstance", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not55 = icmp eq i32 %i.j, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph53, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit
  %.03851 = phi i32 [ 0, %.lr.ph53 ], [ %i.bd, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit ]
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.o = load ptr, ptr %1, align 8                ; 4 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.noexc.i.i, label %bb.f, !prof !9

.noexc.i.i:                                       ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #30 ; 5 uses
  store ptr %i.t, ptr %5, align 8
  store ptr %i.t, ptr %i.l, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 3 uses
  store ptr %i.u, ptr %i.m, align 8
  %i.v = icmp samesign ugt i64 %i.r, 1
  br i1 %i.v, label %bb.g, label %bb.i, !prof !11

bb.g:                                             ; preds = %bb.f
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.h:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr null, i64 %i.r ; 2 uses
  store i64 0, ptr %5, align 8
  store ptr %i.w, ptr %i.m, align 8
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.i:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.o, align 1
  store i8 %i.x, ptr %i.t, align 1
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.h, %bb.g, %bb.i
  %i.y = phi ptr [ %i.u, %bb.g ], [ %i.w, %bb.h ], [ %i.u, %bb.i ]
  store ptr %i.y, ptr %i.l, align 8
  %i.z = invoke noundef zeroext i1 @_ZN6Assimp3PLY3DOM12SkipCommentsESt6vectorIcSaIcEE(ptr noundef nonnull %5)
          to label %bb.j unwind label %bb.y       ; 0 uses

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.aa = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  %i.af = load ptr, ptr %1, align 8               ; 10 uses
  %i.ag = load ptr, ptr %i.k, align 8             ; 6 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %7 = ptrtoaddr ptr %i.ag to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.0.i.i = phi ptr [ %i.af, %bb.m ], [ %i.an, %bb.p ] ; 7 uses
  %i.am = load i8, ptr %.0.i.i, align 1
  switch i8 %i.am, label %bb.o [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 35, label %.critedge.i.i
  ]

bb.o:                                             ; preds = %bb.n
  %.not22.i.i = icmp eq ptr %.0.i.i, %i.ag
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.n, !llvm.loop !4

.critedge.i.i:                                    ; preds = %bb.o, %bb.n, %bb.n, %bb.n, %bb.n
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.n ], [ %i.al, %bb.o ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.ao = sub i64 %7, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ao
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.critedge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i, %.critedge.i.i ], [ %i.aq, %bb.s ] ; 4 uses
  %i.ap = load i8, ptr %.1.i.i, align 1
  switch i8 %i.ap, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i [
    i8 13, label %bb.r
    i8 10, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %.not23.i.i = icmp eq ptr %.1.i.i, %i.ag
  br i1 %.not23.i.i, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.q, !llvm.loop !6

_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i:       ; preds = %bb.r, %bb.q
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.q ], [ %scevgep25.i.i, %bb.r ] ; 3 uses
  %i.ar = ptrtoint ptr %.1.lcssa.i.i to i64       ; 3 uses
  %i.as = sub i64 %i.ar, %i.aj
  %i.at = getelementptr inbounds i8, ptr %i.af, i64 %i.as ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.af, %.1.lcssa.i.i
  br i1 %.not.i.i.i44, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i
  %.not11.i.i.i = icmp eq ptr %.1.lcssa.i.i, %i.ag
  br i1 %.not11.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = sub i64 %i.ai, %i.ar                    ; 3 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.v, label %bb.w, !prof !3

bb.v:                                             ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.at, i64 %i.au, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.aw = icmp eq i64 %i.au, 1
  br i1 %i.aw, label %bb.x, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ax = load i8, ptr %i.at, align 1
  store i8 %i.ax, ptr %i.af, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.ay = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.ar
  %i.bb = getelementptr inbounds i8, ptr %i.af, i64 %i.ba ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.ay, %i.bb
  br i1 %.not.i.i.i.i45, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.bb, ptr %i.k, align 8
  br label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.l, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i
  %i.bc = call noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.bd = add nuw i32 %.03851, 1                  ; 2 uses
  %i.be = load i32, ptr %i.i, align 8
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %.loopexit, !llvm.loop !29

bb.y:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIcSaIcEED2Ev.exit47, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = load ptr, ptr %i.m, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit47

bb.aa:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bm = load ptr, ptr %1, align 8               ; 3 uses
  store ptr %i.bm, ptr %i.a, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %.not54 = icmp eq i32 %i.bu, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %.not = icmp eq ptr %3, null
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN6Assimp3PLY15ElementInstanceD2Ev.exit.us
  %.050.us = phi i32 [ %i.cr, %_ZN6Assimp3PLY15ElementInstanceD2Ev.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bx = invoke noundef zeroext i1 @_ZN6Assimp3PLY15ElementInstance13ParseInstanceERPKcS3_PKNS0_7ElementEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.bs, ptr noundef nonnull %2, ptr noundef nonnull %6)
          to label %bb.ab unwind label %.split.us ; 0 uses

bb.ab:                                            ; preds = %.lr.ph.split.us
  %i.by = load i32, ptr %i.b, align 8
  switch i32 %i.by, label %bb.ad [
    i32 0, label %bb.ac
    i32 1, label %.invoke
    i32 2, label %.invoke
  ]

.invoke:                                          ; preds = %bb.ab, %bb.ab
  invoke void @_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef %.050.us)
          to label %bb.ad unwind label %.split.us

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6Assimp11PLYImporter10LoadVertexEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef %.050.us)
          to label %bb.ad unwind label %.split.us

bb.ad:                                            ; preds = %.invoke, %bb.ac, %bb.ab
  %i.bz = load ptr, ptr %6, align 8               ; 3 uses
  %i.ca = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not4.i.i.i.i.us = icmp eq ptr %i.bz, %i.ca
  br i1 %.not4.i.i.i.i.us, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.us, label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %bb.ad, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.us
  %.05.i.i.i.i.us = phi ptr [ %i.ch, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.us ], [ %i.bz, %bb.ad ] ; 3 uses
  %i.cb = load ptr, ptr %.05.i.i.i.i.us, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.us = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.us, label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.us, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.us
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.us, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.us

_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.us: ; preds = %bb.ae, %.lr.ph.i.i.i.i.us
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i.i.i.i48.us = icmp eq ptr %i.ch, %i.ca
  br i1 %.not.i.i.i.i48.us, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.us, label %.lr.ph.i.i.i.i.us, !llvm.loop !25

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.us: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.us
  %.pr.i.i.us = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.us

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.us: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.us, %bb.ad
  %i.ci = phi ptr [ %.pr.i.i.us, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.us ], [ %i.bz, %bb.ad ] ; 3 uses
  %.not.i.i1.i.i.us = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i.i.us, label %_ZN6Assimp3PLY15ElementInstanceD2Ev.exit.us, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.us
  %i.cj = load ptr, ptr %i.bw, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #28
  br label %_ZN6Assimp3PLY15ElementInstanceD2Ev.exit.us

_ZN6Assimp3PLY15ElementInstanceD2Ev.exit.us:      ; preds = %bb.af, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.cn = call noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.co = load ptr, ptr %1, align 8               ; 2 uses
  %i.cp = load ptr, ptr %i.bn, align 8
  %i.cq = icmp eq ptr %i.co, %i.cp
  %spec.select.us = select i1 %i.cq, ptr null, ptr %i.co
  store ptr %spec.select.us, ptr %i.a, align 8
  %i.cr = add nuw i32 %.050.us, 1                 ; 2 uses
  %i.cs = load i32, ptr %i.bt, align 8
  %i.ct = icmp ult i32 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !30

.split.us:                                        ; preds = %.invoke, %bb.ac, %.lr.ph.split.us
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3PLY15ElementInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit47

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN6Assimp3PLY15ElementInstanceD2Ev.exit.us, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.cv = load ptr, ptr %3, align 8
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cx = call noundef zeroext i1 @_ZN6Assimp3PLY15ElementInstance13ParseInstanceERPKcS3_PKNS0_7ElementEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.bs, ptr noundef nonnull %2, ptr noundef nonnull %i.cw) ; 0 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp14IOStreamBufferIcE12getNextBlockERSt6vectorIcSaIcEE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.w) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit
  store i64 0, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

bb.g:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.z, i32 noundef 0), !inline_history !13 ; 0 uses
  %i.ae = load ptr, ptr %0, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ag, i64 noundef 1, i64 noundef %i.ai), !inline_history !13 ; 4 uses
  %.not42 = icmp eq i64 %i.am, 0
  br i1 %.not42, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.am, ptr %i.ah, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ap = phi i64 [ %i.am, %bb.i ], [ %i.an, %bb.h ]
  %i.aq = load i64, ptr %i.y, align 8
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.y, align 8
  store i64 0, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8
  %i.av = load ptr, ptr %i.af, align 8            ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %.noexc.i19, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i13

.noexc.i19:                                       ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #29
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i13: ; preds = %bb.j
  %.not.i.i.i14 = icmp eq ptr %i.ax, %i.av
  br i1 %.not.i.i.i14, label %bb.l, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i15

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i15: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i13
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #30 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba ; 2 uses
  %i.be = icmp samesign ugt i64 %i.ba, 1
  br i1 %i.be, label %bb.k, label %bb.m, !prof !11

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.av, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit22

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i13
  %i.bf = getelementptr inbounds nuw i8, ptr null, i64 %i.ba
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit22

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i15
  %i.bg = load i8, ptr %i.av, align 1
  store i8 %i.bg, ptr %i.bc, align 1
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit22

_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit22: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.028.0 = phi ptr [ null, %bb.l ], [ %i.bc, %bb.k ], [ %i.bc, %bb.m ]
  %.sroa.11.0 = phi ptr [ %i.bf, %bb.l ], [ %i.bd, %bb.k ], [ %i.bd, %bb.m ] ; 2 uses
  %i.bh = load ptr, ptr %1, align 8               ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  store ptr %.sroa.028.0, ptr %1, align 8
  store ptr %.sroa.11.0, ptr %i.bi, align 8
  store ptr %.sroa.11.0, ptr %i.bj, align 8
  %.not.i.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i23, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit22
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bn) #28
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit: ; preds = %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit22, %bb.n, %bb.g, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %.0 = phi i1 [ true, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ false, %bb.g ], [ true, %bb.n ], [ true, %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit22 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY3DOM13ParseInstanceERNS_14IOStreamBufferIcEEPS1_PNS_11PLYImporterE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = invoke noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.82)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef zeroext i1 @_ZN6Assimp3PLY3DOM11ParseHeaderERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEEb(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  br i1 %i.c, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.k, %bb.j, %bb.i, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.e

bb.i:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.g       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.m = invoke noundef zeroext i1 @_ZN6Assimp3PLY3DOM25ParseElementInstanceListsERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEEPNS_11PLYImporterE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2)
          to label %bb.k unwind label %bb.g       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.n = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.f, %bb.k
  %i.o = phi ptr [ %i.n, %bb.k ], [ %i.d, %bb.f ]
  %i.p = phi ptr [ @.str.84, %bb.k ], [ @.str.83, %bb.f ]
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull %i.p)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %.invoke
  %i.q = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIcSaIcEED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit10

_ZNSt6vectorIcSaIcEED2Ev.exit10:                  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY15ElementInstance13ParseInstanceERPKcS3_PKNS0_7ElementEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca double, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %2, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load ptr, ptr %3, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24                  ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.p)
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.g ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.z = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.r, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.aa = load ptr, ptr %3, align 8               ; 2 uses
  %.not17 = icmp eq ptr %i.aa, %i.z
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit
  %i.ab = load ptr, ptr %2, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit
  %.sroa.012.019 = phi ptr [ %i.bb, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit ], [ %i.aa, %.lr.ph.preheader ] ; 6 uses
  %.sroa.09.018 = phi ptr [ %i.bc, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit ], [ %i.ab, %.lr.ph.preheader ] ; 3 uses
  %i.ac = tail call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance13ParseInstanceERPKcS3_PKNS0_8PropertyEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %.sroa.09.018, ptr noundef nonnull %.sroa.012.019)
  br i1 %i.ac, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ad = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull @.str.85)
  %i.ae = load i32, ptr %.sroa.09.018, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  switch i32 %i.ae, label %bb.i [
    i32 6, label %bb.g
    i32 7, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %.sroa.0.i, align 8
  br label %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit

bb.h:                                             ; preds = %bb.f
  store double 0.000000e+00, ptr %.sroa.0.i, align 8
  br label %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit

bb.i:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i, align 8
  br label %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit

_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.123.i163334 = load i64, ptr %.sroa.0.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.019, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.019, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit
  store i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.123.i163334, ptr %i.ag, align 8
  %i.aj = load ptr, ptr %i.af, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.af, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit
  %i.al = load ptr, ptr %.sroa.012.019, align 8   ; 4 uses
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.l, label %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #30 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.123.i163334, ptr %i.ax, align 8
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.m, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #28
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.aw, ptr %.sroa.012.019, align 8
  store ptr %i.az, ptr %i.af, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.019, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 48
  %i.bd = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.bb, %i.bd
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit
  ret i1 true
}

declare void @_ZN6Assimp11PLYImporter10LoadVertexEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3PLY15ElementInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8        ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #28
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY15ElementInstance19ParseInstanceBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjPKNS0_7ElementEPS1_b(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %4, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load ptr, ptr %5, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24                  ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.p)
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.g ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.z = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.r, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.aa = load ptr, ptr %5, align 8               ; 2 uses
  %.not14 = icmp eq ptr %i.aa, %i.z
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit
  %i.ab = load ptr, ptr %4, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.011.016 = phi ptr [ %i.ad, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %.sroa.09.015 = phi ptr [ %i.ae, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %i.ac = tail call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance19ParseInstanceBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjPKNS0_8PropertyEPS1_b(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull %.sroa.09.015, ptr noundef nonnull %.sroa.011.016, i1 noundef zeroext %6) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 48
  %i.af = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.ad, %i.af
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance13ParseInstanceERPKcS3_PKNS0_8PropertyEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"union.Assimp::PLY::PropertyInstance::ValueUnion", align 8 ; 5 uses
  %5 = alloca %"union.Assimp::PLY::PropertyInstance::ValueUnion", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %6 = ptrtoaddr ptr %i.a to i64
  %7 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.b = sub i64 %7, %6
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %i.b
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.d ] ; 4 uses
  %i.c = load i8, ptr %.0.i.i, align 1
  switch i8 %i.c, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %1
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !7

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 2 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.e = load i8, ptr %.0.lcssa.i.i, align 1      ; 2 uses
  %i.f = icmp ult i8 %i.e, 14
  %switch.maskindex = zext nneg i8 %i.e to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.f, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !35, !noundef !36
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance10ParseValueERPKcNS0_9EDataTypeEPNS1_10ValueUnionE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.k, ptr noundef nonnull %4) ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %i.m = load i32, ptr %i.j, align 4
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 2 uses
  switch i32 %i.m, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit [
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 5, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
    i32 4, label %bb.i
    i32 2, label %bb.i
    i32 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = bitcast i32 %.sroa.0.sroa.0.0.extract.trunc.i to float
  %i.o = fptoui float %i.n to i32
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

bb.h:                                             ; preds = %bb.f
  %i.p = bitcast i64 %.sroa.0.0.copyload to double
  %i.q = fptoui double %i.p to i32
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.o, %bb.g ], [ %i.q, %bb.h ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %bb.i ] ; 2 uses
  %i.r = zext i32 %.0.i to i64                    ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %3, align 8                ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.r
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
  %i.aa = sub nuw nsw i64 %i.r, %i.y
  tail call void @_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.aa)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

bb.k:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
  %i.ab = icmp ugt i64 %i.y, %i.r
  br i1 %i.ab, label %bb.l, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.t, %i.ac
  br i1 %.not.i.i26, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.l
  store ptr %i.ac, ptr %i.s, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i
  %.not38.not = icmp eq i32 %.0.i, 0
  br i1 %.not38.not, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32.thread37, label %.lr.ph

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32.thread37: ; preds = %bb.p, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.w

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit ] ; 2 uses
  %i.ad = load ptr, ptr %0, align 8               ; 3 uses
  %8 = ptrtoaddr ptr %i.ad to i64
  %i.ae = sub i64 %7, %8
  %scevgep.i.i27 = getelementptr i8, ptr %i.ad, i64 %i.ae
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph
  %.0.i.i28 = phi ptr [ %i.ad, %.lr.ph ], [ %i.ag, %bb.o ] ; 4 uses
  %i.af = load i8, ptr %.0.i.i28, align 1
  switch i8 %i.af, label %.critedge.i.i30 [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %.not.i.i29 = icmp eq ptr %.0.i.i28, %1
  br i1 %.not.i.i29, label %.critedge.i.i30, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 1
  br label %bb.m, !llvm.loop !7

.critedge.i.i30:                                  ; preds = %bb.n, %bb.m
  %.0.lcssa.i.i31 = phi ptr [ %.0.i.i28, %bb.m ], [ %scevgep.i.i27, %bb.n ] ; 2 uses
  store ptr %.0.lcssa.i.i31, ptr %0, align 8
  %i.ah = load i8, ptr %.0.lcssa.i.i31, align 1
  switch i8 %i.ah, label %bb.p [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32
  ]

bb.p:                                             ; preds = %.critedge.i.i30
  %i.ai = load i32, ptr %2, align 8
  %i.aj = load ptr, ptr %3, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = tail call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance10ParseValueERPKcNS0_9EDataTypeEPNS1_10ValueUnionE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ai, ptr noundef nonnull %i.ak) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32.thread37, label %.lr.ph, !llvm.loop !37

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32:       ; preds = %.critedge.i.i30, %.critedge.i.i30, %.critedge.i.i30, %.critedge.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.am = load i32, ptr %2, align 8
  %i.an = call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance10ParseValueERPKcNS0_9EDataTypeEPNS1_10ValueUnionE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.am, ptr noundef nonnull %5) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i64, ptr %5, align 8
  store i64 %i.as, ptr %i.ap, align 8
  %i.at = load ptr, ptr %i.ao, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.ao, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %3, align 8               ; 4 uses
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.t, label %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #30 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  %i.bi = load i64, ptr %5, align 8
  store i64 %i.bi, ptr %i.bh, align 8
  %i.bj = icmp sgt i64 %i.ay, 0
  br i1 %i.bj, label %bb.u, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.u:                                             ; preds = %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.u, %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.not.i17.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #28
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bg, ptr %3, align 8
  store ptr %i.bk, ptr %i.ao, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bl, ptr %i.aq, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.r, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.w

bb.w:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32.thread37, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit
  %i.bm = load ptr, ptr %0, align 8               ; 3 uses
  %9 = ptrtoaddr ptr %i.bm to i64
  %i.bn = sub i64 %7, %9
  %scevgep.i.i33 = getelementptr i8, ptr %i.bm, i64 %i.bn
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %.0.i.i34 = phi ptr [ %i.bm, %bb.w ], [ %i.bp, %bb.z ] ; 4 uses
  %i.bo = load i8, ptr %.0.i.i34, align 1
  switch i8 %i.bo, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit [
    i8 32, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 10, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %.not.i.i35 = icmp eq ptr %.0.i.i34, %1
  br i1 %.not.i.i35, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 1
  br label %bb.x, !llvm.loop !8

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit: ; preds = %bb.x, %bb.y
  %.0.lcssa.i.i36 = phi ptr [ %.0.i.i34, %bb.x ], [ %scevgep.i.i33, %bb.y ]
  store ptr %.0.lcssa.i.i36, ptr %0, align 8
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit
  %.1 = phi i1 [ true, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit ], [ false, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32 ], [ false, %.critedge.i.i ]
  ret i1 %.1
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE(i32 noundef %0) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.0 = alloca double, align 8               ; 4 uses
  switch i32 %0, label %bb.d [
    i32 6, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %.sroa.0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %.sroa.0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr %.sroa.0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.1234 = load i64, ptr %.sroa.0, align 8
  ret i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.1234
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance19ParseInstanceBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjPKNS0_8PropertyEPS1_b(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"union.Assimp::PLY::PropertyInstance::ValueUnion", align 8 ; 4 uses
  %8 = alloca %"union.Assimp::PLY::PropertyInstance::ValueUnion", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %i.e, ptr noundef nonnull %7, i1 noundef zeroext %6) ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %7, align 8 ; 2 uses
  %i.g = load i32, ptr %i.d, align 4
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 2 uses
  switch i32 %i.g, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit [
    i32 6, label %bb.c
    i32 7, label %bb.d
    i32 5, label %bb.e
    i32 3, label %bb.e
    i32 1, label %bb.e
    i32 4, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = bitcast i32 %.sroa.0.sroa.0.0.extract.trunc.i to float
  %i.i = fptoui float %i.h to i32
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

bb.d:                                             ; preds = %bb.b
  %i.j = bitcast i64 %.sroa.0.0.copyload to double
  %i.k = fptoui double %i.j to i32
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %bb.e ] ; 2 uses
  %i.l = zext i32 %.0.i to i64                    ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
  %i.u = sub nuw nsw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.u)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

bb.g:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
  %i.v = icmp ugt i64 %i.s, %i.l
  br i1 %i.v, label %bb.h, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.w, ptr %i.m, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.o

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit ] ; 2 uses
  %i.x = load i32, ptr %4, align 8
  %i.y = load ptr, ptr %5, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = tail call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %i.x, ptr noundef nonnull %i.z, i1 noundef zeroext %6) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ab = load i32, ptr %4, align 8
  %i.ac = call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %i.ab, ptr noundef nonnull %8, i1 noundef zeroext %6) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %8, align 8
  store i64 %i.ah, ptr %i.ae, align 8
  %i.ai = load ptr, ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ad, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %5, align 8               ; 4 uses
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.l, label %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #30 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  %i.ax = load i64, ptr %8, align 8
  store i64 %i.ax, ptr %i.aw, align 8
  %i.ay = icmp sgt i64 %i.an, 0
  br i1 %i.ay, label %bb.m, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_3
