inline.NumInlined: 139
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNvNtCsM5evIHPibA_17crossbeam_channel6select10run_select0B5_:bb.a
  %i.x = add i64 %.sroa.0.0214, 1                 ; 5 uses
  br i1 %i.t, label %bb.f, label %bb.e, !prof !13

bb.e:                                             ; preds = %.lr.ph215
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.f:                                             ; preds = %.lr.ph215
  %i.y = ptrtoint ptr %.sroa.04.0213 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0213, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !12, !align !112, !noundef !12
  %i.ab = load ptr, ptr %.sroa.04.0213, align 8, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !12, !nonnull !12
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull %i.ab, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load atomic i64, ptr %i.s acquire, align 8 ; 4 uses
  switch i64 %i.af, label %.thread68 [
    i64 0, label %bb.d
    i64 1, label %.thread68.loopexit229
    i64 2, label %.thread68.loopexit229
  ]

bb.h:                                             ; preds = %bb.f
  %.val = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ah = cmpxchg ptr %i.ag, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %spec.select.i57 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 3)
  br label %.thread68

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.0213, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !12
  br label %.thread68

.thread68.loopexit229:                            ; preds = %bb.g, %bb.g
  br label %.thread68

.thread68:                                        ; preds = %.split.i, %.split.us.i, %bb.g, %.thread68.loopexit229, %bb.i, %.split9.us.loopexit23.i, %.split9.us.loopexit13.i, %bb.p, %bb.j
  %.sroa.12.3 = phi i64 [ %i.af, %.thread68.loopexit229 ], [ %i.aj, %bb.i ], [ undef, %bb.j ], [ %i.af, %bb.g ], [ %i.bb, %.split.us.i ], [ undef, %.split9.us.loopexit13.i ], [ %.sroa.7.0.i, %bb.p ], [ undef, %.split9.us.loopexit23.i ], [ %i.bc, %.split.i ]
  %.sroa.013.3 = phi i64 [ %i.af, %.thread68.loopexit229 ], [ %spec.select.i57, %bb.i ], [ 1, %bb.j ], [ 3, %bb.g ], [ 3, %.split.us.i ], [ 1, %.split9.us.loopexit13.i ], [ %.sroa.03.0.i, %bb.p ], [ 2, %.split9.us.loopexit23.i ], [ 3, %.split.i ]
  %.sroa.311.0 = phi i64 [ undef, %.thread68.loopexit229 ], [ undef, %bb.i ], [ %i.al, %bb.j ], [ undef, %bb.g ], [ undef, %.split.us.i ], [ undef, %.split9.us.loopexit13.i ], [ undef, %bb.p ], [ undef, %.split9.us.loopexit23.i ], [ undef, %.split.i ] ; 2 uses
  %.sroa.010.0.not = phi i1 [ true, %.thread68.loopexit229 ], [ true, %bb.i ], [ false, %bb.j ], [ true, %bb.g ], [ true, %.split.us.i ], [ true, %.split9.us.loopexit13.i ], [ true, %bb.p ], [ true, %.split9.us.loopexit23.i ], [ true, %.split.i ]
  %.sroa.0.2 = phi i64 [ %i.x, %.thread68.loopexit229 ], [ %i.x, %bb.i ], [ %i.x, %bb.j ], [ %i.x, %bb.g ], [ %i.p, %.split.us.i ], [ %i.p, %.split9.us.loopexit13.i ], [ %i.p, %bb.p ], [ %i.p, %.split9.us.loopexit23.i ], [ %i.p, %.split.i ] ; 2 uses
  %i.am = icmp eq i64 %.sroa.0.2, 0
  br i1 %i.am, label %._crit_edge113, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.thread68
  %i.an = icmp ugt ptr %i.n, inttoptr (i64 2 to ptr)
  br label %.lr.ph112

.thread63:                                        ; preds = %bb.d, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsM5evIHPibA_17crossbeam_channel6select8SelectedE6unwrapBM_.exit
  switch i32 %narrow, label %bb.k [
    i32 0, label %.loopexit
    i32 1, label %bb.m
    i32 2, label %bb.l
  ]

default.unreachable:                              ; preds = %._crit_edge113
  unreachable

bb.k:                                             ; preds = %.thread63
  unreachable

bb.l:                                             ; preds = %.thread63
  %i.ao = load i64, ptr %i.b, align 8, !noundef !12
  %i.ap = load i32, ptr %i.c, align 8, !range !114, !noundef !12
  br label %bb.m

