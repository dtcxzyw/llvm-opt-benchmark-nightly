Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView:bb.a
  %i.df = load i8, ptr %i.de, align 1, !tbaa !34
  %i.dg = add i8 %i.df, -65                       ; 2 uses
  %i.dh = icmp ult i8 %i.dg, 16
  br i1 %i.dh, label %bb.aa, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  store ptr %i.di, ptr %1, align 8, !tbaa !74
  %i.dj = shl nuw i8 %i.dc, 4
  %i.dk = or disjoint i8 %i.dg, %i.dj
  br label %bb.ah

_ZL15startsWithDigit10StringView.exit.i.i:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i.i
  %i.dl = sext i8 %i.cv to i32
  %isdigittmp.i.i.i = add nsw i32 %i.dl, -48
  %isdigit.i.i.i = icmp ult i32 %isdigittmp.i.i.i, 10
  br i1 %isdigit.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.dm = sext i8 %i.cv to i64
  %i.dn = getelementptr i8, ptr @.str.33, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -48
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  store ptr %i.dq, ptr %1, align 8, !tbaa !74
  br label %bb.ah

bb.ac:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i.i
  %i.dr = icmp sgt i8 %i.cv, 96
  br i1 %i.dr, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ds = icmp samesign ult i8 %i.cv, 123
  br i1 %i.ds, label %bb.ae, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.ae:                                            ; preds = %bb.ad
  %i.dt = zext nneg i8 %i.cv to i64
  %i.du = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -97
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  store ptr %i.dx, ptr %1, align 8, !tbaa !74
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.dy = add i8 %i.cv, -65
  %or.cond.i.i = icmp ult i8 %i.dy, 26
  br i1 %or.cond.i.i, label %bb.ag, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.ag:                                            ; preds = %bb.af
  %i.dz = zext nneg i8 %i.cv to i64
  %i.ea = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -65
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  store ptr %i.ed, ptr %1, align 8, !tbaa !74
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aa, %bb.ab, %bb.ae, %bb.ag, %_ZNK10StringView10startsWithEc.exit.thread.i.i
  %.ph = phi ptr [ %i.cq, %_ZNK10StringView10startsWithEc.exit.thread.i.i ], [ %i.ed, %bb.ag ], [ %i.dx, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.di, %bb.aa ] ; 11 uses
  %.1.i.i.ph = phi i8 [ %i.cr, %_ZNK10StringView10startsWithEc.exit.thread.i.i ], [ %i.ec, %bb.ag ], [ %i.dw, %bb.ae ], [ %i.dp, %bb.ab ], [ %i.dk, %bb.aa ]
  %i.ee = icmp eq ptr %.ph, %i.cj
  br i1 %i.ee, label %_ZNK10StringView10startsWithEc.exit.thread.i6.i, label %_ZNK10StringView10startsWithEc.exit.i5.i

_ZNK10StringView10startsWithEc.exit.i5.i:         ; preds = %bb.ah
  %i.ef = load i8, ptr %.ph, align 1, !tbaa !34
  %i.eg = icmp eq i8 %i.ef, 63
  br i1 %i.eg, label %bb.ai, label %_ZNK10StringView10startsWithEc.exit.thread.i6.i

_ZNK10StringView10startsWithEc.exit.thread.i6.i:  ; preds = %_ZNK10StringView10startsWithEc.exit.i5.i, %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %.ph, i64 1
  store ptr %i.eh, ptr %1, align 8, !tbaa !59
  %i.ei = load i8, ptr %.ph, align 1, !tbaa !34
  br label %bb.at

bb.ai:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i5.i
  %i.ej = ptrtoint ptr %i.cj to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.ph, i64 1 ; 3 uses
  store ptr %i.ek, ptr %1, align 8, !tbaa !74
  %i.el = icmp eq ptr %i.ek, %i.cj
  br i1 %i.el, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %_ZNK10StringView10startsWithEc.exit.i.i8.i

_ZNK10StringView10startsWithEc.exit.i.i8.i:       ; preds = %bb.ai
  %i.em = load i8, ptr %i.ek, align 1, !tbaa !34  ; 8 uses
  %i.en = icmp eq i8 %i.em, 36
  br i1 %i.en, label %bb.aj, label %_ZL15startsWithDigit10StringView.exit.i9.i

