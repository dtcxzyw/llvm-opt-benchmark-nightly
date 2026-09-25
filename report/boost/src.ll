Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb1EEEPKcS7_RmSt17integral_constantIbXT_EEbb:bb.a
  store i64 %i.an, ptr %i.b, align 8, !tbaa !367
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 %i.am
  store i8 47, ptr %i.ao, align 1, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %.1447, i64 1
  br label %.thread471

bb.o:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !367
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 %i.aq
  store i8 8, ptr %i.as, align 1, !tbaa !93
  %i.at = getelementptr inbounds nuw i8, ptr %.1447, i64 1
  br label %.thread471

bb.p:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1
  store i64 %i.av, ptr %i.b, align 8, !tbaa !367
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 %i.au
  store i8 12, ptr %i.aw, align 1, !tbaa !93
  %i.ax = getelementptr inbounds nuw i8, ptr %.1447, i64 1
  br label %.thread471

bb.q:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 1
  store i64 %i.az, ptr %i.b, align 8, !tbaa !367
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 %i.ay
  store i8 10, ptr %i.ba, align 1, !tbaa !93
  %i.bb = getelementptr inbounds nuw i8, ptr %.1447, i64 1
  br label %.thread471

bb.r:                                             ; preds = %bb.j
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, 1
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !367
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 %i.bc
  store i8 13, ptr %i.be, align 1, !tbaa !93
  %i.bf = getelementptr inbounds nuw i8, ptr %.1447, i64 1
  br label %.thread471

bb.s:                                             ; preds = %bb.j
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 1
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !367
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 %i.bg
  store i8 9, ptr %i.bi, align 1, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %.1447, i64 1
  br label %.thread471

bb.t:                                             ; preds = %bb.j
  %i.bk = ptrtoint ptr %.sroa.110.2 to i64
  %i.bl = ptrtoint ptr %.1447 to i64              ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ugt i64 %i.bm, 10
  br i1 %i.bn, label %bb.u, label %bb.bs, !prof !251

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.1447, i64 1
  %i.bp = load i32, ptr %i.bo, align 1            ; 5 uses
  %i.bq = lshr i32 %i.bp, 24                      ; 3 uses
  %i.br = trunc nuw i32 %i.bq to i8               ; 2 uses
  %i.bs = add i8 %i.br, -48
  %or.cond.i = icmp ult i8 %i.bs, 10
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bt = add nsw i32 %i.bq, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit

bb.w:                                             ; preds = %bb.u
  %i.bu = and i8 %i.br, -33
  %i.bv = add i8 %i.bu, -65
  %or.cond5.i = icmp ult i8 %i.bv, 6
  br i1 %or.cond5.i, label %bb.x, label %_ZN5boost4json6detail9hex_digitEh.exit

bb.x:                                             ; preds = %bb.w
  %i.bw = and i32 %i.bq, 223
  %i.bx = add nsw i32 %i.bw, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit

_ZN5boost4json6detail9hex_digitEh.exit:           ; preds = %bb.v, %bb.w, %bb.x
  %.0.i = phi i32 [ %i.bt, %bb.v ], [ %i.bx, %bb.x ], [ -1, %bb.w ] ; 2 uses
  %i.by = lshr i32 %i.bp, 16                      ; 3 uses
  %i.bz = trunc i32 %i.by to i8                   ; 2 uses
  %i.ca = add i8 %i.bz, -48
  %or.cond.i148 = icmp ult i8 %i.ca, 10
  br i1 %or.cond.i148, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN5boost4json6detail9hex_digitEh.exit
  %i.cb = and i32 %i.by, 255
  %i.cc = add nsw i32 %i.cb, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit151

bb.z:                                             ; preds = %_ZN5boost4json6detail9hex_digitEh.exit
  %i.cd = and i8 %i.bz, -33
  %i.ce = add i8 %i.cd, -65
  %or.cond5.i149 = icmp ult i8 %i.ce, 6
  br i1 %or.cond5.i149, label %bb.aa, label %_ZN5boost4json6detail9hex_digitEh.exit151

bb.aa:                                            ; preds = %bb.z
  %i.cf = and i32 %i.by, 223
  %i.cg = add nsw i32 %i.cf, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit151

_ZN5boost4json6detail9hex_digitEh.exit151:        ; preds = %bb.y, %bb.z, %bb.aa
  %.0.i150 = phi i32 [ %i.cc, %bb.y ], [ %i.cg, %bb.aa ], [ -1, %bb.z ] ; 3 uses
  %i.ch = lshr i32 %i.bp, 8                       ; 3 uses
  %i.ci = trunc i32 %i.ch to i8                   ; 2 uses
  %i.cj = add i8 %i.ci, -48
  %or.cond.i152 = icmp ult i8 %i.cj, 10
  br i1 %or.cond.i152, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit151
  %i.ck = and i32 %i.ch, 255
  %i.cl = add nsw i32 %i.ck, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit155

