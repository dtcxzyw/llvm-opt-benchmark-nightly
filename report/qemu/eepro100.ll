Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/eepro100?download=true
inline.NumInlined: 162
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nic_selective_reset:e100_write_reg4.exit
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = add i16 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = add i16 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = add i16 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = add i16 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = add i16 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.at = load i16, ptr %i.as, align 2
  %i.au = add i16 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = add i16 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = add i16 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = add i16 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = add i16 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = add i16 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = add i16 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = add i16 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = add i16 %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 46
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = add i16 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = add i16 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 50
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = add i16 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = add i16 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = add i16 %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = add i16 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = add i16 %i.cm, %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = add i16 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 62
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = add i16 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = add i16 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 66
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = add i16 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = add i16 %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 70
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = add i16 %i.de, %i.dc
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = add i16 %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 74
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = add i16 %i.dk, %i.di
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.dn = load i16, ptr %i.dm, align 2
  %i.do = add i16 %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 78
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = add i16 %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.dt = load i16, ptr %i.ds, align 2
  %i.du = add i16 %i.dt, %i.dr
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 82
  %i.dw = load i16, ptr %i.dv, align 2
  %i.dx = add i16 %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.dz = load i16, ptr %i.dy, align 2
  %i.ea = add i16 %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 86
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = add i16 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = add i16 %i.ef, %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 90
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = add i16 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = add i16 %i.el, %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 94
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = add i16 %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = add i16 %i.er, %i.ep
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  %i.eu = load i16, ptr %i.et, align 2
  %i.ev = add i16 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.ex = load i16, ptr %i.ew, align 2
  %i.ey = add i16 %i.ex, %i.ev
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 102
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = add i16 %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.fd = load i16, ptr %i.fc, align 2
  %i.fe = add i16 %i.fd, %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 106
  %i.fg = load i16, ptr %i.ff, align 2
  %i.fh = add i16 %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.fj = load i16, ptr %i.fi, align 2
  %i.fk = add i16 %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 110
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = add i16 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.fp = load i16, ptr %i.fo, align 2
  %i.fq = add i16 %i.fp, %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 114
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = add i16 %i.fs, %i.fq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.fv = load i16, ptr %i.fu, align 2
  %i.fw = add i16 %i.fv, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 118
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = add i16 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = add i16 %i.gb, %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  %i.ge = load i16, ptr %i.gd, align 2
  %i.gf = add i16 %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = add i16 %i.gh, %i.gf
  %i.gj = sub i16 -17734, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 126
  store i16 %i.gj, ptr %i.gk, align 2
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 12048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.gl, i8 noundef 0, i64 noundef 4096, i1 noundef false) #10
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 12064
  store i32 2097152, ptr %i.gm, align 16
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 11826
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.gn, ptr noundef nonnull align 16 dereferenceable(64) @eepro100_mdi_default, i64 noundef 64, i1 noundef false) #10
  ret void
}

declare ptr @eeprom93xx_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @eeprom93xx_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @nic_receive(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca [60 x i8], align 16               ; 6 uses
  %3 = alloca %struct.eepro100_rx_t, align 4      ; 7 uses
  %i.d = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #10 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.c, i8 0, i64 60, i1 false), !annotation !10
  %i.e = icmp ult i64 %2, 60
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16152
  %i.g = load i8, ptr %i.f, align 8
  %.not = icmp sgt i8 %i.g, -1
  br i1 %.not, label %bb.c, label %.critedge

.thread:                                          ; preds = %bb.a
  %i.h = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef range(i64 0, 65) %2, i64 noundef 60) #10, !alias.scope !17 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  %i.j = sub nuw nsw i64 60, %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.i, i8 noundef 0, i64 noundef range(i64 1, 4097) %i.j, i1 noundef false) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16152
  %i.l = load i8, ptr %i.k, align 8
  %.not111 = icmp sgt i8 %i.l, -1
  br i1 %.not111, label %.thread115, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %2, 1518
  br i1 %i.m, label %bb.d, label %.thread115

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16162
  %i.o = load i8, ptr %i.n, align 2
  %i.p = and i8 %i.o, 8
  %.not81 = icmp eq i8 %i.p, 0
  br i1 %.not81, label %.critedge, label %.thread115

