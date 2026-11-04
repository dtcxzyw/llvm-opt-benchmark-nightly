Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN2h25proto7streams10prioritize10Prioritize9pop_frame17h4683516974e2794aE:bb.a
  %i.ci = alloca [48 x i8], align 8               ; 8 uses
  %i.cj = alloca [16 x i8], align 8               ; 5 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [24 x i8], align 8               ; 5 uses
  %i.cm = alloca [48 x i8], align 8               ; 8 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [32 x i8], align 8               ; 8 uses
  %i.cp = alloca [4 x i8], align 4                ; 4 uses
  %i.cq = alloca [8 x i8], align 8                ; 4 uses
  %i.cr = alloca [8 x i8], align 8                ; 4 uses
  %i.cs = alloca [1 x i8], align 1                ; 4 uses
  %i.ct = alloca [48 x i8], align 8               ; 8 uses
  %i.cu = alloca [112 x i8], align 8              ; 17 uses
  %i.cv = alloca [32 x i8], align 8               ; 7 uses
  %i.cw = alloca [24 x i8], align 8               ; 5 uses
  %i.cx = alloca [4 x i8], align 4                ; 4 uses
  %i.cy = alloca [8 x i8], align 8                ; 4 uses
  %i.cz = alloca [8 x i8], align 8                ; 4 uses
  %i.da = alloca [1 x i8], align 1                ; 4 uses
  %i.db = alloca [48 x i8], align 8               ; 8 uses
  %i.dc = alloca [112 x i8], align 8              ; 17 uses
  %i.dd = alloca [32 x i8], align 8               ; 8 uses
  %i.de = alloca [8 x i8], align 8                ; 4 uses
  %i.df = alloca [4 x i8], align 4                ; 7 uses
  %i.dg = alloca [40 x i8], align 8               ; 15 uses
  %i.dh = alloca [296 x i8], align 8              ; 16 uses
  %i.di = alloca [296 x i8], align 8              ; 42 uses
  %i.dj = alloca [16 x i8], align 8               ; 5 uses
  %i.dk = alloca [32 x i8], align 8               ; 7 uses
  %i.dl = alloca [24 x i8], align 8               ; 5 uses
  %i.dm = alloca [16 x i8], align 8               ; 5 uses
  %i.dn = alloca [32 x i8], align 8               ; 8 uses
  %i.do = alloca [1 x i8], align 1                ; 5 uses
  %i.dp = alloca [8 x i8], align 8                ; 4 uses
  %i.dq = alloca [8 x i8], align 8                ; 4 uses
  %i.dr = alloca [32 x i8], align 8               ; 7 uses
  %i.ds = alloca [32 x i8], align 8               ; 7 uses
  %i.dt = alloca [40 x i8], align 8               ; 7 uses
  %i.du = alloca [8 x i8], align 8                ; 4 uses
  %i.dv = alloca [8 x i8], align 8                ; 4 uses
  %i.dw = alloca [32 x i8], align 8               ; 7 uses
  %i.dx = alloca [32 x i8], align 8               ; 7 uses
  %i.dy = alloca [40 x i8], align 8               ; 20 uses
  %i.dz = alloca [16 x i8], align 8               ; 32 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [40 x i8], align 8               ; 7 uses
  %i.ec = alloca [32 x i8], align 8               ; 7 uses
  %i.ed = alloca [40 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  %i.ee = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.b, label %.thread505

bb.b:                                             ; preds = %bb.a
  %i.eg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17hab26366521b1c2beE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.eg, label %bb.c [
    i8 0, label %.thread505
    i8 1, label %.thread
    i8 2, label %.thread
  ], !prof !64

bb.c:                                             ; preds = %bb.b
  %i.eh = tail call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17hab26366521b1c2beE) ; 2 uses
  %.not269 = icmp eq i8 %i.eh, 0
  br i1 %.not269, label %.thread505, label %.thread

.thread:                                          ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.013.0504 = phi i8 [ %i.eh, %bb.c ], [ %i.eg, %bb.b ], [ %i.eg, %bb.b ]
  %i.ei = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17hab26366521b1c2beE, align 8, !nonnull !45, !align !48, !noundef !45
  %i.ej = tail call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ei, i8 noundef %.sroa.013.0504)
  br i1 %i.ej, label %bb.d, label %.thread505

bb.d:                                             ; preds = %.thread
  %i.ek = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17hab26366521b1c2beE, align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store i64 1, ptr %i.ec, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 0, ptr %.sroa.5122.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.el, ptr %i.em, align 8
  call void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.i

bb.e:                                             ; preds = %.thread505, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %i.eb, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.eb) #44
          to label %bb.n unwind label %bb.m

.thread505:                                       ; preds = %bb.b, %bb.c, %.thread, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  %i.eo = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17hab26366521b1c2beE, align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  store i64 2, ptr %i.eb, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store ptr %i.eo, ptr %i.ep, align 8
  %i.eq = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.g, label %bb.e

bb.g:                                             ; preds = %.thread505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  store i64 1, ptr %i.ea, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 0, ptr %.sroa.5127.0..sroa_idx, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.es, ptr %i.et, align 8
  %i.eu = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ea)
          to label %bb.h unwind label %bb.f       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.e

bb.i:                                             ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !15958)
  %i.ev = load i64, ptr %i.ed, align 8, !range !56, !alias.scope !15958, !noundef !45
  %.not.i327 = icmp eq i64 %i.ev, 2
  br i1 %.not.i327, label %.noexc331, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ew)
          to label %.noexc331 unwind label %bb.p

.noexc331:                                        ; preds = %bb.i, %bb.j
  %i.ex = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.k, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit333

bb.k:                                             ; preds = %.noexc331
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !15958, !align !48, !noundef !45 ; 3 uses
  %.not4.i328 = icmp eq ptr %i.fa, null
  br i1 %.not4.i328, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit333, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !15958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !15958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !15958
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !45, !align !55, !noundef !45
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !45
  store ptr %i.fc, ptr %i.ak, align 8, !noalias !15958
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !noalias !15958
  store ptr %i.ak, ptr %i.al, align 8, !noalias !15958
  %.sroa.43.0..sroa_idx.i329 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i329, align 8, !noalias !15958
  store ptr @2093, ptr %i.am, align 8, !noalias !15958
  %i.fg = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 2, ptr %i.fg, align 8, !noalias !15958
  %i.fh = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr null, ptr %i.fh, align 8, !noalias !15958
  %i.fi = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.al, ptr %i.fi, align 8, !noalias !15958
  %i.fj = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 1, ptr %i.fj, align 8, !noalias !15958
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2091, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.am)
          to label %.noexc332 unwind label %bb.p

.noexc332:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !15958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !15958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !15958
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit333

bb.m:                                             ; preds = %.thread535, %.loopexit.split-lp, %bb.av, %bb.jj, %bb.ih, %bb.hu, %.body407, %bb.fw, %.body, %bb.fa, %.loopexit.split-lp585, %bb.aj, %bb.o, %bb.f
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.f
  %.pn300.pn = phi { ptr, i32 } [ %.pn300, %bb.o ], [ %i.en, %bb.f ]
  resume { ptr, i32 } %.pn300.pn

bb.o:                                             ; preds = %.loopexit.split-lp, %bb.p
  %.pn300 = phi { ptr, i32 } [ %i.fl, %bb.p ], [ %.pn298, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.ed) #44
          to label %bb.n unwind label %bb.m

bb.p:                                             ; preds = %bb.l, %bb.ab, %bb.z, %bb.j
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit333: ; preds = %.noexc332, %bb.k, %.noexc331
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.fn = load i32, ptr %i.fm, align 8, !range !104, !alias.scope !15959, !noundef !45
  %i.fo = trunc nuw i32 %i.fn to i1
  br i1 %i.fo, label %.lr.ph, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17hcc899053021e6627E.exit.thread"

.lr.ph:                                           ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit333
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %.sroa.7.0..sroa_idx457 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.032.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.032.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.7.0..sroa_idx.i347 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.7236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dg, i64 36 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dc, i64 88
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.he = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  %.sroa.042.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.042.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.sroa.52.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7.0..sroa_idx.i360 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.7241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.hq = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %.sroa.4465.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4465, i64 7
  %i.hx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.if = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.054.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.054.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.52.0..sroa_idx.i415 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7.0..sroa_idx.i416 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.7246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  %i.im = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %i.in = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0101.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0101.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.52.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.7.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.7260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.43.0..sroa_idx.i.i434 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !15960)
  %.sroa.0.0.copyload.i = load i32, ptr %i.fp, align 4, !alias.scope !15960 ; 2 uses
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !15960 ; 2 uses
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !15960
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !15960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !15961
  store i32 %.sroa.0.0.copyload.i, ptr %i.fq, align 8, !alias.scope !15962, !noalias !15961
  store i32 %.sroa.7.0.copyload.i, ptr %i.fr, align 4, !alias.scope !15962, !noalias !15961
  store ptr %3, ptr %i.aj, align 8, !alias.scope !15962, !noalias !15961
  %i.jd = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.10.0.copyload.i
  %i.je = icmp eq i32 %.sroa.7.0.copyload.i, %.sroa.11.0.copyload.i
  %or.cond.i = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jf = invoke noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %.noexc340 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc340:                                        ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !15963)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 184 ; 2 uses
  %.sroa.016.0.copyload.i = load i32, ptr %i.jg, align 8, !alias.scope !15964, !noalias !15965
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 188
  %i.jh = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !15964, !noalias !15965
  store i32 0, ptr %i.jg, align 8, !alias.scope !15966, !noalias !15965
  %i.ji = trunc nuw i32 %.sroa.016.0.copyload.i to i1
  br i1 %i.ji, label %bb.t, label %bb.u, !prof !58

bb.s:                                             ; preds = %bb.q
  %i.jj = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
          to label %.noexc341 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc341:                                        ; preds = %bb.s
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 184
  %.sroa.0.0.copyload15.i = load i32, ptr %i.jk, align 8, !noalias !15965
  %.not.i339 = icmp eq i32 %.sroa.0.0.copyload15.i, 0
  br i1 %.not.i339, label %bb.x, label %bb.w, !prof !58

bb.t:                                             ; preds = %.noexc340
  store <2 x i32> %i.jh, ptr %i.fp, align 4, !alias.scope !15960
  br label %bb.v