bb.ac:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit151
  %i.cm = and i8 %i.ci, -33
  %i.cn = add i8 %i.cm, -65
  %or.cond5.i153 = icmp ult i8 %i.cn, 6
  br i1 %or.cond5.i153, label %bb.ad, label %_ZN5boost4json6detail9hex_digitEh.exit155

bb.ad:                                            ; preds = %bb.ac
  %i.co = and i32 %i.ch, 223
  %i.cp = add nsw i32 %i.co, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit155

_ZN5boost4json6detail9hex_digitEh.exit155:        ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0.i154 = phi i32 [ %i.cl, %bb.ab ], [ %i.cp, %bb.ad ], [ -1, %bb.ac ] ; 3 uses
  %i.cq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.cr = add i8 %i.cq, -48
  %or.cond.i156 = icmp ult i8 %i.cr, 10
  br i1 %or.cond.i156, label %_ZN5boost4json6detail9hex_digitEh.exit159, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit155
  %i.cs = and i8 %i.cq, -33
  %i.ct = add i8 %i.cs, -65
  %or.cond5.i157 = icmp ult i8 %i.ct, 6
  br i1 %or.cond5.i157, label %_ZN5boost4json6detail9hex_digitEh.exit159, label %.thread

_ZN5boost4json6detail9hex_digitEh.exit159:        ; preds = %bb.ae, %_ZN5boost4json6detail9hex_digitEh.exit155
  %.sink1493 = phi i32 [ 255, %_ZN5boost4json6detail9hex_digitEh.exit155 ], [ 223, %bb.ae ]
  %.sink1492 = phi i32 [ -48, %_ZN5boost4json6detail9hex_digitEh.exit155 ], [ -55, %bb.ae ]
  %i.cu = and i32 %i.bp, %.sink1493
  %i.cv = add nsw i32 %i.cu, %.sink1492           ; 3 uses
  %i.cw = or i32 %.0.i150, %.0.i
  %i.cx = or i32 %i.cw, %.0.i154
  %i.cy = or i32 %i.cx, %i.cv
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.af, label %bb.ag, !prof !252

bb.af:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit159
  %.not136 = icmp ne i32 %i.cv, -1
  %spec.select491.idx = zext i1 %.not136 to i64
  %spec.select491 = getelementptr inbounds nuw i8, ptr %.1447, i64 %spec.select491.idx
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.af
  %.2448 = phi ptr [ %spec.select491, %bb.af ], [ %.1447, %bb.ae ]
  %.not137 = icmp ne i32 %.0.i154, -1
  %spec.select492.idx = zext i1 %.not137 to i64
  %spec.select492 = getelementptr inbounds nuw i8, ptr %.2448, i64 %spec.select492.idx
  %.not138 = icmp ne i32 %.0.i150, -1
  %.4450.idx = zext i1 %.not138 to i64
  %.4450 = getelementptr inbounds nuw i8, ptr %spec.select492, i64 %.4450.idx
  %i.da = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.4450, i32 noundef 8, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb1EEEPKcS7_RmSt17integral_constantIbXT_EEbbE3loc_1) #47
  br label %.thread466

bb.ag:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit159
  %i.db = shl nsw i32 %i.cv, 12
  %i.dc = shl nsw i32 %.0.i154, 8
  %i.dd = shl nsw i32 %.0.i150, 4
  %i.de = add nsw i32 %i.dd, %.0.i                ; 5 uses
  %i.df = add nsw i32 %i.de, %i.dc                ; 4 uses
  %i.dg = add nsw i32 %i.df, %i.db                ; 9 uses
  %i.dh = add nsw i32 %i.dg, -57344
  %i.di = icmp ult i32 %i.dh, -2048
  br i1 %i.di, label %bb.ah, label %bb.ao, !prof !251

bb.ah:                                            ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %.1447, i64 5
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !367
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 %i.dk ; 7 uses
  %i.dm = icmp ult i32 %i.dg, 128
  br i1 %i.dm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dn = trunc i32 %i.de to i8
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !93
  br label %_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit

bb.aj:                                            ; preds = %bb.ah
  %i.do = icmp ult i32 %i.dg, 2048
  br i1 %i.do, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dp = lshr i32 %i.df, 6
  %i.dq = trunc nuw i32 %i.dp to i8
  %i.dr = or i8 %i.dq, -64
  store i8 %i.dr, ptr %i.dl, align 1, !tbaa !93
  %i.ds = trunc i32 %i.de to i8
  %i.dt = and i8 %i.ds, 63
  %i.du = or disjoint i8 %i.dt, -128
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !93
  br label %_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit

