Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt17hc4f55d8807f04873E":bb.a

.loopexit1762:                                    ; preds = %bb.ci
  %lpad.loopexit1764 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp1763:                           ; preds = %bb.cp
  %lpad.loopexit.split-lp1765 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit.split-lp1763, %.loopexit1762
  %lpad.phi1766 = phi { ptr, i32 } [ %lpad.loopexit1764, %.loopexit1762 ], [ %lpad.loopexit.split-lp1765, %.loopexit.split-lp1763 ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cu)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1024" unwind label %bb.as, !inline_history !73

bb.ck:                                            ; preds = %bb.ci
  %i.ps = load ptr, ptr %i.cv, align 8, !noundef !55 ; 2 uses
  %.not749.not.not = icmp eq ptr %i.ps, null
  br i1 %.not749.not.not, label %bb.cr, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pt = load i64, ptr %i.oy, align 8, !noundef !55
  %i.pu = load i8, ptr %i.pd, align 8, !range !99, !alias.scope !28738, !noundef !55
  switch i8 %i.pu, label %default.unreachable [
    i8 0, label %bb.co
    i8 1, label %bb.co
    i8 2, label %bb.co
    i8 3, label %bb.cm
    i8 4, label %bb.co
    i8 5, label %bb.co
    i8 6, label %bb.co
    i8 7, label %bb.co
    i8 8, label %bb.co
    i8 9, label %bb.co
    i8 10, label %bb.co
    i8 11, label %bb.co
    i8 12, label %bb.co
    i8 13, label %bb.co
    i8 14, label %bb.cn
    i8 15, label %bb.co
    i8 16, label %bb.co
    i8 17, label %bb.co
    i8 18, label %bb.co
    i8 19, label %bb.co
    i8 20, label %bb.co
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  %i.px = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !alias.scope !28738, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 136
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 138
  br label %bb.cp

bb.co:                                            ; preds = %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl
  %.sroa.01.0.i1041 = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %.sroa.4.0.in.i1042 = phi ptr [ %i.qb, %bb.co ], [ %i.pw, %bb.cm ], [ %i.qa, %bb.cn ]
  %.sroa.0.0.in.i1043 = phi ptr [ %.sroa.01.0.i1041, %bb.co ], [ %i.pv, %bb.cm ], [ %i.pz, %bb.cn ]
  %.sroa.0.0.i1044 = load i16, ptr %.sroa.0.0.in.i1043, align 2, !noundef !55
  %.sroa.4.0.i1045 = load i16, ptr %.sroa.4.0.in.i1042, align 2, !noundef !55
  %i.qc = getelementptr i8, ptr %i.pm, i64 104
  %.val958 = load ptr, ptr %i.qc, align 8, !nonnull !55, !noundef !55
  %i.qd = getelementptr i8, ptr %i.pm, i64 112
  %.val959 = load i64, ptr %i.qd, align 8, !noundef !55
  %i.qe = invoke fastcc noundef nonnull align 8 ptr @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$22make_type_mismatch_err17h3a320aee6bd437e9E"(ptr nonnull %.val958, i64 %.val959, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ps, i64 noundef %i.pt, i16 noundef %.sroa.0.0.i1044, i16 noundef %.sroa.4.0.i1045)
          to label %bb.cq unwind label %.loopexit.split-lp1763

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qe, ptr %i.qf, align 8
  store i8 12, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cu)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1049" unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !73

bb.cr:                                            ; preds = %bb.ck
  %i.qg = load i8, ptr %i.oy, align 8, !range !57, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cu)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1051" unwind label %.loopexit, !inline_history !73

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1051": ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.cf

bb.cs:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  store ptr %i.et, ptr %i.cs, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.es, ptr %i.qh, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.er, ptr %i.qi, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.eq, ptr %i.qj, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store ptr %5, ptr %i.qk, align 8
  invoke fastcc void @"_ZN4core6option15Option$LT$T$GT$6map_or17h36efb71722f9e912E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.mf, ptr noalias noundef align 8 captures(address) dereferenceable(16) @2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cs)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.dc), !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.ab

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1049": ; preds = %bb.cq, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.bx

bb.cu:                                            ; preds = %bb.bx, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.ab

bb.cv:                                            ; preds = %bb.p
  %i.ql = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.qm = load i8, ptr %i.ql, align 1, !range !57, !noundef !55
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %.critedge764, label %.critedge766

