Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/perf_event_open_sys-d1b134a12cf5ff70.perf_event_open_sys.be57271c88f7f36e-cgu.0?download=true
inline.NumInlined: 44
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsu_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsw_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCshzWfHUSfYae_4core5arrayAhj3a0_NtNtB7_3fmt5Debug3fmtCsglb14zjdOMs_19perf_event_open_sys(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(928) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !17
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.0.05.i.idx.i = phi i64 [ %.sroa.0.05.i.add.i, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.05.i.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.05.i.idx.i
  %.sroa.0.05.i.add.i = add nuw nsw i64 %.sroa.0.05.i.idx.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18
  store ptr %.sroa.0.05.i.ptr.i, ptr %i.a, align 8, !noalias !18, !captures !19
  %i.c = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18
  %i.d = icmp eq i64 %.sroa.0.05.i.add.i, 928
  br i1 %i.d, label %_RNvXsr_NtCshzWfHUSfYae_4core3fmtShNtB5_5Debug3fmtCsglb14zjdOMs_19perf_event_open_sys.exit, label %.lr.ph.i.i

_RNvXsr_NtCshzWfHUSfYae_4core3fmtShNtB5_5Debug3fmtCsglb14zjdOMs_19perf_event_open_sys.exit: ; preds = %.lr.ph.i.i
  %i.e = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtCsglb14zjdOMs_19perf_event_open_sys8bindingsNtB5_15perf_event_attrNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_RNvMs_NtCsglb14zjdOMs_19perf_event_open_sys8bindingsINtB4_21___BindgenBitfieldUnitAhj8_E3getB6_.exit:
  %i.a = alloca [944 x i8], align 8               ; 121 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i8, ptr %i.an, align 8, !alias.scope !32, !noundef !4 ; 8 uses
  %i.ap = and i8 %i.ao, 1
  %i.aq = zext nneg i8 %i.ap to i64
  store i64 %i.aq, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.ar = lshr i8 %i.ao, 1
  %.lobit = and i8 %i.ar, 1
  %i.as = zext nneg i8 %.lobit to i64
  store i64 %i.as, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.at = lshr i8 %i.ao, 2
  %.lobit579 = and i8 %i.at, 1
  %i.au = zext nneg i8 %.lobit579 to i64
  store i64 %i.au, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.av = lshr i8 %i.ao, 3
  %.lobit580 = and i8 %i.av, 1
  %i.aw = zext nneg i8 %.lobit580 to i64
  store i64 %i.aw, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ax = lshr i8 %i.ao, 4
  %.lobit581 = and i8 %i.ax, 1
  %i.ay = zext nneg i8 %.lobit581 to i64
  store i64 %i.ay, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.az = lshr i8 %i.ao, 5
  %.lobit582 = and i8 %i.az, 1
  %i.ba = zext nneg i8 %.lobit582 to i64
  store i64 %i.ba, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.bb = lshr i8 %i.ao, 6
  %.lobit583 = and i8 %i.bb, 1
  %i.bc = zext nneg i8 %.lobit583 to i64
  store i64 %i.bc, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.lobit584 = lshr i8 %i.ao, 7
  %i.bd = zext nneg i8 %.lobit584 to i64
  store i64 %i.bd, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !33, !noundef !4 ; 8 uses
  %i.bg = and i8 %i.bf, 1
  %i.bh = zext nneg i8 %i.bg to i64
  store i64 %i.bh, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bi = lshr i8 %i.bf, 1
  %.lobit585 = and i8 %i.bi, 1
  %i.bj = zext nneg i8 %.lobit585 to i64
  store i64 %i.bj, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bk = lshr i8 %i.bf, 2
  %.lobit586 = and i8 %i.bk, 1
  %i.bl = zext nneg i8 %.lobit586 to i64
  store i64 %i.bl, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.bm = lshr i8 %i.bf, 3
  %.lobit587 = and i8 %i.bm, 1
  %i.bn = zext nneg i8 %.lobit587 to i64
  store i64 %i.bn, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.bo = lshr i8 %i.bf, 4
  %.lobit588 = and i8 %i.bo, 1
  %i.bp = zext nneg i8 %.lobit588 to i64
  store i64 %i.bp, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.bq = lshr i8 %i.bf, 5
  %.lobit589 = and i8 %i.bq, 1
  %i.br = zext nneg i8 %.lobit589 to i64
  store i64 %i.br, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.bs = lshr i8 %i.bf, 6
  %.lobit590 = and i8 %i.bs, 1
  %i.bt = zext nneg i8 %.lobit590 to i64
  store i64 %i.bt, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %.lobit610 = lshr i8 %i.bf, 7
  %2 = zext nneg i8 %.lobit610 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.bv = load i8, ptr %i.bu, align 2, !alias.scope !34, !noundef !4 ; 8 uses
  %.not.i348.1 = trunc i8 %i.bv to i1
  %3 = select i1 %.not.i348.1, i64 2, i64 0
  %.sroa.0.1.i349.1 = or disjoint i64 %3, %2
  store i64 %.sroa.0.1.i349.1, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.bw = lshr i8 %i.bv, 1
  %.lobit591 = and i8 %i.bw, 1
  %i.bx = zext nneg i8 %.lobit591 to i64
  store i64 %i.bx, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.by = lshr i8 %i.bv, 2
  %.lobit592 = and i8 %i.by, 1
  %i.bz = zext nneg i8 %.lobit592 to i64
  store i64 %i.bz, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ca = lshr i8 %i.bv, 3
  %.lobit593 = and i8 %i.ca, 1
  %i.cb = zext nneg i8 %.lobit593 to i64
  store i64 %i.cb, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cc = lshr i8 %i.bv, 4
  %.lobit594 = and i8 %i.cc, 1
  %i.cd = zext nneg i8 %.lobit594 to i64
  store i64 %i.cd, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ce = lshr i8 %i.bv, 5
  %.lobit595 = and i8 %i.ce, 1
  %i.cf = zext nneg i8 %.lobit595 to i64
  store i64 %i.cf, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cg = lshr i8 %i.bv, 6
  %.lobit596 = and i8 %i.cg, 1
  %i.ch = zext nneg i8 %.lobit596 to i64
  store i64 %i.ch, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.lobit597 = lshr i8 %i.bv, 7
  %i.ci = zext nneg i8 %.lobit597 to i64
  store i64 %i.ci, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !35, !noundef !4 ; 8 uses
  %i.cl = and i8 %i.ck, 1
  %i.cm = zext nneg i8 %i.cl to i64
  store i64 %i.cm, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cn = lshr i8 %i.ck, 1
  %.lobit598 = and i8 %i.cn, 1
  %i.co = zext nneg i8 %.lobit598 to i64
  store i64 %i.co, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cp = lshr i8 %i.ck, 2
  %.lobit599 = and i8 %i.cp, 1
  %i.cq = zext nneg i8 %.lobit599 to i64
  store i64 %i.cq, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cr = lshr i8 %i.ck, 3
  %.lobit600 = and i8 %i.cr, 1
  %i.cs = zext nneg i8 %.lobit600 to i64
  store i64 %i.cs, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ct = lshr i8 %i.ck, 4
  %.lobit601 = and i8 %i.ct, 1
  %i.cu = zext nneg i8 %.lobit601 to i64
  store i64 %i.cu, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cv = lshr i8 %i.ck, 5
  %.lobit602 = and i8 %i.cv, 1
  %i.cw = zext nneg i8 %.lobit602 to i64
  store i64 %i.cw, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cx = lshr i8 %i.ck, 6
  %.lobit603 = and i8 %i.cx, 1
  %i.cy = zext nneg i8 %.lobit603 to i64
  store i64 %i.cy, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.lobit604 = lshr i8 %i.ck, 7
  %i.cz = zext nneg i8 %.lobit604 to i64
  store i64 %i.cz, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.db = load i8, ptr %i.da, align 4, !alias.scope !36, !noundef !4 ; 8 uses
  %i.dc = and i8 %i.db, 1
  %i.dd = zext nneg i8 %i.dc to i64
  store i64 %i.dd, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.de = lshr i8 %i.db, 1
  %.lobit605 = and i8 %i.de, 1
  %i.df = zext nneg i8 %.lobit605 to i64
  store i64 %i.df, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dg = lshr i8 %i.db, 2
  %.lobit606 = and i8 %i.dg, 1
  %i.dh = zext nneg i8 %.lobit606 to i64
  store i64 %i.dh, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.di = lshr i8 %i.db, 3
  %.lobit607 = and i8 %i.di, 1
  %i.dj = zext nneg i8 %.lobit607 to i64
  store i64 %i.dj, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dk = lshr i8 %i.db, 4
  %.lobit608 = and i8 %i.dk, 1
  %i.dl = zext nneg i8 %.lobit608 to i64
  store i64 %i.dl, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dm = lshr i8 %i.db, 5
  %.lobit609 = and i8 %i.dm, 1
  %i.dn = zext nneg i8 %.lobit609 to i64
  store i64 %i.dn, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.do = lshr i8 %i.db, 6
  %.lobit612 = and i8 %i.do, 1
  %i.dp = zext nneg i8 %.lobit612 to i64
  %.not.i502.1 = icmp sgt i8 %i.db, -1
  %i.dq = select i1 %.not.i502.1, i64 0, i64 2
  %.sroa.0.1.i503.1 = or disjoint i64 %i.dq, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !37, !noundef !4 ; 8 uses
  %.not.i502.2 = trunc i8 %i.ds to i1
  %4 = select i1 %.not.i502.2, i64 4, i64 0
  %.sroa.0.1.i503.2 = or disjoint i64 %4, %.sroa.0.1.i503.1
  %i.dt = shl i8 %i.ds, 2
  %i.du = and i8 %i.dt, 8
  %i.dv = zext nneg i8 %i.du to i64
  %.sroa.0.1.i503.3 = or disjoint i64 %.sroa.0.1.i503.2, %i.dv
  %i.dw = shl i8 %i.ds, 2
  %i.dx = and i8 %i.dw, 16
  %i.dy = zext nneg i8 %i.dx to i64
  %.sroa.0.1.i503.4 = or disjoint i64 %.sroa.0.1.i503.3, %i.dy
  %i.dz = shl i8 %i.ds, 2
  %i.ea = and i8 %i.dz, 32
  %i.eb = zext nneg i8 %i.ea to i64
  %.sroa.0.1.i503.5 = or i64 %.sroa.0.1.i503.4, %i.eb
  %i.ec = shl i8 %i.ds, 2
  %i.ed = and i8 %i.ec, 64
  %i.ee = zext nneg i8 %i.ed to i64
  %.sroa.0.1.i503.6 = or i64 %.sroa.0.1.i503.5, %i.ee
  %i.ef = shl i8 %i.ds, 2
  %i.eg = and i8 %i.ef, -128
  %i.eh = zext i8 %i.eg to i64
  %.sroa.0.1.i503.7 = or i64 %.sroa.0.1.i503.6, %i.eh
  %i.ei = and i8 %i.ds, 64
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2
  %.sroa.0.1.i503.8 = or i64 %i.ek, %.sroa.0.1.i503.7
  %.not.i502.9 = icmp sgt i8 %i.ds, -1
  %i.el = select i1 %.not.i502.9, i64 0, i64 512
  %.sroa.0.1.i503.9 = or i64 %i.el, %.sroa.0.1.i503.8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.en = load i8, ptr %i.em, align 2, !alias.scope !37, !noundef !4 ; 3 uses
  %.not.i502.10 = trunc i8 %i.en to i1
  %5 = select i1 %.not.i502.10, i64 1024, i64 0
  %.sroa.0.1.i503.10 = or i64 %5, %.sroa.0.1.i503.9
  %i.eo = and i8 %i.en, 126
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 10
  %.sroa.0.1.i503.16 = or i64 %i.eq, %.sroa.0.1.i503.10
  %.not.i502.17 = icmp sgt i8 %i.en, -1
  %i.er = select i1 %.not.i502.17, i64 0, i64 131072
  %.sroa.0.1.i503.17 = or i64 %i.er, %.sroa.0.1.i503.16
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !37, !noundef !4 ; 3 uses
  %.not.i502.18 = trunc i8 %i.et to i1
  %6 = select i1 %.not.i502.18, i64 262144, i64 0
  %.sroa.0.1.i503.18 = or i64 %6, %.sroa.0.1.i503.17
  %i.eu = and i8 %i.et, 126
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 18
  %.sroa.0.1.i503.24 = or i64 %i.ew, %.sroa.0.1.i503.18
  %.not.i502.25 = icmp sgt i8 %i.et, -1
  %i.ex = select i1 %.not.i502.25, i64 0, i64 33554432
  %.sroa.0.1.i503.25 = or i64 %i.ex, %.sroa.0.1.i503.24
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0.1.i503.25, ptr %i.b, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.fc, ptr %i.fs, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.fb, ptr %i.ft, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.fa, ptr %i.fu, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs3_NtCsglb14zjdOMs_19perf_event_open_sys8bindingsNtB5_29perf_event_attr__bindgen_ty_1NtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ez, ptr %i.fv, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.ey, ptr %i.fw, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.am, ptr %i.fx, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.al, ptr %i.fy, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.ak, ptr %i.fz, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.aj, ptr %i.ga, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.ai, ptr %i.gb, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.ah, ptr %i.gc, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.ag, ptr %i.gd, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.af, ptr %i.ge, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr %i.ae, ptr %i.gf, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.ad, ptr %i.gg, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %i.ac, ptr %i.gh, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.467.0..sroa_idx, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %i.ab, ptr %i.gi, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.471.0..sroa_idx, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.aa, ptr %i.gj, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.z, ptr %i.gk, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %i.y, ptr %i.gl, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.483.0..sroa_idx, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr %i.x, ptr %i.gm, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr %i.w, ptr %i.gn, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.491.0..sroa_idx, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr %i.v, ptr %i.go, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.495.0..sroa_idx, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store ptr %i.u, ptr %i.gp, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr %i.t, ptr %i.gq, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4103.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store ptr %i.s, ptr %i.gr, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store ptr %i.r, ptr %i.gs, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4111.0..sroa_idx, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr %i.q, ptr %i.gt, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4115.0..sroa_idx, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr %i.p, ptr %i.gu, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4119.0..sroa_idx, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store ptr %i.o, ptr %i.gv, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4123.0..sroa_idx, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store ptr %i.n, ptr %i.gw, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store ptr %i.m, ptr %i.gx, align 8
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4131.0..sroa_idx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr %i.l, ptr %i.gy, align 8
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4135.0..sroa_idx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  store ptr %i.k, ptr %i.gz, align 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4139.0..sroa_idx, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store ptr %i.j, ptr %i.ha, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4143.0..sroa_idx, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr %i.i, ptr %i.hb, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4147.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr %i.h, ptr %i.hc, align 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4151.0..sroa_idx, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr %i.g, ptr %i.hd, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4155.0..sroa_idx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store ptr %i.f, ptr %i.he, align 8
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4159.0..sroa_idx, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store ptr %i.e, ptr %i.hf, align 8
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4163.0..sroa_idx, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store ptr %i.d, ptr %i.hg, align 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 664
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4167.0..sroa_idx, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store ptr %i.c, ptr %i.hh, align 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4171.0..sroa_idx, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store ptr %i.b, ptr %i.hi, align 8
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.4175.0..sroa_idx, align 8
end_hunk_0