bb.al:                                            ; preds = %bb.aj
  %i.dw = icmp ult i32 %i.dg, 65536
  br i1 %i.dw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dy = lshr i32 %i.dg, 12
  %i.dz = trunc nuw nsw i32 %i.dy to i8
  %i.ea = or disjoint i8 %i.dz, -32
  store i8 %i.ea, ptr %i.dl, align 1, !tbaa !93
  %i.eb = lshr i32 %i.df, 6
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = and i8 %i.ec, 63
  %i.ee = or disjoint i8 %i.ed, -128
  store i8 %i.ee, ptr %i.dx, align 1, !tbaa !93
  %i.ef = trunc i32 %i.de to i8
  %i.eg = and i8 %i.ef, 63
  %i.eh = or disjoint i8 %i.eg, -128
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !93
  br label %_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit

bb.an:                                            ; preds = %bb.al
  %i.ej = lshr i32 %i.dg, 18
  %i.ek = trunc i32 %i.ej to i8
  %i.el = lshr i32 %i.dg, 12
  %i.em = trunc i32 %i.el to i8
  %i.en = lshr i32 %i.df, 6
  %i.eo = trunc i32 %i.en to i8
  %i.ep = trunc i32 %i.de to i8
  %i.eq = insertelement <4 x i8> poison, i8 %i.ek, i64 0
  %i.er = insertelement <4 x i8> %i.eq, i8 %i.em, i64 1
  %i.es = insertelement <4 x i8> %i.er, i8 %i.eo, i64 2
  %i.et = insertelement <4 x i8> %i.es, i8 %i.ep, i64 3
  %i.eu = and <4 x i8> %i.et, <i8 -1, i8 63, i8 63, i8 63>
  %i.ev = or <4 x i8> %i.eu, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ev, ptr %i.dl, align 1, !tbaa !93
  br label %_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit

_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit: ; preds = %bb.ai, %bb.ak, %bb.am, %bb.an
  %.sink24.i = phi i64 [ 4, %bb.an ], [ 3, %bb.am ], [ 2, %bb.ak ], [ 1, %bb.ai ]
  %i.ew = load i64, ptr %i.b, align 8, !tbaa !367
  %i.ex = add i64 %i.ew, %.sink24.i
  store i64 %i.ex, ptr %i.b, align 8, !tbaa !367
  br label %.thread471

bb.ao:                                            ; preds = %bb.ag
  %i.ey = icmp samesign ugt i32 %i.dg, 56319
  br i1 %i.ey, label %bb.ap, label %bb.as, !prof !252

bb.ap:                                            ; preds = %bb.ao
  br i1 %4, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ez = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.1447, i32 noundef 6, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb1EEEPKcS7_RmSt17integral_constantIbXT_EEbbE3loc_2) #47
  br label %.thread466

bb.ar:                                            ; preds = %bb.ap
  %i.fa = getelementptr inbounds nuw i8, ptr %.1447, i64 5
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 %i.fb ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store i8 -17, ptr %i.fc, align 1, !tbaa !93
  store i8 -65, ptr %i.fd, align 1, !tbaa !93
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  store i8 -67, ptr %i.fe, align 1, !tbaa !93
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fg = add i64 %i.ff, 3
  store i64 %i.fg, ptr %i.b, align 8, !tbaa !367
  br label %.thread471

bb.as:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %.1447, i64 5
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !93
  %.not = icmp eq i8 %i.fi, 92
  br i1 %.not, label %bb.aw, label %bb.at, !prof !251

bb.at:                                            ; preds = %bb.as
  %i.fj = getelementptr inbounds nuw i8, ptr %.1447, i64 5 ; 2 uses
  br i1 %4, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fk = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.fj, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb1EEEPKcS7_RmSt17integral_constantIbXT_EEbbE3loc_3) #47
  br label %.thread466

bb.av:                                            ; preds = %bb.at
  %i.fl = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 %i.fl ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store i8 -17, ptr %i.fm, align 1, !tbaa !93
  store i8 -65, ptr %i.fn, align 1, !tbaa !93
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  store i8 -67, ptr %i.fo, align 1, !tbaa !93
  %i.fp = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fq = add i64 %i.fp, 3
  store i64 %i.fq, ptr %i.b, align 8, !tbaa !367
  br label %.thread471

bb.aw:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr %.1447, i64 6 ; 3 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !93
  %.not132 = icmp eq i8 %i.fs, 117
  br i1 %.not132, label %bb.az, label %bb.ax, !prof !251

