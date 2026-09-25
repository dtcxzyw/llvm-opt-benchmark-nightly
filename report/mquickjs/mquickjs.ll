Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lre_exec:bb.a
  br i1 %i.eg, label %.lr.ph2144, label %._crit_edge2145

.lr.ph2144:                                       ; preds = %.preheader2061, %.lr.ph2144
  %.1012042142 = phi ptr [ %i.eq, %.lr.ph2144 ], [ %.91203, %.preheader2061 ] ; 3 uses
  %i.eh = load i64, ptr %.1012042142, align 8, !tbaa !46
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = ashr i32 %i.ei, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.1012042142, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !46
  %i.em = trunc i64 %i.el to i32
  %i.en = ashr i32 %i.em, 1
  %i.eo = sext i32 %i.ej to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %.01270, i64 %i.eo
  store i32 %i.en, ptr %i.ep, align 4, !tbaa !45
  %i.eq = getelementptr inbounds nuw i8, ptr %.1012042142, i64 16 ; 3 uses
  %i.er = icmp ult ptr %i.eq, %.51189
  br i1 %i.er, label %.lr.ph2144, label %._crit_edge2145, !llvm.loop !349

._crit_edge2145:                                  ; preds = %.lr.ph2144, %.preheader2061
  %.101204.lcssa = phi ptr [ %.91203, %.preheader2061 ], [ %i.eq, %.lr.ph2144 ] ; 3 uses
  %i.es = load i64, ptr %.101204.lcssa, align 8, !tbaa !46
  %i.et = getelementptr inbounds nuw i8, ptr %.101204.lcssa, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !46
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = ashr i32 %i.ev, 1
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %0, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.101204.lcssa, i64 24 ; 2 uses
  %i.fa = and i64 %i.es, 6
  %i.fb = icmp eq i64 %i.fa, 4
  br i1 %i.fb, label %is_line_terminator.exit1654.thread, label %.preheader2061

bb.f:                                             ; preds = %is_line_terminator.exit.thread
  %i.fc = ptrtoaddr ptr %.01222 to i64
  %i.fd = ptrtoaddr ptr %.01364 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %is_line_terminator.exit1654.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fg = load i8, ptr %i.am, align 1, !tbaa !51
  %i.fh = load i8, ptr %.01364, align 1, !tbaa !51
  %.not1600 = icmp eq i8 %i.fg, %i.fh
  br i1 %.not1600, label %bb.h, label %is_line_terminator.exit1654.thread

bb.h:                                             ; preds = %bb.g
  %i.fi = getelementptr inbounds nuw i8, ptr %.01414, i64 2
  %i.fj = getelementptr inbounds nuw i8, ptr %.01364, i64 1
  br label %is_line_terminator.exit.thread.backedge

bb.i:                                             ; preds = %is_line_terminator.exit.thread
  %i.fk = ptrtoaddr ptr %.01222 to i64
  %i.fl = ptrtoaddr ptr %.01364 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = icmp slt i64 %i.fm, 2
  br i1 %i.fn, label %is_line_terminator.exit1654.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1647 = load i16, ptr %i.am, align 1, !tbaa !89
  %.01364.val1646 = load i16, ptr %.01364, align 1, !tbaa !89
  %.not1599 = icmp eq i16 %.val1647, %.01364.val1646
  br i1 %.not1599, label %bb.k, label %is_line_terminator.exit1654.thread

bb.k:                                             ; preds = %bb.j
  %i.fo = getelementptr inbounds nuw i8, ptr %.01414, i64 3
  %i.fp = getelementptr inbounds nuw i8, ptr %.01364, i64 2
  br label %is_line_terminator.exit.thread.backedge

bb.l:                                             ; preds = %is_line_terminator.exit.thread
  %i.fq = ptrtoaddr ptr %.01222 to i64
  %i.fr = ptrtoaddr ptr %.01364 to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = icmp slt i64 %i.fs, 3
  br i1 %i.ft, label %is_line_terminator.exit1654.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val1645 = load i16, ptr %i.am, align 1, !tbaa !89
  %.01364.val1644 = load i16, ptr %.01364, align 1, !tbaa !89
  %.not1597 = icmp eq i16 %.val1645, %.01364.val1644
  br i1 %.not1597, label %bb.n, label %is_line_terminator.exit1654.thread

bb.n:                                             ; preds = %bb.m
  %i.fu = getelementptr inbounds nuw i8, ptr %.01414, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !51
  %i.fw = getelementptr inbounds nuw i8, ptr %.01364, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !51
  %.not1598 = icmp eq i8 %i.fv, %i.fx
  br i1 %.not1598, label %bb.o, label %is_line_terminator.exit1654.thread

bb.o:                                             ; preds = %bb.n
  %i.fy = getelementptr inbounds nuw i8, ptr %.01414, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.01364, i64 3
  br label %is_line_terminator.exit.thread.backedge

bb.p:                                             ; preds = %is_line_terminator.exit.thread
  %i.ga = ptrtoaddr ptr %.01222 to i64
  %i.gb = ptrtoaddr ptr %.01364 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = icmp slt i64 %i.gc, 4
  br i1 %i.gd, label %is_line_terminator.exit1654.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1642 = load i32, ptr %i.am, align 1, !tbaa !91
  %.01364.val = load i32, ptr %.01364, align 1, !tbaa !91
  %.not1596 = icmp eq i32 %.val1642, %.01364.val
  br i1 %.not1596, label %bb.r, label %is_line_terminator.exit1654.thread

bb.r:                                             ; preds = %bb.q
  %i.ge = getelementptr inbounds nuw i8, ptr %.01414, i64 5
  %i.gf = getelementptr inbounds nuw i8, ptr %.01364, i64 4
  br label %is_line_terminator.exit.thread.backedge

bb.s:                                             ; preds = %is_line_terminator.exit.thread, %is_line_terminator.exit.thread
  %.val1641 = load i32, ptr %i.am, align 1, !tbaa !91
  %i.gg = getelementptr inbounds nuw i8, ptr %.01414, i64 5 ; 2 uses
  %i.gh = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.gi = ptrtoaddr ptr %.01194 to i64
  %i.gj = ptrtoaddr ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = icmp slt i64 %i.gk, 17
  br i1 %i.gl, label %bb.t, label %.thread1721, !prof !67