.critedge766:                                     ; preds = %bb.p, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call fastcc void @"_ZN4rhai4eval4expr38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_expr17haed8650a3eaf3411E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.co, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(88) %2, ptr noalias noundef align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gk)
  %i.qo = load i8, ptr %i.co, align 8, !range !70, !noundef !55 ; 2 uses
  %i.qp = icmp eq i8 %i.qo, 12
  br i1 %i.qp, label %._crit_edge1926, label %.lr.ph1925

.lr.ph1925:                                       ; preds = %.critedge766
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.gk, i64 144
  %i.qs = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.qt = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.cw

.critedge764:                                     ; preds = %bb.p, %bb.cv
  %i.qv = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.gk, i64 144 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !alias.scope !28739, !noalias !28740, !noundef !55 ; 3 uses
  %i.qy = icmp ugt i64 %i.qx, 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 8, !alias.scope !28739, !noalias !28740 ; 2 uses
  %.sink10.i1053 = select i1 %i.qy, i64 %i.ra, i64 %i.qx
  %i.rb = icmp eq i64 %.sink10.i1053, 0
  br i1 %i.rb, label %.preheader, label %.preheader1780

.preheader1780:                                   ; preds = %.critedge764
  %i.rc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  br label %bb.ee

.preheader:                                       ; preds = %.critedge764
  %i.rd = getelementptr inbounds nuw i8, ptr %i.gk, i64 152 ; 5 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.gk, i64 154 ; 4 uses
  %i.rf = load i16, ptr %i.rd, align 8, !noundef !55 ; 2 uses
  %i.rg = load i16, ptr %i.re, align 2, !noundef !55 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28741)
  %i.rh = load i64, ptr %i.ex, align 8, !alias.scope !28741, !noundef !55 ; 6 uses
  %i.ri = add i64 %i.rh, 1                        ; 7 uses
  store i64 %i.ri, ptr %i.ex, align 8, !alias.scope !28741
  %i.rj = load i64, ptr %i.fa, align 8, !noalias !28741, !noundef !55 ; 7 uses
  %.not.i8141920 = icmp ne i64 %i.rj, 0
  %i.rk = icmp ugt i64 %i.ri, %i.rj
  %or.cond17451921 = and i1 %.not.i8141920, %i.rk
  br i1 %or.cond17451921, label %._crit_edge1923, label %.lr.ph1922.preheader

.lr.ph1922.preheader:                             ; preds = %.preheader
  %i.rl = getelementptr i8, ptr %1, i64 248
  %i.rm = load ptr, ptr %i.fd, align 8, !noalias !28742, !align !61, !noundef !55 ; 2 uses
  %i.rn = icmp eq ptr %i.rm, null
  br i1 %i.rn, label %.lr.ph1922.preheader.split.us, label %.lr.ph1922

.lr.ph1922.preheader.split.us:                    ; preds = %.lr.ph1922.preheader
  %.not.i814.us.not = icmp eq i64 %i.rj, 0
  br i1 %.not.i814.us.not, label %.lr.ph1922.us.us, label %.lr.ph1922.us.preheader