bb.u:                                             ; preds = %.noexc340
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @865) #43
          to label %.noexc342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc342:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.x, %bb.t
  %i.jl = invoke noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17hcc899053021e6627E.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %.noexc341
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @866, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @867) #43
          to label %.noexc344 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc344:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %.noexc341
  store i32 0, ptr %i.fm, align 8, !alias.scope !15960
  br label %bb.v

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp585, %bb.aj
  %.pn298 = phi { ptr, i32 } [ %i.kl, %bb.aj ], [ %.pn296, %.loopexit.split-lp585 ], [ %lpad.loopexit.split-lp704, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E"(ptr nonnull %i.ed) #44
          to label %bb.o unwind label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.s, %bb.r, %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit437", %bb.at, %bb.as, %bb.ah, %.thread512, %bb.ae, %bb.w, %bb.u, %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit454"
  %lpad.loopexit.split-lp704 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17hcc899053021e6627E.exit": ; preds = %bb.v
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 289
  store i8 0, ptr %i.jm, align 1, !alias.scope !15967, !noalias !15965
  %.sroa.0455.0.copyload456 = load ptr, ptr %i.aj, align 8, !noalias !15968 ; 2 uses
  %.sroa.7.0.copyload459 = load i64, ptr %i.fq, align 8, !noalias !15968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !15961
  %.not270 = icmp eq ptr %.sroa.0455.0.copyload456, null
  br i1 %.not270, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17hcc899053021e6627E.exit.thread", label %bb.ac

"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17hcc899053021e6627E.exit.thread": ; preds = %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17hcc899053021e6627E.exit", %bb.ht, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit333
  store i8 9, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.ji, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17hcc899053021e6627E.exit.thread"
  call void @llvm.experimental.noalias.scope.decl(metadata !15969)
  %i.jn = load i64, ptr %i.ed, align 8, !range !56, !alias.scope !15969, !noalias !15970, !noundef !45
  %.not.i.i = icmp eq i64 %i.jn, 2
  br i1 %.not.i.i, label %.noexc345, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo)
          to label %.noexc345 unwind label %bb.p

.noexc345:                                        ; preds = %bb.z, %bb.y
  %i.jp = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !15970
  %i.jq = icmp eq i8 %i.jp, 0
  br i1 %i.jq, label %bb.aa, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"

bb.aa:                                            ; preds = %.noexc345
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !alias.scope !15969, !noalias !15970, !align !48, !noundef !45 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.js, null
  br i1 %.not4.i.i, label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !15971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !15971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !15971
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !noalias !15970, !nonnull !45, !align !55, !noundef !45
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !15970, !noundef !45
  store ptr %i.ju, ptr %i.ag, align 8, !noalias !15971
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.jw, ptr %i.jx, align 8, !noalias !15971
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !15971
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !15971
  store ptr @2090, ptr %i.ai, align 8, !noalias !15971
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 2, ptr %i.jy, align 8, !noalias !15971
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr null, ptr %i.jz, align 8, !noalias !15971
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ah, ptr %i.ka, align 8, !noalias !15971
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 1, ptr %i.kb, align 8, !noalias !15971
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ed, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2091, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ai)
          to label %.noexc346 unwind label %bb.p

.noexc346:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !15971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15971
  br label %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E.exit"

bb.ac:                                            ; preds = %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17hcc899053021e6627E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store ptr %.sroa.0455.0.copyload456, ptr %i.dz, align 8
  store i64 %.sroa.7.0.copyload459, ptr %.sroa.7.0..sroa_idx457, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  %i.kc = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %bb.ad, label %.thread516

bb.ad:                                            ; preds = %bb.ac
  %i.ke = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17ha4a054ed2ef141c4E, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ke, label %bb.ae [
    i8 0, label %.thread516
    i8 1, label %.thread512
    i8 2, label %.thread512
  ], !prof !64

bb.ae:                                            ; preds = %bb.ad
  %i.kf = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17ha4a054ed2ef141c4E)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %.not272 = icmp eq i8 %i.kf, 0
  br i1 %.not272, label %.thread516, label %.thread512

.thread512:                                       ; preds = %bb.ad, %bb.ad, %bb.af
  %.sroa.022.0515 = phi i8 [ %i.kf, %bb.af ], [ %i.ke, %bb.ad ], [ %i.ke, %bb.ad ]
  %i.kg = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17ha4a054ed2ef141c4E, align 8, !nonnull !45, !align !48, !noundef !45
  %i.kh = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg, i8 noundef %.sroa.022.0515)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %.thread512
  br i1 %i.kh, label %bb.ah, label %.thread516

bb.ah:                                            ; preds = %bb.ag
  %i.ki = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17ha4a054ed2ef141c4E, align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  %i.kk = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dz)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %.thread516, %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.dt, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.ao

bb.aj:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.dt) #44
          to label %.loopexit.split-lp unwind label %bb.m

.thread516:                                       ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  %i.km = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize9pop_frame10__CALLSITE17ha4a054ed2ef141c4E, align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  store i64 2, ptr %i.dt, align 8
  store ptr %i.km, ptr %i.fw, align 8
  %i.kn = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.ko = icmp eq i8 %i.kn, 0
  br i1 %i.ko, label %bb.ak, label %bb.ai

bb.ak:                                            ; preds = %.thread516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  %i.kq = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dz)
          to label %bb.al unwind label %bb.aj

bb.al:                                            ; preds = %bb.ak
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 276
  store ptr %i.kr, ptr %i.dq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  %i.ks = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dz)
          to label %bb.am unwind label %bb.aj

bb.am:                                            ; preds = %bb.al
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 80
  store ptr %i.kt, ptr %i.dp, align 8
  store ptr %i.dq, ptr %i.dr, align 8
  store ptr @770, ptr %i.fx, align 8
  store ptr %i.dp, ptr %i.fy, align 8
  store ptr @802, ptr %i.fz, align 8
  store i64 1, ptr %i.ds, align 8
  store ptr %i.dr, ptr %.sroa.4135.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.5136.0..sroa_idx, align 8
  store ptr %i.kp, ptr %i.ga, align 8
  %i.ku = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds)
          to label %bb.an unwind label %bb.aj     ; 0 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br label %bb.ai
end_hunk_0
begin_hunk_1_@"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front17h09e510639d3db7d6E":bb.a

bb.al:                                            ; preds = %bb.ak
  %i.hl = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E") ; 2 uses
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %.thread139, label %.thread136

.thread136:                                       ; preds = %bb.ak, %bb.ak, %bb.al
  %.sroa.018.0138 = phi i8 [ %i.hl, %bb.al ], [ %i.hk, %bb.ak ], [ %i.hk, %bb.ak ]
  %i.hn = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.ho = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hn, i8 noundef %.sroa.018.0138)
  br i1 %i.ho, label %bb.am, label %.thread139

bb.am:                                            ; preds = %.thread136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.hp = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E", align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr @863, ptr %i.ae, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 1, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr null, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.hu, align 8
  store ptr %i.ae, ptr %i.af, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @93, ptr %i.hv, align 8
  store i64 1, ptr %i.ag, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.hq, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
  %i.hw = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16075
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.an, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h3c52949168214739E.exit"

bb.an:                                            ; preds = %bb.am
  %i.hy = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16075 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, 6
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp samesign ugt i64 %i.hy, 4
  br i1 %i.ia, label %bb.ao, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h3c52949168214739E.exit"

bb.ao:                                            ; preds = %bb.an
  %i.ib = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E", align 8, !noalias !16075, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !nonnull !45, !align !55, !noundef !45
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.if = load i64, ptr %i.ie, align 8, !noundef !45
  store i64 5, ptr %i.b, align 8, !noalias !16075
  %.sroa.52.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.id, ptr %.sroa.52.0..sroa_idx.i116, align 8, !noalias !16075
  %.sroa.7.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.if, ptr %.sroa.7.0..sroa_idx.i117, align 8, !noalias !16075
  %i.ig = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.ih = extractvalue { ptr, ptr } %i.ig, 0      ; 2 uses
  %i.ii = extractvalue { ptr, ptr } %i.ig, 1      ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !invariant.load !45, !nonnull !45
  %i.il = call noundef zeroext i1 %i.ik(ptr noundef align 1 %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !inline_history !16069
  br i1 %i.il, label %bb.ap, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h3c52949168214739E.exit"

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !16075
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ib, ptr noundef nonnull align 1 %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ii, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16075
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h3c52949168214739E.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h3c52949168214739E.exit": ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.aj

.thread139:                                       ; preds = %bb.ak, %bb.al, %.thread136, %bb.m
  %i.im = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.in = icmp eq i8 %i.im, 0
  br i1 %i.in, label %bb.aq, label %bb.aj

bb.aq:                                            ; preds = %.thread139
  %i.io = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.ip = icmp ult i64 %i.io, 6
  call void @llvm.assume(i1 %i.ip)
  %i.iq = icmp samesign ugt i64 %i.io, 4
  br i1 %i.iq, label %bb.ar, label %bb.aj

bb.ar:                                            ; preds = %bb.aq
  %i.ir = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E", align 8, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !nonnull !45, !align !55, !noundef !45
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  %i.iv = load i64, ptr %i.iu, align 8, !noundef !45
  store i64 5, ptr %i.ad, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.it, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.iv, ptr %.sroa.796.0..sroa_idx, align 8
  %i.iw = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.ix = extractvalue { ptr, ptr } %i.iw, 0      ; 2 uses
  %i.iy = extractvalue { ptr, ptr } %i.iw, 1      ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !invariant.load !45, !nonnull !45
  %i.jb = call noundef zeroext i1 %i.ja(ptr noundef align 1 %i.ix, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
  br i1 %i.jb, label %bb.as, label %bb.aj

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.jc = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @863, ptr %i.aa, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 1, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %i.jh, align 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @93, ptr %i.ji, align 8
  store i64 1, ptr %i.ac, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 1, ptr %.sroa.567.0..sroa_idx, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.jd, ptr %i.jj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ir, ptr noundef nonnull align 1 %i.ix, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h4ff7c6b4ee413171E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(20) %1, ptr noalias noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = load i32, ptr %1, align 4, !range !104, !noundef !45
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 8, !alias.scope !16083
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.7.0.copyload, ptr %i.f, align 4, !alias.scope !16083
  store ptr %2, ptr %i.a, align 8, !alias.scope !16083
  %i.g = icmp eq i32 %.sroa.0.0.copyload, %.sroa.10.0.copyload
  %i.h = icmp eq i32 %.sroa.7.0.copyload, %.sroa.11.0.copyload
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = call noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16084)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 232 ; 2 uses
  %.sroa.016.0.copyload = load i32, ptr %i.j, align 8, !alias.scope !16085
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 236
  %i.k = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !16085
  store i32 0, ptr %i.j, align 8, !alias.scope !16086
  %i.l = trunc nuw i32 %.sroa.016.0.copyload to i1
  br i1 %i.l, label %bb.f, label %bb.g, !prof !58

bb.e:                                             ; preds = %bb.b
  %i.m = call noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %.sroa.0.0.copyload15 = load i32, ptr %i.n, align 8
  %.not = icmp eq i32 %.sroa.0.0.copyload15, 0
  br i1 %.not, label %bb.j, label %bb.i, !prof !58

bb.f:                                             ; preds = %bb.d
  store <2 x i32> %i.k, ptr %i.d, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @865) #43
  unreachable

bb.h:                                             ; preds = %bb.j, %bb.f
  %i.o = call noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 295
  store i8 0, ptr %i.p, align 1, !alias.scope !16087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @866, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @867) #43
  unreachable

bb.j:                                             ; preds = %bb.e
  store i32 0, ptr %1, align 4
  br label %bb.h

bb.k:                                             ; preds = %bb.h, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push17h47f4e7b37f46a10fE"(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(20) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [48 x i8], align 8               ; 8 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 8 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.b, label %.thread121

bb.b:                                             ; preds = %bb.a
  %i.ar = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h4588ba398f831914E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ar, label %bb.c [
    i8 0, label %.thread121
    i8 1, label %.thread
    i8 2, label %.thread
  ], !prof !64

