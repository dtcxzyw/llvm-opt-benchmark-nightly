inline.NumInlined: 157
inline.NumDeleted: 35
begin_hunk_0_@usearch_search_78:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4
  %i.ca = load ptr, ptr %i.ac, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 3152
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = sext i32 %i.br to i64                   ; 3 uses
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ch = call noundef i64 @_ZN6icu_7813UCollationPCE13nextProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.cc, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.d) #14
  %i.ci = load ptr, ptr %i.ad, align 8
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %i.cd
  store i64 %i.ch, ptr %i.cj, align 8
  %i.ck = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.ck, i64 %i.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit225

_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit225: ; preds = %bb.o, %bb.r
  %i.cm = phi ptr [ %i.bj, %bb.o ], [ %i.ck, %bb.r ] ; 2 uses
  %.0.i223 = phi ptr [ %i.bw, %bb.o ], [ %i.cl, %bb.r ]
  %i.cn = load i64, ptr %.0.i223, align 8         ; 4 uses
  %i.co = load ptr, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  %i.cq = load i16, ptr %i.cp, align 2            ; 4 uses
  %i.cr = icmp eq i64 %i.cn, %i.bn
  br i1 %i.cr, label %.thread, label %bb.s

bb.s:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit225
  %i.cs = icmp eq i16 %i.cq, 0
  br i1 %i.cs, label %_ZL12compareCE64slls.exit.thread286, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = lshr i64 %i.cn, 32
  %i.cu = lshr i64 %i.bn, 32
  %i.cv = trunc nuw i64 %i.ct to i32              ; 2 uses
  %i.cw = and i32 %i.cv, -65536                   ; 2 uses
  %i.cx = trunc nuw i64 %i.cu to i32              ; 2 uses
  %i.cy = and i32 %i.cx, -65536                   ; 2 uses
  %.not.i226 = icmp eq i32 %i.cw, %i.cy
  br i1 %.not.i226, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = icmp eq i32 %i.cw, 0
  br i1 %i.cz, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = icmp eq i32 %i.cy, 0
  %i.db = icmp eq i16 %i.cq, 4
  %or.cond.i227 = and i1 %i.da, %i.db
  br i1 %or.cond.i227, label %select.unfold, label %_ZL12compareCE64slls.exit.thread286

bb.w:                                             ; preds = %bb.t
  %i.dc = and i32 %i.cv, 65535                    ; 3 uses
  %i.dd = and i32 %i.cx, 65535                    ; 3 uses
  %.not50.i = icmp eq i32 %i.dc, %i.dd
  br i1 %.not50.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = icmp eq i32 %i.dc, 0
  br i1 %i.de, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = icmp eq i32 %i.dd, 0
  %i.dg = icmp eq i16 %i.cq, 4                    ; 2 uses
  %or.cond5.i = and i1 %i.df, %i.dg
  br i1 %or.cond5.i, label %select.unfold, label %_ZL12compareCE64slls.exit

bb.z:                                             ; preds = %bb.w
  %i.dh = trunc i64 %i.cn to i32
  %i.di = and i32 %i.dh, -65536                   ; 2 uses
  %i.dj = trunc i64 %i.bn to i32
  %i.dk = and i32 %i.dj, -65536                   ; 2 uses
  %.not51.i = icmp eq i32 %i.di, %i.dk
  br i1 %.not51.i, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = icmp eq i32 %i.dk, 327680
  %i.dm = icmp eq i16 %i.cq, 4
  %i.dn = icmp eq i32 %i.di, 327680
  %i.do = and i1 %i.dm, %i.dn
  %narrow52.i = or i1 %i.dl, %i.do
  br i1 %narrow52.i, label %.thread, label %_ZL12compareCE64slls.exit.thread286

_ZL12compareCE64slls.exit:                        ; preds = %bb.y
  %i.dp = icmp eq i32 %i.dd, 5
  %i.dq = icmp eq i32 %i.dc, 5
  %i.dr = and i1 %i.dg, %i.dq
  %narrow.i = or i1 %i.dp, %i.dr
  br i1 %narrow.i, label %.thread, label %_ZL12compareCE64slls.exit.thread286

bb.ab:                                            ; preds = %bb.u, %bb.x
  %i.ds = add nsw i32 %.0146361, -1
  %i.dt = add nsw i32 %.0156360, 1
  br label %.thread

select.unfold:                                    ; preds = %bb.v, %bb.y
  %i.du = add nsw i32 %.0156360, -1
  br label %.thread

.thread:                                          ; preds = %bb.aa, %_ZL12compareCE64slls.exit, %select.unfold, %bb.ab, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit225, %bb.z
  %.2158.ph = phi i32 [ %.0156360, %bb.z ], [ %.0156360, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit225 ], [ %i.dt, %bb.ab ], [ %i.du, %select.unfold ], [ %.0156360, %_ZL12compareCE64slls.exit ], [ %.0156360, %bb.aa ] ; 2 uses
  %.2148.ph = phi i32 [ %.0146361, %bb.z ], [ %.0146361, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit225 ], [ %i.ds, %bb.ab ], [ %.0146361, %select.unfold ], [ %.0146361, %_ZL12compareCE64slls.exit ], [ %.0146361, %bb.aa ]
  %i.dv = add nsw i32 %.2148.ph, 1                ; 2 uses
  %i.dw = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph, label %.critedge, !llvm.loop !9