bb.t:                                             ; preds = %bb.s
  %i.gm = load ptr, ptr %i.ag, align 8, !tbaa !36
  store ptr %i.gm, ptr %i.ah, align 8, !tbaa !39
  store i64 %.01119, ptr %5, align 8, !tbaa !40
  store ptr %5, ptr %i.ai, align 8, !tbaa !39
  store i64 %.01467, ptr %6, align 8, !tbaa !40
  store ptr %6, ptr %i.aj, align 8, !tbaa !39
  store ptr %7, ptr %i.ag, align 8, !tbaa !36
  store i64 %.01499, ptr %7, align 8, !tbaa !40
  store ptr %.01194, ptr %i.ac, align 8, !tbaa !42
  %i.gn = getelementptr inbounds i8, ptr %.01194, i64 -152 ; 2 uses
  %i.go = call fastcc i32 @check_free_mem(ptr noundef nonnull %0, ptr noundef nonnull %i.gn, i32 noundef 152) #28, !inline_history !80
  %.not.i = icmp eq i32 %i.go, 0                  ; 2 uses
  br i1 %.not.i, label %bb.u, label %JS_StackCheck.exit

bb.u:                                             ; preds = %bb.t
  store ptr %i.gn, ptr %i.ab, align 8, !tbaa !42
  br label %JS_StackCheck.exit

JS_StackCheck.exit:                               ; preds = %bb.t, %bb.u
  %i.gp = load i64, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.gq = load i64, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.gr = load i64, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.gs = load ptr, ptr %i.ah, align 8, !tbaa !39
  store ptr %i.gs, ptr %i.ag, align 8, !tbaa !36
  br i1 %.not.i, label %.thread1714, label %.thread1840

.thread1714:                                      ; preds = %JS_StackCheck.exit
  %i.gt = ptrtoaddr ptr %.01364 to i64
  %i.gu = ptrtoaddr ptr %.01317 to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ptrtoaddr ptr %i.gg to i64
  %reass.sub2195 = sub i64 %i.gw, %.01467
  %i.gx = add i64 %i.gq, -1
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = shl i64 %reass.sub2195, 32
  %sext1594 = add i64 %i.ha, -30064771072
  %i.hb = ashr exact i64 %sext1594, 32
  %i.hc = getelementptr inbounds i8, ptr %i.gz, i64 %i.hb
  %i.hd = add i64 %i.gp, -1
  %i.he = inttoptr i64 %i.hd to ptr               ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 3 uses
  %i.hg = load i64, ptr %i.he, align 8
  %i.hh = lshr i64 %i.hg, 7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hh
  %sext1595 = shl i64 %i.gv, 32
  %i.hj = ashr exact i64 %sext1595, 32
  %i.hk = getelementptr inbounds i8, ptr %i.hf, i64 %i.hj
  %i.hl = add i64 %i.gr, -1
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  br label %.thread1721

.thread1721:                                      ; preds = %bb.s, %.thread1714
  %.21501 = phi i64 [ %i.gp, %.thread1714 ], [ %.01499, %bb.s ]
  %.21469 = phi i64 [ %i.gq, %.thread1714 ], [ %.01467, %bb.s ] ; 2 uses
  %.61420 = phi ptr [ %i.hc, %.thread1714 ], [ %i.gg, %bb.s ] ; 3 uses
  %.61370 = phi ptr [ %i.hk, %.thread1714 ], [ %.01364, %bb.s ] ; 2 uses
  %.41321 = phi ptr [ %i.hf, %.thread1714 ], [ %.01317, %bb.s ] ; 2 uses
  %.41274 = phi ptr [ %i.hn, %.thread1714 ], [ %.01270, %bb.s ]
  %.41226 = phi ptr [ %i.hi, %.thread1714 ], [ %.01222, %bb.s ]
  %.21121 = phi i64 [ %i.gr, %.thread1714 ], [ %.01119, %bb.s ]
  %i.ho = icmp eq i8 %i.an, 15                    ; 2 uses
  %i.hp = sext i32 %.val1641 to i64
  %i.hq = getelementptr inbounds i8, ptr %.61420, i64 %i.hp ; 2 uses
  %.71421 = select i1 %i.ho, ptr %.61420, ptr %i.hq
  %.01114 = select i1 %i.ho, ptr %i.hq, ptr %.61420
  %i.hr = getelementptr inbounds i8, ptr %.01194, i64 -24 ; 3 uses
  %i.hs = ptrtoaddr ptr %.01114 to i64
  %reass.sub2196 = sub i64 %i.hs, %.21469
  %i.ht = shl i64 %reass.sub2196, 3
  %i.hu = add i64 %i.ht, -56
  store i64 %i.hu, ptr %i.hr, align 8, !tbaa !46
  %i.hv = ptrtoaddr ptr %.61370 to i64
  %i.hw = ptrtoaddr ptr %.41321 to i64
  %i.hx = getelementptr inbounds i8, ptr %.01194, i64 -16
  %i.hy = ptrtoaddr ptr %.01184 to i64
  %i.hz = sub i64 %i.hy, %i.ak
  %8 = sub i64 %i.hv, %i.hw
  %9 = trunc i64 %i.hz to i32
  %i.ia = trunc i64 %8 to i32
  %i.ib = insertelement <2 x i32> poison, i32 %i.ia, i64 0
  %i.ic = insertelement <2 x i32> %i.ib, i32 %9, i64 1
  %i.id = shl <2 x i32> %i.ic, splat (i32 1)
  %i.ie = sext <2 x i32> %i.id to <2 x i64>
  store <2 x i64> %i.ie, ptr %i.hx, align 8, !tbaa !46
  br label %is_line_terminator.exit.thread.backedge

bb.v:                                             ; preds = %is_line_terminator.exit.thread, %is_line_terminator.exit.thread
  %.val1640 = load i32, ptr %i.am, align 1, !tbaa !91
  %i.if = getelementptr inbounds nuw i8, ptr %.01414, i64 5 ; 2 uses
  %i.ig = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ih = ptrtoaddr ptr %.01194 to i64
  %i.ii = ptrtoaddr ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = icmp slt i64 %i.ij, 17
  br i1 %i.ik, label %bb.w, label %bb.y, !prof !67

bb.w:                                             ; preds = %bb.v
  %i.il = load ptr, ptr %i.ag, align 8, !tbaa !36
  store ptr %i.il, ptr %i.ah, align 8, !tbaa !39
  store i64 %.01119, ptr %5, align 8, !tbaa !40
  store ptr %5, ptr %i.ai, align 8, !tbaa !39
  store i64 %.01467, ptr %6, align 8, !tbaa !40
  store ptr %6, ptr %i.aj, align 8, !tbaa !39
  store ptr %7, ptr %i.ag, align 8, !tbaa !36
  store i64 %.01499, ptr %7, align 8, !tbaa !40
  store ptr %.01194, ptr %i.ac, align 8, !tbaa !42
  %i.im = getelementptr inbounds i8, ptr %.01194, i64 -152 ; 2 uses
  %i.in = call fastcc i32 @check_free_mem(ptr noundef nonnull %0, ptr noundef nonnull %i.im, i32 noundef 152) #28, !inline_history !80
  %.not.i1650 = icmp eq i32 %i.in, 0              ; 2 uses
  br i1 %.not.i1650, label %bb.x, label %JS_StackCheck.exit1652