bb.aj:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i8.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.ph, i64 2 ; 3 uses
  store ptr %i.eo, ptr %1, align 8, !tbaa !74
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ej, %i.ep
  %i.er = icmp ult i64 %i.eq, 2
  br i1 %i.er, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !34
  %i.et = add i8 %i.es, -65                       ; 2 uses
  %i.eu = icmp ult i8 %i.et, 16
  br i1 %i.eu, label %bb.al, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %.ph, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !34
  %i.ex = add i8 %i.ew, -65                       ; 2 uses
  %i.ey = icmp ult i8 %i.ex, 16
  br i1 %i.ey, label %bb.am, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store ptr %i.ez, ptr %1, align 8, !tbaa !74
  %i.fa = shl nuw i8 %i.et, 4
  %i.fb = or disjoint i8 %i.ex, %i.fa
  br label %bb.at

_ZL15startsWithDigit10StringView.exit.i9.i:       ; preds = %_ZNK10StringView10startsWithEc.exit.i.i8.i
  %i.fc = sext i8 %i.em to i32
  %isdigittmp.i.i10.i = add nsw i32 %i.fc, -48
  %isdigit.i.i11.i = icmp ult i32 %isdigittmp.i.i10.i, 10
  br i1 %isdigit.i.i11.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i9.i
  %i.fd = sext i8 %i.em to i64
  %i.fe = getelementptr i8, ptr @.str.33, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -48
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !34
  %i.fh = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fh, ptr %1, align 8, !tbaa !74
  br label %bb.at

bb.ao:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i9.i
  %i.fi = icmp sgt i8 %i.em, 96
  br i1 %i.fi, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fj = icmp samesign ult i8 %i.em, 123
  br i1 %i.fj, label %bb.aq, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.aq:                                            ; preds = %bb.ap
  %i.fk = zext nneg i8 %i.em to i64
  %i.fl = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -97
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !34
  %i.fo = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fo, ptr %1, align 8, !tbaa !74
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.fp = add i8 %i.em, -65
  %or.cond.i12.i = icmp ult i8 %i.fp, 26
  br i1 %or.cond.i12.i, label %bb.as, label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i

bb.as:                                            ; preds = %bb.ar
  %i.fq = zext nneg i8 %i.em to i64
  %i.fr = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -65
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %.ph, i64 2
  store ptr %i.fu, ptr %1, align 8, !tbaa !74
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.an, %bb.am, %_ZNK10StringView10startsWithEc.exit.thread.i6.i
  %.1.i7.ph.i = phi i8 [ %i.ei, %_ZNK10StringView10startsWithEc.exit.thread.i6.i ], [ %i.ft, %bb.as ], [ %i.fn, %bb.aq ], [ %i.fg, %bb.an ], [ %i.fb, %bb.am ]
  %i.fv = zext i8 %.1.i.i.ph to i32
  %i.fw = shl nuw nsw i32 %i.fv, 8
  %i.fx = zext i8 %.1.i7.ph.i to i32
  %i.fy = or disjoint i32 %i.fw, %i.fx
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i: ; preds = %bb.af, %bb.ad, %bb.z, %bb.y, %bb.x, %bb.w, %bb.ar, %bb.ap, %bb.al, %bb.ak, %bb.aj, %bb.ai
  store i8 1, ptr %i.bp, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit: ; preds = %bb.at, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i
  %i.fz = phi i8 [ 1, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ 0, %bb.at ]
  %.0.i = phi i32 [ 0, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit14.i ], [ %i.fy, %bb.at ]
  %.not = icmp eq i64 %.086, 2
  br i1 %.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  %i.ga = load i8, ptr %i.ch, align 8, !tbaa !168, !range !70, !noundef !71
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %_ZN12_GLOBAL__N_19Demangler20demangleWcharLiteralER10StringView.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.0.i)
  %.pre = load i8, ptr %i.bp, align 8, !tbaa !47, !range !70
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gc = phi i8 [ %.pre, %bb.av ], [ %i.fz, %bb.au ]
  %i.gd = add i64 %.086, -2
  %i.ge = trunc nuw i8 %i.gc to i1
  br i1 %i.ge, label %_ZN10StringView12consumeFrontES_.exit.thread, label %bb.v

bb.ax:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit, %bb.ax
  %i.gf = phi ptr [ %i.hz, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ], [ %i.bz, %bb.ax ] ; 13 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit ], [ 0, %bb.ax ] ; 4 uses
  %i.gg = icmp eq ptr %i.gf, %i.ac
  br i1 %i.gg, label %_ZNK10StringView10startsWithEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i65

