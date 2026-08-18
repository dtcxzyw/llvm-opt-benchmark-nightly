inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command11__build_self:bb.a
bb.av:                                            ; preds = %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, %.lr.ph.i130
  %.sroa.0.010.i = phi ptr [ %i.nz, %.lr.ph.i130 ], [ %i.od, %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i ] ; 10 uses
  %.sroa.7.09.i = phi i64 [ 0, %.lr.ph.i130 ], [ %i.oe, %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i ] ; 6 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 600 ; 2 uses
  %i.oe = add nuw nsw i64 %.sroa.7.09.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !5636)
  call void @llvm.experimental.noalias.scope.decl(metadata !5639)
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 40
  %i.og = load i64, ptr %i.of, align 8, !range !142, !alias.scope !5639, !noalias !5641, !noundef !13
  %i.oh = trunc nuw i64 %i.og to i1
  br i1 %i.oh, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 48
  %i.oj = load i64, ptr %i.oi, align 8, !alias.scope !5639, !noalias !5641, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !5642)
  %i.ok = load i64, ptr %i.nt, align 8, !alias.scope !5645, !noalias !5646, !noundef !13 ; 3 uses
  %i.ol = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5645, !noalias !5646, !noundef !13
  %i.om = icmp eq i64 %i.ok, %i.ol
  br i1 %i.om, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5646
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i: ; preds = %bb.ax, %bb.aw
  %i.on = load ptr, ptr %i.oc, align 8, !alias.scope !5645, !noalias !5646, !nonnull !13, !noundef !13
  %i.oo = getelementptr inbounds nuw [32 x i8], ptr %i.on, i64 %i.ok ; 3 uses
  store i32 2, ptr %i.oo, align 8, !noalias !5648
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i64 %i.oj, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !5648
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !5648
  %i.op = add i64 %i.ok, 1
  store i64 %i.op, ptr %i.nt, align 8, !alias.scope !5645, !noalias !5646
  br label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i

bb.ay:                                            ; preds = %bb.av
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 584
  %i.or = load i32, ptr %i.oq, align 8, !range !2440, !alias.scope !5639, !noalias !5641, !noundef !13 ; 2 uses
  %.not.i.i131 = icmp eq i32 %i.or, -1
  br i1 %.not.i.i131, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !5649)
  %i.os = load i64, ptr %i.nt, align 8, !alias.scope !5652, !noalias !5653, !noundef !13 ; 3 uses
  %i.ot = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5652, !noalias !5653, !noundef !13
  %i.ou = icmp eq i64 %i.os, %i.ot
  br i1 %i.ou, label %bb.ba, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i

bb.ba:                                            ; preds = %bb.az
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5653
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i: ; preds = %bb.ba, %bb.az
  %i.ov = load ptr, ptr %i.oc, align 8, !alias.scope !5652, !noalias !5653, !nonnull !13, !noundef !13
  %i.ow = getelementptr inbounds nuw [32 x i8], ptr %i.ov, i64 %i.os ; 3 uses
  store i32 0, ptr %i.ow, align 8, !noalias !5655
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  store i32 %i.or, ptr %.sroa.431.0..sroa_idx.i.i, align 4, !noalias !5655
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !5655
  %i.ox = add i64 %i.os, 1
  store i64 %i.ox, ptr %i.nt, align 8, !alias.scope !5652, !noalias !5653
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i, %bb.ay
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 552
  %i.oz = load ptr, ptr %i.oy, align 8, !alias.scope !5639, !noalias !5641, !noundef !13 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.oz, null
  br i1 %.not23.i.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 560
  %i.pb = load i64, ptr %i.pa, align 8, !alias.scope !5639, !noalias !5641, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !5656)
  %i.pc = load i64, ptr %i.nt, align 8, !alias.scope !5659, !noalias !5660, !noundef !13 ; 3 uses
  %i.pd = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5659, !noalias !5660, !noundef !13
  %i.pe = icmp eq i64 %i.pc, %i.pd
  br i1 %i.pe, label %bb.bd, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5660
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i: ; preds = %bb.bd, %bb.bc
  %i.pf = load ptr, ptr %i.oc, align 8, !alias.scope !5659, !noalias !5660, !nonnull !13, !noundef !13
  %i.pg = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %i.pc ; 4 uses
  store i32 1, ptr %i.pg, align 8, !noalias !5662
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store ptr %i.oz, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !5662
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store i64 %i.pb, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !noalias !5662
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5662
  %i.ph = add i64 %i.pc, 1
  store i64 %i.ph, ptr %i.nt, align 8, !alias.scope !5659, !noalias !5660
  br label %bb.be