.lr.ph1922.us.preheader:                          ; preds = %.lr.ph1922.preheader.split.us
  %i.ro = zext i64 %i.rj to i128
  %i.rp = add nuw nsw i128 %i.ro, 1
  %i.rq = add i64 %i.rh, 2
  %i.rr = zext i64 %i.rq to i128
  %i.rs = call i128 @llvm.umax.i128(i128 %i.rp, i128 %i.rr)
  %i.rt = trunc i128 %i.rs to i64
  %i.ru = xor i64 %i.rh, -1
  %i.rv = add i64 %i.ru, %i.rt                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.rv, 40
  br i1 %min.iters.check, label %.lr.ph1922.us.preheader2869, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph1922.us.preheader
  %i.rw = zext i64 %i.rj to i128
  %i.rx = add nuw nsw i128 %i.rw, 1
  %i.ry = add i64 %i.rh, 2
  %i.rz = zext i64 %i.ry to i128
  %i.sa = call i128 @llvm.usub.sat.i128(i128 %i.rx, i128 %i.rz) ; 2 uses
  %i.sb = trunc i128 %i.sa to i64
  %i.sc = sub i64 -3, %i.rh
  %i.sd = icmp ult i64 %i.sc, %i.sb
  %i.se = icmp samesign ugt i128 %i.sa, 18446744073709551615
  %i.sf = or i1 %i.sd, %i.se
  br i1 %i.sf, label %.lr.ph1922.us.preheader2869, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr inbounds nuw i8, ptr %2, i64 64
  %scevgep2832 = getelementptr i8, ptr %i.gk, i64 156
  %bound0 = icmp ult ptr %i.ex, %scevgep2832
  %bound1 = icmp ult ptr %i.rd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1922.us.preheader2869, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rv, -4                      ; 3 uses
  %i.sg = add i64 %i.ri, %n.vec
  %i.sh = add i64 %i.rh, 2
  %i.si = load i16, ptr %i.rd, align 8, !alias.scope !28743, !noundef !55
  %i.sj = load i16, ptr %i.re, align 2, !alias.scope !28743, !noundef !55
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.sk = phi i64 [ %i.sh, %vector.ph ], [ %i.sm, %vector.body ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28744)
  %i.sl = add i64 %i.sk, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sm = add i64 %i.sk, 4
  %i.sn = icmp eq i64 %index.next, %n.vec
  br i1 %i.sn, label %middle.block, label %vector.body, !llvm.loop !28575

middle.block:                                     ; preds = %vector.body
  store i64 %i.sl, ptr %i.ex, align 8, !alias.scope !28745, !noalias !28743
  %cmp.n = icmp eq i64 %i.rv, %n.vec
  br i1 %cmp.n, label %._crit_edge1923, label %.lr.ph1922.us.preheader2869

.lr.ph1922.us.preheader2869:                      ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph1922.us.preheader, %middle.block
  %.ph = phi i64 [ %i.ri, %vector.memcheck ], [ %i.ri, %vector.scevcheck ], [ %i.ri, %.lr.ph1922.us.preheader ], [ %i.sg, %middle.block ]
  br label %.lr.ph1922.us

.lr.ph1922.us.us:                                 ; preds = %.lr.ph1922.preheader.split.us, %.lr.ph1922.us.us
  call void @llvm.experimental.noalias.scope.decl(metadata !28744)
  br label %.lr.ph1922.us.us

.lr.ph1922.us:                                    ; preds = %.lr.ph1922.us.preheader2869, %.lr.ph1922.us
  %i.so = phi i64 [ %i.sr, %.lr.ph1922.us ], [ %.ph, %.lr.ph1922.us.preheader2869 ]
  %i.sp = load i16, ptr %i.rd, align 8, !noundef !55
  %i.sq = load i16, ptr %i.re, align 2, !noundef !55
  call void @llvm.experimental.noalias.scope.decl(metadata !28744)
  %i.sr = add i64 %i.so, 1                        ; 3 uses
  store i64 %i.sr, ptr %i.ex, align 8, !alias.scope !28744
  %i.ss = icmp ugt i64 %i.sr, %i.rj
  br i1 %i.ss, label %._crit_edge1923, label %.lr.ph1922.us, !llvm.loop !28577

._crit_edge1926:                                  ; preds = %.backedge, %.critedge766
  %i.st = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !nonnull !55, !align !56, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.su, ptr %i.sv, align 8
  store i8 12, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.du

bb.cw:                                            ; preds = %.lr.ph1925, %.backedge
  %i.sw = phi i8 [ %i.qo, %.lr.ph1925 ], [ %i.ub, %.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4269.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4539.0..sroa_idx, i64 7, i1 false)
  %.sroa.5540.0.copyload = load ptr, ptr %.sroa.5540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  store i8 %i.sw, ptr %i.cp, align 8
  store ptr %.sroa.5540.0.copyload, ptr %.sroa.5270.0..sroa_idx, align 8
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cp)
          to label %bb.cy unwind label %.loopexit1775

.loopexit1775:                                    ; preds = %bb.cw
  %lpad.loopexit1777 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp1776:                           ; preds = %bb.dd
  %lpad.loopexit.split-lp1778 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit.split-lp1776, %.loopexit1775
  %lpad.phi1779 = phi { ptr, i32 } [ %lpad.loopexit1777, %.loopexit1775 ], [ %lpad.loopexit.split-lp1778, %.loopexit.split-lp1776 ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cp)
          to label %common.resume unwind label %bb.as, !inline_history !73

