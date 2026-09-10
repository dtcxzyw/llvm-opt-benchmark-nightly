Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$4init17ha54f5b0e2f0c09ebE":bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, i1 } %i.g, 0         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !21
  tail call fastcc void @"_ZN6papaya3raw5alloc14Table$LT$T$GT$7dealloc17hae452f0be1b33f23E"(i64 %.val, ptr nonnull %i.d)
  %i.j = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8
  br label %bb.c
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i1 noundef zeroext %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 11 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 16               ; 5 uses
  %i.y = alloca [24 x i8], align 16               ; 5 uses
  %i.z = alloca [24 x i8], align 16               ; 5 uses
  %i.aa = alloca [24 x i8], align 16              ; 5 uses
  %i.ab = load i64, ptr %1, align 8, !range !32, !noundef !21
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %bb.dk

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !25117, !noalias !25118, !noundef !21 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8, !noalias !25119 ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !noalias !25119
  %.val21.i = load i64, ptr %3, align 8, !alias.scope !25117, !noalias !25118 ; 4 uses
  %i.ai = add i64 %.val21.i, 1                    ; 3 uses
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 4096) ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ae, i64 137
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.val21.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 1016      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ao = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.13.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %.sroa.13.0..sroa_idx251.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.13.0..sroa_idx245.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 1) ; 2 uses
  br label %.outer.i.outer

.critedge.i:                                      ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1214) #57, !noalias !25119
  unreachable

.loopexit377.i:                                   ; preds = %.preheader.i
  %i.at = load atomic i8, ptr %i.ax monotonic, align 8, !noalias !25119
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph464.i, !prof !25120

.lr.ph464.i:                                      ; preds = %.outer.i, %.loopexit377.i
  %i.av = call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.val21.i, ptr %i.ae, ptr nonnull %.sroa.13.0.ph.i.ph, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !25121
  br i1 %i.av, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit", label %.preheader469.i

._crit_edge.i:                                    ; preds = %.outer.i, %.loopexit377.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !25119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !25119
  store ptr %.sroa.13.0.ph.i.ph, ptr %.sroa.13.0..sroa_idx.i, align 16, !noalias !25119
  store <2 x i64> %.ph, ptr %i.z, align 16, !noalias !25119
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %1, i64 noundef 0, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.z), !noalias !25119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25119
  %i.aw = load <2 x i64>, ptr %i.aa, align 16, !noalias !25119
  %.sroa.13.0.copyload246.i = load ptr, ptr %.sroa.13.0..sroa_idx245.i, align 16, !noalias !25119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !25119
  br label %.outer.i.outer.backedge

.outer.i.outer.backedge:                          ; preds = %._crit_edge.i, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i"
  %.sroa.13.0.ph.i.ph.be = phi ptr [ %.sroa.13.0.copyload252.i, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i" ], [ %.sroa.13.0.copyload246.i, %._crit_edge.i ]
  %.ph.be = phi <2 x i64> [ %i.mo, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i" ], [ %i.aw, %._crit_edge.i ]
  br label %.outer.i.outer

.outer.i.outer:                                   ; preds = %.outer.i.outer.backedge, %bb.c
  %.sroa.13.0.ph.i.ph = phi ptr [ %i.ag, %bb.c ], [ %.sroa.13.0.ph.i.ph.be, %.outer.i.outer.backedge ] ; 18 uses
  %.ph = phi <2 x i64> [ %i.ah, %bb.c ], [ %.ph.be, %.outer.i.outer.backedge ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 128 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 136 ; 2 uses
  %i.ba = extractelement <2 x i64> %.ph, i64 0    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 48 ; 18 uses
  %i.be = ptrtoint ptr %i.ax to i64               ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 112 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 52 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 56 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 104 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 88 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 96 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 64 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 72 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 80 ; 2 uses
  %i.bo = extractelement <2 x i64> %.ph, i64 1
  %invariant.op979.a = xor i64 %i.be, 8387220255154660723
  %invariant.op977 = xor i64 %i.be, 8387220255154660723
  br label %.outer.i

.outer.i:                                         ; preds = %bb.aa, %.outer.i.outer
  %i.bp = load atomic i8, ptr %i.ax monotonic, align 1, !noalias !25119
  %i.bq = icmp eq i8 %i.bp, 1
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph464.i, !prof !25122

.preheader469.i:                                  ; preds = %.lr.ph464.i, %bb.aa
  %i.br = load atomic i64, ptr %i.ay monotonic, align 8, !noalias !25119
  %.not17.i = icmp ult i64 %i.br, %i.ai
  br i1 %.not17.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %.preheader469.i
  %i.bs = atomicrmw add ptr %i.ay, i64 %.sroa.0.0.i.i monotonic, align 8, !noalias !25119 ; 2 uses
  %i.bt = call i64 @llvm.usub.sat.i64(i64 %i.ai, i64 %i.bs) ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.01.0461.i = phi i64 [ 0, %bb.d ], [ %i.mn, %bb.z ] ; 3 uses
  %i.bu = add nuw i64 %.sroa.01.0461.i, %i.bs     ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.0461.i, %i.bt
  br i1 %exitcond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.01.0.lcssa.i = phi i64 [ %i.bt, %bb.e ], [ %umax.i, %bb.z ]
  %i.bv = call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.val21.i, ptr %i.ae, ptr %.sroa.13.0.ph.i.ph, i64 noundef %.sroa.01.0.lcssa.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !25121
  br i1 %i.bv, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit", label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bu
  %i.bx = atomicrmw or ptr %i.bw, i64 1 acq_rel, align 8, !noalias !25123 ; 3 uses
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = and i64 %i.bx, 7
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca  ; 4 uses
  %i.cc = icmp eq i64 %i.bx, 2
  br i1 %i.cc, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = icmp eq ptr %i.cb, null
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bu
  store atomic i8 -1, ptr %i.ce release, align 1, !noalias !25123
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = and i64 %i.cf, 7
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch  ; 2 uses
  %.val35.i.i.i = load i64, ptr %i.al, align 8, !noalias !25124, !noundef !21 ; 2 uses
  %.val36.i.i.i = load i64, ptr %i.am, align 8, !noalias !25124, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25125)
  %i.cj = xor i64 %.val35.i.i.i, 8317987319222330741 ; 2 uses
  %i.ck = xor i64 %.val36.i.i.i, 7237128888997146477 ; 2 uses
  %i.cl = xor i64 %.val35.i.i.i, 7816392313619706465 ; 2 uses
  %i.cm = xor i64 %.val36.i.i.i, 8387220255154660723 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.val.i.i40.i = load ptr, ptr %i.cn, align 8, !alias.scope !25125, !noalias !25126, !nonnull !21, !noundef !21 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.val1.i.i41.i = load i64, ptr %i.co, align 8, !alias.scope !25125, !noalias !25126, !noundef !21 ; 4 uses
  %i.cp = and i64 %.val1.i.i41.i, 7               ; 7 uses
  %i.cq = and i64 %.val1.i.i41.i, -8              ; 5 uses
  %.not367.i = icmp eq i64 %i.cq, 0
  br i1 %.not367.i, label %._crit_edge.i154.i, label %.lr.ph.i147.i

._crit_edge.i154.i:                               ; preds = %.lr.ph.i147.i, %bb.j
  %.sroa.32304.4.i = phi i64 [ %i.cm, %bb.j ], [ %i.dw, %.lr.ph.i147.i ] ; 4 uses
  %.sroa.22299.4.i = phi i64 [ %i.ck, %bb.j ], [ %i.du, %.lr.ph.i147.i ] ; 6 uses
  %.sroa.12294.4.i = phi i64 [ %i.cl, %bb.j ], [ %i.dx, %.lr.ph.i147.i ] ; 4 uses
  %.sroa.0289.4.i = phi i64 [ %i.cj, %bb.j ], [ %i.dy, %.lr.ph.i147.i ] ; 4 uses
  %i.cr = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i154.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %i.cq
  %.sroa.014.0.copyload.i18.i146.i = load i32, ptr %i.cs, align 1, !alias.scope !25127, !noalias !25128
  %i.ct = zext i32 %.sroa.014.0.copyload.i18.i146.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i154.i
  %.sroa.011.0.i12.i138.i = phi i64 [ %i.ct, %bb.k ], [ 0, %._crit_edge.i154.i ] ; 2 uses
  %.sroa.0.0.i13.i139.i = phi i64 [ 4, %bb.k ], [ 0, %._crit_edge.i154.i ] ; 5 uses
  %i.cu = or disjoint i64 %.sroa.0.0.i13.i139.i, 1
  %i.cv = icmp samesign ult i64 %i.cu, %i.cp
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr i8, ptr %.val.i.i40.i, i64 %i.cq
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.sroa.0.0.i13.i139.i
  %.sroa.015.0.copyload.i17.i145.i = load i16, ptr %i.cx, align 1, !alias.scope !25127, !noalias !25128
  %i.cy = zext i16 %.sroa.015.0.copyload.i17.i145.i to i64
  %i.cz = shl nuw nsw i64 %.sroa.0.0.i13.i139.i, 3
  %i.da = shl nuw nsw i64 %i.cy, %i.cz
  %i.db = or i64 %i.da, %.sroa.011.0.i12.i138.i
  %i.dc = or disjoint i64 %.sroa.0.0.i13.i139.i, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.011.1.i14.i140.i = phi i64 [ %i.db, %bb.m ], [ %.sroa.011.0.i12.i138.i, %bb.l ] ; 2 uses
  %.sroa.0.1.i15.i141.i = phi i64 [ %i.dc, %bb.m ], [ %.sroa.0.0.i13.i139.i, %bb.l ] ; 3 uses
  %i.dd = icmp samesign ult i64 %.sroa.0.1.i15.i141.i, %i.cp
  br i1 %i.dd, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i"

.lr.ph.i147.i:                                    ; preds = %bb.j, %.lr.ph.i147.i
  %i.de = phi i64 [ %i.dx, %.lr.ph.i147.i ], [ %i.cl, %bb.j ]
  %i.df = phi i64 [ %i.du, %.lr.ph.i147.i ], [ %i.ck, %bb.j ] ; 3 uses
  %i.dg = phi i64 [ %i.dw, %.lr.ph.i147.i ], [ %i.cm, %bb.j ]
  %.sroa.04.020.i152.i = phi i64 [ %i.dz, %.lr.ph.i147.i ], [ 0, %bb.j ] ; 2 uses
  %i.dh = phi i64 [ %i.dy, %.lr.ph.i147.i ], [ %i.cj, %bb.j ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %.sroa.04.020.i152.i
  %.sroa.08.0.copyload.i153.i = load i64, ptr %i.di, align 1, !alias.scope !25129, !noalias !25128 ; 2 uses
  %i.dj = xor i64 %.sroa.08.0.copyload.i153.i, %i.dg ; 3 uses
  %i.dk = add i64 %i.dh, %i.df                    ; 3 uses
  %i.dl = add i64 %i.dj, %i.de                    ; 2 uses
  %i.dm = call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 13)
  %i.dn = xor i64 %i.dk, %i.dm                    ; 3 uses
  %i.do = call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 16)
  %i.dp = xor i64 %i.dl, %i.do                    ; 3 uses
  %i.dq = call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 32)
  %i.dr = add i64 %i.dl, %i.dn                    ; 3 uses
  %i.ds = add i64 %i.dp, %i.dq                    ; 2 uses
  %i.dt = call i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 17)
  %i.du = xor i64 %i.dr, %i.dt                    ; 2 uses
  %i.dv = call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 21)
  %i.dw = xor i64 %i.dv, %i.ds                    ; 2 uses
  %i.dx = call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 32) ; 2 uses
  %i.dy = xor i64 %i.ds, %.sroa.08.0.copyload.i153.i ; 2 uses
  %i.dz = add nuw i64 %.sroa.04.020.i152.i, 8     ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.cq
  br i1 %i.ea, label %.lr.ph.i147.i, label %._crit_edge.i154.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i": ; preds = %bb.n
  %5 = icmp eq i64 %i.cp, 0
  br i1 %5, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i.a": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i"
  %6 = shl nuw nsw i64 %i.cp, 3
  %7 = shl nuw nsw i64 255, %6
  %8 = or i64 %.sroa.011.1.i14.i140.i, %7
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i: ; preds = %bb.n
  %9 = add nuw i64 %.sroa.0.1.i15.i141.i, %i.cq   ; 2 uses
  %10 = icmp ult i64 %9, %.val1.i.i41.i
  call void @llvm.assume(i1 %10), !noalias !25130
  %11 = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %9
  %12 = load i8, ptr %11, align 1, !alias.scope !25127, !noalias !25128, !noundef !21
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %.sroa.0.1.i15.i141.i, 3
  %15 = shl nuw nsw i64 %13, %14
  %i.eb = shl nuw nsw i64 %i.cp, 3
  %i.ec = shl nuw i64 255, %i.eb
  %16 = or i64 %i.ec, %15
  %i.ed = or i64 %16, %.sroa.011.1.i14.i140.i     ; 3 uses
  %.not368.i = icmp eq i64 %i.cp, 7
  br i1 %.not368.i, label %.thread576.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"

