Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/handshake_client?download=true
inline.NumInlined: 544
inline.NumDeleted: 287
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bssl20ssl_client_handshakeEPNS_13SSL_HANDSHAKEE:bb.a
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS12DowngradeRandomE, i64 5), align 1
  %i.bv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS12DowngradeRandomE, i64 6), align 1
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS12DowngradeRandomE, i64 7), align 1
  %i.bx = load i8, ptr @_ZN4bssl21kTLS13DowngradeRandomE, align 1
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS13DowngradeRandomE, i64 1), align 1
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS13DowngradeRandomE, i64 2), align 1
  %i.ca = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS13DowngradeRandomE, i64 3), align 1
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS13DowngradeRandomE, i64 4), align 1
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS13DowngradeRandomE, i64 5), align 1
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS13DowngradeRandomE, i64 6), align 1
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kTLS13DowngradeRandomE, i64 7), align 1
  %i.cf = load i8, ptr @_ZN4bssl21kJDK11DowngradeRandomE, align 1
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kJDK11DowngradeRandomE, i64 1), align 1
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kJDK11DowngradeRandomE, i64 2), align 1
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kJDK11DowngradeRandomE, i64 3), align 1
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kJDK11DowngradeRandomE, i64 4), align 1
  %i.ck = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kJDK11DowngradeRandomE, i64 5), align 1
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kJDK11DowngradeRandomE, i64 6), align 1
  %i.cm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4bssl21kJDK11DowngradeRandomE, i64 7), align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1635 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %48, i64 40 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1603 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %49, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %52, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.ph, %bb.a
  %i.db = load i32, ptr %i.w, align 4, !tbaa !182 ; 2 uses
  switch i32 %i.db, label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit [
    i32 22, label %bb.pi
    i32 0, label %bb.c
    i32 1, label %bb.ap
    i32 2, label %bb.aw
    i32 3, label %bb.ba
    i32 4, label %bb.br
    i32 5, label %bb.ei
    i32 6, label %bb.ek
    i32 7, label %bb.fa
    i32 8, label %bb.fr
    i32 9, label %bb.fu
    i32 10, label %bb.fw
    i32 11, label %bb.hu
    i32 12, label %bb.ix
    i32 13, label %bb.jf
    i32 14, label %bb.kg
    i32 15, label %bb.mc
    i32 16, label %bb.mu
    i32 17, label %bb.nl
    i32 18, label %bb.ny
    i32 19, label %bb.oq
    i32 20, label %bb.os
    i32 21, label %bb.ot
  ]

