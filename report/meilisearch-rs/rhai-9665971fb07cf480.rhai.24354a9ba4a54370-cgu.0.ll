Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN4rhai9optimizer13optimize_stmt17h1fd8d7a6bfb03e75E:bb.a
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..ast..expr..BinaryExpr$GT$17h6e6f78e223e3d862E"(ptr noalias noundef align 8 dereferenceable(32) %i.bf) #72
          to label %.body637 unwind label %bb.ag

bb.eg:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pk, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.po = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.pk, ptr %i.po, align 8
  store i8 11, ptr %i.be, align 8
  invoke fastcc void @_ZN4rhai9optimizer13optimize_stmt17h1fd8d7a6bfb03e75E(ptr noalias noundef align 8 dereferenceable(16) %i.be, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext true)
          to label %bb.ei unwind label %bb.el

bb.eh:                                            ; preds = %bb.ei
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false)
  br label %.body646

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %bb.ej unwind label %bb.eh

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.pq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..ast..expr..BinaryExpr$GT$17h6e6f78e223e3d862E"(ptr noalias noundef align 8 dereferenceable(32) %i.bf)
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ew, %bb.dv, %bb.ek, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.bs), !inline_history !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hd82e89e59abb0be1E.exit"

bb.el:                                            ; preds = %bb.eg
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %i.be) #72
          to label %.body646 unwind label %bb.ag

.loopexit1082:                                    ; preds = %"_ZN4core3ptr48drop_in_place$LT$rhai..ast..expr..BinaryExpr$GT$17h6e6f78e223e3d862E.exit", %bb.cu, %bb.cv
  %i.ps = getelementptr inbounds nuw i8, ptr %.pre1242, i64 328 ; 5 uses
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !50999, !noalias !51002, !noundef !3 ; 3 uses
  %i.pu = icmp ugt i64 %i.pt, 3                   ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.pre1242, i64 240 ; 5 uses
  %i.pw = load i64, ptr %i.pv, align 8, !alias.scope !50999, !noalias !51002 ; 2 uses
  %.sink10.i740 = select i1 %i.pu, i64 %i.pw, i64 %i.pt ; 2 uses
  switch i64 %.sink10.i740, label %bb.en [
    i64 0, label %bb.em
    i64 1, label %bb.fa
  ]

bb.em:                                            ; preds = %.loopexit1082, %bb.fc
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.px, align 8
  %i.py = load i64, ptr %i.lp, align 8, !range !455, !noundef !3
  %i.pz = trunc nuw i64 %i.py to i1
  br i1 %i.pz, label %bb.gf, label %bb.gg

bb.en:                                            ; preds = %.loopexit1082
  %i.qa = load ptr, ptr %i.lr, align 8, !alias.scope !50999, !noalias !51002, !nonnull !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %.sink11.i753 = select i1 %i.pu, ptr %i.qa, ptr %i.lr ; 2 uses
  %i.qb = getelementptr inbounds nuw [32 x i8], ptr %.sink11.i753, i64 %.sink10.i740
  store ptr %.sink11.i753, ptr %i.bb, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.qb, ptr %i.qc, align 8
  %i.qd = invoke fastcc noundef zeroext i1 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hfe4b35ddbef4bfe6E"(ptr noalias noundef align 8 dereferenceable(16) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br i1 %i.qd, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.qe = getelementptr inbounds nuw i8, ptr %.pre1242, i64 56
  %i.qf = load i64, ptr %i.qe, align 8, !noundef !3
  %i.qg = icmp eq i64 %i.qf, 0
  br i1 %i.qg, label %bb.es, label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %.pre1247.a = load i64, ptr %i.ps, align 8, !alias.scope !51004, !noalias !51007
  %.pre1248 = load i64, ptr %i.pv, align 8, !alias.scope !51004, !noalias !51007
  br label %bb.fa

bb.er:                                            ; preds = %bb.ep
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.qh, align 8
  call fastcc void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h2c9899d123126b50E"(ptr noalias noundef align 8 dereferenceable(32) %i.na)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ep
  %i.qi = load i64, ptr %i.ps, align 8, !alias.scope !51009, !noalias !51012, !noundef !3 ; 2 uses
  %i.qj = load i64, ptr %i.pv, align 8, !alias.scope !51009, !noalias !51012
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hb919296c1dd353aaE"(ptr noalias noundef align 8 dereferenceable(104) %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bs)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp

bb.et:                                            ; preds = %bb.es
  %i.qk = icmp ugt i64 %i.qi, 3
  %.sink10.i760 = select i1 %i.qk, i64 %i.qj, i64 %i.qi
  %i.ql = load i64, ptr %i.ps, align 8, !alias.scope !51014, !noalias !51017, !noundef !3 ; 3 uses
  %i.qm = icmp ugt i64 %i.ql, 3
  %i.qn = load i64, ptr %i.pv, align 8, !alias.scope !51014, !noalias !51017 ; 2 uses
  %.sink10.i763 = select i1 %i.qm, i64 %i.qn, i64 %i.ql
  %.not593 = icmp eq i64 %.sink10.i763, %.sink10.i760
  br i1 %.not593, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.qo, align 8
  %.pre1245.a = load i64, ptr %i.ps, align 8, !alias.scope !51019, !noalias !51024
  %.val.i766.pre = load i64, ptr %i.pv, align 8, !alias.scope !51026
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.val.i766 = phi i64 [ %.val.i766.pre, %bb.eu ], [ %i.qn, %bb.et ]
  %i.qp = phi i64 [ %.pre1245.a, %bb.eu ], [ %i.ql, %bb.et ] ; 2 uses
  %i.qq = icmp ugt i64 %i.qp, 3                   ; 2 uses
  %i.qr = load ptr, ptr %i.lr, align 8, !alias.scope !51019, !noalias !51024, !nonnull !3
  %.sink10.i.i765 = select i1 %i.qq, ptr %i.qr, ptr %i.lr ; 2 uses
  %i.qs = select i1 %i.qq, i64 %.val.i766, i64 %i.qp
  %i.qt = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i765, i64 %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %.pre1242, i64 224
  %i.qv = getelementptr inbounds nuw i8, ptr %.pre1242, i64 72
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ez, %bb.ev
  %.sroa.0549.0 = phi ptr [ %.sink10.i.i765, %bb.ev ], [ %.sroa.0549.1, %bb.ez ] ; 4 uses
  %i.qw = icmp eq ptr %.sroa.0549.0, %i.qt        ; 2 uses
  %.sroa.0549.1.idx = select i1 %i.qw, i64 0, i64 32
  %.sroa.0549.1 = getelementptr inbounds nuw i8, ptr %.sroa.0549.0, i64 %.sroa.0549.1.idx
  br i1 %i.qw, label %.loopexit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0549.0, i64 24
  %i.qy = load i8, ptr %i.qx, align 8, !range !12413, !noundef !3
  %.not595 = icmp eq i8 %i.qy, 2
  %.sroa.0495.0.idx = select i1 %.not595, i64 16, i64 0
  %.sroa.0495.0 = getelementptr inbounds nuw i8, ptr %.sroa.0549.0, i64 %.sroa.0495.0.idx
  %i.qz = load i64, ptr %.sroa.0495.0, align 8, !noundef !3 ; 3 uses
  %i.ra = load i64, ptr %i.qu, align 8, !alias.scope !51027, !noalias !51032, !noundef !3 ; 2 uses
  %i.rb = icmp ugt i64 %i.ra, 5                   ; 2 uses
  %.val.i767 = load i64, ptr %i.qv, align 8, !alias.scope !51035, !noalias !51036
  %i.rc = select i1 %i.rb, i64 %.val.i767, i64 %i.ra ; 2 uses
  %i.rd = icmp ult i64 %i.qz, %i.rc
  br i1 %i.rd, label %bb.ey, label %.invoke

.invoke:                                          ; preds = %bb.dx, %bb.ex
  %i.re = phi i64 [ %i.qz, %bb.ex ], [ %i.ox, %bb.dx ]
  %i.rf = phi i64 [ %i.rc, %bb.ex ], [ %i.pa, %bb.dx ]
  %i.rg = phi ptr [ @2216, %bb.ex ], [ @2215, %bb.dx ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.re, i64 noundef %i.rf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rg) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ey:                                            ; preds = %bb.ex
  %i.rh = load ptr, ptr %i.lq, align 8, !alias.scope !51027, !noalias !51032, !nonnull !3
  %.sink10.i.i768 = select i1 %i.rb, ptr %i.rh, ptr %i.lq
  %i.ri = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i768, i64 %i.qz ; 2 uses
  invoke fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef align 8 dereferenceable(16) %i.ri, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false)
          to label %bb.ez unwind label %.loopexit1081

bb.ez:                                            ; preds = %bb.ey
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  invoke fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef align 8 dereferenceable(16) %i.rj, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false)
          to label %bb.ew unwind label %.loopexit1081