_ZL12compareCE64slls.exit.thread286:              ; preds = %bb.aa, %bb.v, %bb.s, %_ZL12compareCE64slls.exit
  %.not185 = icmp eq i64 %i.cn, 9223372036854775807
  br i1 %.not185, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit, label %select.unfold333

.critedge:                                        ; preds = %.thread, %.preheader350
  %i.dy = phi ptr [ %i.bf, %.preheader350 ], [ %i.cm, %.thread ] ; 3 uses
  %i.dz = phi i32 [ %i.bh, %.preheader350 ], [ %i.dw, %.thread ]
  %.0156.lcssa = phi i32 [ 0, %.preheader350 ], [ %.2158.ph, %.thread ]
  %.0154.lcssa = phi i64 [ 0, %.preheader350 ], [ %i.bn, %.thread ] ; 4 uses
  %i.ea = add nsw i32 %i.dz, %.0156.lcssa         ; 2 uses
  %i.eb = add nsw i32 %i.ea, %.0140               ; 10 uses
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  %i.ed = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ee = srem i32 %i.ec, %i.ed                   ; 2 uses
  %i.ef = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not.i228 = icmp sgt i32 %i.eb, %i.ef
  %i.eg = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.eh = icmp sle i32 %i.eb, %i.eg
  %or.cond.i229 = select i1 %.not.i228, i1 %i.eh, i1 false
  br i1 %or.cond.i229, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.critedge
  %i.ei = sext i32 %i.ee to i64
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.ei
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit233

bb.ad:                                            ; preds = %.critedge
  %.not12.i230 = icmp eq i32 %i.ec, %i.eg
  call void @llvm.assume(i1 %.not12.i230)
  store i32 %i.eb, ptr %i.ab, align 8
  %i.ek = sub nsw i32 %i.eb, %i.ef
  %.not13.i232 = icmp slt i32 %i.ek, %i.ed
  br i1 %.not13.i232, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = add nsw i32 %i.ef, 1
  store i32 %i.el, ptr %i.aa, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4
  %i.em = load ptr, ptr %i.ac, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 3152
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = sext i32 %i.ee to i64                   ; 3 uses
  %i.eq = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.et = call noundef i64 @_ZN6icu_7813UCollationPCE13nextProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.eo, ptr noundef nonnull %i.er, ptr noundef nonnull %i.es, ptr noundef nonnull %i.c) #14
  %i.eu = load ptr, ptr %i.ad, align 8
  %i.ev = getelementptr inbounds [16 x i8], ptr %i.eu, i64 %i.ep
  store i64 %i.et, ptr %i.ev, align 8
  %i.ew = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit233

_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit233: ; preds = %bb.ac, %bb.af
  %i.ey = phi ptr [ %i.dy, %bb.ac ], [ %i.ew, %bb.af ] ; 3 uses
  %.0.i231 = phi ptr [ %i.ej, %bb.ac ], [ %i.ex, %bb.af ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.fa = load i32, ptr %i.ez, align 8            ; 13 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i231, i64 8
  %i.fc = load i32, ptr %i.fb, align 8            ; 9 uses
  %i.fd = load ptr, ptr %0, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 14
  %i.ff = load i16, ptr %i.fe, align 2
  %i.fg = icmp eq i16 %i.ff, 0
  br i1 %i.fg, label %bb.ag, label %.preheader

.preheader:                                       ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit233
  %.not.i246 = icmp ult i64 %.0154.lcssa, 281474976710656
  %i.fh = lshr i64 %.0154.lcssa, 32               ; 3 uses
  %i.fi = icmp eq i64 %i.fh, 0
  %i.fj = icmp eq i64 %i.fh, 5
  %i.fk = trunc i64 %.0154.lcssa to i32
  %i.fl = and i32 %i.fk, -65536                   ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 327680
  br label %bb.am

bb.ag:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit233
  %i.fn = load i32, ptr %i.z, align 8             ; 2 uses
  %i.fo = srem i32 %i.eb, %i.fn                   ; 2 uses
  %i.fp = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not.i234 = icmp sge i32 %i.eb, %i.fp
  %i.fq = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.fr = icmp slt i32 %i.eb, %i.fq
  %or.cond.i235 = select i1 %.not.i234, i1 %i.fr, i1 false
  br i1 %or.cond.i235, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fs = sext i32 %i.fo to i64
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %i.fs
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239

bb.ai:                                            ; preds = %bb.ag
  %.not12.i236 = icmp eq i32 %i.eb, %i.fq
  call void @llvm.assume(i1 %.not12.i236)
  %i.fu = add nsw i32 %i.eb, 1                    ; 2 uses
  store i32 %i.fu, ptr %i.ab, align 8
  %i.fv = sub nsw i32 %i.fu, %i.fp
  %.not13.i238 = icmp slt i32 %i.fv, %i.fn
  br i1 %.not13.i238, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fw = add nsw i32 %i.fp, 1
  store i32 %i.fw, ptr %i.aa, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4
  %i.fx = load ptr, ptr %i.ac, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 3152
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = sext i32 %i.fo to i64                   ; 3 uses
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.ge = call noundef i64 @_ZN6icu_7813UCollationPCE13nextProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.fz, ptr noundef nonnull %i.gc, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.b) #14
  %i.gf = load ptr, ptr %i.ad, align 8
  %i.gg = getelementptr inbounds [16 x i8], ptr %i.gf, i64 %i.ga
  store i64 %i.ge, ptr %i.gg, align 8
  %i.gh = load ptr, ptr %i.ad, align 8
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.gh, i64 %i.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239