bb.c:                                             ; preds = %bb.b
  %i.dc = load ptr, ptr %0, align 8, !tbaa !96    ; 8 uses
  call void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef %i.dc, i32 noundef 16, i32 noundef 1) #6
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !166 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  call void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.df, i1 noundef zeroext true) #6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 56 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !133
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 300 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 4
  %i.dk = and i16 %i.dj, -65
  store i16 %i.dk, ptr %i.di, align 4
  %i.dl = call noundef zeroext i1 @_ZN4bssl21ssl_get_version_rangeEPKNS_13SSL_HANDSHAKEEPtS3_(ptr noundef nonnull %0, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz) #6
  br i1 %i.dl, label %bb.d, label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #6
  %i.dm = call noundef zeroext i1 @_ZN4bssl21ssl_select_ech_configEPNS_13SSL_HANDSHAKEENS_4SpanIhEEPm(ptr noundef nonnull %0, ptr nonnull %i.u, i64 32, ptr noundef nonnull %i.v) #6
  br i1 %i.dm, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.dn = load ptr, ptr %0, align 8, !tbaa !96
  %i.do = call i32 @SSL_is_dtls(ptr noundef %i.dn) #6
  %.not.i = icmp eq i32 %i.do, 0
  %i.dp = load i16, ptr %i.cz, align 8, !tbaa !167 ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dq = icmp ugt i16 %i.dp, 770
  %i.dr = select i1 %i.dq, i16 -259, i16 -257
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %spec.select.i = call i16 @llvm.umin.i16(i16 %i.dp, i16 771)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i16 [ %spec.select.i, %bb.g ], [ %i.dr, %bb.f ]
  store i16 %.sink.i, ptr %i.ak, align 4, !tbaa !97
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 112 ; 6 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !220 ; 3 uses
  %.not87.i = icmp eq ptr %i.dt, null
  br i1 %.not87.i, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 432
  %i.dv = load i8, ptr %i.du, align 8
  %i.dw = and i8 %i.dv, 16
  %.not61.i = icmp eq i8 %i.dw, 0
  br i1 %.not61.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dy = load i16, ptr %i.dx, align 4, !tbaa !233
  %i.dz = call noundef zeroext i1 @_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt(ptr noundef nonnull %0, i16 noundef zeroext %i.dy) #6
  br i1 %i.dz, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ea = load ptr, ptr %i.bn, align 8, !tbaa !171
  %.not88.i = icmp eq ptr %i.ea, null
  br i1 %.not88.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !220
  %i.ec = call noundef zeroext i16 @_ZN4bssl28ssl_session_protocol_versionEPK14ssl_session_st(ptr noundef %i.eb) #6
  %i.ed = icmp ult i16 %i.ec, 772
  br i1 %i.ed, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ee = load ptr, ptr %i.ds, align 8, !tbaa !220
  %i.ef = call i32 @SSL_SESSION_is_resumable(ptr noundef %i.ee) #6
  %.not62.i = icmp eq i32 %i.ef, 0
  br i1 %.not62.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eg = load ptr, ptr %i.ds, align 8, !tbaa !220
  %i.eh = call noundef zeroext i1 @_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st(ptr noundef nonnull %i.dc, ptr noundef %i.eg) #6
  br i1 %i.eh, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 208
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !234
  %i.ek = icmp ne ptr %i.ej, null
  %i.el = load ptr, ptr %i.ds, align 8, !tbaa !220
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 432
  %i.en = load i8, ptr %i.em, align 8
  %i.eo = and i8 %i.en, 32
  %i.ep = icmp eq i8 %i.eo, 0
  %.not63.i = xor i1 %i.ek, %i.ep
  br i1 %.not63.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eq = load ptr, ptr %i.dg, align 8, !tbaa !133
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 300
  %i.es = load i16, ptr %i.er, align 4
  %i.et = and i16 %i.es, 32
  %.not64.i = icmp eq i16 %i.et, 0
  br i1 %.not64.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  call void @_ZN4bssl15ssl_set_sessionEP6ssl_stP14ssl_session_st(ptr noundef nonnull %i.dc, ptr noundef null) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.h
  %i.eu = load ptr, ptr %i.dg, align 8, !tbaa !133
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = call i32 @RAND_bytes(ptr noundef nonnull %i.ev, i64 noundef 32) #6
  %.not65.i = icmp eq i32 %i.ew, 0
  br i1 %.not65.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = load ptr, ptr %i.bn, align 8, !tbaa !171
  %.not89.i = icmp eq ptr %i.ex, null
  br i1 %.not89.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ey = call i32 @RAND_bytes(ptr noundef nonnull %i.da, i64 noundef 32) #6
  %.not66.i = icmp eq i32 %i.ey, 0
  br i1 %.not66.i, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dc, i64 208
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !234
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.v, label %.critedge71.i

bb.v:                                             ; preds = %bb.u
  %i.fc = load ptr, ptr %i.ds, align 8, !tbaa !220 ; 4 uses
  %.not90.i = icmp eq ptr %i.fc, null
  br i1 %.not90.i, label %.thread75.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 59
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !235 ; 3 uses
  %.not67.i = icmp eq i8 %i.fe, 0
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 248
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !136
  %.not91.i = icmp eq i64 %i.fg, 0                ; 2 uses
  br i1 %.not67.i, label %.thread73.i, label %bb.x

.thread73.i:                                      ; preds = %bb.w
  br i1 %.not91.i, label %.thread75.i, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %.not91.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 %i.fe, ptr %i.cn, align 1, !tbaa !134
  %i.fh = zext i8 %i.fe to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull readonly align 4 %i.fi, i64 %i.fh, i1 false)
  br label %.critedge71.i

.thread75.i:                                      ; preds = %.thread73.i, %bb.v
  %i.fj = load i16, ptr %i.cz, align 8, !tbaa !167
  %i.fk = icmp ugt i16 %i.fj, 771
  br i1 %i.fk, label %bb.z, label %.critedge71.i

bb.z:                                             ; preds = %.thread75.i, %bb.x, %.thread73.i
  store i8 32, ptr %i.cn, align 1, !tbaa !134
  %i.fl = call i32 @RAND_bytes(ptr noundef nonnull %i.cp, i64 noundef 32) #6
  %.not68.i = icmp eq i32 %i.fl, 0
  br i1 %.not68.i, label %.critedge.i, label %.critedge71.i