.thread576.i:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i
  %i.ee = xor i64 %i.ed, %.sroa.32304.4.i         ; 3 uses
  %i.ef = add i64 %.sroa.0289.4.i, %.sroa.22299.4.i ; 3 uses
  %i.eg = add i64 %i.ee, %.sroa.12294.4.i         ; 2 uses
  %i.eh = call i64 @llvm.fshl.i64(i64 %.sroa.22299.4.i, i64 %.sroa.22299.4.i, i64 13)
  %i.ei = xor i64 %i.ef, %i.eh                    ; 3 uses
  %i.ej = call i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 16)
  %i.ek = xor i64 %i.eg, %i.ej                    ; 3 uses
  %i.el = call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 32)
  %i.em = add i64 %i.eg, %i.ei                    ; 3 uses
  %i.en = add i64 %i.ek, %i.el                    ; 2 uses
  %i.eo = call i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 17)
  %i.ep = xor i64 %i.em, %i.eo
  %i.eq = call i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 21)
  %i.er = xor i64 %i.eq, %i.en
  %i.es = call i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 32)
  %i.et = xor i64 %i.en, %i.ed
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i": ; preds = %.thread576.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i.a", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i"
  %.sroa.50314.0.i = phi i64 [ %i.ed, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %8, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i.a" ], [ 0, %.thread576.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.32304.2.i = phi i64 [ %.sroa.32304.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %.sroa.32304.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i.a" ], [ %i.er, %.thread576.i ], [ %.sroa.32304.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.22299.2.i = phi i64 [ %.sroa.22299.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %.sroa.22299.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i.a" ], [ %i.ep, %.thread576.i ], [ %.sroa.22299.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ] ; 3 uses
  %.sroa.12294.2.i = phi i64 [ %.sroa.12294.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %.sroa.12294.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i.a" ], [ %i.es, %.thread576.i ], [ %.sroa.12294.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.0289.2.i = phi i64 [ %.sroa.0289.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %.sroa.0289.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i.a" ], [ %i.et, %.thread576.i ], [ %.sroa.0289.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %17 = shl i64 %.val1.i.i41.i, 56
  %18 = add i64 %17, 72057594037927936
  %i.eu = or i64 %.sroa.50314.0.i, %18            ; 2 uses
  %i.ev = xor i64 %i.eu, %.sroa.32304.2.i         ; 3 uses
  %i.ew = add i64 %.sroa.0289.2.i, %.sroa.22299.2.i ; 3 uses
  %i.ex = add i64 %.sroa.12294.2.i, %i.ev         ; 2 uses
  %i.ey = call i64 @llvm.fshl.i64(i64 %.sroa.22299.2.i, i64 %.sroa.22299.2.i, i64 13)
  %i.ez = xor i64 %i.ew, %i.ey                    ; 3 uses
  %i.fa = call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 16)
  %i.fb = xor i64 %i.ex, %i.fa                    ; 3 uses
  %i.fc = call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 32)
  %i.fd = add i64 %i.ez, %i.ex                    ; 3 uses
  %i.fe = add i64 %i.fc, %i.fb                    ; 2 uses
  %i.ff = call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 17)
  %i.fg = xor i64 %i.fd, %i.ff                    ; 3 uses
  %i.fh = call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 21)
  %i.fi = xor i64 %i.fe, %i.fh                    ; 3 uses
  %i.fj = call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 32)
  %i.fk = xor i64 %i.fe, %i.eu
  %i.fl = xor i64 %i.fj, 255
  %i.fm = add i64 %i.fk, %i.fg                    ; 3 uses
  %i.fn = add i64 %i.fl, %i.fi                    ; 2 uses
  %i.fo = call i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 13)
  %i.fp = xor i64 %i.fm, %i.fo                    ; 3 uses
  %i.fq = call i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 16)
  %i.fr = xor i64 %i.fn, %i.fq                    ; 3 uses
  %i.fs = call i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 32)
  %i.ft = add i64 %i.fp, %i.fn                    ; 3 uses
  %i.fu = add i64 %i.fr, %i.fs                    ; 2 uses
  %i.fv = call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 17)
  %i.fw = xor i64 %i.ft, %i.fv                    ; 3 uses
  %i.fx = call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 21)
  %i.fy = xor i64 %i.fx, %i.fu                    ; 3 uses
  %i.fz = call i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 32)
  %i.ga = add i64 %i.fw, %i.fu                    ; 3 uses
  %i.gb = add i64 %i.fy, %i.fz                    ; 2 uses
  %i.gc = call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 13)
  %i.gd = xor i64 %i.gc, %i.ga                    ; 3 uses
  %i.ge = call i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 16)
  %i.gf = xor i64 %i.ge, %i.gb                    ; 3 uses
  %i.gg = call i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 32)
  %i.gh = add i64 %i.gd, %i.gb                    ; 3 uses
  %i.gi = add i64 %i.gf, %i.gg                    ; 2 uses
  %i.gj = call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 17)
  %i.gk = xor i64 %i.gj, %i.gh                    ; 3 uses
  %i.gl = call i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 21)
  %i.gm = xor i64 %i.gl, %i.gi                    ; 3 uses
  %i.gn = call i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 32)
  %i.go = add i64 %i.gk, %i.gi
  %i.gp = add i64 %i.gm, %i.gn                    ; 2 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 13)
  %i.gr = xor i64 %i.gq, %i.go                    ; 3 uses
  %i.gs = call i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 16)
  %i.gt = xor i64 %i.gs, %i.gp                    ; 2 uses
  %i.gu = add i64 %i.gr, %i.gp                    ; 3 uses
  %i.gv = call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 17)
  %i.gw = call i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 21)
  %i.gx = call i64 @llvm.fshl.i64(i64 %i.gu, i64 %i.gu, i64 32)
  %i.gy = xor i64 %i.gv, %i.gw
  %i.gz = xor i64 %i.gy, %i.gx
  %i.ha = xor i64 %i.gz, %i.gu                    ; 2 uses
  %i.hb = lshr i64 %i.ha, 57
  %i.hc = trunc nuw nsw i64 %i.hb to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"
  %.pn.i.i.i = phi i64 [ %i.ha, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i" ], [ %i.hh, %bb.p ]
  %.sroa.030.06.i.i.i = phi i64 [ 0, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i" ], [ %i.hg, %bb.p ]
  %.sroa.026.07.i.i.i = and i64 %.pn.i.i.i, %i.ba ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.026.07.i.i.i ; 4 uses
  %i.he = load atomic i8, ptr %i.hd acquire, align 1, !noalias !25124
  %i.hf = icmp eq i8 %i.he, -128
  br i1 %i.hf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.y, %bb.x, %bb.o
  %i.hg = add i64 %.sroa.030.06.i.i.i, 1          ; 3 uses
  %i.hh = add i64 %i.hg, %.sroa.026.07.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.hg, %i.bo
  br i1 %.not.i.i.i, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i", label %bb.o, !prof !47

bb.q:                                             ; preds = %bb.o
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.026.07.i.i.i
  %i.hj = cmpxchg ptr %i.hi, ptr null, ptr %i.cb seq_cst seq_cst, align 8, !noalias !25124 ; 2 uses
  %i.hk = extractvalue { ptr, i1 } %i.hj, 1
  br i1 %i.hk, label %.split9.us.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hl = extractvalue { ptr, i1 } %i.hj, 0       ; 2 uses
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = and i64 %i.hm, 7
  %i.ho = sub nsw i64 0, %i.hn
  %i.hp = getelementptr i8, ptr %i.hl, i64 %i.ho  ; 3 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.x, label %bb.s

.split9.us.i.i.i:                                 ; preds = %bb.q
  store atomic i8 %i.hc, ptr %i.hd release, align 1, !noalias !25124
  br label %bb.z

bb.s:                                             ; preds = %bb.r
  %.val.i.i.i = load i64, ptr %i.al, align 8, !noalias !25124, !noundef !21 ; 2 uses
  %.val34.i.i.i = load i64, ptr %i.am, align 8, !noalias !25124, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25131)
  %i.hr = xor i64 %.val.i.i.i, 8317987319222330741 ; 2 uses
  %i.hs = xor i64 %.val34.i.i.i, 7237128888997146477 ; 2 uses
  %i.ht = xor i64 %.val.i.i.i, 7816392313619706465 ; 2 uses
  %i.hu = xor i64 %.val34.i.i.i, 8387220255154660723 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.val.i.i32.i = load ptr, ptr %i.hv, align 8, !alias.scope !25131, !noalias !25132, !nonnull !21, !noundef !21 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %.val1.i.i33.i = load i64, ptr %i.hw, align 8, !alias.scope !25131, !noalias !25132, !noundef !21 ; 4 uses
  %i.hx = and i64 %.val1.i.i33.i, 7               ; 7 uses
  %i.hy = and i64 %.val1.i.i33.i, -8              ; 5 uses
  %.not370.i = icmp eq i64 %i.hy, 0
  br i1 %.not370.i, label %._crit_edge.i97.i, label %.lr.ph.i90.i

._crit_edge.i97.i:                                ; preds = %.lr.ph.i90.i, %bb.s
  %.sroa.32.4.i = phi i64 [ %i.hu, %bb.s ], [ %i.je, %.lr.ph.i90.i ] ; 4 uses
  %.sroa.22.4.i = phi i64 [ %i.hs, %bb.s ], [ %i.jc, %.lr.ph.i90.i ] ; 6 uses
  %.sroa.12.4.i = phi i64 [ %i.ht, %bb.s ], [ %i.jf, %.lr.ph.i90.i ] ; 4 uses
  %.sroa.0263.4.i = phi i64 [ %i.hr, %bb.s ], [ %i.jg, %.lr.ph.i90.i ] ; 4 uses
  %i.hz = icmp samesign ugt i64 %i.hx, 3
  br i1 %i.hz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i97.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %i.hy
  %.sroa.014.0.copyload.i18.i89.i = load i32, ptr %i.ia, align 1, !alias.scope !25133, !noalias !25134
  %i.ib = zext i32 %.sroa.014.0.copyload.i18.i89.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i97.i
  %.sroa.011.0.i12.i81.i = phi i64 [ %i.ib, %bb.t ], [ 0, %._crit_edge.i97.i ] ; 2 uses
  %.sroa.0.0.i13.i82.i = phi i64 [ 4, %bb.t ], [ 0, %._crit_edge.i97.i ] ; 5 uses
  %i.ic = or disjoint i64 %.sroa.0.0.i13.i82.i, 1
  %i.id = icmp samesign ult i64 %i.ic, %i.hx
  br i1 %i.id, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ie = getelementptr i8, ptr %.val.i.i32.i, i64 %i.hy
  %i.if = getelementptr i8, ptr %i.ie, i64 %.sroa.0.0.i13.i82.i
  %.sroa.015.0.copyload.i17.i88.i = load i16, ptr %i.if, align 1, !alias.scope !25133, !noalias !25134
  %i.ig = zext i16 %.sroa.015.0.copyload.i17.i88.i to i64
  %i.ih = shl nuw nsw i64 %.sroa.0.0.i13.i82.i, 3
  %i.ii = shl nuw nsw i64 %i.ig, %i.ih
  %i.ij = or i64 %i.ii, %.sroa.011.0.i12.i81.i
  %i.ik = or disjoint i64 %.sroa.0.0.i13.i82.i, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.011.1.i14.i83.i = phi i64 [ %i.ij, %bb.v ], [ %.sroa.011.0.i12.i81.i, %bb.u ] ; 2 uses
  %.sroa.0.1.i15.i84.i = phi i64 [ %i.ik, %bb.v ], [ %.sroa.0.0.i13.i82.i, %bb.u ] ; 3 uses
  %i.il = icmp samesign ult i64 %.sroa.0.1.i15.i84.i, %i.hx
  br i1 %i.il, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i"

.lr.ph.i90.i:                                     ; preds = %bb.s, %.lr.ph.i90.i
  %i.im = phi i64 [ %i.jf, %.lr.ph.i90.i ], [ %i.ht, %bb.s ]
  %i.in = phi i64 [ %i.jc, %.lr.ph.i90.i ], [ %i.hs, %bb.s ] ; 3 uses
  %i.io = phi i64 [ %i.je, %.lr.ph.i90.i ], [ %i.hu, %bb.s ]
  %.sroa.04.020.i95.i = phi i64 [ %i.jh, %.lr.ph.i90.i ], [ 0, %bb.s ] ; 2 uses
  %i.ip = phi i64 [ %i.jg, %.lr.ph.i90.i ], [ %i.hr, %bb.s ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %.sroa.04.020.i95.i
  %.sroa.08.0.copyload.i96.i = load i64, ptr %i.iq, align 1, !alias.scope !25135, !noalias !25134 ; 2 uses
  %i.ir = xor i64 %.sroa.08.0.copyload.i96.i, %i.io ; 3 uses
  %i.is = add i64 %i.ip, %i.in                    ; 3 uses
  %i.it = add i64 %i.ir, %i.im                    ; 2 uses
  %i.iu = call i64 @llvm.fshl.i64(i64 %i.in, i64 %i.in, i64 13)
  %i.iv = xor i64 %i.is, %i.iu                    ; 3 uses
  %i.iw = call i64 @llvm.fshl.i64(i64 %i.ir, i64 %i.ir, i64 16)
  %i.ix = xor i64 %i.it, %i.iw                    ; 3 uses
  %i.iy = call i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 32)
  %i.iz = add i64 %i.it, %i.iv                    ; 3 uses
  %i.ja = add i64 %i.ix, %i.iy                    ; 2 uses
  %i.jb = call i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 17)
  %i.jc = xor i64 %i.iz, %i.jb                    ; 2 uses
  %i.jd = call i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 21)
  %i.je = xor i64 %i.jd, %i.ja                    ; 2 uses
  %i.jf = call i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 32) ; 2 uses
  %i.jg = xor i64 %i.ja, %.sroa.08.0.copyload.i96.i ; 2 uses
  %i.jh = add nuw i64 %.sroa.04.020.i95.i, 8      ; 2 uses
  %i.ji = icmp ult i64 %i.jh, %i.hy
  br i1 %i.ji, label %.lr.ph.i90.i, label %._crit_edge.i97.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i": ; preds = %bb.w
  %19 = icmp eq i64 %i.hx, 0
  br i1 %19, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i.a": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i"
  %20 = shl nuw nsw i64 %i.hx, 3
  %21 = shl nuw nsw i64 255, %20
  %22 = or i64 %.sroa.011.1.i14.i83.i, %21
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i: ; preds = %bb.w
  %23 = add nuw i64 %.sroa.0.1.i15.i84.i, %i.hy   ; 2 uses
  %24 = icmp ult i64 %23, %.val1.i.i33.i
  call void @llvm.assume(i1 %24), !noalias !25136
  %25 = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %23
  %26 = load i8, ptr %25, align 1, !alias.scope !25133, !noalias !25134, !noundef !21
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %.sroa.0.1.i15.i84.i, 3
  %29 = shl nuw nsw i64 %27, %28
  %i.jj = shl nuw nsw i64 %i.hx, 3
  %i.jk = shl nuw i64 255, %i.jj
  %30 = or i64 %i.jk, %29
  %i.jl = or i64 %30, %.sroa.011.1.i14.i83.i      ; 3 uses
  %.not371.i = icmp eq i64 %i.hx, 7
  br i1 %.not371.i, label %.thread582.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i"