_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239: ; preds = %bb.ah, %bb.ak
  %.0.i237 = phi ptr [ %i.ft, %bb.ah ], [ %i.gi, %bb.ak ] ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i237, i64 8
  %i.gk = load i32, ptr %i.gj, align 8            ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i237, i64 12
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = icmp eq i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.al, label %_ZL12compareCE64slls.exit255.thread320

bb.al:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239
  %i.go = load i64, ptr %.0.i237, align 8
  %.not186 = icmp eq i64 %i.go, 9223372036854775807
  br label %_ZL12compareCE64slls.exit255.thread320

bb.am:                                            ; preds = %.preheader, %_ZL12compareCE64slls.exit255.thread
  %i.gp = phi ptr [ %i.hn, %_ZL12compareCE64slls.exit255.thread ], [ %i.ey, %.preheader ] ; 3 uses
  %.4160 = phi i32 [ %i.il, %_ZL12compareCE64slls.exit255.thread ], [ %i.ea, %.preheader ] ; 2 uses
  %i.gq = add nsw i32 %.4160, %.0140              ; 5 uses
  %i.gr = load i32, ptr %i.z, align 8             ; 2 uses
  %i.gs = srem i32 %i.gq, %i.gr                   ; 2 uses
  %i.gt = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not.i240 = icmp sge i32 %i.gq, %i.gt
  %i.gu = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.gv = icmp slt i32 %i.gq, %i.gu
  %or.cond.i241 = select i1 %.not.i240, i1 %i.gv, i1 false
  br i1 %or.cond.i241, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %i.gw
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245

bb.ao:                                            ; preds = %bb.am
  %.not12.i242 = icmp eq i32 %i.gq, %i.gu
  call void @llvm.assume(i1 %.not12.i242)
  %i.gy = add nsw i32 %i.gq, 1                    ; 2 uses
  store i32 %i.gy, ptr %i.ab, align 8
  %i.gz = sub nsw i32 %i.gy, %i.gt
  %.not13.i244 = icmp slt i32 %i.gz, %i.gr
  br i1 %.not13.i244, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ha = add nsw i32 %i.gt, 1
  store i32 %i.ha, ptr %i.aa, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %i.hb = load ptr, ptr %i.ac, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 3152
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = sext i32 %i.gs to i64                   ; 3 uses
  %i.hf = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %i.hi = call noundef i64 @_ZN6icu_7813UCollationPCE13nextProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.hd, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.a) #14
  %i.hj = load ptr, ptr %i.ad, align 8
  %i.hk = getelementptr inbounds [16 x i8], ptr %i.hj, i64 %i.he
  store i64 %i.hi, ptr %i.hk, align 8
  %i.hl = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.hm = getelementptr inbounds [16 x i8], ptr %i.hl, i64 %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245

_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245: ; preds = %bb.an, %bb.aq
  %i.hn = phi ptr [ %i.gp, %bb.an ], [ %i.hl, %bb.aq ]
  %.0.i243 = phi ptr [ %i.gx, %bb.an ], [ %i.hm, %bb.aq ] ; 9 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i243, i64 8
  %i.hp = load i32, ptr %i.ho, align 8            ; 7 uses
  %i.hq = load i64, ptr %.0.i243, align 8         ; 5 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775807  ; 6 uses
  br i1 %i.hr, label %_ZL12compareCE64slls.exit255.thread320, label %bb.ar

bb.ar:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245
  %i.hs = icmp ult i64 %i.hq, 281474976710656
  br i1 %i.hs, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.ht = load ptr, ptr %0, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 14
  %i.hv = load i16, ptr %i.hu, align 2            ; 3 uses
  %i.hw = icmp eq i64 %i.hq, %.0154.lcssa
  br i1 %i.hw, label %_ZL12compareCE64slls.exit255.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hx = icmp eq i16 %i.hv, 0
  br i1 %i.hx, label %_ZL12compareCE64slls.exit255.thread320, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hy = lshr i64 %i.hq, 32                      ; 3 uses
  br i1 %.not.i246, label %bb.av, label %_ZL12compareCE64slls.exit255.thread

bb.av:                                            ; preds = %bb.au
  %.not50.i250 = icmp eq i64 %i.hy, %i.fh
  br i1 %.not50.i250, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_ZL12compareCE64slls.exit255.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ia = icmp eq i16 %i.hv, 4                    ; 2 uses
  %or.cond5.i251 = and i1 %i.fi, %i.ia
  br i1 %or.cond5.i251, label %_ZL12compareCE64slls.exit255.thread320, label %_ZL12compareCE64slls.exit255

