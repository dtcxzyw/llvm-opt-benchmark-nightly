Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.03?download=true
inline.NumInlined: 416
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs7BtpbLEd5q3_9elfshaker4main:bb.a
  %i.bg = alloca [24 x i8], align 8               ; 14 uses
  %i.bh = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.6.i.i19 = alloca [24 x i8], align 8      ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = alloca [56 x i8], align 8               ; 5 uses
  %i.bk = alloca [56 x i8], align 8               ; 6 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [56 x i8], align 8               ; 4 uses
  %i.bo = alloca [40 x i8], align 8               ; 4 uses
  %i.bp = alloca [40 x i8], align 8               ; 4 uses
  %i.bq = alloca [56 x i8], align 8               ; 6 uses
  %i.br = alloca [40 x i8], align 8               ; 8 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [56 x i8], align 8               ; 8 uses
  %i.bu = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.623.i.i = alloca [24 x i8], align 8      ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 13 uses
  %i.bx = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.65.i.i = alloca [56 x i8], align 8       ; 7 uses
  %i.by = alloca [80 x i8], align 8               ; 10 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [32 x i8], align 8               ; 4 uses
  %i.cb = alloca [712 x i8], align 8              ; 48 uses
  %i.cc = alloca [24 x i8], align 8               ; 4 uses
  %i.cd = alloca [24 x i8], align 8               ; 5 uses
  %i.ce = alloca [24 x i8], align 8               ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 5 uses
  %i.cg = alloca [48 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 4 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 4 uses
  %i.ck = alloca [24 x i8], align 8               ; 4 uses
  %i.cl = alloca [24 x i8], align 8               ; 4 uses
  %i.cm = alloca [24 x i8], align 8               ; 4 uses
  %i.cn = alloca [24 x i8], align 8               ; 4 uses
  %i.co = alloca [24 x i8], align 8               ; 4 uses
  %i.cp = alloca [24 x i8], align 8               ; 4 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 4 uses
  %i.cs = alloca [24 x i8], align 8               ; 4 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [24 x i8], align 8               ; 5 uses
  %i.cv = alloca [24 x i8], align 8               ; 5 uses
  %i.cw = alloca [48 x i8], align 8               ; 6 uses
  %i.cx = alloca [24 x i8], align 8               ; 6 uses
  %i.cy = alloca [24 x i8], align 8               ; 6 uses
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 6 uses
  %i.db = alloca [24 x i8], align 8               ; 5 uses
  %i.dc = alloca [24 x i8], align 8               ; 5 uses
  %i.dd = alloca [24 x i8], align 8               ; 5 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [24 x i8], align 8               ; 6 uses
  %i.dg = alloca [24 x i8], align 8               ; 6 uses
  %i.dh = alloca [24 x i8], align 8               ; 6 uses
  %i.di = alloca [24 x i8], align 8               ; 6 uses
  %i.dj = alloca [24 x i8], align 8               ; 6 uses
  %i.dk = alloca [24 x i8], align 8               ; 6 uses
  %i.dl = alloca [24 x i8], align 8               ; 6 uses
  %i.dm = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i72.i = alloca [16 x i8], align 8      ; 5 uses
  %i.dn = alloca [24 x i8], align 8               ; 5 uses
  %i.do = alloca [16 x i8], align 8               ; 5 uses
  %i.dp = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.dq = alloca [712 x i8], align 8              ; 4 uses
  %i.dr = alloca [712 x i8], align 8              ; 4 uses
  %i.ds = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i.i41.i = alloca [16 x i8], align 8    ; 5 uses
  %i.dt = alloca [640 x i8], align 8              ; 7 uses
  %i.du = alloca [640 x i8], align 8              ; 8 uses
  %i.dv = alloca [640 x i8], align 8              ; 4 uses
  %i.dw = alloca [712 x i8], align 8              ; 4 uses
  %i.dx = alloca [712 x i8], align 8              ; 5 uses
  %i.dy = alloca [712 x i8], align 8              ; 4 uses
  %i.dz = alloca [712 x i8], align 8              ; 4 uses
  %i.ea = alloca [712 x i8], align 8              ; 4 uses
  %i.eb = alloca [712 x i8], align 8              ; 4 uses
  %i.ec = alloca [712 x i8], align 8              ; 4 uses
  %i.ed = alloca [712 x i8], align 8              ; 4 uses
  %i.ee = alloca [712 x i8], align 8              ; 4 uses
  %i.ef = alloca [712 x i8], align 8              ; 4 uses
  %i.eg = alloca [712 x i8], align 8              ; 4 uses
  %i.eh = alloca [712 x i8], align 8              ; 4 uses
  %i.ei = alloca [712 x i8], align 8              ; 4 uses
  %i.ej = alloca [712 x i8], align 8              ; 4 uses
  %i.ek = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i109.i.i = alloca [16 x i8], align 8   ; 5 uses
  %i.el = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i97.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.em = alloca [16 x i8], align 8               ; 5 uses
  %i.en = alloca [640 x i8], align 8              ; 4 uses
  %i.eo = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i76.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.ep = alloca [16 x i8], align 8               ; 5 uses
  %i.eq = alloca [640 x i8], align 8              ; 4 uses
  %i.er = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i55.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.es = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i40.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.et = alloca [24 x i8], align 8               ; 4 uses
  %i.eu = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i22.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.ev = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.ew = alloca [16 x i8], align 8               ; 5 uses
  %i.ex = alloca [640 x i8], align 8              ; 4 uses
  %i.ey = alloca [640 x i8], align 8              ; 6 uses
  %i.ez = alloca [640 x i8], align 8              ; 8 uses
  %i.fa = alloca [640 x i8], align 8              ; 4 uses
  %i.fb = alloca [640 x i8], align 8              ; 7 uses
  %i.fc = alloca [640 x i8], align 8              ; 7 uses
  %i.fd = alloca [640 x i8], align 8              ; 9 uses
  %i.fe = alloca [640 x i8], align 8              ; 4 uses
  %i.ff = alloca [640 x i8], align 8              ; 7 uses
  %i.fg = alloca [640 x i8], align 8              ; 7 uses
  %i.fh = alloca [640 x i8], align 8              ; 9 uses
  %i.fi = alloca [640 x i8], align 8              ; 4 uses
  %i.fj = alloca [640 x i8], align 8              ; 7 uses
  %i.fk = alloca [640 x i8], align 8              ; 8 uses
  %i.fl = alloca [640 x i8], align 8              ; 4 uses
  %i.fm = alloca [640 x i8], align 8              ; 4 uses
  %i.fn = alloca [16 x i8], align 8               ; 5 uses
  %i.fo = alloca [8 x i8], align 8                ; 4 uses
  %i.fp = alloca [24 x i8], align 8               ; 4 uses
  %i.fq = alloca [640 x i8], align 8              ; 7 uses
  %i.fr = alloca [640 x i8], align 8              ; 9 uses
  %i.fs = alloca [640 x i8], align 8              ; 4 uses
  %i.ft = alloca [640 x i8], align 8              ; 5 uses
  %i.fu = alloca [640 x i8], align 8              ; 5 uses
  %i.fv = alloca [640 x i8], align 8              ; 7 uses
  %i.fw = alloca [640 x i8], align 8              ; 8 uses
  %i.fx = alloca [640 x i8], align 8              ; 4 uses
  %i.fy = alloca [640 x i8], align 8              ; 4 uses
  %i.fz = alloca [640 x i8], align 8              ; 8 uses
  %i.ga = alloca [640 x i8], align 8              ; 6 uses
  %i.gb = alloca [640 x i8], align 8              ; 9 uses
  %i.gc = alloca [640 x i8], align 8              ; 4 uses
  %i.gd = alloca [712 x i8], align 8              ; 4 uses
  %i.ge = alloca [712 x i8], align 8              ; 5 uses
  %i.gf = alloca [712 x i8], align 8              ; 5 uses
  %i.gg = alloca [712 x i8], align 8              ; 5 uses
  %i.gh = alloca [712 x i8], align 8              ; 5 uses
  %i.gi = alloca [712 x i8], align 8              ; 5 uses
  %i.gj = alloca [712 x i8], align 8              ; 5 uses
  %i.gk = alloca [712 x i8], align 8              ; 5 uses
  %i.gl = alloca [12 x i8], align 4               ; 4 uses
  %i.gm = alloca [712 x i8], align 8              ; 4 uses
  %i.gn = alloca [712 x i8], align 8              ; 4 uses
  %i.go = alloca [712 x i8], align 8              ; 4 uses
  %i.gp = alloca [712 x i8], align 8              ; 4 uses
  %i.gq = alloca [712 x i8], align 8              ; 4 uses
  %i.gr = alloca [712 x i8], align 8              ; 4 uses
  %i.gs = alloca [712 x i8], align 8              ; 4 uses
  %i.gt = alloca [712 x i8], align 8              ; 4 uses
  %i.gu = alloca [712 x i8], align 8              ; 4 uses
  %i.gv = alloca [712 x i8], align 8              ; 4 uses
  %i.gw = alloca [640 x i8], align 8              ; 7 uses
  %i.gx = alloca [640 x i8], align 8              ; 10 uses
  %i.gy = alloca [640 x i8], align 8              ; 9 uses
  %i.gz = alloca [640 x i8], align 8              ; 4 uses
  %i.ha = alloca [640 x i8], align 8              ; 5 uses
  %i.hb = alloca [640 x i8], align 8              ; 7 uses
  %i.hc = alloca [640 x i8], align 8              ; 10 uses
  %i.hd = alloca [640 x i8], align 8              ; 7 uses
  %i.he = alloca [712 x i8], align 8              ; 4 uses
  %i.hf = alloca [712 x i8], align 8              ; 4 uses
  %i.hg = alloca [712 x i8], align 8              ; 4 uses
  %i.hh = alloca [712 x i8], align 8              ; 4 uses
  %i.hi = alloca [712 x i8], align 8              ; 4 uses
  %i.hj = alloca [712 x i8], align 8              ; 4 uses
  %i.hk = alloca [712 x i8], align 8              ; 4 uses
  %i.hl = alloca [712 x i8], align 8              ; 4 uses
  %i.hm = alloca [712 x i8], align 8              ; 4 uses
  %i.hn = alloca [712 x i8], align 8              ; 4 uses
  %i.ho = alloca [712 x i8], align 8              ; 4 uses
  %i.hp = alloca [712 x i8], align 8              ; 4 uses
  %i.hq = alloca [712 x i8], align 8              ; 4 uses
  %i.hr = alloca [712 x i8], align 8              ; 4 uses
  %i.hs = alloca [712 x i8], align 8              ; 5 uses
  %i.ht = alloca [712 x i8], align 8              ; 5 uses
  %i.hu = alloca [712 x i8], align 8              ; 5 uses
  %i.hv = alloca [712 x i8], align 8              ; 5 uses
  %i.hw = alloca [712 x i8], align 8              ; 5 uses
  %i.hx = alloca [712 x i8], align 8              ; 5 uses
  %i.hy = alloca [712 x i8], align 8              ; 5 uses
  %i.hz = alloca [712 x i8], align 8              ; 5 uses
  %i.ia = alloca [712 x i8], align 8              ; 5 uses
  %i.ib = alloca [712 x i8], align 8              ; 5 uses
  %i.ic = alloca [712 x i8], align 8              ; 5 uses
  %i.id = alloca [712 x i8], align 8              ; 5 uses
  %i.ie = alloca [712 x i8], align 8              ; 5 uses
  %i.if = alloca [712 x i8], align 8              ; 5 uses
  %i.ig = alloca [40 x i8], align 8               ; 8 uses
  %i.ih = alloca [16 x i8], align 8               ; 5 uses
  %i.ii = alloca [16 x i8], align 8               ; 5 uses
  %i.ij = alloca [56 x i8], align 8               ; 8 uses
  %i.ik = alloca [56 x i8], align 8               ; 6 uses
  %i.il = alloca [712 x i8], align 8              ; 53 uses
  tail call void @_RNvNtCs7BtpbLEd5q3_9elfshaker5utils19silence_broken_pipe()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ie), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.id), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hx), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ht), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hs), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hr), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hq), !noalias !563
  call void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB3_7Command3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.hq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 9), !noalias !563
  call void @_RINvMs0_NtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB6_7Command14override_usageReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.hr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.hq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 54), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq), !noalias !563
  call void @_RINvMs0_NtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB6_7Command7versionReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.hs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.hr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 9), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hr), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hp), !noalias !563
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker7extract7get_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.hp)
          to label %bb.b unwind label %bb.gu, !noalias !563

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !noalias !564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gv, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.hp, i64 712, i1 false), !alias.scope !565, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu), !noalias !564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gu, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.hs, i64 712, i1 false), !noalias !567
  call void @_RNvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.ht, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gv), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hs), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho), !noalias !563
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker5store7get_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.ho)
          to label %bb.c unwind label %bb.gt, !noalias !563

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt), !noalias !569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gt, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.ho, i64 712, i1 false), !alias.scope !570, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs), !noalias !569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gs, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.ht, i64 712, i1 false), !noalias !572
  call void @_RNvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.hu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gt), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt), !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ht), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn), !noalias !563
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker4list7get_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.hn)
          to label %bb.d unwind label %bb.gs, !noalias !563

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !noalias !574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gr, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.hn, i64 712, i1 false), !alias.scope !575, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !noalias !574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gq, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.hu, i64 712, i1 false), !noalias !577
  call void @_RNvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.hv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gr), !noalias !578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm), !noalias !563
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker10list_packs7get_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.hm)
          to label %bb.e unwind label %bb.gr, !noalias !563

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !noalias !579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gp, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.hm, i64 712, i1 false), !alias.scope !580, !noalias !581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go), !noalias !579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.go, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.hv, i64 712, i1 false), !noalias !582
  call void @_RNvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.hw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.go, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gp), !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !noalias !579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !noalias !579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl), !noalias !563
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker10list_files7get_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.hl)
          to label %bb.f unwind label %bb.gq, !noalias !563

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn), !noalias !584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gn, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.hl, i64 712, i1 false), !alias.scope !585, !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !noalias !584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.gm, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.hw, i64 712, i1 false), !noalias !587
  call void @_RNvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.hx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gn), !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !noalias !589
  invoke void @_RNvCsfwHX9XeyMnn_4zstd23compression_level_range(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.gl)
          to label %.noexc.i unwind label %.body.thread102.i, !noalias !589

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !noalias !589
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB3_7Command3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.gd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 4)
          to label %.noexc20.i unwind label %.body.thread102.i, !noalias !589