bb.ax:                                            ; preds = %bb.aw
  br i1 %4, label %bb.br, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ft = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.fr, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb1EEEPKcS7_RmSt17integral_constantIbXT_EEbbE3loc_4) #47
  br label %.thread466

bb.az:                                            ; preds = %bb.aw
  %i.fu = getelementptr inbounds nuw i8, ptr %.1447, i64 7
  %i.fv = load i32, ptr %i.fu, align 1            ; 5 uses
  %i.fw = lshr i32 %i.fv, 24                      ; 3 uses
  %i.fx = trunc nuw i32 %i.fw to i8               ; 2 uses
  %i.fy = add i8 %i.fx, -48
  %or.cond.i163 = icmp ult i8 %i.fy, 10
  br i1 %or.cond.i163, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fz = add nsw i32 %i.fw, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit166

bb.bb:                                            ; preds = %bb.az
  %i.ga = and i8 %i.fx, -33
  %i.gb = add i8 %i.ga, -65
  %or.cond5.i164 = icmp ult i8 %i.gb, 6
  br i1 %or.cond5.i164, label %bb.bc, label %_ZN5boost4json6detail9hex_digitEh.exit166

bb.bc:                                            ; preds = %bb.bb
  %i.gc = and i32 %i.fw, 223
  %i.gd = add nsw i32 %i.gc, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit166

_ZN5boost4json6detail9hex_digitEh.exit166:        ; preds = %bb.ba, %bb.bb, %bb.bc
  %.0.i165 = phi i32 [ %i.fz, %bb.ba ], [ %i.gd, %bb.bc ], [ -1, %bb.bb ] ; 2 uses
  %i.ge = lshr i32 %i.fv, 16                      ; 3 uses
  %i.gf = trunc i32 %i.ge to i8                   ; 2 uses
  %i.gg = add i8 %i.gf, -48
  %or.cond.i167 = icmp ult i8 %i.gg, 10
  br i1 %or.cond.i167, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit166
  %i.gh = and i32 %i.ge, 255
  %i.gi = add nsw i32 %i.gh, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit170

bb.be:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit166
  %i.gj = and i8 %i.gf, -33
  %i.gk = add i8 %i.gj, -65
  %or.cond5.i168 = icmp ult i8 %i.gk, 6
  br i1 %or.cond5.i168, label %bb.bf, label %_ZN5boost4json6detail9hex_digitEh.exit170

bb.bf:                                            ; preds = %bb.be
  %i.gl = and i32 %i.ge, 223
  %i.gm = add nsw i32 %i.gl, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit170

_ZN5boost4json6detail9hex_digitEh.exit170:        ; preds = %bb.bd, %bb.be, %bb.bf
  %.0.i169 = phi i32 [ %i.gi, %bb.bd ], [ %i.gm, %bb.bf ], [ -1, %bb.be ] ; 3 uses
  %i.gn = lshr i32 %i.fv, 8                       ; 3 uses
  %i.go = trunc i32 %i.gn to i8                   ; 2 uses
  %i.gp = add i8 %i.go, -48
  %or.cond.i171 = icmp ult i8 %i.gp, 10
  br i1 %or.cond.i171, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit170
  %i.gq = and i32 %i.gn, 255
  %i.gr = add nsw i32 %i.gq, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit174

bb.bh:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit170
  %i.gs = and i8 %i.go, -33
  %i.gt = add i8 %i.gs, -65
  %or.cond5.i172 = icmp ult i8 %i.gt, 6
  br i1 %or.cond5.i172, label %bb.bi, label %_ZN5boost4json6detail9hex_digitEh.exit174

bb.bi:                                            ; preds = %bb.bh
  %i.gu = and i32 %i.gn, 223
  %i.gv = add nsw i32 %i.gu, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit174

_ZN5boost4json6detail9hex_digitEh.exit174:        ; preds = %bb.bg, %bb.bh, %bb.bi
  %.0.i173 = phi i32 [ %i.gr, %bb.bg ], [ %i.gv, %bb.bi ], [ -1, %bb.bh ] ; 3 uses
  %i.gw = trunc i32 %i.fv to i8                   ; 2 uses
  %i.gx = add i8 %i.gw, -48
  %or.cond.i175 = icmp ult i8 %i.gx, 10
  br i1 %or.cond.i175, label %_ZN5boost4json6detail9hex_digitEh.exit178, label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit174
end_hunk_0
begin_hunk_1_@_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb0EEEPKcS7_RmSt17integral_constantIbXT_EEbb:bb.a
  store i64 %i.at, ptr %i.b, align 8, !tbaa !367
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 %i.as
  store i8 47, ptr %i.au, align 1, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %.1451, i64 1
  br label %.thread502

