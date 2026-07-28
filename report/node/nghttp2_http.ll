inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nghttp2_http_on_header:bb.a
  %.not.i115.i = icmp eq i8 %.in.i11.i114.i, 116
  br i1 %.not.i115.i, label %bb.bv, label %http_request_on_header.exit

bb.bv:                                            ; preds = %bb.bu
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !19  ; 3 uses
  %i.kc = add i8 %i.kb, -65
  %or.cond.i10.i113.1.i = icmp ult i8 %i.kc, 26
  %i.kd = or disjoint i8 %i.kb, 32
  %.in.i11.i114.1.i = select i1 %or.cond.i10.i113.1.i, i8 %i.kd, i8 %i.kb
  %.not.i115.1.i = icmp eq i8 %.in.i11.i114.1.i, 114
  br i1 %.not.i115.1.i, label %bb.bw, label %http_request_on_header.exit

bb.bw:                                            ; preds = %bb.bv
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !19  ; 3 uses
  %i.kg = add i8 %i.kf, -65
  %or.cond.i10.i113.2.i = icmp ult i8 %i.kg, 26
  %i.kh = or disjoint i8 %i.kf, 32
  %.in.i11.i114.2.i = select i1 %or.cond.i10.i113.2.i, i8 %i.kh, i8 %i.kf
  %.not.i115.2.i = icmp eq i8 %.in.i11.i114.2.i, 97
  br i1 %.not.i115.2.i, label %bb.bx, label %http_request_on_header.exit

bb.bx:                                            ; preds = %bb.bw
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !19  ; 3 uses
  %i.kk = add i8 %i.kj, -65
  %or.cond.i10.i113.3.i = icmp ult i8 %i.kk, 26
  %i.kl = or disjoint i8 %i.kj, 32
  %.in.i11.i114.3.i = select i1 %or.cond.i10.i113.3.i, i8 %i.kl, i8 %i.kj
  %.not.i115.3.i = icmp eq i8 %.in.i11.i114.3.i, 105
  br i1 %.not.i115.3.i, label %bb.by, label %http_request_on_header.exit

bb.by:                                            ; preds = %bb.bx
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !19  ; 3 uses
  %i.ko = add i8 %i.kn, -65
  %or.cond.i10.i113.4.i = icmp ult i8 %i.ko, 26
  %i.kp = or disjoint i8 %i.kn, 32
  %.in.i11.i114.4.i = select i1 %or.cond.i10.i113.4.i, i8 %i.kp, i8 %i.kn
  %.not.i115.4.i = icmp eq i8 %.in.i11.i114.4.i, 108
  br i1 %.not.i115.4.i, label %bb.bz, label %http_request_on_header.exit

bb.bz:                                            ; preds = %bb.by
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jw, i64 5
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !19  ; 3 uses
  %i.ks = add i8 %i.kr, -65
  %or.cond.i10.i113.5.i = icmp ult i8 %i.ks, 26
  %i.kt = or disjoint i8 %i.kr, 32
  %.in.i11.i114.5.i = select i1 %or.cond.i10.i113.5.i, i8 %i.kt, i8 %i.kr
  %.not.i115.5.i = icmp eq i8 %.in.i11.i114.5.i, 101
  br i1 %.not.i115.5.i, label %bb.ca, label %http_request_on_header.exit

bb.ca:                                            ; preds = %bb.bz
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jw, i64 6
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !19  ; 3 uses
  %i.kw = add i8 %i.kv, -65
  %or.cond.i10.i113.6.i = icmp ult i8 %i.kw, 26
  %i.kx = or disjoint i8 %i.kv, 32
  %.in.i11.i114.6.i = select i1 %or.cond.i10.i113.6.i, i8 %i.kx, i8 %i.kv
  %.not.i115.6.i = icmp eq i8 %.in.i11.i114.6.i, 114
  br i1 %.not.i115.6.i, label %bb.cb, label %http_request_on_header.exit

