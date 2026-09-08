Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_kad-742eff389aacad82.libp2p_kad.f01b15bbf2eb4e77-cgu.01?download=true
inline.NumInlined: 213
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2563pow:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2567div_mod(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !209, !noundef !4 ; 4 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.b:                                             ; preds = %bb.d
  %i.n = load i64, ptr %1, align 8, !alias.scope !209, !noundef !4
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 false)
  %i.p = sub nuw nsw i64 64, %i.o
  br label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !209, !noundef !4 ; 2 uses
  %.not.1.i = icmp eq i64 %i.r, 0
  br i1 %.not.1.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !209, !noundef !4 ; 2 uses
  %.not.2.i = icmp eq i64 %i.t, 0
  br i1 %.not.2.i, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.lcssa.i = phi i64 [ %i.m, %bb.a ], [ %i.r, %bb.c ], [ %i.t, %bb.d ]
  %.sroa.02.0.lcssa9.i.neg29 = phi i64 [ -64, %bb.a ], [ -128, %bb.c ], [ -192, %bb.d ]
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.lcssa.i, i1 true)
  %reass.sub = sub nuw nsw i64 %.sroa.02.0.lcssa9.i.neg29, %i.u
  %i.v = add nsw i64 %reass.sub, 320
  br label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit

_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit: ; preds = %bb.b, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.v, %bb.e ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !210, !noundef !4 ; 2 uses
  %.not.i2 = icmp eq i64 %i.x, 0
  br i1 %.not.i2, label %bb.f, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8.thread

bb.f:                                             ; preds = %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !210, !noundef !4 ; 2 uses
  %.not.1.i6 = icmp eq i64 %i.z, 0
  br i1 %.not.1.i6, label %bb.g, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !210, !noundef !4 ; 2 uses
  %.not.2.i7 = icmp eq i64 %i.ab, 0
  br i1 %.not.2.i7, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8.thread

_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8.thread: ; preds = %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit, %bb.f, %bb.g
  %.lcssa.i3 = phi i64 [ %i.x, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit ], [ %i.z, %bb.f ], [ %i.ab, %bb.g ]
  %.sroa.02.0.lcssa9.i4.neg30 = phi i64 [ -64, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit ], [ -128, %bb.f ], [ -192, %bb.g ]
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.lcssa.i3, i1 true)
  %reass.sub31 = sub nuw nsw i64 %.sroa.02.0.lcssa9.i4.neg30, %i.ac
  %i.ad = add nsw i64 %reass.sub31, 320
  br label %bb.i

_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8: ; preds = %bb.g
  %i.ae = load i64, ptr %2, align 8, !alias.scope !210, !noundef !4 ; 2 uses
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 false)
  %i.ag = sub nuw nsw i64 64, %i.af
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.h, label %bb.i, !prof !211

bb.h:                                             ; preds = %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 33 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
  unreachable

bb.i:                                             ; preds = %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8.thread, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8
  %.sroa.0.0.i518 = phi i64 [ %i.ad, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8.thread ], [ %i.ag, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2564bits.exit8 ] ; 3 uses
  %i.ai = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.0.0.i518
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp samesign ult i64 %.sroa.0.0.i518, 65
  br i1 %i.aj, label %bb.ae, label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.af

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.al = add nsw i64 %.sroa.0.0.i518, -1
  %i.am = lshr i64 %i.al, 6                       ; 3 uses
  %i.an = add nuw nsw i64 %i.am, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ao = getelementptr [8 x i8], ptr %i.k, i64 %i.an ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8     ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !214, !noalias !215, !noundef !4 ; 2 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 false) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !217
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !noalias !218
  %i.as = icmp eq i64 %i.aq, 0                    ; 7 uses
  %i.at = and i64 %i.ar, 63                       ; 11 uses
  %i.au = load i64, ptr %2, align 8, !alias.scope !216, !noalias !219, !noundef !4
  %.sroa.sel.idx = select i1 %i.as, i64 8, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.sel.idx
  %i.av = shl i64 %i.au, %i.at
  store i64 %i.av, ptr %.sroa.sel, align 8, !noalias !218
  %i.aw = select i1 %i.as, i64 2, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !216, !noalias !219, !noundef !4
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.aw
  %i.ba = shl i64 %i.ay, %i.at
  store i64 %i.ba, ptr %i.az, align 8, !noalias !218
  %i.bb = select i1 %i.as, i64 3, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !216, !noalias !219, !noundef !4
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bb
  %i.bf = shl i64 %i.bd, %i.at
  store i64 %i.bf, ptr %i.be, align 8, !noalias !218
  br i1 %i.as, label %._crit_edge.i.i, label %.lr.ph.i.i.3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.3, %.lr.ph.i.i
  %i.bg = add nsw i64 %.sroa.0.0.i, -1
  %i.bh = lshr i64 %i.bg, 6
  %i.bi = sub nsw i64 %i.bh, %i.am                ; 5 uses
  %.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i, label %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit.i, label %.lr.ph15.i.i

