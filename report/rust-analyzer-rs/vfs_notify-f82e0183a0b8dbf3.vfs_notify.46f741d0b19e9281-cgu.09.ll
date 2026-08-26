Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/vfs_notify-f82e0183a0b8dbf3.vfs_notify.46f741d0b19e9281-cgu.09?download=true
inline.NumInlined: 222
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_Cs65Ktfge4woL_10vfs_notifyNtB4_11NotifyActor3run:bb.a
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [56 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [56 x i8], align 8               ; 9 uses
  %i.ac = alloca [88 x i8], align 8               ; 7 uses
  %i.ad = alloca [88 x i8], align 8               ; 4 uses
  %i.ae = alloca [56 x i8], align 8               ; 5 uses
  %i.af = alloca [56 x i8], align 8               ; 7 uses
  %i.ag = alloca [88 x i8], align 8               ; 4 uses
  %i.ah = alloca [88 x i8], align 8               ; 8 uses
  %i.ai = alloca [64 x i8], align 8               ; 11 uses
  %i.aj = alloca [16 x i8], align 8               ; 8 uses
  %i.ak = alloca [56 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [56 x i8], align 8               ; 5 uses
  %i.ao = alloca [48 x i8], align 8               ; 9 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 11 uses
  %i.at = alloca [40 x i8], align 8               ; 13 uses
  %i.au = alloca [56 x i8], align 8               ; 7 uses
  %i.av = alloca [48 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [56 x i8], align 8               ; 7 uses
  %i.az = alloca [72 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [72 x i8], align 8               ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 9 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 9 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [16 x i8], align 8               ; 9 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [56 x i8], align 8               ; 10 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [16 x i8], align 8               ; 7 uses
  %i.br = alloca [56 x i8], align 8               ; 7 uses
  %i.bs = alloca [8 x i8], align 8                ; 6 uses
  %i.bt = alloca [4 x i8], align 4                ; 6 uses
  %i.bu = alloca [16 x i8], align 8               ; 8 uses
  %i.bv = alloca [56 x i8], align 8               ; 8 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.619.sroa.0 = alloca [16 x i8], align 8   ; 5 uses
  %i.by = alloca [56 x i8], align 8               ; 11 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [16 x i8], align 16              ; 4 uses
  %i.cb = alloca [32 x i8], align 8               ; 7 uses
  %i.cc = alloca [32 x i8], align 8               ; 7 uses
  %i.cd = alloca [64 x i8], align 8               ; 12 uses
  %.sroa.12 = alloca [48 x i8], align 8           ; 8 uses
  %i.ce = alloca [16 x i8], align 8               ; 10 uses
  store i64 %1, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 5 uses
  store ptr %2, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %.sroa.5.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %.sroa.4.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 33
  %i.cv = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx20.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.413.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.08.sroa.4.0..sroa_idx.i.i111 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4.0..sroa_idx.i.i113 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.4.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 5 uses
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.529.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.6216.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.8.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.08.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.outer

.outer:                                           ; preds = %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_errorNtNtCskihuepUL9Ty_12notify_types5event5EventEB2_.exit.thread, %bb.a
  %.sroa.619.sroa.5.0.ph = phi i64 [ %.sroa.619.sroa.5.4, %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_errorNtNtCskihuepUL9Ty_12notify_types5event5EventEB2_.exit.thread ], [ undef, %bb.a ] ; 13 uses
  %.sroa.619.sroa.6.0.ph = phi ptr [ %.sroa.619.sroa.6.4, %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_errorNtNtCskihuepUL9Ty_12notify_types5event5EventEB2_.exit.thread ], [ undef, %bb.a ] ; 13 uses
  %.sroa.619.sroa.5.0.ph.a = phi i64 [ %.sroa.9.3249, %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_errorNtNtCskihuepUL9Ty_12notify_types5event5EventEB2_.exit.thread ], [ undef, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.hh
  %.sroa.9.0 = phi i64 [ %.sroa.9.3249, %bb.hh ], [ %.sroa.619.sroa.5.0.ph.a, %.outer ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.fh = load i64, ptr %i.cg, align 8, !range !6, !alias.scope !307, !noalias !310, !noundef !5
  %.not.i = icmp eq i64 %i.fh, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !313
  store i64 5, ptr %i.aj, align 8, !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !313
  store ptr %i.ce, ptr %i.ai, align 8, !noalias !313
  store ptr @11, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !313
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !313
  store ptr %i.ce, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !313
  store ptr %i.ci, ptr %i.ch, align 8, !noalias !313
  store ptr @12, ptr %i.cj, align 8, !noalias !313
  store i64 1, ptr %i.ck, align 8, !noalias !313
  store ptr %i.ci, ptr %i.cl, align 8, !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !314
  invoke void @_RNvNtCsM5evIHPibA_17crossbeam_channel6select10run_select(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ac, ptr noalias nofree noundef nonnull align 8 %i.ai, i64 noundef 2, i64 undef, i32 noundef 1000000001, i1 noundef zeroext false)
          to label %.noexc32.i unwind label %.loopexit, !noalias !318

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !313
  invoke void @_RNvMsa_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_8ReceiverNtCs65Ktfge4woL_10vfs_notify7MessageE4recvB12_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.d
  %i.fi = load i64, ptr %i.ak, align 8, !range !319, !noalias !313, !noundef !5 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, -2
  br i1 %i.fj, label %.thread, label %.thread245

.noexc32.i:                                       ; preds = %bb.c
  %i.fk = load i32, ptr %i.cm, align 8, !range !320, !noalias !314, !noundef !5
  %.not.i.i = icmp eq i32 %i.fk, -2
  br i1 %.not.i.i, label %bb.e, label %bb.f, !prof !321

bb.e:                                             ; preds = %.noexc32.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #22
          to label %.noexc33.i unwind label %.loopexit.split-lp, !noalias !318

.noexc33.i:                                       ; preds = %bb.e
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i: ; preds = %.thread.i.loopexit, %.thread.i.loopexit.split-lp, %.loopexit, %.loopexit.split-lp, %bb.x
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.x ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit376, %.thread.i.loopexit ], [ %lpad.loopexit.split-lp377, %.thread.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiveruEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj) #20
          to label %.body89 unwind label %bb.y, !noalias !318

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i

bb.f:                                             ; preds = %.noexc32.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx40.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !noalias !313
  %i.fl = load i64, ptr %i.cn, align 8, !noalias !314, !noundef !5 ; 2 uses
  %i.fm = load ptr, ptr %i.co, align 8, !noalias !314, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !314
  store i64 %i.fl, ptr %i.ah, align 8, !noalias !313
  store ptr %i.fm, ptr %.sroa.4.0..sroa_idx39.i, align 8, !noalias !313
  switch i64 %i.fl, label %bb.s [
    i64 0, label %bb.g
    i64 1, label %bb.r
  ], !prof !322

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %i.ah, i64 88, i1 false), !noalias !313
  invoke void @_RINvMs8_NtCsM5evIHPibA_17crossbeam_channel6selectNtB6_17SelectedOperation4recvNtCs65Ktfge4woL_10vfs_notify7MessageEB1g_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce)
          to label %bb.h unwind label %.thread.i.loopexit, !noalias !318

.thread.i.loopexit:                               ; preds = %bb.g, %bb.r
  %lpad.loopexit376 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i

.thread.i.loopexit.split-lp:                      ; preds = %bb.u
  %lpad.loopexit.split-lp377 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !313
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 8, !noalias !313 ; 2 uses
  %i.fn = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.fn, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.557.0..sroa_idx.i, i64 48, i1 false), !noalias !323
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.v
  %.sroa.9.0.a = phi i64 [ %i.fx, %bb.v ], [ %.sroa.9.0, %bb.h ], [ %.sroa.0.0.copyload.i, %bb.i ]
  %.not = phi i1 [ false, %bb.v ], [ true, %bb.h ], [ false, %bb.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.v ], [ 2, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !313
  invoke void @_RNvXsb_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_8ReceiveruENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %bb.l unwind label %bb.k, !noalias !318

bb.k:                                             ; preds = %bb.j
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel14ReceiverFlavoruEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aj) #20
          to label %.body89 unwind label %bb.q, !noalias !318

bb.l:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.fp = load i64, ptr %i.aj, align 8, !range !30, !alias.scope !327, !noalias !313, !noundef !5
  switch i64 %i.fp, label %bb.aa [
    i64 3, label %bb.m
    i64 4, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.fq = load ptr, ptr %i.cp, align 8, !alias.scope !336, !noalias !313, !nonnull !5, !noundef !5
  %i.fr = atomicrmw sub ptr %i.fq, i64 1 release, align 8, !noalias !337
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors2at7ChannelE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp) #19
          to label %bb.aa unwind label %bb.z

bb.o:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ft = load ptr, ptr %i.cp, align 8, !alias.scope !344, !noalias !313, !nonnull !5, !noundef !5
  %i.fu = atomicrmw sub ptr %i.ft, i64 1 release, align 8, !noalias !345
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp) #19
          to label %bb.aa unwind label %bb.z

bb.q:                                             ; preds = %bb.k
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !318
  unreachable

bb.r:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(88) %i.ah, i64 88, i1 false), !noalias !313
  invoke void @_RINvMs8_NtCsM5evIHPibA_17crossbeam_channel6selectNtB6_17SelectedOperation4recvINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ci)
          to label %bb.t unwind label %.thread.i.loopexit, !noalias !318