.critedge71.i:                                    ; preds = %bb.z, %.thread75.i, %bb.y, %bb.u
  %i.fm = load ptr, ptr %0, align 8, !tbaa !96    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 220
  %i.fo = load i8, ptr %i.fn, align 4
  %i.fp = and i8 %i.fo, 4
  %.not.i.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge71.i
  %i.fq = load i16, ptr %i.cz, align 8, !tbaa !167
  %i.fr = icmp ult i16 %i.fq, 772
  br i1 %i.fr, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 112 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !220 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = call noundef zeroext i16 @_ZN4bssl28ssl_session_protocol_versionEPK14ssl_session_st(ptr noundef nonnull %i.ft) #6
  %i.fv = icmp ult i16 %i.fu, 772
  br i1 %i.fv, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !220 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 380
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !236
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 392
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !136 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread80.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 384
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !135
  %i.gf = call noundef zeroext i1 @_ZN4bssl28ssl_is_alpn_protocol_allowedEPKNS_13SSL_HANDSHAKEENS_4SpanIKhEE(ptr noundef nonnull %0, ptr %i.ge, i64 %i.gb) #6
  br i1 %i.gf, label %bb.ag, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.gg = load ptr, ptr %i.fs, align 8, !tbaa !220 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 432
  %i.gi = load i8, ptr %i.gh, align 8
  %i.gj = and i8 %i.gi, 64
  %.not15.i.i = icmp eq i8 %i.gj, 0
  br i1 %.not15.i.i, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread80.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 384
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !135
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 392
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !136
  %i.go = call noundef zeroext i1 @_ZN4bssl34ssl_get_local_application_settingsEPKNS_13SSL_HANDSHAKEEPNS_4SpanIKhEES5_(ptr noundef nonnull %0, ptr noundef nonnull %52, ptr %i.gl, i64 %i.gn) #6
  br i1 %i.go, label %bb.ai, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread84.i

bb.ai:                                            ; preds = %bb.ah
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  %i.gp = load ptr, ptr %i.fs, align 8, !tbaa !220 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 408
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !136
  %.not.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i, %i.gr
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread84.i

