Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/d2s?download=true
inline.NumInlined: 47
inline.NumDeleted: 18
begin_hunk_0_@to_chars_fixed:bb.a

bb.v:                                             ; preds = %bb.u
  %i.ah = icmp samesign ugt i64 %i.af, 999999999999999
  br i1 %i.ah, label %decimalLength17.exit137, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = icmp samesign ugt i64 %i.af, 99999999999999
  br i1 %i.ai, label %decimalLength17.exit137, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = icmp samesign ugt i64 %i.af, 9999999999999
  br i1 %i.aj, label %decimalLength17.exit137, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = icmp samesign ugt i64 %i.af, 999999999999
  br i1 %i.ak, label %decimalLength17.exit137, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.al = icmp samesign ugt i64 %i.af, 99999999999
  br i1 %i.al, label %decimalLength17.exit137, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.am = icmp samesign ugt i64 %i.af, 9999999999
  br i1 %i.am, label %decimalLength17.exit137, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.an = icmp samesign ugt i64 %i.af, 999999999
  br i1 %i.an, label %decimalLength17.exit137, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = icmp samesign ugt i64 %i.af, 99999999
  br i1 %i.ao, label %decimalLength17.exit137, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ap = icmp samesign ugt i64 %i.af, 9999999
  br i1 %i.ap, label %decimalLength17.exit137, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aq = icmp samesign ugt i64 %i.af, 999999
  br i1 %i.aq, label %decimalLength17.exit137, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ar = icmp samesign ugt i64 %i.af, 99999
  br i1 %i.ar, label %decimalLength17.exit137, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.as = icmp samesign ugt i64 %i.af, 9999
  br i1 %i.as, label %decimalLength17.exit137, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = icmp samesign ugt i64 %i.af, 999
  br i1 %i.at, label %decimalLength17.exit137, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.au = icmp samesign ugt i64 %i.af, 99
  br i1 %i.au, label %decimalLength17.exit137, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.av = icmp samesign ugt i64 %i.af, 9
  %..i135 = select i1 %i.av, i32 2, i32 1
  br label %decimalLength17.exit137

bb.ak:                                            ; preds = %bb.t
  %i.aw = sub nuw nsw i32 %.0.i, %i.t
  br label %decimalLength17.exit137