bb.ay:                                            ; preds = %bb.av
  %i.ib = trunc i64 %i.hq to i32
  %i.ic = and i32 %i.ib, -65536                   ; 2 uses
  %.not51.i253 = icmp eq i32 %i.ic, %i.fl
  br i1 %.not51.i253, label %_ZL12compareCE64slls.exit255.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.id = icmp eq i16 %i.hv, 4
  %i.ie = icmp eq i32 %i.ic, 327680
  %i.if = and i1 %i.ie, %i.id
  %narrow52.i254 = or i1 %i.fm, %i.if
  br i1 %narrow52.i254, label %_ZL12compareCE64slls.exit255.thread, label %_ZL12compareCE64slls.exit255.thread320

_ZL12compareCE64slls.exit255:                     ; preds = %bb.ax
  %i.ig = icmp eq i64 %i.hy, 5
  %i.ih = and i1 %i.ig, %i.ia
  %narrow.i252 = or i1 %i.fj, %i.ih
  br i1 %narrow.i252, label %_ZL12compareCE64slls.exit255.thread, label %_ZL12compareCE64slls.exit255.thread320

bb.ba:                                            ; preds = %bb.ar
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i243, i64 12
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = icmp ne i32 %i.hp, %i.ij
  br label %_ZL12compareCE64slls.exit255.thread320

_ZL12compareCE64slls.exit255.thread:              ; preds = %bb.az, %bb.aw, %bb.au, %bb.ay, %bb.as, %_ZL12compareCE64slls.exit255
  %i.il = add nsw i32 %.4160, 1
  br label %bb.am, !llvm.loop !10

_ZL12compareCE64slls.exit255.thread320:           ; preds = %bb.ax, %bb.at, %_ZL12compareCE64slls.exit255, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245, %bb.az, %bb.ba, %bb.al, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239
  %.0161 = phi i32 [ %i.gk, %bb.al ], [ %i.hp, %bb.ba ], [ %i.gk, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239 ], [ %i.hp, %bb.az ], [ %i.hp, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245 ], [ %i.hp, %_ZL12compareCE64slls.exit255 ], [ %i.hp, %bb.at ], [ %i.hp, %bb.ax ] ; 12 uses
  %.5.shrunk = phi i1 [ %.not186, %bb.al ], [ %i.ik, %bb.ba ], [ true, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239 ], [ %i.hr, %bb.az ], [ %i.hr, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245 ], [ %i.hr, %_ZL12compareCE64slls.exit255 ], [ %i.hr, %bb.at ], [ %i.hr, %bb.ax ]
  %.0141 = phi ptr [ %.0.i237, %bb.al ], [ %.0.i243, %bb.ba ], [ %.0.i237, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit239 ], [ %.0.i243, %bb.az ], [ %.0.i243, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer3getEi.exit245 ], [ %.0.i243, %_ZL12compareCE64slls.exit255 ], [ %.0.i243, %bb.at ], [ %.0.i243, %bb.ax ] ; 2 uses
  %.5 = zext i1 %.5.shrunk to i8                  ; 3 uses
  %i.im = load i32, ptr %4, align 4
  %i.in = icmp slt i32 %i.im, 1
  br i1 %i.in, label %bb.bb, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

