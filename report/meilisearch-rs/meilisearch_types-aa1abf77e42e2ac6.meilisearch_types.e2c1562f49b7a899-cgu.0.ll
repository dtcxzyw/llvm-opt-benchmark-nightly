Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11038
inline.NumDeleted: 4506
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN17meilisearch_types16document_formats11read_ndjson17hcca8eafe67f38897E:bb.a

"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hd4ec8b2d1f8abc0bE.exit.i.i.i.i": ; preds = %.noexc54.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$5entry17h2c107032051958a3E.exit.i.i.i.i"
  %i.pp = phi i64 [ %i.pm, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$5entry17h2c107032051958a3E.exit.i.i.i.i" ], [ %.pre.i.i.i.i.i, %.noexc54.i.i.i ]
  %i.pq = load ptr, ptr %i.aa, align 8, !alias.scope !5723, !noalias !5724, !nonnull !21, !noundef !21
  %i.pr = getelementptr inbounds nuw [32 x i8], ptr %i.pq, i64 %i.pp ; 4 uses
  store ptr %.sroa.03.0.ph.i.i.i.i, ptr %i.pr, align 8, !noalias !5725
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5726
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store ptr %i.lq, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !5726
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store i64 %i.lp, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !5557
  %i.ps = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !alias.scope !5723, !noalias !5724, !noundef !21
  %i.pt = add i64 %i.ps, 1
  store i64 %i.pt, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !alias.scope !5723, !noalias !5724
  call void @llvm.experimental.noalias.scope.decl(metadata !5727)
  %.val.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !5728, !noalias !5729, !nonnull !21, !noundef !21 ; 8 uses
  %.val10.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !5728, !noalias !5729, !noundef !21 ; 4 uses
  %.sroa.0.07.i.i.i.i.i.i = and i64 %.val10.i.i.i.i.i, %i.oo ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i = load <16 x i8>, ptr %i.pu, align 1, !noalias !5730
  %i.pv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i, zeroinitializer
  %i.pw = bitcast <16 x i1> %i.pv to i16          ; 2 uses
  %.not.i9.i.i.i.i.i.i = icmp eq i16 %i.pw, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i.i, label %._crit_edge.i.i2.i.i.i.i, !prof !69

.lr.ph.i.i5.i.i.i.i:                              ; preds = %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hd4ec8b2d1f8abc0bE.exit.i.i.i.i", %.lr.ph.i.i5.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i5.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hd4ec8b2d1f8abc0bE.exit.i.i.i.i" ]
  %i.px = phi i64 [ %i.py, %.lr.ph.i.i5.i.i.i.i ], [ 0, %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hd4ec8b2d1f8abc0bE.exit.i.i.i.i" ]
  %i.py = add i64 %i.px, 16                       ; 2 uses
  %i.pz = add i64 %i.py, %.sroa.0.010.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = and i64 %i.pz, %.val10.i.i.i.i.i ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i.i = load <16 x i8>, ptr %i.qa, align 1, !noalias !5730
  %i.qb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i.i, zeroinitializer
  %i.qc = bitcast <16 x i1> %i.qb to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.qc, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i.i, label %._crit_edge.i.i2.i.i.i.i, !prof !70

._crit_edge.i.i2.i.i.i.i:                         ; preds = %.lr.ph.i.i5.i.i.i.i, %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hd4ec8b2d1f8abc0bE.exit.i.i.i.i"
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i.i, %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hd4ec8b2d1f8abc0bE.exit.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i5.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.pw, %"_ZN7bumpalo11collections3vec12Vec$LT$T$GT$4push17hd4ec8b2d1f8abc0bE.exit.i.i.i.i" ], [ %i.qc, %.lr.ph.i.i5.i.i.i.i ]
  %i.qd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.qe = zext nneg i16 %i.qd to i64
  %i.qf = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, %i.qe
  %i.qg = and i64 %i.qf, %.val10.i.i.i.i.i        ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !noalias !5731, !noundef !21 ; 2 uses
  %i.qj = icmp sgt i8 %i.qi, -1
  br i1 %i.qj, label %bb.dz, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i.i.i.i.i, !prof !23

bb.dz:                                            ; preds = %._crit_edge.i.i2.i.i.i.i
  %.val2.i.i.i3.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i, align 16, !noalias !5731
  %i.qk = icmp slt <16 x i8> %.val2.i.i.i3.i.i.i.i, zeroinitializer
  %i.ql = bitcast <16 x i1> %i.qk to i16          ; 2 uses
  %i.qm = icmp ne i16 %i.ql, 0
  call void @llvm.assume(i1 %i.qm)
  %i.qn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ql, i1 true)
  %i.qo = zext nneg i16 %i.qn to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.qo
  %.pre.i4.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !noalias !5731
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i.i.i.i.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i.i.i.i.i: ; preds = %bb.dz, %._crit_edge.i.i2.i.i.i.i
  %i.qp = phi i8 [ %.pre.i4.i.i.i.i, %bb.dz ], [ %i.qi, %._crit_edge.i.i2.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i.i.i.i = phi i64 [ %i.qo, %bb.dz ], [ %i.qg, %._crit_edge.i.i2.i.i.i.i ] ; 3 uses
  %i.qq = load i64, ptr %i.bq, align 8, !alias.scope !5728, !noalias !5729, !noundef !21 ; 2 uses
  %i.qr = icmp eq i64 %i.qq, 0
  %i.qs = trunc i8 %i.qp to i1
  %or.cond.i.i.i.i.i = and i1 %i.qr, %i.qs
  br i1 %or.cond.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h77561df41ee62484E.exit.i.i.i.i.i", label %bb.ea, !prof !56

bb.ea:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i.i.i.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5732)
  %i.qu = and i8 %i.qp, 1
  %i.qv = zext nneg i8 %i.qu to i64
  %i.qw = sub i64 %i.qq, %i.qv
  store i64 %i.qw, ptr %i.bq, align 8, !alias.scope !5733, !noalias !5734
  %i.qx = add i64 %.sroa.0.0.i5.i.i.i.i.i.i, -16
  %i.qy = and i64 %i.qx, %.val10.i.i.i.i.i
  store i8 %i.oq, ptr %i.qt, align 1, !noalias !5735
  %i.qz = getelementptr i8, ptr %.val.i.i.i.i.i, i64 %i.qy
  %i.ra = getelementptr i8, ptr %i.qz, i64 16
  store i8 %i.oq, ptr %i.ra, align 1, !noalias !5735
  %i.rb = load i64, ptr %i.br, align 8, !alias.scope !5733, !noalias !5734, !noundef !21
  %i.rc = add i64 %i.rb, 1
  store i64 %i.rc, ptr %i.br, align 8, !alias.scope !5733, !noalias !5734
  %i.rd = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i.i
  %i.re = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i, i64 %i.rd ; 3 uses
  %i.rf = getelementptr inbounds i8, ptr %i.re, i64 -24
  store ptr %.sroa.03.0.ph.i.i.i.i, ptr %i.rf, align 8, !noalias !5736
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.re, i64 -16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !5736
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.re, i64 -8
  store i64 %i.pm, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !5736
  br label %"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h8ae271ba42339a46E.exit.i.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h77561df41ee62484E.exit.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i.i.i.i.i
  %i.rg = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3174008c6fba5935E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bp, i1 noundef zeroext true)
          to label %.noexc55.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !5557 ; 0 uses

.noexc55.i.i.i:                                   ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h77561df41ee62484E.exit.i.i.i.i.i"
  %.val11.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !5728, !noalias !5729 ; 4 uses
  %.val12.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !5728, !noalias !5729, !noundef !21 ; 2 uses
  %i.rh = call fastcc noundef i64 @_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E(ptr %.val11.i.i.i.i.i, i64 %.val12.i.i.i.i.i, i64 noundef %i.oo), !noalias !5737 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5738)
  %i.ri = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i, i64 %i.rh ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !noalias !5739, !noundef !21
  %i.rk = and i8 %i.rj, 1
  %i.rl = zext nneg i8 %i.rk to i64
  %i.rm = add i64 %i.rh, -16
  %i.rn = and i64 %i.rm, %.val12.i.i.i.i.i
  store i8 %i.oq, ptr %i.ri, align 1, !noalias !5739
  %i.ro = getelementptr i8, ptr %.val11.i.i.i.i.i, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 16
  store i8 %i.oq, ptr %i.rp, align 1, !noalias !5739
  %i.rq = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !5738, !noalias !5740
  %i.rr = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.rl, i64 0
  %i.rs = sub <2 x i64> %i.rq, %i.rr
  store <2 x i64> %i.rs, ptr %i.bq, align 8, !alias.scope !5738, !noalias !5740
  %i.rt = sub nsw i64 0, %i.rh
  %i.ru = getelementptr inbounds [24 x i8], ptr %.val11.i.i.i.i.i, i64 %i.rt ; 3 uses
  %i.rv = getelementptr inbounds i8, ptr %i.ru, i64 -24
  store ptr %.sroa.03.0.ph.i.i.i.i, ptr %i.rv, align 8, !noalias !5741
  %.sroa.5.0..sroa_idx63.i.i.i = getelementptr inbounds i8, ptr %i.ru, i64 -16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx63.i.i.i, align 8, !noalias !5741
  %.sroa.6.0..sroa_idx65.i.i.i = getelementptr inbounds i8, ptr %i.ru, i64 -8
  store i64 %i.pm, ptr %.sroa.6.0..sroa_idx65.i.i.i, align 8, !noalias !5741
  br label %"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h8ae271ba42339a46E.exit.i.i.i"

bb.eb:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hbe30a55e07d6c123E.exit.i.i.i.i.i.i"
  %i.rw = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !alias.scope !5708, !noalias !5722, !noundef !21
  %i.rx = getelementptr inbounds i8, ptr %i.pb, i64 -8
  %i.ry = load i64, ptr %i.rx, align 8, !noalias !5742, !noundef !21 ; 2 uses
  %i.rz = icmp ult i64 %i.ry, %i.rw
  br i1 %i.rz, label %bb.ed, label %bb.ec, !prof !49

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @926) #57
          to label %.noexc56.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp, !noalias !5557

.noexc56.i.i.i:                                   ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.eb
  %i.sa = load ptr, ptr %i.aa, align 8, !alias.scope !5708, !noalias !5722, !nonnull !21, !noundef !21
  %i.sb = getelementptr inbounds nuw [32 x i8], ptr %i.sa, i64 %i.ry ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  store ptr %i.lq, ptr %i.sc, align 8, !noalias !5742
  store i64 %i.lp, ptr %i.sd, align 8, !noalias !5743
  br label %"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h8ae271ba42339a46E.exit.i.i.i"

"_ZN20bumparaw_collections3map15RawMap$LT$S$GT$6insert17h8ae271ba42339a46E.exit.i.i.i": ; preds = %bb.ed, %.noexc55.i.i.i, %bb.ea
  %i.se = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5744, !noalias !5560, !noundef !21 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5745, !noalias !5565 ; 2 uses
  %i.sf = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.se
  br i1 %i.sf, label %.lr.ph.i.i.i.i.i.i, label %.loopexit23.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.noexc45.i.i.i, %.noexc41.i.i.i, %.noexc38.i.i.i, %.noexc37.i.i.i, %.noexc50.i.i.i, %.noexc48.i.i.i, %.noexc47.i.i.i, %.noexc46.i.i.i, %.noexc44.i.i.i, %.noexc43.i.i.i, %.noexc40.i.i.i, %.noexc36.i.i.i, %.noexc35.i.i.i, %.noexc34.i.i.i, %.noexc33.i.i.i, %.noexc32.i.i.i, %.noexc31.i.i.i, %.noexc30.i.i.i, %.noexc29.i.i.i, %.noexc28.i.i.i, %bb.az
  %.sroa.7.0.ph.in.sink.i.i.i = phi ptr [ %.sroa.8.0.ph.i.i.i, %bb.az ], [ %i.gf, %.noexc29.i.i.i ], [ %i.ge, %.noexc28.i.i.i ], [ %i.hg, %.noexc31.i.i.i ], [ %i.ii, %.noexc36.i.i.i ], [ %i.ks, %.noexc47.i.i.i ], [ %i.gu, %.noexc30.i.i.i ], [ %i.kh, %.noexc44.i.i.i ], [ %i.jr, %.noexc43.i.i.i ], [ %i.kk, %.noexc46.i.i.i ], [ %i.kz, %.noexc50.i.i.i ], [ %i.ih, %.noexc35.i.i.i ], [ %i.ht, %.noexc34.i.i.i ], [ %i.hh, %.noexc32.i.i.i ], [ %i.ku, %.noexc48.i.i.i ], [ %i.hs, %.noexc33.i.i.i ], [ %i.iy, %.noexc40.i.i.i ], [ %i.im, %.noexc38.i.i.i ], [ %i.iz, %.noexc41.i.i.i ], [ %i.ik, %.noexc37.i.i.i ], [ %i.kj, %.noexc45.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5746)
  call void @llvm.experimental.noalias.scope.decl(metadata !5747)
  call void @llvm.experimental.noalias.scope.decl(metadata !5748)
  call void @llvm.experimental.noalias.scope.decl(metadata !5749)
  call void @llvm.experimental.noalias.scope.decl(metadata !5750)
  %i.sg = load i64, ptr %.sroa.09.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !5751, !noalias !5556, !noundef !21 ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i", label %bb.ee

bb.ee:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i
  %i.si = load ptr, ptr %.sroa.09.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !5751, !noalias !5556, !nonnull !21, !align !27, !noundef !21
  %i.sj = load ptr, ptr %i.aa, align 8, !alias.scope !5751, !noalias !5556, !nonnull !21, !noundef !21
  %i.sk = getelementptr i8, ptr %i.si, i64 16
  %.val.i.i.i1.i.i.i.i.i = load ptr, ptr %i.sk, align 8, !noalias !5752, !nonnull !21, !noundef !21
  %i.sl = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i.i.i.i, i64 32 ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !noalias !5752, !nonnull !21, !noundef !21 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.sj
  br i1 %i.sn, label %bb.ef, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i"

bb.ef:                                            ; preds = %bb.ee
  %i.so = shl i64 %i.sg, 5
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.so
  store ptr %i.sp, ptr %i.sl, align 8, !noalias !5752
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i": ; preds = %bb.ef, %bb.ee, %.loopexit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5753)
  call void @llvm.experimental.noalias.scope.decl(metadata !5754)
  call void @llvm.experimental.noalias.scope.decl(metadata !5755)
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !5756, !noalias !5556, !noundef !21 ; 3 uses
  %i.sq = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.sq, label %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i"
  %.val2.i.i.i.i57.i.i.i = load ptr, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8, !alias.scope !5756, !noalias !5556, !nonnull !21, !noundef !21
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !5756, !noalias !5556, !nonnull !21, !noundef !21
  %i.sr = mul i64 %.val1.i.i.i.i.i.i.i, 24
  %i.ss = and i64 %i.sr, -16                      ; 2 uses
  %i.st = sub i64 -32, %i.ss
  %i.su = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.st
  %i.sv = getelementptr i8, ptr %.val2.i.i.i.i57.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sv, align 8, !noalias !5757, !nonnull !21, !noundef !21
  %i.sw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !noalias !5757, !nonnull !21, !noundef !21 ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.su
  br i1 %i.sy, label %bb.eg, label %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i"

bb.eg:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i
  %2 = getelementptr i8, ptr %i.sx, i64 %.val1.i.i.i.i.i.i.i
  %3 = getelementptr i8, ptr %2, i64 %i.ss
  %i.sz = getelementptr i8, ptr %3, i64 49
  store ptr %i.sz, ptr %i.sw, align 8, !noalias !5757
  br label %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i"

"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i": ; preds = %bb.eg, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i", %bb.dq
  %.sroa.8.i.i.sroa.9.0 = phi i64 [ undef, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i" ], [ undef, %bb.eg ], [ undef, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.8.i.i.sroa.9.0.copyload213, %bb.dq ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ null, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i" ], [ null, %bb.eg ], [ null, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.032.0.copyload33.i.i, %bb.dq ] ; 5 uses
  %.sroa.734.0.i.i = phi ptr [ %.sroa.7.0.ph.in.sink.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i" ], [ %.sroa.7.0.ph.in.sink.i.i.i, %bb.eg ], [ %.sroa.7.0.ph.in.sink.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.734.0.copyload36.i.i, %bb.dq ] ; 8 uses
  %i.ta = phi <2 x i64> [ undef, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i" ], [ undef, %bb.eg ], [ undef, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i ], [ %i.lo, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5556
  %i.tb = load i8, ptr %i.bl, align 8, !range !35, !alias.scope !5546, !noalias !5553, !noundef !21
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i"
  %i.td = load i8, ptr %i.bk, align 1, !alias.scope !5546, !noalias !5553, !noundef !21
  %i.te = add i8 %i.td, 1
  store i8 %i.te, ptr %i.bk, align 1, !alias.scope !5546, !noalias !5553
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5547
  store ptr %.sroa.032.0.i.i, ptr %i.ab, align 8, !noalias !5547
  store ptr %.sroa.734.0.i.i, ptr %.sroa.734.0..sroa_idx.i.i, align 8, !noalias !5547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.sroa.0, i64 32, i1 false), !noalias !5547
  store <2 x i64> %i.ta, ptr %.sroa.8.i.i.sroa.7.0..sroa.8.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !5547
  store i64 %.sroa.8.i.i.sroa.9.0, ptr %.sroa.8.i.i.sroa.9.0..sroa.8.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !5547
  call void @llvm.experimental.noalias.scope.decl(metadata !5758)
  call void @llvm.experimental.noalias.scope.decl(metadata !5759)
  %i.tf = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5760, !noalias !5761, !noundef !21 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5762, !noalias !5763 ; 2 uses
  %i.tg = icmp ult i64 %.promoted.i.i.i.i, %i.tf
  %i.th = inttoptr i64 %.sroa.8.i.i.sroa.9.0 to ptr ; 3 uses
  br i1 %i.tg, label %.lr.ph.i.i.i.i, label %.loopexit.i26.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ei
  %i.ti = load ptr, ptr %i.bj, align 8, !alias.scope !5760, !noalias !5761, !nonnull !21, !align !37, !noundef !21
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ek, %.lr.ph.i.i.i.i
  %i.tj = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.tm, %bb.ek ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5764)
  call void @llvm.experimental.noalias.scope.decl(metadata !5765)
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !noalias !5766, !noundef !21
  switch i8 %i.tl, label %bb.el [
    i8 32, label %bb.ek
    i8 10, label %bb.ek
    i8 9, label %bb.ek
    i8 13, label %bb.ek
    i8 125, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.thread.i.i"
    i8 44, label %bb.em
  ], !prof !5571

bb.ek:                                            ; preds = %bb.ej, %bb.ej, %bb.ej, %bb.ej
  %i.tm = add i64 %i.tj, 1                        ; 3 uses
  store i64 %i.tm, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5767, !noalias !5763
  %exitcond.not.i.i.i.i = icmp eq i64 %i.tm, %i.tf
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i26.i.i, label %bb.ej

.loopexit.i26.i.i:                                ; preds = %bb.ek, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5768
  store i64 3, ptr %i.a, align 8, !noalias !5768
  %i.tn = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i.i unwind label %bb.en, !noalias !5769

.noexc.i.i:                                       ; preds = %.loopexit.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5768
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5768
  store i64 22, ptr %i.b, align 8, !noalias !5768
  %i.to = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc27.i.i unwind label %bb.en, !noalias !5769

.noexc27.i.i:                                     ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5768
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"

bb.em:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5768
  store i64 21, ptr %i.c, align 8, !noalias !5768
  %i.tp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc28.i.i unwind label %bb.en, !noalias !5769

.noexc28.i.i:                                     ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5768
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"

bb.en:                                            ; preds = %bb.em, %bb.el, %.loopexit.i26.i.i
  %i.tq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr142drop_in_place$LT$core..result..Result$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$C$serde_json..error..Error$GT$$GT$17h520ff614fccb9566E"(ptr noalias noundef align 8 dereferenceable(72) %i.ab) #55
          to label %.body.i unwind label %bb.et, !noalias !5769

"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i": ; preds = %.noexc28.i.i, %.noexc27.i.i, %.noexc.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.to, %.noexc27.i.i ], [ %i.tn, %.noexc.i.i ], [ %i.tp, %.noexc28.i.i ] ; 9 uses
  %.sroa.12.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5547 ; 2 uses
  %.sroa.14395.0.copyload.i.i = load ptr, ptr %.sroa.14395.0..sroa_idx396.i.i, align 8, !noalias !5547 ; 2 uses
  %.sroa.15.0.copyload.i.i = load i64, ptr %.sroa.15.0..sroa_idx398.i.i, align 8, !noalias !5547 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5547
  %i.tr = icmp eq ptr %.sroa.032.0.i.i, null
  br i1 %i.tr, label %bb.eo, label %bb.ep

"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.thread.i.i": ; preds = %bb.ej
  %i.ts = add i64 %i.tj, 1
  store i64 %i.ts, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5770, !noalias !5553
  %.sroa.12.0.copyload392.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5547
  %.sroa.14395.0.copyload397.i.i = load ptr, ptr %.sroa.14395.0..sroa_idx396.i.i, align 8, !noalias !5547
  %.sroa.15.0.copyload399.i.i = load i64, ptr %.sroa.15.0..sroa_idx398.i.i, align 8, !noalias !5547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5547
  %i.tt = icmp eq ptr %.sroa.032.0.i.i, null
  br i1 %i.tt, label %.thread55.i.i, label %bb.ex

.thread55.i.i:                                    ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.thread.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.734.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.0)
  br label %.noexc12.i

bb.eo:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.734.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !5771)
  call void @llvm.experimental.noalias.scope.decl(metadata !5772)
  %i.tu = load i64, ptr %.sroa.0.0.i.i.i, align 8, !range !67, !alias.scope !5773, !noalias !5774, !noundef !21
  switch i64 %i.tu, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i" [
    i64 0, label %bb.eu
    i64 1, label %bb.ev
  ]

bb.ep:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.0)
  %i.tv = icmp eq i64 %.sroa.12.0.copyload.i.i, 0
  br i1 %i.tv, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.734.0.i.i) ]
  %i.tw = getelementptr i8, ptr %.sroa.734.0.i.i, i64 16
  %.val.i.i.i1.i.i.i.i = load ptr, ptr %i.tw, align 8, !noalias !5775, !nonnull !21, !noundef !21
  %i.tx = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i.i.i, i64 32 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !noalias !5775, !nonnull !21, !noundef !21 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %.sroa.032.0.i.i
  br i1 %i.tz, label %bb.er, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i"

bb.er:                                            ; preds = %bb.eq
  %i.ua = shl i64 %.sroa.12.0.copyload.i.i, 5
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.ua
  store ptr %i.ub, ptr %i.tx, align 8, !noalias !5775
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i": ; preds = %bb.er, %bb.eq, %bb.ep
  %i.uc = icmp eq i64 %.sroa.15.0.copyload.i.i, 0
  br i1 %i.uc, label %.noexc12.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.th) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14395.0.copyload.i.i) ]
  %i.ud = mul i64 %.sroa.15.0.copyload.i.i, 24
  %i.ue = and i64 %i.ud, -16                      ; 2 uses
  %i.uf = sub i64 -32, %i.ue
  %i.ug = getelementptr inbounds i8, ptr %.sroa.14395.0.copyload.i.i, i64 %i.uf
  %i.uh = getelementptr i8, ptr %i.th, i64 16
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.uh, align 8, !noalias !5776, !nonnull !21, !noundef !21
  %i.ui = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8, !noalias !5776, !nonnull !21, !noundef !21 ; 2 uses
  %i.uk = icmp eq ptr %i.uj, %i.ug
  br i1 %i.uk, label %bb.es, label %.noexc12.i

bb.es:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i
  %4 = getelementptr i8, ptr %i.uj, i64 %.sroa.15.0.copyload.i.i
  %5 = getelementptr i8, ptr %4, i64 %i.ue
  %i.ul = getelementptr i8, ptr %5, i64 49
  store ptr %i.ul, ptr %i.ui, align 8, !noalias !5776
  br label %.noexc12.i

bb.et:                                            ; preds = %bb.en
  %i.um = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !5769
  unreachable

bb.eu:                                            ; preds = %bb.eo
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  %.val1.i.i.i.i29.i.i = load i64, ptr %i.un, align 8, !alias.scope !5773, !noalias !5774, !noundef !21 ; 2 uses
  %i.uo = icmp eq i64 %.val1.i.i.i.i29.i.i, 0
  br i1 %i.uo, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.eu
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %.val.i.i.i.i30.i.i = load ptr, ptr %i.up, align 8, !alias.scope !5773, !noalias !5774, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i30.i.i, i64 noundef %.val1.i.i.i.i29.i.i, i64 noundef 1) #52, !noalias !5777
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i"

bb.ev:                                            ; preds = %bb.eo
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h83b702f883e6a7bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.uq)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i" unwind label %bb.ew, !noalias !5774

bb.ew:                                            ; preds = %bb.ev
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i.i, i64 noundef 40, i64 noundef 8) #52, !noalias !5774
  br label %.body.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i": ; preds = %bb.ev, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.eu, %bb.eo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i.i, i64 noundef 40, i64 noundef 8) #52, !noalias !5774
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i", %bb.es, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i", %.thread55.i.i, %bb.ah
  %.sroa.9.2.i.i = phi ptr [ %.sroa.734.0.i.i, %.thread55.i.i ], [ %i.ej, %bb.ah ], [ %.sroa.734.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i" ], [ %.sroa.0.0.i.i.i, %bb.es ], [ %.sroa.0.0.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2.i.i) ]
  %i.us = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h75c4fc45eaf7d391E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ae)
          to label %.noexc14.i unwind label %bb.ey, !noalias !5552

bb.ex:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.0)
  br label %.noexc14.i

bb.ey:                                            ; preds = %.noexc12.i, %bb.ah, %.loopexit.i.i
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ey, %bb.ew, %bb.en, %.loopexit.split-lp.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ut, %bb.ey ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.ur, %bb.ew ], [ %i.tq, %bb.en ] ; 2 uses
  %.val10.i = load i64, ptr %i.ae, align 8, !noalias !5545 ; 2 uses
  %i.uu = icmp eq i64 %.val10.i, 0
  br i1 %i.uu, label %.body, label %bb.ez

bb.ez:                                            ; preds = %.body.i
  %.val11.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !5545, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef %.val10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5552
  br label %.body

.noexc14.i:                                       ; preds = %.noexc12.i, %bb.ex, %.noexc.i
  %.sroa.18.0 = phi ptr [ undef, %.noexc.i ], [ %i.th, %bb.ex ], [ undef, %.noexc12.i ] ; 2 uses
  %.sroa.15.0 = phi i64 [ undef, %.noexc.i ], [ %.sroa.15.0.copyload399.i.i, %bb.ex ], [ undef, %.noexc12.i ] ; 3 uses
  %.sroa.14.0 = phi ptr [ undef, %.noexc.i ], [ %.sroa.14395.0.copyload397.i.i, %bb.ex ], [ undef, %.noexc12.i ] ; 2 uses
  %.sroa.12119.0 = phi i64 [ undef, %.noexc.i ], [ %.sroa.12.0.copyload392.i.i, %bb.ex ], [ undef, %.noexc12.i ] ; 2 uses
  %.sroa.7118.0 = phi ptr [ %i.ei, %.noexc.i ], [ %.sroa.734.0.i.i, %bb.ex ], [ %i.us, %.noexc12.i ] ; 4 uses
  %.sroa.0117.0 = phi ptr [ null, %.noexc.i ], [ %.sroa.032.0.i.i, %bb.ex ], [ null, %.noexc12.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5545
  %.val.i89 = load i64, ptr %i.ae, align 8, !noalias !5545 ; 2 uses
  %i.uv = icmp eq i64 %.val.i89, 0
  br i1 %i.uv, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.noexc14.i
  %.val9.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !5545, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val.i89, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5552
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %.noexc14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5545
  %i.uw = icmp eq ptr %.sroa.0117.0, null
  br i1 %i.uw, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.ux = load i64, ptr %.sroa.7118.0, align 8, !range !67, !noalias !5778, !noundef !21
  %i.uy = icmp eq i64 %i.ux, 0
  br i1 %i.uy, label %bb.fd, label %bb.fi

bb.fd:                                            ; preds = %bb.fc
  %i.uz = invoke noundef nonnull ptr @"_ZN10serde_json5error103_$LT$impl$u20$core..convert..From$LT$serde_json..error..Error$GT$$u20$for$u20$std..io..error..Error$GT$4from17hc8f9273a0fb314abE"(ptr noalias noundef nonnull align 8 %.sroa.7118.0)
          to label %bb.fi unwind label %bb.ac

bb.fe:                                            ; preds = %bb.fb
  %i.va = icmp eq i64 %.sroa.12119.0, 0
  br i1 %i.va, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.vb = getelementptr i8, ptr %.sroa.7118.0, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.vb, align 8, !noalias !5779, !nonnull !21, !noundef !21
  %i.vc = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !noalias !5779, !nonnull !21, !noundef !21 ; 2 uses
  %i.ve = icmp eq ptr %i.vd, %.sroa.0117.0
  br i1 %i.ve, label %bb.fg, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"

bb.fg:                                            ; preds = %bb.ff
  %i.vf = shl i64 %.sroa.12119.0, 5
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vf
  store ptr %i.vg, ptr %i.vc, align 8, !noalias !5779
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i": ; preds = %bb.fg, %bb.ff, %bb.fe
  %i.vh = icmp eq i64 %.sroa.15.0, 0
  br i1 %i.vh, label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  %i.vi = mul i64 %.sroa.15.0, 24
  %i.vj = and i64 %i.vi, -16                      ; 2 uses
  %i.vk = sub i64 -32, %i.vj
  %i.vl = getelementptr inbounds i8, ptr %.sroa.14.0, i64 %i.vk
  %i.vm = getelementptr i8, ptr %.sroa.18.0, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.vm, align 8, !noalias !5780, !nonnull !21, !noundef !21
  %i.vn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !noalias !5780, !nonnull !21, !noundef !21 ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.vl
  br i1 %i.vp, label %bb.fh, label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit"

bb.fh:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i
  %6 = getelementptr i8, ptr %i.vo, i64 %.sroa.15.0
  %7 = getelementptr i8, ptr %6, i64 %i.vj
  %i.vq = getelementptr i8, ptr %7, i64 49
  store ptr %i.vq, ptr %i.vn, align 8, !noalias !5780
  br label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit"

"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit": ; preds = %bb.fh, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"
  %i.vr = add i64 %.sroa.019.0490, 1              ; 2 uses
  %i.vs = load i64, ptr %.sroa.0102.sroa.5.0..sroa_idx, align 8, !alias.scope !5781, !noalias !5528, !noundef !21 ; 2 uses
  %.promoted.i.i = load i64, ptr %.sroa.0102.sroa.6.0..sroa_idx, align 8, !alias.scope !5782, !noalias !5532 ; 3 uses
  %i.vt = icmp ult i64 %.promoted.i.i, %i.vs
  br i1 %i.vt, label %.lr.ph.i.i, label %.loopexit

bb.fi:                                            ; preds = %bb.fd, %bb.fc
  %.sink1.i92 = phi ptr [ %i.uz, %bb.fd ], [ %.sroa.7118.0, %bb.fc ]
  %.sink.i93 = phi i64 [ -9223372036854775799, %bb.fd ], [ -9223372036854775803, %bb.fc ]
  %i.vu = ptrtoint ptr %.sink1.i92 to i64
  %i.vv = inttoptr i64 %.sink.i93 to ptr
  store ptr %i.vv, ptr %0, align 8
  %.sroa.2206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.vu, ptr %.sroa.2206.0..sroa_idx, align 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.6210.0..sroa_idx, align 8
  br label %bb.fj

bb.fj:                                            ; preds = %"_ZN187_$LT$meilisearch_types..document_formats..DocumentFormatError$u20$as$u20$core..convert..From$LT$$LP$meilisearch_types..document_formats..PayloadType$C$serde_json..error..Error$RP$$GT$$GT$4from17h8eced018c7f374b0E.exit", %bb.fi
  %.val73 = load i64, ptr %i.aj, align 8          ; 2 uses
  %i.vw = icmp eq i64 %.val73, 0
  br i1 %i.vw, label %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96", label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.val74 = load ptr, ptr %.sroa.0102.sroa.2.0..sroa_idx, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val74, i64 noundef %.val73, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96"

"_ZN187_$LT$meilisearch_types..document_formats..DocumentFormatError$u20$as$u20$core..convert..From$LT$$LP$meilisearch_types..document_formats..PayloadType$C$serde_json..error..Error$RP$$GT$$GT$4from17h8eced018c7f374b0E.exit": ; preds = %bb.ae, %bb.ad
  %.sink1.i = phi ptr [ %i.ed, %bb.ae ], [ %i.ea, %bb.ad ]
  %.sink.i86 = phi i64 [ -9223372036854775799, %bb.ae ], [ -9223372036854775803, %bb.ad ]
  store i64 %.sink.i86, ptr %0, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1.i, ptr %.sroa.4145.0..sroa_idx, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.5147.0..sroa_idx, align 8
  br label %bb.fj

"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96": ; preds = %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.vx = icmp eq ptr %.val, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.vx, label %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17hca704bc88b9819c8E.exit99", label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96", %.lr.ph.i.i97
  %.sroa.0.01.i.i98 = phi ptr [ %i.vz, %.lr.ph.i.i97 ], [ %.val, %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96" ] ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i98, i64 24
  %i.vz = load ptr, ptr %i.vy, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.wa = load ptr, ptr %.sroa.0.01.i.i98, align 16, !nonnull !21, !noundef !21
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i98, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i98, i64 16
  %i.wd = load i64, ptr %i.wc, align 16, !noundef !21
  %i.we = load i64, ptr %i.wb, align 8, !range !66, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wa, i64 noundef %i.wd, i64 noundef %i.we) #52
  %i.wf = icmp eq ptr %i.vz, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.wf, label %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17hca704bc88b9819c8E.exit99", label %.lr.ph.i.i97

"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17hca704bc88b9819c8E.exit99": ; preds = %.lr.ph.i.i97, %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @"_ZN64_$LT$memmap2..os..MmapInner$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9d0bf1cbb9072347E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
  br label %bb.ab

bb.fl:                                            ; preds = %bb.g
  %i.wg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr34drop_in_place$LT$memmap2..Mmap$GT$17hc1025e5cc29ec728E.exit": ; preds = %bb.g
  resume { ptr, i32 } %.pn69
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types16document_formats16parse_csv_header17he189328565d9a32bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = phi i64 [ %2, %bb.a ], [ %i.e, %bb.c ]
  %i.b = tail call { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %i.a), !noalias !5789 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %bb.e, %bb.d
  %.not.i.i = icmp ugt i64 %i.e, %2
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, i64 } %i.b, 1        ; 8 uses
  %or.cond25.i.not.i = icmp ult i64 %i.e, %2
  br i1 %or.cond25.i.not.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %lhsc.i = load i8, ptr %i.f, align 1, !alias.scope !5790, !noalias !5791
  %i.g = icmp eq i8 %lhsc.i, 58
  br i1 %i.g, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = sub nuw i64 %2, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 6 uses
  switch i64 %i.i, label %bb.j [
    i64 6, label %bb.g
    i64 7, label %bb.h
  ]

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.i, %bb.h, %bb.g, %bb.j
  %.lcssa.sink = phi i64 [ %i.e, %bb.h ], [ %2, %bb.j ], [ %i.e, %bb.g ], [ %i.e, %bb.i ], [ %2, %bb.c ], [ %2, %bb.b ]
  %.sink = phi i8 [ 1, %bb.h ], [ 0, %bb.j ], [ 0, %bb.g ], [ 2, %bb.i ], [ 0, %bb.c ], [ 0, %bb.b ]
  store ptr %1, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa.sink, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.l, align 8
  ret void

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.j, align 1
  %i.n = xor i32 %i.m, 1769108595
  %i.o = getelementptr i8, ptr %i.j, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 %i.q, 26478
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.j, align 1
  %i.x = xor i32 %i.w, 1819242338
  %i.y = getelementptr i8, ptr %i.j, i64 3
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = xor i32 %i.z, 1851876716
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.j, align 1
  %i.ag = xor i32 %i.af, 1651340654
  %i.ah = getelementptr i8, ptr %i.j, i64 4
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = xor i32 %i.aj, 29285
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.i
  br label %.loopexit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN17meilisearch_types17index_uid_pattern15IndexUidPattern11matches_all17h0da0ad082bc3fb6dE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !21
  %.not.i = icmp eq i64 %.val1, 1
  br i1 %.not.i, label %bb.b, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %lhsc = load i8, ptr %.val, align 1
  %i.c = icmp eq i8 %lhsc, 42
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN17meilisearch_types17index_uid_pattern15IndexUidPattern11matches_str17h970afa4b16e46f88E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !21 ; 3 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  %.pre.i = add i64 %i.d, -1                      ; 3 uses
  br i1 %.not.i.i, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h915b8b6daf7607d7E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h915b8b6daf7607d7E.exit.i": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre.i
  %rhsc = load i8, ptr %i.e, align 1
  %rhsc.fr = freeze i8 %rhsc
  %i.f = icmp eq i8 %rhsc.fr, 42
end_hunk_0
begin_hunk_1_@_ZN17meilisearch_types5tasks15KindWithContent15default_details17h4ec11c65310acdebE:bb.a
          cleanup                                 ; 2 uses
  %i.hz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.hz, label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6351
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i": ; preds = %bb.bw, %bb.bv
  %i.ia = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i, -9223372036854775803
  br i1 %i.ia, label %.body183, label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %.sroa.102.0..sroa_idx.i.i.i.i.i.i)
          to label %.body183 unwind label %bb.cu, !noalias !6352

bb.by:                                            ; preds = %bb.bu, %.noexc182
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %bb.bu ], [ -9223372036854775803, %.noexc182 ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 72
  %i.ic = load i8, ptr %i.ib, align 8, !range !35, !alias.scope !6344, !noalias !6346, !noundef !21
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6337
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !6337
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6337
  %.sroa.6.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx1.i.i.i.i.i.i, align 8, !noalias !6337
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6337
  %.sroa.102.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i, ptr %.sroa.102.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6337
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i8 %i.ic, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6337
  %i.id = call i64 @llvm.uadd.sat.i64(i64 %i.fy, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.id, i64 4) ; 3 uses
  %i.ie = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 120   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.id, 76861433640456465
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.ca, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6353
  %i.ig = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ie, i64 noundef range(i64 1, 9) 8) #52, !noalias !6353 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.by
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.by ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ie, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bv, !noalias !6337

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ig, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ii = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ii)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.h, i64 120, i1 false), !noalias !6337
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !6337
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6337
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6337
  call void @llvm.experimental.noalias.scope.decl(metadata !6354)
  call void @llvm.experimental.noalias.scope.decl(metadata !6355)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.ij = icmp eq i64 %i.fy, 0
  br i1 %i.ij, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i": ; preds = %bb.ca
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 1154
  %i.il = load i16, ptr %i.ik, align 2, !noalias !6356, !noundef !21
  %i.im = zext i16 %i.il to i64
  %i.in = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i, %i.im
  br i1 %i.in, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i"
  %i.io = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i25.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i", %bb.cb
  %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i = phi ptr [ %i.iq, %bb.cb ], [ %.sroa.07.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i = phi i64 [ %i.ir, %bb.cb ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i" ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i, i64 880
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !6357, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i28.i.i.i.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i28.i.i.i.i.i.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  %i.ir = add i64 %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i, 1 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i, i64 1152
  %i.it = load i16, ptr %i.is, align 8, !noalias !6357 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 1154
  %i.iv = load i16, ptr %i.iu, align 2, !noalias !6356, !noundef !21
  %i.iw = icmp ult i16 %i.it, %i.iv
  br i1 %i.iw, label %bb.cc, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.ix = zext i16 %i.it to i64                   ; 4 uses
  %i.iy = icmp eq i64 %i.ir, 0
  %i.iz = add nuw nsw i64 %i.ix, 1                ; 2 uses
  br i1 %i.iy, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 1160
  %i.jb = icmp ult i16 %i.it, 11
  call void @llvm.assume(i1 %i.jb)
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.iz ; 2 uses
  %xtraiter392 = and i64 %i.ir, 7                 ; 2 uses
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %.prol.loopexit389, label %.prol.preheader388

.prol.preheader388:                               ; preds = %bb.cd, %.prol.preheader388
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i.prol = phi ptr [ %i.jd, %.prol.preheader388 ], [ %i.jc, %bb.cd ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader388 ], [ %i.ir, %bb.cd ]
  %prol.iter394 = phi i64 [ %prol.iter394.next, %.prol.preheader388 ], [ 0, %bb.cd ]
  %.pn28.i.i.i.i35.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i34.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i36.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i33.i.i.i.i.i.i.prol, align 8, !noalias !6358, !nonnull !21, !noundef !21 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter394.next = add i64 %prol.iter394, 1   ; 2 uses
  %prol.iter394.cmp.not = icmp eq i64 %prol.iter394.next, %xtraiter392
  br i1 %prol.iter394.cmp.not, label %.prol.loopexit389, label %.prol.preheader388, !llvm.loop !6271

.prol.loopexit389:                                ; preds = %.prol.preheader388, %bb.cd
  %.pn30.i.i.i.i36.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cd ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.prol, %.prol.preheader388 ]
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i.unr = phi ptr [ %i.jc, %bb.cd ], [ %i.jd, %.prol.preheader388 ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i.unr = phi i64 [ %i.ir, %bb.cd ], [ %.pn28.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader388 ]
  %i.je = icmp ult i64 %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i, 7
  br i1 %i.je, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new390

.new390:                                          ; preds = %.prol.loopexit389, %.new390
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i = phi ptr [ %i.jn, %.new390 ], [ %.pn30.in.i.i.i.i33.i.i.i.i.i.i.unr, %.prol.loopexit389 ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i35.i.i.i.i.i.i.7, %.new390 ], [ %.pn28.in.i.i.i.i34.i.i.i.i.i.i.unr, %.prol.loopexit389 ]
  %.pn30.i.i.i.i36.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i33.i.i.i.i.i.i, align 8, !noalias !6358, !nonnull !21, !noundef !21
  %i.jf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.1 = load ptr, ptr %i.jf, align 8, !noalias !6358, !nonnull !21, !noundef !21
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.2 = load ptr, ptr %i.jg, align 8, !noalias !6358, !nonnull !21, !noundef !21
  %i.jh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.3 = load ptr, ptr %i.jh, align 8, !noalias !6358, !nonnull !21, !noundef !21
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.4 = load ptr, ptr %i.ji, align 8, !noalias !6358, !nonnull !21, !noundef !21
  %i.jj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.5 = load ptr, ptr %i.jj, align 8, !noalias !6358, !nonnull !21, !noundef !21
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.6 = load ptr, ptr %i.jk, align 8, !noalias !6358, !nonnull !21, !noundef !21
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i35.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i34.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i36.i.i.i.i.i.i.7 = load ptr, ptr %i.jl, align 8, !noalias !6358, !nonnull !21, !noundef !21 ; 2 uses
  %i.jm = icmp eq i64 %.pn28.i.i.i.i35.i.i.i.i.i.i.7, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.7, i64 1160
  br i1 %i.jm, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new390

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i42.i.i.i.i.i.i unwind label %bb.cf, !noalias !6359

.noexc.i.i42.i.i.i.i.i.i:                         ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.prol.loopexit389, %.new390, %bb.cc, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i32.i.i19.i.i.i.i = phi ptr [ %i.iq, %bb.cc ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.iq, %.new390 ], [ %i.iq, %.prol.loopexit389 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i30.i.i18.i.i.i.i = phi i64 [ %i.ix, %bb.cc ], [ %.sroa.7.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.ix, %.new390 ], [ %i.ix, %.prol.loopexit389 ] ; 3 uses
  %.sroa.7.0.i.i.i38.i.i.i.i.i.i = phi i64 [ %i.iz, %bb.cc ], [ %i.io, %.thread.i.i.i.i ], [ 0, %.new390 ], [ 0, %.prol.loopexit389 ]
  %.sroa.07.0.i.i.i39.i.i.i.i.i.i = phi ptr [ %i.iq, %bb.cc ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit389 ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.7, %.new390 ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i32.i.i19.i.i.i.i, i64 888
  %i.jq = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i18.i.i.i.i, 11
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i18.i.i.i.i
  %i.js = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i32.i.i19.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i18.i.i.i.i
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  br label %bb.cg

bb.cg:                                            ; preds = %.noexc8.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.jt = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ke, %.noexc8.i.i.i.i.i.i ]
  %i.ju = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kg, %.noexc8.i.i.i.i.i.i ] ; 5 uses
  %.sroa.21.1.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i38.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 3 uses
  %.sroa.2711.1.in.i.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2711.1.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ]
  %.sroa.77.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i39.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %i.jv = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lp, %.noexc8.i.i.i.i.i.i ]
  %.pn48.i.i.i.i.i.i = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lq, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %.sroa.2711.1.i.i.i.i.i.i = add i64 %.sroa.2711.1.in.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6361
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @754)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !6337

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.cg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !6361 ; 3 uses
  %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6361 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6361
  %i.jw = load i64, ptr %.pn48.i.i.i.i.i.i, align 8, !range !34, !alias.scope !6360, !noalias !6362, !noundef !21
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jw, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.noexc7.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6361
  invoke fastcc void @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.pn48.i.i.i.i.i.i)
          to label %bb.ck unwind label %bb.ci, !noalias !6363

bb.ci:                                            ; preds = %bb.ch
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jy, label %.body.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6364
  br label %.body.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ch
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6361
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.noexc7.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.ck ], [ -9223372036854775803, %.noexc7.i.i.i.i.i.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.pn48.i.i.i.i.i.i, i64 72
  %i.ka = load i8, ptr %i.jz, align 8, !range !35, !alias.scope !6360, !noalias !6362, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6366
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !6366
  store ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6366
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i5.i.i.i.i.i.i, align 8, !noalias !6366
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6366
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6366
  store i8 %i.ka, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6366
  %i.kb = icmp samesign ult i64 %i.ju, 76861433640456466
  call void @llvm.assume(i1 %i.kb)
  %i.kc = load i64, ptr %i.i, align 8, !range !22, !alias.scope !6367, !noalias !6368, !noundef !21
  %i.kd = icmp eq i64 %i.ju, %i.kc
  br i1 %i.kd, label %bb.cs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.cl
  %i.ke = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.jt, %bb.cl ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [120 x i8], ptr %i.ke, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.kf, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !6366
  %i.kg = add nuw nsw i64 %i.ju, 1                ; 2 uses
  store i64 %i.kg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6367, !noalias !6368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6366
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.kh = icmp eq i64 %.sroa.2711.1.i.i.i.i.i.i, 0
  br i1 %i.kh, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.77.1.i.i.i.i.i.i, i64 1154
  %i.kj = load i16, ptr %i.ki, align 2, !noalias !6369, !noundef !21
  %i.kk = zext i16 %i.kj to i64
  %i.kl = icmp ult i64 %.sroa.21.1.i.i.i.i.i.i, %i.kk
  br i1 %i.kl, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i"
  %i.km = add nuw nsw i64 %.sroa.21.1.i.i.i.i.i.i, 1
  br label %.noexc8.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i", %bb.cm
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ko, %bb.cm ], [ %.sroa.77.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kp, %bb.cm ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 880
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !6370, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.kp = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 1152
  %i.kr = load i16, ptr %i.kq, align 8, !noalias !6370 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 1154
  %i.kt = load i16, ptr %i.ks, align 2, !noalias !6369, !noundef !21
  %i.ku = icmp ult i16 %i.kr, %i.kt
  br i1 %i.ku, label %bb.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.kv = zext i16 %i.kr to i64                   ; 4 uses
  %i.kw = icmp eq i64 %i.kp, 0
  %i.kx = add nuw nsw i64 %i.kv, 1                ; 2 uses
  br i1 %i.kw, label %.noexc8.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ko, i64 1160
  %i.kz = icmp ult i16 %i.kr, 11
  call void @llvm.assume(i1 %i.kz)
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  %xtraiter399 = and i64 %i.kp, 7                 ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.prol.loopexit396, label %.prol.preheader395

.prol.preheader395:                               ; preds = %bb.co, %.prol.preheader395
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.lb, %.prol.preheader395 ], [ %i.la, %bb.co ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader395 ], [ %i.kp, %bb.co ]
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.prol.preheader395 ], [ 0, %bb.co ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !6371, !nonnull !21, !noundef !21 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter401.next = add i64 %prol.iter401, 1   ; 2 uses
  %prol.iter401.cmp.not = icmp eq i64 %prol.iter401.next, %xtraiter399
  br i1 %prol.iter401.cmp.not, label %.prol.loopexit396, label %.prol.preheader395, !llvm.loop !6298

.prol.loopexit396:                                ; preds = %.prol.preheader395, %bb.co
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.co ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader395 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.la, %bb.co ], [ %i.lb, %.prol.preheader395 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.kp, %bb.co ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader395 ]
  %i.lc = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.lc, label %.noexc8.i.i.i.i.i.i, label %.new397

.new397:                                          ; preds = %.prol.loopexit396, %.new397
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ll, %.new397 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit396 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new397 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit396 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6371, !nonnull !21, !noundef !21
  %i.ld = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ld, align 8, !noalias !6371, !nonnull !21, !noundef !21
  %i.le = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.le, align 8, !noalias !6371, !nonnull !21, !noundef !21
  %i.lf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.lf, align 8, !noalias !6371, !nonnull !21, !noundef !21
  %i.lg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.lg, align 8, !noalias !6371, !nonnull !21, !noundef !21
  %i.lh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.lh, align 8, !noalias !6371, !nonnull !21, !noundef !21
  %i.li = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.li, align 8, !noalias !6371, !nonnull !21, !noundef !21
  %i.lj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.lj, align 8, !noalias !6371, !nonnull !21, !noundef !21 ; 2 uses
  %i.lk = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.ll = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.lk, label %.noexc8.i.i.i.i.i.i, label %.new397

bb.cp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cq, !noalias !6372

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.cp
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc8.i.i.i.i.i.i:                              ; preds = %.prol.loopexit396, %.new397, %bb.cn, %.thread.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i47.i.i.i.i.i.i = phi ptr [ %i.ko, %bb.cn ], [ %.sroa.77.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.ko, %.new397 ], [ %i.ko, %.prol.loopexit396 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i46.i.i.i.i.i.i = phi i64 [ %i.kv, %bb.cn ], [ %.sroa.21.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.kv, %.new397 ], [ %i.kv, %.prol.loopexit396 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kx, %bb.cn ], [ %i.km, %.thread.i.i.i.i.i.i ], [ 0, %.new397 ], [ 0, %.prol.loopexit396 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ko, %bb.cn ], [ %.sroa.77.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit396 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new397 ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i47.i.i.i.i.i.i, i64 888
  %i.lo = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i46.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.lo)
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %.sroa.6.sroa.4.0.ph.i.i.i46.i.i.i.i.i.i
  %i.lq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i47.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i46.i.i.i.i.i.i
  br label %bb.cg

bb.cr:                                            ; preds = %bb.cs
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17hb88229aaa070dd0dE"(ptr noalias noundef align 8 dereferenceable(120) %i.e) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.ct, !noalias !6366

bb.cs:                                            ; preds = %bb.cl
  %i.ls = call i64 @llvm.uadd.sat.i64(i64 %.sroa.2711.1.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ju, i64 noundef range(i64 1, 0) %i.ls, i64 noundef 8, i64 noundef 120)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.cr, !noalias !6368

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.cs
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6367, !noalias !6368
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

bb.ct:                                            ; preds = %bb.cr
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6366
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.cg
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.i.i, %bb.cr, %bb.cj, %bb.ci
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.lr, %bb.cr ], [ %i.jx, %bb.ci ], [ %i.jx, %bb.cj ], [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #55
          to label %.body183 unwind label %bb.cu, !noalias !6337

bb.cu:                                            ; preds = %.body.i.i.i.i.i.i, %bb.bx
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6337
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i", %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !6350
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !6350 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6337
  %i.lv = icmp ult i64 %.pre.i.i, 76861433640456466
  call void @llvm.assume(i1 %i.lv)
  %i.lw = icmp eq i64 %.pre.i.i, 0
  br i1 %i.lw, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.thread.i.i
  store ptr null, ptr %i.x, align 8, !alias.scope !6373, !noalias !6374
  %i.lx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.lx, align 8, !alias.scope !6373, !noalias !6374
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.j)
          to label %bb.di unwind label %bb.dg

bb.cw:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !6350, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6375
  %i.ma = icmp eq i64 %.pre.i.i, 1
  br i1 %i.ma, label %bb.da, label %bb.cx, !prof !49

bb.cx:                                            ; preds = %bb.cw
  %i.mb = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.mb, label %bb.cz, label %bb.cy, !prof !49

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h84772f8b730dda4fE(ptr noalias noundef nonnull align 8 %i.lz, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.da unwind label %bb.db, !noalias !6350

bb.cz:                                            ; preds = %bb.cx
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hdd8d9a3158f53e76E(ptr noalias noundef nonnull align 8 %i.lz, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6375
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17h955c267db2c34e5bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.di unwind label %bb.dg

bb.db:                                            ; preds = %bb.cy
  %i.mc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #55
          to label %.body183 unwind label %bb.dc, !noalias !6350

bb.dc:                                            ; preds = %bb.db
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6350
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit190": ; preds = %bb.dh, %.body183, %.body183, %bb.de
end_hunk_1
begin_hunk_2_@_ZN17meilisearch_types5tasks15KindWithContent24default_finished_details17h07250cd6a9f22733E:bb.a
          cleanup                                 ; 2 uses
  %i.ia = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.ia, label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6563
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i": ; preds = %bb.bw, %bb.bv
  %i.ib = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i, -9223372036854775803
  br i1 %i.ib, label %.body172, label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %.sroa.102.0..sroa_idx.i.i.i.i.i.i)
          to label %.body172 unwind label %bb.cu, !noalias !6564

bb.by:                                            ; preds = %bb.bu, %.noexc171
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %bb.bu ], [ -9223372036854775803, %.noexc171 ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  %i.id = load i8, ptr %i.ic, align 8, !range !35, !alias.scope !6556, !noalias !6558, !noundef !21
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !6549
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6549
  %.sroa.6.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx1.i.i.i.i.i.i, align 8, !noalias !6549
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6549
  %.sroa.102.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i, ptr %.sroa.102.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6549
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i8 %i.id, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6549
  %i.ie = call i64 @llvm.uadd.sat.i64(i64 %i.fz, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ie, i64 4) ; 3 uses
  %i.if = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 120   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ie, 76861433640456465
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %bb.ca, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6565
  %i.ih = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.if, i64 noundef range(i64 1, 9) 8) #52, !noalias !6565 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.by
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.by ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bv, !noalias !6549

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ih, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ij = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ij)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.h, i64 120, i1 false), !noalias !6549
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !6549
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6549
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6549
  call void @llvm.experimental.noalias.scope.decl(metadata !6566)
  call void @llvm.experimental.noalias.scope.decl(metadata !6567)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.ik = icmp eq i64 %i.fz, 0
  br i1 %i.ik, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i": ; preds = %bb.ca
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 1154
  %i.im = load i16, ptr %i.il, align 2, !noalias !6568, !noundef !21
  %i.in = zext i16 %i.im to i64
  %i.io = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i, %i.in
  br i1 %i.io, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i"
  %i.ip = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i25.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i", %bb.cb
  %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i = phi ptr [ %i.ir, %bb.cb ], [ %.sroa.07.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i = phi i64 [ %i.is, %bb.cb ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i" ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i, i64 880
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !6569, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i28.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i28.i.i.i.i.i.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  %i.is = add i64 %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i, 1 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i, i64 1152
  %i.iu = load i16, ptr %i.it, align 8, !noalias !6569 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 1154
  %i.iw = load i16, ptr %i.iv, align 2, !noalias !6568, !noundef !21
  %i.ix = icmp ult i16 %i.iu, %i.iw
  br i1 %i.ix, label %bb.cc, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.iy = zext i16 %i.iu to i64                   ; 4 uses
  %i.iz = icmp eq i64 %i.is, 0
  %i.ja = add nuw nsw i64 %i.iy, 1                ; 2 uses
  br i1 %i.iz, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 1160
  %i.jc = icmp ult i16 %i.iu, 11
  call void @llvm.assume(i1 %i.jc)
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ja ; 2 uses
  %xtraiter375 = and i64 %i.is, 7                 ; 2 uses
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %.prol.loopexit372, label %.prol.preheader371

.prol.preheader371:                               ; preds = %bb.cd, %.prol.preheader371
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i.prol = phi ptr [ %i.je, %.prol.preheader371 ], [ %i.jd, %bb.cd ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader371 ], [ %i.is, %bb.cd ]
  %prol.iter377 = phi i64 [ %prol.iter377.next, %.prol.preheader371 ], [ 0, %bb.cd ]
  %.pn28.i.i.i.i35.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i34.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i36.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i33.i.i.i.i.i.i.prol, align 8, !noalias !6570, !nonnull !21, !noundef !21 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter377.next = add i64 %prol.iter377, 1   ; 2 uses
  %prol.iter377.cmp.not = icmp eq i64 %prol.iter377.next, %xtraiter375
  br i1 %prol.iter377.cmp.not, label %.prol.loopexit372, label %.prol.preheader371, !llvm.loop !6485

.prol.loopexit372:                                ; preds = %.prol.preheader371, %bb.cd
  %.pn30.i.i.i.i36.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cd ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.prol, %.prol.preheader371 ]
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i.unr = phi ptr [ %i.jd, %bb.cd ], [ %i.je, %.prol.preheader371 ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i.unr = phi i64 [ %i.is, %bb.cd ], [ %.pn28.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader371 ]
  %i.jf = icmp ult i64 %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i, 7
  br i1 %i.jf, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new373

.new373:                                          ; preds = %.prol.loopexit372, %.new373
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i = phi ptr [ %i.jo, %.new373 ], [ %.pn30.in.i.i.i.i33.i.i.i.i.i.i.unr, %.prol.loopexit372 ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i35.i.i.i.i.i.i.7, %.new373 ], [ %.pn28.in.i.i.i.i34.i.i.i.i.i.i.unr, %.prol.loopexit372 ]
  %.pn30.i.i.i.i36.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i33.i.i.i.i.i.i, align 8, !noalias !6570, !nonnull !21, !noundef !21
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.1 = load ptr, ptr %i.jg, align 8, !noalias !6570, !nonnull !21, !noundef !21
  %i.jh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.2 = load ptr, ptr %i.jh, align 8, !noalias !6570, !nonnull !21, !noundef !21
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.3 = load ptr, ptr %i.ji, align 8, !noalias !6570, !nonnull !21, !noundef !21
  %i.jj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.4 = load ptr, ptr %i.jj, align 8, !noalias !6570, !nonnull !21, !noundef !21
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.5 = load ptr, ptr %i.jk, align 8, !noalias !6570, !nonnull !21, !noundef !21
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.6 = load ptr, ptr %i.jl, align 8, !noalias !6570, !nonnull !21, !noundef !21
  %i.jm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i35.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i34.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i36.i.i.i.i.i.i.7 = load ptr, ptr %i.jm, align 8, !noalias !6570, !nonnull !21, !noundef !21 ; 2 uses
  %i.jn = icmp eq i64 %.pn28.i.i.i.i35.i.i.i.i.i.i.7, 0
  %i.jo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.7, i64 1160
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new373

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i42.i.i.i.i.i.i unwind label %bb.cf, !noalias !6571

.noexc.i.i42.i.i.i.i.i.i:                         ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.prol.loopexit372, %.new373, %bb.cc, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i32.i.i19.i.i.i.i = phi ptr [ %i.ir, %bb.cc ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.ir, %.new373 ], [ %i.ir, %.prol.loopexit372 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i30.i.i18.i.i.i.i = phi i64 [ %i.iy, %bb.cc ], [ %.sroa.7.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.iy, %.new373 ], [ %i.iy, %.prol.loopexit372 ] ; 3 uses
  %.sroa.7.0.i.i.i38.i.i.i.i.i.i = phi i64 [ %i.ja, %bb.cc ], [ %i.ip, %.thread.i.i.i.i ], [ 0, %.new373 ], [ 0, %.prol.loopexit372 ]
  %.sroa.07.0.i.i.i39.i.i.i.i.i.i = phi ptr [ %i.ir, %bb.cc ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit372 ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.7, %.new373 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i32.i.i19.i.i.i.i, i64 888
  %i.jr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i18.i.i.i.i, 11
  call void @llvm.assume(i1 %i.jr)
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i18.i.i.i.i
  %i.jt = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i32.i.i19.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i18.i.i.i.i
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  br label %bb.cg

bb.cg:                                            ; preds = %.noexc8.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ju = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kf, %.noexc8.i.i.i.i.i.i ]
  %i.jv = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kh, %.noexc8.i.i.i.i.i.i ] ; 5 uses
  %.sroa.21.1.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i38.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 3 uses
  %.sroa.2711.1.in.i.i.i.i.i.i = phi i64 [ %i.fz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2711.1.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ]
  %.sroa.77.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i39.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %i.jw = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lq, %.noexc8.i.i.i.i.i.i ]
  %.pn48.i.i.i.i.i.i = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lr, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %.sroa.2711.1.i.i.i.i.i.i = add i64 %.sroa.2711.1.in.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6572)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6573
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @754)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !6549

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.cg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !6573 ; 3 uses
  %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6573 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6573
  %i.jx = load i64, ptr %.pn48.i.i.i.i.i.i, align 8, !range !34, !alias.scope !6572, !noalias !6574, !noundef !21
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jx, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.noexc7.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6573
  invoke fastcc void @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.pn48.i.i.i.i.i.i)
          to label %bb.ck unwind label %bb.ci, !noalias !6575

bb.ci:                                            ; preds = %bb.ch
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jz, label %.body.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6576
  br label %.body.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ch
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6573
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.noexc7.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.ck ], [ -9223372036854775803, %.noexc7.i.i.i.i.i.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.pn48.i.i.i.i.i.i, i64 72
  %i.kb = load i8, ptr %i.ka, align 8, !range !35, !alias.scope !6572, !noalias !6574, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6578
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !6578
  store ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6578
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i5.i.i.i.i.i.i, align 8, !noalias !6578
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6578
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6578
  store i8 %i.kb, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6578
  %i.kc = icmp samesign ult i64 %i.jv, 76861433640456466
  call void @llvm.assume(i1 %i.kc)
  %i.kd = load i64, ptr %i.i, align 8, !range !22, !alias.scope !6579, !noalias !6580, !noundef !21
  %i.ke = icmp eq i64 %i.jv, %i.kd
  br i1 %i.ke, label %bb.cs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.cl
  %i.kf = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.ju, %bb.cl ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [120 x i8], ptr %i.kf, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.kg, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !6578
  %i.kh = add nuw nsw i64 %i.jv, 1                ; 2 uses
  store i64 %i.kh, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6579, !noalias !6580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6578
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.ki = icmp eq i64 %.sroa.2711.1.i.i.i.i.i.i, 0
  br i1 %i.ki, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.77.1.i.i.i.i.i.i, i64 1154
  %i.kk = load i16, ptr %i.kj, align 2, !noalias !6581, !noundef !21
  %i.kl = zext i16 %i.kk to i64
  %i.km = icmp ult i64 %.sroa.21.1.i.i.i.i.i.i, %i.kl
  br i1 %i.km, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i"
  %i.kn = add nuw nsw i64 %.sroa.21.1.i.i.i.i.i.i, 1
  br label %.noexc8.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i", %bb.cm
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kp, %bb.cm ], [ %.sroa.77.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kq, %bb.cm ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 880
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !6582, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.kq = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 1152
  %i.ks = load i16, ptr %i.kr, align 8, !noalias !6582 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 1154
  %i.ku = load i16, ptr %i.kt, align 2, !noalias !6581, !noundef !21
  %i.kv = icmp ult i16 %i.ks, %i.ku
  br i1 %i.kv, label %bb.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.kw = zext i16 %i.ks to i64                   ; 4 uses
  %i.kx = icmp eq i64 %i.kq, 0
  %i.ky = add nuw nsw i64 %i.kw, 1                ; 2 uses
  br i1 %i.kx, label %.noexc8.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 1160
  %i.la = icmp ult i16 %i.ks, 11
  call void @llvm.assume(i1 %i.la)
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.ky ; 2 uses
  %xtraiter382 = and i64 %i.kq, 7                 ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.prol.loopexit379, label %.prol.preheader378

.prol.preheader378:                               ; preds = %bb.co, %.prol.preheader378
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.lc, %.prol.preheader378 ], [ %i.lb, %bb.co ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader378 ], [ %i.kq, %bb.co ]
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.prol.preheader378 ], [ 0, %bb.co ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !6583, !nonnull !21, !noundef !21 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.prol.loopexit379, label %.prol.preheader378, !llvm.loop !6512

.prol.loopexit379:                                ; preds = %.prol.preheader378, %bb.co
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.co ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader378 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.lb, %bb.co ], [ %i.lc, %.prol.preheader378 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.kq, %bb.co ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader378 ]
  %i.ld = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ld, label %.noexc8.i.i.i.i.i.i, label %.new380

.new380:                                          ; preds = %.prol.loopexit379, %.new380
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lm, %.new380 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit379 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new380 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit379 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6583, !nonnull !21, !noundef !21
  %i.le = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.le, align 8, !noalias !6583, !nonnull !21, !noundef !21
  %i.lf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.lf, align 8, !noalias !6583, !nonnull !21, !noundef !21
  %i.lg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.lg, align 8, !noalias !6583, !nonnull !21, !noundef !21
  %i.lh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.lh, align 8, !noalias !6583, !nonnull !21, !noundef !21
  %i.li = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.li, align 8, !noalias !6583, !nonnull !21, !noundef !21
  %i.lj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.lj, align 8, !noalias !6583, !nonnull !21, !noundef !21
  %i.lk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.lk, align 8, !noalias !6583, !nonnull !21, !noundef !21 ; 2 uses
  %i.ll = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.lm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.ll, label %.noexc8.i.i.i.i.i.i, label %.new380

bb.cp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cq, !noalias !6584

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.cp
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc8.i.i.i.i.i.i:                              ; preds = %.prol.loopexit379, %.new380, %bb.cn, %.thread.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i47.i.i.i.i.i.i = phi ptr [ %i.kp, %bb.cn ], [ %.sroa.77.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.kp, %.new380 ], [ %i.kp, %.prol.loopexit379 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i46.i.i.i.i.i.i = phi i64 [ %i.kw, %bb.cn ], [ %.sroa.21.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.kw, %.new380 ], [ %i.kw, %.prol.loopexit379 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ky, %bb.cn ], [ %i.kn, %.thread.i.i.i.i.i.i ], [ 0, %.new380 ], [ 0, %.prol.loopexit379 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kp, %bb.cn ], [ %.sroa.77.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit379 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new380 ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i47.i.i.i.i.i.i, i64 888
  %i.lp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i46.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.lp)
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lo, i64 %.sroa.6.sroa.4.0.ph.i.i.i46.i.i.i.i.i.i
  %i.lr = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i47.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i46.i.i.i.i.i.i
  br label %bb.cg

bb.cr:                                            ; preds = %bb.cs
  %i.ls = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17hb88229aaa070dd0dE"(ptr noalias noundef align 8 dereferenceable(120) %i.e) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.ct, !noalias !6578

bb.cs:                                            ; preds = %bb.cl
  %i.lt = call i64 @llvm.uadd.sat.i64(i64 %.sroa.2711.1.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.jv, i64 noundef range(i64 1, 0) %i.lt, i64 noundef 8, i64 noundef 120)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.cr, !noalias !6580

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.cs
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6579, !noalias !6580
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

bb.ct:                                            ; preds = %bb.cr
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6578
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.cg
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.i.i, %bb.cr, %bb.cj, %bb.ci
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ls, %bb.cr ], [ %i.jy, %bb.ci ], [ %i.jy, %bb.cj ], [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #55
          to label %.body172 unwind label %bb.cu, !noalias !6549

bb.cu:                                            ; preds = %.body.i.i.i.i.i.i, %bb.bx
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6549
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i", %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !6562
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !6562 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6549
  %i.lw = icmp ult i64 %.pre.i.i, 76861433640456466
  call void @llvm.assume(i1 %i.lw)
  %i.lx = icmp eq i64 %.pre.i.i, 0
  br i1 %i.lx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.thread.i.i
  store ptr null, ptr %i.x, align 8, !alias.scope !6585, !noalias !6586
  %i.ly = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ly, align 8, !alias.scope !6585, !noalias !6586
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.j)
          to label %bb.di unwind label %bb.dg

bb.cw:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !6562, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6587
  %i.mb = icmp eq i64 %.pre.i.i, 1
  br i1 %i.mb, label %bb.da, label %bb.cx, !prof !49

bb.cx:                                            ; preds = %bb.cw
  %i.mc = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.mc, label %bb.cz, label %bb.cy, !prof !49

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17ha3c65a8bb46fd0bbE(ptr noalias noundef nonnull align 8 %i.ma, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.da unwind label %bb.db, !noalias !6562

bb.cz:                                            ; preds = %bb.cx
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0122afcfd1380e52E(ptr noalias noundef nonnull align 8 %i.ma, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6587
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17h955c267db2c34e5bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.di unwind label %bb.dg

bb.db:                                            ; preds = %bb.cy
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #55
          to label %.body172 unwind label %bb.dc, !noalias !6562

bb.dc:                                            ; preds = %bb.db
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6562
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit179": ; preds = %bb.dh, %.body172, %.body172, %bb.de
end_hunk_2
begin_hunk_3_@_ZN17meilisearch_types5tasks15KindWithContent24default_finished_details17h07250cd6a9f22733E:bb.a
  store i64 15, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.fr, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0196.0, ptr %.sroa.765.0..sroa_idx, align 8
  %.sroa.765.sroa.4.0..sroa.765.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6198.0, ptr %.sroa.765.sroa.4.0..sroa.765.0..sroa_idx.sroa_idx, align 8
  %.sroa.765.sroa.5.0..sroa.765.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.7200.0, ptr %.sroa.765.sroa.5.0..sroa.765.0..sroa_idx.sroa_idx, align 8
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types5tasks15KindWithContent7indexes17hb7b8618582f64dc2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = load i64, ptr %1, align 8, !range !74, !noundef !21 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775790
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, 9223372036854775807
  %i.g = icmp ugt i64 %i.d, -9223372036854775808
  %i.h = select i1 %i.g, i64 %i.f, i64 17
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 3, label %bb.g
    i64 4, label %bb.g
    i64 5, label %bb.g
    i64 6, label %bb.g
    i64 7, label %bb.g
    i64 8, label %bb.c
    i64 9, label %bb.d
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.g
    i64 17, label %bb.e
    i64 18, label %bb.f
    i64 19, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #52 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.i, !prof !23

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !35, !noalias !6694, !noundef !21
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i", !prof !49

._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i: ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !6695
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !6695
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i": ; preds = %bb.d
  %i.o = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !6696 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !6696
  store i8 1, ptr %i.l, align 8, !noalias !6696
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit"

"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i"
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i ], [ %i.q, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i" ]
  %i.s = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i ], [ %i.p, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i" ] ; 2 uses
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.k, align 8, !noalias !6695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @23, i64 32, i1 false)
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.s, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.pre-phi.i, ptr %.sroa.533.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !21 ; 2 uses
  %.idx = mul nuw nsw i64 %i.x, 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %.not74 = icmp eq i64 %i.x, 0
  br i1 %.not74, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i64 0, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aa, align 8
  br label %bb.n

bb.f:                                             ; preds = %bb.a, %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.ab = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #52 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.af, label %bb.ag, !prof !23

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.ad = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #52 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.ad, label %bb.ae, !prof !23

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !21, !noundef !21
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !21
  store ptr %i.ag, ptr %i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  store i64 1, ptr %i.c, align 8, !alias.scope !6697
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.ak, align 8, !alias.scope !6697
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %i.al, align 8, !alias.scope !6697
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load i64, ptr %i.am, align 8, !range !25, !noundef !21
  %.not16 = icmp eq i64 %i.an, -9223372036854775808
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !21, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !21
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h19b0ca4e4289fc08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @764)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit" unwind label %bb.l

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit": ; preds = %bb.j
  %i.as = load ptr, ptr %i.ak, align 8, !alias.scope !6698, !noalias !6699, !nonnull !21, !noundef !21 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.ap, ptr %i.at, align 8, !noalias !6700
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %i.ar, ptr %i.au, align 8
  store i64 2, ptr %i.al, align 8, !alias.scope !6698, !noalias !6699
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit", %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val18 = load ptr, ptr %i.ak, align 8, !nonnull !21, !noundef !21
  %i.ax = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit": ; preds = %bb.ac, %.body.i.i.i.i, %.body.thread, %bb.v, %bb.u, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %i.bi, %.body.thread ], [ %i.av, %bb.l ], [ %i.av, %bb.m ], [ %i.ca, %bb.u ], [ %i.dw, %.body.i.i.i.i ], [ %i.dw, %bb.ac ]
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.ag, %bb.ae, %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit, %bb.k, %bb.e
  ret void

bb.o:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.y
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit", %bb.o
  %.sroa.014.075 = phi ptr [ %i.ay, %bb.o ], [ %i.v, %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit" ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !21, !noundef !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !21
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hde9aefb15bf8e790E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ba, i64 noundef %i.bc)
          to label %bb.p unwind label %.body.thread

._crit_edge:                                      ; preds = %bb.o, %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit"
  %.sroa.046.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.347.0.copyload = load i64, ptr %.sroa.347.0..sroa_idx, align 8 ; 4 uses
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.046.0.copyload, align 16, !noalias !6701
  %i.bd = icmp eq i64 %.sroa.2.0.copyload, 0      ; 5 uses
  br i1 %i.bd, label %bb.q, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.be = shl i64 %.sroa.2.0.copyload, 4
  %2 = mul i64 %.sroa.2.0.copyload, 17
  %i.bf = add i64 %2, 33
  %i.bg = sub nuw nsw i64 -16, %i.be
  %i.bh = getelementptr inbounds i8, ptr %.sroa.046.0.copyload, i64 %i.bg
  br label %bb.q

.body.thread:                                     ; preds = %.lr.ph, %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %.val19 = load ptr, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val20 = load i64, ptr %i.bj, align 8, !noundef !21
  call fastcc void @"_ZN4core3ptr72drop_in_place$LT$std..collections..hash..set..HashSet$LT$$RF$str$GT$$GT$17hd7e6328b3e5b4870E"(ptr %.val19, i64 %.val20) #55
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

bb.p:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !21, !noundef !21
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !21
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hde9aefb15bf8e790E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bl, i64 noundef %i.bn)
          to label %bb.o unwind label %.body.thread

bb.q:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.bf, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.bh, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ] ; 8 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6702)
  call void @llvm.experimental.noalias.scope.decl(metadata !6703)
  call void @llvm.experimental.noalias.scope.decl(metadata !6704)
  call void @llvm.experimental.noalias.scope.decl(metadata !6705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6706
  %i.bo = icmp eq i64 %.sroa.347.0.copyload, 0
  br i1 %i.bo, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i
  %i.bs = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.br, %bb.r ] ; 2 uses
  %i.bt = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.046.0.copyload, %bb.r ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bs, align 16, !noalias !6707
  %i.bu = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -256 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bu to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  store i64 0, ptr %0, align 8, !alias.scope !6708, !noalias !6709
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8, !alias.scope !6708, !noalias !6709
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.by, align 8, !alias.scope !6708, !noalias !6709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6706
  %i.bz = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.bd, %i.bz
  br i1 %or.cond.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6710
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit

bb.u:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond6.i.i = or i1 %i.bd, %i.cb
  br i1 %or.cond6.i.i, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6711
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.r
  %.sroa.14.0.i.i = phi ptr [ %i.br, %bb.r ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %.sroa.046.0.copyload, %bb.r ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.bq, %bb.r ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.cc = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = and i16 %i.cc, %.lcssa.i.i.i.i.i.i.i
  %i.cg = sub nsw i64 0, %i.ce
  %i.ch = getelementptr inbounds [16 x i8], ptr %.sroa.9.0.copyload.i.i.i.i, i64 %i.cg ; 2 uses
  %i.ci = add nsw i64 %.sroa.347.0.copyload, -1   ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !6712, !nonnull !21, !align !37, !noundef !21
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !6712, !noundef !21
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.347.0.copyload, i64 4) ; 2 uses
  %i.cn = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 3 uses
  %i.co = icmp ugt i64 %.sroa.347.0.copyload, 1152921504606846975
  %i.cp = icmp ugt i64 %i.cn, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.co, %i.cp
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.w, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", !prof !30

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6713
  %i.cq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cn, i64 noundef range(i64 1, 9) 8) #52, !noalias !6713 ; 5 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i unwind label %bb.u, !noalias !6706

.noexc.i.i.i.i:                                   ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %i.ck, ptr %i.cq, align 8, !noalias !6706
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cm, ptr %i.cs, align 8, !noalias !6706
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !noalias !6706
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.cq, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6706
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !6706
  call void @llvm.experimental.noalias.scope.decl(metadata !6714)
  call void @llvm.experimental.noalias.scope.decl(metadata !6715)
  %i.ct = icmp eq i64 %i.ci, 0
  br i1 %i.ct, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.x, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"
  %i.cu = phi ptr [ %i.dr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.cq, %bb.x ]
  %i.cv = phi i64 [ %i.du, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ 1, %bb.x ] ; 5 uses
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %.sroa.14.0.i.i, %bb.x ] ; 2 uses
  %.lcssa410.i.i.i.i.i.i = phi ptr [ %.lcssa49.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.x ] ; 2 uses
  %i.cw = phi i16 [ %i.df, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.cf, %bb.x ] ; 2 uses
  %.val56.i.i.i.i.i.i = phi i64 [ %i.di, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.ci, %bb.x ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cx = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cy = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa410.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cx, align 16, !noalias !6716
  %i.cz = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -256 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cz to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa49.i.i.i.i.i.i = phi ptr [ %.lcssa410.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cw, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dc = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.dd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.de = zext nneg i16 %i.dd to i64
  %i.df = and i16 %i.dc, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.dg = sub nsw i64 0, %i.de
  %i.dh = getelementptr inbounds [16 x i8], ptr %.lcssa49.i.i.i.i.i.i, i64 %i.dg ; 2 uses
  %i.di = add i64 %.val56.i.i.i.i.i.i, -1         ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !6717, !nonnull !21, !align !37, !noundef !21
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !6717, !noundef !21
  %i.dn = icmp samesign ult i64 %i.cv, 576460752303423488
  call void @llvm.assume(i1 %i.dn)
  %i.do = load i64, ptr %i.a, align 8, !range !22, !alias.scope !6718, !noalias !6719, !noundef !21
  %i.dp = icmp eq i64 %i.cv, %i.do
  br i1 %i.dp, label %bb.ab, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i", %bb.x
  %i.dq = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.bd, %i.dq
  br i1 %or.cond.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6720
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.dr = phi ptr [ %.pre.i.i.i.i25, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.cu, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.cv ; 2 uses
  store ptr %i.dk, ptr %i.ds, align 8, !noalias !6721
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.dm, ptr %i.dt, align 8, !noalias !6721
  %i.du = add nuw nsw i64 %i.cv, 1                ; 2 uses
  store i64 %i.du, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6718, !noalias !6719
  %i.dv = icmp eq i64 %i.di, 0
  br i1 %i.dv, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.ab
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond16.i.i.i.i = or i1 %i.bd, %i.dx
  br i1 %or.cond16.i.i.i.i, label %.body.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
end_hunk_3
begin_hunk_4_@_ZN17meilisearch_types5tasks7network21NetworkTopologyChange3new17h3ac08b2b94f3148eE:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 808
  %i.df = load ptr, ptr %i.de, align 8, !noalias !7561, !nonnull !21, !noundef !21
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 808
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !7561, !nonnull !21, !noundef !21
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 808
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !7561, !nonnull !21, !noundef !21 ; 2 uses
  %i.dk = add i64 %.sroa.018.020.i.i.i111.i.i.i.i, -8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.loopexit.i.i94.i.i.i.i, label %.lr.ph.i.i.i109.i.i.i.i

.loopexit.i.i94.i.i.i.i:                          ; preds = %.lr.ph.i.i.i109.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i109.i.i.i.i, %bb.aa
  %.sroa.0.0.ph.i.i96.i.i.i.i = phi ptr [ %.sroa.9.sroa.0.0.i.i.i.i.i, %bb.aa ], [ %.lcssa969.unr, %.lr.ph.i.i.i109.i.i.i.i.prol.loopexit ], [ %i.dj, %.lr.ph.i.i.i109.i.i.i.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i96.i.i.i.i, i64 528
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !7562, !noundef !21 ; 2 uses
  %.not.i.i4.i.i.i97.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i4.i.i.i97.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.i.i.i.i", label %.lr.ph.i3.i.i98.i.i.i.i

.lr.ph.i3.i.i98.i.i.i.i:                          ; preds = %.loopexit.i.i94.i.i.i.i, %.lr.ph.i3.i.i98.i.i.i.i
  %i.do = phi ptr [ %i.dr, %.lr.ph.i3.i.i98.i.i.i.i ], [ %i.dn, %.loopexit.i.i94.i.i.i.i ] ; 3 uses
  %.sroa.0.06.i.i.i99.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i3.i.i98.i.i.i.i ], [ %.sroa.0.0.ph.i.i96.i.i.i.i, %.loopexit.i.i94.i.i.i.i ]
  %.sroa.5.05.i.i.i100.i.i.i.i = phi i64 [ %i.dp, %.lr.ph.i3.i.i98.i.i.i.i ], [ 0, %.loopexit.i.i94.i.i.i.i ] ; 2 uses
  %i.dp = add i64 %.sroa.5.05.i.i.i100.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i101.i.i.i.i = icmp eq i64 %.sroa.5.05.i.i.i100.i.i.i.i, 0
  %..i.i.i.i102.i.i.i.i = select i1 %.not.i.i.i.i101.i.i.i.i, i64 808, i64 904
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i99.i.i.i.i, i64 noundef %..i.i.i.i102.i.i.i.i, i64 noundef 8) #52, !noalias !7563
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 528
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !7562, !noundef !21 ; 2 uses
  %.not.i.i.i.i.i103.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i103.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.loopexit.i.i.i.i", label %.lr.ph.i3.i.i98.i.i.i.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.loopexit.i.i.i.i": ; preds = %.lr.ph.i3.i.i98.i.i.i.i
  %i.ds = icmp eq i64 %i.dp, 0
  %i.dt = select i1 %i.ds, i64 808, i64 904
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.i.i.i.i"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.loopexit.i.i.i.i", %.loopexit.i.i94.i.i.i.i
  %.sroa.5.0.lcssa.i.i.i105.i.i.i.i = phi i64 [ 808, %.loopexit.i.i94.i.i.i.i ], [ %i.dt, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.loopexit.i.i.i.i" ]
  %.sroa.0.0.lcssa.i.i.i106.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i96.i.i.i.i, %.loopexit.i.i94.i.i.i.i ], [ %i.do, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.loopexit.i.i.i.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i106.i.i.i.i, i64 noundef %.sroa.5.0.lcssa.i.i.i105.i.i.i.i, i64 noundef 8) #52, !noalias !7563
  br label %"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$17h909f9ba9dabf63d5E.exit.i.i.i.i.i.backedge"

bb.ab:                                            ; preds = %"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hf935fd24899ce224E.exit.i.i.i.i.i.i.i.i"
  br i1 %i.cp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i", label %.lr.ph.i.i2.i79.i.i.i.i.preheader

.lr.ph.i.i2.i79.i.i.i.i.preheader:                ; preds = %bb.ab
  %xtraiter = and i64 %.sroa.9.sroa.6.0.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.i79.i.i.i.i.prol.loopexit, label %.lr.ph.i.i2.i79.i.i.i.i.prol

.lr.ph.i.i2.i79.i.i.i.i.prol:                     ; preds = %.lr.ph.i.i2.i79.i.i.i.i.preheader, %.lr.ph.i.i2.i79.i.i.i.i.prol
  %.sroa.012.015.i.i.i80.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i82.i.i.i.i.prol, %.lr.ph.i.i2.i79.i.i.i.i.prol ], [ %.sroa.9.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i2.i79.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i81.i.i.i.i.prol = phi i64 [ %i.dv, %.lr.ph.i.i2.i79.i.i.i.i.prol ], [ %.sroa.9.sroa.6.0.i.i.i.i.i, %.lr.ph.i.i2.i79.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.i79.i.i.i.i.prol ], [ 0, %.lr.ph.i.i2.i79.i.i.i.i.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i80.i.i.i.i.prol, i64 808
  %i.dv = add i64 %.sroa.011.014.i.i.i81.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i82.i.i.i.i.prol = load ptr, ptr %i.du, align 8, !noalias !7564, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.i79.i.i.i.i.prol.loopexit, label %.lr.ph.i.i2.i79.i.i.i.i.prol, !llvm.loop !7178

.lr.ph.i.i2.i79.i.i.i.i.prol.loopexit:            ; preds = %.lr.ph.i.i2.i79.i.i.i.i.prol, %.lr.ph.i.i2.i79.i.i.i.i.preheader
  %.sroa.012.0.i.i.i82.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i79.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i82.i.i.i.i.prol, %.lr.ph.i.i2.i79.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i80.i.i.i.i.unr = phi ptr [ %.sroa.9.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i2.i79.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i82.i.i.i.i.prol, %.lr.ph.i.i2.i79.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i81.i.i.i.i.unr = phi i64 [ %.sroa.9.sroa.6.0.i.i.i.i.i, %.lr.ph.i.i2.i79.i.i.i.i.preheader ], [ %i.dv, %.lr.ph.i.i2.i79.i.i.i.i.prol ]
  %i.dw = icmp ult i64 %.sroa.9.sroa.6.0.i.i.i.i.i, 8
  br i1 %i.dw, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i", label %.lr.ph.i.i2.i79.i.i.i.i

.lr.ph.i.i2.i79.i.i.i.i:                          ; preds = %.lr.ph.i.i2.i79.i.i.i.i.prol.loopexit, %.lr.ph.i.i2.i79.i.i.i.i
  %.sroa.012.015.i.i.i80.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i82.i.i.i.i.7, %.lr.ph.i.i2.i79.i.i.i.i ], [ %.sroa.012.015.i.i.i80.i.i.i.i.unr, %.lr.ph.i.i2.i79.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i81.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i2.i79.i.i.i.i ], [ %.sroa.011.014.i.i.i81.i.i.i.i.unr, %.lr.ph.i.i2.i79.i.i.i.i.prol.loopexit ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i80.i.i.i.i, i64 808
  %.sroa.012.0.i.i.i82.i.i.i.i = load ptr, ptr %i.dx, align 8, !noalias !7564, !nonnull !21, !noundef !21
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i82.i.i.i.i, i64 808
  %.sroa.012.0.i.i.i82.i.i.i.i.1 = load ptr, ptr %i.dy, align 8, !noalias !7564, !nonnull !21, !noundef !21
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i82.i.i.i.i.1, i64 808
  %.sroa.012.0.i.i.i82.i.i.i.i.2 = load ptr, ptr %i.dz, align 8, !noalias !7564, !nonnull !21, !noundef !21
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i82.i.i.i.i.2, i64 808
  %.sroa.012.0.i.i.i82.i.i.i.i.3 = load ptr, ptr %i.ea, align 8, !noalias !7564, !nonnull !21, !noundef !21
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i82.i.i.i.i.3, i64 808
  %.sroa.012.0.i.i.i82.i.i.i.i.4 = load ptr, ptr %i.eb, align 8, !noalias !7564, !nonnull !21, !noundef !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i82.i.i.i.i.4, i64 808
  %.sroa.012.0.i.i.i82.i.i.i.i.5 = load ptr, ptr %i.ec, align 8, !noalias !7564, !nonnull !21, !noundef !21
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i82.i.i.i.i.5, i64 808
  %.sroa.012.0.i.i.i82.i.i.i.i.6 = load ptr, ptr %i.ed, align 8, !noalias !7564, !nonnull !21, !noundef !21
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i82.i.i.i.i.6, i64 808
  %i.ef = add i64 %.sroa.011.014.i.i.i81.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i82.i.i.i.i.7 = load ptr, ptr %i.ee, align 8, !noalias !7564, !nonnull !21, !noundef !21 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i", label %.lr.ph.i.i2.i79.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i": ; preds = %.lr.ph.i.i2.i79.i.i.i.i.prol.loopexit, %.lr.ph.i.i2.i79.i.i.i.i, %bb.ab
  %.sroa.012.0.lcssa.i.i.i84.i.i.i.i = phi ptr [ %.sroa.9.sroa.0.0.i.i.i.i.i, %bb.ab ], [ %.sroa.012.0.i.i.i82.i.i.i.i.lcssa.unr, %.lr.ph.i.i2.i79.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i82.i.i.i.i.7, %.lr.ph.i.i2.i79.i.i.i.i ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i84.i.i.i.i, i64 802
  %i.ei = load i16, ptr %i.eh, align 2, !noalias !7565, !noundef !21
  %.not223.i.i.i.i = icmp eq i16 %i.ei, 0
  br i1 %.not223.i.i.i.i, label %.lr.ph.i.i.i.i.i54.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i.i61.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i"
  %.sroa.12166.0.i.i.i.i.ph = phi i64 [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i" ], [ %i.el, %._crit_edge.i.i.i.i.i61.i.i.i.i ], [ %i.el, %.new ], [ %i.el, %.prol.loopexit ]
  %.sroa.27.1.i.i.i.i.ph = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i" ], [ %i.en, %._crit_edge.i.i.i.i.i61.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.11.1.i.i.i.i.ph = phi ptr [ %.sroa.012.0.lcssa.i.i.i84.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i" ], [ %i.ek, %._crit_edge.i.i.i.i.i61.i.i.i.i ], [ %.pn30.i.i.i.i.i.i68.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i68.i.i.i.i.7, %.new ]
  %.ph = phi ptr [ %.sroa.012.0.lcssa.i.i.i84.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i" ], [ %i.ek, %._crit_edge.i.i.i.i.i61.i.i.i.i ], [ %i.ek, %.new ], [ %i.ek, %.prol.loopexit ]
  br label %.lr.ph.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i54.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i", %bb.ad
  %.sroa.0.060.i.i.i.i.i55.i.i.i.i = phi ptr [ %i.ek, %bb.ad ], [ %.sroa.012.0.lcssa.i.i.i84.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i56.i.i.i.i = phi i64 [ %i.fc, %bb.ad ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i50.i.i.i.i" ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i55.i.i.i.i, i64 528
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !7566, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i.i57.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i.i57.i.i.i.i, label %bb.ae, label %bb.ad

._crit_edge.i.i.i.i.i61.i.i.i.i:                  ; preds = %bb.ad
  %i.el = zext i16 %i.fe to i64                   ; 4 uses
  %i.em = icmp eq i64 %i.fc, 0
  %i.en = add nuw nsw i64 %i.el, 1                ; 2 uses
  br i1 %i.em, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i61.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 808
  %i.ep = icmp ult i16 %i.fe, 11
  call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  %xtraiter1028 = and i64 %i.fc, 7                ; 2 uses
  %lcmp.mod1029.not = icmp eq i64 %xtraiter1028, 0
  br i1 %lcmp.mod1029.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ac, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i65.i.i.i.i.prol = phi ptr [ %i.er, %.prol.preheader ], [ %i.eq, %bb.ac ]
  %.pn28.in.i.i.i.i.i.i66.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i67.i.i.i.i.prol, %.prol.preheader ], [ %i.fc, %bb.ac ]
  %prol.iter1030 = phi i64 [ %prol.iter1030.next, %.prol.preheader ], [ 0, %bb.ac ]
  %.pn28.i.i.i.i.i.i67.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i66.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i68.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i65.i.i.i.i.prol, align 8, !noalias !7567, !nonnull !21, !noundef !21 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i.prol, i64 808 ; 2 uses
  %prol.iter1030.next = add i64 %prol.iter1030, 1 ; 2 uses
  %prol.iter1030.cmp.not = icmp eq i64 %prol.iter1030.next, %xtraiter1028
  br i1 %prol.iter1030.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !7195

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ac
  %.pn30.i.i.i.i.i.i68.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ac ], [ %.pn30.i.i.i.i.i.i68.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i65.i.i.i.i.unr = phi ptr [ %i.eq, %bb.ac ], [ %i.er, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i66.i.i.i.i.unr = phi i64 [ %i.fc, %bb.ac ], [ %.pn28.i.i.i.i.i.i67.i.i.i.i.prol, %.prol.preheader ]
  %i.es = icmp ult i64 %.sroa.5.059.i.i.i.i.i56.i.i.i.i, 7
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i.preheader, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i65.i.i.i.i = phi ptr [ %i.fb, %.new ], [ %.pn30.in.i.i.i.i.i.i65.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i66.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i67.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i66.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i68.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i65.i.i.i.i, align 8, !noalias !7567, !nonnull !21, !noundef !21
  %i.et = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i, i64 808
  %.pn30.i.i.i.i.i.i68.i.i.i.i.1 = load ptr, ptr %i.et, align 8, !noalias !7567, !nonnull !21, !noundef !21
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i.1, i64 808
  %.pn30.i.i.i.i.i.i68.i.i.i.i.2 = load ptr, ptr %i.eu, align 8, !noalias !7567, !nonnull !21, !noundef !21
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i.2, i64 808
  %.pn30.i.i.i.i.i.i68.i.i.i.i.3 = load ptr, ptr %i.ev, align 8, !noalias !7567, !nonnull !21, !noundef !21
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i.3, i64 808
  %.pn30.i.i.i.i.i.i68.i.i.i.i.4 = load ptr, ptr %i.ew, align 8, !noalias !7567, !nonnull !21, !noundef !21
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i.4, i64 808
  %.pn30.i.i.i.i.i.i68.i.i.i.i.5 = load ptr, ptr %i.ex, align 8, !noalias !7567, !nonnull !21, !noundef !21
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i.5, i64 808
  %.pn30.i.i.i.i.i.i68.i.i.i.i.6 = load ptr, ptr %i.ey, align 8, !noalias !7567, !nonnull !21, !noundef !21
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i.6, i64 808
  %.pn28.i.i.i.i.i.i67.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i66.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i68.i.i.i.i.7 = load ptr, ptr %i.ez, align 8, !noalias !7567, !nonnull !21, !noundef !21 ; 2 uses
  %i.fa = icmp eq i64 %.pn28.i.i.i.i.i.i67.i.i.i.i.7, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i68.i.i.i.i.7, i64 808
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i.preheader, label %.new

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i54.i.i.i.i
  %i.fc = add i64 %.sroa.5.059.i.i.i.i.i56.i.i.i.i, 1 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i55.i.i.i.i, i64 800
  %i.fe = load i16, ptr %i.fd, align 8, !noalias !7566 ; 3 uses
  %.not.i.i.i.i.i.i58.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i56.i.i.i.i, 0
  %..i.i.i.i.i.i59.i.i.i.i = select i1 %.not.i.i.i.i.i.i58.i.i.i.i, i64 808, i64 904
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i55.i.i.i.i, i64 noundef %..i.i.i.i.i.i59.i.i.i.i, i64 noundef 8) #52, !noalias !7568
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 802
  %i.fg = load i16, ptr %i.ff, align 2, !noalias !7565, !noundef !21
  %i.fh = icmp ult i16 %i.fe, %i.fg
  br i1 %i.fh, label %._crit_edge.i.i.i.i.i61.i.i.i.i, label %.lr.ph.i.i.i.i.i54.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i54.i.i.i.i
  %.not.i54.i.i.i.i.i75.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i56.i.i.i.i, 0
  %..i55.i.i.i.i.i76.i.i.i.i = select i1 %.not.i54.i.i.i.i.i75.i.i.i.i, i64 808, i64 904
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i55.i.i.i.i, i64 noundef %..i55.i.i.i.i.i76.i.i.i.i, i64 noundef 8) #52, !noalias !7568
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1125) #57
          to label %.noexc.i.i.i77.i.i.i.i unwind label %bb.af, !noalias !7569

.noexc.i.i.i77.i.i.i.i:                           ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.lr.ph.i.i.i.i.i.i.outer:                         ; preds = %.lr.ph.i.i.i.i.i.i.outer.backedge, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.12166.0.i.i.i.i.ph949 = phi i64 [ %.sroa.12166.0.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.outer.backedge ]
  %.sroa.40.0.in.i.i.i.i.ph = phi i64 [ %.sroa.9.sroa.7.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.40.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.outer.backedge ]
  %.sroa.27.1.i.i.i.i.ph950 = phi i64 [ %.sroa.27.1.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.27.1.i.i.i.i.ph950.be, %.lr.ph.i.i.i.i.i.i.outer.backedge ]
  %.sroa.11.1.i.i.i.i.ph951 = phi ptr [ %.sroa.11.1.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.11.1.i.i.i.i.ph951.be, %.lr.ph.i.i.i.i.i.i.outer.backedge ] ; 6 uses
  %.ph952 = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.outer.backedge ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i.i.i.ph951, i64 802
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.outer, %._crit_edge.i.i.i.i.i.thread.i.i.i.i
  %.sroa.12166.0.i.i.i.i = phi i64 [ %.sroa.27.1.i.i.i.i, %._crit_edge.i.i.i.i.i.thread.i.i.i.i ], [ %.sroa.12166.0.i.i.i.i.ph949, %.lr.ph.i.i.i.i.i.i.outer ] ; 2 uses
  %.sroa.40.0.in.i.i.i.i = phi i64 [ %.sroa.40.0.i.i.i.i, %._crit_edge.i.i.i.i.i.thread.i.i.i.i ], [ %.sroa.40.0.in.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.outer ]
  %.sroa.27.1.i.i.i.i = phi i64 [ %i.gn, %._crit_edge.i.i.i.i.i.thread.i.i.i.i ], [ %.sroa.27.1.i.i.i.i.ph950, %.lr.ph.i.i.i.i.i.i.outer ] ; 3 uses
  %i.fk = phi ptr [ %.sroa.11.1.i.i.i.i.ph951, %._crit_edge.i.i.i.i.i.thread.i.i.i.i ], [ %.ph952, %.lr.ph.i.i.i.i.i.i.outer ] ; 2 uses
  %.sroa.40.0.i.i.i.i = add i64 %.sroa.40.0.in.i.i.i.i, -1 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 536
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %.sroa.12166.0.i.i.i.i ; 2 uses
  %i.fn = getelementptr inbounds nuw [48 x i8], ptr %i.fk, i64 %.sroa.12166.0.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7570)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.fm, align 8, !alias.scope !7570, !noalias !7571 ; 2 uses
  %i.fo = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.fo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i", label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.fp, align 8, !alias.scope !7570, !noalias !7571, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7572
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i": ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7573)
  %i.fq = load i64, ptr %i.fn, align 8, !range !25, !alias.scope !7573, !noalias !7571, !noundef !21 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fq, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7574)
  call void @llvm.experimental.noalias.scope.decl(metadata !7575)
  call void @llvm.experimental.noalias.scope.decl(metadata !7576)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fr, align 8, !alias.scope !7577, !noalias !7571, !nonnull !21, !noundef !21 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !7577, !noalias !7571, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7578)
  %i.ft = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ft, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ah, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fv, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.ah ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fv = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !range !25, !alias.scope !7578, !noalias !7579, !noundef !21 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fw, align 8, !alias.scope !7578, !noalias !7579 ; 4 uses
  switch i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai [
    i64 -9223372036854775808, label %bb.aj
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  ]

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fx = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 2) #52, !noalias !7580
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #52, !noalias !7580
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aj, %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fy = icmp eq i64 %i.fv, %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fy, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ah
  %i.fz = icmp eq i64 %i.fq, 0
  br i1 %i.fz, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ga = shl nuw i64 %i.fq, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ga, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7579
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i.i.i.i.i.i": ; preds = %bb.ak, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i"
  %i.gb = icmp eq i64 %.sroa.40.0.i.i.i.i, 0
  br i1 %i.gb, label %.loopexit.i.i.i.i3.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i3.i.i:                           ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i.i.i.i.i.i"
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i.i.i.ph951, i64 528
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !7581, !noundef !21 ; 2 uses
  %.not.i.i4.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i4.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.i.i.i.i", label %.lr.ph.i3.i.i.i.i.i.i

.lr.ph.i3.i.i.i.i.i.i:                            ; preds = %.loopexit.i.i.i.i3.i.i, %.lr.ph.i3.i.i.i.i.i.i
  %i.ge = phi ptr [ %i.gh, %.lr.ph.i3.i.i.i.i.i.i ], [ %i.gd, %.loopexit.i.i.i.i3.i.i ] ; 3 uses
  %.sroa.0.06.i.i.i.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i3.i.i.i.i.i.i ], [ %.sroa.11.1.i.i.i.i.ph951, %.loopexit.i.i.i.i3.i.i ]
  %.sroa.5.05.i.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i3.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i3.i.i ] ; 2 uses
  %i.gf = add i64 %.sroa.5.05.i.i.i.i.i.i.i, 1    ; 2 uses
  %.not.i.i.i.i.i.i4.i.i = icmp eq i64 %.sroa.5.05.i.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i4.i.i, i64 808, i64 904
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i.i, i64 noundef 8) #52, !noalias !7582
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 528
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !7581, !noundef !21 ; 2 uses
  %.not.i.i.i.i.i42.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.loopexit.i.i.i.i", label %.lr.ph.i3.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.loopexit.i.i.i.i": ; preds = %.lr.ph.i3.i.i.i.i.i.i
  %i.gi = icmp eq i64 %i.gf, 0
  %i.gj = select i1 %i.gi, i64 808, i64 904
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.loopexit.i.i.i.i", %.loopexit.i.i.i.i3.i.i
  %.sroa.5.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 808, %.loopexit.i.i.i.i3.i.i ], [ %i.gj, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.loopexit.i.i.i.i" ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.11.1.i.i.i.i.ph951, %.loopexit.i.i.i.i3.i.i ], [ %i.ge, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.loopexit.i.i.i.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i.i.i.i.i, i64 noundef %.sroa.5.0.lcssa.i.i.i.i.i.i.i, i64 noundef 8) #52, !noalias !7582
  br label %"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$17h909f9ba9dabf63d5E.exit.i.i.i.i.i.backedge"

"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$17h909f9ba9dabf63d5E.exit.i.i.i.i.i.backedge": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h63c3fa6cb92e01eaE.exit.i.i104.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i"
  br label %"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$17h909f9ba9dabf63d5E.exit.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i.i.i.i.i.i"
  %i.gk = load i16, ptr %i.fj, align 2, !noalias !7583, !noundef !21
  %i.gl = zext i16 %i.gk to i64
  %i.gm = icmp ult i64 %.sroa.27.1.i.i.i.i, %i.gl
  br i1 %i.gm, label %._crit_edge.i.i.i.i.i.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.thread.i.i.i.i:             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i.i.i.i.i"
  %i.gn = add nuw nsw i64 %.sroa.27.1.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i.i.i.i.i", %bb.am
  %.sroa.0.060.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gp, %bb.am ], [ %.sroa.11.1.i.i.i.i.ph951, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hh, %bb.am ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1cd274d7d784af32E.exit.i.i.i.i.i.i" ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i.i.i.i.i, i64 528
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !7584, !noundef !21 ; 6 uses
  %.not.i.i.i.i.i.i.i38.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i38.i.i.i.i, label %bb.an, label %bb.am

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.am
  %i.gq = zext i16 %i.hj to i64                   ; 2 uses
  %i.gr = icmp eq i64 %i.hh, 0
  %i.gs = add nuw nsw i64 %i.gq, 1                ; 2 uses
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.outer.backedge, label %bb.al

.lr.ph.i.i.i.i.i.i.outer.backedge:                ; preds = %.prol.loopexit1032, %.new1033, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.sroa.27.1.i.i.i.i.ph950.be = phi i64 [ %i.gs, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %.new1033 ], [ 0, %.prol.loopexit1032 ]
  %.sroa.11.1.i.i.i.i.ph951.be = phi ptr [ %i.gp, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit1032 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new1033 ]
  br label %.lr.ph.i.i.i.i.i.i.outer

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 808
  %i.gu = icmp ult i16 %i.hj, 11
  call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gs ; 2 uses
  %xtraiter1036 = and i64 %i.hh, 7                ; 2 uses
  %lcmp.mod1037.not = icmp eq i64 %xtraiter1036, 0
  br i1 %lcmp.mod1037.not, label %.prol.loopexit1032, label %.prol.preheader1031

.prol.preheader1031:                              ; preds = %bb.al, %.prol.preheader1031
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.gw, %.prol.preheader1031 ], [ %i.gv, %bb.al ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1031 ], [ %i.hh, %bb.al ]
  %prol.iter1038 = phi i64 [ %prol.iter1038.next, %.prol.preheader1031 ], [ 0, %bb.al ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !7585, !nonnull !21, !noundef !21 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 808 ; 2 uses
  %prol.iter1038.next = add i64 %prol.iter1038, 1 ; 2 uses
  %prol.iter1038.cmp.not = icmp eq i64 %prol.iter1038.next, %xtraiter1036
  br i1 %prol.iter1038.cmp.not, label %.prol.loopexit1032, label %.prol.preheader1031, !llvm.loop !7240

.prol.loopexit1032:                               ; preds = %.prol.preheader1031, %bb.al
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.al ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1031 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.gv, %bb.al ], [ %i.gw, %.prol.preheader1031 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.hh, %bb.al ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1031 ]
  %i.gx = icmp ult i64 %.sroa.5.059.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.gx, label %.lr.ph.i.i.i.i.i.i.outer.backedge, label %.new1033

.new1033:                                         ; preds = %.prol.loopexit1032, %.new1033
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hg, %.new1033 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1032 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new1033 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1032 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !7585, !nonnull !21, !noundef !21
  %i.gy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.gy, align 8, !noalias !7585, !nonnull !21, !noundef !21
  %i.gz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.gz, align 8, !noalias !7585, !nonnull !21, !noundef !21
  %i.ha = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ha, align 8, !noalias !7585, !nonnull !21, !noundef !21
  %i.hb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.hb, align 8, !noalias !7585, !nonnull !21, !noundef !21
  %i.hc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.hc, align 8, !noalias !7585, !nonnull !21, !noundef !21
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 808
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.hd, align 8, !noalias !7585, !nonnull !21, !noundef !21
  %i.he = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 808
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.he, align 8, !noalias !7585, !nonnull !21, !noundef !21 ; 2 uses
  %i.hf = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 808
  br i1 %i.hf, label %.lr.ph.i.i.i.i.i.i.outer.backedge, label %.new1033

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.hh = add i64 %.sroa.5.059.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i.i.i.i.i, i64 800
  %i.hj = load i16, ptr %i.hi, align 8, !noalias !7584 ; 3 uses
  %.not.i.i.i.i.i.i39.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i39.i.i.i.i, i64 808, i64 904
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i.i.i.i, i64 noundef 8) #52, !noalias !7586
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gp, i64 802
  %i.hl = load i16, ptr %i.hk, align 2, !noalias !7583, !noundef !21
  %i.hm = icmp ult i16 %i.hj, %i.hl
  br i1 %i.hm, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.not.i54.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i.i.i.i.i, 0
  %..i55.i.i.i.i.i.i.i.i.i = select i1 %.not.i54.i.i.i.i.i.i.i.i.i, i64 808, i64 904
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i.i.i.i.i, i64 noundef %..i55.i.i.i.i.i.i.i.i.i, i64 noundef 8) #52, !noalias !7586
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1125) #57
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ao, !noalias !7587

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.critedge.i.i.i.i.sink.split:                     ; preds = %bb.bk, %bb.bd
  %.pn.i.i.i.i.ph = phi { ptr, i32 } [ %i.lf, %bb.bd ], [ %i.ox, %bb.bk ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0168.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0168.i.i.i.i, i64 noundef %.sroa.0119.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7538
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.sink.split, %bb.bk, %bb.bd
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.lf, %bb.bd ], [ %i.ox, %bb.bk ], [ %.pn.i.i.i.i.ph, %.critedge.i.i.i.i.sink.split ]
  invoke fastcc void @"_ZN4core3ptr274drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$$GT$$GT$17h9d726f5bcfcdec0eE"(ptr noalias noundef align 8 dereferenceable(96) %i.l) #55
          to label %.body unwind label %bb.bj, !noalias !7538

.loopexit225.i.i.i.i:                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i", %bb.s, %.loopexit.sink.split.i.i.i.i.i
  %.promoted.i.i157.i.i.i = phi ptr [ %.promoted.i.i158.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ %.promoted.i.i161.i.i.i, %bb.s ], [ %.promoted.i.i160.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ]
  %.sroa.4.0..sroa_idx.promoted.i.i156.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ 4, %bb.s ], [ 4, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ]
  %.sroa.14.0.i.i.i.i = phi i64 [ %.sroa.9.sroa.7.0.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ undef, %bb.s ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ]
  %.sroa.13.0.i.i.i.i = phi i64 [ %.sroa.9.sroa.6.0.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ undef, %bb.s ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ]
  %.sroa.12.0.i.i.i.i = phi ptr [ %.sroa.9.sroa.0.0.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ undef, %bb.s ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ]
  %.sroa.6120.0.i.i.i.i = phi i64 [ %.sroa.0.sroa.7.0.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ undef, %bb.s ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.0168.i.i.i.i = phi ptr [ %.sroa.0.sroa.6.0.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ undef, %bb.s ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ] ; 4 uses
  %.sroa.0119.0.i.i.i.i = phi i64 [ %.sroa.0.sroa.0.0.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ undef, %bb.s ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ] ; 5 uses
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.15.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ %.sroa.7121.i.i.i.i, %bb.s ], [ %.sroa.7121.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ]
  %.sroa.9.sroa.8.0.lcssa76.sink.i.i.i.i.i = phi i64 [ %.sroa.9.sroa.8.0.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i ], [ 3, %bb.s ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fa7034688413309E.exit.i.i.i.i.i" ]
  store i64 %.sroa.9.sroa.8.0.lcssa76.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !7540, !noalias !7555
  %.sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.0..sroa.7121.i.i.i.0..sroa.7121.i.i.0..sroa.7121.i.i.0..sroa.7121.i.0..sroa.7121.i.0..sroa.7121.0..sroa.7121.0..sroa.7121.24..i.i.i.i = load i64, ptr %.sroa.7121.i.i.i.i, align 8, !range !41, !noalias !7538, !noundef !21 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.0..sroa.7121.i.i.i.0..sroa.7121.i.i.0..sroa.7121.i.i.0..sroa.7121.i.0..sroa.7121.i.0..sroa.7121.0..sroa.7121.0..sroa.7121.24..i.i.i.i, 3
  br i1 %.not.i.i.i.i, label %.noexc4.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.loopexit225.i.i.i.i
  store i64 %.sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.i.0..sroa.7121.i.i.i.0..sroa.7121.i.i.i.0..sroa.7121.i.i.0..sroa.7121.i.i.0..sroa.7121.i.0..sroa.7121.i.0..sroa.7121.0..sroa.7121.0..sroa.7121.24..i.i.i.i, ptr %i.j, align 8, !noalias !7538
  store ptr %.sroa.12.0.i.i.i.i, ptr %.sroa.12.24..sroa_idx.i.i.i.i, align 8, !noalias !7538
  store i64 %.sroa.13.0.i.i.i.i, ptr %.sroa.13.24..sroa_idx.i.i.i.i, align 8, !noalias !7538
  store i64 %.sroa.14.0.i.i.i.i, ptr %.sroa.14.24..sroa_idx.i.i.i.i, align 8, !noalias !7538
  %.sroa.15.i.i.i.i.0..sroa.15.i.i.i.i.0..sroa.15.i.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.24.copyload.i.i.i.i = load i64, ptr %.sroa.15.i.i.i.i, align 8, !noalias !7538
  store i64 %.sroa.15.i.i.i.i.0..sroa.15.i.i.i.i.0..sroa.15.i.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.24.copyload.i.i.i.i, ptr %.sroa.15.24..sroa_idx.i.i.i.i, align 8, !noalias !7538
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0167.i.i.i.i, i64 714 ; 2 uses
  %i.hp = load i16, ptr %i.ho, align 2, !noalias !7538, !noundef !21 ; 3 uses
  %i.hq = icmp ult i16 %i.hp, 11
  br i1 %i.hq, label %bb.bh, label %.preheader.i.i.i.i

.noexc4.i.i.i:                                    ; preds = %.loopexit225.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7121.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i)
  invoke fastcc void @"_ZN4core3ptr274drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$$GT$$GT$17h9d726f5bcfcdec0eE"(ptr noalias noundef align 8 dereferenceable(96) %i.l)
          to label %.noexc125 unwind label %bb.d

.noexc125:                                        ; preds = %.noexc4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7538
  %i.hr = icmp eq i64 %.sroa.8.0.i.i.i, 0
  br i1 %i.hr, label %.loopexit.i.i, label %.lr.ph.i17.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %.noexc125
  %i.hs = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %.lr.ph.i17.i.i.i.i
  %.sroa.02.010.i.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i, %.lr.ph.i17.i.i.i.i ], [ %i.ia, %bb.as ]
  %.sroa.03.09.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i17.i.i.i.i ], [ %i.id, %bb.as ] ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i, i64 714
end_hunk_4
begin_hunk_5_@_ZN17meilisearch_types8settings25apply_settings_to_builder17h64949a1cccb56b0cE:bb.a
  %i.vh = extractvalue { i64, i64 } %i.vf, 1      ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store i64 %i.vh, ptr %i.vi, align 8, !noalias !10235
  store i8 1, ptr %i.vc, align 8, !noalias !10235
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i.i.i.i
  %.pre-phi28.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.vh, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i.i.i.i" ]
  %i.vj = phi i64 [ %.pre.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.vg, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.vk = add i64 %i.vj, 1
  store i64 %i.vk, ptr %i.vb, align 8, !noalias !10234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) @23, i64 32, i1 false), !noalias !10232
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  store i64 %i.vj, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !10232
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store i64 %.pre-phi28.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !10232
  call void @llvm.experimental.noalias.scope.decl(metadata !10236)
  %i.vl = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.not.i.i.i.i212 = icmp eq i64 %.sroa.5.0, 0
  br i1 %.not.i.i.i.i212, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9b41ed2856845330E.exit, label %bb.ex, !prof !49

bb.ex:                                            ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i"
  %i.vm = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h10faf3647939f81dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef %.sroa.5.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, i1 noundef zeroext true)
          to label %bb.ey unwind label %.loopexit.split-lp.i.i.i.i, !noalias !10232 ; 0 uses

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.experimental.noalias.scope.decl(metadata !10237)
  call void @llvm.experimental.noalias.scope.decl(metadata !10238)
  call void @llvm.experimental.noalias.scope.decl(metadata !10239)
  br i1 %.not154.not, label %.critedge.i1.i.i.i.i.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.vn = icmp eq i64 %i.uy, 0
  br i1 %i.vn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i", label %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader

.lr.ph.i.i32.i.i.i.i.i.i.i.preheader:             ; preds = %bb.ez
  %xtraiter896 = and i64 %i.uy, 7                 ; 2 uses
  %lcmp.mod897.not = icmp eq i64 %xtraiter896, 0
  br i1 %lcmp.mod897.not, label %.lr.ph.i.i32.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i32.i.i.i.i.i.i.i.prol

.lr.ph.i.i32.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i33.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i35.i.i.i.i.i.i.i.prol, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol ], [ %i.uw, %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i34.i.i.i.i.i.i.i.prol = phi i64 [ %i.vp, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol ], [ %i.uy, %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader ]
  %prol.iter898 = phi i64 [ %prol.iter898.next, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader ]
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i33.i.i.i.i.i.i.i.prol, i64 288
  %i.vp = add i64 %.sroa.011.014.i.i34.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.prol = load ptr, ptr %i.vo, align 8, !noalias !10240, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter898.next = add i64 %prol.iter898, 1   ; 2 uses
  %prol.iter898.cmp.not = icmp eq i64 %prol.iter898.next, %xtraiter896
  br i1 %prol.iter898.cmp.not, label %.lr.ph.i.i32.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i32.i.i.i.i.i.i.i.prol, !llvm.loop !9803

.lr.ph.i.i32.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i32.i.i.i.i.i.i.i.prol, %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i35.i.i.i.i.i.i.i.prol, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i33.i.i.i.i.i.i.i.unr = phi ptr [ %i.uw, %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i35.i.i.i.i.i.i.i.prol, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i34.i.i.i.i.i.i.i.unr = phi i64 [ %i.uy, %.lr.ph.i.i32.i.i.i.i.i.i.i.preheader ], [ %i.vp, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol ]
  %i.vq = icmp ult i64 %i.uy, 8
  br i1 %i.vq, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i", label %.lr.ph.i.i32.i.i.i.i.i.i.i

.lr.ph.i.i32.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i32.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i32.i.i.i.i.i.i.i
  %.sroa.012.015.i.i33.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i35.i.i.i.i.i.i.i.7, %.lr.ph.i.i32.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i33.i.i.i.i.i.i.i.unr, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i34.i.i.i.i.i.i.i = phi i64 [ %i.vz, %.lr.ph.i.i32.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i34.i.i.i.i.i.i.i.unr, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol.loopexit ]
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i33.i.i.i.i.i.i.i, i64 288
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i = load ptr, ptr %i.vr, align 8, !noalias !10240, !nonnull !21, !noundef !21
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.i.i.i.i.i.i, i64 288
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.1 = load ptr, ptr %i.vs, align 8, !noalias !10240, !nonnull !21, !noundef !21
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.i.i.i.i.i.i.1, i64 288
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.2 = load ptr, ptr %i.vt, align 8, !noalias !10240, !nonnull !21, !noundef !21
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.i.i.i.i.i.i.2, i64 288
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.3 = load ptr, ptr %i.vu, align 8, !noalias !10240, !nonnull !21, !noundef !21
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.i.i.i.i.i.i.3, i64 288
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.4 = load ptr, ptr %i.vv, align 8, !noalias !10240, !nonnull !21, !noundef !21
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.i.i.i.i.i.i.4, i64 288
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.5 = load ptr, ptr %i.vw, align 8, !noalias !10240, !nonnull !21, !noundef !21
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.i.i.i.i.i.i.5, i64 288
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.6 = load ptr, ptr %i.vx, align 8, !noalias !10240, !nonnull !21, !noundef !21
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.i.i.i.i.i.i.6, i64 288
  %i.vz = add i64 %.sroa.011.014.i.i34.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i35.i.i.i.i.i.i.i.7 = load ptr, ptr %i.vy, align 8, !noalias !10240, !nonnull !21, !noundef !21 ; 2 uses
  %i.wa = icmp eq i64 %i.vz, 0
  br i1 %i.wa, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i", label %.lr.ph.i.i32.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i32.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i32.i.i.i.i.i.i.i, %bb.ez
  %.sroa.05.0.copyload.i.i10.i.i.i.i.i.i.i = phi ptr [ %i.uw, %bb.ez ], [ %.sroa.012.0.i.i35.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i32.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i35.i.i.i.i.i.i.i.7, %.lr.ph.i.i32.i.i.i.i.i.i.i ] ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i10.i.i.i.i.i.i.i, i64 274
  %i.wc = load i16, ptr %i.wb, align 2, !noalias !10241, !noundef !21
  %.not316 = icmp eq i16 %i.wc, 0
  br i1 %.not316, label %.lr.ph.i.i.i.i13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i13.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i", %bb.fa
  %.sroa.0.038.i.i.i.i14.i.i.i.i.i.i.i = phi ptr [ %i.wd, %bb.fa ], [ %.sroa.05.0.copyload.i.i10.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i15.i.i.i.i.i.i.i = phi i64 [ %i.we, %bb.fa ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i" ] ; 2 uses
  %i.wd = load ptr, ptr %.sroa.0.038.i.i.i.i14.i.i.i.i.i.i.i, align 8, !noalias !10242, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i16.i.i.i.i.i.i.i = icmp eq ptr %i.wd, null
  br i1 %.not.i.i.i.i.i16.i.i.i.i.i.i.i, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i.i.i.i13.i.i.i.i.i.i.i
  %i.we = add i64 %.sroa.5.037.i.i.i.i15.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i14.i.i.i.i.i.i.i, i64 272
  %i.wg = load i16, ptr %i.wf, align 8, !noalias !10242 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wd, i64 274
  %i.wi = load i16, ptr %i.wh, align 2, !noalias !10241, !noundef !21
  %i.wj = icmp ult i16 %i.wg, %i.wi
  br i1 %i.wj, label %bb.fb, label %.lr.ph.i.i.i.i13.i.i.i.i.i.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.wk = zext i16 %i.wg to i64                   ; 4 uses
  %i.wl = icmp eq i64 %i.we, 0
  %i.wm = add nuw nsw i64 %i.wk, 1                ; 2 uses
  br i1 %i.wl, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wd, i64 288
  %i.wo = icmp ult i16 %i.wg, 11
  call void @llvm.assume(i1 %i.wo), !noalias !10239
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.wm ; 2 uses
  %xtraiter900 = and i64 %i.we, 7                 ; 2 uses
  %lcmp.mod901.not = icmp eq i64 %xtraiter900, 0
  br i1 %lcmp.mod901.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.fc, %.prol.preheader
  %.pn30.in.i.i.i.i21.i.i.i.i.i.i.i.prol = phi ptr [ %i.wq, %.prol.preheader ], [ %i.wp, %bb.fc ]
  %.pn28.in.i.i.i.i22.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i23.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.we, %bb.fc ]
  %prol.iter902 = phi i64 [ %prol.iter902.next, %.prol.preheader ], [ 0, %bb.fc ]
  %.pn28.i.i.i.i23.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i22.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i21.i.i.i.i.i.i.i.prol, align 8, !noalias !10243, !nonnull !21, !noundef !21 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i.prol, i64 288 ; 2 uses
  %prol.iter902.next = add i64 %prol.iter902, 1   ; 2 uses
  %prol.iter902.cmp.not = icmp eq i64 %prol.iter902.next, %xtraiter900
  br i1 %prol.iter902.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9817

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.fc
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.fc ], [ %.pn30.i.i.i.i24.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i21.i.i.i.i.i.i.i.unr = phi ptr [ %i.wp, %bb.fc ], [ %i.wq, %.prol.preheader ]
  %.pn28.in.i.i.i.i22.i.i.i.i.i.i.i.unr = phi i64 [ %i.we, %bb.fc ], [ %.pn28.i.i.i.i23.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.wr = icmp ult i64 %.sroa.5.037.i.i.i.i15.i.i.i.i.i.i.i, 7
  br i1 %i.wr, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i21.i.i.i.i.i.i.i = phi ptr [ %i.xa, %.new ], [ %.pn30.in.i.i.i.i21.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i22.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i23.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i22.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i21.i.i.i.i.i.i.i, align 8, !noalias !10243, !nonnull !21, !noundef !21
  %i.ws = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i, i64 288
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ws, align 8, !noalias !10243, !nonnull !21, !noundef !21
  %i.wt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i.1, i64 288
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.2 = load ptr, ptr %i.wt, align 8, !noalias !10243, !nonnull !21, !noundef !21
  %i.wu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i.2, i64 288
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.3 = load ptr, ptr %i.wu, align 8, !noalias !10243, !nonnull !21, !noundef !21
  %i.wv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i.3, i64 288
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.4 = load ptr, ptr %i.wv, align 8, !noalias !10243, !nonnull !21, !noundef !21
  %i.ww = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i.4, i64 288
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ww, align 8, !noalias !10243, !nonnull !21, !noundef !21
  %i.wx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i.5, i64 288
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.6 = load ptr, ptr %i.wx, align 8, !noalias !10243, !nonnull !21, !noundef !21
  %i.wy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i.6, i64 288
  %.pn28.i.i.i.i23.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i22.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i24.i.i.i.i.i.i.i.7 = load ptr, ptr %i.wy, align 8, !noalias !10243, !nonnull !21, !noundef !21 ; 2 uses
  %i.wz = icmp eq i64 %.pn28.i.i.i.i23.i.i.i.i.i.i.i.7, 0
  %i.xa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.wz, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new

bb.fd:                                            ; preds = %.lr.ph.i.i.i.i13.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i30.i.i.i.i.i.i.i unwind label %bb.fe, !noalias !10244

.noexc.i.i30.i.i.i.i.i.i.i:                       ; preds = %bb.fd
  unreachable

bb.fe:                                            ; preds = %bb.fd
  %i.xb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !10239
  unreachable

.critedge.i1.i.i.i.i.i.i.i:                       ; preds = %bb.ey
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !10232

.noexc4.i.i.i.i:                                  ; preds = %.critedge.i1.i.i.i.i.i.i.i
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i", %bb.fb
  %.sroa.0.0.ph.i.i.i20.i.i.i.i.i.i.i306 = phi ptr [ %i.wd, %bb.fb ], [ %.sroa.05.0.copyload.i.i10.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i" ], [ %i.wd, %.new ], [ %i.wd, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i18.i.i.i.i.i.i.i305 = phi i64 [ %i.wk, %bb.fb ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i" ], [ %i.wk, %.new ], [ %i.wk, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i26.i.i.i.i.i.i.i = phi i64 [ %i.wm, %bb.fb ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i27.i.i.i.i.i.i.i = phi ptr [ %i.wd, %bb.fb ], [ %.sroa.05.0.copyload.i.i10.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i7.i.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i24.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i24.i.i.i.i.i.i.i.7, %.new ]
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i20.i.i.i.i.i.i.i306, i64 8
  %i.xd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i.i.i.i.i.i.i305, 11
  call void @llvm.assume(i1 %i.xd), !noalias !10239
  %i.xe = getelementptr inbounds nuw [24 x i8], ptr %i.xc, i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i.i.i.i.i.i.i305
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i20.i.i.i.i.i.i.i306, i64 276
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i.i.i.i.i.i.i305
  %i.xh = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.xi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.xk = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br label %bb.ff

bb.ff:                                            ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.21.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i26.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.2742.0.in.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2742.0.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i" ]
  %.sroa.7.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i27.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i" ] ; 4 uses
  %i.xl = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aaz, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i" ]
  %.pn71.i.i.i.i.i.i.i = phi ptr [ %i.xg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.abb, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.2742.0.i.i.i.i.i.i.i = add i64 %.sroa.2742.0.in.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn71.i.i.i.i.i.i.i) ]
  %.val6.i.i.i.i.i.i.i.i = load i8, ptr %.pn71.i.i.i.i.i.i.i, align 1, !noalias !10245 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10246
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @868)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.i.i.i.i214, !noalias !10232

.noexc5.i.i.i.i:                                  ; preds = %bb.ff
  store i8 %.val6.i.i.i.i.i.i.i.i, ptr %i.xh, align 8, !noalias !10247
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10248, !noalias !10249, !noundef !21
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10248, !noalias !10249, !noundef !21
  %i.xm = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val9.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p), !noalias !10245 ; 2 uses
  %i.xn = load i64, ptr %i.vl, align 8, !alias.scope !10250, !noalias !10251, !noundef !21
  %i.xo = icmp eq i64 %i.xn, 0
  br i1 %i.xo, label %bb.fg, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4d2990d03af6caeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !23

bb.fg:                                            ; preds = %.noexc5.i.i.i.i
  %i.xp = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h10faf3647939f81dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4d2990d03af6caeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.fp, !noalias !10252 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4d2990d03af6caeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.fg, %.noexc5.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215 = load ptr, ptr %i.q, align 8, !alias.scope !10253, !noalias !10254, !nonnull !21, !noundef !21 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xi, align 8, !alias.scope !10253, !noalias !10254, !noundef !21 ; 4 uses
  %i.xq = lshr i64 %i.xm, 57
  %i.xr = trunc nuw nsw i64 %i.xq to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.xr, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xj, align 8, !noalias !10247 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xk, align 8, !noalias !10247, !nonnull !21 ; 2 uses
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fj, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4d2990d03af6caeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xm, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4d2990d03af6caeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.yr, %bb.fj ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4d2990d03af6caeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fj ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4d2990d03af6caeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fj ]
  %i.xs = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4d2990d03af6caeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.yq, %bb.fj ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.xt, align 1, !noalias !10255 ; 3 uses
  %i.xu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.xv = bitcast <16 x i1> %i.xu to i16          ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.xv, 0
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.fh, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.yg, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.xv, %bb.fh ] ; 3 uses
  %i.xw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.xx = zext nneg i16 %i.xw to i64
  %i.xy = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.xx
  %i.xz = and i64 %i.xy, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ya = sub nsw i64 0, %i.xz
  %i.yb = getelementptr inbounds [32 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215, i64 %i.ya ; 3 uses
  %i.yc = getelementptr i8, ptr %i.yb, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.yc, align 8, !noalias !10256, !noundef !21
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !59

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yd = getelementptr i8, ptr %i.yb, i64 -24
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.yd, align 8, !noalias !10256, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !10257, !noalias !10256
  %i.ye = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ye, label %bb.fm, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !39

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.fh
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fi, !prof !23

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yf = add i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.yg = and i16 %i.yf, %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.yg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yh = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.yi = bitcast <16 x i1> %i.yh to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.yi, 0 ; 2 uses
  %i.yj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.yi, i1 true)
  %i.yk = zext nneg i16 %i.yj to i64
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.yk
  %i.yl = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ym = and i64 %i.yl, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fj, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.fi, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ym, %bb.fi ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.yn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.yo = bitcast <16 x i1> %i.yn to i16
  %i.yp = icmp eq i16 %i.yo, 0
  br i1 %i.yp, label %bb.fj, label %bb.fk, !prof !23

bb.fj:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fi
  %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.fi ]
  %.sroa.6.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.fi ]
  %i.yq = add i64 %i.xs, 16                       ; 2 uses
  %i.yr = add i64 %i.yq, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.fh

bb.fk:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215, i64 %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yt = load i8, ptr %i.ys, align 1, !noalias !10258, !noundef !21 ; 2 uses
  %i.yu = icmp sgt i8 %i.yt, -1
  br i1 %i.yu, label %bb.fl, label %bb.fo, !prof !23

bb.fl:                                            ; preds = %bb.fk
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215, align 16, !noalias !10258
  %i.yv = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.yw = bitcast <16 x i1> %i.yv to i16          ; 2 uses
  %i.yx = icmp ne i16 %i.yw, 0
  call void @llvm.assume(i1 %i.yx)
  %i.yy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.yw, i1 true)
  %i.yz = zext nneg i16 %i.yy to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215, i64 %i.yz
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !10259
  br label %bb.fo

bb.fm:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h59458ede87a43fc1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.za = getelementptr inbounds i8, ptr %i.yb, i64 -8
  store i8 %.val6.i.i.i.i.i.i.i.i, ptr %i.za, align 8, !noalias !10252
  %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !10247 ; 2 uses
  %i.zb = icmp eq i64 %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zb, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i", label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10260
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i"

bb.fo:                                            ; preds = %bb.fl, %bb.fk
  %i.zc = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fl ], [ %i.yt, %bb.fk ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.yz, %bb.fl ], [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fk ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10261)
  %i.zd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ze = and i8 %i.zc, 1
  %i.zf = zext nneg i8 %i.ze to i64
  %i.zg = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.zh = and i64 %i.zg, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.xr, ptr %i.zd, align 1, !noalias !10259
  %i.zi = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215, i64 %i.zh
  %i.zj = getelementptr i8, ptr %i.zi, i64 16
  store i8 %i.xr, ptr %i.zj, align 1, !noalias !10259
  %i.zk = load <2 x i64>, ptr %i.vl, align 8, !alias.scope !10262, !noalias !10263
  %i.zl = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.zf, i64 0
  %i.zm = sub <2 x i64> %i.zk, %i.zl
  store <2 x i64> %i.zm, ptr %i.vl, align 8, !alias.scope !10262, !noalias !10263
  %i.zn = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zo = getelementptr inbounds [32 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i215, i64 %i.zn ; 2 uses
  %i.zp = getelementptr inbounds i8, ptr %i.zo, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zp, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.p, i64 24, i1 false), !noalias !10245
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.zo, i64 -8
  store i8 %.val6.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10264
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i"

bb.fp:                                            ; preds = %bb.fg
  %i.zq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !10247 ; 2 uses
  %i.zr = icmp eq i64 %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zr, label %.body.i.i.i.i213, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %.val1.i12.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xk, align 8, !noalias !10247, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10265
  br label %.body.i.i.i.i213

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.fo, %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10246
  %i.zs = icmp eq i64 %.sroa.2742.0.i.i.i.i.i.i.i, 0
  br i1 %i.zs, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9b41ed2856845330E.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i"
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i.i.i.i.i, i64 274
  %i.zu = load i16, ptr %i.zt, align 2, !noalias !10266, !noundef !21
  %i.zv = zext i16 %i.zu to i64
  %i.zw = icmp ult i64 %.sroa.21.0.i.i.i.i.i.i.i, %i.zv
  br i1 %i.zw, label %.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i"
  %i.zx = add nuw nsw i64 %.sroa.21.0.i.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i", %bb.fr
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zy, %bb.fr ], [ %.sroa.7.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.zz, %bb.fr ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.zy = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10267, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fu, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.zz = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.aab = load i16, ptr %i.aaa, align 8, !noalias !10267 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 274
  %i.aad = load i16, ptr %i.aac, align 2, !noalias !10266, !noundef !21
  %i.aae = icmp ult i16 %i.aab, %i.aad
  br i1 %i.aae, label %bb.fs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.aaf = zext i16 %i.aab to i64                 ; 4 uses
  %i.aag = icmp eq i64 %i.zz, 0
  %i.aah = add nuw nsw i64 %i.aaf, 1              ; 2 uses
  br i1 %i.aag, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i", label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zy, i64 288
  %i.aaj = icmp ult i16 %i.aab, 11
  call void @llvm.assume(i1 %i.aaj)
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %i.aah ; 2 uses
  %xtraiter907 = and i64 %i.zz, 7                 ; 2 uses
  %lcmp.mod908.not = icmp eq i64 %xtraiter907, 0
  br i1 %lcmp.mod908.not, label %.prol.loopexit904, label %.prol.preheader903

.prol.preheader903:                               ; preds = %bb.ft, %.prol.preheader903
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.aal, %.prol.preheader903 ], [ %i.aak, %bb.ft ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader903 ], [ %i.zz, %bb.ft ]
  %prol.iter909 = phi i64 [ %prol.iter909.next, %.prol.preheader903 ], [ 0, %bb.ft ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !10268, !nonnull !21, !noundef !21 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, i64 288 ; 2 uses
  %prol.iter909.next = add i64 %prol.iter909, 1   ; 2 uses
  %prol.iter909.cmp.not = icmp eq i64 %prol.iter909.next, %xtraiter907
  br i1 %prol.iter909.cmp.not, label %.prol.loopexit904, label %.prol.preheader903, !llvm.loop !9864

.prol.loopexit904:                                ; preds = %.prol.preheader903, %bb.ft
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ft ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader903 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.aak, %bb.ft ], [ %i.aal, %.prol.preheader903 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.zz, %bb.ft ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader903 ]
  %i.aam = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.aam, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i", label %.new905

.new905:                                          ; preds = %.prol.loopexit904, %.new905
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aav, %.new905 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit904 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, %.new905 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit904 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10268, !nonnull !21, !noundef !21
  %i.aan = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.aan, align 8, !noalias !10268, !nonnull !21, !noundef !21
  %i.aao = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.1, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.aao, align 8, !noalias !10268, !nonnull !21, !noundef !21
  %i.aap = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.2, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.aap, align 8, !noalias !10268, !nonnull !21, !noundef !21
  %i.aaq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.3, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.aaq, align 8, !noalias !10268, !nonnull !21, !noundef !21
  %i.aar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.4, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.aar, align 8, !noalias !10268, !nonnull !21, !noundef !21
  %i.aas = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.5, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.aas, align 8, !noalias !10268, !nonnull !21, !noundef !21
  %i.aat = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.6, i64 288
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.aat, align 8, !noalias !10268, !nonnull !21, !noundef !21 ; 2 uses
  %i.aau = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.aav = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.aau, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i", label %.new905

bb.fu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i.i216 unwind label %bb.fv, !noalias !10269

.noexc.i.i.i.i.i.i.i.i.i216:                      ; preds = %bb.fu
  unreachable

bb.fv:                                            ; preds = %bb.fu
  %i.aaw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i": ; preds = %.prol.loopexit904, %.new905, %bb.fs, %.thread.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i70.i.i.i.i.i.i.i = phi ptr [ %i.zy, %bb.fs ], [ %.sroa.7.0.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.zy, %.new905 ], [ %i.zy, %.prol.loopexit904 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i69.i.i.i.i.i.i.i = phi i64 [ %i.aaf, %bb.fs ], [ %.sroa.21.0.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.aaf, %.new905 ], [ %i.aaf, %.prol.loopexit904 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aah, %bb.fs ], [ %i.zx, %.thread.i.i.i.i.i.i.i ], [ 0, %.new905 ], [ 0, %.prol.loopexit904 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zy, %bb.fs ], [ %.sroa.7.0.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit904 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, %.new905 ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i70.i.i.i.i.i.i.i, i64 8
  %i.aay = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i69.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.aay)
  %i.aaz = getelementptr inbounds nuw [24 x i8], ptr %i.aax, i64 %.sroa.6.sroa.4.0.ph.i.i.i69.i.i.i.i.i.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i70.i.i.i.i.i.i.i, i64 276
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 %.sroa.6.sroa.4.0.ph.i.i.i69.i.i.i.i.i.i.i
  br label %bb.ff

.loopexit.i.i.i.i214:                             ; preds = %bb.ff
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i213

.loopexit.split-lp.i.i.i.i:                       ; preds = %.critedge.i1.i.i.i.i.i.i.i, %bb.ex
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i213

.body.i.i.i.i213:                                 ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i214, %bb.fq, %bb.fp
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.zq, %bb.fp ], [ %i.zq, %bb.fq ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i214 ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$GT$$GT$17ha848a01fda12e3d8E"(ptr noalias noundef align 8 dereferenceable(48) %i.q) #55, !noalias !10232
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17h9b41ed2856845330E.exit: ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i", %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !10270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10232
  call void @_ZN5milli6update8settings8Settings24set_sort_facet_values_by17h0d8aa6dfc2a7ab18E(ptr noalias noundef nonnull align 8 dereferenceable(880) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.et

bb.fw:                                            ; preds = %bb.ev
  call void @_ZN5milli6update8settings8Settings26reset_sort_facet_values_by17he38e4cdaada9828dE(ptr noalias noundef nonnull align 8 dereferenceable(880) %1)
  br label %bb.et

bb.fx:                                            ; preds = %bb.et
  switch i64 %i.um, label %bb.b [
    i64 0, label %bb.fz
    i64 1, label %.sink.split696
    i64 2, label %bb.fy
  ]

.sink.split696:                                   ; preds = %bb.et, %bb.fx, %bb.fz
  %.sink699 = phi i64 [ 384, %bb.fz ], [ 376, %bb.fx ], [ 376, %bb.et ]
  %.sink697 = phi i64 [ %i.abf, %bb.fz ], [ %i.um, %bb.fx ], [ %i.uo, %bb.et ]
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 %.sink699
  store i64 %.sink697, ptr %i.abc, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %.sink.split696, %bb.fx, %bb.et
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.abe = load i64, ptr %i.abd, align 8, !range !36, !noundef !21
  switch i64 %i.abe, label %default.unreachable589 [
    i64 0, label %bb.ga
    i64 1, label %bb.jd
    i64 2, label %bb.je
  ]

bb.fz:                                            ; preds = %bb.fx
  %i.abf = load i64, ptr %i.un, align 8, !range !43, !noundef !21
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i64 0, ptr %i.abg, align 8
  br label %.sink.split696

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.abi = load ptr, ptr %i.abh, align 8, !noundef !21 ; 4 uses
  %.not155 = icmp ne ptr %i.abi, null
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.abk = load i64, ptr %i.abj, align 8          ; 5 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.abm = load i64, ptr %i.abl, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10271)
  call void @llvm.experimental.noalias.scope.decl(metadata !10272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10273
  call void @llvm.experimental.noalias.scope.decl(metadata !10274)
  call void @llvm.experimental.noalias.scope.decl(metadata !10275)
  call void @llvm.experimental.noalias.scope.decl(metadata !10276)
  call void @llvm.experimental.noalias.scope.decl(metadata !10277)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10278
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  %i.abn = icmp ne i64 %i.abm, 0
  %.not318 = select i1 %.not155, i1 %i.abn, i1 false
  br i1 %.not318, label %bb.gb, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.thread.i.i

bb.gb:                                            ; preds = %bb.ga
  %i.abo = add i64 %i.abm, -1                     ; 3 uses
  %i.abp = icmp eq i64 %i.abk, 0
  br i1 %i.abp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.gb
  %xtraiter910 = and i64 %i.abk, 7                ; 2 uses
  %lcmp.mod911.not = icmp eq i64 %xtraiter910, 0
  br i1 %lcmp.mod911.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.abi, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.prol = phi i64 [ %i.abr, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.abk, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter912 = phi i64 [ %prol.iter912.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
end_hunk_5
begin_hunk_6_@_ZN17meilisearch_types8settings25apply_settings_to_builder17h64949a1cccb56b0cE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10286
  %.not.i.i.i.i.i.i281 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i.i.i.i281, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.thread.i.i, label %bb.gn

_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.thread.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i", %bb.ga
  store i64 0, ptr %i.o, align 8, !alias.scope !10293, !noalias !10294
  %i.ado = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ado, align 8, !alias.scope !10293, !noalias !10294
  %i.adp = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.adp, align 8, !alias.scope !10293, !noalias !10294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10278
  br label %bb.hk

bb.gl:                                            ; preds = %bb.go
  %i.adq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10295)
  call void @llvm.experimental.noalias.scope.decl(metadata !10296), !noalias !10297
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !10298, !noalias !10278 ; 2 uses
  %i.adr = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.adr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i279", label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ads = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ads, align 8, !alias.scope !10298, !noalias !10278, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10299
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i279"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i279": ; preds = %bb.gm, %bb.gl
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$milli..update..settings..Setting$LT$milli..vector..settings..EmbeddingSettings$GT$$GT$17h30f5cc25ce77e6a9E"(ptr noalias noundef readonly align 8 dereferenceable(1512) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %common.resume unwind label %bb.hj, !noalias !10300

bb.gn:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread18.i.i.i.i.i.i"
  %.sroa.0.0.i.i21.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.ph.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread18.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i, i64 24, i1 false), !noalias !10278
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store i64 %.sroa.0.0.i.i21.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10278
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10278
  %i.adt = call i64 @llvm.uadd.sat.i64(i64 %i.abo, i64 1) ; 3 uses
  %i.adu = mul i64 %i.adt, 1536                   ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i229 = icmp ugt i64 %i.adt, 6004799503160661
  br i1 %or.cond.i.i.i.i.i.i.i.i.i229, label %bb.go, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i230", !prof !30

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i230": ; preds = %bb.gn
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !10301
  %i.adv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.adu, i64 noundef range(i64 1, 9) 8) #52, !noalias !10301 ; 4 uses
  %i.adw = icmp eq ptr %i.adv, null
  br i1 %i.adw, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i230", %bb.gn
  %.sroa.4.0.ph.i.i.i.i.i.i.i278 = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i230" ], [ 0, %bb.gn ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i278, i64 %i.adu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i280 unwind label %bb.gl, !noalias !10278

.noexc.i.i.i.i.i.i280:                            ; preds = %bb.go
  unreachable

bb.gp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i230"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.adv, ptr noundef nonnull align 8 dereferenceable(1536) %i.m, i64 1536, i1 false), !noalias !10278
  store i64 %i.adt, ptr %i.n, align 8, !noalias !10278
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i231 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.adv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i231, align 8, !noalias !10278
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i232 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i232, align 8, !noalias !10278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10278
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !10302)
  call void @llvm.experimental.noalias.scope.decl(metadata !10303)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  %i.adx = icmp eq i64 %i.abo, 0
  br i1 %i.adx, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i": ; preds = %bb.gp
  %i.ady = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 16906
  %i.adz = load i16, ptr %i.ady, align 2, !noalias !10304, !noundef !21
  %i.aea = zext i16 %i.adz to i64
  %i.aeb = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i228, %i.aea
  br i1 %i.aeb, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i24.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i"
  %i.aec = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i228, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i233

.lr.ph.i.i.i.i24.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i", %bb.gq
  %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i = phi ptr [ %i.aed, %bb.gq ], [ %.sroa.07.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i = phi i64 [ %i.aee, %bb.gq ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i" ] ; 2 uses
  %i.aed = load ptr, ptr %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i, align 8, !noalias !10305, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i27.i.i.i.i.i.i = icmp eq ptr %i.aed, null
  br i1 %.not.i.i.i.i.i27.i.i.i.i.i.i, label %bb.gt, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph.i.i.i.i24.i.i.i.i.i.i
  %i.aee = add i64 %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i, 1 ; 5 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i, i64 16904
  %i.aeg = load i16, ptr %i.aef, align 8, !noalias !10305 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 16906
  %i.aei = load i16, ptr %i.aeh, align 2, !noalias !10304, !noundef !21
  %i.aej = icmp ult i16 %i.aeg, %i.aei
  br i1 %i.aej, label %bb.gr, label %.lr.ph.i.i.i.i24.i.i.i.i.i.i

bb.gr:                                            ; preds = %bb.gq
  %i.aek = zext i16 %i.aeg to i64                 ; 4 uses
  %i.ael = icmp eq i64 %i.aee, 0
  %i.aem = add nuw nsw i64 %i.aek, 1              ; 2 uses
  br i1 %i.ael, label %.lr.ph.i.i.i.i.i.i.i.i233, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aed, i64 16912
  %i.aeo = icmp ult i16 %i.aeg, 11
  call void @llvm.assume(i1 %i.aeo)
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aen, i64 %i.aem ; 2 uses
  %xtraiter924 = and i64 %i.aee, 7                ; 2 uses
  %lcmp.mod925.not = icmp eq i64 %xtraiter924, 0
  br i1 %lcmp.mod925.not, label %.prol.loopexit921, label %.prol.preheader920

.prol.preheader920:                               ; preds = %bb.gs, %.prol.preheader920
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i.prol = phi ptr [ %i.aeq, %.prol.preheader920 ], [ %i.aep, %bb.gs ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i34.i.i.i.i.i.i.prol, %.prol.preheader920 ], [ %i.aee, %bb.gs ]
  %prol.iter926 = phi i64 [ %prol.iter926.next, %.prol.preheader920 ], [ 0, %bb.gs ]
  %.pn28.i.i.i.i34.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i33.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i35.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i32.i.i.i.i.i.i.prol, align 8, !noalias !10306, !nonnull !21, !noundef !21 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter926.next = add i64 %prol.iter926, 1   ; 2 uses
  %prol.iter926.cmp.not = icmp eq i64 %prol.iter926.next, %xtraiter924
  br i1 %prol.iter926.cmp.not, label %.prol.loopexit921, label %.prol.preheader920, !llvm.loop !9938

.prol.loopexit921:                                ; preds = %.prol.preheader920, %bb.gs
  %.pn30.i.i.i.i35.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.gs ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader920 ]
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i.unr = phi ptr [ %i.aep, %bb.gs ], [ %i.aeq, %.prol.preheader920 ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i.unr = phi i64 [ %i.aee, %bb.gs ], [ %.pn28.i.i.i.i34.i.i.i.i.i.i.prol, %.prol.preheader920 ]
  %i.aer = icmp ult i64 %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i, 7
  br i1 %i.aer, label %.lr.ph.i.i.i.i.i.i.i.i233, label %.new922

.new922:                                          ; preds = %.prol.loopexit921, %.new922
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i = phi ptr [ %i.afa, %.new922 ], [ %.pn30.in.i.i.i.i32.i.i.i.i.i.i.unr, %.prol.loopexit921 ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i34.i.i.i.i.i.i.7, %.new922 ], [ %.pn28.in.i.i.i.i33.i.i.i.i.i.i.unr, %.prol.loopexit921 ]
  %.pn30.i.i.i.i35.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i32.i.i.i.i.i.i, align 8, !noalias !10306, !nonnull !21, !noundef !21
  %i.aes = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.1 = load ptr, ptr %i.aes, align 8, !noalias !10306, !nonnull !21, !noundef !21
  %i.aet = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.2 = load ptr, ptr %i.aet, align 8, !noalias !10306, !nonnull !21, !noundef !21
  %i.aeu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.3 = load ptr, ptr %i.aeu, align 8, !noalias !10306, !nonnull !21, !noundef !21
  %i.aev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.4 = load ptr, ptr %i.aev, align 8, !noalias !10306, !nonnull !21, !noundef !21
  %i.aew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.5 = load ptr, ptr %i.aew, align 8, !noalias !10306, !nonnull !21, !noundef !21
  %i.aex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.6 = load ptr, ptr %i.aex, align 8, !noalias !10306, !nonnull !21, !noundef !21
  %i.aey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i34.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i33.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i35.i.i.i.i.i.i.7 = load ptr, ptr %i.aey, align 8, !noalias !10306, !nonnull !21, !noundef !21 ; 2 uses
  %i.aez = icmp eq i64 %.pn28.i.i.i.i34.i.i.i.i.i.i.7, 0
  %i.afa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.7, i64 16912
  br i1 %i.aez, label %.lr.ph.i.i.i.i.i.i.i.i233, label %.new922

bb.gt:                                            ; preds = %.lr.ph.i.i.i.i24.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i41.i.i.i.i.i.i unwind label %bb.gu, !noalias !10307

.noexc.i.i41.i.i.i.i.i.i:                         ; preds = %bb.gt
  unreachable

bb.gu:                                            ; preds = %bb.gt
  %i.afb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.lr.ph.i.i.i.i.i.i.i.i233:                        ; preds = %.prol.loopexit921, %.new922, %bb.gr, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i31.i.i19.i.i.i.i = phi ptr [ %i.aed, %bb.gr ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.aed, %.new922 ], [ %i.aed, %.prol.loopexit921 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i29.i.i18.i.i.i.i = phi i64 [ %i.aek, %bb.gr ], [ %.sroa.7.0.i.i.i.i.i.i.i228, %.thread.i.i.i.i ], [ %i.aek, %.new922 ], [ %i.aek, %.prol.loopexit921 ] ; 3 uses
  %.sroa.7.0.i.i.i37.i.i.i.i.i.i = phi i64 [ %i.aem, %bb.gr ], [ %i.aec, %.thread.i.i.i.i ], [ 0, %.new922 ], [ 0, %.prol.loopexit921 ]
  %.sroa.07.0.i.i.i38.i.i.i.i.i.i = phi ptr [ %i.aed, %bb.gr ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit921 ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.7, %.new922 ]
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i31.i.i19.i.i.i.i, i64 8
  %i.afd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i18.i.i.i.i, 11
  call void @llvm.assume(i1 %i.afd)
  %i.afe = getelementptr inbounds nuw [24 x i8], ptr %i.afc, i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i18.i.i.i.i
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i31.i.i19.i.i.i.i, i64 272
  %i.afg = getelementptr inbounds nuw [1512 x i8], ptr %i.aff, i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i18.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  br label %bb.gv

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i", %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i

bb.gv:                                            ; preds = %.noexc8.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i233
  %i.afh = phi ptr [ %i.adv, %.lr.ph.i.i.i.i.i.i.i.i233 ], [ %i.afs, %.noexc8.i.i.i.i.i.i ]
  %i.afi = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i233 ], [ %i.afu, %.noexc8.i.i.i.i.i.i ] ; 5 uses
  %.sroa.21.1.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i37.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i233 ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 3 uses
  %.sroa.277.1.in.i.i.i.i.i.i = phi i64 [ %i.abo, %.lr.ph.i.i.i.i.i.i.i.i233 ], [ %.sroa.277.1.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ]
  %.sroa.7.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i38.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i233 ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %i.afj = phi ptr [ %i.afe, %.lr.ph.i.i.i.i.i.i.i.i233 ], [ %i.ahc, %.noexc8.i.i.i.i.i.i ]
  %.pn43.i.i.i.i.i.i = phi ptr [ %i.afg, %.lr.ph.i.i.i.i.i.i.i.i233 ], [ %i.ahe, %.noexc8.i.i.i.i.i.i ] ; 3 uses
  %.sroa.277.1.i.i.i.i.i.i = add i64 %.sroa.277.1.in.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn43.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10309
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !10278

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.gv
  %i.afk = load i64, ptr %.pn43.i.i.i.i.i.i, align 8, !range !55, !alias.scope !10308, !noalias !10310, !noundef !21
  %i.afl = call i64 @llvm.usub.sat.i64(i64 %i.afk, i64 2)
  switch i64 %i.afl, label %default.unreachable589 [
    i64 0, label %bb.gw
    i64 1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i"
    i64 2, label %bb.gx
  ]

bb.gw:                                            ; preds = %.noexc7.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10309
  invoke fastcc void @"_ZN81_$LT$milli..vector..settings..EmbeddingSettings$u20$as$u20$core..clone..Clone$GT$5clone17h594a7199b4654745E"(ptr noalias noundef align 8 captures(address) dereferenceable(1512) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1512) %.pn43.i.i.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i" unwind label %bb.gy, !noalias !10311

bb.gx:                                            ; preds = %.noexc7.i.i.i.i.i.i
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i"

bb.gy:                                            ; preds = %bb.gw
  %i.afm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10312)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !10312, !noalias !10309 ; 2 uses
  %i.afn = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.afn, label %.body.i.i.i.i.i.i234, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.afo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afo, align 8, !alias.scope !10312, !noalias !10309, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10313
  br label %.body.i.i.i.i.i.i234

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i": ; preds = %bb.gx, %.noexc7.i.i.i.i.i.i
  %.sroa.0.0.i.i.ph.i.i.i.i.i.i.i.i = phi i64 [ 3, %.noexc7.i.i.i.i.i.i ], [ 4, %bb.gx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !10314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.i.i.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  br label %bb.ha

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.gw
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !10309 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !10314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.i.i.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i277 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i.i.i.i.i.i277, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i, label %bb.ha

bb.ha:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i8.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.ph.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !10316
  store i64 %.sroa.0.0.i.i8.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !10316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10316
  %i.afp = icmp samesign ult i64 %i.afi, 6004799503160662
  call void @llvm.assume(i1 %i.afp)
  %i.afq = load i64, ptr %i.n, align 8, !range !22, !alias.scope !10317, !noalias !10318, !noundef !21
  %i.afr = icmp eq i64 %i.afi, %i.afq
  br i1 %i.afr, label %bb.hh, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ha
  %i.afs = phi ptr [ %.pre.i.i.i.i.i.i276, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.afh, %bb.ha ] ; 2 uses
  %i.aft = getelementptr inbounds nuw [1536 x i8], ptr %i.afs, i64 %i.afi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.aft, ptr noundef nonnull align 8 dereferenceable(1536) %i.j, i64 1536, i1 false), !noalias !10316
  %i.afu = add nuw nsw i64 %i.afi, 1              ; 2 uses
  store i64 %i.afu, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i232, align 8, !alias.scope !10317, !noalias !10318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10316
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  %i.afv = icmp eq i64 %.sroa.277.1.i.i.i.i.i.i, 0
  br i1 %i.afv, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i"
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i, i64 16906
  %i.afx = load i16, ptr %i.afw, align 2, !noalias !10319, !noundef !21
  %i.afy = zext i16 %i.afx to i64
  %i.afz = icmp ult i64 %.sroa.21.1.i.i.i.i.i.i, %i.afy
  br i1 %i.afz, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i"
  %i.aga = add nuw nsw i64 %.sroa.21.1.i.i.i.i.i.i, 1
  br label %.noexc8.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i", %bb.hb
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.agb, %bb.hb ], [ %.sroa.7.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agc, %bb.hb ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.agb = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10320, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.agb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.he, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.agc = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 16904
  %i.age = load i16, ptr %i.agd, align 8, !noalias !10320 ; 3 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agb, i64 16906
  %i.agg = load i16, ptr %i.agf, align 2, !noalias !10319, !noundef !21
  %i.agh = icmp ult i16 %i.age, %i.agg
  br i1 %i.agh, label %bb.hc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.hc:                                            ; preds = %bb.hb
  %i.agi = zext i16 %i.age to i64                 ; 4 uses
  %i.agj = icmp eq i64 %i.agc, 0
  %i.agk = add nuw nsw i64 %i.agi, 1              ; 2 uses
  br i1 %i.agj, label %.noexc8.i.i.i.i.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agb, i64 16912
  %i.agm = icmp ult i16 %i.age, 11
  call void @llvm.assume(i1 %i.agm)
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.agl, i64 %i.agk ; 2 uses
  %xtraiter931 = and i64 %i.agc, 7                ; 2 uses
  %lcmp.mod932.not = icmp eq i64 %xtraiter931, 0
  br i1 %lcmp.mod932.not, label %.prol.loopexit928, label %.prol.preheader927

.prol.preheader927:                               ; preds = %bb.hd, %.prol.preheader927
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ago, %.prol.preheader927 ], [ %i.agn, %bb.hd ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader927 ], [ %i.agc, %bb.hd ]
  %prol.iter933 = phi i64 [ %prol.iter933.next, %.prol.preheader927 ], [ 0, %bb.hd ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !10321, !nonnull !21, !noundef !21 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter933.next = add i64 %prol.iter933, 1   ; 2 uses
  %prol.iter933.cmp.not = icmp eq i64 %prol.iter933.next, %xtraiter931
  br i1 %prol.iter933.cmp.not, label %.prol.loopexit928, label %.prol.preheader927, !llvm.loop !9965

.prol.loopexit928:                                ; preds = %.prol.preheader927, %bb.hd
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.hd ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader927 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.agn, %bb.hd ], [ %i.ago, %.prol.preheader927 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.agc, %bb.hd ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader927 ]
  %i.agp = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.agp, label %.noexc8.i.i.i.i.i.i, label %.new929

.new929:                                          ; preds = %.prol.loopexit928, %.new929
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.agy, %.new929 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit928 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new929 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit928 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10321, !nonnull !21, !noundef !21
  %i.agq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.agq, align 8, !noalias !10321, !nonnull !21, !noundef !21
  %i.agr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.agr, align 8, !noalias !10321, !nonnull !21, !noundef !21
  %i.ags = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ags, align 8, !noalias !10321, !nonnull !21, !noundef !21
  %i.agt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.agt, align 8, !noalias !10321, !nonnull !21, !noundef !21
  %i.agu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.agu, align 8, !noalias !10321, !nonnull !21, !noundef !21
  %i.agv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.agv, align 8, !noalias !10321, !nonnull !21, !noundef !21
  %i.agw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.agw, align 8, !noalias !10321, !nonnull !21, !noundef !21 ; 2 uses
  %i.agx = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.agy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 16912
  br i1 %i.agx, label %.noexc8.i.i.i.i.i.i, label %.new929

bb.he:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i238 unwind label %bb.hf, !noalias !10322

.noexc.i.i.i.i.i.i.i.i238:                        ; preds = %bb.he
  unreachable

bb.hf:                                            ; preds = %bb.he
  %i.agz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc8.i.i.i.i.i.i:                              ; preds = %.prol.loopexit928, %.new929, %bb.hc, %.thread.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i42.i.i.i.i.i.i = phi ptr [ %i.agb, %bb.hc ], [ %.sroa.7.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.agb, %.new929 ], [ %i.agb, %.prol.loopexit928 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i41.i.i.i.i.i.i = phi i64 [ %i.agi, %bb.hc ], [ %.sroa.21.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.agi, %.new929 ], [ %i.agi, %.prol.loopexit928 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agk, %bb.hc ], [ %i.aga, %.thread.i.i.i.i.i.i ], [ 0, %.new929 ], [ 0, %.prol.loopexit928 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.agb, %bb.hc ], [ %.sroa.7.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit928 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new929 ]
  %i.aha = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i42.i.i.i.i.i.i, i64 8
  %i.ahb = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i41.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ahb)
  %i.ahc = getelementptr inbounds nuw [24 x i8], ptr %i.aha, i64 %.sroa.6.sroa.4.0.ph.i.i.i41.i.i.i.i.i.i
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i42.i.i.i.i.i.i, i64 272
  %i.ahe = getelementptr inbounds nuw [1512 x i8], ptr %i.ahd, i64 %.sroa.6.sroa.4.0.ph.i.i.i41.i.i.i.i.i.i
  br label %bb.gv

bb.hg:                                            ; preds = %bb.hh
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$$LP$alloc..string..String$C$milli..update..settings..Setting$LT$milli..vector..settings..EmbeddingSettings$GT$$RP$$GT$17h5ba7a939ea51e846E"(ptr noalias noundef align 8 dereferenceable(1536) %i.j) #55
          to label %.body.i.i.i.i.i.i234 unwind label %bb.hi, !noalias !10316

bb.hh:                                            ; preds = %bb.ha
  %i.ahg = call i64 @llvm.uadd.sat.i64(i64 %.sroa.277.1.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.afi, i64 noundef range(i64 1, 0) %i.ahg, i64 noundef 8, i64 noundef 1536)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.hg, !noalias !10318

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.hh
  %.pre.i.i.i.i.i.i276 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i231, align 8, !alias.scope !10317, !noalias !10318
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i"

bb.hi:                                            ; preds = %bb.hg
  %i.ahh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !10316
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.gv
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i234

.body.i.i.i.i.i.i234:                             ; preds = %.loopexit.i.i.i.i.i.i, %bb.hg, %bb.gz, %bb.gy
  %eh.lpad-body.i.i.i.i.i.i235 = phi { ptr, i32 } [ %i.ahf, %bb.hg ], [ %i.afm, %bb.gy ], [ %i.afm, %bb.gz ], [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$milli..update..settings..Setting$LT$milli..vector..settings..EmbeddingSettings$GT$$RP$$GT$$GT$17h0a87f5c051b4511cE"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #55
          to label %common.resume unwind label %bb.hj, !noalias !10278

bb.hj:                                            ; preds = %.body.i.i.i.i.i.i234, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i279"
  %i.ahi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !10278
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !10294
  %.phi.trans.insert.i.i239 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.pre.i.i240 = load i64, ptr %.phi.trans.insert.i.i239, align 8, !noalias !10273 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10278
  %i.ahj = icmp ult i64 %.pre.i.i240, 6004799503160662
  call void @llvm.assume(i1 %i.ahj)
  %i.ahk = icmp eq i64 %.pre.i.i240, 0
  br i1 %i.ahk, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.thread.i.i
  store ptr null, ptr %i.ao, align 8, !alias.scope !10323, !noalias !10324
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 0, ptr %i.ahl, align 8, !alias.scope !10323, !noalias !10324
  call fastcc void @"_ZN4core3ptr158drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$milli..update..settings..Setting$LT$milli..vector..settings..EmbeddingSettings$GT$$RP$$GT$$GT$17h0a87f5c051b4511cE"(ptr noalias noundef align 8 dereferenceable(24) %i.o), !noalias !10273
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h55659036dd1ebbc3E.exit

bb.hl:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8, !noalias !10273, !nonnull !21, !noundef !21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10325
  %i.aho = icmp eq i64 %.pre.i.i240, 1
  br i1 %i.aho, label %bb.hp, label %bb.hm, !prof !49

bb.hm:                                            ; preds = %bb.hl
  %i.ahp = icmp samesign ult i64 %.pre.i.i240, 21
  br i1 %i.ahp, label %bb.ho, label %bb.hn, !prof !49

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hef8b1def242c298aE(ptr noalias noundef nonnull align 8 %i.ahn, i64 noundef range(i64 1, 6004799503160662) %.pre.i.i240, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.hp unwind label %bb.jb, !noalias !10273

bb.ho:                                            ; preds = %bb.hm
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd2052e085ec7153cE(ptr noalias noundef nonnull align 8 %i.ahn, i64 noundef range(i64 1, 6004799503160662) %.pre.i.i240)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10325
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !10273
  call void @llvm.experimental.noalias.scope.decl(metadata !10326)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !10327
  %i.ahq = call noalias noundef align 8 dereferenceable_or_null(16912) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16912, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !10327 ; 5 uses
  %i.ahr = icmp eq ptr %i.ahq, null
  br i1 %i.ahr, label %bb.hq, label %.loopexit99.i.i.i.i, !prof !23

bb.hq:                                            ; preds = %bb.hp
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16912) #57
          to label %.noexc.i.i.i275 unwind label %bb.ja, !noalias !10327

.noexc.i.i.i275:                                  ; preds = %bb.hq
  unreachable

.loopexit99.i.i.i.i:                              ; preds = %bb.hp
end_hunk_6
begin_hunk_7_@_ZN17meilisearch_types8settings8settings17h434d4bbc0b5a657dE:bb.a
  call void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bh)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.dz, ptr noundef nonnull align 8 dereferenceable(320) %i.bg, i64 320, i1 false)
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hace92272122aeb36E.exit852"

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.sroa.0387.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4388.sroa.0.0.copyload) ]
  %i.ea = icmp ult i64 %.sroa.4388.sroa.4.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4388.sroa.0.0.copyload, i64 %.sroa.4388.sroa.4.0.copyload
  store ptr %.sroa.4388.sroa.0.0.copyload, ptr %i.bi, align 8
  %.sroa.4968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.4388.sroa.0.0.copyload, ptr %.sroa.4968.0..sroa_idx, align 8
  %.sroa.5969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.sroa.0387.0.copyload, ptr %.sroa.5969.0..sroa_idx, align 8
  %.sroa.6970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.eb, ptr %.sroa.6970.0..sroa_idx, align 8
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h5812d79d09885fb5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dv, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %i.dv, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  invoke void @_ZN5milli5index5Index30user_defined_searchable_fields17h2ad616f910b44d1aE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.im, %.body, %bb.h
  %.sroa.0382.0 = phi i1 [ true, %bb.h ], [ %.sroa.0382.1, %bb.im ], [ %.sroa.0382.1, %.body ]
  %.pn750 = phi { ptr, i32 } [ %i.ee, %bb.h ], [ %.pn748, %bb.im ], [ %.pn748, %.body ]
  %i.ec = load i64, ptr %i.dv, align 8, !range !25, !noundef !21
  %i.ed = icmp ne i64 %i.ec, -9223372036854775808
  %or.cond7 = select i1 %i.ed, i1 %.sroa.0382.0, i1 false
  br i1 %or.cond7, label %bb.ip, label %bb.io

bb.h:                                             ; preds = %bb.n, %bb.j, %bb.f
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.ef = load i64, ptr %i.ds, align 8, !range !32, !noundef !21
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.0393.0.copyload = load i64, ptr %i.eh, align 8 ; 3 uses
  %.sroa.4394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %.sroa.4394.sroa.0.0.copyload = load ptr, ptr %.sroa.4394.0..sroa_idx, align 8 ; 5 uses
  %.sroa.4394.sroa.4.0..sroa.4394.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.4394.sroa.4.0.copyload = load i64, ptr %.sroa.4394.sroa.4.0..sroa.4394.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br i1 %i.eg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 %.sroa.0393.0.copyload, ptr %i.bd, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %.sroa.4394.sroa.0.0.copyload, ptr %.sroa.226.0..sroa_idx, align 8
  %.sroa.226.sroa.2.0..sroa.226.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %.sroa.4394.sroa.4.0.copyload, ptr %.sroa.226.sroa.2.0..sroa.226.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bd)
          to label %bb.in unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %.not658 = icmp eq i64 %.sroa.0393.0.copyload, -9223372036854775808
  br i1 %.not658, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store i64 -9223372036854775808, ptr %i.dt, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  invoke void @_ZN5milli5index5Index27filterable_attributes_rules17h545842a7f284cd4eE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4394.sroa.0.0.copyload) ]
  %i.ei = icmp ult i64 %.sroa.4394.sroa.4.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4394.sroa.0.0.copyload, i64 %.sroa.4394.sroa.4.0.copyload
  store ptr %.sroa.4394.sroa.0.0.copyload, ptr %i.be, align 8
  %.sroa.4978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.4394.sroa.0.0.copyload, ptr %.sroa.4978.0..sroa_idx, align 8
  %.sroa.5979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.0393.0.copyload, ptr %.sroa.5979.0..sroa_idx, align 8
  %.sroa.6980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.ej, ptr %.sroa.6980.0..sroa_idx, align 8
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h5812d79d09885fb5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.be)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.m

.body:                                            ; preds = %bb.ih, %bb.bb, %bb.p
  %.sroa.0382.1 = phi i1 [ true, %bb.p ], [ %.sroa.0382.2.ph, %bb.ih ], [ %.sroa.0382.6, %bb.bb ] ; 2 uses
  %.sroa.0381.0 = phi i1 [ true, %bb.p ], [ %.sroa.0381.1.ph, %bb.ih ], [ %.sroa.0381.5, %bb.bb ]
  %.pn748 = phi { ptr, i32 } [ %i.em, %bb.p ], [ %.pn746.ph, %bb.ih ], [ %.pn740, %bb.bb ] ; 2 uses
  %i.ek = load i64, ptr %i.dt, align 8, !range !25, !noundef !21
  %i.el = icmp ne i64 %i.ek, -9223372036854775808
  %or.cond5 = select i1 %i.el, i1 %.sroa.0381.0, i1 false
  br i1 %or.cond5, label %bb.im, label %bb.g

bb.p:                                             ; preds = %bb.r, %bb.m
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.m
  %i.en = load i64, ptr %i.dq, align 8, !range !32, !noundef !21
  %i.eo = trunc nuw i64 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.0987.0.copyload = load i64, ptr %i.ep, align 8 ; 2 uses
  %.sroa.4988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.4988.0.copyload = load ptr, ptr %.sroa.4988.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.sroa.5989.0.copyload = load i64, ptr %.sroa.5989.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br i1 %i.eo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 %.sroa.0987.0.copyload, ptr %i.bb, align 8
  %.sroa.2867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.4988.0.copyload, ptr %.sroa.2867.0..sroa_idx, align 8
  %.sroa.3868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.5989.0.copyload, ptr %.sroa.3868.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb)
          to label %bb.ii unwind label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.eq = icmp ult i64 %.sroa.5989.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.eq)
  store i64 %.sroa.0987.0.copyload, ptr %i.dr, align 8, !alias.scope !11772, !noalias !11773
  %i.er = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %.sroa.4988.0.copyload, ptr %i.er, align 8, !alias.scope !11772, !noalias !11773
  %i.es = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %.sroa.5989.0.copyload, ptr %i.es, align 8, !alias.scope !11772, !noalias !11773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  invoke void @_ZN5milli5index5Index15sortable_fields17hb1156440e10bc0ebE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.t unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h7e7101156436b5f4E.exit.i.i.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

.loopexit.split-lp:                               ; preds = %bb.s, %bb.u, %bb.au, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h409bd7fdb0639269E.exit.i.i.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.t:                                             ; preds = %bb.s
  %i.et = load ptr, ptr %i.do, align 8, !noundef !21 ; 7 uses
  %i.eu = icmp eq ptr %i.et, null
  %i.ev = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.01050.0.copyload = load i64, ptr %i.ev, align 8 ; 5 uses
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.41051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sroa.21046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ew = load <2 x i64>, ptr %.sroa.41051.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %.sroa.01050.0.copyload, ptr %i.az, align 8
  store <2 x i64> %i.ew, ptr %.sroa.21046.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.az)
          to label %bb.ic unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  %.sroa.4396.sroa.5.0..sroa.4396.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.sroa.4396.sroa.5.0.copyload = load i64, ptr %.sroa.4396.sroa.5.0..sroa.4396.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %.val3.i.i.i = load <16 x i8>, ptr %i.et, align 16, !noalias !11774
  %i.ex = icmp eq i64 %.sroa.01050.0.copyload, 0  ; 4 uses
  br i1 %i.ex, label %bb.w, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.v
  %i.ey = mul i64 %.sroa.01050.0.copyload, 24
  %i.ez = and i64 %i.ey, -16                      ; 2 uses
  %i.fa = add i64 %.sroa.01050.0.copyload, 49
  %i.fb = add i64 %i.fa, %i.ez
  %i.fc = sub i64 -32, %i.ez
  %i.fd = getelementptr inbounds i8, ptr %i.et, i64 %i.fc
  br label %bb.w

bb.w:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.v
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.fb, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.v ] ; 7 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.fd, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.v ] ; 6 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %bb.v ] ; 4 uses
  %i.fe = getelementptr i8, ptr %i.et, i64 %.sroa.01050.0.copyload
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  %i.fg = ptrtoint ptr %i.ff to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !11775)
  call void @llvm.experimental.noalias.scope.decl(metadata !11776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11778
  %i.fh = icmp eq i64 %.sroa.4396.sroa.5.0.copyload, 0
  br i1 %i.fh, label %.thread.i.i.i.i.i.i, label %bb.x

.thread.i.i.i.i.i.i:                              ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11778
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w
  %i.fi = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.fj = bitcast <16 x i1> %i.fi to i16          ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.fj, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fl = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fk, %bb.x ] ; 2 uses
  %i.fm = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.et, %bb.x ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fl, align 16, !noalias !11779
  %i.fn = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -384 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.fn to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.x
  %.sroa.13.0.i.i.i.i = phi ptr [ %i.fk, %bb.x ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ %i.et, %bb.x ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.fj, %bb.x ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fq = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.fr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.fs = zext nneg i16 %i.fr to i64
  %i.ft = and i16 %i.fq, %.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.fu = sub nsw i64 0, %i.fs
  %i.fv = getelementptr inbounds [24 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.fu ; 3 uses
  %i.fw = add i64 %.sroa.4396.sroa.5.0.copyload, -1 ; 7 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %i.fx, align 8, !noalias !11780 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11778
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.y, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.y ] ; 2 uses
  %i.fz = phi i64 [ %i.gm, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fw, %bb.y ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.y ] ; 2 uses
  %i.ga = phi i16 [ %i.gj, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ft, %bb.y ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gb = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gc = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gb, align 16, !noalias !11781
  %i.gd = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -384 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.gd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ga, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gg = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = and i16 %i.gg, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = sub nsw i64 0, %i.gi
  %i.gl = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gk ; 2 uses
  %i.gm = add i64 %i.fz, -1                       ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gn, align 8, !alias.scope !11782, !noalias !11783 ; 2 uses
  %i.go = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.go, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gp = getelementptr i8, ptr %i.gl, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gp, align 8, !noalias !11783, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11784
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.z, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.y, %.thread.i.i.i.i.i.i
  %i.gq = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.ex, %i.gq
  br i1 %or.cond.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i", label %bb.aa

bb.aa:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11785
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i"

bb.ab:                                            ; preds = %bb.ae
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, 0
  br i1 %i.gs, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11786
  br label %bb.am

bb.ad:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fv, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !11787 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fv, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11787
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.4396.sroa.5.0.copyload, i64 4) ; 3 uses
  %i.gt = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.4396.sroa.5.0.copyload, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !11788
  %i.gv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gt, i64 noundef range(i64 1, 9) 8) #52, !noalias !11788 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.ad
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.ad ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.gt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ab, !noalias !11778

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.gv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.gx = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gx)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !11778
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11778
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11778
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !11778
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11778
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11778
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.d, align 8, !noalias !11789
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !11789
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !11789
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !11789
  %.sroa.13.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i.i.i.i, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !noalias !11789
  %.sroa.17.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.fg, ptr %.sroa.17.0..sroa_idx13.i.i.i.i, align 8, !noalias !11789
  %.sroa.1715.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i16 %i.ft, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !noalias !11789
  %.sroa.1919.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store i64 %i.fw, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !noalias !11789
  call void @llvm.experimental.noalias.scope.decl(metadata !11790)
  call void @llvm.experimental.noalias.scope.decl(metadata !11791)
  call void @llvm.experimental.noalias.scope.decl(metadata !11792)
  call void @llvm.experimental.noalias.scope.decl(metadata !11793)
  %i.gy = icmp eq i64 %i.fw, 0
  br i1 %i.gy, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"
  %i.gz = phi ptr [ %i.il, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.af ]
  %i.ha = phi i64 [ %i.in, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.af ] ; 5 uses
  %.lcssa1225.i.i.i.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.af ] ; 2 uses
  %.lcssa1322.i.i.i.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.af ] ; 2 uses
  %i.hb = phi i16 [ %i.hk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.ft, %bb.af ] ; 2 uses
  %.val1617.i.i.i.i.i.i.i.i = phi i64 [ %i.hn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.fw, %bb.af ]
end_hunk_7
begin_hunk_8_@"_ZN4core3ptr138drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..RemoteTask$GT$$GT$17h86ffe391f189e2ebE":bb.a
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14620)
  %.val.i7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !14621, !noalias !14610 ; 2 uses
  %i.q = icmp eq i64 %.val.i7.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit9.i.i.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i"
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.val1.i8.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !14621, !noalias !14610, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i7.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !14622
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit9.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit9.i.i.i.i.i.i.i.i.i": ; preds = %bb.g, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i"
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14623)
  %.val.i13.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !14624, !noalias !14610 ; 2 uses
  %i.t = icmp eq i64 %.val.i13.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit15.i.i.i.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit9.i.i.i.i.i.i.i.i.i"
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.val1.i14.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !14624, !noalias !14610, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i14.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i13.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !14625
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit15.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit15.i.i.i.i.i.i.i.i.i": ; preds = %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit9.i.i.i.i.i.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14626)
  %.val.i19.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !14627, !noalias !14610 ; 2 uses
  %i.w = icmp eq i64 %.val.i19.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h31d5b77e634a3f87E.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit15.i.i.i.i.i.i.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.val1.i20.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !14627, !noalias !14610, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i20.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i19.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !14628
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h31d5b77e634a3f87E.exit.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h31d5b77e634a3f87E.exit.i.i.i": ; preds = %bb.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit15.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14610
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h59694f0433836e44E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !14607
  %i.y = load ptr, ptr %i.a, align 8, !noalias !14610, !noundef !21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h274114fbe7dda222E.exit", label %bb.c

"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h274114fbe7dda222E.exit": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h31d5b77e634a3f87E.exit.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he8c41ecc43e7a2f0E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14607
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$GT$$GT$17ha848a01fda12e3d8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14650)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14651, !noundef !21 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$C$std..hash..random..RandomState$GT$$GT$17h678e9e70d2d95295E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14652)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !14653, !noundef !21 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc100d5469c795f05E.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !14653, !nonnull !21, !noundef !21 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !14654
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i", %bb.c
  %.sroa.07.018.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.07.1.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !14655
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.109.015.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -32
  %.val.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !14656, !noalias !14653 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i"
  %i.y = getelementptr i8, ptr %i.u, i64 -24
  %.val6.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !14653, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !14657
  br label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i"
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc100d5469c795f05E.exit.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17hc100d5469c795f05E.exit.i.i.i.i: ; preds = %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i", %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$C$std..hash..random..RandomState$GT$$GT$17h678e9e70d2d95295E.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc100d5469c795f05E.exit.i.i.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !14651, !nonnull !21, !noundef !21
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !14651
  br label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$C$std..hash..random..RandomState$GT$$GT$17h678e9e70d2d95295E.exit"

"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$C$std..hash..random..RandomState$GT$$GT$17h678e9e70d2d95295E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc100d5469c795f05E.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr142drop_in_place$LT$core..result..Result$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$C$serde_json..error..Error$GT$$GT$17h520ff614fccb9566E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !21  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14684)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !14685, !noundef !21 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !14685, !nonnull !21, !align !27, !noundef !21
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.g, align 8, !noalias !14685, !nonnull !21, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !14685, !nonnull !21, !noundef !21 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %bb.d, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"

bb.d:                                             ; preds = %bb.c
  %i.k = shl i64 %i.c, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  store ptr %i.l, ptr %i.h, align 8, !noalias !14685
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i": ; preds = %bb.d, %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14688)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i.a = load i64, ptr %i.m, align 8, !alias.scope !14689, !noundef !21 ; 3 uses
  %i.n = icmp eq i64 %.val1.i.i.i.i.a, 0
  br i1 %i.n, label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !14689, !nonnull !21, !noundef !21
  %.val.i.i.i.i.a = load ptr, ptr %i.o, align 8, !alias.scope !14689, !nonnull !21, !noundef !21
  %i.q = mul i64 %.val1.i.i.i.i.a, 24
  %i.r = and i64 %i.q, -16                        ; 2 uses
  %i.s = sub i64 -32, %i.r
  %i.t = getelementptr inbounds i8, ptr %.val.i.i.i.i.a, i64 %i.s
  %i.u = getelementptr i8, ptr %.val2.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !noalias !14689, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !14689, !nonnull !21, !noundef !21 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.t
  br i1 %i.x, label %bb.e, label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit"

bb.e:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i
  %1 = getelementptr i8, ptr %i.w, i64 %.val1.i.i.i.i.a
  %2 = getelementptr i8, ptr %1, i64 %i.r
  %i.y = getelementptr i8, ptr %2, i64 49
  store ptr %i.y, ptr %i.v, align 8, !noalias !14689
  br label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit"

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14690)
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !14690, !nonnull !21, !noundef !21 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14692)
  %i.aa = load i64, ptr %.val.i, align 8, !range !67, !alias.scope !14693, !noalias !14690, !noundef !21
  switch i64 %i.aa, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit" [
    i64 0, label %bb.g
    i64 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i1 = load i64, ptr %i.ab, align 8, !alias.scope !14693, !noalias !14690, !noundef !21 ; 2 uses
  %i.ac = icmp eq i64 %.val1.i.i.i.i1, 0
  br i1 %i.ac, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i2 = load ptr, ptr %i.ad, align 8, !alias.scope !14693, !noalias !14690, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i2, i64 noundef %.val1.i.i.i.i1, i64 noundef 1) #52, !noalias !14694
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit"

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h83b702f883e6a7bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ae)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit" unwind label %bb.i, !noalias !14690

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #52, !noalias !14690
  resume { ptr, i32 } %i.af

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit": ; preds = %bb.f, %bb.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #52, !noalias !14690
  br label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit"

"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit": ; preds = %bb.e, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i", %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hf935fd24899ce224E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14700
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !14700 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2bd1271557d275e2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14700
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14700 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !14701, !noalias !14702
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14701, !noalias !14702
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14701, !noalias !14702
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !14701, !noalias !14702
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14701, !noalias !14702
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14701, !noalias !14702
  br label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2bd1271557d275e2E.exit"

"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2bd1271557d275e2E.exit": ; preds = %bb.a, %bb.b
  %.sink23.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink23.i.i, ptr %i.a, align 8, !alias.scope !14701, !noalias !14702
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink23.i.i, ptr %i.b, align 8, !alias.scope !14701, !noalias !14702
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %i.c, align 8, !alias.scope !14701, !noalias !14702
  call fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias noundef align 8 dereferenceable(72) %i.a), !noalias !14700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14700
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14717
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h2819dec28b787cecE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  %i.b = load ptr, ptr %i.a, align 8, !noalias !14717, !noundef !21 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f4cfe5f073d1356E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i", %.lr.ph.i
  %i.c = phi ptr [ %i.b, %.lr.ph.i ], [ %i.t, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i" ] ; 2 uses
  %.sroa.23.0.copyload.i = load i64, ptr %.sroa.23.0..sroa_idx.i, align 8, !noalias !14717 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.23.0.copyload.i ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.23.0.copyload.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14718)
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !14718, !noalias !14717 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !14718, !noalias !14717, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !14719
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i": ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14720)
  %i.i = load i64, ptr %i.f, align 8, !range !25, !alias.scope !14720, !noalias !14717, !noundef !21 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14723)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !14724, !noalias !14717, !nonnull !21, !noundef !21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !14724, !noalias !14717, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14725)
  %i.l = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.l, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !range !25, !alias.scope !14725, !noalias !14726, !noundef !21 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !14725, !noalias !14726 ; 4 uses
  switch i64 %.val8.i.i.i.i.i.i.i.i.i.i, label %bb.e [
    i64 -9223372036854775808, label %bb.f
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i"
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.p = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 2) #52, !noalias !14727
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #52, !noalias !14727
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.q = icmp eq i64 %i.n, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.q, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i.i.i.i", %bb.d
  %i.r = icmp eq i64 %i.i, 0
  br i1 %i.r, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i"
  %i.s = shl nuw i64 %i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !14726
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i": ; preds = %bb.g, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14717
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h2819dec28b787cecE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  %i.t = load ptr, ptr %i.a, align 8, !noalias !14717, !noundef !21 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f4cfe5f073d1356E.exit", label %bb.b

"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f4cfe5f073d1356E.exit": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h0cf076dbc0e3bf13E.exit.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14717
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$GT$$GT$17h947b8cb82845c437E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14745
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !14745 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf7ffe1f2be3e877bE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14745
end_hunk_8
begin_hunk_9_@"_ZN4core3ptr82drop_in_place$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$17hca232f11867f426aE":bb.a
bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..Array$GT$17h23b46bf1d918b0d9E"(ptr noalias noundef align 8 dereferenceable(488) %i.q), !inline_history !104
  br label %"_ZN4core3ptr49drop_in_place$LT$utoipa..openapi..schema..Ref$GT$17hf62bc17a91e4b7d2E.exit"

bb.i:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Object$GT$17he7ee633f0d816865E"(ptr noalias noundef nonnull align 8 dereferenceable(752) %0), !inline_history !104
  br label %"_ZN4core3ptr49drop_in_place$LT$utoipa..openapi..schema..Ref$GT$17hf62bc17a91e4b7d2E.exit"

bb.j:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..OneOf$GT$17h3db1ff20457bbe21E"(ptr noalias noundef align 8 dereferenceable(408) %i.r), !inline_history !104
  br label %"_ZN4core3ptr49drop_in_place$LT$utoipa..openapi..schema..Ref$GT$17hf62bc17a91e4b7d2E.exit"

bb.k:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..AllOf$GT$17hf97197307e851adbE"(ptr noalias noundef align 8 dereferenceable(408) %i.s), !inline_history !104
  br label %"_ZN4core3ptr49drop_in_place$LT$utoipa..openapi..schema..Ref$GT$17hf62bc17a91e4b7d2E.exit"

"_ZN4core3ptr49drop_in_place$LT$utoipa..openapi..schema..Ref$GT$17hf62bc17a91e4b7d2E.exit": ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit7.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPatternFormatError$GT$17h29ea523cf7fa34d5E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17506)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !17506 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !17506, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17506
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$milli..update..settings..Setting$LT$serde_json..value..Value$GT$$GT$17h5da44f66cee7e7eaE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !96, !noundef !21
  %i.b = icmp ult i64 %i.a, -9223372036854775803
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef align 8 dereferenceable(72) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17hc90a12129619aeb6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17531)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !17532, !noundef !21 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h3d7ac873ca04941fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17533)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !17534, !noundef !21 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h34197a5494b9b5baE.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !17534, !nonnull !21, !noundef !21 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !17535
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i", %bb.c
  %.sroa.07.018.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.07.1.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !17536
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.109.015.i.i.i.i.i.i, -1   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !17537, !noalias !17534 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i"
  %i.y = getelementptr i8, ptr %i.u, i64 -16
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !17534, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17538
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i"
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h34197a5494b9b5baE.exit.i.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17h34197a5494b9b5baE.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i", %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h3d7ac873ca04941fE.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h34197a5494b9b5baE.exit.i.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !17532, !nonnull !21, !noundef !21
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !17532
  br label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h3d7ac873ca04941fE.exit"

"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h3d7ac873ca04941fE.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h34197a5494b9b5baE.exit.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17556)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !17557, !noundef !21 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !17557, !nonnull !21, !align !27, !noundef !21
  %i.f = load ptr, ptr %0, align 8, !alias.scope !17557, !nonnull !21, !noundef !21
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val.i.i.i1.i = load ptr, ptr %i.g, align 8, !noalias !17557, !nonnull !21, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !17557, !nonnull !21, !noundef !21 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %bb.c, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit"

bb.c:                                             ; preds = %bb.b
  %i.k = shl i64 %i.b, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  store ptr %i.l, ptr %i.h, align 8, !noalias !17557
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit": ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17560)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !17561, !noundef !21 ; 3 uses
  %i.n = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr115drop_in_place$LT$hashbrown..map..HashMap$LT$$RF$str$C$usize$C$rustc_hash..FxBuildHasher$C$$RF$bumpalo..Bump$GT$$GT$17ha8ed6850ef094169E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !17561, !nonnull !21, !noundef !21
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !17561, !nonnull !21, !noundef !21
  %i.q = mul i64 %.val1.i.i.i, 24
  %i.r = and i64 %i.q, -16                        ; 2 uses
  %i.s = sub i64 -32, %i.r
  %i.t = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.s
  %i.u = getelementptr i8, ptr %.val2.i.i.i, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.u, align 8, !noalias !17561, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !17561, !nonnull !21, !noundef !21 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.t
  br i1 %i.x, label %bb.d, label %"_ZN4core3ptr115drop_in_place$LT$hashbrown..map..HashMap$LT$$RF$str$C$usize$C$rustc_hash..FxBuildHasher$C$$RF$bumpalo..Bump$GT$$GT$17ha8ed6850ef094169E.exit"

bb.d:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i
  %1 = getelementptr i8, ptr %i.w, i64 %.val1.i.i.i
  %2 = getelementptr i8, ptr %1, i64 %i.r
  %i.y = getelementptr i8, ptr %2, i64 49
  store ptr %i.y, ptr %i.v, align 8, !noalias !17561
  br label %"_ZN4core3ptr115drop_in_place$LT$hashbrown..map..HashMap$LT$$RF$str$C$usize$C$rustc_hash..FxBuildHasher$C$$RF$bumpalo..Bump$GT$$GT$17ha8ed6850ef094169E.exit"

"_ZN4core3ptr115drop_in_place$LT$hashbrown..map..HashMap$LT$$RF$str$C$usize$C$rustc_hash..FxBuildHasher$C$$RF$bumpalo..Bump$GT$$GT$17ha8ed6850ef094169E.exit": ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$utoipa..openapi..schema..Discriminator$GT$$GT$17h68f15488639839a1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !21 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..Discriminator$GT$17hdeba94db61fd74f3E.exit", label %bb.b

"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..Discriminator$GT$17hdeba94db61fd74f3E.exit": ; preds = %bb.g, %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17571)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !17572, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17572
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i": ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17ha5b982ce81f73526E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$$GT$17h8fb45d68ee386166E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g)
          to label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$utoipa..openapi..extensions..Extensions$GT$$GT$17hb874f5365eee503dE.exit.i" unwind label %bb.h

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i"
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !17573, !noundef !21
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$utoipa..openapi..extensions..Extensions$GT$$GT$17hb874f5365eee503dE.exit.i", label %bb.d

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !17574, !noundef !21
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..Discriminator$GT$17hdeba94db61fd74f3E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN4core3ptr109drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$$GT$17h8fb45d68ee386166E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.j)
  br label %"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..Discriminator$GT$17hdeba94db61fd74f3E.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !17570
  unreachable

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$utoipa..openapi..extensions..Extensions$GT$$GT$17hb874f5365eee503dE.exit.i": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr87drop_in_place$LT$std..collections..hash..set..IntoIter$LT$alloc..string..String$GT$$GT$17hba43583e2accb8a3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17594)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17595)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !17596, !noundef !21 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.promoted.i.i.i.i.i = load i16, ptr %i.e, align 8, !alias.scope !17597
  %.promoted8.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !17596
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted12.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !17596
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.lcssa14.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i" ] ; 2 uses
  %i.g = phi i64 [ %i.c, %.preheader.i.i.i.i.i ], [ %i.t, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i" ]
  %.lcssa710.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa79.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i" ] ; 2 uses
  %i.h = phi i16 [ %.promoted.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.q, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17598)
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.h, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !17597
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !17597
  br label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i, %bb.b ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !17597
  %i.k = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -384 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.k to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b
  %.lcssa13.i.i.i.i.i = phi ptr [ %i.m, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i, %bb.b ]
  %.lcssa79.i.i.i.i.i = phi ptr [ %i.l, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i, %bb.b ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i.i.i.i.i.i        ; 2 uses
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !17597
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i, i64 %i.r ; 2 uses
  %i.t = add i64 %i.g, -1                         ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !alias.scope !17596
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -24
  %.val.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !17599, !noalias !17596 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.v, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i"
  %i.w = getelementptr i8, ptr %i.s, i64 -16
  %.val6.i.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !17596, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17600
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i": ; preds = %bb.c, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i"
  %.old5.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.old5.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i", label %bb.b

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i", %bb.a
  %i.x = load i64, ptr %0, align 8, !range !25, !alias.scope !17601, !noundef !21 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr74drop_in_place$LT$hashbrown..set..IntoIter$LT$alloc..string..String$GT$$GT$17h00e7894d9f35d6c3E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !17601, !noundef !21 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %"_ZN4core3ptr74drop_in_place$LT$hashbrown..set..IntoIter$LT$alloc..string..String$GT$$GT$17h00e7894d9f35d6c3E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !17601, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.x) #52, !noalias !17601
  br label %"_ZN4core3ptr74drop_in_place$LT$hashbrown..set..IntoIter$LT$alloc..string..String$GT$$GT$17h00e7894d9f35d6c3E.exit"

"_ZN4core3ptr74drop_in_place$LT$hashbrown..set..IntoIter$LT$alloc..string..String$GT$$GT$17h00e7894d9f35d6c3E.exit": ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i", %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..settings..RankingRuleView$GT$$GT$17h699bf37b4105bcc0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17610)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce19fde1c237d4a3E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 4 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17611)
  %i.f = load i64, ptr %i.d, align 8, !range !90, !alias.scope !17612, !noundef !21
  switch i64 %i.f, label %bb.b [
    i64 0, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
    i64 1, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
    i64 2, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
    i64 3, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
    i64 4, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
    i64 5, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
    i64 6, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
    i64 7, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i"
    i64 8, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !17613 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..RankingRuleView$GT$17hb27d0c39b58f1746E.exit.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.sink.split.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.sink.split.i.i.i": ; preds = %bb.c, %bb.b
  %.val.i1.sink.i.i.i = phi i64 [ %.val.i1.i.i.i, %bb.c ], [ %.val.i.i.i.i, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
end_hunk_9
begin_hunk_10_@_ZN4core4iter6traits8iterator8Iterator7collect17h5a84a2062600bf93E:bb.a
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  store i64 %i.k, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !18494
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.pre-phi23.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !18494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18499)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.71.0.copyload, 0
  br i1 %.not.i, label %"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd55fd95d1995f9f1E.exit", label %bb.b, !prof !49

bb.b:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %i.n = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8a84036aa67c6426E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef %.sroa.71.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.43.0..sroa_idx.i, i1 noundef zeroext true)
          to label %bb.c unwind label %.loopexit.split-lp.i, !noalias !18494 ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !18500)
  call void @llvm.experimental.noalias.scope.decl(metadata !18501)
  call void @llvm.experimental.noalias.scope.decl(metadata !18502)
  call void @llvm.experimental.noalias.scope.decl(metadata !18503)
  %i.o = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.o, label %bb.d, label %.critedge.i3.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i4.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i4.i.i.i.i.i.i, label %bb.e, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.p = inttoptr i64 %.sroa.5.0.copyload to ptr  ; 3 uses
  %i.q = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.q, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i", label %.lr.ph.i.i34.i.i.i.i.i.i.preheader

.lr.ph.i.i34.i.i.i.i.i.i.preheader:               ; preds = %bb.e
  %xtraiter = and i64 %.sroa.6.0.copyload, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i34.i.i.i.i.i.i.prol

.lr.ph.i.i34.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.preheader, %.lr.ph.i.i34.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i35.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i37.i.i.i.i.i.i.prol, %.lr.ph.i.i34.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i34.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i36.i.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i34.i.i.i.i.i.i.prol ], [ %.sroa.6.0.copyload, %.lr.ph.i.i34.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i34.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i35.i.i.i.i.i.i.prol, i64 280
  %i.s = add i64 %.sroa.011.014.i.i36.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i37.i.i.i.i.i.i.prol = load ptr, ptr %i.r, align 8, !noalias !18504, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i34.i.i.i.i.i.i.prol, !llvm.loop !18430

.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.prol, %.lr.ph.i.i34.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i37.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i34.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i37.i.i.i.i.i.i.prol, %.lr.ph.i.i34.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i35.i.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i34.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i37.i.i.i.i.i.i.prol, %.lr.ph.i.i34.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i36.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.0.copyload, %.lr.ph.i.i34.i.i.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i34.i.i.i.i.i.i.prol ]
  %i.t = icmp ult i64 %.sroa.6.0.copyload, 8
  br i1 %i.t, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i", label %.lr.ph.i.i34.i.i.i.i.i.i

.lr.ph.i.i34.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i34.i.i.i.i.i.i
  %.sroa.012.015.i.i35.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i37.i.i.i.i.i.i.7, %.lr.ph.i.i34.i.i.i.i.i.i ], [ %.sroa.012.015.i.i35.i.i.i.i.i.i.unr, %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i36.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i34.i.i.i.i.i.i ], [ %.sroa.011.014.i.i36.i.i.i.i.i.i.unr, %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i35.i.i.i.i.i.i, i64 280
  %.sroa.012.0.i.i37.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !noalias !18504, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i37.i.i.i.i.i.i, i64 280
  %.sroa.012.0.i.i37.i.i.i.i.i.i.1 = load ptr, ptr %i.v, align 8, !noalias !18504, !nonnull !21, !noundef !21
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i37.i.i.i.i.i.i.1, i64 280
  %.sroa.012.0.i.i37.i.i.i.i.i.i.2 = load ptr, ptr %i.w, align 8, !noalias !18504, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i37.i.i.i.i.i.i.2, i64 280
  %.sroa.012.0.i.i37.i.i.i.i.i.i.3 = load ptr, ptr %i.x, align 8, !noalias !18504, !nonnull !21, !noundef !21
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i37.i.i.i.i.i.i.3, i64 280
  %.sroa.012.0.i.i37.i.i.i.i.i.i.4 = load ptr, ptr %i.y, align 8, !noalias !18504, !nonnull !21, !noundef !21
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i37.i.i.i.i.i.i.4, i64 280
  %.sroa.012.0.i.i37.i.i.i.i.i.i.5 = load ptr, ptr %i.z, align 8, !noalias !18504, !nonnull !21, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i37.i.i.i.i.i.i.5, i64 280
  %.sroa.012.0.i.i37.i.i.i.i.i.i.6 = load ptr, ptr %i.aa, align 8, !noalias !18504, !nonnull !21, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i37.i.i.i.i.i.i.6, i64 280
  %i.ac = add i64 %.sroa.011.014.i.i36.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i37.i.i.i.i.i.i.7 = load ptr, ptr %i.ab, align 8, !noalias !18504, !nonnull !21, !noundef !21 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i", label %.lr.ph.i.i34.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i": ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i34.i.i.i.i.i.i, %bb.e, %bb.d
  %.sroa.37.0.copyload.i.i10.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload, %bb.d ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i34.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i11.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.d ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i34.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i12.i.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload, %bb.d ], [ %i.p, %bb.e ], [ %.sroa.012.0.i.i37.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i34.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i37.i.i.i.i.i.i.7, %.lr.ph.i.i34.i.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i12.i.i.i.i.i.i, i64 274
  %i.af = load i16, ptr %i.ae, align 2, !noalias !18505, !noundef !21
  %i.ag = zext i16 %i.af to i64
  %i.ah = icmp ult i64 %.sroa.37.0.copyload.i.i10.i.i.i.i.i.i, %i.ag
  br i1 %i.ah, label %bb.g, label %.lr.ph.i.i.i.i15.i.i.i.i.i.i

.lr.ph.i.i.i.i15.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i", %bb.f
  %.sroa.0.038.i.i.i.i16.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.05.0.copyload.i.i12.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i17.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.f ], [ %.sroa.26.0.copyload.i.i11.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i" ]
  %i.ai = load ptr, ptr %.sroa.0.038.i.i.i.i16.i.i.i.i.i.i, align 8, !noalias !18506, !noundef !21 ; 4 uses
  %.not.i.i.i.i.i18.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i18.i.i.i.i.i.i, label %bb.i, label %bb.f

._crit_edge.loopexit.i.i.i.i19.i.i.i.i.i.i:       ; preds = %bb.f
  %i.aj = zext i16 %i.am to i64
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i15.i.i.i.i.i.i
  %i.ak = add i64 %.sroa.5.037.i.i.i.i17.i.i.i.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i16.i.i.i.i.i.i, i64 272
  %i.am = load i16, ptr %i.al, align 8, !noalias !18506 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 274
  %i.ao = load i16, ptr %i.an, align 2, !noalias !18505, !noundef !21
  %i.ap = icmp ult i16 %i.am, %i.ao
  br i1 %i.ap, label %._crit_edge.loopexit.i.i.i.i19.i.i.i.i.i.i, label %.lr.ph.i.i.i.i15.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i.i19.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i20.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i10.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i" ], [ %i.aj, %._crit_edge.loopexit.i.i.i.i19.i.i.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i21.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i11.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i" ], [ %i.ak, %._crit_edge.loopexit.i.i.i.i19.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i22.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i12.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i9.i.i.i.i.i.i" ], [ %i.ai, %._crit_edge.loopexit.i.i.i.i19.i.i.i.i.i.i ] ; 3 uses
  %i.aq = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i21.i.i.i.i.i.i, 0
  %i.ar = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i20.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i22.i.i.i.i.i.i, i64 280
  %i.at = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i20.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.at), !noalias !18503
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  %xtraiter39 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i21.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i23.i.i.i.i.i.i.prol = phi ptr [ %i.av, %.prol.preheader ], [ %i.au, %bb.h ]
  %.pn28.in.i.i.i.i24.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i25.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i21.i.i.i.i.i.i, %bb.h ]
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i25.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i24.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i26.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i23.i.i.i.i.i.i.prol, align 8, !noalias !18507, !nonnull !21, !noundef !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18444

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i26.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i26.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i23.i.i.i.i.i.i.unr = phi ptr [ %i.au, %bb.h ], [ %i.av, %.prol.preheader ]
  %.pn28.in.i.i.i.i24.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i21.i.i.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i25.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.aw = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i21.i.i.i.i.i.i, 8
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i23.i.i.i.i.i.i = phi ptr [ %i.bf, %.new ], [ %.pn30.in.i.i.i.i23.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i24.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i25.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i24.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i26.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i23.i.i.i.i.i.i, align 8, !noalias !18507, !nonnull !21, !noundef !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i26.i.i.i.i.i.i.1 = load ptr, ptr %i.ax, align 8, !noalias !18507, !nonnull !21, !noundef !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i26.i.i.i.i.i.i.2 = load ptr, ptr %i.ay, align 8, !noalias !18507, !nonnull !21, !noundef !21
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i26.i.i.i.i.i.i.3 = load ptr, ptr %i.az, align 8, !noalias !18507, !nonnull !21, !noundef !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i26.i.i.i.i.i.i.4 = load ptr, ptr %i.ba, align 8, !noalias !18507, !nonnull !21, !noundef !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i26.i.i.i.i.i.i.5 = load ptr, ptr %i.bb, align 8, !noalias !18507, !nonnull !21, !noundef !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i26.i.i.i.i.i.i.6 = load ptr, ptr %i.bc, align 8, !noalias !18507, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i25.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i24.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i26.i.i.i.i.i.i.7 = load ptr, ptr %i.bd, align 8, !noalias !18507, !nonnull !21, !noundef !21 ; 2 uses
  %i.be = icmp eq i64 %.pn28.i.i.i.i25.i.i.i.i.i.i.7, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i26.i.i.i.i.i.i.7, i64 280
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i, label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i15.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i32.i.i.i.i.i.i unwind label %bb.j, !noalias !18508

.noexc.i.i32.i.i.i.i.i.i:                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !18503
  unreachable

.critedge.i3.i.i.i.i.i.i:                         ; preds = %bb.c
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !18494

.noexc7.i:                                        ; preds = %.critedge.i3.i.i.i.i.i.i
  unreachable

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.prol.loopexit, %.new, %bb.g
  %.sroa.7.0.i.i.i28.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.g ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i29.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i22.i.i.i.i.i.i, %bb.g ], [ %.pn30.i.i.i.i26.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i26.i.i.i.i.i.i.7, %.new ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i22.i.i.i.i.i.i, i64 8
  %i.bi = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i20.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.bi), !noalias !18503
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i20.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %.sroa.21.0.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i28.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.2744.0.in.i.i.i.i.i.i = phi i64 [ %.sroa.71.0.copyload, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2744.0.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i" ]
  %.sroa.7.0.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i29.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i" ] ; 4 uses
  %i.bn = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fa, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i" ]
  %.sroa.2744.0.i.i.i.i.i.i = add i64 %.sroa.2744.0.in.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18509
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1059)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !18494

.noexc8.i:                                        ; preds = %bb.k
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !18510, !noalias !18511, !noundef !21
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !18510, !noalias !18511, !noundef !21
  %i.bo = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val9.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !18512 ; 2 uses
  %i.bp = load i64, ptr %i.m, align 8, !alias.scope !18513, !noalias !18514, !noundef !21
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.l, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h99bbff46a683dfbfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !23

bb.l:                                             ; preds = %.noexc8.i
  %i.br = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8a84036aa67c6426E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.43.0..sroa_idx.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h99bbff46a683dfbfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.u, !noalias !18515 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h99bbff46a683dfbfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.l, %.noexc8.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !18516, !noalias !18517, !nonnull !21, !noundef !21 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !18516, !noalias !18517, !noundef !21 ; 4 uses
  %i.bs = lshr i64 %i.bo, 57
  %i.bt = trunc nuw nsw i64 %i.bs to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bt, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !noalias !18518 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !18518, !nonnull !21 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h99bbff46a683dfbfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h99bbff46a683dfbfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ct, %bb.o ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h99bbff46a683dfbfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h99bbff46a683dfbfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ]
  %i.bu = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h99bbff46a683dfbfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cs, %bb.o ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bv, align 1, !noalias !18519 ; 3 uses
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.m, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ci, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bx, %bb.m ] ; 3 uses
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bz
  %i.cb = and i64 %i.ca, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !18520, !noundef !21
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !59

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr i8, ptr %i.cd, i64 -16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !18520, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !18521, !noalias !18520
  %i.cg = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %bb.r, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !39

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.m
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, !prof !23

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = add i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ci = and i16 %i.ch, %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ck, 0 ; 2 uses
  %i.cl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ck, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.cm
  %i.cn = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = and i64 %i.cn, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.n ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %i.cr = icmp eq i16 %i.cq, 0
  br i1 %i.cr, label %bb.o, label %bb.p, !prof !23

bb.o:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n
  %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.6.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.n ]
  %i.cs = add i64 %i.bu, 16                       ; 2 uses
  %i.ct = add i64 %i.cs, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.m

bb.p:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !18522, !noundef !21 ; 2 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.q, label %bb.t, !prof !23

bb.q:                                             ; preds = %bb.p
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !18522
  %i.cx = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %i.cz = icmp ne i16 %i.cy, 0
  call void @llvm.assume(i1 %i.cz)
  %i.da = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.db = zext nneg i16 %i.da to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.db
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !18523
  br label %bb.t

bb.r:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h4db6e273ac14b183E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !18518 ; 2 uses
  %i.dc = icmp eq i64 %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dc, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7329ff79a8fd55ceE.exit.i.i.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18524
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7329ff79a8fd55ceE.exit.i.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.dd = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.cv, %bb.p ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %bb.q ], [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18525)
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.df = and i8 %i.dd, 1
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.di = and i64 %i.dh, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.bt, ptr %i.de, align 1, !noalias !18523
  %i.dj = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.bt, ptr %i.dk, align 1, !noalias !18523
  %i.dl = load <2 x i64>, ptr %i.m, align 8, !alias.scope !18526, !noalias !18527
  %i.dm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dg, i64 0
  %i.dn = sub <2 x i64> %i.dl, %i.dm
  store <2 x i64> %i.dn, ptr %i.m, align 8, !alias.scope !18526, !noalias !18527
  %i.do = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dp = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !18512
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7329ff79a8fd55ceE.exit.i.i.i.i.i.i.i"

bb.u:                                             ; preds = %bb.l
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !18518 ; 2 uses
  %i.ds = icmp eq i64 %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ds, label %.body.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i12.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !18518, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18528
  br label %.body.i

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7329ff79a8fd55ceE.exit.i.i.i.i.i.i.i": ; preds = %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18509
  %i.dt = icmp eq i64 %.sroa.2744.0.i.i.i.i.i.i, 0
  br i1 %i.dt, label %"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd55fd95d1995f9f1E.exit", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7329ff79a8fd55ceE.exit.i.i.i.i.i.i.i"
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i.i.i.i, i64 274
  %i.dv = load i16, ptr %i.du, align 2, !noalias !18529, !noundef !21
  %i.dw = zext i16 %i.dv to i64
  %i.dx = icmp ult i64 %.sroa.21.0.i.i.i.i.i.i, %i.dw
  br i1 %i.dx, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i.i.i.i.i.i.i"
  %i.dy = add nuw nsw i64 %.sroa.21.0.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i.i.i.i.i.i.i", %bb.w
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dz, %bb.w ], [ %.sroa.7.0.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ea, %bb.w ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4fbeab0e2ede8d5dE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.dz = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18530, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ea = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.ec = load i16, ptr %i.eb, align 8, !noalias !18530 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 274
  %i.ee = load i16, ptr %i.ed, align 2, !noalias !18529, !noundef !21
  %i.ef = icmp ult i16 %i.ec, %i.ee
  br i1 %i.ef, label %bb.x, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.eg = zext i16 %i.ec to i64                   ; 4 uses
  %i.eh = icmp eq i64 %i.ea, 0
  %i.ei = add nuw nsw i64 %i.eg, 1                ; 2 uses
  br i1 %i.eh, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 280
  %i.ek = icmp ult i16 %i.ec, 11
  call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei ; 2 uses
  %xtraiter46 = and i64 %i.ea, 7                  ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.prol.loopexit43, label %.prol.preheader42

.prol.preheader42:                                ; preds = %bb.y, %.prol.preheader42
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.em, %.prol.preheader42 ], [ %i.el, %bb.y ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader42 ], [ %i.ea, %bb.y ]
  %prol.iter48 = phi i64 [ %prol.iter48.next, %.prol.preheader42 ], [ 0, %bb.y ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !18531, !nonnull !21, !noundef !21 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter48.next = add i64 %prol.iter48, 1     ; 2 uses
  %prol.iter48.cmp.not = icmp eq i64 %prol.iter48.next, %xtraiter46
  br i1 %prol.iter48.cmp.not, label %.prol.loopexit43, label %.prol.preheader42, !llvm.loop !18493

.prol.loopexit43:                                 ; preds = %.prol.preheader42, %bb.y
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.y ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader42 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.el, %bb.y ], [ %i.em, %.prol.preheader42 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ea, %bb.y ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader42 ]
  %i.en = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.en, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i", label %.new44

.new44:                                           ; preds = %.prol.loopexit43, %.new44
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ew, %.new44 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit43 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new44 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit43 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18531, !nonnull !21, !noundef !21
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.eo, align 8, !noalias !18531, !nonnull !21, !noundef !21
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ep, align 8, !noalias !18531, !nonnull !21, !noundef !21
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.eq, align 8, !noalias !18531, !nonnull !21, !noundef !21
  %i.er = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.er, align 8, !noalias !18531, !nonnull !21, !noundef !21
  %i.es = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.es, align 8, !noalias !18531, !nonnull !21, !noundef !21
  %i.et = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.et, align 8, !noalias !18531, !nonnull !21, !noundef !21
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.eu, align 8, !noalias !18531, !nonnull !21, !noundef !21 ; 2 uses
  %i.ev = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 280
  br i1 %i.ev, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i", label %.new44

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !18532

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f33295d86e5694aE.exit.i.i.i.i.i.i": ; preds = %.prol.loopexit43, %.new44, %bb.x, %.thread.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i80.i.i.i.i.i.i = phi ptr [ %i.dz, %bb.x ], [ %.sroa.7.0.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.dz, %.new44 ], [ %i.dz, %.prol.loopexit43 ]
  %.sroa.6.sroa.4.0.ph.i.i.i79.i.i.i.i.i.i = phi i64 [ %i.eg, %bb.x ], [ %.sroa.21.0.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.eg, %.new44 ], [ %i.eg, %.prol.loopexit43 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %bb.x ], [ %i.dy, %.thread.i.i.i.i.i.i ], [ 0, %.new44 ], [ 0, %.prol.loopexit43 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dz, %bb.x ], [ %.sroa.7.0.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit43 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new44 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i80.i.i.i.i.i.i, i64 8
  %i.ez = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i79.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %.sroa.6.sroa.4.0.ph.i.i.i79.i.i.i.i.i.i
  br label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.critedge.i3.i.i.i.i.i.i, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.v, %bb.u
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dr, %bb.u ], [ %i.dr, %bb.v ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17hc90a12129619aeb6E"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #55, !noalias !18494
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd55fd95d1995f9f1E.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7329ff79a8fd55ceE.exit.i.i.i.i.i.i.i", %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !18533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18494
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h8eb95e5212e9e0f3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18543
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h5812d79d09885fb5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1), !noalias !18542
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !18543, !noundef !21 ; 7 uses
  %i.f = icmp ult i64 %i.e, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i", label %bb.c

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i": ; preds = %bb.a
  store ptr null, ptr %0, align 8, !alias.scope !18542, !noalias !18544
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !18542, !noalias !18544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18545)
  %.val2.i.i = load i64, ptr %i.c, align 8, !range !22, !alias.scope !18545, !noalias !18543, !noundef !21 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcb64f557a42e6dc8E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i"
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !18545, !noalias !18543, !nonnull !21, !noundef !21
  %i.j = mul nuw i64 %.val2.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18546
  br label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcb64f557a42e6dc8E.exit"

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !18543, !nonnull !21, !noundef !21 ; 5 uses
  %i.m = icmp eq i64 %i.e, 1
  br i1 %i.m, label %bb.g, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i64 %i.e, 21
  br i1 %i.n, label %bb.f, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hb9285367ba39bd98E(ptr noalias noundef nonnull align 8 %i.l, i64 noundef range(i64 1, 384307168202282326) %i.e, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.g unwind label %bb.h, !noalias !18543

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17haec4e0aa36f2367bE(ptr noalias noundef nonnull align 8 %i.l, i64 noundef range(i64 1, 384307168202282326) %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18543
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !18543
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.e
  store ptr %i.l, ptr %i.b, align 8, !alias.scope !18547, !noalias !18548
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !alias.scope !18547, !noalias !18548
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.q, align 8, !alias.scope !18547, !noalias !18548
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %i.r, align 8, !alias.scope !18547, !noalias !18548
  call fastcc void @"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$16from_sorted_iter17hf63472e33ef286bdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b), !noalias !18544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18543
  br label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcb64f557a42e6dc8E.exit"

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #55, !noalias !18543
  resume { ptr, i32 } %i.s

"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcb64f557a42e6dc8E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i", %bb.b, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18543
end_hunk_10
begin_hunk_11_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E":bb.a
  %.not106.us.i = icmp eq i64 %i.apq, 7
  br i1 %.not106.us.i, label %.thread.i150, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i"

.thread.i150:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i
  %i.arr = xor i64 %i.arq, %.sroa.32.4.us.i       ; 3 uses
  %i.ars = add i64 %.sroa.076.4.us.i, %.sroa.22.4.us.i ; 3 uses
  %i.art = add i64 %i.arr, %.sroa.1281.4.us.i     ; 2 uses
  %i.aru = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.us.i, i64 %.sroa.22.4.us.i, i64 13)
  %i.arv = xor i64 %i.ars, %i.aru                 ; 3 uses
  %i.arw = call i64 @llvm.fshl.i64(i64 %i.arr, i64 %i.arr, i64 16)
  %i.arx = xor i64 %i.art, %i.arw                 ; 3 uses
  %i.ary = call i64 @llvm.fshl.i64(i64 %i.ars, i64 %i.ars, i64 32)
  %i.arz = add i64 %i.art, %i.arv                 ; 3 uses
  %i.asa = add i64 %i.arx, %i.ary                 ; 2 uses
  %i.asb = call i64 @llvm.fshl.i64(i64 %i.arv, i64 %i.arv, i64 17)
  %i.asc = xor i64 %i.arz, %i.asb
  %i.asd = call i64 @llvm.fshl.i64(i64 %i.arx, i64 %i.arx, i64 21)
  %i.ase = xor i64 %i.asd, %i.asa
  %i.asf = call i64 @llvm.fshl.i64(i64 %i.arz, i64 %i.arz, i64 32)
  %i.asg = xor i64 %i.asa, %i.arq
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i": ; preds = %.thread.i150, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.thread.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i"
  %.sroa.50.0.us.i = phi i64 [ %i.arq, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %i.arf, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.thread.i ], [ 0, %.thread.i150 ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.32.2.us.i = phi i64 [ %.sroa.32.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %.sroa.32.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.thread.i ], [ %i.ase, %.thread.i150 ], [ %.sroa.32.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.22.2.us.i = phi i64 [ %.sroa.22.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %.sroa.22.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.thread.i ], [ %i.asc, %.thread.i150 ], [ %.sroa.22.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ] ; 3 uses
  %.sroa.1281.2.us.i = phi i64 [ %.sroa.1281.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %.sroa.1281.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.thread.i ], [ %i.asf, %.thread.i150 ], [ %.sroa.1281.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.076.2.us.i = phi i64 [ %.sroa.076.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %.sroa.076.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.thread.i ], [ %i.asg, %.thread.i150 ], [ %.sroa.076.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %i.ash = shl i64 %.val1.i.i29.us.i, 56
  %i.asi = add i64 %i.ash, 72057594037927936
  %i.asj = or i64 %.sroa.50.0.us.i, %i.asi        ; 2 uses
  %i.ask = xor i64 %i.asj, %.sroa.32.2.us.i       ; 3 uses
  %i.asl = add i64 %.sroa.076.2.us.i, %.sroa.22.2.us.i ; 3 uses
  %i.asm = add i64 %.sroa.1281.2.us.i, %i.ask     ; 2 uses
  %i.asn = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.us.i, i64 %.sroa.22.2.us.i, i64 13)
  %i.aso = xor i64 %i.asl, %i.asn                 ; 3 uses
  %i.asp = call i64 @llvm.fshl.i64(i64 %i.ask, i64 %i.ask, i64 16)
  %i.asq = xor i64 %i.asm, %i.asp                 ; 3 uses
  %i.asr = call i64 @llvm.fshl.i64(i64 %i.asl, i64 %i.asl, i64 32)
  %i.ass = add i64 %i.aso, %i.asm                 ; 3 uses
  %i.ast = add i64 %i.asr, %i.asq                 ; 2 uses
  %i.asu = call i64 @llvm.fshl.i64(i64 %i.aso, i64 %i.aso, i64 17)
  %i.asv = xor i64 %i.ass, %i.asu                 ; 3 uses
  %i.asw = call i64 @llvm.fshl.i64(i64 %i.asq, i64 %i.asq, i64 21)
  %i.asx = xor i64 %i.ast, %i.asw                 ; 3 uses
  %i.asy = call i64 @llvm.fshl.i64(i64 %i.ass, i64 %i.ass, i64 32)
  %i.asz = xor i64 %i.ast, %i.asj
  %i.ata = xor i64 %i.asy, 255
  %i.atb = add i64 %i.asz, %i.asv                 ; 3 uses
  %i.atc = add i64 %i.ata, %i.asx                 ; 2 uses
  %i.atd = call i64 @llvm.fshl.i64(i64 %i.asv, i64 %i.asv, i64 13)
  %i.ate = xor i64 %i.atb, %i.atd                 ; 3 uses
  %i.atf = call i64 @llvm.fshl.i64(i64 %i.asx, i64 %i.asx, i64 16)
  %i.atg = xor i64 %i.atc, %i.atf                 ; 3 uses
  %i.ath = call i64 @llvm.fshl.i64(i64 %i.atb, i64 %i.atb, i64 32)
  %i.ati = add i64 %i.ate, %i.atc                 ; 3 uses
  %i.atj = add i64 %i.atg, %i.ath                 ; 2 uses
  %i.atk = call i64 @llvm.fshl.i64(i64 %i.ate, i64 %i.ate, i64 17)
  %i.atl = xor i64 %i.ati, %i.atk                 ; 3 uses
  %i.atm = call i64 @llvm.fshl.i64(i64 %i.atg, i64 %i.atg, i64 21)
  %i.atn = xor i64 %i.atm, %i.atj                 ; 3 uses
  %i.ato = call i64 @llvm.fshl.i64(i64 %i.ati, i64 %i.ati, i64 32)
  %i.atp = add i64 %i.atl, %i.atj                 ; 3 uses
  %i.atq = add i64 %i.atn, %i.ato                 ; 2 uses
  %i.atr = call i64 @llvm.fshl.i64(i64 %i.atl, i64 %i.atl, i64 13)
  %i.ats = xor i64 %i.atr, %i.atp                 ; 3 uses
  %i.att = call i64 @llvm.fshl.i64(i64 %i.atn, i64 %i.atn, i64 16)
  %i.atu = xor i64 %i.att, %i.atq                 ; 3 uses
  %i.atv = call i64 @llvm.fshl.i64(i64 %i.atp, i64 %i.atp, i64 32)
  %i.atw = add i64 %i.ats, %i.atq                 ; 3 uses
  %i.atx = add i64 %i.atu, %i.atv                 ; 2 uses
  %i.aty = call i64 @llvm.fshl.i64(i64 %i.ats, i64 %i.ats, i64 17)
  %i.atz = xor i64 %i.aty, %i.atw                 ; 3 uses
  %i.aua = call i64 @llvm.fshl.i64(i64 %i.atu, i64 %i.atu, i64 21)
  %i.aub = xor i64 %i.aua, %i.atx                 ; 2 uses
  %i.auc = call i64 @llvm.fshl.i64(i64 %i.atw, i64 %i.atw, i64 32)
  %i.aud = add i64 %i.atz, %i.atx
  %i.aue = add i64 %i.aub, %i.auc                 ; 2 uses
  %i.auf = call i64 @llvm.fshl.i64(i64 %i.atz, i64 %i.atz, i64 13)
  %i.aug = xor i64 %i.auf, %i.aud                 ; 2 uses
  %i.auh = add i64 %i.aug, %i.aue                 ; 2 uses
  %i.aui = shl i64 %i.aug, 17
  %i.auj = shl i64 %i.aub, 37
  %i.auk = shl i64 %i.aue, 21
  %i.aul = xor i64 %i.auk, %i.auj
  %i.aum = shl i64 %i.auh, 32
  %i.aun = xor i64 %i.aul, %i.aui
  %i.auo = xor i64 %i.aun, %i.aum
  %i.aup = xor i64 %i.auo, %i.auh
  %i.auq = lshr i64 %i.aup, 57
  %i.aur = trunc nuw nsw i64 %i.auq to i8
  br label %bb.ea

bb.ea:                                            ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i", %bb.du
  %.sroa.025.0.us.i.i.us.i = phi i8 [ %i.aur, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i" ], [ -1, %bb.du ]
  %i.aus = load atomic i8, ptr %i.aoy monotonic, align 1, !noalias !25243
  %i.aut = icmp eq i8 %i.aus, -128
  br i1 %i.aut, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store atomic i8 %.sroa.025.0.us.i.i.us.i, ptr %i.aoy release, align 1, !noalias !25243
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.ds
  %i.auu = add i64 %.sroa.030.06.us.i.i.us.i, 1   ; 3 uses
  %i.auv = add i64 %i.auu, %.sroa.026.07.us.i.i.us.i
  %.not.us.i.i.us.i = icmp ugt i64 %i.auu, %.sroa.9.0.us.i.i.us.i
  br i1 %.not.us.i.i.us.i, label %bb.ed, label %bb.ds

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !25243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !25243
  store i64 %.sroa.0.0.us.i.i.us.i, ptr %i.n, align 8, !noalias !25243
  store i64 %.sroa.9.0.us.i.i.us.i, ptr %.sroa.9.0..sroa_idx6.i.i.i, align 8, !noalias !25243
  store ptr %.sroa.10.0.us.i.i.us.i, ptr %.sroa.10.0..sroa_idx12.i.i.i, align 8, !noalias !25243
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 %1, i64 noundef 0, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n), !noalias !25243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25243
  %.sroa.0.0.copyload4.us.i.i.us.i = load i64, ptr %i.o, align 8, !noalias !25243
  %.sroa.9.0.copyload9.us.i.i.us.i = load i64, ptr %.sroa.9.0..sroa_idx8.i.i.i, align 8, !noalias !25243
  %.sroa.10.0.copyload15.us.i.i.us.i = load ptr, ptr %.sroa.10.0..sroa_idx14.i.i.i, align 8, !noalias !25243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25243
  br label %.split.us.i.i.us.i

bb.ee:                                            ; preds = %bb.dt
  %i.auw = lshr i64 %i.aou, 57
  %i.aux = trunc nuw nsw i64 %i.auw to i8
  store atomic i8 %i.aux, ptr %i.aoy release, align 1, !noalias !25243
  %.not4.i.us.i = and i64 %i.aol, 3
  %i.auy = xor i64 %.not4.i.us.i, 3
  %i.auz = getelementptr i8, ptr %i.aom, i64 %i.auy
  store atomic ptr %i.auz, ptr %i.aok seq_cst, align 8, !noalias !25242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !25242
  %i.ava = ptrtoint ptr %i.aok to i64
  store i64 %i.ava, ptr %i.m, align 8, !noalias !25242
  %i.avb = load atomic i64, ptr %i.aob seq_cst, align 8, !noalias !25242
  %i.avc = icmp eq i64 %i.avb, 0
  br i1 %i.avc, label %_ZN6papaya3raw5utils6parker6Parker6unpark17h77c06eaae431f30eE.exit.i.us.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !25242
  %i.avd = cmpxchg ptr %i.aoa, i32 0, i32 1 acquire monotonic, align 4, !noalias !25250
  %i.ave = extractvalue { i32, i1 } %i.avd, 1
  br i1 %i.ave, label %bb.eh, label %bb.eg, !prof !49

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.aoa), !noalias !25250
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.avf = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25250
  %i.avg = and i64 %i.avf, 9223372036854775807
  %i.avh = icmp eq i64 %i.avg, 0
  br i1 %i.avh, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i.us.i", label %bb.ei, !prof !49

bb.ei:                                            ; preds = %bb.eh
  %i.avi = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25250
  %i.avj = xor i1 %i.avi, true
  %i.avk = zext i1 %i.avj to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i.us.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i.us.i": ; preds = %bb.ei, %bb.eh
  %.sroa.01.0.i.i.i.i.us.i = phi i8 [ %i.avk, %bb.ei ], [ 0, %bb.eh ] ; 2 uses
  %i.avl = load atomic i8, ptr %i.aoc monotonic, align 4, !noalias !25250
  %.not46.i.i.us.i = icmp eq i8 %i.avl, 0
  br i1 %.not46.i.i.us.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit.i.i.us.i", label %.split171.us.i, !prof !49

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit.i.i.us.i": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i.us.i"
  %i.avm = trunc nuw i8 %.sroa.01.0.i.i.i.i.us.i to i1
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h8afb75d320f61d1cE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef align 8 dereferenceable(48) %i.aod, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m), !noalias !25242
  br i1 %i.avm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i, label %bb.ej

bb.ej:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit.i.i.us.i"
  %i.avn = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25242
  %i.avo = and i64 %i.avn, 9223372036854775807
  %i.avp = icmp eq i64 %i.avo, 0
  br i1 %i.avp, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i, label %bb.ek, !prof !49

bb.ek:                                            ; preds = %bb.ej
  %i.avq = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25242
  br i1 %i.avq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store atomic i8 1, ptr %i.aoc monotonic, align 4, !noalias !25242
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i: ; preds = %bb.el, %bb.ek, %bb.ej, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit.i.i.us.i"
  %i.avr = atomicrmw xchg ptr %i.aoa, i32 0 release, align 4, !noalias !25242
  %i.avs = icmp eq i32 %i.avr, 2
  br i1 %i.avs, label %bb.em, label %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i", !prof !23

bb.em:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %i.aoa), !noalias !25242
  br label %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i"

"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i": ; preds = %bb.em, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.us.i
  %i.avt = load ptr, ptr %i.l, align 8, !noalias !25242, !noundef !21 ; 7 uses
  %.not.i.i.us.i = icmp eq ptr %i.avt, null
  br i1 %.not.i.i.us.i, label %bb.er, label %bb.en

bb.en:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i"
  %.sroa.0.sroa.4.0.copyload.i.i.us.i = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !25242 ; 4 uses
  %.sroa.4.0.copyload.i.i.us.i = load i64, ptr %.sroa.4.0..sroa_idx.i5.i.i, align 8, !noalias !25242 ; 4 uses
  %i.avu = atomicrmw sub ptr %i.aob, i64 %.sroa.4.0.copyload.i.i.us.i monotonic, align 8, !noalias !25242 ; 0 uses
  %.val3.i.i.i.i.i.us.i = load <16 x i8>, ptr %i.avt, align 16, !noalias !25251
  %i.avv = icmp eq i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i, 0 ; 2 uses
  br i1 %i.avv, label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit.i.i.us.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i: ; preds = %bb.en
  %i.avw = shl i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i, 4
  %5 = mul i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i, 17
  %i.avx = add i64 %5, 33
  %i.avy = sub nuw nsw i64 -16, %i.avw
  %i.avz = getelementptr inbounds i8, ptr %i.avt, i64 %i.avy
  br label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit.i.i.us.i"

"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit.i.i.us.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i, %bb.en
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.us.i = phi i64 [ %i.avx, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i ], [ undef, %bb.en ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.us.i = phi ptr [ %i.avz, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i ], [ undef, %bb.en ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.us.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.us.i ], [ 0, %bb.en ] ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avt, i64 16 ; 2 uses
  %i.awb = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.i, splat (i8 -1) ; 2 uses
  %i.awc = getelementptr i8, ptr %i.avt, i64 %.sroa.0.sroa.4.0.copyload.i.i.us.i
  %i.awd = getelementptr i8, ptr %i.awc, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !25242
  store i64 %.sroa.0.0.i.i.i.i.i.i.us.i, ptr %i.k, align 8, !noalias !25242
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.us.i, ptr %.sroa.433.0..sroa_idx.i.i.i, align 8, !noalias !25242
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.us.i, ptr %.sroa.534.0..sroa_idx.i.i.i, align 8, !noalias !25242
  store ptr %i.avt, ptr %.sroa.635.0..sroa_idx.i.i.i, align 8, !noalias !25242
  store ptr %i.awa, ptr %.sroa.736.0..sroa_idx.i.i.i, align 8, !noalias !25242
  store ptr %i.awd, ptr %.sroa.837.0..sroa_idx.i.i.i, align 8, !noalias !25242
  store <16 x i1> %i.awb, ptr %.sroa.938.0..sroa_idx.i.i.i, align 8, !noalias !25242
  store i64 %.sroa.4.0.copyload.i.i.us.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !25242
  %i.awe = icmp eq i64 %.sroa.4.0.copyload.i.i.us.i, 0
  br i1 %i.awe, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i.i.i.us.i", label %.lr.ph.preheader.i.i.us.i

.lr.ph.preheader.i.i.us.i:                        ; preds = %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit.i.i.us.i"
  %.sroa.938.0..sroa_idx.promoted.cast.i.i.us.i = bitcast <16 x i1> %i.awb to i16
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i", %.lr.ph.preheader.i.i.us.i
  %i.awf = phi i64 [ %i.aws, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i" ], [ %.sroa.4.0.copyload.i.i.us.i, %.lr.ph.preheader.i.i.us.i ]
  %i.awg = phi i16 [ %i.awp, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i" ], [ %.sroa.938.0..sroa_idx.promoted.cast.i.i.us.i, %.lr.ph.preheader.i.i.us.i ] ; 2 uses
  %.pre.i.i5155.i.i.us.i = phi ptr [ %.pre.i.i50.i.i.us.i, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i" ], [ %i.avt, %.lr.ph.preheader.i.i.us.i ] ; 2 uses
  %.promoted15.i.i5354.i.i.us.i = phi ptr [ %.promoted15.i.i52.i.i.us.i, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i" ], [ %i.awa, %.lr.ph.preheader.i.i.us.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25252)
  call void @llvm.experimental.noalias.scope.decl(metadata !25253)
  %.not13.i.i.i.i.us.i = icmp eq i16 %i.awg, 0
  br i1 %.not13.i.i.i.i.us.i, label %.lr.ph.i.i.i.i.us.i, label %._crit_edge20.i.i.i.i.us.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %.lr.ph.i.i.us.i, %.lr.ph.i.i.i.i.us.i
  %i.awh = phi ptr [ %i.awl, %.lr.ph.i.i.i.i.us.i ], [ %.promoted15.i.i5354.i.i.us.i, %.lr.ph.i.i.us.i ] ; 2 uses
  %i.awi = phi ptr [ %i.awk, %.lr.ph.i.i.i.i.us.i ], [ %.pre.i.i5155.i.i.us.i, %.lr.ph.i.i.us.i ]
  %.val11.i.i.i.i.us.i = load <16 x i8>, ptr %i.awh, align 16, !noalias !25254
  %i.awj = icmp sgt <16 x i8> %.val11.i.i.i.i.us.i, splat (i8 -1)
  %i.awk = getelementptr inbounds i8, ptr %i.awi, i64 -256 ; 3 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awh, i64 16 ; 3 uses
  %.cast.i.i.i.i.us.i = bitcast <16 x i1> %i.awj to i16 ; 2 uses
  %.not.i.i.i.i.us.i = icmp eq i16 %.cast.i.i.i.i.us.i, 0
  br i1 %.not.i.i.i.i.us.i, label %.lr.ph.i.i.i.i.us.i, label %._crit_edge.i.i.i.i.us.i

._crit_edge.i.i.i.i.us.i:                         ; preds = %.lr.ph.i.i.i.i.us.i
  store ptr %i.awl, ptr %.sroa.736.0..sroa_idx.i.i.i, align 8, !alias.scope !25255, !noalias !25242
  store ptr %i.awk, ptr %.sroa.635.0..sroa_idx.i.i.i, align 8, !alias.scope !25255, !noalias !25242
  br label %._crit_edge20.i.i.i.i.us.i

._crit_edge20.i.i.i.i.us.i:                       ; preds = %._crit_edge.i.i.i.i.us.i, %.lr.ph.i.i.us.i
  %.promoted15.i.i52.i.i.us.i = phi ptr [ %i.awl, %._crit_edge.i.i.i.i.us.i ], [ %.promoted15.i.i5354.i.i.us.i, %.lr.ph.i.i.us.i ]
  %.pre.i.i50.i.i.us.i = phi ptr [ %i.awk, %._crit_edge.i.i.i.i.us.i ], [ %.pre.i.i5155.i.i.us.i, %.lr.ph.i.i.us.i ] ; 2 uses
  %.lcssa.i.i.i.i.us.i = phi i16 [ %.cast.i.i.i.i.us.i, %._crit_edge.i.i.i.i.us.i ], [ %i.awg, %.lr.ph.i.i.us.i ] ; 3 uses
  %i.awm = add i16 %.lcssa.i.i.i.i.us.i, -1
  %i.awn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.us.i, i1 true)
  %i.awo = zext nneg i16 %i.awn to i64
  %i.awp = and i16 %i.awm, %.lcssa.i.i.i.i.us.i   ; 3 uses
  %i.awq = sub nsw i64 0, %i.awo
  %i.awr = getelementptr inbounds [16 x i8], ptr %.pre.i.i50.i.i.us.i, i64 %i.awq
  %i.aws = add i64 %i.awf, -1                     ; 4 uses
  %i.awt = getelementptr inbounds i8, ptr %i.awr, i64 -8
  %i.awu = load ptr, ptr %i.awt, align 8, !noalias !25256, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !25242
  store ptr %i.awu, ptr %i.j, align 8, !noalias !25242
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 40 ; 2 uses
  %i.aww = atomicrmw xchg ptr %i.awv, i32 1 release, align 4, !noalias !25242
  %i.awx = icmp eq i32 %i.aww, -1
  br i1 %i.awx, label %bb.eo, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i.i.us.i

bb.eo:                                            ; preds = %._crit_edge20.i.i.i.i.us.i
  %i.awy = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.awv)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i.i.us.i unwind label %.split174.us.i, !noalias !25242 ; 0 uses

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i.i.us.i: ; preds = %bb.eo, %._crit_edge20.i.i.i.i.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !25257)
  call void @llvm.experimental.noalias.scope.decl(metadata !25258)
  call void @llvm.experimental.noalias.scope.decl(metadata !25259)
  call void @llvm.experimental.noalias.scope.decl(metadata !25260)
  %i.awz = load ptr, ptr %i.j, align 8, !alias.scope !25261, !noalias !25242, !nonnull !21, !noundef !21
  %i.axa = atomicrmw sub ptr %i.awz, i64 1 release, align 8, !noalias !25262
  %i.axb = icmp eq i64 %i.axa, 1
  br i1 %i.axb, label %bb.ep, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i"

bb.ep:                                            ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i.i.us.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i" unwind label %.split179.us.i, !noalias !25242

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i": ; preds = %bb.ep, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25242
  %i.axc = icmp eq i64 %i.aws, 0
  br i1 %i.axc, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i.i.i.us.i", label %.lr.ph.i.i.us.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i.i.i.us.i": ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18.i.i.us.i", %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit.i.i.us.i"
  %i.axd = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.us.i, 0
  %or.cond.i.i.us.i = or i1 %i.avv, %i.axd
  br i1 %or.cond.i.i.us.i, label %"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE.exit.i.i.us.i", label %bb.eq

bb.eq:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i.i.i.us.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i.us.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i.us.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i.us.i) #52, !noalias !25263
  br label %"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE.exit.i.i.us.i"

"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE.exit.i.i.us.i": ; preds = %bb.eq, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i.i.i.us.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25242
  br label %bb.er

bb.er:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE.exit.i.i.us.i", %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit.i.i.us.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !25242
  br label %_ZN6papaya3raw5utils6parker6Parker6unpark17h77c06eaae431f30eE.exit.i.us.i

_ZN6papaya3raw5utils6parker6Parker6unpark17h77c06eaae431f30eE.exit.i.us.i: ; preds = %bb.er, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25242
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i"

bb.es:                                            ; preds = %bb.dq
  %i.axe = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %i.aoi
  store atomic i8 -1, ptr %i.axe release, align 1, !noalias !25242
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i"

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i": ; preds = %bb.es, %_ZN6papaya3raw5utils6parker6Parker6unpark17h77c06eaae431f30eE.exit.i.us.i, %bb.dp
  %exitcond237.not.i = icmp eq i64 %i.aoj, %i.ang
  br i1 %exitcond237.not.i, label %._crit_edge.us.i, label %bb.do

._crit_edge.us.i:                                 ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i", %bb.do
  %.sroa.01.0.lcssa.us.i = phi i64 [ %i.aoh, %bb.do ], [ %i.ang, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i" ]
  %i.axf = call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.sroa.0.0.i, ptr %i.ani, ptr nonnull %i.ano, i64 noundef %.sroa.01.0.lcssa.us.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !25241
  %brmerge.us.i = or i1 %i.axf, %.not.i2
  br i1 %brmerge.us.i, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit", label %.preheader111.split.us.i

.split174.us.i:                                   ; preds = %bb.eo
  %i.axg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i16 %i.awp, ptr %.sroa.938.0..sroa_idx.i.i.i, align 8, !alias.scope !25255, !noalias !25242
  store i64 %i.aws, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !25252, !noalias !25242
  call void @llvm.experimental.noalias.scope.decl(metadata !25264)
  call void @llvm.experimental.noalias.scope.decl(metadata !25265)
  call void @llvm.experimental.noalias.scope.decl(metadata !25266)
  call void @llvm.experimental.noalias.scope.decl(metadata !25267)
  %i.axh = load ptr, ptr %i.j, align 8, !alias.scope !25268, !noalias !25242, !nonnull !21, !noundef !21
  %i.axi = atomicrmw sub ptr %i.axh, i64 1 release, align 8, !noalias !25269
  %i.axj = icmp eq i64 %i.axi, 1
  br i1 %i.axj, label %bb.ex, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit.i.i.i"

.split179.us.i:                                   ; preds = %bb.ep
  %i.axk = landingpad { ptr, i32 }
          cleanup
  store i16 %i.awp, ptr %.sroa.938.0..sroa_idx.i.i.i, align 8, !alias.scope !25255, !noalias !25242
  store i64 %i.aws, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !25252, !noalias !25242
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit.i.i.i"

.preheader111.split.i:                            ; preds = %.preheader111.i
  br i1 %2, label %.preheader111.split.split.i, label %.preheader111.split.split.us.i

.preheader111.split.split.us.i:                   ; preds = %.preheader111.split.i
  %i.axl = load atomic i64, ptr %i.anu monotonic, align 8, !noalias !25240
  %.not14.us185.i = icmp ult i64 %i.axl, %i.anv
  br i1 %.not14.us185.i, label %.split184.split.us.i, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread"

.split184.split.us.i:                             ; preds = %.preheader111.split.split.us.i
  %i.axm = atomicrmw or ptr %i.anu, i64 0 monotonic, align 8, !noalias !25240 ; 0 uses
  %i.axn = tail call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.sroa.0.0.i, ptr nonnull %i.ani, ptr nonnull %i.ano, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !25241 ; 0 uses
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread"

.preheader111.split.split.i:                      ; preds = %.preheader111.split.i, %bb.et
  %i.axo = load atomic i64, ptr %i.anu monotonic, align 8, !noalias !25240
  %.not14.i = icmp ult i64 %i.axo, %i.anv
  br i1 %.not14.i, label %bb.et, label %.split.us.i

bb.et:                                            ; preds = %.preheader111.split.split.i
  %i.axp = atomicrmw or ptr %i.anu, i64 0 monotonic, align 8, !noalias !25240 ; 0 uses
  %i.axq = tail call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.sroa.0.0.i, ptr %i.ani, ptr nonnull %i.ano, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !25241
  br i1 %i.axq, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit", label %.preheader111.split.split.i

.split.us.i:                                      ; preds = %.preheader111.split.us.i, %.preheader111.split.split.i
  br i1 %2, label %.preheader.i3, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread"

.preheader.i3:                                    ; preds = %.split.us.i
  %i.axr = getelementptr inbounds nuw i8, ptr %i.ano, i64 128 ; 5 uses
  %i.axs = load atomic i8, ptr %i.axr acquire, align 8, !noalias !25240
  %i.axt = icmp eq i8 %i.axs, 2
  br i1 %i.axt, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread156", label %.lr.ph189.i

.lr.ph189.i:                                      ; preds = %.preheader.i3
  %i.axu = getelementptr inbounds nuw i8, ptr %i.ano, i64 48 ; 18 uses
  %i.axv = ptrtoint ptr %i.axr to i64             ; 8 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.ano, i64 112 ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.ano, i64 52 ; 7 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.ano, i64 56 ; 5 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.ano, i64 104 ; 4 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.ano, i64 88 ; 4 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.ano, i64 96 ; 3 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ano, i64 64 ; 4 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ano, i64 72 ; 3 uses
  %i.aye = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 4 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 16 ; 2 uses
end_hunk_11
begin_hunk_12_@"_ZN6papaya3raw5alloc14Table$LT$T$GT$7dealloc17hae452f0be1b33f23E":bb.a
  %i.ao = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -256 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ao to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h5f66bf11b3840576E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h5f66bf11b3840576E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [16 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.av
  %i.ax = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25503)
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25507)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !25508, !noalias !25509, !nonnull !21, !noundef !21
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !25510
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.h, label %"_ZN4core3ptr54drop_in_place$LT$$LP$u64$C$std..thread..Thread$RP$$GT$17hf1645c05185e01aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.h:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h5f66bf11b3840576E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay), !noalias !25509
  br label %"_ZN4core3ptr54drop_in_place$LT$$LP$u64$C$std..thread..Thread$RP$$GT$17hf1645c05185e01aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr54drop_in_place$LT$$LP$u64$C$std..thread..Thread$RP$$GT$17hf1645c05185e01aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.h, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h5f66bf11b3840576E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bc = icmp eq i64 %i.ax, 0
  br i1 %i.bc, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h026031031a4cfec8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

_ZN9hashbrown3raw13RawTableInner13drop_elements17h026031031a4cfec8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr54drop_in_place$LT$$LP$u64$C$std..thread..Thread$RP$$GT$17hf1645c05185e01aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.e
  %i.bd = shl i64 %i.ad, 4                        ; 2 uses
  %i.be = add i64 %i.bd, 16                       ; 2 uses
  %i.bf = add i64 %i.ad, 17
  %i.bg = add i64 %i.bf, %i.be                    ; 4 uses
  %i.bh = icmp uge i64 %i.bg, %i.be
  %i.bi = icmp ult i64 %i.bg, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bh)
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i64 %i.bg, 0
  br i1 %i.bj, label %"_ZN4core3ptr106drop_in_place$LT$$LP$usize$C$std..collections..hash..map..HashMap$LT$u64$C$std..thread..Thread$GT$$RP$$GT$17h868b9c4a45f971a9E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h026031031a4cfec8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = load ptr, ptr %i.ab, align 8, !alias.scope !25498, !noalias !25489, !nonnull !21, !noundef !21
  %i.bl = sub nuw nsw i64 -16, %i.bd
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !25511
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$usize$C$std..collections..hash..map..HashMap$LT$u64$C$std..thread..Thread$GT$$RP$$GT$17h868b9c4a45f971a9E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$$LP$usize$C$std..collections..hash..map..HashMap$LT$u64$C$std..thread..Thread$GT$$RP$$GT$17h868b9c4a45f971a9E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.i, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h026031031a4cfec8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hc153d9f5e3c745b8E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.bn = icmp eq i64 %i.aa, 0
  br i1 %i.bn, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb08118de3e33b187E.exit.i.i.i.i.i.i.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17hb08118de3e33b187E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$usize$C$std..collections..hash..map..HashMap$LT$u64$C$std..thread..Thread$GT$$RP$$GT$17h868b9c4a45f971a9E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.b
  %i.bo = mul i64 %i.g, 56
  %i.bp = icmp slt i64 %i.g, 329406144173384850
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bo, -16                      ; 2 uses
  %i.br = add i64 %i.bq, 64                       ; 2 uses
  %i.bs = add nsw i64 %i.g, 17
  %i.bt = add i64 %i.bs, %i.br                    ; 4 uses
  %i.bu = icmp uge i64 %i.bt, %i.br
  %i.bv = icmp ult i64 %i.bt, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bu)
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp eq i64 %i.bt, 0
  br i1 %i.bw, label %"_ZN4core3ptr139drop_in_place$LT$papaya..raw..State$LT$papaya..raw..Entry$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$GT$$GT$$GT$17hdbb944151fefb845E.exit", label %bb.j

bb.j:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb08118de3e33b187E.exit.i.i.i.i.i.i.i.i.i.i
  %i.bx = load ptr, ptr %i.e, align 8, !alias.scope !25487, !nonnull !21, !noundef !21
  %i.by = sub i64 -64, %i.bq
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !25487
  br label %"_ZN4core3ptr139drop_in_place$LT$papaya..raw..State$LT$papaya..raw..Entry$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$GT$$GT$$GT$17hdbb944151fefb845E.exit"

"_ZN4core3ptr139drop_in_place$LT$papaya..raw..State$LT$papaya..raw..Entry$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$GT$$GT$$GT$17hdbb944151fefb845E.exit": ; preds = %"_ZN6papaya3raw5alloc14Table$LT$T$GT$6layout17h02ddc0e415783784E.exit", %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb08118de3e33b187E.exit.i.i.i.i.i.i.i.i.i.i, %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef %.16.val, i64 noundef %i.c, i64 noundef 8) #52
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6papaya3raw5utils6parker6Parker6unpark17h689a69a296f0d968E(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 1 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = ptrtoint ptr %1 to i64
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !25553
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %0), !noalias !25553
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25553
  %i.m = and i64 %i.l, 9223372036854775807
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit", label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25553
  %i.p = xor i1 %i.o, true
  %i.q = zext i1 %i.p to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit": ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.q, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load atomic i8, ptr %i.r monotonic, align 4, !noalias !25553
  %.not46 = icmp eq i8 %i.s, 0
  br i1 %.not46, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit", label %bb.f, !prof !49

bb.f:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25554
  store ptr %0, ptr %i.a, align 8, !noalias !25554
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.t, align 8, !noalias !25554
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1077, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1079, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1227) #57
          to label %bb.h unwind label %bb.g, !noalias !25555

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr136drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$$GT$17hfc3c1726ec434812E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #55
          to label %common.resume unwind label %bb.i, !noalias !25555

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !25555
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit", %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %.pn, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit"
  %i.w = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h8afb75d320f61d1cE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(48) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
  br i1 %i.w, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.k

bb.j:                                             ; preds = %bb.a, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit"
  %i.y = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.z = and i64 %i.y, 9223372036854775807
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l, !prof !49

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.ab, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.r monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit"
  %i.ac = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %bb.n, label %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit", !prof !23

bb.n:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit"

"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.n
  %i.ae = load ptr, ptr %i.d, align 8, !noundef !21 ; 7 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit"
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.sroa.4.0.copyload = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %i.af = atomicrmw sub ptr %i.g, i64 %.sroa.4.0.copyload monotonic, align 8 ; 0 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !noalias !25556
  %i.ag = icmp eq i64 %.sroa.0.sroa.4.0.copyload, 0 ; 2 uses
  br i1 %i.ag, label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.o
  %i.ah = shl i64 %.sroa.0.sroa.4.0.copyload, 4
  %2 = mul i64 %.sroa.0.sroa.4.0.copyload, 17
  %i.ai = add i64 %2, 33
  %i.aj = sub nuw nsw i64 -16, %i.ah
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.aj
  br label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit"

"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit": ; preds = %bb.o, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.ai, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.o ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.ak, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.am = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1) ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %.sroa.0.sroa.4.0.copyload
  %i.ao = getelementptr i8, ptr %i.an, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.c, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.ae, ptr %.sroa.635.0..sroa_idx, align 8
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.al, ptr %.sroa.736.0..sroa_idx, align 8
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.ao, ptr %.sroa.837.0..sroa_idx, align 8
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store <16 x i1> %i.am, ptr %.sroa.938.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store i64 %.sroa.4.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ap = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.ap, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit"
  %.sroa.938.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.am to i16
  br label %.lr.ph

bb.p:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE.exit", %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18"
  %i.aq = phi i64 [ %i.be, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18" ], [ %.sroa.4.0.copyload, %.lr.ph.preheader ]
  %i.ar = phi i16 [ %i.bb, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18" ], [ %.sroa.938.0..sroa_idx.promoted.cast, %.lr.ph.preheader ] ; 2 uses
  %.pre.i.i5155 = phi ptr [ %.pre.i.i50, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18" ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.promoted15.i.i5354 = phi ptr [ %.promoted15.i.i52, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18" ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25557)
  call void @llvm.experimental.noalias.scope.decl(metadata !25558)
  %.not13.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %._crit_edge20.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.aw, ptr %.sroa.736.0..sroa_idx, align 8, !alias.scope !25559
  store ptr %i.av, ptr %.sroa.635.0..sroa_idx, align 8, !alias.scope !25559
  br label %._crit_edge20.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.as = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.promoted15.i.i5354, %.lr.ph ] ; 2 uses
  %i.at = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.pre.i.i5155, %.lr.ph ]
  %.val11.i.i = load <16 x i8>, ptr %i.as, align 16, !noalias !25559
  %i.au = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -256 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.au to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit": ; preds = %bb.t, %bb.u, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %i.bm, %bb.u ], [ %i.bm, %bb.t ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #55
          to label %common.resume unwind label %bb.w

bb.q:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bb, ptr %.sroa.938.0..sroa_idx, align 8, !alias.scope !25559
  store i64 %i.be, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !25557
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit"

._crit_edge20.i.i:                                ; preds = %.lr.ph, %._crit_edge.i.i
  %.promoted15.i.i52 = phi ptr [ %i.aw, %._crit_edge.i.i ], [ %.promoted15.i.i5354, %.lr.ph ]
  %.pre.i.i50 = phi ptr [ %i.av, %._crit_edge.i.i ], [ %.pre.i.i5155, %.lr.ph ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.ar, %.lr.ph ] ; 3 uses
  %i.ay = add i16 %.lcssa.i.i, -1
  %i.az = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = and i16 %i.ay, %.lcssa.i.i              ; 3 uses
  %i.bc = sub nsw i64 0, %i.ba
  %i.bd = getelementptr inbounds [16 x i8], ptr %.pre.i.i50, i64 %i.bc
  %i.be = add i64 %i.aq, -1                       ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !25557, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bg, ptr %i.b, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  %i.bi = atomicrmw xchg ptr %i.bh, i32 1 release, align 4
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.r, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit

bb.r:                                             ; preds = %._crit_edge20.i.i
  %i.bk = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.bh)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit unwind label %bb.t ; 0 uses

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18", %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf89e7affe2f001e6E.exit"
  %i.bl = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond = or i1 %i.ag, %i.bl
  br i1 %or.cond, label %"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE.exit", label %bb.s

bb.s:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !25560
  br label %"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE.exit"

"_ZN4core3ptr91drop_in_place$LT$std..collections..hash..map..IntoIter$LT$u64$C$std..thread..Thread$GT$$GT$17he4c16524f93a793bE.exit": ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i", %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.t:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i16 %i.bb, ptr %.sroa.938.0..sroa_idx, align 8, !alias.scope !25559
  store i64 %i.be, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !25557
  call void @llvm.experimental.noalias.scope.decl(metadata !25561)
  call void @llvm.experimental.noalias.scope.decl(metadata !25562)
  call void @llvm.experimental.noalias.scope.decl(metadata !25563)
  call void @llvm.experimental.noalias.scope.decl(metadata !25564)
  %i.bn = load ptr, ptr %i.b, align 8, !alias.scope !25565, !nonnull !21, !noundef !21
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !25565
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.u, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit"

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit" unwind label %bb.w

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit: ; preds = %._crit_edge20.i.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !25566)
  call void @llvm.experimental.noalias.scope.decl(metadata !25567)
  call void @llvm.experimental.noalias.scope.decl(metadata !25568)
  call void @llvm.experimental.noalias.scope.decl(metadata !25569)
  %i.bq = load ptr, ptr %i.b, align 8, !alias.scope !25570, !nonnull !21, !noundef !21
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !25570
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.v, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18"

bb.v:                                             ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18" unwind label %bb.q

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit18": ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bt = icmp eq i64 %i.be, 0
  br i1 %i.bt, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc778cf714cbfd839E.exit.i.i.i.i", label %.lr.ph

bb.w:                                             ; preds = %bb.u, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit"
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6utoipa7openapi6schema10RefBuilder29ref_location_from_schema_name17h293eee1c13d2a4a3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !25589
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25590
  store ptr @1229, ptr %i.a, align 8, !noalias !25591
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !25591
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !25591
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !25591
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !25591
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit": ; preds = %bb.c, %bb.b
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..RefBuilder$GT$17hc908791b162762d0E"(ptr noalias noundef align 8 dereferenceable(72) %1) #55
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !25592)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !25592 ; 2 uses
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_12
begin_hunk_13_@"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26c013d7f6254ff4E":bb.a
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !43435, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43436, !noalias !43435
  %.not.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not.i, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h82e78e83174be0daE.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h486922951907645bE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !21
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !21  ; 4 uses
  %.not.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %1, align 8, !alias.scope !43514, !noalias !43515, !noundef !21 ; 2 uses
  %.not.i.i = icmp ne ptr %i.g, null              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !43516, !noalias !43517
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.i, i64 undef
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp eq i64 %i.b, 0
  %i.l = or i1 %.not.not, %i.k
  br i1 %i.l, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit: ; preds = %bb.u, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit", %.loopexit, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", %bb.p, %bb.r, %bb.s, %.split.i.i.i.i, %.split.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i", %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.lr.ph.i ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i" ], [ false, %bb.p ], [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ false, %bb.r ], [ false, %.loopexit ], [ false, %bb.s ], [ false, %.split.i ], [ false, %.split.i.i.i.i ], [ true, %bb.u ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i" ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol

.lr.ph.i.i89.prol:                                ; preds = %.lr.ph.i.i89.preheader, %.lr.ph.i.i89.prol
  %.sroa.012.015.i.i90.prol = phi ptr [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ], [ %i.f, %.lr.ph.i.i89.preheader ]
  %.sroa.011.014.i.i91.prol = phi i64 [ %i.q, %.lr.ph.i.i89.prol ], [ %i.n, %.lr.ph.i.i89.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i89.prol ], [ 0, %.lr.ph.i.i89.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i90.prol, i64 1336
  %i.q = add i64 %.sroa.011.014.i.i91.prol, -1    ; 2 uses
  %.sroa.012.0.i.i92.prol = load ptr, ptr %i.p, align 8, !noalias !43518, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol, !llvm.loop !43452

.lr.ph.i.i89.prol.loopexit:                       ; preds = %.lr.ph.i.i89.prol, %.lr.ph.i.i89.preheader
  %.sroa.012.0.i.i92.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i89.preheader ], [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.012.015.i.i90.unr = phi ptr [ %i.f, %.lr.ph.i.i89.preheader ], [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.011.014.i.i91.unr = phi i64 [ %i.n, %.lr.ph.i.i89.preheader ], [ %i.q, %.lr.ph.i.i89.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89
  %.sroa.012.015.i.i90 = phi ptr [ %.sroa.012.0.i.i92.7, %.lr.ph.i.i89 ], [ %.sroa.012.015.i.i90.unr, %.lr.ph.i.i89.prol.loopexit ]
  %.sroa.011.014.i.i91 = phi i64 [ %i.aa, %.lr.ph.i.i89 ], [ %.sroa.011.014.i.i91.unr, %.lr.ph.i.i89.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i90, i64 1336
  %.sroa.012.0.i.i92 = load ptr, ptr %i.s, align 8, !noalias !43518, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92, i64 1336
  %.sroa.012.0.i.i92.1 = load ptr, ptr %i.t, align 8, !noalias !43518, !nonnull !21, !noundef !21
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.1, i64 1336
  %.sroa.012.0.i.i92.2 = load ptr, ptr %i.u, align 8, !noalias !43518, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.2, i64 1336
  %.sroa.012.0.i.i92.3 = load ptr, ptr %i.v, align 8, !noalias !43518, !nonnull !21, !noundef !21
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.3, i64 1336
  %.sroa.012.0.i.i92.4 = load ptr, ptr %i.w, align 8, !noalias !43518, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.4, i64 1336
  %.sroa.012.0.i.i92.5 = load ptr, ptr %i.x, align 8, !noalias !43518, !nonnull !21, !noundef !21
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.5, i64 1336
  %.sroa.012.0.i.i92.6 = load ptr, ptr %i.y, align 8, !noalias !43518, !nonnull !21, !noundef !21
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.6, i64 1336
  %i.aa = add i64 %.sroa.011.014.i.i91, -8        ; 2 uses
  %.sroa.012.0.i.i92.7 = load ptr, ptr %i.z, align 8, !noalias !43518, !nonnull !21, !noundef !21 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", label %.lr.ph.i.i89

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64": ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89, %bb.c
  %.sroa.012.0.lcssa.i.i94 = phi ptr [ %i.f, %bb.c ], [ %.sroa.012.0.i.i92.lcssa.unr, %.lr.ph.i.i89.prol.loopexit ], [ %.sroa.012.0.i.i92.7, %.lr.ph.i.i89 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i94, i64 1330
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !43519, !noundef !21
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %.lr.ph.i.i.i.i70, label %.lr.ph.i

.lr.ph.i.i.i.i70:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", %bb.d
  %.sroa.0.038.i.i.i.i71 = phi ptr [ %i.af, %bb.d ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ] ; 2 uses
  %.sroa.5.037.i.i.i.i72 = phi i64 [ %i.ag, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i71, i64 1056
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !43520, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i73, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i70
  %i.ag = add i64 %.sroa.5.037.i.i.i.i72, 1       ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i71, i64 1328
  %i.ai = load i16, ptr %i.ah, align 8, !noalias !43520 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1330
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !43519, !noundef !21
  %i.al = icmp ult i16 %i.ai, %i.ak
  br i1 %i.al, label %bb.e, label %.lr.ph.i.i.i.i70

bb.e:                                             ; preds = %bb.d
  %i.am = zext i16 %i.ai to i64                   ; 4 uses
  %i.an = icmp eq i64 %i.ag, 0
  %i.ao = add nuw nsw i64 %i.am, 1                ; 2 uses
  br i1 %i.an, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 1336
  %i.aq = icmp ult i16 %i.ai, 11
  tail call void @llvm.assume(i1 %i.aq), !noalias !43521
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %xtraiter233 = and i64 %i.ag, 7                 ; 2 uses
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.pn30.in.i.i.i.i78.prol = phi ptr [ %i.as, %.prol.preheader ], [ %i.ar, %bb.f ]
  %.pn28.in.i.i.i.i79.prol = phi i64 [ %.pn28.i.i.i.i80.prol, %.prol.preheader ], [ %i.ag, %bb.f ]
  %prol.iter235 = phi i64 [ %prol.iter235.next, %.prol.preheader ], [ 0, %bb.f ]
  %.pn28.i.i.i.i80.prol = add i64 %.pn28.in.i.i.i.i79.prol, -1 ; 2 uses
  %.pn30.i.i.i.i81.prol = load ptr, ptr %.pn30.in.i.i.i.i78.prol, align 8, !noalias !43522, !nonnull !21, !noundef !21 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.prol, i64 1336 ; 2 uses
  %prol.iter235.next = add i64 %prol.iter235, 1   ; 2 uses
  %prol.iter235.cmp.not = icmp eq i64 %prol.iter235.next, %xtraiter233
  br i1 %prol.iter235.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !43466

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.pn30.i.i.i.i81.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.pn30.i.i.i.i81.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i78.unr = phi ptr [ %i.ar, %bb.f ], [ %i.as, %.prol.preheader ]
  %.pn28.in.i.i.i.i79.unr = phi i64 [ %i.ag, %bb.f ], [ %.pn28.i.i.i.i80.prol, %.prol.preheader ]
  %i.at = icmp ult i64 %.sroa.5.037.i.i.i.i72, 7
  br i1 %i.at, label %.lr.ph.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i78 = phi ptr [ %i.bc, %.new ], [ %.pn30.in.i.i.i.i78.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i79 = phi i64 [ %.pn28.i.i.i.i80.7, %.new ], [ %.pn28.in.i.i.i.i79.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i81 = load ptr, ptr %.pn30.in.i.i.i.i78, align 8, !noalias !43522, !nonnull !21, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81, i64 1336
  %.pn30.i.i.i.i81.1 = load ptr, ptr %i.au, align 8, !noalias !43522, !nonnull !21, !noundef !21
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.1, i64 1336
  %.pn30.i.i.i.i81.2 = load ptr, ptr %i.av, align 8, !noalias !43522, !nonnull !21, !noundef !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.2, i64 1336
  %.pn30.i.i.i.i81.3 = load ptr, ptr %i.aw, align 8, !noalias !43522, !nonnull !21, !noundef !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.3, i64 1336
  %.pn30.i.i.i.i81.4 = load ptr, ptr %i.ax, align 8, !noalias !43522, !nonnull !21, !noundef !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.4, i64 1336
  %.pn30.i.i.i.i81.5 = load ptr, ptr %i.ay, align 8, !noalias !43522, !nonnull !21, !noundef !21
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.5, i64 1336
  %.pn30.i.i.i.i81.6 = load ptr, ptr %i.az, align 8, !noalias !43522, !nonnull !21, !noundef !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.6, i64 1336
  %.pn28.i.i.i.i80.7 = add i64 %.pn28.in.i.i.i.i79, -8 ; 2 uses
  %.pn30.i.i.i.i81.7 = load ptr, ptr %i.ba, align 8, !noalias !43522, !nonnull !21, !noundef !21 ; 2 uses
  %i.bb = icmp eq i64 %.pn28.i.i.i.i80.7, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.7, i64 1336
  br i1 %i.bb, label %.lr.ph.i, label %.new

bb.g:                                             ; preds = %.lr.ph.i.i.i.i70
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i87 unwind label %bb.h, !noalias !43523

.noexc.i.i87:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43521
  unreachable

.lr.ph.i:                                         ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64", %bb.e
  %.sroa.0.0.ph.i.i.i77117 = phi ptr [ %i.af, %bb.e ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ], [ %i.af, %.new ], [ %i.af, %.prol.loopexit ] ; 3 uses
  %.sroa.6.sroa.4.0.ph.i.i.i75116 = phi i64 [ %i.am, %bb.e ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ], [ %i.am, %.new ], [ %i.am, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i83 = phi i64 [ %i.ao, %bb.e ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i84 = phi ptr [ %i.af, %bb.e ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i64" ], [ %.pn30.i.i.i.i81.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i81.7, %.new ]
  %i.be = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i75116, 11
  tail call void @llvm.assume(i1 %i.be), !noalias !43521
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i77117) ]
  %i.bf = icmp ne i64 %i.b, 0
  %.not213 = and i1 %i.bf, %.not.i.i
  br i1 %.not213, label %.lr.ph.preheader, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i77117, i64 %.sroa.6.sroa.4.0.ph.i.i.i75116
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i77117, i64 1064
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i75116
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit"
  %.sroa.2799.0169.in = phi i64 [ %.sroa.2799.0169, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.b, %.lr.ph.preheader ]
  %i.bj = phi ptr [ %i.fo, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %.pn148168 = phi ptr [ %i.fp, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.bg, %.lr.ph.preheader ] ; 4 uses
  %.sroa.7.0167 = phi ptr [ %.sroa.07.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %.sroa.07.0.i.i.i84, %.lr.ph.preheader ] ; 4 uses
  %.sroa.31.0166 = phi i1 [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.34.0165 = phi ptr [ %.sroa.07.0.i.i.i46, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.43.0164 = phi i64 [ %.sroa.7.0.i.i.i45, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.51.0163 = phi i64 [ %i.bk, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.38.0162 = phi i64 [ 0, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.21.0161 = phi i64 [ %.sroa.7.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit" ], [ %.sroa.7.0.i.i.i83, %.lr.ph.preheader ] ; 3 uses
  %.sroa.2799.0169 = add i64 %.sroa.2799.0169.in, -1 ; 2 uses
  %i.bk = add i64 %.sroa.51.0163, -1              ; 2 uses
  br i1 %.sroa.31.0166, label %bb.i, label %.critedge.i20

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i21 = icmp eq ptr %.sroa.34.0165, null
  br i1 %.not.i.i21, label %bb.j, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26"

bb.j:                                             ; preds = %bb.i
  %i.bl = inttoptr i64 %.sroa.38.0162 to ptr      ; 3 uses
  %i.bm = icmp eq i64 %.sroa.43.0164, 0
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26", label %.lr.ph.i.i51.preheader

.lr.ph.i.i51.preheader:                           ; preds = %bb.j
  %xtraiter236 = and i64 %.sroa.43.0164, 7        ; 2 uses
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol

.lr.ph.i.i51.prol:                                ; preds = %.lr.ph.i.i51.preheader, %.lr.ph.i.i51.prol
  %.sroa.012.015.i.i52.prol = phi ptr [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ], [ %i.bl, %.lr.ph.i.i51.preheader ]
  %.sroa.011.014.i.i53.prol = phi i64 [ %i.bo, %.lr.ph.i.i51.prol ], [ %.sroa.43.0164, %.lr.ph.i.i51.preheader ]
  %prol.iter238 = phi i64 [ %prol.iter238.next, %.lr.ph.i.i51.prol ], [ 0, %.lr.ph.i.i51.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52.prol, i64 1336
  %i.bo = add i64 %.sroa.011.014.i.i53.prol, -1   ; 2 uses
  %.sroa.012.0.i.i54.prol = load ptr, ptr %i.bn, align 8, !noalias !43524, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter238.next = add i64 %prol.iter238, 1   ; 2 uses
  %prol.iter238.cmp.not = icmp eq i64 %prol.iter238.next, %xtraiter236
  br i1 %prol.iter238.cmp.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol, !llvm.loop !43471

.lr.ph.i.i51.prol.loopexit:                       ; preds = %.lr.ph.i.i51.prol, %.lr.ph.i.i51.preheader
  %.sroa.012.0.i.i54.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.012.015.i.i52.unr = phi ptr [ %i.bl, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.011.014.i.i53.unr = phi i64 [ %.sroa.43.0164, %.lr.ph.i.i51.preheader ], [ %i.bo, %.lr.ph.i.i51.prol ]
  %i.bp = icmp ult i64 %.sroa.43.0164, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26", label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51
  %.sroa.012.015.i.i52 = phi ptr [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ], [ %.sroa.012.015.i.i52.unr, %.lr.ph.i.i51.prol.loopexit ]
  %.sroa.011.014.i.i53 = phi i64 [ %i.by, %.lr.ph.i.i51 ], [ %.sroa.011.014.i.i53.unr, %.lr.ph.i.i51.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52, i64 1336
  %.sroa.012.0.i.i54 = load ptr, ptr %i.bq, align 8, !noalias !43524, !nonnull !21, !noundef !21
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54, i64 1336
  %.sroa.012.0.i.i54.1 = load ptr, ptr %i.br, align 8, !noalias !43524, !nonnull !21, !noundef !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.1, i64 1336
  %.sroa.012.0.i.i54.2 = load ptr, ptr %i.bs, align 8, !noalias !43524, !nonnull !21, !noundef !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.2, i64 1336
  %.sroa.012.0.i.i54.3 = load ptr, ptr %i.bt, align 8, !noalias !43524, !nonnull !21, !noundef !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.3, i64 1336
  %.sroa.012.0.i.i54.4 = load ptr, ptr %i.bu, align 8, !noalias !43524, !nonnull !21, !noundef !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.4, i64 1336
  %.sroa.012.0.i.i54.5 = load ptr, ptr %i.bv, align 8, !noalias !43524, !nonnull !21, !noundef !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.5, i64 1336
  %.sroa.012.0.i.i54.6 = load ptr, ptr %i.bw, align 8, !noalias !43524, !nonnull !21, !noundef !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.6, i64 1336
  %i.by = add i64 %.sroa.011.014.i.i53, -8        ; 2 uses
  %.sroa.012.0.i.i54.7 = load ptr, ptr %i.bx, align 8, !noalias !43524, !nonnull !21, !noundef !21 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26", label %.lr.ph.i.i51

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26": ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51, %bb.j, %bb.i
  %.sroa.37.0.copyload.i.i27 = phi i64 [ %.sroa.43.0164, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i28 = phi i64 [ %.sroa.38.0162, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i29 = phi ptr [ %.sroa.34.0165, %bb.i ], [ %i.bl, %bb.j ], [ %.sroa.012.0.i.i54.lcssa.unr, %.lr.ph.i.i51.prol.loopexit ], [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i29, i64 1330
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !43525, !noundef !21
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %.sroa.37.0.copyload.i.i27, %i.cc
  br i1 %i.cd, label %bb.l, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26", %bb.k
  %.sroa.0.038.i.i.i.i33 = phi ptr [ %i.cf, %bb.k ], [ %.sroa.05.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ] ; 2 uses
  %.sroa.5.037.i.i.i.i34 = phi i64 [ %i.ch, %bb.k ], [ %.sroa.26.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i33, i64 1056
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !43526, !noundef !21 ; 4 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i35, label %bb.n, label %bb.k

._crit_edge.loopexit.i.i.i.i36:                   ; preds = %bb.k
  %i.cg = zext i16 %i.cj to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.ch = add i64 %.sroa.5.037.i.i.i.i34, 1       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i33, i64 1328
  %i.cj = load i16, ptr %i.ci, align 8, !noalias !43526 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 1330
  %i.cl = load i16, ptr %i.ck, align 2, !noalias !43525, !noundef !21
  %i.cm = icmp ult i16 %i.cj, %i.cl
  br i1 %i.cm, label %._crit_edge.loopexit.i.i.i.i36, label %.lr.ph.i.i.i.i32

bb.l:                                             ; preds = %._crit_edge.loopexit.i.i.i.i36, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26"
  %.sroa.6.sroa.4.0.ph.i.i.i37 = phi i64 [ %.sroa.37.0.copyload.i.i27, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ], [ %i.cg, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i38 = phi i64 [ %.sroa.26.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ], [ %i.ch, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %.sroa.0.0.ph.i.i.i39 = phi ptr [ %.sroa.05.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i26" ], [ %i.cf, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %i.cn = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 0
  %i.co = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 1 ; 2 uses
  br i1 %i.cn, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 1336
  %i.cq = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.cq), !noalias !43521
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  %xtraiter242 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 7 ; 2 uses
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %.prol.loopexit240, label %.prol.preheader239

.prol.preheader239:                               ; preds = %bb.m, %.prol.preheader239
  %.pn30.in.i.i.i.i40.prol = phi ptr [ %i.cs, %.prol.preheader239 ], [ %i.cr, %bb.m ]
  %.pn28.in.i.i.i.i41.prol = phi i64 [ %.pn28.i.i.i.i42.prol, %.prol.preheader239 ], [ %.sroa.6.sroa.0.0.ph.i.i.i38, %bb.m ]
  %prol.iter244 = phi i64 [ %prol.iter244.next, %.prol.preheader239 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i42.prol = add i64 %.pn28.in.i.i.i.i41.prol, -1 ; 2 uses
  %.pn30.i.i.i.i43.prol = load ptr, ptr %.pn30.in.i.i.i.i40.prol, align 8, !noalias !43527, !nonnull !21, !noundef !21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.prol, i64 1336 ; 2 uses
  %prol.iter244.next = add i64 %prol.iter244, 1   ; 2 uses
  %prol.iter244.cmp.not = icmp eq i64 %prol.iter244.next, %xtraiter242
  br i1 %prol.iter244.cmp.not, label %.prol.loopexit240, label %.prol.preheader239, !llvm.loop !43485

.prol.loopexit240:                                ; preds = %.prol.preheader239, %bb.m
  %.pn30.i.i.i.i43.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i43.prol, %.prol.preheader239 ]
  %.pn30.in.i.i.i.i40.unr = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %.prol.preheader239 ]
  %.pn28.in.i.i.i.i41.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i38, %bb.m ], [ %.pn28.i.i.i.i42.prol, %.prol.preheader239 ]
  %i.ct = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 8
  br i1 %i.ct, label %.loopexit, label %.new241

.new241:                                          ; preds = %.prol.loopexit240, %.new241
  %.pn30.in.i.i.i.i40 = phi ptr [ %i.dc, %.new241 ], [ %.pn30.in.i.i.i.i40.unr, %.prol.loopexit240 ]
  %.pn28.in.i.i.i.i41 = phi i64 [ %.pn28.i.i.i.i42.7, %.new241 ], [ %.pn28.in.i.i.i.i41.unr, %.prol.loopexit240 ]
  %.pn30.i.i.i.i43 = load ptr, ptr %.pn30.in.i.i.i.i40, align 8, !noalias !43527, !nonnull !21, !noundef !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43, i64 1336
  %.pn30.i.i.i.i43.1 = load ptr, ptr %i.cu, align 8, !noalias !43527, !nonnull !21, !noundef !21
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.1, i64 1336
  %.pn30.i.i.i.i43.2 = load ptr, ptr %i.cv, align 8, !noalias !43527, !nonnull !21, !noundef !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.2, i64 1336
  %.pn30.i.i.i.i43.3 = load ptr, ptr %i.cw, align 8, !noalias !43527, !nonnull !21, !noundef !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.3, i64 1336
  %.pn30.i.i.i.i43.4 = load ptr, ptr %i.cx, align 8, !noalias !43527, !nonnull !21, !noundef !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.4, i64 1336
  %.pn30.i.i.i.i43.5 = load ptr, ptr %i.cy, align 8, !noalias !43527, !nonnull !21, !noundef !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.5, i64 1336
  %.pn30.i.i.i.i43.6 = load ptr, ptr %i.cz, align 8, !noalias !43527, !nonnull !21, !noundef !21
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.6, i64 1336
  %.pn28.i.i.i.i42.7 = add i64 %.pn28.in.i.i.i.i41, -8 ; 2 uses
  %.pn30.i.i.i.i43.7 = load ptr, ptr %i.da, align 8, !noalias !43527, !nonnull !21, !noundef !21 ; 2 uses
  %i.db = icmp eq i64 %.pn28.i.i.i.i42.7, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.7, i64 1336
  br i1 %i.db, label %.loopexit, label %.new241

bb.n:                                             ; preds = %.lr.ph.i.i.i.i32
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i49 unwind label %bb.o, !noalias !43528

.noexc.i.i49:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43521
  unreachable

.critedge.i20:                                    ; preds = %.lr.ph
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57, !noalias !43529
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit240, %.new241, %bb.l
  %.sroa.7.0.i.i.i45 = phi i64 [ %i.co, %bb.l ], [ 0, %.new241 ], [ 0, %.prol.loopexit240 ]
  %.sroa.07.0.i.i.i46 = phi ptr [ %.sroa.0.0.ph.i.i.i39, %bb.l ], [ %.pn30.i.i.i.i43.lcssa.unr, %.prol.loopexit240 ], [ %.pn30.i.i.i.i43.7, %.new241 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 1064
  %i.df = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.df), !noalias !43521
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.sroa.6.sroa.4.0.ph.i.i.i37 ; 2 uses
  %i.dh = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i39, i64 %.sroa.6.sroa.4.0.ph.i.i.i37 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i39) ]
  %i.di = getelementptr i8, ptr %i.bj, i64 16
  %.val4.i.i.i = load i64, ptr %i.di, align 8, !noalias !43530, !noundef !21 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dg, i64 16
  %.val6.i.i.i = load i64, ptr %i.dj, align 8, !noalias !43530, !noundef !21
  %.not.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i, %.val6.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i": ; preds = %.loopexit
  %i.dk = getelementptr i8, ptr %i.dg, i64 8
  %.val5.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !43530, !nonnull !21, !noundef !21
  %i.dl = getelementptr i8, ptr %i.bj, i64 8
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !43530, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43531, !noalias !43530
  %i.dm = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dm, label %bb.p, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.p:                                             ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43533)
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn148168, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pn148168, i64 88
  %i.dp = load i8, ptr %i.do, align 8, !range !35, !alias.scope !43532, !noalias !43534, !noundef !21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.ds = load i8, ptr %i.dr, align 8, !range !35, !alias.scope !43533, !noalias !43535, !noundef !21
  %i.dt = icmp eq i8 %i.dp, %i.ds
  br i1 %i.dt, label %bb.q, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.q:                                             ; preds = %bb.p
  %i.du = load i64, ptr %i.dn, align 8, !range !34, !alias.scope !43532, !noalias !43534, !noundef !21
  %.not.i.i.i.i = icmp eq i64 %i.du, -9223372036854775803
  %i.dv = load i64, ptr %i.dq, align 8, !range !34, !alias.scope !43533, !noalias !43535, !noundef !21
  %i.dw = icmp eq i64 %i.dv, -9223372036854775803 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.dw, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit, label %.split.i.i.i.i

bb.s:                                             ; preds = %bb.q
  br i1 %i.dw, label %bb.t, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

.split.i.i.i.i:                                   ; preds = %bb.r
  %i.dx = tail call fastcc noundef zeroext i1 @"_ZN65_$LT$serde_json..value..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2c9fe2aca7105fcaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dq), !noalias !43530
  br i1 %i.dx, label %bb.t, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.t:                                             ; preds = %.split.i.i.i.i, %bb.s
  %i.dy = load i64, ptr %.pn148168, align 8, !range !32, !alias.scope !43532, !noalias !43534, !noundef !21 ; 2 uses
  %i.dz = load i64, ptr %i.dh, align 8, !range !32, !alias.scope !43533, !noalias !43535, !noundef !21 ; 2 uses
  %i.ea = and i64 %i.dz, %i.dy
  %.not2.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not2.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i", label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn148168, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ed = load i64, ptr %i.eb, align 8, !alias.scope !43532, !noalias !43534, !noundef !21
  %i.ee = load i64, ptr %i.ec, align 8, !alias.scope !43533, !noalias !43535, !noundef !21
  %.not.i = icmp eq i64 %i.ed, %i.ee
  br i1 %.not.i, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i": ; preds = %bb.t
  %i.ef = or i64 %i.dz, %i.dy
  %.mux.i.not.i = icmp eq i64 %i.ef, 0
  br i1 %.mux.i.not.i, label %bb.u, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit

bb.u:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hdec72d8e9ac15cd5E.exit.i", %.split.i
  %i.eg = icmp eq i64 %.sroa.2799.0169, 0
  br i1 %i.eg, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i": ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.7.0167, i64 1330
  %i.ei = load i16, ptr %i.eh, align 2, !noalias !43536, !noundef !21
  %i.ej = zext i16 %i.ei to i64
  %i.ek = icmp ult i64 %.sroa.21.0161, %i.ej
  br i1 %i.ek, label %.thread142, label %.lr.ph.i.i.i.i

.thread142:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i"
  %i.el = add nuw nsw i64 %.sroa.21.0161, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit"

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i", %bb.v
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.en, %bb.v ], [ %.sroa.7.0167, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.eo, %bb.v ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2248130db661bf41E.exit.i" ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 1056
  %i.en = load ptr, ptr %i.em, align 8, !noalias !43537, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eo = add i64 %.sroa.5.037.i.i.i.i, 1         ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 1328
  %i.eq = load i16, ptr %i.ep, align 8, !noalias !43537 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 1330
  %i.es = load i16, ptr %i.er, align 2, !noalias !43536, !noundef !21
  %i.et = icmp ult i16 %i.eq, %i.es
  br i1 %i.et, label %bb.w, label %.lr.ph.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eu = zext i16 %i.eq to i64                   ; 4 uses
  %i.ev = icmp eq i64 %i.eo, 0
  %i.ew = add nuw nsw i64 %i.eu, 1                ; 2 uses
  br i1 %i.ev, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 1336
  %i.ey = icmp ult i16 %i.eq, 11
  tail call void @llvm.assume(i1 %i.ey), !noalias !43521
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew ; 2 uses
  %xtraiter249 = and i64 %i.eo, 7                 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.prol.loopexit246, label %.prol.preheader245

.prol.preheader245:                               ; preds = %bb.x, %.prol.preheader245
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.fa, %.prol.preheader245 ], [ %i.ez, %bb.x ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader245 ], [ %i.eo, %bb.x ]
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.prol.preheader245 ], [ 0, %bb.x ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !43538, !nonnull !21, !noundef !21 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 1336 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.prol.loopexit246, label %.prol.preheader245, !llvm.loop !43513

.prol.loopexit246:                                ; preds = %.prol.preheader245, %bb.x
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.x ], [ %.pn30.i.i.i.i.prol, %.prol.preheader245 ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.ez, %bb.x ], [ %i.fa, %.prol.preheader245 ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %i.eo, %bb.x ], [ %.pn28.i.i.i.i.prol, %.prol.preheader245 ]
  %i.fb = icmp ult i64 %.sroa.5.037.i.i.i.i, 7
  br i1 %i.fb, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit", label %.new247

.new247:                                          ; preds = %.prol.loopexit246, %.new247
  %.pn30.in.i.i.i.i = phi ptr [ %i.fk, %.new247 ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit246 ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new247 ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit246 ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !43538, !nonnull !21, !noundef !21
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 1336
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.fc, align 8, !noalias !43538, !nonnull !21, !noundef !21
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 1336
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.fd, align 8, !noalias !43538, !nonnull !21, !noundef !21
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 1336
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.fe, align 8, !noalias !43538, !nonnull !21, !noundef !21
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 1336
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.ff, align 8, !noalias !43538, !nonnull !21, !noundef !21
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 1336
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.fg, align 8, !noalias !43538, !nonnull !21, !noundef !21
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 1336
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.fh, align 8, !noalias !43538, !nonnull !21, !noundef !21
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 1336
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.fi, align 8, !noalias !43538, !nonnull !21, !noundef !21 ; 2 uses
  %i.fj = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.fk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 1336
  br i1 %i.fj, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit", label %.new247

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i unwind label %bb.z, !noalias !43539

.noexc.i.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43521
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h54efca6b833be1d0E.exit": ; preds = %.prol.loopexit246, %.new247, %.thread142, %bb.w
  %.sroa.0.0.ph.i.i.i147 = phi ptr [ %i.en, %bb.w ], [ %.sroa.7.0167, %.thread142 ], [ %i.en, %.new247 ], [ %i.en, %.prol.loopexit246 ] ; 3 uses
  %.sroa.6.sroa.4.0.ph.i.i.i146 = phi i64 [ %i.eu, %bb.w ], [ %.sroa.21.0161, %.thread142 ], [ %i.eu, %.new247 ], [ %i.eu, %.prol.loopexit246 ] ; 3 uses
  %.sroa.7.0.i.i.i = phi i64 [ %i.ew, %bb.w ], [ %i.el, %.thread142 ], [ 0, %.new247 ], [ 0, %.prol.loopexit246 ]
  %.sroa.07.0.i.i.i = phi ptr [ %i.en, %bb.w ], [ %.sroa.7.0167, %.thread142 ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit246 ], [ %.pn30.i.i.i.i.7, %.new247 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i147, i64 1064
  %i.fn = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i146, 11
  tail call void @llvm.assume(i1 %i.fn), !noalias !43521
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %.sroa.6.sroa.4.0.ph.i.i.i146
  %i.fp = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.ph.i.i.i147, i64 %.sroa.6.sroa.4.0.ph.i.i.i146
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i147) ]
  %i.fq = icmp eq i64 %i.bk, 0
  br i1 %i.fq, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h20d1788724ab452cE.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h522e16044a4b4305E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !21
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !21  ; 4 uses
  %.not.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %1, align 8, !alias.scope !43638, !noalias !43639, !noundef !21 ; 2 uses
  %.not.i.i = icmp ne ptr %i.g, null              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !43640, !noalias !43641
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.i, i64 undef
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp eq i64 %i.b, 0
  %i.l = or i1 %.not.not, %i.k
  br i1 %i.l, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit: ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit", %.loopexit, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", %bb.p, %bb.r, %bb.s, %bb.u, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i.i.i", %bb.v, %bb.x, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit45.i.i.i.i.i.i", %bb.y, %bb.z, %bb.ab, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit49.i.i.i.i.i.i", %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.ai, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit53.i.i.i.i.i.i", %bb.aj, %bb.al, %bb.am, %bb.ao, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i", %bb.ap, %bb.ar, %bb.as, %bb.au, %bb.av, %bb.ax, %bb.ay, %bb.ba, %bb.bb, %bb.bd, %bb.be, %bb.bg, %bb.bh, %bb.bj, %bb.bk, %bb.bm, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i", %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.lr.ph.i ], [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ false, %bb.ag ], [ false, %bb.bk ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.ab ], [ false, %bb.ac ], [ false, %bb.v ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ao ], [ false, %bb.ap ], [ false, %bb.as ], [ false, %bb.av ], [ false, %bb.ay ], [ false, %bb.bb ], [ false, %bb.be ], [ false, %bb.bh ], [ false, %bb.p ], [ false, %bb.r ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i.i.i" ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit45.i.i.i.i.i.i" ], [ false, %bb.y ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit49.i.i.i.i.i.i" ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit53.i.i.i.i.i.i" ], [ false, %bb.al ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i" ], [ false, %bb.ar ], [ false, %bb.au ], [ false, %bb.ax ], [ false, %bb.ba ], [ false, %bb.bd ], [ false, %bb.bg ], [ false, %bb.am ], [ false, %bb.bj ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i" ], [ false, %.loopexit ], [ false, %bb.s ], [ false, %bb.bm ], [ true, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i" ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i" ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol

.lr.ph.i.i89.prol:                                ; preds = %.lr.ph.i.i89.preheader, %.lr.ph.i.i89.prol
  %.sroa.012.015.i.i90.prol = phi ptr [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ], [ %i.f, %.lr.ph.i.i89.preheader ]
  %.sroa.011.014.i.i91.prol = phi i64 [ %i.q, %.lr.ph.i.i89.prol ], [ %i.n, %.lr.ph.i.i89.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i89.prol ], [ 0, %.lr.ph.i.i89.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i90.prol, i64 16912
  %i.q = add i64 %.sroa.011.014.i.i91.prol, -1    ; 2 uses
  %.sroa.012.0.i.i92.prol = load ptr, ptr %i.p, align 8, !noalias !43642, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i89.prol.loopexit, label %.lr.ph.i.i89.prol, !llvm.loop !43555

.lr.ph.i.i89.prol.loopexit:                       ; preds = %.lr.ph.i.i89.prol, %.lr.ph.i.i89.preheader
  %.sroa.012.0.i.i92.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i89.preheader ], [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.012.015.i.i90.unr = phi ptr [ %i.f, %.lr.ph.i.i89.preheader ], [ %.sroa.012.0.i.i92.prol, %.lr.ph.i.i89.prol ]
  %.sroa.011.014.i.i91.unr = phi i64 [ %i.n, %.lr.ph.i.i89.preheader ], [ %i.q, %.lr.ph.i.i89.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89
  %.sroa.012.015.i.i90 = phi ptr [ %.sroa.012.0.i.i92.7, %.lr.ph.i.i89 ], [ %.sroa.012.015.i.i90.unr, %.lr.ph.i.i89.prol.loopexit ]
  %.sroa.011.014.i.i91 = phi i64 [ %i.aa, %.lr.ph.i.i89 ], [ %.sroa.011.014.i.i91.unr, %.lr.ph.i.i89.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i90, i64 16912
  %.sroa.012.0.i.i92 = load ptr, ptr %i.s, align 8, !noalias !43642, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92, i64 16912
  %.sroa.012.0.i.i92.1 = load ptr, ptr %i.t, align 8, !noalias !43642, !nonnull !21, !noundef !21
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.1, i64 16912
  %.sroa.012.0.i.i92.2 = load ptr, ptr %i.u, align 8, !noalias !43642, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.2, i64 16912
  %.sroa.012.0.i.i92.3 = load ptr, ptr %i.v, align 8, !noalias !43642, !nonnull !21, !noundef !21
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.3, i64 16912
  %.sroa.012.0.i.i92.4 = load ptr, ptr %i.w, align 8, !noalias !43642, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.4, i64 16912
  %.sroa.012.0.i.i92.5 = load ptr, ptr %i.x, align 8, !noalias !43642, !nonnull !21, !noundef !21
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.5, i64 16912
  %.sroa.012.0.i.i92.6 = load ptr, ptr %i.y, align 8, !noalias !43642, !nonnull !21, !noundef !21
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i92.6, i64 16912
  %i.aa = add i64 %.sroa.011.014.i.i91, -8        ; 2 uses
  %.sroa.012.0.i.i92.7 = load ptr, ptr %i.z, align 8, !noalias !43642, !nonnull !21, !noundef !21 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", label %.lr.ph.i.i89

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64": ; preds = %.lr.ph.i.i89.prol.loopexit, %.lr.ph.i.i89, %bb.c
  %.sroa.012.0.lcssa.i.i94 = phi ptr [ %i.f, %bb.c ], [ %.sroa.012.0.i.i92.lcssa.unr, %.lr.ph.i.i89.prol.loopexit ], [ %.sroa.012.0.i.i92.7, %.lr.ph.i.i89 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i94, i64 16906
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !43643, !noundef !21
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %.lr.ph.i.i.i.i70, label %.lr.ph.i

.lr.ph.i.i.i.i70:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", %bb.d
  %.sroa.0.038.i.i.i.i71 = phi ptr [ %i.ae, %bb.d ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ] ; 2 uses
  %.sroa.5.037.i.i.i.i72 = phi i64 [ %i.af, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.0.038.i.i.i.i71, align 8, !noalias !43644, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i73, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i70
  %i.af = add i64 %.sroa.5.037.i.i.i.i72, 1       ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i71, i64 16904
  %i.ah = load i16, ptr %i.ag, align 8, !noalias !43644 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16906
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !43643, !noundef !21
  %i.ak = icmp ult i16 %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %.lr.ph.i.i.i.i70

bb.e:                                             ; preds = %bb.d
  %i.al = zext i16 %i.ah to i64                   ; 4 uses
  %i.am = icmp eq i64 %i.af, 0
  %i.an = add nuw nsw i64 %i.al, 1                ; 2 uses
  br i1 %i.am, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16912
  %i.ap = icmp ult i16 %i.ah, 11
  tail call void @llvm.assume(i1 %i.ap), !noalias !43645
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %xtraiter309 = and i64 %i.af, 7                 ; 2 uses
  %lcmp.mod310.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.pn30.in.i.i.i.i78.prol = phi ptr [ %i.ar, %.prol.preheader ], [ %i.aq, %bb.f ]
  %.pn28.in.i.i.i.i79.prol = phi i64 [ %.pn28.i.i.i.i80.prol, %.prol.preheader ], [ %i.af, %bb.f ]
  %prol.iter311 = phi i64 [ %prol.iter311.next, %.prol.preheader ], [ 0, %bb.f ]
  %.pn28.i.i.i.i80.prol = add i64 %.pn28.in.i.i.i.i79.prol, -1 ; 2 uses
  %.pn30.i.i.i.i81.prol = load ptr, ptr %.pn30.in.i.i.i.i78.prol, align 8, !noalias !43646, !nonnull !21, !noundef !21 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.prol, i64 16912 ; 2 uses
  %prol.iter311.next = add i64 %prol.iter311, 1   ; 2 uses
  %prol.iter311.cmp.not = icmp eq i64 %prol.iter311.next, %xtraiter309
  br i1 %prol.iter311.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !43569

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.pn30.i.i.i.i81.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.pn30.i.i.i.i81.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i78.unr = phi ptr [ %i.aq, %bb.f ], [ %i.ar, %.prol.preheader ]
  %.pn28.in.i.i.i.i79.unr = phi i64 [ %i.af, %bb.f ], [ %.pn28.i.i.i.i80.prol, %.prol.preheader ]
  %i.as = icmp ult i64 %.sroa.5.037.i.i.i.i72, 7
  br i1 %i.as, label %.lr.ph.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i78 = phi ptr [ %i.bb, %.new ], [ %.pn30.in.i.i.i.i78.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i79 = phi i64 [ %.pn28.i.i.i.i80.7, %.new ], [ %.pn28.in.i.i.i.i79.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i81 = load ptr, ptr %.pn30.in.i.i.i.i78, align 8, !noalias !43646, !nonnull !21, !noundef !21
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81, i64 16912
  %.pn30.i.i.i.i81.1 = load ptr, ptr %i.at, align 8, !noalias !43646, !nonnull !21, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.1, i64 16912
  %.pn30.i.i.i.i81.2 = load ptr, ptr %i.au, align 8, !noalias !43646, !nonnull !21, !noundef !21
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.2, i64 16912
  %.pn30.i.i.i.i81.3 = load ptr, ptr %i.av, align 8, !noalias !43646, !nonnull !21, !noundef !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.3, i64 16912
  %.pn30.i.i.i.i81.4 = load ptr, ptr %i.aw, align 8, !noalias !43646, !nonnull !21, !noundef !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.4, i64 16912
  %.pn30.i.i.i.i81.5 = load ptr, ptr %i.ax, align 8, !noalias !43646, !nonnull !21, !noundef !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.5, i64 16912
  %.pn30.i.i.i.i81.6 = load ptr, ptr %i.ay, align 8, !noalias !43646, !nonnull !21, !noundef !21
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.6, i64 16912
  %.pn28.i.i.i.i80.7 = add i64 %.pn28.in.i.i.i.i79, -8 ; 2 uses
  %.pn30.i.i.i.i81.7 = load ptr, ptr %i.az, align 8, !noalias !43646, !nonnull !21, !noundef !21 ; 2 uses
  %i.ba = icmp eq i64 %.pn28.i.i.i.i80.7, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i81.7, i64 16912
  br i1 %i.ba, label %.lr.ph.i, label %.new

bb.g:                                             ; preds = %.lr.ph.i.i.i.i70
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i87 unwind label %bb.h, !noalias !43647

.noexc.i.i87:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43645
  unreachable

.lr.ph.i:                                         ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64", %bb.e
  %.sroa.0.0.ph.i.i.i77117 = phi ptr [ %i.ae, %bb.e ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ], [ %i.ae, %.new ], [ %i.ae, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i75116 = phi i64 [ %i.al, %bb.e ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ], [ %i.al, %.new ], [ %i.al, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i83 = phi i64 [ %i.an, %bb.e ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i84 = phi ptr [ %i.ae, %bb.e ], [ %.sroa.012.0.lcssa.i.i94, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i64" ], [ %.pn30.i.i.i.i81.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i81.7, %.new ]
  %i.bd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i75116, 11
  tail call void @llvm.assume(i1 %i.bd), !noalias !43645
  %i.be = icmp ne i64 %i.b, 0
  %.not289 = and i1 %i.be, %.not.i.i
  br i1 %.not289, label %.lr.ph.preheader, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i77117, i64 272
  %i.bg = getelementptr inbounds nuw [1512 x i8], ptr %i.bf, i64 %.sroa.6.sroa.4.0.ph.i.i.i75116
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i77117, i64 8
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i75116
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit"
  %.sroa.2799.0169.in = phi i64 [ %.sroa.2799.0169, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.b, %.lr.ph.preheader ]
  %i.bj = phi ptr [ %i.ng, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %.pn148168 = phi ptr [ %i.ni, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.bg, %.lr.ph.preheader ] ; 35 uses
  %.sroa.7.0167 = phi ptr [ %.sroa.07.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %.sroa.07.0.i.i.i84, %.lr.ph.preheader ] ; 4 uses
  %.sroa.31.0166 = phi i1 [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.34.0165 = phi ptr [ %.sroa.07.0.i.i.i46, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.43.0164 = phi i64 [ %.sroa.7.0.i.i.i45, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.51.0163 = phi i64 [ %i.bk, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.38.0162 = phi i64 [ 0, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.21.0161 = phi i64 [ %.sroa.7.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit" ], [ %.sroa.7.0.i.i.i83, %.lr.ph.preheader ] ; 3 uses
  %.sroa.2799.0169 = add i64 %.sroa.2799.0169.in, -1 ; 2 uses
  %i.bk = add i64 %.sroa.51.0163, -1              ; 2 uses
  br i1 %.sroa.31.0166, label %bb.i, label %.critedge.i20

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i21 = icmp eq ptr %.sroa.34.0165, null
  br i1 %.not.i.i21, label %bb.j, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26"

bb.j:                                             ; preds = %bb.i
  %i.bl = inttoptr i64 %.sroa.38.0162 to ptr      ; 3 uses
  %i.bm = icmp eq i64 %.sroa.43.0164, 0
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26", label %.lr.ph.i.i51.preheader

.lr.ph.i.i51.preheader:                           ; preds = %bb.j
  %xtraiter312 = and i64 %.sroa.43.0164, 7        ; 2 uses
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol

.lr.ph.i.i51.prol:                                ; preds = %.lr.ph.i.i51.preheader, %.lr.ph.i.i51.prol
  %.sroa.012.015.i.i52.prol = phi ptr [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ], [ %i.bl, %.lr.ph.i.i51.preheader ]
  %.sroa.011.014.i.i53.prol = phi i64 [ %i.bo, %.lr.ph.i.i51.prol ], [ %.sroa.43.0164, %.lr.ph.i.i51.preheader ]
  %prol.iter314 = phi i64 [ %prol.iter314.next, %.lr.ph.i.i51.prol ], [ 0, %.lr.ph.i.i51.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52.prol, i64 16912
  %i.bo = add i64 %.sroa.011.014.i.i53.prol, -1   ; 2 uses
  %.sroa.012.0.i.i54.prol = load ptr, ptr %i.bn, align 8, !noalias !43648, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter314.next = add i64 %prol.iter314, 1   ; 2 uses
  %prol.iter314.cmp.not = icmp eq i64 %prol.iter314.next, %xtraiter312
  br i1 %prol.iter314.cmp.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol, !llvm.loop !43574

.lr.ph.i.i51.prol.loopexit:                       ; preds = %.lr.ph.i.i51.prol, %.lr.ph.i.i51.preheader
  %.sroa.012.0.i.i54.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.012.015.i.i52.unr = phi ptr [ %i.bl, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.011.014.i.i53.unr = phi i64 [ %.sroa.43.0164, %.lr.ph.i.i51.preheader ], [ %i.bo, %.lr.ph.i.i51.prol ]
  %i.bp = icmp ult i64 %.sroa.43.0164, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26", label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51
  %.sroa.012.015.i.i52 = phi ptr [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ], [ %.sroa.012.015.i.i52.unr, %.lr.ph.i.i51.prol.loopexit ]
  %.sroa.011.014.i.i53 = phi i64 [ %i.by, %.lr.ph.i.i51 ], [ %.sroa.011.014.i.i53.unr, %.lr.ph.i.i51.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52, i64 16912
  %.sroa.012.0.i.i54 = load ptr, ptr %i.bq, align 8, !noalias !43648, !nonnull !21, !noundef !21
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54, i64 16912
  %.sroa.012.0.i.i54.1 = load ptr, ptr %i.br, align 8, !noalias !43648, !nonnull !21, !noundef !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.1, i64 16912
  %.sroa.012.0.i.i54.2 = load ptr, ptr %i.bs, align 8, !noalias !43648, !nonnull !21, !noundef !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.2, i64 16912
  %.sroa.012.0.i.i54.3 = load ptr, ptr %i.bt, align 8, !noalias !43648, !nonnull !21, !noundef !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.3, i64 16912
  %.sroa.012.0.i.i54.4 = load ptr, ptr %i.bu, align 8, !noalias !43648, !nonnull !21, !noundef !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.4, i64 16912
  %.sroa.012.0.i.i54.5 = load ptr, ptr %i.bv, align 8, !noalias !43648, !nonnull !21, !noundef !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.5, i64 16912
  %.sroa.012.0.i.i54.6 = load ptr, ptr %i.bw, align 8, !noalias !43648, !nonnull !21, !noundef !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.6, i64 16912
  %i.by = add i64 %.sroa.011.014.i.i53, -8        ; 2 uses
  %.sroa.012.0.i.i54.7 = load ptr, ptr %i.bx, align 8, !noalias !43648, !nonnull !21, !noundef !21 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26", label %.lr.ph.i.i51

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26": ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51, %bb.j, %bb.i
  %.sroa.37.0.copyload.i.i27 = phi i64 [ %.sroa.43.0164, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i28 = phi i64 [ %.sroa.38.0162, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i51.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i29 = phi ptr [ %.sroa.34.0165, %bb.i ], [ %i.bl, %bb.j ], [ %.sroa.012.0.i.i54.lcssa.unr, %.lr.ph.i.i51.prol.loopexit ], [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i29, i64 16906
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !43649, !noundef !21
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %.sroa.37.0.copyload.i.i27, %i.cc
  br i1 %i.cd, label %bb.l, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26", %bb.k
  %.sroa.0.038.i.i.i.i33 = phi ptr [ %i.ce, %bb.k ], [ %.sroa.05.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ] ; 2 uses
  %.sroa.5.037.i.i.i.i34 = phi i64 [ %i.cg, %bb.k ], [ %.sroa.26.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ]
  %i.ce = load ptr, ptr %.sroa.0.038.i.i.i.i33, align 8, !noalias !43650, !noundef !21 ; 4 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i35, label %bb.n, label %bb.k

._crit_edge.loopexit.i.i.i.i36:                   ; preds = %bb.k
  %i.cf = zext i16 %i.ci to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.cg = add i64 %.sroa.5.037.i.i.i.i34, 1       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i33, i64 16904
  %i.ci = load i16, ptr %i.ch, align 8, !noalias !43650 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16906
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !43649, !noundef !21
  %i.cl = icmp ult i16 %i.ci, %i.ck
  br i1 %i.cl, label %._crit_edge.loopexit.i.i.i.i36, label %.lr.ph.i.i.i.i32

bb.l:                                             ; preds = %._crit_edge.loopexit.i.i.i.i36, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26"
  %.sroa.6.sroa.4.0.ph.i.i.i37 = phi i64 [ %.sroa.37.0.copyload.i.i27, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ], [ %i.cf, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i38 = phi i64 [ %.sroa.26.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ], [ %i.cg, %._crit_edge.loopexit.i.i.i.i36 ] ; 5 uses
  %.sroa.0.0.ph.i.i.i39 = phi ptr [ %.sroa.05.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i26" ], [ %i.ce, %._crit_edge.loopexit.i.i.i.i36 ] ; 4 uses
  %i.cm = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 0
  %i.cn = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 1 ; 2 uses
  br i1 %i.cm, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 16912
  %i.cp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.cp), !noalias !43645
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %xtraiter318 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 7 ; 2 uses
  %lcmp.mod319.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod319.not, label %.prol.loopexit316, label %.prol.preheader315

.prol.preheader315:                               ; preds = %bb.m, %.prol.preheader315
  %.pn30.in.i.i.i.i40.prol = phi ptr [ %i.cr, %.prol.preheader315 ], [ %i.cq, %bb.m ]
  %.pn28.in.i.i.i.i41.prol = phi i64 [ %.pn28.i.i.i.i42.prol, %.prol.preheader315 ], [ %.sroa.6.sroa.0.0.ph.i.i.i38, %bb.m ]
  %prol.iter320 = phi i64 [ %prol.iter320.next, %.prol.preheader315 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i42.prol = add i64 %.pn28.in.i.i.i.i41.prol, -1 ; 2 uses
  %.pn30.i.i.i.i43.prol = load ptr, ptr %.pn30.in.i.i.i.i40.prol, align 8, !noalias !43651, !nonnull !21, !noundef !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.prol, i64 16912 ; 2 uses
  %prol.iter320.next = add i64 %prol.iter320, 1   ; 2 uses
  %prol.iter320.cmp.not = icmp eq i64 %prol.iter320.next, %xtraiter318
  br i1 %prol.iter320.cmp.not, label %.prol.loopexit316, label %.prol.preheader315, !llvm.loop !43588

.prol.loopexit316:                                ; preds = %.prol.preheader315, %bb.m
  %.pn30.i.i.i.i43.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i43.prol, %.prol.preheader315 ]
  %.pn30.in.i.i.i.i40.unr = phi ptr [ %i.cq, %bb.m ], [ %i.cr, %.prol.preheader315 ]
  %.pn28.in.i.i.i.i41.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i38, %bb.m ], [ %.pn28.i.i.i.i42.prol, %.prol.preheader315 ]
  %i.cs = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i38, 8
  br i1 %i.cs, label %.loopexit, label %.new317

.new317:                                          ; preds = %.prol.loopexit316, %.new317
  %.pn30.in.i.i.i.i40 = phi ptr [ %i.db, %.new317 ], [ %.pn30.in.i.i.i.i40.unr, %.prol.loopexit316 ]
  %.pn28.in.i.i.i.i41 = phi i64 [ %.pn28.i.i.i.i42.7, %.new317 ], [ %.pn28.in.i.i.i.i41.unr, %.prol.loopexit316 ]
  %.pn30.i.i.i.i43 = load ptr, ptr %.pn30.in.i.i.i.i40, align 8, !noalias !43651, !nonnull !21, !noundef !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43, i64 16912
  %.pn30.i.i.i.i43.1 = load ptr, ptr %i.ct, align 8, !noalias !43651, !nonnull !21, !noundef !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.1, i64 16912
  %.pn30.i.i.i.i43.2 = load ptr, ptr %i.cu, align 8, !noalias !43651, !nonnull !21, !noundef !21
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.2, i64 16912
  %.pn30.i.i.i.i43.3 = load ptr, ptr %i.cv, align 8, !noalias !43651, !nonnull !21, !noundef !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.3, i64 16912
  %.pn30.i.i.i.i43.4 = load ptr, ptr %i.cw, align 8, !noalias !43651, !nonnull !21, !noundef !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.4, i64 16912
  %.pn30.i.i.i.i43.5 = load ptr, ptr %i.cx, align 8, !noalias !43651, !nonnull !21, !noundef !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.5, i64 16912
  %.pn30.i.i.i.i43.6 = load ptr, ptr %i.cy, align 8, !noalias !43651, !nonnull !21, !noundef !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.6, i64 16912
  %.pn28.i.i.i.i42.7 = add i64 %.pn28.in.i.i.i.i41, -8 ; 2 uses
  %.pn30.i.i.i.i43.7 = load ptr, ptr %i.cz, align 8, !noalias !43651, !nonnull !21, !noundef !21 ; 2 uses
  %i.da = icmp eq i64 %.pn28.i.i.i.i42.7, 0
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.7, i64 16912
  br i1 %i.da, label %.loopexit, label %.new317

bb.n:                                             ; preds = %.lr.ph.i.i.i.i32
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i49 unwind label %bb.o, !noalias !43652

.noexc.i.i49:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43645
  unreachable

.critedge.i20:                                    ; preds = %.lr.ph
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57, !noalias !43653
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit316, %.new317, %bb.l
  %.sroa.7.0.i.i.i45 = phi i64 [ %i.cn, %bb.l ], [ 0, %.new317 ], [ 0, %.prol.loopexit316 ]
  %.sroa.07.0.i.i.i46 = phi ptr [ %.sroa.0.0.ph.i.i.i39, %bb.l ], [ %.pn30.i.i.i.i43.lcssa.unr, %.prol.loopexit316 ], [ %.pn30.i.i.i.i43.7, %.new317 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 8
  %i.de = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37, 11
  tail call void @llvm.assume(i1 %i.de), !noalias !43645
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.sroa.6.sroa.4.0.ph.i.i.i37 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39, i64 272
  %i.dh = getelementptr inbounds nuw [1512 x i8], ptr %i.dg, i64 %.sroa.6.sroa.4.0.ph.i.i.i37 ; 35 uses
  %i.di = getelementptr i8, ptr %i.bj, i64 16
  %.val4.i.i.i = load i64, ptr %i.di, align 8, !noalias !43654, !noundef !21 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 16
  %.val6.i.i.i = load i64, ptr %i.dj, align 8, !noalias !43654, !noundef !21
  %.not.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i, %.val6.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i": ; preds = %.loopexit
  %i.dk = getelementptr i8, ptr %i.df, i64 8
  %.val5.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !43654, !nonnull !21, !noundef !21
  %i.dl = getelementptr i8, ptr %i.bj, i64 8
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !43654, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43655, !noalias !43654
  %i.dm = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dm, label %bb.p, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.p:                                             ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43659)
end_hunk_13
begin_hunk_14_@"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h522e16044a4b4305E":bb.a
bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.id = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1328
  %i.ie = load i64, ptr %i.id, align 8, !range !50, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.if = icmp slt i64 %i.ie, 0
  %i.ig = add i64 %i.ie, -9223372036854775807
  %i.ih = select i1 %i.if, i64 %i.ig, i64 0       ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dh, i64 1328
  %i.ij = load i64, ptr %i.ii, align 8, !range !50, !alias.scope !43668, !noalias !43669, !noundef !21 ; 2 uses
  %i.ik = icmp slt i64 %i.ij, 0
  %i.il = add i64 %i.ij, -9223372036854775807
  %i.im = select i1 %i.ik, i64 %i.il, i64 0
  %i.in = icmp eq i64 %i.ih, %i.im
  br i1 %i.in, label %bb.an, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.an:                                            ; preds = %bb.am
  %i.io = icmp eq i64 %i.ih, 0
  br i1 %i.io, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ip = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1344
  %.val23.i.i.i.i.i.i = load i64, ptr %i.ip, align 8, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dh, i64 1344
  %.val25.i.i.i.i.i.i = load i64, ptr %i.iq, align 8, !alias.scope !43668, !noalias !43669, !noundef !21
  %.not.i.i54.i.i.i.i.i.i = icmp eq i64 %.val23.i.i.i.i.i.i, %.val25.i.i.i.i.i.i
  br i1 %.not.i.i54.i.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i": ; preds = %bb.ao
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dh, i64 1336
  %.val24.i.i.i.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !43668, !noalias !43669, !nonnull !21, !noundef !21
  %i.is = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1336
  %.val.i.i.i.i.i.i = load ptr, ptr %i.is, align 8, !alias.scope !43666, !noalias !43667, !nonnull !21, !noundef !21
  %bcmp.i.i56.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val24.i.i.i.i.i.i, i64 %.val23.i.i.i.i.i.i), !alias.scope !43675, !noalias !43671
  %i.it = icmp eq i32 %bcmp.i.i56.i.i.i.i.i.i, 0
  br i1 %i.it, label %bb.ap, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.ap:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit57.i.i.i.i.i.i", %bb.an
  %i.iu = getelementptr inbounds nuw i8, ptr %.pn148168, i64 32
  %i.iv = load i64, ptr %i.iu, align 8, !range !36, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.ix = load i64, ptr %i.iw, align 8, !range !36, !alias.scope !43668, !noalias !43669, !noundef !21
  %i.iy = icmp eq i64 %i.iv, %i.ix
  br i1 %i.iy, label %bb.aq, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.aq:                                            ; preds = %bb.ap
  %i.iz = icmp eq i64 %i.iv, 0
  br i1 %i.iz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ja = getelementptr inbounds nuw i8, ptr %.pn148168, i64 40
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.jc = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haed958bbbeaf4644E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ja, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jb), !noalias !43654
  br i1 %i.jc, label %bb.as, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.jd = getelementptr inbounds nuw i8, ptr %.pn148168, i64 64
  %i.je = load i64, ptr %i.jd, align 8, !range !36, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.jg = load i64, ptr %i.jf, align 8, !range !36, !alias.scope !43668, !noalias !43669, !noundef !21
  %i.jh = icmp eq i64 %i.je, %i.jg
  br i1 %i.jh, label %bb.at, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.at:                                            ; preds = %bb.as
  %i.ji = icmp eq i64 %i.je, 0
  br i1 %i.ji, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jj = getelementptr inbounds nuw i8, ptr %.pn148168, i64 72
  %i.jk = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.jl = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haed958bbbeaf4644E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk), !noalias !43654
  br i1 %i.jl, label %bb.av, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jm = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1352 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !range !96, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.jo = tail call i64 @llvm.usub.sat.i64(i64 %i.jn, i64 -9223372036854775804)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dh, i64 1352 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !range !96, !alias.scope !43668, !noalias !43669, !noundef !21
  %i.jr = tail call i64 @llvm.usub.sat.i64(i64 %i.jq, i64 -9223372036854775804)
  %i.js = icmp eq i64 %i.jo, %i.jr
  br i1 %i.js, label %bb.aw, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.aw:                                            ; preds = %bb.av
  %i.jt = icmp ult i64 %i.jn, -9223372036854775803
  br i1 %i.jt, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ju = tail call fastcc noundef zeroext i1 @"_ZN65_$LT$serde_json..value..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2c9fe2aca7105fcaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jp), !noalias !43654
  br i1 %i.ju, label %bb.ay, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jv = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1424 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !range !96, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.jx = tail call i64 @llvm.usub.sat.i64(i64 %i.jw, i64 -9223372036854775804)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.dh, i64 1424 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !range !96, !alias.scope !43668, !noalias !43669, !noundef !21
  %i.ka = tail call i64 @llvm.usub.sat.i64(i64 %i.jz, i64 -9223372036854775804)
  %i.kb = icmp eq i64 %i.jx, %i.ka
  br i1 %i.kb, label %bb.az, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.az:                                            ; preds = %bb.ay
  %i.kc = icmp ult i64 %i.jw, -9223372036854775803
  br i1 %i.kc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kd = tail call fastcc noundef zeroext i1 @"_ZN65_$LT$serde_json..value..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2c9fe2aca7105fcaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jy), !noalias !43654
  br i1 %i.kd, label %bb.bb, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ke = getelementptr inbounds nuw i8, ptr %.pn148168, i64 96
  %i.kf = load i64, ptr %i.ke, align 8, !range !36, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.kh = load i64, ptr %i.kg, align 8, !range !36, !alias.scope !43668, !noalias !43669, !noundef !21
  %i.ki = icmp eq i64 %i.kf, %i.kh
  br i1 %i.ki, label %bb.bc, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.kj = icmp eq i64 %i.kf, 0
  br i1 %i.kj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kk = getelementptr inbounds nuw i8, ptr %.pn148168, i64 104
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.km = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hb7090d0156312d5fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kl), !noalias !43654
  br i1 %i.km, label %bb.be, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kn = getelementptr inbounds nuw i8, ptr %.pn148168, i64 128 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !range !55, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.kp = tail call i64 @llvm.usub.sat.i64(i64 %i.ko, i64 2)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.dh, i64 128 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !range !55, !alias.scope !43668, !noalias !43669, !noundef !21
  %i.ks = tail call i64 @llvm.usub.sat.i64(i64 %i.kr, i64 2)
  %i.kt = icmp eq i64 %i.kp, %i.ks
  br i1 %i.kt, label %bb.bf, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bf:                                            ; preds = %bb.be
  %i.ku = icmp samesign ult i64 %i.ko, 3
  br i1 %i.ku, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kv = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$milli..vector..settings..SubEmbeddingSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9396aeb776779fe7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.kn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.kq), !noalias !43654
  br i1 %i.kv, label %bb.bh, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.kw = getelementptr inbounds nuw i8, ptr %.pn148168, i64 680 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !range !55, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.ky = tail call i64 @llvm.usub.sat.i64(i64 %i.kx, i64 2)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dh, i64 680 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !range !55, !alias.scope !43668, !noalias !43669, !noundef !21
  %i.lb = tail call i64 @llvm.usub.sat.i64(i64 %i.la, i64 2)
  %i.lc = icmp eq i64 %i.ky, %i.lb
  br i1 %i.lc, label %bb.bi, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ld = icmp samesign ult i64 %i.kx, 3
  br i1 %i.ld, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.le = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$milli..vector..settings..SubEmbeddingSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9396aeb776779fe7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.kw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.kz), !noalias !43654
  br i1 %i.le, label %bb.bk, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lf = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1496
  %i.lg = load i32, ptr %i.lf, align 8, !range !99, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.dh, i64 1496
  %i.li = load i32, ptr %i.lh, align 8, !range !99, !alias.scope !43668, !noalias !43669, !noundef !21
  %i.lj = icmp eq i32 %i.lg, %i.li
  br i1 %i.lj, label %bb.bl, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

bb.bl:                                            ; preds = %bb.bk
  %i.lk = icmp eq i32 %i.lg, 0
  br i1 %i.lk, label %bb.bm, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i"

bb.bm:                                            ; preds = %bb.bl
  %i.ll = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1500
  %i.lm = load float, ptr %i.ll, align 4, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.ln = fcmp uno float %i.lm, 0.000000e+00
  %i.lo = getelementptr inbounds nuw i8, ptr %i.dh, i64 1500
  %i.lp = load float, ptr %i.lo, align 4, !alias.scope !43668, !noalias !43669 ; 2 uses
  %i.lq = fcmp uno float %i.lp, 0.000000e+00
  %i.lr = fcmp oeq float %i.lm, %i.lp
  %.sroa.01.0.in.i.i.i.i.i.i = select i1 %i.ln, i1 %i.lq, i1 %i.lr
  br i1 %.sroa.01.0.in.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i": ; preds = %bb.bm
  %i.ls = getelementptr inbounds nuw i8, ptr %.pn148168, i64 1504
  %i.lt = load float, ptr %i.ls, align 8, !alias.scope !43666, !noalias !43667, !noundef !21 ; 2 uses
  %i.lu = fcmp uno float %i.lt, 0.000000e+00
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dh, i64 1504
  %i.lw = load float, ptr %i.lv, align 8, !alias.scope !43668, !noalias !43669, !noundef !21 ; 2 uses
  %i.lx = fcmp ord float %i.lw, 0.000000e+00
  %i.ly = fcmp une float %i.lt, %i.lw
  %.sroa.0.0.i.i.i = select i1 %i.lu, i1 %i.lx, i1 %i.ly
  br i1 %.sroa.0.0.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.i", %bb.bl, %bb.q
  %i.lz = icmp eq i64 %.sroa.2799.0169, 0
  br i1 %i.lz, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha90bed5059c5ba6fE.exit.thread17.i"
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.7.0167, i64 16906
  %i.mb = load i16, ptr %i.ma, align 2, !noalias !43676, !noundef !21
  %i.mc = zext i16 %i.mb to i64
  %i.md = icmp ult i64 %.sroa.21.0161, %i.mc
  br i1 %i.md, label %.thread142, label %.lr.ph.i.i.i.i

.thread142:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i"
  %i.me = add nuw nsw i64 %.sroa.21.0161, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit"

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i", %bb.bn
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.mf, %bb.bn ], [ %.sroa.7.0167, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.mg, %bb.bn ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i" ] ; 2 uses
  %i.mf = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !43677, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mg = add i64 %.sroa.5.037.i.i.i.i, 1         ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 16904
  %i.mi = load i16, ptr %i.mh, align 8, !noalias !43677 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 16906
  %i.mk = load i16, ptr %i.mj, align 2, !noalias !43676, !noundef !21
  %i.ml = icmp ult i16 %i.mi, %i.mk
  br i1 %i.ml, label %bb.bo, label %.lr.ph.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.mm = zext i16 %i.mi to i64                   ; 4 uses
  %i.mn = icmp eq i64 %i.mg, 0
  %i.mo = add nuw nsw i64 %i.mm, 1                ; 2 uses
  br i1 %i.mn, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit", label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 16912
  %i.mq = icmp ult i16 %i.mi, 11
  tail call void @llvm.assume(i1 %i.mq), !noalias !43645
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mo ; 2 uses
  %xtraiter325 = and i64 %i.mg, 7                 ; 2 uses
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.prol.loopexit322, label %.prol.preheader321

.prol.preheader321:                               ; preds = %bb.bp, %.prol.preheader321
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.ms, %.prol.preheader321 ], [ %i.mr, %bb.bp ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader321 ], [ %i.mg, %bb.bp ]
  %prol.iter327 = phi i64 [ %prol.iter327.next, %.prol.preheader321 ], [ 0, %bb.bp ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !43678, !nonnull !21, !noundef !21 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter327.next = add i64 %prol.iter327, 1   ; 2 uses
  %prol.iter327.cmp.not = icmp eq i64 %prol.iter327.next, %xtraiter325
  br i1 %prol.iter327.cmp.not, label %.prol.loopexit322, label %.prol.preheader321, !llvm.loop !43637

.prol.loopexit322:                                ; preds = %.prol.preheader321, %bb.bp
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bp ], [ %.pn30.i.i.i.i.prol, %.prol.preheader321 ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.mr, %bb.bp ], [ %i.ms, %.prol.preheader321 ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %i.mg, %bb.bp ], [ %.pn28.i.i.i.i.prol, %.prol.preheader321 ]
  %i.mt = icmp ult i64 %.sroa.5.037.i.i.i.i, 7
  br i1 %i.mt, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit", label %.new323

.new323:                                          ; preds = %.prol.loopexit322, %.new323
  %.pn30.in.i.i.i.i = phi ptr [ %i.nc, %.new323 ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit322 ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new323 ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit322 ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !43678, !nonnull !21, !noundef !21
  %i.mu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 16912
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.mu, align 8, !noalias !43678, !nonnull !21, !noundef !21
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.mv, align 8, !noalias !43678, !nonnull !21, !noundef !21
  %i.mw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.mw, align 8, !noalias !43678, !nonnull !21, !noundef !21
  %i.mx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.mx, align 8, !noalias !43678, !nonnull !21, !noundef !21
  %i.my = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.my, align 8, !noalias !43678, !nonnull !21, !noundef !21
  %i.mz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.mz, align 8, !noalias !43678, !nonnull !21, !noundef !21
  %i.na = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.na, align 8, !noalias !43678, !nonnull !21, !noundef !21 ; 2 uses
  %i.nb = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 16912
  br i1 %i.nb, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit", label %.new323

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i unwind label %bb.br, !noalias !43679

.noexc.i.i:                                       ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.nd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43645
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce264d2eb380840dE.exit": ; preds = %.prol.loopexit322, %.new323, %.thread142, %bb.bo
  %.sroa.0.0.ph.i.i.i147 = phi ptr [ %i.mf, %bb.bo ], [ %.sroa.7.0167, %.thread142 ], [ %i.mf, %.new323 ], [ %i.mf, %.prol.loopexit322 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i146 = phi i64 [ %i.mm, %bb.bo ], [ %.sroa.21.0161, %.thread142 ], [ %i.mm, %.new323 ], [ %i.mm, %.prol.loopexit322 ] ; 3 uses
  %.sroa.7.0.i.i.i = phi i64 [ %i.mo, %bb.bo ], [ %i.me, %.thread142 ], [ 0, %.new323 ], [ 0, %.prol.loopexit322 ]
  %.sroa.07.0.i.i.i = phi ptr [ %i.mf, %bb.bo ], [ %.sroa.7.0167, %.thread142 ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit322 ], [ %.pn30.i.i.i.i.7, %.new323 ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i147, i64 8
  %i.nf = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i146, 11
  tail call void @llvm.assume(i1 %i.nf), !noalias !43645
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %i.ne, i64 %.sroa.6.sroa.4.0.ph.i.i.i146
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i147, i64 272
  %i.ni = getelementptr inbounds nuw [1512 x i8], ptr %i.nh, i64 %.sroa.6.sroa.4.0.ph.i.i.i146
  %i.nj = icmp eq i64 %i.bk, 0
  br i1 %i.nj, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb7d83fb28cfc18bbE.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17haed958bbbeaf4644E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !21
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb1a99a2f4b9b36e4E.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !21  ; 2 uses
  %.not = icmp ne ptr %i.f, null                  ; 2 uses
  %i.g = icmp ne i64 %i.b, 0
  %.not121 = and i1 %i.g, %.not
  br i1 %.not121, label %.lr.ph.preheader, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb1a99a2f4b9b36e4E.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !alias.scope !43741, !noalias !43742, !noundef !21 ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %.not.i.i = icmp ne ptr %i.h, null              ; 3 uses
  %.sink.i.i = select i1 %.not.i.i, i64 %i.b, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !43743, !noalias !43744
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.k, i64 undef
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.f to i64
  br label %.lr.ph

_ZN4core4iter6traits8iterator8Iterator8try_fold17hb1a99a2f4b9b36e4E.exit: ; preds = %.loopexit85, %.backedge.i, %.loopexit, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", %.split.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17heda89c863d5a44e7E.exit.i", %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.backedge.i ], [ false, %.loopexit ], [ false, %.split.i ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i" ], [ true, %.loopexit85 ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17heda89c863d5a44e7E.exit.i" ]
  ret i1 %.sroa.0.0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge.i
  %.sroa.0.068101 = phi i1 [ true, %.backedge.i ], [ %.not, %.lr.ph.preheader ]
  %.sroa.5.0100 = phi ptr [ %.sroa.07.0.i.i.i46, %.backedge.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.1558.099 = phi i64 [ %i.o, %.backedge.i ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.17.098 = phi i1 [ true, %.backedge.i ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.20.097 = phi ptr [ %.sroa.07.0.i.i.i, %.backedge.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.29.096 = phi i64 [ %.sroa.7.0.i.i.i, %.backedge.i ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.37.095 = phi i64 [ %i.bn, %.backedge.i ], [ %.sink.i.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.24.094 = phi i64 [ 0, %.backedge.i ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.12.093 = phi i64 [ %.sroa.7.0.i.i.i45, %.backedge.i ], [ %i.m, %.lr.ph.preheader ] ; 6 uses
  %.sroa.8.092 = phi i64 [ 0, %.backedge.i ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.o = add i64 %.sroa.1558.099, -1              ; 2 uses
  br i1 %.sroa.0.068101, label %bb.c, label %.critedge.i20

bb.c:                                             ; preds = %.lr.ph
  %.not.i.i21 = icmp eq ptr %.sroa.5.0100, null
  br i1 %.not.i.i21, label %bb.d, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6ab5ffae6e13184E.exit.i26"

bb.d:                                             ; preds = %bb.c
  %i.p = inttoptr i64 %.sroa.8.092 to ptr         ; 3 uses
  %i.q = icmp eq i64 %.sroa.12.093, 0
  br i1 %i.q, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6ab5ffae6e13184E.exit.i26", label %.lr.ph.i.i51.preheader

.lr.ph.i.i51.preheader:                           ; preds = %bb.d
  %xtraiter = and i64 %.sroa.12.093, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol

.lr.ph.i.i51.prol:                                ; preds = %.lr.ph.i.i51.preheader, %.lr.ph.i.i51.prol
  %.sroa.012.015.i.i52.prol = phi ptr [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ], [ %i.p, %.lr.ph.i.i51.preheader ]
  %.sroa.011.014.i.i53.prol = phi i64 [ %i.s, %.lr.ph.i.i51.prol ], [ %.sroa.12.093, %.lr.ph.i.i51.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.prol ], [ 0, %.lr.ph.i.i51.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52.prol, i64 1072
  %i.s = add i64 %.sroa.011.014.i.i53.prol, -1    ; 2 uses
  %.sroa.012.0.i.i54.prol = load ptr, ptr %i.r, align 8, !noalias !43745, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.prol.loopexit, label %.lr.ph.i.i51.prol, !llvm.loop !43695

.lr.ph.i.i51.prol.loopexit:                       ; preds = %.lr.ph.i.i51.prol, %.lr.ph.i.i51.preheader
  %.sroa.012.0.i.i54.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.012.015.i.i52.unr = phi ptr [ %i.p, %.lr.ph.i.i51.preheader ], [ %.sroa.012.0.i.i54.prol, %.lr.ph.i.i51.prol ]
  %.sroa.011.014.i.i53.unr = phi i64 [ %.sroa.12.093, %.lr.ph.i.i51.preheader ], [ %i.s, %.lr.ph.i.i51.prol ]
  %i.t = icmp ult i64 %.sroa.12.093, 8
  br i1 %i.t, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf6ab5ffae6e13184E.exit.i26", label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51.prol.loopexit, %.lr.ph.i.i51
  %.sroa.012.015.i.i52 = phi ptr [ %.sroa.012.0.i.i54.7, %.lr.ph.i.i51 ], [ %.sroa.012.015.i.i52.unr, %.lr.ph.i.i51.prol.loopexit ]
  %.sroa.011.014.i.i53 = phi i64 [ %i.ac, %.lr.ph.i.i51 ], [ %.sroa.011.014.i.i53.unr, %.lr.ph.i.i51.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52, i64 1072
  %.sroa.012.0.i.i54 = load ptr, ptr %i.u, align 8, !noalias !43745, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54, i64 1072
  %.sroa.012.0.i.i54.1 = load ptr, ptr %i.v, align 8, !noalias !43745, !nonnull !21, !noundef !21
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.1, i64 1072
  %.sroa.012.0.i.i54.2 = load ptr, ptr %i.w, align 8, !noalias !43745, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.2, i64 1072
end_hunk_14
begin_hunk_15_@"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hb7090d0156312d5fE":bb.a
  %i.du = getelementptr i8, ptr %i.bm, i64 8
  %.val.i.i.i = load ptr, ptr %i.du, align 8, !noalias !43842, !nonnull !21, !noundef !21
  %bcmp.i.i.i13.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43844, !noalias !43842
  %.not.i = icmp eq i32 %bcmp.i.i.i13.i.i.i, 0
  br i1 %.not.i, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hb9fa2e605835a097E.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc17cb0316b02f439E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !21
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !21  ; 4 uses
  %.not.not = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %1, align 8, !alias.scope !43925, !noalias !43926, !noundef !21 ; 2 uses
  %.not.i.i = icmp ne ptr %i.g, null              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !43927, !noalias !43928
  %.sroa.10.0.i = select i1 %.not.i.i, i64 %i.i, i64 undef
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp eq i64 %i.b, 0
  %i.l = or i1 %.not.not, %i.k
  br i1 %i.l, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit: ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit", %.loopexit, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", %bb.p, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ true, %bb.b ], [ false, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ], [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ false, %.loopexit ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i" ], [ true, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i" ], [ false, %bb.p ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i90.prol.loopexit, label %.lr.ph.i.i90.prol

.lr.ph.i.i90.prol:                                ; preds = %.lr.ph.i.i90.preheader, %.lr.ph.i.i90.prol
  %.sroa.012.015.i.i91.prol = phi ptr [ %.sroa.012.0.i.i93.prol, %.lr.ph.i.i90.prol ], [ %i.f, %.lr.ph.i.i90.preheader ]
  %.sroa.011.014.i.i92.prol = phi i64 [ %i.q, %.lr.ph.i.i90.prol ], [ %i.n, %.lr.ph.i.i90.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i90.prol ], [ 0, %.lr.ph.i.i90.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i91.prol, i64 544
  %i.q = add i64 %.sroa.011.014.i.i92.prol, -1    ; 2 uses
  %.sroa.012.0.i.i93.prol = load ptr, ptr %i.p, align 8, !noalias !43929, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i90.prol.loopexit, label %.lr.ph.i.i90.prol, !llvm.loop !43860

.lr.ph.i.i90.prol.loopexit:                       ; preds = %.lr.ph.i.i90.prol, %.lr.ph.i.i90.preheader
  %.sroa.012.0.i.i93.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i90.preheader ], [ %.sroa.012.0.i.i93.prol, %.lr.ph.i.i90.prol ]
  %.sroa.012.015.i.i91.unr = phi ptr [ %i.f, %.lr.ph.i.i90.preheader ], [ %.sroa.012.0.i.i93.prol, %.lr.ph.i.i90.prol ]
  %.sroa.011.014.i.i92.unr = phi i64 [ %i.n, %.lr.ph.i.i90.preheader ], [ %i.q, %.lr.ph.i.i90.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", label %.lr.ph.i.i90

.lr.ph.i.i90:                                     ; preds = %.lr.ph.i.i90.prol.loopexit, %.lr.ph.i.i90
  %.sroa.012.015.i.i91 = phi ptr [ %.sroa.012.0.i.i93.7, %.lr.ph.i.i90 ], [ %.sroa.012.015.i.i91.unr, %.lr.ph.i.i90.prol.loopexit ]
  %.sroa.011.014.i.i92 = phi i64 [ %i.aa, %.lr.ph.i.i90 ], [ %.sroa.011.014.i.i92.unr, %.lr.ph.i.i90.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i91, i64 544
  %.sroa.012.0.i.i93 = load ptr, ptr %i.s, align 8, !noalias !43929, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93, i64 544
  %.sroa.012.0.i.i93.1 = load ptr, ptr %i.t, align 8, !noalias !43929, !nonnull !21, !noundef !21
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.1, i64 544
  %.sroa.012.0.i.i93.2 = load ptr, ptr %i.u, align 8, !noalias !43929, !nonnull !21, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.2, i64 544
  %.sroa.012.0.i.i93.3 = load ptr, ptr %i.v, align 8, !noalias !43929, !nonnull !21, !noundef !21
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.3, i64 544
  %.sroa.012.0.i.i93.4 = load ptr, ptr %i.w, align 8, !noalias !43929, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.4, i64 544
  %.sroa.012.0.i.i93.5 = load ptr, ptr %i.x, align 8, !noalias !43929, !nonnull !21, !noundef !21
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.5, i64 544
  %.sroa.012.0.i.i93.6 = load ptr, ptr %i.y, align 8, !noalias !43929, !nonnull !21, !noundef !21
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i93.6, i64 544
  %i.aa = add i64 %.sroa.011.014.i.i92, -8        ; 2 uses
  %.sroa.012.0.i.i93.7 = load ptr, ptr %i.z, align 8, !noalias !43929, !nonnull !21, !noundef !21 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", label %.lr.ph.i.i90

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65": ; preds = %.lr.ph.i.i90.prol.loopexit, %.lr.ph.i.i90, %bb.c
  %.sroa.012.0.lcssa.i.i95 = phi ptr [ %i.f, %bb.c ], [ %.sroa.012.0.i.i93.lcssa.unr, %.lr.ph.i.i90.prol.loopexit ], [ %.sroa.012.0.i.i93.7, %.lr.ph.i.i90 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i95, i64 538
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !43930, !noundef !21
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %.lr.ph.i.i.i.i71, label %.lr.ph.i

.lr.ph.i.i.i.i71:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", %bb.d
  %.sroa.0.038.i.i.i.i72 = phi ptr [ %i.ae, %bb.d ], [ %.sroa.012.0.lcssa.i.i95, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ] ; 2 uses
  %.sroa.5.037.i.i.i.i73 = phi i64 [ %i.af, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.0.038.i.i.i.i72, align 8, !noalias !43931, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i74, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i71
  %i.af = add i64 %.sroa.5.037.i.i.i.i73, 1       ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i72, i64 536
  %i.ah = load i16, ptr %i.ag, align 8, !noalias !43931 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 538
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !43930, !noundef !21
  %i.ak = icmp ult i16 %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %.lr.ph.i.i.i.i71

bb.e:                                             ; preds = %bb.d
  %i.al = zext i16 %i.ah to i64                   ; 4 uses
  %i.am = icmp eq i64 %i.af, 0
  %i.an = add nuw nsw i64 %i.al, 1                ; 2 uses
  br i1 %i.am, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 544
  %i.ap = icmp ult i16 %i.ah, 11
  tail call void @llvm.assume(i1 %i.ap), !noalias !43932
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %xtraiter232 = and i64 %i.af, 7                 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.pn30.in.i.i.i.i79.prol = phi ptr [ %i.ar, %.prol.preheader ], [ %i.aq, %bb.f ]
  %.pn28.in.i.i.i.i80.prol = phi i64 [ %.pn28.i.i.i.i81.prol, %.prol.preheader ], [ %i.af, %bb.f ]
  %prol.iter234 = phi i64 [ %prol.iter234.next, %.prol.preheader ], [ 0, %bb.f ]
  %.pn28.i.i.i.i81.prol = add i64 %.pn28.in.i.i.i.i80.prol, -1 ; 2 uses
  %.pn30.i.i.i.i82.prol = load ptr, ptr %.pn30.in.i.i.i.i79.prol, align 8, !noalias !43933, !nonnull !21, !noundef !21 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.prol, i64 544 ; 2 uses
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !43874

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.pn30.i.i.i.i82.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.pn30.i.i.i.i82.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i79.unr = phi ptr [ %i.aq, %bb.f ], [ %i.ar, %.prol.preheader ]
  %.pn28.in.i.i.i.i80.unr = phi i64 [ %i.af, %bb.f ], [ %.pn28.i.i.i.i81.prol, %.prol.preheader ]
  %i.as = icmp ult i64 %.sroa.5.037.i.i.i.i73, 7
  br i1 %i.as, label %.lr.ph.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i79 = phi ptr [ %i.bb, %.new ], [ %.pn30.in.i.i.i.i79.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i80 = phi i64 [ %.pn28.i.i.i.i81.7, %.new ], [ %.pn28.in.i.i.i.i80.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i82 = load ptr, ptr %.pn30.in.i.i.i.i79, align 8, !noalias !43933, !nonnull !21, !noundef !21
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82, i64 544
  %.pn30.i.i.i.i82.1 = load ptr, ptr %i.at, align 8, !noalias !43933, !nonnull !21, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.1, i64 544
  %.pn30.i.i.i.i82.2 = load ptr, ptr %i.au, align 8, !noalias !43933, !nonnull !21, !noundef !21
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.2, i64 544
  %.pn30.i.i.i.i82.3 = load ptr, ptr %i.av, align 8, !noalias !43933, !nonnull !21, !noundef !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.3, i64 544
  %.pn30.i.i.i.i82.4 = load ptr, ptr %i.aw, align 8, !noalias !43933, !nonnull !21, !noundef !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.4, i64 544
  %.pn30.i.i.i.i82.5 = load ptr, ptr %i.ax, align 8, !noalias !43933, !nonnull !21, !noundef !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.5, i64 544
  %.pn30.i.i.i.i82.6 = load ptr, ptr %i.ay, align 8, !noalias !43933, !nonnull !21, !noundef !21
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.6, i64 544
  %.pn28.i.i.i.i81.7 = add i64 %.pn28.in.i.i.i.i80, -8 ; 2 uses
  %.pn30.i.i.i.i82.7 = load ptr, ptr %i.az, align 8, !noalias !43933, !nonnull !21, !noundef !21 ; 2 uses
  %i.ba = icmp eq i64 %.pn28.i.i.i.i81.7, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i82.7, i64 544
  br i1 %i.ba, label %.lr.ph.i, label %.new

bb.g:                                             ; preds = %.lr.ph.i.i.i.i71
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i88 unwind label %bb.h, !noalias !43934

.noexc.i.i88:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43932
  unreachable

.lr.ph.i:                                         ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65", %bb.e
  %.sroa.0.0.ph.i.i.i78118 = phi ptr [ %i.ae, %bb.e ], [ %.sroa.012.0.lcssa.i.i95, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ], [ %i.ae, %.new ], [ %i.ae, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i76117 = phi i64 [ %i.al, %bb.e ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ], [ %i.al, %.new ], [ %i.al, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i84 = phi i64 [ %i.an, %bb.e ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i85 = phi ptr [ %i.ae, %bb.e ], [ %.sroa.012.0.lcssa.i.i95, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i65" ], [ %.pn30.i.i.i.i82.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i82.7, %.new ]
  %i.bd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i76117, 11
  tail call void @llvm.assume(i1 %i.bd), !noalias !43932
  %i.be = icmp ne i64 %i.b, 0
  %.not210 = and i1 %i.be, %.not.i.i
  br i1 %.not210, label %.lr.ph.preheader, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i78118, i64 272
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.sroa.6.sroa.4.0.ph.i.i.i76117
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i78118, i64 8
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i76117
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit"
  %.sroa.27100.0171.in = phi i64 [ %.sroa.27100.0171, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.b, %.lr.ph.preheader ]
  %i.bj = phi ptr [ %i.ff, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %.pn149170 = phi ptr [ %i.fh, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.bg, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.0169 = phi ptr [ %.sroa.07.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %.sroa.07.0.i.i.i85, %.lr.ph.preheader ] ; 4 uses
  %.sroa.31.0168 = phi i1 [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %.not.i.i, %.lr.ph.preheader ]
  %.sroa.34.0167 = phi ptr [ %.sroa.07.0.i.i.i47, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.43.0166 = phi i64 [ %.sroa.7.0.i.i.i46, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %.sroa.10.0.i, %.lr.ph.preheader ] ; 6 uses
  %.sroa.51.0165 = phi i64 [ %i.bk, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.b, %.lr.ph.preheader ]
  %.sroa.38.0164 = phi i64 [ 0, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.21.0163 = phi i64 [ %.sroa.7.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit" ], [ %.sroa.7.0.i.i.i84, %.lr.ph.preheader ] ; 3 uses
  %.sroa.27100.0171 = add i64 %.sroa.27100.0171.in, -1 ; 2 uses
  %i.bk = add i64 %.sroa.51.0165, -1              ; 2 uses
  br i1 %.sroa.31.0168, label %bb.i, label %.critedge.i21

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i22 = icmp eq ptr %.sroa.34.0167, null
  br i1 %.not.i.i22, label %bb.j, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27"

bb.j:                                             ; preds = %bb.i
  %i.bl = inttoptr i64 %.sroa.38.0164 to ptr      ; 3 uses
  %i.bm = icmp eq i64 %.sroa.43.0166, 0
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27", label %.lr.ph.i.i52.preheader

.lr.ph.i.i52.preheader:                           ; preds = %bb.j
  %xtraiter235 = and i64 %.sroa.43.0166, 7        ; 2 uses
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph.i.i52.prol.loopexit, label %.lr.ph.i.i52.prol

.lr.ph.i.i52.prol:                                ; preds = %.lr.ph.i.i52.preheader, %.lr.ph.i.i52.prol
  %.sroa.012.015.i.i53.prol = phi ptr [ %.sroa.012.0.i.i55.prol, %.lr.ph.i.i52.prol ], [ %i.bl, %.lr.ph.i.i52.preheader ]
  %.sroa.011.014.i.i54.prol = phi i64 [ %i.bo, %.lr.ph.i.i52.prol ], [ %.sroa.43.0166, %.lr.ph.i.i52.preheader ]
  %prol.iter237 = phi i64 [ %prol.iter237.next, %.lr.ph.i.i52.prol ], [ 0, %.lr.ph.i.i52.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i53.prol, i64 544
  %i.bo = add i64 %.sroa.011.014.i.i54.prol, -1   ; 2 uses
  %.sroa.012.0.i.i55.prol = load ptr, ptr %i.bn, align 8, !noalias !43935, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter237.next = add i64 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i64 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.lr.ph.i.i52.prol.loopexit, label %.lr.ph.i.i52.prol, !llvm.loop !43879

.lr.ph.i.i52.prol.loopexit:                       ; preds = %.lr.ph.i.i52.prol, %.lr.ph.i.i52.preheader
  %.sroa.012.0.i.i55.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.preheader ], [ %.sroa.012.0.i.i55.prol, %.lr.ph.i.i52.prol ]
  %.sroa.012.015.i.i53.unr = phi ptr [ %i.bl, %.lr.ph.i.i52.preheader ], [ %.sroa.012.0.i.i55.prol, %.lr.ph.i.i52.prol ]
  %.sroa.011.014.i.i54.unr = phi i64 [ %.sroa.43.0166, %.lr.ph.i.i52.preheader ], [ %i.bo, %.lr.ph.i.i52.prol ]
  %i.bp = icmp ult i64 %.sroa.43.0166, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27", label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %.lr.ph.i.i52.prol.loopexit, %.lr.ph.i.i52
  %.sroa.012.015.i.i53 = phi ptr [ %.sroa.012.0.i.i55.7, %.lr.ph.i.i52 ], [ %.sroa.012.015.i.i53.unr, %.lr.ph.i.i52.prol.loopexit ]
  %.sroa.011.014.i.i54 = phi i64 [ %i.by, %.lr.ph.i.i52 ], [ %.sroa.011.014.i.i54.unr, %.lr.ph.i.i52.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i53, i64 544
  %.sroa.012.0.i.i55 = load ptr, ptr %i.bq, align 8, !noalias !43935, !nonnull !21, !noundef !21
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55, i64 544
  %.sroa.012.0.i.i55.1 = load ptr, ptr %i.br, align 8, !noalias !43935, !nonnull !21, !noundef !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.1, i64 544
  %.sroa.012.0.i.i55.2 = load ptr, ptr %i.bs, align 8, !noalias !43935, !nonnull !21, !noundef !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.2, i64 544
  %.sroa.012.0.i.i55.3 = load ptr, ptr %i.bt, align 8, !noalias !43935, !nonnull !21, !noundef !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.3, i64 544
  %.sroa.012.0.i.i55.4 = load ptr, ptr %i.bu, align 8, !noalias !43935, !nonnull !21, !noundef !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.4, i64 544
  %.sroa.012.0.i.i55.5 = load ptr, ptr %i.bv, align 8, !noalias !43935, !nonnull !21, !noundef !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.5, i64 544
  %.sroa.012.0.i.i55.6 = load ptr, ptr %i.bw, align 8, !noalias !43935, !nonnull !21, !noundef !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i55.6, i64 544
  %i.by = add i64 %.sroa.011.014.i.i54, -8        ; 2 uses
  %.sroa.012.0.i.i55.7 = load ptr, ptr %i.bx, align 8, !noalias !43935, !nonnull !21, !noundef !21 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27", label %.lr.ph.i.i52

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27": ; preds = %.lr.ph.i.i52.prol.loopexit, %.lr.ph.i.i52, %bb.j, %bb.i
  %.sroa.37.0.copyload.i.i28 = phi i64 [ %.sroa.43.0166, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i52 ], [ 0, %.lr.ph.i.i52.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i29 = phi i64 [ %.sroa.38.0164, %bb.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i52 ], [ 0, %.lr.ph.i.i52.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i30 = phi ptr [ %.sroa.34.0167, %bb.i ], [ %i.bl, %bb.j ], [ %.sroa.012.0.i.i55.lcssa.unr, %.lr.ph.i.i52.prol.loopexit ], [ %.sroa.012.0.i.i55.7, %.lr.ph.i.i52 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i30, i64 538
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !43936, !noundef !21
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %.sroa.37.0.copyload.i.i28, %i.cc
  br i1 %i.cd, label %bb.l, label %.lr.ph.i.i.i.i33

.lr.ph.i.i.i.i33:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27", %bb.k
  %.sroa.0.038.i.i.i.i34 = phi ptr [ %i.ce, %bb.k ], [ %.sroa.05.0.copyload.i.i30, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ] ; 2 uses
  %.sroa.5.037.i.i.i.i35 = phi i64 [ %i.cg, %bb.k ], [ %.sroa.26.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ]
  %i.ce = load ptr, ptr %.sroa.0.038.i.i.i.i34, align 8, !noalias !43937, !noundef !21 ; 4 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i36, label %bb.n, label %bb.k

._crit_edge.loopexit.i.i.i.i37:                   ; preds = %bb.k
  %i.cf = zext i16 %i.ci to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i33
  %i.cg = add i64 %.sroa.5.037.i.i.i.i35, 1       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i34, i64 536
  %i.ci = load i16, ptr %i.ch, align 8, !noalias !43937 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 538
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !43936, !noundef !21
  %i.cl = icmp ult i16 %i.ci, %i.ck
  br i1 %i.cl, label %._crit_edge.loopexit.i.i.i.i37, label %.lr.ph.i.i.i.i33

bb.l:                                             ; preds = %._crit_edge.loopexit.i.i.i.i37, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27"
  %.sroa.6.sroa.4.0.ph.i.i.i38 = phi i64 [ %.sroa.37.0.copyload.i.i28, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ], [ %i.cf, %._crit_edge.loopexit.i.i.i.i37 ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i39 = phi i64 [ %.sroa.26.0.copyload.i.i29, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ], [ %i.cg, %._crit_edge.loopexit.i.i.i.i37 ] ; 5 uses
  %.sroa.0.0.ph.i.i.i40 = phi ptr [ %.sroa.05.0.copyload.i.i30, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i27" ], [ %i.ce, %._crit_edge.loopexit.i.i.i.i37 ] ; 4 uses
  %i.cm = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i39, 0
  %i.cn = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i38, 1 ; 2 uses
  br i1 %i.cm, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i40, i64 544
  %i.cp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i38, 11
  tail call void @llvm.assume(i1 %i.cp), !noalias !43932
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %xtraiter241 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i39, 7 ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.prol.loopexit239, label %.prol.preheader238

.prol.preheader238:                               ; preds = %bb.m, %.prol.preheader238
  %.pn30.in.i.i.i.i41.prol = phi ptr [ %i.cr, %.prol.preheader238 ], [ %i.cq, %bb.m ]
  %.pn28.in.i.i.i.i42.prol = phi i64 [ %.pn28.i.i.i.i43.prol, %.prol.preheader238 ], [ %.sroa.6.sroa.0.0.ph.i.i.i39, %bb.m ]
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.prol.preheader238 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i43.prol = add i64 %.pn28.in.i.i.i.i42.prol, -1 ; 2 uses
  %.pn30.i.i.i.i44.prol = load ptr, ptr %.pn30.in.i.i.i.i41.prol, align 8, !noalias !43938, !nonnull !21, !noundef !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.prol, i64 544 ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.prol.loopexit239, label %.prol.preheader238, !llvm.loop !43893

.prol.loopexit239:                                ; preds = %.prol.preheader238, %bb.m
  %.pn30.i.i.i.i44.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i44.prol, %.prol.preheader238 ]
  %.pn30.in.i.i.i.i41.unr = phi ptr [ %i.cq, %bb.m ], [ %i.cr, %.prol.preheader238 ]
  %.pn28.in.i.i.i.i42.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i39, %bb.m ], [ %.pn28.i.i.i.i43.prol, %.prol.preheader238 ]
  %i.cs = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i39, 8
  br i1 %i.cs, label %.loopexit, label %.new240

.new240:                                          ; preds = %.prol.loopexit239, %.new240
  %.pn30.in.i.i.i.i41 = phi ptr [ %i.db, %.new240 ], [ %.pn30.in.i.i.i.i41.unr, %.prol.loopexit239 ]
  %.pn28.in.i.i.i.i42 = phi i64 [ %.pn28.i.i.i.i43.7, %.new240 ], [ %.pn28.in.i.i.i.i42.unr, %.prol.loopexit239 ]
  %.pn30.i.i.i.i44 = load ptr, ptr %.pn30.in.i.i.i.i41, align 8, !noalias !43938, !nonnull !21, !noundef !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44, i64 544
  %.pn30.i.i.i.i44.1 = load ptr, ptr %i.ct, align 8, !noalias !43938, !nonnull !21, !noundef !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.1, i64 544
  %.pn30.i.i.i.i44.2 = load ptr, ptr %i.cu, align 8, !noalias !43938, !nonnull !21, !noundef !21
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.2, i64 544
  %.pn30.i.i.i.i44.3 = load ptr, ptr %i.cv, align 8, !noalias !43938, !nonnull !21, !noundef !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.3, i64 544
  %.pn30.i.i.i.i44.4 = load ptr, ptr %i.cw, align 8, !noalias !43938, !nonnull !21, !noundef !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.4, i64 544
  %.pn30.i.i.i.i44.5 = load ptr, ptr %i.cx, align 8, !noalias !43938, !nonnull !21, !noundef !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.5, i64 544
  %.pn30.i.i.i.i44.6 = load ptr, ptr %i.cy, align 8, !noalias !43938, !nonnull !21, !noundef !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.6, i64 544
  %.pn28.i.i.i.i43.7 = add i64 %.pn28.in.i.i.i.i42, -8 ; 2 uses
  %.pn30.i.i.i.i44.7 = load ptr, ptr %i.cz, align 8, !noalias !43938, !nonnull !21, !noundef !21 ; 2 uses
  %i.da = icmp eq i64 %.pn28.i.i.i.i43.7, 0
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i44.7, i64 544
  br i1 %i.da, label %.loopexit, label %.new240

bb.n:                                             ; preds = %.lr.ph.i.i.i.i33
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i50 unwind label %bb.o, !noalias !43939

.noexc.i.i50:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43932
  unreachable

.critedge.i21:                                    ; preds = %.lr.ph
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57, !noalias !43940
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit239, %.new240, %bb.l
  %.sroa.7.0.i.i.i46 = phi i64 [ %i.cn, %bb.l ], [ 0, %.new240 ], [ 0, %.prol.loopexit239 ]
  %.sroa.07.0.i.i.i47 = phi ptr [ %.sroa.0.0.ph.i.i.i40, %bb.l ], [ %.pn30.i.i.i.i44.lcssa.unr, %.prol.loopexit239 ], [ %.pn30.i.i.i.i44.7, %.new240 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i40, i64 8
  %i.de = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i38, 11
  tail call void @llvm.assume(i1 %i.de), !noalias !43932
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.sroa.6.sroa.4.0.ph.i.i.i38 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i40, i64 272
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.sroa.6.sroa.4.0.ph.i.i.i38 ; 2 uses
  %i.di = getelementptr i8, ptr %i.bj, i64 16
  %.val4.i.i.i = load i64, ptr %i.di, align 8, !noalias !43941, !noundef !21 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 16
  %.val6.i.i.i = load i64, ptr %i.dj, align 8, !noalias !43941, !noundef !21
  %.not.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i, %.val6.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i": ; preds = %.loopexit
  %i.dk = getelementptr i8, ptr %i.df, i64 8
  %.val5.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !43941, !nonnull !21, !noundef !21
  %i.dl = getelementptr i8, ptr %i.bj, i64 8
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !43941, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !43942, !noalias !43941
  %i.dm = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dm, label %bb.p, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

bb.p:                                             ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i"
  %i.dn = getelementptr i8, ptr %.pn149170, i64 8
  %.val7.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !43941, !nonnull !21, !noundef !21
  %i.do = getelementptr i8, ptr %.pn149170, i64 16
  %.val8.i.i.i = load i64, ptr %i.do, align 8, !noalias !43941, !noundef !21 ; 3 uses
  %i.dp = getelementptr i8, ptr %i.dh, i64 8
  %.val9.i.i.i = load ptr, ptr %i.dp, align 8, !noalias !43941, !nonnull !21, !noundef !21
  %i.dq = getelementptr i8, ptr %i.dh, i64 16
  %.val10.i.i.i = load i64, ptr %i.dq, align 8, !noalias !43941, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43944)
  %.not.i.i.i.i.i = icmp eq i64 %.val8.i.i.i, %.val10.i.i.i
  br i1 %.not.i.i.i.i.i, label %.preheader.split.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

.preheader.split.i.i.i.i.i:                       ; preds = %bb.p
  %.not16.i.i.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not16.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i", label %.lr.ph.i.i.i.i.i

bb.q:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i
  %i.dr = add nuw i64 %.sroa.01.012.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dr, %.val8.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.split.i.i.i.i.i, %bb.q
  %.sroa.01.012.i.i.i.i.i = phi i64 [ %i.dr, %bb.q ], [ 0, %.preheader.split.i.i.i.i.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %.val7.i.i.i, i64 %.sroa.01.012.i.i.i.i.i ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %.val9.i.i.i, i64 %.sroa.01.012.i.i.i.i.i ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.du, align 8, !alias.scope !43943, !noalias !43945, !noundef !21 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 16
  %.val8.i.i.i.i.i = load i64, ptr %i.dv, align 8, !alias.scope !43944, !noalias !43946, !noundef !21
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val6.i.i.i.i.i, %.val8.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dw = getelementptr i8, ptr %i.dt, i64 8
  %.val7.i.i.i.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !43944, !noalias !43946, !nonnull !21, !noundef !21
  %i.dx = getelementptr i8, ptr %i.ds, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !43943, !noalias !43945, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val7.i.i.i.i.i, i64 %.val6.i.i.i.i.i), !alias.scope !43947, !noalias !43948
  %.not10.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i, label %bb.q, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i": ; preds = %bb.q, %.preheader.split.i.i.i.i.i
  %i.dy = icmp eq i64 %.sroa.27100.0171, 0
  br i1 %i.dy, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9ddf0b9549b1c337E.exit.i"
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.7.0169, i64 538
  %i.ea = load i16, ptr %i.dz, align 2, !noalias !43949, !noundef !21
  %i.eb = zext i16 %i.ea to i64
  %i.ec = icmp ult i64 %.sroa.21.0163, %i.eb
  br i1 %i.ec, label %.thread143, label %.lr.ph.i.i.i.i

.thread143:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i"
  %i.ed = add nuw nsw i64 %.sroa.21.0163, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit"

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i", %bb.r
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.ee, %bb.r ], [ %.sroa.7.0169, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.ef, %bb.r ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8df26717199fbc62E.exit.i" ] ; 2 uses
  %i.ee = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !43950, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i20, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ef = add i64 %.sroa.5.037.i.i.i.i, 1         ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 536
  %i.eh = load i16, ptr %i.eg, align 8, !noalias !43950 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 538
  %i.ej = load i16, ptr %i.ei, align 2, !noalias !43949, !noundef !21
  %i.ek = icmp ult i16 %i.eh, %i.ej
  br i1 %i.ek, label %bb.s, label %.lr.ph.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.el = zext i16 %i.eh to i64                   ; 4 uses
  %i.em = icmp eq i64 %i.ef, 0
  %i.en = add nuw nsw i64 %i.el, 1                ; 2 uses
  br i1 %i.em, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 544
  %i.ep = icmp ult i16 %i.eh, 11
  tail call void @llvm.assume(i1 %i.ep), !noalias !43932
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  %xtraiter248 = and i64 %i.ef, 7                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.prol.loopexit245, label %.prol.preheader244

.prol.preheader244:                               ; preds = %bb.t, %.prol.preheader244
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.er, %.prol.preheader244 ], [ %i.eq, %bb.t ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader244 ], [ %i.ef, %bb.t ]
  %prol.iter250 = phi i64 [ %prol.iter250.next, %.prol.preheader244 ], [ 0, %bb.t ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !43951, !nonnull !21, !noundef !21 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %.prol.loopexit245, label %.prol.preheader244, !llvm.loop !43924

.prol.loopexit245:                                ; preds = %.prol.preheader244, %bb.t
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.t ], [ %.pn30.i.i.i.i.prol, %.prol.preheader244 ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.eq, %bb.t ], [ %i.er, %.prol.preheader244 ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %i.ef, %bb.t ], [ %.pn28.i.i.i.i.prol, %.prol.preheader244 ]
  %i.es = icmp ult i64 %.sroa.5.037.i.i.i.i, 7
  br i1 %i.es, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit", label %.new246

.new246:                                          ; preds = %.prol.loopexit245, %.new246
  %.pn30.in.i.i.i.i = phi ptr [ %i.fb, %.new246 ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit245 ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new246 ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit245 ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !43951, !nonnull !21, !noundef !21
  %i.et = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 544
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.et, align 8, !noalias !43951, !nonnull !21, !noundef !21
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.eu, align 8, !noalias !43951, !nonnull !21, !noundef !21
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.ev, align 8, !noalias !43951, !nonnull !21, !noundef !21
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.ew, align 8, !noalias !43951, !nonnull !21, !noundef !21
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.ex, align 8, !noalias !43951, !nonnull !21, !noundef !21
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.ey, align 8, !noalias !43951, !nonnull !21, !noundef !21
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.ez, align 8, !noalias !43951, !nonnull !21, !noundef !21 ; 2 uses
  %i.fa = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 544
  br i1 %i.fa, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit", label %.new246

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i unwind label %bb.v, !noalias !43952

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !43932
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f167f2284ca62cE.exit": ; preds = %.prol.loopexit245, %.new246, %.thread143, %bb.s
  %.sroa.0.0.ph.i.i.i148 = phi ptr [ %i.ee, %bb.s ], [ %.sroa.7.0169, %.thread143 ], [ %i.ee, %.new246 ], [ %i.ee, %.prol.loopexit245 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i147 = phi i64 [ %i.el, %bb.s ], [ %.sroa.21.0163, %.thread143 ], [ %i.el, %.new246 ], [ %i.el, %.prol.loopexit245 ] ; 3 uses
  %.sroa.7.0.i.i.i = phi i64 [ %i.en, %bb.s ], [ %i.ed, %.thread143 ], [ 0, %.new246 ], [ 0, %.prol.loopexit245 ]
  %.sroa.07.0.i.i.i = phi ptr [ %i.ee, %bb.s ], [ %.sroa.7.0169, %.thread143 ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit245 ], [ %.pn30.i.i.i.i.7, %.new246 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i148, i64 8
  %i.fe = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i147, 11
  tail call void @llvm.assume(i1 %i.fe), !noalias !43932
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %.sroa.6.sroa.4.0.ph.i.i.i147
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i148, i64 272
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %.sroa.6.sroa.4.0.ph.i.i.i147
  %i.fi = icmp eq i64 %i.bk, 0
  br i1 %i.fi, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hc32ac111e3079b3dE.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$meilisearch_types..dynamic_search_rules..Selector$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17he8eae8d5f47b3a07E"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [752 x i8], align 8               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [752 x i8], align 8               ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [752 x i8], align 8               ; 7 uses
  %i.g = alloca [752 x i8], align 8               ; 4 uses
  %i.h = alloca [752 x i8], align 8               ; 4 uses
  %i.i = alloca [752 x i8], align 8               ; 4 uses
  %i.j = alloca [752 x i8], align 8               ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [72 x i8], align 8                ; 11 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [752 x i8], align 8               ; 6 uses
  %i.q = alloca [752 x i8], align 8               ; 4 uses
  %i.r = alloca [408 x i8], align 8               ; 20 uses
  %i.s = alloca [408 x i8], align 8               ; 10 uses
  %i.t = alloca [408 x i8], align 8               ; 4 uses
  %i.u = alloca [408 x i8], align 8               ; 4 uses
  %i.v = alloca [752 x i8], align 8               ; 5 uses
  %i.w = alloca [752 x i8], align 8               ; 4 uses
  %i.x = alloca [752 x i8], align 8               ; 9 uses
  %i.y = alloca [752 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.x)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.z, %.body, %.body.thread75, %bb.aj, %bb.c
  %.pn45 = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.ce, %bb.aj ], [ %i.br, %bb.z ], [ %.pn4378, %.body.thread75 ], [ %i.bq, %.body ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
          to label %common.resume unwind label %bb.ak

bb.c:                                             ; preds = %bb.ae, %bb.ad, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.v, ptr noundef nonnull align 8 dereferenceable(752) %i.x, i64 752, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 -9223372036854775803, ptr %i.e, align 8
  store i64 0, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  store i64 -9223372036854775806, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 -9223372036854775808, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 -9223372036854775808, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %i.af, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 -9223372036854775808, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 360
  store ptr null, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.p)
          to label %bb.e unwind label %bb.an

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !43996)
  call void @llvm.experimental.noalias.scope.decl(metadata !43997)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 432 ; 2 uses
  %.val.i = load i64, ptr %i.ai, align 8, !range !24, !alias.scope !43997, !noalias !43996, !noundef !21 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 440 ; 2 uses
  %i.ak = icmp ne i64 %.val.i, -9223372036854775807
  call void @llvm.assume(i1 %i.ak)
end_hunk_15