.lr.ph15.i.i:                                     ; preds = %._crit_edge.i.i
  %i.bj = sub nuw nsw i64 64, %i.at               ; 3 uses
  %.sroa.05.014.i.i = select i1 %i.as, i64 2, i64 1
  %i.bk = load i64, ptr %2, align 8, !alias.scope !216, !noalias !219, !noundef !4
  %i.bl = lshr i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.05.014.i.i ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !218, !noundef !4
  %i.bo = add i64 %i.bn, %i.bl
  store i64 %i.bo, ptr %i.bm, align 8, !noalias !218
  %.sroa.05.014.i.i.1 = select i1 %i.as, i64 3, i64 2
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !216, !noalias !219, !noundef !4
  %i.br = lshr i64 %i.bq, %i.bj
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.05.014.i.i.1 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !218, !noundef !4
  %i.bu = add i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8, !noalias !218
  br i1 %i.as, label %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit.i, label %bb.l

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !216, !noalias !219, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.by = shl i64 %i.bw, %i.at
  store i64 %i.by, ptr %i.bx, align 8, !noalias !218
  br label %._crit_edge.i.i

bb.l:                                             ; preds = %.lr.ph15.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !216, !noalias !219, !noundef !4
  %i.cb = lshr i64 %i.ca, %i.bj
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !218, !noundef !4
  %i.ce = add i64 %i.cd, %i.cb
  store i64 %i.ce, ptr %i.cc, align 8, !noalias !218
  br label %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit.i

_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit.i: ; preds = %.lr.ph15.i.i, %bb.l, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !221
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false), !noalias !221
  %i.cg = load i64, ptr %1, align 8, !alias.scope !222, !noalias !223, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !221
  %i.ch = sub nuw nsw i64 64, %i.ar               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.ci = lshr i64 %i.ch, 6                       ; 7 uses
  %i.cj = and i64 %i.ch, 63                       ; 6 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ci
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !225, !noalias !226, !noundef !4
  %i.cm = lshr i64 %i.cl, %i.cj                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ci
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !225, !noalias !226, !noundef !4
  %i.cq = lshr i64 %i.cp, %i.cj                   ; 3 uses
  %i.cr = add nuw nsw i64 %i.ci, 3                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ci
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !225, !noalias !226, !noundef !4
  %i.cv = lshr i64 %i.cu, %i.cj                   ; 4 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %i.cr, 4
  br i1 %exitcond.not.i.i.i.2, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.3

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.3, %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit.i
  %.sroa.13.0 = phi i64 [ %i.dc, %.lr.ph.i.i.i.3 ], [ 0, %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit.i ]
  %.not.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2568full_shl.exit.i, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.cw = sub nuw nsw i64 64, %i.cj               ; 3 uses
  %.sroa.05.014.i.i.i = add nuw nsw i64 %i.ci, 1  ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.05.014.i.i.i
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !225, !noalias !226, !noundef !4
  %i.cz = shl i64 %i.cy, %i.cw
  %3 = or disjoint i64 %i.cm, %i.cz               ; 3 uses
  %exitcond16.not.i.i.i.1.not.a = icmp eq i64 %.sroa.05.014.i.i.i, 3
  br i1 %exitcond16.not.i.i.i.1.not.a, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2568full_shl.exit.i, label %4

