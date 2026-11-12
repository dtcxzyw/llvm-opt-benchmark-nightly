Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls13?download=true
inline.NumInlined: 109
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DoTls13HandShakeMsgType:bb.a

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 722 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 2            ; 2 uses
  %i.ay = and i32 %i.ax, 256
  %.not77.i = icmp eq i32 %i.ay, 0
  br i1 %.not77.i, label %bb.r, label %bb.as

bb.r:                                             ; preds = %bb.q
  %i.az = or disjoint i32 %i.ax, 256
  store i32 %i.az, ptr %i.aw, align 2
  br label %SanityCheckTls13MsgReceived.exit

bb.s:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %i.bb, 48
  switch i64 %i.bc, label %.thread.i [
    i64 16, label %bb.t
    i64 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !95
  %.not73.i = icmp eq i8 %i.be, 4
  br i1 %.not73.i, label %.thread.i, label %bb.as

bb.u:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1062
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !87
  %.not74.i = icmp eq i8 %i.bg, 12
  br i1 %.not74.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !95
  %i.bj = icmp ult i8 %i.bi, 10
  br i1 %i.bj, label %bb.as, label %.thread.i

.thread.i:                                        ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 722 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 2            ; 2 uses
  %i.bm = and i32 %i.bl, 512
  %.not75.i = icmp eq i32 %i.bm, 0
  br i1 %.not75.i, label %bb.w, label %bb.as

bb.w:                                             ; preds = %.thread.i
  %i.bn = or disjoint i32 %i.bl, 512
  store i32 %i.bn, ptr %i.bk, align 2
  br label %SanityCheckTls13MsgReceived.exit

bb.x:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = and i64 %i.bp, 48
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.as, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !95
  %.not71.i = icmp eq i8 %i.bt, 4
  br i1 %.not71.i, label %bb.z, label %bb.as

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 722 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 2            ; 2 uses
  %i.bw = and i32 %i.bv, 4096
  %.not72.i = icmp eq i32 %i.bw, 0
  br i1 %.not72.i, label %bb.aa, label %bb.as

bb.aa:                                            ; preds = %bb.z
  %i.bx = or disjoint i32 %i.bv, 4096
  store i32 %i.bx, ptr %i.bu, align 2
  br label %SanityCheckTls13MsgReceived.exit

bb.ab:                                            ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = and i64 %i.bz, 48
  switch i64 %i.ca, label %.thread82.i [
    i64 16, label %bb.ac
    i64 0, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !95
  %.not68.i = icmp eq i8 %i.cc, 5
  br i1 %.not68.i, label %.thread82.i, label %bb.as

bb.ad:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !95
  %i.cf = icmp ult i8 %i.ce, 10
  br i1 %i.cf, label %bb.as, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1062
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !87
  %i.ci = icmp ult i8 %i.ch, 12
  br i1 %i.ci, label %bb.as, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 722
  %i.ck = load i32, ptr %i.cj, align 2
  %i.cl = and i32 %i.ck, 512
  %.not69.i = icmp eq i32 %i.cl, 0
  br i1 %.not69.i, label %bb.as, label %.thread82.i

.thread82.i:                                      ; preds = %bb.af, %bb.ac, %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 722 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 2            ; 2 uses
  %i.co = and i32 %i.cn, 16384
  %.not70.i = icmp eq i32 %i.co, 0
  br i1 %.not70.i, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %.thread82.i
  %i.cp = or disjoint i32 %i.cn, 16384
  store i32 %i.cp, ptr %i.cm, align 2
  br label %SanityCheckTls13MsgReceived.exit

bb.ah:                                            ; preds = %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.cr = load i64, ptr %i.cq, align 8            ; 7 uses
  %i.cs = and i64 %i.cr, 48
  switch i64 %i.cs, label %.thread83.i [
    i64 16, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1062
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !87
  %i.cv = icmp ult i8 %i.cu, 12
  br i1 %i.cv, label %bb.as, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !95
  %.not57.i = icmp eq i8 %i.cx, 6
  br i1 %.not57.i, label %.thread83.i, label %bb.as

bb.ak:                                            ; preds = %bb.ah
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !95
  %i.da = icmp ult i8 %i.cz, 10
  br i1 %i.da, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1062
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !87
  %i.dd = icmp ult i8 %i.dc, 12
  br i1 %i.dd, label %bb.as, label %.thread83.i

.thread83.i:                                      ; preds = %bb.al, %bb.aj, %bb.ah
  %i.de = and i64 %i.cr, 64
  %.not58.i = icmp eq i64 %i.de, 0
  br i1 %.not58.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread83.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 722
  %i.dg = load i32, ptr %i.df, align 2
  %i.dh = and i32 %i.dg, 512
  %.not59.i = icmp eq i32 %i.dh, 0
  br i1 %.not59.i, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread83.i
  %i.di = and i64 %i.cr, 281474976710656
  %.not60.i = icmp eq i64 %i.di, 0
  %i.dj = and i64 %i.cr, 112
  %or.cond.i = icmp ne i64 %i.dj, 80
  %or.cond84.i = and i1 %.not60.i, %or.cond.i
  %i.dk = and i64 %i.cr, 1073741824
  %.not62.i = icmp ne i64 %i.dk, 0
  %or.cond85.not.i = or i1 %.not62.i, %or.cond84.i
  br i1 %or.cond85.not.i, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.dl = and i64 %i.cr, 281474976710720
  %or.cond80.i = icmp ne i64 %i.dl, 0
  %i.dm = and i64 %i.cr, 3221225472
  %or.cond81.i = icmp eq i64 %i.dm, 1073741824
  %or.cond86.i = and i1 %or.cond80.i, %or.cond81.i
  br i1 %or.cond86.i, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 722 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 2            ; 2 uses
  %i.dp = and i32 %i.do, 65536
  %.not67.i = icmp eq i32 %i.dp, 0
  br i1 %.not67.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.dq = or disjoint i32 %i.do, 65536
  store i32 %i.dq, ptr %i.dn, align 2
  br label %SanityCheckTls13MsgReceived.exit

bb.ar:                                            ; preds = %bb.b
  %i.dr = getelementptr i8, ptr %0, i64 724
  %6 = load i16, ptr %i.dr, align 2
  %7 = and i16 %6, 1
  %.not.i = icmp eq i16 %7, 0
  br i1 %.not.i, label %bb.as, label %SanityCheckTls13MsgReceived.exit

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.t, %bb.v, %.thread.i, %bb.x, %bb.y, %bb.z, %bb.ac, %bb.ad, %bb.af, %bb.ae, %.thread82.i, %bb.ai, %bb.aj, %bb.ak, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.b
  %.0.i.ph = phi i32 [ -394, %bb.b ], [ -373, %bb.al ], [ -373, %bb.am ], [ -373, %bb.an ], [ -373, %bb.ao ], [ -373, %bb.ak ], [ -373, %bb.aj ], [ -373, %bb.ai ], [ -395, %.thread82.i ], [ -373, %bb.ae ], [ -373, %bb.af ], [ -373, %bb.ad ], [ -373, %bb.ac ], [ -395, %bb.z ], [ -373, %bb.y ], [ -344, %bb.x ], [ -395, %.thread.i ], [ -373, %bb.v ], [ -373, %bb.t ], [ -395, %bb.q ], [ -373, %bb.p ], [ -344, %bb.o ], [ -373, %bb.m ], [ -344, %bb.l ], [ -395, %bb.j ], [ -373, %bb.i ], [ -344, %bb.h ], [ -395, %bb.f ], [ -395, %bb.e ], [ -373, %bb.d ], [ -344, %bb.c ], [ -395, %bb.ap ], [ -373, %bb.ar ]
  %i.ds = tail call i32 @SendAlert(ptr noundef %0, i32 noundef 2, i32 noundef 10) #11 ; 0 uses
  br label %.thread161

SanityCheckTls13MsgReceived.exit:                 ; preds = %bb.ar, %bb.aq, %bb.ag, %bb.aa, %bb.w, %bb.r, %bb.n, %bb.k, %bb.g
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1063
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !107
  %.fr = freeze i8 %i.du
  %i.dv = icmp eq i8 %.fr, 16
  br i1 %i.dv, label %switch.early.test, label %bb.au

switch.early.test:                                ; preds = %SanityCheckTls13MsgReceived.exit
  switch i8 %3, label %bb.at [
    i8 24, label %bb.au
    i8 20, label %bb.au
    i8 13, label %bb.au
    i8 11, label %bb.au
    i8 4, label %bb.au
  ]

bb.at:                                            ; preds = %switch.early.test
  %i.dw = tail call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 10) #11 ; 0 uses
  br label %.thread161

bb.au:                                            ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %SanityCheckTls13MsgReceived.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = and i64 %i.dy, 48
  switch i64 %i.dz, label %.thread [
    i64 16, label %bb.av
    i64 0, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !95
  %i.ec = icmp eq i8 %i.eb, 0
  %i.ed = and i8 %3, -5
  %i.ee = icmp ne i8 %i.ed, 2
  %or.cond20 = and i1 %i.ee, %i.ec
  br i1 %or.cond20, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av
  %i.ef = tail call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 10) #11 ; 0 uses
  br label %.thread161

bb.ax:                                            ; preds = %bb.au
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1062
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !87
  %i.ei = icmp eq i8 %i.eh, 0
  %i.ej = icmp ne i8 %3, 1
  %or.cond23 = and i1 %i.ej, %i.ei
  br i1 %or.cond23, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  %i.ek = tail call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 10) #11 ; 0 uses
  br label %.thread161

.thread:                                          ; preds = %bb.au, %bb.av, %bb.ax
  switch i8 %3, label %.critedge [
    i8 2, label %bb.az
    i8 8, label %bb.ba
    i8 13, label %bb.bb
    i8 4, label %bb.bc
    i8 1, label %bb.bd
    i8 11, label %bb.be
    i8 15, label %bb.bh
    i8 20, label %bb.bi
    i8 24, label %bb.bj
  ]

bb.az:                                            ; preds = %.thread
  %i.el = call i32 @DoTls13ServerHello(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %4, ptr noundef nonnull %i.a)
  br label %DoTls13Certificate.exit

bb.ba:                                            ; preds = %.thread
  %i.em = tail call fastcc i32 @DoTls13EncryptedExtensions(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %4)
  br label %DoTls13Certificate.exit

bb.bb:                                            ; preds = %.thread
  %i.en = tail call fastcc i32 @DoTls13CertificateRequest(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %4)
  br label %DoTls13Certificate.exit

bb.bc:                                            ; preds = %.thread
  %i.eo = load i32, ptr %2, align 4, !tbaa !89
  %i.ep = add i32 %i.eo, %4
  store i32 %i.ep, ptr %2, align 4, !tbaa !89
  br label %DoTls13Certificate.exit.thread.thread

bb.bd:                                            ; preds = %.thread
  %i.eq = tail call i32 @DoTls13ClientHello(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %4)
  br label %DoTls13Certificate.exit

bb.be:                                            ; preds = %.thread
  %i.er = tail call i32 @ProcessPeerCerts(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %4) #11 ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bf, label %DoTls13Certificate.exit

bb.bf:                                            ; preds = %bb.be
  %i.et = load i64, ptr %i.dx, align 8
  %i.eu = and i64 %i.et, 48
  %i.ev = icmp eq i64 %i.eu, 16
  br i1 %i.ev, label %bb.bg, label %DoTls13Certificate.exit.thread.thread

bb.bg:                                            ; preds = %bb.bf
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1061
  store i8 5, ptr %i.ew, align 1, !tbaa !95
  br label %DoTls13Certificate.exit.thread.thread

bb.bh:                                            ; preds = %.thread
  %i.ex = tail call fastcc i32 @DoTls13CertificateVerify(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %4)
  br label %DoTls13Certificate.exit

bb.bi:                                            ; preds = %.thread
  %i.ey = tail call i32 @DoTls13Finished(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %4, i32 noundef %5, i32 noundef 0)
  br label %DoTls13Certificate.exit

bb.bj:                                            ; preds = %.thread
  %i.ez = tail call fastcc i32 @DoTls13KeyUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %4)
  br label %DoTls13Certificate.exit

