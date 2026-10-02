Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN10prometheus4desc4Desc3new17h68d8a25c90311c8fE:bb.a
  %i.ny = add i64 %.sroa.011.014.i.i247, -8       ; 2 uses
  %.sroa.012.0.i.i248.7 = load ptr, ptr %i.nx, align 8, !noalias !840, !nonnull !6, !noundef !6 ; 2 uses
  %i.nz = icmp eq i64 %i.ny, 0
  br i1 %i.nz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220", label %.lr.ph.i.i245

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220": ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245, %bb.af, %bb.ae
  %.sroa.37.0.copyload.i.i221 = phi i64 [ %.sroa.14445.0677, %bb.ae ], [ 0, %bb.af ], [ 0, %.lr.ph.i.i245 ], [ 0, %.lr.ph.i.i245.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i222 = phi i64 [ %.sroa.9444.0675, %bb.ae ], [ 0, %bb.af ], [ 0, %.lr.ph.i.i245 ], [ 0, %.lr.ph.i.i245.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i223 = phi ptr [ %.sroa.5443.0678, %bb.ae ], [ %i.nl, %bb.af ], [ %.sroa.012.0.i.i248.lcssa.unr, %.lr.ph.i.i245.prol.loopexit ], [ %.sroa.012.0.i.i248.7, %.lr.ph.i.i245 ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i223, i64 274
  %i.ob = load i16, ptr %i.oa, align 2, !noalias !841, !noundef !6
  %i.oc = zext i16 %i.ob to i64
  %i.od = icmp ult i64 %.sroa.37.0.copyload.i.i221, %i.oc
  br i1 %i.od, label %bb.ah, label %.lr.ph.i.i.i.i226

.lr.ph.i.i.i.i226:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220", %bb.ag
  %.sroa.0.038.i.i.i.i227 = phi ptr [ %i.oe, %bb.ag ], [ %.sroa.05.0.copyload.i.i223, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220" ] ; 2 uses
  %.sroa.5.037.i.i.i.i228 = phi i64 [ %i.og, %bb.ag ], [ %.sroa.26.0.copyload.i.i222, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220" ]
  %i.oe = load ptr, ptr %.sroa.0.038.i.i.i.i227, align 8, !noalias !842, !noundef !6 ; 4 uses
  %.not.i.i.i.i.i229 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i.i.i229, label %bb.aj, label %bb.ag

._crit_edge.loopexit.i.i.i.i230:                  ; preds = %bb.ag
  %i.of = zext i16 %i.oi to i64
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i226
  %i.og = add i64 %.sroa.5.037.i.i.i.i228, 1      ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i227, i64 272
  %i.oi = load i16, ptr %i.oh, align 8, !noalias !842 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 274
  %i.ok = load i16, ptr %i.oj, align 2, !noalias !841, !noundef !6
  %i.ol = icmp ult i16 %i.oi, %i.ok
  br i1 %i.ol, label %._crit_edge.loopexit.i.i.i.i230, label %.lr.ph.i.i.i.i226

bb.ah:                                            ; preds = %._crit_edge.loopexit.i.i.i.i230, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220"
  %.sroa.6.sroa.4.0.ph.i.i.i231 = phi i64 [ %.sroa.37.0.copyload.i.i221, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220" ], [ %i.of, %._crit_edge.loopexit.i.i.i.i230 ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i232 = phi i64 [ %.sroa.26.0.copyload.i.i222, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220" ], [ %i.og, %._crit_edge.loopexit.i.i.i.i230 ] ; 5 uses
  %.sroa.0.0.ph.i.i.i233 = phi ptr [ %.sroa.05.0.copyload.i.i223, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb6d87134f7d4c41bE.exit.i220" ], [ %i.oe, %._crit_edge.loopexit.i.i.i.i230 ] ; 3 uses
  %i.om = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i232, 0
  %i.on = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i231, 1 ; 2 uses
  br i1 %i.om, label %.loopexit614, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i233, i64 280
  %i.op = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i231, 11
  call void @llvm.assume(i1 %i.op)
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.on ; 2 uses
  %xtraiter961 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i232, 7 ; 2 uses
  %lcmp.mod962.not = icmp eq i64 %xtraiter961, 0
  br i1 %lcmp.mod962.not, label %.prol.loopexit959, label %.prol.preheader958

.prol.preheader958:                               ; preds = %bb.ai, %.prol.preheader958
  %.pn30.in.i.i.i.i234.prol = phi ptr [ %i.or, %.prol.preheader958 ], [ %i.oq, %bb.ai ]
  %.pn28.in.i.i.i.i235.prol = phi i64 [ %.pn28.i.i.i.i236.prol, %.prol.preheader958 ], [ %.sroa.6.sroa.0.0.ph.i.i.i232, %bb.ai ]
  %prol.iter963 = phi i64 [ %prol.iter963.next, %.prol.preheader958 ], [ 0, %bb.ai ]
  %.pn28.i.i.i.i236.prol = add i64 %.pn28.in.i.i.i.i235.prol, -1 ; 2 uses
  %.pn30.i.i.i.i237.prol = load ptr, ptr %.pn30.in.i.i.i.i234.prol, align 8, !noalias !843, !nonnull !6, !noundef !6 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237.prol, i64 280 ; 2 uses
  %prol.iter963.next = add i64 %prol.iter963, 1   ; 2 uses
  %prol.iter963.cmp.not = icmp eq i64 %prol.iter963.next, %xtraiter961
  br i1 %prol.iter963.cmp.not, label %.prol.loopexit959, label %.prol.preheader958, !llvm.loop !681

.prol.loopexit959:                                ; preds = %.prol.preheader958, %bb.ai
  %.pn30.i.i.i.i237.lcssa.unr = phi ptr [ poison, %bb.ai ], [ %.pn30.i.i.i.i237.prol, %.prol.preheader958 ]
  %.pn30.in.i.i.i.i234.unr = phi ptr [ %i.oq, %bb.ai ], [ %i.or, %.prol.preheader958 ]
  %.pn28.in.i.i.i.i235.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i232, %bb.ai ], [ %.pn28.i.i.i.i236.prol, %.prol.preheader958 ]
  %i.os = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i232, 8
  br i1 %i.os, label %.loopexit614, label %.new960

.new960:                                          ; preds = %.prol.loopexit959, %.new960
  %.pn30.in.i.i.i.i234 = phi ptr [ %i.pb, %.new960 ], [ %.pn30.in.i.i.i.i234.unr, %.prol.loopexit959 ]
  %.pn28.in.i.i.i.i235 = phi i64 [ %.pn28.i.i.i.i236.7, %.new960 ], [ %.pn28.in.i.i.i.i235.unr, %.prol.loopexit959 ]
  %.pn30.i.i.i.i237 = load ptr, ptr %.pn30.in.i.i.i.i234, align 8, !noalias !843, !nonnull !6, !noundef !6
  %i.ot = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237, i64 280
  %.pn30.i.i.i.i237.1 = load ptr, ptr %i.ot, align 8, !noalias !843, !nonnull !6, !noundef !6
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237.1, i64 280
  %.pn30.i.i.i.i237.2 = load ptr, ptr %i.ou, align 8, !noalias !843, !nonnull !6, !noundef !6
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237.2, i64 280
  %.pn30.i.i.i.i237.3 = load ptr, ptr %i.ov, align 8, !noalias !843, !nonnull !6, !noundef !6
  %i.ow = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237.3, i64 280
  %.pn30.i.i.i.i237.4 = load ptr, ptr %i.ow, align 8, !noalias !843, !nonnull !6, !noundef !6
  %i.ox = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237.4, i64 280
  %.pn30.i.i.i.i237.5 = load ptr, ptr %i.ox, align 8, !noalias !843, !nonnull !6, !noundef !6
  %i.oy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237.5, i64 280
  %.pn30.i.i.i.i237.6 = load ptr, ptr %i.oy, align 8, !noalias !843, !nonnull !6, !noundef !6
  %i.oz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237.6, i64 280
  %.pn28.i.i.i.i236.7 = add i64 %.pn28.in.i.i.i.i235, -8 ; 2 uses
  %.pn30.i.i.i.i237.7 = load ptr, ptr %i.oz, align 8, !noalias !843, !nonnull !6, !noundef !6 ; 2 uses
  %i.pa = icmp eq i64 %.pn28.i.i.i.i236.7, 0
  %i.pb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i237.7, i64 280
  br i1 %i.pa, label %.loopexit614, label %.new960

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i226
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #45
          to label %.noexc.i.i243 unwind label %bb.ak, !noalias !844

.noexc.i.i243:                                    ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit614:                                     ; preds = %.prol.loopexit959, %.new960, %bb.ah
  %.sroa.7.0.i.i.i239 = phi i64 [ %i.on, %bb.ah ], [ 0, %.new960 ], [ 0, %.prol.loopexit959 ]
  %.sroa.07.0.i.i.i240 = phi ptr [ %.sroa.0.0.ph.i.i.i233, %bb.ah ], [ %.pn30.i.i.i.i237.lcssa.unr, %.prol.loopexit959 ], [ %.pn30.i.i.i.i237.7, %.new960 ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i233, i64 8
  %i.pe = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i231, 11
  call void @llvm.assume(i1 %i.pe)
  %i.pf = getelementptr inbounds nuw [24 x i8], ptr %i.pd, i64 %.sroa.6.sroa.4.0.ph.i.i.i231 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !noundef !6 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pj
  %i.pl = icmp samesign eq i64 %i.pj, 0
  br i1 %i.pl, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit257", label %.lr.ph.i253.preheader

.lr.ph.i253.preheader:                            ; preds = %.loopexit614
  %xtraiter964 = and i64 %i.pj, 7                 ; 2 uses
  %lcmp.mod965.not = icmp eq i64 %xtraiter964, 0
  br i1 %lcmp.mod965.not, label %.lr.ph.i253.prol.loopexit, label %.lr.ph.i253.prol

.lr.ph.i253.prol:                                 ; preds = %.lr.ph.i253.preheader, %.lr.ph.i253.prol
  %.sroa.0.06.i254.prol = phi i64 [ %i.pq, %.lr.ph.i253.prol ], [ %.sroa.0437.0680, %.lr.ph.i253.preheader ]
  %.sroa.04.05.i255.prol = phi ptr [ %i.pm, %.lr.ph.i253.prol ], [ %i.ph, %.lr.ph.i253.preheader ] ; 2 uses
  %prol.iter966 = phi i64 [ %prol.iter966.next, %.lr.ph.i253.prol ], [ 0, %.lr.ph.i253.preheader ]
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255.prol, i64 1 ; 2 uses
  %i.pn = load i8, ptr %.sroa.04.05.i255.prol, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.po = zext i8 %i.pn to i64
  %i.pp = xor i64 %.sroa.0.06.i254.prol, %i.po
  %i.pq = mul i64 %i.pp, 1099511628211            ; 3 uses
  %prol.iter966.next = add i64 %prol.iter966, 1   ; 2 uses
  %prol.iter966.cmp.not = icmp eq i64 %prol.iter966.next, %xtraiter964
  br i1 %prol.iter966.cmp.not, label %.lr.ph.i253.prol.loopexit, label %.lr.ph.i253.prol, !llvm.loop !685

.lr.ph.i253.prol.loopexit:                        ; preds = %.lr.ph.i253.prol, %.lr.ph.i253.preheader
  %.lcssa926.unr = phi i64 [ poison, %.lr.ph.i253.preheader ], [ %i.pq, %.lr.ph.i253.prol ]
  %.sroa.0.06.i254.unr = phi i64 [ %.sroa.0437.0680, %.lr.ph.i253.preheader ], [ %i.pq, %.lr.ph.i253.prol ]
  %.sroa.04.05.i255.unr = phi ptr [ %i.ph, %.lr.ph.i253.preheader ], [ %i.pm, %.lr.ph.i253.prol ]
  %i.pr = icmp ult i64 %i.pj, 8
  br i1 %i.pr, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit257", label %.lr.ph.i253

.lr.ph.i253:                                      ; preds = %.lr.ph.i253.prol.loopexit, %.lr.ph.i253
  %.sroa.0.06.i254 = phi i64 [ %i.rf, %.lr.ph.i253 ], [ %.sroa.0.06.i254.unr, %.lr.ph.i253.prol.loopexit ]
  %.sroa.04.05.i255 = phi ptr [ %i.rb, %.lr.ph.i253 ], [ %.sroa.04.05.i255.unr, %.lr.ph.i253.prol.loopexit ] ; 9 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255, i64 1
  %i.pt = load i8, ptr %.sroa.04.05.i255, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.pu = zext i8 %i.pt to i64
  %i.pv = xor i64 %.sroa.0.06.i254, %i.pu
  %i.pw = mul i64 %i.pv, 1099511628211
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255, i64 2
  %i.py = load i8, ptr %i.ps, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.pz = zext i8 %i.py to i64
  %i.qa = xor i64 %i.pw, %i.pz
  %i.qb = mul i64 %i.qa, 1099511628211
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255, i64 3
  %i.qd = load i8, ptr %i.px, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.qe = zext i8 %i.qd to i64
  %i.qf = xor i64 %i.qb, %i.qe
  %i.qg = mul i64 %i.qf, 1099511628211
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255, i64 4
  %i.qi = load i8, ptr %i.qc, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.qj = zext i8 %i.qi to i64
  %i.qk = xor i64 %i.qg, %i.qj
  %i.ql = mul i64 %i.qk, 1099511628211
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255, i64 5
  %i.qn = load i8, ptr %i.qh, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.qo = zext i8 %i.qn to i64
  %i.qp = xor i64 %i.ql, %i.qo
  %i.qq = mul i64 %i.qp, 1099511628211
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255, i64 6
  %i.qs = load i8, ptr %i.qm, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.qt = zext i8 %i.qs to i64
  %i.qu = xor i64 %i.qq, %i.qt
  %i.qv = mul i64 %i.qu, 1099511628211
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255, i64 7
  %i.qx = load i8, ptr %i.qr, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.qy = zext i8 %i.qx to i64
  %i.qz = xor i64 %i.qv, %i.qy
  %i.ra = mul i64 %i.qz, 1099511628211
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i255, i64 8 ; 2 uses
  %i.rc = load i8, ptr %i.qw, align 1, !alias.scope !845, !noalias !846, !noundef !6
  %i.rd = zext i8 %i.rc to i64
  %i.re = xor i64 %i.ra, %i.rd
  %i.rf = mul i64 %i.re, 1099511628211            ; 2 uses
  %i.rg = icmp eq ptr %i.rb, %i.pk
  br i1 %i.rg, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit257", label %.lr.ph.i253

._crit_edge682:                                   ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit257", %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit208"
  %.sroa.0437.0.lcssa = phi i64 [ %i.ne, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit208" ], [ %i.uf, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit257" ]
  store i64 %.sroa.0437.0.lcssa, ptr %i.aw, align 8
  %.val3.i.i.i258 = load <16 x i8>, ptr %i.et, align 16, !noalias !847
  %i.rh = icmp eq i64 %i.ev, 0                    ; 2 uses
  br i1 %i.rh, label %bb.al, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge682
  %i.ri = mul i64 %i.ev, 48                       ; 2 uses
  %5 = add i64 %i.ri, 48                          ; 2 uses
  %6 = add i64 %i.ev, 17
  %i.rj = add i64 %6, %5                          ; 3 uses
  %7 = icmp uge i64 %i.rj, %5
  call void @llvm.assume(i1 %7)
  %8 = icmp ult i64 %i.rj, 9223372036854775793
  call void @llvm.assume(i1 %8)
  %9 = sub i64 -48, %i.ri
  %i.rk = getelementptr inbounds i8, ptr %i.et, i64 %9
  br label %bb.al

bb.al:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge682
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.rj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge682 ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.rk, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge682 ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge682 ] ; 2 uses
  %i.rl = icmp sgt <16 x i8> %.val3.i.i.i258, splat (i8 -1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.n, align 8
  %.sroa.4498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.4498.0..sroa_idx, align 8
  %.sroa.5499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.5499.0..sroa_idx, align 8
  %.sroa.6500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  store ptr %i.et, ptr %.sroa.6500.0..sroa_idx, align 8
  %.sroa.7501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  store ptr %i.ey, ptr %.sroa.7501.0..sroa_idx, align 8
  %.sroa.8502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.ex, ptr %.sroa.8502.0..sroa_idx, align 8
  %.sroa.9503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  store <16 x i1> %i.rl, ptr %.sroa.9503.0..sroa_idx, align 8
  %.sroa.11505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 3 uses
  store i64 %i.ak, ptr %.sroa.11505.0..sroa_idx, align 8
  br i1 %i.ez, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h944844e9c7056975E.exit.i.i.i.i", label %.lr.ph691

.lr.ph691:                                        ; preds = %bb.al
  %i.rm = bitcast <16 x i1> %i.rl to i16
  %.sroa.5.0..sroa_idx740 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.0..sroa_idx742 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph691, %bb.bb
  %i.rn = phi ptr [ %.sroa.10.0.i, %.lr.ph691 ], [ %i.tz, %bb.bb ]
  %i.ro = phi i64 [ 0, %.lr.ph691 ], [ %i.ub, %bb.bb ] ; 5 uses
  %i.rp = phi i64 [ %i.ak, %.lr.ph691 ], [ %i.sc, %bb.bb ]
  %i.rq = phi i16 [ %i.rm, %.lr.ph691 ], [ %i.rz, %bb.bb ] ; 2 uses
  %.pre.i.i263685689 = phi ptr [ %i.et, %.lr.ph691 ], [ %.pre.i.i263684, %bb.bb ] ; 2 uses
  %.promoted15.i.i268687688 = phi ptr [ %i.ey, %.lr.ph691 ], [ %.promoted15.i.i268686, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %.not13.i.i261 = icmp eq i16 %i.rq, 0
  br i1 %.not13.i.i261, label %.lr.ph.i.i266, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit"

._crit_edge.i.i272:                               ; preds = %.lr.ph.i.i266
  store ptr %i.rv, ptr %.sroa.7501.0..sroa_idx, align 8, !alias.scope !850, !noalias !851
  store ptr %i.ru, ptr %.sroa.6500.0..sroa_idx, align 8, !alias.scope !850, !noalias !851
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit"

.lr.ph.i.i266:                                    ; preds = %bb.am, %.lr.ph.i.i266
  %i.rr = phi ptr [ %i.rv, %.lr.ph.i.i266 ], [ %.promoted15.i.i268687688, %bb.am ] ; 2 uses
  %i.rs = phi ptr [ %i.ru, %.lr.ph.i.i266 ], [ %.pre.i.i263685689, %bb.am ]
  %.val11.i.i269 = load <16 x i8>, ptr %i.rr, align 16, !noalias !852
  %i.rt = icmp sgt <16 x i8> %.val11.i.i269, splat (i8 -1)
  %i.ru = getelementptr inbounds i8, ptr %i.rs, i64 -768 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 3 uses
  %.cast.i.i270 = bitcast <16 x i1> %i.rt to i16  ; 2 uses
  %.not.i.i271 = icmp eq i16 %.cast.i.i270, 0
  br i1 %.not.i.i271, label %.lr.ph.i.i266, label %._crit_edge.i.i272

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit": ; preds = %bb.am, %._crit_edge.i.i272
  %.promoted15.i.i268686 = phi ptr [ %i.rv, %._crit_edge.i.i272 ], [ %.promoted15.i.i268687688, %bb.am ]
  %.pre.i.i263684 = phi ptr [ %i.ru, %._crit_edge.i.i272 ], [ %.pre.i.i263685689, %bb.am ] ; 2 uses
  %.lcssa.i.i265 = phi i16 [ %.cast.i.i270, %._crit_edge.i.i272 ], [ %i.rq, %bb.am ] ; 3 uses
  %i.rw = add i16 %.lcssa.i.i265, -1
  %i.rx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i265, i1 true)
  %i.ry = zext nneg i16 %i.rx to i64
  %i.rz = and i16 %i.rw, %.lcssa.i.i265           ; 4 uses
  %i.sa = sub nsw i64 0, %i.ry
  %i.sb = getelementptr inbounds [48 x i8], ptr %.pre.i.i263684, i64 %i.sa ; 5 uses
  %i.sc = add nsw i64 %i.rp, -1                   ; 6 uses
  %i.sd = getelementptr inbounds i8, ptr %i.sb, i64 -48
  %.sroa.0453.0.copyload = load i64, ptr %i.sd, align 8, !noalias !848 ; 2 uses
  %.not164 = icmp eq i64 %.sroa.0453.0.copyload, -9223372036854775808
  br i1 %.not164, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit.thread", label %bb.az

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit.thread": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit"
  store i16 %i.rz, ptr %.sroa.9503.0..sroa_idx, align 8, !alias.scope !850, !noalias !851
  store i64 %i.sc, ptr %.sroa.11505.0..sroa_idx, align 8, !alias.scope !848, !noalias !851
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.se = icmp eq i64 %i.sc, 0
  br i1 %i.se, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h944844e9c7056975E.exit.i.i.i.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit.thread"
  %.promoted7.i.i.i.i.i = load ptr, ptr %.sroa.6500.0..sroa_idx, align 8, !alias.scope !858
  %.promoted11.i.i.i.i.i = load ptr, ptr %.sroa.7501.0..sroa_idx, align 8, !alias.scope !858
  br label %bb.an

bb.an:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.lcssa13.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i, %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i" ] ; 2 uses
  %i.sf = phi i64 [ %i.sc, %.preheader.i.i.i.i.i ], [ %i.ss, %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i, %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i" ] ; 2 uses
  %i.sg = phi i16 [ %i.rz, %.preheader.i.i.i.i.i ], [ %i.sp, %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.sg, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6b67711643c35728E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i
  %i.sh = phi ptr [ %i.sl, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i, %bb.an ] ; 2 uses
  %i.si = phi ptr [ %i.sk, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i, %bb.an ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.sh, align 16, !noalias !859
  %i.sj = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.sk = getelementptr inbounds i8, ptr %i.si, i64 -768 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.sj to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6b67711643c35728E.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6b67711643c35728E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.an
  %.lcssa12.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i, %bb.an ], [ %i.sl, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i, %bb.an ], [ %i.sk, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.sg, %bb.an ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.sm = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.sn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.so = zext nneg i16 %i.sn to i64
  %i.sp = and i16 %i.sm, %.lcssa.i.i.i.i.i.i
  %i.sq = sub nsw i64 0, %i.so
  %i.sr = getelementptr inbounds [48 x i8], ptr %.lcssa68.i.i.i.i.i, i64 %i.sq ; 4 uses
  %i.ss = add nsw i64 %i.sf, -1                   ; 2 uses
  %i.st = getelementptr inbounds i8, ptr %i.sr, i64 -48
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.st, align 8, !alias.scope !862, !noalias !858 ; 2 uses
  %i.su = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.su, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i", label %bb.ao

bb.ao:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6b67711643c35728E.exit.i.i.i.i.i"
  %i.sv = getelementptr inbounds i8, ptr %i.sr, i64 -40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.sv, align 8, !alias.scope !862, !noalias !858, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !863
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i": ; preds = %bb.ao, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6b67711643c35728E.exit.i.i.i.i.i"
  %i.sw = getelementptr inbounds i8, ptr %i.sr, i64 -24
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %.val.i4.i.i.i.i.i.i = load i64, ptr %i.sw, align 8, !alias.scope !865, !noalias !858 ; 2 uses
  %i.sx = icmp eq i64 %.val.i4.i.i.i.i.i.i, 0
  br i1 %i.sx, label %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i"
  %i.sy = getelementptr inbounds i8, ptr %i.sr, i64 -16
  %.val1.i5.i.i.i.i.i.i = load ptr, ptr %i.sy, align 8, !alias.scope !865, !noalias !858, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i, i64 noundef %.val.i4.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !866
  br label %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i": ; preds = %bb.ap, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i"
  %.old5.i.i.i.i.i = icmp eq i64 %i.ss, 0
  br i1 %.old5.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h944844e9c7056975E.exit.i.i.i.i", label %bb.an

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h944844e9c7056975E.exit.i.i.i.i": ; preds = %bb.bb, %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i", %bb.al, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit.thread"
  %i.sz = phi i64 [ %i.ro, %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i.i.i.i" ], [ %i.ro, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d0950a3dcd962b3E.exit.thread" ], [ 0, %bb.al ], [ %i.ub, %bb.bb ] ; 4 uses
  %i.ta = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond = or i1 %i.rh, %i.ta
  br i1 %or.cond, label %"_ZN4core3ptr111drop_in_place$LT$std..collections..hash..map..IntoIter$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h5329040a08aacd4dE.exit", label %bb.aq

bb.aq:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h944844e9c7056975E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #42, !noalias !867
  br label %"_ZN4core3ptr111drop_in_place$LT$std..collections..hash..map..IntoIter$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h5329040a08aacd4dE.exit"

"_ZN4core3ptr111drop_in_place$LT$std..collections..hash..map..IntoIter$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h5329040a08aacd4dE.exit": ; preds = %bb.aq, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h944844e9c7056975E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.tb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.tc = icmp ult i64 %i.sz, 2
  br i1 %i.tc, label %_ZN5alloc5slice11stable_sort17h7fe4bad80e38b454E.exit, label %bb.ar, !prof !14

bb.ar:                                            ; preds = %"_ZN4core3ptr111drop_in_place$LT$std..collections..hash..map..IntoIter$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h5329040a08aacd4dE.exit"
  %i.td = icmp ult i64 %i.sz, 21
  br i1 %i.td, label %bb.at, label %bb.as, !prof !14

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h07e0986310cd1bacE(ptr noalias noundef nonnull align 8 %i.tb, i64 noundef %i.sz, ptr noalias noundef nonnull align 1 %i.a)
          to label %_ZN5alloc5slice11stable_sort17h7fe4bad80e38b454E.exit unwind label %.loopexit.split-lp620.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.ar
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h232ca4705130e78fE(ptr noalias noundef nonnull align 8 %i.tb, i64 noundef %i.sz)
  br label %_ZN5alloc5slice11stable_sort17h7fe4bad80e38b454E.exit

_ZN5alloc5slice11stable_sort17h7fe4bad80e38b454E.exit: ; preds = %bb.at, %"_ZN4core3ptr111drop_in_place$LT$std..collections..hash..map..IntoIter$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h5329040a08aacd4dE.exit", %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ai, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !868
  br i1 %.not161, label %bb.au, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h840f4175ffd40531E.exit.i.i.i"

bb.au:                                            ; preds = %_ZN5alloc5slice11stable_sort17h7fe4bad80e38b454E.exit
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !869, !noalias !870
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.nf, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !869, !noalias !870
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.ng, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !869, !noalias !870
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !869, !noalias !870
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.nf, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !869, !noalias !870
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.ng, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !869, !noalias !870
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h840f4175ffd40531E.exit.i.i.i"
end_hunk_0
begin_hunk_1_@_ZN10prometheus8registry8Registry8register17h1f532ff5185040d5E:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.h

.loopexit.i:                                      ; preds = %bb.aw, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.thread.i"
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body109.i

.loopexit.split-lp.i:                             ; preds = %bb.ay, %bb.aj
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body109.i

.body109.i:                                       ; preds = %bb.av, %bb.au, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body110.i = phi { ptr, i32 } [ %i.kw, %bb.au ], [ %i.kw, %bb.av ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.au = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.au, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.body109.i
  %i.av = shl nuw i64 %.sroa.0.0.copyload.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !2412
  br label %.thread.i

bb.h:                                             ; preds = %bb.az, %.lr.ph.i
  %.sroa.0.0194.i = phi i64 [ 0, %.lr.ph.i ], [ %i.lc, %bb.az ]
  %.sroa.7125.0193.i = phi ptr [ %.sroa.4.0.copyload.i.i, %.lr.ph.i ], [ %i.aw, %bb.az ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.7125.0193.i, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.7125.0193.i, align 8, !noalias !2413, !nonnull !6, !align !7, !noundef !6 ; 10 uses
  store ptr %i.ax, ptr %i.i, align 8, !noalias !2404
  call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  %i.ay = load i64, ptr %i.ah, align 8, !alias.scope !2416, !noalias !2417, !noundef !6
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %select.unfold.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %.val.i.i = load i64, ptr %i.aj, align 8, !alias.scope !2416, !noalias !2417, !noundef !6
  %.val5.i.i = load i64, ptr %i.ak, align 8, !alias.scope !2416, !noalias !2417, !noundef !6
  %i.bb = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hccfa02af68edd295E(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba), !noalias !2418 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  %i.bc = lshr i64 %i.bb, 57
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  %i.be = load i64, ptr %i.al, align 8, !alias.scope !2422, !noalias !2423, !noundef !6 ; 2 uses
  %i.bf = load ptr, ptr %i.ai, align 8, !alias.scope !2422, !noalias !2423, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !2424, !noalias !2425
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bw, %bb.l ]
  %.pn.i.i.i = phi i64 [ %i.bb, %bb.i ], [ %i.bx, %bb.l ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.bg, align 1, !noalias !2426 ; 2 uses
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.bv, %bb.k ], [ %i.bi, %bb.j ] ; 3 uses
  %i.bj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.01.0.i.i.i.i, %i.bk
  %i.bm = and i64 %i.bl, %i.be
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %.val3.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !2427, !noundef !6
  %i.bq = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i
  br i1 %i.bq, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6a8e46e8bba39675E.exit.i", label %bb.k, !prof !14

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.j
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.bs = bitcast <16 x i1> %i.br to i16
  %i.bt = icmp eq i16 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %select.unfold.i, !prof !11

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.bv = and i16 %i.bu, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bx = add i64 %.sroa.01.0.i.i.i.i, %i.bw
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.az, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.lc, %bb.az ] ; 3 uses
  %i.by = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.by, label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit57.i", label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.bz = shl nuw i64 %.sroa.0.0.copyload.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !2428
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit57.i"

"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit57.i": ; preds = %bb.m, %._crit_edge.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2404
  store i64 %.sroa.0.0.lcssa.i, ptr %i.c, align 8, !noalias !2430
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %.val.i58.i = load i64, ptr %i.cb, align 8, !alias.scope !2431, !noalias !2432, !noundef !6
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.val5.i59.i = load i64, ptr %i.cc, align 8, !alias.scope !2431, !noalias !2432, !noundef !6
  %i.cd = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hccfa02af68edd295E(i64 %.val.i58.i, i64 %.val5.i59.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !2433 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  %i.ce = lshr i64 %i.cd, 57
  %i.cf = trunc nuw nsw i64 %i.ce to i8           ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !2436, !noalias !2437, !noundef !6 ; 2 uses
  %i.ci = load ptr, ptr %i.ca, align 8, !alias.scope !2436, !noalias !2437, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i60.i = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %.sroa.0.15.vec.insert.i.i.i61.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i60.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit57.i"
  %.sroa.9.0.i.i.i62.i = phi i64 [ 0, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit57.i" ], [ %i.cz, %bb.p ]
  %.pn.i.i63.i = phi i64 [ %i.cd, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$prometheus..desc..Desc$GT$$GT$17hd21217aea183b8d6E.exit57.i" ], [ %i.da, %bb.p ]
  %.sroa.01.0.i.i.i64.i = and i64 %.pn.i.i63.i, %i.ch ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.01.0.i.i.i64.i
  %.sroa.0.0.copyload.i26.i.i65.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !2438 ; 2 uses
  %i.ck = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i65.i, %.sroa.0.15.vec.insert.i.i.i61.i
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i.not32.i.i66.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i.not32.i.i66.i, label %._crit_edge.i.i71.i, label %.lr.ph.i.i67.i

.lr.ph.i.i67.i:                                   ; preds = %bb.n, %bb.o
  %.sroa.06.0.i33.i.i68.i = phi i16 [ %i.cy, %bb.o ], [ %i.cl, %bb.n ] ; 3 uses
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i68.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add i64 %.sroa.01.0.i.i.i64.i, %i.cn
  %i.cp = and i64 %i.co, %i.ch
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [24 x i8], ptr %i.ci, i64 %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -24
  %.val3.i.i.i69.i = load i64, ptr %i.cs, align 8, !noalias !2439, !noundef !6
  %i.ct = icmp eq i64 %.val3.i.i.i69.i, %.sroa.0.0.lcssa.i
  br i1 %i.ct, label %bb.y, label %bb.o, !prof !14

._crit_edge.i.i71.i:                              ; preds = %bb.o, %bb.n
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i65.i, splat (i8 -1)
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = icmp eq i16 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %bb.q, !prof !11

bb.o:                                             ; preds = %.lr.ph.i.i67.i
  %i.cx = add i16 %.sroa.06.0.i33.i.i68.i, -1
  %i.cy = and i16 %i.cx, %.sroa.06.0.i33.i.i68.i  ; 2 uses
  %.not.i.not.i.i70.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.not.i.i70.i, label %._crit_edge.i.i71.i, label %.lr.ph.i.i67.i

bb.p:                                             ; preds = %._crit_edge.i.i71.i
  %i.cz = add i64 %.sroa.9.0.i.i.i62.i, 16        ; 2 uses
  %i.da = add i64 %.sroa.01.0.i.i.i64.i, %i.cz
  br label %bb.n

bb.q:                                             ; preds = %._crit_edge.i.i71.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !2440, !noalias !2441, !noundef !6
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.r, label %.noexc74.i, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.de = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6ae93e4fea3d8162E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cb, i1 noundef zeroext true)
          to label %.noexc74.i unwind label %.thread157.i, !noalias !2407 ; 0 uses

.noexc74.i:                                       ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2404
  %.sroa.0138.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !2404, !nonnull !6, !noundef !6 ; 4 uses
  %.sroa.4139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4139.0.copyload.i = load i64, ptr %.sroa.4139.0..sroa_idx.i, align 8, !noalias !2404 ; 4 uses
  %.sroa.5141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.5141.0.copyload.i = load i64, ptr %.sroa.5141.0..sroa_idx.i, align 8, !noalias !2404 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0138.0.copyload.i, align 16, !noalias !2443
  %i.dg = icmp eq i64 %.sroa.4139.0.copyload.i, 0 ; 4 uses
  br i1 %i.dg, label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %.noexc74.i
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.sroa.4139.0.copyload.i, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.dh = shl i64 %.sroa.4139.0.copyload.i, 3
  %i.di = and i64 %i.dh, -16                      ; 2 uses
  %4 = add i64 %i.di, 16                          ; 2 uses
  %i.dj = add nsw i64 %.sroa.4139.0.copyload.i, 17
  %i.dk = add i64 %i.dj, %4                       ; 3 uses
  %5 = icmp uge i64 %i.dk, %4
  call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.dk, 9223372036854775793
  call void @llvm.assume(i1 %6)
  %i.dl = sub nuw nsw i64 -16, %i.di
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0138.0.copyload.i, i64 %i.dl
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %.noexc74.i
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.dk, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %.noexc74.i ] ; 5 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ %i.dm, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %.noexc74.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ 0, %.noexc74.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0138.0.copyload.i, i64 16
  %i.do = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.dp = bitcast <16 x i1> %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !2444, !noalias !2445, !noundef !6
  %i.ds = icmp eq i64 %i.dr, 0
  %i.dt = add i64 %.sroa.5141.0.copyload.i, 1
  %i.du = lshr i64 %i.dt, 1
  %.sroa.0.0.i.i.i = select i1 %i.ds, i64 %.sroa.5141.0.copyload.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !2446, !noalias !2447, !noundef !6
  %i.dx = icmp ugt i64 %.sroa.0.0.i.i.i, %i.dw
  br i1 %i.dx, label %bb.s, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i", !prof !11

bb.s:                                             ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i"
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.dz = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0f17c4ed12d1935bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dy, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" unwind label %bb.v, !noalias !2445 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i": ; preds = %bb.s, %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h982e532af11a093dE.exit.i.i"
  %i.ea = icmp eq i64 %.sroa.5141.0.copyload.i, 0
  br i1 %i.ea, label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge", label %.lr.ph

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.eb = add i64 %i.ef, -1                       ; 2 uses
  %i.ec = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ed = and i16 %i.ec, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i", %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i"
  %i.ef = phi i64 [ %i.eb, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.5141.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" ]
  %i.eg = phi i16 [ %i.ed, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" ], [ %i.dp, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" ] ; 2 uses
  %.lcssa812.i.i.i.i.i.i.i.i89 = phi ptr [ %.lcssa811.i.i.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.0138.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" ] ; 2 uses
  %.lcssa15.i.i.i.i.i.i.i.i88 = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" ], [ %i.dn, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.eg, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.eh = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa15.i.i.i.i.i.i.i.i88, %.lr.ph ] ; 2 uses
  %i.ei = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa812.i.i.i.i.i.i.i.i89, %.lr.ph ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.eh, align 16, !noalias !2448
  %i.ej = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 -128 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ej to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i1.i.i = or i1 %i.dg, %i.en
  br i1 %or.cond.i.i.i.i.i1.i.i, label %bb.bh, label %.body.sink.split.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph
  %.lcssa14.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i.i.i88, %.lr.ph ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa811.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa812.i.i.i.i.i.i.i.i89, %.lr.ph ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.eg, %.lr.ph ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ep = zext nneg i16 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds [8 x i8], ptr %.lcssa811.i.i.i.i.i.i.i.i, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -8
  %i.et = load i64, ptr %i.es, align 8, !noalias !2449, !noundef !6
  %i.eu = invoke fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5b937d6ada5a72b2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df, i64 noundef %i.et)
          to label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i" unwind label %bb.t, !noalias !2450 ; 0 uses

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge": ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i.i.i"
  %i.ev = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, 0
  %or.cond7.i.i.i.i.i.i.i = or i1 %i.dg, %i.ev
  br i1 %or.cond7.i.i.i.i.i.i.i, label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i", label %bb.u

bb.u:                                             ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i.i) #42, !noalias !2451
  br label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i"

.body.sink.split.i.i.i:                           ; preds = %bb.v, %bb.t
  %eh.lpad-body27.ph.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.v ], [ %i.em, %bb.t ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i.i) #42, !noalias !2445
  br label %bb.bh

bb.v:                                             ; preds = %bb.s
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i = or i1 %i.dg, %i.ex
  br i1 %or.cond.i.i.i, label %bb.bh, label %.body.sink.split.i.i.i

"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i": ; preds = %bb.u, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h341a441fbd35ad63E.exit.i.i.i.i.i.i.i.i._crit_edge"
  call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %.val5.i75.i = load ptr, ptr %i.ca, align 8, !alias.scope !2453, !noalias !2454, !nonnull !6, !noundef !6 ; 8 uses
  %.val6.i.i = load i64, ptr %i.cg, align 8, !alias.scope !2453, !noalias !2454, !noundef !6 ; 4 uses
  %.sroa.0.04.i.i.i.i = and i64 %.val6.i.i, %i.cd ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %.sroa.0.04.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !2455
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i = icmp eq i16 %i.fa, 0
  br i1 %.not.not.i.not6.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !27

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i", %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.04.i.i.i.i, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i" ]
  %i.fb = phi i64 [ %i.fc, %.lr.ph.i.i.i.i ], [ 0, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i" ]
  %i.fc = add i64 %i.fb, 16                       ; 2 uses
  %i.fd = add i64 %i.fc, %.sroa.0.07.i.i.i.i
  %.sroa.0.0.i.i.i.i = and i64 %i.fd, %.val6.i.i  ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %.sroa.0.0.i.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i.i = load <16 x i8>, ptr %i.fe, align 1, !noalias !2455
  %i.ff = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i, zeroinitializer
  %i.fg = bitcast <16 x i1> %i.ff to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i = icmp eq i16 %i.fg, 0
  br i1 %.not.not.i.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !28

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i"
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i" ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i16 [ %i.fa, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h3f71a81990a9ad32E.exit.i" ], [ %i.fg, %.lr.ph.i.i.i.i ]
  %i.fh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.fi = zext nneg i16 %i.fh to i64
  %i.fj = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.fi
  %i.fk = and i64 %i.fj, %.val6.i.i               ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !2456, !noundef !6 ; 2 uses
  %i.fn = icmp sgt i8 %i.fm, -1
  br i1 %i.fn, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val5.i75.i, align 16, !noalias !2456
  %i.fo = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.fp = bitcast <16 x i1> %i.fo to i16          ; 2 uses
  %i.fq = icmp ne i16 %i.fp, 0
  call void @llvm.assume(i1 %i.fq)
  %i.fr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fp, i1 true)
  %i.fs = zext nneg i16 %i.fr to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %i.fs
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !2456
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i
  %i.ft = phi i8 [ %.pre.i.i.i, %bb.w ], [ %i.fm, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.fs, %bb.w ], [ %i.fk, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val5.i75.i, i64 %.sroa.0.0.i5.i.i.i.i
  %i.fv = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.fw = and i64 %i.fv, %.val6.i.i
  store i8 %i.cf, ptr %i.fu, align 1, !noalias !2456
  %i.fx = getelementptr i8, ptr %.val5.i75.i, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.cf, ptr %i.fy, align 1, !noalias !2456
  %i.fz = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.ga = getelementptr inbounds [24 x i8], ptr %.val5.i75.i, i64 %i.fz ; 3 uses
  %i.gb = and i8 %i.ft, 1
  %i.gc = zext nneg i8 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %i.ga, i64 -24
  store i64 %.sroa.0.0.lcssa.i, ptr %i.gd, align 8, !noalias !2457
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ga, i64 -16
  store ptr %2, ptr %.sroa.4152.0..sroa_idx.i, align 8, !noalias !2457
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ga, i64 -8
  store ptr %3, ptr %.sroa.5153.0..sroa_idx.i, align 8, !noalias !2457
  %i.ge = load <2 x i64>, ptr %i.db, align 8, !alias.scope !2453, !noalias !2454
  %i.gf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gc, i64 0
  %i.gg = sub <2 x i64> %i.ge, %i.gf
  store <2 x i64> %i.gg, ptr %i.db, align 8, !alias.scope !2453, !noalias !2454
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !2401, !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2404
  br label %bb.bj

bb.y:                                             ; preds = %.lr.ph.i.i67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2404
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2401, !noalias !2458
  %.val54.i = load ptr, ptr %i.k, align 8, !noalias !2404 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val55.i = load i64, ptr %i.gh, align 8, !noalias !2404, !noundef !6 ; 4 uses
  %i.gi = icmp eq i64 %.val55.i, 0
  br i1 %i.gi, label %bb.aa, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i76.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i76.i: ; preds = %bb.y
  %i.gj = shl i64 %.val55.i, 3
  %i.gk = icmp slt i64 %.val55.i, 2305843009213693950
  call void @llvm.assume(i1 %i.gk)
  %i.gl = and i64 %i.gj, -16                      ; 2 uses
  %i.gm = add i64 %i.gl, 16                       ; 2 uses
  %i.gn = add nsw i64 %.val55.i, 17
  %i.go = add i64 %i.gn, %i.gm                    ; 4 uses
  %i.gp = icmp uge i64 %i.go, %i.gm
  %i.gq = icmp ult i64 %i.go, 9223372036854775793
  call void @llvm.assume(i1 %i.gp)
  call void @llvm.assume(i1 %i.gq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54.i) ]
  %i.gr = icmp eq i64 %i.go, 0
  br i1 %i.gr, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i76.i
  %i.gs = sub nuw nsw i64 -16, %i.gl
  %i.gt = getelementptr inbounds i8, ptr %.val54.i, i64 %i.gs
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gt, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !2407
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i76.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2404
  %i.gu = load ptr, ptr %3, align 8, !invariant.load !6, !alias.scope !2403, !noalias !2409 ; 2 uses
  %.not.i77.i = icmp eq ptr %i.gu, null
  br i1 %.not.i77.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.gu(ptr noundef nonnull align 1 %2)
          to label %bb.ac unwind label %bb.ad, !noalias !2407

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !range !10, !invariant.load !6, !alias.scope !2403, !noalias !2409 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !range !26, !invariant.load !6, !alias.scope !2403, !noalias !2409 ; 2 uses
  %i.gz = icmp ult i64 %i.gy, -9223372036854775807
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp eq i64 %i.gw, 0
  br i1 %i.ha, label %bb.bj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %2, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) %i.gy) #42, !noalias !2407
  br label %bb.bj

bb.ad:                                            ; preds = %bb.ab
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !range !10, !invariant.load !6, !alias.scope !2403, !noalias !2409 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !range !26, !invariant.load !6, !alias.scope !2403, !noalias !2409 ; 2 uses
  %i.hg = icmp ult i64 %i.hf, -9223372036854775807
  call void @llvm.assume(i1 %i.hg)
  %i.hh = icmp eq i64 %i.hd, 0
  br i1 %i.hh, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.ad
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %2, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) %i.hf) #42, !noalias !2407
  br label %.body

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6a8e46e8bba39675E.exit.i": ; preds = %.lr.ph.i.i.i
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2401, !noalias !2458
  br label %bb.ah

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  %i.hi = load i64, ptr %i.an, align 8, !alias.scope !2461, !noalias !2462, !noundef !6
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he699a21a57fa9780E.exit.thread.i", label %bb.ae

bb.ae:                                            ; preds = %select.unfold.i
  %.val.i78.i = load i64, ptr %i.ao, align 8, !alias.scope !2461, !noalias !2462, !noundef !6
  %.val5.i79.i = load i64, ptr %i.ap, align 8, !alias.scope !2461, !noalias !2462, !noundef !6
  %i.hk = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hb4be9083b1d73bdfE(i64 %.val.i78.i, i64 %.val5.i79.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax), !noalias !2463 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %i.hl = lshr i64 %i.hk, 57
  %i.hm = trunc nuw nsw i64 %i.hl to i8
  %i.hn = load i64, ptr %i.aq, align 8, !alias.scope !2467, !noalias !2468, !noundef !6 ; 2 uses
  %i.ho = load ptr, ptr %i.am, align 8, !alias.scope !2467, !noalias !2468, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i80.i = insertelement <16 x i8> poison, i8 %i.hm, i64 0
  %.sroa.0.15.vec.insert.i.i.i81.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i80.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.hp, align 8, !alias.scope !2469, !noalias !2470 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val.i.i.i.i82.i = load ptr, ptr %i.hq, align 8, !alias.scope !2469, !noalias !2470, !nonnull !6
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.sroa.9.0.i.i.i83.i = phi i64 [ 0, %bb.ae ], [ %i.ii, %bb.ag ]
  %.pn.i.i84.i = phi i64 [ %i.hk, %bb.ae ], [ %i.ij, %bb.ag ]
  %.sroa.01.0.i.i.i85.i = and i64 %.pn.i.i84.i, %i.hn ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.sroa.01.0.i.i.i85.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.hr, align 1, !noalias !2471 ; 2 uses
  %i.hs = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %.sroa.0.15.vec.insert.i.i.i81.i
  %i.ht = bitcast <16 x i1> %i.hs to i16          ; 2 uses
  %.not.i.not33.i.i.i = icmp eq i16 %i.ht, 0
  br i1 %.not.i.not33.i.i.i, label %._crit_edge.i.i88.i, label %.lr.ph.i.i86.i

.lr.ph.i.i86.i:                                   ; preds = %bb.af, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.thread.i.i.i"
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.ih, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h74c716167e4966f0E.exit.thread.i.i.i" ], [ %i.ht, %bb.af ] ; 3 uses
  %i.hu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.hv = zext nneg i16 %i.hu to i64
  %i.hw = add i64 %.sroa.01.0.i.i.i85.i, %i.hv
  %i.hx = and i64 %i.hw, %i.hn
  %i.hy = sub nsw i64 0, %i.hx
  %i.hz = getelementptr inbounds [32 x i8], ptr %i.ho, i64 %i.hy ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -16
end_hunk_1