decimalLength17.exit137:                          ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.ak
  %.0113 = phi i64 [ %i.z, %bb.ak ], [ %i.af, %bb.u ], [ %i.af, %bb.v ], [ %i.af, %bb.w ], [ %i.af, %bb.x ], [ %i.af, %bb.y ], [ %i.af, %bb.z ], [ %i.af, %bb.aa ], [ %i.af, %bb.ab ], [ %i.af, %bb.ac ], [ %i.af, %bb.ad ], [ %i.af, %bb.ae ], [ %i.af, %bb.af ], [ %i.af, %bb.ag ], [ %i.af, %bb.ah ], [ %i.af, %bb.ai ], [ %i.af, %bb.aj ] ; 4 uses
  %.0109 = phi i32 [ %i.aw, %bb.ak ], [ 17, %bb.u ], [ 16, %bb.v ], [ 15, %bb.w ], [ 14, %bb.x ], [ 13, %bb.y ], [ 12, %bb.z ], [ 11, %bb.aa ], [ 10, %bb.ab ], [ 9, %bb.ac ], [ 8, %bb.ad ], [ 7, %bb.ae ], [ 6, %bb.af ], [ 5, %bb.ag ], [ 4, %bb.ah ], [ 3, %bb.ai ], [ %..i135, %bb.aj ] ; 2 uses
  %.not129175 = icmp ne i64 %.0113, 0
  %i.ax = urem i64 %.0113, 10
  %i.ay = icmp eq i64 %i.ax, 0
  %or.cond132176 = and i1 %.not129175, %i.ay
  br i1 %or.cond132176, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %decimalLength17.exit137, %.lr.ph
  %.0106179 = phi i32 [ %i.ba, %.lr.ph ], [ %i.ab, %decimalLength17.exit137 ]
  %.1110178 = phi i32 [ %i.bb, %.lr.ph ], [ %.0109, %decimalLength17.exit137 ]
  %.1114177 = phi i64 [ %i.az, %.lr.ph ], [ %.0113, %decimalLength17.exit137 ] ; 2 uses
  %i.az = udiv i64 %.1114177, 10                  ; 3 uses
  %i.ba = add nsw i32 %.0106179, 1                ; 2 uses
  %i.bb = add i32 %.1110178, -1                   ; 2 uses
  %.not129 = icmp ugt i64 %.1114177, 9
  %i.bc = urem i64 %i.az, 10
  %i.bd = icmp eq i64 %i.bc, 0
  %or.cond132 = and i1 %.not129, %i.bd
  br i1 %or.cond132, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %decimalLength17.exit137
  %.1114.lcssa = phi i64 [ %.0113, %decimalLength17.exit137 ], [ %i.az, %.lr.ph ] ; 2 uses
  %.1110.lcssa = phi i32 [ %.0109, %decimalLength17.exit137 ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.0106.lcssa = phi i32 [ %i.ab, %decimalLength17.exit137 ], [ %i.ba, %.lr.ph ] ; 4 uses
  %i.be = icmp sgt i32 %.0106.lcssa, -1
  br i1 %i.be, label %.critedge.thread, label %.critedge..critedge.thread165_crit_edge

.critedge..critedge.thread165_crit_edge:          ; preds = %.critedge
  %.pre208 = sub nsw i32 0, %.0106.lcssa
  br label %.critedge.thread165

.critedge.thread165:                              ; preds = %.critedge..critedge.thread165_crit_edge, %bb.q
  %.pre-phi209 = phi i32 [ %.pre208, %.critedge..critedge.thread165_crit_edge ], [ %i.r, %bb.q ] ; 5 uses
  %.2108171 = phi i32 [ %.0106.lcssa, %.critedge..critedge.thread165_crit_edge ], [ %1, %bb.q ] ; 2 uses
  %.3112170 = phi i32 [ %.1110.lcssa, %.critedge..critedge.thread165_crit_edge ], [ %.0.i, %bb.q ] ; 4 uses
  %.3116169 = phi i64 [ %.1114.lcssa, %.critedge..critedge.thread165_crit_edge ], [ %0, %bb.q ] ; 3 uses
  %i.bf = icmp sgt i32 %.3112170, %.pre-phi209
  br i1 %i.bf, label %bb.al, label %bb.bc

bb.al:                                            ; preds = %.critedge.thread165
  %i.bg = zext nneg i32 %.pre-phi209 to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @pow_10.POW_TABLE, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10 ; 2 uses
  %i.bj = udiv i64 %.3116169, %i.bi               ; 2 uses
  %i.bk = urem i64 %.3116169, %i.bi               ; 19 uses
  %i.bl = add nsw i32 %.3112170, %.2108171        ; 2 uses
  %i.bm = xor i32 %.2108171, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @pow_10.POW_TABLE, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bq = icmp ult i64 %i.bk, %i.bp
  br i1 %i.bq, label %bb.am, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.br = icmp ugt i64 %i.bk, 9999999999999999
  br i1 %i.br, label %decimalLength17.exit140, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bs = icmp samesign ugt i64 %i.bk, 999999999999999
  br i1 %i.bs, label %decimalLength17.exit140, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bt = icmp samesign ugt i64 %i.bk, 99999999999999
  br i1 %i.bt, label %decimalLength17.exit140, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bu = icmp samesign ugt i64 %i.bk, 9999999999999
  br i1 %i.bu, label %decimalLength17.exit140, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bv = icmp samesign ugt i64 %i.bk, 999999999999
  br i1 %i.bv, label %decimalLength17.exit140, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bw = icmp samesign ugt i64 %i.bk, 99999999999
  br i1 %i.bw, label %decimalLength17.exit140, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bx = icmp samesign ugt i64 %i.bk, 9999999999
  br i1 %i.bx, label %decimalLength17.exit140, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.by = icmp samesign ugt i64 %i.bk, 999999999
  br i1 %i.by, label %decimalLength17.exit140, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bz = icmp samesign ugt i64 %i.bk, 99999999
  br i1 %i.bz, label %decimalLength17.exit140, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ca = icmp samesign ugt i64 %i.bk, 9999999
  br i1 %i.ca, label %decimalLength17.exit140, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cb = icmp samesign ugt i64 %i.bk, 999999
  br i1 %i.cb, label %decimalLength17.exit140, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cc = icmp samesign ugt i64 %i.bk, 99999
  br i1 %i.cc, label %decimalLength17.exit140, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cd = icmp samesign ugt i64 %i.bk, 9999
  br i1 %i.cd, label %decimalLength17.exit140, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ce = icmp samesign ugt i64 %i.bk, 999
  br i1 %i.ce, label %decimalLength17.exit140, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cf = icmp samesign ugt i64 %i.bk, 99
  br i1 %i.cf, label %decimalLength17.exit140, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cg = icmp samesign ugt i64 %i.bk, 9
  %..i138 = select i1 %i.cg, i32 2, i32 1
  br label %decimalLength17.exit140

decimalLength17.exit140:                          ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb
  %.0.i139 = phi i32 [ 3, %bb.ba ], [ 17, %bb.am ], [ 16, %bb.an ], [ 15, %bb.ao ], [ 14, %bb.ap ], [ 13, %bb.aq ], [ 12, %bb.ar ], [ 11, %bb.as ], [ 10, %bb.at ], [ 9, %bb.au ], [ 8, %bb.av ], [ 7, %bb.aw ], [ 6, %bb.ax ], [ 5, %bb.ay ], [ 4, %bb.az ], [ %..i138, %bb.bb ] ; 2 uses
  %i.ch = sub nsw i32 %.pre-phi209, %.0.i139
  br label %.critedge.thread

bb.bc:                                            ; preds = %.critedge.thread165
  %i.ci = sub i32 %.pre-phi209, %.3112170
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.r, %bb.bc, %.critedge, %decimalLength17.exit140, %bb.al, %decimalLength17.exit
  %.1105 = phi i64 [ %0, %decimalLength17.exit ], [ 0, %bb.bc ], [ %.1114.lcssa, %.critedge ], [ %i.bj, %decimalLength17.exit140 ], [ %i.bj, %bb.al ], [ 0, %bb.r ] ; 5 uses
  %.1103 = phi i32 [ %.0.i, %decimalLength17.exit ], [ 0, %bb.bc ], [ %.1110.lcssa, %.critedge ], [ %i.bl, %decimalLength17.exit140 ], [ %i.bl, %bb.al ], [ %.0.i, %bb.r ] ; 4 uses
  %.1101 = phi i64 [ 0, %decimalLength17.exit ], [ %.3116169, %bb.bc ], [ 0, %.critedge ], [ %i.bk, %decimalLength17.exit140 ], [ %i.bk, %bb.al ], [ 0, %bb.r ] ; 6 uses
  %.299 = phi i32 [ 0, %decimalLength17.exit ], [ %.3112170, %bb.bc ], [ 0, %.critedge ], [ %.0.i139, %decimalLength17.exit140 ], [ %.pre-phi209, %bb.al ], [ 0, %bb.r ] ; 4 uses
  %.196 = phi i32 [ %1, %decimalLength17.exit ], [ 0, %bb.bc ], [ %.0106.lcssa, %.critedge ], [ 0, %decimalLength17.exit140 ], [ 0, %bb.al ], [ 0, %bb.r ] ; 4 uses
  %.294 = phi i32 [ 0, %decimalLength17.exit ], [ %i.ci, %bb.bc ], [ 0, %.critedge ], [ %i.ch, %decimalLength17.exit140 ], [ 0, %bb.al ], [ 0, %bb.r ] ; 3 uses
  %i.cj = or i64 %.1101, %.1105
  %or.cond.not = icmp ne i64 %i.cj, 0
  %or.cond134.not = and i1 %2, %or.cond.not
  br i1 %or.cond134.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge.thread
  store i8 45, ptr %4, align 1, !tbaa !8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge.thread
  %.091 = phi i32 [ 1, %bb.bd ], [ 0, %.critedge.thread ] ; 3 uses
  %i.ck = zext nneg i32 %.091 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 %i.ck ; 5 uses
  %.not.i = icmp ult i64 %.1105, 4294967296
  br i1 %.not.i, label %.._crit_edge81.i_crit_edge, label %bb.bf

.._crit_edge81.i_crit_edge:                       ; preds = %bb.be
  %.pre = trunc nuw i64 %.1105 to i32
  br label %._crit_edge81.i

bb.bf:                                            ; preds = %bb.be
  %i.cm = udiv i64 %.1105, 100000000
  %i.cn = trunc i64 %.1105 to i32
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  %.neg.i = mul i32 %i.co, -100000000
  %i.cp = add i32 %.neg.i, %i.cn                  ; 2 uses
  %i.cq = udiv i32 %i.cp, 10000
  %i.cr = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %i.cs = insertelement <2 x i32> %i.cr, i32 %i.cq, i64 1
  %i.ct = urem <2 x i32> %i.cs, splat (i32 10000)
  %i.cu = trunc nuw nsw <2 x i32> %i.ct to <2 x i16>
  %.frozen = freeze <2 x i16> %i.cu               ; 2 uses
  %i.cv = udiv <2 x i16> %.frozen, splat (i16 100) ; 3 uses
  %i.cw = extractelement <2 x i16> %i.cv, i64 0
  %i.cx = shl nuw nsw i16 %i.cw, 1
  %i.cy = mul <2 x i16> %i.cv, splat (i16 100)
  %.decomposed = sub <2 x i16> %.frozen, %i.cy    ; 2 uses
  %i.cz = extractelement <2 x i16> %.decomposed, i64 0
  %i.da = shl nuw nsw i16 %i.cz, 1
  %i.db = extractelement <2 x i16> %.decomposed, i64 1
  %i.dc = shl nuw nsw i16 %i.db, 1
  %i.dd = extractelement <2 x i16> %i.cv, i64 1
  %i.de = shl nuw nsw i16 %i.dd, 1
  %i.df = zext i32 %.1103 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -2
  %i.di = zext nneg i16 %i.da to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2
  store i16 %i.dk, ptr %i.dh, align 1
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.dm = zext nneg i16 %i.cx to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2
  store i16 %i.do, ptr %i.dl, align 1
  %i.dp = getelementptr inbounds i8, ptr %i.dg, i64 -6
  %i.dq = zext nneg i16 %i.dc to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2
  store i16 %i.ds, ptr %i.dp, align 1
  %i.dt = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %i.du = zext nneg i16 %i.de to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2
  store i16 %i.dw, ptr %i.dt, align 1
  br label %._crit_edge81.i

._crit_edge81.i:                                  ; preds = %.._crit_edge81.i_crit_edge, %bb.bf
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge81.i_crit_edge ], [ %i.co, %bb.bf ] ; 3 uses
  %.063.i = phi i32 [ 0, %.._crit_edge81.i_crit_edge ], [ 8, %bb.bf ] ; 2 uses
  %i.dx = icmp ugt i32 %.pre-phi, 9999
  br i1 %i.dx, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge81.i
  %i.dy = zext i32 %.1103 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dy
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.i
  %.178.i = phi i32 [ %.063.i, %.lr.ph.i ], [ %i.er, %bb.bg ] ; 2 uses
  %.06477.i = phi i32 [ %.pre-phi, %.lr.ph.i ], [ %i.ea, %bb.bg ] ; 3 uses
  %i.ea = udiv i32 %.06477.i, 10000               ; 3 uses
  %.neg66.i = mul i32 %i.ea, -10000
  %i.eb = add i32 %.neg66.i, %.06477.i            ; 2 uses
  %i.ec = urem i32 %i.eb, 100
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = udiv i32 %i.eb, 100
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = zext i32 %.178.i to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.dz, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -2
  %i.ek = zext nneg i32 %i.ed to i64
  %i.el = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2
  store i16 %i.em, ptr %i.ej, align 1
  %i.en = getelementptr inbounds i8, ptr %i.ei, i64 -4
  %i.eo = zext nneg i32 %i.ef to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2
  store i16 %i.eq, ptr %i.en, align 1
  %i.er = add i32 %.178.i, 4                      ; 2 uses
  %i.es = icmp ugt i32 %.06477.i, 99999999
  br i1 %i.es, label %bb.bg, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bg, %._crit_edge81.i
  %.064.lcssa.i = phi i32 [ %.pre-phi, %._crit_edge81.i ], [ %i.ea, %bb.bg ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.063.i, %._crit_edge81.i ], [ %i.er, %bb.bg ] ; 3 uses
  %i.et = icmp samesign ugt i32 %.064.lcssa.i, 99
  br i1 %i.et, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i
  %.lhs.trunc.i = trunc nuw i32 %.064.lcssa.i to i16 ; 2 uses
  %i.eu = urem i16 %.lhs.trunc.i, 100
  %i.ev = shl nuw nsw i16 %i.eu, 1
  %i.ew = udiv i16 %.lhs.trunc.i, 100
  %.zext68.i = zext nneg i16 %i.ew to i32
  %i.ex = zext i32 %.1103 to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ex
  %i.ez = zext i32 %.1.lcssa.i to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -2
  %i.fd = zext nneg i16 %i.ev to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2
  store i16 %i.ff, ptr %i.fc, align 1
  %i.fg = or disjoint i32 %.1.lcssa.i, 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge.i
  %.165.i = phi i32 [ %.zext68.i, %bb.bh ], [ %.064.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.2.i = phi i32 [ %i.fg, %bb.bh ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.fh = icmp samesign ugt i32 %.165.i, 9
  br i1 %i.fh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fi = shl nuw nsw i32 %.165.i, 1
  %i.fj = zext i32 %.1103 to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.fj
  %i.fl = zext i32 %.2.i to i64
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 %i.fm
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -2
  %i.fp = zext nneg i32 %i.fi to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2
  store i16 %i.fr, ptr %i.fo, align 1
  br label %to_chars_uint64.exit

bb.bk:                                            ; preds = %bb.bi
  %i.fs = trunc nuw nsw i32 %.165.i to i8
  %i.ft = or disjoint i8 %i.fs, 48
  store i8 %i.ft, ptr %i.cl, align 1, !tbaa !8
  br label %to_chars_uint64.exit

to_chars_uint64.exit:                             ; preds = %bb.bj, %bb.bk
  %.sink.i = phi i32 [ 1, %bb.bk ], [ 2, %bb.bj ] ; 2 uses
  %i.fu = add i32 %.2.i, %.091
  %i.fv = add i32 %i.fu, %.sink.i                 ; 3 uses
  %.not193 = icmp eq i32 %.196, 0
  br i1 %.not193, label %._crit_edge, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %to_chars_uint64.exit
  %i.fw = sext i32 %i.fv to i64
  %scevgep = getelementptr i8, ptr %4, i64 %i.fw
  %i.fx = zext nneg i32 %.196 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.fx, i1 false), !tbaa !8
  %i.fy = add i32 %i.fv, %.196
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph184.preheader, %to_chars_uint64.exit
  %.1.lcssa = phi i32 [ %i.fv, %to_chars_uint64.exit ], [ %i.fy, %.lr.ph184.preheader ] ; 3 uses
  %.not130 = icmp eq i64 %.1101, 0
  br i1 %.not130, label %bb.bs, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge
  %i.fz = sext i32 %.1.lcssa to i64
  %i.ga = getelementptr inbounds i8, ptr %4, i64 %i.fz
  store i8 46, ptr %i.ga, align 1, !tbaa !8
  %.not194 = icmp eq i32 %.294, 0
  br i1 %.not194, label %._crit_edge191, label %.lr.ph190.preheader

.lr.ph190.preheader:                              ; preds = %bb.bl
  %5 = add i32 %.196, %.2.i
  %6 = add i32 %5, %.091
  %7 = add i32 %6, %.sink.i                       ; 2 uses
  %8 = add i32 %7, 1
  %i.gb = sext i32 %8 to i64
  %scevgep204 = getelementptr i8, ptr %4, i64 %i.gb
  %i.gc = zext i32 %.294 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep204, i8 48, i64 %i.gc, i1 false), !tbaa !8
  %i.gd = add i32 %7, %.294
  br label %._crit_edge191