bb.s:                                             ; preds = %bb.f
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 183 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23
          to label %bb.w unwind label %bb.x, !noalias !318

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !313
  %i.fx = load i64, ptr %i.ae, align 8, !range !346, !alias.scope !347, !noalias !350, !noundef !5 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, -2
  br i1 %i.fy, label %bb.u, label %bb.v, !prof !321

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #22
          to label %.noexc.i unwind label %.thread.i.loopexit.split-lp, !noalias !318

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.8..sroa_idx, i64 48, i1 false), !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !313
  br label %bb.j

bb.w:                                             ; preds = %bb.s
  unreachable

bb.x:                                             ; preds = %bb.s
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsa_NtCsM5evIHPibA_17crossbeam_channel6selectNtB5_17SelectedOperationNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i unwind label %bb.y, !noalias !318

bb.y:                                             ; preds = %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !318
  unreachable

.thread245:                                       ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.0..sroa_idx.i, i64 48, i1 false), !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ai

.thread:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.loopexit379

.body89:                                          ; preds = %bb.z, %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i, %bb.ht, %bb.hs, %bb.hr, %bb.hq
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %bb.hs ], [ %.pn81, %bb.hq ], [ %.pn81, %bb.ht ], [ %.pn81, %bb.hr ], [ %i.ga, %bb.z ], [ %i.fo, %bb.k ], [ %.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs65Ktfge4woL_10vfs_notify.exit.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtCs65Ktfge4woL_10vfs_notify7MessageEEB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ce) #20
          to label %.body93 unwind label %bb.db

bb.z:                                             ; preds = %bb.p, %bb.n, %bb.d
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.aa:                                            ; preds = %bb.l, %bb.m, %bb.o, %bb.n, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br i1 %.not, label %.loopexit379, label %bb.ai

.loopexit379:                                     ; preds = %bb.aa, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke void @_RNvXsb_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_8ReceiverNtCs65Ktfge4woL_10vfs_notify7MessageENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %.loopexit379
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel14ReceiverFlavorNtCs65Ktfge4woL_10vfs_notify7MessageEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ce) #20
          to label %.body93 unwind label %bb.ah

bb.ac:                                            ; preds = %.loopexit379
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.gc = load i64, ptr %i.ce, align 8, !range !30, !alias.scope !355, !noundef !5
  switch i64 %i.gc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtCs65Ktfge4woL_10vfs_notify7MessageEEB1v_.exit [
    i64 3, label %bb.ad
    i64 4, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.gd = load ptr, ptr %i.cf, align 8, !alias.scope !364, !nonnull !5, !noundef !5
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !365
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtCs65Ktfge4woL_10vfs_notify7MessageEEB1v_.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors2at7ChannelE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtCs65Ktfge4woL_10vfs_notify7MessageEEB1v_.exit unwind label %bb.hu

bb.af:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.gg = load ptr, ptr %i.cf, align 8, !alias.scope !372, !nonnull !5, !noundef !5
  %i.gh = atomicrmw sub ptr %i.gg, i64 1 release, align 8, !noalias !373
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtCs65Ktfge4woL_10vfs_notify7MessageEEB1v_.exit

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtCs65Ktfge4woL_10vfs_notify7MessageEEB1v_.exit unwind label %bb.hu

bb.ah:                                            ; preds = %bb.ab
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

.body99:                                          ; preds = %.loopexit380, %.loopexit.split-lp381, %.body.i, %bb.gj, %.body178, %bb.fj, %bb.as, %.body187, %bb.go, %.thread373
  %.sroa.057.0 = phi i1 [ false, %.thread373 ], [ true, %.body187 ], [ false, %bb.go ], [ false, %bb.fj ], [ false, %bb.gj ], [ true, %bb.as ], [ true, %.body.i ], [ false, %.body178 ], [ true, %.loopexit380 ], [ %i.gu, %.loopexit.split-lp381 ]
  %.sroa.058.0 = phi i1 [ true, %.thread373 ], [ false, %.body187 ], [ true, %bb.go ], [ true, %bb.fj ], [ true, %bb.gj ], [ false, %bb.as ], [ false, %.body.i ], [ true, %.body178 ], [ %.sroa.058.1.ph, %.loopexit380 ], [ %.sroa.058.1.ph382, %.loopexit.split-lp381 ]
  %.pn81 = phi { ptr, i32 } [ %.pn70.pn.pn.pn254, %.thread373 ], [ %.pn79, %.body187 ], [ %.pn75.ph, %bb.go ], [ %i.mw, %bb.fj ], [ %i.ny, %bb.gj ], [ %i.gz, %bb.as ], [ %eh.lpad-body.i, %.body.i ], [ %i.nw, %.body178 ], [ %lpad.loopexit383, %.loopexit380 ], [ %lpad.loopexit.split-lp384, %.loopexit.split-lp381 ] ; 4 uses
  %i.gk = load i64, ptr %i.cd, align 8, !range !374, !noundef !5
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.hq, label %bb.hr

.loopexit380:                                     ; preds = %bb.ak, %bb.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit, %bb.ap
  %.sroa.058.1.ph = phi i1 [ true, %bb.ak ], [ true, %bb.al ], [ true, %bb.ap ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit ]
  %lpad.loopexit383 = landingpad { ptr, i32 }
          cleanup
  br label %.body99

.loopexit.split-lp381:                            ; preds = %bb.hn, %.thread.i97, %bb.fk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit.i
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          cleanup
  %.sroa.058.1.ph382 = xor i1 %i.gu, true
  br label %.body99

bb.ai:                                            ; preds = %bb.aa, %.thread245
  %.sroa.0.1250 = phi i64 [ 0, %.thread245 ], [ %.sroa.0.0, %bb.aa ]
  %.sroa.9.3249 = phi i64 [ %i.fi, %.thread245 ], [ %.sroa.9.0.a, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store i64 %.sroa.0.1250, ptr %i.cd, align 8
  store i64 %.sroa.9.3249, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, i64 48, i1 false)
  %i.gm = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.gn = icmp ult i64 %i.gm, 2
  br i1 %i.gn, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.go = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3run10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.go, label %bb.ak [
    i8 0, label %bb.ao
    i8 1, label %bb.al
    i8 2, label %bb.al
  ], !prof !375

bb.ak:                                            ; preds = %bb.aj
  %i.gp = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3run10___CALLSITE)
          to label %bb.am unwind label %.loopexit380 ; 2 uses

