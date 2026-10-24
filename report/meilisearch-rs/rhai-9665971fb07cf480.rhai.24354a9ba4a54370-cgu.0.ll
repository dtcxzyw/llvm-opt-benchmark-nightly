Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt17hc4f55d8807f04873E":bb.a
    i8 2, label %bb.cm
    i8 3, label %bb.ck
    i8 4, label %bb.cm
    i8 5, label %bb.cm
    i8 6, label %bb.cm
    i8 7, label %bb.cm
    i8 8, label %bb.cm
    i8 9, label %bb.cm
    i8 10, label %bb.cm
    i8 11, label %bb.cm
    i8 12, label %bb.cm
    i8 13, label %bb.cm
    i8 14, label %bb.cl
    i8 15, label %bb.cm
    i8 16, label %bb.cm
    i8 17, label %bb.cm
    i8 18, label %bb.cm
    i8 19, label %bb.cm
    i8 20, label %bb.cm
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !alias.scope !27059, !nonnull !53, !align !54, !noundef !53 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 136
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 138
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj
  %.sroa.01.0.i1041 = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  %i.px = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %.sroa.4.0.in.i1042 = phi ptr [ %i.px, %bb.cm ], [ %i.ps, %bb.ck ], [ %i.pw, %bb.cl ]
  %.sroa.0.0.in.i1043 = phi ptr [ %.sroa.01.0.i1041, %bb.cm ], [ %i.pr, %bb.ck ], [ %i.pv, %bb.cl ]
  %.sroa.0.0.i1044 = load i16, ptr %.sroa.0.0.in.i1043, align 2, !noundef !53
  %.sroa.4.0.i1045 = load i16, ptr %.sroa.4.0.in.i1042, align 2, !noundef !53
  %i.py = getelementptr i8, ptr %i.pi, i64 104
  %.val958 = load ptr, ptr %i.py, align 8, !nonnull !53, !noundef !53
  %i.pz = getelementptr i8, ptr %i.pi, i64 112
  %.val959 = load i64, ptr %i.pz, align 8, !noundef !53
  %i.qa = invoke fastcc noundef nonnull align 8 ptr @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$22make_type_mismatch_err17h3a320aee6bd437e9E"(ptr nonnull %.val958, i64 %.val959, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.po, i64 noundef %i.pp, i16 noundef %.sroa.0.0.i1044, i16 noundef %.sroa.4.0.i1045)
          to label %bb.co unwind label %.loopexit.split-lp1763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qa, ptr %i.qb, align 8
  store i8 12, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cu)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1049" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !71

bb.cp:                                            ; preds = %bb.ci
  %i.qc = load i8, ptr %i.ou, align 8, !range !55, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cu)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1051" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !71

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1051": ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.ce

bb.cq:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  store ptr %i.et, ptr %i.cs, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.es, ptr %i.qd, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.er, ptr %i.qe, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.eq, ptr %i.qf, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store ptr %5, ptr %i.qg, align 8
  invoke fastcc void @"_ZN4core6option15Option$LT$T$GT$6map_or17h36efb71722f9e912E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.mb, ptr noalias noundef align 8 captures(address) dereferenceable(16) @2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cs)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.dc), !inline_history !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.ab

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1049": ; preds = %bb.co, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.bw

bb.cs:                                            ; preds = %bb.bw, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.ab

bb.ct:                                            ; preds = %bb.p
  %i.qh = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.qi = load i8, ptr %i.qh, align 1, !range !55, !noundef !53
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %.critedge764, label %.critedge766

.critedge766:                                     ; preds = %bb.p, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call fastcc void @"_ZN4rhai4eval4expr38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_expr17haed8650a3eaf3411E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.co, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(88) %2, ptr noalias noundef align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gk)
  %i.qk = load i8, ptr %i.co, align 8, !range !68, !noundef !53 ; 2 uses
  %i.ql = icmp eq i8 %i.qk, 12
  br i1 %i.ql, label %._crit_edge1919, label %.lr.ph1918

.lr.ph1918:                                       ; preds = %.critedge766
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.gk, i64 144
  %i.qo = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.qp = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.cu

.critedge764:                                     ; preds = %bb.p, %bb.ct
  %i.qr = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.gk, i64 144 ; 2 uses
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !27060, !noundef !53 ; 3 uses
  %i.qu = icmp ugt i64 %i.qt, 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  %i.qw = load i64, ptr %i.qv, align 8, !alias.scope !27060 ; 2 uses
  %.sink10.i1053 = select i1 %i.qu, i64 %i.qw, i64 %i.qt
  %i.qx = icmp eq i64 %.sink10.i1053, 0
  br i1 %i.qx, label %.preheader, label %.preheader1780

