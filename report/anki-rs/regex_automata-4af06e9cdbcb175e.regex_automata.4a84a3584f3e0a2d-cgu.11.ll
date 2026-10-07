Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.11?download=true
inline.NumInlined: 520
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN14regex_automata4meta8wrappers3DFA3new17h56a6cf15a43c5fdfE:bb.a
  %.sroa.6.0.i = phi i64 [ %i.ad, %bb.e ], [ 30, %bb.b ]
  %i.af = load ptr, ptr %3, align 8, !alias.scope !1772, !noalias !1782, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  %i.ah = load i64, ptr %i.ag, align 16, !noalias !1783, !noundef !5
  %i.ai = icmp ugt i64 %i.ah, %.sroa.6.0.i
  br i1 %i.ai, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !range !20, !noalias !1773, !noundef !5 ; 2 uses
  %.not40.i = icmp eq i64 %i.ak, 2
  br i1 %.not40.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.am = load i64, ptr %i.al, align 8, !noalias !1773
  %i.an = trunc nuw i64 %i.ak to i1
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i = phi i64 [ %i.am, %bb.h ], [ 40960, %bb.g ]
  %i.ao = lshr i64 %.sroa.5.0.i, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.i = phi i64 [ %i.ao, %bb.i ], [ undef, %bb.h ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1773
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i8 2, ptr %i.ap, align 16, !noalias !1773
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store i8 3, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1773
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 113
  store i8 2, ptr %i.aq, align 1, !noalias !1773
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 114
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 119
  store i8 3, ptr %i.as, align 1, !noalias !1773
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 115
  store i128 0, ptr %i.p, align 16, !noalias !1773
  store <4 x i8> splat (i8 2), ptr %i.at, align 1, !noalias !1773
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 2, ptr %i.au, align 16, !noalias !1773
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 2, ptr %i.av, align 16, !noalias !1773
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 130
  %i.ax = load i8, ptr %i.aw, align 2, !range !10, !noalias !1773, !noundef !5 ; 2 uses
  %.not41.i = icmp eq i8 %i.ax, 2
  %..i = select i1 %.not41.i, i8 1, i8 %i.ax      ; 2 uses
  %i.ay = icmp samesign ult i8 %..i, 2
  tail call void @llvm.assume(i1 %i.ay)
  store i8 %..i, ptr %i.ar, align 2, !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1773
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !10, !alias.scope !1771, !noalias !1776, !noundef !5 ; 2 uses
  %.not42.i = icmp ne i8 %i.ba, 2                 ; 2 uses
  br i1 %.not42.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %2, align 8, !alias.scope !1771, !noalias !1776, !nonnull !5, !noundef !5 ; 2 uses
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !noalias !1783
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 %i.ba, ptr %.sroa.634.0..sroa_idx.i, align 8, !noalias !1773
  invoke void @_ZN14regex_automata3dfa5dense6Config9prefilter17h51f349276c3872fcE(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.q, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.s unwind label %bb.r, !noalias !1783

bb.m:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !1771, !noalias !1776, !nonnull !5, !align !13, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1771, !noalias !1776, !noundef !5
  store ptr %i.bb, ptr %i.o, align 8, !noalias !1773
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bf, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !1773
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bh, ptr %.sroa.533.0..sroa_idx.i, align 8, !noalias !1773
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit96.i", %bb.r
  %.pn53.i = phi { ptr, i32 } [ %i.bn, %bb.r ], [ %.pn49.pn.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit96.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %i.bi = load i8, ptr %i.az, align 8, !range !10, !alias.scope !1785, !noalias !1776, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 2
  br i1 %i.bj, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E.exit56.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  %i.bk = load ptr, ptr %2, align 8, !alias.scope !1789, !noalias !1776, !nonnull !5, !noundef !5
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !1790
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E.exit56.i"

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E.exit56.i" unwind label %bb.br, !noalias !1791

bb.r:                                             ; preds = %bb.bw, %bb.bp, %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1773
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 115
  store i8 1, ptr %i.bo, align 1, !noalias !1773
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 137
  %i.bq = load i8, ptr %i.bp, align 1, !range !10, !noalias !1773, !noundef !5 ; 2 uses
  %.not43.i = icmp eq i8 %i.bq, 2
  %.55.i = select i1 %.not43.i, i8 1, i8 %i.bq    ; 2 uses
  %i.br = icmp samesign ult i8 %.55.i, 2
  call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 116
  store i8 %.55.i, ptr %i.bs, align 4, !noalias !1773
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 117
  store i8 1, ptr %i.bt, align 1, !noalias !1773
  %i.bu = zext i1 %.not42.i to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 118
  store i8 %i.bu, ptr %i.bv, align 2, !noalias !1773
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 %.sroa.02.0.i, ptr %i.bw, align 16, !noalias !1773
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i64 %.sroa.4.0.i, ptr %i.bx, align 8, !noalias !1773
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sroa.02.0.i, ptr %i.by, align 16, !noalias !1773
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %.sroa.4.0.i, ptr %i.bz, align 8, !noalias !1773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.r, ptr noundef nonnull align 16 dereferenceable(128) %i.q, i64 128, i1 false), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1773
  invoke void @_ZN14regex_automata3dfa5dense7Builder3new17h5392d71aeda98cc3E(ptr noalias noundef nonnull sret([576 x i8]) align 16 captures(address) dereferenceable(576) %i.m)
          to label %bb.u unwind label %bb.t, !noalias !1783

"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit96.i": ; preds = %bb.cd, %.thread21.i, %.thread17.i, %bb.cc, %bb.cb, %bb.z, %bb.t
  %.pn49.pn.i = phi { ptr, i32 } [ %.pn491320.i, %.thread17.i ], [ %.pn49.i, %bb.cb ], [ %i.ca, %bb.t ], [ %.pn49.i, %bb.cc ], [ %i.cx, %bb.z ], [ %.pn491424.i, %bb.cd ], [ %.pn491424.i, %.thread21.i ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E"(ptr noalias noundef align 16 dereferenceable(128) %i.r) #23
          to label %bb.o unwind label %bb.br, !noalias !1783

bb.t:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit96.i"

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1773
  call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 16, !range !10, !alias.scope !1793, !noalias !1794, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 4 uses
  %i.ce = load i8, ptr %i.cd, align 8, !range !9, !alias.scope !1793, !noalias !1794, !noundef !5 ; 3 uses
  %.not16.i.i = icmp eq i8 %i.ce, 3
  br i1 %.not16.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %.not.i.i.i = icmp eq i8 %i.ce, 2
  br i1 %.not.i.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.cg = load ptr, ptr %i.cf, align 16, !alias.scope !1797, !noalias !1798, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = atomicrmw add ptr %i.cg, i64 1 monotonic, align 8, !noalias !1799
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.x, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i": ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !1797, !noalias !1798, !nonnull !5, !align !13, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.cm = load i64, ptr %i.cl, align 16, !alias.scope !1797, !noalias !1798, !noundef !5
  br label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"

"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i", %bb.v, %bb.u
  %.sroa.534.0.i.i = phi i64 [ %i.cm, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.v ], [ undef, %bb.u ]
  %.sroa.4.037.i.i = phi ptr [ %i.ck, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.v ], [ undef, %bb.u ]
  %.sroa.0.036.i.i = phi ptr [ %i.cg, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.v ], [ undef, %bb.u ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 113 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 119
  %i.cp = load i8, ptr %i.co, align 1, !range !9, !alias.scope !1793, !noalias !1794, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 115
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  %i.cs = load <4 x i8>, ptr %i.cn, align 1, !alias.scope !1793, !noalias !1794
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 117 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !range !10, !alias.scope !1793, !noalias !1794, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cv = load i128, ptr %i.r, align 16, !range !27, !alias.scope !1793, !noalias !1794, !noundef !5
  %i.cw = trunc nuw i128 %i.cv to i1
  br i1 %i.cw, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, i64 32, i1 false), !noalias !1794
  br label %bb.aa

bb.z:                                             ; preds = %bb.ab, %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE"(ptr noalias noundef align 16 dereferenceable(576) %i.m) #23
          to label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit96.i" unwind label %bb.br, !noalias !1783

bb.aa:                                            ; preds = %bb.y, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"
  %.sroa.07.0.i.i = phi i128 [ 1, %bb.y ], [ 0, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i" ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 118 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 2, !range !10, !alias.scope !1793, !noalias !1794, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.db = load i64, ptr %i.da, align 16, !range !20, !alias.scope !1793, !noalias !1794, !noundef !5 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %.val30.i.i = load i64, ptr %i.dc, align 8, !alias.scope !1793, !noalias !1794
  %i.dd = and i64 %i.db, 1
  %i.de = icmp eq i64 %i.dd, 0
  %.sroa.512.0.i.i = select i1 %i.de, i64 undef, i64 %.val30.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 16, !range !20, !alias.scope !1793, !noalias !1794, !noundef !5 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %.val28.i.i = load i64, ptr %i.dh, align 8, !alias.scope !1793, !noalias !1794
  %i.di = and i64 %i.dg, 1
  %i.dj = icmp eq i64 %i.di, 0
  %.sroa.514.0.i.i = select i1 %i.dj, i64 undef, i64 %.val28.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i8 %i.cc, ptr %i.dk, align 16, !alias.scope !1792, !noalias !1800
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr %.sroa.0.036.i.i, ptr %i.dl, align 16, !alias.scope !1792, !noalias !1800
  %.sroa.4.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr %.sroa.4.037.i.i, ptr %.sroa.4.0..sroa_idx33.i.i, align 8, !alias.scope !1792, !noalias !1800
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i64 %.sroa.534.0.i.i, ptr %.sroa.534.0..sroa_idx.i.i, align 16, !alias.scope !1792, !noalias !1800
  %.sroa.6.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i8 %i.ce, ptr %.sroa.6.0..sroa_idx35.i.i, align 8, !alias.scope !1792, !noalias !1800
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 113
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 119
  store i8 %i.cp, ptr %i.dn, align 1, !alias.scope !1792, !noalias !1800
  store <4 x i8> %i.cs, ptr %i.dm, align 1, !alias.scope !1792, !noalias !1800
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 117
  store i8 %i.cu, ptr %i.do, align 1, !alias.scope !1792, !noalias !1800
  store i128 %.sroa.07.0.i.i, ptr %i.l, align 16, !alias.scope !1792, !noalias !1800
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx9.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !1800
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 118
  store i8 %i.cz, ptr %i.dp, align 2, !alias.scope !1792, !noalias !1800
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.db, ptr %i.dq, align 16, !alias.scope !1792, !noalias !1800
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.512.0.i.i, ptr %i.dr, align 8, !alias.scope !1792, !noalias !1800
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %i.dg, ptr %i.ds, align 16, !alias.scope !1792, !noalias !1800
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i64 %.sroa.514.0.i.i, ptr %i.dt, align 8, !alias.scope !1792, !noalias !1800
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %i.du = invoke noundef align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5dense7Builder9configure17h117425fae8042646E(ptr noalias noundef nonnull align 16 dereferenceable(576) %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.l)
          to label %bb.ab unwind label %bb.z, !noalias !1783

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1773
  invoke void @_ZN14regex_automata3dfa5dense7Builder14build_from_nfa17h1427c9d1abb48235E(ptr noalias noundef nonnull sret([800 x i8]) align 16 captures(address) dereferenceable(800) %i.n, ptr noundef nonnull align 16 %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
          to label %bb.ac unwind label %bb.z, !noalias !1783

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.dx = load i8, ptr %i.dw, align 8, !range !9, !alias.scope !1804, !noalias !1773, !noundef !5 ; 2 uses
  %i.dy = icmp eq i8 %i.dx, 3
  br i1 %i.dy, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.dz = icmp eq i8 %i.dx, 2
  br i1 %i.dz, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  %i.ea = load ptr, ptr %i.dv, align 16, !alias.scope !1809, !noalias !1773, !nonnull !5, !noundef !5
  %i.eb = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !1810
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.af, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i"

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dv)
          to label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i" unwind label %bb.ag, !noalias !1783

bb.ag:                                            ; preds = %bb.af
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.ee) #23
          to label %.body.thread.i unwind label %bb.ah, !noalias !1783

"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i": ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.ef)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i" unwind label %bb.ai, !noalias !1783

bb.ah:                                            ; preds = %bb.ag
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !1783
  unreachable

.body.i:                                          ; preds = %.thread.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit94.i", %bb.ai
  %.pn49.i = phi { ptr, i32 } [ %.pn45.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit94.i" ], [ %.pn45.pn3.i, %.thread.i ], [ %i.el, %bb.ai ] ; 4 uses
  %.sroa.014.0.i = phi i1 [ true, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit94.i" ], [ true, %.thread.i ], [ %.sroa.014.1.i, %bb.ai ]
  %.sroa.013.0.i = phi i1 [ false, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit94.i" ], [ false, %.thread.i ], [ %.sroa.013.1.i, %bb.ai ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  %i.ei = load i64, ptr %i.eh, align 16, !range !20, !noalias !1773, !noundef !5
  %.not51.i = icmp eq i64 %i.ei, 2
  br i1 %.not51.i, label %bb.cc, label %bb.cb

.body.thread.i:                                   ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  %i.ek = load i64, ptr %i.ej, align 16, !range !20, !noalias !1773, !noundef !5
  %.not5112.i = icmp eq i64 %i.ek, 2
  br i1 %.not5112.i, label %.thread21.i, label %.thread17.i

bb.ai:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit85.i", %bb.ak, %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i"
  %.sroa.014.1.i = phi i1 [ false, %bb.ak ], [ true, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit85.i" ], [ true, %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i" ]
  %.sroa.013.1.i = phi i1 [ true, %bb.ak ], [ false, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit85.i" ], [ true, %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i" ]
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i": ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1773
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  %i.en = load i64, ptr %i.em, align 16, !range !20, !noalias !1773, !noundef !5
  %i.eo = icmp eq i64 %i.en, 2
  br i1 %i.eo, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 16 dereferenceable(128) %i.n, i64 128, i1 false), !noalias !1773
  %i.ep = load i64, ptr %i.j, align 8, !range !22, !alias.scope !1811, !noalias !1773, !noundef !5
  %i.eq = icmp ult i64 %i.ep, -9223372036854775800
  br i1 %i.eq, label %bb.ak, label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit.i"

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$regex_automata..nfa..thompson..error..BuildError$GT$17hca8b73f8aaaea77cE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.j)
          to label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit.i" unwind label %bb.ai, !noalias !1783

bb.al:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %i.k, ptr noundef nonnull align 16 dereferenceable(800) %i.n, i64 800, i1 false), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1773
  invoke void @_ZN14regex_automata3dfa5dense7Builder3new17h5392d71aeda98cc3E(ptr noalias noundef nonnull sret([576 x i8]) align 16 captures(address) dereferenceable(576) %i.h)
          to label %bb.an unwind label %bb.am, !noalias !1783

"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit94.i": ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx
  br i1 %.sroa.012.1.i, label %.thread.i, label %.body.i

bb.am:                                            ; preds = %bb.al
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  %i.es = load i8, ptr %i.cb, align 16, !range !10, !alias.scope !1813, !noalias !1814, !noundef !5
  %i.et = load i8, ptr %i.cd, align 8, !range !9, !alias.scope !1813, !noalias !1814, !noundef !5 ; 3 uses
  %.not16.i60.i = icmp eq i8 %i.et, 3
  br i1 %.not16.i60.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i63.i", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  %.not.i.i61.i = icmp eq i8 %i.et, 2
  br i1 %.not.i.i61.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i63.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eu = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %i.ev = load ptr, ptr %i.eu, align 16, !alias.scope !1817, !noalias !1818, !nonnull !5, !noundef !5 ; 2 uses
  %i.ew = atomicrmw add ptr %i.ev, i64 1 monotonic, align 8, !noalias !1819
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %bb.aq, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i62.i"

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i62.i": ; preds = %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !1817, !noalias !1818, !nonnull !5, !align !13, !noundef !5
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.fb = load i64, ptr %i.fa, align 16, !alias.scope !1817, !noalias !1818, !noundef !5
  br label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i63.i"

"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i63.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i62.i", %bb.ao, %bb.an
  %.sroa.534.0.i65.i = phi i64 [ %i.fb, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i62.i" ], [ undef, %bb.ao ], [ undef, %bb.an ]
  %.sroa.4.037.i66.i = phi ptr [ %i.ez, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i62.i" ], [ undef, %bb.ao ], [ undef, %bb.an ]
  %.sroa.0.036.i67.i = phi ptr [ %i.ev, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i62.i" ], [ undef, %bb.ao ], [ undef, %bb.an ]
  %i.fc = load i8, ptr %i.cn, align 1, !range !10, !alias.scope !1813, !noalias !1814, !noundef !5
  %i.fd = load i8, ptr %i.cq, align 1, !range !10, !alias.scope !1813, !noalias !1814, !noundef !5
  %i.fe = load i8, ptr %i.cr, align 4, !range !10, !alias.scope !1813, !noalias !1814, !noundef !5
  %i.ff = load i8, ptr %i.ct, align 1, !range !10, !alias.scope !1813, !noalias !1814, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i59.i)
  %i.fg = load i128, ptr %i.r, align 16, !range !27, !alias.scope !1813, !noalias !1814, !noundef !5
  %i.fh = trunc nuw i128 %i.fg to i1
  br i1 %i.fh, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i63.i"
  %.sroa.5.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i59.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i77.i, i64 32, i1 false), !noalias !1814
  br label %bb.at

bb.as:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE"(ptr noalias noundef align 16 dereferenceable(576) %i.h) #23
          to label %.thread.i unwind label %bb.br, !noalias !1783

bb.at:                                            ; preds = %bb.ar, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i63.i"
  %.sroa.07.0.i68.i = phi i128 [ 1, %bb.ar ], [ 0, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i63.i" ]
  %i.fj = load i8, ptr %i.cy, align 2, !range !10, !alias.scope !1813, !noalias !1814, !noundef !5
  %i.fk = load i64, ptr %i.da, align 16, !range !20, !alias.scope !1813, !noalias !1814, !noundef !5 ; 2 uses
  %.val30.i69.i = load i64, ptr %i.dc, align 8, !alias.scope !1813, !noalias !1814
  %i.fl = and i64 %i.fk, 1
  %i.fm = icmp eq i64 %i.fl, 0
  %.sroa.512.0.i70.i = select i1 %i.fm, i64 undef, i64 %.val30.i69.i
  %i.fn = load i64, ptr %i.df, align 16, !range !20, !alias.scope !1813, !noalias !1814, !noundef !5 ; 2 uses
  %.val28.i71.i = load i64, ptr %i.dh, align 8, !alias.scope !1813, !noalias !1814
  %i.fo = and i64 %i.fn, 1
  %i.fp = icmp eq i64 %i.fo, 0
  %.sroa.514.0.i72.i = select i1 %i.fp, i64 undef, i64 %.val28.i71.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 %i.es, ptr %i.fq, align 16, !alias.scope !1812, !noalias !1820
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %.sroa.0.036.i67.i, ptr %i.fr, align 16, !alias.scope !1812, !noalias !1820
  %.sroa.4.0..sroa_idx33.i73.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %.sroa.4.037.i66.i, ptr %.sroa.4.0..sroa_idx33.i73.i, align 8, !alias.scope !1812, !noalias !1820
  %.sroa.534.0..sroa_idx.i74.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 %.sroa.534.0.i65.i, ptr %.sroa.534.0..sroa_idx.i74.i, align 16, !alias.scope !1812, !noalias !1820
  %.sroa.6.0..sroa_idx35.i75.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i8 %i.et, ptr %.sroa.6.0..sroa_idx35.i75.i, align 8, !alias.scope !1812, !noalias !1820
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 113
  store i8 %i.fc, ptr %i.fs, align 1, !alias.scope !1812, !noalias !1820
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 114
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 119
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 115
  store i8 %i.fd, ptr %i.fv, align 1, !alias.scope !1812, !noalias !1820
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i8 %i.fe, ptr %i.fw, align 4, !alias.scope !1812, !noalias !1820
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 117
  store i8 %i.ff, ptr %i.fx, align 1, !alias.scope !1812, !noalias !1820
  store i128 %.sroa.07.0.i68.i, ptr %i.f, align 16, !alias.scope !1812, !noalias !1820
  %.sroa.5.0..sroa_idx9.i76.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx9.i76.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i59.i, i64 32, i1 false), !noalias !1820
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 118
  store i8 %i.fj, ptr %i.fy, align 2, !alias.scope !1812, !noalias !1820
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %i.fk, ptr %i.fz, align 16, !alias.scope !1812, !noalias !1820
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.512.0.i70.i, ptr %i.ga, align 8, !alias.scope !1812, !noalias !1820
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %i.fn, ptr %i.gb, align 16, !alias.scope !1812, !noalias !1820
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 %.sroa.514.0.i72.i, ptr %i.gc, align 8, !alias.scope !1812, !noalias !1820
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i59.i)
  store i8 2, ptr %i.fu, align 1, !noalias !1773
  store i8 0, ptr %i.ft, align 2, !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1773
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 2, ptr %i.gd, align 8, !noalias !1773
  invoke void @_ZN14regex_automata3dfa5dense6Config9prefilter17h51f349276c3872fcE(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.au unwind label %bb.as, !noalias !1783

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1773
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 118
  store i8 0, ptr %i.ge, align 2, !noalias !1773
  %i.gf = invoke noundef align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5dense7Builder9configure17h117425fae8042646E(ptr noalias noundef nonnull align 16 dereferenceable(576) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.g)
          to label %bb.av unwind label %bb.as, !noalias !1783

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN14regex_automata3dfa5dense7Builder14build_from_nfa17h1427c9d1abb48235E(ptr noalias noundef nonnull sret([800 x i8]) align 16 captures(address) dereferenceable(800) %i.i, ptr noundef nonnull align 16 %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
          to label %bb.aw unwind label %bb.as, !noalias !1783

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.gi = load i8, ptr %i.gh, align 8, !range !9, !alias.scope !1824, !noalias !1773, !noundef !5 ; 2 uses
  %i.gj = icmp eq i8 %i.gi, 3
  br i1 %i.gj, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i79.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %i.gk = icmp eq i8 %i.gi, 2
  br i1 %i.gk, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i79.i", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %i.gl = load ptr, ptr %i.gg, align 16, !alias.scope !1829, !noalias !1773, !nonnull !5, !noundef !5
  %i.gm = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !1830
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.az, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i79.i"

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gg)
          to label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i79.i" unwind label %bb.ba, !noalias !1783

bb.ba:                                            ; preds = %bb.az
  %i.go = landingpad { ptr, i32 }
          cleanup
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.gp) #23
          to label %.body81.i unwind label %bb.bb, !noalias !1783

"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i79.i": ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.gq)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit83.i" unwind label %bb.bc, !noalias !1783

bb.bb:                                            ; preds = %bb.ba
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !1783
  unreachable

.body81.i:                                        ; preds = %bb.bs, %.body86.i, %bb.bc, %bb.ba
  %.pn45.i = phi { ptr, i32 } [ %i.go, %bb.ba ], [ %i.ib, %bb.bs ], [ %i.gu, %bb.bc ], [ %eh.lpad-body87.i, %.body86.i ] ; 2 uses
  %.sroa.012.1.i = phi i1 [ true, %bb.ba ], [ true, %bb.bs ], [ true, %bb.bc ], [ false, %.body86.i ]
  %.sroa.011.0.i = phi i1 [ true, %bb.ba ], [ true, %bb.bs ], [ %.sroa.011.1.i, %bb.bc ], [ true, %.body86.i ]
  %.sroa.010.0.i = phi i1 [ true, %bb.ba ], [ false, %bb.bs ], [ true, %bb.bc ], [ false, %.body86.i ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.i, i64 464
  %i.gt = load i64, ptr %i.gs, align 16, !range !20, !noalias !1773, !noundef !5
  %.not47.i = icmp eq i64 %i.gt, 2
  br i1 %.not47.i, label %bb.by, label %bb.bx

bb.bc:                                            ; preds = %bb.be, %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i79.i"
  %.sroa.011.1.i = phi i1 [ false, %bb.be ], [ true, %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i79.i" ]
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i

"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit83.i": ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i79.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1773
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 464
  %i.gw = load i64, ptr %i.gv, align 16, !range !20, !noalias !1773, !noundef !5
  %i.gx = icmp eq i64 %i.gw, 2
  br i1 %i.gx, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit83.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %i.i, i64 128, i1 false), !noalias !1773
  %i.gy = load i64, ptr %i.c, align 8, !range !22, !alias.scope !1831, !noalias !1773, !noundef !5
  %i.gz = icmp ult i64 %i.gy, -9223372036854775800
  br i1 %i.gz, label %bb.be, label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit85.i"

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$regex_automata..nfa..thompson..error..BuildError$GT$17hca8b73f8aaaea77cE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..dfa..dense..BuildError$GT$17h223b2c7b1fb29aa5E.exit85.i" unwind label %bb.bc, !noalias !1783

bb.bf:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit83.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %i.d, ptr noundef nonnull align 16 dereferenceable(800) %i.i, i64 800, i1 false), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1773
  invoke void @_ZN14regex_automata3dfa5regex7Builder3new17h72e82f1a6739f313E(ptr noalias noundef nonnull sret([576 x i8]) align 16 captures(address) dereferenceable(576) %i.a)
          to label %bb.bg unwind label %bb.bs, !noalias !1783

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %i.b, ptr noundef nonnull align 16 dereferenceable(800) %i.k, i64 800, i1 false), !noalias !1773
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %i.ha, ptr noundef nonnull align 16 dereferenceable(800) %i.i, i64 800, i1 false), !noalias !1773
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.hd = load i8, ptr %i.hc, align 8, !range !9, !alias.scope !1836, !noalias !1773, !noundef !5 ; 2 uses
  %i.he = icmp eq i8 %i.hd, 3
  br i1 %i.he, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i.i", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  %i.hf = icmp eq i8 %i.hd, 2
  br i1 %i.hf, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i.i", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %i.hg = load ptr, ptr %i.hb, align 16, !alias.scope !1841, !noalias !1773, !nonnull !5, !noundef !5
  %i.hh = atomicrmw sub ptr %i.hg, i64 1 release, align 8, !noalias !1842
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.bj, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i.i"

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hb)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i.i" unwind label %bb.bk, !noalias !1783