bb.cb:                                            ; preds = %bb.ca
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jw, i64 7
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !19  ; 3 uses
  %i.la = add i8 %i.kz, -65
  %or.cond.i10.i113.7.i = icmp ult i8 %i.la, 26
  %i.lb = or disjoint i8 %i.kz, 32
  %.in.i11.i114.7.i = select i1 %or.cond.i10.i113.7.i, i8 %i.lb, i8 %i.kz
  %.not.i115.7.i = icmp eq i8 %.in.i11.i114.7.i, 115
  br i1 %.not.i115.7.i, label %memieq.exit118.i, label %http_request_on_header.exit

bb.cc:                                            ; preds = %bb.ag
  %.not67.i = icmp eq i32 %4, 0
  br i1 %.not67.i, label %bb.cd, label %memieq.exit118.i

bb.cd:                                            ; preds = %bb.cc
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !58
  %i.le = and i32 %i.ld, 1
  %.not68.i = icmp eq i32 %i.le, 0
  br i1 %.not68.i, label %memieq.exit118.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !22
  %i.lh = and i32 %i.lg, 131072
  %.not69.i = icmp eq i32 %i.lh, 0
  br i1 %.not69.i, label %bb.cf, label %memieq.exit118.i

bb.cf:                                            ; preds = %bb.ce
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !60
  call void @nghttp2_extpri_from_uint8(ptr noundef nonnull %5, i8 noundef zeroext %i.lj) #8
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !30 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !14
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !18
  %i.lq = call i32 @nghttp2_http_parse_priority(ptr noundef nonnull %5, ptr noundef %i.ln, i64 noundef %i.lp)
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ls = call zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef nonnull %5) #8
  store i8 %i.ls, ptr %i.li, align 1, !tbaa !60
  %i.lt = load i32, ptr %i.lf, align 8, !tbaa !22
  %i.lu = or i32 %i.lt, 65536
  store i32 %i.lu, ptr %i.lf, align 8, !tbaa !22
  br label %memieq.exit118.i

bb.ch:                                            ; preds = %bb.cf
  %i.lv = load i32, ptr %i.lf, align 8, !tbaa !22
  %i.lw = and i32 %i.lv, -196609
  %i.lx = or disjoint i32 %i.lw, 131072
  store i32 %i.lx, ptr %i.lf, align 8, !tbaa !22
  br label %memieq.exit118.i

bb.ci:                                            ; preds = %bb.ag
  br i1 %i.dv, label %http_request_on_header.exit, label %memieq.exit118.i

memieq.exit118.i:                                 ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bs, %check_pseudo_header.exit109.i, %check_pseudo_header.exit106.i, %memieq.exit.i, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.az, %bb.ay, %bb.ax, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %check_pseudo_header.exit.i
  %i.ly = load ptr, ptr %3, align 8, !tbaa !10
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !14
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !19
  %.not83.i = icmp eq i8 %i.mb, 58
  br i1 %.not83.i, label %http_request_on_header.exit, label %bb.cj

bb.cj:                                            ; preds = %memieq.exit118.i
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !22
  %i.me = or i32 %i.md, 64
  store i32 %i.me, ptr %i.mc, align 8, !tbaa !22
  br label %http_request_on_header.exit