bb.bb:                                            ; preds = %_ZL12compareCE64slls.exit255.thread320
  %i.io = load ptr, ptr %0, align 8               ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8            ; 2 uses
  %.not15.i.i = icmp eq ptr %i.iq, null
  br i1 %.not15.i.i, label %bb.bc, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %.not16.i.i = icmp eq ptr %i.is, null
  br i1 %.not16.i.i, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i: ; preds = %bb.bc
  %i.it = load ptr, ptr %i.af, align 8
  %i.iu = call ptr @ucol_getLocaleByType_78(ptr noundef %i.it, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.iv = load ptr, ptr %0, align 8               ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = load i32, ptr %i.ix, align 8
  %i.iz = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.iu, ptr noundef %i.iw, i32 noundef %i.iy, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.ja = load ptr, ptr %0, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store ptr %i.iz, ptr %i.jb, align 8
  %i.jc = load ptr, ptr %0, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  %.pre.i = load i32, ptr %4, align 4
  %i.jf = icmp slt i32 %.pre.i, 1
  br i1 %i.jf, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread: ; preds = %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i, %bb.bc, %bb.bb
  %.0.i10.i = phi ptr [ %i.je, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i ], [ %i.iq, %bb.bb ], [ %i.is, %bb.bc ]
  %i.jg = call signext i8 @ubrk_isBoundary_78(ptr noundef %.0.i10.i, i32 noundef %i.fa) #14
  %.fr = freeze i8 %i.jg
  %.not187 = icmp eq i8 %.fr, 0
  %spec.select346 = select i1 %.not187, i8 0, i8 %.5 ; 2 uses
  %.pre = load i32, ptr %4, align 4
  %i.jh = icmp slt i32 %.pre, 1
  br i1 %i.jh, label %bb.bd, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit266.thread.thread.loopexit

bb.bd:                                            ; preds = %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit.thread
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = icmp eq i32 %i.fa, %i.jj
  %spec.select208 = select i1 %i.jk, i8 0, i8 %spec.select346 ; 5 uses
  %i.jl = load ptr, ptr %0, align 8               ; 3 uses
  %i.jm = load ptr, ptr %i.jl, align 8            ; 2 uses
  %.not189 = icmp eq ptr %i.jm, null
  br i1 %.not189, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load i32, ptr %i.jn, align 8            ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, %.0161
  br i1 %i.jp, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %bb.be
end_hunk_0
begin_hunk_1_@usearch_searchBackwards_78:bb.a
  %i.fe = trunc nuw i64 %i.fc to i32              ; 2 uses
  %i.ff = and i32 %i.fe, -65536                   ; 2 uses
  %i.fg = trunc nuw i64 %i.fd to i32              ; 2 uses
  %i.fh = and i32 %i.fg, -65536                   ; 2 uses
  %.not.i238 = icmp eq i32 %i.ff, %i.fh
  br i1 %.not.i238, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fi = icmp eq i32 %i.ff, 0
  br i1 %i.fi, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = icmp eq i32 %i.fh, 0
  %i.fk = icmp eq i16 %i.ez, 4
  %or.cond.i239 = and i1 %i.fj, %i.fk
  br i1 %or.cond.i239, label %select.unfold, label %.thread303

bb.ag:                                            ; preds = %bb.ad
  %i.fl = and i32 %i.fe, 65535                    ; 3 uses
  %i.fm = and i32 %i.fg, 65535                    ; 3 uses
  %.not50.i = icmp eq i32 %i.fl, %i.fm
  br i1 %.not50.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = icmp eq i32 %i.fl, 0
  br i1 %i.fn, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fo = icmp eq i32 %i.fm, 0
  %i.fp = icmp eq i16 %i.ez, 4                    ; 2 uses
  %or.cond5.i = and i1 %i.fo, %i.fp
  br i1 %or.cond5.i, label %select.unfold, label %_ZL12compareCE64slls.exit

bb.aj:                                            ; preds = %bb.ag
  %i.fq = trunc i64 %i.ew to i32
  %i.fr = and i32 %i.fq, -65536                   ; 2 uses
  %i.fs = trunc i64 %i.du to i32
  %i.ft = and i32 %i.fs, -65536                   ; 2 uses
  %.not51.i = icmp eq i32 %i.fr, %i.ft
  br i1 %.not51.i, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fu = icmp eq i32 %i.ft, 327680
  %i.fv = icmp eq i16 %i.ez, 4
  %i.fw = icmp eq i32 %i.fr, 327680
  %i.fx = and i1 %i.fv, %i.fw
  %narrow52.i = or i1 %i.fu, %i.fx
  br i1 %narrow52.i, label %.thread, label %.thread303

_ZL12compareCE64slls.exit:                        ; preds = %bb.ai
  %i.fy = icmp eq i32 %i.fm, 5
  %i.fz = icmp eq i32 %i.fl, 5
  %i.ga = and i1 %i.fp, %i.fz
  %narrow.i = or i1 %i.fy, %i.ga
  br i1 %narrow.i, label %.thread, label %.thread303

bb.al:                                            ; preds = %bb.ae, %bb.ah
  %i.gb = add nsw i32 %.0158351, 1
  br label %.thread

select.unfold:                                    ; preds = %bb.af, %bb.ai
  %i.gc = add nsw i32 %.0158351, -1
  br label %.thread

.thread:                                          ; preds = %bb.ak, %_ZL12compareCE64slls.exit, %bb.aj, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit237, %bb.al, %select.unfold
  %.2160 = phi i32 [ %.0158351, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit237 ], [ %i.gb, %bb.al ], [ %i.gc, %select.unfold ], [ %.0158351, %bb.aj ], [ %.0158351, %_ZL12compareCE64slls.exit ], [ %.0158351, %bb.ak ] ; 2 uses
  %.2151 = phi i32 [ %.0149353, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit237 ], [ %.0149.in352, %bb.al ], [ %.0149353, %select.unfold ], [ %.0149353, %bb.aj ], [ %.0149353, %_ZL12compareCE64slls.exit ], [ %.0149353, %bb.ak ] ; 2 uses
  %i.gd = icmp sgt i32 %.2151, 0
  br i1 %i.gd, label %.lr.ph, label %.critedge208.loopexit, !llvm.loop !24

.thread303:                                       ; preds = %bb.ak, %bb.af, %bb.ac, %_ZL12compareCE64slls.exit
  %.not188 = icmp eq i64 %i.ew, 9223372036854775807
  br i1 %.not188, label %.thread319.loopexit, label %.thread332

.critedge208.loopexit:                            ; preds = %.thread
  %.pre357 = load i32, ptr %i.cl, align 8
  br label %.critedge208

.critedge208:                                     ; preds = %.critedge208.loopexit, %bb.x
  %i.ge = phi ptr [ %i.dm, %bb.x ], [ %i.ev, %.critedge208.loopexit ] ; 2 uses
  %i.gf = phi i32 [ %i.do, %bb.x ], [ %.pre357, %.critedge208.loopexit ]
  %.0158.lcssa = phi i32 [ 0, %bb.x ], [ %.2160, %.critedge208.loopexit ] ; 2 uses
  %i.gg = add nsw i32 %i.gf, %.3                  ; 2 uses
  %i.gh = add i32 %.0158.lcssa, -1
  %i.gi = add i32 %i.gh, %i.gg                    ; 4 uses
  %i.gj = load i32, ptr %i.cg, align 8            ; 2 uses
  %i.gk = srem i32 %i.gi, %i.gj                   ; 2 uses
  %i.gl = load i32, ptr %i.ch, align 4            ; 3 uses
  %.not.i240 = icmp sge i32 %i.gi, %i.gl
  %i.gm = load i32, ptr %i.ci, align 8            ; 2 uses
  %i.gn = icmp slt i32 %i.gi, %i.gm
  %or.cond.i241 = select i1 %.not.i240, i1 %i.gn, i1 false
  br i1 %or.cond.i241, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge208
  %i.go = sext i32 %i.gk to i64
  %i.gp = getelementptr inbounds [16 x i8], ptr %i.ge, i64 %i.go
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit245

bb.an:                                            ; preds = %.critedge208
  %.not12.i242 = icmp eq i32 %i.gi, %i.gm
  call void @llvm.assume(i1 %.not12.i242)
  %i.gq = add i32 %i.gg, %.0158.lcssa             ; 2 uses
  store i32 %i.gq, ptr %i.ci, align 8
  %i.gr = sub nsw i32 %i.gq, %i.gl
  %.not13.i244 = icmp slt i32 %i.gr, %i.gj
  br i1 %.not13.i244, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gs = add nsw i32 %i.gl, 1
  store i32 %i.gs, ptr %i.ch, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4
  %i.gt = load ptr, ptr %i.cj, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 3152
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = sext i32 %i.gk to i64                   ; 3 uses
  %i.gx = getelementptr inbounds [16 x i8], ptr %i.ge, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.ha = call noundef i64 @_ZN6icu_7813UCollationPCE17previousProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.gv, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.gz, ptr noundef nonnull %i.b) #14
  %i.hb = load ptr, ptr %i.ck, align 8
  %i.hc = getelementptr inbounds [16 x i8], ptr %i.hb, i64 %i.gw
  store i64 %i.ha, ptr %i.hc, align 8
  %i.hd = load ptr, ptr %i.ck, align 8
  %i.he = getelementptr inbounds [16 x i8], ptr %i.hd, i64 %i.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit245