bb.cy:                                            ; preds = %bb.cw
  %i.sx = load ptr, ptr %i.cq, align 8, !noundef !55 ; 2 uses
  %.not736.not.not = icmp eq ptr %i.sx, null
  br i1 %.not736.not.not, label %bb.df, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.sy = load i64, ptr %i.qq, align 8, !noundef !55
  %i.sz = load i8, ptr %i.gk, align 8, !range !99, !alias.scope !28746, !noundef !55
  switch i8 %i.sz, label %default.unreachable [
    i8 0, label %bb.dc
    i8 1, label %bb.dc
    i8 2, label %bb.dc
    i8 3, label %bb.da
    i8 4, label %bb.dc
    i8 5, label %bb.dc
    i8 6, label %bb.dc
    i8 7, label %bb.dc
    i8 8, label %bb.dc
    i8 9, label %bb.dc
    i8 10, label %bb.dc
    i8 11, label %bb.dc
    i8 12, label %bb.dc
    i8 13, label %bb.dc
    i8 14, label %bb.db
    i8 15, label %bb.dc
    i8 16, label %bb.dc
    i8 17, label %bb.dc
    i8 18, label %bb.dc
    i8 19, label %bb.dc
    i8 20, label %bb.dc
  ]

bb.da:                                            ; preds = %bb.cz
  %i.ta = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.tb = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  br label %bb.dd

bb.db:                                            ; preds = %bb.cz
  %i.tc = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !alias.scope !28746, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 136
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 138
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %.sroa.01.0.i1057 = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.tg = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %.sroa.4.0.in.i1058 = phi ptr [ %i.tg, %bb.dc ], [ %i.tb, %bb.da ], [ %i.tf, %bb.db ]
  %.sroa.0.0.in.i1059 = phi ptr [ %.sroa.01.0.i1057, %bb.dc ], [ %i.ta, %bb.da ], [ %i.te, %bb.db ]
  %.sroa.0.0.i1060 = load i16, ptr %.sroa.0.0.in.i1059, align 2, !noundef !55
  %.sroa.4.0.i1061 = load i16, ptr %.sroa.4.0.in.i1058, align 2, !noundef !55
  %i.th = getelementptr i8, ptr %1, i64 104
  %.val956 = load ptr, ptr %i.th, align 8, !nonnull !55, !noundef !55
  %i.ti = getelementptr i8, ptr %1, i64 112
  %.val957 = load i64, ptr %i.ti, align 8, !noundef !55
  %i.tj = invoke fastcc noundef nonnull align 8 ptr @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$22make_type_mismatch_err17h3a320aee6bd437e9E"(ptr nonnull %.val956, i64 %.val957, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.sx, i64 noundef %i.sy, i16 noundef %.sroa.0.0.i1060, i16 noundef %.sroa.4.0.i1061)
          to label %bb.de unwind label %.loopexit.split-lp1776

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tj, ptr %i.tk, align 8
  store i8 12, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cp), !inline_history !73
  br label %bb.du

bb.df:                                            ; preds = %bb.cy
  %i.tl = load i8, ptr %i.qq, align 8, !range !57, !noundef !55
  %i.tm = trunc nuw i8 %i.tl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cp), !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br i1 %i.tm, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.ab

bb.dh:                                            ; preds = %bb.df
  %i.tn = load i64, ptr %i.qr, align 8, !alias.scope !28747, !noalias !28748, !noundef !55 ; 2 uses
  %i.to = icmp ugt i64 %i.tn, 8                   ; 2 uses
  %i.tp = load i64, ptr %i.qs, align 8, !alias.scope !28747, !noalias !28748
  %.sink10.i1065 = select i1 %i.to, i64 %i.tp, i64 %i.tn ; 2 uses
  %i.tq = icmp eq i64 %.sink10.i1065, 0
  br i1 %i.tq, label %.backedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.tr = load ptr, ptr %i.qt, align 8, !alias.scope !28747, !noalias !28748, !nonnull !55
  %.sink11.i1067 = select i1 %i.to, ptr %i.tr, ptr %i.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$15eval_stmt_block17h3c746e72af9baf26E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cn, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(88) %2, ptr noalias noundef nonnull align 8 dereferenceable(200) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1067, i64 noundef %.sink10.i1065, i1 noundef zeroext true)
  %i.ts = load i8, ptr %i.cn, align 8, !range !70, !noundef !55
  %i.tt = icmp eq i8 %i.ts, 12
  br i1 %i.tt, label %bb.dj, label %"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit"