.noexc20.i:                                       ; preds = %.noexc.i
  invoke void @_RINvMs0_NtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB6_7Command5aboutReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.ge, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.gd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 43)
          to label %.noexc21.i unwind label %.body.thread102.i, !noalias !589

.noexc21.i:                                       ; preds = %.noexc20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !noalias !589
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB3_3Arg3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(address) dereferenceable(640) %i.fz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 4)
          to label %bb.g unwind label %.body.thread124.i.i, !noalias !589

.body.thread124.i.i:                              ; preds = %bb.j, %.noexc21.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.g:                                             ; preds = %.noexc21.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.fz, i64 632 ; 2 uses
  %i.in = load i32, ptr %i.im, align 8, !noalias !589, !noundef !6
  %i.io = or i32 %i.in, 1
  store i32 %i.io, ptr %i.im, align 8, !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  store i64 1, ptr %i.ip, align 8, !alias.scope !591, !noalias !589
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  store i64 1, ptr %i.iq, align 8, !alias.scope !591, !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.ga, ptr noundef nonnull align 8 dereferenceable(640) %i.fz, i64 640, i1 false), !alias.scope !592, !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.ir = invoke { ptr, i64 } @_RNvXsj_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_3str3StrE15into_resettableCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4)
          to label %bb.h unwind label %bb.k, !noalias !595 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.is = extractvalue { ptr, i64 } %i.ir, 0      ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ga, i64 360
  store i64 0, ptr %i.iu, align 8, !alias.scope !594, !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.gb, ptr noundef nonnull align 8 dereferenceable(640) %i.ga, i64 640, i1 false), !alias.scope !596, !noalias !589
  br label %_RINvMs_NtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB5_3Arg10value_nameReECs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.iv = extractvalue { ptr, i64 } %i.ir, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.ex, ptr noundef nonnull align 8 dereferenceable(640) %i.fz, i64 640, i1 false), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !597
  store ptr %i.is, ptr %i.ew, align 8, !noalias !597
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.iv, ptr %i.iw, align 8, !noalias !597
  invoke void @_RINvMs_NtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(none) dereferenceable(640) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.ex, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.ew)
          to label %.noexc.i.i unwind label %.body.thread124.i.i, !noalias !598