_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit245: ; preds = %bb.am, %bb.ap
  %.0.i243 = phi ptr [ %i.gp, %bb.am ], [ %i.he, %bb.ap ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i243, i64 8
  %i.hg = load i32, ptr %i.hf, align 8            ; 11 uses
  %i.hh = load i32, ptr %4, align 4
  %i.hi = icmp slt i32 %i.hh, 1
  br i1 %i.hi, label %bb.aq, label %.thread319.loopexit

bb.aq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit245
  %i.hj = load ptr, ptr %0, align 8               ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %.not15.i.i = icmp eq ptr %i.hl, null
  br i1 %.not15.i.i, label %bb.ar, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit

bb.ar:                                            ; preds = %bb.aq
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8            ; 2 uses
  %.not16.i.i = icmp eq ptr %i.hn, null
  br i1 %.not16.i.i, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i: ; preds = %bb.ar
  %i.ho = load ptr, ptr %i.cm, align 8
  %i.hp = call ptr @ucol_getLocaleByType_78(ptr noundef %i.ho, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.hq = load ptr, ptr %0, align 8               ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ht = load i32, ptr %i.hs, align 8
  %i.hu = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.hp, ptr noundef %i.hr, i32 noundef %i.ht, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.hv = load ptr, ptr %0, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %i.hu, ptr %i.hw, align 8
  %i.hx = load ptr, ptr %0, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  %.pre.i = load i32, ptr %4, align 4
  %i.ia = icmp slt i32 %.pre.i, 1
  br i1 %i.ia, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit, label %.thread319.loopexit

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit: ; preds = %bb.aq, %bb.ar, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i
  %.0.i10.i = phi ptr [ %i.hz, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i ], [ %i.hl, %bb.aq ], [ %i.hn, %bb.ar ]
  %i.ib = call signext i8 @ubrk_isBoundary_78(ptr noundef %.0.i10.i, i32 noundef %i.hg) #14
  %.fr = freeze i8 %i.ib
  %.not189 = icmp ne i8 %.fr, 0
  %spec.select = zext i1 %.not189 to i8           ; 2 uses
  %.pr = load i32, ptr %4, align 4
  %i.ic = icmp slt i32 %.pr, 1
  br i1 %i.ic, label %bb.as, label %.thread319.loopexit

bb.as:                                            ; preds = %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i243, i64 12
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = icmp eq i32 %i.hg, %i.ie
  %spec.select209 = select i1 %i.if, i8 0, i8 %spec.select ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i229, i64 8
  %i.ih = load i32, ptr %i.ig, align 8            ; 6 uses
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %bb.br, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ii = add nsw i32 %.3, -1                     ; 2 uses
  %i.ij = load i32, ptr %i.cg, align 8            ; 2 uses
  %i.ik = srem i32 %i.ii, %i.ij                   ; 2 uses
  %i.il = load i32, ptr %i.ch, align 4            ; 3 uses
  %.not.i246 = icmp sgt i32 %.3, %i.il
  %i.im = load i32, ptr %i.ci, align 8            ; 2 uses
  %i.in = icmp sle i32 %.3, %i.im
  %or.cond.i247 = select i1 %.not.i246, i1 %i.in, i1 false
  br i1 %or.cond.i247, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.io = load ptr, ptr %i.ck, align 8
  %i.ip = zext nneg i32 %i.ik to i64
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.ip
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit251

bb.av:                                            ; preds = %bb.at
  %.not12.i248 = icmp eq i32 %i.ii, %i.im
  call void @llvm.assume(i1 %.not12.i248)
  store i32 %.3, ptr %i.ci, align 8
  %i.ir = sub nsw i32 %.3, %i.il
  %.not13.i250 = icmp slt i32 %i.ir, %i.ij
  br i1 %.not13.i250, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.is = add nsw i32 %i.il, 1
  store i32 %i.is, ptr %i.ch, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %i.it = load ptr, ptr %i.cj, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 3152
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = load ptr, ptr %i.ck, align 8
  %i.ix = zext nneg i32 %i.ik to i64              ; 3 uses
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.jb = call noundef i64 @_ZN6icu_7813UCollationPCE17previousProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %i.iv, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.a) #14
  %i.jc = load ptr, ptr %i.ck, align 8
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.ix
  store i64 %i.jb, ptr %i.jd, align 8
  %i.je = load ptr, ptr %i.ck, align 8
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit251

_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit251: ; preds = %bb.au, %bb.ax
  %.0.i249 = phi ptr [ %i.iq, %bb.au ], [ %i.jf, %bb.ax ] ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i249, i64 8
  %i.jh = load i32, ptr %i.jg, align 8            ; 13 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i249, i64 12
  %i.jj = load i32, ptr %i.ji, align 4            ; 2 uses
  %i.jk = icmp eq i32 %i.jh, %i.jj
  br i1 %i.jk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit251
  %i.jl = load i64, ptr %.0.i249, align 8
  %.not191 = icmp eq i64 %i.jl, 9223372036854775807
  %spec.select210 = select i1 %.not191, i8 %spec.select209, i8 0
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit251
  %.5157 = phi i8 [ %spec.select209, %_ZN6icu_7812_GLOBAL__N_19CEIBuffer11getPreviousEi.exit251 ], [ %spec.select210, %bb.ay ] ; 2 uses
  %i.jm = load ptr, ptr %0, align 8               ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8            ; 2 uses
  %.not192 = icmp eq ptr %i.jn, null
  br i1 %.not192, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = load i32, ptr %i.jo, align 8            ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, %i.jh
  br i1 %i.jq, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.ju = load i64, ptr %.0.i249, align 8
  %.not193 = icmp ult i64 %i.ju, 281474976710656
  br i1 %.not193, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i229, i64 12
  %i.jw = load i32, ptr %i.jv, align 4
  %.not194 = icmp sge i32 %i.jh, %i.jw
  %i.jx = icmp sgt i32 %i.jj, %i.jh
  %or.cond343 = and i1 %i.jx, %.not194
  br i1 %or.cond343, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.jy = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.jz = call fastcc noundef i32 @_ZN12_GLOBAL__N_111codePointAtERK7USearchi(ptr nonnull %i.jn, i32 %i.jp, i32 noundef %i.jh)
  %i.ka = load ptr, ptr %i.jy, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 120
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = call noundef signext i8 %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, i32 noundef %i.jz) #14
  %.not195 = icmp eq i8 %i.kd, 0
  br i1 %.not195, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.ke = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.kf = icmp sgt i32 %i.jh, 0
  br i1 %i.kf, label %bb.bg, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