._crit_edge191:                                   ; preds = %.lr.ph190.preheader, %bb.bl
  %.2.lcssa.in = phi i32 [ %.1.lcssa, %bb.bl ], [ %i.gd, %.lr.ph190.preheader ]
  %.2.lcssa = add i32 %.2.lcssa.in, 1             ; 2 uses
  %i.ge = sext i32 %.2.lcssa to i64
  %i.gf = getelementptr inbounds i8, ptr %4, i64 %i.ge ; 5 uses
  %.not.i142 = icmp ult i64 %.1101, 4294967296
  br i1 %.not.i142, label %._crit_edge191.._crit_edge81.i146_crit_edge, label %bb.bm

._crit_edge191.._crit_edge81.i146_crit_edge:      ; preds = %._crit_edge191
  %.pre206 = trunc nuw i64 %.1101 to i32
  br label %._crit_edge81.i146

bb.bm:                                            ; preds = %._crit_edge191
  %i.gg = udiv i64 %.1101, 100000000
  %i.gh = trunc i64 %.1101 to i32
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  %.neg.i143 = mul i32 %i.gi, -100000000
  %i.gj = add i32 %.neg.i143, %i.gh               ; 2 uses
  %i.gk = udiv i32 %i.gj, 10000
  %i.gl = insertelement <2 x i32> poison, i32 %i.gj, i64 0
  %i.gm = insertelement <2 x i32> %i.gl, i32 %i.gk, i64 1
  %i.gn = urem <2 x i32> %i.gm, splat (i32 10000)
  %i.go = trunc nuw nsw <2 x i32> %i.gn to <2 x i16>
  %.frozen245 = freeze <2 x i16> %i.go            ; 2 uses
  %i.gp = udiv <2 x i16> %.frozen245, splat (i16 100) ; 3 uses
  %i.gq = extractelement <2 x i16> %i.gp, i64 0
  %i.gr = shl nuw nsw i16 %i.gq, 1
  %i.gs = mul <2 x i16> %i.gp, splat (i16 100)
  %.decomposed246 = sub <2 x i16> %.frozen245, %i.gs ; 2 uses
  %i.gt = extractelement <2 x i16> %.decomposed246, i64 0
  %i.gu = shl nuw nsw i16 %i.gt, 1
  %i.gv = extractelement <2 x i16> %.decomposed246, i64 1
  %i.gw = shl nuw nsw i16 %i.gv, 1
  %i.gx = extractelement <2 x i16> %i.gp, i64 1
  %i.gy = shl nuw nsw i16 %i.gx, 1
  %i.gz = zext i32 %.299 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gz ; 4 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -2
  %i.hc = zext nneg i16 %i.gu to i64
  %i.hd = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2
  store i16 %i.he, ptr %i.hb, align 1
  %i.hf = getelementptr inbounds i8, ptr %i.ha, i64 -4
  %i.hg = zext nneg i16 %i.gr to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2
  store i16 %i.hi, ptr %i.hf, align 1
  %i.hj = getelementptr inbounds i8, ptr %i.ha, i64 -6
  %i.hk = zext nneg i16 %i.gw to i64
  %i.hl = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2
  store i16 %i.hm, ptr %i.hj, align 1
  %i.hn = getelementptr inbounds i8, ptr %i.ha, i64 -8
  %i.ho = zext nneg i16 %i.gy to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2
  store i16 %i.hq, ptr %i.hn, align 1
  br label %._crit_edge81.i146

