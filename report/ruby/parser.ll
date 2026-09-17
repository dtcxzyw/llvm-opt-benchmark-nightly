Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parser?download=true
inline.NumInlined: 234
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@json_parse_number:bb.a
  %i.dh = icmp ugt i64 %i.dg, 7
  br i1 %i.dh, label %.lr.ph178, label %.preheader.i64

.preheader.i64:                                   ; preds = %bb.l, %bb.h
  %.7.lcssa = phi i64 [ %.6, %bb.h ], [ %i.gh, %bb.l ] ; 2 uses
  %.lcssa159 = phi ptr [ %i.de, %bb.h ], [ %i.gi, %bb.l ] ; 4 uses
  %.lcssa157 = phi i64 [ %i.df, %bb.h ], [ %i.gj, %bb.l ]
  %.lcssa155 = phi i64 [ %i.dg, %bb.h ], [ %i.gk, %bb.l ]
  %.not.i50.i65 = icmp ult ptr %.lcssa159, %.val42.i
  br i1 %.not.i50.i65, label %peek.exit.preheader.i67, label %json_parse_digits.exit83, !prof !58

peek.exit.preheader.i67:                          ; preds = %.preheader.i64
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
  %.0131 = phi i64 [ %.6, %peek.exit ], [ %.12, %bb.o ], [ %.6, %bb.g ] ; 14 uses
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
  %i.hf = or i32 %.0.i85, 32
  %i.hg = select i1 %i.he, i32 %.0.i85, i32 %i.hf
  %i.hh = icmp eq i32 %i.hg, 101
  br i1 %i.hh, label %bb.q, label %bb.y

bb.q:                                             ; preds = %peek.exit86
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 5 uses
  store ptr %i.hi, ptr %i.b, align 8, !tbaa !55
  %.not.i87 = icmp ult ptr %i.hi, %.val42.i
  br i1 %.not.i87, label %peek.exit89, label %peek.exit89.thread, !prof !23

peek.exit89:                                      ; preds = %bb.q
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !42  ; 2 uses
  switch i8 %i.hj, label %peek.exit89.thread [
    i8 45, label %bb.r
    i8 43, label %bb.r
  ]

bb.r:                                             ; preds = %peek.exit89, %peek.exit89
  %i.hk = icmp eq i8 %i.hj, 45
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gz, i64 2 ; 2 uses
  store ptr %i.hl, ptr %i.b, align 8, !tbaa !55
  br label %peek.exit89.thread

peek.exit89.thread:                               ; preds = %bb.q, %peek.exit89, %bb.r
  %i.hm = phi ptr [ %i.hl, %bb.r ], [ %i.hi, %peek.exit89 ], [ %i.hi, %bb.q ] ; 3 uses
  %.0 = phi i1 [ %i.hk, %bb.r ], [ false, %peek.exit89 ], [ false, %bb.q ]
  %i.hn = ptrtoint ptr %i.hm to i64               ; 3 uses
  %i.ho = sub i64 %i.f, %i.hn                     ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, 7
  br i1 %i.hp, label %.lr.ph184, label %.preheader.i91

.preheader.i91:                                   ; preds = %bb.v, %peek.exit89.thread
  %.0129.lcssa = phi i64 [ 0, %peek.exit89.thread ], [ %i.kp, %bb.v ] ; 2 uses
  %.lcssa149 = phi ptr [ %i.hm, %peek.exit89.thread ], [ %i.kq, %bb.v ] ; 4 uses
  %.lcssa147 = phi i64 [ %i.hn, %peek.exit89.thread ], [ %i.kr, %bb.v ]
  %.lcssa145 = phi i64 [ %i.ho, %peek.exit89.thread ], [ %i.ks, %bb.v ]
  %.not.i50.i92 = icmp ult ptr %.lcssa149, %.val42.i
  br i1 %.not.i50.i92, label %peek.exit.preheader.i94, label %json_parse_digits.exit110, !prof !58

peek.exit.preheader.i94:                          ; preds = %.preheader.i91
  %scevgep.i95 = getelementptr i8, ptr %.lcssa149, i64 %.lcssa145
  br label %peek.exit.i96

.lr.ph184:                                        ; preds = %peek.exit89.thread, %bb.v
  %i.hq = phi ptr [ %i.kq, %bb.v ], [ %i.hm, %peek.exit89.thread ] ; 4 uses
  %.0129183 = phi i64 [ %i.kp, %bb.v ], [ 0, %peek.exit89.thread ] ; 3 uses
  %.0.copyload.i102 = load i64, ptr %i.hq, align 1 ; 4 uses
  %i.hr = and i64 %.0.copyload.i102, -1085102592571150096
  %i.hs = add i64 %.0.copyload.i102, 434041037028460038
  %i.ht = lshr i64 %i.hs, 4
  %i.hu = and i64 %i.ht, 1085102592571150095
  %i.hv = or disjoint i64 %i.hu, %i.hr            ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 3689348814741910323
  br i1 %i.hw, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph184
  %i.hx = xor i64 %i.hv, 3689348814741910323
  %i.hy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hx, i1 true) ; 2 uses
  %i.hz = trunc nuw nsw i64 %i.hy to i32
  %i.ia = lshr i32 %i.hz, 3                       ; 2 uses
  %i.ib = icmp samesign ugt i64 %i.hy, 31
  br i1 %i.ib, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ic = mul i64 %.0129183, 10000
  %i.id = trunc i64 %.0.copyload.i102 to i32
  %i.ie = add i32 %i.id, -808464432               ; 2 uses
  %i.if = mul i32 %i.ie, 10
  %i.ig = lshr i32 %i.ie, 8
  %i.ih = add i32 %i.if, %i.ig                    ; 2 uses
  %i.ii = and i32 %i.ih, 255
  %i.ij = mul nuw nsw i32 %i.ii, 100
  %i.ik = lshr i32 %i.ih, 16
  %i.il = and i32 %i.ik, 255
  %i.im = add nuw nsw i32 %i.ij, %i.il
  %i.in = zext nneg i32 %i.im to i64
  %i.io = add i64 %i.ic, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 2 uses
  store ptr %i.ip, ptr %i.b, align 8, !tbaa !55
  %i.iq = add nsw i32 %i.ia, -4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3 = phi i64 [ %i.io, %bb.t ], [ %.0129183, %bb.s ] ; 3 uses
  %i.ir = phi ptr [ %i.ip, %bb.t ], [ %i.hq, %bb.s ] ; 3 uses
  %.0.i103 = phi i32 [ %i.iq, %bb.t ], [ %i.ia, %bb.s ] ; 5 uses
  %.not3946.i104 = icmp eq i32 %.0.i103, 0
  br i1 %.not3946.i104, label %.loopexit.loopexit.i109, label %.lr.ph.i105.preheader