.thread582.i:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i
  %i.jm = xor i64 %i.jl, %.sroa.32.4.i            ; 3 uses
  %i.jn = add i64 %.sroa.0263.4.i, %.sroa.22.4.i  ; 3 uses
  %i.jo = add i64 %i.jm, %.sroa.12.4.i            ; 2 uses
  %i.jp = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.i, i64 %.sroa.22.4.i, i64 13)
  %i.jq = xor i64 %i.jn, %i.jp                    ; 3 uses
  %i.jr = call i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 16)
  %i.js = xor i64 %i.jo, %i.jr                    ; 3 uses
  %i.jt = call i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 32)
  %i.ju = add i64 %i.jo, %i.jq                    ; 3 uses
  %i.jv = add i64 %i.js, %i.jt                    ; 2 uses
  %i.jw = call i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 17)
  %i.jx = xor i64 %i.ju, %i.jw
  %i.jy = call i64 @llvm.fshl.i64(i64 %i.js, i64 %i.js, i64 21)
  %i.jz = xor i64 %i.jy, %i.jv
  %i.ka = call i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 32)
  %i.kb = xor i64 %i.jv, %i.jl
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i": ; preds = %.thread582.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i.a", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i"
  %.sroa.50.0.i = phi i64 [ %i.jl, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %22, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i.a" ], [ 0, %.thread582.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.32.2.i = phi i64 [ %.sroa.32.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.32.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i.a" ], [ %i.jz, %.thread582.i ], [ %.sroa.32.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.22.2.i = phi i64 [ %.sroa.22.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.22.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i.a" ], [ %i.jx, %.thread582.i ], [ %.sroa.22.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ] ; 3 uses
  %.sroa.12.2.i = phi i64 [ %.sroa.12.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.12.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i.a" ], [ %i.ka, %.thread582.i ], [ %.sroa.12.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.0263.2.i = phi i64 [ %.sroa.0263.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.0263.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i.a" ], [ %i.kb, %.thread582.i ], [ %.sroa.0263.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %31 = shl i64 %.val1.i.i33.i, 56
  %32 = add i64 %31, 72057594037927936
  %i.kc = or i64 %.sroa.50.0.i, %32               ; 2 uses
  %i.kd = xor i64 %i.kc, %.sroa.32.2.i            ; 3 uses
  %i.ke = add i64 %.sroa.0263.2.i, %.sroa.22.2.i  ; 3 uses
  %i.kf = add i64 %.sroa.12.2.i, %i.kd            ; 2 uses
  %i.kg = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.i, i64 %.sroa.22.2.i, i64 13)
  %i.kh = xor i64 %i.ke, %i.kg                    ; 3 uses
  %i.ki = call i64 @llvm.fshl.i64(i64 %i.kd, i64 %i.kd, i64 16)
  %i.kj = xor i64 %i.kf, %i.ki                    ; 3 uses
  %i.kk = call i64 @llvm.fshl.i64(i64 %i.ke, i64 %i.ke, i64 32)
  %i.kl = add i64 %i.kh, %i.kf                    ; 3 uses
  %i.km = add i64 %i.kk, %i.kj                    ; 2 uses
  %i.kn = call i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 17)
  %i.ko = xor i64 %i.kl, %i.kn                    ; 3 uses
  %i.kp = call i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 21)
  %i.kq = xor i64 %i.km, %i.kp                    ; 3 uses
  %i.kr = call i64 @llvm.fshl.i64(i64 %i.kl, i64 %i.kl, i64 32)
  %i.ks = xor i64 %i.km, %i.kc
  %i.kt = xor i64 %i.kr, 255
  %i.ku = add i64 %i.ks, %i.ko                    ; 3 uses
  %i.kv = add i64 %i.kt, %i.kq                    ; 2 uses
  %i.kw = call i64 @llvm.fshl.i64(i64 %i.ko, i64 %i.ko, i64 13)
  %i.kx = xor i64 %i.ku, %i.kw                    ; 3 uses
  %i.ky = call i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 16)
  %i.kz = xor i64 %i.kv, %i.ky                    ; 3 uses
  %i.la = call i64 @llvm.fshl.i64(i64 %i.ku, i64 %i.ku, i64 32)
  %i.lb = add i64 %i.kx, %i.kv                    ; 3 uses
  %i.lc = add i64 %i.kz, %i.la                    ; 2 uses
  %i.ld = call i64 @llvm.fshl.i64(i64 %i.kx, i64 %i.kx, i64 17)
  %i.le = xor i64 %i.lb, %i.ld                    ; 3 uses
  %i.lf = call i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.kz, i64 21)
  %i.lg = xor i64 %i.lf, %i.lc                    ; 3 uses
  %i.lh = call i64 @llvm.fshl.i64(i64 %i.lb, i64 %i.lb, i64 32)
  %i.li = add i64 %i.le, %i.lc                    ; 3 uses
  %i.lj = add i64 %i.lg, %i.lh                    ; 2 uses
  %i.lk = call i64 @llvm.fshl.i64(i64 %i.le, i64 %i.le, i64 13)
  %i.ll = xor i64 %i.lk, %i.li                    ; 3 uses
  %i.lm = call i64 @llvm.fshl.i64(i64 %i.lg, i64 %i.lg, i64 16)
  %i.ln = xor i64 %i.lm, %i.lj                    ; 3 uses
  %i.lo = call i64 @llvm.fshl.i64(i64 %i.li, i64 %i.li, i64 32)
  %i.lp = add i64 %i.ll, %i.lj                    ; 3 uses
  %i.lq = add i64 %i.ln, %i.lo                    ; 2 uses
  %i.lr = call i64 @llvm.fshl.i64(i64 %i.ll, i64 %i.ll, i64 17)
  %i.ls = xor i64 %i.lr, %i.lp                    ; 3 uses
  %i.lt = call i64 @llvm.fshl.i64(i64 %i.ln, i64 %i.ln, i64 21)
  %i.lu = xor i64 %i.lt, %i.lq                    ; 2 uses
  %i.lv = call i64 @llvm.fshl.i64(i64 %i.lp, i64 %i.lp, i64 32)
  %i.lw = add i64 %i.ls, %i.lq
  %i.lx = add i64 %i.lu, %i.lv                    ; 2 uses
  %i.ly = call i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 13)
  %i.lz = xor i64 %i.ly, %i.lw                    ; 2 uses
  %i.ma = add i64 %i.lz, %i.lx                    ; 2 uses
  %i.mb = shl i64 %i.lz, 17
  %i.mc = shl i64 %i.lu, 37
  %i.md = shl i64 %i.lx, 21
  %i.me = xor i64 %i.md, %i.mc
  %i.mf = shl i64 %i.ma, 32
  %i.mg = xor i64 %i.me, %i.mb
  %i.mh = xor i64 %i.mg, %i.mf
  %i.mi = xor i64 %i.mh, %i.ma
  %i.mj = lshr i64 %i.mi, 57
  %i.mk = trunc nuw nsw i64 %i.mj to i8
  br label %bb.x

bb.x:                                             ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i", %bb.r
  %.sroa.025.0.i.i.i = phi i8 [ %i.mk, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i" ], [ -1, %bb.r ]
  %i.ml = load atomic i8, ptr %i.hd monotonic, align 1, !noalias !25124
  %i.mm = icmp eq i8 %i.ml, -128
  br i1 %i.mm, label %bb.y, label %bb.p

bb.y:                                             ; preds = %bb.x
  store atomic i8 %.sroa.025.0.i.i.i, ptr %i.hd release, align 1, !noalias !25124
  br label %bb.p

bb.z:                                             ; preds = %.split9.us.i.i.i, %bb.i, %bb.g
  %i.mn = add nuw nsw i64 %.sroa.01.0461.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.mn, %umax.i
  br i1 %exitcond.not.i, label %bb.f, label %bb.e

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i": ; preds = %bb.p
  store atomic i8 1, ptr %i.ax seq_cst, align 8, !noalias !25119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25119
  store <2 x i64> %.ph, ptr %i.x, align 16, !noalias !25119
  store ptr %.sroa.13.0.ph.i.ph, ptr %.sroa.13.0..sroa_idx249.i, align 16, !noalias !25119
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %1, i64 noundef 0, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.x), !noalias !25119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25119
  call fastcc void @_ZN6papaya3raw5utils6parker6Parker6unpark17h689a69a296f0d968E(ptr noundef nonnull align 8 %i.ar, ptr noundef nonnull align 1 %i.as), !noalias !25119
  %i.mo = load <2 x i64>, ptr %i.y, align 16, !noalias !25119
  %.sroa.13.0.copyload252.i = load ptr, ptr %.sroa.13.0..sroa_idx251.i, align 16, !noalias !25119
  br label %.outer.i.outer.backedge

bb.aa:                                            ; preds = %bb.f
  %i.mp = load atomic i8, ptr %i.ax monotonic, align 8, !noalias !25119
  %i.mq = icmp eq i8 %i.mp, 1
  br i1 %i.mq, label %.outer.i, label %.preheader469.i

.preheader.i:                                     ; preds = %.preheader469.i, %.backedge.i
  %indvars.iv542.i = phi i64 [ %indvars.iv.next543.i, %.backedge.i ], [ 0, %.preheader469.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i ], [ 1, %.preheader469.i ] ; 2 uses
  %.sroa.012.0.i = phi i64 [ %i.mr, %.backedge.i ], [ 0, %.preheader469.i ] ; 3 uses
  %umax544.i = call i64 @llvm.umax.i64(i64 %indvars.iv542.i, i64 1) ; 2 uses
  %i.mr = add i64 %.sroa.012.0.i, 1
  %i.ms = load atomic i8, ptr %i.ax acquire, align 8, !noalias !25119
  switch i8 %i.ms, label %bb.ab [
    i8 1, label %.loopexit377.i
    i8 2, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit"
  ]

bb.ab:                                            ; preds = %.preheader.i
  %i.mt = icmp ult i64 %.sroa.012.0.i, 8
  br i1 %i.mt, label %bb.dj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25119
  store i64 %i.be, ptr %i.w, align 8, !noalias !25119
  br label %bb.ad

bb.ad:                                            ; preds = %bb.di, %bb.ac
  %i.mu = atomicrmw add ptr %i.bf, i64 1 seq_cst, align 8, !noalias !25119 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !25119
  %i.mv = cmpxchg ptr %i.bd, i32 0, i32 1 acquire monotonic, align 4, !noalias !25137
  %i.mw = extractvalue { i32, i1 } %i.mv, 1
  br i1 %i.mw, label %bb.af, label %bb.ae, !prof !49

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bd), !noalias !25137
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.mx = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25137
  %i.my = and i64 %i.mx, 9223372036854775807
  %i.mz = icmp eq i64 %i.my, 0
  br i1 %i.mz, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i", label %bb.ag, !prof !49