._crit_edge81.i146:                               ; preds = %._crit_edge191.._crit_edge81.i146_crit_edge, %bb.bm
  %.pre-phi207 = phi i32 [ %.pre206, %._crit_edge191.._crit_edge81.i146_crit_edge ], [ %i.gi, %bb.bm ] ; 3 uses
  %.063.i147 = phi i32 [ 0, %._crit_edge191.._crit_edge81.i146_crit_edge ], [ 8, %bb.bm ] ; 2 uses
  %i.hr = icmp ugt i32 %.pre-phi207, 9999
  br i1 %i.hr, label %.lr.ph.i157, label %._crit_edge.i149

.lr.ph.i157:                                      ; preds = %._crit_edge81.i146
  %i.hs = zext i32 %.299 to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hs
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i157
  %.178.i158 = phi i32 [ %.063.i147, %.lr.ph.i157 ], [ %i.il, %bb.bn ] ; 2 uses
  %.06477.i159 = phi i32 [ %.pre-phi207, %.lr.ph.i157 ], [ %i.hu, %bb.bn ] ; 3 uses
  %i.hu = udiv i32 %.06477.i159, 10000            ; 3 uses
  %.neg66.i160 = mul i32 %i.hu, -10000
  %i.hv = add i32 %.neg66.i160, %.06477.i159      ; 2 uses
  %i.hw = urem i32 %i.hv, 100
  %i.hx = shl nuw nsw i32 %i.hw, 1
  %i.hy = udiv i32 %i.hv, 100
  %i.hz = shl nuw nsw i32 %i.hy, 1
  %i.ia = zext i32 %.178.i158 to i64
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds i8, ptr %i.ht, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -2
  %i.ie = zext nneg i32 %i.hx to i64
  %i.if = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2
  store i16 %i.ig, ptr %i.id, align 1
  %i.ih = getelementptr inbounds i8, ptr %i.ic, i64 -4
  %i.ii = zext nneg i32 %i.hz to i64
  %i.ij = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2
  store i16 %i.ik, ptr %i.ih, align 1
  %i.il = add i32 %.178.i158, 4                   ; 2 uses
  %i.im = icmp ugt i32 %.06477.i159, 99999999
  br i1 %i.im, label %bb.bn, label %._crit_edge.i149