bb.bk:                                            ; preds = %bb.bj
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.hk) #23
          to label %.body86.i unwind label %bb.bl, !noalias !1783

bb.bl:                                            ; preds = %bb.bk
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !1783
  unreachable

"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i.i": ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.hm)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE.exit.i" unwind label %bb.bm, !noalias !1783

bb.bm:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i.i"
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

.body86.i:                                        ; preds = %bb.bm, %bb.bk
  %eh.lpad-body87.i = phi { ptr, i32 } [ %i.hn, %bb.bm ], [ %i.hj, %bb.bk ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$regex_automata..dfa..regex..Regex$GT$17hb9411489cc18e2ebE"(ptr noalias noundef align 16 dereferenceable(1600) %i.b) #23
          to label %.body81.i unwind label %bb.br, !noalias !1783

"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE.exit.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1264) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(1264) %i.b, i64 1264, i1 false), !noalias !1843
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  %.sroa.4.0.copyload2 = load i64, ptr %.sroa.4.0..sroa_idx1, align 16, !noalias !1843 ; 3 uses
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.8.0..sroa_idx3, i64 328, i1 false), !noalias !1843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1773
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  %i.hp = load i8, ptr %i.cd, align 8, !range !9, !alias.scope !1846, !noalias !1773, !noundef !5 ; 2 uses
  %i.hq = icmp eq i8 %i.hp, 3
  br i1 %i.hq, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i", label %bb.bn
