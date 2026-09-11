Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parser?download=true
inline.NumInlined: 234
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@json_parse_number:bb.a
  %scevgep.i68 = getelementptr i8, ptr %.lcssa159, i64 %.lcssa155
  br label %peek.exit.i69

.lr.ph178:                                        ; preds = %bb.h, %bb.l
  %i.di = phi ptr [ %i.gi, %bb.l ], [ %i.de, %bb.h ] ; 4 uses
  %.7177 = phi i64 [ %i.gh, %bb.l ], [ %.6, %bb.h ] ; 3 uses
  %.0.copyload.i75 = load i64, ptr %i.di, align 1 ; 4 uses
  %i.dj = and i64 %.0.copyload.i75, -1085102592571150096
  %i.dk = add i64 %.0.copyload.i75, 434041037028460038
  %i.dl = lshr i64 %i.dk, 4
  %i.dm = and i64 %i.dl, 1085102592571150095
  %i.dn = or disjoint i64 %i.dm, %i.dj            ; 2 uses
  %i.do = icmp eq i64 %i.dn, 3689348814741910323
  br i1 %i.do, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph178
  %i.dp = xor i64 %i.dn, 3689348814741910323
  %i.dq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dp, i1 true) ; 2 uses
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = lshr i32 %i.dr, 3                       ; 2 uses
  %i.dt = icmp samesign ugt i64 %i.dq, 31
  br i1 %i.dt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.du = mul i64 %.7177, 10000
  %i.dv = trunc i64 %.0.copyload.i75 to i32
  %i.dw = add i32 %i.dv, -808464432               ; 2 uses
  %i.dx = mul i32 %i.dw, 10
  %i.dy = lshr i32 %i.dw, 8
  %i.dz = add i32 %i.dx, %i.dy                    ; 2 uses
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.ea, 100
  %i.ec = lshr i32 %i.dz, 16
  %i.ed = and i32 %i.ec, 255
  %i.ee = add nuw nsw i32 %i.eb, %i.ed
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = add i64 %i.du, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  store ptr %i.eh, ptr %i.b, align 8, !tbaa !55
  %i.ei = add nsw i32 %i.ds, -4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.10 = phi i64 [ %i.eg, %bb.j ], [ %.7177, %bb.i ] ; 3 uses
  %i.ej = phi ptr [ %i.eh, %bb.j ], [ %i.di, %bb.i ] ; 3 uses
  %.0.i76 = phi i32 [ %i.ei, %bb.j ], [ %i.ds, %bb.i ] ; 5 uses
  %.not3946.i77 = icmp eq i32 %.0.i76, 0
  br i1 %.not3946.i77, label %.loopexit.loopexit.i82, label %.lr.ph.i78.preheader

.lr.ph.i78.preheader:                             ; preds = %bb.k
  %xtraiter363 = and i32 %.0.i76, 3               ; 2 uses
  %lcmp.mod364.not = icmp eq i32 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %.lr.ph.i78.prol.loopexit, label %.lr.ph.i78.prol

.lr.ph.i78.prol:                                  ; preds = %.lr.ph.i78.preheader, %.lr.ph.i78.prol
  %i.ek = phi ptr [ %i.es, %.lr.ph.i78.prol ], [ %i.ej, %.lr.ph.i78.preheader ] ; 2 uses
  %i.el = phi i64 [ %i.eq, %.lr.ph.i78.prol ], [ %.10, %.lr.ph.i78.preheader ]
  %.147.i80.prol = phi i32 [ %i.er, %.lr.ph.i78.prol ], [ %.0.i76, %.lr.ph.i78.preheader ]
  %prol.iter365 = phi i32 [ %prol.iter365.next, %.lr.ph.i78.prol ], [ 0, %.lr.ph.i78.preheader ]
  %i.em = mul i64 %i.el, 10
  %i.en = load i8, ptr %i.ek, align 1, !tbaa !42
  %i.eo = sext i8 %i.en to i64
  %i.ep = add i64 %i.em, -48
  %i.eq = add i64 %i.ep, %i.eo                    ; 3 uses
  %i.er = add nsw i32 %.147.i80.prol, -1          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 4 uses
  store ptr %i.es, ptr %i.b, align 8, !tbaa !55
  %prol.iter365.next = add i32 %prol.iter365, 1   ; 2 uses
  %prol.iter365.cmp.not = icmp eq i32 %prol.iter365.next, %xtraiter363
  br i1 %prol.iter365.cmp.not, label %.lr.ph.i78.prol.loopexit, label %.lr.ph.i78.prol, !llvm.loop !96