bb.q:                                             ; preds = %bb.l
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 1
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !367
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 %i.aw
  store i8 8, ptr %i.ay, align 1, !tbaa !93
  %i.az = getelementptr inbounds nuw i8, ptr %.1451, i64 1
  br label %.thread502

bb.r:                                             ; preds = %bb.l
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1
  store i64 %i.bb, ptr %i.b, align 8, !tbaa !367
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 %i.ba
  store i8 12, ptr %i.bc, align 1, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %.1451, i64 1
  br label %.thread502

bb.s:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1
  store i64 %i.bf, ptr %i.b, align 8, !tbaa !367
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 %i.be
  store i8 10, ptr %i.bg, align 1, !tbaa !93
  %i.bh = getelementptr inbounds nuw i8, ptr %.1451, i64 1
  br label %.thread502

bb.t:                                             ; preds = %bb.l
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  store i64 %i.bj, ptr %i.b, align 8, !tbaa !367
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 %i.bi
  store i8 13, ptr %i.bk, align 1, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %.1451, i64 1
  br label %.thread502

bb.u:                                             ; preds = %bb.l
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 1
  store i64 %i.bn, ptr %i.b, align 8, !tbaa !367
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 %i.bm
  store i8 9, ptr %i.bo, align 1, !tbaa !93
  %i.bp = getelementptr inbounds nuw i8, ptr %.1451, i64 1
  br label %.thread502

bb.v:                                             ; preds = %bb.l
  %i.bq = ptrtoint ptr %.sroa.110.2 to i64
  %i.br = ptrtoint ptr %.1451 to i64              ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp ugt i64 %i.bs, 10
  br i1 %i.bt, label %bb.w, label %bb.bu, !prof !251

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %.1451, i64 1
  %i.bv = load i32, ptr %i.bu, align 1            ; 5 uses
  %i.bw = lshr i32 %i.bv, 24                      ; 3 uses
  %i.bx = trunc nuw i32 %i.bw to i8               ; 2 uses
  %i.by = add i8 %i.bx, -48
  %or.cond.i = icmp ult i8 %i.by, 10
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = add nsw i32 %i.bw, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit

bb.y:                                             ; preds = %bb.w
  %i.ca = and i8 %i.bx, -33
  %i.cb = add i8 %i.ca, -65
  %or.cond5.i = icmp ult i8 %i.cb, 6
  br i1 %or.cond5.i, label %bb.z, label %_ZN5boost4json6detail9hex_digitEh.exit

bb.z:                                             ; preds = %bb.y
  %i.cc = and i32 %i.bw, 223
  %i.cd = add nsw i32 %i.cc, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit

_ZN5boost4json6detail9hex_digitEh.exit:           ; preds = %bb.x, %bb.y, %bb.z
  %.0.i = phi i32 [ %i.bz, %bb.x ], [ %i.cd, %bb.z ], [ -1, %bb.y ] ; 2 uses
  %i.ce = lshr i32 %i.bv, 16                      ; 3 uses
  %i.cf = trunc i32 %i.ce to i8                   ; 2 uses
  %i.cg = add i8 %i.cf, -48
  %or.cond.i150 = icmp ult i8 %i.cg, 10
  br i1 %or.cond.i150, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit
  %i.ch = and i32 %i.ce, 255
  %i.ci = add nsw i32 %i.ch, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit153

bb.ab:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit
  %i.cj = and i8 %i.cf, -33
  %i.ck = add i8 %i.cj, -65
  %or.cond5.i151 = icmp ult i8 %i.ck, 6
  br i1 %or.cond5.i151, label %bb.ac, label %_ZN5boost4json6detail9hex_digitEh.exit153

bb.ac:                                            ; preds = %bb.ab
  %i.cl = and i32 %i.ce, 223
  %i.cm = add nsw i32 %i.cl, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit153

_ZN5boost4json6detail9hex_digitEh.exit153:        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.0.i152 = phi i32 [ %i.ci, %bb.aa ], [ %i.cm, %bb.ac ], [ -1, %bb.ab ] ; 3 uses
  %i.cn = lshr i32 %i.bv, 8                       ; 3 uses
  %i.co = trunc i32 %i.cn to i8                   ; 2 uses
  %i.cp = add i8 %i.co, -48
  %or.cond.i154 = icmp ult i8 %i.cp, 10
  br i1 %or.cond.i154, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit153
  %i.cq = and i32 %i.cn, 255
  %i.cr = add nsw i32 %i.cq, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit157