bb.al:                                            ; preds = %bb.aj, %bb.aj, %bb.am
  %.sroa.07.0 = phi i8 [ %i.gp, %bb.am ], [ %i.go, %bb.aj ], [ %i.go, %bb.aj ]
  %i.gq = load ptr, ptr @_RNvNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3run10___CALLSITE, align 8, !nonnull !5, !align !54, !noundef !5
  %i.gr = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gq, i8 noundef %.sroa.07.0)
          to label %bb.an unwind label %.loopexit380

bb.am:                                            ; preds = %bb.ak
  %i.gs = icmp eq i8 %i.gp, 0
  br i1 %i.gs, label %bb.ao, label %bb.al

bb.an:                                            ; preds = %bb.al
  br i1 %i.gr, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.aj, %bb.ai, %_RNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3runs3_0B6_.exit, %bb.an
  %i.gt = load i64, ptr %i.cd, align 8, !range !374, !noundef !5
  %i.gu = trunc nuw i64 %i.gt to i1               ; 3 uses
  %.sroa.0214.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  br i1 %i.gu, label %bb.aq, label %bb.bc

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.gv = load ptr, ptr @_RNvNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3run10___CALLSITE, align 8, !nonnull !5, !align !54, !noundef !5 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store <2 x ptr> <ptr @16, ptr inttoptr (i64 33 to ptr)>, ptr %i.ca, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr %i.cd, ptr %i.bz, align 8
  store ptr %i.ca, ptr %i.cb, align 8
  store ptr @1, ptr %i.cq, align 8
  store ptr %i.bz, ptr %i.cr, align 8
  store ptr @17, ptr %i.cs, align 8
  store i64 1, ptr %i.cc, align 8
  store ptr %i.cb, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  store ptr %i.gw, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cc)
          to label %_RNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3runs3_0B6_.exit unwind label %.loopexit380

_RNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3runs3_0B6_.exit: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %bb.ao

bb.aq:                                            ; preds = %bb.ao
  %.sroa.6216.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8 ; 4 uses
  %.not.i96 = icmp eq i64 %.sroa.0214.0.copyload, -1
  br i1 %.not.i96, label %bb.bb, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !376
  store i64 %.sroa.0214.0.copyload, ptr %i.ab, align 8, !noalias !380
  store i64 %.sroa.6216.0.copyload, ptr %.sroa.6216.0..sroa_idx217, align 8, !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx219, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx220, align 8, !noalias !380
  %i.gx = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !381
  %i.gy = icmp ult i64 %i.gx, 4
  br i1 %i.gy, label %bb.at, label %.thread.i97

bb.as:                                            ; preds = %bb.ay, %bb.av, %bb.au
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ab) #20
          to label %.body99 unwind label %bb.ba, !noalias !376

bb.at:                                            ; preds = %bb.ar
  %i.ha = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvCs65Ktfge4woL_10vfs_notify16log_notify_error010___CALLSITE, i64 16) monotonic, align 8, !noalias !381 ; 3 uses
  switch i8 %i.ha, label %bb.au [
    i8 0, label %.thread.i97
    i8 1, label %bb.av
    i8 2, label %bb.av
  ], !prof !375

bb.au:                                            ; preds = %bb.at
  %i.hb = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvCs65Ktfge4woL_10vfs_notify16log_notify_error010___CALLSITE)
          to label %bb.aw unwind label %bb.as, !noalias !381 ; 2 uses

bb.av:                                            ; preds = %bb.at, %bb.aw, %bb.at
  %.sroa.06.0.i.i = phi i8 [ %i.hb, %bb.aw ], [ %i.ha, %bb.at ], [ %i.ha, %bb.at ]
  %i.hc = load ptr, ptr @_RNvNCNvCs65Ktfge4woL_10vfs_notify16log_notify_error010___CALLSITE, align 8, !noalias !381, !nonnull !5, !align !54, !noundef !5
  %i.hd = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hc, i8 noundef %.sroa.06.0.i.i)
          to label %bb.ax unwind label %bb.as, !noalias !381

bb.aw:                                            ; preds = %bb.au
  %i.he = icmp eq i8 %i.hb, 0
  br i1 %i.he, label %.thread.i97, label %bb.av

bb.ax:                                            ; preds = %bb.av
  br i1 %i.hd, label %bb.ay, label %.thread.i97

bb.ay:                                            ; preds = %bb.ax
  %i.hf = load ptr, ptr @_RNvNCNvCs65Ktfge4woL_10vfs_notify16log_notify_error010___CALLSITE, align 8, !noalias !381, !nonnull !5, !align !54, !noundef !5 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !381
  store ptr %i.ab, ptr %i.y, align 8, !noalias !381
  store ptr @_RNvXs_NtCs6B6HQbbxj7M_6notify5errorNtB4_5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !381
  store ptr @0, ptr %i.z, align 8, !noalias !381
  store ptr %i.y, ptr %i.fc, align 8, !noalias !381
  store ptr %i.z, ptr %i.aa, align 8, !noalias !381
  store ptr @1, ptr %i.fd, align 8, !noalias !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !381
  store i64 1, ptr %i.x, align 8, !noalias !381
  store ptr %i.aa, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i, align 8, !noalias !381
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i, align 8, !noalias !381
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !381
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.az unwind label %bb.as, !noalias !376

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !381
  br label %.thread.i97

bb.ba:                                            ; preds = %bb.as
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !376
  unreachable

.thread.i97:                                      ; preds = %bb.az, %bb.ax, %bb.aw, %bb.at, %bb.ar
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ab)
          to label %.noexc101 unwind label %.loopexit.split-lp381

.noexc101:                                        ; preds = %.thread.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !376
  br label %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_errorNtNtCskihuepUL9Ty_12notify_types5event5EventEB2_.exit.thread

bb.bb:                                            ; preds = %bb.aq
  %i.hi = icmp eq i64 %.sroa.6216.0.copyload, -1
  br i1 %i.hi, label %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_errorNtNtCskihuepUL9Ty_12notify_types5event5EventEB2_.exit.thread, label %bb.gp

bb.bc:                                            ; preds = %bb.ao
  %i.hj = icmp eq i64 %.sroa.0214.0.copyload, -1
  br i1 %i.hj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.hk = invoke { ptr, i64 } @_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf7as_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.gb unwind label %bb.ga     ; 2 uses

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 %.sroa.0214.0.copyload, ptr %i.by, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs6B6HQbbxj7M_6notify7inotify14INotifyWatcherINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtB12_5error5ErrorEEEEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cg)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hl = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.cg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.0, i64 16, i1 false)
  store i64 %.sroa.619.sroa.5.0.ph, ptr %i.ci, align 8
  store ptr %.sroa.619.sroa.6.0.ph, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx20.sroa_idx, align 8
  br label %.thread251