end_hunk_0
begin_hunk_1_@_ZN14regex_automata4meta8wrappers6Hybrid3new17h0c5bf1717c71b012E:bb.a
  store i8 3, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2032
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 129
  store i128 0, ptr %i.p, align 16, !noalias !2032
  store <4 x i8> splat (i8 2), ptr %i.v, align 1, !noalias !2032
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 0, ptr %i.w, align 16, !noalias !2032
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 133
  store i8 2, ptr %i.x, align 1, !noalias !2032
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 2, ptr %i.y, align 16, !noalias !2032
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i64 2, ptr %i.z, align 16, !noalias !2032
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 130
  %i.ab = load i8, ptr %i.aa, align 2, !range !10, !noalias !2032, !noundef !5 ; 2 uses
  %.not27.i = icmp eq i8 %i.ab, 2
  %..i = select i1 %.not27.i, i8 1, i8 %i.ab      ; 2 uses
  %i.ac = icmp samesign ult i8 %..i, 2
  tail call void @llvm.assume(i1 %i.ac)
  store i8 %..i, ptr %i.u, align 16, !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2032
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !10, !alias.scope !2031, !noalias !2033, !noundef !5 ; 2 uses
  %.not28.i = icmp ne i8 %i.ae, 2                 ; 2 uses
  br i1 %.not28.i, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a, %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit85.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !range !10, !alias.scope !2035, !noalias !2033, !noundef !5
  %i.ah = icmp eq i8 %i.ag, 2
  br i1 %i.ah, label %_ZN14regex_automata4meta8wrappers12HybridEngine3new17hc52cddbde80722f5E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  %i.ai = load ptr, ptr %2, align 8, !alias.scope !2039, !noalias !2033, !nonnull !5, !noundef !5
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2040
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E.exit.sink.split.i", label %_ZN14regex_automata4meta8wrappers12HybridEngine3new17hc52cddbde80722f5E.exit