.lr.ph.i.i.i.3:                                   ; preds = %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit.i
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cr
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !225, !noalias !226, !noundef !4
  %i.dc = lshr i64 %i.db, %i.cj
  br label %._crit_edge.i.i.i

4:                                                ; preds = %.lr.ph15.i.i.i
  %5 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ci
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %7 = load i64, ptr %6, align 8, !alias.scope !225, !noalias !226, !noundef !4
  %8 = shl i64 %7, %i.cw
  %9 = add i64 %i.cq, %8                          ; 2 uses
  %exitcond16.not.i.i.i.1.not = icmp eq i64 %i.ci, 0
  br i1 %exitcond16.not.i.i.i.1.not, label %10, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2568full_shl.exit.i

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %12 = load i64, ptr %11, align 8, !alias.scope !225, !noalias !226, !noundef !4
  %13 = shl i64 %12, %i.cw
  %14 = add i64 %i.cv, %13
  br label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2568full_shl.exit.i

_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2568full_shl.exit.i: ; preds = %.lr.ph15.i.i.i, %4, %10, %._crit_edge.i.i.i
  %.sroa.0.0 = phi i64 [ %i.cm, %._crit_edge.i.i.i ], [ %3, %10 ], [ %3, %4 ], [ %3, %.lr.ph15.i.i.i ]
  %.sroa.7.1 = phi i64 [ %i.cq, %._crit_edge.i.i.i ], [ %i.cq, %.lr.ph15.i.i.i ], [ %9, %4 ], [ %9, %10 ]
  %.sroa.10.1 = phi i64 [ %i.cv, %._crit_edge.i.i.i ], [ %i.cv, %.lr.ph15.i.i.i ], [ %i.cv, %4 ], [ %14, %10 ]
  %i.dd = shl i64 %i.cg, %i.at
  store i64 %.sroa.0.0, ptr %i.c, align 8, !noalias !227
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !227
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !227
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !noalias !227
  store i64 %i.dd, ptr %i.d, align 8, !noalias !221
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implyECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3), !noalias !221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !noalias !217
  %i.de = load i64, ptr %i.ap, align 8, !alias.scope !214, !noalias !215, !noundef !4 ; 3 uses
  %i.df = getelementptr i8, ptr %i.ao, i64 -16
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !214, !noalias !215, !noundef !4
  %i.dh = zext i64 %i.de to i128                  ; 2 uses
  %i.di = zext i64 %i.dg to i128
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.1058.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.1058.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.an
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.first_iter.i = icmp ugt i64 %i.bi, 5
  %.first_iter105.i = icmp samesign ult i64 %i.bi, 4
  br label %bb.m