.lr.ph.i105.preheader:                            ; preds = %bb.u
  %xtraiter368 = and i32 %.0.i103, 3              ; 2 uses
  %lcmp.mod369.not = icmp eq i32 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol

.lr.ph.i105.prol:                                 ; preds = %.lr.ph.i105.preheader, %.lr.ph.i105.prol
  %i.is = phi ptr [ %i.ja, %.lr.ph.i105.prol ], [ %i.ir, %.lr.ph.i105.preheader ] ; 2 uses
  %i.it = phi i64 [ %i.iy, %.lr.ph.i105.prol ], [ %.3, %.lr.ph.i105.preheader ]
  %.147.i107.prol = phi i32 [ %i.iz, %.lr.ph.i105.prol ], [ %.0.i103, %.lr.ph.i105.preheader ]
  %prol.iter370 = phi i32 [ %prol.iter370.next, %.lr.ph.i105.prol ], [ 0, %.lr.ph.i105.preheader ]
  %i.iu = mul i64 %i.it, 10
  %i.iv = load i8, ptr %i.is, align 1, !tbaa !42
  %i.iw = sext i8 %i.iv to i64
  %i.ix = add i64 %i.iu, -48
  %i.iy = add i64 %i.ix, %i.iw                    ; 3 uses
  %i.iz = add nsw i32 %.147.i107.prol, -1         ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 4 uses
  store ptr %i.ja, ptr %i.b, align 8, !tbaa !55
  %prol.iter370.next = add i32 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i32 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol, !llvm.loop !97

.lr.ph.i105.prol.loopexit:                        ; preds = %.lr.ph.i105.prol, %.lr.ph.i105.preheader
  %.lcssa327.unr = phi i64 [ poison, %.lr.ph.i105.preheader ], [ %i.iy, %.lr.ph.i105.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i105.preheader ], [ %i.ja, %.lr.ph.i105.prol ]
  %.unr371 = phi ptr [ %i.ir, %.lr.ph.i105.preheader ], [ %i.ja, %.lr.ph.i105.prol ]
  %.unr372 = phi i64 [ %.3, %.lr.ph.i105.preheader ], [ %i.iy, %.lr.ph.i105.prol ]
  %.147.i107.unr = phi i32 [ %.0.i103, %.lr.ph.i105.preheader ], [ %i.iz, %.lr.ph.i105.prol ]
  %i.jb = icmp ult i32 %.0.i103, 4
  br i1 %i.jb, label %.loopexit.loopexit.i109, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105
  %i.jc = phi ptr [ %i.kc, %.lr.ph.i105 ], [ %.unr371, %.lr.ph.i105.prol.loopexit ] ; 5 uses
  %i.jd = phi i64 [ %i.ka, %.lr.ph.i105 ], [ %.unr372, %.lr.ph.i105.prol.loopexit ]
  %.147.i107 = phi i32 [ %i.kb, %.lr.ph.i105 ], [ %.147.i107.unr, %.lr.ph.i105.prol.loopexit ]
  %i.je = mul i64 %i.jd, 10
  %i.jf = load i8, ptr %i.jc, align 1, !tbaa !42
  %i.jg = sext i8 %i.jf to i64
  %i.jh = add i64 %i.je, -48
  %i.ji = add i64 %i.jh, %i.jg
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 1 ; 2 uses
  store ptr %i.jj, ptr %i.b, align 8, !tbaa !55
  %i.jk = mul i64 %i.ji, 10
  %i.jl = load i8, ptr %i.jj, align 1, !tbaa !42
  %i.jm = sext i8 %i.jl to i64
  %i.jn = add i64 %i.jk, -48
  %i.jo = add i64 %i.jn, %i.jm
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jc, i64 2 ; 2 uses
  store ptr %i.jp, ptr %i.b, align 8, !tbaa !55
  %i.jq = mul i64 %i.jo, 10
  %i.jr = load i8, ptr %i.jp, align 1, !tbaa !42
  %i.js = sext i8 %i.jr to i64
  %i.jt = add i64 %i.jq, -48
  %i.ju = add i64 %i.jt, %i.js
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jc, i64 3 ; 2 uses
  store ptr %i.jv, ptr %i.b, align 8, !tbaa !55
  %i.jw = mul i64 %i.ju, 10
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !42
  %i.jy = sext i8 %i.jx to i64
  %i.jz = add i64 %i.jw, -48
  %i.ka = add i64 %i.jz, %i.jy                    ; 2 uses
  %i.kb = add nsw i32 %.147.i107, -4              ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jc, i64 4 ; 3 uses
  store ptr %i.kc, ptr %i.b, align 8, !tbaa !55
  %.not39.i108.3 = icmp eq i32 %i.kb, 0
  br i1 %.not39.i108.3, label %.loopexit.loopexit.i109, label %.lr.ph.i105