bb.c:                                             ; preds = %bb.b
  %i.as = tail call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h4588ba398f831914E") ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.thread121, label %.thread

.thread:                                          ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.08.0120 = phi i8 [ %i.as, %bb.c ], [ %i.ar, %bb.b ], [ %i.ar, %bb.b ]
  %i.au = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h4588ba398f831914E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.av = tail call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.au, i8 noundef %.sroa.08.0120)
  br i1 %i.av, label %bb.d, label %.thread121

bb.d:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.aw = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h4588ba398f831914E", align 8, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @869, ptr %i.am, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 0, ptr %i.bb, align 8
  store ptr %i.am, ptr %i.an, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @93, ptr %i.bc, align 8
  store i64 1, ptr %i.ao, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
  %i.bd = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16105
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.e, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h26a20ce961eb84e7E.exit"

bb.e:                                             ; preds = %bb.d
  %i.bf = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16105 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 6
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ugt i64 %i.bf, 4
  br i1 %i.bh, label %bb.f, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h26a20ce961eb84e7E.exit"

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h4588ba398f831914E", align 8, !noalias !16105, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !45, !align !55, !noundef !45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !45
  store i64 5, ptr %i.h, align 8, !noalias !16105
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bk, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !16105
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bm, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !16105
  %i.bn = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !45, !nonnull !45
  %i.bs = call noundef zeroext i1 %i.br(ptr noundef align 1 %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !inline_history !16090
  br i1 %i.bs, label %bb.g, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h26a20ce961eb84e7E.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !16105
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bi, ptr noundef nonnull align 1 %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16105
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h26a20ce961eb84e7E.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h26a20ce961eb84e7E.exit": ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.k

.thread121:                                       ; preds = %bb.b, %bb.c, %.thread, %bb.a
  %i.bt = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread121
  %i.bv = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 6
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ugt i64 %i.bv, 4
  br i1 %i.bx, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.by = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h4588ba398f831914E", align 8, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !45, !align !55, !noundef !45
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !45
  store i64 5, ptr %i.al, align 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ca, ptr %.sroa.591.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.cc, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cd = tail call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0      ; 2 uses
  %i.cf = extractvalue { ptr, ptr } %i.cd, 1      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !invariant.load !45, !nonnull !45
  %i.ci = call noundef zeroext i1 %i.ch(ptr noundef align 1 %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
  br i1 %i.ci, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.cj = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h4588ba398f831914E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
end_hunk_1
begin_hunk_2_@"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push17haa5883519331a650E":bb.a
  store ptr @863, ptr %i.af, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 1, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr null, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 0, ptr %i.hy, align 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @93, ptr %i.hz, align 8
  store i64 1, ptr %i.ah, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.hu, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah)
  %i.ia = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16133
  %i.ib = icmp eq i8 %i.ia, 0
  br i1 %i.ib, label %bb.an, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hd916a34917fa157aE.exit"

bb.an:                                            ; preds = %bb.am
  %i.ic = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16133 ; 2 uses
  %i.id = icmp ult i64 %i.ic, 6
  call void @llvm.assume(i1 %i.id)
  %i.ie = icmp samesign ugt i64 %i.ic, 4
  br i1 %i.ie, label %bb.ao, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hd916a34917fa157aE.exit"

bb.ao:                                            ; preds = %bb.an
  %i.if = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E", align 8, !noalias !16133, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !nonnull !45, !align !55, !noundef !45
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ij = load i64, ptr %i.ii, align 8, !noundef !45
  store i64 5, ptr %i.b, align 8, !noalias !16133
  %.sroa.52.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ih, ptr %.sroa.52.0..sroa_idx.i116, align 8, !noalias !16133
  %.sroa.7.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ij, ptr %.sroa.7.0..sroa_idx.i117, align 8, !noalias !16133
  %i.ik = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.il = extractvalue { ptr, ptr } %i.ik, 0      ; 2 uses
  %i.im = extractvalue { ptr, ptr } %i.ik, 1      ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !invariant.load !45, !nonnull !45
  %i.ip = call noundef zeroext i1 %i.io(ptr noundef align 1 %i.il, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !inline_history !16127
  br i1 %i.ip, label %bb.ap, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hd916a34917fa157aE.exit"

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !16133
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.if, ptr noundef nonnull align 1 %i.il, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.im, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16133
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hd916a34917fa157aE.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hd916a34917fa157aE.exit": ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.aj

.thread139:                                       ; preds = %bb.ak, %bb.al, %.thread136, %bb.m
  %i.iq = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.ir = icmp eq i8 %i.iq, 0
  br i1 %i.ir, label %bb.aq, label %bb.aj

bb.aq:                                            ; preds = %.thread139
  %i.is = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.it = icmp ult i64 %i.is, 6
  call void @llvm.assume(i1 %i.it)
  %i.iu = icmp samesign ugt i64 %i.is, 4
  br i1 %i.iu, label %bb.ar, label %bb.aj

bb.ar:                                            ; preds = %bb.aq
  %i.iv = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E", align 8, !nonnull !45, !align !48, !noundef !45 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8, !nonnull !45, !align !55, !noundef !45
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.iz = load i64, ptr %i.iy, align 8, !noundef !45
  store i64 5, ptr %i.ae, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ix, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.iz, ptr %.sroa.796.0..sroa_idx, align 8
  %i.ja = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.jb = extractvalue { ptr, ptr } %i.ja, 0      ; 2 uses
  %i.jc = extractvalue { ptr, ptr } %i.ja, 1      ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !invariant.load !45, !nonnull !45
  %i.jf = call noundef zeroext i1 %i.je(ptr noundef align 1 %i.jb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
  br i1 %i.jf, label %bb.as, label %bb.aj

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.jg = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E", align 8, !nonnull !45, !align !48, !noundef !45
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr @863, ptr %i.ab, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 1, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr null, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %i.jl, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @93, ptr %i.jm, align 8
  store i64 1, ptr %i.ad, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 1, ptr %.sroa.567.0..sroa_idx, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.jh, ptr %i.jn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iv, ptr noundef nonnull align 1 %i.jb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN2h25proto7streams6buffer5Deque9pop_front17hcc0506620c109a97E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [312 x i8], align 8               ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !59, !noundef !45
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !45 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16142)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !16143, !noundef !45
  %i.j = icmp ult i64 %i.e, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !16143, !nonnull !45, !noundef !45
  %i.m = getelementptr inbounds nuw [312 x i8], ptr %i.l, i64 %i.e ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !range !56, !noalias !16144, !noundef !45 ; 4 uses
  %.not.i.i = icmp eq i64 %i.n, 2
  br i1 %.not.i.i, label %bb.d, label %"_ZN4slab13Slab$LT$T$GT$6remove17h49fe6d2c8f54860aE.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1183, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @873) #43, !noalias !16145
  unreachable

"_ZN4slab13Slab$LT$T$GT$6remove17h49fe6d2c8f54860aE.exit": ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !16143, !noundef !45
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.5.0..sroa.0.0..sroa_idx.i.i, i64 304, i1 false), !noalias !16141
  store i64 2, ptr %i.m, align 8, !noalias !16144
  store i64 %i.p, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i.i, align 8, !noalias !16144
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !16143, !noundef !45
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !16143
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !16143
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !16140
  %i.t = icmp eq i64 %i.e, %i.g
  br i1 %i.t, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.e
  ret void

bb.g:                                             ; preds = %"_ZN4slab13Slab$LT$T$GT$6remove17h49fe6d2c8f54860aE.exit"
  %i.u = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 0, ptr %i.a, align 8
  %i.v = trunc nuw i64 %i.n to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !58

bb.h:                                             ; preds = %"_ZN4slab13Slab$LT$T$GT$6remove17h49fe6d2c8f54860aE.exit"
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.o, label %bb.n, !prof !58

bb.i:                                             ; preds = %bb.g
  store i64 %i.u, ptr %i.d, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @874) #43
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr37drop_in_place$LT$h2..frame..Frame$GT$17h9d449d38f91900cfE"(ptr noalias noundef align 8 dereferenceable(296) %i.x)
          to label %"_ZN4core3ptr77drop_in_place$LT$h2..proto..streams..buffer..Slot$LT$h2..frame..Frame$GT$$GT$17hc32518a5be9f593bE.exit" unwind label %bb.p

bb.l:                                             ; preds = %bb.n, %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.y, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.n:                                             ; preds = %bb.h
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @875, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @876) #43
          to label %bb.l unwind label %bb.k

bb.o:                                             ; preds = %bb.h
  store i64 0, ptr %1, align 8
  br label %bb.m

bb.p:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr77drop_in_place$LT$h2..proto..streams..buffer..Slot$LT$h2..frame..Frame$GT$$GT$17hc32518a5be9f593bE.exit": ; preds = %bb.k
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN2h25proto7streams6counts6Counts10transition17h4b27e3a149a5b3f3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(16) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(304) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [288 x i8], align 8               ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 10 uses
  %i.h = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load i32, ptr %i.i, align 8, !range !105, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 288, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 288
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 296
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16156
  %i.k = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !16156, !nonnull !45, !align !48, !noundef !45
  call void @_ZN2h25proto7streams4recv4Recv17recv_push_promise17h8f9ca3d9e796bd87E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(160) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(288) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16156
  %i.l = load i8, ptr %i.e, align 8, !range !51, !noalias !16156, !noundef !45
  %.not.i = icmp eq i8 %i.l, 3
  br i1 %.not.i, label %"_ZN4core3ptr83drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$h2..proto..error..Error$GT$$GT$17h020005f02173ba27E.exit.i", label %bb.b

bb.b:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.m = load ptr, ptr %.sroa.5.0.copyload, align 8, !noalias !16159, !nonnull !45, !align !48, !noundef !45 ; 10 uses
  %i.n = cmpxchg ptr %i.m, i32 0, i32 1 acquire monotonic, align 4, !noalias !16160
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %.noexc.i, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.m)
          to label %.noexc.i unwind label %bb.e, !noalias !16159

.noexc.i:                                         ; preds = %bb.c, %bb.b
  %i.p = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !16161
  %i.q = and i64 %i.p, 9223372036854775807
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.d, !prof !58

bb.d:                                             ; preds = %.noexc.i
  %i.s = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc12.i unwind label %bb.e, !noalias !16159

.noexc12.i:                                       ; preds = %bb.d
  %i.t = xor i1 %i.s, true
  %i.u = zext i1 %i.t to i8
  br label %bb.f

"_ZN4core3ptr83drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$h2..proto..error..Error$GT$$GT$17h020005f02173ba27E.exit.i": ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.w, align 4, !alias.scope !16157
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = load <2 x i32>, ptr %i.v, align 8, !alias.scope !16158
  store <2 x i32> %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16157
  store i8 3, ptr %i.g, align 8, !alias.scope !16157
  br label %bb.w

bb.e:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread27.i