bb.bg:                                            ; preds = %bb.be
  store i64 -1, ptr %i.cg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.0, i64 16, i1 false)
  store i64 %.sroa.619.sroa.5.0.ph, ptr %i.ci, align 8
  store ptr %.sroa.619.sroa.6.0.ph, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx20.sroa_idx, align 8
  %i.hm = load i64, ptr %i.db, align 8, !noundef !5 ; 2 uses
  %i.hn = icmp ult i64 %i.hm, 1152921504606846976
  call void @llvm.assume(i1 %i.hn)
  %i.ho = icmp eq i64 %i.hm, 0
  br i1 %i.ho, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  invoke void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bw)
          to label %bb.bz unwind label %bb.by

bb.bi:                                            ; preds = %bb.da, %bb.bg
  %.sroa.619.sroa.5.1 = phi i64 [ %.sroa.619.sroa.5.0.ph, %bb.bg ], [ %.sroa.619.sroa.5.2, %bb.da ]
  %.sroa.619.sroa.6.1 = phi ptr [ %.sroa.619.sroa.6.0.ph, %bb.bg ], [ %.sroa.619.sroa.6.2, %bb.da ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.hp = load i32, ptr %i.dl, align 8, !noundef !5
  store i32 %i.hp, ptr %i.bt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.hq = load i64, ptr %i.dm, align 8, !noundef !5 ; 2 uses
  store i64 %i.hq, ptr %i.bs, align 8
  %i.hr = icmp ult i64 %i.hq, 128102389400760776
  call void @llvm.assume(i1 %i.hr)
  %i.hs = load ptr, ptr %i.do, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ht = load i64, ptr %i.dp, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.dp, align 8
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit, label %.lr.ph1473

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit5.i
  %i.hv = icmp eq i64 %i.hx, %i.ht
  br i1 %i.hv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit, label %.lr.ph1473

.lr.ph1473:                                       ; preds = %bb.bi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit
  %.sroa.0.0.i1471 = phi i64 [ %i.hx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit ], [ 0, %bb.bi ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [72 x i8], ptr %i.hs, i64 %.sroa.0.0.i1471 ; 7 uses
  %i.hx = add nuw nsw i64 %.sroa.0.0.i1471, 1     ; 4 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.hw)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %.lr.ph1473
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.hw)
          to label %.body.i194 unwind label %bb.bl

bb.bk:                                            ; preds = %.lr.ph1473
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.hw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs65Ktfge4woL_10vfs_notify.exit.i unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body.i194

.body.i194:                                       ; preds = %bb.bm, %bb.bj
  %eh.lpad-body.i195 = phi { ptr, i32 } [ %i.ia, %bb.bm ], [ %i.hy, %bb.bj ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ib) #20
          to label %.body2.i unwind label %bb.bt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs65Ktfge4woL_10vfs_notify.exit.i: ; preds = %bb.bk
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs65Ktfge4woL_10vfs_notify.exit.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %.body2.i unwind label %bb.bp

bb.bo:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs65Ktfge4woL_10vfs_notify.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit.i unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

.body2.i:                                         ; preds = %bb.bq, %bb.bn, %.body.i194
  %.pn.i196 = phi { ptr, i32 } [ %eh.lpad-body.i195, %.body.i194 ], [ %i.ig, %bb.bq ], [ %i.id, %bb.bn ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.if) #20
          to label %.body199 unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit.i: ; preds = %bb.bo
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ih)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit5.i unwind label %bb.br

bb.br:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ih)
          to label %.body199 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit5.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ih)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit unwind label %bb.bv

bb.bt:                                            ; preds = %.body2.i, %.body.i194
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bu:                                            ; preds = %.lr.ph1475
  %i.il = add i64 %.sroa.0.1.i1474, 1             ; 2 uses
  %i.im = icmp eq i64 %i.il, %i.ht
  br i1 %i.im, label %.thread251, label %.lr.ph1475

bb.bv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit5.i
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body199

.body199:                                         ; preds = %.body2.i, %bb.br, %bb.bv
  %eh.lpad-body200 = phi { ptr, i32 } [ %i.in, %bb.bv ], [ %i.ii, %bb.br ], [ %.pn.i196, %.body2.i ] ; 2 uses
  %i.io = icmp eq i64 %i.hx, %i.ht
  br i1 %i.io, label %.thread251, label %.lr.ph1475

.lr.ph1475:                                       ; preds = %.body199, %bb.bu
  %.sroa.0.1.i1474 = phi i64 [ %i.il, %bb.bu ], [ %i.hx, %.body199 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [72 x i8], ptr %i.hs, i64 %.sroa.0.1.i1474
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ip) #20
          to label %bb.bu unwind label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1475
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bx:                                            ; preds = %bb.fy
  br i1 %.sroa.056.1283, label %.thread251, label %.thread373

bb.by:                                            ; preds = %bb.dd, %bb.di, %bb.dc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit, %bb.bh
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.thread251

bb.bz:                                            ; preds = %bb.bh
  %i.is = load i64, ptr %i.bw, align 8, !range !384, !noundef !5 ; 2 uses
  %i.it = load ptr, ptr %i.dc, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.iu = load i64, ptr %i.dd, align 8, !range !30, !noundef !5 ; 3 uses
  %i.iv = load ptr, ptr %i.de, align 8            ; 3 uses
  store i64 %i.iu, ptr %i.bx, align 8
  store ptr %i.iv, ptr %i.df, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %i.is, ptr %i.al, align 8
  store ptr %i.it, ptr %i.dg, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.iw = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 49) 16, i64 noundef 8) #21 ; 4 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.ca, label %bb.ce, !prof !321

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #23
          to label %.noexc104 unwind label %bb.cb

.noexc104:                                        ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.ca
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEENtNtNtB13_3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %.thread263 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

.thread270:                                       ; preds = %bb.ce, %.thread.i107
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread263

bb.cd:                                            ; preds = %bb.cv, %bb.cx
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread251

bb.ce:                                            ; preds = %bb.bz
  store i64 %i.is, ptr %i.iw, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr %i.it, ptr %i.ja, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvMs_NtCs6B6HQbbxj7M_6notify7inotifyNtB4_14INotifyWatcher18from_event_handler(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bv, ptr noundef nonnull %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, i1 noundef zeroext true)
          to label %bb.cf unwind label %.thread270

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.jb = load i64, ptr %i.bv, align 8, !range !50, !alias.scope !385, !noalias !388, !noundef !5
  %.not.i106 = icmp eq i64 %i.jb, -1
  br i1 %.not.i106, label %bb.cq, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bv, i64 56, i1 false), !noalias !388
  %i.jc = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !391
  %i.jd = icmp ult i64 %i.jc, 4
  br i1 %i.jd, label %bb.ci, label %.thread.i107

bb.ch:                                            ; preds = %bb.cn, %bb.ck, %bb.cj
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w) #20
          to label %.thread263 unwind label %bb.cp, !noalias !390

bb.ci:                                            ; preds = %bb.cg
  %i.jf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvCs65Ktfge4woL_10vfs_notify16log_notify_error010___CALLSITE, i64 16) monotonic, align 8, !noalias !391 ; 3 uses
  switch i8 %i.jf, label %bb.cj [
    i8 0, label %.thread.i107
    i8 1, label %bb.ck
    i8 2, label %bb.ck
  ], !prof !375

bb.cj:                                            ; preds = %bb.ci
  %i.jg = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvCs65Ktfge4woL_10vfs_notify16log_notify_error010___CALLSITE)
          to label %bb.cl unwind label %bb.ch, !noalias !391 ; 2 uses