.noexc.i.i:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !597
  br label %_RINvMs_NtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB5_3Arg10value_nameReECs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.k:                                             ; preds = %bb.g
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.ga) #24
          to label %.body.thread.i.i unwind label %bb.l, !noalias !599

bb.l:                                             ; preds = %bb.k
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !599
  unreachable

_RINvMs_NtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB5_3Arg10value_nameReECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %.noexc.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !602
  invoke void @_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ev, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 41)
          to label %bb.o unwind label %bb.n, !noalias !603

bb.m:                                             ; preds = %.body.i.i.i, %bb.n
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.iz, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.gb) #24
          to label %.body.thread.i.i unwind label %bb.v, !noalias !604
end_hunk_0
begin_hunk_1_@_RNvCs7BtpbLEd5q3_9elfshaker4main:bb.a
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ik ], [ %i.tl, %bb.if ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #24
          to label %bb.hy unwind label %bb.kn, !noalias !788

bb.if:                                            ; preds = %bb.ib
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.ig:                                            ; preds = %bb.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !787
  br label %bb.id

bb.ih:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !787
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tj)
          to label %bb.im unwind label %bb.il, !noalias !788

bb.ii:                                            ; preds = %bb.id
  store i64 -1, ptr %i.de, align 8, !noalias !787
  br label %bb.ij