.lr.ph.i78.prol.loopexit:                         ; preds = %.lr.ph.i78.prol, %.lr.ph.i78.preheader
  %.lcssa339.unr = phi i64 [ poison, %.lr.ph.i78.preheader ], [ %i.eq, %.lr.ph.i78.prol ]
  %.lcssa338.unr = phi ptr [ poison, %.lr.ph.i78.preheader ], [ %i.es, %.lr.ph.i78.prol ]
  %.unr366 = phi ptr [ %i.ej, %.lr.ph.i78.preheader ], [ %i.es, %.lr.ph.i78.prol ]
  %.unr367 = phi i64 [ %.10, %.lr.ph.i78.preheader ], [ %i.eq, %.lr.ph.i78.prol ]
  %.147.i80.unr = phi i32 [ %.0.i76, %.lr.ph.i78.preheader ], [ %i.er, %.lr.ph.i78.prol ]
  %i.et = icmp ult i32 %.0.i76, 4
  br i1 %i.et, label %.loopexit.loopexit.i82, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78
  %i.eu = phi ptr [ %i.fu, %.lr.ph.i78 ], [ %.unr366, %.lr.ph.i78.prol.loopexit ] ; 5 uses
  %i.ev = phi i64 [ %i.fs, %.lr.ph.i78 ], [ %.unr367, %.lr.ph.i78.prol.loopexit ]
  %.147.i80 = phi i32 [ %i.ft, %.lr.ph.i78 ], [ %.147.i80.unr, %.lr.ph.i78.prol.loopexit ]
  %i.ew = mul i64 %i.ev, 10
  %i.ex = load i8, ptr %i.eu, align 1, !tbaa !42
  %i.ey = sext i8 %i.ex to i64
  %i.ez = add i64 %i.ew, -48
  %i.fa = add i64 %i.ez, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  store ptr %i.fb, ptr %i.b, align 8, !tbaa !55
  %i.fc = mul i64 %i.fa, 10
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !42
  %i.fe = sext i8 %i.fd to i64
  %i.ff = add i64 %i.fc, -48
  %i.fg = add i64 %i.ff, %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 2 ; 2 uses
  store ptr %i.fh, ptr %i.b, align 8, !tbaa !55
  %i.fi = mul i64 %i.fg, 10
  %i.fj = load i8, ptr %i.fh, align 1, !tbaa !42
  %i.fk = sext i8 %i.fj to i64
  %i.fl = add i64 %i.fi, -48
  %i.fm = add i64 %i.fl, %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 3 ; 2 uses
  store ptr %i.fn, ptr %i.b, align 8, !tbaa !55
  %i.fo = mul i64 %i.fm, 10
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !42
  %i.fq = sext i8 %i.fp to i64
  %i.fr = add i64 %i.fo, -48
  %i.fs = add i64 %i.fr, %i.fq                    ; 2 uses
  %i.ft = add nsw i32 %.147.i80, -4               ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 3 uses
  store ptr %i.fu, ptr %i.b, align 8, !tbaa !55
  %.not39.i81.3 = icmp eq i32 %i.ft, 0
  br i1 %.not39.i81.3, label %.loopexit.loopexit.i82, label %.lr.ph.i78