bb.ag:                                            ; preds = %bb.af
  %i.na = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25137
  %i.nb = xor i1 %i.na, true
  %i.nc = zext i1 %i.nb to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i": ; preds = %bb.ag, %bb.af
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.nc, %bb.ag ], [ 0, %bb.af ] ; 3 uses
  %i.nd = load atomic i8, ptr %i.bg monotonic, align 4, !noalias !25137
  %.not.i.i = icmp eq i8 %i.nd, 0
  br i1 %.not.i.i, label %.lr.ph.i187.i, label %bb.ah, !prof !49

bb.ah:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !25138
  store ptr %i.bd, ptr %i.s, align 8, !noalias !25138
  %i.ne = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.ne, align 8, !noalias !25138
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1077, i64 noundef 43, ptr noundef nonnull align 1 %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1079, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1224) #57
          to label %bb.an unwind label %bb.ai, !noalias !25139

bb.ai:                                            ; preds = %bb.ah
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25140)
  %.val.i67.i = load ptr, ptr %i.s, align 8, !alias.scope !25140, !noalias !25139, !nonnull !21, !align !27, !noundef !21 ; 3 uses
  %.val1.i.i = load i8, ptr %i.ne, align 8, !range !35, !alias.scope !25140, !noalias !25139, !noundef !21
  %i.ng = getelementptr inbounds nuw i8, ptr %.val.i67.i, i64 4
  %i.nh = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.nh, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ni = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25141
  %i.nj = and i64 %i.ni, 9223372036854775807
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i, label %bb.ak, !prof !49

bb.ak:                                            ; preds = %bb.aj
  %i.nl = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc.i unwind label %bb.ao, !noalias !25119

.noexc.i:                                         ; preds = %bb.ak
  br i1 %i.nl, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i, label %bb.al

bb.al:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.ng monotonic, align 4, !noalias !25141
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i: ; preds = %bb.al, %.noexc.i, %bb.aj, %bb.ai
  %i.nm = atomicrmw xchg ptr %.val.i67.i, i32 0 release, align 4, !noalias !25141
  %i.nn = icmp eq i32 %i.nm, 2
  br i1 %i.nn, label %bb.am, label %common.resume, !prof !23

bb.am:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.val.i67.i)
          to label %common.resume unwind label %bb.ao, !noalias !25119

bb.an:                                            ; preds = %bb.ah
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %i.no = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !25139
  unreachable

common.resume:                                    ; preds = %bb.eu, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit.i.i.i", %bb.fg, %bb.fo, %bb.gf, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i26.i, %bb.hf, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i, %bb.am, %.body.i, %bb.br, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, %bb.cr
  %common.resume.op = phi { ptr, i32 } [ %i.nf, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i ], [ %i.zo, %bb.br ], [ %i.adg, %bb.cr ], [ %eh.lpad-body.i, %.body.i ], [ %i.adg, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i ], [ %i.nf, %bb.am ], [ %.pn.i.i.i151, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit.i.i.i" ], [ %i.axc, %bb.eu ], [ %i.bbn, %bb.gf ], [ %i.axs, %bb.fg ], [ %i.ayx, %bb.fo ], [ %i.bff, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i26.i ], [ %i.bff, %bb.hf ]
  resume { ptr, i32 } %common.resume.op
end_hunk_0
begin_hunk_1_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !25119
  br label %.backedge.i

.backedge.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod854.not = icmp eq i64 %xtraiter852, 0
  br i1 %lcmp.mod854.not, label %.backedge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod855 = icmp ne i64 %xtraiter852, 0
  call void @llvm.assume(i1 %lcmp.mod855)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %epil.iter853 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter853.next, %.lr.ph.i.epil ]
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  %epil.iter853.next = add i64 %epil.iter853, 1   ; 2 uses
  %epil.iter853.cmp.not = icmp eq i64 %epil.iter853.next, %xtraiter852
  br i1 %epil.iter853.cmp.not, label %.backedge.i, label %.lr.ph.i.epil, !llvm.loop !24916

.backedge.i:                                      ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.dj, %_ZN6papaya3raw5utils6parker6Parker4park17h2400fa636ada98a4E.exit.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 2
  %indvars.iv.next543.i = add i64 %indvars.iv.i, %indvars.iv542.i
  br label %.preheader.i

bb.dj:                                            ; preds = %bb.ab
  %.not465.i = icmp eq i64 %.sroa.012.0.i, 0
  br i1 %.not465.i, label %.backedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.dj
  %xtraiter852 = and i64 %umax544.i, 7            ; 3 uses
  %i.amc = icmp ult i64 %indvars.iv542.i, 8
  br i1 %i.amc, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter856 = and i64 %umax544.i, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter857 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter857.next.7, %.lr.ph.i ]
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  %niter857.next.7 = add i64 %niter857, 8         ; 2 uses
  %niter857.ncmp.7 = icmp eq i64 %niter857.next.7, %unroll_iter856
  br i1 %niter857.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit": ; preds = %.lr.ph464.i, %bb.f, %.preheader.i
  store <2 x i64> %.ph, ptr %0, align 8, !alias.scope !25116, !noalias !25229
  %.sroa.13.0..sroa_idx255.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.0.ph.i.ph, ptr %.sroa.13.0..sroa_idx255.i, align 8, !alias.scope !25116, !noalias !25229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ia

bb.dk:                                            ; preds = %bb.a
  %i.amd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ame = load i64, ptr %i.amd, align 8, !noundef !21 ; 4 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.amg = load atomic ptr, ptr %i.amf seq_cst, align 8, !noalias !25230 ; 15 uses
  %i.amh = icmp eq ptr %i.amg, null
  br i1 %i.amh, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ami = load i64, ptr %i.amg, align 8, !noalias !25230, !noundef !21
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amg, i64 8
  %i.amk = load i64, ptr %i.amj, align 8, !noalias !25230, !noundef !21
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.sroa.10.0.i = phi i64 [ %i.amk, %bb.dl ], [ 0, %bb.dk ]
  %.sroa.0.0.i = phi i64 [ %i.ami, %bb.dl ], [ 0, %bb.dk ] ; 7 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amg, i64 16
  %i.amm = load atomic ptr, ptr %i.aml acquire, align 8, !noalias !25230 ; 25 uses
  %i.amn = icmp eq ptr %i.amm, null
  br i1 %i.amn, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit", label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.amo = load i64, ptr %i.amm, align 8, !noalias !25230, !noundef !21 ; 6 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  %i.amq = load i64, ptr %i.amp, align 8, !noalias !25230, !noundef !21 ; 6 uses
  %i.amr = tail call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.sroa.0.0.i, ptr nonnull %i.amg, ptr nonnull %i.amm, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !25231
  br i1 %i.amr, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit", label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.dn
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amm, i64 40 ; 6 uses
  %i.amt = add i64 %.sroa.0.0.i, 1                ; 4 uses
  %.not190.i = icmp eq i64 %i.ame, 0
  %i.amu = getelementptr i8, ptr %i.amg, i64 137
  %i.amv = getelementptr i8, ptr %i.amu, i64 %.sroa.0.0.i
  %i.amw = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  %i.amx = getelementptr i8, ptr %1, i64 1016     ; 2 uses
  %.sroa.9.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.10.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.9.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.10.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amg, i64 48 ; 5 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amg, i64 112 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amg, i64 52 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amg, i64 56
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.635.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.736.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %.sroa.837.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.938.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amg, i64 136
  %.not.i2 = xor i1 %2, true
  br i1 %.not190.i, label %.preheader111.split.i, label %.preheader111.split.us.i

.preheader111.split.us.i:                         ; preds = %.preheader111.i, %._crit_edge.us.i
  %i.and = load atomic i64, ptr %i.ams monotonic, align 8, !noalias !25230
  %.not14.us.i = icmp ult i64 %i.and, %i.amt
  br i1 %.not14.us.i, label %.lr.ph.us.i, label %.split.us.i

.lr.ph.us.i:                                      ; preds = %.preheader111.split.us.i
  %i.ane = atomicrmw add ptr %i.ams, i64 %i.ame monotonic, align 8, !noalias !25230 ; 2 uses
  %i.anf = call i64 @llvm.usub.sat.i64(i64 %i.amt, i64 %i.ane) ; 2 uses
  br label %bb.do

bb.do:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i", %.lr.ph.us.i
  %.sroa.01.0167.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.anh, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i" ] ; 3 uses
  %i.ang = add nuw i64 %.sroa.01.0167.us.i, %i.ane ; 2 uses
  %exitcond.not.i149 = icmp eq i64 %.sroa.01.0167.us.i, %i.anf
  br i1 %exitcond.not.i149, label %._crit_edge.us.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.anh = add nuw i64 %.sroa.01.0167.us.i, 1     ; 2 uses
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.amv, i64 %i.ang ; 3 uses
  %i.anj = atomicrmw or ptr %i.ani, i64 1 acq_rel, align 8, !noalias !25232 ; 5 uses
  %i.ank = inttoptr i64 %i.anj to ptr             ; 3 uses
  %i.anl = and i64 %i.anj, 7
  %i.anm = sub nsw i64 0, %i.anl
  %i.ann = getelementptr i8, ptr %i.ank, i64 %i.anm ; 2 uses
  %i.ano = icmp eq i64 %i.anj, 2
  br i1 %i.ano, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i", label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.anp = icmp eq ptr %i.ann, null
  br i1 %i.anp, label %bb.es, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.not.i.us.i = and i64 %i.anj, 4
  %i.anq = xor i64 %.not.i.us.i, 4
  %i.anr = getelementptr i8, ptr %i.ank, i64 %i.anq
  %.val35.i.i.us.i = load i64, ptr %i.amw, align 8, !noalias !25233, !noundef !21
  %.val36.i.i.us.i = load i64, ptr %i.amx, align 8, !noalias !25233, !noundef !21
  %i.ans = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val35.i.i.us.i, i64 %.val36.i.i.us.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ann), !noalias !25233 ; 2 uses
  br label %.split.us.i.i.us.i

.split.us.i.i.us.i:                               ; preds = %bb.ed, %bb.dr
  %.sroa.10.0.us.i.i.us.i = phi ptr [ %.sroa.10.0.copyload15.us.i.i.us.i, %bb.ed ], [ %i.amm, %bb.dr ] ; 2 uses
  %.sroa.9.0.us.i.i.us.i = phi i64 [ %.sroa.9.0.copyload9.us.i.i.us.i, %bb.ed ], [ %i.amq, %bb.dr ] ; 2 uses
  %.sroa.0.0.us.i.i.us.i = phi i64 [ %.sroa.0.0.copyload4.us.i.i.us.i, %bb.ed ], [ %i.amo, %bb.dr ] ; 3 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.sroa.10.0.us.i.i.us.i, i64 136 ; 2 uses
  %i.anu = getelementptr i8, ptr %i.ant, i64 %.sroa.0.0.us.i.i.us.i
  %i.anv = getelementptr i8, ptr %i.anu, i64 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ec, %.split.us.i.i.us.i
  %.pn14.i.i.us.i = phi i64 [ %i.ans, %.split.us.i.i.us.i ], [ %i.atj, %bb.ec ]
  %.sroa.030.06.us.i.i.us.i = phi i64 [ 0, %.split.us.i.i.us.i ], [ %i.ati, %bb.ec ]
  %.sroa.026.07.us.i.i.us.i = and i64 %.pn14.i.i.us.i, %.sroa.0.0.us.i.i.us.i ; 3 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ant, i64 %.sroa.026.07.us.i.i.us.i ; 4 uses
  %i.anx = load atomic i8, ptr %i.anw acquire, align 1, !noalias !25233
  %i.any = icmp eq i8 %i.anx, -128
  br i1 %i.any, label %bb.dt, label %bb.ec

bb.dt:                                            ; preds = %bb.ds
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %.sroa.026.07.us.i.i.us.i
  %i.aoa = cmpxchg ptr %i.anz, ptr null, ptr %i.anr seq_cst seq_cst, align 8, !noalias !25233 ; 2 uses
  %i.aob = extractvalue { ptr, i1 } %i.aoa, 1
  br i1 %i.aob, label %bb.ee, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aoc = extractvalue { ptr, i1 } %i.aoa, 0     ; 2 uses
  %i.aod = ptrtoint ptr %i.aoc to i64
  %i.aoe = and i64 %i.aod, 7
  %i.aof = sub nsw i64 0, %i.aoe
  %i.aog = getelementptr i8, ptr %i.aoc, i64 %i.aof ; 3 uses
  %i.aoh = icmp eq ptr %i.aog, null
  br i1 %i.aoh, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.val.us.i.i.us.i = load i64, ptr %i.amw, align 8, !noalias !25233, !noundef !21 ; 2 uses
  %.val34.us.i.i.us.i = load i64, ptr %i.amx, align 8, !noalias !25233, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25234)
  %i.aoi = xor i64 %.val.us.i.i.us.i, 8317987319222330741 ; 2 uses
  %i.aoj = xor i64 %.val34.us.i.i.us.i, 7237128888997146477 ; 2 uses
  %i.aok = xor i64 %.val.us.i.i.us.i, 7816392313619706465 ; 2 uses
  %i.aol = xor i64 %.val34.us.i.i.us.i, 8387220255154660723 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  %.val.i.i28.us.i = load ptr, ptr %i.aom, align 8, !alias.scope !25234, !noalias !25235, !nonnull !21, !noundef !21 ; 4 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aog, i64 16
  %.val1.i.i29.us.i = load i64, ptr %i.aon, align 8, !alias.scope !25234, !noalias !25235, !noundef !21 ; 4 uses
  %i.aoo = and i64 %.val1.i.i29.us.i, 7           ; 7 uses
  %i.aop = and i64 %.val1.i.i29.us.i, -8          ; 5 uses
  %.not105.us.i = icmp eq i64 %i.aop, 0
  br i1 %.not105.us.i, label %._crit_edge.i55.us.i, label %.lr.ph.i48.us.i