bb.v:                                             ; preds = %.lr.ph184
  %i.kd = mul i64 %.0129183, 100000000
  %i.ke = add i64 %.0.copyload.i102, -3472328296227680304 ; 2 uses
  %i.kf = mul i64 %i.ke, 10
  %i.kg = lshr i64 %i.ke, 8
  %i.kh = add i64 %i.kf, %i.kg                    ; 2 uses
  %i.ki = and i64 %i.kh, 1095216660735
  %i.kj = mul i64 %i.ki, 4294967296000100
  %i.kk = lshr i64 %i.kh, 16
  %i.kl = and i64 %i.kk, 1095216660735
  %i.km = mul i64 %i.kl, 42949672960001
  %i.kn = add i64 %i.km, %i.kj
  %i.ko = lshr i64 %i.kn, 32
  %i.kp = add i64 %i.ko, %i.kd                    ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  store ptr %i.kq, ptr %i.b, align 8, !tbaa !55
  %i.kr = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.ks = sub i64 %i.f, %i.kr                     ; 2 uses
  %i.kt = icmp ugt i64 %i.ks, 7
  br i1 %i.kt, label %.lr.ph184, label %.preheader.i91

peek.exit.i96:                                    ; preds = %bb.w, %peek.exit.preheader.i94
  %.1130 = phi i64 [ %.0129.lcssa, %peek.exit.preheader.i94 ], [ %i.la, %bb.w ] ; 2 uses
  %.val51.i97 = phi ptr [ %.lcssa149, %peek.exit.preheader.i94 ], [ %i.lb, %bb.w ] ; 4 uses
  %i.ku = load i8, ptr %.val51.i97, align 1, !tbaa !42
  %i.kv = sext i8 %i.ku to i32
  %i.kw = add nsw i32 %i.kv, -48                  ; 2 uses
  %i.kx = icmp ugt i32 %i.kw, 9
  br i1 %i.kx, label %peek.exit.thread.loopexit.i99, label %bb.w

bb.w:                                             ; preds = %peek.exit.i96
  %i.ky = mul i64 %.1130, 10
  %i.kz = zext nneg i32 %i.kw to i64
  %i.la = add i64 %i.ky, %i.kz                    ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.val51.i97, i64 1 ; 3 uses
  store ptr %i.lb, ptr %i.b, align 8, !tbaa !55
  %exitcond.not.i98 = icmp eq ptr %i.lb, %.val42.i
  br i1 %exitcond.not.i98, label %peek.exit.thread.loopexit.i99, label %peek.exit.i96, !prof !98

peek.exit.thread.loopexit.i99:                    ; preds = %bb.w, %peek.exit.i96
  %i.lc = phi ptr [ %.val51.i97, %peek.exit.i96 ], [ %.val42.i, %bb.w ]
  %.2 = phi i64 [ %.1130, %peek.exit.i96 ], [ %i.la, %bb.w ]
  %.val.lcssa.ph.i100 = phi ptr [ %.val51.i97, %peek.exit.i96 ], [ %scevgep.i95, %bb.w ]
  %.pre.i101 = ptrtoint ptr %.val.lcssa.ph.i100 to i64
  br label %json_parse_digits.exit110

.loopexit.loopexit.i109:                          ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105, %bb.u
  %.4 = phi i64 [ %.3, %bb.u ], [ %.lcssa327.unr, %.lr.ph.i105.prol.loopexit ], [ %i.ka, %.lr.ph.i105 ]
  %i.ld = phi ptr [ %i.ir, %bb.u ], [ %.lcssa.unr, %.lr.ph.i105.prol.loopexit ], [ %i.kc, %.lr.ph.i105 ] ; 2 uses
  %i.le = ptrtoint ptr %i.ld to i64
  br label %json_parse_digits.exit110

json_parse_digits.exit110:                        ; preds = %.preheader.i91, %peek.exit.thread.loopexit.i99, %.loopexit.loopexit.i109
  %i.lf = phi ptr [ %i.ld, %.loopexit.loopexit.i109 ], [ %i.lc, %peek.exit.thread.loopexit.i99 ], [ %.lcssa149, %.preheader.i91 ]
  %.5 = phi i64 [ %.4, %.loopexit.loopexit.i109 ], [ %.2, %peek.exit.thread.loopexit.i99 ], [ %.0129.lcssa, %.preheader.i91 ]
  %.sink71.i93 = phi i64 [ %i.le, %.loopexit.loopexit.i109 ], [ %.pre.i101, %peek.exit.thread.loopexit.i99 ], [ %.lcssa147, %.preheader.i91 ]
  %i.lg = sub i64 %.sink71.i93, %i.hn
  %i.lh = and i64 %i.lg, 4294967295
  %.not54 = icmp eq i64 %i.lh, 0
  br i1 %.not54, label %bb.x, label %.thread, !prof !64