http_request_on_header.exit:                      ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.aq, %bb.au, %bb.av, %bb.ba, %bb.bb, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.ci, %memieq.exit118.i, %bb.cj
  %.0.i70 = phi i32 [ -531, %bb.ag ], [ -531, %bb.bt ], [ -531, %bb.ci ], [ -531, %bb.ae ], [ -531, %bb.ah ], [ 0, %memieq.exit118.i ], [ -531, %bb.aq ], [ -531, %bb.aj ], [ -531, %bb.bm ], [ -531, %bb.au ], [ -531, %bb.ba ], [ -531, %bb.bn ], [ -531, %bb.br ], [ -531, %bb.bs ], [ -531, %bb.af ], [ -531, %bb.ag ], [ -531, %bb.ag ], [ -531, %bb.ag ], [ -531, %bb.ag ], [ -531, %bb.bp ], [ 0, %bb.cj ], [ -531, %bb.ai ], [ -531, %bb.ak ], [ -531, %bb.av ], [ -531, %bb.bb ], [ -531, %bb.bo ], [ -531, %bb.bq ], [ -531, %bb.cb ], [ -531, %bb.ca ], [ -531, %bb.bz ], [ -531, %bb.by ], [ -531, %bb.bx ], [ -531, %bb.bw ], [ -531, %bb.bv ], [ -531, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %http_response_on_header.exit

bb.ck:                                            ; preds = %bb.ac
  %i.mf = load ptr, ptr %3, align 8, !tbaa !10
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !14 ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !19
  %i.mj = icmp eq i8 %i.mi, 58                    ; 2 uses
  br i1 %i.mj, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %.not.i77 = icmp eq i32 %4, 0
  br i1 %.not.i77, label %bb.cm, label %http_response_on_header.exit

bb.cm:                                            ; preds = %bb.cl
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !22
  %i.mm = and i32 %i.ml, 64
  %.not38.i = icmp eq i32 %i.mm, 0
  br i1 %.not38.i, label %bb.cn, label %http_response_on_header.exit

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %i.mn = load i32, ptr %i.w, align 8, !tbaa !28
  switch i32 %i.mn, label %bb.dj [
    i32 7, label %bb.co
    i32 27, label %bb.cr
    i32 62, label %http_response_on_header.exit
    i32 63, label %http_response_on_header.exit
    i32 64, label %http_response_on_header.exit
    i32 56, label %http_response_on_header.exit
    i32 65, label %http_response_on_header.exit
    i32 61, label %bb.da
  ]

bb.co:                                            ; preds = %bb.cn
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !22 ; 2 uses
  %i.mq = and i32 %i.mp, 32
  %.not.i.i76 = icmp eq i32 %i.mq, 0
  br i1 %.not.i.i76, label %bb.cp, label %http_response_on_header.exit

bb.cp:                                            ; preds = %bb.co
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !30 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !18 ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %http_response_on_header.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mw = or disjoint i32 %i.mp, 32
  store i32 %i.mw, ptr %i.mo, align 8, !tbaa !22
  %.not46.i = icmp eq i64 %i.mu, 3
  br i1 %.not46.i, label %.preheader.i.i, label %http_response_on_header.exit

.preheader.i.i:                                   ; preds = %bb.cq
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !14 ; 3 uses
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !19  ; 2 uses
  %6 = zext i8 %i.mz to i16
  %i.na = add i8 %i.mz, -58
  %or.cond.i.i = icmp ult i8 %i.na, -10
  br i1 %or.cond.i.i, label %parse_uint.exit.thread.i, label %.preheader.i.1.i

.preheader.i.1.i:                                 ; preds = %.preheader.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !19  ; 2 uses
  %7 = zext i8 %i.nc to i16
  %i.nd = add i8 %i.nc, -58
  %or.cond.i.1.i = icmp ult i8 %i.nd, -10
  br i1 %or.cond.i.1.i, label %parse_uint.exit.thread.i, label %.preheader.i.2.i

.preheader.i.2.i:                                 ; preds = %.preheader.i.1.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !19  ; 2 uses
  %i.ng = add i8 %i.nf, -58
  %or.cond.i.2.i = icmp ult i8 %i.ng, -10
  br i1 %or.cond.i.2.i, label %parse_uint.exit.thread.i, label %parse_uint.exit.i

parse_uint.exit.i:                                ; preds = %.preheader.i.2.i
  %i.nh = zext nneg i8 %i.nf to i16
  %8 = mul nuw nsw i16 %6, 10
  %9 = add nsw i16 %8, -528
  %10 = add nsw i16 %9, %7
  %11 = mul nuw nsw i16 %10, 10
  %i.ni = add nsw i16 %11, -48
  %i.nj = add nsw i16 %i.ni, %i.nh                ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i16 %i.nj, ptr %i.nk, align 4, !tbaa !61
  %cond.i = icmp eq i16 %i.nj, 101
  br i1 %cond.i, label %http_response_on_header.exit, label %memieq.exit59.i

parse_uint.exit.thread.i:                         ; preds = %.preheader.i.2.i, %.preheader.i.1.i, %.preheader.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i16 -1, ptr %i.nl, align 4, !tbaa !61
  br label %http_response_on_header.exit

bb.cr:                                            ; preds = %bb.cn
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.nn = load i16, ptr %i.nm, align 4, !tbaa !61 ; 3 uses
  %i.no = icmp eq i16 %i.nn, 204
  br i1 %i.no, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !59
  %.not43.i = icmp eq i64 %i.nq, -1
  br i1 %.not43.i, label %bb.ct, label %http_response_on_header.exit

bb.ct:                                            ; preds = %bb.cs
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !30 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !18
  %i.nv = icmp eq i64 %i.nu, 1
  br i1 %i.nv, label %bb.cu, label %http_response_on_header.exit

bb.cu:                                            ; preds = %bb.ct
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !14
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !19  ; 3 uses
  %i.nz = add i8 %i.ny, -65
  %or.cond.i10.i.i73 = icmp ult i8 %i.nz, 26
  %i.oa = or disjoint i8 %i.ny, 32
  %.in.i11.i.i74 = select i1 %or.cond.i10.i.i73, i8 %i.oa, i8 %i.ny
  %.not.i48.i = icmp eq i8 %.in.i11.i.i74, 48
  br i1 %.not.i48.i, label %memieq.exit.i75, label %http_response_on_header.exit

memieq.exit.i75:                                  ; preds = %bb.cu
  store i64 0, ptr %i.np, align 8, !tbaa !59
  br label %http_response_on_header.exit

bb.cv:                                            ; preds = %bb.cr
  %.off.i = add i16 %i.nn, -100
  %i.ob = icmp ult i16 %.off.i, 100
  br i1 %i.ob, label %http_response_on_header.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.off40.i = add i16 %i.nn, -200
  %i.oc = icmp ult i16 %.off40.i, 100
  br i1 %i.oc, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !22
  %i.of = and i32 %i.oe, 128
  %.not41.i = icmp eq i32 %i.of, 0
  br i1 %.not41.i, label %bb.cy, label %http_response_on_header.exit

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !59
  %.not42.i = icmp eq i64 %i.oh, -1
  br i1 %.not42.i, label %bb.cz, label %http_response_on_header.exit

bb.cz:                                            ; preds = %bb.cy
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !30 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !14
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.on = load i64, ptr %i.om, align 8, !tbaa !18
  %i.oo = tail call fastcc i64 @parse_uint(ptr noundef %i.ol, i64 noundef %i.on) ; 2 uses
  store i64 %i.oo, ptr %i.og, align 8, !tbaa !59
  %i.op = icmp eq i64 %i.oo, -1
  br i1 %i.op, label %http_response_on_header.exit, label %memieq.exit59.i

bb.da:                                            ; preds = %bb.cn
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !30 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !18
  %i.ou = icmp eq i64 %i.ot, 8
  br i1 %i.ou, label %bb.db, label %http_response_on_header.exit

bb.db:                                            ; preds = %bb.da
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !14 ; 8 uses
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !19  ; 3 uses
  %i.oy = add i8 %i.ox, -65
  %or.cond.i10.i54.i = icmp ult i8 %i.oy, 26
  %i.oz = or disjoint i8 %i.ox, 32
  %.in.i11.i55.i = select i1 %or.cond.i10.i54.i, i8 %i.oz, i8 %i.ox
  %.not.i56.i = icmp eq i8 %.in.i11.i55.i, 116
  br i1 %.not.i56.i, label %bb.dc, label %http_response_on_header.exit

bb.dc:                                            ; preds = %bb.db
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 1
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !19  ; 3 uses
  %i.pc = add i8 %i.pb, -65
  %or.cond.i10.i54.1.i = icmp ult i8 %i.pc, 26
  %i.pd = or disjoint i8 %i.pb, 32
  %.in.i11.i55.1.i = select i1 %or.cond.i10.i54.1.i, i8 %i.pd, i8 %i.pb
  %.not.i56.1.i = icmp eq i8 %.in.i11.i55.1.i, 114
  br i1 %.not.i56.1.i, label %bb.dd, label %http_response_on_header.exit

bb.dd:                                            ; preds = %bb.dc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 2
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !19  ; 3 uses
  %i.pg = add i8 %i.pf, -65
  %or.cond.i10.i54.2.i = icmp ult i8 %i.pg, 26
  %i.ph = or disjoint i8 %i.pf, 32
  %.in.i11.i55.2.i = select i1 %or.cond.i10.i54.2.i, i8 %i.ph, i8 %i.pf
  %.not.i56.2.i = icmp eq i8 %.in.i11.i55.2.i, 97
  br i1 %.not.i56.2.i, label %bb.de, label %http_response_on_header.exit

bb.de:                                            ; preds = %bb.dd
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ow, i64 3
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !19  ; 3 uses
  %i.pk = add i8 %i.pj, -65
  %or.cond.i10.i54.3.i = icmp ult i8 %i.pk, 26
  %i.pl = or disjoint i8 %i.pj, 32
  %.in.i11.i55.3.i = select i1 %or.cond.i10.i54.3.i, i8 %i.pl, i8 %i.pj
  %.not.i56.3.i = icmp eq i8 %.in.i11.i55.3.i, 105
  br i1 %.not.i56.3.i, label %bb.df, label %http_response_on_header.exit

bb.df:                                            ; preds = %bb.de
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !19  ; 3 uses
  %i.po = add i8 %i.pn, -65
  %or.cond.i10.i54.4.i = icmp ult i8 %i.po, 26
  %i.pp = or disjoint i8 %i.pn, 32
  %.in.i11.i55.4.i = select i1 %or.cond.i10.i54.4.i, i8 %i.pp, i8 %i.pn
  %.not.i56.4.i = icmp eq i8 %.in.i11.i55.4.i, 108
  br i1 %.not.i56.4.i, label %bb.dg, label %http_response_on_header.exit

bb.dg:                                            ; preds = %bb.df
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ow, i64 5
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !19  ; 3 uses
  %i.ps = add i8 %i.pr, -65
  %or.cond.i10.i54.5.i = icmp ult i8 %i.ps, 26
  %i.pt = or disjoint i8 %i.pr, 32
  %.in.i11.i55.5.i = select i1 %or.cond.i10.i54.5.i, i8 %i.pt, i8 %i.pr
  %.not.i56.5.i = icmp eq i8 %.in.i11.i55.5.i, 101
  br i1 %.not.i56.5.i, label %bb.dh, label %http_response_on_header.exit

bb.dh:                                            ; preds = %bb.dg
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ow, i64 6
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !19  ; 3 uses
  %i.pw = add i8 %i.pv, -65
  %or.cond.i10.i54.6.i = icmp ult i8 %i.pw, 26
  %i.px = or disjoint i8 %i.pv, 32
  %.in.i11.i55.6.i = select i1 %or.cond.i10.i54.6.i, i8 %i.px, i8 %i.pv
  %.not.i56.6.i = icmp eq i8 %.in.i11.i55.6.i, 114
  br i1 %.not.i56.6.i, label %bb.di, label %http_response_on_header.exit

bb.di:                                            ; preds = %bb.dh
  %i.py = getelementptr inbounds nuw i8, ptr %i.ow, i64 7
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !19  ; 3 uses
  %i.qa = add i8 %i.pz, -65
  %or.cond.i10.i54.7.i = icmp ult i8 %i.qa, 26
  %i.qb = or disjoint i8 %i.pz, 32
  %.in.i11.i55.7.i = select i1 %or.cond.i10.i54.7.i, i8 %i.qb, i8 %i.pz
  %.not.i56.7.i = icmp eq i8 %.in.i11.i55.7.i, 115
  br i1 %.not.i56.7.i, label %memieq.exit59.i, label %http_response_on_header.exit

bb.dj:                                            ; preds = %bb.cn
  br i1 %i.mj, label %http_response_on_header.exit, label %memieq.exit59.i

memieq.exit59.i:                                  ; preds = %bb.dj, %bb.di, %bb.cz, %parse_uint.exit.i
  %i.qc = load i8, ptr %i.mh, align 1, !tbaa !19
  %.not47.i = icmp eq i8 %i.qc, 58
  br i1 %.not47.i, label %http_response_on_header.exit, label %bb.dk

bb.dk:                                            ; preds = %memieq.exit59.i
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !22
  %i.qf = or i32 %i.qe, 64
  store i32 %i.qf, ptr %i.qd, align 8, !tbaa !22
  br label %http_response_on_header.exit

http_response_on_header.exit:                     ; preds = %bb.e, %bb.dk, %memieq.exit59.i, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cv, %memieq.exit.i75, %bb.cu, %bb.ct, %bb.cs, %parse_uint.exit.thread.i, %parse_uint.exit.i, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cm, %bb.cl, %bb.aa, %._crit_edge, %bb.c, %http_request_on_header.exit, %bb.ab
  %.3 = phi i32 [ -531, %bb.c ], [ -105, %bb.ab ], [ %.0.i70, %http_request_on_header.exit ], [ -531, %bb.aa ], [ -105, %._crit_edge ], [ -531, %bb.dc ], [ -531, %bb.cn ], [ -531, %bb.da ], [ -531, %bb.dj ], [ -531, %parse_uint.exit.thread.i ], [ -531, %bb.cq ], [ -531, %bb.cl ], [ -531, %bb.db ], [ -106, %memieq.exit.i75 ], [ -531, %bb.cs ], [ -531, %bb.ct ], [ -531, %bb.cv ], [ -106, %bb.cx ], [ -531, %bb.cy ], [ -531, %bb.cz ], [ -531, %bb.cm ], [ -531, %parse_uint.exit.i ], [ -531, %bb.co ], [ -531, %bb.cn ], [ -531, %bb.cn ], [ -531, %bb.cn ], [ -531, %bb.cn ], [ -531, %bb.cu ], [ 0, %bb.dk ], [ 0, %memieq.exit59.i ], [ -531, %bb.cp ], [ -531, %bb.di ], [ -531, %bb.dh ], [ -531, %bb.dg ], [ -531, %bb.df ], [ -531, %bb.de ], [ -531, %bb.dd ], [ -531, %bb.e ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @nghttp2_check_header_name(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @nghttp2_check_method(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @nghttp2_check_path(ptr noundef, i64 noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@nghttp2_http_on_data_chunk:bb.a
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @nghttp2_http_record_request_method(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !19
  switch i8 %i.b, label %.critedge [
    i8 1, label %bb.c
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink34 = phi i64 [ 24, %bb.b ], [ 40, %bb.a ]
  %.sink = phi i64 [ 32, %bb.b ], [ 48, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sink34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.0 = load ptr, ptr %i.c, align 8, !tbaa !19
  %.024 = load i64, ptr %i.d, align 8, !tbaa !19  ; 2 uses
  %.not = icmp eq i64 %.024, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.02330 = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.0, i64 %.02330 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !63
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !65   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = icmp eq i8 %i.k, 100
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.i, align 1
  %i.n = xor i32 1952804154, %i.m
  %i.o = getelementptr i8, ptr %i.i, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 28520, %i.q
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !66
  switch i64 %i.x, label %.critedge [
    i64 7, label %bb.g
    i64 4, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 1313754947, %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 1413694798, %i.ad
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge.sink.split, label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = icmp ne i32 1145128264, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.critedge.sink.split, label %.critedge

bb.i:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.ap = add nuw i64 %.02330, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %.024
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !68

.critedge.sink.split:                             ; preds = %bb.h, %bb.g
  %.sink38 = phi i32 [ 128, %bb.g ], [ 256, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !22
  %i.as = or i32 %i.ar, %.sink38
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.critedge.sink.split, %bb.c, %bb.f, %bb.g, %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -501, 1) i32 @nghttp2_http_parse_priority(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sfparse_parser, align 8     ; 4 uses
  %4 = alloca %struct.sfparse_vec, align 8        ; 5 uses
  %5 = alloca %struct.sfparse_value, align 8      ; 6 uses
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @sfparse_parser_init(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.f, %bb.a
  %.sroa.5.0.ph.ph = phi i32 [ %i.h, %bb.f ], [ %.sroa.5.0.copyload, %bb.a ]
  %.sroa.0.0.ph.ph = phi i32 [ %.sroa.0.0.ph.ph41, %bb.f ], [ %.sroa.0.0.copyload, %bb.a ]
  br label %.outer.outer40

.outer.outer40:                                   ; preds = %.outer.outer, %bb.h
  %.sroa.0.0.ph.ph41 = phi i32 [ %.sroa.0.0.ph.ph, %.outer.outer ], [ %i.m, %bb.h ] ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer40, %bb.d
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %i.c = call i32 @sfparse_parser_dict(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  switch i32 %i.c, label %.loopexit [
    i32 0, label %bb.c
    i32 -2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %i.a, align 8, !tbaa !70
  %.not16 = icmp eq i64 %i.d, 1
  br i1 %.not16, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8, !tbaa !72
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  switch i8 %i.f, label %.outer [
    i8 105, label %bb.e
    i8 117, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %5, align 8, !tbaa !73
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.b, align 8, !tbaa !19
  br label %.outer.outer

bb.g:                                             ; preds = %bb.d
  %i.i = load i32, ptr %5, align 8, !tbaa !73
  %i.j = icmp ne i32 %i.i, 1
  %i.k = load i64, ptr %i.b, align 8              ; 2 uses
  %i.l = icmp ugt i64 %i.k, 7
  %or.cond5 = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond5, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = trunc nuw nsw i64 %i.k to i32
  br label %.outer.outer40

bb.i:                                             ; preds = %bb.b
  store i32 %.sroa.0.0.ph.ph41, ptr %0, align 4, !tbaa !69
  store i32 %.sroa.5.0.ph.ph, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.b, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ -501, %bb.b ], [ -501, %bb.e ], [ -501, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.0
}

declare void @sfparse_parser_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @sfparse_parser_dict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @parse_uint(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.024 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %.01723 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.024
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19    ; 2 uses
  %2 = zext i8 %i.c to i64                        ; 2 uses
  %i.d = add i8 %i.c, -58
  %or.cond = icmp ult i8 %i.d, -10
  %i.e = icmp sgt i64 %.01723, 922337203685477580
  %or.cond22 = or i1 %or.cond, %i.e
  br i1 %or.cond22, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = mul nsw i64 %.01723, 10                  ; 2 uses
  %3 = sub nuw i64 -9223372036854775761, %2
  %i.g = icmp sgt i64 %i.f, %3
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = add i64 %i.f, -48
  %i.h = add i64 %4, %2                           ; 2 uses
  %i.i = add nuw i64 %.024, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %1
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !75

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b, %bb.a
  %.018 = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ %i.h, %bb.c ], [ -1, %.preheader ]
  ret i64 %.018
}

declare void @nghttp2_extpri_from_uint8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 8, !7, i64 16, !8, i64 20}
!12 = !{!"p1 _ZTS13nghttp2_rcbuf", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !16, i64 16}
!15 = !{!"nghttp2_rcbuf", !13, i64 0, !13, i64 8, !16, i64 16, !17, i64 24, !7, i64 32}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!15, !17, i64 24}
!19 = !{!8, !8, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !7, i64 112}
!23 = !{!"nghttp2_stream", !7, i64 0, !24, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !25, i64 48, !13, i64 56, !26, i64 64, !17, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !27, i64 108, !7, i64 112, !8, i64 116, !8, i64 117, !8, i64 118, !8, i64 119, !8, i64 120, !8, i64 121}
!24 = !{!"", !17, i64 0}
!25 = !{!"p1 _ZTS14nghttp2_stream", !13, i64 0}
!26 = !{!"p1 _ZTS21nghttp2_outbound_item", !13, i64 0}
!27 = !{!"short", !8, i64 0}
!28 = !{!11, !7, i64 16}
!29 = !{!23, !8, i64 116}
!30 = !{!11, !12, i64 8}
!31 = !{!32, !8, i64 2723}
!32 = !{!"nghttp2_session", !33, i64 0, !35, i64 40, !35, i64 64, !35, i64 88, !8, i64 112, !36, i64 432, !39, i64 512, !41, i64 776, !47, i64 1888, !49, i64 2128, !50, i64 2360, !13, i64 2400, !51, i64 2408, !52, i64 2416, !52, i64 2448, !17, i64 2480, !17, i64 2488, !17, i64 2496, !17, i64 2504, !17, i64 2512, !17, i64 2520, !17, i64 2528, !17, i64 2536, !17, i64 2544, !17, i64 2552, !17, i64 2560, !17, i64 2568, !17, i64 2576, !17, i64 2584, !7, i64 2592, !7, i64 2596, !7, i64 2600, !7, i64 2604, !7, i64 2608, !7, i64 2612, !7, i64 2616, !7, i64 2620, !7, i64 2624, !7, i64 2628, !7, i64 2632, !7, i64 2636, !8, i64 2640, !53, i64 2644, !53, i64 2676, !7, i64 2708, !7, i64 2712, !7, i64 2716, !8, i64 2720, !8, i64 2721, !8, i64 2722, !8, i64 2723, !8, i64 2724, !8, i64 2725, !8, i64 2726}
!33 = !{!"nghttp2_map", !34, i64 0, !13, i64 8, !7, i64 16, !17, i64 24, !17, i64 32}
!34 = !{!"p1 _ZTS18nghttp2_map_bucket", !13, i64 0}
!35 = !{!"", !26, i64 0, !26, i64 8, !17, i64 16}
!36 = !{!"", !26, i64 0, !37, i64 8, !7, i64 72}
!37 = !{!"", !38, i64 0, !38, i64 8, !13, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56}
!38 = !{!"p1 _ZTS17nghttp2_buf_chain", !13, i64 0}
!39 = !{!"", !8, i64 0, !8, i64 64, !13, i64 96, !40, i64 104, !40, i64 144, !16, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !7, i64 224, !8, i64 228}
!40 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!41 = !{!"nghttp2_hd_deflater", !42, i64 0, !46, i64 64, !17, i64 1088, !17, i64 1096, !8, i64 1104}
!42 = !{!"", !43, i64 0, !13, i64 32, !17, i64 40, !17, i64 48, !7, i64 56, !8, i64 60}
!43 = !{!"", !44, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!44 = !{!"p2 _ZTS16nghttp2_hd_entry", !45, i64 0}
!45 = !{!"any p2 pointer", !13, i64 0}
!46 = !{!"", !8, i64 0}
!47 = !{!"nghttp2_hd_inflater", !42, i64 0, !48, i64 64, !40, i64 72, !40, i64 112, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !7, i64 224, !7, i64 228, !8, i64 232, !8, i64 233, !8, i64 234}
!48 = !{!"", !27, i64 0}
!49 = !{!"nghttp2_session_callbacks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224}
!50 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!51 = !{!"p1 _ZTS25nghttp2_inflight_settings", !13, i64 0}
!52 = !{!"nghttp2_ratelim", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!53 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = !{!32, !8, i64 2721}
!58 = !{!23, !7, i64 80}
!59 = !{!23, !17, i64 16}
!60 = !{!23, !8, i64 121}
!61 = !{!23, !27, i64 108}
!62 = !{!23, !17, i64 24}
!63 = !{!64, !17, i64 16}
!64 = !{!"", !16, i64 0, !16, i64 8, !17, i64 16, !17, i64 24, !8, i64 32}
!65 = !{!64, !16, i64 0}
!66 = !{!64, !17, i64 24}
!67 = !{!64, !16, i64 8}
!68 = distinct !{!68, !21}
!69 = !{!7, !7, i64 0}
!70 = !{!71, !17, i64 8}
!71 = !{!"sfparse_vec", !16, i64 0, !17, i64 8}
!72 = !{!71, !16, i64 0}
!73 = !{!74, !7, i64 0}
!74 = !{!"sfparse_value", !7, i64 0, !7, i64 4, !8, i64 8}
!75 = distinct !{!75, !21}
end_hunk_1