bb.l:                                             ; preds = %.lr.ph178
  %i.fv = mul i64 %.7177, 100000000
  %i.fw = add i64 %.0.copyload.i75, -3472328296227680304 ; 2 uses
  %i.fx = mul i64 %i.fw, 10
  %i.fy = lshr i64 %i.fw, 8
  %i.fz = add i64 %i.fx, %i.fy                    ; 2 uses
  %i.ga = and i64 %i.fz, 1095216660735
  %i.gb = mul i64 %i.ga, 4294967296000100
  %i.gc = lshr i64 %i.fz, 16
  %i.gd = and i64 %i.gc, 1095216660735
  %i.ge = mul i64 %i.gd, 42949672960001
  %i.gf = add i64 %i.ge, %i.gb
  %i.gg = lshr i64 %i.gf, 32
  %i.gh = add i64 %i.gg, %i.fv                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  store ptr %i.gi, ptr %i.b, align 8, !tbaa !55
  %i.gj = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gk = sub i64 %i.f, %i.gj                     ; 2 uses
  %i.gl = icmp ugt i64 %i.gk, 7
  br i1 %i.gl, label %.lr.ph178, label %.preheader.i64

peek.exit.i69:                                    ; preds = %bb.m, %peek.exit.preheader.i67
  %.8 = phi i64 [ %.7.lcssa, %peek.exit.preheader.i67 ], [ %i.gs, %bb.m ] ; 2 uses
  %.val51.i70 = phi ptr [ %.lcssa159, %peek.exit.preheader.i67 ], [ %i.gt, %bb.m ] ; 4 uses
  %i.gm = load i8, ptr %.val51.i70, align 1, !tbaa !42
  %i.gn = sext i8 %i.gm to i32
  %i.go = add nsw i32 %i.gn, -48                  ; 2 uses
  %i.gp = icmp ugt i32 %i.go, 9
  br i1 %i.gp, label %peek.exit.thread.loopexit.i72, label %bb.m

bb.m:                                             ; preds = %peek.exit.i69
  %i.gq = mul i64 %.8, 10
  %i.gr = zext nneg i32 %i.go to i64
  %i.gs = add i64 %i.gq, %i.gr                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val51.i70, i64 1 ; 4 uses
  store ptr %i.gt, ptr %i.b, align 8, !tbaa !55
  %exitcond.not.i71 = icmp eq ptr %i.gt, %.val42.i
  br i1 %exitcond.not.i71, label %peek.exit.thread.loopexit.i72, label %peek.exit.i69, !prof !98

peek.exit.thread.loopexit.i72:                    ; preds = %bb.m, %peek.exit.i69
  %.val58230 = phi ptr [ %.val51.i70, %peek.exit.i69 ], [ %i.gt, %bb.m ]
  %.9 = phi i64 [ %.8, %peek.exit.i69 ], [ %i.gs, %bb.m ]
  %.val.lcssa.ph.i73 = phi ptr [ %.val51.i70, %peek.exit.i69 ], [ %scevgep.i68, %bb.m ]
  %.pre.i74 = ptrtoint ptr %.val.lcssa.ph.i73 to i64
  br label %json_parse_digits.exit83

.loopexit.loopexit.i82:                           ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78, %bb.k
  %.11 = phi i64 [ %.10, %bb.k ], [ %.lcssa339.unr, %.lr.ph.i78.prol.loopexit ], [ %i.fs, %.lr.ph.i78 ]
  %i.gu = phi ptr [ %i.ej, %bb.k ], [ %.lcssa338.unr, %.lr.ph.i78.prol.loopexit ], [ %i.fu, %.lr.ph.i78 ] ; 2 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  br label %json_parse_digits.exit83