.preheader.i.i.i.i:                               ; preds = %bb.ai
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 400
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !135 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %52, align 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.sroa.2.0.copyload.i.i
  %.not1019.i.i.i.i = icmp samesign eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %.not1019.i.i.i.i, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.aj
  %.0723.i.i.i.i = phi ptr [ %i.gz, %bb.aj ], [ %i.gt, %.preheader.i.i.i.i ] ; 2 uses
  %.0822.i.i.i.i = phi ptr [ %i.gy, %bb.aj ], [ %.sroa.0.0.copyload.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.gw = load i8, ptr %.0822.i.i.i.i, align 1, !tbaa !180
  %i.gx = load i8, ptr %.0723.i.i.i.i, align 1, !tbaa !180
  %.not12.i.not.i.i.i = icmp eq i8 %i.gw, %i.gx
  br i1 %.not12.i.not.i.i.i, label %bb.aj, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread84.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.0822.i.i.i.i, i64 1 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0723.i.i.i.i, i64 1 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.gy, %i.gu
  %.not11.i.i.i.i = icmp eq ptr %i.gz, %i.gv
  %or.cond.i.i.i.i = select i1 %.not10.i.i.i.i, i1 true, i1 %.not11.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !194

_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread84.i: ; preds = %.lr.ph.i.i.i.i, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #6
  br label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i

_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.i: ; preds = %bb.aj, %.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #6
  br label %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread80.i

_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i: ; preds = %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread84.i, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.critedge71.i
  %.1.i78.i = phi i32 [ 14, %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread84.i ], [ 7, %bb.ad ], [ 7, %bb.ac ], [ 9, %bb.af ], [ 5, %bb.ab ], [ 3, %bb.aa ], [ 1, %.critedge71.i ]
  %i.ha = load ptr, ptr %i.dg, align 8, !tbaa !133
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 336
  store i32 %.1.i78.i, ptr %i.hb, align 8, !tbaa !261
  br label %bb.ak

_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread80.i: ; preds = %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.i, %bb.ag, %bb.ae
  %i.hc = load i32, ptr %i.y, align 8
  %i.hd = or i32 %i.hc, 4096
  store i32 %i.hd, ptr %i.y, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread80.i, %_ZN4bsslL23should_offer_early_dataEPKNS_13SSL_HANDSHAKEE.exit.thread.i
  %i.he = call noundef zeroext i1 @_ZN4bssl20ssl_setup_key_sharesEPNS_13SSL_HANDSHAKEEt(ptr noundef nonnull %0, i16 noundef zeroext 0) #6
  br i1 %i.he, label %bb.al, label %.critedge.i

bb.al:                                            ; preds = %bb.ak
  %i.hf = call noundef zeroext i1 @_ZN4bssl31ssl_setup_extension_permutationEPNS_13SSL_HANDSHAKEE(ptr noundef nonnull %0) #6
  br i1 %i.hf, label %bb.am, label %.critedge.i

bb.am:                                            ; preds = %bb.al
  %i.hg = load i64, ptr %i.v, align 8, !tbaa !176
  %i.hh = call noundef zeroext i1 @_ZN4bssl24ssl_encrypt_client_helloEPNS_13SSL_HANDSHAKEENS_4SpanIKhEE(ptr noundef nonnull %0, ptr nonnull %i.u, i64 %i.hg) #6
  br i1 %i.hh, label %bb.an, label %.critedge.i

bb.an:                                            ; preds = %bb.am
  %i.hi = call noundef zeroext i1 @_ZN4bssl20ssl_add_client_helloEPNS_13SSL_HANDSHAKEE(ptr noundef nonnull %0)
  br i1 %i.hi, label %bb.ao, label %.critedge.i

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr %i.w, align 4, !tbaa !182
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.z, %bb.t, %bb.r, %bb.d
  %.2.i = phi i32 [ 0, %bb.d ], [ 0, %bb.z ], [ 0, %bb.t ], [ 0, %bb.r ], [ 4, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #6
  br label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit

bb.ap:                                            ; preds = %bb.b
  %i.hj = load ptr, ptr %0, align 8, !tbaa !96    ; 5 uses
  %i.hk = call i32 @SSL_is_dtls(ptr noundef %i.hj) #6
  %.not.i39 = icmp eq i32 %i.hk, 0
  br i1 %.not.i39, label %bb.aq, label %.sink.split.i

bb.aq:                                            ; preds = %bb.ap
  %i.hl = load i32, ptr %i.y, align 8
  %i.hm = and i32 %i.hl, 4096
  %.not15.i = icmp eq i32 %i.hm, 0
  br i1 %.not15.i, label %.sink.split.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !133
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 352
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !262
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 112 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !220
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = load i16, ptr %i.ht, align 4, !tbaa !233
  call void @_ZN4bssl14SSLAEADContext22SetVersionIfNullCipherEt(ptr noundef nonnull align 8 dereferenceable(610) %i.hq, i16 noundef zeroext %i.hu) #6
  %i.hv = load ptr, ptr %i.hj, align 8, !tbaa !172
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 112
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !263
  %i.hy = call noundef zeroext i1 %i.hx(ptr noundef nonnull %i.hj) #6, !inline_history !195
  br i1 %i.hy, label %bb.as, label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit

bb.as:                                            ; preds = %bb.ar
  %i.hz = load ptr, ptr %i.hr, align 8, !tbaa !220
  %i.ia = call noundef zeroext i1 @_ZN4bssl29tls13_init_early_key_scheduleEPNS_13SSL_HANDSHAKEEPK14ssl_session_st(ptr noundef nonnull %0, ptr noundef %i.hz) #6
  br i1 %i.ia, label %bb.at, label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit

bb.at:                                            ; preds = %bb.as
  %i.ib = call noundef zeroext i1 @_ZN4bssl25tls13_derive_early_secretEPNS_13SSL_HANDSHAKEE(ptr noundef nonnull %0) #6
  br i1 %i.ib, label %bb.au, label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit

bb.au:                                            ; preds = %bb.at
  %i.ic = load ptr, ptr %i.hr, align 8, !tbaa !220, !noalias !264 ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i41, label %_ZN4bssl5UpRefERKSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEE.exit.i, label %.split4.i.i.i

.split4.i.i.i:                                    ; preds = %bb.au
  %i.id = call i32 @SSL_SESSION_up_ref(ptr noundef nonnull %i.ic) #6, !noalias !265 ; 0 uses
  br label %_ZN4bssl5UpRefERKSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEE.exit.i

_ZN4bssl5UpRefERKSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEE.exit.i: ; preds = %.split4.i.i.i, %bb.au
  %i.ie = load ptr, ptr %i.cv, align 8, !tbaa !220 ; 2 uses
  store ptr %i.ic, ptr %i.cv, align 8, !tbaa !220
  %.not.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i, label %.sink.split.i, label %bb.av

bb.av:                                            ; preds = %_ZN4bssl5UpRefERKSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEE.exit.i
end_hunk_0