bb.be:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i, %bb.bb
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 328
  %i.pj = load ptr, ptr %i.pi, align 8, !alias.scope !5639, !noalias !5641, !nonnull !13, !noundef !13 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 336
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !5639, !noalias !5641, !noundef !13 ; 2 uses
  %.idx.i.i132 = shl nuw nsw i64 %i.pl, 3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.idx.i.i132
  %i.pn = icmp eq i64 %i.pl, 0
  br i1 %i.pn, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.be
  %.pre.i.i = load i64, ptr %i.nt, align 8, !alias.scope !5663, !noalias !5666
  %.pre53.i.i = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5663, !noalias !5666
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i, %.lr.ph.i.i
  %i.po = phi i64 [ %.pre53.i.i, %.lr.ph.i.i ], [ %i.pt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 2 uses
  %i.pp = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.pw, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 3 uses
  %.sroa.011.047.i.i = phi ptr [ %i.pj, %.lr.ph.i.i ], [ %i.pq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.011.047.i.i, i64 8 ; 2 uses
  %i.pr = load i32, ptr %.sroa.011.047.i.i, align 4, !range !4398, !noalias !5668, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !5669)
  %i.ps = icmp eq i64 %i.pp, %i.po
  br i1 %i.ps, label %bb.bg, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5666
  %.pre52.i.i = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5663, !noalias !5666
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i: ; preds = %bb.bg, %bb.bf
  %i.pt = phi i64 [ %i.po, %bb.bf ], [ %.pre52.i.i, %bb.bg ]
  %i.pu = load ptr, ptr %i.oc, align 8, !alias.scope !5663, !noalias !5666, !nonnull !13, !noundef !13
  %i.pv = getelementptr inbounds nuw [32 x i8], ptr %i.pu, i64 %i.pp ; 3 uses
  store i32 0, ptr %i.pv, align 8, !noalias !5670
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  store i32 %i.pr, ptr %.sroa.439.0..sroa_idx.i.i, align 4, !noalias !5670
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.541.0..sroa_idx.i.i, align 8, !noalias !5670
  %i.pw = add i64 %i.pp, 1                        ; 2 uses
  store i64 %i.pw, ptr %i.nt, align 8, !alias.scope !5663, !noalias !5666
  %i.px = icmp eq ptr %i.pq, %i.pm
  br i1 %i.px, label %._crit_edge.i.i, label %bb.bf

._crit_edge.i.i:                                  ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i, %bb.be
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 304
  %i.pz = load ptr, ptr %i.py, align 8, !alias.scope !5639, !noalias !5641, !nonnull !13, !noundef !13 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 312
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !5639, !noalias !5641, !noundef !13 ; 2 uses
  %.idx51.i.i = mul nuw nsw i64 %i.qb, 24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx51.i.i
  %i.qd = icmp eq i64 %i.qb, 0
  br i1 %i.qd, label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %._crit_edge.i.i
  %.pre54.i.i = load i64, ptr %i.nt, align 8, !alias.scope !5671, !noalias !5674
  %.pre56.i.i = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5671, !noalias !5674
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i, %.lr.ph50.i.i
  %i.qe = phi i64 [ %.pre56.i.i, %.lr.ph50.i.i ], [ %i.ql, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 2 uses
  %i.qf = phi i64 [ %.pre54.i.i, %.lr.ph50.i.i ], [ %i.qo, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 3 uses
  %.sroa.016.048.i.i = phi ptr [ %i.pz, %.lr.ph50.i.i ], [ %i.qg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.016.048.i.i, i64 24 ; 2 uses
  %i.qh = load ptr, ptr %.sroa.016.048.i.i, align 8, !noalias !5668, !nonnull !13, !noundef !13
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.016.048.i.i, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !noalias !5668, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !5676)
  %i.qk = icmp eq i64 %i.qf, %i.qe
  br i1 %i.qk, label %bb.bi, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5674
  %.pre55.i.i = load i64, ptr %i.nr, align 8, !range !14, !alias.scope !5671, !noalias !5674
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i: ; preds = %bb.bi, %bb.bh
  %i.ql = phi i64 [ %i.qe, %bb.bh ], [ %.pre55.i.i, %bb.bi ]
  %i.qm = load ptr, ptr %i.oc, align 8, !alias.scope !5671, !noalias !5674, !nonnull !13, !noundef !13
  %i.qn = getelementptr inbounds nuw [32 x i8], ptr %i.qm, i64 %i.qf ; 4 uses
  store i32 1, ptr %i.qn, align 8, !noalias !5677
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr %i.qh, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !5677
  %.sroa.545.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store i64 %i.qj, ptr %.sroa.545.0..sroa_idx.i.i, align 8, !noalias !5677
  %.sroa.646.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.646.0..sroa_idx.i.i, align 8, !noalias !5677
  %i.qo = add i64 %i.qf, 1                        ; 2 uses
  store i64 %i.qo, ptr %i.nt, align 8, !alias.scope !5671, !noalias !5674
  %i.qp = icmp eq ptr %i.qg, %i.qc
  br i1 %i.qp, label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, label %bb.bh

_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i, %._crit_edge.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i
  %i.qq = icmp eq ptr %i.od, %i.oa
  br i1 %i.qq, label %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, label %bb.av

_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit: ; preds = %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i.thread, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i
  %i.qr = phi ptr [ %i.na, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i.thread ], [ %i.nt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i ], [ %i.nt, %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i ]
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qt = load ptr, ptr %i.qs, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.qu = load i64, ptr %i.qr, align 8, !noundef !13 ; 2 uses
  %.idx260 = shl nuw nsw i64 %i.qu, 5
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.idx260 ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.not257 = icmp eq i64 %i.qu, 0
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.not257, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %.lr.ph258

bb.bj:                                            ; preds = %.lr.ph258
  %.not.not.not.not.i.not.not.not.i.not.i.not = icmp eq ptr %i.qx, %i.qv
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.not, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %.lr.ph258

.lr.ph258:                                        ; preds = %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, %bb.bj
  %i.qw = phi ptr [ %i.qx, %bb.bj ], [ %i.qt, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit ] ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 32 ; 7 uses
  %.val.i.i.i.i.i134 = load i32, ptr %i.qw, align 8, !range !1176, !noalias !5678, !noundef !13
  %i.qy = icmp eq i32 %.val.i.i.i.i.i134, 2
  br i1 %i.qy, label %bb.bk, label %bb.bj

bb.bk:                                            ; preds = %.lr.ph258
  %i.qz = getelementptr i8, ptr %i.qw, i64 8
  %.val6.i.i.i.i.i = load i64, ptr %i.qz, align 8, !noalias !5678 ; 3 uses
  %i.ra = icmp eq ptr %i.qx, %i.qv
  br i1 %i.ra, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rb = ptrtoint ptr %i.qv to i64
  %i.rc = ptrtoint ptr %i.qx to i64
  %i.rd = sub nuw i64 %i.rb, %i.rc                ; 3 uses
  %i.re = lshr exact i64 %i.rd, 5                 ; 2 uses
  %i.rf = icmp eq i64 %i.rd, 32
  br i1 %i.rf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bl
  %unroll_iter = and i64 %i.re, 576460752303423486
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.rn, %bb.bm ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %.val6.i.i.i.i.i, %.new ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %bb.bm ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.bm ]
  %i.rg = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.rg, align 8, !range !1176, !noundef !13
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  %.val11.i.i.i.i = load i64, ptr %i.rh, align 8
  %i.ri = icmp eq i32 %.val.i.i.i.i, 2
  %..i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i, i64 %.sroa.02.0.i.i.i.i)
  %.sroa.0.0.i.i.i.i.i.i135 = select i1 %i.ri, i64 %..i.i.i.i.i.i.i.i, i64 %.sroa.02.0.i.i.i.i ; 2 uses
  %i.rj = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  %.val.i.i.i.i.1 = load i32, ptr %i.rk, align 8, !range !1176, !noundef !13
  %i.rl = getelementptr i8, ptr %i.rj, i64 40
  %.val11.i.i.i.i.1 = load i64, ptr %i.rl, align 8
  %i.rm = icmp eq i32 %.val.i.i.i.i.1, 2
  %..i.i.i.i.i.i.i.i.1 = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i135)
  %.sroa.0.0.i.i.i.i.i.i135.1 = select i1 %i.rm, i64 %..i.i.i.i.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i135 ; 3 uses
  %i.rn = add nuw i64 %.sroa.04.0.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, label %bb.bm

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa: ; preds = %bb.bm
  %i.ro = and i64 %i.rd, 32
  %lcmp.mod.not = icmp eq i64 %i.ro, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, %bb.bl
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.bl ], [ %i.rn, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ %.val6.i.i.i.i.i, %bb.bl ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod269 = trunc i64 %i.re to i1
  call void @llvm.assume(i1 %lcmp.mod269)
  %i.rp = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i.epil.init ; 2 uses
  %.val.i.i.i.i.epil = load i32, ptr %i.rp, align 8, !range !1176, !noundef !13
  %i.rq = getelementptr i8, ptr %i.rp, i64 8
  %.val11.i.i.i.i.epil = load i64, ptr %i.rq, align 8
  %i.rr = icmp eq i32 %.val.i.i.i.i.epil, 2
  %..i.i.i.i.i.i.i.i.epil = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init)
  %.sroa.0.0.i.i.i.i.i.i135.epil = select i1 %i.rr, i64 %..i.i.i.i.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit: ; preds = %bb.bj, %.epil.preheader, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, %bb.bk
  %.sroa.016.0 = phi i64 [ 0, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit ], [ %.val6.i.i.i.i.i, %bb.bk ], [ %.sroa.0.0.i.i.i.i.i.i135.epil, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ], [ 0, %bb.bj ]
  %i.rs = load i32, ptr %i.u, align 4, !noundef !13 ; 4 uses
  %i.rt = and i32 %i.rs, 32
  %.not116 = icmp ne i32 %i.rt, 0
  %i.ru = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.rv = and i32 %i.ru, 32
  %i.rw = icmp ne i32 %i.rv, 0
  %.sroa.019.0 = select i1 %.not116, i1 true, i1 %i.rw
  %i.rx = and i32 %i.rs, 2
  %.not117 = icmp ne i32 %i.rx, 0
  %i.ry = and i32 %i.ru, 2
  %i.rz = icmp ne i32 %i.ry, 0
  %.sroa.020.0 = select i1 %.not117, i1 true, i1 %i.rz
  %i.sa = and i32 %i.rs, 4
  %.not118 = icmp ne i32 %i.sa, 0
  %i.sb = and i32 %i.ru, 4
  %i.sc = icmp ne i32 %i.sb, 0
  %.sroa.021.0 = select i1 %.not118, i1 true, i1 %i.sc
  %i.sd = load ptr, ptr %i.mu, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.se = load i64, ptr %i.mw, align 8, !noundef !13 ; 2 uses
  %.idx176 = mul nuw nsw i64 %i.se, 600
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx176
  %i.sg = icmp eq i64 %i.se, 0
  br i1 %i.sg, label %._crit_edge173, label %.lr.ph172