.preheader1780:                                   ; preds = %.critedge764
  %i.qy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  br label %bb.eb

.preheader:                                       ; preds = %.critedge764
  %i.qz = getelementptr inbounds nuw i8, ptr %i.gk, i64 152 ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.gk, i64 154 ; 4 uses
  %i.rb = load i16, ptr %i.qz, align 8, !noundef !53 ; 2 uses
  %i.rc = load i16, ptr %i.ra, align 2, !noundef !53 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27061)
  %i.rd = load i64, ptr %i.ex, align 8, !alias.scope !27061, !noundef !53 ; 6 uses
  %i.re = add i64 %i.rd, 1                        ; 7 uses
  store i64 %i.re, ptr %i.ex, align 8, !alias.scope !27061
  %i.rf = load i64, ptr %i.fa, align 8, !noalias !27061, !noundef !53 ; 6 uses
  %.not.i8141913 = icmp ne i64 %i.rf, 0           ; 2 uses
  %i.rg = icmp ugt i64 %i.re, %i.rf
  %or.cond17451914 = and i1 %.not.i8141913, %i.rg
  br i1 %or.cond17451914, label %._crit_edge1916, label %.lr.ph1915.preheader

.lr.ph1915.preheader:                             ; preds = %.preheader
  %i.rh = getelementptr i8, ptr %1, i64 248
  %i.ri = load ptr, ptr %i.fd, align 8, !noalias !27062, !align !59, !noundef !53 ; 2 uses
  %i.rj = icmp eq ptr %i.ri, null
  br i1 %i.rj, label %.lr.ph1915.preheader.split.us, label %.lr.ph1915

.lr.ph1915.preheader.split.us:                    ; preds = %.lr.ph1915.preheader
  br i1 %.not.i8141913, label %.lr.ph1915.us.preheader, label %.lr.ph1915.us.us

.lr.ph1915.us.preheader:                          ; preds = %.lr.ph1915.preheader.split.us
  %i.rk = zext i64 %i.rf to i128
  %i.rl = add nuw nsw i128 %i.rk, 1
  %i.rm = add i64 %i.rd, 2
  %i.rn = zext i64 %i.rm to i128
  %i.ro = call i128 @llvm.umax.i128(i128 %i.rl, i128 %i.rn)
  %i.rp = trunc i128 %i.ro to i64
  %i.rq = xor i64 %i.rd, -1
  %i.rr = add i64 %i.rq, %i.rp                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.rr, 40
  br i1 %min.iters.check, label %.lr.ph1915.us.preheader2941, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph1915.us.preheader
  %i.rs = zext i64 %i.rf to i128
  %i.rt = add nuw nsw i128 %i.rs, 1
  %i.ru = add i64 %i.rd, 2
  %i.rv = zext i64 %i.ru to i128
  %i.rw = call i128 @llvm.usub.sat.i128(i128 %i.rt, i128 %i.rv) ; 2 uses
  %i.rx = trunc i128 %i.rw to i64
  %i.ry = sub i64 -3, %i.rd
  %i.rz = icmp ult i64 %i.ry, %i.rx
  %i.sa = icmp samesign ugt i128 %i.rw, 18446744073709551615
  %i.sb = or i1 %i.rz, %i.sa
  br i1 %i.sb, label %.lr.ph1915.us.preheader2941, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.sd = getelementptr i8, ptr %i.gk, i64 156
  %bound0 = icmp ult ptr %i.ex, %i.sd
  %bound1 = icmp ult ptr %i.qz, %i.sc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1915.us.preheader2941, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rr, -4                      ; 3 uses
  %i.se = add i64 %i.re, %n.vec
  %i.sf = add i64 %i.rd, 2
  %i.sg = load i16, ptr %i.qz, align 8, !alias.scope !27063, !noundef !53
  %i.sh = load i16, ptr %i.ra, align 2, !alias.scope !27063, !noundef !53
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.si = phi i64 [ %i.sf, %vector.ph ], [ %i.sk, %vector.body ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27064)
  %i.sj = add i64 %i.si, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sk = add i64 %i.si, 4
  %i.sl = icmp eq i64 %index.next, %n.vec
  br i1 %i.sl, label %middle.block, label %vector.body, !llvm.loop !26911