bb.dj:                                            ; preds = %bb.di
  %i.tu = load ptr, ptr %i.qu, align 8, !nonnull !55, !align !56, !noundef !55 ; 11 uses
  %i.tv = load i8, ptr %i.tu, align 8, !range !79, !noundef !55
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages9lang_core14core_functions10parse_json17h5a2c00fe632be800E:bb.a
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !48018, !noalias !47932, !noundef !55 ; 3 uses
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit.thread", label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !48019)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !48020, !noalias !47932, !noundef !55 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hcf410f3b3fb612c9E.exit.i.i.i.i.i46.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hq = load ptr, ptr %i.ab, align 8, !alias.scope !48020, !noalias !47932, !nonnull !55, !noundef !55 ; 3 uses
  %.val3.i.i.i.i.i.i.i35.i = load <16 x i8>, ptr %i.hq, align 16, !noalias !48021
  %i.hr = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i35.i, splat (i8 -1)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ht = bitcast <16 x i1> %i.hr to i16
  br label %bb.cu

bb.cu:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i", %bb.ct
  %.sroa.06.017.i.i.i.i.i.i36.i = phi ptr [ %i.hq, %bb.ct ], [ %.sroa.06.1.i.i.i.i.i.i43.i, %"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i37.i = phi ptr [ %i.hs, %bb.ct ], [ %.sroa.6.1.i.i.i.i.i.i42.i, %"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i38.i = phi i16 [ %i.ht, %bb.ct ], [ %i.ic, %"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i39.i = phi i64 [ %i.ho, %bb.ct ], [ %i.if, %"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i" ]
  %.not13.i.i.i.i.i.i.i40.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i38.i, 0
  br i1 %.not13.i.i.i.i.i.i.i40.i, label %.lr.ph.i.i.i.i.i.i.i47.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h9ea856053a20323bE.exit.i.i.i.i.i.i41.i"

.lr.ph.i.i.i.i.i.i.i47.i:                         ; preds = %bb.cu, %.lr.ph.i.i.i.i.i.i.i47.i
  %i.hu = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i.i.i47.i ], [ %.sroa.6.016.i.i.i.i.i.i37.i, %bb.cu ] ; 2 uses
  %i.hv = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i.i.i47.i ], [ %.sroa.06.017.i.i.i.i.i.i36.i, %bb.cu ]
  %.val11.i.i.i.i.i.i.i48.i = load <16 x i8>, ptr %i.hu, align 16, !noalias !48022
  %i.hw = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i48.i, splat (i8 -1)
  %i.hx = getelementptr inbounds i8, ptr %i.hv, i64 -256 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i49.i = bitcast <16 x i1> %i.hw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i50.i = icmp eq i16 %.cast.i.i.i.i.i.i.i49.i, 0
  br i1 %.not.i.i.i.i.i.i.i50.i, label %.lr.ph.i.i.i.i.i.i.i47.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h9ea856053a20323bE.exit.i.i.i.i.i.i41.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h9ea856053a20323bE.exit.i.i.i.i.i.i41.i": ; preds = %.lr.ph.i.i.i.i.i.i.i47.i, %bb.cu
  %.sroa.6.1.i.i.i.i.i.i42.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i37.i, %bb.cu ], [ %i.hy, %.lr.ph.i.i.i.i.i.i.i47.i ]
  %.sroa.06.1.i.i.i.i.i.i43.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i36.i, %bb.cu ], [ %i.hx, %.lr.ph.i.i.i.i.i.i.i47.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i44.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i38.i, %bb.cu ], [ %.cast.i.i.i.i.i.i.i49.i, %.lr.ph.i.i.i.i.i.i.i47.i ] ; 3 uses
  %i.hz = add i16 %.lcssa.i.i.i.i.i.i.i44.i, -1
  %i.ia = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i44.i, i1 true)
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = and i16 %i.hz, %.lcssa.i.i.i.i.i.i.i44.i
  %i.id = sub nsw i64 0, %i.ib
  %i.ie = getelementptr inbounds [16 x i8], ptr %.sroa.06.1.i.i.i.i.i.i43.i, i64 %i.id
  %i.if = add i64 %.sroa.108.014.i.i.i.i.i.i39.i, -1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48023)
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 -8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48024)
  call void @llvm.experimental.noalias.scope.decl(metadata !48025)
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !48026, !noalias !48027, !nonnull !55, !noundef !55
  %i.ii = atomicrmw sub ptr %i.ih, i64 1 release, align 8, !noalias !48028
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.cv, label %"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i"