.lr.ph.i48.us.i:                                  ; preds = %bb.dv, %.lr.ph.i48.us.i
  %i.aoq = phi i64 [ %i.apj, %.lr.ph.i48.us.i ], [ %i.aok, %bb.dv ]
  %i.aor = phi i64 [ %i.apg, %.lr.ph.i48.us.i ], [ %i.aoj, %bb.dv ] ; 3 uses
  %i.aos = phi i64 [ %i.api, %.lr.ph.i48.us.i ], [ %i.aol, %bb.dv ]
  %.sroa.04.020.i53.us.i = phi i64 [ %i.apl, %.lr.ph.i48.us.i ], [ 0, %bb.dv ] ; 2 uses
  %i.aot = phi i64 [ %i.apk, %.lr.ph.i48.us.i ], [ %i.aoi, %bb.dv ]
  %i.aou = getelementptr inbounds nuw i8, ptr %.val.i.i28.us.i, i64 %.sroa.04.020.i53.us.i
  %.sroa.08.0.copyload.i54.us.i = load i64, ptr %i.aou, align 1, !alias.scope !25236, !noalias !25237 ; 2 uses
  %i.aov = xor i64 %.sroa.08.0.copyload.i54.us.i, %i.aos ; 3 uses
  %i.aow = add i64 %i.aot, %i.aor                 ; 3 uses
  %i.aox = add i64 %i.aov, %i.aoq                 ; 2 uses
  %i.aoy = call i64 @llvm.fshl.i64(i64 %i.aor, i64 %i.aor, i64 13)
  %i.aoz = xor i64 %i.aow, %i.aoy                 ; 3 uses
  %i.apa = call i64 @llvm.fshl.i64(i64 %i.aov, i64 %i.aov, i64 16)
  %i.apb = xor i64 %i.aox, %i.apa                 ; 3 uses
  %i.apc = call i64 @llvm.fshl.i64(i64 %i.aow, i64 %i.aow, i64 32)
  %i.apd = add i64 %i.aox, %i.aoz                 ; 3 uses
  %i.ape = add i64 %i.apb, %i.apc                 ; 2 uses
  %i.apf = call i64 @llvm.fshl.i64(i64 %i.aoz, i64 %i.aoz, i64 17)
  %i.apg = xor i64 %i.apd, %i.apf                 ; 2 uses
  %i.aph = call i64 @llvm.fshl.i64(i64 %i.apb, i64 %i.apb, i64 21)
  %i.api = xor i64 %i.aph, %i.ape                 ; 2 uses
  %i.apj = call i64 @llvm.fshl.i64(i64 %i.apd, i64 %i.apd, i64 32) ; 2 uses
  %i.apk = xor i64 %i.ape, %.sroa.08.0.copyload.i54.us.i ; 2 uses
  %i.apl = add nuw i64 %.sroa.04.020.i53.us.i, 8  ; 2 uses
  %i.apm = icmp ult i64 %i.apl, %i.aop
  br i1 %i.apm, label %.lr.ph.i48.us.i, label %._crit_edge.i55.us.i

._crit_edge.i55.us.i:                             ; preds = %.lr.ph.i48.us.i, %bb.dv
  %.sroa.32.4.us.i = phi i64 [ %i.aol, %bb.dv ], [ %i.api, %.lr.ph.i48.us.i ] ; 4 uses
  %.sroa.22.4.us.i = phi i64 [ %i.aoj, %bb.dv ], [ %i.apg, %.lr.ph.i48.us.i ] ; 6 uses
  %.sroa.1281.4.us.i = phi i64 [ %i.aok, %bb.dv ], [ %i.apj, %.lr.ph.i48.us.i ] ; 4 uses
  %.sroa.076.4.us.i = phi i64 [ %i.aoi, %bb.dv ], [ %i.apk, %.lr.ph.i48.us.i ] ; 4 uses
  %i.apn = icmp samesign ugt i64 %i.aoo, 3
  br i1 %i.apn, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %._crit_edge.i55.us.i
  %i.apo = getelementptr inbounds nuw i8, ptr %.val.i.i28.us.i, i64 %i.aop
  %.sroa.014.0.copyload.i18.i47.us.i = load i32, ptr %i.apo, align 1, !alias.scope !25238, !noalias !25237
  %i.app = zext i32 %.sroa.014.0.copyload.i18.i47.us.i to i64
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %._crit_edge.i55.us.i
  %.sroa.011.0.i12.i39.us.i = phi i64 [ %i.app, %bb.dw ], [ 0, %._crit_edge.i55.us.i ] ; 2 uses
  %.sroa.0.0.i13.i40.us.i = phi i64 [ 4, %bb.dw ], [ 0, %._crit_edge.i55.us.i ] ; 5 uses
  %i.apq = or disjoint i64 %.sroa.0.0.i13.i40.us.i, 1
  %i.apr = icmp samesign ult i64 %i.apq, %i.aoo
  br i1 %i.apr, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aps = getelementptr i8, ptr %.val.i.i28.us.i, i64 %i.aop
  %i.apt = getelementptr i8, ptr %i.aps, i64 %.sroa.0.0.i13.i40.us.i
  %.sroa.015.0.copyload.i17.i46.us.i = load i16, ptr %i.apt, align 1, !alias.scope !25238, !noalias !25237
  %i.apu = zext i16 %.sroa.015.0.copyload.i17.i46.us.i to i64
  %i.apv = shl nuw nsw i64 %.sroa.0.0.i13.i40.us.i, 3
  %i.apw = shl nuw nsw i64 %i.apu, %i.apv
  %i.apx = or i64 %i.apw, %.sroa.011.0.i12.i39.us.i
  %i.apy = or disjoint i64 %.sroa.0.0.i13.i40.us.i, 2
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.sroa.011.1.i14.i41.us.i = phi i64 [ %i.apx, %bb.dy ], [ %.sroa.011.0.i12.i39.us.i, %bb.dx ] ; 2 uses
  %.sroa.0.1.i15.i42.us.i = phi i64 [ %i.apy, %bb.dy ], [ %.sroa.0.0.i13.i40.us.i, %bb.dx ] ; 3 uses
  %i.apz = icmp samesign ult i64 %.sroa.0.1.i15.i42.us.i, %i.aoo
  br i1 %i.apz, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i": ; preds = %bb.dz
  %i.aqa = icmp eq i64 %i.aoo, 0
  br i1 %i.aqa, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i"
  %i.aqb = shl nuw nsw i64 %i.aoo, 3
  %i.aqc = shl nuw nsw i64 255, %i.aqb
  %i.aqd = or i64 %.sroa.011.1.i14.i41.us.i, %i.aqc
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i: ; preds = %bb.dz
  %33 = add nuw i64 %.sroa.0.1.i15.i42.us.i, %i.aop ; 2 uses
  %34 = icmp ult i64 %33, %.val1.i.i29.us.i
  call void @llvm.assume(i1 %34), !noalias !25239
  %35 = getelementptr inbounds nuw i8, ptr %.val.i.i28.us.i, i64 %33
  %36 = load i8, ptr %35, align 1, !alias.scope !25238, !noalias !25237, !noundef !21
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %.sroa.0.1.i15.i42.us.i, 3
  %39 = shl nuw nsw i64 %37, %38
  %i.aqe = shl nuw nsw i64 %i.aoo, 3
  %i.aqf = shl nuw i64 255, %i.aqe
  %40 = or i64 %i.aqf, %39
  %i.aqg = or i64 %40, %.sroa.011.1.i14.i41.us.i  ; 3 uses
  %.not106.us.i = icmp eq i64 %i.aoo, 7
  br i1 %.not106.us.i, label %.thread.i150, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i"