bb.fa:                                            ; preds = %.loopexit1082, %bb.eq
  %i.rk = phi i64 [ %i.pw, %.loopexit1082 ], [ %.pre1248, %bb.eq ]
  %i.rl = phi i64 [ %i.pt, %.loopexit1082 ], [ %.pre1247.a, %bb.eq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.rm = icmp ugt i64 %i.rl, 3                   ; 2 uses
  %i.rn = load ptr, ptr %i.lr, align 8, !alias.scope !51004, !noalias !51007, !nonnull !3
  %.sink11.i756 = select i1 %i.rm, ptr %i.rn, ptr %i.lr ; 2 uses
  %.sink10.i757 = select i1 %i.rm, i64 %i.rk, i64 %i.rl
  %i.ro = getelementptr inbounds nuw [32 x i8], ptr %.sink11.i756, i64 %.sink10.i757
  store ptr %.sink11.i756, ptr %i.ba, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.ro, ptr %i.rp, align 8
  %i.rq = call fastcc noundef align 8 dereferenceable_or_null(32) ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h5c8676d561e2de2bE"(ptr noalias noundef align 8 dereferenceable(16) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bs) ; 6 uses
  %.not596 = icmp eq ptr %i.rq, null
  br i1 %.not596, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24 ; 3 uses
  %i.rs = load i8, ptr %i.rr, align 8, !range !12413, !noundef !3
  %.not597 = icmp eq i8 %i.rs, 2
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 16 ; 3 uses
  %.val1081 = load i64, ptr %i.rt, align 8
  %i.ru = load i64, ptr %i.rq, align 8
  %3 = select i1 %.not597, i64 %.val1081, i64 %i.ru
  %i.rv = invoke fastcc noundef align 8 dereferenceable(32) ptr @"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h667a0cf67f5f0d5bE"(ptr noalias noundef align 8 dereferenceable(168) %i.lq, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2217)
          to label %bb.fd unwind label %.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.em

bb.fd:                                            ; preds = %bb.fb
  %i.rw = load i8, ptr %i.rv, align 8, !range !7732, !noundef !3
  %i.rx = icmp eq i8 %i.rw, 1
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  %i.rz = load i8, ptr %i.ry, align 1, !range !5
  %i.sa = trunc nuw i8 %i.rz to i1
  %.sroa.0166.0 = select i1 %i.rx, i1 %i.sa, i1 false
  br i1 %.sroa.0166.0, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.rv, i64 16, i1 false)
  store i8 9, ptr %i.rv, align 8
  %.sroa.4486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rv, i64 2
  store i16 0, ptr %.sroa.4486.0..sroa_idx, align 2
  %.sroa.5487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  store i16 0, ptr %.sroa.5487.0..sroa_idx, align 4
  invoke fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef align 8 dereferenceable(16) %i.aw, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false)
          to label %bb.fh unwind label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %i.sb = load i8, ptr %i.rr, align 8, !range !12413, !noundef !3
  %.not602 = icmp eq i8 %i.sb, 2
  %.sroa.0478.0 = select i1 %.not602, ptr %i.rt, ptr %i.rq
  %i.sc = load i64, ptr %.sroa.0478.0, align 8, !noundef !3
  %i.sd = invoke fastcc noundef align 8 dereferenceable(32) ptr @"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h667a0cf67f5f0d5bE"(ptr noalias noundef align 8 dereferenceable(168) %i.lq, i64 noundef %i.sc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2219)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.fg:                                            ; preds = %bb.fh, %bb.fe
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fh:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.sf = load i64, ptr %i.lp, align 8, !range !455, !noundef !3
  %i.sg = getelementptr inbounds nuw i8, ptr %.pre1242, i64 24
  %i.sh = load i64, ptr %i.sg, align 8
  invoke fastcc void @"_ZN4core6option15Option$LT$T$GT$6map_or17h9f14b55455d5b8b1E"(ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.av, i64 noundef %i.sf, i64 %i.sh, ptr noalias noundef align 8 captures(address) dereferenceable(144) @558, ptr noalias noundef align 8 dereferenceable(8) %i.bt, ptr noalias noundef align 8 dereferenceable(8) %i.db)
          to label %bb.fi unwind label %bb.fg

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.si = load i8, ptr %i.rr, align 8, !range !12413, !noundef !3
  %.not598 = icmp eq i8 %i.si, 2
  %.sroa.0489.0 = select i1 %.not598, ptr %i.rt, ptr %i.rq
  %i.sj = load i64, ptr %.sroa.0489.0, align 8, !noundef !3
  %i.sk = invoke fastcc noundef align 8 dereferenceable(32) ptr @"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h667a0cf67f5f0d5bE"(ptr noalias noundef align 8 dereferenceable(168) %i.lq, i64 noundef %i.sj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2218)
          to label %bb.fj unwind label %.thread996 ; 3 uses