bb.cv:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h9ea856053a20323bE.exit.i.i.i.i.i.i41.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h534c90ae505f04c7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ig)
          to label %"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i" unwind label %.loopexit.i, !noalias !47930

"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i": ; preds = %bb.cv, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h9ea856053a20323bE.exit.i.i.i.i.i.i41.i"
  %i.ik = icmp eq i64 %i.if, 0
  br i1 %i.ik, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hcf410f3b3fb612c9E.exit.i.i.i.i.i46.i, label %bb.cu

_ZN9hashbrown3raw13RawTableInner13drop_elements17hcf410f3b3fb612c9E.exit.i.i.i.i.i46.i: ; preds = %"_ZN4core3ptr94drop_in_place$LT$$LP$u64$C$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$RP$$GT$17h801cd5d84d586998E.exit.i.i.i.i.i.i45.i", %bb.cs
  %i.il = shl i64 %i.hl, 4                        ; 2 uses
  %i.im = add i64 %i.il, 16                       ; 2 uses
  %i.in = add i64 %i.hl, 17
  %i.io = add i64 %i.in, %i.im                    ; 4 uses
  %i.ip = icmp uge i64 %i.io, %i.im
  %i.iq = icmp ult i64 %i.io, 9223372036854775793
  call void @llvm.assume(i1 %i.ip)
  call void @llvm.assume(i1 %i.iq)
  %i.ir = icmp eq i64 %i.io, 0
  br i1 %i.ir, label %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit.thread", label %bb.cw

bb.cw:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hcf410f3b3fb612c9E.exit.i.i.i.i.i46.i
  %i.is = load ptr, ptr %i.ab, align 8, !alias.scope !48018, !noalias !47932, !nonnull !55, !noundef !55
  %i.it = sub nuw nsw i64 -16, %i.il
  %i.iu = getelementptr inbounds i8, ptr %i.is, i64 %i.it
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef %i.io, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !48029
  br label %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit.thread"

"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit.thread": ; preds = %bb.cr, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hcf410f3b3fb612c9E.exit.i.i.i.i.i46.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !47932
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$rhai..tokenizer..TokenIterator$GT$$GT$17h732297cbab3113c8E"(ptr noalias noundef align 8 dereferenceable(248) %i.ac), !noalias !47930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !47932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !47932
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.dc

bb.cx:                                            ; preds = %.body25.i
  invoke fastcc void @"_ZN4core3ptr99drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$rhai..tokenizer..TokenIterator$GT$$GT$17h732297cbab3113c8E"(ptr noalias noundef align 8 dereferenceable(248) %i.ac) #72
          to label %common.resume unwind label %bb.cp, !noalias !47930

"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit": ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !47963
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$rhai..ast..ast..AST$GT$17ha2f4cc96cbede6baE"(ptr noalias noundef align 8 dereferenceable(24) %i.ad), !noalias !47930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !47932
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %storemerge39.i.i, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48030
  %.not.i.i = icmp ne ptr %.sroa.59.0, null       ; 3 uses
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %.sroa.11.sroa.0.0, i64 undef ; 2 uses
  %.sink23.i.i = zext i1 %.not.i.i to i64         ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = select i1 %.not.i.i, i64 %.sroa.11.sroa.4.0, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48031
  store i64 %.sink23.i.i, ptr %i.a, align 8, !noalias !48032
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !48032
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.59.0, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !48032
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.10.0.i, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !48032
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink23.i.i, ptr %.sroa.78.0..sroa_idx.i, align 8, !noalias !48032
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.89.0..sroa_idx.i, align 8, !noalias !48032
  %.sroa.910.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.59.0, ptr %.sroa.910.0..sroa_idx.i, align 8, !noalias !48032
  %.sroa.1011.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.10.0.i, ptr %.sroa.1011.0..sroa_idx.i, align 8, !noalias !48032
  %.sroa.1112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %.sroa.1112.0..sroa_idx.i, align 8, !noalias !48032
  call fastcc void @"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h0ba9c62c931a4350E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a), !noalias !48033, !inline_history !47925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48031
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !48034, !inline_history !0
  %i.iv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !48034, !inline_history !0 ; 3 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.cz, label %"_ZN130_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..convert..From$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$T$GT$$GT$$GT$4from17h5992a0be27142494E.exit", !prof !58

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70
          to label %.noexc.i8 unwind label %bb.da, !noalias !48030, !inline_history !0