DoTls13Certificate.exit:                          ; preds = %bb.be, %bb.bj, %bb.bi, %bb.bh, %bb.bd, %bb.bb, %bb.ba, %bb.az
  %.0 = phi i32 [ %i.ez, %bb.bj ], [ %i.el, %bb.az ], [ %i.em, %bb.ba ], [ %i.en, %bb.bb ], [ %i.ey, %bb.bi ], [ %i.eq, %bb.bd ], [ %i.er, %bb.be ], [ %i.ex, %bb.bh ] ; 4 uses
  switch i32 %.0, label %.critedge [
    i32 -108, label %bb.bk
    i32 -408, label %bb.bk
    i32 0, label %DoTls13Certificate.exit.thread.thread
  ]

bb.bk:                                            ; preds = %DoTls13Certificate.exit, %DoTls13Certificate.exit
  %i.fa = load i32, ptr %2, align 4, !tbaa !89    ; 2 uses
  %.not141 = icmp eq i32 %i.fa, 0
  br i1 %.not141, label %.critedge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fb = add i32 %i.fa, -4
  store i32 %i.fb, ptr %2, align 4, !tbaa !89
  br label %.critedge

DoTls13Certificate.exit.thread.thread:            ; preds = %DoTls13Certificate.exit, %bb.bc, %bb.bf, %bb.bg
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !110
  switch i32 %i.fd, label %switch.early.test151 [
    i32 -108, label %bb.bm
    i32 -408, label %bb.bm
  ]