bb.x:                                             ; preds = %json_parse_digits.exit110
  tail call fastcc void @raise_parse_error_at(ptr noundef nonnull @.str.50, ptr noundef %0, ptr noundef %3) #24
  unreachable

.thread:                                          ; preds = %json_parse_digits.exit110
  %i.li = trunc i64 %.5 to i32                    ; 2 uses
  %i.lj = sub nsw i32 0, %i.li
  %i.lk = select i1 %.0, i32 %i.lj, i32 %i.li
  br label %bb.ai

bb.y:                                             ; preds = %peek.exit86
  br i1 %i.ha, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ll = icmp slt i32 %.048, 18
  br i1 %i.ll, label %bb.aa, label %bb.ah, !prof !23

bb.aa:                                            ; preds = %bb.z
  br i1 %2, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.lm = sub nsw i64 0, %.0131                   ; 2 uses
  %notsub.i = add i64 %.0131, -4611686018427387905
  %or.cond.i.i = icmp slt i64 %notsub.i, 0
  br i1 %or.cond.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ln = shl nsw i64 %i.lm, 1
  %i.lo = or disjoint i64 %i.ln, 1
  br label %json_decode_integer.exit

bb.ad:                                            ; preds = %bb.ab
  %i.lp = tail call i64 @rb_ll2inum(i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.lm) #19
  br label %json_decode_integer.exit

bb.ae:                                            ; preds = %bb.aa
  %i.lq = icmp ult i64 %.0131, 4611686018427387904
  br i1 %i.lq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lr = shl nuw nsw i64 %.0131, 1
  %i.ls = or disjoint i64 %i.lr, 1
  br label %json_decode_integer.exit

bb.ag:                                            ; preds = %bb.ae
  %i.lt = tail call i64 @rb_ull2inum(i64 noundef %.0131) #19
  br label %json_decode_integer.exit

bb.ah:                                            ; preds = %bb.z
  %i.lu = ptrtoint ptr %i.gz to i64
  %i.lv = ptrtoint ptr %3 to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = tail call fastcc i64 @json_decode_large_integer(ptr noundef %3, i64 noundef %i.lw)
  br label %json_decode_integer.exit

bb.ai:                                            ; preds = %.thread, %bb.y
  %i.ly = phi ptr [ %i.lf, %.thread ], [ %i.gz, %bb.y ] ; 2 uses
  %.050141 = phi i32 [ %i.lk, %.thread ], [ 0, %bb.y ]
  %.neg = sub i32 %.049, %.048
  %i.lz = icmp slt i32 %.049, 0
  %i.ma = select i1 %i.lz, i32 0, i32 %.neg
  %.1 = add i32 %.050141, %i.ma                   ; 11 uses
  %i.mb = sub i32 0, %.1                          ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !33
  %.not.i112 = icmp eq i64 %i.md, 0
  br i1 %.not.i112, label %bb.ak, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.me = ptrtoint ptr %i.ly to i64
  %i.mf = ptrtoint ptr %3 to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = tail call i64 @rb_str_new(ptr noundef %3, i64 noundef %i.mg) #19
  store i64 %i.mh, ptr %i.a, align 8, !tbaa !11
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !33
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !41
  %i.ml = call i64 @rb_funcallv(i64 noundef %i.mi, i64 noundef %i.mk, i32 noundef 1, ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %json_decode_integer.exit

bb.ak:                                            ; preds = %bb.ai
  %i.mm = icmp sgt i32 %.048, 17
  %i.mn = add nsw i32 %.1, %.048                  ; 2 uses
  %i.mo = icmp slt i32 %i.mn, -307
  %i.mp = select i1 %i.mm, i1 true, i1 %i.mo, !prof !64
  br i1 %i.mp, label %bb.al, label %bb.am, !prof !64

bb.al:                                            ; preds = %bb.ak
  %i.mq = ptrtoint ptr %i.ly to i64
  %i.mr = ptrtoint ptr %3 to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = tail call fastcc i64 @json_decode_large_float(ptr noundef %3, i64 noundef %i.ms)
  br label %json_decode_integer.exit

bb.am:                                            ; preds = %bb.ak
  %i.mu = icmp eq i64 %.0131, 0
  br i1 %i.mu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mv = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %ryu_s2d_from_parts.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.mw = icmp sgt i32 %i.mn, 309
  br i1 %i.mw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mx = select i1 %2, double -inf, double +inf
  br label %ryu_s2d_from_parts.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.my = icmp sgt i32 %.1, -1
  br i1 %i.my, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.mz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0131, i1 true)
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = mul nuw nsw i32 %.1, 1217359
  %i.nc = lshr i32 %i.nb, 19                      ; 2 uses
  %reass.sub189 = sub nsw i32 %.1, %i.na
  %i.nd = add i32 %reass.sub189, 10
  %i.ne = add i32 %i.nd, %i.nc                    ; 5 uses
  %i.nf = sub nsw i32 %i.ne, %.1                  ; 3 uses
  %i.ng = zext nneg i32 %.1 to i64
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr @DOUBLE_POW5_SPLIT, i64 %i.ng ; 2 uses
  %.val75.i.i = load i64, ptr %i.nh, align 16, !tbaa !11
  %i.ni = getelementptr i8, ptr %i.nh, i64 8
  %.val76.i.i = load i64, ptr %i.ni, align 8, !tbaa !11
  %i.nj = zext i64 %.0131 to i128
  %i.nk = zext i64 %.val76.i.i to i128
  %i.nl = mul nuw i128 %i.nk, %i.nj
  %4 = tail call i64 @llvm.umulh.i64(i64 range(i64 1, 0) %.0131, i64 %.val75.i.i)
  %5 = zext i64 %4 to i128
  %i.nm = add nuw i128 %i.nl, %5
  %reass.sub190 = sub i32 %i.nf, %i.nc
  %i.nn = add i32 %reass.sub190, 60
  %i.no = zext nneg i32 %i.nn to i128
  %i.np = lshr i128 %i.nm, %i.no
  %i.nq = trunc i128 %i.np to i64                 ; 3 uses
  %i.nr = icmp slt i32 %i.ne, %.1
  br i1 %i.nr, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ns = icmp slt i32 %i.nf, 64
  br i1 %i.ns, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.nt = zext nneg i32 %i.nf to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.nt
  %i.nu = xor i64 %notmask.i.i.i, -1
  %i.nv = and i64 %.0131, %i.nu
  %i.nw = icmp eq i64 %i.nv, 0
  br label %bb.aw

