Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_asm?download=true
inline.NumInlined: 532
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@asm_fuseload:bb.a
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %.pre-phi.i
  br label %asm_fuseloadk64.exit

asm_fuseloadk64.exit:                             ; preds = %bb.p, %bb.o, %bb.s, %bb.u
  %.sink69.in.i = phi i64 [ %i.bb, %bb.o ], [ %i.df, %bb.u ], [ %i.bo, %bb.s ], [ %i.bi, %bb.p ]
  %.sink.i = phi i8 [ -128, %bb.o ], [ 37, %bb.u ], [ 37, %bb.s ], [ 14, %bb.p ]
  %.sink69.i = trunc i64 %.sink69.in.i to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.sink69.i, ptr %i.dg, align 8, !tbaa !86
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %.sink.i, ptr %i.dh, align 4, !tbaa !56
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.di, align 1, !tbaa !87
  br label %.critedge128

bb.v:                                             ; preds = %bb.m
  %i.dj = icmp eq i32 %1, 32768                   ; 2 uses
  %i.dk = icmp eq i8 %i.aq, 29
  %or.cond124 = or i1 %i.dj, %i.dk
  br i1 %or.cond124, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !83
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !71
  %i.dp = xor i32 %i.do, -1
  %i.dq = and i32 %i.dm, 49135
  %i.dr = and i32 %i.dq, %i.dp
  %i.ds = tail call range(i32 0, 15) i32 @llvm.ctpop.i32(i32 %i.dr)
  %.not121 = icmp samesign ugt i32 %i.ds, 1
  br i1 %.not121, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 -3616, ptr %i.dt, align 8, !tbaa !86
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 14, ptr %i.du, align 4, !tbaa !56
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.dv, align 1, !tbaa !87
  br label %.critedge128

bb.z:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 4 uses
  %i.dy = add i64 %i.dx, 2147483648               ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 4294967296
  br i1 %i.dz, label %asm_fuseloadk64.exit156, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !44
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 3256
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.dx, %i.ed                    ; 2 uses
  %i.ef = add i64 %i.ee, 2147483648
  %i.eg = icmp ult i64 %i.ef, 4294967296
  br i1 %i.eg, label %asm_fuseloadk64.exit156, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !52
  %i.ej = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.ek = sub i64 %i.dx, %i.ej                    ; 2 uses
  %i.el = add i64 %i.ek, 2147483648
  %i.em = icmp ult i64 %i.el, 4294967296
  br i1 %i.em, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = add i64 %i.eo, 2147483648               ; 2 uses
  %i.eq = sub i64 %i.ep, %i.ej
  %i.er = icmp ult i64 %i.eq, 4294967296
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !51
  %i.eu = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ev = sub i64 %i.dy, %i.eu
  %i.ew = sub i64 %i.ep, %i.eu
  %i.ex = or i64 %i.ev, %i.ew
  %or.cond.i155 = icmp ult i64 %i.ex, 4294967296
  br i1 %or.cond.i155, label %asm_fuseloadk64.exit156, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ey = load i32, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %.not.i140 = icmp eq i32 %i.ey, 0
  br i1 %.not.i140, label %.preheader.i145, label %bb.af