bb.e:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %2, align 8, !alias.scope !2031, !noalias !2033, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !noalias !2032
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.b
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2032
  invoke void @_ZN14regex_automata6hybrid3dfa6Config9prefilter17ha87847b58fd06147E(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.q, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.m unwind label %bb.l, !noalias !2032

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !2031, !noalias !2033, !nonnull !5, !align !13, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !2031, !noalias !2033, !noundef !5
  store ptr %i.al, ptr %i.o, align 8, !noalias !2032
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ap, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !2032
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2032
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit89.i", %bb.l
  %.pn39.i = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %.pn35.pn.i, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit89.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  %i.as = load i8, ptr %i.ad, align 8, !range !10, !alias.scope !2042, !noalias !2033, !noundef !5
  %i.at = icmp eq i8 %i.as, 2
  br i1 %i.at, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E.exit42.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.au = load ptr, ptr %2, align 8, !alias.scope !2046, !noalias !2033, !nonnull !5, !noundef !5
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2047
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.k, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E.exit42.i"

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E.exit42.i" unwind label %bb.br, !noalias !2033

bb.l:                                             ; preds = %bb.cc, %bb.bp, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2032
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 129
  store i8 1, ptr %i.ay, align 1, !noalias !2032
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 137
  %i.bb = load i8, ptr %i.ba, align 1, !range !10, !noalias !2032, !noundef !5 ; 2 uses
  %.not29.i = icmp eq i8 %i.bb, 2
  %.41.i = select i1 %.not29.i, i8 1, i8 %i.bb    ; 2 uses
  %i.bc = icmp samesign ult i8 %.41.i, 2
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 130
  store i8 %.41.i, ptr %i.bd, align 2, !noalias !2032
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 131
  store i8 1, ptr %i.be, align 1, !noalias !2032
  %i.bf = zext i1 %.not28.i to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 132
  store i8 %i.bf, ptr %i.bg, align 4, !noalias !2032
  %i.bh = load i64, ptr %i.az, align 8, !range !15, !noalias !2032, !noundef !5
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !2032
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.02.0.i = phi i64 [ %i.bk, %bb.n ], [ 2097152, %bb.m ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 1, ptr %i.bl, align 16, !noalias !2032
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %.sroa.02.0.i, ptr %i.bm, align 8, !noalias !2032
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 133
  store i8 0, ptr %i.bn, align 1, !noalias !2032
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 1, ptr %i.bo, align 16, !noalias !2032
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i64 3, ptr %i.bp, align 8, !noalias !2032
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i64 1, ptr %i.bq, align 16, !noalias !2032
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store i64 10, ptr %i.br, align 8, !noalias !2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.r, ptr noundef nonnull align 16 dereferenceable(144) %i.q, i64 144, i1 false), !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2032
  invoke void @_ZN14regex_automata6hybrid3dfa7Builder3new17h5e9fc2b14388f33dE(ptr noalias noundef nonnull sret([592 x i8]) align 16 captures(address) dereferenceable(592) %i.m)
          to label %bb.q unwind label %bb.p, !noalias !2032

"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit89.i": ; preds = %bb.ck, %.thread25.i, %.thread21.i, %bb.cj, %bb.ci, %bb.v, %bb.p
  %.pn35.pn.i = phi { ptr, i32 } [ %.pn351724.i, %.thread21.i ], [ %.pn35.i, %bb.ci ], [ %i.bs, %bb.p ], [ %.pn35.i, %bb.cj ], [ %i.cn, %bb.v ], [ %.pn351828.i, %bb.ck ], [ %.pn351828.i, %.thread25.i ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E"(ptr noalias noundef align 16 dereferenceable(144) %i.r) #23
          to label %bb.i unwind label %bb.br, !noalias !2032

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit89.i"

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2032
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.bu = load i8, ptr %i.bt, align 16, !range !10, !alias.scope !2049, !noalias !2050, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 120 ; 4 uses
  %i.bw = load i8, ptr %i.bv, align 8, !range !9, !alias.scope !2049, !noalias !2050, !noundef !5 ; 3 uses
  %.not16.i.i = icmp eq i8 %i.bw, 3
  br i1 %.not16.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  %.not.i.i.i = icmp eq i8 %i.bw, 2
  br i1 %.not.i.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %i.by = load ptr, ptr %i.bx, align 16, !alias.scope !2053, !noalias !2054, !nonnull !5, !noundef !5 ; 2 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !noalias !2055
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.t, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i"

bb.t:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i": ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !2053, !noalias !2054, !nonnull !5, !align !13, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ce = load i64, ptr %i.cd, align 16, !alias.scope !2053, !noalias !2054, !noundef !5
  br label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"

"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i", %bb.r, %bb.q
  %.sroa.532.0.i.i = phi i64 [ %i.ce, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.r ], [ undef, %bb.q ]
  %.sroa.4.035.i.i = phi ptr [ %i.cc, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.r ], [ undef, %bb.q ]
  %.sroa.0.034.i.i = phi ptr [ %i.by, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.r ], [ undef, %bb.q ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 129 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !range !10, !alias.scope !2049, !noalias !2050, !noundef !5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 130 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 2, !range !10, !alias.scope !2049, !noalias !2050, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 131 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !range !10, !alias.scope !2049, !noalias !2050, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cl = load i128, ptr %i.r, align 16, !range !27, !alias.scope !2049, !noalias !2050, !noundef !5
  %i.cm = trunc nuw i128 %i.cl to i1
  br i1 %i.cm, label %bb.u, label %bb.w

bb.u:                                             ; preds = %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, i64 32, i1 false), !noalias !2050
  br label %bb.w

bb.v:                                             ; preds = %bb.y, %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E"(ptr noalias noundef align 16 dereferenceable(592) %i.m) #23
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit89.i" unwind label %bb.br, !noalias !2032

bb.w:                                             ; preds = %bb.u, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"
  %.sroa.04.0.i.i = phi i128 [ 1, %bb.u ], [ 0, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i" ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 132 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 4, !range !10, !alias.scope !2049, !noalias !2050, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 16, !range !15, !alias.scope !2049, !noalias !2050, !noundef !5 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !2049, !noalias !2050
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 133 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !range !10, !alias.scope !2049, !noalias !2050, !noundef !5
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 16, !range !20, !alias.scope !2049, !noalias !2050, !noundef !5 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %.val28.i.i = load i64, ptr %i.cy, align 8, !alias.scope !2049, !noalias !2050
  %i.cz = and i64 %i.cx, 1
  %i.da = icmp eq i64 %i.cz, 0
  %.sroa.512.0.i.i = select i1 %i.da, i64 undef, i64 %.val28.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 16, !range !20, !alias.scope !2049, !noalias !2050, !noundef !5 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 2 uses
  %.val26.i.i = load i64, ptr %i.dd, align 8, !alias.scope !2049, !noalias !2050
  %i.de = and i64 %i.dc, 1
  %i.df = icmp eq i64 %i.de, 0
  %.sroa.514.0.i.i = select i1 %i.df, i64 undef, i64 %.val26.i.i
  %i.dg = trunc nuw i64 %i.cr to i1
  %.sroa.59.0.i.i = select i1 %i.dg, i64 %i.ct, i64 undef
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i8 %i.bu, ptr %i.dh, align 16, !alias.scope !2048, !noalias !2056
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store ptr %.sroa.0.034.i.i, ptr %i.di, align 16, !alias.scope !2048, !noalias !2056
  %.sroa.4.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store ptr %.sroa.4.035.i.i, ptr %.sroa.4.0..sroa_idx31.i.i, align 8, !alias.scope !2048, !noalias !2056
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %.sroa.532.0.i.i, ptr %.sroa.532.0..sroa_idx.i.i, align 16, !alias.scope !2048, !noalias !2056
  %.sroa.6.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i8 %i.bw, ptr %.sroa.6.0..sroa_idx33.i.i, align 8, !alias.scope !2048, !noalias !2056
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 129
  store i8 %i.cg, ptr %i.dj, align 1, !alias.scope !2048, !noalias !2056
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 130
  store i8 %i.ci, ptr %i.dk, align 2, !alias.scope !2048, !noalias !2056
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 131
  store i8 %i.ck, ptr %i.dl, align 1, !alias.scope !2048, !noalias !2056
  store i128 %.sroa.04.0.i.i, ptr %i.l, align 16, !alias.scope !2048, !noalias !2056
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx6.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !2056
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  store i8 %i.cp, ptr %i.dm, align 4, !alias.scope !2048, !noalias !2056
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.cr, ptr %i.dn, align 16, !alias.scope !2048, !noalias !2056
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.59.0.i.i, ptr %i.do, align 8, !alias.scope !2048, !noalias !2056
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 133
  store i8 %i.cv, ptr %i.dp, align 1, !alias.scope !2048, !noalias !2056
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %i.cx, ptr %i.dq, align 16, !alias.scope !2048, !noalias !2056
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i64 %.sroa.512.0.i.i, ptr %i.dr, align 8, !alias.scope !2048, !noalias !2056
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 %i.dc, ptr %i.ds, align 16, !alias.scope !2048, !noalias !2056
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i64 %.sroa.514.0.i.i, ptr %i.dt, align 8, !alias.scope !2048, !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %i.du = invoke noundef align 16 dereferenceable(592) ptr @_ZN14regex_automata6hybrid3dfa7Builder9configure17hd82b1a2a9ca26354E(ptr noalias noundef nonnull align 16 dereferenceable(592) %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.l)
          to label %bb.x unwind label %bb.v, !noalias !2032

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2032
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.dv = atomicrmw add ptr %.val1, i64 1 monotonic, align 8, !noalias !2032
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN14regex_automata6hybrid3dfa7Builder14build_from_nfa17h2ade6d8da2a3fecaE(ptr noalias noundef nonnull sret([720 x i8]) align 16 captures(address) dereferenceable(720) %i.n, ptr noundef nonnull align 16 %i.du, ptr noundef nonnull %.val1)
          to label %bb.aa unwind label %bb.v, !noalias !2032

bb.z:                                             ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.dz = load i8, ptr %i.dy, align 8, !range !9, !alias.scope !2060, !noalias !2032, !noundef !5 ; 2 uses
  %i.ea = icmp eq i8 %i.dz, 3
  br i1 %i.ea, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.eb = icmp eq i8 %i.dz, 2
  br i1 %i.eb, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  call void @llvm.experimental.noalias.scope.decl(metadata !2063)
  call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  %i.ec = load ptr, ptr %i.dx, align 16, !alias.scope !2065, !noalias !2032, !nonnull !5, !noundef !5
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !2066
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ad, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i"

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dx)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i" unwind label %bb.ae, !noalias !2032

bb.ae:                                            ; preds = %bb.ad
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.eg) #23
          to label %.body.thread.i unwind label %bb.af, !noalias !2032

"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i": ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.eh)
          to label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i" unwind label %bb.ag, !noalias !2032