bb.ck:                                            ; preds = %bb.ci, %bb.cl, %bb.ci
  %.sroa.06.0.i.i109 = phi i8 [ %i.jg, %bb.cl ], [ %i.jf, %bb.ci ], [ %i.jf, %bb.ci ]
  %i.jh = load ptr, ptr @_RNvNCNvCs65Ktfge4woL_10vfs_notify16log_notify_error010___CALLSITE, align 8, !noalias !391, !nonnull !5, !align !54, !noundef !5
  %i.ji = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jh, i8 noundef %.sroa.06.0.i.i109)
          to label %bb.cm unwind label %bb.ch, !noalias !391

bb.cl:                                            ; preds = %bb.cj
  %i.jj = icmp eq i8 %i.jg, 0
  br i1 %i.jj, label %.thread.i107, label %bb.ck

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.ji, label %bb.cn, label %.thread.i107

bb.cn:                                            ; preds = %bb.cm
  %i.jk = load ptr, ptr @_RNvNCNvCs65Ktfge4woL_10vfs_notify16log_notify_error010___CALLSITE, align 8, !noalias !391, !nonnull !5, !align !54, !noundef !5 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !391
  store ptr %i.w, ptr %i.t, align 8, !noalias !391
  store ptr @_RNvXs_NtCs6B6HQbbxj7M_6notify5errorNtB4_5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i.i110, align 8, !noalias !391
  store ptr @0, ptr %i.u, align 8, !noalias !391
  store ptr %i.t, ptr %i.dh, align 8, !noalias !391
  store ptr %i.u, ptr %i.v, align 8, !noalias !391
  store ptr @1, ptr %i.di, align 8, !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !391
  store i64 1, ptr %i.s, align 8, !noalias !391
  store ptr %i.v, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i111, align 8, !noalias !391
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i112, align 8, !noalias !391
  store ptr %i.jl, ptr %.sroa.4.0..sroa_idx.i.i113, align 8, !noalias !391
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %bb.co unwind label %bb.ch, !noalias !390

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !391
  br label %.thread.i107

bb.cp:                                            ; preds = %bb.ch
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !390
  unreachable

.thread.i107:                                     ; preds = %bb.co, %bb.cm, %bb.cl, %bb.ci, %bb.cg
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %.noexc120 unwind label %.thread270

.noexc120:                                        ; preds = %.thread.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !390
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cf
  %.sroa.04.0.copyload.i114 = load i64, ptr %i.dj, align 8, !alias.scope !385, !noalias !388 ; 2 uses
  %i.jn = icmp eq i64 %.sroa.04.0.copyload.i114, -1
  br i1 %i.jn, label %bb.cr, label %bb.cz

bb.cr:                                            ; preds = %bb.cq, %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i64 %i.iu, ptr %i.bu, align 8
  store ptr %i.iv, ptr %i.dk, align 8
  invoke void @_RNvXsb_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_8ReceiverINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEENtNtNtB15_3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %bb.ct unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel14ReceiverFlavorINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bu) #20
          to label %.thread251 unwind label %bb.cy

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.jp = load i64, ptr %i.bu, align 8, !range !30, !alias.scope !397, !noundef !5
  switch i64 %i.jp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit [
    i64 3, label %bb.cu
    i64 4, label %bb.cw
  ]

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.jq = load ptr, ptr %i.dk, align 8, !alias.scope !408, !nonnull !5, !noundef !5
  %i.jr = atomicrmw sub ptr %i.jq, i64 1 release, align 8, !noalias !409
  %i.js = icmp eq i64 %i.jr, 1
  br i1 %i.js, label %bb.cv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors2at7ChannelE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dk) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit unwind label %bb.cd

bb.cw:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.jt = load ptr, ptr %i.dk, align 8, !alias.scope !416, !nonnull !5, !noundef !5
  %i.ju = atomicrmw sub ptr %i.jt, i64 1 release, align 8, !noalias !417
  %i.jv = icmp eq i64 %i.ju, 1
  br i1 %i.jv, label %bb.cx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit

bb.cx:                                            ; preds = %bb.cw
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dk) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit unwind label %bb.cd

bb.cy:                                            ; preds = %bb.cs
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit: ; preds = %bb.cw, %bb.cu, %bb.ct, %bb.cv, %bb.cx, %bb.cz
  %.sroa.619.sroa.5.2 = phi i64 [ %i.iu, %bb.cz ], [ %.sroa.619.sroa.5.0.ph, %bb.cx ], [ %.sroa.619.sroa.5.0.ph, %bb.cv ], [ %.sroa.619.sroa.5.0.ph, %bb.ct ], [ %.sroa.619.sroa.5.0.ph, %bb.cu ], [ %.sroa.619.sroa.5.0.ph, %bb.cw ] ; 3 uses
  %.sroa.619.sroa.6.2 = phi ptr [ %i.iv, %bb.cz ], [ %.sroa.619.sroa.6.0.ph, %bb.cx ], [ %.sroa.619.sroa.6.0.ph, %bb.cv ], [ %.sroa.619.sroa.6.0.ph, %bb.ct ], [ %.sroa.619.sroa.6.0.ph, %bb.cu ], [ %.sroa.619.sroa.6.0.ph, %bb.cw ] ; 3 uses
  %.sroa.014.0 = phi i64 [ %.sroa.04.0.copyload.i114, %bb.cz ], [ -1, %bb.cx ], [ -1, %bb.cv ], [ -1, %bb.ct ], [ -1, %bb.cu ], [ -1, %bb.cw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs6B6HQbbxj7M_6notify7inotify14INotifyWatcherINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtB12_5error5ErrorEEEEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cg)
          to label %bb.da unwind label %.thread256

bb.cz:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i115, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit

.thread256:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit
  %i.jx = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.014.0, ptr %i.cg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.0, i64 16, i1 false)
  store i64 %.sroa.619.sroa.5.2, ptr %i.ci, align 8
  store ptr %.sroa.619.sroa.6.2, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx20.sroa_idx, align 8
  br label %.thread251

bb.da:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBI_11NotifyActor3runs_0EBI_.exit
  store i64 %.sroa.014.0, ptr %i.cg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.0, i64 16, i1 false)
  store i64 %.sroa.619.sroa.5.2, ptr %i.ci, align 8
  store ptr %.sroa.619.sroa.6.2, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx20.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.bi

.thread263:                                       ; preds = %bb.cb, %bb.ch, %.thread270
  %eh.lpad-body262 = phi { ptr, i32 } [ %i.je, %bb.ch ], [ %lpad.thr_comm, %.thread270 ], [ %i.iy, %bb.cb ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bx) #20
          to label %.thread251 unwind label %bb.db

bb.db:                                            ; preds = %bb.fz, %bb.fx, %.body187, %.body93, %bb.ht, %bb.hs, %bb.hp, %bb.go, %bb.gn, %.thread251, %.thread373, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit169, %bb.fw, %.body133, %.body163, %.body165, %.thread263, %.body89
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit, %bb.bi
  invoke void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs9R0CJ7nmiec_5paths10AbsPathBufuEE5clearCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dq)
          to label %bb.dc unwind label %bb.by

bb.dc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify.exit
  invoke void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs9R0CJ7nmiec_5paths10AbsPathBufuEE5clearCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %bb.dd unwind label %bb.by

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.jz = load i64, ptr %i.bs, align 8, !noundef !5
  store i64 %i.jz, ptr %i.dr, align 8
  store i64 0, ptr %i.br, align 8
  store i64 -1, ptr %i.ds, align 8
  %i.ka = load i32, ptr %i.bt, align 4, !noundef !5
  store i32 %i.ka, ptr %i.dt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !418
  invoke void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs4sl5YdnrCxp_3vfs6loader7MessageE4sendCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.br)
          to label %.noexc127 unwind label %bb.by