bb.au:                                            ; preds = %bb.aq
  %i.nx = zext nneg i32 %i.mb to i64
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr @DOUBLE_POW5_INV_SPLIT, i64 %i.nx ; 2 uses
  %.val.i.i = load i64, ptr %i.ny, align 16, !tbaa !11
  %i.nz = getelementptr i8, ptr %i.ny, i64 8
  %.val74.i.i = load i64, ptr %i.nz, align 8, !tbaa !11
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.04.i.i.i.i = phi i64 [ %.0131, %bb.au ], [ %i.oa, %bb.av ]
  %.0.i.i.i.i = phi i32 [ 0, %bb.au ], [ %i.oc, %bb.av ] ; 2 uses
  %i.oa = mul i64 %.04.i.i.i.i, -3689348814741910323 ; 2 uses
  %i.ob = icmp ugt i64 %i.oa, 3689348814741910323
  %i.oc = add i32 %.0.i.i.i.i, 1
  br i1 %i.ob, label %multipleOfPowerOf5.exit.i.i, label %bb.av

multipleOfPowerOf5.exit.i.i:                      ; preds = %bb.av
  %i.od = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0131, i1 true)
  %i.oe = trunc nuw nsw i64 %i.od to i32
  %i.of = mul nsw i32 %.1, -1217359
  %i.og = lshr i32 %i.of, 19                      ; 2 uses
  %i.oh = add nuw nsw i32 %i.og, %i.oe
  %i.oi = sub nuw i32 %.1, %i.oh
  %i.oj = add i32 %i.oi, 9                        ; 2 uses
  %i.ok = zext i64 %.0131 to i128
  %i.ol = zext i64 %.val74.i.i to i128
  %i.om = mul nuw i128 %i.ol, %i.ok
  %6 = tail call i64 @llvm.umulh.i64(i64 range(i64 1, 0) %.0131, i64 %.val.i.i)
  %7 = zext i64 %6 to i128
  %i.on = add nuw i128 %i.om, %7
  %reass.sub = sub i32 %i.og, %.1
  %i.oo = add nuw i32 %reass.sub, 61
  %i.op = add i32 %i.oo, %i.oj
  %i.oq = zext nneg i32 %i.op to i128
  %i.or = lshr i128 %i.on, %i.oq
  %i.os = trunc i128 %i.or to i64
  %i.ot = icmp uge i32 %.0.i.i.i.i, %i.mb
  br label %bb.aw

bb.aw:                                            ; preds = %multipleOfPowerOf5.exit.i.i, %bb.at, %bb.as, %bb.ar
  %.067.i.i = phi i64 [ %i.os, %multipleOfPowerOf5.exit.i.i ], [ %i.nq, %bb.as ], [ %i.nq, %bb.at ], [ %i.nq, %bb.ar ] ; 5 uses
  %.066.i.i = phi i1 [ %i.ot, %multipleOfPowerOf5.exit.i.i ], [ false, %bb.as ], [ %i.nw, %bb.at ], [ true, %bb.ar ]
  %.065.i.i = phi i32 [ %i.oj, %multipleOfPowerOf5.exit.i.i ], [ %i.ne, %bb.as ], [ %i.ne, %bb.at ], [ %i.ne, %bb.ar ] ; 2 uses
  %i.ou = add nsw i32 %.065.i.i, 1023
  %i.ov = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.067.i.i, i1 true)
  %i.ow = trunc nuw nsw i64 %i.ov to i32
  %i.ox = xor i32 %i.ow, 63
  %i.oy = add i32 %i.ou, %i.ox                    ; 3 uses
  %i.oz = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.oy, i32 0)
  %i.pa = icmp sgt i32 %i.oy, 2046
  br i1 %i.pa, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.pb = select i1 %2, double -inf, double +inf
  br label %ryu_s2d_from_parts.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.pc = tail call i32 @llvm.smax.i32(i32 %i.oy, i32 1)
  %i.pd = sub i32 %i.pc, %.065.i.i                ; 2 uses
  %i.pe = add i32 %i.pd, -1075                    ; 2 uses
  %i.pf = add i32 %i.pd, -1076
  %i.pg = zext i32 %i.pf to i64                   ; 2 uses
  %i.ph = shl nuw i64 1, %i.pg
  %i.pi = and i64 %i.ph, %.067.i.i
  %.not.i.i = icmp eq i64 %i.pi, 0
  br i1 %.not.i.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %notmask.i.i = shl nsw i64 -1, %i.pg
  %i.pj = xor i64 %notmask.i.i, -1
  %i.pk = and i64 %.067.i.i, %i.pj
  %i.pl = icmp eq i64 %i.pk, 0
  %i.pm = and i1 %.066.i.i, %i.pl
  br i1 %i.pm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pn = zext nneg i32 %i.pe to i64
  %i.po = lshr i64 %.067.i.i, %i.pn
  %i.pp = trunc i64 %i.po to i1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.pq = phi i1 [ false, %bb.ay ], [ true, %bb.az ], [ %i.pp, %bb.ba ] ; 2 uses
  %i.pr = zext nneg i32 %i.pe to i64
  %i.ps = lshr i64 %.067.i.i, %i.pr
  %i.pt = zext i1 %i.pq to i64
  %i.pu = add i64 %i.ps, %i.pt
  %i.pv = and i64 %i.pu, 4503599627370495         ; 2 uses
  %i.pw = icmp eq i64 %i.pv, 0
  %or.cond.i.i114 = and i1 %i.pq, %i.pw
  %i.px = zext i1 %or.cond.i.i114 to i32
  %spec.select.i.i = add nuw nsw i32 %i.oz, %i.px
  %i.py = select i1 %2, i64 2048, i64 0
  %i.pz = zext nneg i32 %spec.select.i.i to i64
  %i.qa = or i64 %i.py, %i.pz
  %i.qb = shl nuw i64 %i.qa, 52
  %i.qc = or disjoint i64 %i.qb, %i.pv
  %i.qd = bitcast i64 %i.qc to double
  br label %ryu_s2d_from_parts.exit.i