bb.af:                                            ; preds = %bb.ae
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !2032
  unreachable

.body.i:                                          ; preds = %.thread.i, %bb.bx, %bb.bw, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit87.i", %bb.ag
  %.pn35.i = phi { ptr, i32 } [ %.pn31.i, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit87.i" ], [ %.pn31.pn7.i, %.thread.i ], [ %i.in, %bb.bw ], [ %i.el, %bb.ag ], [ %i.in, %bb.bx ] ; 4 uses
  %.sroa.08.0.i = phi i1 [ true, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit87.i" ], [ true, %.thread.i ], [ true, %bb.bw ], [ %.sroa.08.1.i, %bb.ag ], [ true, %bb.bx ]
  %.sroa.07.0.i = phi i1 [ false, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit87.i" ], [ false, %.thread.i ], [ false, %bb.bw ], [ %.sroa.07.1.i, %bb.ag ], [ false, %bb.bx ]
  %i.ej = load i128, ptr %i.n, align 16, !range !23, !noalias !2032, !noundef !5
  %.not37.i = icmp eq i128 %i.ej, 2
  br i1 %.not37.i, label %bb.cj, label %bb.ci

.body.thread.i:                                   ; preds = %bb.ae
  %i.ek = load i128, ptr %i.n, align 16, !range !23, !noalias !2032, !noundef !5
  %.not3716.i = icmp eq i128 %i.ek, 2
  br i1 %.not3716.i, label %.thread25.i, label %.thread21.i

bb.ag:                                            ; preds = %bb.by, %bb.ai, %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i"
  %.sroa.08.1.i = phi i1 [ false, %bb.ai ], [ true, %bb.by ], [ true, %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i" ]
  %.sroa.07.1.i = phi i1 [ true, %bb.ai ], [ false, %bb.by ], [ true, %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i" ]
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2032
  %i.em = load i128, ptr %i.n, align 16, !range !23, !noalias !2032, !noundef !5
  %i.en = icmp eq i128 %i.em, 2
  br i1 %i.en, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2032
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 16 dereferenceable(128) %i.eo, i64 128, i1 false), !noalias !2032
  %i.ep = load i64, ptr %i.j, align 8, !range !26, !alias.scope !2067, !noalias !2032, !noundef !5
  %i.eq = icmp ult i64 %i.ep, -9223372036854775800
  br i1 %i.eq, label %bb.ai, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit.i"

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$regex_automata..nfa..thompson..error..BuildError$GT$17hca8b73f8aaaea77cE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit.i" unwind label %bb.ag, !noalias !2032

bb.aj:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %i.k, ptr noundef nonnull align 16 dereferenceable(720) %i.n, i64 720, i1 false), !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2032
  invoke void @_ZN14regex_automata6hybrid3dfa7Builder3new17h5e9fc2b14388f33dE(ptr noalias noundef nonnull sret([592 x i8]) align 16 captures(address) dereferenceable(592) %i.h)
          to label %bb.al unwind label %bb.ak, !noalias !2032

"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit87.i": ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  br i1 %.sroa.06.1.i, label %.thread.i, label %.body.i

bb.ak:                                            ; preds = %bb.aj
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  %i.es = load i8, ptr %i.bv, align 8, !range !9, !alias.scope !2069, !noalias !2070, !noundef !5 ; 3 uses
  %.not16.i46.i = icmp eq i8 %i.es, 3
  br i1 %.not16.i46.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i49.i", label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  %.not.i.i47.i = icmp eq i8 %i.es, 2
  br i1 %.not.i.i47.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i49.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  %i.eu = load ptr, ptr %i.et, align 16, !alias.scope !2073, !noalias !2074, !nonnull !5, !noundef !5 ; 2 uses
  %i.ev = atomicrmw add ptr %i.eu, i64 1 monotonic, align 8, !noalias !2075
  %i.ew = icmp slt i64 %i.ev, 0
  br i1 %i.ew, label %bb.ao, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i48.i"

bb.ao:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i48.i": ; preds = %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !2073, !noalias !2074, !nonnull !5, !align !13, !noundef !5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.fa = load i64, ptr %i.ez, align 16, !alias.scope !2073, !noalias !2074, !noundef !5
  br label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i49.i"

"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i49.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i48.i", %bb.am, %bb.al
  %.sroa.532.0.i51.i = phi i64 [ %i.fa, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i48.i" ], [ undef, %bb.am ], [ undef, %bb.al ]
  %.sroa.4.035.i52.i = phi ptr [ %i.ey, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i48.i" ], [ undef, %bb.am ], [ undef, %bb.al ]
  %.sroa.0.034.i53.i = phi ptr [ %i.eu, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i48.i" ], [ undef, %bb.am ], [ undef, %bb.al ]
  %i.fb = load i8, ptr %i.cf, align 1, !range !10, !alias.scope !2069, !noalias !2070, !noundef !5
  %i.fc = load i8, ptr %i.ch, align 2, !range !10, !alias.scope !2069, !noalias !2070, !noundef !5
  %i.fd = load i8, ptr %i.cj, align 1, !range !10, !alias.scope !2069, !noalias !2070, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i45.i)
  %i.fe = load i128, ptr %i.r, align 16, !range !27, !alias.scope !2069, !noalias !2070, !noundef !5
  %i.ff = trunc nuw i128 %i.fe to i1
  br i1 %i.ff, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i49.i"
  %.sroa.5.0..sroa_idx.i64.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i45.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i64.i, i64 32, i1 false), !noalias !2070
  br label %bb.ar

bb.aq:                                            ; preds = %bb.au, %bb.as, %bb.ar
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E"(ptr noalias noundef align 16 dereferenceable(592) %i.h) #23
          to label %.thread.i unwind label %bb.br, !noalias !2032

bb.ar:                                            ; preds = %bb.ap, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i49.i"
  %.sroa.04.0.i54.i = phi i128 [ 1, %bb.ap ], [ 0, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i49.i" ]
  %i.fh = load i8, ptr %i.co, align 4, !range !10, !alias.scope !2069, !noalias !2070, !noundef !5
  %i.fi = load i64, ptr %i.cq, align 16, !range !15, !alias.scope !2069, !noalias !2070, !noundef !5 ; 2 uses
  %i.fj = load i64, ptr %i.cs, align 8, !alias.scope !2069, !noalias !2070
  %i.fk = load i8, ptr %i.cu, align 1, !range !10, !alias.scope !2069, !noalias !2070, !noundef !5
  %i.fl = load i64, ptr %i.cw, align 16, !range !20, !alias.scope !2069, !noalias !2070, !noundef !5 ; 2 uses
  %.val28.i55.i = load i64, ptr %i.cy, align 8, !alias.scope !2069, !noalias !2070
  %i.fm = and i64 %i.fl, 1
  %i.fn = icmp eq i64 %i.fm, 0
  %.sroa.512.0.i56.i = select i1 %i.fn, i64 undef, i64 %.val28.i55.i
  %i.fo = load i64, ptr %i.db, align 16, !range !20, !alias.scope !2069, !noalias !2070, !noundef !5 ; 2 uses
  %.val26.i57.i = load i64, ptr %i.dd, align 8, !alias.scope !2069, !noalias !2070
  %i.fp = and i64 %i.fo, 1
  %i.fq = icmp eq i64 %i.fp, 0
  %.sroa.514.0.i58.i = select i1 %i.fq, i64 undef, i64 %.val26.i57.i
  %i.fr = trunc nuw i64 %i.fi to i1
  %.sroa.59.0.i59.i = select i1 %i.fr, i64 %i.fj, i64 undef
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %.sroa.0.034.i53.i, ptr %i.ft, align 16, !alias.scope !2068, !noalias !2076
  %.sroa.4.0..sroa_idx31.i60.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr %.sroa.4.035.i52.i, ptr %.sroa.4.0..sroa_idx31.i60.i, align 8, !alias.scope !2068, !noalias !2076
  %.sroa.532.0..sroa_idx.i61.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i64 %.sroa.532.0.i51.i, ptr %.sroa.532.0..sroa_idx.i61.i, align 16, !alias.scope !2068, !noalias !2076
  %.sroa.6.0..sroa_idx33.i62.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i8 %i.es, ptr %.sroa.6.0..sroa_idx33.i62.i, align 8, !alias.scope !2068, !noalias !2076
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 129
  store i8 %i.fb, ptr %i.fu, align 1, !alias.scope !2068, !noalias !2076
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 130
  store i8 %i.fc, ptr %i.fv, align 2, !alias.scope !2068, !noalias !2076
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 131
  store i8 %i.fd, ptr %i.fw, align 1, !alias.scope !2068, !noalias !2076
  store i128 %.sroa.04.0.i54.i, ptr %i.f, align 16, !alias.scope !2068, !noalias !2076
  %.sroa.5.0..sroa_idx6.i63.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx6.i63.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i45.i, i64 32, i1 false), !noalias !2076
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  store i8 %i.fh, ptr %i.fx, align 4, !alias.scope !2068, !noalias !2076
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %i.fi, ptr %i.fy, align 16, !alias.scope !2068, !noalias !2076
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.59.0.i59.i, ptr %i.fz, align 8, !alias.scope !2068, !noalias !2076
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 133
  store i8 %i.fk, ptr %i.ga, align 1, !alias.scope !2068, !noalias !2076
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %i.fl, ptr %i.gb, align 16, !alias.scope !2068, !noalias !2076
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 %.sroa.512.0.i56.i, ptr %i.gc, align 8, !alias.scope !2068, !noalias !2076
  %i.gd = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 %i.fo, ptr %i.gd, align 16, !alias.scope !2068, !noalias !2076
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 %.sroa.514.0.i58.i, ptr %i.ge, align 8, !alias.scope !2068, !noalias !2076
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i45.i)
  store i8 0, ptr %i.fs, align 16, !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2032
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 2, ptr %i.gf, align 8, !noalias !2032
  invoke void @_ZN14regex_automata6hybrid3dfa6Config9prefilter17ha87847b58fd06147E(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.as unwind label %bb.aq, !noalias !2032

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2032
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  store i8 0, ptr %i.gg, align 4, !noalias !2032
  %i.gh = invoke noundef align 16 dereferenceable(592) ptr @_ZN14regex_automata6hybrid3dfa7Builder9configure17hd82b1a2a9ca26354E(ptr noalias noundef nonnull align 16 dereferenceable(592) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.g)
          to label %bb.at unwind label %bb.aq, !noalias !2032

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.gi = atomicrmw add ptr %.val2, i64 1 monotonic, align 8, !noalias !2032
  %i.gj = icmp slt i64 %i.gi, 0
  br i1 %i.gj, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN14regex_automata6hybrid3dfa7Builder14build_from_nfa17h2ade6d8da2a3fecaE(ptr noalias noundef nonnull sret([720 x i8]) align 16 captures(address) dereferenceable(720) %i.i, ptr noundef nonnull align 16 %i.gh, ptr noundef nonnull %.val2)
          to label %bb.aw unwind label %bb.aq, !noalias !2032

bb.av:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2079)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.gm = load i8, ptr %i.gl, align 8, !range !9, !alias.scope !2080, !noalias !2032, !noundef !5 ; 2 uses
  %i.gn = icmp eq i8 %i.gm, 3
  br i1 %i.gn, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i66.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  %i.go = icmp eq i8 %i.gm, 2
  br i1 %i.go, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i66.i", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %i.gp = load ptr, ptr %i.gk, align 16, !alias.scope !2085, !noalias !2032, !nonnull !5, !noundef !5
  %i.gq = atomicrmw sub ptr %i.gp, i64 1 release, align 8, !noalias !2086
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.az, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i66.i"

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gk)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i66.i" unwind label %bb.ba, !noalias !2032

bb.ba:                                            ; preds = %bb.az
  %i.gs = landingpad { ptr, i32 }
          cleanup
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.gt) #23
          to label %.body68.i unwind label %bb.bb, !noalias !2032

"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i66.i": ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.gu)
          to label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit70.i" unwind label %bb.bc, !noalias !2032