bb.f:                                             ; preds = %.noexc12.i, %.noexc.i
  %.sroa.01.0.i.i.i = phi i8 [ %i.u, %.noexc12.i ], [ 0, %.noexc.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 3 uses
  %i.z = load atomic i8, ptr %i.y monotonic, align 4, !noalias !16160
  %.not34.i = icmp eq i8 %i.z, 0
  br i1 %.not34.i, label %bb.k, label %bb.g, !prof !58

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16162
  store ptr %i.m, ptr %i.a, align 8, !noalias !16162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.aa, align 8, !noalias !16162
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1072, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1080, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @941) #43
          to label %bb.i unwind label %bb.h, !noalias !16163

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr161drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$$GT$17h257f001828eb7f4bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #44
          to label %.thread27.i unwind label %bb.j, !noalias !16163

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !16163
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ad = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16156
  %i.ae = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !16159, !nonnull !45, !align !48, !noundef !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !16156
  invoke fastcc void @_ZN2h25proto7streams7streams7Actions24reset_on_recv_stream_err17hf2effebb61261d51E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(336) %i.ae, ptr noalias noundef align 8 dereferenceable(40) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.m unwind label %bb.l, !noalias !16164

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr123drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$17h677130d5ecff7219E"(ptr nonnull %i.m, i8 %.sroa.01.0.i.i.i) #44
          to label %.thread10 unwind label %bb.v, !noalias !16164

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16156
  %i.ah = load i8, ptr %i.c, align 8, !range !51, !noalias !16156, !noundef !45
  %.not5.i = icmp eq i8 %i.ah, 3
  br i1 %.not5.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !16165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16156
  br i1 %i.ad, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !16156
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %.noexc13.i, !prof !58

.noexc13.i:                                       ; preds = %bb.o
  %i.al = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.al, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc13.i
  store atomic i8 1, ptr %i.y monotonic, align 4, !noalias !16164
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.p, %.noexc13.i, %bb.o, %bb.n
  %i.am = atomicrmw xchg ptr %i.m, i32 0 release, align 4, !noalias !16164
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.q, label %bb.w, !prof !47

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.m)
  br label %bb.w

bb.r:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %i.ao, align 4, !alias.scope !16157
  store i8 3, ptr %i.g, align 8, !alias.scope !16157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16156
end_hunk_2
begin_hunk_3_@"_ZN2h25proto7streams7streams20Streams$LT$B$C$P$GT$21apply_remote_settings17hb35a74e2afe74540E":bb.a
  store i32 %i.mn, ptr %.sroa.252.sroa.3.0..sroa.252.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !16414
  %.sroa.252.sroa.4.0..sroa.252.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @144, ptr %.sroa.252.sroa.4.0..sroa.252.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !16414
  %.sroa.252.sroa.5.0..sroa.252.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.252.sroa.5.0..sroa.252.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !16414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !16418
  br label %bb.da

.loopexit.i:                                      ; preds = %bb.bj, %bb.al
  %.sroa.0.3.ph.i = phi i32 [ 0, %bb.al ], [ %.sroa.0.1.i, %bb.bj ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.val, i64 288
  call void @llvm.experimental.noalias.scope.decl(metadata !16434)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16418
  store i32 %.sroa.0.3.ph.i, ptr %i.t, align 4, !noalias !16435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16435
  %i.mp = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !16435
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %bb.bl, label %.thread67.i.i

bb.bl:                                            ; preds = %.loopexit.i
  %i.mr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity10__CALLSITE17h0d42c558ef058d2eE, i64 16) monotonic, align 8, !noalias !16435 ; 3 uses
  switch i8 %i.mr, label %bb.bm [
    i8 0, label %.thread67.i.i
    i8 1, label %.thread.i.i
    i8 2, label %.thread.i.i
  ], !prof !64

bb.bm:                                            ; preds = %bb.bl
  %i.ms = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity10__CALLSITE17h0d42c558ef058d2eE)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc46:                                         ; preds = %bb.bm
  %.not30.i.i = icmp eq i8 %i.ms, 0
  br i1 %.not30.i.i, label %.thread67.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bl, %.noexc46, %bb.bl
  %.sroa.08.066.i.i = phi i8 [ %i.ms, %.noexc46 ], [ %i.mr, %bb.bl ], [ %i.mr, %bb.bl ]
  %i.mt = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity10__CALLSITE17h0d42c558ef058d2eE, align 8, !noalias !16435, !nonnull !45, !align !48, !noundef !45
  %i.mu = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mt, i8 noundef %.sroa.08.066.i.i)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %.thread.i.i
  br i1 %i.mu, label %bb.bn, label %.thread67.i.i

bb.bn:                                            ; preds = %.noexc47
  %i.mv = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity10__CALLSITE17h0d42c558ef058d2eE, align 8, !noalias !16435, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16435
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16435
  store ptr %i.t, ptr %i.q, align 8, !noalias !16435
  %i.mx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @801, ptr %i.mx, align 8, !noalias !16435
  store i64 1, ptr %i.r, align 8, !noalias !16435
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !16435
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 1, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !16435
  %i.my = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.mw, ptr %i.my, align 8, !noalias !16435
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16435
  br label %bb.bs

bb.bo:                                            ; preds = %bb.br, %.thread67.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !16435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16435
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bq
  %i.mz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.p) #44
          to label %.body49 unwind label %bb.bw, !noalias !16424

.thread67.i.i:                                    ; preds = %.noexc47, %.noexc46, %bb.bl, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16435
  %i.na = load ptr, ptr @_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity10__CALLSITE17h0d42c558ef058d2eE, align 8, !noalias !16435, !nonnull !45, !align !48, !noundef !45 ; 2 uses
  store i64 2, ptr %i.p, align 8, !noalias !16435
  %i.nb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.na, ptr %i.nb, align 8, !noalias !16435
  %i.nc = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16435
  %i.nd = icmp eq i8 %i.nc, 0
  br i1 %i.nd, label %bb.bq, label %bb.bo

bb.bq:                                            ; preds = %.thread67.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16435
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16435
  store ptr %i.t, ptr %i.n, align 8, !noalias !16435
  %i.nf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @801, ptr %i.nf, align 8, !noalias !16435
  store i64 1, ptr %i.o, align 8, !noalias !16435
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !16435
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !16435
  %i.ng = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ne, ptr %i.ng, align 8, !noalias !16435
  %i.nh = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.br unwind label %bb.bp, !noalias !16424 ; 0 uses

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16435
  br label %bb.bo

bb.bs:                                            ; preds = %bb.bo, %.noexc48
  call void @llvm.experimental.noalias.scope.decl(metadata !16436)
  %i.ni = load i64, ptr %i.s, align 8, !range !56, !alias.scope !16436, !noalias !16435, !noundef !45
  %.not.i.i.i = icmp eq i64 %i.ni, 2
  br i1 %.not.i.i.i, label %.noexc35.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nj = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.nj)
          to label %.noexc35.i.i unwind label %bb.by, !noalias !16424

.noexc35.i.i:                                     ; preds = %bb.bt, %bb.bs
  %i.nk = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16435
  %i.nl = icmp eq i8 %i.nk, 0
  br i1 %i.nl, label %bb.bu, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i.i

bb.bu:                                            ; preds = %.noexc35.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !16436, !noalias !16435, !align !48, !noundef !45 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.nn, null
  br i1 %.not4.i.i.i, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16437
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !noalias !16424, !nonnull !45, !align !55, !noundef !45
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.nr = load i64, ptr %i.nq, align 8, !noalias !16424, !noundef !45
  store ptr %i.np, ptr %i.i, align 8, !noalias !16437
  %i.ns = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.nr, ptr %i.ns, align 8, !noalias !16437
  store ptr %i.i, ptr %i.j, align 8, !noalias !16437
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !16437
  store ptr @2093, ptr %i.k, align 8, !noalias !16437
  %i.nt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 2, ptr %i.nt, align 8, !noalias !16437
  %i.nu = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.nu, align 8, !noalias !16437
  %i.nv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.j, ptr %i.nv, align 8, !noalias !16437
  %i.nw = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 1, ptr %i.nw, align 8, !noalias !16437
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2091, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.k)
          to label %.noexc36.i.i unwind label %bb.by

.noexc36.i.i:                                     ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16437
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i.i

bb.bw:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bx, %bb.bp
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !16424
  unreachable

bb.bx:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.by
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp56, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ny, %bb.by ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.s) #44
          to label %.body49 unwind label %bb.bw, !noalias !16424

bb.by:                                            ; preds = %bb.bv, %bb.cd, %bb.cq, %bb.co, %bb.cb, %bb.bt
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i.i: ; preds = %.noexc36.i.i, %bb.bu, %.noexc35.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.val, i64 292 ; 3 uses
  %i.oa = load i32, ptr %i.nz, align 4, !alias.scope !16438, !noundef !45 ; 2 uses
  %i.ob = load i32, ptr %i.t, align 4, !noalias !16435, !noundef !45
  %i.oc = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.oa, i32 %i.ob) ; 2 uses
  %i.od = extractvalue { i32, i1 } %i.oc, 1
  br i1 %i.od, label %bb.ca, label %bb.bz, !prof !47

bb.bz:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i.i
  %i.oe = extractvalue { i32, i1 } %i.oc, 0       ; 2 uses
  store i32 %i.oe, ptr %i.nz, align 4, !alias.scope !16438
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i.i
  %i.of = phi i32 [ %i.oa, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i.i ], [ %i.oe, %bb.bz ]
  %.sroa.025.073.i.i = icmp sgt i32 %i.of, 0
  br i1 %.sroa.025.073.i.i, label %.lr.ph.i82.i, label %._crit_edge.i81.i

.lr.ph.i82.i:                                     ; preds = %bb.ca
  %i.og = getelementptr inbounds nuw i8, ptr %.0.val, i64 324 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.val, i64 328 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 332
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 336
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 340
  %i.oi = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.7.0..sroa_idx.i83.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.ce

._crit_edge.i81.i:                                ; preds = %.backedge.i.i, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !16439)
  %i.ok = load i64, ptr %i.s, align 8, !range !56, !alias.scope !16439, !noalias !16440, !noundef !45
  %.not.i.i.i.i = icmp eq i64 %i.ok, 2
  br i1 %.not.i.i.i.i, label %.noexc40.i.i, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i81.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ol)
          to label %.noexc40.i.i unwind label %bb.by, !noalias !16424

.noexc40.i.i:                                     ; preds = %bb.cb, %._crit_edge.i81.i
  %i.om = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16440
  %i.on = icmp eq i8 %i.om, 0
  br i1 %i.on, label %bb.cc, label %_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i

bb.cc:                                            ; preds = %.noexc40.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.op = load ptr, ptr %i.oo, align 8, !alias.scope !16439, !noalias !16440, !align !48, !noundef !45 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.op, null
  br i1 %.not4.i.i.i.i, label %_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16441
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !16442, !nonnull !45, !align !55, !noundef !45
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.ot = load i64, ptr %i.os, align 8, !noalias !16442, !noundef !45
  store ptr %i.or, ptr %i.f, align 8, !noalias !16441
  %i.ou = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ot, ptr %i.ou, align 8, !noalias !16441
  store ptr %i.f, ptr %i.g, align 8, !noalias !16441
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !16441
  store ptr @2090, ptr %i.h, align 8, !noalias !16441
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %i.ov, align 8, !noalias !16441
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.ow, align 8, !noalias !16441
  %i.ox = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.ox, align 8, !noalias !16441
  %i.oy = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.oy, align 8, !noalias !16441
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2091, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %.noexc41.i.i unwind label %bb.by

.noexc41.i.i:                                     ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16441
  br label %_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i