ryu_s2d_from_parts.exit.i:                        ; preds = %bb.bb, %bb.ax, %bb.ap, %bb.an
  %.1.i.i = phi double [ %i.mv, %bb.an ], [ %i.qd, %bb.bb ], [ %i.mx, %bb.ap ], [ %i.pb, %bb.ax ]
  %i.qe = tail call i64 @rb_float_new(double noundef %.1.i.i) #19
  br label %json_decode_integer.exit

json_decode_integer.exit:                         ; preds = %ryu_s2d_from_parts.exit.i, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac
  %.053 = phi i64 [ %i.lt, %bb.ag ], [ %i.lx, %bb.ah ], [ %i.lp, %bb.ad ], [ %i.lo, %bb.ac ], [ %i.ls, %bb.af ], [ %i.ml, %bb.aj ], [ %i.mt, %bb.al ], [ %i.qe, %ryu_s2d_from_parts.exit.i ]
  ret i64 %.053
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @json_decode_large_integer(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = add nsw i64 %1, 1                        ; 3 uses
  %i.c = icmp ult i64 %i.b, 1024
  br i1 %i.c, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = add i64 %1, 8
  %i.e = lshr i64 %i.d, 3
  %i.f = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.b, i64 noundef %i.e) #27
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !11
  %i.g = alloca i8, i64 %i.b, align 16            ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = phi ptr [ %i.f, %.thread ], [ %i.g, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %0, i64 %1, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %1
  store i8 0, ptr %i.j, align 1, !tbaa !42
  %i.k = call i64 @rb_cstr2inum(ptr noundef nonnull %i.i, i32 noundef 10) #19
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %i.k
}