bb.ae:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit153
  %i.cs = and i8 %i.co, -33
  %i.ct = add i8 %i.cs, -65
  %or.cond5.i155 = icmp ult i8 %i.ct, 6
  br i1 %or.cond5.i155, label %bb.af, label %_ZN5boost4json6detail9hex_digitEh.exit157

bb.af:                                            ; preds = %bb.ae
  %i.cu = and i32 %i.cn, 223
  %i.cv = add nsw i32 %i.cu, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit157

_ZN5boost4json6detail9hex_digitEh.exit157:        ; preds = %bb.ad, %bb.ae, %bb.af
  %.0.i156 = phi i32 [ %i.cr, %bb.ad ], [ %i.cv, %bb.af ], [ -1, %bb.ae ] ; 3 uses
  %i.cw = trunc i32 %i.bv to i8                   ; 2 uses
  %i.cx = add i8 %i.cw, -48
  %or.cond.i158 = icmp ult i8 %i.cx, 10
  br i1 %or.cond.i158, label %_ZN5boost4json6detail9hex_digitEh.exit161, label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit157
  %i.cy = and i8 %i.cw, -33
  %i.cz = add i8 %i.cy, -65
  %or.cond5.i159 = icmp ult i8 %i.cz, 6
  br i1 %or.cond5.i159, label %_ZN5boost4json6detail9hex_digitEh.exit161, label %.thread488

_ZN5boost4json6detail9hex_digitEh.exit161:        ; preds = %bb.ag, %_ZN5boost4json6detail9hex_digitEh.exit157
  %.sink916 = phi i32 [ 255, %_ZN5boost4json6detail9hex_digitEh.exit157 ], [ 223, %bb.ag ]
  %.sink915 = phi i32 [ -48, %_ZN5boost4json6detail9hex_digitEh.exit157 ], [ -55, %bb.ag ]
  %i.da = and i32 %i.bv, %.sink916
  %i.db = add nsw i32 %i.da, %.sink915            ; 3 uses
  %i.dc = or i32 %.0.i152, %.0.i
  %i.dd = or i32 %i.dc, %.0.i156
  %i.de = or i32 %i.dd, %i.db
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %bb.ah, label %bb.ai, !prof !252

bb.ah:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit161
  %.not138 = icmp ne i32 %i.db, -1
  %spec.select522.idx = zext i1 %.not138 to i64
  %spec.select522 = getelementptr inbounds nuw i8, ptr %.1451, i64 %spec.select522.idx
  br label %.thread488

.thread488:                                       ; preds = %bb.ag, %bb.ah
  %.2452 = phi ptr [ %spec.select522, %bb.ah ], [ %.1451, %bb.ag ]
  %.not139 = icmp ne i32 %.0.i156, -1
  %spec.select523.idx = zext i1 %.not139 to i64
  %spec.select523 = getelementptr inbounds nuw i8, ptr %.2452, i64 %spec.select523.idx
  %.not140 = icmp ne i32 %.0.i152, -1
  %.4454.idx = zext i1 %.not140 to i64
  %.4454 = getelementptr inbounds nuw i8, ptr %spec.select523, i64 %.4454.idx
  %i.dg = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.4454, i32 noundef 8, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb0EEEPKcS7_RmSt17integral_constantIbXT_EEbbE3loc_1) #47
  br label %.thread497

bb.ai:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit161
  %i.dh = shl nsw i32 %i.db, 12
  %i.di = shl nsw i32 %.0.i156, 8
  %i.dj = shl nsw i32 %.0.i152, 4
  %i.dk = add nsw i32 %i.dj, %.0.i                ; 5 uses
  %i.dl = add nsw i32 %i.dk, %i.di                ; 4 uses
  %i.dm = add nsw i32 %i.dl, %i.dh                ; 9 uses
  %i.dn = add nsw i32 %i.dm, -57344
  %i.do = icmp ult i32 %i.dn, -2048
  br i1 %i.do, label %bb.aj, label %bb.aq, !prof !251

bb.aj:                                            ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %.1451, i64 5
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !367
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 %i.dq ; 7 uses
  %i.ds = icmp ult i32 %i.dm, 128
  br i1 %i.ds, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dt = trunc i32 %i.dk to i8
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !93
  br label %_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit

bb.al:                                            ; preds = %bb.aj
  %i.du = icmp ult i32 %i.dm, 2048
  br i1 %i.du, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dv = lshr i32 %i.dl, 6
  %i.dw = trunc nuw i32 %i.dv to i8
  %i.dx = or i8 %i.dw, -64
  store i8 %i.dx, ptr %i.dr, align 1, !tbaa !93
  %i.dy = trunc i32 %i.dk to i8
  %i.dz = and i8 %i.dy, 63
  %i.ea = or disjoint i8 %i.dz, -128
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !93
  br label %_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit

bb.an:                                            ; preds = %bb.al
  %i.ec = icmp ult i32 %i.dm, 65536
  br i1 %i.ec, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.ee = lshr i32 %i.dm, 12
  %i.ef = trunc nuw nsw i32 %i.ee to i8
  %i.eg = or disjoint i8 %i.ef, -32
  store i8 %i.eg, ptr %i.dr, align 1, !tbaa !93
  %i.eh = lshr i32 %i.dl, 6
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = and i8 %i.ei, 63
  %i.ek = or disjoint i8 %i.ej, -128
  store i8 %i.ek, ptr %i.ed, align 1, !tbaa !93
  %i.el = trunc i32 %i.dk to i8
  %i.em = and i8 %i.el, 63
  %i.en = or disjoint i8 %i.em, -128
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !93
  br label %_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit

bb.ap:                                            ; preds = %bb.an
  %i.ep = lshr i32 %i.dm, 18
  %i.eq = trunc i32 %i.ep to i8
  %i.er = lshr i32 %i.dm, 12
  %i.es = trunc i32 %i.er to i8
  %i.et = lshr i32 %i.dl, 6
  %i.eu = trunc i32 %i.et to i8
  %i.ev = trunc i32 %i.dk to i8
  %i.ew = insertelement <4 x i8> poison, i8 %i.eq, i64 0
  %i.ex = insertelement <4 x i8> %i.ew, i8 %i.es, i64 1
  %i.ey = insertelement <4 x i8> %i.ex, i8 %i.eu, i64 2
  %i.ez = insertelement <4 x i8> %i.ey, i8 %i.ev, i64 3
  %i.fa = and <4 x i8> %i.ez, <i8 -1, i8 63, i8 63, i8 63>
  %i.fb = or <4 x i8> %i.fa, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fb, ptr %i.dr, align 1, !tbaa !93
  br label %_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit

_ZN5boost4json6detail6bufferILm4096EE11append_utf8Em.exit: ; preds = %bb.ak, %bb.am, %bb.ao, %bb.ap
  %.sink24.i = phi i64 [ 4, %bb.ap ], [ 3, %bb.ao ], [ 2, %bb.am ], [ 1, %bb.ak ]
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fd = add i64 %i.fc, %.sink24.i
  store i64 %i.fd, ptr %i.b, align 8, !tbaa !367
  br label %.thread502

bb.aq:                                            ; preds = %bb.ai
  %i.fe = icmp samesign ugt i32 %i.dm, 56319
  br i1 %i.fe, label %bb.ar, label %bb.au, !prof !252

bb.ar:                                            ; preds = %bb.aq
  br i1 %4, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.1451, i32 noundef 6, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb0EEEPKcS7_RmSt17integral_constantIbXT_EEbbE3loc_2) #47
  br label %.thread497

bb.at:                                            ; preds = %bb.ar
  %i.fg = getelementptr inbounds nuw i8, ptr %.1451, i64 5
  %i.fh = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  store i8 -17, ptr %i.fi, align 1, !tbaa !93
  store i8 -65, ptr %i.fj, align 1, !tbaa !93
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i8 -67, ptr %i.fk, align 1, !tbaa !93
  %i.fl = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fm = add i64 %i.fl, 3
  store i64 %i.fm, ptr %i.b, align 8, !tbaa !367
  br label %.thread502

bb.au:                                            ; preds = %bb.aq
  %i.fn = getelementptr inbounds nuw i8, ptr %.1451, i64 5
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !93
  %.not = icmp eq i8 %i.fo, 92
  br i1 %.not, label %bb.ay, label %bb.av, !prof !251

bb.av:                                            ; preds = %bb.au
  %i.fp = getelementptr inbounds nuw i8, ptr %.1451, i64 5 ; 2 uses
  br i1 %4, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fq = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.fp, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb0EEEPKcS7_RmSt17integral_constantIbXT_EEbbE3loc_3) #47
  br label %.thread497

bb.ax:                                            ; preds = %bb.av
  %i.fr = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 %i.fr ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  store i8 -17, ptr %i.fs, align 1, !tbaa !93
  store i8 -65, ptr %i.ft, align 1, !tbaa !93
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store i8 -67, ptr %i.fu, align 1, !tbaa !93
  %i.fv = load i64, ptr %i.b, align 8, !tbaa !367
  %i.fw = add i64 %i.fv, 3
  store i64 %i.fw, ptr %i.b, align 8, !tbaa !367
  br label %.thread502