bb.bb:                                            ; preds = %bb.ba
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !2032
  unreachable

.body68.i:                                        ; preds = %bb.bs, %.body73.i, %bb.bc, %bb.ba
  %.pn31.i = phi { ptr, i32 } [ %i.gs, %bb.ba ], [ %i.ie, %bb.bs ], [ %i.gx, %bb.bc ], [ %eh.lpad-body74.i, %.body73.i ] ; 2 uses
  %.sroa.06.1.i = phi i1 [ true, %bb.ba ], [ true, %bb.bs ], [ true, %bb.bc ], [ false, %.body73.i ]
  %.sroa.05.0.i = phi i1 [ true, %bb.ba ], [ true, %bb.bs ], [ %.sroa.05.1.i, %bb.bc ], [ true, %.body73.i ]
  %.sroa.04.0.i = phi i1 [ true, %bb.ba ], [ false, %bb.bs ], [ true, %bb.bc ], [ false, %.body73.i ]
  %i.gw = load i128, ptr %i.i, align 16, !range !23, !noalias !2032, !noundef !5
  %.not33.i = icmp eq i128 %i.gw, 2
  br i1 %.not33.i, label %bb.ce, label %bb.cd

bb.bc:                                            ; preds = %bb.be, %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i66.i"
  %.sroa.05.1.i = phi i1 [ false, %bb.be ], [ true, %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i66.i" ]
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body68.i

"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit70.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i66.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2032
  %i.gy = load i128, ptr %i.i, align 16, !range !23, !noalias !2032, !noundef !5
  %i.gz = icmp eq i128 %i.gy, 2
  br i1 %i.gz, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit70.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2032
  %i.ha = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %i.ha, i64 128, i1 false), !noalias !2032
  %i.hb = load i64, ptr %i.c, align 8, !range !26, !alias.scope !2087, !noalias !2032, !noundef !5
  %i.hc = icmp ult i64 %i.hb, -9223372036854775800
  br i1 %i.hc, label %bb.be, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit72.i"

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$regex_automata..nfa..thompson..error..BuildError$GT$17hca8b73f8aaaea77cE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..hybrid..error..BuildError$GT$17hf98dac901380c2d1E.exit72.i" unwind label %bb.bc, !noalias !2032