declare i64 @rb_ll2inum(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #1

declare i64 @rb_cstr2inum(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @json_decode_large_float(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = icmp slt i64 %1, 64
  br i1 %i.c, label %bb.b, label %bb.d, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %0, i64 %1, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.d, align 1, !tbaa !42
  %i.e = call double @rb_cstr_to_dbl(ptr noundef nonnull %i.a, i32 noundef 1) #19
  %i.f = call i64 @rb_float_new(double noundef %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.g = add nuw nsw i64 %1, 1                    ; 2 uses
  %i.h = icmp samesign ult i64 %1, 1023
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.i = alloca i8, i64 %i.g, align 16
  br label %ruby_nonempty_memcpy.exit18

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %1, 8
  %i.k = lshr i64 %i.j, 3
  %i.l = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.g, i64 noundef %i.k) #27
  br label %ruby_nonempty_memcpy.exit18

ruby_nonempty_memcpy.exit18:                      ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.i, %bb.e ], [ %i.l, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !42
  %i.o = call double @rb_cstr_to_dbl(ptr noundef nonnull %i.m, i32 noundef 1) #19
  %i.p = call i64 @rb_float_new(double noundef %i.o) #19
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %ruby_nonempty_memcpy.exit18, %ruby_nonempty_memcpy.exit
  %.0 = phi i64 [ %i.f, %ruby_nonempty_memcpy.exit ], [ %i.p, %ruby_nonempty_memcpy.exit18 ]
  ret i64 %.0
}

declare i64 @rb_float_new(double noundef) local_unnamed_addr #1

declare double @rb_cstr_to_dbl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @json_string_fastpath(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
end_hunk_0
begin_hunk_1_@unescape_unicode:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr @digit_values, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !42    ; 2 uses
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -2
  tail call fastcc void @raise_parse_error_at(ptr noundef nonnull @.str.54, ptr noundef %0, ptr noundef nonnull %i.aa) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = zext nneg i8 %i.d to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = zext nneg i8 %i.k to i32
  %i.ae = shl nuw nsw i32 %i.ad, 4
  %i.af = or i32 %i.ae, %i.ac
  %i.ag = zext nneg i8 %i.r to i32
  %i.ah = or i32 %i.af, %i.ag
  %i.ai = shl nuw nsw i32 %i.ah, 4
  %i.aj = zext nneg i8 %i.y to i32
  %i.ak = or i32 %i.ai, %i.aj
  ret i32 %i.ak
}

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_to_interned_str(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_new_capa(i64 noundef) local_unnamed_addr #1

declare void @rb_hash_bulk_insert(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_duplicate_key_warning(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = tail call i64 @rb_inspect(i64 noundef %1) #19
  %i.d = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.59, i64 noundef %i.c) #19 ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !54  ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.l, align 8, !tbaa !55 ; 3 uses
  %.not16.i.i = icmp ult ptr %.val2, %.val
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %RSTRING_PTR.exit, %bb.c
  %.01218.i.i = phi i64 [ %i.p, %bb.c ], [ 0, %RSTRING_PTR.exit ] ; 2 uses
  %.01317.i.i = phi ptr [ %i.m, %bb.c ], [ %.val2, %RSTRING_PTR.exit ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.01317.i.i, i64 -1 ; 4 uses
  %i.n = load i8, ptr %.01317.i.i, align 1, !tbaa !42
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = add nuw nsw i64 %.01218.i.i, 1           ; 2 uses
  %.not.i.i = icmp ult ptr %i.m, %.val
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %.lr.ph.i.i, %RSTRING_PTR.exit
  %.012.lcssa.i.i = phi i64 [ 0, %RSTRING_PTR.exit ], [ %.01218.i.i, %.lr.ph.i.i ], [ %i.p, %bb.c ]
  %.114.i.i = phi ptr [ %.val2, %RSTRING_PTR.exit ], [ %i.m, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %.not1525.i.i = icmp ult ptr %.114.i.i, %.val
  br i1 %.not1525.i.i, label %cursor_position.exit.i, label %.lr.ph29.i.i

.lr.ph29.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph29.i.i
  %.027.i.i = phi i64 [ %spec.select.i.i, %.lr.ph29.i.i ], [ 1, %._crit_edge.i.i ]
  %.226.i.i = phi ptr [ %i.q, %.lr.ph29.i.i ], [ %.114.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.226.i.i, i64 -1 ; 2 uses
  %i.r = load i8, ptr %.226.i.i, align 1, !tbaa !42
  %i.s = icmp eq i8 %i.r, 10
  %i.t = zext i1 %i.s to i64
  %spec.select.i.i = add nuw nsw i64 %.027.i.i, %i.t ; 2 uses
  %.not15.i.i = icmp ult ptr %i.q, %.val
  br i1 %.not15.i.i, label %cursor_position.exit.i, label %.lr.ph29.i.i

cursor_position.exit.i:                           ; preds = %.lr.ph29.i.i, %._crit_edge.i.i
  %.0.lcssa.i.i = phi i64 [ 1, %._crit_edge.i.i ], [ %spec.select.i.i, %.lr.ph29.i.i ]
  %i.u = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.45, ptr noundef %i.j, i64 noundef %.0.lcssa.i.i, i64 noundef %.012.lcssa.i.i) #19
  %i.v = load i64, ptr @mJSON, align 8, !tbaa !11
  %.pr.i.i = load i64, ptr @emit_parse_warning.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i4.i, label %emit_parse_warning.exit

.lr.ph.i4.i:                                      ; preds = %cursor_position.exit.i, %.lr.ph.i4.i
  %i.w = tail call i64 @rb_intern2(ptr noundef nonnull @.str.60, i64 noundef 19) #19 ; 3 uses
  store i64 %i.w, ptr @emit_parse_warning.rbimpl_id, align 8, !tbaa !11
  %.not.i5.i = icmp eq i64 %i.w, 0
  br i1 %.not.i5.i, label %.lr.ph.i4.i, label %emit_parse_warning.exit

emit_parse_warning.exit:                          ; preds = %.lr.ph.i4.i, %cursor_position.exit.i
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %cursor_position.exit.i ], [ %i.w, %.lr.ph.i4.i ]
  %i.x = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.v, i64 noundef %.lcssa.i.i, i32 noundef 1, i64 noundef %i.u) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.a, ptr %i.b, align 8, !tbaa !67
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #19, !srcloc !104
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.z = load volatile i64, ptr %i.y, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @json_find_duplicated_key(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %0, 1
  %i.b = tail call i64 @rb_hash_new_capa(i64 noundef %i.a) #19 ; 3 uses
  %.not2023.not = icmp eq i64 %0, 0
  br i1 %.not2023.not, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add i64 %.01724, 2                       ; 2 uses
  %.not20 = icmp ult i64 %i.c, %0
  br i1 %.not20, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01724 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = tail call i64 @rb_hash_size_num(i64 noundef %i.b) #19
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01724
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 8 uses
  %i.g = tail call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %i.f, i64 noundef 20) #19 ; 0 uses
  %i.h = tail call i64 @rb_hash_size_num(i64 noundef %i.b) #19
  %.not = icmp eq i64 %i.h, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.i = and i64 %i.f, 255
  %i.j = icmp eq i64 %i.i, 12
  br i1 %i.j, label %RB_SYMBOL_P.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.f, 0
  %i.l = and i64 %i.f, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.d
  %i.o = inttoptr i64 %i.f to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %RB_SYMBOL_P.exit.thread, label %.thread

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.c, %RB_SYMBOL_P.exit
  %i.s = tail call i64 @rb_sym2str(i64 noundef %i.f) #19
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.d, %RB_SYMBOL_P.exit.thread, %RB_SYMBOL_P.exit
  %spec.select = phi i64 [ %i.f, %bb.d ], [ %i.s, %RB_SYMBOL_P.exit.thread ], [ %i.f, %RB_SYMBOL_P.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %spec.select
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @raise_duplicate_key_error(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @rb_inspect(i64 noundef %1) #19
  %i.b = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.61, i64 noundef %i.a) #19
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  tail call fastcc void @raise_parse_error(ptr noundef %i.h, ptr noundef %0) #24
  unreachable
}

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn nounwind }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn }
attributes #25 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(1,2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS18OnigEncodingTypeST", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"branch_weights", i32 2146410443, i32 1073205}
!16 = !{!"RBasic", !10, i64 0, !10, i64 8}
!17 = !{!16, !10, i64 0}
!18 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!19 = !{!"branch_weights", i32 -100663296, i32 2097152}
!20 = !{!"RTypedData", !16, i64 0, !10, i64 16, !10, i64 24, !12, i64 32}
!21 = !{!20, !10, i64 24}
!22 = !{!20, !12, i64 32}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32}
!26 = !{!"p1 _ZTS19rb_data_type_struct", !12, i64 0}
!27 = !{!"rb_data_type_struct", !24, i64 0, !25, i64 8, !26, i64 48, !12, i64 56, !10, i64 64}
!28 = !{!27, !26, i64 48}
!29 = !{!"_Bool", !7, i64 0}
!30 = !{!"JSON_ParserStruct", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !29, i64 32, !29, i64 33, !29, i64 34, !29, i64 35, !29, i64 36}
!31 = !{!30, !8, i64 28}
!32 = !{!"branch_weights", i32 1073205, i32 2146410443}
!33 = !{!30, !10, i64 8}
!34 = !{!30, !10, i64 0}
!35 = !{!30, !29, i64 32}
!36 = !{!30, !29, i64 33}
!37 = !{!30, !29, i64 34}
!38 = !{!30, !29, i64 35}
!39 = !{!30, !29, i64 36}
!40 = !{!30, !8, i64 24}
!41 = !{!30, !10, i64 16}
!42 = !{!7, !7, i64 0}
!43 = !{!"RString", !16, i64 0, !10, i64 16, !7, i64 24}
!44 = !{!43, !10, i64 16}
!45 = !{!"p1 long", !12, i64 0}
!46 = !{!"rvalue_stack_struct", !8, i64 0, !10, i64 8, !10, i64 16, !45, i64 24}
!47 = !{!46, !8, i64 0}
!48 = !{!46, !10, i64 8}
!49 = !{!46, !10, i64 16}
!50 = !{!46, !45, i64 24}
!51 = !{!"p1 _ZTS19rvalue_stack_struct", !12, i64 0}
!52 = !{!"rvalue_cache_struct", !8, i64 0, !7, i64 8}
!53 = !{!"JSON_ParserStateStruct", !10, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !51, i64 32, !52, i64 40, !8, i64 552, !8, i64 556}
!54 = !{!53, !24, i64 8}
!55 = !{!53, !24, i64 16}
!56 = !{!53, !24, i64 24}
!57 = !{!53, !51, i64 32}
!58 = !{!"branch_weights", i32 127, i32 1}
!59 = !{!"branch_weights", i32 255873, i32 127}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!24, !24, i64 0}
!63 = !{!29, !29, i64 0}
!64 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!53, !8, i64 552}
!67 = !{!45, !45, i64 0}
!68 = !{!52, !8, i64 0}
!69 = !{!"any p2 pointer", !12, i64 0}
!70 = !{!"p2 omnipotent char", !69, i64 0}
!71 = !{!"_json_unescape_positions", !10, i64 0, !70, i64 8, !29, i64 16}
!72 = !{!71, !10, i64 0}
!73 = !{!71, !70, i64 8}
!74 = !{!71, !29, i64 16}
!75 = !{!"branch_weights", i32 4001, i32 1}
!76 = !{!53, !10, i64 0}
!77 = distinct !{!77, !65}
!78 = distinct !{!78, !87}
!79 = distinct !{!79, !65}
!80 = distinct !{!80, !87}
!81 = distinct !{!81, !65}
!82 = distinct !{!82, !87}
!83 = !{!"branch_weights", i32 1073204, i32 1}
!84 = !{!"branch_weights", i32 1, i32 1}
!85 = !{!"branch_weights", i32 1, i32 127}
!86 = !{!"branch_weights", i32 1073204, i32 2145337239}
!87 = !{!"llvm.loop.estimated_trip_count", i32 500}
!88 = !{!53, !8, i64 556}
!89 = !{!"branch_weights", i32 0, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 0}
!90 = !{!"branch_weights", i32 127, i32 129}
!91 = !{!"branch_weights", i32 16129, i32 127}
!92 = !{!"branch_weights", i32 0, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648}
!93 = !{i64 2154871858}
!94 = !{!51, !51, i64 0}
!95 = distinct !{!95, !65}
!96 = distinct !{!96, !65}
!97 = distinct !{!97, !65}
!98 = !{!"branch_weights", i32 127, i32 255873}
!99 = !{!"branch_weights", i32 1, i32 4001}
!100 = !{!"branch_weights", i32 6002, i32 8002000}
!101 = !{!"branch_weights", i32 2146410443, i32 -2146410443}
!102 = distinct !{!102, !65}
!103 = distinct !{!103, !65}
!104 = !{i64 2154876393}
end_hunk_1