bb.ij:                                            ; preds = %bb.im, %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !787
  %i.tm = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tm)
          to label %bb.ip unwind label %bb.io, !noalias !788

bb.ik:                                            ; preds = %bb.in, %bb.il
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.in ], [ %i.tn, %bb.il ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df) #24
          to label %bb.ie unwind label %bb.kn, !noalias !788

bb.il:                                            ; preds = %bb.ih
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ik

bb.im:                                            ; preds = %bb.ih
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !787
  br label %bb.ij

bb.in:                                            ; preds = %bb.iq, %bb.io
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.iq ], [ %i.to, %bb.io ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.de) #24
          to label %bb.ik unwind label %bb.kn, !noalias !788

bb.io:                                            ; preds = %bb.ij
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.ip:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !787
  %i.tp = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTcbEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tp)
          to label %bb.is unwind label %bb.ir, !noalias !788

bb.iq:                                            ; preds = %bb.it, %bb.ir
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.it ], [ %i.tq, %bb.ir ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dd) #24
          to label %bb.in unwind label %bb.kn, !noalias !788

bb.ir:                                            ; preds = %bb.ip
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.is:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !787
  %i.tr = getelementptr inbounds nuw i8, ptr %i.il, i64 104
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tr)
          to label %bb.iv unwind label %bb.iu, !noalias !788

bb.it:                                            ; preds = %bb.iz, %bb.iu
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.iz ], [ %i.ts, %bb.iu ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTcbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dc) #24
          to label %bb.iq unwind label %bb.kn, !noalias !788

bb.iu:                                            ; preds = %bb.is
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.iv:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !787
  %i.tt = getelementptr inbounds nuw i8, ptr %i.il, i64 464 ; 2 uses
  %i.tu = load i64, ptr %i.tt, align 8, !range !7, !alias.scope !785, !noundef !6
  %.not32.i = icmp eq i64 %i.tu, -1
  br i1 %.not32.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !787
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tt)
          to label %bb.jb unwind label %bb.ja, !noalias !788

bb.ix:                                            ; preds = %bb.iv
  store i64 -1, ptr %i.da, align 8, !noalias !787
  br label %bb.iy

bb.iy:                                            ; preds = %bb.jb, %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !787
  %i.tv = getelementptr inbounds nuw i8, ptr %i.il, i64 488 ; 2 uses
  %i.tw = load i64, ptr %i.tv, align 8, !range !7, !alias.scope !785, !noundef !6
  %.not33.i = icmp eq i64 %i.tw, -1
  br i1 %.not33.i, label %bb.jd, label %bb.jc

bb.iz:                                            ; preds = %bb.jf, %bb.ja
  %.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.i, %bb.jf ], [ %i.tx, %bb.ja ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #24
          to label %bb.it unwind label %bb.kn, !noalias !788

bb.ja:                                            ; preds = %bb.iw
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.jb:                                            ; preds = %bb.iw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !787
  br label %bb.iy

bb.jc:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !787
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tv)
          to label %bb.jh unwind label %bb.jg, !noalias !788

bb.jd:                                            ; preds = %bb.iy
  store i64 -1, ptr %i.cz, align 8, !noalias !787
  br label %bb.je