bb.bn:                                            ; preds = %.lr.ph, %bb.cl
  %.sroa.011.0164 = phi ptr [ %i.nk, %.lr.ph ], [ %i.sh, %bb.cl ] ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.011.0164, i64 16 ; 2 uses
  %i.si = load ptr, ptr %i.nb, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.sj = load i64, ptr %i.nc, align 8, !noundef !13 ; 2 uses
  %.idx = mul nuw nsw i64 %i.sj, 96
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 %.idx
  %i.sl = icmp eq i64 %i.sj, 0
  %.pre189 = load ptr, ptr %.sroa.011.0164, align 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.011.0164, i64 8
  %.pre190 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %i.sl, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit144, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %bb.bn, %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i
  %i.sm = phi ptr [ %i.sn, %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i ], [ %i.si, %bb.bn ] ; 7 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 96 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 80
  %i.sp = load i64, ptr %i.so, align 8, !noalias !5687, !noundef !13
  %i.sq = icmp eq i64 %i.sp, %.pre190
  br i1 %i.sq, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i

_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i: ; preds = %.lr.ph.i136
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 72
  %i.ss = load ptr, ptr %i.sr, align 8, !noalias !5687, !nonnull !13, !noundef !13
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ss, ptr nonnull %.pre189, i64 %.pre190), !noalias !5687
  %i.st = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.st, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs3_NtBX_7commandNtB2L_7Command11__build_self0EBZ_.exit, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i