bb.bm:                                            ; preds = %DoTls13Certificate.exit.thread.thread, %DoTls13Certificate.exit.thread.thread
  store i32 0, ptr %i.fc, align 8, !tbaa !110
  br label %switch.early.test151

switch.early.test151:                             ; preds = %bb.bm, %DoTls13Certificate.exit.thread.thread
  %i.fe = load i8, ptr %i.a, align 1
  switch i8 %i.fe, label %bb.bn [
    i8 24, label %.critedge
    i8 4, label %.critedge
    i8 1, label %.critedge
  ]

bb.bn:                                            ; preds = %switch.early.test151
  %i.ff = zext i32 %i.b to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff
  %i.fh = tail call i32 @HashInput(ptr noundef nonnull %0, ptr noundef %i.fg, i32 noundef %4) #11
  br label %.critedge

.critedge:                                        ; preds = %DoTls13Certificate.exit, %.thread, %bb.bk, %bb.bl, %switch.early.test151, %switch.early.test151, %switch.early.test151, %bb.bn
  %.1 = phi i32 [ %i.fh, %bb.bn ], [ 0, %switch.early.test151 ], [ 0, %switch.early.test151 ], [ 0, %switch.early.test151 ], [ %.0, %DoTls13Certificate.exit ], [ %.0, %bb.bl ], [ %.0, %bb.bk ], [ -307, %.thread ] ; 3 uses
  %i.fi = tail call i32 @TranslateErrorToAlert(i32 noundef %.1) #11 ; 2 uses
  %.not142 = icmp eq i32 %i.fi, -1
  br i1 %.not142, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.critedge
  %i.fj = tail call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.fi) #11
  %i.fk = icmp eq i32 %i.fj, -308
  br i1 %i.fk, label %.thread161, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.critedge
  %i.fl = icmp eq i32 %.1, 0
  br i1 %i.fl, label %bb.bq, label %.thread161

bb.bq:                                            ; preds = %bb.bp
  %i.fm = load i64, ptr %i.dx, align 8
  %i.fn = and i64 %i.fm, 65584
  %or.cond = icmp eq i64 %i.fn, 65552
  br i1 %or.cond, label %bb.br, label %.thread161

bb.br:                                            ; preds = %bb.bq
  %i.fo = load i8, ptr %i.a, align 1, !tbaa !57
  switch i8 %i.fo, label %.thread161 [
    i8 2, label %bb.bs
    i8 20, label %bb.bw
  ]

bb.bs:                                            ; preds = %bb.br
  %i.fp = tail call i32 @DeriveEarlySecret(ptr noundef nonnull %0) ; 2 uses
  %.not144 = icmp eq i32 %i.fp, 0
  br i1 %.not144, label %bb.bt, label %.thread161
end_hunk_0