.preheader.i145:                                  ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !53 ; 3 uses
  %i.fb = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fc = and i64 %i.fb, 7
  %.not5357.i146 = icmp eq i64 %i.fc, 0
  br i1 %.not5357.i146, label %._crit_edge.i149, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.preheader.i145, %.lr.ph.i147
  %i.fd = phi ptr [ %i.ff, %.lr.ph.i147 ], [ %i.fa, %.preheader.i145 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store ptr %i.fe, ptr %i.ez, align 8, !tbaa !53
  store i8 -52, ptr %i.fd, align 1, !tbaa !25
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !53 ; 3 uses
  %i.fg = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fh = and i64 %i.fg, 7
  %.not53.i148 = icmp eq i64 %i.fh, 0
  br i1 %.not53.i148, label %._crit_edge.i149, label %.lr.ph.i147, !llvm.loop !183

._crit_edge.i149:                                 ; preds = %.lr.ph.i147, %.preheader.i145
  %.lcssa55.i150 = phi ptr [ %i.fa, %.preheader.i145 ], [ %i.ff, %.lr.ph.i147 ]
  %.lcssa.i151 = phi i64 [ %i.fb, %.preheader.i145 ], [ %i.fg, %.lr.ph.i147 ]
  %i.fi = load i64, ptr %i.dw, align 8, !tbaa !81
  store i64 %i.fi, ptr %.lcssa55.i150, align 8, !tbaa !81
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !51
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %.lcssa.i151
  %i.fn = trunc i64 %i.fm to i32
  store i32 %i.fn, ptr %i.d, align 8, !tbaa !25
  %i.fo = load ptr, ptr %i.ez, align 8, !tbaa !53 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  store ptr %i.fp, ptr %i.ez, align 8, !tbaa !53
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 72
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !54
  %i.fs = load ptr, ptr %i.ea, align 8, !tbaa !44
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 3064
  store ptr %i.fp, ptr %i.ft, align 8, !tbaa !55
  %.pre.i152 = load i32, ptr %i.d, align 8, !tbaa !25
  %.pre62.i153 = load ptr, ptr %i.eh, align 8, !tbaa !52
  %.pre63.i154 = ptrtoint ptr %.pre62.i153 to i64
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i149, %bb.ae
  %.pre-phi.i141 = phi i64 [ %i.ej, %bb.ae ], [ %.pre63.i154, %._crit_edge.i149 ]
  %i.fu = phi i32 [ %i.ey, %bb.ae ], [ %.pre.i152, %._crit_edge.i149 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !51
  %i.fx = sext i32 %i.fu to i64
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 %i.fy
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = sub i64 %i.ga, %.pre-phi.i141
  br label %asm_fuseloadk64.exit156

asm_fuseloadk64.exit156:                          ; preds = %bb.aa, %bb.z, %bb.ad, %bb.af
  %.sink69.in.i142 = phi i64 [ %i.dx, %bb.z ], [ %i.gb, %bb.af ], [ %i.ek, %bb.ad ], [ %i.ee, %bb.aa ]
  %.sink.i143 = phi i8 [ -128, %bb.z ], [ 37, %bb.af ], [ 37, %bb.ad ], [ 14, %bb.aa ]
  %.sink69.i144 = trunc i64 %.sink69.in.i142 to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.sink69.i144, ptr %i.gc, align 8, !tbaa !86
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %.sink.i143, ptr %i.gd, align 4, !tbaa !56
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.ge, align 1, !tbaa !87
  br label %.critedge128

bb.ag:                                            ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !63
  %i.gh = icmp ugt i32 %1, %i.gg
  br i1 %i.gh, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.gi = and i32 %2, 49135
  %.not114 = icmp eq i32 %i.gi, 0
  %i.gj = select i1 %.not114, i32 49135, i32 %2   ; 5 uses
  switch i8 %i.aq, label %.critedge.thread [
    i8 71, label %bb.ai
    i8 69, label %bb.ao
    i8 66, label %bb.at
    i8 67, label %bb.at
    i8 68, label %bb.at
    i8 70, label %bb.aw
    i8 72, label %bb.bb
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !25
  %i.gm = and i16 %i.gl, 9
  %.not119 = icmp eq i16 %i.gm, 0
  br i1 %.not119, label %bb.aj, label %.critedge.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gn = getelementptr i8, ptr %0, i64 200
  %.val137 = load i32, ptr %i.gn, align 8, !tbaa !58 ; 2 uses
  %i.go = add nuw nsw i32 %1, 31
  %i.gp = icmp ugt i32 %.val137, %i.go
  br i1 %i.gp, label %.critedge.thread, label %.preheader.i157

.preheader.i157:                                  ; preds = %bb.aj
  %i.gq = add nsw i32 %.val137, -1                ; 2 uses
  %i.gr = icmp ugt i32 %i.gq, %1
  br i1 %i.gr, label %.lr.ph.i158, label %noconflict.exit

.lr.ph.i158:                                      ; preds = %.preheader.i157
  %3 = zext i32 %i.gq to i64
  br label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %bb.am, %.lr.ph.i158
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %bb.am ], [ %3, %.lr.ph.i158 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv29.i ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 5
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !25
  %i.gv = icmp eq i8 %i.gu, 11
  br i1 %i.gv, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.split.split.us.i
  %i.gw = load i16, ptr %i.gs, align 8, !tbaa !25
  %i.gx = zext i16 %i.gw to i32
  %i.gy = icmp eq i32 %1, %i.gx
  br i1 %i.gy, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !25
  %i.hb = zext i16 %i.ha to i32
  %i.hc = icmp eq i32 %1, %i.hb
  br i1 %i.hc, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next30.i = add nsw i64 %indvars.iv29.i, -1 ; 2 uses
  %indvars31.i = trunc i64 %indvars.iv.next30.i to i32
  %4 = icmp ult i32 %1, %indvars31.i
  br i1 %4, label %.lr.ph.split.split.us.i, label %noconflict.exit, !llvm.loop !2

noconflict.exit:                                  ; preds = %bb.am, %.preheader.i157
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !25
  %i.hf = and i8 %i.he, 31
  %i.hg = add nsw i8 %i.hf, -3
  %i.hh = icmp ult i8 %i.hg, 10
  br i1 %i.hh, label %.critedge, label %bb.an

bb.an:                                            ; preds = %noconflict.exit
  %i.hi = tail call fastcc i32 @ra_alloc1(ptr noundef %0, i32 noundef 32768, i32 noundef %i.gj)
  %i.hj = trunc nuw i32 %i.hi to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.hj, ptr %i.hl, align 4, !tbaa !56
  %i.hm = load i16, ptr %i.d, align 8, !tbaa !25
  %i.hn = zext i16 %i.hm to i32
  %i.ho = shl nuw nsw i32 %i.hn, 3
  %i.hp = add nsw i32 %i.ho, -16
  store i32 %i.hp, ptr %i.hk, align 8, !tbaa !86
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.hq, align 1, !tbaa !87
  br label %.critedge128

bb.ao:                                            ; preds = %bb.ah
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.hs = load i8, ptr %i.hr, align 4, !tbaa !25
  %i.ht = and i8 %i.hs, 31                        ; 2 uses
  %.off = add nsw i8 %i.ht, -19
  %switch = icmp ult i8 %.off, 2
  %i.hu = add nsw i8 %i.ht, -3
  %i.hv = icmp ult i8 %i.hu, 10
  %or.cond130 = select i1 %switch, i1 true, i1 %i.hv
  br i1 %or.cond130, label %bb.ap, label %.critedge.thread201

bb.ap:                                            ; preds = %bb.ao
  %i.hw = getelementptr i8, ptr %0, i64 200
  %.val135 = load i32, ptr %i.hw, align 8, !tbaa !58 ; 2 uses
  %i.hx = add nuw nsw i32 %1, 31
  %i.hy = icmp ugt i32 %.val135, %i.hx
  br i1 %i.hy, label %.critedge.thread201, label %.preheader.i159

.preheader.i159:                                  ; preds = %bb.ap
  %i.hz = add nsw i32 %.val135, -1                ; 2 uses
  %i.ia = icmp ugt i32 %i.hz, %1
  br i1 %i.ia, label %.lr.ph.i161, label %noconflict.exit163

.lr.ph.i161:                                      ; preds = %.preheader.i159
  %5 = zext i32 %i.hz to i64
  br label %.lr.ph.split.split.us.i162

.lr.ph.split.split.us.i162:                       ; preds = %bb.as, %.lr.ph.i161
  %indvars.iv29.i163 = phi i64 [ %indvars.iv.next30.i164, %bb.as ], [ %5, %.lr.ph.i161 ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv29.i163 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 5
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !25
  %i.ie = icmp eq i8 %i.id, 77
  br i1 %i.ie, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.split.us.i162
  %i.if = load i16, ptr %i.ib, align 8, !tbaa !25
  %i.ig = zext i16 %i.if to i32
  %i.ih = icmp eq i32 %1, %i.ig
  br i1 %i.ih, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !25
  %i.ik = zext i16 %i.ij to i32
  %i.il = icmp eq i32 %1, %i.ik
  br i1 %i.il, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.next30.i164 = add nsw i64 %indvars.iv29.i163, -1 ; 2 uses
  %indvars31.i165 = trunc i64 %indvars.iv.next30.i164 to i32
  %6 = icmp ult i32 %1, %indvars31.i165
  br i1 %6, label %.lr.ph.split.split.us.i162, label %noconflict.exit163, !llvm.loop !2

noconflict.exit163:                               ; preds = %bb.as, %.preheader.i159
  tail call fastcc void @asm_fusefref(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef %i.gj)
  br label %.critedge128

bb.at:                                            ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.im = zext nneg i8 %i.aq to i32
  %i.in = add nuw nsw i32 %i.im, 8
  %.not116 = icmp eq i8 %i.aq, 68
  %i.io = select i1 %.not116, i32 2, i32 3
  %i.ip = getelementptr i8, ptr %0, i64 200
  %.val133 = load i32, ptr %i.ip, align 8, !tbaa !58
  %i.iq = tail call fastcc i32 @noconflict(ptr nonnull %i.b, i32 %.val133, i32 noundef %1, i32 noundef %i.in, i32 noundef %i.io)
  %.not117 = icmp eq i32 %i.iq, 0
  br i1 %.not117, label %.critedge.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.is = load i8, ptr %i.ir, align 4, !tbaa !25
  %i.it = and i8 %i.is, 31
  %i.iu = add nsw i8 %i.it, -3
  %i.iv = icmp ult i8 %i.iu, 10
  br i1 %i.iv, label %.critedge.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iw = load i16, ptr %i.d, align 8, !tbaa !25
  %i.ix = zext i16 %i.iw to i32
  tail call fastcc void @asm_fuseahuref(ptr noundef %0, i32 noundef %i.ix, i32 noundef %i.gj)
  br label %.critedge128

bb.aw:                                            ; preds = %bb.ah
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.iz = load i8, ptr %i.iy, align 4, !tbaa !25
  %i.ja = and i8 %i.iz, 31
  %i.jb = add nsw i8 %i.ja, -15
  %i.jc = icmp ult i8 %i.jb, 4
  br i1 %i.jc, label %.critedge.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jd = getelementptr i8, ptr %0, i64 200
  %.val131 = load i32, ptr %i.jd, align 8, !tbaa !58 ; 2 uses
  %i.je = add nuw nsw i32 %1, 31
  %i.jf = icmp ugt i32 %.val131, %i.je
  br i1 %i.jf, label %.critedge.thread, label %.preheader.i164

.preheader.i164:                                  ; preds = %bb.ax
  %i.jg = add nsw i32 %.val131, -1                ; 2 uses
  %i.jh = icmp ugt i32 %i.jg, %1
  br i1 %i.jh, label %.lr.ph.i169, label %noconflict.exit168

.lr.ph.i169:                                      ; preds = %.preheader.i164
  %7 = zext i32 %i.jg to i64
  br label %.lr.ph.split.split.us.i167

.lr.ph.split.split.us.i167:                       ; preds = %bb.ba, %.lr.ph.i169
  %indvars.iv29.i171 = phi i64 [ %indvars.iv.next30.i172, %bb.ba ], [ %7, %.lr.ph.i169 ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv29.i171 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 5
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !25
  %i.jl = icmp eq i8 %i.jk, 78
  br i1 %i.jl, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.split.split.us.i167
  %i.jm = load i16, ptr %i.ji, align 8, !tbaa !25
  %i.jn = zext i16 %i.jm to i32
  %i.jo = icmp eq i32 %1, %i.jn
  br i1 %i.jo, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !25
  %i.jr = zext i16 %i.jq to i32
  %i.js = icmp eq i32 %1, %i.jr
  br i1 %i.js, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %indvars.iv.next30.i172 = add nsw i64 %indvars.iv29.i171, -1 ; 2 uses
  %indvars31.i173 = trunc i64 %indvars.iv.next30.i172 to i32
  %8 = icmp ult i32 %1, %indvars31.i173
  br i1 %8, label %.lr.ph.split.split.us.i167, label %noconflict.exit168, !llvm.loop !2

noconflict.exit168:                               ; preds = %bb.ba, %.preheader.i164
  %i.jt = load i16, ptr %i.d, align 8, !tbaa !25
  %i.ju = zext i16 %i.jt to i32
  tail call fastcc void @asm_fusexref(ptr noundef %0, i32 noundef %i.ju, i32 noundef %i.gj)
  br label %.critedge128

bb.bb:                                            ; preds = %bb.ah
  %i.jv = load i16, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.jw = zext i16 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 5
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !25
  %i.ka = icmp eq i8 %i.jz, 56
  br i1 %i.ka, label %bb.bc, label %.critedge.thread

bb.bc:                                            ; preds = %bb.bb
  %i.kb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.kc = load i8, ptr %i.kb, align 4, !tbaa !25
  %i.kd = and i8 %i.kc, 31
  %i.ke = add nsw i8 %i.kd, -3
  %i.kf = icmp ult i8 %i.ke, 10
  br i1 %i.kf, label %.critedge.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kg = zext i16 %i.jv to i32
  tail call fastcc void @asm_fuseahuref(ptr noundef %0, i32 noundef %i.kg, i32 noundef %i.gj)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !25
  %i.kj = zext i16 %i.ki to i32
  %i.kk = shl nuw nsw i32 %i.kj, 3
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !86
  %i.kn = add nsw i32 %i.kk, %i.km
  store i32 %i.kn, ptr %i.kl, align 8, !tbaa !86
  br label %.critedge128

.critedge:                                        ; preds = %bb.az, %.lr.ph.split.split.us.i167, %bb.ay, %bb.ar, %.lr.ph.split.split.us.i162, %bb.aq, %bb.al, %.lr.ph.split.split.us.i, %bb.ak, %bb.w, %noconflict.exit, %bb.ag
  %i.ko = icmp eq i8 %i.aq, 69
  br i1 %i.ko, label %.critedge.thread201, label %.critedge.thread

.critedge.thread201:                              ; preds = %bb.ao, %bb.ap, %.critedge
  %i.kp = load i16, ptr %i.d, align 8, !tbaa !25
  %i.kq = icmp eq i16 %i.kp, 32767
  br i1 %i.kq, label %bb.be, label %.critedge.thread

bb.be:                                            ; preds = %.critedge.thread201
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.ks, align 1, !tbaa !87
  %i.kt = load i16, ptr %i.d, align 8, !tbaa !25
  %i.ku = icmp eq i16 %i.kt, 32767
  %i.kv = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !25 ; 2 uses
  br i1 %i.ku, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.kx, 2
  %i.kz = add nsw i32 %i.ky, -4096
  store i32 %i.kz, ptr %i.kr, align 8, !tbaa !86
  br label %asm_fusefref.exit

bb.bg:                                            ; preds = %bb.be
  %i.la = zext i16 %i.kw to i64
  %i.lb = getelementptr inbounds nuw i8, ptr @field_ofs, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !25  ; 2 uses
  %i.ld = zext i8 %i.lc to i32                    ; 3 uses
  store i32 %i.ld, ptr %i.kr, align 8, !tbaa !86
  %i.le = load i16, ptr %i.d, align 8, !tbaa !25  ; 4 uses
  %i.lf = icmp sgt i16 %i.le, -1
  %i.lg = zext i16 %i.le to i64                   ; 2 uses
  br i1 %i.lf, label %bb.bh, label %.critedge.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lg ; 2 uses
  %i.li = icmp eq i16 %i.le, 32767
  br i1 %i.li, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lj = or disjoint i32 %i.ld, -4096
  store i32 %i.lj, ptr %i.kr, align 8, !tbaa !86
  br label %asm_fusefref.exit

bb.bj:                                            ; preds = %bb.bh
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 5
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !25
  %.off.i = add i8 %i.ll, -25
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.bk, label %.critedge.thread.i

bb.bk:                                            ; preds = %bb.bj
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !25
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !44
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 3256
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = sub i64 %i.ln, %i.lr                    ; 2 uses
  %i.lt = zext i8 %i.lc to i64
  %i.lu = or disjoint i64 %i.lt, -2147483648
  %i.lv = add i64 %i.lu, %i.ls
  %i.lw = icmp ult i64 %i.lv, -4294967296
  br i1 %i.lw, label %.critedge.thread.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lx = trunc i64 %i.ls to i32
  %i.ly = add nsw i32 %i.lx, %i.ld
  store i32 %i.ly, ptr %i.kr, align 8, !tbaa !86
  br label %asm_fusefref.exit

.critedge.thread.i:                               ; preds = %bb.bk, %bb.bj, %bb.bg
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lg
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 6
  %i.mb = load i8, ptr %i.ma, align 2, !tbaa !25  ; 2 uses
  %i.mc = zext nneg i8 %i.mb to i32
  %.not.i.i = icmp sgt i8 %i.mb, -1
  br i1 %.not.i.i, label %ra_alloc1.exit.i, label %bb.bm

bb.bm:                                            ; preds = %.critedge.thread.i
  %i.md = zext i16 %i.le to i32
  %i.me = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %i.md, i32 noundef 0)
  br label %ra_alloc1.exit.i

ra_alloc1.exit.i:                                 ; preds = %bb.bm, %.critedge.thread.i
  %.0.i.i = phi i32 [ %i.me, %bb.bm ], [ %i.mc, %.critedge.thread.i ] ; 2 uses
  %i.mf = shl nuw i32 1, %.0.i.i
  %i.mg = xor i32 %i.mf, -1
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !82
  %i.mj = and i32 %i.mi, %i.mg
  store i32 %i.mj, ptr %i.mh, align 8, !tbaa !82
  %i.mk = trunc nuw i32 %.0.i.i to i8
  br label %asm_fusefref.exit

asm_fusefref.exit:                                ; preds = %bb.bf, %bb.bi, %bb.bl, %ra_alloc1.exit.i
  %.sink.i169 = phi i8 [ 14, %bb.bi ], [ 14, %bb.bl ], [ %i.mk, %ra_alloc1.exit.i ], [ 14, %bb.bf ]
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %.sink.i169, ptr %i.ml, align 4, !tbaa !56
  br label %.critedge128

.critedge.thread:                                 ; preds = %bb.ah, %bb.ai, %bb.au, %bb.at, %bb.bb, %bb.bc, %bb.aw, %bb.n, %bb.aj, %bb.ax, %.critedge.thread201, %.critedge
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !83
  %i.mo = and i32 %i.mn, %2
  %i.mp = icmp ne i32 %i.mo, 0
  %i.mq = icmp samesign ult i32 %1, 32769
  %or.cond = select i1 %i.mp, i1 true, i1 %i.mq
  br i1 %or.cond, label %.split, label %bb.bn

.split:                                           ; preds = %.critedge.thread
  %i.mr = tail call fastcc i32 @ra_allocref(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %.critedge128

bb.bn:                                            ; preds = %.critedge.thread
  %i.ms = icmp eq i32 %2, 0
  br i1 %i.ms, label %bb.d, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mt = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !25
  %.not123 = icmp eq i8 %i.mu, 0
  br i1 %.not123, label %bb.bp, label %bb.d

bb.bp:                                            ; preds = %bb.bo
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !62
  %i.mx = icmp ult i32 %1, %i.mw
  br i1 %i.mx, label %bb.d, label %.split107

.split107:                                        ; preds = %bb.bp
  %i.my = tail call fastcc i32 @ra_allocref(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %.critedge128

.critedge128:                                     ; preds = %bb.y, %asm_fuseloadk64.exit156, %asm_fuseloadk64.exit, %bb.bd, %bb.an, %noconflict.exit163, %bb.av, %noconflict.exit168, %.split, %.split107, %asm_fusefref.exit, %ra_spill.exit, %bb.c
  %.3 = phi i32 [ 32, %asm_fusefref.exit ], [ %i.n, %bb.c ], [ 32, %ra_spill.exit ], [ 32, %asm_fuseloadk64.exit ], [ 32, %bb.bd ], [ %i.my, %.split107 ], [ %i.mr, %.split ], [ 32, %noconflict.exit168 ], [ 32, %bb.av ], [ 32, %noconflict.exit163 ], [ 32, %bb.an ], [ 32, %asm_fuseloadk64.exit156 ], [ 32, %bb.y ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @emit_mrm(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 7 uses
  %i.c = icmp eq i32 %3, 32
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.f = load i8, ptr %i.e, align 4, !tbaa !56    ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  switch i8 %i.f, label %bb.f [
    i8 -128, label %bb.c
    i8 37, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !86
end_hunk_0
begin_hunk_1_@emit_mrm:bb.a
  %i.cb = getelementptr i8, ptr %i.bh, i64 -2     ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !25
  br label %emit_op.exit61

bb.s:                                             ; preds = %bb.j
  %i.cc = icmp eq i32 %i.q, 4
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds i8, ptr %.046, i64 -1 ; 2 uses
  store i8 36, ptr %i.cd, align 1, !tbaa !25
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.s, %bb.t, %bb.e, %bb.a
  %.150 = phi i32 [ 4, %bb.d ], [ 37, %bb.e ], [ %i.g, %bb.t ], [ %i.g, %bb.s ], [ %3, %bb.a ] ; 3 uses
  %.248 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.cd, %bb.t ], [ %.046, %bb.s ], [ %i.b, %bb.a ] ; 4 uses
  %.2 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %.0, %bb.t ], [ %.0, %bb.s ], [ 192, %bb.a ]
  %i.ce = shl i32 %2, 3
  %i.cf = and i32 %i.ce, 56
  %i.cg = and i32 %.150, 7
  %i.ch = or disjoint i32 %i.cg, %i.cf
  %i.ci = add nuw nsw i32 %i.ch, %.2
  %i.cj = trunc nuw i32 %i.ci to i8
  %i.ck = getelementptr inbounds i8, ptr %.248, i64 -1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !25
  %i.cl = shl i32 %1, 24                          ; 3 uses
  %i.cm = icmp eq i32 %i.cl, -1006632960
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cn = lshr i32 %2, 1
  %i.co = and i32 %i.cn, 4
  %i.cp = lshr i32 %.150, 3
  %i.cq = and i32 %i.cp, 1
  %i.cr = or disjoint i32 %i.cq, %i.co
  %i.cs = shl nuw nsw i32 %i.cr, 13
  %i.ct = xor i32 %i.cs, %1
  %i.cu = getelementptr inbounds i8, ptr %.248, i64 -5 ; 2 uses
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !26
  br label %emit_op.exit61

bb.w:                                             ; preds = %bb.u
  %i.cv = ashr exact i32 %i.cl, 24
  %i.cw = getelementptr inbounds i8, ptr %.248, i64 -5
  store i32 %1, ptr %i.cw, align 4, !tbaa !26
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds i8, ptr %.248, i64 %i.cx ; 4 uses
  %i.cz = lshr i32 %2, 1
  %i.da = and i32 %i.cz, 260
  %i.db = lshr i32 %.150, 3
  %i.dc = and i32 %i.db, 1
  %i.dd = or disjoint i32 %i.dc, %i.da            ; 2 uses
  %.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i, label %emit_op.exit61, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = lshr i32 %2, 16
  %i.df = or i32 %i.de, %i.dd
  %i.dg = or i32 %i.df, 64                        ; 3 uses
  %i.dh = icmp eq i32 %i.cl, -67108864
  br i1 %i.dh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.di = trunc i32 %i.dg to i8
  store i8 %i.di, ptr %i.cy, align 1, !tbaa !25
  %i.dj = lshr i32 %1, 8
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.dk = and i32 %1, 16777215
  %i.dl = icmp eq i32 %i.dk, 6684925
  br i1 %i.dl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dm = trunc i32 %i.dg to i8
  store i8 %i.dm, ptr %i.cy, align 1, !tbaa !25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.0.i = phi i32 [ %i.dj, %bb.y ], [ 102, %bb.aa ], [ %i.dg, %bb.z ]
  %i.dn = trunc i32 %.0.i to i8
  %i.do = getelementptr inbounds i8, ptr %i.cy, i64 -1 ; 2 uses
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !25
  br label %emit_op.exit61

emit_op.exit61:                                   ; preds = %bb.ab, %bb.w, %bb.v, %bb.r, %bb.m, %bb.l
  %storemerge = phi ptr [ %i.bi, %bb.m ], [ %i.bd, %bb.l ], [ %i.cb, %bb.r ], [ %i.cu, %bb.v ], [ %i.do, %bb.ab ], [ %i.cy, %bb.w ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @asm_isk32(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 65536) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = icmp samesign ult i32 %1, 32768
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25
  %i.h = icmp eq i8 %i.g, 27
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !25
  %i.k = and i8 %i.j, 31
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw i32 1, %i.l
  %i.n = and i32 %i.m, 6315993
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = load i32, ptr %i.e, align 8, !tbaa !25
  br label %.thread.sink.split

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = add i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.t = trunc nsw i64 %i.q to i32
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.d, %bb.f
  %.sink = phi i32 [ %i.t, %bb.f ], [ %i.o, %bb.d ]
  store i32 %.sink, ptr %2, align 4, !tbaa !26
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a, %bb.e
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 256) i32 @asm_fuseloadm(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef range(i32 0, 49136) %2, i32 noundef range(i32 0, 524801) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !25
  %i.g = and i8 %i.f, 31
  %i.h = zext nneg i8 %i.g to i32
  %i.i = shl nuw i32 1, %i.h
  %i.j = and i32 %i.i, 6315993
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.l = load i8, ptr %i.k, align 2, !tbaa !25    ; 2 uses
  %i.m = zext nneg i8 %i.l to i32
  %.not.i = icmp sgt i8 %i.l, -1
  br i1 %.not.i, label %ra_alloc1.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2)
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.o = shl nuw i32 1, %.0.i
  %i.p = xor i32 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !82
  %i.s = and i32 %i.r, %i.p
  store i32 %i.s, ptr %i.q, align 8, !tbaa !82
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call fastcc i32 @asm_fuseload(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ra_alloc1.exit
  %.0 = phi i32 [ %i.t, %bb.e ], [ %.0.i, %ra_alloc1.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @noconflict(ptr nofree readonly captures(none) %.144.val, i32 %.200.val, i32 noundef range(i32 0, 65536) %0, i32 noundef range(i32 8, 264) %1, i32 noundef range(i32 0, 4) %2) unnamed_addr #3 {
bb.a:
  %i.a = add nuw nsw i32 %0, 31
  %i.b = icmp ugt i32 %.200.val, %i.a
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = add nsw i32 %.200.val, -1                ; 2 uses
  %i.d = icmp ugt i32 %i.c, %0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = and i32 %2, 1
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %.not26 = icmp samesign ult i32 %2, 2
  %3 = zext i32 %i.c to i64                       ; 4 uses
  br i1 %.not26, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.b ], [ %3, %.lr.ph.split.us ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.144.val, i64 %indvars.iv37
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  %i.i = zext i8 %i.h to i32
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, -1 ; 2 uses
  %indvars39 = trunc i64 %indvars.iv.next38 to i32
  %4 = icmp ult i32 %0, %indvars39
  br i1 %4, label %.lr.ph.split.us.split.us, label %.loopexit, !llvm.loop !2

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.d
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %bb.d ], [ %3, %.lr.ph.split.us ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.144.val, i64 %indvars.iv33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.m = load i8, ptr %i.l, align 1, !tbaa !25    ; 2 uses
  %i.n = zext i8 %i.m to i32
  %i.o = icmp eq i32 %1, %i.n
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split
  switch i8 %i.m, label %bb.d [
    i8 59, label %.loopexit
    i8 98, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -1 ; 2 uses
  %indvars35 = trunc i64 %indvars.iv.next34 to i32
  %5 = icmp ult i32 %0, %indvars35
  br i1 %5, label %.lr.ph.split.us.split, label %.loopexit, !llvm.loop !2

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.g
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %bb.g ], [ %3, %.lr.ph.split ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.144.val, i64 %indvars.iv29 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !25
  %i.s = zext i8 %i.r to i32
  %i.t = icmp eq i32 %1, %i.s
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.us
  %i.u = load i16, ptr %i.p, align 8, !tbaa !25
  %i.v = zext i16 %i.u to i32
  %i.w = icmp eq i32 %0, %i.v
  br i1 %i.w, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !25
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp eq i32 %0, %i.z
  br i1 %i.aa, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, -1 ; 2 uses
  %indvars31 = trunc i64 %indvars.iv.next30 to i32
  %6 = icmp ult i32 %0, %indvars31
  br i1 %6, label %.lr.ph.split.split.us, label %.loopexit, !llvm.loop !2

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ %3, %.lr.ph.split ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.144.val, i64 %indvars.iv ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25  ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = icmp eq i32 %1, %i.ae
  br i1 %i.af, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split
  switch i8 %i.ad, label %bb.i [
    i8 59, label %.loopexit
    i8 98, label %.loopexit
  ]

bb.i:                                             ; preds = %bb.h
  %i.ag = load i16, ptr %i.ab, align 8, !tbaa !25
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp eq i32 %0, %i.ah
  br i1 %i.ai, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !25
  %i.al = zext i16 %i.ak to i32
  %i.am = icmp eq i32 %0, %i.al
  br i1 %i.am, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %7 = icmp ult i32 %0, %indvars
  br i1 %7, label %.lr.ph.split.split, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.split.split, %bb.h, %bb.h, %bb.j, %bb.i, %bb.k, %.lr.ph.split.split.us, %bb.f, %bb.e, %bb.g, %.lr.ph.split.us.split, %bb.c, %bb.c, %bb.d, %.lr.ph.split.us.split.us, %bb.b, %.preheader, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %bb.e ], [ 0, %.lr.ph.split.us.split.us ], [ 0, %.lr.ph.split.us.split ], [ 1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.g ], [ 0, %.lr.ph.split.split.us ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %.lr.ph.split.split ], [ 0, %bb.i ], [ 1, %bb.k ], [ 0, %bb.j ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_fusefref(ptr nofree noundef nonnull captures(none) initializes((160, 164), (165, 166)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.b, align 1, !tbaa !87
  %i.c = load i16, ptr %1, align 8, !tbaa !25
  %i.d = icmp eq i16 %i.c, 32767
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !25   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 2
  %i.i = add nsw i32 %i.h, -4096
  store i32 %i.i, ptr %i.a, align 8, !tbaa !86
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = zext i16 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr @field_ofs, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !25    ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !86
  %i.n = load i16, ptr %1, align 8, !tbaa !25     ; 4 uses
  %i.o = icmp sgt i16 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.r = zext i16 %i.n to i64                     ; 2 uses
  br i1 %i.o, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = icmp eq i16 %i.n, 32767
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = or disjoint i32 %i.m, -4096
  store i32 %i.u, ptr %i.a, align 8, !tbaa !86
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !25
  %.off = add i8 %i.w, -25
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3256
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.y, %i.ac                     ; 2 uses
  %i.ae = zext i8 %i.l to i64
  %i.af = or disjoint i64 %i.ae, -2147483648
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.ag, -4294967296
  br i1 %i.ah, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = trunc i64 %i.ad to i32
  %i.aj = add nsw i32 %i.ai, %i.m
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !86
  br label %.critedge

.critedge.thread:                                 ; preds = %bb.c, %bb.f, %bb.g
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %i.am = load i8, ptr %i.al, align 2, !tbaa !25  ; 2 uses
  %i.an = zext nneg i8 %i.am to i32
  %.not.i = icmp sgt i8 %i.am, -1
  br i1 %.not.i, label %ra_alloc1.exit, label %bb.i

bb.i:                                             ; preds = %.critedge.thread
  %i.ao = zext i16 %i.n to i32
  %i.ap = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %i.ao, i32 noundef %2)
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %.critedge.thread, %bb.i
  %.0.i = phi i32 [ %i.ap, %bb.i ], [ %i.an, %.critedge.thread ] ; 2 uses
  %i.aq = shl nuw i32 1, %.0.i
  %i.ar = xor i32 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !82
  %i.au = and i32 %i.at, %i.ar
  store i32 %i.au, ptr %i.as, align 8, !tbaa !82
  %i.av = trunc nuw i32 %.0.i to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %ra_alloc1.exit, %bb.b
  %.sink = phi i8 [ 14, %bb.e ], [ 14, %bb.h ], [ %i.av, %ra_alloc1.exit ], [ 14, %bb.b ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %.sink, ptr %i.aw, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_fuseahuref(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i8, ptr %i.e, align 2, !tbaa !25    ; 2 uses
  %.not = icmp sgt i8 %i.f, -1
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  switch i8 %i.h, label %bb.l [
    i8 56, label %bb.c
    i8 57, label %bb.e
    i8 61, label %bb.h
    i8 63, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load i32, ptr %i.i, align 8, !tbaa !63
  %i.k = icmp ugt i32 %1, %i.j
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @asm_fusearef(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef %2)
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load i32, ptr %i.l, align 8, !tbaa !63
  %i.n = icmp ugt i32 %1, %i.m
  br i1 %i.n, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = load i16, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !25    ; 2 uses
  %i.t = zext nneg i8 %i.s to i32
  %.not.i = icmp sgt i8 %i.s, -1
  br i1 %.not.i, label %ra_alloc1.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext i16 %i.o to i32
  %i.v = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %i.u, i32 noundef %2)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %bb.f, %bb.g
  %i.w = phi ptr [ %.pre, %bb.g ], [ %i.b, %bb.f ]
  %.0.i = phi i32 [ %i.v, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.x = shl nuw i32 1, %.0.i
  %i.y = xor i32 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !82
  %i.ab = and i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !82
  %i.ac = trunc nuw i32 %.0.i to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.ac, ptr %i.ae, align 4, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !25
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !25
  %i.al = zext i16 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 24
  store i32 %i.am, ptr %i.ad, align 8, !tbaa !86
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.an, align 1, !tbaa !87
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ao = load i16, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.ap = icmp sgt i16 %i.ao, -1
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aq = zext nneg i16 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !25
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !25
end_hunk_1
begin_hunk_2_@asm_fusexref:bb.a
  %i.cj = trunc nsw i64 %i.cg to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sink.i = phi i32 [ %i.cj, %bb.s ], [ %i.ce, %bb.q ]
  store i32 %.sink.i, ptr %i.e, align 8, !tbaa !26
  %i.ck = load i16, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.cl = zext i16 %i.ck to i32                   ; 3 uses
  %i.cm = zext i16 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cm ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !25
  %i.cq = icmp eq i8 %i.cp, 41
  br i1 %i.cq, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !25
  %i.ct = and i8 %i.cs, 64
  %.not84 = icmp eq i8 %i.ct, 0
  br i1 %.not84, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !25
  %.not85 = icmp sgt i8 %i.cv, -1
  br i1 %.not85, label %bb.ae, label %asm_isk32.exit.thread

asm_isk32.exit.thread:                            ; preds = %bb.r, %bb.n, %bb.v
  %.073 = phi ptr [ %i.cn, %bb.v ], [ %i.d, %bb.n ], [ %i.d, %bb.r ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 2 uses
  store i8 0, ptr %i.cw, align 2, !tbaa !88
  %i.cx = load i16, ptr %.073, align 8, !tbaa !25 ; 2 uses
  %i.cy = zext i16 %i.cx to i32                   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.073, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !25 ; 2 uses
  %i.db = zext i16 %i.da to i32                   ; 3 uses
  %i.dc = zext i16 %i.cx to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 5
  %i.df = load i8, ptr %i.de, align 1, !tbaa !25
  switch i8 %i.df, label %bb.w [
    i8 36, label %bb.x
    i8 41, label %bb.x
  ]

bb.w:                                             ; preds = %asm_isk32.exit.thread
  %i.dg = zext i16 %i.da to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dg
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %asm_isk32.exit.thread, %asm_isk32.exit.thread
  %.076 = phi i32 [ %i.db, %asm_isk32.exit.thread ], [ %i.db, %asm_isk32.exit.thread ], [ %i.cy, %bb.w ]
  %.070 = phi ptr [ %i.dd, %asm_isk32.exit.thread ], [ %i.dd, %asm_isk32.exit.thread ], [ %i.dh, %bb.w ] ; 7 uses
  %.0 = phi i32 [ %i.cy, %asm_isk32.exit.thread ], [ %i.cy, %asm_isk32.exit.thread ], [ %i.db, %bb.w ] ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.070, i64 4
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !25
  %i.dk = and i8 %i.dj, 64
  %.not86 = icmp eq i8 %i.dk, 0
  br i1 %.not86, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %.070, i64 6
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !25
  %.not87 = icmp sgt i8 %i.dm, -1
  br i1 %.not87, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %.070, i64 5
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !25
  switch i8 %i.do, label %.thread [
    i8 36, label %bb.aa
    i8 41, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %.070, i64 2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !25 ; 2 uses
  %i.dr = icmp sgt i16 %i.dq, -1
  br i1 %i.dr, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ds = zext nneg i16 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !25 ; 2 uses
  %i.dv = icmp slt i32 %i.du, 4
  br i1 %i.dv, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i16, ptr %.070, align 8, !tbaa !25
  %.tr = trunc i32 %i.du to i8
  %i.dx = shl i8 %.tr, 6
  br label %.thread.sink.split

bb.ad:                                            ; preds = %bb.z
  %i.dy = load i16, ptr %.070, align 8, !tbaa !25 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.070, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !25
  %i.eb = icmp eq i16 %i.dy, %i.ea
  br i1 %i.eb, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.ad, %bb.ac
  %.sink = phi i8 [ %i.dx, %bb.ac ], [ 64, %bb.ad ]
  %.1.ph.in = phi i16 [ %i.dw, %bb.ac ], [ %i.dy, %bb.ad ]
  %.1.ph = zext i16 %.1.ph.in to i32
  store i8 %.sink, ptr %i.cw, align 2, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.z, %bb.aa, %bb.ab, %bb.ad, %bb.y, %bb.x
  %.1 = phi i32 [ %.0, %bb.y ], [ %.0, %bb.x ], [ %.0, %bb.ab ], [ %.0, %bb.aa ], [ %.0, %bb.ad ], [ %.0, %bb.z ], [ %.1.ph, %.thread.sink.split ]
  %i.ec = tail call fastcc i32 @ra_alloc1(ptr noundef %0, i32 noundef %.1, i32 noundef %2) ; 2 uses
  %i.ed = shl nuw i32 1, %i.ec
  %i.ee = xor i32 %i.ed, -1
  %i.ef = and i32 %2, %i.ee
  %i.eg = trunc nuw i32 %i.ec to i8
  store i8 %i.eg, ptr %i.f, align 1, !tbaa !87
  %.pre91 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.v, %bb.u, %bb.t, %.critedge.thread, %bb.k, %bb.l, %bb.m
  %i.eh = phi ptr [ %i.b, %.critedge.thread ], [ %i.b, %bb.k ], [ %i.b, %bb.l ], [ %i.b, %bb.m ], [ %.pre91, %.thread ], [ %i.b, %bb.v ], [ %i.b, %bb.u ], [ %i.b, %bb.t ]
  %.2 = phi i32 [ %1, %.critedge.thread ], [ %1, %bb.k ], [ %1, %bb.l ], [ %1, %bb.m ], [ %.076, %.thread ], [ %i.cl, %bb.v ], [ %i.cl, %bb.u ], [ %i.cl, %bb.t ] ; 2 uses
  %.175 = phi i32 [ %2, %.critedge.thread ], [ %2, %bb.k ], [ %2, %bb.l ], [ %2, %bb.m ], [ %i.ef, %.thread ], [ %2, %bb.v ], [ %2, %bb.u ], [ %2, %bb.t ]
  %i.ei = zext nneg i32 %.2 to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !25  ; 2 uses
  %i.em = zext nneg i8 %i.el to i32
  %.not.i88 = icmp sgt i8 %i.el, -1
  br i1 %.not.i88, label %ra_alloc1.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %.2, i32 noundef %.175)
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %bb.ae, %bb.af
  %.0.i = phi i32 [ %i.en, %bb.af ], [ %i.em, %bb.ae ] ; 2 uses
  %i.eo = shl nuw i32 1, %.0.i
  %i.ep = xor i32 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !82
  %i.es = and i32 %i.er, %i.ep
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !82
  %i.et = trunc nuw i32 %.0.i to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.et, ptr %i.eu, align 4, !tbaa !56
  br label %asm_fusestrref.exit

asm_fusestrref.exit:                              ; preds = %bb.j, %bb.i, %bb.f, %bb.c, %ra_alloc1.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_fusearef(ptr nofree noundef nonnull captures(none) initializes((160, 164)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !25     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 5 uses
  %i.d = zext i16 %i.a to i64                     ; 8 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  switch i8 %i.h, label %asm_fuseabase.exit [
    i8 69, label %bb.b
    i8 41, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.m = load i8, ptr %i.l, align 1, !tbaa !25
  %i.n = icmp eq i8 %i.m, 81
  br i1 %i.n, label %bb.c, label %asm_fuseabase.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.k, align 8, !tbaa !25
  %i.p = icmp ult i16 %i.o, 17
  br i1 %i.p, label %bb.d, label %asm_fuseabase.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = load i32, ptr %i.q, align 8, !tbaa !63
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %asm_fuseabase.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = zext i16 %i.i to i32                     ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 200
  %.val26.i = load i32, ptr %i.u, align 8, !tbaa !58 ; 2 uses
  %i.v = add nuw nsw i32 %i.t, 31
  %i.w = icmp ugt i32 %.val26.i, %i.v
  br i1 %i.w, label %asm_fuseabase.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.x = add nsw i32 %.val26.i, -1                ; 2 uses
  %i.y = icmp ugt i32 %i.x, %i.t
  br i1 %i.y, label %.lr.ph.i.i, label %.thread.sink.split.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %3 = zext i32 %i.x to i64
  br label %.lr.ph.split.us.split.us.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv37.i.i = phi i64 [ %indvars.iv.next38.i.i, %bb.f ], [ %3, %.lr.ph.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv37.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !25
  %i.ac = icmp eq i8 %i.ab, 59
  br i1 %i.ac, label %asm_fuseabase.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.split.us.i.i
  %indvars.iv.next38.i.i = add nsw i64 %indvars.iv37.i.i, -1 ; 2 uses
  %indvars39.i.i = trunc i64 %indvars.iv.next38.i.i to i32
  %4 = icmp ult i32 %i.t, %indvars39.i.i
  br i1 %4, label %.lr.ph.split.us.split.us.i.i, label %.thread.sink.split.i, !llvm.loop !2

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !25 ; 2 uses
  %i.af = icmp sgt i16 %i.ae, -1
  br i1 %i.af, label %bb.h, label %asm_fuseabase.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i16 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !25
  %i.ak = icmp eq i8 %i.aj, 23
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.ah, align 8, !tbaa !25
  br label %.thread.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25
  %i.ao = trunc i64 %i.an to i32
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.f, %bb.j, %bb.i, %.preheader.i.i
  %.sink.i = phi i32 [ 64, %.preheader.i.i ], [ %i.ao, %bb.j ], [ %i.al, %bb.i ], [ 64, %bb.f ]
  store i32 %.sink.i, ptr %i.f, align 8, !tbaa !86
  %i.ap = load i16, ptr %i.e, align 8, !tbaa !25  ; 2 uses
  %.pre20 = zext i16 %i.ap to i64
  br label %asm_fuseabase.exit

asm_fuseabase.exit:                               ; preds = %.lr.ph.split.us.split.us.i.i, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g, %.thread.sink.split.i
  %.pre-phi = phi i64 [ %.pre20, %.thread.sink.split.i ], [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.g ], [ %i.d, %.lr.ph.split.us.split.us.i.i ]
  %.1.i.in = phi i16 [ %i.ap, %.thread.sink.split.i ], [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %i.a, %bb.e ], [ %i.a, %bb.g ], [ %i.a, %.lr.ph.split.us.split.us.i.i ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.pre-phi
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !25  ; 2 uses
  %i.at = zext nneg i8 %i.as to i32
  %.not.i = icmp sgt i8 %i.as, -1
  br i1 %.not.i, label %ra_alloc1.exit, label %bb.k

bb.k:                                             ; preds = %asm_fuseabase.exit
  %.1.i = zext i16 %.1.i.in to i32
  %i.au = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %.1.i, i32 noundef %2)
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %asm_fuseabase.exit, %bb.k
  %.0.i = phi i32 [ %i.au, %bb.k ], [ %i.at, %asm_fuseabase.exit ] ; 2 uses
  %i.av = shl nuw i32 1, %.0.i
  %i.aw = xor i32 %i.av, -1                       ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !82
  %i.az = and i32 %i.ay, %i.aw                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !82
  %i.ba = trunc nuw i32 %.0.i to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.ba, ptr %i.bb, align 4, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !25 ; 2 uses
  %i.be = icmp sgt i16 %i.bd, -1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %ra_alloc1.exit
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.bg = zext nneg i16 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !25
  %i.bj = shl nsw i32 %i.bi, 3
  %i.bk = load i32, ptr %i.f, align 8, !tbaa !86
  %i.bl = add nsw i32 %i.bk, %i.bj
  store i32 %i.bl, ptr %i.f, align 8, !tbaa !86
  br label %bb.o

bb.m:                                             ; preds = %ra_alloc1.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i8 -64, ptr %i.bm, align 2, !tbaa !88
  %i.bn = load i16, ptr %i.bc, align 2, !tbaa !25 ; 2 uses
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.bp = zext i16 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 6
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !25  ; 2 uses
  %i.bt = zext nneg i8 %i.bs to i32
  %.not.i17 = icmp sgt i8 %i.bs, -1
  br i1 %.not.i17, label %ra_alloc1.exit19, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = zext i16 %i.bn to i32
  %i.bv = and i32 %2, %i.aw
  %i.bw = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %i.bu, i32 noundef %i.bv)
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !82
  br label %ra_alloc1.exit19

ra_alloc1.exit19:                                 ; preds = %bb.m, %bb.n
  %i.bx = phi i32 [ %.pre, %bb.n ], [ %i.az, %bb.m ]
  %.0.i18 = phi i32 [ %i.bw, %bb.n ], [ %i.bt, %bb.m ] ; 2 uses
  %i.by = shl nuw i32 1, %.0.i18
  %i.bz = xor i32 %i.by, -1
  %i.ca = and i32 %i.bx, %i.bz
  store i32 %i.ca, ptr %i.ax, align 8, !tbaa !82
  %i.cb = trunc nuw i32 %.0.i18 to i8
  br label %bb.o

bb.o:                                             ; preds = %ra_alloc1.exit19, %bb.l
  %.sink = phi i8 [ %i.cb, %ra_alloc1.exit19 ], [ -128, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 %.sink, ptr %i.cc, align 1, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ra_left(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 65536) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = zext nneg i32 %2 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !25    ; 3 uses
  %i.g = zext nneg i8 %i.f to i32
  %.not = icmp sgt i8 %i.f, -1
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp samesign ult i32 %2, 32768
  br i1 %i.h, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25
  switch i8 %i.j, label %bb.i [
    i8 28, label %bb.d
    i8 29, label %bb.g
    i8 24, label %bb.h
    i8 25, label %bb.h
    i8 26, label %bb.h
    i8 22, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = load i32, ptr %i.n, align 8, !tbaa !83
  %.not52 = icmp ult i32 %i.o, 65536
  br i1 %.not52, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @emit_loadk64(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.d)
  br label %emit_loadi.exit

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @emit_loadk64(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.d)
  br label %emit_loadi.exit

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c
  tail call fastcc void @emit_loadk64(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.d)
  br label %emit_loadi.exit

bb.i:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 8 uses
  br i1 %i.q, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25    ; 2 uses
  %i.u = icmp eq i8 %i.t, 15
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !25
  %i.x = icmp slt i8 %i.w, -112
  br i1 %i.x, label %._crit_edge.i, label %.thread.i

bb.l:                                             ; preds = %bb.j
  %i.y = icmp sgt i8 %i.t, 111
  br i1 %i.y, label %._crit_edge.i, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %i.z = shl nuw nsw i32 %1, 3
  %i.aa = and i32 %1, 7
  %i.ab = or disjoint i32 %i.aa, %i.z
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = or i8 %i.ac, -64
  %i.ae = getelementptr inbounds i8, ptr %i.s, i64 -1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !25
  %i.af = getelementptr i8, ptr %i.s, i64 -2      ; 2 uses
  store i8 51, ptr %i.af, align 1, !tbaa !25
  %i.ag = lshr i32 %1, 1
  %i.ah = and i32 %i.ag, 4
  %i.ai = lshr i32 %1, 3
  %i.aj = and i32 %i.ai, 1
end_hunk_2