bb.je:                                            ; preds = %bb.jh, %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !787
  %i.ty = getelementptr inbounds nuw i8, ptr %i.il, i64 512 ; 2 uses
  %i.tz = load i64, ptr %i.ty, align 8, !range !7, !alias.scope !785, !noundef !6
  %.not34.i = icmp eq i64 %i.tz, -1
  br i1 %.not34.i, label %bb.jj, label %bb.ji

bb.jf:                                            ; preds = %bb.jl, %bb.jg
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i, %bb.jl ], [ %i.ua, %bb.jg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.da) #24
          to label %bb.iz unwind label %bb.kn, !noalias !788

bb.jg:                                            ; preds = %bb.jc
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.jh:                                            ; preds = %bb.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !787
  br label %bb.je

bb.ji:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !787
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ty)
          to label %bb.jn unwind label %bb.jm, !noalias !788

bb.jj:                                            ; preds = %bb.je
  store i64 -1, ptr %i.cy, align 8, !noalias !787
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jn, %bb.jj
  %i.ub = load i64, ptr %i.il, align 8, !range !789, !alias.scope !785, !noundef !6 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.ud = load i64, ptr %i.uc, align 8, !alias.scope !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !787
  %i.ue = getelementptr inbounds nuw i8, ptr %i.il, i64 536 ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 8, !range !7, !alias.scope !785, !noundef !6
  %.not35.i = icmp eq i64 %i.uf, -1
  br i1 %.not35.i, label %bb.jp, label %bb.jo

bb.jl:                                            ; preds = %bb.jt, %bb.jm
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %bb.jt ], [ %i.ug, %bb.jm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz) #24
          to label %bb.jf unwind label %bb.kn, !noalias !788

bb.jm:                                            ; preds = %bb.ji
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.jn:                                            ; preds = %bb.ji
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !787
  br label %bb.jk

bb.jo:                                            ; preds = %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !787
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ue)
          to label %bb.jv unwind label %bb.ju, !noalias !788

bb.jp:                                            ; preds = %bb.jk
  store i64 -1, ptr %i.cx, align 8, !noalias !787
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jv, %bb.jp
  %i.uh = getelementptr inbounds nuw i8, ptr %i.il, i64 700
  %0 = load <2 x i32>, ptr %i.uh, align 4, !alias.scope !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !787
  %i.ui = getelementptr inbounds nuw i8, ptr %i.il, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !790
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ui)
          to label %.noexc.i14 unwind label %bb.jw, !noalias !791

.noexc.i14:                                       ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !790
  %i.uj = getelementptr inbounds nuw i8, ptr %i.il, i64 152
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uj)
          to label %bb.jx unwind label %bb.jr, !noalias !791

bb.jr:                                            ; preds = %.noexc.i14
  %i.uk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cf) #24
          to label %.body.i unwind label %bb.js, !noalias !791

bb.js:                                            ; preds = %bb.jr
  %i.ul = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !791
  unreachable

bb.jt:                                            ; preds = %.body.i, %bb.ju
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body.i ], [ %i.um, %bb.ju ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cy) #24
          to label %bb.jl unwind label %bb.kn, !noalias !788

bb.ju:                                            ; preds = %bb.jo
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.jv:                                            ; preds = %bb.jo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !787
  br label %bb.jq

.body.i:                                          ; preds = %bb.jy, %bb.jw, %bb.jr
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.jy ], [ %i.un, %bb.jw ], [ %i.uk, %bb.jr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cx) #24
          to label %bb.jt unwind label %bb.kn, !noalias !788

bb.jw:                                            ; preds = %bb.jq
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.jx:                                            ; preds = %.noexc.i14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !noalias !792
  %i.uo = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uo, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !787
  %i.up = getelementptr inbounds nuw i8, ptr %i.il, i64 176
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.up)
          to label %bb.ka unwind label %bb.jz, !noalias !788

bb.jy:                                            ; preds = %bb.kb, %bb.jz
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.kb ], [ %i.uq, %bb.jz ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder7mkeymap7MKeyMapECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cw) #24
          to label %.body.i unwind label %bb.kn, !noalias !788

bb.jz:                                            ; preds = %bb.jx
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.ka:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !787
  %i.ur = getelementptr inbounds nuw i8, ptr %i.il, i64 200
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ur)
          to label %bb.kd unwind label %bb.kc, !noalias !788

bb.kb:                                            ; preds = %bb.kj, %bb.kc
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i15, %bb.kj ], [ %i.us, %bb.kc ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cv) #24
          to label %bb.jy unwind label %bb.kn, !noalias !788