json_parse_digits.exit83:                         ; preds = %.preheader.i64, %peek.exit.thread.loopexit.i72, %.loopexit.loopexit.i82
  %.val58229 = phi ptr [ %i.gu, %.loopexit.loopexit.i82 ], [ %.val58230, %peek.exit.thread.loopexit.i72 ], [ %.lcssa159, %.preheader.i64 ]
  %.12 = phi i64 [ %.11, %.loopexit.loopexit.i82 ], [ %.9, %peek.exit.thread.loopexit.i72 ], [ %.7.lcssa, %.preheader.i64 ]
  %.sink71.i66 = phi i64 [ %i.gv, %.loopexit.loopexit.i82 ], [ %.pre.i74, %peek.exit.thread.loopexit.i72 ], [ %.lcssa157, %.preheader.i64 ]
  %i.gw = sub i64 %.sink71.i66, %i.df
  %i.gx = trunc i64 %i.gw to i32                  ; 2 uses
  %.not = icmp eq i32 %i.gx, 0
  br i1 %.not, label %bb.n, label %bb.o, !prof !64

bb.n:                                             ; preds = %json_parse_digits.exit83
  tail call fastcc void @raise_parse_error_at(ptr noundef nonnull @.str.50, ptr noundef %0, ptr noundef %3) #24
  unreachable

bb.o:                                             ; preds = %json_parse_digits.exit83
  %i.gy = add nsw i32 %i.gx, %i.cy
  br label %peek.exit.thread

peek.exit.thread:                                 ; preds = %bb.g, %bb.o, %peek.exit
  %i.gz = phi ptr [ %.val60, %peek.exit ], [ %.val58229, %bb.o ], [ %.val60, %bb.g ] ; 6 uses
  %i.ha = phi i1 [ true, %peek.exit ], [ false, %bb.o ], [ true, %bb.g ]
  %.0131 = phi i64 [ %.6, %peek.exit ], [ %.12, %bb.o ], [ %.6, %bb.g ] ; 12 uses
  %.049 = phi i32 [ -1, %peek.exit ], [ %i.cy, %bb.o ], [ -1, %bb.g ] ; 2 uses
  %.048 = phi i32 [ %i.cy, %peek.exit ], [ %i.gy, %bb.o ], [ %i.cy, %bb.g ] ; 4 uses
  %.not.i84 = icmp ult ptr %i.gz, %.val42.i
  br i1 %.not.i84, label %bb.p, label %peek.exit86, !prof !23

bb.p:                                             ; preds = %peek.exit.thread
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !42
  %i.hc = sext i8 %i.hb to i32
  br label %peek.exit86

peek.exit86:                                      ; preds = %peek.exit.thread, %bb.p
  %.0.i85 = phi i32 [ %i.hc, %bb.p ], [ 0, %peek.exit.thread ] ; 3 uses
  %i.hd = add nsw i32 %.0.i85, -91
  %i.he = icmp ult i32 %i.hd, -26
  %4 = or i32 %.0.i85, 32
  %5 = select i1 %i.he, i32 %.0.i85, i32 %4
  %i.hf = icmp eq i32 %5, 101
  br i1 %i.hf, label %bb.q, label %bb.y

bb.q:                                             ; preds = %peek.exit86
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 5 uses
  store ptr %i.hg, ptr %i.b, align 8, !tbaa !55
  %.not.i87 = icmp ult ptr %i.hg, %.val42.i
  br i1 %.not.i87, label %peek.exit89, label %peek.exit89.thread, !prof !23

peek.exit89:                                      ; preds = %bb.q
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !42  ; 2 uses
  switch i8 %i.hh, label %peek.exit89.thread [
    i8 45, label %bb.r
    i8 43, label %bb.r
  ]

bb.r:                                             ; preds = %peek.exit89, %peek.exit89
  %i.hi = icmp eq i8 %i.hh, 45
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 2 ; 2 uses
  store ptr %i.hj, ptr %i.b, align 8, !tbaa !55
  br label %peek.exit89.thread

peek.exit89.thread:                               ; preds = %bb.q, %peek.exit89, %bb.r
  %i.hk = phi ptr [ %i.hj, %bb.r ], [ %i.hg, %peek.exit89 ], [ %i.hg, %bb.q ] ; 3 uses
  %.0 = phi i1 [ %i.hi, %bb.r ], [ false, %peek.exit89 ], [ false, %bb.q ]
  %i.hl = ptrtoint ptr %i.hk to i64               ; 3 uses
  %i.hm = sub i64 %i.f, %i.hl                     ; 2 uses
  %i.hn = icmp ugt i64 %i.hm, 7
  br i1 %i.hn, label %.lr.ph184, label %.preheader.i91