.thread115:                                       ; preds = %.thread, %bb.d, %bb.c
  %.072112119 = phi ptr [ %1, %bb.c ], [ %1, %bb.d ], [ %i.c, %.thread ] ; 8 uses
  %.070114118 = phi i64 [ %2, %bb.c ], [ %2, %bb.d ], [ 60, %.thread ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 3608 ; 2 uses
  %i.r = load i32, ptr %.072112119, align 1
  %i.s = load i32, ptr %i.q, align 1
  %i.t = xor i32 %i.r, %i.s
  %i.u = getelementptr i8, ptr %.072112119, i64 4
  %i.v = getelementptr i8, ptr %i.q, i64 4
  %i.w = load i16, ptr %i.u, align 1
  %i.x = load i16, ptr %i.v, align 1
  %i.y = zext i16 %i.w to i32
  %i.z = zext i16 %i.x to i32
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = or i32 %i.t, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.thread115
  %i.af = load i32, ptr %.072112119, align 1
  %i.ag = xor i32 %i.af, -1
  %i.ah = getelementptr i8, ptr %.072112119, i64 4
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = xor i32 %i.aj, 65535
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i8, ptr %.072112119, align 1
  %i.aq = and i8 %i.ap, 1
  %.not83 = icmp eq i8 %i.aq, 0
  br i1 %.not83, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16165
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = and i8 %i.as, 8
  %.not87 = icmp eq i8 %i.at, 0
  br i1 %.not87, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.au = call i32 @net_crc32(ptr noundef nonnull %.072112119, i32 noundef 6) #10 ; 2 uses
  %i.av = lshr i32 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 2768
  %i.ax = lshr i32 %i.au, 5
  %i.ay = and i32 %i.ax, 7
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = and i32 %i.av, 7
  %i.be = shl nuw nsw i32 1, %i.bd
  %i.bf = and i32 %i.be, %i.bc
  %.not88 = icmp eq i32 %i.bf, 0
  br i1 %.not88, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16159
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = and i8 %i.bh, 1
  %.not89 = icmp eq i8 %i.bi, 0
  br i1 %.not89, label %.critedge, label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 16159
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = and i8 %i.bk, 1
  %.not84 = icmp eq i8 %i.bl, 0
  br i1 %.not84, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16164
  %i.bn = load i8, ptr %i.bm, align 4
  %i.bo = and i8 %i.bn, 64
  %.not85 = icmp eq i8 %i.bo, 0
  br i1 %.not85, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = call i32 @net_crc32(ptr noundef nonnull %.072112119, i32 noundef 6) #10 ; 2 uses
  %i.bq = lshr i32 %i.bp, 26
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 2768
  %i.bs = lshr i32 %i.bp, 29
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = and i32 %i.bq, 7
  %i.by = shl nuw nsw i32 1, %i.bx
  %i.bz = and i32 %i.by, %i.bw
  %.not86.not = icmp eq i32 %i.bz, 0
  br i1 %.not86.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.e, %bb.l, %.thread115
  %.3 = phi i16 [ -24576, %.thread115 ], [ -24576, %bb.l ], [ -24572, %bb.j ], [ -24574, %bb.e ], [ -24574, %bb.g ], [ -24574, %bb.h ], [ -24570, %bb.i ]
  %i.ca = getelementptr i8, ptr %i.d, i64 12048   ; 5 uses
  %.val = load i8, ptr %i.ca, align 16
  %i.cb = and i8 %.val, 60
  %.not90 = icmp eq i8 %i.cb, 16
  br i1 %.not90, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 12051
  %i.cd = load i8, ptr %i.cc, align 1             ; 2 uses
  %i.ce = xor i8 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 12049 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = or i8 %i.cg, 16                         ; 3 uses
  store i8 %i.ch, ptr %i.cf, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 11824
  store i8 %i.ch, ptr %i.ci, align 16
  %i.cj = or i8 %i.ce, 15
  %i.ck = and i8 %i.ch, %i.cj
  %.not.i.i = icmp ne i8 %i.ck, 0
  %i.cl = and i8 %i.cd, 1
  %.not11.not.i.i = icmp eq i8 %i.cl, 0
  %or.cond.i.i = and i1 %.not11.not.i.i, %.not.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 11825 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1
  %.not.i.i.i = icmp eq i8 %i.cn, 0               ; 2 uses
  br i1 %or.cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i.i.i, label %enable_interrupt.exit.sink.split.i.i, label %eepro100_rnr_interrupt.exit

bb.p:                                             ; preds = %bb.n
  br i1 %.not.i.i.i, label %eepro100_rnr_interrupt.exit, label %enable_interrupt.exit.sink.split.i.i

enable_interrupt.exit.sink.split.i.i:             ; preds = %bb.p, %bb.o
  %.sink14.i.i = phi i32 [ 1, %bb.o ], [ 0, %bb.p ]
  %.sink.i.i = phi i8 [ 1, %bb.o ], [ 0, %bb.p ]
  call void @pci_set_irq(ptr noundef nonnull %i.d, i32 noundef %.sink14.i.i) #10
  store i8 %.sink.i.i, ptr %i.cm, align 1
  br label %eepro100_rnr_interrupt.exit

eepro100_rnr_interrupt.exit:                      ; preds = %bb.o, %bb.p, %enable_interrupt.exit.sink.split.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 11996 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4
  br label %.critedge

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 11916 ; 4 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 11920 ; 5 uses
  %i.cu = load i32, ptr %i.ct, align 16
  %i.cv = add i32 %i.cu, %i.cs
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 4 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.cy = call i32 @address_space_rw(ptr noundef nonnull %i.cx, i64 noundef range(i64 0, 4294967296) %i.cw, i64 4294967296, ptr noundef nonnull %3, i64 noundef range(i64 0, 65536) 16, i1 noundef zeroext false) #10 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.da = load i16, ptr %i.cz, align 2            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = zext i16 %i.dc to i64
  %spec.select = call i64 @llvm.umin.i64(i64 %.070114118, i64 %i.dd) ; 4 uses
  %i.de = load i32, ptr %i.cr, align 4
  %i.df = load i32, ptr %i.ct, align 16
  %i.dg = add i32 %i.df, %i.de
  %i.dh = zext i32 %i.dg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.3, ptr %i.b, align 2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.di = call i32 @address_space_rw(ptr noundef nonnull %i.cx, i64 noundef range(i64 0, 4294967308) %i.dh, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 65536) 2, i1 noundef zeroext true) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dj = load i32, ptr %i.cr, align 4
  %i.dk = load i32, ptr %i.ct, align 16
  %i.dl = add i32 %i.dk, %i.dj
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %i.dm, 12
  %i.do = trunc nuw i64 %spec.select to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.do, ptr %i.a, align 2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.dp = call i32 @address_space_rw(ptr noundef nonnull %i.cx, i64 noundef range(i64 0, 4294967308) %i.dn, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 65536) 2, i1 noundef zeroext true) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 16162
  %i.dr = load i8, ptr %i.dq, align 2
  %i.ds = and i8 %i.dr, 4
  %.not91 = icmp eq i8 %i.ds, 0
  br i1 %.not91, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = load ptr, ptr @stderr, align 8
  %i.du = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dt, i32 noundef 1, ptr noundef nonnull @.str.65) #10 ; 0 uses
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.dv = load i32, ptr %i.cr, align 4
  %i.dw = load i32, ptr %i.ct, align 16
  %i.dx = add i32 %i.dw, %i.dv
  %i.dy = zext i32 %i.dx to i64
  %i.dz = add nuw nsw i64 %i.dy, 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !9
  fence seq_cst
  %i.ea = call i32 @address_space_rw(ptr noundef nonnull %i.cx, i64 noundef range(i64 0, 4294967312) %i.dz, i64 4294967296, ptr noundef nonnull %.072112119, i64 noundef range(i64 0, 65536) %spec.select, i1 noundef zeroext true) #10 ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 11984 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 16
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 12051 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1             ; 2 uses
  %i.eg = xor i8 %i.ef, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 12049 ; 4 uses
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = or i8 %i.ei, 64                         ; 3 uses
  store i8 %i.ej, ptr %i.eh, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 11824 ; 2 uses
  store i8 %i.ej, ptr %i.ek, align 16
  %i.el = or i8 %i.eg, 15
  %i.em = and i8 %i.ej, %i.el
  %.not.i.i94 = icmp eq i8 %i.em, 0
  %.not11.not.i.i95 = trunc i8 %i.ef to i1
  %or.cond.i.i96.not = or i1 %.not.i.i94, %.not11.not.i.i95 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 11825 ; 3 uses
  %i.eo = load i8, ptr %i.en, align 1
  %.not.i.i.i97 = icmp eq i8 %i.eo, 0             ; 2 uses
  br i1 %or.cond.i.i96.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i.i97, label %enable_interrupt.exit.sink.split.i.i98, label %eepro100_fr_interrupt.exit

