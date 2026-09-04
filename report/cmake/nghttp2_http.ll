Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/nghttp2_http?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nghttp2_http_on_header:bb.a
  %.not.i114.i = icmp eq i8 %.in.i11.i113.i, 116
  br i1 %.not.i114.i, label %bb.bt, label %http_request_on_header.exit

bb.bt:                                            ; preds = %bb.bs
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !12  ; 3 uses
  %i.ka = add i8 %i.jz, -65
  %or.cond.i10.i112.1.i = icmp ult i8 %i.ka, 26
  %i.kb = or disjoint i8 %i.jz, 32
  %.in.i11.i113.1.i = select i1 %or.cond.i10.i112.1.i, i8 %i.kb, i8 %i.jz
  %.not.i114.1.i = icmp eq i8 %.in.i11.i113.1.i, 114
  br i1 %.not.i114.1.i, label %bb.bu, label %http_request_on_header.exit

bb.bu:                                            ; preds = %bb.bt
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !12  ; 3 uses
  %i.ke = add i8 %i.kd, -65
  %or.cond.i10.i112.2.i = icmp ult i8 %i.ke, 26
  %i.kf = or disjoint i8 %i.kd, 32
  %.in.i11.i113.2.i = select i1 %or.cond.i10.i112.2.i, i8 %i.kf, i8 %i.kd
  %.not.i114.2.i = icmp eq i8 %.in.i11.i113.2.i, 97
  br i1 %.not.i114.2.i, label %bb.bv, label %http_request_on_header.exit

bb.bv:                                            ; preds = %bb.bu
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ju, i64 3
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !12  ; 3 uses
  %i.ki = add i8 %i.kh, -65
  %or.cond.i10.i112.3.i = icmp ult i8 %i.ki, 26
  %i.kj = or disjoint i8 %i.kh, 32
  %.in.i11.i113.3.i = select i1 %or.cond.i10.i112.3.i, i8 %i.kj, i8 %i.kh
  %.not.i114.3.i = icmp eq i8 %.in.i11.i113.3.i, 105
  br i1 %.not.i114.3.i, label %bb.bw, label %http_request_on_header.exit

bb.bw:                                            ; preds = %bb.bv
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !12  ; 3 uses
  %i.km = add i8 %i.kl, -65
  %or.cond.i10.i112.4.i = icmp ult i8 %i.km, 26
  %i.kn = or disjoint i8 %i.kl, 32
  %.in.i11.i113.4.i = select i1 %or.cond.i10.i112.4.i, i8 %i.kn, i8 %i.kl
  %.not.i114.4.i = icmp eq i8 %.in.i11.i113.4.i, 108
  br i1 %.not.i114.4.i, label %bb.bx, label %http_request_on_header.exit

bb.bx:                                            ; preds = %bb.bw
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ju, i64 5
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !12  ; 3 uses
  %i.kq = add i8 %i.kp, -65
  %or.cond.i10.i112.5.i = icmp ult i8 %i.kq, 26
  %i.kr = or disjoint i8 %i.kp, 32
  %.in.i11.i113.5.i = select i1 %or.cond.i10.i112.5.i, i8 %i.kr, i8 %i.kp
  %.not.i114.5.i = icmp eq i8 %.in.i11.i113.5.i, 101
  br i1 %.not.i114.5.i, label %bb.by, label %http_request_on_header.exit

bb.by:                                            ; preds = %bb.bx
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ju, i64 6
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !12  ; 3 uses
  %i.ku = add i8 %i.kt, -65
  %or.cond.i10.i112.6.i = icmp ult i8 %i.ku, 26
  %i.kv = or disjoint i8 %i.kt, 32
  %.in.i11.i113.6.i = select i1 %or.cond.i10.i112.6.i, i8 %i.kv, i8 %i.kt
  %.not.i114.6.i = icmp eq i8 %.in.i11.i113.6.i, 114
  br i1 %.not.i114.6.i, label %bb.bz, label %http_request_on_header.exit

bb.bz:                                            ; preds = %bb.by
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ju, i64 7
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !12  ; 3 uses
  %i.ky = add i8 %i.kx, -65
  %or.cond.i10.i112.7.i = icmp ult i8 %i.ky, 26
  %i.kz = or disjoint i8 %i.kx, 32
  %.in.i11.i113.7.i = select i1 %or.cond.i10.i112.7.i, i8 %i.kz, i8 %i.kx
  %.not.i114.7.i = icmp eq i8 %.in.i11.i113.7.i, 115
  br i1 %.not.i114.7.i, label %memieq.exit117.i, label %http_request_on_header.exit