.preheader.i91:                                   ; preds = %bb.v, %peek.exit89.thread
  %.0129.lcssa = phi i64 [ 0, %peek.exit89.thread ], [ %i.kn, %bb.v ] ; 2 uses
  %.lcssa149 = phi ptr [ %i.hk, %peek.exit89.thread ], [ %i.ko, %bb.v ] ; 4 uses
  %.lcssa147 = phi i64 [ %i.hl, %peek.exit89.thread ], [ %i.kp, %bb.v ]
  %.lcssa145 = phi i64 [ %i.hm, %peek.exit89.thread ], [ %i.kq, %bb.v ]
  %.not.i50.i92 = icmp ult ptr %.lcssa149, %.val42.i
  br i1 %.not.i50.i92, label %peek.exit.preheader.i94, label %json_parse_digits.exit110, !prof !58

peek.exit.preheader.i94:                          ; preds = %.preheader.i91
  %scevgep.i95 = getelementptr i8, ptr %.lcssa149, i64 %.lcssa145
  br label %peek.exit.i96

.lr.ph184:                                        ; preds = %peek.exit89.thread, %bb.v
  %i.ho = phi ptr [ %i.ko, %bb.v ], [ %i.hk, %peek.exit89.thread ] ; 4 uses
  %.0129183 = phi i64 [ %i.kn, %bb.v ], [ 0, %peek.exit89.thread ] ; 3 uses
  %.0.copyload.i102 = load i64, ptr %i.ho, align 1 ; 4 uses
  %i.hp = and i64 %.0.copyload.i102, -1085102592571150096
  %i.hq = add i64 %.0.copyload.i102, 434041037028460038
  %i.hr = lshr i64 %i.hq, 4
  %i.hs = and i64 %i.hr, 1085102592571150095
  %i.ht = or disjoint i64 %i.hs, %i.hp            ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 3689348814741910323
  br i1 %i.hu, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph184
  %i.hv = xor i64 %i.ht, 3689348814741910323
  %i.hw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hv, i1 true) ; 2 uses
  %i.hx = trunc nuw nsw i64 %i.hw to i32
  %i.hy = lshr i32 %i.hx, 3                       ; 2 uses
  %i.hz = icmp samesign ugt i64 %i.hw, 31
  br i1 %i.hz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ia = mul i64 %.0129183, 10000
  %i.ib = trunc i64 %.0.copyload.i102 to i32
  %i.ic = add i32 %i.ib, -808464432               ; 2 uses
  %i.id = mul i32 %i.ic, 10
  %i.ie = lshr i32 %i.ic, 8
  %i.if = add i32 %i.id, %i.ie                    ; 2 uses
  %i.ig = and i32 %i.if, 255
  %i.ih = mul nuw nsw i32 %i.ig, 100
  %i.ii = lshr i32 %i.if, 16
  %i.ij = and i32 %i.ii, 255
  %i.ik = add nuw nsw i32 %i.ih, %i.ij
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = add i64 %i.ia, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  store ptr %i.in, ptr %i.b, align 8, !tbaa !55
  %i.io = add nsw i32 %i.hy, -4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3 = phi i64 [ %i.im, %bb.t ], [ %.0129183, %bb.s ] ; 3 uses
  %i.ip = phi ptr [ %i.in, %bb.t ], [ %i.ho, %bb.s ] ; 3 uses
  %.0.i103 = phi i32 [ %i.io, %bb.t ], [ %i.hy, %bb.s ] ; 5 uses
  %.not3946.i104 = icmp eq i32 %.0.i103, 0
  br i1 %.not3946.i104, label %.loopexit.loopexit.i109, label %.lr.ph.i105.preheader

.lr.ph.i105.preheader:                            ; preds = %bb.u
  %xtraiter368 = and i32 %.0.i103, 3              ; 2 uses
  %lcmp.mod369.not = icmp eq i32 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol

.lr.ph.i105.prol:                                 ; preds = %.lr.ph.i105.preheader, %.lr.ph.i105.prol
  %i.iq = phi ptr [ %i.iy, %.lr.ph.i105.prol ], [ %i.ip, %.lr.ph.i105.preheader ] ; 2 uses
  %i.ir = phi i64 [ %i.iw, %.lr.ph.i105.prol ], [ %.3, %.lr.ph.i105.preheader ]
  %.147.i107.prol = phi i32 [ %i.ix, %.lr.ph.i105.prol ], [ %.0.i103, %.lr.ph.i105.preheader ]
  %prol.iter370 = phi i32 [ %prol.iter370.next, %.lr.ph.i105.prol ], [ 0, %.lr.ph.i105.preheader ]
  %i.is = mul i64 %i.ir, 10
  %i.it = load i8, ptr %i.iq, align 1, !tbaa !42
  %i.iu = sext i8 %i.it to i64
  %i.iv = add i64 %i.is, -48
  %i.iw = add i64 %i.iv, %i.iu                    ; 3 uses
  %i.ix = add nsw i32 %.147.i107.prol, -1         ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 1 ; 4 uses
  store ptr %i.iy, ptr %i.b, align 8, !tbaa !55
  %prol.iter370.next = add i32 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i32 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol, !llvm.loop !97

.lr.ph.i105.prol.loopexit:                        ; preds = %.lr.ph.i105.prol, %.lr.ph.i105.preheader
  %.lcssa327.unr = phi i64 [ poison, %.lr.ph.i105.preheader ], [ %i.iw, %.lr.ph.i105.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i105.preheader ], [ %i.iy, %.lr.ph.i105.prol ]
  %.unr371 = phi ptr [ %i.ip, %.lr.ph.i105.preheader ], [ %i.iy, %.lr.ph.i105.prol ]
  %.unr372 = phi i64 [ %.3, %.lr.ph.i105.preheader ], [ %i.iw, %.lr.ph.i105.prol ]
  %.147.i107.unr = phi i32 [ %.0.i103, %.lr.ph.i105.preheader ], [ %i.ix, %.lr.ph.i105.prol ]
  %i.iz = icmp ult i32 %.0.i103, 4
  br i1 %i.iz, label %.loopexit.loopexit.i109, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105
  %i.ja = phi ptr [ %i.ka, %.lr.ph.i105 ], [ %.unr371, %.lr.ph.i105.prol.loopexit ] ; 5 uses
  %i.jb = phi i64 [ %i.jy, %.lr.ph.i105 ], [ %.unr372, %.lr.ph.i105.prol.loopexit ]
  %.147.i107 = phi i32 [ %i.jz, %.lr.ph.i105 ], [ %.147.i107.unr, %.lr.ph.i105.prol.loopexit ]
  %i.jc = mul i64 %i.jb, 10
  %i.jd = load i8, ptr %i.ja, align 1, !tbaa !42
  %i.je = sext i8 %i.jd to i64
  %i.jf = add i64 %i.jc, -48
  %i.jg = add i64 %i.jf, %i.je
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 1 ; 2 uses
  store ptr %i.jh, ptr %i.b, align 8, !tbaa !55
  %i.ji = mul i64 %i.jg, 10
  %i.jj = load i8, ptr %i.jh, align 1, !tbaa !42
  %i.jk = sext i8 %i.jj to i64
  %i.jl = add i64 %i.ji, -48
  %i.jm = add i64 %i.jl, %i.jk
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 2 uses
  store ptr %i.jn, ptr %i.b, align 8, !tbaa !55
  %i.jo = mul i64 %i.jm, 10
  %i.jp = load i8, ptr %i.jn, align 1, !tbaa !42
  %i.jq = sext i8 %i.jp to i64
  %i.jr = add i64 %i.jo, -48
  %i.js = add i64 %i.jr, %i.jq
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ja, i64 3 ; 2 uses
  store ptr %i.jt, ptr %i.b, align 8, !tbaa !55
  %i.ju = mul i64 %i.js, 10
  %i.jv = load i8, ptr %i.jt, align 1, !tbaa !42
  %i.jw = sext i8 %i.jv to i64
  %i.jx = add i64 %i.ju, -48
  %i.jy = add i64 %i.jx, %i.jw                    ; 2 uses
  %i.jz = add nsw i32 %.147.i107, -4              ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 3 uses
  store ptr %i.ka, ptr %i.b, align 8, !tbaa !55
  %.not39.i108.3 = icmp eq i32 %i.jz, 0
  br i1 %.not39.i108.3, label %.loopexit.loopexit.i109, label %.lr.ph.i105