bb.ce:                                            ; preds = %.backedge.i.i, %.lr.ph.i82.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16435
  call void @llvm.experimental.noalias.scope.decl(metadata !16443)
  %i.oz = load i32, ptr %i.og, align 4, !range !104, !alias.scope !16444, !noundef !45
  %i.pa = trunc nuw i32 %i.oz to i1
  br i1 %i.pa, label %bb.cf, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.thread.i.i"

bb.cf:                                            ; preds = %bb.ce
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.oh, align 8, !alias.scope !16444 ; 2 uses
  %.sroa.7.0.copyload.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !alias.scope !16444 ; 2 uses
  %.sroa.10.0.copyload.i.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !16444
  %.sroa.11.0.copyload.i.i.i = load i32, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !alias.scope !16444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16445
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.oi, align 8, !alias.scope !16446, !noalias !16445
  store i32 %.sroa.7.0.copyload.i.i.i, ptr %i.oj, align 4, !alias.scope !16446, !noalias !16445
  store ptr %i.cz, ptr %i.e, align 8, !alias.scope !16446, !noalias !16445
  %i.pb = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.10.0.copyload.i.i.i
  %i.pc = icmp eq i32 %.sroa.7.0.copyload.i.i.i, %.sroa.11.0.copyload.i.i.i
  %or.cond.i.i.i = select i1 %i.pb, i1 %i.pc, i1 false
  br i1 %or.cond.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pd = invoke noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc43.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424 ; 2 uses

.noexc43.i.i:                                     ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !16447)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 196 ; 2 uses
  %.sroa.016.0.copyload.i.i.i = load i32, ptr %i.pe, align 4, !alias.scope !16448, !noalias !16449
  %.sroa.4.0..sroa_idx.i.i84.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 200
  %i.pf = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i84.i, align 8, !alias.scope !16448, !noalias !16449
  store i32 0, ptr %i.pe, align 4, !alias.scope !16450, !noalias !16449
  %i.pg = trunc nuw i32 %.sroa.016.0.copyload.i.i.i to i1
  br i1 %i.pg, label %bb.ci, label %bb.cj, !prof !58

bb.ch:                                            ; preds = %bb.cf
  %i.ph = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %.noexc44.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424

.noexc44.i.i:                                     ; preds = %bb.ch
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 196
  %.sroa.0.0.copyload15.i.i.i = load i32, ptr %i.pi, align 4, !noalias !16449
  %.not.i42.i.i = icmp eq i32 %.sroa.0.0.copyload15.i.i.i, 0
  br i1 %.not.i42.i.i, label %bb.cm, label %bb.cl, !prof !58

bb.ci:                                            ; preds = %.noexc43.i.i
  store <2 x i32> %i.pf, ptr %i.oh, align 8, !alias.scope !16444
  br label %bb.ck

bb.cj:                                            ; preds = %.noexc43.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @865) #43
          to label %.noexc45.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424

.noexc45.i.i:                                     ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cm, %bb.ci
  %i.pj = invoke noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424

bb.cl:                                            ; preds = %.noexc44.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @866, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @867) #43
          to label %.noexc47.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424

.noexc47.i.i:                                     ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %.noexc44.i.i
  store i32 0, ptr %i.og, align 4, !alias.scope !16444
  br label %bb.ck

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc55.i.i, %.noexc54.i.i, %bb.cu, %bb.ct, %bb.cn, %bb.ck, %bb.ch, %bb.cg, %bb.cl, %bb.cj
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6542ed41f6ef1fd1E"(ptr nonnull %i.s) #44
          to label %bb.bx unwind label %bb.bw, !noalias !16424

"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.i.i": ; preds = %bb.ck
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 290
  store i8 0, ptr %i.pk, align 2, !alias.scope !16451, !noalias !16449
  %.sroa.060.0.copyload61.i.i = load ptr, ptr %i.e, align 8, !noalias !16452 ; 2 uses
  %.sroa.7.0.copyload63.i.i = load i64, ptr %i.oi, align 8, !noalias !16452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16445
  %.not31.i.i = icmp eq ptr %.sroa.060.0.copyload61.i.i, null
  br i1 %.not31.i.i, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.thread.i.i", label %bb.cn

bb.cn:                                            ; preds = %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.i.i"
  store ptr %.sroa.060.0.copyload61.i.i, ptr %i.l, align 8, !noalias !16435
  store i64 %.sroa.7.0.copyload63.i.i, ptr %.sroa.7.0..sroa_idx.i83.i, align 8, !noalias !16435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !16435
  %i.pl = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424 ; 2 uses

"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.thread.i.i": ; preds = %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.i.i", %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16435
  call void @llvm.experimental.noalias.scope.decl(metadata !16453)
  %i.pm = load i64, ptr %i.s, align 8, !range !56, !alias.scope !16453, !noalias !16454, !noundef !45
  %.not.i.i48.i.i = icmp eq i64 %i.pm, 2
  br i1 %.not.i.i48.i.i, label %.noexc51.i.i, label %bb.co

bb.co:                                            ; preds = %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.thread.i.i"
  %i.pn = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.pn)
          to label %.noexc51.i.i unwind label %bb.by, !noalias !16424

.noexc51.i.i:                                     ; preds = %bb.co, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$3pop17h5c31f3887bd4537fE.exit.thread.i.i"
  %i.po = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16454
  %i.pp = icmp eq i8 %i.po, 0
  br i1 %i.pp, label %bb.cp, label %_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i

bb.cp:                                            ; preds = %.noexc51.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.pr = load ptr, ptr %i.pq, align 8, !alias.scope !16453, !noalias !16454, !align !48, !noundef !45 ; 3 uses
  %.not4.i.i49.i.i = icmp eq ptr %i.pr, null
  br i1 %.not4.i.i49.i.i, label %_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16455
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !16456, !nonnull !45, !align !55, !noundef !45
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pv = load i64, ptr %i.pu, align 8, !noalias !16456, !noundef !45
  store ptr %i.pt, ptr %i.b, align 8, !noalias !16455
  %i.pw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.pv, ptr %i.pw, align 8, !noalias !16455
  store ptr %i.b, ptr %i.c, align 8, !noalias !16455
  %.sroa.43.0..sroa_idx.i.i50.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46d4d467e9bdcd5cE", ptr %.sroa.43.0..sroa_idx.i.i50.i.i, align 8, !noalias !16455
  store ptr @2090, ptr %i.d, align 8, !noalias !16455
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %i.px, align 8, !noalias !16455
  %i.py = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.py, align 8, !noalias !16455
  %i.pz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.pz, align 8, !noalias !16455
  %i.qa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %i.qa, align 8, !noalias !16455
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2091, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %.noexc52.i.i unwind label %bb.by

.noexc52.i.i:                                     ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16455
  br label %_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i