bb.m:                                             ; preds = %bb.ac, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2568full_shl.exit.i
  %.sroa.4.093.i = phi i64 [ %i.bi, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2568full_shl.exit.i ], [ %i.dt, %bb.ac ] ; 6 uses
  %i.dt = add nsw i64 %.sroa.4.093.i, -1
  %i.du = icmp eq i64 %.sroa.4.093.i, 0
  %i.dv = add i64 %.sroa.4.093.i, %i.an           ; 4 uses
  %i.dw = icmp ult i64 %i.dv, 5
  br i1 %i.dw, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.ac
  %.sroa.063.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !217
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.464.0.copyload.i = load i64, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !217 ; 2 uses
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.565.0.copyload.i = load i64, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !217 ; 2 uses
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.666.0.copyload.i = load i64, ptr %.sroa.666.0..sroa_idx.i, align 8, !noalias !217 ; 2 uses
  %i.dx = lshr i64 %.sroa.063.0.copyload.i, %i.at ; 2 uses
  %i.dy = lshr i64 %.sroa.464.0.copyload.i, %i.at ; 2 uses
  %i.dz = lshr i64 %.sroa.565.0.copyload.i, %i.at ; 2 uses
  %i.ea = lshr i64 %.sroa.666.0.copyload.i, %i.at ; 2 uses
  %.not.i35.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i35.i, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25613div_mod_knuth.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n
  %.sroa.767.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.767.0.copyload.i = load i64, ptr %.sroa.767.0..sroa_idx.i, align 8, !noalias !217
  %i.eb = shl i64 %.sroa.464.0.copyload.i, %i.ch
  %i.ec = or i64 %i.eb, %i.dx
  %i.ed = shl i64 %.sroa.565.0.copyload.i, %i.ch
  %i.ee = or i64 %i.ed, %i.dy
  %i.ef = shl i64 %.sroa.666.0.copyload.i, %i.ch
  %i.eg = or i64 %i.ef, %i.dz
  %i.eh = shl i64 %.sroa.767.0.copyload.i, %i.ch
  %i.ei = or i64 %i.eh, %i.ea
  br label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25613div_mod_knuth.exit

bb.o:                                             ; preds = %bb.m
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dv ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !217, !noundef !4 ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.de
  br i1 %i.el, label %bb.q, label %.loopexit.i

bb.p:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dv, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !noalias !215
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.em = add i64 %.sroa.4.093.i, %i.am           ; 2 uses
  %i.en = icmp ult i64 %i.em, 5
  br i1 %i.en, label %bb.s, label %bb.r

.loopexit.i:                                      ; preds = %bb.v, %bb.u, %.split.i, %bb.o
  %.sroa.08.0.i = phi i64 [ -1, %bb.o ], [ %i.gd, %bb.v ], [ %.sroa.08.1.i, %bb.u ], [ %.sroa.08.1.i, %.split.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !217
  %.sroa.052.0.copyload.i = load i64, ptr %i.k, align 8, !alias.scope !214, !noalias !215
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !214, !noalias !215
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !214, !noalias !215
  %.sroa.1058.0.copyload.i = load i64, ptr %.sroa.1058.0..sroa_idx.i, align 8, !alias.scope !214, !noalias !215
  %i.eo = zext i64 %.sroa.08.0.i to i128          ; 4 uses
  %i.ep = zext i64 %.sroa.052.0.copyload.i to i128
  %i.eq = mul nuw i128 %i.ep, %i.eo               ; 2 uses
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc i128 %i.eq to i64
  %i.et = zext i64 %.sroa.6.0.copyload.i to i128
  %i.eu = mul nuw i128 %i.et, %i.eo
  %i.ev = add nuw i128 %i.eu, %i.er               ; 2 uses
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = trunc i128 %i.ev to i64
  %i.ey = zext i64 %.sroa.8.0.copyload.i to i128
  %i.ez = mul nuw i128 %i.ey, %i.eo
  %i.fa = add nuw i128 %i.ew, %i.ez               ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = trunc i128 %i.fa to i64
  %i.fd = zext i64 %.sroa.1058.0.copyload.i to i128
  %i.fe = mul nuw i128 %i.fd, %i.eo
  %i.ff = add nuw i128 %i.fb, %i.fe               ; 2 uses
  %i.fg = lshr i128 %i.ff, 64
  %i.fh = trunc nuw i128 %i.fg to i64
  %i.fi = trunc i128 %i.ff to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !229
  store i64 %i.es, ptr %i.b, align 8, !noalias !230
  store i64 %i.ex, ptr %.sroa.6.0..sroa_idx54.i, align 8, !noalias !230
  store i64 %i.fc, ptr %.sroa.8.0..sroa_idx56.i, align 8, !noalias !230
  store i64 %i.fi, ptr %.sroa.1058.0..sroa_idx59.i, align 8, !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !noalias !229
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implyECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 %i.a, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3), !noalias !231
  store i64 %i.fh, ptr %i.dj, align 8, !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !229
  br i1 %.first_iter.i, label %bb.y, label %bb.w, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef -1, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !noalias !215
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fj = add nsw i64 %i.dv, -2                   ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 5
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fj
  br i1 %i.fk, label %.split92.preheader.i, label %bb.t