bb.kc:                                            ; preds = %bb.ka
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.kd:                                            ; preds = %bb.ka
  %i.ut = getelementptr inbounds nuw i8, ptr %i.il, i64 640
  %i.uu = load ptr, ptr %i.ut, align 8, !alias.scope !785, !noundef !6 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.il, i64 648
  %i.uw = load i64, ptr %i.uv, align 8, !alias.scope !785
  %i.ux = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.uy = load i64, ptr %i.ux, align 8, !range !789, !alias.scope !785, !noundef !6 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.va = load i64, ptr %i.uz, align 8, !alias.scope !785
  %i.vb = getelementptr inbounds nuw i8, ptr %i.il, i64 656
  %i.vc = load ptr, ptr %i.vb, align 8, !alias.scope !785, !noundef !6 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.il, i64 664
  %i.ve = load i64, ptr %i.vd, align 8, !alias.scope !785
  %i.vf = getelementptr inbounds nuw i8, ptr %i.il, i64 672
  %i.vg = load ptr, ptr %i.vf, align 8, !alias.scope !785, !noundef !6 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.il, i64 680
  %i.vi = load i64, ptr %i.vh, align 8, !alias.scope !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !787
  %i.vj = getelementptr inbounds nuw i8, ptr %i.il, i64 32 ; 2 uses
  %i.vk = load i64, ptr %i.vj, align 8, !range !8, !alias.scope !785, !noundef !6
  %.not39.i = icmp eq i64 %i.vk, -1
  br i1 %.not39.i, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !787
  invoke void @_RNvXsb_NtNtCskfBPnJUU6aB_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vj)
          to label %bb.kl unwind label %bb.kk, !noalias !788

bb.kf:                                            ; preds = %bb.kd
  store i64 -1, ptr %i.ct, align 8, !noalias !787
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kl, %bb.kf
  %i.vl = getelementptr inbounds nuw i8, ptr %i.il, i64 708
  %i.vm = load i8, ptr %i.vl, align 4, !range !5, !alias.scope !785, !noundef !6
  %i.vn = getelementptr inbounds nuw i8, ptr %i.il, i64 688
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !785, !noundef !6
  %i.vp = getelementptr inbounds nuw i8, ptr %i.il, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !793
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value10AnyValueIdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vp)
          to label %.noexc59.i unwind label %bb.km, !noalias !794

.noexc59.i:                                       ; preds = %bb.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !793
  %i.vq = getelementptr inbounds nuw i8, ptr %i.il, i64 248
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value8AnyValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vq)
          to label %bb.ko unwind label %bb.kh, !noalias !794

bb.kh:                                            ; preds = %.noexc59.i
  %i.vr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util9any_value10AnyValueIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cd) #24
          to label %.body60.i unwind label %bb.ki, !noalias !794

bb.ki:                                            ; preds = %bb.kh
  %i.vs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !794
  unreachable

bb.kj:                                            ; preds = %.body60.i, %bb.kk
  %.pn.i15 = phi { ptr, i32 } [ %eh.lpad-body61.i, %.body60.i ], [ %i.vt, %bb.kk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cu) #24
          to label %bb.kb unwind label %bb.kn, !noalias !788

bb.kk:                                            ; preds = %bb.ke
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

bb.kl:                                            ; preds = %bb.ke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !787
  br label %bb.kg

bb.km:                                            ; preds = %bb.kg
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i

.body60.i:                                        ; preds = %bb.km, %bb.kh
  %eh.lpad-body61.i = phi { ptr, i32 } [ %i.vu, %bb.km ], [ %i.vr, %bb.kh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ct) #24
          to label %bb.kj unwind label %bb.kn, !noalias !788

bb.kn:                                            ; preds = %.body60.i, %bb.kj, %bb.kb, %bb.jy, %.body.i, %bb.jt, %bb.jl, %bb.jf, %bb.iz, %bb.it, %bb.iq, %bb.in, %bb.ik, %bb.ie, %bb.hy, %bb.hs, %bb.hm, %bb.hg, %bb.ha
  %i.vv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !788
  unreachable

.body:                                            ; preds = %.body.i21, %.body36, %bb.kq, %bb.ha, %bb.wm
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.wm ], [ %lpad.thr_comm.split-lp, %.body36 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ha ], [ %eh.lpad-body.i, %.body.i21 ], [ %i.vz, %bb.kq ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(712) %i.il) #24
          to label %common.resume unwind label %bb.wk