bb.m:                                             ; preds = %.thread63, %bb.l
  %.sroa.624.0 = phi i32 [ %i.ap, %bb.l ], [ -1, %.thread63 ] ; 2 uses
  %.sroa.021.0 = phi i64 [ %i.ao, %bb.l ], [ undef, %.thread63 ] ; 2 uses
  %i.aq = icmp eq i64 %i.p, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.s
  %.sroa.021.1108 = phi i64 [ %.sroa.021.2, %bb.s ], [ %.sroa.021.0, %bb.m ] ; 4 uses
  %.sroa.624.1107 = phi i32 [ %.sroa.624.2, %bb.s ], [ %.sroa.624.0, %bb.m ] ; 4 uses
  %.sroa.027.0106 = phi ptr [ %i.ar, %bb.s ], [ %i.n, %bb.m ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.027.0106, i64 32 ; 2 uses
  %i.as = load ptr, ptr %.sroa.027.0106, align 8, !nonnull !12, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.027.0106, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !12, !align !112, !noundef !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !12, !nonnull !12
  %i.ax = tail call { i64, i32 } %i.aw(ptr noundef nonnull %i.as) #24 ; 2 uses
  %i.ay = extractvalue { i64, i32 } %i.ax, 0      ; 4 uses
  %i.az = extractvalue { i64, i32 } %i.ax, 1      ; 4 uses
  %.not53 = icmp eq i32 %i.az, -1
  br i1 %.not53, label %bb.s, label %bb.r

._crit_edge:                                      ; preds = %bb.s, %bb.m
  %.sroa.624.1.lcssa = phi i32 [ %.sroa.624.0, %bb.m ], [ %.sroa.624.2, %bb.s ] ; 3 uses
  %.sroa.021.1.lcssa = phi i64 [ %.sroa.021.0, %bb.m ], [ %.sroa.021.2, %bb.s ] ; 3 uses
  %.val56 = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.val56, i64 32 ; 3 uses
  %.not.i60 = icmp eq i32 %.sroa.624.1.lcssa, -1
  br i1 %.not.i60, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %._crit_edge, %bb.n
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  switch i64 %i.bb, label %.thread68 [
    i64 0, label %bb.n
    i64 1, label %.split9.us.loopexit13.i
    i64 2, label %.split9.us.loopexit23.i
  ]

bb.n:                                             ; preds = %.split.us.i
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions4park()
  br label %.split.us.i

.split.i:                                         ; preds = %._crit_edge, %bb.q
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  switch i64 %i.bc, label %.thread68 [
    i64 0, label %bb.o
    i64 1, label %.split9.us.loopexit13.i
    i64 2, label %.split9.us.loopexit23.i
  ]

bb.o:                                             ; preds = %.split.i
  %i.bd = tail call { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.be = extractvalue { i64, i32 } %i.bd, 0      ; 3 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.be, %.sroa.021.1.lcssa
  %i.bh = icmp slt i64 %i.be, %.sroa.021.1.lcssa
  %i.bi = icmp samesign ult i32 %i.bf, %.sroa.624.1.lcssa
  %spec.select.i61 = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select.i61, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1       ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bj, 0       ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 3)
  %.sroa.03.0.i = select i1 %i.bk, i64 1, i64 %spec.select.i.i
  %.sroa.7.0.i = select i1 %i.bk, i64 undef, i64 %i.bl
  br label %.thread68

bb.q:                                             ; preds = %bb.o
  %i.bm = tail call { i64, i32 } @_RNvXs3_NtCscAsMj0W7j8b_3std4timeNtB5_7InstantNtNtNtCshzWfHUSfYae_4core3ops5arith3Sub3sub(i64 noundef %.sroa.021.1.lcssa, i32 noundef range(i32 -1, 1000000000) %.sroa.624.1.lcssa, i64 noundef %i.be, i32 noundef %i.bf) ; 2 uses
  %i.bn = extractvalue { i64, i32 } %i.bm, 0
  %i.bo = extractvalue { i64, i32 } %i.bm, 1
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions12park_timeout(i64 noundef %i.bn, i32 noundef %i.bo)
  br label %.split.i

.split9.us.loopexit13.i:                          ; preds = %.split.i, %.split.us.i
  br label %.thread68

.split9.us.loopexit23.i:                          ; preds = %.split.i, %.split.us.i
  br label %.thread68

bb.r:                                             ; preds = %.lr.ph
  %.not54 = icmp eq i32 %.sroa.624.1107, -1
  br i1 %.not54, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r, %.lr.ph
  %.sroa.624.2 = phi i32 [ %.sroa.624.1107, %.lr.ph ], [ %..i, %bb.t ], [ %i.az, %bb.r ] ; 2 uses
  %.sroa.021.2 = phi i64 [ %.sroa.021.1108, %.lr.ph ], [ %.2.i, %bb.t ], [ %i.ay, %bb.r ] ; 2 uses
  %i.bp = icmp eq ptr %i.ar, %i.q
  br i1 %i.bp, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %bb.r
  %i.bq = icmp eq i64 %.sroa.021.1108, %i.ay
  %i.br = icmp samesign ult i32 %.sroa.624.1107, %i.az
  %i.bs = icmp slt i64 %.sroa.021.1108, %i.ay
  %i.bt = select i1 %i.bq, i1 %i.br, i1 %i.bs     ; 2 uses
  %..i = select i1 %i.bt, i32 %.sroa.624.1107, i32 %i.az
  %.2.i = select i1 %i.bt, i64 %.sroa.021.1108, i64 %i.ay
  br label %bb.s

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %bb.w
  %.sroa.537.0111 = phi i64 [ %i.bu, %bb.w ], [ %.sroa.0.2, %.lr.ph112.preheader ]
  %.sroa.035.0110 = phi ptr [ %i.ce, %bb.w ], [ %i.n, %.lr.ph112.preheader ] ; 5 uses
  %i.bu = add i64 %.sroa.537.0111, -1             ; 2 uses
  %i.bv = icmp eq ptr %.sroa.035.0110, %i.q
  br i1 %i.bv, label %._crit_edge113, label %bb.u

._crit_edge113:                                   ; preds = %bb.w, %.lr.ph112, %.thread68
  switch i64 %.sroa.013.3, label %default.unreachable [
    i64 0, label %bb.x
    i64 1, label %bb.y
    i64 2, label %.loopexit
    i64 3, label %.preheader72
  ], !prof !115

.preheader72:                                     ; preds = %._crit_edge113
  %i.bw = icmp eq i64 %i.p, 0
  br i1 %i.bw, label %.loopexit, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader72
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !12, !align !112
  %i.bz = icmp ugt ptr %i.n, inttoptr (i64 2 to ptr)
  br i1 %i.bz, label %bb.ac, label %bb.ad, !prof !13

bb.u:                                             ; preds = %.lr.ph112
  br i1 %i.an, label %bb.w, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ca = ptrtoint ptr %.sroa.035.0110 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.035.0110, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !12, !align !112, !noundef !12
  %i.cd = load ptr, ptr %.sroa.035.0110, align 8, !nonnull !12, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.035.0110, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !12, !nonnull !12
  tail call void %i.cg(ptr noundef nonnull %i.cd, i64 noundef %i.ca) #24
  %i.ch = icmp eq i64 %i.bu, 0
  br i1 %i.ch, label %._crit_edge113, label %.lr.ph112

bb.x:                                             ; preds = %._crit_edge113
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
  unreachable

bb.y:                                             ; preds = %._crit_edge113
  %i.ci = icmp eq i64 %i.p, 0
  %or.cond = or i1 %.sroa.010.0.not, %i.ci
  br i1 %or.cond, label %.loopexit, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !12, !align !112
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph118, %bb.aa
  %.sroa.040.0117 = phi ptr [ %i.n, %.lr.ph118 ], [ %i.cl, %bb.aa ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.040.0117, i64 32 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.040.0117, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !12
  %i.co = icmp eq i64 %i.cn, %.sroa.311.0
  br i1 %i.co, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.cp = icmp eq ptr %i.cl, %i.q
  br i1 %i.cp, label %.loopexit, label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.040.0117, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !noundef !12
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.040.0117, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !12, !align !112, !noundef !12
  %i.cu = load ptr, ptr %.sroa.040.0117, align 8, !nonnull !12, !noundef !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !12, !nonnull !12
  %i.cx = tail call noundef zeroext i1 %i.cw(ptr noundef nonnull %i.cu, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ck) #24
  br i1 %i.cx, label %.loopexit.sink.split, label %bb.aa

bb.ac:                                            ; preds = %.lr.ph116, %bb.ae
  %.sroa.045.0115 = phi ptr [ %i.cy, %bb.ae ], [ %i.n, %.lr.ph116 ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.045.0115, i64 32 ; 2 uses
  %3 = ptrtoint ptr %.sroa.045.0115 to i64
  %4 = icmp eq i64 %.sroa.12.3, %3
  br i1 %4, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph116
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %i.cz = icmp eq ptr %i.cy, %i.q
  br i1 %i.cz, label %.loopexit, label %bb.ac

bb.af:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %.sroa.045.0115, align 8, !nonnull !12, !noundef !12
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.045.0115, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !12, !align !112, !noundef !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !invariant.load !12, !nonnull !12
  %i.df = tail call noundef zeroext i1 %i.de(ptr noundef nonnull %i.da, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #24
  br i1 %i.df, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.045.0115, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !12
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.045.0115, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !noundef !12
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ab, %bb.ag
  %.sroa.311.0.sink = phi i64 [ %i.dh, %bb.ag ], [ %.sroa.311.0, %bb.ab ]
  %.lcssa.sink = phi ptr [ %i.dj, %bb.ag ], [ %i.cr, %bb.ab ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.311.0.sink, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.lcssa.sink, ptr %i.dl, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.aa, %.loopexit.sink.split, %._crit_edge113, %bb.y, %.preheader72, %.thread63
  %.sink = phi i64 [ 0, %.thread63 ], [ 0, %bb.y ], [ 0, %._crit_edge113 ], [ 0, %bb.aa ], [ 1, %.loopexit.sink.split ], [ 0, %.preheader72 ], [ 0, %bb.ae ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCNvNtCsM5evIHPibA_17crossbeam_channel6select9run_ready0B5_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !112, !noundef !12 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 9 uses
  %.idx = shl nuw nsw i64 %i.c, 5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = icmp ugt ptr %i.a, inttoptr (i64 2 to ptr)
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %.thread51, label %.lr.ph181

bb.b:                                             ; preds = %bb.e
  %i.i = icmp eq ptr %i.j, %i.d
  br i1 %i.i, label %.thread51, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.a, %bb.b
  %.sroa.03.0179 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %.sroa.05.0178 = phi ptr [ %i.j, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.0178, i64 32 ; 2 uses
  %i.k = add i64 %.sroa.03.0179, 1                ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %.lr.ph181
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.d:                                             ; preds = %.lr.ph181
  %i.l = ptrtoint ptr %.sroa.05.0178 to i64       ; 3 uses
  %i.m = load ptr, ptr %.sroa.05.0178, align 8, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0178, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !align !112, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !12, !nonnull !12
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull %i.m, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #24
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load atomic i64, ptr %i.f acquire, align 8 ; 4 uses
  switch i64 %i.s, label %.thread56 [
    i64 0, label %bb.b
    i64 1, label %.thread56.loopexit195
    i64 2, label %.thread56.loopexit195
  ]

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.u = cmpxchg ptr %i.t, i64 0, i64 %i.l acq_rel acquire, align 8 ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.thread56, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 3)
  br label %.thread56

.thread56.loopexit195:                            ; preds = %bb.e, %bb.e
  br label %.thread56

.thread56:                                        ; preds = %.split.i, %.split.us.i, %bb.e, %.thread56.loopexit195, %bb.g, %.split9.us.loopexit23.i, %.split9.us.loopexit13.i, %bb.n, %bb.f
  %.sroa.13.3 = phi i64 [ %i.s, %.thread56.loopexit195 ], [ %i.w, %bb.g ], [ %i.l, %bb.f ], [ %i.s, %bb.e ], [ %i.ar, %.split.us.i ], [ undef, %.split9.us.loopexit13.i ], [ %.sroa.7.0.i, %bb.n ], [ undef, %.split9.us.loopexit23.i ], [ %i.as, %.split.i ]
  %.sroa.011.3 = phi i64 [ %i.s, %.thread56.loopexit195 ], [ %spec.select.i, %bb.g ], [ 3, %bb.f ], [ 3, %bb.e ], [ 3, %.split.us.i ], [ 1, %.split9.us.loopexit13.i ], [ %.sroa.03.0.i, %bb.n ], [ 2, %.split9.us.loopexit23.i ], [ 3, %.split.i ]
  %.sroa.03.2 = phi i64 [ %i.k, %.thread56.loopexit195 ], [ %i.k, %bb.g ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.c, %.split.us.i ], [ %i.c, %.split9.us.loopexit13.i ], [ %i.c, %bb.n ], [ %i.c, %.split9.us.loopexit23.i ], [ %i.c, %.split.i ] ; 2 uses
  %i.x = icmp eq i64 %.sroa.03.2, 0
  br i1 %i.x, label %._crit_edge97, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %.thread56
  %i.y = icmp ugt ptr %i.a, inttoptr (i64 2 to ptr)
  br label %.lr.ph96

.thread51:                                        ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !12, !align !112, !noundef !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !113, !noundef !12 ; 3 uses
  %i.ad = add nsw i32 %i.ac, -1000000000
  %i.ae = icmp samesign ugt i32 %i.ac, 999999999
  %narrow = select i1 %i.ae, i32 %i.ad, i32 2
  switch i32 %narrow, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.j
  ], !prof !116

default.unreachable:                              ; preds = %._crit_edge97
  unreachable

bb.h:                                             ; preds = %.thread51
  unreachable

bb.i:                                             ; preds = %.thread51
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25
  unreachable

bb.j:                                             ; preds = %.thread51
  %i.af = load i64, ptr %i.aa, align 8, !noundef !12
  br label %bb.k

bb.k:                                             ; preds = %.thread51, %bb.j
  %.sroa.624.0 = phi i32 [ %i.ac, %bb.j ], [ -1, %.thread51 ] ; 2 uses
  %.sroa.021.0 = phi i64 [ %i.af, %bb.j ], [ undef, %.thread51 ] ; 2 uses
  %i.ag = icmp eq i64 %i.c, 0
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.q
  %.sroa.021.192 = phi i64 [ %.sroa.021.2, %bb.q ], [ %.sroa.021.0, %bb.k ] ; 4 uses
  %.sroa.624.191 = phi i32 [ %.sroa.624.2, %bb.q ], [ %.sroa.624.0, %bb.k ] ; 4 uses
  %.sroa.027.090 = phi ptr [ %i.ah, %bb.q ], [ %i.a, %bb.k ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.027.090, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %.sroa.027.090, align 8, !nonnull !12, !noundef !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.027.090, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !12, !align !112, !noundef !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !12, !nonnull !12
  %i.an = tail call { i64, i32 } %i.am(ptr noundef nonnull %i.ai) #24 ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0      ; 4 uses
  %i.ap = extractvalue { i64, i32 } %i.an, 1      ; 4 uses
  %.not46 = icmp eq i32 %i.ap, -1
  br i1 %.not46, label %bb.q, label %bb.p

._crit_edge:                                      ; preds = %bb.q, %bb.k
  %.sroa.624.1.lcssa = phi i32 [ %.sroa.624.0, %bb.k ], [ %.sroa.624.2, %bb.q ] ; 3 uses
  %.sroa.021.1.lcssa = phi i64 [ %.sroa.021.0, %bb.k ], [ %.sroa.021.2, %bb.q ] ; 3 uses
  %.val48 = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.val48, i64 32 ; 3 uses
  %.not.i = icmp eq i32 %.sroa.624.1.lcssa, -1
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %._crit_edge, %bb.l
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  switch i64 %i.ar, label %.thread56 [
    i64 0, label %bb.l
    i64 1, label %.split9.us.loopexit13.i
    i64 2, label %.split9.us.loopexit23.i
  ]

bb.l:                                             ; preds = %.split.us.i
  tail call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions4park()
  br label %.split.us.i

.split.i:                                         ; preds = %._crit_edge, %bb.o
  %i.as = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  switch i64 %i.as, label %.thread56 [
    i64 0, label %bb.m
    i64 1, label %.split9.us.loopexit13.i
    i64 2, label %.split9.us.loopexit23.i
  ]

bb.m:                                             ; preds = %.split.i
  %i.at = tail call { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.au = extractvalue { i64, i32 } %i.at, 0      ; 3 uses
  %i.av = extractvalue { i64, i32 } %i.at, 1      ; 2 uses
  %i.aw = icmp eq i64 %i.au, %.sroa.021.1.lcssa
  %i.ax = icmp slt i64 %i.au, %.sroa.021.1.lcssa
  %i.ay = icmp samesign ult i32 %i.av, %.sroa.624.1.lcssa
  %spec.select.i49 = select i1 %i.aw, i1 %i.ay, i1 %i.ax
  br i1 %spec.select.i49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = cmpxchg ptr %i.aq, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1       ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.az, 0       ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 3)
  %.sroa.03.0.i = select i1 %i.ba, i64 1, i64 %spec.select.i.i
  %.sroa.7.0.i = select i1 %i.ba, i64 undef, i64 %i.bb
  br label %.thread56

end_hunk_0