.thread.i150:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i
  %i.aqh = xor i64 %i.aqg, %.sroa.32.4.us.i       ; 3 uses
  %i.aqi = add i64 %.sroa.076.4.us.i, %.sroa.22.4.us.i ; 3 uses
  %i.aqj = add i64 %i.aqh, %.sroa.1281.4.us.i     ; 2 uses
  %i.aqk = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.us.i, i64 %.sroa.22.4.us.i, i64 13)
  %i.aql = xor i64 %i.aqi, %i.aqk                 ; 3 uses
  %i.aqm = call i64 @llvm.fshl.i64(i64 %i.aqh, i64 %i.aqh, i64 16)
  %i.aqn = xor i64 %i.aqj, %i.aqm                 ; 3 uses
  %i.aqo = call i64 @llvm.fshl.i64(i64 %i.aqi, i64 %i.aqi, i64 32)
  %i.aqp = add i64 %i.aqj, %i.aql                 ; 3 uses
  %i.aqq = add i64 %i.aqn, %i.aqo                 ; 2 uses
  %i.aqr = call i64 @llvm.fshl.i64(i64 %i.aql, i64 %i.aql, i64 17)
  %i.aqs = xor i64 %i.aqp, %i.aqr
  %i.aqt = call i64 @llvm.fshl.i64(i64 %i.aqn, i64 %i.aqn, i64 21)
  %i.aqu = xor i64 %i.aqt, %i.aqq
  %i.aqv = call i64 @llvm.fshl.i64(i64 %i.aqp, i64 %i.aqp, i64 32)
  %i.aqw = xor i64 %i.aqq, %i.aqg
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i": ; preds = %.thread.i150, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i"
  %.sroa.50.0.us.i = phi i64 [ %i.aqg, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %i.aqd, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i" ], [ 0, %.thread.i150 ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.32.2.us.i = phi i64 [ %.sroa.32.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %.sroa.32.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i" ], [ %i.aqu, %.thread.i150 ], [ %.sroa.32.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.22.2.us.i = phi i64 [ %.sroa.22.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %.sroa.22.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i" ], [ %i.aqs, %.thread.i150 ], [ %.sroa.22.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ] ; 3 uses
  %.sroa.1281.2.us.i = phi i64 [ %.sroa.1281.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %.sroa.1281.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i" ], [ %i.aqv, %.thread.i150 ], [ %.sroa.1281.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.076.2.us.i = phi i64 [ %.sroa.076.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %.sroa.076.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i" ], [ %i.aqw, %.thread.i150 ], [ %.sroa.076.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %41 = shl i64 %.val1.i.i29.us.i, 56
  %42 = add i64 %41, 72057594037927936
  %i.aqx = or i64 %.sroa.50.0.us.i, %42           ; 2 uses
  %i.aqy = xor i64 %i.aqx, %.sroa.32.2.us.i       ; 3 uses
  %i.aqz = add i64 %.sroa.076.2.us.i, %.sroa.22.2.us.i ; 3 uses
  %i.ara = add i64 %.sroa.1281.2.us.i, %i.aqy     ; 2 uses
  %i.arb = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.us.i, i64 %.sroa.22.2.us.i, i64 13)
  %i.arc = xor i64 %i.aqz, %i.arb                 ; 3 uses
  %i.ard = call i64 @llvm.fshl.i64(i64 %i.aqy, i64 %i.aqy, i64 16)
  %i.are = xor i64 %i.ara, %i.ard                 ; 3 uses
  %i.arf = call i64 @llvm.fshl.i64(i64 %i.aqz, i64 %i.aqz, i64 32)
  %i.arg = add i64 %i.arc, %i.ara                 ; 3 uses
  %i.arh = add i64 %i.arf, %i.are                 ; 2 uses
  %i.ari = call i64 @llvm.fshl.i64(i64 %i.arc, i64 %i.arc, i64 17)
  %i.arj = xor i64 %i.arg, %i.ari                 ; 3 uses
  %i.ark = call i64 @llvm.fshl.i64(i64 %i.are, i64 %i.are, i64 21)
  %i.arl = xor i64 %i.arh, %i.ark                 ; 3 uses
  %i.arm = call i64 @llvm.fshl.i64(i64 %i.arg, i64 %i.arg, i64 32)
  %i.arn = xor i64 %i.arh, %i.aqx
  %i.aro = xor i64 %i.arm, 255
  %i.arp = add i64 %i.arn, %i.arj                 ; 3 uses
  %i.arq = add i64 %i.aro, %i.arl                 ; 2 uses
  %i.arr = call i64 @llvm.fshl.i64(i64 %i.arj, i64 %i.arj, i64 13)
  %i.ars = xor i64 %i.arp, %i.arr                 ; 3 uses
  %i.art = call i64 @llvm.fshl.i64(i64 %i.arl, i64 %i.arl, i64 16)
  %i.aru = xor i64 %i.arq, %i.art                 ; 3 uses
  %i.arv = call i64 @llvm.fshl.i64(i64 %i.arp, i64 %i.arp, i64 32)
  %i.arw = add i64 %i.ars, %i.arq                 ; 3 uses
  %i.arx = add i64 %i.aru, %i.arv                 ; 2 uses
  %i.ary = call i64 @llvm.fshl.i64(i64 %i.ars, i64 %i.ars, i64 17)
  %i.arz = xor i64 %i.arw, %i.ary                 ; 3 uses
  %i.asa = call i64 @llvm.fshl.i64(i64 %i.aru, i64 %i.aru, i64 21)
  %i.asb = xor i64 %i.asa, %i.arx                 ; 3 uses
  %i.asc = call i64 @llvm.fshl.i64(i64 %i.arw, i64 %i.arw, i64 32)
  %i.asd = add i64 %i.arz, %i.arx                 ; 3 uses
  %i.ase = add i64 %i.asb, %i.asc                 ; 2 uses
  %i.asf = call i64 @llvm.fshl.i64(i64 %i.arz, i64 %i.arz, i64 13)
  %i.asg = xor i64 %i.asf, %i.asd                 ; 3 uses
  %i.ash = call i64 @llvm.fshl.i64(i64 %i.asb, i64 %i.asb, i64 16)
  %i.asi = xor i64 %i.ash, %i.ase                 ; 3 uses
  %i.asj = call i64 @llvm.fshl.i64(i64 %i.asd, i64 %i.asd, i64 32)
  %i.ask = add i64 %i.asg, %i.ase                 ; 3 uses
  %i.asl = add i64 %i.asi, %i.asj                 ; 2 uses
  %i.asm = call i64 @llvm.fshl.i64(i64 %i.asg, i64 %i.asg, i64 17)
  %i.asn = xor i64 %i.asm, %i.ask                 ; 3 uses
  %i.aso = call i64 @llvm.fshl.i64(i64 %i.asi, i64 %i.asi, i64 21)
  %i.asp = xor i64 %i.aso, %i.asl                 ; 2 uses
  %i.asq = call i64 @llvm.fshl.i64(i64 %i.ask, i64 %i.ask, i64 32)
  %i.asr = add i64 %i.asn, %i.asl
  %i.ass = add i64 %i.asp, %i.asq                 ; 2 uses
  %i.ast = call i64 @llvm.fshl.i64(i64 %i.asn, i64 %i.asn, i64 13)
  %i.asu = xor i64 %i.ast, %i.asr                 ; 2 uses
  %i.asv = add i64 %i.asu, %i.ass                 ; 2 uses
  %i.asw = shl i64 %i.asu, 17
  %i.asx = shl i64 %i.asp, 37
  %i.asy = shl i64 %i.ass, 21
  %i.asz = xor i64 %i.asy, %i.asx
  %i.ata = shl i64 %i.asv, 32
  %i.atb = xor i64 %i.asz, %i.asw
  %i.atc = xor i64 %i.atb, %i.ata
  %i.atd = xor i64 %i.atc, %i.asv
  %i.ate = lshr i64 %i.atd, 57
  %i.atf = trunc nuw nsw i64 %i.ate to i8
  br label %bb.ea

bb.ea:                                            ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i", %bb.du
  %.sroa.025.0.us.i.i.us.i = phi i8 [ %i.atf, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i" ], [ -1, %bb.du ]
  %i.atg = load atomic i8, ptr %i.anw monotonic, align 1, !noalias !25233
  %i.ath = icmp eq i8 %i.atg, -128
  br i1 %i.ath, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store atomic i8 %.sroa.025.0.us.i.i.us.i, ptr %i.anw release, align 1, !noalias !25233
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.ds
  %i.ati = add i64 %.sroa.030.06.us.i.i.us.i, 1   ; 3 uses
  %i.atj = add i64 %i.ati, %.sroa.026.07.us.i.i.us.i
  %.not.us.i.i.us.i = icmp ugt i64 %i.ati, %.sroa.9.0.us.i.i.us.i
  br i1 %.not.us.i.i.us.i, label %bb.ed, label %bb.ds

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !25233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !25233
  store i64 %.sroa.0.0.us.i.i.us.i, ptr %i.n, align 8, !noalias !25233
  store i64 %.sroa.9.0.us.i.i.us.i, ptr %.sroa.9.0..sroa_idx6.i.i.i, align 8, !noalias !25233
  store ptr %.sroa.10.0.us.i.i.us.i, ptr %.sroa.10.0..sroa_idx12.i.i.i, align 8, !noalias !25233
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 %1, i64 noundef 0, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n), !noalias !25233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25233
  %.sroa.0.0.copyload4.us.i.i.us.i = load i64, ptr %i.o, align 8, !noalias !25233
  %.sroa.9.0.copyload9.us.i.i.us.i = load i64, ptr %.sroa.9.0..sroa_idx8.i.i.i, align 8, !noalias !25233
  %.sroa.10.0.copyload15.us.i.i.us.i = load ptr, ptr %.sroa.10.0..sroa_idx14.i.i.i, align 8, !noalias !25233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25233
  br label %.split.us.i.i.us.i

bb.ee:                                            ; preds = %bb.dt
  %i.atk = lshr i64 %i.ans, 57
  %i.atl = trunc nuw nsw i64 %i.atk to i8
  store atomic i8 %i.atl, ptr %i.anw release, align 1, !noalias !25233
  %.not4.i.us.i = and i64 %i.anj, 3
  %i.atm = xor i64 %.not4.i.us.i, 3
  %i.atn = getelementptr i8, ptr %i.ank, i64 %i.atm
  store atomic ptr %i.atn, ptr %i.ani seq_cst, align 8, !noalias !25232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !25232
  %i.ato = ptrtoint ptr %i.ani to i64
  store i64 %i.ato, ptr %i.m, align 8, !noalias !25232
  %i.atp = load atomic i64, ptr %i.amz seq_cst, align 8, !noalias !25232
  %i.atq = icmp eq i64 %i.atp, 0
  br i1 %i.atq, label %_ZN6papaya3raw5utils6parker6Parker6unpark17h77c06eaae431f30eE.exit.i.us.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !25232
  %i.atr = cmpxchg ptr %i.amy, i32 0, i32 1 acquire monotonic, align 4, !noalias !25240
  %i.ats = extractvalue { i32, i1 } %i.atr, 1
  br i1 %i.ats, label %bb.eh, label %bb.eg, !prof !49

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.amy), !noalias !25240
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.att = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25240
  %i.atu = and i64 %i.att, 9223372036854775807
  %i.atv = icmp eq i64 %i.atu, 0
  br i1 %i.atv, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i.us.i", label %bb.ei, !prof !49

bb.ei:                                            ; preds = %bb.eh
  %i.atw = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25240
  %i.atx = xor i1 %i.atw, true
  %i.aty = zext i1 %i.atx to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i.us.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i.us.i": ; preds = %bb.ei, %bb.eh
  %.sroa.01.0.i.i.i.i.us.i = phi i8 [ %i.aty, %bb.ei ], [ 0, %bb.eh ] ; 2 uses
  %i.atz = load atomic i8, ptr %i.ana monotonic, align 4, !noalias !25240
  %.not46.i.i.us.i = icmp eq i8 %i.atz, 0
  br i1 %.not46.i.i.us.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit.i.i.us.i", label %.split171.us.i, !prof !49

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit.i.i.us.i": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i.us.i"
  %i.aua = trunc nuw i8 %.sroa.01.0.i.i.i.i.us.i to i1
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h8afb75d320f61d1cE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef align 8 dereferenceable(48) %i.anb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m), !noalias !25232
  br i1 %i.aua, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i, label %bb.ej

bb.ej:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit.i.i.us.i"
  %i.aub = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25232
  %i.auc = and i64 %i.aub, 9223372036854775807
  %i.aud = icmp eq i64 %i.auc, 0
  br i1 %i.aud, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i, label %bb.ek, !prof !49

bb.ek:                                            ; preds = %bb.ej
  %i.aue = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25232
  br i1 %i.aue, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store atomic i8 1, ptr %i.ana monotonic, align 4, !noalias !25232
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i: ; preds = %bb.el, %bb.ek, %bb.ej, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit.i.i.us.i"
  %i.auf = atomicrmw xchg ptr %i.amy, i32 0 release, align 4, !noalias !25232
  %i.aug = icmp eq i32 %i.auf, 2
  br i1 %i.aug, label %bb.em, label %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i", !prof !23

bb.em:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %i.amy), !noalias !25232
  br label %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i"

"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i": ; preds = %bb.em, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i
  %i.auh = load ptr, ptr %i.l, align 8, !noalias !25232, !noundef !21 ; 7 uses
  %.not.i.i.us.i = icmp eq ptr %i.auh, null
  br i1 %.not.i.i.us.i, label %bb.er, label %bb.en

bb.en:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i"
  %.sroa.0.sroa.4.0.copyload.i.i.us.i = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !25232 ; 5 uses
  %.sroa.4.0.copyload.i.i.us.i = load i64, ptr %.sroa.4.0..sroa_idx.i5.i.i, align 8, !noalias !25232 ; 4 uses
  %i.aui = atomicrmw sub ptr %i.amz, i64 %.sroa.4.0.copyload.i.i.us.i monotonic, align 8, !noalias !25232 ; 0 uses
  %.val3.i.i.i.i.i.us.i = load <16 x i8>, ptr %i.auh, align 16, !noalias !25241
  %i.auj = icmp eq i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i, 0 ; 2 uses
  br i1 %i.auj, label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit.i.i.us.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i: ; preds = %bb.en
  %i.auk = icmp slt i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i, 1152921504606846975
  call void @llvm.assume(i1 %i.auk)
  %i.aul = shl i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i, 4 ; 2 uses
  %i.aum = add i64 %i.aul, 16                     ; 2 uses
  %i.aun = add nsw i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i, 17
  %i.auo = add i64 %i.aun, %i.aum                 ; 3 uses
  %i.aup = icmp uge i64 %i.auo, %i.aum
  call void @llvm.assume(i1 %i.aup)
  %i.auq = icmp ult i64 %i.auo, 9223372036854775793
  call void @llvm.assume(i1 %i.auq)
  %i.aur = sub nuw nsw i64 -16, %i.aul
  %i.aus = getelementptr inbounds i8, ptr %i.auh, i64 %i.aur
  br label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit.i.i.us.i"