bb.u:                                             ; preds = %bb.s
  br i1 %.not.i.i.i97, label %eepro100_fr_interrupt.exit, label %enable_interrupt.exit.sink.split.i.i98

enable_interrupt.exit.sink.split.i.i98:           ; preds = %bb.u, %bb.t
  %.sink14.i.i99 = phi i32 [ 1, %bb.t ], [ 0, %bb.u ]
  %.sink.i.i100 = phi i8 [ 1, %bb.t ], [ 0, %bb.u ]
  call void @pci_set_irq(ptr noundef nonnull %i.d, i32 noundef %.sink14.i.i99) #10
  store i8 %.sink.i.i100, ptr %i.en, align 1
  br label %eepro100_fr_interrupt.exit

eepro100_fr_interrupt.exit:                       ; preds = %bb.t, %bb.u, %enable_interrupt.exit.sink.split.i.i98
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.eq = load i32, ptr %i.ep, align 4
  store i32 %i.eq, ptr %i.ct, align 16
  %.not92 = icmp sgt i16 %i.da, -1
  br i1 %.not92, label %eepro100_rnr_interrupt.exit108, label %bb.v

bb.v:                                             ; preds = %eepro100_fr_interrupt.exit
  %i.er = load i8, ptr %i.ca, align 16
  %i.es = and i8 %i.er, -61
  %i.et = or disjoint i8 %i.es, 8
  store i8 %i.et, ptr %i.ca, align 16
  %i.eu = load i8, ptr %i.ee, align 1             ; 2 uses
  %i.ev = xor i8 %i.eu, -1
  %i.ew = load i8, ptr %i.eh, align 1
  %i.ex = or i8 %i.ew, 16                         ; 3 uses
  store i8 %i.ex, ptr %i.eh, align 1
  store i8 %i.ex, ptr %i.ek, align 16
  %i.ey = or i8 %i.ev, 15
  %i.ez = and i8 %i.ex, %i.ey
  %.not.i.i101 = icmp ne i8 %i.ez, 0
  %i.fa = and i8 %i.eu, 1
  %.not11.not.i.i102 = icmp eq i8 %i.fa, 0
  %or.cond.i.i103 = and i1 %.not11.not.i.i102, %.not.i.i101
  br i1 %or.cond.i.i103, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %or.cond.i.i96.not, label %enable_interrupt.exit.sink.split.i.i105, label %eepro100_rnr_interrupt.exit108