_ZNK10StringView10startsWithEc.exit.i65:          ; preds = %bb.ay
  %i.gh = load i8, ptr %i.gf, align 1, !tbaa !34
  %i.gi = icmp eq i8 %i.gh, 64
  br i1 %i.gi, label %bb.bk, label %_ZNK10StringView10startsWithEc.exit.i67

_ZNK10StringView10startsWithEc.exit.i67:          ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %i.gj = load i8, ptr %i.gf, align 1, !tbaa !34
  %i.gk = icmp eq i8 %i.gj, 63
  br i1 %i.gk, label %bb.az, label %_ZNK10StringView10startsWithEc.exit.thread.i

_ZNK10StringView10startsWithEc.exit.thread.i:     ; preds = %bb.ay, %_ZNK10StringView10startsWithEc.exit.i67
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  store ptr %i.gl, ptr %1, align 8, !tbaa !59
  %i.gm = load i8, ptr %i.gf, align 1, !tbaa !34
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.az:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i67
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 6 uses
  store ptr %i.gn, ptr %1, align 8, !tbaa !74
  %i.go = icmp eq ptr %i.gn, %i.ac
  br i1 %i.go, label %.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i69

_ZNK10StringView10startsWithEc.exit.i.i69:        ; preds = %bb.az
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !34  ; 8 uses
  %i.gq = icmp eq i8 %i.gp, 36
  br i1 %i.gq, label %bb.ba, label %_ZL15startsWithDigit10StringView.exit.i70

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 6 uses
  store ptr %i.gr, ptr %1, align 8, !tbaa !74
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.ae, %i.gs
  %i.gu = icmp ult i64 %i.gt, 2
  br i1 %i.gu, label %.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gv = load i8, ptr %i.gr, align 1, !tbaa !34
  %i.gw = add i8 %i.gv, -65                       ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 16
  br i1 %i.gx, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gf, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !34
  %i.ha = add i8 %i.gz, -65                       ; 2 uses
  %i.hb = icmp ult i8 %i.ha, 16
  br i1 %i.hb, label %bb.bd, label %.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  store ptr %i.hc, ptr %1, align 8, !tbaa !74
  %i.hd = shl nuw i8 %i.gw, 4
  %i.he = or disjoint i8 %i.ha, %i.hd
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZL15startsWithDigit10StringView.exit.i70:        ; preds = %_ZNK10StringView10startsWithEc.exit.i.i69
  %i.hf = sext i8 %i.gp to i32
  %isdigittmp.i.i71 = add nsw i32 %i.hf, -48
  %isdigit.i.i72 = icmp ult i32 %isdigittmp.i.i71, 10
  br i1 %isdigit.i.i72, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %i.hg = sext i8 %i.gp to i64
  %i.hh = getelementptr i8, ptr @.str.33, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -48
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !34
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  store ptr %i.hk, ptr %1, align 8, !tbaa !74
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bf:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i70
  %i.hl = icmp sgt i8 %i.gp, 96
  br i1 %i.hl, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hm = icmp samesign ult i8 %i.gp, 123
  br i1 %i.hm, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.hn = zext nneg i8 %i.gp to i64
  %i.ho = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 -97
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !34
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  store ptr %i.hr, ptr %1, align 8, !tbaa !74
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

bb.bi:                                            ; preds = %bb.bf
  %i.hs = add i8 %i.gp, -65
  %or.cond.i73 = icmp ult i8 %i.hs, 26
  br i1 %or.cond.i73, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.ht = zext nneg i8 %i.gp to i64
  %i.hu = getelementptr i8, ptr @__const._ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.Lookup.34, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 -65
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !34
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  store ptr %i.hx, ptr %1, align 8, !tbaa !74
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

.thread.i:                                        ; preds = %bb.bi, %bb.bg, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %i.hy = phi ptr [ %i.gn, %bb.bi ], [ %i.gn, %bb.bg ], [ %i.gr, %bb.bc ], [ %i.gr, %bb.bb ], [ %i.gr, %bb.ba ], [ %i.gn, %bb.az ]
  store i8 1, ptr %i.bp, align 8, !tbaa !47
  br label %_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit

_ZN12_GLOBAL__N_19Demangler19demangleCharLiteralER10StringView.exit: ; preds = %_ZNK10StringView10startsWithEc.exit.thread.i, %bb.bd, %bb.be, %bb.bh, %bb.bj, %.thread.i
  %i.hz = phi ptr [ %i.hy, %.thread.i ], [ %i.hc, %bb.bd ], [ %i.hk, %bb.be ], [ %i.hr, %bb.bh ], [ %i.hx, %bb.bj ], [ %i.gl, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %.1.i68 = phi i8 [ 0, %.thread.i ], [ %i.he, %bb.bd ], [ %i.hj, %bb.be ], [ %i.hq, %bb.bh ], [ %i.hw, %bb.bj ], [ %i.gm, %_ZNK10StringView10startsWithEc.exit.thread.i ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %.1.i68, ptr %i.ia, align 1, !tbaa !34
  br label %bb.ay, !llvm.loop !163

bb.bk:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i65
  %3 = trunc nuw i64 %indvars.iv to i32           ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  store ptr %i.ib, ptr %1, align 8, !tbaa !74
  %i.ic = icmp ugt i64 %.sroa.0.4.i, %indvars.iv
  br i1 %i.ic, label %bb.bl, label %switch.lookup

bb.bl:                                            ; preds = %bb.bk
  %i.id = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  store i8 1, ptr %i.id, align 8, !tbaa !168
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bl, %bb.bk
  %i.ie = trunc i64 %.sroa.0.4.i to i32
  %i.if = call noundef i32 @_Z17guessCharByteSizePKhjj(ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef %i.ie) ; 7 uses
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler21demangleStringLiteralER10StringView, i64 %i.ig
  %switch.gep = getelementptr i8, ptr %i.ih, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.aa, align 4, !tbaa !167
  %.not98 = icmp ugt i32 %i.if, %3
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.ii = udiv i32 %3, %i.if
  %i.ij = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 40
  %i.ik = zext i32 %i.ii to i64
  %exitcond.not.i74 = icmp eq i32 %i.if, 1
  %exitcond.not.i74.1 = icmp eq i32 %i.if, 2
  %exitcond.not.i74.2 = icmp eq i32 %i.if, 3
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bq, %.thread146, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bs

bb.bm:                                            ; preds = %bb.br, %.lr.ph
  %indvars.iv105 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next106, %bb.br ] ; 2 uses
  %i.il = trunc nuw i64 %indvars.iv105 to i32
  %i.im = mul i32 %i.if, %i.il
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.in ; 4 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !34
  %i.iq = zext i8 %i.ip to i32                    ; 2 uses
  br i1 %exitcond.not.i74, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !34
  %i.it = zext i8 %i.is to i32
  %i.iu = shl nuw nsw i32 %i.it, 8
  %i.iv = or disjoint i32 %i.iu, %i.iq            ; 2 uses
  br i1 %exitcond.not.i74.1, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !34
  %i.iy = zext i8 %i.ix to i32
  %i.iz = shl nuw nsw i32 %i.iy, 16
  %i.ja = or disjoint i32 %i.iz, %i.iv            ; 2 uses
  br i1 %exitcond.not.i74.2, label %_ZL19decodeMultiByteCharPKhjj.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.jd = zext i8 %i.jc to i32
  %i.je = shl nuw i32 %i.jd, 24
  %i.jf = or disjoint i32 %i.je, %i.ja
  br label %_ZL19decodeMultiByteCharPKhjj.exit

_ZL19decodeMultiByteCharPKhjj.exit:               ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.lcssa159 = phi i32 [ %i.iq, %bb.bm ], [ %i.iv, %bb.bn ], [ %i.ja, %bb.bo ], [ %i.jf, %bb.bp ] ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.jg = icmp samesign ult i64 %indvars.iv.next106, %i.ik
  br i1 %i.jg, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  %i.jh = load i8, ptr %i.ij, align 8, !tbaa !168, !range !70, !noundef !71
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %.thread146, label %._crit_edge

.thread146:                                       ; preds = %bb.bq
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa159)
  br label %._crit_edge

bb.br:                                            ; preds = %_ZL19decodeMultiByteCharPKhjj.exit
  call fastcc void @_ZL17outputEscapedCharR12OutputStreamj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.lcssa159)
  br label %bb.bm