bb.ay:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %.1451, i64 6 ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !93
  %.not134 = icmp eq i8 %i.fy, 117
  br i1 %.not134, label %bb.bb, label %bb.az, !prof !251

bb.az:                                            ; preds = %bb.ay
  br i1 %4, label %bb.bt, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.fx, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb0EEEPKcS7_RmSt17integral_constantIbXT_EEbbE3loc_4) #47
  br label %.thread497

bb.bb:                                            ; preds = %bb.ay
  %i.ga = getelementptr inbounds nuw i8, ptr %.1451, i64 7 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 1            ; 5 uses
  %i.gc = lshr i32 %i.gb, 24                      ; 3 uses
  %i.gd = trunc nuw i32 %i.gc to i8               ; 2 uses
  %i.ge = add i8 %i.gd, -48
  %or.cond.i165 = icmp ult i8 %i.ge, 10
  br i1 %or.cond.i165, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gf = add nsw i32 %i.gc, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit168

bb.bd:                                            ; preds = %bb.bb
  %i.gg = and i8 %i.gd, -33
  %i.gh = add i8 %i.gg, -65
  %or.cond5.i166 = icmp ult i8 %i.gh, 6
  br i1 %or.cond5.i166, label %bb.be, label %_ZN5boost4json6detail9hex_digitEh.exit168

bb.be:                                            ; preds = %bb.bd
  %i.gi = and i32 %i.gc, 223
  %i.gj = add nsw i32 %i.gi, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit168

_ZN5boost4json6detail9hex_digitEh.exit168:        ; preds = %bb.bc, %bb.bd, %bb.be
  %.0.i167 = phi i32 [ %i.gf, %bb.bc ], [ %i.gj, %bb.be ], [ -1, %bb.bd ] ; 2 uses
  %i.gk = lshr i32 %i.gb, 16                      ; 3 uses
  %i.gl = trunc i32 %i.gk to i8                   ; 2 uses
  %i.gm = add i8 %i.gl, -48
  %or.cond.i169 = icmp ult i8 %i.gm, 10
  br i1 %or.cond.i169, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit168
  %i.gn = and i32 %i.gk, 255
  %i.go = add nsw i32 %i.gn, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit172

bb.bg:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit168
  %i.gp = and i8 %i.gl, -33
  %i.gq = add i8 %i.gp, -65
  %or.cond5.i170 = icmp ult i8 %i.gq, 6
  br i1 %or.cond5.i170, label %bb.bh, label %_ZN5boost4json6detail9hex_digitEh.exit172

bb.bh:                                            ; preds = %bb.bg
  %i.gr = and i32 %i.gk, 223
  %i.gs = add nsw i32 %i.gr, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit172

_ZN5boost4json6detail9hex_digitEh.exit172:        ; preds = %bb.bf, %bb.bg, %bb.bh
  %.0.i171 = phi i32 [ %i.go, %bb.bf ], [ %i.gs, %bb.bh ], [ -1, %bb.bg ] ; 3 uses
  %i.gt = lshr i32 %i.gb, 8                       ; 3 uses
  %i.gu = trunc i32 %i.gt to i8                   ; 2 uses
  %i.gv = add i8 %i.gu, -48
  %or.cond.i173 = icmp ult i8 %i.gv, 10
  br i1 %or.cond.i173, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit172
  %i.gw = and i32 %i.gt, 255
  %i.gx = add nsw i32 %i.gw, -48
  br label %_ZN5boost4json6detail9hex_digitEh.exit176

bb.bj:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit172
  %i.gy = and i8 %i.gu, -33
  %i.gz = add i8 %i.gy, -65
  %or.cond5.i174 = icmp ult i8 %i.gz, 6
  br i1 %or.cond5.i174, label %bb.bk, label %_ZN5boost4json6detail9hex_digitEh.exit176

bb.bk:                                            ; preds = %bb.bj
  %i.ha = and i32 %i.gt, 223
  %i.hb = add nsw i32 %i.ha, -55
  br label %_ZN5boost4json6detail9hex_digitEh.exit176

_ZN5boost4json6detail9hex_digitEh.exit176:        ; preds = %bb.bi, %bb.bj, %bb.bk
  %.0.i175 = phi i32 [ %i.gx, %bb.bi ], [ %i.hb, %bb.bk ], [ -1, %bb.bj ] ; 3 uses
  %i.hc = trunc i32 %i.gb to i8                   ; 2 uses
  %i.hd = add i8 %i.hc, -48
  %or.cond.i177 = icmp ult i8 %i.hd, 10
  br i1 %or.cond.i177, label %_ZN5boost4json6detail9hex_digitEh.exit180, label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost4json6detail9hex_digitEh.exit176
end_hunk_1