bb.x:                                             ; preds = %bb.w
  store ptr %i.im, ptr %i.ab, align 8, !tbaa !42
  br label %JS_StackCheck.exit1652

JS_StackCheck.exit1652:                           ; preds = %bb.w, %bb.x
  %i.io = load i64, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.ip = load i64, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.iq = load i64, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ir = load ptr, ptr %i.ah, align 8, !tbaa !39
  store ptr %i.ir, ptr %i.ag, align 8, !tbaa !36
  br i1 %.not.i1650, label %.thread1734, label %.thread1840

.thread1734:                                      ; preds = %JS_StackCheck.exit1652
  %i.is = ptrtoaddr ptr %.01364 to i64
  %i.it = ptrtoaddr ptr %.01317 to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = ptrtoaddr ptr %i.if to i64
  %reass.sub2193 = sub i64 %i.iv, %.01467
  %i.iw = add i64 %i.ip, -1
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = shl i64 %reass.sub2193, 32
  %sext1592 = add i64 %i.iz, -30064771072
  %i.ja = ashr exact i64 %sext1592, 32
  %i.jb = getelementptr inbounds i8, ptr %i.iy, i64 %i.ja
  %i.jc = add i64 %i.io, -1
  %i.jd = inttoptr i64 %i.jc to ptr               ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 3 uses
  %i.jf = load i64, ptr %i.jd, align 8
  %i.jg = lshr i64 %i.jf, 7
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jg
  %sext1593 = shl i64 %i.iu, 32
  %i.ji = ashr exact i64 %sext1593, 32
  %i.jj = getelementptr inbounds i8, ptr %i.je, i64 %i.ji
  %i.jk = add i64 %i.iq, -1
  %i.jl = inttoptr i64 %i.jk to ptr
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  br label %bb.y

bb.y:                                             ; preds = %.thread1734, %bb.v
  %.41503 = phi i64 [ %i.io, %.thread1734 ], [ %.01499, %bb.v ]
  %.41471 = phi i64 [ %i.ip, %.thread1734 ], [ %.01467, %bb.v ] ; 2 uses
  %.101424 = phi ptr [ %i.jb, %.thread1734 ], [ %i.if, %bb.v ] ; 2 uses
  %.91373 = phi ptr [ %i.jj, %.thread1734 ], [ %.01364, %bb.v ] ; 2 uses
  %.71324 = phi ptr [ %i.je, %.thread1734 ], [ %.01317, %bb.v ] ; 2 uses
  %.71277 = phi ptr [ %i.jm, %.thread1734 ], [ %.01270, %bb.v ]
  %.71229 = phi ptr [ %i.jh, %.thread1734 ], [ %.01222, %bb.v ]
  %.41123 = phi i64 [ %i.iq, %.thread1734 ], [ %.01119, %bb.v ]
  %i.jn = getelementptr inbounds i8, ptr %.01194, i64 -24 ; 3 uses
  %i.jo = shl nuw nsw i32 %i.ao, 1
  %i.jp = add nsw i32 %i.jo, -66
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = sext i32 %.val1640 to i64
  %i.js = getelementptr inbounds i8, ptr %.101424, i64 %i.jr
  %i.jt = ptrtoaddr ptr %i.js to i64
  %reass.sub2194 = sub i64 %i.jt, %.41471
  %i.ju = shl i64 %reass.sub2194, 3
  %i.jv = add i64 %i.ju, -56
  %i.jw = or i64 %i.jv, %i.jq
  store i64 %i.jw, ptr %i.jn, align 8, !tbaa !46
  %i.jx = ptrtoaddr ptr %.91373 to i64
  %i.jy = ptrtoaddr ptr %.71324 to i64
  %i.jz = getelementptr inbounds i8, ptr %.01194, i64 -16
  %i.ka = ptrtoaddr ptr %.01184 to i64
  %i.kb = sub i64 %i.ka, %i.ak
  %10 = sub i64 %i.jx, %i.jy
  %11 = trunc i64 %i.kb to i32
  %i.kc = trunc i64 %10 to i32
  %i.kd = insertelement <2 x i32> poison, i32 %i.kc, i64 0
  %i.ke = insertelement <2 x i32> %i.kd, i32 %11, i64 1
  %i.kf = shl <2 x i32> %i.ke, splat (i32 1)
  %i.kg = sext <2 x i32> %i.kf to <2 x i64>
  store <2 x i64> %i.kg, ptr %i.jz, align 8, !tbaa !46
  br label %is_line_terminator.exit.thread.backedge

bb.z:                                             ; preds = %is_line_terminator.exit.thread
  %.val1639 = load i32, ptr %i.am, align 1, !tbaa !91
  %i.kh = sext i32 %.val1639 to i64
  %i.ki = getelementptr i8, ptr %i.am, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 4      ; 2 uses
  %i.kk = load i16, ptr %i.al, align 2, !tbaa !75
  %i.kl = add i16 %i.kk, -1                       ; 2 uses
  store i16 %i.kl, ptr %i.al, align 2, !tbaa !75
  %i.km = icmp slt i16 %i.kl, 1
  br i1 %i.km, label %bb.aa, label %is_line_terminator.exit.thread.backedge, !prof !67

bb.aa:                                            ; preds = %bb.z
  %i.kn = load ptr, ptr %i.ag, align 8, !tbaa !36
  store ptr %i.kn, ptr %i.ah, align 8, !tbaa !39
  store i64 %.01119, ptr %5, align 8, !tbaa !40
  store ptr %5, ptr %i.ai, align 8, !tbaa !39
  store i64 %.01467, ptr %6, align 8, !tbaa !40
  store ptr %6, ptr %i.aj, align 8, !tbaa !39
  store ptr %7, ptr %i.ag, align 8, !tbaa !36
  store i64 %.01499, ptr %7, align 8, !tbaa !40
  store ptr %.01194, ptr %i.ac, align 8, !tbaa !42
  %i.ko = call fastcc i64 @__js_poll_interrupt(ptr noundef nonnull %0) #28
  %i.kp = load i64, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.kq = load i64, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.kr = load i64, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ks = load ptr, ptr %i.ah, align 8, !tbaa !39
  store ptr %i.ks, ptr %i.ag, align 8, !tbaa !36
  %.not2040 = icmp eq i64 %i.ko, 15
  br i1 %.not2040, label %.thread1840, label %.thread1741