bb.bs:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit, %._crit_edge
  %i.jj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12OutputStreamlsEc(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 0) ; 0 uses
  %i.jk = load ptr, ptr %2, align 8, !tbaa !63    ; 4 uses
  %i.jl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jk) #21
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jl
  %i.jn = call fastcc { ptr, ptr } @_ZN12_GLOBAL__N_19Demangler10copyStringE10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull %i.jk, ptr nonnull %i.jm) ; 2 uses
  %i.jo = extractvalue { ptr, ptr } %i.jn, 0
  %i.jp = extractvalue { ptr, ptr } %i.jn, 1
  store ptr %i.jo, ptr %i.z, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 32
  store ptr %i.jp, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !74
  call void @free(ptr noundef %i.jk) #19
  br label %bb.bt

_ZN10StringView12consumeFrontES_.exit.thread:     ; preds = %bb.aw, %bb.n, %bb.m, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24EncodedStringLiteralNodeEJEEEPT_DpOT0_.exit, %_ZNK10StringView10startsWithES_.exit.i, %bb.o, %_ZNK10StringView4findEcm.exit, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %bb.e, %bb.d
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.jq, align 8, !tbaa !47
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.bs
  %.0 = phi ptr [ null, %_ZN10StringView12consumeFrontES_.exit.thread ], [ %.sink15.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler22demangleVcallThunkNodeER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 !guid !169 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = add i64 %i.d, 7                          ; 2 uses
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %reass.sub.i = sub i64 %i.i, %i.d
  %i.j = add i64 %reass.sub.i, 32                 ; 3 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !50
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 4096, ptr %i.s, align 8, !tbaa !52
  store ptr %i.o, ptr %i.a, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 32, ptr %i.t, align 8, !tbaa !54
  %.pre = ptrtoint ptr %i.p to i64                ; 2 uses
  %.pre20 = add i64 %.pre, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi21 = phi i64 [ %i.g, %bb.b ], [ %.pre20, %bb.c ] ; 2 uses
  %.pre-phi = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.u = phi i64 [ %i.l, %bb.b ], [ 4096, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %i.j, %bb.b ], [ 32, %bb.c ]
  %i.w = phi ptr [ %i.b, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sink13.i = phi ptr [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 26, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18FunctionSymbolNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24 ; 3 uses
  store ptr null, ptr %i.z, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = add i64 %i.v, %.pre-phi21
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %reass.sub.i13 = sub i64 %i.ac, %.pre-phi
  %i.ad = add i64 %reass.sub.i13, 32              ; 3 uses
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !54
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.af = inttoptr i64 %i.ac to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18FunctionSymbolNodeEJEEEPT_DpOT0_.exit
  %i.ag = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.ah = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !50
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 4096, ptr %i.ak, align 8, !tbaa !52
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 32, ptr %i.al, align 8, !tbaa !54
  %.pre22 = ptrtoint ptr %i.ah to i64             ; 2 uses
  %.pre24 = add i64 %.pre22, 7
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.pre-phi25 = phi i64 [ %.pre-phi21, %bb.d ], [ %.pre24, %bb.e ]
  %.pre-phi23 = phi i64 [ %.pre-phi, %bb.d ], [ %.pre22, %bb.e ]
  %i.am = phi i64 [ %i.u, %bb.d ], [ 4096, %bb.e ]
  %i.an = phi i64 [ %i.ad, %bb.d ], [ 32, %bb.e ]
  %i.ao = phi ptr [ %i.w, %bb.d ], [ %i.ag, %bb.e ]
  %.sink13.i14 = phi ptr [ %i.af, %bb.d ], [ %i.ah, %bb.e ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 8
  store i32 6, ptr %i.ap, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !83
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle24VcallThunkIdentifierNodeE, i64 16), ptr %.sink13.i14, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink13.i14, i64 24 ; 3 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !171
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = add i64 %i.an, %.pre-phi25
  %i.au = and i64 %i.at, -8                       ; 2 uses
  %reass.sub.i15 = sub i64 %i.au, %.pre-phi23
  %i.av = add i64 %reass.sub.i15, 72              ; 2 uses
  store i64 %i.av, ptr %i.as, align 8, !tbaa !54
  %i.aw = icmp ult i64 %i.av, %i.am
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
  %i.ax = inttoptr i64 %i.au to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18ThunkSignatureNodeEJEEEPT_DpOT0_.exit

bb.g:                                             ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_24VcallThunkIdentifierNodeEJEEEPT_DpOT0_.exit
end_hunk_0