._crit_edge.i149:                                 ; preds = %bb.bn, %._crit_edge81.i146
  %.064.lcssa.i150 = phi i32 [ %.pre-phi207, %._crit_edge81.i146 ], [ %i.hu, %bb.bn ] ; 3 uses
  %.1.lcssa.i151 = phi i32 [ %.063.i147, %._crit_edge81.i146 ], [ %i.il, %bb.bn ] ; 3 uses
  %i.in = icmp samesign ugt i32 %.064.lcssa.i150, 99
  br i1 %i.in, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %._crit_edge.i149
  %.lhs.trunc.i155 = trunc nuw i32 %.064.lcssa.i150 to i16 ; 2 uses
  %i.io = urem i16 %.lhs.trunc.i155, 100
  %i.ip = shl nuw nsw i16 %i.io, 1
  %i.iq = udiv i16 %.lhs.trunc.i155, 100
  %.zext68.i156 = zext nneg i16 %i.iq to i32
  %i.ir = zext i32 %.299 to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ir
  %i.it = zext i32 %.1.lcssa.i151 to i64
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.is, i64 %i.iu
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -2
  %i.ix = zext nneg i16 %i.ip to i64
  %i.iy = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2
  store i16 %i.iz, ptr %i.iw, align 1
  %i.ja = or disjoint i32 %.1.lcssa.i151, 2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge.i149
  %.165.i152 = phi i32 [ %.zext68.i156, %bb.bo ], [ %.064.lcssa.i150, %._crit_edge.i149 ] ; 3 uses
  %.2.i153 = phi i32 [ %i.ja, %bb.bo ], [ %.1.lcssa.i151, %._crit_edge.i149 ] ; 2 uses
  %i.jb = icmp samesign ugt i32 %.165.i152, 9
  br i1 %i.jb, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jc = shl nuw nsw i32 %.165.i152, 1
  %i.jd = zext i32 %.299 to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.jd
  %i.jf = zext i32 %.2.i153 to i64
  %i.jg = sub nsw i64 0, %i.jf
  %i.jh = getelementptr inbounds i8, ptr %i.je, i64 %i.jg
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -2
  %i.jj = zext nneg i32 %i.jc to i64
  %i.jk = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2
  store i16 %i.jl, ptr %i.ji, align 1
  br label %to_chars_uint64.exit161