.thread1741:                                      ; preds = %bb.aa
  %i.kt = ptrtoaddr ptr %.01364 to i64
  %i.ku = ptrtoaddr ptr %.01317 to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = ptrtoaddr ptr %i.kj to i64
  %reass.sub2192 = sub i64 %i.kw, %.01467
  %i.kx = add i64 %i.kq, -1
  %i.ky = inttoptr i64 %i.kx to ptr
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = shl i64 %reass.sub2192, 32
  %sext1590 = add i64 %i.la, -30064771072
  %i.lb = ashr exact i64 %sext1590, 32
  %i.lc = getelementptr inbounds i8, ptr %i.kz, i64 %i.lb
  %i.ld = add i64 %i.kp, -1
  %i.le = inttoptr i64 %i.ld to ptr               ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 3 uses
  %i.lg = load i64, ptr %i.le, align 8
  %i.lh = lshr i64 %i.lg, 7
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lh
  %sext1591 = shl i64 %i.kv, 32
  %i.lj = ashr exact i64 %sext1591, 32
  %i.lk = getelementptr inbounds i8, ptr %i.lf, i64 %i.lj
  %i.ll = add i64 %i.kr, -1
  %i.lm = inttoptr i64 %i.ll to ptr
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  br label %is_line_terminator.exit.thread.backedge

bb.ab:                                            ; preds = %is_line_terminator.exit.thread, %is_line_terminator.exit.thread
  %i.lo = icmp eq ptr %.01364, %.01317
  br i1 %i.lo, label %is_line_terminator.exit.thread.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lp = icmp eq i8 %i.an, 9
  br i1 %i.lp, label %is_line_terminator.exit1654.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.01364.pn1588 = phi ptr [ %.01364, %bb.ad ], [ %.01113, %bb.ae ]
  %.01113 = getelementptr inbounds i8, ptr %.01364.pn1588, i64 -1 ; 4 uses
  %i.lq = load i8, ptr %.01113, align 1, !tbaa !51 ; 2 uses
  %i.lr = icmp slt i8 %i.lq, -64
  br i1 %i.lr, label %bb.ae, label %bb.af, !llvm.loop !350

bb.af:                                            ; preds = %bb.ae
  %i.ls = icmp sgt i8 %i.lq, -1
  br i1 %i.ls, label %bb.ag, label %bb.ah, !prof !69

bb.ag:                                            ; preds = %bb.af
  store i64 1, ptr %i.a, align 8, !tbaa !46
  %i.lt = load i8, ptr %.01113, align 1, !tbaa !51
  %i.lu = zext i8 %i.lt to i32
  br label %utf8_get.exit1631

bb.ah:                                            ; preds = %bb.af
  %i.lv = call i32 @__utf8_get(ptr noundef nonnull %.01113, ptr noundef nonnull %i.a) #31
  br label %utf8_get.exit1631