bb.bg:                                            ; preds = %bb.bf
  %i.kg = load ptr, ptr %0, align 8
  %.val224 = load ptr, ptr %i.kg, align 8
  %i.kh = zext nneg i32 %i.jh to i64
  %i.ki = getelementptr [2 x i8], ptr %.val224, i64 %i.kh ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 -2
  %i.kk = load i16, ptr %i.kj, align 2
  %i.kl = zext i16 %i.kk to i32                   ; 4 uses
  %i.km = and i32 %i.kl, 64512
  %i.kn = icmp ne i32 %i.km, 56320
  %.not.i253 = icmp eq i32 %i.jh, 1
  %or.cond.i254 = or i1 %.not.i253, %i.kn
  br i1 %or.cond.i254, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ko = getelementptr i8, ptr %i.ki, i64 -4
  %i.kp = load i16, ptr %i.ko, align 2
  %i.kq = zext i16 %i.kp to i32                   ; 2 uses
  %i.kr = and i32 %i.kq, 64512
  %i.ks = icmp eq i32 %i.kr, 55296
  br i1 %i.ks, label %bb.bi, label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

bb.bi:                                            ; preds = %bb.bh
  %i.kt = shl nuw nsw i32 %i.kq, 10
  %i.ku = add nuw nsw i32 %i.kl, -56613888
  %i.kv = add nsw i32 %i.ku, %i.kt
  br label %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit

_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.0.i252 = phi i32 [ -1, %bb.bf ], [ %i.kl, %bb.bg ], [ %i.kv, %bb.bi ], [ %i.kl, %bb.bh ]
  %i.kw = load ptr, ptr %i.ke, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 128
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = call noundef signext i8 %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.ke, i32 noundef %.0.i252) #14
  %.not199 = icmp eq i8 %i.kz, 0
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bb, %bb.bc, %bb.bd, %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit, %bb.be, %bb.ba, %bb.az
  %.0140 = phi i1 [ true, %bb.az ], [ true, %bb.ba ], [ %.not199, %_ZN12_GLOBAL__N_115codePointBeforeERK7USearchi.exit ], [ true, %bb.bd ], [ true, %bb.bc ], [ true, %bb.bb ], [ false, %bb.be ] ; 2 uses
  %i.la = icmp slt i32 %i.ih, %i.jh
  br i1 %i.la, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.lb = load i32, ptr %4, align 4
  %i.lc = icmp slt i32 %i.lb, 1
  br i1 %i.lc, label %bb.bl, label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ld = load ptr, ptr %0, align 8               ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8            ; 2 uses
  %.not15.i.i256 = icmp eq ptr %i.lf, null
  br i1 %.not15.i.i256, label %bb.bm, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i257