bb.x:                                             ; preds = %bb.v
  br i1 %or.cond.i.i96.not, label %eepro100_rnr_interrupt.exit108, label %enable_interrupt.exit.sink.split.i.i105

enable_interrupt.exit.sink.split.i.i105:          ; preds = %bb.x, %bb.w
  %.sink14.i.i106 = phi i32 [ 1, %bb.w ], [ 0, %bb.x ]
  %.sink.i.i107 = phi i8 [ 1, %bb.w ], [ 0, %bb.x ]
  call void @pci_set_irq(ptr noundef nonnull %i.d, i32 noundef %.sink14.i.i106) #10
  store i8 %.sink.i.i107, ptr %i.en, align 1
  br label %eepro100_rnr_interrupt.exit108

eepro100_rnr_interrupt.exit108:                   ; preds = %enable_interrupt.exit.sink.split.i.i105, %bb.x, %bb.w, %eepro100_fr_interrupt.exit
  %i.fb = and i16 %i.da, 16384
  %.not93 = icmp eq i16 %i.fb, 0
  br i1 %.not93, label %bb.z, label %bb.y

bb.y:                                             ; preds = %eepro100_rnr_interrupt.exit108
  %i.fc = load i8, ptr %i.ca, align 16
  %i.fd = and i8 %i.fc, -61
  %i.fe = or disjoint i8 %i.fd, 4
  store i8 %i.fe, ptr %i.ca, align 16
  br label %bb.z

bb.z:                                             ; preds = %eepro100_rnr_interrupt.exit108, %bb.y, %bb.r
  %.275 = phi i64 [ -1, %bb.r ], [ %spec.select, %bb.y ], [ %spec.select, %eepro100_rnr_interrupt.exit108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.i, %bb.k, %bb.d, %bb.b, %bb.l, %bb.z, %eepro100_rnr_interrupt.exit
  %.376 = phi i64 [ -1, %bb.b ], [ -1, %eepro100_rnr_interrupt.exit ], [ %.275, %bb.z ], [ %.070114118, %bb.k ], [ -1, %bb.l ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  ret i64 %.376
}

declare ptr @qemu_get_nic_opaque(ptr noundef) local_unnamed_addr #1

declare i32 @vmstate_register_with_alias_id(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @vmstate_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare void @eeprom93xx_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_del_nic(ptr noundef) local_unnamed_addr #1

declare void @device_add_bootindex_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{i64 2152161369}
!10 = !{!"auto-init"}
!11 = distinct !{!11, !13}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, i1 false, !"memcpy.inline"}
!15 = distinct !{!15, !14, !"memcpy.inline: argument 1"}
!16 = distinct !{!16, !14, !"memcpy.inline: argument 0"}
!17 = !{!16, !15}
end_hunk_0