utf8_get.exit1631:                                ; preds = %bb.ag, %bb.ah
  %.0.i1630 = phi i32 [ %i.lu, %bb.ag ], [ %i.lv, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  switch i32 %.0.i1630, label %is_line_terminator.exit1654.thread [
    i32 8232, label %is_line_terminator.exit.thread.backedge
    i32 13, label %is_line_terminator.exit.thread.backedge
    i32 10, label %is_line_terminator.exit.thread.backedge
    i32 8233, label %is_line_terminator.exit.thread.backedge
  ]

bb.ai:                                            ; preds = %is_line_terminator.exit.thread, %is_line_terminator.exit.thread
  %i.lw = icmp eq ptr %.01364, %.01222
  br i1 %i.lw, label %is_line_terminator.exit.thread.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lx = icmp eq i8 %i.an, 11
  br i1 %i.lx, label %is_line_terminator.exit1654.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.ly = load i8, ptr %.01364, align 1, !tbaa !51
  %i.lz = icmp sgt i8 %i.ly, -1
  br i1 %i.lz, label %bb.al, label %bb.am, !prof !69

bb.al:                                            ; preds = %bb.ak
  store i64 1, ptr %i.b, align 8, !tbaa !46
  %i.ma = load i8, ptr %.01364, align 1, !tbaa !51
  %i.mb = zext i8 %i.ma to i32
  br label %utf8_get.exit1629

bb.am:                                            ; preds = %bb.ak
  %i.mc = call i32 @__utf8_get(ptr noundef nonnull %.01364, ptr noundef nonnull %i.b) #31
  br label %utf8_get.exit1629

utf8_get.exit1629:                                ; preds = %bb.al, %bb.am
  %.0.i1628 = phi i32 [ %i.mb, %bb.al ], [ %i.mc, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  switch i32 %.0.i1628, label %is_line_terminator.exit1654.thread [
    i32 8232, label %is_line_terminator.exit.thread.backedge
    i32 13, label %is_line_terminator.exit.thread.backedge
    i32 10, label %is_line_terminator.exit.thread.backedge
    i32 8233, label %is_line_terminator.exit.thread.backedge
  ]

bb.an:                                            ; preds = %is_line_terminator.exit.thread
  %i.md = icmp eq ptr %.01364, %.01222
  br i1 %i.md, label %is_line_terminator.exit1654.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.me = load i8, ptr %.01364, align 1, !tbaa !51
  %i.mf = icmp sgt i8 %i.me, -1
  br i1 %i.mf, label %bb.ap, label %bb.aq, !prof !69

bb.ap:                                            ; preds = %bb.ao
  store i64 1, ptr %i.c, align 8, !tbaa !46
  %i.mg = load i8, ptr %.01364, align 1, !tbaa !51
  %i.mh = zext i8 %i.mg to i32
  br label %utf8_get.exit1627

bb.aq:                                            ; preds = %bb.ao
  %i.mi = call i32 @__utf8_get(ptr noundef nonnull %.01364, ptr noundef nonnull %i.c) #31
  %.pre2237 = load i64, ptr %i.c, align 8, !tbaa !46
  br label %utf8_get.exit1627

utf8_get.exit1627:                                ; preds = %bb.ap, %bb.aq
  %i.mj = phi i64 [ 1, %bb.ap ], [ %.pre2237, %bb.aq ]
  %.0.i1626 = phi i32 [ %i.mh, %bb.ap ], [ %i.mi, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  switch i32 %.0.i1626, label %is_line_terminator.exit1654 [
    i32 8232, label %is_line_terminator.exit1654.thread
    i32 13, label %is_line_terminator.exit1654.thread
    i32 10, label %is_line_terminator.exit1654.thread
  ]

is_line_terminator.exit1654:                      ; preds = %utf8_get.exit1627
  %i.mk = getelementptr inbounds nuw i8, ptr %.01364, i64 %i.mj
  %.not2037 = icmp eq i32 %.0.i1626, 8233
  br i1 %.not2037, label %is_line_terminator.exit1654.thread, label %is_line_terminator.exit.thread.backedge

bb.ar:                                            ; preds = %is_line_terminator.exit.thread
  %i.ml = icmp eq ptr %.01364, %.01222
  br i1 %i.ml, label %is_line_terminator.exit1654.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.mm = load i8, ptr %.01364, align 1, !tbaa !51
  %i.mn = icmp sgt i8 %i.mm, -1
  br i1 %i.mn, label %utf8_get.exit1625, label %bb.at, !prof !69

bb.at:                                            ; preds = %bb.as
  %i.mo = call i32 @__utf8_get(ptr noundef nonnull %.01364, ptr noundef nonnull %i.d) #31 ; 0 uses
  %.pre2236 = load i64, ptr %i.d, align 8, !tbaa !46
  br label %utf8_get.exit1625

utf8_get.exit1625:                                ; preds = %bb.as, %bb.at
  %i.mp = phi i64 [ %.pre2236, %bb.at ], [ 1, %bb.as ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.01364, i64 %i.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %is_line_terminator.exit.thread.backedge

bb.au:                                            ; preds = %is_line_terminator.exit.thread, %is_line_terminator.exit.thread
  %i.mr = icmp eq ptr %.01364, %.01222
  br i1 %i.mr, label %is_line_terminator.exit1654.thread, label %bb.av

end_hunk_0
begin_hunk_1_@lre_exec:bb.a
.thread1914:                                      ; preds = %JS_StackCheck.exit1675
  %i.aav = ptrtoaddr ptr %.01364 to i64
  %i.aaw = ptrtoaddr ptr %.01317 to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  %i.aay = ptrtoaddr ptr %i.zw to i64
  %reass.sub2181 = sub i64 %i.aay, %.01467
  %i.aaz = add i64 %i.aas, -1
  %i.aba = inttoptr i64 %i.aaz to ptr
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abc = shl i64 %reass.sub2181, 32
  %sext1558 = add i64 %i.abc, -30064771072
  %i.abd = ashr exact i64 %sext1558, 32
  %i.abe = getelementptr inbounds i8, ptr %i.abb, i64 %i.abd
  %i.abf = add i64 %i.aar, -1
  %i.abg = inttoptr i64 %i.abf to ptr             ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 3 uses
  %i.abi = load i64, ptr %i.abg, align 8
  %i.abj = lshr i64 %i.abi, 7
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abj
  %sext1559 = shl i64 %i.aax, 32
  %i.abl = ashr exact i64 %sext1559, 32
  %i.abm = getelementptr inbounds i8, ptr %i.abh, i64 %i.abl
  %i.abn = add i64 %i.aat, -1
  %i.abo = inttoptr i64 %i.abn to ptr
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %i.zy
  %.pre2232 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !45
  br label %bb.ci

bb.ci:                                            ; preds = %.thread1914, %._crit_edge2111
  %i.abq = phi i32 [ %.pre2232, %.thread1914 ], [ %i.aaa, %._crit_edge2111 ]
  %.221521 = phi i64 [ %i.aar, %.thread1914 ], [ %.01499, %._crit_edge2111 ]
  %.221489 = phi i64 [ %i.aas, %.thread1914 ], [ %.01467, %._crit_edge2111 ]
  %.371451 = phi ptr [ %i.abe, %.thread1914 ], [ %i.zw, %._crit_edge2111 ]
  %.381402 = phi ptr [ %i.abm, %.thread1914 ], [ %.01364, %._crit_edge2111 ]
  %.341351 = phi ptr [ %i.abh, %.thread1914 ], [ %.01317, %._crit_edge2111 ]
  %.341304 = phi ptr [ %i.abp, %.thread1914 ], [ %.01270, %._crit_edge2111 ]
  %.341256 = phi ptr [ %i.abk, %.thread1914 ], [ %.01222, %._crit_edge2111 ]
  %.221141 = phi i64 [ %i.aat, %.thread1914 ], [ %.01119, %._crit_edge2111 ]
  %i.abr = shl nuw nsw i32 %i.zx, 1
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = getelementptr inbounds i8, ptr %.01194, i64 -16 ; 2 uses
  store i64 %i.abs, ptr %i.abt, align 8, !tbaa !46
  %i.abu = shl i32 %i.abq, 1
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr inbounds i8, ptr %.01194, i64 -8
  store i64 %i.abv, ptr %i.abw, align 8, !tbaa !46
  br label %.loopexit2064

.loopexit2064:                                    ; preds = %.lr.ph2110, %bb.ci
  %.231522 = phi i64 [ %.221521, %bb.ci ], [ %.01499, %.lr.ph2110 ] ; 6 uses
  %.231490 = phi i64 [ %.221489, %bb.ci ], [ %.01467, %.lr.ph2110 ] ; 8 uses
  %.381452 = phi ptr [ %.371451, %bb.ci ], [ %i.zw, %.lr.ph2110 ] ; 4 uses
  %.391403 = phi ptr [ %.381402, %bb.ci ], [ %.01364, %.lr.ph2110 ] ; 6 uses
  %.351352 = phi ptr [ %.341351, %bb.ci ], [ %.01317, %.lr.ph2110 ] ; 7 uses
  %.351305 = phi ptr [ %.341304, %bb.ci ], [ %.01270, %.lr.ph2110 ] ; 5 uses
  %.351257 = phi ptr [ %.341256, %bb.ci ], [ %.01222, %.lr.ph2110 ] ; 4 uses
  %.211215 = phi ptr [ %i.abt, %bb.ci ], [ %.01194, %.lr.ph2110 ] ; 10 uses
  %.231142 = phi i64 [ %.221141, %bb.ci ], [ %.01119, %.lr.ph2110 ] ; 6 uses
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %.351305, i64 %i.zy ; 2 uses
  store i32 %i.aab, ptr %i.abx, align 4, !tbaa !45
  %i.aby = icmp ugt i32 %i.aab, %.val1636
  br i1 %i.aby, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %.loopexit2064
  %i.abz = sext i32 %.val1635 to i64
  %i.aca = getelementptr inbounds i8, ptr %.381452, i64 %i.abz ; 2 uses
  %i.acb = load i16, ptr %i.al, align 2, !tbaa !75
  %i.acc = add i16 %i.acb, -1                     ; 2 uses
  store i16 %i.acc, ptr %i.al, align 2, !tbaa !75
  %i.acd = icmp slt i16 %i.acc, 1
  br i1 %i.acd, label %bb.ck, label %is_line_terminator.exit.thread.backedge, !prof !67

bb.ck:                                            ; preds = %bb.cj
  %i.ace = load ptr, ptr %i.ag, align 8, !tbaa !36
  store ptr %i.ace, ptr %i.ah, align 8, !tbaa !39
  store i64 %.231142, ptr %5, align 8, !tbaa !40
  store ptr %5, ptr %i.ai, align 8, !tbaa !39
  store i64 %.231490, ptr %6, align 8, !tbaa !40
  store ptr %6, ptr %i.aj, align 8, !tbaa !39
  store ptr %7, ptr %i.ag, align 8, !tbaa !36
  store i64 %.231522, ptr %7, align 8, !tbaa !40
  store ptr %.211215, ptr %i.ac, align 8, !tbaa !42
  %i.acf = call fastcc i64 @__js_poll_interrupt(ptr noundef nonnull %0) #28
  %i.acg = load i64, ptr %7, align 8, !tbaa !40   ; 2 uses
  %i.ach = load i64, ptr %6, align 8, !tbaa !40   ; 2 uses
  %i.aci = load i64, ptr %5, align 8, !tbaa !40   ; 2 uses
  %i.acj = load ptr, ptr %i.ah, align 8, !tbaa !39
  store ptr %i.acj, ptr %i.ag, align 8, !tbaa !36
  %.not2035 = icmp eq i64 %i.acf, 15
  br i1 %.not2035, label %.thread1840, label %select.unfold1950

bb.cl:                                            ; preds = %.loopexit2064
  %i.ack = add i8 %i.an, -25
  %or.cond = icmp ult i8 %i.ack, 2
  br i1 %or.cond, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !45
  %i.acn = zext i32 %i.acm to i64
  %i.aco = ptrtoaddr ptr %.391403 to i64
  %i.acp = ptrtoaddr ptr %.351352 to i64
  %i.acq = sub i64 %i.aco, %i.acp
  %i.acr = icmp ne i64 %i.acq, %i.acn
  %.not1560 = icmp eq i32 %i.aab, %.val1636
  %or.cond1610 = select i1 %i.acr, i1 true, i1 %.not1560
  br i1 %or.cond1610, label %bb.cn, label %is_line_terminator.exit1654.thread

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %.not1561 = icmp eq i32 %i.aab, 0
  br i1 %.not1561, label %is_line_terminator.exit.thread.backedge, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.acs = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.act = ptrtoaddr ptr %.211215 to i64
  %i.acu = ptrtoaddr ptr %i.acs to i64
  %i.acv = sub i64 %i.act, %i.acu
  %i.acw = icmp slt i64 %i.acv, 17
  br i1 %i.acw, label %bb.cp, label %bb.cr, !prof !67

bb.cp:                                            ; preds = %bb.co
  %i.acx = load ptr, ptr %i.ag, align 8, !tbaa !36
  store ptr %i.acx, ptr %i.ah, align 8, !tbaa !39
  store i64 %.231142, ptr %5, align 8, !tbaa !40
  store ptr %5, ptr %i.ai, align 8, !tbaa !39
  store i64 %.231490, ptr %6, align 8, !tbaa !40
  store ptr %6, ptr %i.aj, align 8, !tbaa !39
  store ptr %7, ptr %i.ag, align 8, !tbaa !36
  store i64 %.231522, ptr %7, align 8, !tbaa !40
  store ptr %.211215, ptr %i.ac, align 8, !tbaa !42
  %i.acy = getelementptr inbounds i8, ptr %.211215, i64 -152 ; 2 uses
  %i.acz = call fastcc i32 @check_free_mem(ptr noundef nonnull %0, ptr noundef nonnull %i.acy, i32 noundef 152) #28, !inline_history !80
  %.not.i1676 = icmp eq i32 %i.acz, 0             ; 2 uses
  br i1 %.not.i1676, label %bb.cq, label %JS_StackCheck.exit1678

bb.cq:                                            ; preds = %bb.cp
  store ptr %i.acy, ptr %i.ab, align 8, !tbaa !42
  br label %JS_StackCheck.exit1678

JS_StackCheck.exit1678:                           ; preds = %bb.cp, %bb.cq
  %i.ada = load i64, ptr %7, align 8, !tbaa !40   ; 2 uses
  %i.adb = load i64, ptr %6, align 8, !tbaa !40   ; 2 uses
  %i.adc = load i64, ptr %5, align 8, !tbaa !40   ; 2 uses
  %i.add = load ptr, ptr %i.ah, align 8, !tbaa !39
  store ptr %i.add, ptr %i.ag, align 8, !tbaa !36
  br i1 %.not.i1676, label %.thread1943, label %.thread1840

.thread1943:                                      ; preds = %JS_StackCheck.exit1678
  %i.ade = ptrtoaddr ptr %.391403 to i64
  %i.adf = ptrtoaddr ptr %.351352 to i64
  %i.adg = sub i64 %i.ade, %i.adf
  %i.adh = ptrtoaddr ptr %.381452 to i64
  %reass.sub2182 = sub i64 %i.adh, %.231490
  %i.adi = add i64 %i.adb, -1
  %i.adj = inttoptr i64 %i.adi to ptr
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  %i.adl = shl i64 %reass.sub2182, 32
  %sext1562 = add i64 %i.adl, -30064771072
  %i.adm = ashr exact i64 %sext1562, 32
  %i.adn = getelementptr inbounds i8, ptr %i.adk, i64 %i.adm
  %i.ado = add i64 %i.ada, -1
  %i.adp = inttoptr i64 %i.ado to ptr             ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8 ; 3 uses
  %i.adr = load i64, ptr %i.adp, align 8
  %i.ads = lshr i64 %i.adr, 7
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.ads
  %sext1563 = shl i64 %i.adg, 32
  %i.adu = ashr exact i64 %sext1563, 32
  %i.adv = getelementptr inbounds i8, ptr %i.adq, i64 %i.adu
  %i.adw = add i64 %i.adc, -1
  %i.adx = inttoptr i64 %i.adw to ptr
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  br label %bb.cr

bb.cr:                                            ; preds = %.thread1943, %bb.co
  %.251524 = phi i64 [ %i.ada, %.thread1943 ], [ %.231522, %bb.co ]
  %.251492 = phi i64 [ %i.adb, %.thread1943 ], [ %.231490, %bb.co ] ; 2 uses
  %.421456 = phi ptr [ %i.adn, %.thread1943 ], [ %.381452, %bb.co ] ; 3 uses
  %.431407 = phi ptr [ %i.adv, %.thread1943 ], [ %.391403, %bb.co ] ; 2 uses
  %.391356 = phi ptr [ %i.adq, %.thread1943 ], [ %.351352, %bb.co ] ; 2 uses
  %.391309 = phi ptr [ %i.ady, %.thread1943 ], [ %.351305, %bb.co ]
  %.391261 = phi ptr [ %i.adt, %.thread1943 ], [ %.351257, %bb.co ]
  %.251144 = phi i64 [ %i.adc, %.thread1943 ], [ %.231142, %bb.co ]
  %i.adz = and i8 %i.an, -3
  %or.cond27 = icmp eq i8 %i.adz, 24              ; 2 uses
  %i.aea = sext i32 %.val1635 to i64
  %i.aeb = getelementptr inbounds i8, ptr %.421456, i64 %i.aea ; 2 uses
  %.431457 = select i1 %or.cond27, ptr %.421456, ptr %i.aeb
  %.01109 = select i1 %or.cond27, ptr %i.aeb, ptr %.421456
  %i.aec = getelementptr inbounds i8, ptr %.211215, i64 -24 ; 3 uses
  %i.aed = ptrtoaddr ptr %.01109 to i64
  %reass.sub2183 = sub i64 %i.aed, %.251492
  %i.aee = shl i64 %reass.sub2183, 3
  %i.aef = add i64 %i.aee, -56
  store i64 %i.aef, ptr %i.aec, align 8, !tbaa !46
  %i.aeg = ptrtoaddr ptr %.431407 to i64
  %i.aeh = ptrtoaddr ptr %.391356 to i64
  %i.aei = getelementptr inbounds i8, ptr %.211215, i64 -16
  %i.aej = ptrtoaddr ptr %.01184 to i64
  %i.aek = sub i64 %i.aej, %i.ak
  %12 = sub i64 %i.aeg, %i.aeh
  %13 = trunc i64 %i.aek to i32
  %i.ael = trunc i64 %12 to i32
  %i.aem = insertelement <2 x i32> poison, i32 %i.ael, i64 0
  %i.aen = insertelement <2 x i32> %i.aem, i32 %13, i64 1
  %i.aeo = shl <2 x i32> %i.aen, splat (i32 1)
  %i.aep = sext <2 x i32> %i.aeo to <2 x i64>
  store <2 x i64> %i.aep, ptr %i.aei, align 8, !tbaa !46
  br label %is_line_terminator.exit.thread.backedge

select.unfold1950:                                ; preds = %bb.ck
  %i.aeq = ptrtoaddr ptr %.391403 to i64
  %i.aer = ptrtoaddr ptr %.351352 to i64
  %i.aes = sub i64 %i.aeq, %i.aer
  %i.aet = ptrtoaddr ptr %i.aca to i64
  %reass.sub2184 = sub i64 %i.aet, %.231490
  %i.aeu = add i64 %i.ach, -1
  %i.aev = inttoptr i64 %i.aeu to ptr
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %i.aex = shl i64 %reass.sub2184, 32
  %sext1565 = add i64 %i.aex, -30064771072
  %i.aey = ashr exact i64 %sext1565, 32
  %i.aez = getelementptr inbounds i8, ptr %i.aew, i64 %i.aey
  %i.afa = add i64 %i.acg, -1
  %i.afb = inttoptr i64 %i.afa to ptr             ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 8 ; 3 uses
  %i.afd = load i64, ptr %i.afb, align 8
  %i.afe = lshr i64 %i.afd, 7
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afe
  %sext1566 = shl i64 %i.aes, 32
  %i.afg = ashr exact i64 %sext1566, 32
  %i.afh = getelementptr inbounds i8, ptr %i.afc, i64 %i.afg
  %i.afi = add i64 %i.aci, -1
  %i.afj = inttoptr i64 %i.afi to ptr
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  br label %is_line_terminator.exit.thread.backedge

bb.cs:                                            ; preds = %is_line_terminator.exit.thread
  %i.afl = load i8, ptr %i.am, align 1, !tbaa !51
  %i.afm = zext i8 %i.afl to i32                  ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %.01414, i64 2 ; 3 uses
  %i.afo = ptrtoaddr ptr %.01364 to i64
  %i.afp = ptrtoaddr ptr %.01317 to i64
  %i.afq = sub i64 %i.afo, %i.afp                 ; 2 uses
  %i.afr = trunc i64 %i.afq to i32
  %i.afs = icmp ult ptr %.01194, %.01184
  br i1 %i.afs, label %.lr.ph2106, label %._crit_edge2107

.lr.ph2106:                                       ; preds = %bb.cs
  %i.aft = add nuw nsw i32 %i.af, %i.afm          ; 2 uses
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cu
  %i.afu = getelementptr inbounds nuw i8, ptr %.011072104, i64 16 ; 2 uses
  %i.afv = icmp ult ptr %i.afu, %.01184
  br i1 %i.afv, label %bb.cu, label %._crit_edge2107

bb.cu:                                            ; preds = %.lr.ph2106, %bb.ct
  %.011072104 = phi ptr [ %.01194, %.lr.ph2106 ], [ %i.afu, %bb.ct ] ; 2 uses
  %i.afw = load i64, ptr %.011072104, align 8, !tbaa !46
  %i.afx = trunc i64 %i.afw to i32
  %i.afy = ashr i32 %i.afx, 1
  %i.afz = icmp eq i32 %i.afy, %i.aft
  br i1 %i.afz, label %.thread1996.loopexit, label %bb.ct

._crit_edge2107:                                  ; preds = %bb.ct, %bb.cs
  %i.aga = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.agb = ptrtoaddr ptr %.01194 to i64
  %i.agc = ptrtoaddr ptr %i.aga to i64
  %i.agd = sub i64 %i.agb, %i.agc
  %i.age = icmp slt i64 %i.agd, 9
  br i1 %i.age, label %bb.cv, label %bb.cx, !prof !67

bb.cv:                                            ; preds = %._crit_edge2107
  %i.agf = load ptr, ptr %i.ag, align 8, !tbaa !36
  store ptr %i.agf, ptr %i.ah, align 8, !tbaa !39
  store i64 %.01119, ptr %5, align 8, !tbaa !40
  store ptr %5, ptr %i.ai, align 8, !tbaa !39
  store i64 %.01467, ptr %6, align 8, !tbaa !40
  store ptr %6, ptr %i.aj, align 8, !tbaa !39
  store ptr %7, ptr %i.ag, align 8, !tbaa !36
  store i64 %.01499, ptr %7, align 8, !tbaa !40
  store ptr %.01194, ptr %i.ac, align 8, !tbaa !42
  %i.agg = getelementptr inbounds i8, ptr %.01194, i64 -144 ; 2 uses
  %i.agh = call fastcc i32 @check_free_mem(ptr noundef nonnull %0, ptr noundef nonnull %i.agg, i32 noundef 144) #28, !inline_history !80
  %.not.i1679 = icmp eq i32 %i.agh, 0             ; 2 uses
  br i1 %.not.i1679, label %bb.cw, label %JS_StackCheck.exit1681

bb.cw:                                            ; preds = %bb.cv
  store ptr %i.agg, ptr %i.ab, align 8, !tbaa !42
  br label %JS_StackCheck.exit1681

JS_StackCheck.exit1681:                           ; preds = %bb.cv, %bb.cw
  %i.agi = load i64, ptr %7, align 8, !tbaa !40   ; 2 uses
  %i.agj = load i64, ptr %6, align 8, !tbaa !40   ; 2 uses
  %i.agk = load i64, ptr %5, align 8, !tbaa !40   ; 2 uses
  %i.agl = load ptr, ptr %i.ah, align 8, !tbaa !39
  store ptr %i.agl, ptr %i.ag, align 8, !tbaa !36
  br i1 %.not.i1679, label %.thread1989, label %.thread1840

.thread1989:                                      ; preds = %JS_StackCheck.exit1681
  %i.agm = ptrtoaddr ptr %i.afn to i64
  %reass.sub = sub i64 %i.agm, %.01467
  %i.agn = add i64 %i.agj, -1
  %i.ago = inttoptr i64 %i.agn to ptr
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  %i.agq = shl i64 %reass.sub, 32
  %sext = add i64 %i.agq, -30064771072
  %i.agr = ashr exact i64 %sext, 32
  %i.ags = getelementptr inbounds i8, ptr %i.agp, i64 %i.agr
  %i.agt = add i64 %i.agi, -1
  %i.agu = inttoptr i64 %i.agt to ptr             ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8 ; 3 uses
  %i.agw = load i64, ptr %i.agu, align 8
  %i.agx = lshr i64 %i.agw, 7
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 %i.agx
  %sext1557 = shl i64 %i.afq, 32
  %i.agz = ashr exact i64 %sext1557, 32
  %i.aha = getelementptr inbounds i8, ptr %i.agv, i64 %i.agz
  %i.ahb = add i64 %i.agk, -1
  %i.ahc = inttoptr i64 %i.ahb to ptr
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  br label %bb.cx

bb.cx:                                            ; preds = %.thread1989, %._crit_edge2107
  %.281527 = phi i64 [ %i.agi, %.thread1989 ], [ %.01499, %._crit_edge2107 ]
  %.281495 = phi i64 [ %i.agj, %.thread1989 ], [ %.01467, %._crit_edge2107 ]
  %.471461 = phi ptr [ %i.ags, %.thread1989 ], [ %i.afn, %._crit_edge2107 ]
  %.471411 = phi ptr [ %i.aha, %.thread1989 ], [ %.01364, %._crit_edge2107 ]
  %.431360 = phi ptr [ %i.agv, %.thread1989 ], [ %.01317, %._crit_edge2107 ]
  %.431313 = phi ptr [ %i.ahd, %.thread1989 ], [ %.01270, %._crit_edge2107 ] ; 2 uses
  %.431265 = phi ptr [ %i.agy, %.thread1989 ], [ %.01222, %._crit_edge2107 ]
  %.281147 = phi i64 [ %i.agk, %.thread1989 ], [ %.01119, %._crit_edge2107 ]
  %i.ahe = add nuw nsw i32 %i.af, %i.afm          ; 2 uses
  %i.ahf = shl nuw nsw i32 %i.ahe, 1
  %i.ahg = zext nneg i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds i8, ptr %.01194, i64 -16 ; 2 uses
  store i64 %i.ahg, ptr %i.ahh, align 8, !tbaa !46
  %i.ahi = zext nneg i32 %i.ahe to i64            ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %.431313, i64 %i.ahi
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !45
  %i.ahl = shl i32 %i.ahk, 1
  %i.ahm = sext i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds i8, ptr %.01194, i64 -8
  store i64 %i.ahm, ptr %i.ahn, align 8, !tbaa !46
  br label %.thread1996

.thread1996.loopexit:                             ; preds = %bb.cu
  %.pre2243 = zext nneg i32 %i.aft to i64
  br label %.thread1996

.thread1996:                                      ; preds = %.thread1996.loopexit, %bb.cx
  %.pre-phi2244 = phi i64 [ %.pre2243, %.thread1996.loopexit ], [ %i.ahi, %bb.cx ]
  %.291528 = phi i64 [ %.01499, %.thread1996.loopexit ], [ %.281527, %bb.cx ]
  %.291496 = phi i64 [ %.01467, %.thread1996.loopexit ], [ %.281495, %bb.cx ]
  %.481462 = phi ptr [ %i.afn, %.thread1996.loopexit ], [ %.471461, %bb.cx ]
  %.481412 = phi ptr [ %.01364, %.thread1996.loopexit ], [ %.471411, %bb.cx ]
  %.441361 = phi ptr [ %.01317, %.thread1996.loopexit ], [ %.431360, %bb.cx ]
  %.441314 = phi ptr [ %.01270, %.thread1996.loopexit ], [ %.431313, %bb.cx ] ; 2 uses
  %.441266 = phi ptr [ %.01222, %.thread1996.loopexit ], [ %.431265, %bb.cx ]
  %.251219 = phi ptr [ %.01194, %.thread1996.loopexit ], [ %i.ahh, %bb.cx ]
  %.291148 = phi i64 [ %.01119, %.thread1996.loopexit ], [ %.281147, %bb.cx ]
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.441314, i64 %.pre-phi2244
  store i32 %i.afr, ptr %i.aho, align 4, !tbaa !45
  br label %is_line_terminator.exit.thread.backedge

bb.cy:                                            ; preds = %is_line_terminator.exit.thread
  %i.ahp = load i8, ptr %i.am, align 1, !tbaa !51
  %i.ahq = zext i8 %i.ahp to i32
  %i.ahr = getelementptr inbounds nuw i8, ptr %.01414, i64 2
  %i.ahs = add nuw nsw i32 %i.af, %i.ahq
  %i.aht = zext nneg i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.01270, i64 %i.aht
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !45
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = ptrtoaddr ptr %.01364 to i64
  %i.ahy = ptrtoaddr ptr %.01317 to i64
  %i.ahz = sub i64 %i.ahx, %i.ahy
  %i.aia = icmp eq i64 %i.ahz, %i.ahw
  br i1 %i.aia, label %is_line_terminator.exit1654.thread, label %is_line_terminator.exit.thread.backedge

bb.cz:                                            ; preds = %is_line_terminator.exit.thread, %is_line_terminator.exit.thread
  %i.aib = icmp eq i8 %i.an, 28
  %i.aic = zext i1 %i.aib to i32
  %i.aid = icmp eq ptr %.01364, %.01317
  br i1 %i.aid, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.01364.pn = phi ptr [ %.01364, %bb.da ], [ %.01104, %bb.db ]
  %.01104 = getelementptr inbounds i8, ptr %.01364.pn, i64 -1 ; 4 uses
  %i.aie = load i8, ptr %.01104, align 1, !tbaa !51 ; 2 uses
  %i.aif = icmp slt i8 %i.aie, -64
  br i1 %i.aif, label %bb.db, label %bb.dc, !llvm.loop !352

bb.dc:                                            ; preds = %bb.db
  %i.aig = icmp sgt i8 %i.aie, -1
  br i1 %i.aig, label %bb.dd, label %bb.de, !prof !69

bb.dd:                                            ; preds = %bb.dc
  store i64 1, ptr %i.f, align 8, !tbaa !46
  %i.aih = load i8, ptr %.01104, align 1, !tbaa !51
end_hunk_1