.noexc127:                                        ; preds = %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.kb = load i64, ptr %i.r, align 8, !range !426, !alias.scope !423, !noalias !427, !noundef !5
  %.not.i.i126 = icmp eq i64 %i.kb, -1
  br i1 %.not.i.i126, label %bb.di, label %bb.de, !prof !429

bb.de:                                            ; preds = %.noexc127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.r, i64 56, i1 false), !noalias !427
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
          to label %bb.dg unwind label %bb.df, !noalias !431

bb.df:                                            ; preds = %bb.de
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader7MessageEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q) #20
          to label %.thread251 unwind label %bb.dh, !noalias !431

bb.dg:                                            ; preds = %bb.de
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !431
  unreachable

bb.di:                                            ; preds = %.noexc127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  invoke void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedNtNtCs4sl5YdnrCxp_3vfs6loader5EntryECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bo)
          to label %bb.dj unwind label %bb.by

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.ke = load i64, ptr %i.bo, align 8, !range !384, !noundef !5
  %i.kf = load ptr, ptr %i.du, align 8, !noundef !5
  store i64 %i.ke, ptr %i.bq, align 8
  store ptr %i.kf, ptr %i.dv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.kg = load i64, ptr %i.dw, align 8, !range !30, !noundef !5
  %i.kh = load ptr, ptr %i.dx, align 8
  store i64 %i.kg, ptr %i.bp, align 8
  store ptr %i.kh, ptr %i.dy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel9unboundedNtNtCscAsMj0W7j8b_3std4path7PathBufECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bl)
          to label %bb.dk unwind label %.thread275

.thread275:                                       ; preds = %bb.dj
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit169

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.kj = load i64, ptr %i.bl, align 8, !range !384, !noundef !5
  %i.kk = load ptr, ptr %i.dz, align 8, !noundef !5
  store i64 %i.kj, ptr %i.bn, align 8
  store ptr %i.kk, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.kl = load i64, ptr %i.eb, align 8, !range !30, !noundef !5 ; 2 uses
  %i.km = load ptr, ptr %i.ec, align 8            ; 2 uses
  store i64 %i.kl, ptr %i.bm, align 8
  store ptr %i.km, ptr %i.ed, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i64 0, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr %i.da, ptr %i.bi, align 8
  store ptr %i.bq, ptr %i.ee, align 8
  store ptr %i.bn, ptr %i.ef, align 8
  store ptr %0, ptr %i.eg, align 8
  store ptr %i.bs, ptr %i.eh, align 8
  store ptr %i.bk, ptr %i.ei, align 8
  store ptr %i.bt, ptr %i.ej, align 8
  invoke void @_RINvYINtNtNtCs1Deu0X9zrS8_5rayon4iter9enumerate9EnumerateINtNtBa_3vec8IntoIterNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEENtB8_16ParallelIterator8for_eachNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB2s_11NotifyActor3runs0_0EB2s_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.bi)
          to label %bb.dl unwind label %bb.fw

.thread319.thread:                                ; preds = %bb.ep, %bb.er, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit
  %.sroa.054.2.ph.ph = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit ], [ true, %bb.er ], [ true, %bb.ep ]
  %lpad.thr_comm363 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit169

.thread319:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8IntoIterNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify.exit, %bb.fc, %bb.fa
  %lpad.thr_comm.split-lp364 = landingpad { ptr, i32 }
          cleanup
  br label %.thread373

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.kn = load i64, ptr %i.bn, align 8, !range !384, !noundef !5
  %i.ko = load ptr, ptr %i.ea, align 8, !noundef !5
  store i64 %i.kn, ptr %i.bh, align 8
  store ptr %i.ko, ptr %i.ek, align 8
  invoke void @_RNvXs3_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit unwind label %bb.fw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i64 %i.kl, ptr %i.bg, align 8
  store ptr %i.km, ptr %i.el, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs65Ktfge4woL_10vfs_notify.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvXsm_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %bb.do unwind label %bb.dn

.body165:                                         ; preds = %bb.fu, %bb.dn, %.body133
  %.pn70 = phi { ptr, i32 } [ %eh.lpad-body134, %.body133 ], [ %i.kp, %bb.dn ], [ %i.nh, %bb.fu ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bg) #20
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit169 unwind label %bb.db

bb.dn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs65Ktfge4woL_10vfs_notify.exit.i, %bb.dm
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.do:                                            ; preds = %bb.dm
  %i.kq = load i64, ptr %i.bf, align 8, !range !4, !noundef !5
  %.not67 = icmp eq i64 %i.kq, -1
  br i1 %.not67, label %bb.el, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  %i.kr = load ptr, ptr %i.em, align 8, !nonnull !5, !noundef !5
  %i.ks = load i64, ptr %i.en, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.kt = load i64, ptr %i.cg, align 8, !range !6, !alias.scope !432, !noalias !435, !noundef !5
  %.not.i131 = icmp eq i64 %i.kt, -1
  br i1 %.not.i131, label %_RNvMs_Cs65Ktfge4woL_10vfs_notifyNtB4_11NotifyActor5watch.exit, label %bb.dq

end_hunk_0
begin_hunk_1_@_RNvMs_Cs65Ktfge4woL_10vfs_notifyNtB4_11NotifyActor3run:bb.a
          cleanup
  br label %.body133

.body133:                                         ; preds = %bb.ft, %bb.ei, %.body.i203, %bb.ds
  %eh.lpad-body134 = phi { ptr, i32 } [ %i.kx, %bb.ds ], [ %i.ng, %bb.ft ], [ %i.lq, %bb.ei ], [ %eh.lpad-body.i204, %.body.i203 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.be) #20
          to label %.body165 unwind label %bb.db

_RNvMs_Cs65Ktfge4woL_10vfs_notifyNtB4_11NotifyActor5watch.exit: ; preds = %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_erroruEB2_.exit.i, %bb.dp
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs65Ktfge4woL_10vfs_notify.exit.i unwind label %bb.fu

bb.fu:                                            ; preds = %_RNvMs_Cs65Ktfge4woL_10vfs_notifyNtB4_11NotifyActor5watch.exit
  %i.nh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body165 unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs65Ktfge4woL_10vfs_notify.exit.i: ; preds = %_RNvMs_Cs65Ktfge4woL_10vfs_notifyNtB4_11NotifyActor5watch.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs65Ktfge4woL_10vfs_notify.exit unwind label %bb.dn

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs65Ktfge4woL_10vfs_notify.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs65Ktfge4woL_10vfs_notify.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.dm

.thread297:                                       ; preds = %bb.fw
  br i1 %.sroa.052.1.ph, label %bb.fx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit169

bb.fw:                                            ; preds = %bb.dl, %bb.dk
  %.sroa.052.1.ph = phi i1 [ true, %bb.dk ], [ false, %bb.dl ]
  %lpad.thr_comm.split-lp318 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bm) #20
          to label %.thread297 unwind label %bb.db

bb.fx:                                            ; preds = %.thread297
  invoke void @_RNvXs3_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit169 unwind label %bb.db

