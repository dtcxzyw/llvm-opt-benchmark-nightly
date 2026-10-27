Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_http?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nghttp2_http_on_header:bb.a
  %.not8.i138.i = icmp samesign eq i64 %i.hc, 0
  br i1 %.not8.i138.i, label %http_request_on_header.exit, label %.lr.ph.i139.i

bb.ay:                                            ; preds = %.lr.ph.i139.i
  %i.he = getelementptr inbounds nuw i8, ptr %.069.i140.i, i64 1 ; 2 uses
  %.not.i142.i = icmp eq ptr %i.he, %i.hd
  br i1 %.not.i142.i, label %bb.az, label %.lr.ph.i139.i, !llvm.loop !21

.lr.ph.i139.i:                                    ; preds = %bb.ax, %bb.ay
  %.069.i140.i = phi ptr [ %i.he, %bb.ay ], [ %i.ha, %bb.ax ] ; 2 uses
  %i.hf = load i8, ptr %.069.i140.i, align 1, !tbaa !16
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @VALID_AUTHORITY_CHARS, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !16
  %.not7.i141.i = icmp eq i8 %i.hi, 0
  br i1 %.not7.i141.i, label %http_request_on_header.exit, label %bb.ay

bb.az:                                            ; preds = %bb.ay
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !15 ; 2 uses
  %i.hl = and i32 %i.hk, 16
  %.not.i145.not.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i145.not.i, label %check_pseudo_header.exit147.i, label %http_request_on_header.exit

check_pseudo_header.exit147.i:                    ; preds = %bb.az
  %i.hm = or disjoint i32 %i.hk, 16
  store i32 %i.hm, ptr %i.hj, align 8, !tbaa !15
  br label %memieq.exit154.i

bb.ba:                                            ; preds = %.thread
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !18
  %.not88.i = icmp eq i64 %i.ho, -1
  br i1 %.not88.i, label %bb.bb, label %http_request_on_header.exit