_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i: ; preds = %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i, %.lr.ph.i136
  %i.su = icmp eq ptr %i.sn, %i.sk
  br i1 %i.su, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit144, label %.lr.ph.i136

._crit_edge:                                      ; preds = %bb.cl, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !5691)
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 596 ; 3 uses
  %i.sw = load i8, ptr %i.sv, align 4, !range !5391, !alias.scope !5691, !noundef !13 ; 2 uses
  %.not.i138 = icmp eq i8 %i.sw, -1
  br i1 %.not.i138, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %._crit_edge
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 16
  %i.sy = load i64, ptr %i.sx, align 8, !range !142, !alias.scope !5691, !noundef !13
  %i.sz = trunc nuw i64 %i.sy to i1               ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 24
  %i.tb = load i64, ptr %i.ta, align 8, !alias.scope !5691
  %i.tc = icmp eq i64 %i.tb, 0
  %or.cond.i142 = select i1 %i.sz, i1 %i.tc, i1 false
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 32
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !5691 ; 2 uses
  %i.tf = icmp eq i64 %i.te, 0
  %or.cond8.i = select i1 %or.cond.i142, i1 %i.tf, i1 false
  br i1 %or.cond8.i, label %.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 552
  %i.th = load ptr, ptr %i.tg, align 8, !alias.scope !5691, !noundef !13
  %.not33.i = icmp eq ptr %i.th, null
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 584
  %i.tj = load i32, ptr %i.ti, align 8, !range !2440, !alias.scope !5691
  %.not34.i = icmp eq i32 %i.tj, -1
  %or.cond43.not89.not90.i = select i1 %.not33.i, i1 %.not34.i, i1 false
  %brmerge.not.i = and i1 %or.cond43.not89.not90.i, %i.sz
  %i.tk = icmp eq i64 %i.te, -1
  %narrow.i = select i1 %brmerge.not.i, i1 %i.tk, i1 false
  %.sroa.0.0.i143 = zext i1 %narrow.i to i8       ; 2 uses
  store i8 %.sroa.0.0.i143, ptr %i.sv, align 4, !alias.scope !5691
  br label %bb.bq