bb.fy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit169
  br i1 %.sroa.054.0281, label %bb.fz, label %bb.bx

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit169: ; preds = %.thread297, %bb.em, %.body165, %.thread319.thread, %bb.fx, %.thread275
  %.pn70.pn.pn285 = phi { ptr, i32 } [ %i.ki, %.thread275 ], [ %lpad.thr_comm363, %.thread319.thread ], [ %lpad.thr_comm.split-lp318, %bb.fx ], [ %i.lt, %bb.em ], [ %.pn70, %.body165 ], [ %lpad.thr_comm.split-lp318, %.thread297 ] ; 4 uses
  %.sroa.056.1283 = phi i1 [ true, %.thread275 ], [ false, %.thread319.thread ], [ false, %bb.fx ], [ false, %bb.em ], [ false, %.body165 ], [ false, %.thread297 ] ; 2 uses
  %.sroa.054.0281 = phi i1 [ true, %.thread275 ], [ %.sroa.054.2.ph.ph, %.thread319.thread ], [ true, %bb.fx ], [ true, %bb.em ], [ true, %.body165 ], [ true, %.thread297 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bp) #20
          to label %bb.fy unwind label %bb.db

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvXs3_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs4sl5YdnrCxp_3vfs6loader5EntryENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify.exit171 unwind label %bb.db

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify.exit171: ; preds = %bb.fz
  br i1 %.sroa.056.1283, label %.thread251, label %.thread373

.thread373:                                       ; preds = %.thread319, %.body163, %bb.ff, %bb.ex, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify.exit171, %.thread251, %bb.bx
  %.pn70.pn.pn.pn254 = phi { ptr, i32 } [ %.pn70.pn.pn.pn255, %.thread251 ], [ %.pn70.pn.pn285, %bb.bx ], [ %.pn70.pn.pn285, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify.exit171 ], [ %eh.lpad-body164, %.body163 ], [ %lpad.thr_comm.split-lp364, %.thread319 ], [ %i.mi, %bb.ex ], [ %i.mu, %bb.ff ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.da) #20
          to label %.body99 unwind label %bb.db

.thread251:                                       ; preds = %bb.bu, %.body199, %bb.df, %bb.cs, %bb.cd, %.thread256, %bb.by, %bb.bf, %.thread263, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify.exit171, %bb.bx
  %.pn70.pn.pn.pn255 = phi { ptr, i32 } [ %.pn70.pn.pn285, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify.exit171 ], [ %.pn70.pn.pn285, %bb.bx ], [ %i.hl, %bb.bf ], [ %lpad.thr_comm.split-lp, %bb.cd ], [ %eh.lpad-body262, %.thread263 ], [ %i.kc, %bb.df ], [ %i.ir, %bb.by ], [ %i.jo, %bb.cs ], [ %i.jx, %.thread256 ], [ %eh.lpad-body200, %.body199 ], [ %eh.lpad-body200, %bb.bu ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #20
          to label %.thread373 unwind label %bb.db

bb.ga:                                            ; preds = %bb.gf, %bb.gb, %bb.bd
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gb:                                            ; preds = %bb.bd
  %i.nk = extractvalue { ptr, i64 } %i.hk, 0
  %i.nl = extractvalue { ptr, i64 } %i.hk, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !529
  invoke void @_RINvNtCscAsMj0W7j8b_3std2fs4readRNtCs9R0CJ7nmiec_5paths7AbsPathECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nk, i64 noundef %i.nl)
          to label %.noexc172 unwind label %bb.ga

.noexc172:                                        ; preds = %bb.gb
  %i.nm = load i64, ptr %i.h, align 8, !range !4, !noalias !529, !noundef !5
  %i.nn = icmp eq i64 %i.nm, -1
  br i1 %i.nn, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %.noexc172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !531
  br label %bb.gg

bb.gd:                                            ; preds = %.noexc172
  store i64 -1, ptr %i.aw, align 8, !alias.scope !526, !noalias !531
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %.val.i.i.i = load ptr, ptr %i.ey, align 8, !alias.scope !538, !noalias !529, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !539
  %i.no = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.np = and i64 %i.no, 3
  switch i64 %i.np, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i
    i64 3, label %bb.ge
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i
    i64 1, label %bb.gf
  ], !prof !268

bb.ge:                                            ; preds = %bb.gd
  %i.nq = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.nr = and i64 %i.no, 1095216660480
  %i.ns = icmp ne i64 %i.nr, 1095216660480
  call void @llvm.assume(i1 %i.nq)
  call void @llvm.assume(i1 %i.ns)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i

bb.gf:                                            ; preds = %bb.gd
  %i.nt = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nt) ]
  store ptr %i.nt, ptr %i.ez, align 8, !alias.scope !540, !noalias !539
  store i8 3, ptr %i.g, align 8, !alias.scope !540, !noalias !539
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i unwind label %bb.ga

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i: ; preds = %bb.gf, %bb.ge, %bb.gd, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !539
  br label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !529
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.nu = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 49) 48, i64 noundef 8) #21 ; 3 uses
  %i.nv = icmp eq ptr %i.nu, null
  br i1 %i.nv, label %bb.gh, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit175, !prof !321

bb.gh:                                            ; preds = %bb.gg
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #23
          to label %.noexc174 unwind label %bb.gn

.noexc174:                                        ; preds = %bb.gh
  unreachable

.body178:                                         ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit175
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body99

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit175: ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nu, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 1, ptr %i.fb, align 8
  store ptr %i.nu, ptr %.sroa.434.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.535.0..sroa_idx, align 8
  store i64 4, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !543
  invoke void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs4sl5YdnrCxp_3vfs6loader7MessageE4sendCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.au)
          to label %.noexc177 unwind label %.body178

.noexc177:                                        ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit175
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.nx = load i64, ptr %i.f, align 8, !range !426, !alias.scope !548, !noalias !551, !noundef !5
  %.not.i.i176 = icmp eq i64 %i.nx, -1
  br i1 %.not.i.i176, label %bb.gm, label %bb.gi, !prof !429

bb.gi:                                            ; preds = %.noexc177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !551
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #23
          to label %bb.gk unwind label %bb.gj, !noalias !554

bb.gj:                                            ; preds = %bb.gi
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader7MessageEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e) #20
          to label %.body99 unwind label %bb.gl, !noalias !554

bb.gk:                                            ; preds = %bb.gi
  unreachable

bb.gl:                                            ; preds = %bb.gj
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !554
  unreachable

bb.gm:                                            ; preds = %.noexc177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_errorNtNtCskihuepUL9Ty_12notify_types5event5EventEB2_.exit.thread