.split92.preheader.i:                             ; preds = %bb.s
  %i.fm = zext i64 %i.ek to i128
  %i.fn = shl nuw i128 %i.fm, 64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.em
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !217, !noundef !4
  %i.fq = zext i64 %i.fp to i128
  %i.fr = or disjoint i128 %i.fn, %i.fq           ; 2 uses
  %i.fs = udiv i128 %i.fr, %i.dh                  ; 2 uses
  %i.ft = mul i128 %i.fs, %i.dh
  %.decomposed = sub i128 %i.fr, %i.ft
  %i.fu = trunc nuw i128 %.decomposed to i64
  %i.fv = trunc i128 %i.fs to i64
  br label %.split92.i

.split92.i:                                       ; preds = %bb.v, %.split92.preheader.i
  %.sroa.08.1.i = phi i64 [ %i.gd, %bb.v ], [ %i.fv, %.split92.preheader.i ] ; 4 uses
  %.sroa.013.0.i = phi i64 [ %i.ge, %bb.v ], [ %i.fu, %.split92.preheader.i ] ; 4 uses
  %i.fw = zext i64 %.sroa.08.1.i to i128
  %i.fx = mul nuw i128 %i.fw, %i.di               ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = trunc nuw i128 %i.fy to i64             ; 2 uses
  %i.ga = icmp eq i64 %.sroa.013.0.i, %i.fz
  br i1 %i.ga, label %.split.i, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fj, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !noalias !215
  unreachable

.split.i:                                         ; preds = %.split92.i
  %i.gb = trunc i128 %i.fx to i64
  %i.gc = load i64, ptr %i.fl, align 8, !noalias !217, !noundef !4
  %.not80.i = icmp ult i64 %i.gc, %i.gb
  br i1 %.not80.i, label %bb.v, label %.loopexit.i

bb.u:                                             ; preds = %.split92.i
  %.not.i9 = icmp ult i64 %.sroa.013.0.i, %i.fz
  br i1 %.not.i9, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u, %.split.i
  %i.gd = add i64 %.sroa.08.1.i, -1               ; 2 uses
  %i.ge = add i64 %.sroa.013.0.i, %i.de           ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %.sroa.013.0.i
  br i1 %i.gf, label %.loopexit.i, label %.split92.i

bb.w:                                             ; preds = %.loopexit.i
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.4.093.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !233
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_4IteryEEINtB5_7ZipImplBW_B1r_E3newCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %i.gg, ptr noundef nonnull %i.dk, ptr noundef nonnull readonly align 8 %i.h, ptr noundef nonnull readonly %i.dm), !noalias !215
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %.val.i.i = load i64, ptr %i.dn, align 8, !alias.scope !234, !noalias !235, !noundef !4 ; 6 uses
  %.val6.i.i = load i64, ptr %i.do, align 8, !alias.scope !234, !noalias !235, !noundef !4 ; 3 uses
  %i.gh = sub i64 %.val6.i.i, %.val.i.i           ; 3 uses
  %.not.i36.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i36.i, label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutyEINtB10_4IteryEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQyRyENCINvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB3h_4U25611binop_sliceNvMs7_NtBc_3numy15overflowing_subE0E0EB3l_.exit.thread.i, label %.lr.ph.i37.i

_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutyEINtB10_4IteryEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQyRyENCINvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB3h_4U25611binop_sliceNvMs7_NtBc_3numy15overflowing_subE0E0EB3l_.exit.thread.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !233
  br label %bb.z
end_hunk_0