bb.ko:                                            ; preds = %.noexc59.i
  %.not38.i = icmp eq ptr %i.vg, null
  %.sroa.517.0.i = select i1 %.not38.i, i64 undef, i64 %i.vi
  %.not37.i = icmp eq ptr %i.vc, null
  %.sroa.515.0.i = select i1 %.not37.i, i64 undef, i64 %i.ve
  %i.vw = trunc nuw i64 %i.uy to i1
  %.sroa.513.0.i = select i1 %i.vw, i64 %i.va, i64 undef
  %.not36.i = icmp eq ptr %i.uu, null
  %.sroa.511.0.i = select i1 %.not36.i, i64 undef, i64 %i.uw
  %i.vx = trunc nuw i64 %i.ub to i1
  %.sroa.59.0.i = select i1 %i.vx, i64 %i.ud, i64 undef
  %.not25.i = icmp eq ptr %i.sr, null
  %.sroa.57.0.i = select i1 %.not25.i, i64 undef, i64 %i.st
  %.not24.i = icmp eq ptr %i.sn, null
  %.sroa.55.0.i = select i1 %.not24.i, i64 undef, i64 %i.sp
  %.not23.i = icmp eq ptr %i.sj, null
  %.sroa.53.0.i = select i1 %.not23.i, i64 undef, i64 %i.sl
  %.not.i = icmp eq ptr %i.rz, null
  %.sroa.5.0.i = select i1 %.not.i, i64 undef, i64 %i.sb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !787
  %i.vy = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vy, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !793
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !noalias !6
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !noalias !6
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false), !noalias !6
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !noalias !6
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false), !noalias !6
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !6
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !6
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !noalias !6
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !noalias !6
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false), !noalias !6
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !noalias !6
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false), !noalias !6
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !noalias !6
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !noalias !6
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !noalias !6
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.cw, i64 48, i1 false), !noalias !6
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !6
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !6
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !noalias !6
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !noalias !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  store i64 %i.ub, ptr %i.cb, align 8, !noalias !796
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %.sroa.59.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !796
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %i.uy, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !796
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 %.sroa.513.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !796
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 560
  store ptr %i.rv, ptr %.sroa.27.0..sroa_idx, align 8, !noalias !796
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 568
  store i64 %i.rx, ptr %.sroa.28.0..sroa_idx, align 8, !noalias !796
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 576
  store ptr %i.rz, ptr %.sroa.29.0..sroa_idx, align 8, !noalias !796
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 584
  store i64 %.sroa.5.0.i, ptr %.sroa.30.0..sroa_idx, align 8, !noalias !796
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 592
  store ptr %i.sj, ptr %.sroa.31.0..sroa_idx, align 8, !noalias !796
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 600
  store i64 %.sroa.53.0.i, ptr %.sroa.32.0..sroa_idx, align 8, !noalias !796
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 608
  store ptr %i.sn, ptr %.sroa.33.0..sroa_idx, align 8, !noalias !796
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 616
  store i64 %.sroa.55.0.i, ptr %.sroa.34.0..sroa_idx, align 8, !noalias !796
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 624
  store ptr %i.sr, ptr %.sroa.35.0..sroa_idx, align 8, !noalias !796
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 632
  store i64 %.sroa.57.0.i, ptr %.sroa.36.0..sroa_idx, align 8, !noalias !796
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 640
  store ptr %i.uu, ptr %.sroa.37.0..sroa_idx, align 8, !noalias !796
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 648
  store i64 %.sroa.511.0.i, ptr %.sroa.38.0..sroa_idx, align 8, !noalias !796
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 656
  store ptr %i.vc, ptr %.sroa.39.0..sroa_idx, align 8, !noalias !796
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 664
  store i64 %.sroa.515.0.i, ptr %.sroa.40.0..sroa_idx, align 8, !noalias !796
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 672
  store ptr %i.vg, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !796
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 680
  store i64 %.sroa.517.0.i, ptr %.sroa.42.0..sroa_idx, align 8, !noalias !796
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 688
  store ptr %i.vo, ptr %.sroa.43.0..sroa_idx, align 8, !noalias !796
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 696
  store i32 %i.sd, ptr %.sroa.44.0..sroa_idx, align 8, !noalias !796
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 700
  store <2 x i32> %0, ptr %.sroa.45.0..sroa_idx, align 4, !noalias !796
  %.sroa.47.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.cb, i64 708
  store i8 %i.vm, ptr %.sroa.47.0..sroa_idx38, align 4, !noalias !796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !795
  invoke void @_RNvNtCsaL1QbXo9JQH_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ca)
          to label %bb.kp unwind label %bb.kq, !noalias !795

bb.kp:                                            ; preds = %bb.ko
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCsaL1QbXo9JQH_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ik, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ca)
          to label %bb.ks unwind label %.body36, !noalias !797

bb.kq:                                            ; preds = %bb.ko
  %i.vz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(712) %i.cb) #24
          to label %.body unwind label %bb.kr, !noalias !795

bb.kr:                                            ; preds = %bb.kq
  %i.wa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !795
  unreachable

bb.ks:                                            ; preds = %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !795
  %i.wb = invoke noundef zeroext i1 @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ik, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 7)
          to label %bb.kt unwind label %bb.wm

.body36:                                          ; preds = %bb.gv, %bb.kp, %bb.vn, %bb.vo
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.kt:                                            ; preds = %bb.ks
  %. = select i1 %i.wb, i64 3, i64 2
  invoke void @_RNvMNtCskuiImRAV2ip_9elfshaker3logNtB2_6Logger4init(i64 noundef %.)
          to label %bb.ku unwind label %bb.wm

bb.ku:                                            ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ij, ptr noundef nonnull align 8 dereferenceable(56) %i.ik, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.wd = load ptr, ptr %i.wc, align 8, !alias.scope !798, !align !9, !noundef !6 ; 4 uses
  %.not.i20 = icmp eq ptr %i.wd, null
  br i1 %.not.i20, label %.thread108.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load ptr, ptr %i.we, align 8, !noalias !799, !nonnull !6, !noundef !6 ; 19 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wh = load i64, ptr %i.wg, align 8, !noalias !799, !noundef !6
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wd, i64 24 ; 20 uses
  switch i64 %i.wh, label %.thread108.i [
    i64 7, label %bb.kw
    i64 5, label %bb.mx
    i64 4, label %bb.mz
    i64 10, label %bb.nb
    i64 2, label %bb.va
    i64 6, label %bb.vc
  ]

.thread108.i:                                     ; preds = %bb.ve, %bb.vc, %bb.va, %.critedge57.i, %bb.nd, %bb.ky, %bb.kv, %bb.ku
  %i.wj = invoke noundef ptr @_RNvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB2_7Command15print_long_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.il)
          to label %bb.vh unwind label %bb.vg, !noalias !798 ; 3 uses