bb.bf:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit70.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %i.d, ptr noundef nonnull align 16 dereferenceable(720) %i.i, i64 720, i1 false), !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2032
  invoke void @_ZN14regex_automata6hybrid5regex7Builder3new17h959c918de8fddf1bE(ptr noalias noundef nonnull sret([592 x i8]) align 16 captures(address) dereferenceable(592) %i.a)
          to label %bb.bg unwind label %bb.bs, !noalias !2032

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %i.b, ptr noundef nonnull align 16 dereferenceable(720) %i.k, i64 720, i1 false), !noalias !2032
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %i.hd, ptr noundef nonnull align 16 dereferenceable(720) %i.i, i64 720, i1 false), !noalias !2032
  call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.hg = load i8, ptr %i.hf, align 8, !range !9, !alias.scope !2092, !noalias !2032, !noundef !5 ; 2 uses
  %i.hh = icmp eq i8 %i.hg, 3
  br i1 %i.hh, label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i.i", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.hi = icmp eq i8 %i.hg, 2
  br i1 %i.hi, label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i.i", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %i.hj = load ptr, ptr %i.he, align 16, !alias.scope !2097, !noalias !2032, !nonnull !5, !noundef !5
  %i.hk = atomicrmw sub ptr %i.hj, i64 1 release, align 8, !noalias !2098
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.bj, label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i.i"

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.he)
          to label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i.i" unwind label %bb.bk, !noalias !2032

bb.bk:                                            ; preds = %bb.bj
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.hn) #23
          to label %.body73.i unwind label %bb.bl, !noalias !2032

bb.bl:                                            ; preds = %bb.bk
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !2032
  unreachable

"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i.i": ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.hp)
          to label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..hybrid..regex..Builder$GT$17hbf4ea45e4c65f77fE.exit.i" unwind label %bb.bm, !noalias !2032

bb.bm:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i.i"
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body73.i

.body73.i:                                        ; preds = %bb.bm, %bb.bk
  %eh.lpad-body74.i = phi { ptr, i32 } [ %i.hq, %bb.bm ], [ %i.hm, %bb.bk ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Regex$GT$17h18f590d7180865e7E"(ptr noalias noundef align 16 dereferenceable(1440) %i.b) #23
          to label %.body68.i unwind label %bb.br, !noalias !2032

"_ZN4core3ptr59drop_in_place$LT$regex_automata..hybrid..regex..Builder$GT$17hbf4ea45e4c65f77fE.exit.i": ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2032
  %.sroa.0.0.copyload3 = load i128, ptr %i.b, align 16, !noalias !2031 ; 3 uses
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_1