.thread.i:                                        ; preds = %bb.bo
  store i8 2, ptr %i.sv, align 4, !alias.scope !5691
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %._crit_edge
  %i.tl = phi i8 [ %i.sw, %._crit_edge ], [ %.sroa.0.0.i143, %bb.bp ] ; 10 uses
  switch i8 %i.tl, label %default.unreachable [
    i8 0, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 1, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 2, label %bb.bt
    i8 3, label %bb.br
    i8 4, label %bb.bs
    i8 5, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 6, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 7, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 8, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  ]

bb.br:                                            ; preds = %bb.bq
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  br label %bb.bt

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit54.i, %bb.by, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 80 ; 3 uses
  %i.tn = load i64, ptr %i.tm, align 8, !range !547, !alias.scope !5691, !noundef !13
  %.not38.i = icmp eq i64 %i.tn, -1
  br i1 %.not38.i, label %bb.cd, label %bb.cc

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %.thread.i
  %i.to = phi i8 [ %i.tl, %bb.bs ], [ %i.tl, %bb.br ], [ 2, %.thread.i ], [ %i.tl, %bb.bq ] ; 2 uses
  %.sroa.10.0.i.ph.i = phi i64 [ 1, %bb.bs ], [ 4, %bb.br ], [ 5, %.thread.i ], [ 5, %bb.bq ]
  %.sroa.0.0.i.ph.i = phi ptr [ @57, %bb.bs ], [ @48, %bb.br ], [ @55, %.thread.i ], [ @55, %bb.bq ]
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 384 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !5691, !noundef !13 ; 2 uses
  %i.tr = icmp ult i64 %i.tq, 576460752303423488
  call void @llvm.assume(i1 %i.tr)
  %i.ts = icmp eq i64 %i.tq, 0
  br i1 %i.ts, label %bb.bu, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 368 ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5691, !inline_history !5694
  %i.tu = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !5691, !inline_history !5694 ; 4 uses
  %i.tv = icmp eq ptr %i.tu, null
  br i1 %i.tv, label %bb.bv, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i, !prof !1217

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46, !noalias !5691, !inline_history !5694
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.bu
  store ptr %.sroa.0.0.i.ph.i, ptr %i.tu, align 8, !noalias !5691
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store i64 %.sroa.10.0.i.ph.i, ptr %i.tw, align 8, !noalias !5691
  call void @llvm.experimental.noalias.scope.decl(metadata !5695)
  %.val.i.i = load i64, ptr %i.tt, align 8, !range !14, !alias.scope !5698, !noundef !13 ; 2 uses
  %i.tx = icmp eq i64 %.val.i.i, 0
  br i1 %i.tx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 376
  %.val1.i.i = load ptr, ptr %i.ty, align 8, !alias.scope !5698, !nonnull !13, !noundef !13
  %i.tz = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.tz, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5698, !inline_history !5694
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i: ; preds = %bb.bw, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  store i64 1, ptr %i.tt, align 8, !alias.scope !5691
  %.sroa.4.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 376
  store ptr %i.tu, ptr %.sroa.4.0..sroa_idx.i141, align 8, !alias.scope !5691
  store i64 1, ptr %i.tp, align 8, !alias.scope !5691
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i, %bb.bt, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq
  %i.ua = phi i8 [ %i.to, %bb.bt ], [ %i.to, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ], [ %i.tl, %bb.bq ] ; 3 uses
  switch i8 %i.ua, label %default.unreachable [
    i8 0, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 1, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 2, label %bb.by
    i8 3, label %bb.bx
    i8 4, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 5, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 6, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 7, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 8, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
  ]

bb.bx:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  %.sroa.10.0.i48.ph.i = phi i64 [ 5, %bb.bx ], [ 4, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i ]
  %.sroa.0.0.i49.ph.i = phi ptr [ @55, %bb.bx ], [ @48, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i ]
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 432 ; 2 uses
end_hunk_0