bb.bm:                                            ; preds = %bb.bl
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8            ; 2 uses
  %.not16.i.i258 = icmp eq ptr %i.lh, null
  br i1 %.not16.i.i258, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i259, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i257

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i259: ; preds = %bb.bm
  %i.li = load ptr, ptr %i.cm, align 8
  %i.lj = call ptr @ucol_getLocaleByType_78(ptr noundef %i.li, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.lk = load ptr, ptr %0, align 8               ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.ln = load i32, ptr %i.lm, align 8
  %i.lo = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.lj, ptr noundef %i.ll, i32 noundef %i.ln, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.lp = load ptr, ptr %0, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store ptr %i.lo, ptr %i.lq, align 8
  %i.lr = load ptr, ptr %0, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8
  %.pre.i260 = load i32, ptr %4, align 4
  %i.lu = icmp slt i32 %.pre.i260, 1
  br i1 %i.lu, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i257, label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i257: ; preds = %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i259, %bb.bm, %bb.bl
  %.0.i12.i = phi ptr [ %i.lt, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i259 ], [ %i.lf, %bb.bl ], [ %i.lh, %bb.bm ]
  %i.lv = call i32 @ubrk_following_78(ptr noundef %.0.i12.i, i32 noundef %i.ih) #14
  br label %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit

_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit: ; preds = %bb.bk, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i259, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i257
  %.1.i255 = phi i32 [ %i.ih, %bb.bk ], [ %i.lv, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.thread.i257 ], [ %i.ih, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i259 ] ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i229, i64 12
  %i.lx = load i32, ptr %i.lw, align 4
  %.not196 = icmp sge i32 %.1.i255, %i.lx
  %i.ly = icmp slt i32 %.1.i255, %i.jh
  %or.cond211 = select i1 %.0140, i1 true, i1 %i.ly
  %or.cond217 = and i1 %.not196, %or.cond211
  %spec.select220 = select i1 %or.cond217, i32 %.1.i255, i32 %i.jh
  br label %bb.bn

bb.bn:                                            ; preds = %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit, %bb.bj
  %.2168 = phi i32 [ %i.jh, %bb.bj ], [ %spec.select220, %_ZL17nextBoundaryAfterP13UStringSearchiR10UErrorCode.exit ] ; 7 uses
  br i1 %.0140, label %bb.bo, label %.thread313

bb.bo:                                            ; preds = %bb.bn
  %i.lz = icmp sgt i32 %.2168, %i.jh
  %spec.select212 = select i1 %i.lz, i8 0, i8 %.5157 ; 3 uses
  %i.ma = load i32, ptr %4, align 4
  %i.mb = icmp slt i32 %i.ma, 1
  br i1 %i.mb, label %bb.bp, label %.thread319.loopexit

bb.bp:                                            ; preds = %bb.bo
  %i.mc = load ptr, ptr %0, align 8               ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8            ; 2 uses
  %.not15.i.i262 = icmp eq ptr %i.me, null
  br i1 %.not15.i.i262, label %bb.bq, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit268.thread

bb.bq:                                            ; preds = %bb.bp
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  %.not16.i.i265 = icmp eq ptr %i.mg, null
  br i1 %.not16.i.i265, label %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i266, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit268.thread

_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i266: ; preds = %bb.bq
  %i.mh = load ptr, ptr %i.cm, align 8
  %i.mi = call ptr @ucol_getLocaleByType_78(ptr noundef %i.mh, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.mj = load ptr, ptr %0, align 8               ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mm = load i32, ptr %i.ml, align 8
  %i.mn = call ptr @ubrk_open_78(i32 noundef 0, ptr noundef %i.mi, ptr noundef %i.mk, i32 noundef %i.mm, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %i.mo = load ptr, ptr %0, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store ptr %i.mn, ptr %i.mp, align 8
  %i.mq = load ptr, ptr %0, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  %.pre.i267 = load i32, ptr %4, align 4
  %i.mt = icmp slt i32 %.pre.i267, 1
  br i1 %i.mt, label %_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit268.thread, label %.thread319.loopexit

_ZL15isBreakBoundaryP13UStringSearchiR10UErrorCode.exit268.thread: ; preds = %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i266, %bb.bq, %bb.bp
  %.0.i10.i264 = phi ptr [ %i.ms, %_ZL16getBreakIteratorP13UStringSearchR10UErrorCode.exit.i266 ], [ %i.me, %bb.bp ], [ %i.mg, %bb.bq ]
  %i.mu = call signext i8 @ubrk_isBoundary_78(ptr noundef %.0.i10.i264, i32 noundef %.2168) #14
  %.fr345 = freeze i8 %i.mu
end_hunk_1