.noexc.i8:                                        ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he2bc0935439e1204E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #72
          to label %common.resume unwind label %bb.db, !noalias !48030, !inline_history !0

bb.db:                                            ; preds = %bb.da
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !48030, !inline_history !0
  unreachable

"_ZN130_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..convert..From$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$T$GT$$GT$$GT$4from17h5992a0be27142494E.exit": ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !48030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48030
  br label %bb.dc

bb.dc:                                            ; preds = %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit", %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit.thread", %"_ZN130_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..convert..From$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$T$GT$$GT$$GT$4from17h5992a0be27142494E.exit"
  %.sroa.53.0 = phi ptr [ %i.iv, %"_ZN130_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..convert..From$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$T$GT$$GT$$GT$4from17h5992a0be27142494E.exit" ], [ %i.cg, %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit.thread" ], [ %.sroa.59.0, %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit" ]
  %.sroa.0.0 = phi i8 [ 8, %"_ZN130_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..convert..From$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$T$GT$$GT$$GT$4from17h5992a0be27142494E.exit" ], [ 12, %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit.thread" ], [ 12, %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit" ]
  store i8 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.5.0..sroa_idx2, align 1
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx, align 4
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.53.0..sroa_idx4, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages9lang_core14core_functions11sleep_float17hfd8ea99c6e420762E(double noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = bitcast double %0 to i64                 ; 9 uses
  %i.e = tail call double @llvm.fabs.f64(double %0)
  %or.cond = fcmp oeq double %i.e, +inf
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, 9218868437227405312
  %.off = add nsw i64 %i.f, -1
  %switch = icmp ult i64 %.off, 9218868437227405311
  %i.g = icmp sgt i64 %i.d, -1
  %or.cond1 = and i1 %i.g, %switch
  br i1 %or.cond1, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.d, 4503599627370495
  %i.i = or disjoint i64 %i.h, 4503599627370496   ; 3 uses
  %i.j = lshr i64 %i.d, 52                        ; 4 uses
  %i.k = trunc nuw nsw i64 %i.j to i16
  %i.l = add nsw i64 %i.j, -1023
  %i.m = icmp samesign ult i64 %i.d, 4467570830351532032
  br i1 %i.m, label %_ZN4core4time8Duration13from_secs_f6417h09372c7b651d8f8fE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i64 %i.d, 4607182418800017408
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ult i64 %i.d, 4841369599423283200
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = zext nneg i64 %i.i to i128
  %i.q = add nsw i16 %i.k, -979
  %i.r = zext nneg i16 %i.q to i128
  %i.s = shl nuw nsw i128 %i.p, %i.r
  %i.t = mul nuw nsw i128 %i.s, 1000000000        ; 3 uses
  %i.u = lshr i128 %i.t, 96                       ; 2 uses
  %i.v = trunc nuw nsw i128 %i.u to i32
  %i.w = and i128 %i.t, 79228162514264337593543949824
  %i.x = icmp ne i128 %i.w, 39614081257132168796771975168
  %i.y = and i128 %i.t, 39614081257132168796771975168
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = trunc i128 %i.u to i1
  %narrow13.i.i = or i1 %i.x, %i.aa
  %narrow14.i.i = select i1 %i.z, i1 %narrow13.i.i, i1 false
  %.sroa.0.0.i.i = zext i1 %narrow14.i.i to i32
  %i.ab = add nuw nsw i32 %.sroa.0.0.i.i, %i.v    ; 2 uses
  %.not7.i.i = icmp eq i32 %i.ab, 1000000000      ; 2 uses
  %spec.select.i = zext i1 %.not7.i.i to i64
  %spec.select12.i = select i1 %.not7.i.i, i32 0, i32 %i.ab
  br label %_ZN4core4time8Duration13from_secs_f6417h09372c7b651d8f8fE.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = icmp samesign ult i64 %i.d, 4895412794951729152
  br i1 %i.ac, label %bb.i, label %_ZN4core4time8Duration17try_from_secs_f6417he8336ece3395a0a6E.exit.i

bb.h:                                             ; preds = %bb.e
  %i.ad = sub nsw i64 1075, %i.j
  %i.ae = lshr i64 %i.i, %i.ad
  %i.af = shl i64 %i.d, %i.l
  %i.ag = and i64 %i.af, 4503599627370495
  %i.ah = zext nneg i64 %i.ag to i128
  %i.ai = mul nuw nsw i128 %i.ah, 1000000000      ; 3 uses
  %i.aj = lshr i128 %i.ai, 52                     ; 2 uses
  %i.ak = trunc nuw nsw i128 %i.aj to i32
  %i.al = and i128 %i.ai, 4503599627369984
  %i.am = icmp ne i128 %i.al, 2251799813685248
  %i.an = and i128 %i.ai, 2251799813685248
  %i.ao = icmp ne i128 %i.an, 0
  %i.ap = trunc i128 %i.aj to i1
  %narrow.i.i = or i1 %i.am, %i.ap
  %narrow12.i.i = select i1 %i.ao, i1 %narrow.i.i, i1 false
  %.sroa.01.0.i.i = zext i1 %narrow12.i.i to i32
  %i.aq = add nuw nsw i32 %.sroa.01.0.i.i, %i.ak  ; 2 uses
  %.not.i.i = icmp eq i32 %i.aq, 1000000000       ; 2 uses
  %i.ar = zext i1 %.not.i.i to i64
  %spec.select10.i.i = add nuw nsw i64 %i.ae, %i.ar
  %spec.select13.i = select i1 %.not.i.i, i32 0, i32 %i.aq
  br label %_ZN4core4time8Duration13from_secs_f6417h09372c7b651d8f8fE.exit

bb.i:                                             ; preds = %bb.g
  %i.as = add nsw i64 %i.j, -1075
  %i.at = shl nuw i64 %i.i, %i.as
  br label %_ZN4core4time8Duration13from_secs_f6417h09372c7b651d8f8fE.exit

_ZN4core4time8Duration17try_from_secs_f6417he8336ece3395a0a6E.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN72_$LT$core..time..TryFromFloatSecsError$u20$as$u20$core..fmt..Display$GT$3fmt17hc3a3f407e575d36eE", ptr %.sroa.42.0..sroa_idx.i, align 8
  store ptr @415, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.ax, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @417) #70
  unreachable