middle.block:                                     ; preds = %vector.body
  store i64 %i.sj, ptr %i.ex, align 8, !alias.scope !27065, !noalias !27063
  %cmp.n = icmp eq i64 %i.rr, %n.vec
  br i1 %cmp.n, label %._crit_edge1916, label %.lr.ph1915.us.preheader2941

.lr.ph1915.us.preheader2941:                      ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph1915.us.preheader, %middle.block
  %.ph = phi i64 [ %i.re, %vector.memcheck ], [ %i.re, %vector.scevcheck ], [ %i.re, %.lr.ph1915.us.preheader ], [ %i.se, %middle.block ]
  br label %.lr.ph1915.us

.lr.ph1915.us.us:                                 ; preds = %.lr.ph1915.preheader.split.us, %.lr.ph1915.us.us
  call void @llvm.experimental.noalias.scope.decl(metadata !27064)
  br label %.lr.ph1915.us.us

.lr.ph1915.us:                                    ; preds = %.lr.ph1915.us.preheader2941, %.lr.ph1915.us
  %i.sm = phi i64 [ %i.sp, %.lr.ph1915.us ], [ %.ph, %.lr.ph1915.us.preheader2941 ]
  %i.sn = load i16, ptr %i.qz, align 8, !noundef !53
  %i.so = load i16, ptr %i.ra, align 2, !noundef !53
  call void @llvm.experimental.noalias.scope.decl(metadata !27064)
  %i.sp = add i64 %i.sm, 1                        ; 3 uses
  store i64 %i.sp, ptr %i.ex, align 8, !alias.scope !27064
  %i.sq = icmp ugt i64 %i.sp, %i.rf
  br i1 %i.sq, label %._crit_edge1916, label %.lr.ph1915.us, !llvm.loop !26913

._crit_edge1919:                                  ; preds = %.backedge, %.critedge766
  %i.sr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !nonnull !53, !align !54, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ss, ptr %i.st, align 8
  store i8 12, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.dr

bb.cu:                                            ; preds = %.lr.ph1918, %.backedge
  %i.su = phi i8 [ %i.qk, %.lr.ph1918 ], [ %i.tz, %.backedge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4269.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4539.0..sroa_idx, i64 7, i1 false)
  %.sroa.5540.0.copyload = load ptr, ptr %.sroa.5540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  store i8 %i.su, ptr %i.cp, align 8
  store ptr %.sroa.5540.0.copyload, ptr %.sroa.5270.0..sroa_idx, align 8
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cp)
          to label %bb.cv unwind label %.loopexit.split-lp1776.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1776.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cu, %bb.da
  %lpad.loopexit.split-lp2930 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cp)
          to label %common.resume unwind label %bb.as, !inline_history !71

bb.cv:                                            ; preds = %bb.cu
  %i.sv = load ptr, ptr %i.cq, align 8, !noundef !53 ; 2 uses
  %.not736.not.not = icmp eq ptr %i.sv, null
  br i1 %.not736.not.not, label %bb.dc, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sw = load i64, ptr %i.qm, align 8, !noundef !53
  %i.sx = load i8, ptr %i.gk, align 8, !range !97, !alias.scope !27066, !noundef !53
  switch i8 %i.sx, label %default.unreachable [
    i8 0, label %bb.cz
    i8 1, label %bb.cz
    i8 2, label %bb.cz
    i8 3, label %bb.cx
    i8 4, label %bb.cz
    i8 5, label %bb.cz
    i8 6, label %bb.cz
    i8 7, label %bb.cz
    i8 8, label %bb.cz
    i8 9, label %bb.cz
    i8 10, label %bb.cz
    i8 11, label %bb.cz
    i8 12, label %bb.cz
    i8 13, label %bb.cz
    i8 14, label %bb.cy
    i8 15, label %bb.cz
    i8 16, label %bb.cz
    i8 17, label %bb.cz
    i8 18, label %bb.cz
    i8 19, label %bb.cz
    i8 20, label %bb.cz
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.sz = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw
  %i.ta = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !alias.scope !27066, !nonnull !53, !align !54, !noundef !53 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 136
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 138
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %.sroa.01.0.i1057 = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.te = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx
  %.sroa.4.0.in.i1058 = phi ptr [ %i.te, %bb.cz ], [ %i.sz, %bb.cx ], [ %i.td, %bb.cy ]
  %.sroa.0.0.in.i1059 = phi ptr [ %.sroa.01.0.i1057, %bb.cz ], [ %i.sy, %bb.cx ], [ %i.tc, %bb.cy ]
  %.sroa.0.0.i1060 = load i16, ptr %.sroa.0.0.in.i1059, align 2, !noundef !53
  %.sroa.4.0.i1061 = load i16, ptr %.sroa.4.0.in.i1058, align 2, !noundef !53
  %i.tf = getelementptr i8, ptr %1, i64 104
  %.val956 = load ptr, ptr %i.tf, align 8, !nonnull !53, !noundef !53
  %i.tg = getelementptr i8, ptr %1, i64 112
  %.val957 = load i64, ptr %i.tg, align 8, !noundef !53
  %i.th = invoke fastcc noundef nonnull align 8 ptr @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$22make_type_mismatch_err17h3a320aee6bd437e9E"(ptr nonnull %.val956, i64 %.val957, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.sv, i64 noundef %i.sw, i16 noundef %.sroa.0.0.i1060, i16 noundef %.sroa.4.0.i1061)
          to label %bb.db unwind label %.loopexit.split-lp1776.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.th, ptr %i.ti, align 8
  store i8 12, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cp), !inline_history !71
  br label %bb.dr