bb.cr:                                            ; preds = %bb.cn
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pl, i64 80
  %i.qc = load i8, ptr %i.qb, align 8, !range !75, !noalias !16424, !noundef !45 ; 2 uses
  %i.qd = add nsw i8 %i.qc, -6
  %.inv.i.i = icmp samesign ult i8 %i.qc, 6
  %narrow.i.i = select i1 %.inv.i.i, i8 6, i8 %i.qd
  switch i8 %narrow.i.i, label %bb.ct [
    i8 3, label %bb.cs
    i8 5, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr, %bb.cr
  %.sroa.010.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 81
  %.sroa.010.0.i.i = load i8, ptr %.sroa.010.0.in.i.i, align 1, !range !52, !noalias !16424, !noundef !45
  %i.qe = trunc nuw i8 %.sroa.010.0.i.i to i1
  br i1 %i.qe, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.qf = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424

bb.cu:                                            ; preds = %bb.cv, %bb.cs
  %i.qg = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %.noexc54.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424

.noexc54.i.i:                                     ; preds = %bb.cu
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 72
  %i.qi = load i32, ptr %i.qh, align 8, !range !105, !noalias !16457, !noundef !45
  invoke void @_ZN2h25proto7streams10prioritize10Prioritize19try_assign_capacity17h7896cf1ee4a326d6E(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.mo, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc55.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424

.noexc55.i.i:                                     ; preds = %.noexc54.i.i
  %i.qj = icmp ne i32 %i.qi, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !16459
  invoke void @_ZN2h25proto7streams6counts6Counts16transition_after17h999eaf8b3b838ea6E(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, i1 noundef zeroext %i.qj)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16424

bb.cv:                                            ; preds = %bb.ct
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 136
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !16424, !noundef !45
  %.not32.i.i = icmp eq i64 %i.ql, 0
  br i1 %.not32.i.i, label %.backedge.i.i, label %bb.cu

.backedge.i.i:                                    ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16435
  %i.qm = load i32, ptr %i.nz, align 4, !alias.scope !16438, !noundef !45
  %.sroa.025.0.i.i = icmp sgt i32 %i.qm, 0
  br i1 %.sroa.025.0.i.i, label %bb.ce, label %._crit_edge.i81.i

bb.cw:                                            ; preds = %.noexc55.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16458
  br label %.backedge.i.i

_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i: ; preds = %.noexc52.i.i, %bb.cp, %.noexc51.i.i, %.noexc41.i.i, %bb.cc, %.noexc40.i.i
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h3b60b4793e7fa7f8E"(ptr noalias noundef align 8 dereferenceable(40) %i.s)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !16418
  br label %.loopexit131.i

bb.cx:                                            ; preds = %.noexc15
  %i.qn = extractvalue { i32, i32 } %i.ej, 1
  %.sroa.258.sroa.6.0..sroa.258.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.258.sroa.6.0..sroa.258.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !16414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !16422
  store i8 1, ptr %0, align 8, !alias.scope !16414
  %.sroa.258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.258.0..sroa_idx.i, align 1, !alias.scope !16414
  %.sroa.258.sroa.3.0..sroa.258.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.qn, ptr %.sroa.258.sroa.3.0..sroa.258.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !16414
  %.sroa.258.sroa.4.0..sroa.258.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @144, ptr %.sroa.258.sroa.4.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !16414
  %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.258.sroa.5.0..sroa.258.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !16414
  br label %bb.da

bb.cy:                                            ; preds = %.loopexit131.i
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qp = load i32, ptr %i.qo, align 4, !alias.scope !16416
  %i.qq = icmp ne i32 %i.qp, 0
  %i.qr = zext i1 %i.qq to i8
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.val, i64 392
  store i8 %i.qr, ptr %i.qs, align 8, !alias.scope !16415
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.loopexit131.i
  store i8 3, ptr %0, align 8, !alias.scope !16414
  br label %bb.da

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %.noexc43, %bb.bh, %bb.bf, %.noexc40, %bb.be, %bb.bc, %.thread10.i.i.i, %bb.bb, %bb.ax, %bb.aw, %.noexc33, %bb.av, %bb.at, %.noexc30, %bb.as, %bb.aq, %.thread.i.i.i, %bb.ap, %bb.an, %bb.aa, %.invoke, %_ZN2h25proto7streams10prioritize10Prioritize26assign_connection_capacity17h7aaa7270715b6232E.exit.i, %bb.bn, %.thread.i.i, %bb.bm, %bb.ak, %.noexc22, %bb.aj, %bb.ah, %.noexc19, %bb.ag, %bb.ae, %.thread.i, %bb.ad
  %lpad.loopexit.split-lp62 = landingpad { ptr, i32 }
          cleanup
  br label %.body49
end_hunk_3
begin_hunk_4_@"_ZN59_$LT$rustls..error..Error$u20$as$u20$core..clone..Clone$GT$5clone17hb497f4a19cbda983E":bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  store i8 12, ptr %0, align 8
  br label %bb.fj

bb.fa:                                            ; preds = %bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ki, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1231)
  store i8 13, ptr %0, align 8
  br label %bb.fj

bb.fb:                                            ; preds = %bb.a
  store i8 14, ptr %0, align 8
  br label %bb.fj

bb.fc:                                            ; preds = %bb.a
  store i8 15, ptr %0, align 8
  br label %bb.fj

bb.fd:                                            ; preds = %bb.a
  store i8 16, ptr %0, align 8
  br label %bb.fj

bb.fe:                                            ; preds = %bb.a
  store i8 17, ptr %0, align 8
  br label %bb.fj

bb.ff:                                            ; preds = %bb.a
  store i8 18, ptr %0, align 8
  br label %bb.fj

bb.fg:                                            ; preds = %bb.a
  store i8 19, ptr %0, align 8
  br label %bb.fj

bb.fh:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.fj

bb.fi:                                            ; preds = %bb.a
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.kl = atomicrmw add ptr %i.kk, i64 1 monotonic, align 8
  %i.km = icmp slt i64 %i.kl, 0
  br i1 %i.km, label %bb.fl, label %bb.fk

bb.fj:                                            ; preds = %bb.fk, %bb.j, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %"_ZN77_$LT$rustls..error..CertRevocationListError$u20$as$u20$core..clone..Clone$GT$5clone17h8354d878f80b59cfE.exit", %"_ZN70_$LT$rustls..error..CertificateError$u20$as$u20$core..clone..Clone$GT$5clone17h174ee2e6167fe2eeE.exit", %bb.bt, %bb.bs, %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit", %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8017ed672b06d3bfE.exit", %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f177f7381c0d405E.exit"
  ret void

bb.fk:                                            ; preds = %bb.fi
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !45, !align !48, !noundef !45
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kk, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ko, ptr %i.kq, align 8
  store i8 21, ptr %0, align 8
  br label %bb.fj

bb.fl:                                            ; preds = %bb.fi
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h06d00bc8948266dfE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !45 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31441)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !31442
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31442 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31442 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31442 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !31442
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0bfcfaccd2c32b7bE.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter41 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !noalias !31443, !nonnull !45, !noundef !45 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !31412

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa32.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !31443, !nonnull !45, !noundef !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !31443, !nonnull !45, !noundef !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !noalias !31443, !nonnull !45, !noundef !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !noalias !31443, !nonnull !45, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !31443, !nonnull !45, !noundef !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !noalias !31443, !nonnull !45, !noundef !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !noalias !31443, !nonnull !45, !noundef !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !noalias !31443, !nonnull !45, !noundef !45 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.lcssa32.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !31444, !noundef !45 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i2.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h58e3d541ce271d2eE.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 3 uses
  %.sroa.0.03.i.i = phi ptr [ %i.ac, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.03.i.i) #38, !noalias !31445
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !31444, !noundef !45 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h58e3d541ce271d2eE.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h58e3d541ce271d2eE.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ac, %.lr.ph.i3.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.0.lcssa.i.i) #38, !noalias !31445
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0bfcfaccd2c32b7bE.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0bfcfaccd2c32b7bE.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h58e3d541ce271d2eE.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ae = add i64 %i.b, -1
  store i64 %i.ae, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31447)
  %i.af = load i64, ptr %1, align 8, !range !59, !alias.scope !31448, !noundef !45
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !31448, !noundef !45 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.aj, align 8, !alias.scope !31449
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !31449
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !31448, !noundef !45 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !31448, !nonnull !45, !noundef !45 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i2.prol ], [ %i.al, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 40
  %i.ao = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.an, align 8, !noalias !31450, !nonnull !45, !noundef !45 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !31424

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.al, %.lr.ph.i.i2.preheader ], [ %i.ao, %.lr.ph.i.i2.prol ]
  %i.ap = icmp ult i64 %i.al, 8
  br i1 %i.ap, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ay, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 40
  %.sroa.012.0.i.i = load ptr, ptr %i.aq, align 8, !noalias !31450, !nonnull !45, !noundef !45
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 40
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.ar, align 8, !noalias !31450, !nonnull !45, !noundef !45
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 40
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.as, align 8, !noalias !31450, !nonnull !45, !noundef !45
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 40
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.at, align 8, !noalias !31450, !nonnull !45, !noundef !45
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 40
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.au, align 8, !noalias !31450, !nonnull !45, !noundef !45
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 40
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.av, align 8, !noalias !31450, !nonnull !45, !noundef !45
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 40
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.aw, align 8, !noalias !31450, !nonnull !45, !noundef !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 40
  %i.ay = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.ax, align 8, !noalias !31450, !nonnull !45, !noundef !45 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ai, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31451)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 10
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !31452, !noundef !45
  %i.bc = zext i16 %i.bb to i64
  %i.bd = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.bc
  br i1 %i.bd, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i", %bb.i
  %.sroa.0.058.i.i.i.i = phi ptr [ %i.be, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i" ] ; 4 uses
  %.sroa.5.057.i.i.i.i = phi i64 [ %i.bw, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i" ]
  %i.be = load ptr, ptr %.sroa.0.058.i.i.i.i, align 8, !noalias !31453, !noundef !45 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bf = zext i16 %i.by to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i" ], [ %i.bf, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i" ], [ %i.bw, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h798a5765bf576131E.exit.i" ], [ %i.be, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bg = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bh = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bg, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17he1bf0e04fb7900e8E.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 40
  %i.bj = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %xtraiter38 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bl, %.prol.preheader ], [ %i.bk, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !31454, !nonnull !45, !noundef !45 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 40 ; 2 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31439

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bk, %bb.h ], [ %i.bl, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bm = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17he1bf0e04fb7900e8E.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bv, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !31454, !nonnull !45, !noundef !45
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 40
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bn, align 8, !noalias !31454, !nonnull !45, !noundef !45
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 40
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bo, align 8, !noalias !31454, !nonnull !45, !noundef !45
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 40
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.bp, align 8, !noalias !31454, !nonnull !45, !noundef !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 40
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bq, align 8, !noalias !31454, !nonnull !45, !noundef !45
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 40
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.br, align 8, !noalias !31454, !nonnull !45, !noundef !45
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 40
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bs, align 8, !noalias !31454, !nonnull !45, !noundef !45
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 40
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bt, align 8, !noalias !31454, !nonnull !45, !noundef !45 ; 2 uses
  %i.bu = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 40
  br i1 %i.bu, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17he1bf0e04fb7900e8E.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = add i64 %.sroa.5.057.i.i.i.i, 1         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 8
  %i.by = load i16, ptr %i.bx, align 8, !noalias !31453 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31455
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !31452, !noundef !45
  %i.cb = icmp ult i16 %i.by, %i.ca
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31455
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1236) #43
          to label %.noexc.i.i unwind label %bb.k, !noalias !31456

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1237) #43, !noalias !31457
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17he1bf0e04fb7900e8E.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bh, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.ah, align 8, !alias.scope !31449
  store i64 0, ptr %i.aj, align 8, !alias.scope !31449
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !31449
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17he1bf0e04fb7900e8E.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0bfcfaccd2c32b7bE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h0f14957f4f1c27edE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !45 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31494)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !31495
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31495 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31495 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31495 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !31495
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17he0d1564b0e333ca5E.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter41 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !noalias !31496, !nonnull !45, !noundef !45 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !31465

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa32.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !noalias !31496, !nonnull !45, !noundef !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %i.m = load ptr, ptr %i.l, align 8, !noalias !31496, !nonnull !45, !noundef !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !noalias !31496, !nonnull !45, !noundef !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !noalias !31496, !nonnull !45, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.s = load ptr, ptr %i.r, align 8, !noalias !31496, !nonnull !45, !noundef !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 368
  %i.u = load ptr, ptr %i.t, align 8, !noalias !31496, !nonnull !45, !noundef !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !noalias !31496, !nonnull !45, !noundef !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.y = load ptr, ptr %i.x, align 8, !noalias !31496, !nonnull !45, !noundef !45 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.lcssa32.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !31497, !noundef !45 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i2.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h7cc9e66e49713191E.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 3 uses
  %.sroa.0.03.i.i = phi ptr [ %i.ac, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.03.i.i) #38, !noalias !31498
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !31497, !noundef !45 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h7cc9e66e49713191E.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h7cc9e66e49713191E.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ac, %.lr.ph.i3.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.0.lcssa.i.i) #38, !noalias !31498
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17he0d1564b0e333ca5E.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17he0d1564b0e333ca5E.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h7cc9e66e49713191E.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ae = add i64 %i.b, -1
  store i64 %i.ae, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31500)
  %i.af = load i64, ptr %1, align 8, !range !59, !alias.scope !31501, !noundef !45
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !31501, !noundef !45 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.aj, align 8, !alias.scope !31502
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !31502
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !31501, !noundef !45 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !31501, !nonnull !45, !noundef !45 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i2.prol ], [ %i.al, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 368
  %i.ao = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.an, align 8, !noalias !31503, !nonnull !45, !noundef !45 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !31477

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.al, %.lr.ph.i.i2.preheader ], [ %i.ao, %.lr.ph.i.i2.prol ]
  %i.ap = icmp ult i64 %i.al, 8
  br i1 %i.ap, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ay, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 368
  %.sroa.012.0.i.i = load ptr, ptr %i.aq, align 8, !noalias !31503, !nonnull !45, !noundef !45
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 368
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.ar, align 8, !noalias !31503, !nonnull !45, !noundef !45
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 368
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.as, align 8, !noalias !31503, !nonnull !45, !noundef !45
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 368
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.at, align 8, !noalias !31503, !nonnull !45, !noundef !45
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 368
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.au, align 8, !noalias !31503, !nonnull !45, !noundef !45
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 368
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.av, align 8, !noalias !31503, !nonnull !45, !noundef !45
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 368
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.aw, align 8, !noalias !31503, !nonnull !45, !noundef !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 368
  %i.ay = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.ax, align 8, !noalias !31503, !nonnull !45, !noundef !45 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ai, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31504)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 362
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !31505, !noundef !45
  %i.bc = zext i16 %i.bb to i64
  %i.bd = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.bc
  br i1 %i.bd, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i", %bb.i
  %.sroa.0.058.i.i.i.i = phi ptr [ %i.be, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i" ] ; 4 uses
  %.sroa.5.057.i.i.i.i = phi i64 [ %i.bw, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i" ]
  %i.be = load ptr, ptr %.sroa.0.058.i.i.i.i, align 8, !noalias !31506, !noundef !45 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bf = zext i16 %i.by to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i" ], [ %i.bf, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i" ], [ %i.bw, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h65b0c585aebc59e9E.exit.i" ], [ %i.be, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bg = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bh = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bg, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hc293cd55b543b860E.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 368
  %i.bj = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %xtraiter38 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bl, %.prol.preheader ], [ %i.bk, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !31507, !nonnull !45, !noundef !45 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31492

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bk, %bb.h ], [ %i.bl, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bm = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hc293cd55b543b860E.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bv, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !31507, !nonnull !45, !noundef !45
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 368
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bn, align 8, !noalias !31507, !nonnull !45, !noundef !45
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 368
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bo, align 8, !noalias !31507, !nonnull !45, !noundef !45
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 368
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.bp, align 8, !noalias !31507, !nonnull !45, !noundef !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 368
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bq, align 8, !noalias !31507, !nonnull !45, !noundef !45
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 368
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.br, align 8, !noalias !31507, !nonnull !45, !noundef !45
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 368
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bs, align 8, !noalias !31507, !nonnull !45, !noundef !45
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 368
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bt, align 8, !noalias !31507, !nonnull !45, !noundef !45 ; 2 uses
  %i.bu = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 368
  br i1 %i.bu, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hc293cd55b543b860E.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = add i64 %.sroa.5.057.i.i.i.i, 1         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 360
  %i.by = load i16, ptr %i.bx, align 8, !noalias !31506 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31508
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 362
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !31505, !noundef !45
  %i.cb = icmp ult i16 %i.by, %i.ca
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31508
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1236) #43
          to label %.noexc.i.i unwind label %bb.k, !noalias !31509

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1237) #43, !noalias !31510
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hc293cd55b543b860E.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bh, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.ah, align 8, !alias.scope !31502
  store i64 0, ptr %i.aj, align 8, !alias.scope !31502
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !31502
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hc293cd55b543b860E.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17he0d1564b0e333ca5E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h6f54dc1c1a427e95E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !45 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31547)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !31548
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31548 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31548 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31548 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !31548
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h291922acf64fe13fE.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter41 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !noalias !31549, !nonnull !45, !noundef !45 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !31518

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa32.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 280
  %i.k = load ptr, ptr %i.j, align 8, !noalias !31549, !nonnull !45, !noundef !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !noalias !31549, !nonnull !45, !noundef !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.o = load ptr, ptr %i.n, align 8, !noalias !31549, !nonnull !45, !noundef !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8, !noalias !31549, !nonnull !45, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !noalias !31549, !nonnull !45, !noundef !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !noalias !31549, !nonnull !45, !noundef !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %i.w = load ptr, ptr %i.v, align 8, !noalias !31549, !nonnull !45, !noundef !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.y = load ptr, ptr %i.x, align 8, !noalias !31549, !nonnull !45, !noundef !45 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.lcssa32.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !31550, !noundef !45 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i2.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h4904f9b837b8c01eE.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 3 uses
  %.sroa.0.03.i.i = phi ptr [ %i.ac, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.03.i.i) #38, !noalias !31551
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !31550, !noundef !45 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h4904f9b837b8c01eE.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h4904f9b837b8c01eE.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ac, %.lr.ph.i3.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.0.lcssa.i.i) #38, !noalias !31551
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h291922acf64fe13fE.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h291922acf64fe13fE.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h4904f9b837b8c01eE.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ae = add i64 %i.b, -1
  store i64 %i.ae, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31553)
  %i.af = load i64, ptr %1, align 8, !range !59, !alias.scope !31554, !noundef !45
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !31554, !noundef !45 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.aj, align 8, !alias.scope !31555
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !31555
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !31554, !noundef !45 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !31554, !nonnull !45, !noundef !45 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i2.prol ], [ %i.al, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 280
  %i.ao = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.an, align 8, !noalias !31556, !nonnull !45, !noundef !45 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !31530

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.al, %.lr.ph.i.i2.preheader ], [ %i.ao, %.lr.ph.i.i2.prol ]
  %i.ap = icmp ult i64 %i.al, 8
  br i1 %i.ap, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ay, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 280
  %.sroa.012.0.i.i = load ptr, ptr %i.aq, align 8, !noalias !31556, !nonnull !45, !noundef !45
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 280
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.ar, align 8, !noalias !31556, !nonnull !45, !noundef !45
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 280
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.as, align 8, !noalias !31556, !nonnull !45, !noundef !45
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 280
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.at, align 8, !noalias !31556, !nonnull !45, !noundef !45
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 280
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.au, align 8, !noalias !31556, !nonnull !45, !noundef !45
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 280
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.av, align 8, !noalias !31556, !nonnull !45, !noundef !45
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 280
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.aw, align 8, !noalias !31556, !nonnull !45, !noundef !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 280
  %i.ay = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.ax, align 8, !noalias !31556, !nonnull !45, !noundef !45 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ai, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31557)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 274
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !31558, !noundef !45
  %i.bc = zext i16 %i.bb to i64
  %i.bd = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.bc
  br i1 %i.bd, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i", %bb.i
  %.sroa.0.058.i.i.i.i = phi ptr [ %i.be, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i" ] ; 4 uses
  %.sroa.5.057.i.i.i.i = phi i64 [ %i.bw, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i" ]
  %i.be = load ptr, ptr %.sroa.0.058.i.i.i.i, align 8, !noalias !31559, !noundef !45 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bf = zext i16 %i.by to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i" ], [ %i.bf, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i" ], [ %i.bw, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2555420cac67de22E.exit.i" ], [ %i.be, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bg = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bh = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bg, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hddae8e290a75ccbeE.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 280
  %i.bj = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %xtraiter38 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bl, %.prol.preheader ], [ %i.bk, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !31560, !nonnull !45, !noundef !45 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31545

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bk, %bb.h ], [ %i.bl, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bm = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hddae8e290a75ccbeE.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bv, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !31560, !nonnull !45, !noundef !45
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bn, align 8, !noalias !31560, !nonnull !45, !noundef !45
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bo, align 8, !noalias !31560, !nonnull !45, !noundef !45
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.bp, align 8, !noalias !31560, !nonnull !45, !noundef !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bq, align 8, !noalias !31560, !nonnull !45, !noundef !45
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.br, align 8, !noalias !31560, !nonnull !45, !noundef !45
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bs, align 8, !noalias !31560, !nonnull !45, !noundef !45
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bt, align 8, !noalias !31560, !nonnull !45, !noundef !45 ; 2 uses
  %i.bu = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 280
  br i1 %i.bu, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hddae8e290a75ccbeE.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = add i64 %.sroa.5.057.i.i.i.i, 1         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 272
  %i.by = load i16, ptr %i.bx, align 8, !noalias !31559 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31561
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 274
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !31558, !noundef !45
  %i.cb = icmp ult i16 %i.by, %i.ca
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31561
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1236) #43
          to label %.noexc.i.i unwind label %bb.k, !noalias !31562

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1237) #43, !noalias !31563
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hddae8e290a75ccbeE.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bh, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.ah, align 8, !alias.scope !31555
  store i64 0, ptr %i.aj, align 8, !alias.scope !31555
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !31555
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hddae8e290a75ccbeE.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h291922acf64fe13fE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hcb2c73868090f98eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !45 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31600)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !31601
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31601 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31601 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31601 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !31601
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0e0d7bccf5158e1dE.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter41 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 984
  %i.g = load ptr, ptr %i.f, align 8, !noalias !31602, !nonnull !45, !noundef !45 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !31571

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa32.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 984
  %i.k = load ptr, ptr %i.j, align 8, !noalias !31602, !nonnull !45, !noundef !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 984
  %i.m = load ptr, ptr %i.l, align 8, !noalias !31602, !nonnull !45, !noundef !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 984
  %i.o = load ptr, ptr %i.n, align 8, !noalias !31602, !nonnull !45, !noundef !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 984
  %i.q = load ptr, ptr %i.p, align 8, !noalias !31602, !nonnull !45, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 984
  %i.s = load ptr, ptr %i.r, align 8, !noalias !31602, !nonnull !45, !noundef !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 984
  %i.u = load ptr, ptr %i.t, align 8, !noalias !31602, !nonnull !45, !noundef !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 984
  %i.w = load ptr, ptr %i.v, align 8, !noalias !31602, !nonnull !45, !noundef !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 984
  %i.y = load ptr, ptr %i.x, align 8, !noalias !31602, !nonnull !45, !noundef !45 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.lcssa32.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !31603, !noundef !45 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i2.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h2f0717d3b821a9a3E.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.03.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.03.i.i) #38, !noalias !31604
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !31603, !noundef !45 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h2f0717d3b821a9a3E.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h2f0717d3b821a9a3E.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.0.lcssa.i.i) #38, !noalias !31604
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0e0d7bccf5158e1dE.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0e0d7bccf5158e1dE.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h2f0717d3b821a9a3E.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31606)
  %i.ah = load i64, ptr %1, align 8, !range !59, !alias.scope !31607, !noundef !45
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !31607, !noundef !45 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !31608
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !31608
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !31607, !noundef !45 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.al, align 8, !alias.scope !31607, !nonnull !45, !noundef !45 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 984
  %i.aq = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !31609, !nonnull !45, !noundef !45 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !31583

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 984
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !31609, !nonnull !45, !noundef !45
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 984
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !31609, !nonnull !45, !noundef !45
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 984
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !31609, !nonnull !45, !noundef !45
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 984
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !31609, !nonnull !45, !noundef !45
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 984
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !31609, !nonnull !45, !noundef !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 984
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !31609, !nonnull !45, !noundef !45
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 984
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !31609, !nonnull !45, !noundef !45
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 984
  %i.ba = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !31609, !nonnull !45, !noundef !45 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ak, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31610)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 978
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !31611, !noundef !45
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i", %bb.i
  %.sroa.0.058.i.i.i.i = phi ptr [ %i.bh, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i" ] ; 4 uses
  %.sroa.5.057.i.i.i.i = phi i64 [ %i.bz, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i" ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !31612, !noundef !45 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bi = zext i16 %i.cb to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i" ], [ %i.bi, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i" ], [ %i.bz, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he9f0da3e3377fe03E.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bj = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bk = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bj, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h24a6740d442c9a45E.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 984
  %i.bm = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  %xtraiter38 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bo, %.prol.preheader ], [ %i.bn, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !31613, !nonnull !45, !noundef !45 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 984 ; 2 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31598

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bn, %bb.h ], [ %i.bo, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bp = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h24a6740d442c9a45E.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.by, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !31613, !nonnull !45, !noundef !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 984
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bq, align 8, !noalias !31613, !nonnull !45, !noundef !45
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 984
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.br, align 8, !noalias !31613, !nonnull !45, !noundef !45
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 984
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.bs, align 8, !noalias !31613, !nonnull !45, !noundef !45
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 984
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bt, align 8, !noalias !31613, !nonnull !45, !noundef !45
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 984
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bu, align 8, !noalias !31613, !nonnull !45, !noundef !45
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 984
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bv, align 8, !noalias !31613, !nonnull !45, !noundef !45
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 984
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bw, align 8, !noalias !31613, !nonnull !45, !noundef !45 ; 2 uses
  %i.bx = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 984
  br i1 %i.bx, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h24a6740d442c9a45E.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = add i64 %.sroa.5.057.i.i.i.i, 1         ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 976
  %i.cb = load i16, ptr %i.ca, align 8, !noalias !31612 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31614
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 978
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !31611, !noundef !45
  %i.ce = icmp ult i16 %i.cb, %i.cd
  br i1 %i.ce, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31614
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1236) #43
          to label %.noexc.i.i unwind label %bb.k, !noalias !31615

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1237) #43, !noalias !31616
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h24a6740d442c9a45E.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bk, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !31608
  store i64 0, ptr %i.al, align 8, !alias.scope !31608
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !31608
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h24a6740d442c9a45E.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0e0d7bccf5158e1dE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf7f7621f73d794caE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !45 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31653)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !31654
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31654 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31654 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31654 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !31654
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h4a3d6467d544c2d2E.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter41 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 456
  %i.g = load ptr, ptr %i.f, align 8, !noalias !31655, !nonnull !45, !noundef !45 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !31624

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa32.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 456
  %i.k = load ptr, ptr %i.j, align 8, !noalias !31655, !nonnull !45, !noundef !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 456
  %i.m = load ptr, ptr %i.l, align 8, !noalias !31655, !nonnull !45, !noundef !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 456
  %i.o = load ptr, ptr %i.n, align 8, !noalias !31655, !nonnull !45, !noundef !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  %i.q = load ptr, ptr %i.p, align 8, !noalias !31655, !nonnull !45, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  %i.s = load ptr, ptr %i.r, align 8, !noalias !31655, !nonnull !45, !noundef !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  %i.u = load ptr, ptr %i.t, align 8, !noalias !31655, !nonnull !45, !noundef !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.w = load ptr, ptr %i.v, align 8, !noalias !31655, !nonnull !45, !noundef !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 456
  %i.y = load ptr, ptr %i.x, align 8, !noalias !31655, !nonnull !45, !noundef !45 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.lcssa32.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !31656, !noundef !45 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i2.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h45970f93261e575fE.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.03.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.03.i.i) #38, !noalias !31657
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !31656, !noundef !45 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h45970f93261e575fE.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h45970f93261e575fE.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.0.lcssa.i.i) #38, !noalias !31657
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h4a3d6467d544c2d2E.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h4a3d6467d544c2d2E.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h45970f93261e575fE.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31659)
  %i.ah = load i64, ptr %1, align 8, !range !59, !alias.scope !31660, !noundef !45
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !31660, !noundef !45 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !31661
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !31661
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !31660, !noundef !45 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.al, align 8, !alias.scope !31660, !nonnull !45, !noundef !45 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 456
  %i.aq = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !31662, !nonnull !45, !noundef !45 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !31636

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 456
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !31662, !nonnull !45, !noundef !45
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 456
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !31662, !nonnull !45, !noundef !45
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 456
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !31662, !nonnull !45, !noundef !45
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 456
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !31662, !nonnull !45, !noundef !45
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 456
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !31662, !nonnull !45, !noundef !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 456
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !31662, !nonnull !45, !noundef !45
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 456
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !31662, !nonnull !45, !noundef !45
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 456
  %i.ba = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !31662, !nonnull !45, !noundef !45 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ak, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31663)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 450
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !31664, !noundef !45
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i", %bb.i
  %.sroa.0.058.i.i.i.i = phi ptr [ %i.bh, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i" ] ; 4 uses
  %.sroa.5.057.i.i.i.i = phi i64 [ %i.bz, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i" ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !31665, !noundef !45 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bi = zext i16 %i.cb to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i" ], [ %i.bi, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i" ], [ %i.bz, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he1cfcb2262be287bE.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bj = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bk = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bj, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h16040b241adc0723E.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 456
  %i.bm = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  %xtraiter38 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bo, %.prol.preheader ], [ %i.bn, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !31666, !nonnull !45, !noundef !45 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 456 ; 2 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31651

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bn, %bb.h ], [ %i.bo, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bp = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h16040b241adc0723E.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.by, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !31666, !nonnull !45, !noundef !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 456
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bq, align 8, !noalias !31666, !nonnull !45, !noundef !45
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 456
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.br, align 8, !noalias !31666, !nonnull !45, !noundef !45
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 456
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.bs, align 8, !noalias !31666, !nonnull !45, !noundef !45
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 456
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bt, align 8, !noalias !31666, !nonnull !45, !noundef !45
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 456
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bu, align 8, !noalias !31666, !nonnull !45, !noundef !45
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 456
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bv, align 8, !noalias !31666, !nonnull !45, !noundef !45
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 456
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bw, align 8, !noalias !31666, !nonnull !45, !noundef !45 ; 2 uses
  %i.bx = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 456
  br i1 %i.bx, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h16040b241adc0723E.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = add i64 %.sroa.5.057.i.i.i.i, 1         ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 448
  %i.cb = load i16, ptr %i.ca, align 8, !noalias !31665 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31667
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 450
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !31664, !noundef !45
  %i.ce = icmp ult i16 %i.cb, %i.cd
  br i1 %i.ce, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31667
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1236) #43
          to label %.noexc.i.i unwind label %bb.k, !noalias !31668

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1237) #43, !noalias !31669
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h16040b241adc0723E.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bk, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !31661
  store i64 0, ptr %i.al, align 8, !alias.scope !31661
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !31661
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h16040b241adc0723E.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h4a3d6467d544c2d2E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hfdca6ffc91baf815E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !45 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31706)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !31707
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31707 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31707 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31707 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !31707
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h11d6ce416886ca56E.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter41 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 2920
  %i.g = load ptr, ptr %i.f, align 8, !noalias !31708, !nonnull !45, !noundef !45 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !31677

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa32.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 2920
  %i.k = load ptr, ptr %i.j, align 8, !noalias !31708, !nonnull !45, !noundef !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2920
  %i.m = load ptr, ptr %i.l, align 8, !noalias !31708, !nonnull !45, !noundef !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2920
  %i.o = load ptr, ptr %i.n, align 8, !noalias !31708, !nonnull !45, !noundef !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2920
  %i.q = load ptr, ptr %i.p, align 8, !noalias !31708, !nonnull !45, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2920
  %i.s = load ptr, ptr %i.r, align 8, !noalias !31708, !nonnull !45, !noundef !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2920
  %i.u = load ptr, ptr %i.t, align 8, !noalias !31708, !nonnull !45, !noundef !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2920
  %i.w = load ptr, ptr %i.v, align 8, !noalias !31708, !nonnull !45, !noundef !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2920
  %i.y = load ptr, ptr %i.x, align 8, !noalias !31708, !nonnull !45, !noundef !45 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.lcssa32.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2640
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !31709, !noundef !45 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i2.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h9c840b79536dd532E.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.03.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.03.i.i) #38, !noalias !31710
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2640
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !31709, !noundef !45 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h9c840b79536dd532E.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h9c840b79536dd532E.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.0.lcssa.i.i) #38, !noalias !31710
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h11d6ce416886ca56E.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h11d6ce416886ca56E.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h9c840b79536dd532E.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31712)
  %i.ah = load i64, ptr %1, align 8, !range !59, !alias.scope !31713, !noundef !45
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !31713, !noundef !45 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !31714
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !31714
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !31713, !noundef !45 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.al, align 8, !alias.scope !31713, !nonnull !45, !noundef !45 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 2920
  %i.aq = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !31715, !nonnull !45, !noundef !45 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !31689

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 2920
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !31715, !nonnull !45, !noundef !45
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 2920
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !31715, !nonnull !45, !noundef !45
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 2920
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !31715, !nonnull !45, !noundef !45
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 2920
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !31715, !nonnull !45, !noundef !45
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 2920
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !31715, !nonnull !45, !noundef !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 2920
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !31715, !nonnull !45, !noundef !45
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 2920
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !31715, !nonnull !45, !noundef !45
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 2920
  %i.ba = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !31715, !nonnull !45, !noundef !45 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ak, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31716)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 2914
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !31717, !noundef !45
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i", %bb.i
  %.sroa.0.058.i.i.i.i = phi ptr [ %i.bh, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i" ] ; 4 uses
  %.sroa.5.057.i.i.i.i = phi i64 [ %i.bz, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i" ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 2640
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !31718, !noundef !45 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bi = zext i16 %i.cb to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i" ], [ %i.bi, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i" ], [ %i.bz, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb5faaa94c9aa755dE.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bj = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bk = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bj, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hbc77a00aa15350e7E.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 2920
  %i.bm = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  %xtraiter38 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bo, %.prol.preheader ], [ %i.bn, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !31719, !nonnull !45, !noundef !45 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 2920 ; 2 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31704

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bn, %bb.h ], [ %i.bo, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bp = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hbc77a00aa15350e7E.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.by, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !31719, !nonnull !45, !noundef !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 2920
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bq, align 8, !noalias !31719, !nonnull !45, !noundef !45
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 2920
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.br, align 8, !noalias !31719, !nonnull !45, !noundef !45
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 2920
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.bs, align 8, !noalias !31719, !nonnull !45, !noundef !45
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 2920
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bt, align 8, !noalias !31719, !nonnull !45, !noundef !45
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 2920
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bu, align 8, !noalias !31719, !nonnull !45, !noundef !45
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 2920
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bv, align 8, !noalias !31719, !nonnull !45, !noundef !45
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 2920
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bw, align 8, !noalias !31719, !nonnull !45, !noundef !45 ; 2 uses
  %i.bx = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 2920
  br i1 %i.bx, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hbc77a00aa15350e7E.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = add i64 %.sroa.5.057.i.i.i.i, 1         ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 2912
  %i.cb = load i16, ptr %i.ca, align 8, !noalias !31718 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31720
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 2914
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !31717, !noundef !45
  %i.ce = icmp ult i16 %i.cb, %i.cd
  br i1 %i.ce, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !31720
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1236) #43
          to label %.noexc.i.i unwind label %bb.k, !noalias !31721

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1237) #43, !noalias !31722
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hbc77a00aa15350e7E.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bk, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !31714
  store i64 0, ptr %i.al, align 8, !alias.scope !31714
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !31714
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hbc77a00aa15350e7E.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h11d6ce416886ca56E.exit"
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h4191e58517461e8bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !45 ; 4 uses
  tail call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h805ee70502373705E"(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31725)
  %i.b = load i64, ptr %0, align 8, !range !46, !alias.scope !31725, !noundef !45 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !31725, !noundef !45 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !31725, !noundef !45 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %.not.i = icmp ugt i64 %i.d, %i.g
  br i1 %.not.i, label %bb.b, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit"

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.d                       ; 4 uses
  %i.i = sub i64 %i.f, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not3.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not3.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !31725, !nonnull !45, !noundef !45 ; 2 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.d
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.l
  %i.q = mul i64 %i.h, 88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !31725
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !31725
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit"

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !31725, !nonnull !45, !noundef !45 ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %i.a
  %i.u = mul i64 %i.i, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !31725
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit": ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(408) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hbde4888c4ecb5a86E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.14.i.i.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %.sroa.4.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0.i.i.i = alloca [32 x i8], align 8      ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.9.i.i = alloca [55 x i8], align 1        ; 4 uses
  %.sroa.11.i.i = alloca [72 x i8], align 8       ; 4 uses
  %.sroa.12.i.i = alloca [48 x i8], align 8       ; 4 uses
  %.sroa.13.i.i = alloca [48 x i8], align 8       ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = load ptr, ptr %0, align 8, !nonnull !45, !noundef !45 ; 40 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !45
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.b, label %bb.c
end_hunk_4