_ZN4core4time8Duration13from_secs_f6417h09372c7b651d8f8fE.exit: ; preds = %bb.c, %bb.f, %bb.h, %bb.i
  %.sroa.0.0.ph.i = phi i64 [ %spec.select10.i.i, %bb.h ], [ %i.at, %bb.i ], [ 0, %bb.c ], [ %spec.select.i, %bb.f ]
  %.sroa.03.0.sink.i.ph.i = phi i32 [ %spec.select13.i, %bb.h ], [ 0, %bb.i ], [ 0, %bb.c ], [ %spec.select12.i, %bb.f ]
  tail call void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef %.sroa.0.0.ph.i, i32 noundef %.sroa.03.0.sink.i.ph.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %_ZN4core4time8Duration13from_secs_f6417h09372c7b651d8f8fE.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages9lang_core14core_functions15exit_with_value17h19593c7605404abcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.d, align 4
  store i8 34, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !48037
  %i.e = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !48037 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", !prof !58

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.i, align 8
  store i8 12, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages9lang_core14core_functions4exit17ha05dfe2cb2a460b8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.d, align 4
  store i8 34, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !48040
  %i.e = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !48040 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", !prof !58

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.i, align 8
  store i8 12, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages9lang_core14core_functions4take17h4862f5d5fe72b669E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = tail call noundef zeroext i1 @_ZN4rhai5types7dynamic7Dynamic12is_read_only17h42ca0264e32ef5afE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !48050
  %i.c = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #71, !noalias !48050 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70, !noalias !48051
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit": ; preds = %bb.c
  store i32 1701536116, ptr %i.c, align 1, !noalias !48052
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 4, ptr %.sroa.53.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.g, align 4
  store i8 20, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !48053
  %i.h = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !48053 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", !prof !58

bb.e:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.j

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.l, align 8
  store i8 12, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", %bb.b
end_hunk_1