.thread996:                                       ; preds = %bb.fi, %bb.fm
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %.thread992

bb.fj:                                            ; preds = %bb.fi
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.sm, i64 16, i1 false)
  store i8 9, ptr %i.sm, align 8
  %.sroa.4492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sk, i64 18
  store i16 0, ptr %.sroa.4492.0..sroa_idx, align 2
  %.sroa.5493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sk, i64 20
  store i16 0, ptr %.sroa.5493.0..sroa_idx, align 4
  %i.sn = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 16, i64 noundef 8)
          to label %bb.fm unwind label %bb.fk, !noalias !51037 ; 2 uses

bb.fk:                                            ; preds = %bb.fj
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #72
          to label %.thread992 unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.fm:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sn, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.sn, ptr %i.sq, align 8
  store i8 11, ptr %i.at, align 8
  invoke fastcc void @"_ZN95_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..convert..From$LT$rhai..ast..stmt..Stmt$GT$$GT$4from17h0ddbf52a413cc124E"(ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.au, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.at)
          to label %bb.fn unwind label %.thread996

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.sr, ptr noundef nonnull align 8 dereferenceable(144) %i.av, i64 144, i1 false)
  %i.ss = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ss, ptr noundef nonnull align 8 dereferenceable(144) %i.au, i64 144, i1 false)
  %i.st = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 304, i64 noundef 8)
          to label %bb.fq unwind label %bb.fo, !noalias !51040 ; 4 uses

bb.fo:                                            ; preds = %bb.fn
  %i.su = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$rhai..ast..stmt..FlowControl$GT$17h22b456693a9894f5E"(ptr noalias noundef nonnull align 8 dereferenceable(304) %i.aq) #72
          to label %.body637 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.fq:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.st, ptr noundef nonnull align 8 dereferenceable(304) %i.aq, i64 304, i1 false)
  store ptr %i.st, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.sw = invoke fastcc { i16, i16 } @_ZN4rhai3ast4expr4Expr14start_position17h6e2b0253b346af39E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.pre1242)
          to label %bb.fs unwind label %bb.fr     ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  %i.sx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$rhai..ast..stmt..FlowControl$GT$$GT$17h626e5aef2a0de676E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar) #72
          to label %.body637 unwind label %bb.ag

bb.fs:                                            ; preds = %bb.fq
  %i.sy = extractvalue { i16, i16 } %i.sw, 0      ; 2 uses
  %i.sz = extractvalue { i16, i16 } %i.sw, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %bb.fu unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ta = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %0, align 8
  store i16 %i.sy, ptr %i.do, align 2
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.sz, ptr %.sroa.6175.0..sroa_idx, align 4
  store ptr %i.st, ptr %i.dn, align 8
  br label %.body637

bb.fu:                                            ; preds = %bb.fs
  store i8 1, ptr %0, align 8
  store i16 %i.sy, ptr %i.do, align 2
  %.sroa.6175.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.sz, ptr %.sroa.6175.0..sroa_idx176, align 4
  store ptr %i.st, ptr %i.dn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.gd, %bb.fu
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.tb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %.loopexit

.thread992:                                       ; preds = %bb.fk, %.thread996
  %eh.lpad-body644995 = phi { ptr, i32 } [ %i.sl, %.thread996 ], [ %i.so, %bb.fk ]
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.av)
          to label %bb.fw unwind label %bb.ag, !inline_history !13099

bb.fw:                                            ; preds = %bb.fg, %.thread992
  %.pn599.pn.ph = phi { ptr, i32 } [ %i.se, %bb.fg ], [ %eh.lpad-body644995, %.thread992 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #72
          to label %.body637 unwind label %bb.ag

bb.fx:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sd, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.tc, i64 16, i1 false)
  store i8 9, ptr %i.tc, align 8
  %.sroa.4481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sd, i64 18
  store i16 0, ptr %.sroa.4481.0..sroa_idx, align 2
  %.sroa.5482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sd, i64 20
  store i16 0, ptr %.sroa.5482.0..sroa_idx, align 4
  %i.td = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 16, i64 noundef 8)
          to label %bb.ga unwind label %bb.fy, !noalias !51043 ; 2 uses

bb.fy:                                            ; preds = %bb.fx
  %i.te = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #72
          to label %.body637 unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.tf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.ga:                                            ; preds = %bb.fx
end_hunk_0