bb.dc:                                            ; preds = %bb.cv
  %i.tj = load i8, ptr %i.qm, align 8, !range !55, !noundef !53
  %i.tk = trunc nuw i8 %i.tj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cp), !inline_history !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br i1 %i.tk, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.ab

bb.de:                                            ; preds = %bb.dc
  %i.tl = load i64, ptr %i.qn, align 8, !alias.scope !27067, !noundef !53 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 8                   ; 2 uses
  %i.tn = load i64, ptr %i.qo, align 8, !alias.scope !27067
  %.sink10.i1065 = select i1 %i.tm, i64 %i.tn, i64 %i.tl ; 2 uses
  %i.to = icmp eq i64 %.sink10.i1065, 0
  br i1 %i.to, label %.backedge, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.tp = load ptr, ptr %i.qp, align 8, !alias.scope !27067, !nonnull !53
  %.sink11.i1067 = select i1 %i.tm, ptr %i.tp, ptr %i.qp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$15eval_stmt_block17h3c746e72af9baf26E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cn, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(88) %2, ptr noalias noundef nonnull align 8 dereferenceable(200) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1067, i64 noundef %.sink10.i1065, i1 noundef zeroext true)
  %i.tq = load i8, ptr %i.cn, align 8, !range !68, !noundef !53
  %i.tr = icmp eq i8 %i.tq, 12
  br i1 %i.tr, label %bb.dg, label %"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit"

bb.dg:                                            ; preds = %bb.df
  %i.ts = load ptr, ptr %i.qq, align 8, !nonnull !53, !align !54, !noundef !53 ; 11 uses
  %i.tt = load i8, ptr %i.ts, align 8, !range !77, !noundef !53
  %i.tu = icmp eq i8 %i.tt, 32
  br i1 %i.tu, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  %i.tw = load i8, ptr %i.tv, align 1, !range !55, !noundef !53
  %i.tx = trunc nuw i8 %i.tw to i1
  br i1 %i.tx, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %bb.dh
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef align 8 dereferenceable(64) %i.ts)
          to label %.thread1490 unwind label %bb.dj, !noalias !27068, !inline_history !79

bb.dj:                                            ; preds = %bb.di
  %i.ty = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ts, i64 noundef 64, i64 noundef 8) #71, !noalias !27068, !inline_history !79
  br label %common.resume

.thread1490:                                      ; preds = %bb.di
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ts, i64 noundef 64, i64 noundef 8) #71, !noalias !27068, !inline_history !79
  br label %bb.dk

bb.dk:                                            ; preds = %.thread1490, %"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %.backedge

.backedge:                                        ; preds = %bb.dk, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call fastcc void @"_ZN4rhai4eval4expr38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_expr17haed8650a3eaf3411E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.co, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(88) %2, ptr noalias noundef align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gk)
  %i.tz = load i8, ptr %i.co, align 8, !range !68, !noundef !53 ; 2 uses
  %i.ua = icmp eq i8 %i.tz, 12
  br i1 %i.ua, label %._crit_edge1919, label %bb.cu

"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit": ; preds = %bb.df
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cn), !inline_history !71
end_hunk_0