bb.ca:                                            ; preds = %bb.ae
  %.not67.i = icmp eq i32 %4, 0
  br i1 %.not67.i, label %bb.cb, label %memieq.exit117.i

bb.cb:                                            ; preds = %bb.ca
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !60
  %i.lc = and i32 %i.lb, 1
  %.not68.i = icmp eq i32 %i.lc, 0
  br i1 %.not68.i, label %memieq.exit117.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !19
  %i.lf = and i32 %i.le, 131072
  %.not69.i = icmp eq i32 %i.lf, 0
  br i1 %.not69.i, label %bb.cd, label %memieq.exit117.i

bb.cd:                                            ; preds = %bb.cc
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !61
  call void @nghttp2_extpri_from_uint8(ptr noundef nonnull %5, i8 noundef zeroext %i.lh) #7
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !35 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !31
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !32
  %i.lo = call i32 @nghttp2_http_parse_priority(ptr noundef nonnull %5, ptr noundef %i.ll, i64 noundef %i.ln)
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.lq = call zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef nonnull %5) #7
  store i8 %i.lq, ptr %i.lg, align 1, !tbaa !61
  %i.lr = load i32, ptr %i.ld, align 8, !tbaa !19
  %i.ls = or i32 %i.lr, 65536
  store i32 %i.ls, ptr %i.ld, align 8, !tbaa !19
  br label %memieq.exit117.i

bb.cf:                                            ; preds = %bb.cd
  %i.lt = load i32, ptr %i.ld, align 8, !tbaa !19
  %i.lu = and i32 %i.lt, -196609
  %i.lv = or disjoint i32 %i.lu, 131072
  store i32 %i.lv, ptr %i.ld, align 8, !tbaa !19
  br label %memieq.exit117.i

bb.cg:                                            ; preds = %bb.ae
  br i1 %i.dt, label %http_request_on_header.exit, label %memieq.exit117.i

memieq.exit117.i:                                 ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.bq, %check_pseudo_header.exit108.i, %check_pseudo_header.exit105.i, %memieq.exit.i, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ax, %bb.aw, %bb.av, %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %check_pseudo_header.exit.i
  %i.lw = load ptr, ptr %3, align 8, !tbaa !29
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !31
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !12
  %.not83.i = icmp eq i8 %i.lz, 58
  br i1 %.not83.i, label %http_request_on_header.exit, label %bb.ch

bb.ch:                                            ; preds = %memieq.exit117.i
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !19
  %i.mc = or i32 %i.mb, 64
  store i32 %i.mc, ptr %i.ma, align 8, !tbaa !19
  br label %http_request_on_header.exit