bb.bb:                                            ; preds = %bb.ba
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !57 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !30
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !29 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %http_request_on_header.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bb, %bb.bd
  %.020.i148.i = phi i64 [ %i.ig, %bb.bd ], [ 0, %bb.bb ] ; 2 uses
  %.01519.i.i = phi i64 [ %i.if, %bb.bd ], [ 0, %bb.bb ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.020.i148.i
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !16  ; 2 uses
  %i.hy = zext i8 %i.hx to i64                    ; 2 uses
  %i.hz = add i8 %i.hx, -58
  %or.cond.i.i = icmp ult i8 %i.hz, -10
  br i1 %or.cond.i.i, label %http_request_on_header.exit, label %bb.bc

bb.bc:                                            ; preds = %.preheader.i.i
  %i.ia = sub nuw i64 -9223372036854775761, %i.hy
  %i.ib = udiv i64 %i.ia, 10
  %i.ic = icmp ugt i64 %.01519.i.i, %i.ib
  br i1 %i.ic, label %http_request_on_header.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.id = mul nuw nsw i64 %.01519.i.i, 10
  %i.ie = add nsw i64 %i.id, -48
  %i.if = add i64 %i.ie, %i.hy                    ; 2 uses
  %i.ig = add nuw i64 %.020.i148.i, 1             ; 2 uses
  %exitcond.not.i149.i = icmp eq i64 %i.ig, %i.hu
  br i1 %exitcond.not.i149.i, label %parse_uint.exit.i, label %.preheader.i.i, !llvm.loop !24

parse_uint.exit.i:                                ; preds = %bb.bd
  store i64 %i.if, ptr %i.hn, align 8, !tbaa !18
  br label %memieq.exit154.i

bb.be:                                            ; preds = %.thread
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !57 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !29
  %i.il = icmp eq i64 %i.ik, 8
  br i1 %i.il, label %bb.bf, label %http_request_on_header.exit

bb.bf:                                            ; preds = %bb.be
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !30 ; 8 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !16
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !16
  %.not.i151.i = icmp eq i8 %i.ir, 116
  br i1 %.not.i151.i, label %bb.bg, label %http_request_on_header.exit

bb.bg:                                            ; preds = %bb.bf
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !16
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !16
  %.not.i151.1.i = icmp eq i8 %i.iw, 114
  br i1 %.not.i151.1.i, label %bb.bh, label %http_request_on_header.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !16
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !16
  %.not.i151.2.i = icmp eq i8 %i.jb, 97
  br i1 %.not.i151.2.i, label %bb.bi, label %http_request_on_header.exit

bb.bi:                                            ; preds = %bb.bh
  %i.jc = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !16
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !16
  %.not.i151.3.i = icmp eq i8 %i.jg, 105
  br i1 %.not.i151.3.i, label %bb.bj, label %http_request_on_header.exit

bb.bj:                                            ; preds = %bb.bi
  %i.jh = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !16
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !16
  %.not.i151.4.i = icmp eq i8 %i.jl, 108
  br i1 %.not.i151.4.i, label %bb.bk, label %http_request_on_header.exit

bb.bk:                                            ; preds = %bb.bj
  %i.jm = getelementptr inbounds nuw i8, ptr %i.in, i64 5
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !16
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !16
  %.not.i151.5.i = icmp eq i8 %i.jq, 101
  br i1 %.not.i151.5.i, label %bb.bl, label %http_request_on_header.exit

bb.bl:                                            ; preds = %bb.bk
  %i.jr = getelementptr inbounds nuw i8, ptr %i.in, i64 6
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !16
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !16
  %.not.i151.6.i = icmp eq i8 %i.jv, 114
  br i1 %.not.i151.6.i, label %bb.bm, label %http_request_on_header.exit

bb.bm:                                            ; preds = %bb.bl
  %i.jw = getelementptr inbounds nuw i8, ptr %i.in, i64 7
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !16
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !16
  %.not.i151.7.i = icmp eq i8 %i.ka, 115
  br i1 %.not.i151.7.i, label %memieq.exit154.i, label %http_request_on_header.exit

bb.bn:                                            ; preds = %.thread
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !57 ; 2 uses
  %i.kd = getelementptr i8, ptr %1, i64 116
  %.val110.i = load i8, ptr %i.kd, align 4, !tbaa !59
  %i.ke = and i8 %.val110.i, 64
  %.not.i155.i = icmp eq i8 %i.ke, 0
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !30 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !29 ; 2 uses
  br i1 %.not.i155.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kj = tail call i32 @nghttp2_check_header_value(ptr noundef %i.kg, i64 noundef %i.ki) #7
  br label %check_header_value.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.kk = tail call i32 @nghttp2_check_header_value_rfc9113(ptr noundef %i.kg, i64 noundef %i.ki) #7
  br label %check_header_value.exit.i

check_header_value.exit.i:                        ; preds = %bb.bp, %bb.bo
  %.0.i156.i = phi i32 [ %i.kj, %bb.bo ], [ %i.kk, %bb.bp ]
  %.not.i = icmp eq i32 %.0.i156.i, 0
  br i1 %.not.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %check_header_value.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !15
  %i.kn = and i32 %i.km, -196609
  %i.ko = or disjoint i32 %i.kn, 131072
  store i32 %i.ko, ptr %i.kl, align 8, !tbaa !15
  br label %http_request_on_header.exit

bb.br:                                            ; preds = %check_header_value.exit.i
  %.not84.i = icmp eq i32 %4, 0
  br i1 %.not84.i, label %bb.bs, label %memieq.exit154.i

bb.bs:                                            ; preds = %bb.br
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !58
  %i.kr = and i32 %i.kq, 1
  %.not85.i = icmp eq i32 %i.kr, 0
  br i1 %.not85.i, label %memieq.exit154.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !15
  %i.ku = and i32 %i.kt, 131072
  %.not86.i = icmp eq i32 %i.ku, 0
  br i1 %.not86.i, label %bb.bu, label %memieq.exit154.i

bb.bu:                                            ; preds = %bb.bt
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !60
  call void @nghttp2_extpri_from_uint8(ptr noundef nonnull %5, i8 noundef zeroext %i.kw) #7
  %i.kx = load ptr, ptr %i.kb, align 8, !tbaa !57 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !30
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !29
  %i.lc = call i32 @nghttp2_http_parse_priority(ptr noundef nonnull %5, ptr noundef %i.kz, i64 noundef %i.lb)
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.le = call zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef nonnull %5) #7
  store i8 %i.le, ptr %i.kv, align 1, !tbaa !60
  %i.lf = load i32, ptr %i.ks, align 8, !tbaa !15
  %i.lg = or i32 %i.lf, 65536
  br label %memieq.exit154.sink.split.i