_RINvCs65Ktfge4woL_10vfs_notify16log_notify_errorNtNtCskihuepUL9Ty_12notify_types5event5EventEB2_.exit.thread: ; preds = %bb.bb, %bb.ho, %.noexc101, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCskihuepUL9Ty_12notify_types5event5EventECs65Ktfge4woL_10vfs_notify.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs65Ktfge4woL_10vfs_notify.exit, %bb.gm
  %.sroa.619.sroa.5.4 = phi i64 [ %.sroa.619.sroa.5.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs65Ktfge4woL_10vfs_notify.exit ], [ %.sroa.619.sroa.5.0.ph, %bb.gm ], [ %.sroa.619.sroa.5.0.ph, %bb.ho ], [ %.sroa.619.sroa.5.0.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCskihuepUL9Ty_12notify_types5event5EventECs65Ktfge4woL_10vfs_notify.exit ], [ %.sroa.619.sroa.5.0.ph, %.noexc101 ], [ %.sroa.619.sroa.5.0.ph, %bb.bb ]
  %.sroa.619.sroa.6.4 = phi ptr [ %.sroa.619.sroa.6.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs65Ktfge4woL_10vfs_notify.exit ], [ %.sroa.619.sroa.6.0.ph, %bb.gm ], [ %.sroa.619.sroa.6.0.ph, %bb.ho ], [ %.sroa.619.sroa.6.0.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCskihuepUL9Ty_12notify_types5event5EventECs65Ktfge4woL_10vfs_notify.exit ], [ %.sroa.619.sroa.6.0.ph, %.noexc101 ], [ %.sroa.619.sroa.6.0.ph, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %.outer

bb.gn:                                            ; preds = %bb.gh
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #20
          to label %bb.go unwind label %bb.db

bb.go:                                            ; preds = %bb.gn, %bb.ga
  %.pn75.ph = phi { ptr, i32 } [ %i.nj, %bb.ga ], [ %i.oa, %bb.gn ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #20
          to label %.body99 unwind label %bb.db

bb.gp:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7223.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  store i64 %.sroa.6216.0.copyload, ptr %i.at, align 8
  %i.ob = load i8, ptr %i.ct, align 8, !range !555, !noundef !5
  switch i8 %i.ob, label %bb.gq [
    i8 1, label %bb.gw
    i8 2, label %bb.gx
    i8 3, label %bb.gx
    i8 4, label %bb.gx
  ]

bb.gq:                                            ; preds = %bb.gw, %bb.gp
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %bb.gs unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.oc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %.body.i unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit.i unwind label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %i.od = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.gu:                                            ; preds = %bb.gs
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.gu, %bb.gr
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.oe, %bb.gu ], [ %i.oc, %bb.gr ]
  %.val1.i = load ptr, ptr %i.cz, align 8, !alias.scope !556, !align !54, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCskihuepUL9Ty_12notify_types5event15EventAttributesECs65Ktfge4woL_10vfs_notify(ptr %.val1.i) #20
          to label %.body99 unwind label %bb.gv

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCscAsMj0W7j8b_3std4path7PathBufEECs65Ktfge4woL_10vfs_notify.exit.i: ; preds = %bb.gs
  %.val.i = load ptr, ptr %i.cz, align 8, !alias.scope !556, !align !54, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCskihuepUL9Ty_12notify_types5event15EventAttributesECs65Ktfge4woL_10vfs_notify(ptr %.val.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCskihuepUL9Ty_12notify_types5event5EventECs65Ktfge4woL_10vfs_notify.exit unwind label %.loopexit.split-lp381

bb.gv:                                            ; preds = %.body.i
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.gw:                                            ; preds = %bb.gp
  %i.og = load i8, ptr %i.cu, align 1, !range !559, !noundef !5
  %i.oh = icmp eq i8 %i.og, 2
  br i1 %i.oh, label %bb.gx, label %bb.gq

bb.gx:                                            ; preds = %bb.gw, %bb.gp, %bb.gp, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.oi = load ptr, ptr %.sroa.7223.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.oj = load i64, ptr %i.cv, align 8, !noundef !5 ; 2 uses
  %i.ok = icmp ult i64 %i.oj, 384307168202282326
  call void @llvm.assume(i1 %i.ok)
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %i.oj
  store ptr %i.oi, ptr %i.ar, align 8
  store ptr %i.oi, ptr %.sroa.437.0..sroa_idx, align 8
  store i64 %.sroa.6216.0.copyload, ptr %.sroa.538.0..sroa_idx, align 8
  store ptr %i.ol, ptr %.sroa.639.0..sroa_idx, align 8
  invoke void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB3g_11NotifyActor3runs1_0ENtCs9R0CJ7nmiec_5paths10AbsPathBufEB3g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ar)
          to label %bb.gz unwind label %bb.gy

.body187:                                         ; preds = %bb.hk, %bb.he, %.body191.thread343, %bb.gy, %bb.hp
  %.pn79 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp342, %bb.hp ], [ %lpad.thr_comm341, %.body191.thread343 ], [ %i.om, %bb.gy ], [ %i.oz, %bb.he ], [ %i.pc, %bb.hk ]
  %.val86 = load ptr, ptr %i.cz, align 8, !align !54, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCskihuepUL9Ty_12notify_types5event15EventAttributesECs65Ktfge4woL_10vfs_notify(ptr %.val86) #20
          to label %.body99 unwind label %bb.db

bb.gy:                                            ; preds = %bb.hf, %bb.gx
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.on = load ptr, ptr %i.cw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.oo = load i64, ptr %i.cx, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.oo, 24
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 %.idx
  %.not78848 = icmp eq i64 %i.oo, 0
  br i1 %.not78848, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.gz, %bb.hb
  %.sroa.040.0850 = phi i1 [ %.sroa.040.0., %bb.hb ], [ false, %bb.gz ]
  %.sroa.041.0849 = phi ptr [ %i.oq, %bb.hb ], [ %i.on, %bb.gz ] ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.041.0849, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.041.0849)
          to label %bb.ha unwind label %bb.hp

._crit_edge:                                      ; preds = %bb.hb, %bb.gz
  %.sroa.040.0.lcssa = phi i1 [ false, %bb.gz ], [ %.sroa.040.0., %bb.hb ]
  %i.or = load i8, ptr %i.ct, align 8, !range !555, !noundef !5
  %i.os = icmp ne i8 %i.or, 1
  %or.cond = select i1 %i.os, i1 true, i1 %.sroa.040.0.lcssa
  br i1 %or.cond, label %bb.hc, label %bb.hd

.body191.thread343:                               ; preds = %bb.hc, %bb.hi
  %lpad.thr_comm341 = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.ha:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.ot = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs9R0CJ7nmiec_5paths10AbsPathBufuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.hb unwind label %bb.hp

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %not. = xor i1 %i.ot, true
  %.sroa.040.0. = select i1 %not., i1 true, i1 %.sroa.040.0850 ; 2 uses
  %.not78 = icmp eq ptr %i.oq, %i.op
  br i1 %.not78, label %._crit_edge, label %.lr.ph

bb.hc:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ou = load ptr, ptr %i.cw, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ov = load i64, ptr %i.as, align 8, !range !525, !noundef !5
  %i.ow = load i64, ptr %i.cx, align 8, !noundef !5 ; 2 uses
  %i.ox = icmp ult i64 %i.ow, 384307168202282326
  call void @llvm.assume(i1 %i.ox)
  %i.oy = getelementptr inbounds nuw [24 x i8], ptr %i.ou, i64 %i.ow
  store ptr %i.ou, ptr %i.ao, align 8
  store ptr %i.ou, ptr %.sroa.445.0..sroa_idx, align 8
  store i64 %i.ov, ptr %.sroa.546.0..sroa_idx, align 8
  store ptr %i.oy, ptr %.sroa.647.0..sroa_idx, align 8
  store ptr %0, ptr %i.fe, align 8
  store ptr %i.ct, ptr %i.ff, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionIBS_hEEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1F_4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterB12_ENCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB4f_11NotifyActor3runs2_0EE9from_iterB4f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ao)
          to label %bb.hi unwind label %.body191.thread343

bb.hd:                                            ; preds = %._crit_edge
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.hf unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.oz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body187 unwind label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit unwind label %bb.gy

bb.hg:                                            ; preds = %bb.he
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit: ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.val85 = load ptr, ptr %i.cz, align 8, !align !54, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCskihuepUL9Ty_12notify_types5event15EventAttributesECs65Ktfge4woL_10vfs_notify(ptr %.val85)
          to label %bb.hh unwind label %.loopexit380

bb.hh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %bb.b

bb.hi:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  store i64 4, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !560
  invoke void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs4sl5YdnrCxp_3vfs6loader7MessageE4sendCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.an)
end_hunk_1