http_request_on_header.exit:                      ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ao, %bb.as, %bb.at, %bb.ay, %bb.az, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.cg, %memieq.exit117.i, %bb.ch
  %.0.i68 = phi i32 [ -531, %bb.ae ], [ -531, %bb.br ], [ -531, %bb.cg ], [ -531, %bb.ac ], [ -531, %bb.af ], [ 0, %memieq.exit117.i ], [ -531, %bb.ao ], [ -531, %bb.ah ], [ -531, %bb.bk ], [ -531, %bb.as ], [ -531, %bb.ay ], [ -531, %bb.bl ], [ -531, %bb.bp ], [ -531, %bb.bq ], [ -531, %bb.ad ], [ -531, %bb.ae ], [ -531, %bb.ae ], [ -531, %bb.ae ], [ -531, %bb.ae ], [ -531, %bb.bn ], [ 0, %bb.ch ], [ -531, %bb.ag ], [ -531, %bb.ai ], [ -531, %bb.at ], [ -531, %bb.az ], [ -531, %bb.bm ], [ -531, %bb.bo ], [ -531, %bb.bz ], [ -531, %bb.by ], [ -531, %bb.bx ], [ -531, %bb.bw ], [ -531, %bb.bv ], [ -531, %bb.bu ], [ -531, %bb.bt ], [ -531, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %http_response_on_header.exit

bb.ci:                                            ; preds = %bb.aa
  %i.md = load ptr, ptr %3, align 8, !tbaa !29
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !31 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !12
  %i.mh = icmp eq i8 %i.mg, 58                    ; 2 uses
  br i1 %i.mh, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %.not.i75 = icmp eq i32 %4, 0
  br i1 %.not.i75, label %bb.ck, label %http_response_on_header.exit

bb.ck:                                            ; preds = %bb.cj
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !19
  %i.mk = and i32 %i.mj, 64
  %.not38.i = icmp eq i32 %i.mk, 0
  br i1 %.not38.i, label %bb.cl, label %http_response_on_header.exit

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %i.ml = load i32, ptr %i.w, align 8, !tbaa !33
  switch i32 %i.ml, label %bb.dh [
    i32 7, label %bb.cm
    i32 27, label %bb.cp
    i32 62, label %http_response_on_header.exit
    i32 63, label %http_response_on_header.exit
    i32 64, label %http_response_on_header.exit
    i32 56, label %http_response_on_header.exit
    i32 65, label %http_response_on_header.exit
    i32 61, label %bb.cy
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !19 ; 2 uses
  %i.mo = and i32 %i.mn, 32
  %.not.i.i74 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i74, label %bb.cn, label %http_response_on_header.exit

bb.cn:                                            ; preds = %bb.cm
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !35 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !32 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 0
  br i1 %i.mt, label %http_response_on_header.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mu = or disjoint i32 %i.mn, 32
  store i32 %i.mu, ptr %i.mm, align 8, !tbaa !19
  %.not46.i = icmp eq i64 %i.ms, 3
  br i1 %.not46.i, label %.preheader.i.i, label %http_response_on_header.exit

.preheader.i.i:                                   ; preds = %bb.co
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !31 ; 3 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !12  ; 2 uses
  %i.my = add i8 %i.mx, -58
  %or.cond.i.i = icmp ult i8 %i.my, -10
  br i1 %or.cond.i.i, label %parse_uint.exit.thread.i, label %.preheader.i.1.i

.preheader.i.1.i:                                 ; preds = %.preheader.i.i
  %6 = and i8 %i.mx, 15
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !12  ; 2 uses
  %i.nb = add i8 %i.na, -58
  %or.cond.i.1.i = icmp ult i8 %i.nb, -10
  br i1 %or.cond.i.1.i, label %parse_uint.exit.thread.i, label %.preheader.i.2.i

.preheader.i.2.i:                                 ; preds = %.preheader.i.1.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 2
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !12  ; 2 uses
  %i.ne = add i8 %i.nd, -58
  %or.cond.i.2.i = icmp ult i8 %i.ne, -10
  br i1 %or.cond.i.2.i, label %parse_uint.exit.thread.i, label %parse_uint.exit.i

parse_uint.exit.i:                                ; preds = %.preheader.i.2.i
  %7 = and i8 %i.nd, 15
  %i.nf = zext nneg i8 %7 to i16
  %narrow.i = mul nuw i8 %6, 10
  %8 = zext i8 %narrow.i to i16
  %9 = and i8 %i.na, 15
  %10 = zext nneg i8 %9 to i16
  %i.ng = add nuw nsw i16 %10, %8
  %11 = mul nuw nsw i16 %i.ng, 10
  %i.nh = add nuw nsw i16 %11, %i.nf              ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i16 %i.nh, ptr %i.ni, align 4, !tbaa !21
  %cond.i = icmp eq i16 %i.nh, 101
  br i1 %cond.i, label %http_response_on_header.exit, label %memieq.exit58.i

parse_uint.exit.thread.i:                         ; preds = %.preheader.i.2.i, %.preheader.i.1.i, %.preheader.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i16 -1, ptr %i.nj, align 4, !tbaa !21
  br label %http_response_on_header.exit

bb.cp:                                            ; preds = %bb.cl
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.nl = load i16, ptr %i.nk, align 4, !tbaa !21 ; 3 uses
  %i.nm = icmp eq i16 %i.nl, 204
  br i1 %i.nm, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !20
  %.not43.i = icmp eq i64 %i.no, -1
  br i1 %.not43.i, label %bb.cr, label %http_response_on_header.exit

bb.cr:                                            ; preds = %bb.cq
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !35 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !32
  %i.nt = icmp eq i64 %i.ns, 1
  br i1 %i.nt, label %bb.cs, label %http_response_on_header.exit

bb.cs:                                            ; preds = %bb.cr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !31
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !12  ; 3 uses
  %i.nx = add i8 %i.nw, -65
  %or.cond.i10.i.i71 = icmp ult i8 %i.nx, 26
  %i.ny = or disjoint i8 %i.nw, 32
  %.in.i11.i.i72 = select i1 %or.cond.i10.i.i71, i8 %i.ny, i8 %i.nw
  %.not.i48.i = icmp eq i8 %.in.i11.i.i72, 48
  br i1 %.not.i48.i, label %memieq.exit.i73, label %http_response_on_header.exit

memieq.exit.i73:                                  ; preds = %bb.cs
  store i64 0, ptr %i.nn, align 8, !tbaa !20
  br label %http_response_on_header.exit

bb.ct:                                            ; preds = %bb.cp
  %.off.i = add i16 %i.nl, -100
  %i.nz = icmp ult i16 %.off.i, 100
  br i1 %i.nz, label %http_response_on_header.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.off40.i = add i16 %i.nl, -200
  %i.oa = icmp ult i16 %.off40.i, 100
  br i1 %i.oa, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !19
  %i.od = and i32 %i.oc, 128
  %.not41.i = icmp eq i32 %i.od, 0
  br i1 %.not41.i, label %bb.cw, label %http_response_on_header.exit

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !20
  %.not42.i = icmp eq i64 %i.of, -1
  br i1 %.not42.i, label %bb.cx, label %http_response_on_header.exit

bb.cx:                                            ; preds = %bb.cw
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !35 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !31
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !32
  %i.om = tail call fastcc i64 @parse_uint(ptr noundef %i.oj, i64 noundef %i.ol) ; 2 uses
  store i64 %i.om, ptr %i.oe, align 8, !tbaa !20
  %i.on = icmp eq i64 %i.om, -1
  br i1 %i.on, label %http_response_on_header.exit, label %memieq.exit58.i

bb.cy:                                            ; preds = %bb.cl
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !35 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !32
  %i.os = icmp eq i64 %i.or, 8
  br i1 %i.os, label %bb.cz, label %http_response_on_header.exit

bb.cz:                                            ; preds = %bb.cy
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !31 ; 8 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !12  ; 3 uses
  %i.ow = add i8 %i.ov, -65
  %or.cond.i10.i53.i = icmp ult i8 %i.ow, 26
  %i.ox = or disjoint i8 %i.ov, 32
  %.in.i11.i54.i = select i1 %or.cond.i10.i53.i, i8 %i.ox, i8 %i.ov
  %.not.i55.i = icmp eq i8 %.in.i11.i54.i, 116
  br i1 %.not.i55.i, label %bb.da, label %http_response_on_header.exit

bb.da:                                            ; preds = %bb.cz
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !12  ; 3 uses
  %i.pa = add i8 %i.oz, -65
  %or.cond.i10.i53.1.i = icmp ult i8 %i.pa, 26
  %i.pb = or disjoint i8 %i.oz, 32
  %.in.i11.i54.1.i = select i1 %or.cond.i10.i53.1.i, i8 %i.pb, i8 %i.oz
  %.not.i55.1.i = icmp eq i8 %.in.i11.i54.1.i, 114
  br i1 %.not.i55.1.i, label %bb.db, label %http_response_on_header.exit

bb.db:                                            ; preds = %bb.da
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !12  ; 3 uses
  %i.pe = add i8 %i.pd, -65
  %or.cond.i10.i53.2.i = icmp ult i8 %i.pe, 26
  %i.pf = or disjoint i8 %i.pd, 32
  %.in.i11.i54.2.i = select i1 %or.cond.i10.i53.2.i, i8 %i.pf, i8 %i.pd
  %.not.i55.2.i = icmp eq i8 %.in.i11.i54.2.i, 97
  br i1 %.not.i55.2.i, label %bb.dc, label %http_response_on_header.exit

bb.dc:                                            ; preds = %bb.db
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ou, i64 3
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !12  ; 3 uses
  %i.pi = add i8 %i.ph, -65
  %or.cond.i10.i53.3.i = icmp ult i8 %i.pi, 26
  %i.pj = or disjoint i8 %i.ph, 32
  %.in.i11.i54.3.i = select i1 %or.cond.i10.i53.3.i, i8 %i.pj, i8 %i.ph
  %.not.i55.3.i = icmp eq i8 %.in.i11.i54.3.i, 105
  br i1 %.not.i55.3.i, label %bb.dd, label %http_response_on_header.exit

bb.dd:                                            ; preds = %bb.dc
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !12  ; 3 uses
  %i.pm = add i8 %i.pl, -65
  %or.cond.i10.i53.4.i = icmp ult i8 %i.pm, 26
  %i.pn = or disjoint i8 %i.pl, 32
  %.in.i11.i54.4.i = select i1 %or.cond.i10.i53.4.i, i8 %i.pn, i8 %i.pl
  %.not.i55.4.i = icmp eq i8 %.in.i11.i54.4.i, 108
  br i1 %.not.i55.4.i, label %bb.de, label %http_response_on_header.exit

bb.de:                                            ; preds = %bb.dd
  %i.po = getelementptr inbounds nuw i8, ptr %i.ou, i64 5
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !12  ; 3 uses
  %i.pq = add i8 %i.pp, -65
  %or.cond.i10.i53.5.i = icmp ult i8 %i.pq, 26
  %i.pr = or disjoint i8 %i.pp, 32
  %.in.i11.i54.5.i = select i1 %or.cond.i10.i53.5.i, i8 %i.pr, i8 %i.pp
  %.not.i55.5.i = icmp eq i8 %.in.i11.i54.5.i, 101
  br i1 %.not.i55.5.i, label %bb.df, label %http_response_on_header.exit

bb.df:                                            ; preds = %bb.de
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ou, i64 6
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !12  ; 3 uses
  %i.pu = add i8 %i.pt, -65
  %or.cond.i10.i53.6.i = icmp ult i8 %i.pu, 26
  %i.pv = or disjoint i8 %i.pt, 32
  %.in.i11.i54.6.i = select i1 %or.cond.i10.i53.6.i, i8 %i.pv, i8 %i.pt
  %.not.i55.6.i = icmp eq i8 %.in.i11.i54.6.i, 114
  br i1 %.not.i55.6.i, label %bb.dg, label %http_response_on_header.exit

bb.dg:                                            ; preds = %bb.df
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ou, i64 7
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !12  ; 3 uses
  %i.py = add i8 %i.px, -65
  %or.cond.i10.i53.7.i = icmp ult i8 %i.py, 26
  %i.pz = or disjoint i8 %i.px, 32
  %.in.i11.i54.7.i = select i1 %or.cond.i10.i53.7.i, i8 %i.pz, i8 %i.px
  %.not.i55.7.i = icmp eq i8 %.in.i11.i54.7.i, 115
  br i1 %.not.i55.7.i, label %memieq.exit58.i, label %http_response_on_header.exit

bb.dh:                                            ; preds = %bb.cl
  br i1 %i.mh, label %http_response_on_header.exit, label %memieq.exit58.i

memieq.exit58.i:                                  ; preds = %bb.dh, %bb.dg, %bb.cx, %parse_uint.exit.i
  %i.qa = load i8, ptr %i.mf, align 1, !tbaa !12
  %.not47.i = icmp eq i8 %i.qa, 58
  br i1 %.not47.i, label %http_response_on_header.exit, label %bb.di

bb.di:                                            ; preds = %memieq.exit58.i
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !19
  %i.qd = or i32 %i.qc, 64
  store i32 %i.qd, ptr %i.qb, align 8, !tbaa !19
  br label %http_response_on_header.exit

http_response_on_header.exit:                     ; preds = %bb.e, %bb.di, %memieq.exit58.i, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.ct, %memieq.exit.i73, %bb.cs, %bb.cr, %bb.cq, %parse_uint.exit.thread.i, %parse_uint.exit.i, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.ck, %bb.cj, %check_authority.exit.thread, %._crit_edge, %bb.c, %http_request_on_header.exit, %bb.z
  %.3 = phi i32 [ -531, %bb.c ], [ -105, %bb.z ], [ %.0.i68, %http_request_on_header.exit ], [ -531, %check_authority.exit.thread ], [ -105, %._crit_edge ], [ -531, %bb.da ], [ -531, %bb.cl ], [ -531, %bb.cy ], [ -531, %bb.dh ], [ -531, %parse_uint.exit.thread.i ], [ -531, %bb.co ], [ -531, %bb.cj ], [ -531, %bb.cz ], [ -106, %memieq.exit.i73 ], [ -531, %bb.cq ], [ -531, %bb.cr ], [ -531, %bb.ct ], [ -106, %bb.cv ], [ -531, %bb.cw ], [ -531, %bb.cx ], [ -531, %bb.ck ], [ -531, %parse_uint.exit.i ], [ -531, %bb.cm ], [ -531, %bb.cl ], [ -531, %bb.cl ], [ -531, %bb.cl ], [ -531, %bb.cl ], [ -531, %bb.cs ], [ 0, %bb.di ], [ 0, %memieq.exit58.i ], [ -531, %bb.cn ], [ -531, %bb.dg ], [ -531, %bb.df ], [ -531, %bb.de ], [ -531, %bb.dd ], [ -531, %bb.dc ], [ -531, %bb.db ], [ -531, %bb.e ]
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
define dso_local void @nghttp2_http_record_request_method(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !12
  switch i8 %i.b, label %.critedge [
    i8 1, label %bb.c
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink33 = phi i64 [ 24, %bb.b ], [ 40, %bb.a ]
  %.sink = phi i64 [ 32, %bb.b ], [ 48, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sink33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.023 = load i64, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %.024 = load ptr, ptr %i.c, align 8, !tbaa !12
  %.not = icmp eq i64 %.023, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.02230 = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.024, i64 %.02230 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !65   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
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
  %i.ap = add nuw i64 %.02230, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %.023
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !62

.critedge.sink.split:                             ; preds = %bb.h, %bb.g
  %.sink37 = phi i32 [ 128, %bb.g ], [ 256, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !19
  %i.as = or i32 %i.ar, %.sink37
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !19
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
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !68
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @sfparse_parser_init(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2) #7
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
  %i.c = call i32 @sfparse_parser_dict(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  switch i32 %i.c, label %.loopexit [
    i32 0, label %bb.c
    i32 -2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %i.a, align 8, !tbaa !70
  %.not16 = icmp eq i64 %i.d, 1
  br i1 %.not16, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8, !tbaa !71
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  switch i8 %i.f, label %.outer [
    i8 105, label %bb.e
    i8 117, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %5, align 8, !tbaa !73
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.b, align 8, !tbaa !12
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
  store i32 %.sroa.0.0.ph.ph41, ptr %0, align 4, !tbaa !68
  store i32 %.sroa.5.0.ph.ph, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.b, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ -501, %bb.b ], [ -501, %bb.e ], [ -501, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0
}

declare void @sfparse_parser_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @sfparse_parser_dict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @parse_uint(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.024 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %.01723 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.024
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12    ; 2 uses
  %i.d = add i8 %i.c, -58
  %or.cond = icmp ult i8 %i.d, -10
  %i.e = icmp sgt i64 %.01723, 922337203685477580
  %or.cond22 = select i1 %or.cond, i1 true, i1 %i.e
  br i1 %or.cond22, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = mul nsw i64 %.01723, 10                  ; 2 uses
  %2 = and i8 %i.c, 15
  %3 = zext nneg i8 %2 to i64                     ; 2 uses
  %4 = xor i64 %3, 9223372036854775807
  %i.g = icmp sgt i64 %i.f, %4
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %i.f, %3                     ; 2 uses
  %i.i = add nuw i64 %.024, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %1
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !74

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b, %bb.a
  %.018 = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ %i.h, %bb.c ], [ -1, %.preheader ]
  ret i64 %.018
}

declare void @nghttp2_extpri_from_uint8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"", !11, i64 0}
!15 = !{!"p1 _ZTS14nghttp2_stream", !9, i64 0}
!16 = !{!"p1 _ZTS21nghttp2_outbound_item", !9, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"nghttp2_stream", !6, i64 0, !14, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !15, i64 48, !9, i64 56, !16, i64 64, !11, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !17, i64 108, !6, i64 112, !5, i64 116, !5, i64 117, !5, i64 118, !5, i64 119, !5, i64 120, !5, i64 121}
!19 = !{!18, !6, i64 112}
!20 = !{!18, !11, i64 16}
!21 = !{!18, !17, i64 108}
!22 = !{!18, !11, i64 24}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = !{!"p1 _ZTS13nghttp2_rcbuf", !9, i64 0}
!28 = !{!"", !27, i64 0, !27, i64 8, !6, i64 16, !5, i64 20}
!29 = !{!28, !27, i64 0}
!30 = !{!"nghttp2_rcbuf", !9, i64 0, !9, i64 8, !10, i64 16, !11, i64 24, !6, i64 32}
!31 = !{!30, !10, i64 16}
!32 = !{!30, !11, i64 24}
!33 = !{!28, !6, i64 16}
!34 = !{!18, !5, i64 116}
!35 = !{!28, !27, i64 8}
!36 = !{!"p1 _ZTS18nghttp2_map_bucket", !9, i64 0}
!37 = !{!"nghttp2_map", !36, i64 0, !9, i64 8, !6, i64 16, !11, i64 24, !11, i64 32}
!38 = !{!"", !16, i64 0, !16, i64 8, !11, i64 16}
!39 = !{!"p1 _ZTS17nghttp2_buf_chain", !9, i64 0}
!40 = !{!"", !39, i64 0, !39, i64 8, !9, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!41 = !{!"", !16, i64 0, !40, i64 8, !6, i64 72}
!42 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!43 = !{!"", !5, i64 0, !5, i64 64, !9, i64 96, !42, i64 104, !42, i64 144, !10, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !6, i64 224, !5, i64 228}
!44 = !{!"any p2 pointer", !9, i64 0}
!45 = !{!"p2 _ZTS16nghttp2_hd_entry", !44, i64 0}
!46 = !{!"", !45, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!47 = !{!"", !46, i64 0, !9, i64 32, !11, i64 40, !11, i64 48, !6, i64 56, !5, i64 60}
!48 = !{!"", !5, i64 0}
!49 = !{!"nghttp2_hd_deflater", !47, i64 0, !48, i64 64, !11, i64 1088, !11, i64 1096, !5, i64 1104}
!50 = !{!"", !17, i64 0}
!51 = !{!"nghttp2_hd_inflater", !47, i64 0, !50, i64 64, !42, i64 72, !42, i64 112, !27, i64 152, !27, i64 160, !27, i64 168, !27, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !6, i64 224, !6, i64 228, !5, i64 232, !5, i64 233, !5, i64 234}
!52 = !{!"nghttp2_session_callbacks", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224}
!53 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!54 = !{!"p1 _ZTS25nghttp2_inflight_settings", !9, i64 0}
!55 = !{!"nghttp2_ratelim", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!56 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!57 = !{!"nghttp2_session", !37, i64 0, !38, i64 40, !38, i64 64, !38, i64 88, !5, i64 112, !41, i64 432, !43, i64 512, !49, i64 776, !51, i64 1888, !52, i64 2128, !53, i64 2360, !9, i64 2400, !54, i64 2408, !55, i64 2416, !55, i64 2448, !11, i64 2480, !11, i64 2488, !11, i64 2496, !11, i64 2504, !11, i64 2512, !11, i64 2520, !11, i64 2528, !11, i64 2536, !11, i64 2544, !11, i64 2552, !11, i64 2560, !11, i64 2568, !11, i64 2576, !11, i64 2584, !6, i64 2592, !6, i64 2596, !6, i64 2600, !6, i64 2604, !6, i64 2608, !6, i64 2612, !6, i64 2616, !6, i64 2620, !6, i64 2624, !6, i64 2628, !6, i64 2632, !6, i64 2636, !5, i64 2640, !56, i64 2644, !56, i64 2676, !6, i64 2708, !6, i64 2712, !6, i64 2716, !5, i64 2720, !5, i64 2721, !5, i64 2722, !5, i64 2723, !5, i64 2724, !5, i64 2725, !5, i64 2726}
!58 = !{!57, !5, i64 2723}
!59 = !{!57, !5, i64 2721}
!60 = !{!18, !6, i64 80}
!61 = !{!18, !5, i64 121}
!62 = distinct !{!62, !13}
!63 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !5, i64 32}
!64 = !{!63, !11, i64 16}
!65 = !{!63, !10, i64 0}
!66 = !{!63, !11, i64 24}
!67 = !{!63, !10, i64 8}
!68 = !{!6, !6, i64 0}
!69 = !{!"sfparse_vec", !10, i64 0, !11, i64 8}
!70 = !{!69, !11, i64 8}
!71 = !{!69, !10, i64 0}
!72 = !{!"sfparse_value", !6, i64 0, !6, i64 4, !5, i64 8}
!73 = !{!72, !6, i64 0}
!74 = distinct !{!74, !13}
end_hunk_1