bb.v:                                             ; preds = %.lr.ph184
  %i.kb = mul i64 %.0129183, 100000000
  %i.kc = add i64 %.0.copyload.i102, -3472328296227680304 ; 2 uses
  %i.kd = mul i64 %i.kc, 10
  %i.ke = lshr i64 %i.kc, 8
  %i.kf = add i64 %i.kd, %i.ke                    ; 2 uses
  %i.kg = and i64 %i.kf, 1095216660735
  %i.kh = mul i64 %i.kg, 4294967296000100
  %i.ki = lshr i64 %i.kf, 16
  %i.kj = and i64 %i.ki, 1095216660735
  %i.kk = mul i64 %i.kj, 42949672960001
  %i.kl = add i64 %i.kk, %i.kh
  %i.km = lshr i64 %i.kl, 32
  %i.kn = add i64 %i.km, %i.kb                    ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  store ptr %i.ko, ptr %i.b, align 8, !tbaa !55
  %i.kp = ptrtoint ptr %i.ko to i64               ; 2 uses
  %i.kq = sub i64 %i.f, %i.kp                     ; 2 uses
  %i.kr = icmp ugt i64 %i.kq, 7
  br i1 %i.kr, label %.lr.ph184, label %.preheader.i91

peek.exit.i96:                                    ; preds = %bb.w, %peek.exit.preheader.i94
  %.1130 = phi i64 [ %.0129.lcssa, %peek.exit.preheader.i94 ], [ %i.ky, %bb.w ] ; 2 uses
  %.val51.i97 = phi ptr [ %.lcssa149, %peek.exit.preheader.i94 ], [ %i.kz, %bb.w ] ; 4 uses
  %i.ks = load i8, ptr %.val51.i97, align 1, !tbaa !42
  %i.kt = sext i8 %i.ks to i32
  %i.ku = add nsw i32 %i.kt, -48                  ; 2 uses
  %i.kv = icmp ugt i32 %i.ku, 9
  br i1 %i.kv, label %peek.exit.thread.loopexit.i99, label %bb.w

bb.w:                                             ; preds = %peek.exit.i96
  %i.kw = mul i64 %.1130, 10
  %i.kx = zext nneg i32 %i.ku to i64
  %i.ky = add i64 %i.kw, %i.kx                    ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.val51.i97, i64 1 ; 3 uses
  store ptr %i.kz, ptr %i.b, align 8, !tbaa !55
  %exitcond.not.i98 = icmp eq ptr %i.kz, %.val42.i
  br i1 %exitcond.not.i98, label %peek.exit.thread.loopexit.i99, label %peek.exit.i96, !prof !98

peek.exit.thread.loopexit.i99:                    ; preds = %bb.w, %peek.exit.i96
  %i.la = phi ptr [ %.val51.i97, %peek.exit.i96 ], [ %.val42.i, %bb.w ]
  %.2 = phi i64 [ %.1130, %peek.exit.i96 ], [ %i.ky, %bb.w ]
  %.val.lcssa.ph.i100 = phi ptr [ %.val51.i97, %peek.exit.i96 ], [ %scevgep.i95, %bb.w ]
  %.pre.i101 = ptrtoint ptr %.val.lcssa.ph.i100 to i64
  br label %json_parse_digits.exit110
end_hunk_0