"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit.i.i.us.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i, %bb.en
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.us.i = phi i64 [ %i.auo, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i ], [ undef, %bb.en ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.us.i = phi ptr [ %i.aus, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i ], [ undef, %bb.en ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.us.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i ], [ 0, %bb.en ] ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auh, i64 16 ; 2 uses
  %i.auu = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.i, splat (i8 -1) ; 2 uses
  %i.auv = getelementptr i8, ptr %i.auh, i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i
  %i.auw = getelementptr i8, ptr %i.auv, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !25232
end_hunk_1
begin_hunk_2_@llvm.ctpop.i32
!24929 = distinct !{!24929, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE"}
!24930 = distinct !{!24930, !24929, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE: argument 1"}
!24931 = distinct !{!24931, !24929, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE: argument 0"}
!24932 = distinct !{!24932, !"_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E"}
!24933 = distinct !{!24933, !24932, !"_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E: argument 0"}
!24934 = distinct !{!24934, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E"}
!24935 = distinct !{!24935, !24934, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E: argument 0"}
!24936 = distinct !{!24936, !"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E"}
!24937 = distinct !{!24937, !24936, !"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E: argument 1"}
!24938 = distinct !{!24938, !24936, !"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E: argument 0"}
!24939 = distinct !{!24939, !"_ZN99_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h390004fc69af2efeE"}
!24940 = distinct !{!24940, !24939, !"_ZN99_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h390004fc69af2efeE: argument 1"}
!24941 = distinct !{!24941, !24939, !"_ZN99_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h390004fc69af2efeE: argument 0"}
!24942 = distinct !{!24942, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h1849c80eedbcc64aE"}
!24943 = distinct !{!24943, !24942, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h1849c80eedbcc64aE: argument 0"}
!24944 = distinct !{!24944, !"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8d92a8ab016b5c2E"}
!24945 = distinct !{!24945, !24944, !"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8d92a8ab016b5c2E: argument 0"}
!24946 = distinct !{!24946, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h5f66bf11b3840576E"}
!24947 = distinct !{!24947, !24946, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h5f66bf11b3840576E: argument 0"}
!24948 = distinct !{!24948, !"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E"}
!24949 = distinct !{!24949, !24948, !"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E: argument 0"}
!24950 = distinct !{!24950, !"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h3e402bbf719b9c81E"}
!24951 = distinct !{!24951, !24950, !"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h3e402bbf719b9c81E: argument 0"}
!24952 = distinct !{!24952, !"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0b1d717055b4be0bE"}
!24953 = distinct !{!24953, !24952, !"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0b1d717055b4be0bE: argument 0"}
!24954 = distinct !{!24954, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f0b470f9a5a27ecE"}
!24955 = distinct !{!24955, !24954, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f0b470f9a5a27ecE: argument 0"}
!24956 = distinct !{!24956, !"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE"}
!24957 = distinct !{!24957, !24956, !"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE: argument 0"}
!24958 = distinct !{!24958, !"_ZN4core3ptr78drop_in_place$LT$hashbrown..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17h754a7abdaec50455E"}
!24959 = distinct !{!24959, !24958, !"_ZN4core3ptr78drop_in_place$LT$hashbrown..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17h754a7abdaec50455E: argument 0"}
!24960 = distinct !{!24960, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$u64$C$std..thread..Thread$RP$$GT$$GT$17h8df14c2740249da9E"}
!24961 = distinct !{!24961, !24960, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$u64$C$std..thread..Thread$RP$$GT$$GT$17h8df14c2740249da9E: argument 0"}
!24962 = distinct !{!24962, !"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0ce80dfb6885129E"}
!24963 = distinct !{!24963, !24962, !"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0ce80dfb6885129E: argument 0"}
!24964 = distinct !{!24964, !"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E"}
!24965 = distinct !{!24965, !24964, !"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E: argument 0"}
!24966 = distinct !{!24966, !"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h3e402bbf719b9c81E"}
!24967 = distinct !{!24967, !24966, !"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h3e402bbf719b9c81E: argument 0"}
!24968 = distinct !{!24968, !"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0b1d717055b4be0bE"}
!24969 = distinct !{!24969, !24968, !"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0b1d717055b4be0bE: argument 0"}
!24970 = distinct !{!24970, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f0b470f9a5a27ecE"}
!24971 = distinct !{!24971, !24970, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f0b470f9a5a27ecE: argument 0"}
!24972 = distinct !{!24972, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E"}
!24973 = distinct !{!24973, !24972, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E: argument 1"}
!24974 = distinct !{!24974, !24972, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E: argument 0"}
!24975 = distinct !{!24975, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E"}
!24976 = distinct !{!24976, !24975, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E: argument 0"}
!24977 = distinct !{!24977, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E"}
!24978 = distinct !{!24978, !24977, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E: argument 1"}
!24979 = distinct !{!24979, !24977, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E: argument 0"}
!24980 = distinct !{!24980, !"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h8f66a77f08241693E"}
!24981 = distinct !{!24981, !24980, !"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h8f66a77f08241693E: argument 1"}
!24982 = distinct !{!24982, !24980, !"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h8f66a77f08241693E: argument 0"}
!24983 = distinct !{!24983, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h0393aed6e3b66aa3E"}
!24984 = distinct !{!24984, !24983, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h0393aed6e3b66aa3E: argument 0"}
!24985 = distinct !{!24985, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!24986 = distinct !{!24986, !24985, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!24987 = distinct !{!24987, !24983, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h0393aed6e3b66aa3E: argument 1"}
!24988 = distinct !{!24988, !24985, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!24989 = distinct !{!24989, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!24990 = distinct !{!24990, !24989, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!24991 = distinct !{!24991, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hf314c12ba3ce434cE"}
!24992 = distinct !{!24992, !24991, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hf314c12ba3ce434cE: argument 0"}
!24993 = distinct !{!24993, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h77f0a30f8366cad2E"}
!24994 = distinct !{!24994, !24993, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h77f0a30f8366cad2E: argument 0"}
!24995 = distinct !{!24995, !24993, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h77f0a30f8366cad2E: argument 1"}
!24996 = distinct !{!24996, !"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h0e92cce58dd31bf0E"}
!24997 = distinct !{!24997, !24996, !"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h0e92cce58dd31bf0E: argument 0"}
!24998 = distinct !{!24998, !"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0afc80cecdb8dc1dE"}
!24999 = distinct !{!24999, !24998, !"_ZN96_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h0afc80cecdb8dc1dE: argument 0"}
!25000 = distinct !{!25000, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hab4752b637f564bfE"}
!25001 = distinct !{!25001, !25000, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hab4752b637f564bfE: argument 0"}
!25002 = distinct !{!25002, !"_ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE"}
!25003 = distinct !{!25003, !25002, !"_ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE: argument 0"}
!25004 = distinct !{!25004, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1df374eda82205faE"}
!25005 = distinct !{!25005, !25004, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1df374eda82205faE: argument 0"}
!25006 = distinct !{!25006, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h966c0fbf8333c534E"}
!25007 = distinct !{!25007, !25006, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h966c0fbf8333c534E: argument 0"}
!25008 = distinct !{!25008, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E"}
!25009 = distinct !{!25009, !25008, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E: argument 0"}
!25010 = distinct !{!25010, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h78a3929679d538e6E"}
!25011 = distinct !{!25011, !25010, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h78a3929679d538e6E: argument 0"}
!25012 = distinct !{!25012, !25010, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h78a3929679d538e6E: argument 1"}
!25013 = distinct !{!25013, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!25014 = distinct !{!25014, !25013, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!25015 = distinct !{!25015, !"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$std..thread..Thread$GT$$GT$17h3caf55e8d49202a1E"}
!25016 = distinct !{!25016, !25015, !"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$std..thread..Thread$GT$$GT$17h3caf55e8d49202a1E: argument 0"}
!25017 = distinct !{!25017, !"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E"}
!25018 = distinct !{!25018, !25017, !"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E: argument 0"}
!25019 = distinct !{!25019, !"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h3e402bbf719b9c81E"}
!25020 = distinct !{!25020, !25019, !"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h3e402bbf719b9c81E: argument 0"}
!25021 = distinct !{!25021, !"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0b1d717055b4be0bE"}
!25022 = distinct !{!25022, !25021, !"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0b1d717055b4be0bE: argument 0"}
!25023 = distinct !{!25023, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f0b470f9a5a27ecE"}
!25024 = distinct !{!25024, !25023, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f0b470f9a5a27ecE: argument 0"}
!25025 = distinct !{!25025, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E"}
!25026 = distinct !{!25026, !25025, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E: argument 0"}
!25027 = distinct !{!25027, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E"}
!25028 = distinct !{!25028, !25027, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E: argument 1"}
!25029 = distinct !{!25029, !25027, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E: argument 0"}
!25030 = distinct !{!25030, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E"}
!25031 = distinct !{!25031, !25030, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E: argument 0"}
!25032 = distinct !{!25032, !25030, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E: argument 1"}
!25033 = distinct !{!25033, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h3e628b9f47282886E"}
!25034 = distinct !{!25034, !25033, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h3e628b9f47282886E: argument 0"}
!25035 = distinct !{!25035, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!25036 = distinct !{!25036, !25035, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!25037 = distinct !{!25037, !25033, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h3e628b9f47282886E: argument 1"}
!25038 = distinct !{!25038, !25035, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!25039 = distinct !{!25039, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!25040 = distinct !{!25040, !25039, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!25041 = distinct !{!25041, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb0e12b8964a0c0d0E"}
!25042 = distinct !{!25042, !25041, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb0e12b8964a0c0d0E: argument 0"}
!25043 = distinct !{!25043, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h85140f1589af1dddE"}
!25044 = distinct !{!25044, !25043, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h85140f1589af1dddE: argument 0"}
!25045 = distinct !{!25045, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h3c3ac58be296b7afE"}
!25046 = distinct !{!25046, !25045, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h3c3ac58be296b7afE: argument 0"}
!25047 = distinct !{!25047, !25043, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h85140f1589af1dddE: argument 1"}
!25048 = distinct !{!25048, !25045, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h3c3ac58be296b7afE: argument 1"}
!25049 = distinct !{!25049, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17hc20928f607b14764E"}
!25050 = distinct !{!25050, !25049, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17hc20928f607b14764E: argument 0"}
!25051 = distinct !{!25051, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hae11b83c692b1213E"}
!25052 = distinct !{!25052, !25051, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hae11b83c692b1213E: argument 0"}
!25053 = distinct !{!25053, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!25054 = distinct !{!25054, !25053, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!25055 = distinct !{!25055, !25051, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hae11b83c692b1213E: argument 1"}
!25056 = distinct !{!25056, !25053, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!25057 = distinct !{!25057, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!25058 = distinct !{!25058, !25057, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!25059 = distinct !{!25059, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h49281e248079ae92E"}
!25060 = distinct !{!25060, !25059, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h49281e248079ae92E: argument 0"}
!25061 = distinct !{!25061, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h0b2c687986b7c259E"}
!25062 = distinct !{!25062, !25061, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h0b2c687986b7c259E: argument 1"}
!25063 = distinct !{!25063, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h468791fd1a96223eE"}
!25064 = distinct !{!25064, !25063, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h468791fd1a96223eE: argument 0"}
!25065 = distinct !{!25065, !"_ZN9hashbrown3raw13RawTableInner5erase17h75e87ac1c717ae58E"}
!25066 = distinct !{!25066, !25065, !"_ZN9hashbrown3raw13RawTableInner5erase17h75e87ac1c717ae58E: argument 0"}
!25067 = distinct !{!25067, !25061, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h0b2c687986b7c259E: argument 0"}
!25068 = distinct !{!25068, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!25069 = distinct !{!25069, !25068, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!25070 = distinct !{!25070, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!25071 = distinct !{!25071, !25070, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!25072 = distinct !{!25072, !"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$std..thread..Thread$GT$$GT$17h3caf55e8d49202a1E"}
!25073 = distinct !{!25073, !25072, !"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$std..thread..Thread$GT$$GT$17h3caf55e8d49202a1E: argument 0"}
!25074 = distinct !{!25074, !"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E"}
!25075 = distinct !{!25075, !25074, !"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E: argument 0"}
!25076 = distinct !{!25076, !"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h3e402bbf719b9c81E"}
!25077 = distinct !{!25077, !25076, !"_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h3e402bbf719b9c81E: argument 0"}
!25078 = distinct !{!25078, !"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0b1d717055b4be0bE"}
!25079 = distinct !{!25079, !25078, !"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h0b1d717055b4be0bE: argument 0"}
!25080 = distinct !{!25080, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f0b470f9a5a27ecE"}
!25081 = distinct !{!25081, !25080, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1f0b470f9a5a27ecE: argument 0"}
!25082 = distinct !{!25082, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E"}
!25083 = distinct !{!25083, !25082, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E: argument 0"}
!25084 = distinct !{!25084, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E"}
!25085 = distinct !{!25085, !25084, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E: argument 1"}
!25086 = distinct !{!25086, !25084, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E: argument 0"}
!25087 = distinct !{!25087, !"_ZN4core3ptr136drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$$GT$17hfc3c1726ec434812E"}
!25088 = distinct !{!25088, !25087, !"_ZN4core3ptr136drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$$GT$17hfc3c1726ec434812E: argument 0"}
!25089 = distinct !{!25089, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E"}
!25090 = distinct !{!25090, !25089, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E: argument 0"}
!25091 = distinct !{!25091, !25089, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E: argument 1"}
!25092 = distinct !{!25092, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h3e628b9f47282886E"}
!25093 = distinct !{!25093, !25092, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h3e628b9f47282886E: argument 0"}
!25094 = distinct !{!25094, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!25095 = distinct !{!25095, !25094, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!25096 = distinct !{!25096, !25092, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h3e628b9f47282886E: argument 1"}
!25097 = distinct !{!25097, !25094, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!25098 = distinct !{!25098, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!25099 = distinct !{!25099, !25098, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!25100 = distinct !{!25100, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb0e12b8964a0c0d0E"}
!25101 = distinct !{!25101, !25100, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb0e12b8964a0c0d0E: argument 0"}
!25102 = distinct !{!25102, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h08a4aca067870ba0E"}
!25103 = distinct !{!25103, !25102, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h08a4aca067870ba0E: argument 0"}
!25104 = distinct !{!25104, !25102, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h08a4aca067870ba0E: argument 1"}
!25105 = distinct !{!25105, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hae11b83c692b1213E"}
!25106 = distinct !{!25106, !25105, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hae11b83c692b1213E: argument 0"}
!25107 = distinct !{!25107, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!25108 = distinct !{!25108, !25107, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!25109 = distinct !{!25109, !25105, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hae11b83c692b1213E: argument 1"}
!25110 = distinct !{!25110, !25107, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!25111 = distinct !{!25111, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!25112 = distinct !{!25112, !25111, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!25113 = distinct !{!25113, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h49281e248079ae92E"}
!25114 = distinct !{!25114, !25113, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h49281e248079ae92E: argument 0"}
!25115 = distinct !{!25115, !33}
!25116 = !{!24725}
!25117 = !{!24726}
!25118 = !{!24725, !24727}
!25119 = !{!24725, !24726, !24727}
!25120 = !{!"branch_weights", i32 127, i32 255873}
!25121 = !{!24725, !24726}
!25122 = !{!"branch_weights", i32 1, i32 127}
!25123 = !{!24729, !24725, !24726, !24727}
!25124 = !{!24732, !24731, !24729, !24725, !24726, !24727}
!25125 = !{!24734}
!25126 = !{!24736, !24732, !24731, !24729, !24725, !24726, !24727}
!25127 = !{!24740, !24738}
!25128 = !{!24741, !24734, !24732, !24731, !24729, !24725, !24726, !24727}
!25129 = !{!24738}
!25130 = !{!24734, !24732, !24731, !24729}
!25131 = !{!24743}
!25132 = !{!24745, !24732, !24731, !24729, !24725, !24726, !24727}
!25133 = !{!24749, !24747}
!25134 = !{!24750, !24743, !24732, !24731, !24729, !24725, !24726, !24727}
!25135 = !{!24747}
!25136 = !{!24743, !24732, !24731, !24729}
!25137 = !{!24752, !24725, !24726, !24727}
!25138 = !{!24755, !24754, !24725, !24726, !24727}
!25139 = !{!24755, !24725, !24726, !24727}
!25140 = !{!24757}
!25141 = !{!24757, !24755, !24725, !24726, !24727}
!25142 = !{!24759}
!25143 = !{!24760, !24725, !24726, !24727}
!25144 = !{!24762}
!25145 = !{!24764}
!25146 = !{!24764, !24762, !24759}
!25147 = !{!24766, !24765, !24760, !24725, !24726, !24727}
!25148 = !{!24768, !24764, !24766, !24762, !24765, !24760, !24759, !24725, !24726, !24727}
!25149 = !{!24770, !24764, !24766, !24762, !24765, !24760, !24759, !24725, !24726, !24727}
!25150 = !{!24772, !24759}
!25151 = !{!24773, !24760, !24725, !24726, !24727}
!25152 = !{!24785, !24783, !24781, !24779, !24777, !24775, !24725, !24726, !24727}
!25153 = !{!24779, !24777, !24775, !24725, !24726, !24727}
!25154 = !{!24787, !24779, !24777, !24775, !24725, !24726, !24727}
!25155 = !{!24789}
!25156 = !{!24790, !24775, !24725, !24726, !24727}
!25157 = !{!24792, !24789, !24790, !24775, !24725, !24726, !24727}
!25158 = !{!24789, !24790, !24775, !24725, !24726, !24727}
!25159 = !{!24789, !24775, !24725, !24726, !24727}
!25160 = !{!24794}
!25161 = !{!24794, !24725, !24726, !24727}
!25162 = !{!24798, !24796, !24794}
!25163 = !{!24801, !24800, !24799, !24725, !24726, !24727}
!25164 = !{!24796, !24794}
!25165 = !{!24800, !24799, !24725, !24726, !24727}
!25166 = !{!24803, !24800, !24725, !24726, !24727}
!25167 = !{!24805, !24800, !24725, !24726, !24727}
!25168 = !{!24800, !24725, !24726, !24727}
!25169 = !{!24807, !24725, !24726, !24727}
!25170 = !{!24807}
!25171 = !{!24807, !24794}
!25172 = !{!24815, !24813, !24811, !24809, !24794, !24725, !24726, !24727}
!25173 = !{!24825, !24823, !24821, !24819, !24817, !24725, !24726, !24727}
!25174 = !{!24827, !24725, !24726, !24727}
!25175 = !{!24830, !24829, !24725, !24726, !24727}
!25176 = !{!24830, !24725, !24726, !24727}
!25177 = !{!24832}
!25178 = !{!24833, !24725, !24726, !24727}
!25179 = !{!24832, !24725, !24726, !24727}
!25180 = !{!24835}
!25181 = !{!24837}
!25182 = !{!24837, !24835, !24832}
!25183 = !{!24839, !24838, !24833, !24725, !24726, !24727}
!25184 = !{!24841, !24837, !24839, !24835, !24838, !24832, !24833, !24725, !24726, !24727}
!25185 = !{!24843, !24837, !24839, !24835, !24838, !24832, !24833, !24725, !24726, !24727}
!25186 = !{!24845}
!25187 = !{!24847}
!25188 = !{!24847, !24845}
!25189 = !{!24849, !24848, !24725, !24726, !24727}
!25190 = !{!24847, !24845, !24725, !24726, !24727}
!25191 = !{!24851}
!25192 = !{!24853}
!25193 = !{!24855}
!25194 = !{!24855, !24853, !24851, !24847, !24845}
!25195 = !{!24857, !24856, !24849, !24848, !24725, !24726, !24727}
!25196 = !{!24859, !24855, !24857, !24853, !24856, !24851, !24847, !24849, !24845, !24848, !24725, !24726, !24727}
!25197 = !{!24861, !24855, !24857, !24853, !24856, !24851, !24847, !24849, !24845, !24848, !24725, !24726, !24727}
!25198 = !{!24863}
!25199 = !{!24865}
!25200 = !{!24867}
!25201 = !{!24870, !24867, !24865, !24868, !24863, !24851, !24847, !24849, !24845, !24848, !24725, !24726, !24727}
!25202 = !{!24872, !24867, !24865, !24868, !24863, !24851, !24847, !24849, !24845, !24848, !24725, !24726, !24727}
!25203 = !{!24867, !24865, !24863, !24851, !24847, !24845}
!25204 = !{!24868, !24849, !24848, !24725, !24726, !24727}
!25205 = !{!24867, !24865, !24868, !24863, !24851, !24847, !24849, !24845, !24848, !24725, !24726, !24727}
!25206 = !{!24868, !24863, !24851, !24847, !24849, !24845, !24848, !24725, !24726, !24727}
!25207 = !{!24882, !24880, !24878, !24876, !24874, !24725, !24726, !24727}
!25208 = !{!24884, !24725, !24726, !24727}
!25209 = !{!24887, !24886, !24725, !24726, !24727}
!25210 = !{!24887, !24725, !24726, !24727}
!25211 = !{!24889}
!25212 = !{!24889, !24887, !24725, !24726, !24727}
!25213 = !{!24891}
!25214 = !{!24892, !24725, !24726, !24727}
!25215 = !{!24894}
!25216 = !{!24896}
!25217 = !{!24896, !24894, !24891}
!25218 = !{!24898, !24897, !24892, !24725, !24726, !24727}
!25219 = !{!24900, !24896, !24898, !24894, !24897, !24891, !24892, !24725, !24726, !24727}
!25220 = !{!24902, !24896, !24898, !24894, !24897, !24891, !24892, !24725, !24726, !24727}
!25221 = !{!24904}
!25222 = !{!24905, !24725, !24726, !24727}
!25223 = !{!24907}
!25224 = !{!24909}
!25225 = !{!24909, !24907, !24904}
!25226 = !{!24911, !24910, !24905, !24725, !24726, !24727}
!25227 = !{!24913, !24909, !24911, !24907, !24910, !24904, !24905, !24725, !24726, !24727}
!25228 = !{!24915, !24909, !24911, !24907, !24910, !24904, !24905, !24725, !24726, !24727}
!25229 = !{!24726, !24727}
!25230 = !{!24919, !24918}
!25231 = !{!24919}
!25232 = !{!24921, !24919, !24918}
!25233 = !{!24924, !24923, !24921, !24919, !24918}
!25234 = !{!24926}
!25235 = !{!24928, !24924, !24923, !24921, !24919, !24918}
!25236 = !{!24930}
!25237 = !{!24931, !24926, !24924, !24923, !24921, !24919, !24918}
!25238 = !{!24933, !24930}
!25239 = !{!24926, !24924, !24923, !24921}
!25240 = !{!24935, !24921, !24919, !24918}
!25241 = !{!24943, !24941, !24940, !24938, !24937, !24921, !24919, !24918}
!25242 = !{!24945}
!25243 = !{!24947}
!25244 = !{!24947, !24945, !24921, !24919, !24918}
!25245 = !{!24947, !24945}
!25246 = !{!24945, !24921, !24919, !24918}
!25247 = !{!24949}
!25248 = !{!24951}
!25249 = !{!24953}
!25250 = !{!24955}
!25251 = !{!24955, !24953, !24951, !24949}
!25252 = !{!24955, !24953, !24951, !24949, !24921, !24919, !24918}
!25253 = !{!24963, !24961, !24959, !24957, !24921, !24919, !24918}
!25254 = !{!24965}
!25255 = !{!24967}
!25256 = !{!24969}
!25257 = !{!24971}
!25258 = !{!24971, !24969, !24967, !24965}
!25259 = !{!24971, !24969, !24967, !24965, !24921, !24919, !24918}
!25260 = !{!24974, !24973, !24921, !24919, !24918}
!25261 = !{!24974, !24921, !24919, !24918}
!25262 = !{!24976, !24919, !24918}
!25263 = !{!24979, !24978, !24919, !24918}
!25264 = !{!24979, !24919, !24918}
!25265 = !{!24981}
!25266 = !{!24982, !24981, !24919, !24918}
!25267 = !{!24982, !24919, !24918}
!25268 = !{!24984}
!25269 = !{!24986}
!25270 = !{!24986, !24984, !24981}
!25271 = !{!24988, !24987, !24982, !24919, !24918}
!25272 = !{!24990, !24986, !24988, !24984, !24987, !24982, !24981, !24919, !24918}
!25273 = !{!24992, !24986, !24988, !24984, !24987, !24982, !24981, !24919, !24918}
!25274 = !{!24994, !24981}
!25275 = !{!24995, !24982, !24919, !24918}
!25276 = !{!25007, !25005, !25003, !25001, !24999, !24997, !24919, !24918}
!25277 = !{!25001, !24999, !24997, !24919, !24918}
!25278 = !{!25009, !25001, !24999, !24997, !24919, !24918}
!25279 = !{!25011}
!25280 = !{!25012, !24997, !24919, !24918}
!25281 = !{!25014, !25011, !25012, !24997, !24919, !24918}
!25282 = !{!25011, !25012, !24997, !24919, !24918}
!25283 = !{!25011, !24997, !24919, !24918}
!25284 = !{!25024, !25022, !25020, !25018, !25016, !24919, !24918}
!25285 = !{!25026, !24919, !24918}
!25286 = !{!25029, !25028, !24919, !24918}
!25287 = !{!25029, !24919, !24918}
!25288 = !{!25031}
!25289 = !{!25032, !24919, !24918}
!25290 = !{!25031, !24919, !24918}
!25291 = !{!25034}
!25292 = !{!25036}
!25293 = !{!25036, !25034, !25031}
!25294 = !{!25038, !25037, !25032, !24919, !24918}
!25295 = !{!25040, !25036, !25038, !25034, !25037, !25031, !25032, !24919, !24918}
!25296 = !{!25042, !25036, !25038, !25034, !25037, !25031, !25032, !24919, !24918}
!25297 = !{!25044}
!25298 = !{!25046}
!25299 = !{!25046, !25044}
!25300 = !{!25048, !25047, !24919, !24918}
!25301 = !{!25046, !25044, !24919, !24918}
!25302 = !{!25050}
!25303 = !{!25052}
!25304 = !{!25054}
!25305 = !{!25054, !25052, !25050, !25046, !25044}
!25306 = !{!25056, !25055, !25048, !25047, !24919, !24918}
!25307 = !{!25058, !25054, !25056, !25052, !25055, !25050, !25046, !25048, !25044, !25047, !24919, !24918}
!25308 = !{!25060, !25054, !25056, !25052, !25055, !25050, !25046, !25048, !25044, !25047, !24919, !24918}
!25309 = !{!25062}
!25310 = !{!25064}
!25311 = !{!25066}
!25312 = !{!25069, !25066, !25064, !25067, !25062, !25050, !25046, !25048, !25044, !25047, !24919, !24918}
!25313 = !{!25071, !25066, !25064, !25067, !25062, !25050, !25046, !25048, !25044, !25047, !24919, !24918}
!25314 = !{!25066, !25064, !25062, !25050, !25046, !25044}
!25315 = !{!25067, !25048, !25047, !24919, !24918}
!25316 = !{!25066, !25064, !25067, !25062, !25050, !25046, !25048, !25044, !25047, !24919, !24918}
!25317 = !{!25067, !25062, !25050, !25046, !25048, !25044, !25047, !24919, !24918}
!25318 = !{!25081, !25079, !25077, !25075, !25073, !24919, !24918}
!25319 = !{!25083, !24919, !24918}
!25320 = !{!25086, !25085, !24919, !24918}
!25321 = !{!25086, !24919, !24918}
!25322 = !{!25088}
!25323 = !{!25088, !25086, !24919, !24918}
!25324 = !{!25090}
!25325 = !{!25091, !24919, !24918}
!25326 = !{!25093}
!25327 = !{!25095}
!25328 = !{!25095, !25093, !25090}
!25329 = !{!25097, !25096, !25091, !24919, !24918}
!25330 = !{!25099, !25095, !25097, !25093, !25096, !25090, !25091, !24919, !24918}
!25331 = !{!25101, !25095, !25097, !25093, !25096, !25090, !25091, !24919, !24918}
!25332 = !{!25103}
!25333 = !{!25104, !24919, !24918}
!25334 = !{!25106}
!25335 = !{!25108}
!25336 = !{!25108, !25106, !25103}
end_hunk_2