bb.bw:                                            ; preds = %bb.bu
  %i.lh = load i32, ptr %i.ks, align 8, !tbaa !15
  %i.li = and i32 %i.lh, -196609
  %i.lj = or disjoint i32 %i.li, 131072
  br label %memieq.exit154.sink.split.i

bb.bx:                                            ; preds = %.thread
  %i.lk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !30
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !16
  %i.ln = icmp eq i8 %i.lm, 58
  br i1 %i.ln, label %http_request_on_header.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !57 ; 2 uses
  %i.lq = getelementptr i8, ptr %1, i64 116
  %.val.i = load i8, ptr %i.lq, align 4, !tbaa !59
  %i.lr = and i8 %.val.i, 64
  %.not.i157.i = icmp eq i8 %i.lr, 0
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !30 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !29 ; 2 uses
  br i1 %.not.i157.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lw = tail call i32 @nghttp2_check_header_value(ptr noundef %i.lt, i64 noundef %i.lv) #7
  br label %check_header_value.exit159.i

bb.ca:                                            ; preds = %bb.by
  %i.lx = tail call i32 @nghttp2_check_header_value_rfc9113(ptr noundef %i.lt, i64 noundef %i.lv) #7
  br label %check_header_value.exit159.i

check_header_value.exit159.i:                     ; preds = %bb.ca, %bb.bz
  %.0.i158.i = phi i32 [ %i.lw, %bb.bz ], [ %i.lx, %bb.ca ]
  %.not109.i = icmp eq i32 %.0.i158.i, 0
  br i1 %.not109.i, label %http_request_on_header.exit, label %memieq.exit154.i

memieq.exit154.sink.split.i:                      ; preds = %bb.bw, %bb.bv
  %.sink.i = phi i32 [ %i.lg, %bb.bv ], [ %i.lj, %bb.bw ]
  store i32 %.sink.i, ptr %i.ks, align 8, !tbaa !15
  br label %memieq.exit154.i

memieq.exit154.i:                                 ; preds = %memieq.exit154.sink.split.i, %check_header_value.exit159.i, %bb.bt, %bb.bs, %bb.br, %bb.bm, %parse_uint.exit.i, %check_pseudo_header.exit147.i, %bb.aw, %lws.exit.i, %memieq.exit.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i, %.preheader206.i, %bb.am, %.thread181.i, %bb.ag, %bb.af, %bb.ae, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %check_pseudo_header.exit.i
  br label %http_request_on_header.exit