bb.br:                                            ; preds = %bb.bp
  %i.jm = trunc nuw nsw i32 %.165.i152 to i8
  %i.jn = or disjoint i8 %i.jm, 48
  store i8 %i.jn, ptr %i.gf, align 1, !tbaa !8
  br label %to_chars_uint64.exit161

to_chars_uint64.exit161:                          ; preds = %bb.bq, %bb.br
  %.sink.i154 = phi i32 [ 1, %bb.br ], [ 2, %bb.bq ]
  %i.jo = add i32 %.2.i153, %.2.lcssa
  %i.jp = add i32 %i.jo, %.sink.i154
  br label %bb.bs

bb.bs:                                            ; preds = %to_chars_uint64.exit161, %._crit_edge
  %.3 = phi i32 [ %i.jp, %to_chars_uint64.exit161 ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483645, -2147483648) i32 @geos_d2sexp_buffered_n(double noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 4 uses
  %i.b = icmp slt i64 %i.a, 0                     ; 2 uses
  %i.c = and i64 %i.a, 4503599627370495           ; 4 uses
  %i.d = lshr i64 %i.a, 52
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 2047                       ; 5 uses
  %i.g = icmp eq i32 %i.f, 2047
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 0
  %i.i = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %.thread64, label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not71 = icmp eq i64 %i.c, 0
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  br label %copy_special_str.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 45, ptr %2, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi i32 [ 9, %bb.f ], [ 8, %bb.e ]
  %.lobit = lshr i64 %i.a, 63
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.lobit
  store i64 8751735898823355977, ptr %i.k, align 1
  br label %copy_special_str.exit

.thread64:                                        ; preds = %bb.b
  store i8 48, ptr %2, align 1
  br label %copy_special_str.exit

bb.h:                                             ; preds = %bb.b
  %i.l = or disjoint i64 %i.c, 4503599627370496   ; 2 uses
  %i.m = add nsw i32 %i.f, -1076
  %or.cond.i = icmp ult i32 %i.m, -53
  br i1 %or.cond.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = sub nuw nsw i32 1075, %i.f
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask.i, -1
  %i.q = and i64 %i.l, %i.p
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %d2d_small_int.exit, label %bb.k

d2d_small_int.exit:                               ; preds = %bb.i
  %i.r = lshr i64 %i.l, %i.o
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %d2d_small_int.exit
  %.sroa.9.0 = phi i32 [ 0, %d2d_small_int.exit ], [ %i.w, %bb.j ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.r, %d2d_small_int.exit ], [ %i.s, %bb.j ] ; 3 uses
  %i.s = udiv i64 %.sroa.0.0, 10                  ; 2 uses
  %i.t = trunc i64 %.sroa.0.0 to i32
  %i.u = trunc i64 %i.s to i32
  %.neg = mul i32 %i.u, -10
  %i.v = sub i32 0, %i.t
  %.not = icmp eq i32 %.neg, %i.v
  %i.w = add nuw nsw i32 %.sroa.9.0, 1
  br i1 %.not, label %bb.j, label %.thread67

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.x = tail call fastcc { i64, i32 } @d2d(i64 noundef %i.c, i32 noundef %i.f) ; 2 uses
  %i.y = extractvalue { i64, i32 } %i.x, 0
  %i.z = extractvalue { i64, i32 } %i.x, 1
  br label %.thread67

.thread67:                                        ; preds = %bb.j, %bb.k
  %.sroa.9.2 = phi i32 [ %i.z, %bb.k ], [ %.sroa.9.0, %bb.j ]
  %.sroa.0.2 = phi i64 [ %i.y, %bb.k ], [ %.sroa.0.0, %bb.j ] ; 17 uses
  %i.aa = icmp ugt i64 %.sroa.0.2, 9999999999999999
  br i1 %i.aa, label %decimalLength17.exit, label %bb.l

bb.l:                                             ; preds = %.thread67
  %i.ab = icmp samesign ugt i64 %.sroa.0.2, 999999999999999
  br i1 %i.ab, label %decimalLength17.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = icmp samesign ugt i64 %.sroa.0.2, 99999999999999
  br i1 %i.ac, label %decimalLength17.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = icmp samesign ugt i64 %.sroa.0.2, 9999999999999
  br i1 %i.ad, label %decimalLength17.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp samesign ugt i64 %.sroa.0.2, 999999999999
  br i1 %i.ae, label %decimalLength17.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = icmp samesign ugt i64 %.sroa.0.2, 99999999999
  br i1 %i.af, label %decimalLength17.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = icmp samesign ugt i64 %.sroa.0.2, 9999999999
  br i1 %i.ag, label %decimalLength17.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = icmp samesign ugt i64 %.sroa.0.2, 999999999
  br i1 %i.ah, label %decimalLength17.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = icmp samesign ugt i64 %.sroa.0.2, 99999999
  br i1 %i.ai, label %decimalLength17.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = icmp samesign ugt i64 %.sroa.0.2, 9999999
  br i1 %i.aj, label %decimalLength17.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = icmp samesign ugt i64 %.sroa.0.2, 999999
  br i1 %i.ak, label %decimalLength17.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = icmp samesign ugt i64 %.sroa.0.2, 99999
  br i1 %i.al, label %decimalLength17.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = icmp samesign ugt i64 %.sroa.0.2, 9999
  br i1 %i.am, label %decimalLength17.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = icmp samesign ugt i64 %.sroa.0.2, 999
  br i1 %i.an, label %decimalLength17.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ao = icmp samesign ugt i64 %.sroa.0.2, 99
  br i1 %i.ao, label %decimalLength17.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ap = icmp samesign ugt i64 %.sroa.0.2, 9
  %..i = select i1 %i.ap, i32 2, i32 1
  br label %decimalLength17.exit

decimalLength17.exit:                             ; preds = %.thread67, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i59 = phi i32 [ 3, %bb.y ], [ 17, %.thread67 ], [ 16, %bb.l ], [ 15, %bb.m ], [ 14, %bb.n ], [ 13, %bb.o ], [ 12, %bb.p ], [ 11, %bb.q ], [ 10, %bb.r ], [ 9, %bb.s ], [ 8, %bb.t ], [ 7, %bb.u ], [ 6, %bb.v ], [ 5, %bb.w ], [ 4, %bb.x ], [ %..i, %bb.z ] ; 2 uses
  %i.aq = add nsw i32 %.0.i59, %.sroa.9.2         ; 3 uses
  %i.ar = sub nsw i32 1, %.0.i59
  %i.as = tail call fastcc i32 @to_chars_fixed(i64 %.sroa.0.2, i32 %i.ar, i1 noundef zeroext %i.b, i32 noundef %1, ptr noundef %2) ; 6 uses
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au ; 2 uses
  store i8 101, ptr %i.av, align 1, !tbaa !8
  %i.aw = icmp slt i32 %i.aq, 1
  br i1 %i.aw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %decimalLength17.exit
  %i.ax = sext i32 %i.at to i64
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  store i8 45, ptr %i.ay, align 1, !tbaa !8
  %i.az = sub nsw i32 1, %i.aq
  br label %bb.ac

bb.ab:                                            ; preds = %decimalLength17.exit
  %i.ba = add nsw i32 %i.aq, -1
  %i.bb = sext i32 %i.at to i64
  %i.bc = getelementptr inbounds i8, ptr %2, i64 %i.bb
  store i8 43, ptr %i.bc, align 1, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.053 = phi i32 [ %i.az, %bb.aa ], [ %i.ba, %bb.ab ] ; 6 uses
  %.054 = add nsw i32 %i.as, 2                    ; 3 uses
  %i.bd = icmp samesign ugt i32 %.053, 99
  br i1 %i.bd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.be = urem i32 %.053, 10
  %i.bf = sext i32 %.054 to i64
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bf
  %i.bh = udiv i32 %.053, 10
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  store i16 %i.bl, ptr %i.bg, align 1
  %i.bm = trunc nuw nsw i32 %i.be to i8
  %i.bn = or disjoint i8 %i.bm, 48
end_hunk_0