bb.kw:                                            ; preds = %bb.kv
  %i.wk = load i32, ptr %i.wf, align 1
  %i.wl = xor i32 %i.wk, 1920235621
  %i.wm = getelementptr i8, ptr %i.wf, i64 3
  %i.wn = load i32, ptr %i.wm, align 1
  %i.wo = xor i32 %i.wn, 1952670066
  %i.wp = or i32 %i.wl, %i.wo
  %i.wq = icmp ne i32 %i.wp, 0
  %i.wr = zext i1 %i.wq to i32
  %i.ws = icmp eq i32 %i.wr, 0
  br i1 %i.ws, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.wt = invoke { ptr, ptr } @_RNvNtCs7BtpbLEd5q3_9elfshaker7extract3run(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wi)
          to label %bb.wa unwind label %bb.vg, !noalias !799 ; 2 uses

bb.ky:                                            ; preds = %bb.kw
  %i.wu = load i32, ptr %i.wf, align 1
  %i.wv = xor i32 %i.wu, 1819310181
  %i.ww = getelementptr i8, ptr %i.wf, i64 3
  %i.wx = load i32, ptr %i.ww, align 1
  %i.wy = xor i32 %i.wx, 1701080940
  %i.wz = or i32 %i.wv, %i.wy
  %i.xa = icmp ne i32 %i.wz, 0
  %i.xb = zext i1 %i.xa to i32
  %i.xc = icmp eq i32 %i.xb, 0
  br i1 %i.xc, label %bb.kz, label %.thread108.i

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !800
  invoke void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 8)
          to label %.noexc.i26 unwind label %bb.vg, !noalias !799

.noexc.i26:                                       ; preds = %bb.kz
  %i.xd = invoke noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.bp)
          to label %.noexc59.i27 unwind label %bb.vg, !noalias !799 ; 3 uses

.noexc59.i27:                                     ; preds = %.noexc.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !800
  %.not.i.i = icmp eq ptr %i.xd, null
  br i1 %.not.i.i, label %.invoke.i, label %bb.la, !prof !19

bb.la:                                            ; preds = %.noexc59.i27
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !noalias !799, !nonnull !6, !noundef !6
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xh = load i64, ptr %i.xg, align 8, !noalias !799, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !800
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker5utils18open_repo_from_cwd(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xf, i64 noundef %i.xh)
          to label %.noexc60.i unwind label %bb.vg, !noalias !799

.noexc60.i:                                       ; preds = %bb.la
  %i.xi = load i64, ptr %i.bx, align 8, !range !7, !noalias !800, !noundef !6 ; 2 uses
  %i.xj = icmp eq i64 %i.xi, -1
  %i.xk = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.65.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.xk, i64 56, i1 false), !noalias !800
  br i1 %i.xj, label %bb.lb, label %bb.lf

bb.lb:                                            ; preds = %.noexc60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.65.i.i, i64 56, i1 false), !noalias !800
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !801
  %i.xl = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 56, i64 noundef range(i64 1, 9) 8) #26, !noalias !801 ; 3 uses
  %i.xm = icmp eq ptr %i.xl, null
  br i1 %i.xm, label %bb.lc, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit70.i.i, !prof !19

bb.lc:                                            ; preds = %bb.lb
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28
          to label %.noexc.i.i33 unwind label %bb.ld, !noalias !801

.noexc.i.i33:                                     ; preds = %bb.lc
  unreachable

bb.ld:                                            ; preds = %bb.lc
  %i.xn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bn) #24
          to label %.body.i21 unwind label %bb.le, !noalias !799

bb.le:                                            ; preds = %bb.ld
  %i.xo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !799
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit70.i.i: ; preds = %bb.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xl, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.65.i.i, i64 56, i1 false), !noalias !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i)
  br label %bb.vz

bb.lf:                                            ; preds = %.noexc60.i
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i.i, i64 16, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !800
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i.i28, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.65.i.i, i64 56, i1 false), !noalias !800
  store i64 %i.xi, ptr %i.by, align 8, !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !800
  invoke void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 9)
          to label %bb.lg unwind label %bb.lr, !noalias !799

.body.i.i29:                                      ; preds = %bb.mv, %bb.ms, %bb.mp, %.body65.i.i, %bb.ma, %bb.lr, %bb.lo
  %.pn.i.i30 = phi { ptr, i32 } [ %eh.lpad-body66.i.i, %.body65.i.i ], [ %lpad.thr_comm.i.i32, %bb.mv ], [ %lpad.thr_comm.split-lp.i.i, %bb.lr ], [ %i.zd, %bb.mp ], [ %i.xy, %bb.lo ], [ %i.yo, %bb.ma ], [ %i.zf, %bb.ms ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.by) #24
          to label %.body.i21 unwind label %bb.mu, !noalias !799

bb.lg:                                            ; preds = %bb.lf
  %i.xp = invoke noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.bo)
          to label %bb.lh unwind label %bb.lr, !noalias !799 ; 3 uses

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !800
  %.not59.i.i = icmp eq ptr %i.xp, null
  br i1 %.not59.i.i, label %bb.lj, label %bb.li, !prof !19

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !800
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8 ; 2 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !noalias !799, !nonnull !6, !noundef !6
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 16 ; 2 uses
  %i.xt = load i64, ptr %i.xs, align 8, !noalias !799, !noundef !6
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository7is_pack(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bu, ptr noundef nonnull align 8 %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xr, i64 noundef %i.xt)
          to label %bb.ll unwind label %bb.lr, !noalias !799

bb.lj:                                            ; preds = %bb.lh
end_hunk_1