http_request_on_header.exit:                      ; preds = %.preheader.i.i, %bb.bc, %.lr.ph.i139.i, %bb.av, %bb.ak, %.lr.ph.i.i, %.thread, %.thread, %.thread, %.thread, %.thread, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %bb.w, %bb.aa, %bb.ab, %bb.ac, %bb.ah, %bb.ai, %check_scheme.exit.i, %check_scheme.exit.thread172.i, %bb.ar, %bb.as, %bb.at, %lws.exit.i, %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bb, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bq, %bb.bx, %check_header_value.exit159.i, %memieq.exit154.i
  %.0.i = phi i32 [ -531, %bb.be ], [ 0, %memieq.exit154.i ], [ -531, %bb.bx ], [ -105, %bb.bq ], [ -531, %bb.o ], [ -105, %check_header_value.exit159.i ], [ -531, %bb.w ], [ -531, %bb.aa ], [ -531, %bb.ar ], [ -531, %bb.as ], [ -531, %bb.ab ], [ -531, %bb.at ], [ -531, %bb.aw ], [ -531, %bb.ak ], [ -531, %bb.ba ], [ -531, %.lr.ph.i.i ], [ -531, %.thread ], [ -531, %check_scheme.exit.i ], [ -105, %.lr.ph.i139.i ], [ -531, %bb.p ], [ -531, %bb.bb ], [ -531, %check_scheme.exit.thread172.i ], [ -531, %lws.exit.i ], [ -531, %.thread ], [ -531, %.thread ], [ -531, %.thread ], [ -531, %.thread ], [ -531, %bb.bf ], [ -531, %bb.l ], [ -531, %bb.n ], [ -531, %bb.az ], [ -531, %bb.q ], [ -531, %bb.ac ], [ -531, %bb.ah ], [ -531, %bb.ai ], [ -531, %bb.ax ], [ -531, %bb.bm ], [ -531, %bb.bl ], [ -531, %bb.bk ], [ -531, %bb.bj ], [ -531, %bb.bi ], [ -531, %bb.bh ], [ -531, %bb.bg ], [ -531, %bb.av ], [ -531, %bb.bc ], [ -531, %.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %http_response_on_header.exit

bb.cb:                                            ; preds = %bb.j
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !31
  switch i32 %i.lz, label %bb.dd [
    i32 7, label %bb.cc
    i32 27, label %bb.cj
    i32 62, label %http_response_on_header.exit
    i32 63, label %http_response_on_header.exit
    i32 64, label %http_response_on_header.exit
    i32 56, label %http_response_on_header.exit
    i32 65, label %http_response_on_header.exit
    i32 61, label %bb.cu
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !15 ; 2 uses
  %i.mc = and i32 %i.mb, 32
  %.not.i.i29 = icmp eq i32 %i.mc, 0
  br i1 %.not.i.i29, label %bb.cd, label %http_response_on_header.exit

bb.cd:                                            ; preds = %bb.cc
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !57 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !29 ; 2 uses
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %http_response_on_header.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mi = or disjoint i32 %i.mb, 32
  store i32 %i.mi, ptr %i.ma, align 8, !tbaa !15
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !30 ; 3 uses
  %.not.i40.i = icmp eq i64 %i.mg, 3
  br i1 %.not.i40.i, label %bb.cf, label %parse_status_code.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !16  ; 2 uses
  %i.mm = zext nneg i8 %i.ml to i32
  %i.mn = add i8 %i.ml, -58
  %or.cond.i.i30 = icmp ult i8 %i.mn, -9
  br i1 %or.cond.i.i30, label %parse_status_code.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !16  ; 2 uses
  %i.mq = zext nneg i8 %i.mp to i32
  %i.mr = add i8 %i.mp, -58
  %or.cond13.i.i = icmp ult i8 %i.mr, -10
  br i1 %or.cond13.i.i, label %parse_status_code.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 2
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !16  ; 2 uses
  %i.mu = add i8 %i.mt, -58
  %or.cond14.i.i = icmp ult i8 %i.mu, -10
  br i1 %or.cond14.i.i, label %parse_status_code.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mv = zext nneg i8 %i.mt to i32
  %i.mw = mul nuw nsw i32 %i.mm, 100
  %i.mx = mul nuw nsw i32 %i.mq, 10
  %i.my = add nsw i32 %i.mw, -5328
  %i.mz = add nsw i32 %i.my, %i.mx
  %i.na = add nuw nsw i32 %i.mz, %i.mv
  br label %parse_status_code.exit.i

parse_status_code.exit.i:                         ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.0.i41.i = phi i32 [ %i.na, %bb.ci ], [ -1, %bb.ch ], [ -1, %bb.cg ], [ -1, %bb.cf ], [ -1, %bb.ce ] ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 %.0.i41.i, ptr %i.nb, align 4, !tbaa !19
  %switch.selectcmp.case1.i = icmp eq i32 %.0.i41.i, -1
  %switch.selectcmp.case2.i = icmp eq i32 %.0.i41.i, 101
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.nc = select i1 %switch.selectcmp.i, i32 -531, i32 0
  br label %http_response_on_header.exit

bb.cj:                                            ; preds = %bb.cb
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !19 ; 3 uses
  %i.nf = icmp eq i32 %i.ne, 204
  br i1 %i.nf, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !18
  %.not36.i = icmp eq i64 %i.nh, -1
  br i1 %.not36.i, label %bb.cl, label %http_response_on_header.exit

bb.cl:                                            ; preds = %bb.ck
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !57 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !29
  %i.nm = icmp eq i64 %i.nl, 1
  br i1 %i.nm, label %bb.cm, label %http_response_on_header.exit

bb.cm:                                            ; preds = %bb.cl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !30
  %i.np = load i8, ptr %i.no, align 1, !tbaa !16
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !16
  %.not.i42.i = icmp eq i8 %i.ns, 48
  br i1 %.not.i42.i, label %memieq.exit.i28, label %http_response_on_header.exit

memieq.exit.i28:                                  ; preds = %bb.cm
  store i64 0, ptr %i.ng, align 8, !tbaa !18
  br label %http_response_on_header.exit

bb.cn:                                            ; preds = %bb.cj
  %.off.i = add i32 %i.ne, -100
  %i.nt = icmp ult i32 %.off.i, 100
  br i1 %i.nt, label %http_response_on_header.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.off33.i = add i32 %i.ne, -200
  %i.nu = icmp ult i32 %.off33.i, 100
  br i1 %i.nu, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !15
  %i.nx = and i32 %i.nw, 128
  %.not34.i = icmp eq i32 %i.nx, 0
  br i1 %.not34.i, label %bb.cq, label %http_response_on_header.exit

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !18
  %.not35.i = icmp eq i64 %i.nz, -1
  br i1 %.not35.i, label %bb.cr, label %http_response_on_header.exit

bb.cr:                                            ; preds = %bb.cq
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !57 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !30
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !29 ; 2 uses
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %http_response_on_header.exit, label %.preheader.i.i24

.preheader.i.i24:                                 ; preds = %bb.cr, %bb.ct
  %.020.i.i25 = phi i64 [ %i.or, %bb.ct ], [ 0, %bb.cr ] ; 2 uses
  %.01519.i.i26 = phi i64 [ %i.oq, %bb.ct ], [ 0, %bb.cr ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 %.020.i.i25
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !16  ; 2 uses
  %i.oj = zext i8 %i.oi to i64                    ; 2 uses
  %i.ok = add i8 %i.oi, -58
  %or.cond.i43.i = icmp ult i8 %i.ok, -10
  br i1 %or.cond.i43.i, label %http_response_on_header.exit, label %bb.cs

bb.cs:                                            ; preds = %.preheader.i.i24
  %i.ol = sub nuw i64 -9223372036854775761, %i.oj
  %i.om = udiv i64 %i.ol, 10
  %i.on = icmp ugt i64 %.01519.i.i26, %i.om
  br i1 %i.on, label %http_response_on_header.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oo = mul nuw nsw i64 %.01519.i.i26, 10
  %i.op = add nsw i64 %i.oo, -48
  %i.oq = add i64 %i.op, %i.oj                    ; 2 uses
  %i.or = add nuw i64 %.020.i.i25, 1              ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %i.or, %i.of
  br i1 %exitcond.not.i44.i, label %parse_uint.exit.i27, label %.preheader.i.i24, !llvm.loop !24

parse_uint.exit.i27:                              ; preds = %bb.ct
  store i64 %i.oq, ptr %i.ny, align 8, !tbaa !18
  br label %memieq.exit49.i

bb.cu:                                            ; preds = %bb.cb
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !57 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !29
  %i.ow = icmp eq i64 %i.ov, 8
  br i1 %i.ow, label %bb.cv, label %http_response_on_header.exit

bb.cv:                                            ; preds = %bb.cu
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !30 ; 8 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !16
  %i.pa = zext i8 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !16
  %.not.i46.i = icmp eq i8 %i.pc, 116
  br i1 %.not.i46.i, label %bb.cw, label %http_response_on_header.exit

bb.cw:                                            ; preds = %bb.cv
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
end_hunk_0
