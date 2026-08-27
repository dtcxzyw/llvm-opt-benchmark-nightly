Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN15index_scheduler5queue5Queue11write_batch17h896bee4e7a87aee1E:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i", %bb.x
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.el, %bb.x ], [ %.sroa.05.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.en, %bb.x ], [ %.sroa.26.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i" ]
  %i.el = load ptr, ptr %.sroa.0.038.i.i.i.i.i, align 8, !noalias !50251, !noundef !14 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.x

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.x
  %i.em = zext i16 %i.ep to i64
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.en = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 52
  %i.ep = load i16, ptr %i.eo, align 4, !noalias !50251 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 54
  %i.er = load i16, ptr %i.eq, align 2, !noalias !50242, !noundef !14
  %i.es = icmp ult i16 %i.ep, %i.er
  br i1 %i.es, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.y:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i" ], [ %i.em, %._crit_edge.loopexit.i.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i" ], [ %i.en, %._crit_edge.loopexit.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5ac67a6f7fba25a0E.exit.i.i" ], [ %i.el, %._crit_edge.loopexit.i.i.i.i.i ] ; 3 uses
  %i.et = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i, 0
  %i.eu = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i, 1 ; 2 uses
  br i1 %i.et, label %.loopexit1296.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i, i64 72
  %i.ew = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eu ; 2 uses
  %xtraiter983 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i, 7 ; 2 uses
  %lcmp.mod984.not = icmp eq i64 %xtraiter983, 0
  br i1 %lcmp.mod984.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.z, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.ey, %.prol.preheader ], [ %i.ex, %bb.z ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i, %bb.z ]
  %prol.iter985 = phi i64 [ %prol.iter985.next, %.prol.preheader ], [ 0, %bb.z ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !50254, !nonnull !14, !noundef !14 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter985.next = add i64 %prol.iter985, 1   ; 2 uses
  %prol.iter985.cmp.not = icmp eq i64 %prol.iter985.next, %xtraiter983
  br i1 %prol.iter985.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !50258

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.z
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.z ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.ex, %bb.z ], [ %i.ey, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i, %bb.z ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ez = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i, 8
  br i1 %i.ez, label %.loopexit1296.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.fi, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !50254, !nonnull !14, !noundef !14
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 72
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.fa, align 8, !noalias !50254, !nonnull !14, !noundef !14
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 72
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.fb, align 8, !noalias !50254, !nonnull !14, !noundef !14
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 72
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.fc, align 8, !noalias !50254, !nonnull !14, !noundef !14
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 72
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.fd, align 8, !noalias !50254, !nonnull !14, !noundef !14
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 72
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.fe, align 8, !noalias !50254, !nonnull !14, !noundef !14
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 72
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.ff, align 8, !noalias !50254, !nonnull !14, !noundef !14
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 72
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.fg, align 8, !noalias !50254, !nonnull !14, !noundef !14 ; 2 uses
  %i.fh = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 72
  br i1 %i.fh, label %.loopexit1296.i, label %.new

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #80
          to label %.noexc.i.i.i unwind label %bb.ab, !noalias !50259

.noexc.i.i.i:                                     ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit1296.i:                                  ; preds = %.prol.loopexit, %.new, %bb.y
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.eu, %bb.y ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i, %bb.y ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i, i64 56
  %i.fl = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i, 11
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10792.i)
  %i.fn = load i8, ptr %i.fm, align 1, !range !1330, !noalias !50189, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !50263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !50266
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h1630200aad08bd22E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.t, i64 %.val449.i, i32 %.val450.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 range(i8 0, 5) %i.fn)
          to label %.noexc466.i unwind label %.loopexit1298.i, !noalias !50189

.noexc466.i:                                      ; preds = %.loopexit1296.i
  %i.fo = load i64, ptr %i.t, align 8, !range !751, !noalias !50266, !noundef !14
  %i.fp = trunc nuw i64 %i.fo to i1
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.dq, align 8, !noalias !50266 ; 3 uses
  %.sroa.511.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !50266 ; 2 uses
  %.sroa.511.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !50266 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !50266
  br i1 %i.fp, label %.thread1070.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc466.i
  %.not.i.i464.i = icmp eq i64 %.sroa.010.0.copyload.i.i.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i.i.i = select i1 %.not.i.i464.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i.i.i ; 7 uses
  %..sroa.5.sroa.5.0.copyload.i.i.i = select i1 %.not.i.i464.i, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i.i.i ; 9 uses
  %..sroa.08.0.copyload.i.i.i = select i1 %.not.i.i464.i, i64 0, i64 %.sroa.010.0.copyload.i.i.i ; 5 uses
  store i64 %..sroa.08.0.copyload.i.i.i, ptr %i.v, align 8, !noalias !50263
  store ptr %..sroa.5.sroa.026.0.copyload.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !50263
  store i64 %..sroa.5.sroa.5.0.copyload.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !50263
  call void @llvm.experimental.noalias.scope.decl(metadata !50270)
  %i.fq = load i32, ptr %i.bm, align 8, !alias.scope !50273, !noalias !50274, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50275)
  %i.fr = lshr i32 %i.fq, 16
  %i.fs = trunc nuw i32 %i.fr to i16              ; 3 uses
  %i.ft = trunc i32 %i.fq to i16
  switch i64 %..sroa.5.sroa.5.0.copyload.i.i.i, label %.lr.ph.i.i.i.i.i.i [
    i64 0, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i"
    i64 1, label %._crit_edge.i.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ac
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %i.ge, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.fu = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, %..sroa.5.sroa.5.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i ; 7 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 24
  %.val20.i.i.i.i.i.i = load i16, ptr %i.fw, align 8, !alias.scope !50278, !noalias !50283, !noundef !14 ; 2 uses
  %i.fx = icmp eq i16 %.val20.i.i.i.i.i.i, %i.fs
  br i1 %i.fx, label %bb.ae, label %bb.ad

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i
  %.sroa.01.025.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.511.sroa.5.0.copyload.i.i.i, %bb.ac ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.fy = lshr i64 %.sroa.01.025.i.i.i.i.i.i, 1   ; 2 uses
  %i.fz = add i64 %i.fy, %.sroa.05.024.i.i.i.i.i.i ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %..sroa.5.sroa.5.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i.i, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 24
  %.val22.i.i.i.i.i.i = load i16, ptr %i.gc, align 8, !alias.scope !50278, !noalias !50283, !noundef !14
  %i.gd = icmp ugt i16 %.val22.i.i.i.i.i.i, %i.fs
  %i.ge = select i1 %i.gd, i64 %.sroa.05.024.i.i.i.i.i.i, i64 %i.fz, !unpredictable !14 ; 2 uses
  %i.gf = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i, %i.fy ; 2 uses
  %i.gg = icmp ugt i64 %i.gf, 1
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gh = icmp ult i16 %.val20.i.i.i.i.i.i, %i.fs
  %i.gi = zext i1 %i.gh to i64
  %i.gj = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, %i.gi
  %i.gk = icmp ule i64 %i.gj, %..sroa.5.sroa.5.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.gk)
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i"

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gl = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fv, i16 noundef %i.ft)
          to label %.noexc.i465.i unwind label %bb.ak, !noalias !50285

.noexc.i465.i:                                    ; preds = %bb.ae
  br i1 %i.gl, label %bb.af, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i"

bb.af:                                            ; preds = %.noexc.i465.i
  %i.gm = load i64, ptr %i.fv, align 8, !range !2917, !noalias !50286, !noundef !14 ; 3 uses
  %i.gn = icmp eq i64 %i.gm, -9223372036854775808
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !noalias !50286, !noundef !14 ; 2 uses
  br i1 %i.gn, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = icmp ult i64 %i.gp, 4611686018427387904
  call void @llvm.assume(i1 %i.gq)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.03.0.in.i.i.i.i = icmp eq i64 %i.gp, 0
  br i1 %.sroa.03.0.in.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i.i", label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i.i": ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !50287)
  %i.gr = icmp ult i64 %..sroa.5.sroa.5.0.copyload.i.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.gr)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !50290 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.gt = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -1
  %i.gu = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i.i, %i.gt
  %i.gv = shl nuw nsw i64 %i.gu, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fv, ptr nonnull align 8 %i.gs, i64 %i.gv, i1 false), !noalias !50292
  %i.gw = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i.i, -1 ; 4 uses
  store i64 %i.gw, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !alias.scope !50294, !noalias !50295
  switch i64 %i.gm, label %bb.ai [
    i64 -9223372036854775808, label %bb.aj
    i64 0, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i"
  ]

bb.ai:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i.i"
  %i.gx = shl nuw i64 %i.gm, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50286
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i"

bb.aj:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50286
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i"

bb.ak:                                            ; preds = %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i", %bb.ae
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #81, !noalias !50285
  br label %.body467.i

"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i": ; preds = %bb.aj, %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i.i", %bb.ah, %.noexc.i465.i, %bb.ad, %bb.ac
  %i.gz = phi i64 [ %..sroa.5.sroa.5.0.copyload.i.i.i, %bb.ac ], [ %.sroa.511.sroa.5.0.copyload.i.i.i, %bb.ad ], [ %.sroa.511.sroa.5.0.copyload.i.i.i, %.noexc.i465.i ], [ %.sroa.511.sroa.5.0.copyload.i.i.i, %bb.ah ], [ %i.gw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i.i" ], [ %i.gw, %bb.ai ], [ %i.gw, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !50263
  invoke fastcc void @_ZN15index_scheduler5queue7batches10BatchQueue10put_status17hff9b36f14b8cc5d0E(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.u, i64 %.val449.i, i32 %.val450.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, i8 noundef range(i8 0, 5) %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.al unwind label %bb.ak, !noalias !50296

bb.al:                                            ; preds = %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h0312f9f9e8493166E.exit.i.i"
  %i.ha = load i64, ptr %i.u, align 8, !range !2843, !noalias !50263, !noundef !14 ; 3 uses
  %.not14.i.i = icmp eq i64 %i.ha, 152
  br i1 %.not14.i.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.6789.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6789.0.copyload.i = load i64, ptr %.sroa.6789.0..sroa_idx.i, align 8, !noalias !50297 ; 2 uses
  %.sroa.8790.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.8790.0.copyload.i = load ptr, ptr %.sroa.8790.0..sroa_idx.i, align 8, !noalias !50297 ; 2 uses
  %.sroa.9791.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.9791.0.copyload.i = load i64, ptr %.sroa.9791.0..sroa_idx.i, align 8, !noalias !50297 ; 2 uses
  %.sroa.10792.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.10792.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.10792.0..sroa_idx.i, i64 312, i1 false), !noalias !50297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !50263
  call void @llvm.experimental.noalias.scope.decl(metadata !50298)
  %i.hb = icmp eq i64 %i.gz, 0
  br i1 %i.hb, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i", label %.lr.ph.i.i.i.i20.i.i

.lr.ph.i.i.i.i20.i.i:                             ; preds = %bb.am, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.hd, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i" ], [ 0, %bb.am ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.hd = add nuw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.hc, align 8, !range !2917, !alias.scope !50298, !noalias !50301, !noundef !14 ; 2 uses
  %i.he = getelementptr i8, ptr %i.hc, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.he, align 8, !alias.scope !50298, !noalias !50301 ; 4 uses
  switch i64 %.val8.i.i.i.i.i.i, label %bb.an [
    i64 -9223372036854775808, label %bb.ao
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i"
  ]

bb.an:                                            ; preds = %.lr.ph.i.i.i.i20.i.i
  %i.hf = shl nuw i64 %.val8.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %i.hf, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50306
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i"

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i20.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50306
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i": ; preds = %bb.ao, %bb.an, %.lr.ph.i.i.i.i20.i.i
  %i.hg = icmp eq i64 %i.hd, %i.gz
  br i1 %i.hg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i", label %.lr.ph.i.i.i.i20.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i", %bb.am
  %i.hh = icmp eq i64 %..sroa.08.0.copyload.i.i.i, 0
  br i1 %i.hh, label %.thread1070.i, label %bb.ap

bb.ap:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i"
  %i.hi = shl nuw i64 %..sroa.08.0.copyload.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i.i, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !50301
  br label %.thread1070.i

bb.aq:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !50263
  call void @llvm.experimental.noalias.scope.decl(metadata !50307)
  %i.hj = icmp eq i64 %i.gz, 0
  br i1 %i.hj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i28.i.i", label %.lr.ph.i.i.i.i23.i.i

.lr.ph.i.i.i.i23.i.i:                             ; preds = %bb.aq, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i27.i.i"
  %.sroa.0.010.i.i.i.i24.i.i = phi i64 [ %i.hl, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i27.i.i" ], [ 0, %bb.aq ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i.i, i64 %.sroa.0.010.i.i.i.i24.i.i ; 2 uses
  %i.hl = add nuw i64 %.sroa.0.010.i.i.i.i24.i.i, 1 ; 2 uses
  %.val8.i.i.i.i25.i.i = load i64, ptr %i.hk, align 8, !range !2917, !alias.scope !50307, !noalias !50310, !noundef !14 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hk, i64 8
  %.val9.i.i.i.i26.i.i = load ptr, ptr %i.hm, align 8, !alias.scope !50307, !noalias !50310 ; 4 uses
  switch i64 %.val8.i.i.i.i25.i.i, label %bb.ar [
    i64 -9223372036854775808, label %bb.as
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i27.i.i"
  ]

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i23.i.i
  %i.hn = shl nuw i64 %.val8.i.i.i.i25.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i26.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i26.i.i, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50315
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i27.i.i"

bb.as:                                            ; preds = %.lr.ph.i.i.i.i23.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i26.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i26.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50315
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i27.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i27.i.i": ; preds = %bb.as, %bb.ar, %.lr.ph.i.i.i.i23.i.i
  %i.ho = icmp eq i64 %i.hl, %i.gz
  br i1 %i.ho, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i28.i.i", label %.lr.ph.i.i.i.i23.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i28.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i27.i.i", %bb.aq
  %i.hp = icmp eq i64 %..sroa.08.0.copyload.i.i.i, 0
  br i1 %i.hp, label %.thread1064.i, label %bb.at

bb.at:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i28.i.i"
  %i.hq = shl nuw i64 %..sroa.08.0.copyload.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i.i, i64 noundef %i.hq, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !50310
  br label %.thread1064.i

.thread1064.i:                                    ; preds = %bb.at, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i28.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !50263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10792.i)
  %i.hr = icmp eq i64 %i.dr, 0
  br i1 %i.hr, label %.loopexit1297.i, label %bb.v

.thread1070.i:                                    ; preds = %.noexc466.i, %bb.ap, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i"
  %.sroa.0788.01079.i = phi i64 [ %i.ha, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i" ], [ %i.ha, %bb.ap ], [ 127, %.noexc466.i ]
  %.sroa.6789.01078.i = phi i64 [ %.sroa.6789.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i" ], [ %.sroa.6789.0.copyload.i, %bb.ap ], [ %.sroa.010.0.copyload.i.i.i, %.noexc466.i ] ; 2 uses
  %.sroa.8790.01077.i = phi ptr [ %.sroa.8790.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i" ], [ %.sroa.8790.0.copyload.i, %bb.ap ], [ %.sroa.511.sroa.0.0.copyload.i.i.i, %.noexc466.i ]
  %.sroa.9791.01076.i = phi i64 [ %.sroa.9791.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i" ], [ %.sroa.9791.0.copyload.i, %bb.ap ], [ %.sroa.511.sroa.5.0.copyload.i.i.i, %.noexc466.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !50263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.53, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.10792.i, i64 312, i1 false), !noalias !50223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10792.i)
  %.sroa.23.sroa.0.0.extract.trunc38 = trunc i64 %.sroa.6789.01078.i to i32
  %.sroa.23.sroa.21.0.extract.shift57 = lshr i64 %.sroa.6789.01078.i, 32
  %.sroa.23.sroa.21.0.extract.trunc58 = trunc nuw i64 %.sroa.23.sroa.21.0.extract.shift57 to i32
  br label %"_ZN4core3ptr96drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..tasks..Kind$GT$$GT$17h7e93e4001e8cc3b0E.exit766.i"

"_ZN4core3ptr96drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..tasks..Kind$GT$$GT$17h7e93e4001e8cc3b0E.exit766.i": ; preds = %bb.hm, %bb.hl, %.thread1245.i, %bb.hj, %.loopexit1290.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i", %bb.gy, %bb.gu, %bb.gr, %bb.gn, %bb.gi, %bb.gf, %bb.gb, %bb.fx, %bb.fu, %bb.es, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i", %.thread1070.i
  %.sroa.23.sroa.21.0 = phi i32 [ %.sroa.23.sroa.21.0.extract.trunc74, %bb.gy ], [ %.sroa.23.sroa.21.0.extract.trunc72, %bb.gu ], [ %.sroa.23.sroa.21.0.extract.trunc70, %bb.gr ], [ %.sroa.23.sroa.21.0.extract.trunc68, %bb.gn ], [ %.sroa.23.sroa.21.0.extract.trunc66, %bb.gi ], [ %.sroa.23.sroa.21.0.extract.trunc64, %bb.gf ], [ %.sroa.23.sroa.21.0.extract.trunc76, %bb.gb ], [ %.sroa.23.sroa.21.0.extract.trunc62, %bb.fx ], [ %.sroa.23.sroa.21.0.extract.trunc60, %bb.fu ], [ %.sroa.7899.sroa.6.0.insert.insert.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i" ], [ %.sroa.8881.sroa.6.0.insert.insert.i, %bb.es ], [ %.sroa.23.sroa.21.0.extract.trunc52, %.loopexit1290.i ], [ %.sroa.23.sroa.21.0.extract.trunc52, %bb.hj ], [ %.sroa.23.sroa.21.0.extract.trunc50, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i" ], [ %.sroa.23.sroa.21.0.extract.trunc, %.thread1245.i ], [ %.sroa.23.sroa.21.0.extract.trunc, %bb.hl ], [ %.sroa.23.sroa.21.0.extract.trunc58, %.thread1070.i ], [ %.sroa.23.sroa.21.4.copyload, %bb.hm ]
  %.sroa.23.sroa.0.0 = phi i32 [ %.sroa.23.sroa.0.0.extract.trunc46, %bb.gy ], [ %.sroa.23.sroa.0.0.extract.trunc45, %bb.gu ], [ %.sroa.23.sroa.0.0.extract.trunc44, %bb.gr ], [ %.sroa.23.sroa.0.0.extract.trunc43, %bb.gn ], [ %.sroa.23.sroa.0.0.extract.trunc42, %bb.gi ], [ %.sroa.23.sroa.0.0.extract.trunc41, %bb.gf ], [ %.sroa.23.sroa.0.0.extract.trunc47, %bb.gb ], [ %.sroa.23.sroa.0.0.extract.trunc40, %bb.fx ], [ %.sroa.23.sroa.0.0.extract.trunc39, %bb.fu ], [ %.sroa.7899.sroa.0.1.ph.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i" ], [ %.sroa.8881.sroa.0.1.ph.i, %bb.es ], [ %.sroa.23.sroa.0.0.extract.trunc35, %.loopexit1290.i ], [ %.sroa.23.sroa.0.0.extract.trunc35, %bb.hj ], [ %.sroa.23.sroa.0.0.extract.trunc34, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i" ], [ %.sroa.23.sroa.0.0.extract.trunc, %.thread1245.i ], [ %.sroa.23.sroa.0.0.extract.trunc, %bb.hl ], [ %.sroa.23.sroa.0.0.extract.trunc38, %.thread1070.i ], [ %i.cq, %bb.hm ]
  %.sroa.47.0 = phi i64 [ %.sroa.47.8.copyload31, %bb.gy ], [ %.sroa.47.8.copyload30, %bb.gu ], [ %.sroa.47.8.copyload29, %bb.gr ], [ %.sroa.47.8.copyload28, %bb.gn ], [ %.sroa.47.8.copyload27, %bb.gi ], [ %.sroa.47.8.copyload26, %bb.gf ], [ %.sroa.47.8.copyload32, %bb.gb ], [ %.sroa.47.8.copyload25, %bb.fx ], [ %.sroa.47.8.copyload, %bb.fu ], [ %.sroa.14903.1.ph.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i" ], [ %.sroa.15885.1.ph.i, %bb.es ], [ %.sroa.10870.0.ph.i, %.loopexit1290.i ], [ %.sroa.10870.0.ph.i, %bb.hj ], [ %.sroa.10838.0.ph.i, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i" ], [ %.sroa.9816.01251.i, %.thread1245.i ], [ %.sroa.9816.01251.i, %bb.hl ], [ %.sroa.9791.01076.i, %.thread1070.i ], [ %.sroa.47.12.copyload, %bb.hm ]
  %.sroa.41.0 = phi ptr [ %.sroa.41.8.copyload22, %bb.gy ], [ %.sroa.41.8.copyload21, %bb.gu ], [ %.sroa.41.8.copyload20, %bb.gr ], [ %.sroa.41.8.copyload19, %bb.gn ], [ %.sroa.41.8.copyload18, %bb.gi ], [ %.sroa.41.8.copyload17, %bb.gf ], [ %.sroa.41.8.copyload23, %bb.gb ], [ %.sroa.41.8.copyload16, %bb.fx ], [ %.sroa.41.8.copyload, %bb.fu ], [ %.sroa.13901.1.ph.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i" ], [ %.sroa.14883.1.ph.i, %bb.es ], [ %.sroa.9868.0.ph.i, %.loopexit1290.i ], [ %.sroa.9868.0.ph.i, %bb.hj ], [ %.sroa.9836.0.ph.i, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i" ], [ %.sroa.8815.01252.i, %.thread1245.i ], [ %.sroa.8815.01252.i, %bb.hl ], [ %.sroa.8790.01077.i, %.thread1070.i ], [ %.sroa.41.12.copyload, %bb.hm ]
  %.sroa.0.0 = phi i64 [ %i.afv, %bb.gy ], [ %i.afo, %bb.gu ], [ %i.afn, %bb.gr ], [ %i.afd, %bb.gn ], [ %i.aer, %bb.gi ], [ %i.aeo, %bb.gf ], [ %i.aeh, %bb.gb ], [ %i.adv, %bb.fx ], [ %i.adt, %bb.fu ], [ 127, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i" ], [ 127, %bb.es ], [ 127, %.loopexit1290.i ], [ 127, %bb.hj ], [ 127, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i" ], [ %.sroa.0813.01254.i, %.thread1245.i ], [ %.sroa.0813.01254.i, %bb.hl ], [ %.sroa.0788.01079.i, %.thread1070.i ], [ 127, %bb.hm ]
  %.sroa.0134.5.i = phi i8 [ 0, %bb.gy ], [ 0, %bb.gu ], [ 0, %bb.gr ], [ 0, %bb.gn ], [ 0, %bb.gi ], [ 0, %bb.gf ], [ 0, %bb.gb ], [ 0, %bb.fx ], [ 0, %bb.fu ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i" ], [ 0, %bb.es ], [ 0, %.loopexit1290.i ], [ 0, %bb.hj ], [ 0, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i" ], [ 0, %.thread1245.i ], [ 0, %bb.hl ], [ 1, %.thread1070.i ], [ 1, %bb.hm ] ; 2 uses
  %.sroa.0131.5.i = phi i8 [ 0, %bb.gy ], [ 0, %bb.gu ], [ 0, %bb.gr ], [ 0, %bb.gn ], [ 0, %bb.gi ], [ 0, %bb.gf ], [ 0, %bb.gb ], [ 0, %bb.fx ], [ 0, %bb.fu ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i" ], [ 0, %bb.es ], [ 0, %.loopexit1290.i ], [ 0, %bb.hj ], [ 1, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i" ], [ 1, %.thread1245.i ], [ 1, %bb.hl ], [ 1, %.thread1070.i ], [ 1, %bb.hm ] ; 2 uses
  %.sroa.0128.5.i = phi i8 [ 0, %bb.gy ], [ 0, %bb.gu ], [ 0, %bb.gr ], [ 0, %bb.gn ], [ 0, %bb.gi ], [ 0, %bb.gf ], [ 0, %bb.gb ], [ 0, %bb.fx ], [ 0, %bb.fu ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit761.i" ], [ 1, %bb.es ], [ 1, %.loopexit1290.i ], [ 1, %bb.hj ], [ 1, %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i" ], [ 1, %.thread1245.i ], [ 1, %bb.hl ], [ 1, %.thread1070.i ], [ 1, %bb.hm ] ; 2 uses
  %i.hs = load i64, ptr %i.be, align 8, !range !802, !alias.scope !50316, !noalias !50196, !noundef !14
  %i.ht = icmp eq i64 %i.hs, 2
  br i1 %i.ht, label %bb.hn, label %bb.au

bb.au:                                            ; preds = %"_ZN4core3ptr96drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..tasks..Kind$GT$$GT$17h7e93e4001e8cc3b0E.exit766.i"
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$meilisearch_types..batches..Batch$GT$17h3d5ad313a30e270bE"(ptr noalias noundef nonnull align 8 dereferenceable(1264) %i.be)
          to label %bb.hn unwind label %.thread1045.i, !noalias !50189

bb.av:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i, %.loopexit1297.i
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.dg, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %.loopexit1297.i ] ; 6 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi ptr [ %i.dk, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %.loopexit1297.i ] ; 6 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ 0, %.loopexit1297.i ] ; 3 uses
  %i.hu = icmp eq i64 %.sroa.31024.0.copyload.i, 0
  br i1 %i.hu, label %._crit_edge.i, label %.lr.ph1437.i

.lr.ph1437.i:                                     ; preds = %bb.av
  %i.hv = icmp sgt <16 x i8> %.val13.i.i.i.i, splat (i8 -1)
  %i.hw = bitcast <16 x i1> %i.hv to i16
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.01022.0.copyload.i, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val451.i = load i64, ptr %i.hy, align 8, !alias.scope !50193, !noalias !50198, !noundef !14 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val452.i = load i32, ptr %i.hz, align 8, !alias.scope !50193, !noalias !50198 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.511.0..sroa_idx.i.i477.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i479.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.417.0..sroa_idx.i485.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.sroa.518.0..sroa_idx.i486.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.thread1239.i, %.lr.ph1437.i
  %.sroa.13.01436.i = phi ptr [ %.sroa.01022.0.copyload.i, %.lr.ph1437.i ], [ %.sroa.13.1.i, %.thread1239.i ] ; 2 uses
  %.sroa.16.01435.i = phi ptr [ %i.hx, %.lr.ph1437.i ], [ %.sroa.16.1.i, %.thread1239.i ] ; 2 uses
  %.sroa.18802.01434.i = phi i16 [ %i.hw, %.lr.ph1437.i ], [ %i.il, %.thread1239.i ] ; 2 uses
  %.sroa.20804.01433.i = phi i64 [ %.sroa.31024.0.copyload.i, %.lr.ph1437.i ], [ %i.io, %.thread1239.i ]
  %.not13.i.i.i = icmp eq i16 %.sroa.18802.01434.i, 0
  br i1 %.not13.i.i.i, label %.lr.ph.i.i472.i, label %.loopexit1295.i

.lr.ph.i.i472.i:                                  ; preds = %bb.aw, %.lr.ph.i.i472.i
  %i.ib = phi ptr [ %i.if, %.lr.ph.i.i472.i ], [ %.sroa.16.01435.i, %bb.aw ] ; 2 uses
  %i.ic = phi ptr [ %i.ie, %.lr.ph.i.i472.i ], [ %.sroa.13.01436.i, %bb.aw ]
  %.val911.i.i.i = load <16 x i8>, ptr %i.ib, align 16, !noalias !50319
  %i.id = icmp sgt <16 x i8> %.val911.i.i.i, splat (i8 -1)
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 -16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN15index_scheduler5queue5Queue11write_batch17h896bee4e7a87aee1E:bb.a
  %i.pa = load ptr, ptr %i.ny, align 8, !nonnull !14 ; 2 uses
  br label %bb.cc

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i": ; preds = %.lr.ph.i.i7.i.i
  %i.pb = icmp eq i64 %i.pp, 0
  br i1 %i.pb, label %.loopexit1291.i, label %bb.cc

bb.cc:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i", %.lr.ph.split.i.i
  %.sroa.7827.1.i = phi ptr [ %.sroa.7827.01440.i, %.lr.ph.split.i.i ], [ %.sroa.7827.2.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i" ]
  %.sroa.0826.1.i = phi ptr [ %.sroa.0826.01441.i, %.lr.ph.split.i.i ], [ %.sroa.0826.2.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i" ]
  %.lcssa27.i.i = phi ptr [ %.sroa.7827.01440.i, %.lr.ph.split.i.i ], [ %.lcssa26.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i" ] ; 2 uses
  %i.pc = phi i16 [ %.sroa.10829.01439.i, %.lr.ph.split.i.i ], [ %i.pm, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i" ] ; 2 uses
  %i.pd = phi i64 [ %.sroa.13831.01438.i, %.lr.ph.split.i.i ], [ %i.pp, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i" ]
  %.lcssa172122.i.i = phi ptr [ %.sroa.0826.01441.i, %.lr.ph.split.i.i ], [ %.lcssa1720.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i" ] ; 2 uses
  %.not13.i.i.i.i = icmp eq i16 %i.pc, 0
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge20.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cc, %.lr.ph.i.i.i.i
  %i.pe = phi ptr [ %i.pi, %.lr.ph.i.i.i.i ], [ %.lcssa27.i.i, %bb.cc ] ; 2 uses
  %i.pf = phi ptr [ %i.ph, %.lr.ph.i.i.i.i ], [ %.lcssa172122.i.i, %bb.cc ]
  %.val911.i.i.i.i = load <16 x i8>, ptr %i.pe, align 16, !noalias !50497
  %i.pg = icmp sgt <16 x i8> %.val911.i.i.i.i, splat (i8 -1)
  %i.ph = getelementptr inbounds i8, ptr %i.pf, i64 -16 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 3 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.pg to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge20.i.i.i.i

._crit_edge20.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i, %bb.cc
  %.sroa.7827.2.i = phi ptr [ %.sroa.7827.1.i, %bb.cc ], [ %i.pi, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.0826.2.i = phi ptr [ %.sroa.0826.1.i, %bb.cc ], [ %i.ph, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa26.i.i = phi ptr [ %.lcssa27.i.i, %bb.cc ], [ %i.pi, %.lr.ph.i.i.i.i ]
  %.lcssa1720.i.i = phi ptr [ %.lcssa172122.i.i, %bb.cc ], [ %i.ph, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.pc, %bb.cc ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.pj = add i16 %.lcssa.i.i.i.i, -1
  %i.pk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.pl = zext nneg i16 %i.pk to i64
  %i.pm = and i16 %i.pj, %.lcssa.i.i.i.i          ; 2 uses
  %i.pn = sub nsw i64 0, %i.pl
  %i.po = getelementptr inbounds i8, ptr %.lcssa1720.i.i, i64 %i.pn
  %i.pp = add i64 %i.pd, -1                       ; 3 uses
  %i.pq = getelementptr inbounds i8, ptr %i.po, i64 -1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50502)
  call void @llvm.experimental.noalias.scope.decl(metadata !50503)
  %i.pr = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h925cdc3236cefae1E(i64 %.val.i.i.i, i64 %.val5.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.pq), !noalias !50504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50505)
  %i.ps = lshr i64 %i.pr, 57
  %i.pt = trunc nuw nsw i64 %i.ps to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.pt, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i = load i8, ptr %i.pq, align 1, !range !4559, !alias.scope !50508, !noalias !50509 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cf, %._crit_edge20.i.i.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %._crit_edge20.i.i.i.i ], [ %i.qk, %bb.cf ]
  %.pn.i.i.i.i = phi i64 [ %i.pr, %._crit_edge20.i.i.i.i ], [ %i.ql, %bb.cf ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.oz ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pa, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.pu, align 1, !noalias !50511 ; 2 uses
  %i.pv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.pw = bitcast <16 x i1> %i.pv to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.pw, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i8.i.i, label %.lr.ph.i.i7.i.i

.lr.ph.i.i7.i.i:                                  ; preds = %bb.cd, %bb.ce
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.qj, %bb.ce ], [ %i.pw, %bb.cd ] ; 3 uses
  %i.px = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.py = zext nneg i16 %i.px to i64
  %i.pz = add i64 %.sroa.01.0.i.i.i.i.i, %i.py
  %i.qa = and i64 %i.pz, %i.oz
  %i.qb = sub nsw i64 0, %i.qa
  %i.qc = getelementptr inbounds i8, ptr %i.pa, i64 %i.qb
  %i.qd = getelementptr inbounds i8, ptr %i.qc, i64 -1
  %.val3.i.i.i.i.i = load i8, ptr %i.qd, align 1, !range !4559, !noalias !50517, !noundef !14
  %i.qe = icmp eq i8 %.val.i.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.qe, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i", label %bb.ce, !prof !15

._crit_edge.i.i8.i.i:                             ; preds = %bb.ce, %bb.cd
  %i.qf = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.qg = bitcast <16 x i1> %i.qf to i16
  %i.qh = icmp eq i16 %i.qg, 0
  br i1 %i.qh, label %bb.cf, label %"_ZN111_$LT$std..collections..hash..set..Difference$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea37fa178b5f8919E.exit.i", !prof !121

bb.ce:                                            ; preds = %.lr.ph.i.i7.i.i
  %i.qi = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.qj = and i16 %i.qi, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.qj, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i8.i.i, label %.lr.ph.i.i7.i.i

bb.cf:                                            ; preds = %._crit_edge.i.i8.i.i
  %i.qk = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.ql = add i64 %.sroa.01.0.i.i.i.i.i, %i.qk
  br label %bb.cd

"_ZN111_$LT$std..collections..hash..set..Difference$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea37fa178b5f8919E.exit.i": ; preds = %._crit_edge.i.i8.i.i, %._crit_edge20.i.i.us.i.i
  %i.qm = phi i8 [ %.pre.i, %._crit_edge20.i.i.us.i.i ], [ %.val.i.i.i.i.i.i, %._crit_edge.i.i8.i.i ] ; 2 uses
  %.sroa.13831.1.i = phi i64 [ %i.ox, %._crit_edge20.i.i.us.i.i ], [ %i.pp, %._crit_edge.i.i8.i.i ] ; 2 uses
  %.sroa.10829.1.i = phi i16 [ %i.ou, %._crit_edge20.i.i.us.i.i ], [ %i.pm, %._crit_edge.i.i8.i.i ]
  %.sroa.7827.4.i = phi ptr [ %.sroa.7827.3.i, %._crit_edge20.i.i.us.i.i ], [ %.sroa.7827.2.i, %._crit_edge.i.i8.i.i ]
  %.sroa.0826.4.i = phi ptr [ %.sroa.0826.3.i, %._crit_edge20.i.i.us.i.i ], [ %.sroa.0826.2.i, %._crit_edge.i.i8.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !50520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !50523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !50526
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h626f7dffaa513beaE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.n, i64 %.val453.i, i32 %.val454.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 range(i8 0, 18) %i.qm)
          to label %.noexc563.i unwind label %bb.cb, !noalias !50189

.noexc563.i:                                      ; preds = %"_ZN111_$LT$std..collections..hash..set..Difference$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea37fa178b5f8919E.exit.i"
  %i.qn = load i64, ptr %i.n, align 8, !range !751, !noalias !50526, !noundef !14
  %i.qo = trunc nuw i64 %i.qn to i1
  %.sroa.010.0.copyload.i.i533.i = load i64, ptr %i.oj, align 8, !noalias !50526 ; 3 uses
  %.sroa.511.sroa.0.0.copyload.i.i535.i = load ptr, ptr %.sroa.511.0..sroa_idx.i.i534.i, align 8, !noalias !50526 ; 2 uses
  %.sroa.511.sroa.5.0.copyload.i.i537.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i536.i, align 8, !noalias !50526 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !50526
  br i1 %i.qo, label %.loopexit1293.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc563.i
  %.not.i.i538.i = icmp eq i64 %.sroa.010.0.copyload.i.i533.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i.i539.i = select i1 %.not.i.i538.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i.i535.i ; 7 uses
  %..sroa.5.sroa.5.0.copyload.i.i540.i = select i1 %.not.i.i538.i, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i.i537.i ; 9 uses
  %..sroa.08.0.copyload.i.i541.i = select i1 %.not.i.i538.i, i64 0, i64 %.sroa.010.0.copyload.i.i533.i ; 5 uses
  store i64 %..sroa.08.0.copyload.i.i541.i, ptr %i.o, align 8, !noalias !50523
  store ptr %..sroa.5.sroa.026.0.copyload.i.i539.i, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !50523
  store i64 %..sroa.5.sroa.5.0.copyload.i.i540.i, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !50523
  call void @llvm.experimental.noalias.scope.decl(metadata !50530)
  %i.qp = load i32, ptr %i.bm, align 8, !alias.scope !50533, !noalias !50534, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50535)
  %i.qq = lshr i32 %i.qp, 16
  %i.qr = trunc nuw i32 %i.qq to i16              ; 3 uses
  %i.qs = trunc i32 %i.qp to i16
  switch i64 %..sroa.5.sroa.5.0.copyload.i.i540.i, label %.lr.ph.i.i.i.i.i556.i [
    i64 0, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i"
    i64 1, label %._crit_edge.i.i.i.i.i542.i
  ]

._crit_edge.i.i.i.i.i542.i:                       ; preds = %.lr.ph.i.i.i.i.i556.i, %bb.cg
  %.sroa.05.0.lcssa.i.i.i.i.i543.i = phi i64 [ 0, %bb.cg ], [ %i.rd, %.lr.ph.i.i.i.i.i556.i ] ; 4 uses
  %i.qt = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i543.i, %..sroa.5.sroa.5.0.copyload.i.i540.i
  call void @llvm.assume(i1 %i.qt)
  %i.qu = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i539.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i543.i ; 7 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 24
  %.val20.i.i.i.i.i544.i = load i16, ptr %i.qv, align 8, !alias.scope !50538, !noalias !50543, !noundef !14 ; 2 uses
  %i.qw = icmp eq i16 %.val20.i.i.i.i.i544.i, %i.qr
  br i1 %i.qw, label %bb.ci, label %bb.ch

.lr.ph.i.i.i.i.i556.i:                            ; preds = %bb.cg, %.lr.ph.i.i.i.i.i556.i
  %.sroa.01.025.i.i.i.i.i557.i = phi i64 [ %i.re, %.lr.ph.i.i.i.i.i556.i ], [ %.sroa.511.sroa.5.0.copyload.i.i537.i, %bb.cg ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i558.i = phi i64 [ %i.rd, %.lr.ph.i.i.i.i.i556.i ], [ 0, %bb.cg ] ; 2 uses
  %i.qx = lshr i64 %.sroa.01.025.i.i.i.i.i557.i, 1 ; 2 uses
  %i.qy = add i64 %i.qx, %.sroa.05.024.i.i.i.i.i558.i ; 3 uses
  %i.qz = icmp ult i64 %i.qy, %..sroa.5.sroa.5.0.copyload.i.i540.i
  call void @llvm.assume(i1 %i.qz)
  %i.ra = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i539.i, i64 %i.qy
  %i.rb = getelementptr i8, ptr %i.ra, i64 24
  %.val22.i.i.i.i.i559.i = load i16, ptr %i.rb, align 8, !alias.scope !50538, !noalias !50543, !noundef !14
  %i.rc = icmp ugt i16 %.val22.i.i.i.i.i559.i, %i.qr
  %i.rd = select i1 %i.rc, i64 %.sroa.05.024.i.i.i.i.i558.i, i64 %i.qy, !unpredictable !14 ; 2 uses
  %i.re = sub nuw i64 %.sroa.01.025.i.i.i.i.i557.i, %i.qx ; 2 uses
  %i.rf = icmp ugt i64 %i.re, 1
  br i1 %i.rf, label %.lr.ph.i.i.i.i.i556.i, label %._crit_edge.i.i.i.i.i542.i

bb.ch:                                            ; preds = %._crit_edge.i.i.i.i.i542.i
  %i.rg = icmp ult i16 %.val20.i.i.i.i.i544.i, %i.qr
  %i.rh = zext i1 %i.rg to i64
  %i.ri = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i543.i, %i.rh
  %i.rj = icmp ule i64 %i.ri, %..sroa.5.sroa.5.0.copyload.i.i540.i
  call void @llvm.assume(i1 %i.rj)
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i"

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i.i542.i
  %i.rk = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.qu, i16 noundef %i.qs)
          to label %.noexc.i551.i unwind label %bb.co, !noalias !50545

.noexc.i551.i:                                    ; preds = %bb.ci
  br i1 %i.rk, label %bb.cj, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i"

bb.cj:                                            ; preds = %.noexc.i551.i
  %i.rl = load i64, ptr %i.qu, align 8, !range !2917, !noalias !50546, !noundef !14 ; 3 uses
  %i.rm = icmp eq i64 %i.rl, -9223372036854775808
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.ro = load i64, ptr %i.rn, align 8, !noalias !50546, !noundef !14 ; 2 uses
  br i1 %i.rm, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rp = icmp ult i64 %i.ro, 4611686018427387904
  call void @llvm.assume(i1 %i.rp)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.03.0.in.i.i.i552.i = icmp eq i64 %i.ro, 0
  br i1 %.sroa.03.0.in.i.i.i552.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i553.i", label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i553.i": ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !50547)
  %i.rq = icmp ult i64 %..sroa.5.sroa.5.0.copyload.i.i540.i, 288230376151711744
  call void @llvm.assume(i1 %i.rq)
  %.sroa.4.0..sroa_idx.i.i.i554.i = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %.sroa.4.0.copyload.i.i.i555.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i554.i, align 8, !noalias !50550 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  %i.rs = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i543.i, -1
  %i.rt = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i540.i, %i.rs
  %i.ru = shl nuw nsw i64 %i.rt, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qu, ptr nonnull align 8 %i.rr, i64 %i.ru, i1 false), !noalias !50552
  %i.rv = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i540.i, -1 ; 4 uses
  store i64 %i.rv, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !alias.scope !50554, !noalias !50555
  switch i64 %i.rl, label %bb.cm [
    i64 -9223372036854775808, label %bb.cn
    i64 0, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i"
  ]

bb.cm:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i553.i"
  %i.rw = shl nuw i64 %i.rl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i555.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i555.i, i64 noundef %i.rw, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50546
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i"

bb.cn:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i553.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i555.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i555.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50546
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i"

bb.co:                                            ; preds = %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i", %bb.ci
  %i.rx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #81, !noalias !50545
  br label %.body564.i

"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i": ; preds = %bb.cn, %bb.cm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i553.i", %bb.cl, %.noexc.i551.i, %bb.ch, %bb.cg
  %i.ry = phi i64 [ %..sroa.5.sroa.5.0.copyload.i.i540.i, %bb.cg ], [ %.sroa.511.sroa.5.0.copyload.i.i537.i, %bb.ch ], [ %.sroa.511.sroa.5.0.copyload.i.i537.i, %.noexc.i551.i ], [ %.sroa.511.sroa.5.0.copyload.i.i537.i, %bb.cl ], [ %i.rv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i553.i" ], [ %i.rv, %bb.cm ], [ %i.rv, %bb.cn ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !50556
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h6c35809cf94f65a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, i64 %.val453.i, i32 %.val454.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, i8 range(i8 0, 18) %i.qm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %.noexc22.i.i unwind label %bb.co, !noalias !50561

.noexc22.i.i:                                     ; preds = %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h2e8a36e4d8abc710E.exit.i.i"
  %i.rz = load i32, ptr %i.m, align 8, !range !33282, !noalias !50556, !noundef !14
  %.not.i20.i.i = icmp eq i32 %i.rz, 5
  br i1 %.not.i20.i.i, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %.noexc22.i.i
  %.sroa.6834.8.copyload835.i = load i64, ptr %i.m, align 8, !noalias !50562 ; 2 uses
  %.sroa.9836.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.9836.8.copyload837.i = load ptr, ptr %.sroa.9836.8..sroa_idx.i, align 8, !noalias !50562 ; 2 uses
  %.sroa.10838.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.10838.8.copyload839.i = load i64, ptr %.sroa.10838.8..sroa_idx.i, align 8, !noalias !50562 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !50556
  call void @llvm.experimental.noalias.scope.decl(metadata !50563)
  %i.sa = icmp eq i64 %i.ry, 0
  br i1 %i.sa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i550.i", label %.lr.ph.i.i.i.i23.i545.i

.lr.ph.i.i.i.i23.i545.i:                          ; preds = %bb.cp, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i549.i"
  %.sroa.0.010.i.i.i.i.i546.i = phi i64 [ %i.sc, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i549.i" ], [ 0, %bb.cp ] ; 2 uses
  %i.sb = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i539.i, i64 %.sroa.0.010.i.i.i.i.i546.i ; 2 uses
  %i.sc = add nuw i64 %.sroa.0.010.i.i.i.i.i546.i, 1 ; 2 uses
  %.val8.i.i.i.i.i547.i = load i64, ptr %i.sb, align 8, !range !2917, !alias.scope !50563, !noalias !50566, !noundef !14 ; 2 uses
  %i.sd = getelementptr i8, ptr %i.sb, i64 8
  %.val9.i.i.i.i.i548.i = load ptr, ptr %i.sd, align 8, !alias.scope !50563, !noalias !50566 ; 4 uses
  switch i64 %.val8.i.i.i.i.i547.i, label %bb.cq [
    i64 -9223372036854775808, label %bb.cr
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i549.i"
  ]

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i23.i545.i
  %i.se = shl nuw i64 %.val8.i.i.i.i.i547.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i548.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i548.i, i64 noundef %i.se, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50571
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i549.i"

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i23.i545.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i548.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i548.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50571
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i549.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i549.i": ; preds = %bb.cr, %bb.cq, %.lr.ph.i.i.i.i23.i545.i
  %i.sf = icmp eq i64 %i.sc, %i.ry
  br i1 %i.sf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i550.i", label %.lr.ph.i.i.i.i23.i545.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i550.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i549.i", %bb.cp
  %i.sg = icmp eq i64 %..sroa.08.0.copyload.i.i541.i, 0
  br i1 %i.sg, label %.loopexit1293.i, label %bb.cs

bb.cs:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i550.i"
  %i.sh = shl nuw i64 %..sroa.08.0.copyload.i.i541.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i539.i, i64 noundef %i.sh, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !50566
  br label %.loopexit1293.i

bb.ct:                                            ; preds = %.noexc22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !50556
  call void @llvm.experimental.noalias.scope.decl(metadata !50572)
  %i.si = icmp eq i64 %i.ry, 0
  br i1 %i.si, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i.i", label %.lr.ph.i.i.i.i26.i.i

.lr.ph.i.i.i.i26.i.i:                             ; preds = %bb.ct, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i.i"
  %.sroa.0.010.i.i.i.i27.i.i = phi i64 [ %i.sk, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i.i" ], [ 0, %bb.ct ] ; 2 uses
  %i.sj = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i539.i, i64 %.sroa.0.010.i.i.i.i27.i.i ; 2 uses
  %i.sk = add nuw i64 %.sroa.0.010.i.i.i.i27.i.i, 1 ; 2 uses
  %.val8.i.i.i.i28.i.i = load i64, ptr %i.sj, align 8, !range !2917, !alias.scope !50572, !noalias !50575, !noundef !14 ; 2 uses
  %i.sl = getelementptr i8, ptr %i.sj, i64 8
  %.val9.i.i.i.i29.i.i = load ptr, ptr %i.sl, align 8, !alias.scope !50572, !noalias !50575 ; 4 uses
  switch i64 %.val8.i.i.i.i28.i.i, label %bb.cu [
    i64 -9223372036854775808, label %bb.cv
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i.i"
  ]

bb.cu:                                            ; preds = %.lr.ph.i.i.i.i26.i.i
  %i.sm = shl nuw i64 %.val8.i.i.i.i28.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i29.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i29.i.i, i64 noundef %i.sm, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50580
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i.i"

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i26.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i29.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i29.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50580
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i.i": ; preds = %bb.cv, %bb.cu, %.lr.ph.i.i.i.i26.i.i
  %i.sn = icmp eq i64 %i.sk, %i.ry
  br i1 %i.sn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i.i", label %.lr.ph.i.i.i.i26.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i.i", %bb.ct
  %i.so = icmp eq i64 %..sroa.08.0.copyload.i.i541.i, 0
  br i1 %i.so, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i.i"
  %i.sp = shl nuw i64 %..sroa.08.0.copyload.i.i541.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i539.i, i64 noundef %i.sp, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !50575
  br label %bb.cz

.loopexit1291.i:                                  ; preds = %bb.cz, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit.loopexit.i.i", %.loopexit1294.i
  %i.sq = icmp eq i64 %i.nv, 0
  br i1 %i.sq, label %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %.loopexit1291.i
  %i.sr = add i64 %i.nv, 1
  %i.ss = add i64 %i.nv, 16                       ; 2 uses
  %i.st = icmp uge i64 %i.ss, %i.sr
  call void @llvm.assume(i1 %i.st)
  %i.su = and i64 %i.ss, -16                      ; 3 uses
  %i.sv = add i64 %i.nv, 17
  %i.sw = add i64 %i.sv, %i.su                    ; 4 uses
  %i.sx = icmp uge i64 %i.sw, %i.su
  %i.sy = icmp ult i64 %i.sw, 9223372036854775793
  call void @llvm.assume(i1 %i.sx)
  call void @llvm.assume(i1 %i.sy)
  %i.sz = icmp eq i64 %i.sw, 0
  br i1 %i.sz, label %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit.i", label %bb.cx

bb.cx:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %i.ta = sub nsw i64 0, %i.su
  %i.tb = getelementptr inbounds i8, ptr %i.nt, i64 %i.ta
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tb, i64 noundef %i.sw, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !50581
  br label %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit.i"

"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit.i": ; preds = %bb.cx, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %.loopexit1291.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !50196
  br label %bb.ca

.loopexit1293.i:                                  ; preds = %.noexc563.i, %bb.cs, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i550.i"
  %.sroa.10838.0.ph.i = phi i64 [ %.sroa.10838.8.copyload839.i, %bb.cs ], [ %.sroa.10838.8.copyload839.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i550.i" ], [ %.sroa.511.sroa.5.0.copyload.i.i537.i, %.noexc563.i ]
  %.sroa.9836.0.ph.i = phi ptr [ %.sroa.9836.8.copyload837.i, %bb.cs ], [ %.sroa.9836.8.copyload837.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i550.i" ], [ %.sroa.511.sroa.0.0.copyload.i.i535.i, %.noexc563.i ]
  %.sroa.6834.0.ph.i = phi i64 [ %.sroa.6834.8.copyload835.i, %bb.cs ], [ %.sroa.6834.8.copyload835.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i550.i" ], [ %.sroa.010.0.copyload.i.i533.i, %.noexc563.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !50523
  %.sroa.23.sroa.0.0.extract.trunc34 = trunc i64 %.sroa.6834.0.ph.i to i32
  %.sroa.23.sroa.21.0.extract.shift49 = lshr i64 %.sroa.6834.0.ph.i, 32
  %.sroa.23.sroa.21.0.extract.trunc50 = trunc nuw i64 %.sroa.23.sroa.21.0.extract.shift49 to i32
  %i.tc = icmp eq i64 %i.nv, 0
  br i1 %i.tc, label %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i568.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i568.i: ; preds = %.loopexit1293.i
  %i.td = add i64 %i.nv, 1
  %i.te = add i64 %i.nv, 16                       ; 2 uses
  %i.tf = icmp uge i64 %i.te, %i.td
  call void @llvm.assume(i1 %i.tf)
  %i.tg = and i64 %i.te, -16                      ; 3 uses
  %i.th = add i64 %i.nv, 17
  %i.ti = add i64 %i.th, %i.tg                    ; 4 uses
  %i.tj = icmp uge i64 %i.ti, %i.tg
  %i.tk = icmp ult i64 %i.ti, 9223372036854775793
  call void @llvm.assume(i1 %i.tj)
  call void @llvm.assume(i1 %i.tk)
  %i.tl = icmp eq i64 %i.ti, 0
  br i1 %i.tl, label %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i", label %bb.cy

bb.cy:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i568.i
  %i.tm = sub nsw i64 0, %i.tg
  %i.tn = getelementptr inbounds i8, ptr %i.nt, i64 %i.tm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tn, i64 noundef %i.ti, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !50584
  br label %"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i"

bb.cz:                                            ; preds = %bb.cw, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !50523
  %i.to = icmp eq i64 %.sroa.13831.1.i, 0
  br i1 %i.to, label %.loopexit1291.i, label %.lr.ph.i.i

"_ZN4core3ptr95drop_in_place$LT$std..collections..hash..set..HashSet$LT$meilisearch_types..tasks..Kind$GT$$GT$17h4d3249321d4a8aeeE.exit569.i": ; preds = %bb.cy, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i568.i, %.loopexit1293.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !50196
  br label %"_ZN4core3ptr96drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..tasks..Kind$GT$$GT$17h7e93e4001e8cc3b0E.exit766.i"

bb.da:                                            ; preds = %bb.im, %bb.il, %bb.ik, %bb.hu, %bb.hq, %bb.ho, %bb.t, %bb.p, %"_ZN4core3ptr66drop_in_place$LT$meilisearch_types..batches..EmbedderStatsView$GT$17h356e5f821bf70427E.exit.i"
  %i.tp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !50189
  unreachable
end_hunk_1
begin_hunk_2_@_ZN15index_scheduler5queue5Queue11write_batch17h896bee4e7a87aee1E:bb.a
  %i.xq = getelementptr inbounds i8, ptr %i.xo, i64 -384 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 16 ; 3 uses
  %.cast.i.i.i664.i = bitcast <16 x i1> %i.xp to i16 ; 2 uses
  %.not.i.i.i665.i = icmp eq i16 %.cast.i.i.i664.i, 0
  br i1 %.not.i.i.i665.i, label %.lr.ph.i.i.i662.i, label %._crit_edge20.i.i.i647.i

._crit_edge20.i.i.i647.i:                         ; preds = %.lr.ph.i.i.i662.i, %bb.du
  %.sroa.7874.2.i = phi ptr [ %.sroa.7874.1.i, %bb.du ], [ %i.xr, %.lr.ph.i.i.i662.i ] ; 2 uses
  %.sroa.0873.2.i = phi ptr [ %.sroa.0873.1.i, %bb.du ], [ %i.xq, %.lr.ph.i.i.i662.i ] ; 2 uses
  %.lcssa26.i648.i = phi ptr [ %.lcssa27.i644.i, %bb.du ], [ %i.xr, %.lr.ph.i.i.i662.i ]
  %.lcssa1720.i649.i = phi ptr [ %.lcssa172122.i645.i, %bb.du ], [ %i.xq, %.lr.ph.i.i.i662.i ] ; 2 uses
  %.lcssa.i.i.i650.i = phi i16 [ %i.xl, %bb.du ], [ %.cast.i.i.i664.i, %.lr.ph.i.i.i662.i ] ; 3 uses
  %i.xs = add i16 %.lcssa.i.i.i650.i, -1
  %i.xt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i650.i, i1 true)
  %i.xu = zext nneg i16 %i.xt to i64
  %i.xv = and i16 %i.xs, %.lcssa.i.i.i650.i       ; 2 uses
  %i.xw = sub nsw i64 0, %i.xu
  %i.xx = getelementptr inbounds [24 x i8], ptr %.lcssa1720.i649.i, i64 %i.xw ; 3 uses
  %i.xy = add i64 %i.xm, -1                       ; 3 uses
  %i.xz = getelementptr inbounds i8, ptr %i.xx, i64 -24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50690)
  call void @llvm.experimental.noalias.scope.decl(metadata !50691)
  %i.ya = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h82d0b7b17ab80b11E(i64 %.val.i.i642.i, i64 %.val5.i.i643.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xz), !noalias !50692 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50693)
  %i.yb = lshr i64 %i.ya, 57
  %i.yc = trunc nuw nsw i64 %i.yb to i8
  %.sroa.0.0.vec.insert.i.i.i.i651.i = insertelement <16 x i8> poison, i8 %i.yc, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i652.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i651.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.yd = getelementptr inbounds i8, ptr %i.xx, i64 -8
  %.val1.i.i.i.i.i.i = load i64, ptr %i.yd, align 8, !alias.scope !50696, !noalias !50697 ; 2 uses
  %i.ye = getelementptr inbounds i8, ptr %i.xx, i64 -16
  %.val.i.i.i.i.i653.i = load ptr, ptr %i.ye, align 8, !alias.scope !50696, !noalias !50697, !nonnull !14
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dw, %._crit_edge20.i.i.i647.i
  %.sroa.9.0.i.i.i.i654.i = phi i64 [ 0, %._crit_edge20.i.i.i647.i ], [ %i.yw, %bb.dw ]
  %.pn.i.i.i655.i = phi i64 [ %i.ya, %._crit_edge20.i.i.i647.i ], [ %i.yx, %bb.dw ]
  %.sroa.01.0.i.i.i.i656.i = and i64 %.pn.i.i.i655.i, %i.xi ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.sroa.01.0.i.i.i.i656.i
  %.sroa.0.0.copyload.i27.i.i.i.i = load <16 x i8>, ptr %i.yf, align 1, !noalias !50699 ; 2 uses
  %i.yg = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i652.i
  %i.yh = bitcast <16 x i1> %i.yg to i16          ; 2 uses
  %.not.i.not33.i.i.i.i = icmp eq i16 %i.yh, 0
  br i1 %.not.i.not33.i.i.i.i, label %._crit_edge.i.i8.i659.i, label %.lr.ph.i.i7.i657.i

.lr.ph.i.i7.i657.i:                               ; preds = %bb.dv, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.thread.i.i.i.i"
  %.sroa.06.0.i34.i.i.i.i = phi i16 [ %i.yv, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.thread.i.i.i.i" ], [ %i.yh, %bb.dv ] ; 3 uses
  %i.yi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i, i1 true)
  %i.yj = zext nneg i16 %i.yi to i64
  %i.yk = add i64 %.sroa.01.0.i.i.i.i656.i, %i.yj
  %i.yl = and i64 %i.yk, %i.xi
  %i.ym = sub nsw i64 0, %i.yl
  %i.yn = getelementptr inbounds [24 x i8], ptr %i.xj, i64 %i.ym ; 2 uses
  %i.yo = getelementptr i8, ptr %i.yn, i64 -8
  %.val4.i.i.i.i.i = load i64, ptr %i.yo, align 8, !noalias !50705, !noundef !14
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, %.val4.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.thread.i.i.i.i", !prof !38809

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.i.i.i.i": ; preds = %.lr.ph.i.i7.i657.i
  %i.yp = getelementptr i8, ptr %i.yn, i64 -16
  %.val3.i.i.i.i661.i = load ptr, ptr %i.yp, align 8, !noalias !50705, !nonnull !14, !noundef !14
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i653.i, ptr nonnull readonly align 1 %.val3.i.i.i.i661.i, i64 %.val1.i.i.i.i.i.i), !alias.scope !50708, !noalias !50705
  %i.yq = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.yq, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he83407ab508dd0feE.exit.loopexit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.thread.i.i.i.i", !prof !97

._crit_edge.i.i8.i659.i:                          ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.thread.i.i.i.i", %bb.dv
  %i.yr = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.ys = bitcast <16 x i1> %i.yr to i16
  %i.yt = icmp eq i16 %i.ys, 0
  br i1 %i.yt, label %bb.dw, label %"_ZN111_$LT$std..collections..hash..set..Difference$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cff1906dae4ae25E.exit.i", !prof !121

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.thread.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4e8f0314e1636456E.exit.i.i.i.i", %.lr.ph.i.i7.i657.i
  %i.yu = add i16 %.sroa.06.0.i34.i.i.i.i, -1
  %i.yv = and i16 %i.yu, %.sroa.06.0.i34.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i658.i = icmp eq i16 %i.yv, 0
  br i1 %.not.i.not.i.i.i658.i, label %._crit_edge.i.i8.i659.i, label %.lr.ph.i.i7.i657.i

bb.dw:                                            ; preds = %._crit_edge.i.i8.i659.i
  %i.yw = add i64 %.sroa.9.0.i.i.i.i654.i, 16     ; 2 uses
  %i.yx = add i64 %.sroa.01.0.i.i.i.i656.i, %i.yw
  br label %bb.dv

"_ZN111_$LT$std..collections..hash..set..Difference$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cff1906dae4ae25E.exit.i": ; preds = %._crit_edge.i.i8.i659.i, %._crit_edge20.i.i.us.i669.i
  %.sroa.13878.1.i = phi i64 [ %i.xg, %._crit_edge20.i.i.us.i669.i ], [ %i.xy, %._crit_edge.i.i8.i659.i ] ; 2 uses
  %.sroa.10876.1.i = phi i16 [ %i.xd, %._crit_edge20.i.i.us.i669.i ], [ %i.xv, %._crit_edge.i.i8.i659.i ]
  %.sroa.7874.4.i = phi ptr [ %.sroa.7874.3.i, %._crit_edge20.i.i.us.i669.i ], [ %.sroa.7874.2.i, %._crit_edge.i.i8.i659.i ]
  %.sroa.0873.4.i = phi ptr [ %.sroa.0873.3.i, %._crit_edge20.i.i.us.i669.i ], [ %.sroa.0873.2.i, %._crit_edge.i.i8.i659.i ]
  %.sroa.0.0.i660.i = phi ptr [ %i.xh, %._crit_edge20.i.i.us.i669.i ], [ %i.xz, %._crit_edge.i.i8.i659.i ] ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i660.i, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !noalias !50189, !nonnull !14, !noundef !14 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i660.i, i64 16
  %i.zb = load i64, ptr %i.za, align 8, !noalias !50189, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !50715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !50719
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hff9275776605b636E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, i64 %.val457.i, i32 %.val458.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.yz, i64 noundef %i.zb)
          to label %.noexc705.i unwind label %bb.ds, !noalias !50189

.noexc705.i:                                      ; preds = %"_ZN111_$LT$std..collections..hash..set..Difference$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cff1906dae4ae25E.exit.i"
  %i.zc = load i64, ptr %i.f, align 8, !range !751, !noalias !50719, !noundef !14
  %i.zd = trunc nuw i64 %i.zc to i1
  %.sroa.010.0.copyload.i.i677.i = load i64, ptr %i.ws, align 8, !noalias !50719 ; 5 uses
  %.sroa.511.sroa.0.0.copyload.i.i679.i = load ptr, ptr %.sroa.511.0..sroa_idx.i.i678.i, align 8, !noalias !50719 ; 2 uses
  %.sroa.511.sroa.5.0.copyload.i.i681.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i680.i, align 8, !noalias !50719 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !50719
  br i1 %i.zd, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.noexc705.i
  %.sroa.8881.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.010.0.copyload.i.i677.i to i32
  %.sroa.8881.sroa.6.0.extract.shift.i = lshr i64 %.sroa.010.0.copyload.i.i677.i, 32
  %.sroa.8881.sroa.6.0.extract.trunc.i = trunc i64 %.sroa.8881.sroa.6.0.extract.shift.i to i8
  %.sroa.8881.sroa.7.0.extract.shift.i = lshr i64 %.sroa.010.0.copyload.i.i677.i, 40
  %.sroa.8881.sroa.7.0.extract.trunc.i = trunc nuw i64 %.sroa.8881.sroa.7.0.extract.shift.i to i24
  br label %bb.es

bb.dy:                                            ; preds = %.noexc705.i
  %.not.i.i682.i = icmp eq i64 %.sroa.010.0.copyload.i.i677.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i.i683.i = select i1 %.not.i.i682.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i.i679.i ; 7 uses
  %..sroa.5.sroa.5.0.copyload.i.i684.i = select i1 %.not.i.i682.i, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i.i681.i ; 9 uses
  %..sroa.08.0.copyload.i.i685.i = select i1 %.not.i.i682.i, i64 0, i64 %.sroa.010.0.copyload.i.i677.i ; 5 uses
  store i64 %..sroa.08.0.copyload.i.i685.i, ptr %i.i, align 8, !noalias !50715
  store ptr %..sroa.5.sroa.026.0.copyload.i.i683.i, ptr %.sroa.417.0..sroa_idx.i686.i, align 8, !noalias !50715
  store i64 %..sroa.5.sroa.5.0.copyload.i.i684.i, ptr %.sroa.518.0..sroa_idx.i687.i, align 8, !noalias !50715
  call void @llvm.experimental.noalias.scope.decl(metadata !50724)
  %i.ze = load i32, ptr %i.bm, align 8, !alias.scope !50727, !noalias !50728, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50729)
  %i.zf = lshr i32 %i.ze, 16
  %i.zg = trunc nuw i32 %i.zf to i16              ; 3 uses
  %i.zh = trunc i32 %i.ze to i16
  switch i64 %..sroa.5.sroa.5.0.copyload.i.i684.i, label %.lr.ph.i.i.i.i.i701.i [
    i64 0, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread27.i.i"
    i64 1, label %._crit_edge.i.i.i.i.i688.i
  ]

._crit_edge.i.i.i.i.i688.i:                       ; preds = %.lr.ph.i.i.i.i.i701.i, %bb.dy
  %.sroa.05.0.lcssa.i.i.i.i.i689.i = phi i64 [ 0, %bb.dy ], [ %i.zs, %.lr.ph.i.i.i.i.i701.i ] ; 4 uses
  %i.zi = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i689.i, %..sroa.5.sroa.5.0.copyload.i.i684.i
  call void @llvm.assume(i1 %i.zi)
  %i.zj = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i683.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i689.i ; 7 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 24
  %.val20.i.i.i.i.i690.i = load i16, ptr %i.zk, align 8, !alias.scope !50732, !noalias !50737, !noundef !14 ; 2 uses
  %i.zl = icmp eq i16 %.val20.i.i.i.i.i690.i, %i.zg
  br i1 %i.zl, label %bb.ea, label %bb.dz

.lr.ph.i.i.i.i.i701.i:                            ; preds = %bb.dy, %.lr.ph.i.i.i.i.i701.i
  %.sroa.01.025.i.i.i.i.i702.i = phi i64 [ %i.zt, %.lr.ph.i.i.i.i.i701.i ], [ %.sroa.511.sroa.5.0.copyload.i.i681.i, %bb.dy ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i703.i = phi i64 [ %i.zs, %.lr.ph.i.i.i.i.i701.i ], [ 0, %bb.dy ] ; 2 uses
  %i.zm = lshr i64 %.sroa.01.025.i.i.i.i.i702.i, 1 ; 2 uses
  %i.zn = add i64 %i.zm, %.sroa.05.024.i.i.i.i.i703.i ; 3 uses
  %i.zo = icmp ult i64 %i.zn, %..sroa.5.sroa.5.0.copyload.i.i684.i
  call void @llvm.assume(i1 %i.zo)
  %i.zp = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i683.i, i64 %i.zn
  %i.zq = getelementptr i8, ptr %i.zp, i64 24
  %.val22.i.i.i.i.i704.i = load i16, ptr %i.zq, align 8, !alias.scope !50732, !noalias !50737, !noundef !14
  %i.zr = icmp ugt i16 %.val22.i.i.i.i.i704.i, %i.zg
  %i.zs = select i1 %i.zr, i64 %.sroa.05.024.i.i.i.i.i703.i, i64 %i.zn, !unpredictable !14 ; 2 uses
  %i.zt = sub nuw i64 %.sroa.01.025.i.i.i.i.i702.i, %i.zm ; 2 uses
  %i.zu = icmp ugt i64 %i.zt, 1
  br i1 %i.zu, label %.lr.ph.i.i.i.i.i701.i, label %._crit_edge.i.i.i.i.i688.i

bb.dz:                                            ; preds = %._crit_edge.i.i.i.i.i688.i
  %i.zv = icmp ult i16 %.val20.i.i.i.i.i690.i, %i.zg
  %i.zw = zext i1 %i.zv to i64
  %i.zx = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i689.i, %i.zw
  %i.zy = icmp ule i64 %i.zx, %..sroa.5.sroa.5.0.copyload.i.i684.i
  call void @llvm.assume(i1 %i.zy)
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread.i.i"

bb.ea:                                            ; preds = %._crit_edge.i.i.i.i.i688.i
  %i.zz = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.zj, i16 noundef %i.zh)
          to label %.noexc.i696.i unwind label %bb.eg, !noalias !50739

.noexc.i696.i:                                    ; preds = %bb.ea
  br i1 %i.zz, label %bb.eb, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread.i.i"

bb.eb:                                            ; preds = %.noexc.i696.i
  %i.aaa = load i64, ptr %i.zj, align 8, !range !2917, !noalias !50740, !noundef !14 ; 3 uses
  %i.aab = icmp eq i64 %i.aaa, -9223372036854775808
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.aad = load i64, ptr %i.aac, align 8, !noalias !50740, !noundef !14 ; 2 uses
  br i1 %i.aab, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aae = icmp ult i64 %i.aad, 4611686018427387904
  call void @llvm.assume(i1 %i.aae)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sroa.03.0.in.i.i.i697.i = icmp eq i64 %i.aad, 0
  br i1 %.sroa.03.0.in.i.i.i697.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i698.i", label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i698.i": ; preds = %bb.ed
  call void @llvm.experimental.noalias.scope.decl(metadata !50741)
  %i.aaf = icmp ult i64 %..sroa.5.sroa.5.0.copyload.i.i684.i, 288230376151711744
  call void @llvm.assume(i1 %i.aaf)
  %.sroa.4.0..sroa_idx.i.i.i699.i = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %.sroa.4.0.copyload.i.i.i700.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i699.i, align 8, !noalias !50744 ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zj, i64 32
  %i.aah = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i689.i, -1
  %i.aai = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i684.i, %i.aah
  %i.aaj = shl nuw nsw i64 %i.aai, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zj, ptr nonnull align 8 %i.aag, i64 %i.aaj, i1 false), !noalias !50746
  %i.aak = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i684.i, -1 ; 3 uses
  store i64 %i.aak, ptr %.sroa.518.0..sroa_idx.i687.i, align 8, !alias.scope !50748, !noalias !50749
  switch i64 %i.aaa, label %bb.ee [
    i64 -9223372036854775808, label %bb.ef
    i64 0, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.i.i"
  ]

bb.ee:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i698.i"
  %i.aal = shl nuw i64 %i.aaa, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i700.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i700.i, i64 noundef %i.aal, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50740
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.i.i"

bb.ef:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i698.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i700.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i700.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50740
  br label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.i.i"

bb.eg:                                            ; preds = %bb.eh, %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread27.i.i", %bb.ea
  %i.aam = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #81, !noalias !50739
  br label %.body706.i

"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread.i.i": ; preds = %bb.ed, %.noexc.i696.i, %bb.dz
  %i.aan = icmp ult i64 %..sroa.5.sroa.5.0.copyload.i.i684.i, 288230376151711744
  call void @llvm.assume(i1 %i.aan)
  br label %bb.eh

"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.i.i": ; preds = %bb.ef, %bb.ee, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i698.i"
  %i.aao = icmp eq i64 %i.aak, 0
  br i1 %i.aao, label %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread27.i.i", label %bb.eh

"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread27.i.i": ; preds = %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.i.i", %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !50715
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$6delete17h03a0331ffdfb6bcfE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, i64 %.val457.i, i32 %.val458.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.yz, i64 noundef %i.zb)
          to label %bb.ei unwind label %bb.eg, !noalias !50750

bb.eh:                                            ; preds = %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.i.i", %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread.i.i"
  %i.aap = phi i64 [ %.sroa.511.sroa.5.0.copyload.i.i681.i, %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread.i.i" ], [ %i.aak, %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !50715
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h2cd356b1e6b99922E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, i64 %.val457.i, i32 %.val458.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.yz, i64 noundef %i.zb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.er unwind label %bb.eg, !noalias !50750

bb.ei:                                            ; preds = %"_ZN15index_scheduler5queue7batches10BatchQueue11write_batch28_$u7b$$u7b$closure$u7d$$u7d$17h3235c2da7742cecbE.exit.thread27.i.i"
  %i.aaq = load i32, ptr %i.h, align 8, !range !33282, !noalias !50715, !noundef !14 ; 2 uses
  %.not41.i.i = icmp eq i32 %i.aaq, 5
  br i1 %.not41.i.i, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !50715
  call void @llvm.experimental.noalias.scope.decl(metadata !50751)
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i695.i"

.lr.ph.i.i.i.i49.i.i:                             ; preds = %.split.i.i, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i694.i"
  %.sroa.0.010.i.i.i.i.i691.i = phi i64 [ %i.aas, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i694.i" ], [ 0, %.split.i.i ] ; 2 uses
  %i.aar = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i683.i, i64 %.sroa.0.010.i.i.i.i.i691.i ; 2 uses
  %i.aas = add nuw i64 %.sroa.0.010.i.i.i.i.i691.i, 1 ; 2 uses
  %.val8.i.i.i.i.i692.i = load i64, ptr %i.aar, align 8, !range !2917, !alias.scope !50751, !noalias !50754, !noundef !14 ; 2 uses
  %i.aat = getelementptr i8, ptr %i.aar, i64 8
  %.val9.i.i.i.i.i693.i = load ptr, ptr %i.aat, align 8, !alias.scope !50751, !noalias !50754 ; 4 uses
  switch i64 %.val8.i.i.i.i.i692.i, label %bb.ek [
    i64 -9223372036854775808, label %bb.el
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i694.i"
  ]

bb.ek:                                            ; preds = %.lr.ph.i.i.i.i49.i.i
  %i.aau = shl nuw i64 %.val8.i.i.i.i.i692.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i693.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i693.i, i64 noundef %i.aau, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50759
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i694.i"

bb.el:                                            ; preds = %.lr.ph.i.i.i.i49.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i693.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i693.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50759
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i694.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i694.i": ; preds = %bb.el, %bb.ek, %.lr.ph.i.i.i.i49.i.i
  %i.aav = icmp eq i64 %i.aas, %i.aap
  br i1 %i.aav, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i695.i", label %.lr.ph.i.i.i.i49.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i695.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i694.i", %bb.ej
  %i.aaw = icmp eq i64 %..sroa.08.0.copyload.i.i685.i, 0
  br i1 %i.aaw, label %bb.et, label %bb.em

bb.em:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i695.i"
  %i.aax = shl nuw i64 %..sroa.08.0.copyload.i.i685.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i683.i, i64 noundef %i.aax, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !50754
  br label %bb.et

bb.en:                                            ; preds = %bb.ei
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.526.0.copyload.i.i = load i8, ptr %.sroa.526.0..sroa_idx.i.i, align 4, !noalias !50715
  %.sroa.627.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %.sroa.8881.sroa.7.sroa.0.0.copyload.i = load i24, ptr %.sroa.627.0..sroa_idx.i.i, align 1, !noalias !50760
  %.sroa.14883.13..sroa.627.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.14883.13.copyload.i = load ptr, ptr %.sroa.14883.13..sroa.627.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !50760
  %.sroa.15885.13..sroa.627.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.15885.13.copyload.i = load i64, ptr %.sroa.15885.13..sroa.627.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !50760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !50715
  call void @llvm.experimental.noalias.scope.decl(metadata !50761)
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i"

.lr.ph.i.i.i.i52.i.i:                             ; preds = %.split29.i.i, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i56.i.i"
  %.sroa.0.010.i.i.i.i53.i.i = phi i64 [ %i.aaz, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i56.i.i" ], [ 0, %.split29.i.i ] ; 2 uses
  %i.aay = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i683.i, i64 %.sroa.0.010.i.i.i.i53.i.i ; 2 uses
  %i.aaz = add nuw i64 %.sroa.0.010.i.i.i.i53.i.i, 1 ; 2 uses
  %.val8.i.i.i.i54.i.i = load i64, ptr %i.aay, align 8, !range !2917, !alias.scope !50761, !noalias !50764, !noundef !14 ; 2 uses
  %i.aba = getelementptr i8, ptr %i.aay, i64 8
  %.val9.i.i.i.i55.i.i = load ptr, ptr %i.aba, align 8, !alias.scope !50761, !noalias !50764 ; 4 uses
  switch i64 %.val8.i.i.i.i54.i.i, label %bb.eo [
    i64 -9223372036854775808, label %bb.ep
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i56.i.i"
  ]

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i52.i.i
  %i.abb = shl nuw i64 %.val8.i.i.i.i54.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i55.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i55.i.i, i64 noundef %i.abb, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !50769
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i56.i.i"

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i52.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i55.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i55.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !50769
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i56.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i56.i.i": ; preds = %bb.ep, %bb.eo, %.lr.ph.i.i.i.i52.i.i
  %i.abc = icmp eq i64 %i.aaz, %i.aap
  br i1 %i.abc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.loopexit.i", label %.lr.ph.i.i.i.i52.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.loopexit.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i56.i.i"
  %.sroa.8881.sroa.0.0.extract.trunc888.i = trunc i64 %.sroa.8881.8.copyload882.i to i32
  %.sroa.8881.sroa.6.0.extract.shift889.i = lshr i64 %.sroa.8881.8.copyload882.i, 32
  %.sroa.8881.sroa.6.0.extract.trunc890.i = trunc i64 %.sroa.8881.sroa.6.0.extract.shift889.i to i8
  %.sroa.8881.sroa.7.0.extract.shift891.i = lshr i64 %.sroa.8881.8.copyload882.i, 40
  %.sroa.8881.sroa.7.0.extract.trunc892.i = trunc nuw i64 %.sroa.8881.sroa.7.0.extract.shift891.i to i24
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.loopexit.i", %bb.en
  %.sroa.8881.sroa.7.sroa.0.0.i = phi i24 [ %.sroa.8881.sroa.7.sroa.0.0.copyload.i, %bb.en ], [ %.sroa.8881.sroa.7.0.extract.trunc892.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.loopexit.i" ] ; 2 uses
  %.sroa.8881.sroa.6.0.i = phi i8 [ %.sroa.526.0.copyload.i.i, %bb.en ], [ %.sroa.8881.sroa.6.0.extract.trunc890.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.loopexit.i" ] ; 2 uses
  %.sroa.8881.sroa.0.0.i = phi i32 [ %i.aaq, %bb.en ], [ %.sroa.8881.sroa.0.0.extract.trunc888.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.loopexit.i" ] ; 2 uses
  %.sroa.15885.0.i = phi i64 [ %.sroa.15885.13.copyload.i, %bb.en ], [ %.sroa.15885.8.copyload886.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.loopexit.i" ] ; 2 uses
  %.sroa.14883.0.i = phi ptr [ %.sroa.14883.13.copyload.i, %bb.en ], [ %.sroa.14883.8.copyload884.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.loopexit.i" ] ; 2 uses
  %i.abd = icmp eq i64 %..sroa.08.0.copyload.i.i685.i, 0
  br i1 %i.abd, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i"
  %i.abe = shl nuw i64 %..sroa.08.0.copyload.i.i685.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i683.i, i64 noundef %i.abe, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !50764
  br label %bb.es

bb.er:                                            ; preds = %bb.eh
  %i.abf = load i32, ptr %i.g, align 8, !range !33282, !noalias !50715, !noundef !14
  %.not40.i.i = icmp eq i32 %i.abf, 5
  br i1 %.not40.i.i, label %.split.i.i, label %.split29.i.i

.split29.i.i:                                     ; preds = %bb.er
  %.sroa.8881.8.copyload882.i = load i64, ptr %i.g, align 8, !noalias !50760 ; 3 uses
  %.sroa.14883.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.14883.8.copyload884.i = load ptr, ptr %.sroa.14883.8..sroa_idx.i, align 8, !noalias !50760
  %.sroa.15885.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.15885.8.copyload886.i = load i64, ptr %.sroa.15885.8..sroa_idx.i, align 8, !noalias !50760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !50715
  br label %.lr.ph.i.i.i.i52.i.i

.split.i.i:                                       ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !50715
  br label %.lr.ph.i.i.i.i49.i.i

.loopexit.i:                                      ; preds = %bb.et, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he83407ab508dd0feE.exit.loopexit.i.i", %bb.dt
  call void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h8c775f42e30177ecE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.as), !noalias !50189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !50196
  br label %bb.dr

bb.es:                                            ; preds = %bb.eq, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i", %bb.dx
  %.sroa.8881.sroa.7.sroa.0.1.ph.i = phi i24 [ %.sroa.8881.sroa.7.sroa.0.0.i, %bb.eq ], [ %.sroa.8881.sroa.7.sroa.0.0.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i" ], [ %.sroa.8881.sroa.7.0.extract.trunc.i, %bb.dx ]
  %.sroa.8881.sroa.6.1.ph.i = phi i8 [ %.sroa.8881.sroa.6.0.i, %bb.eq ], [ %.sroa.8881.sroa.6.0.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i" ], [ %.sroa.8881.sroa.6.0.extract.trunc.i, %bb.dx ]
  %.sroa.8881.sroa.0.1.ph.i = phi i32 [ %.sroa.8881.sroa.0.0.i, %bb.eq ], [ %.sroa.8881.sroa.0.0.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i" ], [ %.sroa.8881.sroa.0.0.extract.trunc.i, %bb.dx ]
  %.sroa.15885.1.ph.i = phi i64 [ %.sroa.15885.0.i, %bb.eq ], [ %.sroa.15885.0.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i" ], [ %.sroa.511.sroa.5.0.copyload.i.i681.i, %bb.dx ]
  %.sroa.14883.1.ph.i = phi ptr [ %.sroa.14883.0.i, %bb.eq ], [ %.sroa.14883.0.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i57.i.i" ], [ %.sroa.511.sroa.0.0.copyload.i.i679.i, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !50715
  %.sroa.8881.sroa.7.0.insert.ext.i = zext i24 %.sroa.8881.sroa.7.sroa.0.1.ph.i to i32
  %.sroa.8881.sroa.7.0.insert.shift.i = shl nuw i32 %.sroa.8881.sroa.7.0.insert.ext.i, 8
  %.sroa.8881.sroa.6.0.insert.ext.i = zext i8 %.sroa.8881.sroa.6.1.ph.i to i32
  %.sroa.8881.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.8881.sroa.7.0.insert.shift.i, %.sroa.8881.sroa.6.0.insert.ext.i
  call void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h8c775f42e30177ecE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.as), !noalias !50189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !50196
  br label %"_ZN4core3ptr96drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..tasks..Kind$GT$$GT$17h7e93e4001e8cc3b0E.exit766.i"

bb.et:                                            ; preds = %bb.em, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i695.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !50715
  %i.abg = icmp eq i64 %.sroa.13878.1.i, 0
  br i1 %i.abg, label %.loopexit.i, label %.lr.ph.i638.i

bb.eu:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i620.i, %bb.dr
  %.sroa.5.sroa.0.0.i.i.i.i621.i = phi i64 [ %i.vy, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i620.i ], [ undef, %bb.dr ]
  %.sroa.5.sroa.4.0.i.i.i.i622.i = phi ptr [ %i.wc, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i620.i ], [ undef, %bb.dr ]
  %.sroa.0.0.i.i.i.i623.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i620.i ], [ 0, %bb.dr ]
end_hunk_2
begin_hunk_3_@_ZN15index_scheduler5queue5Queue8register17h0be7d55737be855aE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !51216
  br label %bb.dz

bb.eh:                                            ; preds = %bb.ed, %bb.ec
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %.sroa.081.0.i, label %bb.ei [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i"
  ]

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.683.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.683.0.i, i64 noundef %.sroa.081.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !51447
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i"

"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i": ; preds = %"._ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i_crit_edge", %bb.ea
  %.sroa.67.72.copyload = phi i64 [ %.sroa.67.72.copyload.pre, %"._ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i_crit_edge" ], [ 0, %bb.ea ]
  %.sroa.41.24.copyload = load i64, ptr %i.as, align 8, !noalias !51214
  %.sroa.43.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.43.24.copyload = load i64, ptr %.sroa.43.24..sroa_idx, align 8, !noalias !51214 ; 2 uses
  %.sroa.43.sroa.17.0.extract.shift251 = lshr i64 %.sroa.43.24.copyload, 8
  %.sroa.54.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.54.24.copyload = load ptr, ptr %.sroa.54.24..sroa_idx, align 8, !noalias !51214
  %i.lr = ptrtoint ptr %.sroa.683.0.i to i64
  %.sroa.69.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.69.72.copyload = load i8, ptr %.sroa.69.72..sroa_idx, align 8, !noalias !51214
  %.sroa.70.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %.sroa.70.72.copyload = load i8, ptr %.sroa.70.72..sroa_idx, align 1, !noalias !51214
  %.sroa.71.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  %.sroa.71.72.copyload = load i8, ptr %.sroa.71.72..sroa_idx, align 2, !noalias !51214
  %.sroa.72.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.72, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.72.72..sroa_idx, i64 13, i1 false), !noalias !51214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !51216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !51216
  %i.ls = insertelement <2 x i64> poison, i64 %i.lc, i64 0
  %i.lt = insertelement <2 x i64> %i.ls, i64 %.sroa.516.0.i, i64 1
  %i.lu = insertelement <2 x i64> poison, i64 %i.lr, i64 0
  %i.lv = insertelement <2 x i64> %i.lu, i64 %.sroa.786.0.i, i64 1
  br label %"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit"

bb.ej:                                            ; preds = %bb.br, %bb.bq, %bb.bd, %bb.bc, %bb.ay, %bb.aw, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Key$GT$$GT$17h88803d0921332ce4E.exit.i.i", %bb.bi, %bb.bs, %bb.bt, %bb.by, %bb.bz, %bb.cc, %bb.cd, %bb.cf, %bb.cg, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i", %bb.cl, %.body.i, %bb.cz, %bb.dd, %bb.de, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i", %bb.di, %bb.dq, %bb.dr, %bb.dt, %bb.du, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i", %bb.ee, %bb.ej
  %eh.lpad-body = phi { ptr, i32 } [ %i.lw, %bb.ej ], [ %eh.lpad-body.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Key$GT$$GT$17h88803d0921332ce4E.exit.i.i" ], [ %i.ho, %bb.bs ], [ %.pn.pn.i.i, %bb.bi ], [ %i.ho, %bb.bt ], [ %i.ks, %bb.du ], [ %i.if, %bb.bz ], [ %i.ij, %bb.cd ], [ %i.in, %bb.cg ], [ %.pn27.pn.i, %bb.cl ], [ %eh.lpad-body.i, %bb.cz ], [ %i.kc, %bb.de ], [ %.pn22.i, %bb.di ], [ %i.ko, %bb.dr ], [ %i.if, %bb.by ], [ %i.ij, %bb.cc ], [ %i.in, %bb.cf ], [ %.pn27.pn.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i" ], [ %eh.lpad-body.i, %.body.i ], [ %i.kc, %bb.dd ], [ %.pn22.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i" ], [ %i.ko, %bb.dq ], [ %i.ks, %bb.dt ], [ %.pn.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i" ], [ %.pn.i, %bb.ee ] ; 2 uses
  %i.lx = load i64, ptr %i.bo, align 8, !range !4646, !alias.scope !51454, !noundef !14
  %i.ly = icmp eq i64 %i.lx, 19
  br i1 %i.ly, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$17h8181b99bb2f749ddE.exit", label %bb.ek

bb.ek:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$meilisearch_types..tasks..Details$GT$17h90c86c9b3279c100E"(ptr noalias noundef readonly align 8 dereferenceable(192) %i.bo)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$17h8181b99bb2f749ddE.exit" unwind label %bb.ig

"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit": ; preds = %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i", %bb.dx, %bb.dv, %bb.ds, %bb.dm, %bb.dc, %bb.da, %bb.cx, %bb.ch, %bb.ce, %bb.bx, %bb.bv, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i", %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i", %.noexc49, %bb.ax, %.noexc44, %.noexc41, %.noexc39, %bb.g
  %.sroa.43.sroa.17.sroa.0.0 = phi i64 [ %.sroa.43.sroa.17.0.extract.shift259, %bb.bx ], [ %.sroa.43.sroa.17.0.extract.shift269, %bb.ce ], [ %.sroa.43.sroa.17.0.extract.shift261, %bb.ch ], [ %.sroa.43.sroa.17.0.extract.shift267, %bb.cx ], [ 0, %.noexc39 ], [ %.sroa.43.sroa.17.0.extract.shift253, %bb.da ], [ 0, %.noexc41 ], [ %.sroa.43.sroa.17.0.extract.shift257, %bb.dc ], [ %.sroa.43.sroa.17.0.extract.shift255, %bb.dm ], [ 0, %.noexc44 ], [ %.sroa.43.sroa.17.0.extract.shift265, %bb.ds ], [ %.sroa.43.sroa.17.0.extract.shift263, %bb.dv ], [ %.sroa.513.i.sroa.0.0, %bb.dx ], [ 0, %bb.bv ], [ %.sroa.43.sroa.17.0.extract.shift251, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.43.sroa.17.0.extract.shift, %bb.ax ], [ 0, %.noexc49 ], [ %.sroa.43.sroa.17.0.extract.shift247, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.43.sroa.17.0.extract.shift249, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ 0, %bb.g ]
  %.sroa.43.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %bb.bx ], [ %.sroa.43.32.copyload180, %bb.ce ], [ %.sroa.43.32.copyload, %bb.ch ], [ %.sroa.43.32.copyload179, %bb.cx ], [ 0, %.noexc39 ], [ %i.jz, %bb.da ], [ 0, %.noexc41 ], [ %.sroa.03.0.i, %bb.dc ], [ %.sroa.0.097.i, %bb.dm ], [ 0, %.noexc44 ], [ %.sroa.43.32.copyload178, %bb.ds ], [ %.sroa.43.32.copyload177, %bb.dv ], [ %.sroa.011.0.i, %bb.dx ], [ 0, %bb.bv ], [ %.sroa.43.24.copyload, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.43.0.copyload175, %bb.ax ], [ 0, %.noexc49 ], [ %.sroa.089.i.sroa.7.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.43.8.copyload, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ 0, %bb.g ]
  %i.lz = phi ptr [ %.sroa.5.i.sroa.0.0, %bb.bx ], [ %.sroa.54.32.copyload191, %bb.ce ], [ %.sroa.54.32.copyload, %bb.ch ], [ %.sroa.54.32.copyload189, %bb.cx ], [ undef, %.noexc39 ], [ %i.ka, %bb.da ], [ undef, %.noexc41 ], [ %.sroa.55.i.sroa.0.0, %bb.dc ], [ %.sroa.6.0.i, %bb.dm ], [ undef, %.noexc44 ], [ %.sroa.54.32.copyload187, %bb.ds ], [ %.sroa.54.32.copyload185, %bb.dv ], [ %.sroa.513.i.sroa.4.0, %bb.dx ], [ undef, %bb.bv ], [ %.sroa.54.24.copyload, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.54.0.copyload182, %bb.ax ], [ undef, %.noexc49 ], [ %.sroa.089.i.sroa.8.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.54.8.copyload, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ] ; 7 uses
  %.promoted25.i.i = phi i64 [ %.sroa.5.i.sroa.4.0, %bb.bx ], [ %.sroa.59.32.copyload203, %bb.ce ], [ %.sroa.59.32.copyload, %bb.ch ], [ %.sroa.59.32.copyload201, %bb.cx ], [ undef, %.noexc39 ], [ undef, %bb.da ], [ undef, %.noexc41 ], [ %.sroa.55.i.sroa.4.0, %bb.dc ], [ %.sroa.7.0.i, %bb.dm ], [ undef, %.noexc44 ], [ %.sroa.59.32.copyload199, %bb.ds ], [ %.sroa.59.32.copyload197, %bb.dv ], [ %.sroa.513.i.sroa.5.0, %bb.dx ], [ undef, %bb.bv ], [ %.sroa.081.0.i, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.59.0.copyload194, %bb.ax ], [ undef, %.noexc49 ], [ %.sroa.089.i.sroa.9.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.59.8.copyload, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ] ; 4 uses
  %.sroa.74.0 = phi i8 [ undef, %bb.bx ], [ undef, %bb.ce ], [ undef, %bb.ch ], [ undef, %bb.cx ], [ undef, %.noexc39 ], [ undef, %bb.da ], [ undef, %.noexc41 ], [ undef, %bb.dc ], [ undef, %bb.dm ], [ undef, %.noexc44 ], [ undef, %bb.ds ], [ undef, %bb.dv ], [ undef, %bb.dx ], [ undef, %bb.bv ], [ undef, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.74.0.copyload232, %bb.ax ], [ undef, %.noexc49 ], [ %i.gi, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ undef, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %.sroa.73228.0 = phi i64 [ undef, %bb.bx ], [ undef, %bb.ce ], [ undef, %bb.ch ], [ undef, %bb.cx ], [ undef, %.noexc39 ], [ undef, %bb.da ], [ undef, %.noexc41 ], [ undef, %bb.dc ], [ undef, %bb.dm ], [ undef, %.noexc44 ], [ undef, %bb.ds ], [ undef, %bb.dv ], [ undef, %bb.dx ], [ undef, %bb.bv ], [ undef, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.73228.0.copyload230, %bb.ax ], [ undef, %.noexc49 ], [ %i.hf, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ undef, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %.sroa.71.0 = phi i8 [ %i.id, %bb.bx ], [ undef, %bb.ce ], [ %.sroa.71.32.copyload, %bb.ch ], [ %.sroa.71.56.copyload, %bb.cx ], [ undef, %.noexc39 ], [ undef, %bb.da ], [ undef, %.noexc41 ], [ undef, %bb.dc ], [ undef, %bb.dm ], [ undef, %.noexc44 ], [ undef, %bb.ds ], [ undef, %bb.dv ], [ undef, %bb.dx ], [ undef, %bb.bv ], [ %.sroa.71.72.copyload, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.71.0.copyload224, %bb.ax ], [ undef, %.noexc49 ], [ %.sroa.089.i.sroa.15.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.71.8.copyload, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %.sroa.70.0 = phi i8 [ %i.ib, %bb.bx ], [ undef, %bb.ce ], [ %.sroa.70.32.copyload, %bb.ch ], [ %.sroa.70.56.copyload, %bb.cx ], [ undef, %.noexc39 ], [ undef, %bb.da ], [ undef, %.noexc41 ], [ undef, %bb.dc ], [ undef, %bb.dm ], [ undef, %.noexc44 ], [ undef, %bb.ds ], [ undef, %bb.dv ], [ undef, %bb.dx ], [ undef, %bb.bv ], [ %.sroa.70.72.copyload, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.70.0.copyload221, %bb.ax ], [ undef, %.noexc49 ], [ %.sroa.089.i.sroa.14.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.70.8.copyload, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %.sroa.69.0 = phi i8 [ %i.hv, %bb.bx ], [ undef, %bb.ce ], [ %.sroa.69.32.copyload, %bb.ch ], [ %.sroa.69.56.copyload, %bb.cx ], [ undef, %.noexc39 ], [ undef, %bb.da ], [ undef, %.noexc41 ], [ undef, %bb.dc ], [ undef, %bb.dm ], [ undef, %.noexc44 ], [ undef, %bb.ds ], [ undef, %bb.dv ], [ undef, %bb.dx ], [ undef, %bb.bv ], [ %.sroa.69.72.copyload, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.69.0.copyload218, %bb.ax ], [ undef, %.noexc49 ], [ %.sroa.089.i.sroa.13.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.69.8.copyload, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %.sroa.67.0 = phi i64 [ %i.hz, %bb.bx ], [ undef, %bb.ce ], [ %.sroa.67.32.copyload, %bb.ch ], [ %.sroa.67.56.copyload, %bb.cx ], [ undef, %.noexc39 ], [ undef, %bb.da ], [ undef, %.noexc41 ], [ undef, %bb.dc ], [ %.sroa.59.i.sroa.4.0, %bb.dm ], [ undef, %.noexc44 ], [ undef, %bb.ds ], [ undef, %bb.dv ], [ undef, %bb.dx ], [ undef, %bb.bv ], [ %.sroa.67.72.copyload, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.67.0.copyload215, %bb.ax ], [ undef, %.noexc49 ], [ %.sroa.089.i.sroa.12.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.67.8.copyload, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %.sroa.41.0 = phi i64 [ %.sroa.41.8.copyload173, %bb.bx ], [ %.sroa.41.8.copyload171, %bb.ce ], [ %.sroa.41.8.copyload169, %bb.ch ], [ %.sroa.41.8.copyload167, %bb.cx ], [ %.sroa.41.8.copyload165, %.noexc39 ], [ %.sroa.41.8.copyload163, %bb.da ], [ %.sroa.41.8.copyload161, %.noexc41 ], [ %.sroa.41.8.copyload159, %bb.dc ], [ %.sroa.41.8.copyload157, %bb.dm ], [ %.sroa.41.8.copyload155, %.noexc44 ], [ %.sroa.41.8.copyload153, %bb.ds ], [ %.sroa.41.8.copyload151, %bb.dv ], [ %.val38.i, %bb.dx ], [ undef, %bb.bv ], [ %.sroa.41.24.copyload, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %.sroa.41.0.copyload146, %bb.ax ], [ %.sroa.41.8.copyload149, %.noexc49 ], [ %.sroa.089.i.sroa.6.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %.sroa.41.8.copyload, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %.sroa.097.0 = phi i64 [ -9223372036854775807, %bb.bx ], [ -9223372036854775806, %bb.ce ], [ -9223372036854775805, %bb.ch ], [ -9223372036854775804, %bb.cx ], [ -9223372036854775803, %.noexc39 ], [ -9223372036854775802, %bb.da ], [ -9223372036854775801, %.noexc41 ], [ -9223372036854775800, %bb.dc ], [ -9223372036854775799, %bb.dm ], [ -9223372036854775798, %.noexc44 ], [ -9223372036854775797, %bb.ds ], [ -9223372036854775796, %bb.dv ], [ -9223372036854775795, %bb.dx ], [ -9223372036854775788, %bb.bv ], [ -9223372036854775793, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %i.cf, %bb.ax ], [ -9223372036854775791, %.noexc49 ], [ %.sroa.089.i.sroa.0.0.copyload, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ -9223372036854775789, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ -9223372036854775794, %bb.g ] ; 3 uses
  %i.ma = phi <2 x i64> [ %i.ie, %bb.bx ], [ %i.im, %bb.ce ], [ %i.iq, %bb.ch ], [ %i.jq, %bb.cx ], [ %i.cx, %.noexc39 ], [ %i.jy, %bb.da ], [ %i.de, %.noexc41 ], [ %i.kb, %bb.dc ], [ %i.kl, %bb.dm ], [ %i.dn, %.noexc44 ], [ %i.kr, %bb.ds ], [ %i.kv, %bb.dv ], [ %i.la, %bb.dx ], [ undef, %bb.bv ], [ %i.lt, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %i.gd, %bb.ax ], [ %i.gg, %.noexc49 ], [ %i.hg, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %i.ht, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %i.mb = phi <2 x i64> [ %i.hx, %bb.bx ], [ undef, %bb.ce ], [ %i.ir, %bb.ch ], [ %i.jr, %bb.cx ], [ undef, %.noexc39 ], [ undef, %bb.da ], [ undef, %.noexc41 ], [ undef, %bb.dc ], [ %i.kk, %bb.dm ], [ undef, %.noexc44 ], [ undef, %bb.ds ], [ undef, %bb.dv ], [ undef, %bb.dx ], [ undef, %bb.bv ], [ %i.lv, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i" ], [ %i.ge, %bb.ax ], [ undef, %.noexc49 ], [ %i.hh, %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i" ], [ %i.hr, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i" ], [ undef, %bb.g ]
  %i.mc = getelementptr inbounds nuw i8, ptr %i.br, i64 776
  store i32 %..i, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.br, i64 712
  store i32 0, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.br, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.me, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false)
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 751
  store i8 1, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.br, i64 767
  store i8 1, ptr %.sroa.27.0..sroa_idx8, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.br, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.mf, ptr noundef nonnull align 8 dereferenceable(104) %i.bp, i64 104, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.br, i64 720
  store i32 0, ptr %i.mg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.br, ptr noundef nonnull align 8 dereferenceable(192) %i.bo, i64 192, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.br, i64 780
  store i8 0, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.br, i64 424 ; 2 uses
  store i64 %.sroa.097.0, ptr %i.mi, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 432
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 440
  store <2 x i64> %i.ma, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 448 ; 2 uses
  store i64 %.sroa.41.0, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 456
  %.sroa.43.sroa.17.0.insert.shift = shl nuw i64 %.sroa.43.sroa.17.sroa.0.0, 8
  %.sroa.43.sroa.0.0.insert.ext = and i64 %.sroa.43.sroa.0.0, 255
  %.sroa.43.sroa.0.0.insert.insert = or disjoint i64 %.sroa.43.sroa.0.0.insert.ext, %.sroa.43.sroa.17.0.insert.shift
  store i64 %.sroa.43.sroa.0.0.insert.insert, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 464
  store ptr %i.lz, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 472 ; 2 uses
  store i64 %.promoted25.i.i, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 480
  store <2 x i64> %i.mb, ptr %.sroa.61.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 496
  store i64 %.sroa.67.0, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 504
  store i8 %.sroa.69.0, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 505
  store i8 %.sroa.70.0, ptr %.sroa.70.0..sroa_idx, align 1
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 506
  store i8 %.sroa.71.0, ptr %.sroa.71.0..sroa_idx, align 2
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(117) %.sroa.72.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(117) %.sroa.72, i64 117, i1 false)
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.73.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.73, i64 72, i1 false)
  %.sroa.73228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 696
  store i64 %.sroa.73228.0, ptr %.sroa.73228.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 704
  store i8 %.sroa.74.0, ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.75.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.75, i64 7, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.br, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.mj, ptr noundef nonnull align 8 dereferenceable(104) %5, i64 104, i1 false)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.br, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mk, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.72)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.experimental.noalias.scope.decl(metadata !51457)
  %i.ml = icmp ne i64 %.sroa.097.0, -9223372036854775790
  call void @llvm.assume(i1 %i.ml)
  %i.mm = add i64 %.sroa.097.0, 9223372036854775797
  %switch.i = icmp ult i64 %i.mm, 2
  br i1 %switch.i, label %bb.el, label %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit

bb.el:                                            ; preds = %"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !51460)
  %i.mn = lshr i32 %..i, 16
  %i.mo = trunc nuw i32 %i.mn to i16              ; 2 uses
  %i.mp = trunc i32 %..i to i16
  %i.mq = icmp ult i64 %.promoted25.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.mq)
  %.not33.i.i = icmp eq i64 %.promoted25.i.i, 0
  br i1 %.not33.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.el, %.outer.i.i
  %.sroa.01.0.ph31.i.i = phi i64 [ %i.mx, %.outer.i.i ], [ 0, %bb.el ] ; 4 uses
  %.promoted2729.i.i = phi i64 [ %.promoted26.i.i, %.outer.i.i ], [ %.promoted25.i.i, %bb.el ]
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.lz, i64 %.sroa.01.0.ph31.i.i ; 7 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mv = xor i64 %.sroa.01.0.ph31.i.i, -1
  br label %bb.em

bb.em:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i", %.lr.ph.i.i
  %.promoted26.i.i = phi i64 [ %.promoted2729.i.i, %.lr.ph.i.i ], [ %i.nh, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i" ] ; 6 uses
  %i.mw = load i16, ptr %i.ms, align 8, !noalias !51463, !noundef !14 ; 2 uses
  %.not.i.i55 = icmp ult i16 %i.mw, %i.mo
  br i1 %.not.i.i55, label %.outer.i.i, label %bb.en

.outer.i.i:                                       ; preds = %bb.ep, %bb.em
  %i.mx = add nuw nsw i64 %.sroa.01.0.ph31.i.i, 1 ; 2 uses
  %i.my = icmp samesign ult i64 %i.mx, %.promoted26.i.i
  br i1 %i.my, label %.lr.ph.i.i, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i"

bb.en:                                            ; preds = %bb.em
  %i.mz = icmp eq i16 %i.mw, %i.mo
  %..i.i = select i1 %i.mz, i16 %i.mp, i16 0
  %.sroa.013.0.insert.ext.i.i = zext i16 %..i.i to i48
  %.sroa.013.2.insert.insert.i.i = or disjoint i48 %.sroa.013.0.insert.ext.i.i, 4294901760
  %i.na = invoke noundef i64 @_ZN7roaring6bitmap9container9Container12remove_range17h1a85b2ff3d71fcb1E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.mr, i48 %.sroa.013.2.insert.insert.i.i)
          to label %.noexc57 unwind label %.loopexit326 ; 0 uses

.noexc57:                                         ; preds = %bb.en
  %i.nb = load i64, ptr %i.mr, align 8, !range !2917, !noalias !51463, !noundef !14 ; 3 uses
  %i.nc = icmp eq i64 %i.nb, -9223372036854775808
  %i.nd = load i64, ptr %i.mt, align 8, !noalias !51463, !noundef !14 ; 2 uses
  br i1 %i.nc, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.noexc57
  %i.ne = icmp ult i64 %i.nd, 4611686018427387904
  call void @llvm.assume(i1 %i.ne)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.noexc57
  %.sroa.012.0.in.i.i = icmp eq i64 %i.nd, 0
  br i1 %.sroa.012.0.in.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i", label %.outer.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i": ; preds = %bb.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !51464)
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !51467 ; 4 uses
  %i.nf = add nsw i64 %.promoted26.i.i, %i.mv
  %i.ng = shl nuw nsw i64 %i.nf, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mr, ptr nonnull align 8 %i.mu, i64 %i.ng, i1 false), !noalias !51469
  %i.nh = add nsw i64 %.promoted26.i.i, -1        ; 4 uses
  store i64 %i.nh, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !51471, !noalias !51472
  switch i64 %i.nb, label %bb.eq [
    i64 -9223372036854775808, label %bb.er
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i"
  ]

bb.eq:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i"
  %i.ni = shl nuw i64 %i.nb, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.ni, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !51463
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i"

bb.er:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !51463
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i": ; preds = %bb.er, %bb.eq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i"
  %i.nj = icmp ult i64 %.promoted26.i.i, 288230376151711745
  call void @llvm.assume(i1 %i.nj)
  %i.nk = icmp samesign ult i64 %.sroa.01.0.ph31.i.i, %i.nh
  br i1 %i.nk, label %bb.em, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i": ; preds = %.outer.i.i, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i"
  %i.nl = phi i64 [ %i.nh, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i" ], [ %.promoted26.i.i, %.outer.i.i ] ; 5 uses
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i"
  %min.iters.check = icmp ult i64 %i.nl, 5
  br i1 %min.iters.check, label %.preheader.i.preheader1121, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %i.nn = and i64 %i.nl, 3                        ; 2 uses
  %i.no = icmp eq i64 %i.nn, 0
  %i.np = select i1 %i.no, i64 4, i64 %i.nn
  %n.vec = sub i64 %i.nl, %i.np                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.og, %vector.body ]
  %vec.phi1014 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.oh, %vector.body ]
  %i.nq = getelementptr inbounds nuw [32 x i8], ptr %i.lz, i64 %index
  %i.nr = getelementptr inbounds nuw [32 x i8], ptr %i.lz, i64 %index
  %i.ns = getelementptr inbounds nuw [32 x i8], ptr %i.lz, i64 %index
  %i.nt = getelementptr inbounds nuw [32 x i8], ptr %i.lz, i64 %index
  %i.nu = getelementptr i8, ptr %i.nq, i64 16
  %i.nv = getelementptr i8, ptr %i.nr, i64 48
  %i.nw = getelementptr i8, ptr %i.ns, i64 80
  %i.nx = getelementptr i8, ptr %i.nt, i64 112
  %i.ny = load i64, ptr %i.nu, align 8, !noalias !51457
  %i.nz = load i64, ptr %i.nv, align 8, !noalias !51457
  %i.oa = insertelement <2 x i64> poison, i64 %i.ny, i64 0
  %i.ob = insertelement <2 x i64> %i.oa, i64 %i.nz, i64 1
  %i.oc = load i64, ptr %i.nw, align 8, !noalias !51457
  %i.od = load i64, ptr %i.nx, align 8, !noalias !51457
  %i.oe = insertelement <2 x i64> poison, i64 %i.oc, i64 0
  %i.of = insertelement <2 x i64> %i.oe, i64 %i.od, i64 1
  %i.og = add <2 x i64> %i.ob, %vec.phi           ; 2 uses
  %i.oh = add <2 x i64> %i.of, %vec.phi1014       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oi = icmp eq i64 %index.next, %n.vec
  br i1 %i.oi, label %middle.block, label %vector.body, !llvm.loop !51473

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.oh, %i.og
  %i.oj = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.i.preheader1121

.preheader.i.preheader1121:                       ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.09.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.oj, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader1121, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i"
  %.sroa.09.0.i.i = phi i64 [ %i.op, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ], [ %.sroa.09.0.i.i.ph, %.preheader.i.preheader1121 ] ; 2 uses
  %.sroa.07.0.i.i = phi i64 [ %i.oo, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ], [ %.sroa.07.0.i.i.ph, %.preheader.i.preheader1121 ]
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %i.lz, i64 %.sroa.09.0.i.i ; 2 uses
  %.val.i.i56 = load i64, ptr %i.ok, align 8, !range !2917, !noalias !51457, !noundef !14
  %i.ol = getelementptr i8, ptr %i.ok, i64 16
  %.val19.i.i = load i64, ptr %i.ol, align 8, !noalias !51457 ; 2 uses
  %i.om = icmp eq i64 %.val.i.i56, -9223372036854775808
  br i1 %i.om, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i", label %bb.es

bb.es:                                            ; preds = %.preheader.i
  %i.on = icmp ult i64 %.val19.i.i, 4611686018427387904
  call void @llvm.assume(i1 %i.on)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i": ; preds = %bb.es, %.preheader.i
  %i.oo = add i64 %.val19.i.i, %.sroa.07.0.i.i    ; 2 uses
  %i.op = add nuw i64 %.sroa.09.0.i.i, 1          ; 2 uses
  %i.oq = icmp eq i64 %i.op, %i.nl
  br i1 %i.oq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", label %.preheader.i, !llvm.loop !51474

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i", %bb.el
  %.sroa.04.0.i.i = phi i64 [ 0, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i" ], [ 0, %bb.el ], [ %i.oo, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ]
  %i.or = load i64, ptr %i.br, align 8, !range !4646, !alias.scope !51457, !noundef !14
  %i.os = add nsw i64 %i.or, -11
  %or.cond.i = icmp ult i64 %i.os, 2
  br i1 %or.cond.i, label %bb.et, label %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit

bb.et:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i"
  %.sroa.02.0.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i64 %.sroa.04.0.i.i, ptr %.sroa.02.0.i, align 8, !alias.scope !51457
  br label %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit

.loopexit326:                                     ; preds = %bb.en
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.loopexit.split-lp327:                            ; preds = %bb.ic, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i"
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.body80:                                          ; preds = %.loopexit326, %.loopexit.split-lp327, %bb.gy, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %.body.i68
  %eh.lpad-body81 = phi { ptr, i32 } [ %.pn30.i, %bb.gy ], [ %.pn30.i, %.body.i68 ], [ %.pn30.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %lpad.loopexit328, %.loopexit326 ], [ %lpad.loopexit.split-lp329, %.loopexit.split-lp327 ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.br) #81
          to label %.thread299 unwind label %bb.ig

_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit: ; preds = %bb.et, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", %"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !51475)
  %i.ot = load i64, ptr %i.mi, align 8, !range !4548, !alias.scope !51475, !noalias !51478, !noundef !14 ; 2 uses
  %i.ou = icmp ne i64 %i.ot, -9223372036854775790
  call void @llvm.assume(i1 %i.ou)
  %i.ov = icmp eq i64 %i.ot, -9223372036854775798
  br i1 %i.ov, label %bb.eu, label %bb.ic

bb.eu:                                            ; preds = %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !51480
  %i.ow = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16 ; 2 uses
  %i.oy = load i8, ptr %i.ox, align 8, !range !1313, !noalias !51481, !noundef !14
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i", !prof !15

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.eu
  %.pre.i.i.i.i.i = load i64, ptr %i.ow, align 8, !noalias !51492
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !51492
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i": ; preds = %bb.eu
  %i.pa = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc79 unwind label %.loopexit.split-lp327 ; 2 uses

.noexc79:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i"
  %i.pb = extractvalue { i64, i64 } %i.pa, 0
  %i.pc = extractvalue { i64, i64 } %i.pa, 1      ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i64 %i.pc, ptr %i.pd, align 8, !noalias !51493
  store i8 1, ptr %i.ox, align 8, !noalias !51493
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"

"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i": ; preds = %.noexc79, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i ], [ %i.pc, %.noexc79 ]
  %i.pe = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i ], [ %i.pb, %.noexc79 ] ; 2 uses
  %i.pf = add i64 %i.pe, 1
  store i64 %i.pf, ptr %i.ow, align 8, !noalias !51492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false), !noalias !51480
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  store i64 %i.pe, ptr %.sroa.4126.0..sroa_idx.i, align 8, !noalias !51480
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  store i64 %.pre-phi.i.i, ptr %.sroa.5127.0..sroa_idx.i, align 8, !noalias !51480
  %i.pg = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !alias.scope !51475, !noalias !51478, !nonnull !14, !noundef !14 ; 2 uses
  %i.ph = load i64, ptr %.sroa.41.0..sroa_idx, align 8, !alias.scope !51475, !noalias !51478, !noundef !14 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ph, 56
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 %.idx.i
  %.not384.i = icmp eq i64 %i.ph, 0
  br i1 %.not384.i, label %.thread503.i, label %.lr.ph.i

.thread503.i:                                     ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !51496
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit.i.i.i.i"

.lr.ph.i:                                         ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"
  %.sroa.421.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.812.0..sroa_idx.i.i.i43.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.1018.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.fh, %.lr.ph.i
  %.sroa.0292.0 = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0292.2, %bb.fh ]
  %.sroa.7293.0 = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.7293.2, %bb.fh ]
  %.sroa.10294.0 = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.10294.2, %bb.fh ]
  %.sroa.026.0385.i = phi ptr [ %i.pg, %.lr.ph.i ], [ %i.pr, %bb.fh ] ; 3 uses
  %i.po = phi ptr [ null, %.lr.ph.i ], [ %i.ahy, %bb.fh ]
end_hunk_3
begin_hunk_4_@_ZN15index_scheduler5queue5tasks9TaskQueue11update_task17h2fa37dcab3242c67E:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.712, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76)
  br label %bb.fd

bb.c:                                             ; preds = %bb.a
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(432) %.sroa.5128.0..sroa_idx, i64 432, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 136, ptr %i.ai, align 8
  %.not = icmp eq i64 %i.ao, 20
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.76, ptr noundef nonnull align 8 dereferenceable(344) %i.ai, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.76, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.7, i64 344, i1 false)
  br label %bb.fd

bb.e:                                             ; preds = %bb.c
  call void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76)
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.712, i64 344, i1 false)
  store i64 %i.ao, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(432) %.sroa.4, i64 432, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 780
  %i.as = load i8, ptr %i.ar, align 4, !range !1330, !noundef !14 ; 4 uses
  %.not198 = icmp eq i8 %i.as, 0
  br i1 %.not198, label %bb.f, label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 424
  %.val249 = load i64, ptr %i.at, align 8, !range !4548, !noundef !14 ; 2 uses
  %i.au = icmp ne i64 %.val249, -9223372036854775790
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp ugt i64 %.val249, -9223372036854775808
  br label %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit

.body:                                            ; preds = %bb.dt, %bb.dr, %bb.ds, %bb.q, %bb.aw, %bb.bh, %bb.g, %bb.ac, %bb.dx, %bb.cb, %bb.bu
  %.sroa.0115.0 = phi i1 [ true, %bb.bu ], [ false, %bb.dx ], [ true, %bb.cb ], [ %.sroa.0115.1, %bb.g ], [ false, %bb.ds ], [ true, %bb.bh ], [ true, %bb.aw ], [ true, %bb.q ], [ true, %bb.ac ], [ false, %bb.dr ], [ false, %bb.dt ]
  %.sroa.0118.0 = phi i1 [ false, %bb.bu ], [ false, %bb.dx ], [ false, %bb.cb ], [ %.sroa.0118.1, %bb.g ], [ false, %bb.ds ], [ true, %bb.bh ], [ true, %bb.aw ], [ true, %bb.q ], [ true, %bb.ac ], [ false, %bb.dr ], [ false, %bb.dt ]
  %.pn225 = phi { ptr, i32 } [ %.pn, %bb.bu ], [ %i.nh, %bb.dx ], [ %.pn, %bb.cb ], [ %i.az, %bb.g ], [ %i.nf, %bb.ds ], [ %i.hh, %bb.bh ], [ %i.gg, %bb.aw ], [ %i.cz, %bb.q ], [ %i.dx, %bb.ac ], [ %i.ne, %bb.dr ], [ %i.nd, %bb.dt ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$meilisearch_types..error..ResponseError$GT$$GT$17hcdfd42adb6a224bdE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.aw) #81
  %i.ax = load i64, ptr %i.ak, align 8, !range !4646, !alias.scope !52673, !noundef !14
  %i.ay = icmp eq i64 %i.ax, 19
  br i1 %i.ay, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$17h8181b99bb2f749ddE.exit421", label %bb.ey

bb.g:                                             ; preds = %.invoke, %switch.lookup603, %switch.lookup600, %bb.aa, %bb.h, %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..DbTaskNetwork$GT$$GT$17h2eb430cff7654ed3E.exit", %.thread541.thread, %bb.dc, %.thread.thread, %bb.cm, %bb.cf, %bb.cd, %bb.ca
  %.sroa.0115.1 = phi i1 [ false, %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..DbTaskNetwork$GT$$GT$17h2eb430cff7654ed3E.exit" ], [ true, %bb.aa ], [ true, %.thread541.thread ], [ true, %bb.dc ], [ true, %.invoke ], [ true, %switch.lookup603 ], [ true, %.thread.thread ], [ true, %bb.cm ], [ true, %bb.cd ], [ true, %switch.lookup600 ], [ true, %bb.cf ], [ true, %bb.h ], [ true, %bb.ca ]
  %.sroa.0118.1 = phi i1 [ false, %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..DbTaskNetwork$GT$$GT$17h2eb430cff7654ed3E.exit" ], [ true, %bb.aa ], [ false, %.thread541.thread ], [ false, %bb.dc ], [ false, %.invoke ], [ true, %switch.lookup603 ], [ false, %.thread.thread ], [ false, %bb.cm ], [ false, %bb.cd ], [ true, %switch.lookup600 ], [ false, %bb.cf ], [ true, %bb.h ], [ false, %bb.ca ]
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit: ; preds = %bb.f, %bb.e
  %.sroa.019.0 = phi i1 [ false, %bb.e ], [ %i.av, %bb.f ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 780 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 4, !range !1330, !noundef !14
  %.not199 = icmp eq i8 %i.as, %i.bb
  br i1 %.not199, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.am, %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 424 ; 3 uses
  %.val248 = load i64, ptr %i.bc, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.bd = icmp ne i64 %.val248, -9223372036854775790
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nsw i64 %.val248, 9223372036854775807
  %i.bf = icmp ugt i64 %.val248, -9223372036854775808
  %i.bg = select i1 %i.bf, i64 %i.be, i64 17      ; 2 uses
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.bg
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 6 uses
  %.val247 = load i64, ptr %i.bh, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.bi = icmp ne i64 %.val247, -9223372036854775790
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nsw i64 %.val247, 9223372036854775807
  %i.bk = icmp ugt i64 %.val247, -9223372036854775808
  %i.bl = select i1 %i.bk, i64 %i.bj, i64 17
  %switch.gep607 = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.bl
  %switch.load608 = load i8, ptr %switch.gep607, align 1
  %.not204 = icmp eq i8 %switch.load, %switch.load608
  br i1 %.not204, label %bb.an, label %switch.lookup600

bb.h:                                             ; preds = %_ZN17meilisearch_types5tasks15KindWithContent7as_kind17h9b9fea13e1db2d99E.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val255 = load i64, ptr %i.bm, align 8, !noundef !14 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val256 = load i32, ptr %i.bn, align 8         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !52679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !52682
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h1630200aad08bd22E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, i64 %.val255, i32 %.val256, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 range(i8 0, 5) %i.as)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.h
  %i.bo = load i64, ptr %i.m, align 8, !range !751, !noalias !52682, !noundef !14
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.bq, align 8, !noalias !52682 ; 3 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.511.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !52682 ; 2 uses
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.511.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52682 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !52682
  br i1 %i.bp, label %bb.z, label %bb.i

bb.i:                                             ; preds = %.noexc
  %.not.i.i = icmp eq i64 %.sroa.010.0.copyload.i.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i.i = select i1 %.not.i.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i.i ; 7 uses
  %..sroa.5.sroa.5.0.copyload.i.i = select i1 %.not.i.i, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i.i ; 9 uses
  %..sroa.08.0.copyload.i.i = select i1 %.not.i.i, i64 0, i64 %.sroa.010.0.copyload.i.i ; 5 uses
  store i64 %..sroa.08.0.copyload.i.i, ptr %i.n, align 8, !noalias !52679
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %..sroa.5.sroa.026.0.copyload.i.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !52679
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %..sroa.5.sroa.5.0.copyload.i.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !52679
  call void @llvm.experimental.noalias.scope.decl(metadata !52686)
  %i.br = load i32, ptr %i.al, align 8, !alias.scope !52676, !noalias !52689, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52690)
  %i.bs = lshr i32 %i.br, 16
  %i.bt = trunc nuw i32 %i.bs to i16              ; 3 uses
  %i.bu = trunc i32 %i.br to i16
  switch i64 %..sroa.5.sroa.5.0.copyload.i.i, label %.lr.ph.i.i.i.i.i [
    i64 0, label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i"
    i64 1, label %._crit_edge.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.i
  %.sroa.05.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.cf, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.bv = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i, %..sroa.5.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i ; 7 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 24
  %.val20.i.i.i.i.i = load i16, ptr %i.bx, align 8, !alias.scope !52693, !noalias !52698, !noundef !14 ; 2 uses
  %i.by = icmp eq i16 %.val20.i.i.i.i.i, %i.bt
  br i1 %i.by, label %bb.k, label %bb.j

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.sroa.01.025.i.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.sroa.511.sroa.5.0.copyload.i.i, %bb.i ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.bz = lshr i64 %.sroa.01.025.i.i.i.i.i, 1     ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.05.024.i.i.i.i.i  ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %..sroa.5.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i, i64 %i.ca
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  %.val22.i.i.i.i.i = load i16, ptr %i.cd, align 8, !alias.scope !52693, !noalias !52698, !noundef !14
  %i.ce = icmp ugt i16 %.val22.i.i.i.i.i, %i.bt
  %i.cf = select i1 %i.ce, i64 %.sroa.05.024.i.i.i.i.i, i64 %i.ca, !unpredictable !14 ; 2 uses
  %i.cg = sub nuw i64 %.sroa.01.025.i.i.i.i.i, %i.bz ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ci = icmp ult i16 %.val20.i.i.i.i.i, %i.bt
  %i.cj = zext i1 %i.ci to i64
  %i.ck = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i, %i.cj
  %i.cl = icmp ule i64 %i.ck, %..sroa.5.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %i.cl)
  br label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i"

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cm = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bw, i16 noundef %i.bu)
          to label %.noexc.i unwind label %bb.q, !noalias !52679

.noexc.i:                                         ; preds = %bb.k
  br i1 %i.cm, label %bb.l, label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i"

bb.l:                                             ; preds = %.noexc.i
  %i.cn = load i64, ptr %i.bw, align 8, !range !2917, !noalias !52700, !noundef !14 ; 3 uses
  %i.co = icmp eq i64 %i.cn, -9223372036854775808
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !52700, !noundef !14 ; 2 uses
  br i1 %i.co, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = icmp ult i64 %i.cq, 4611686018427387904
  call void @llvm.assume(i1 %i.cr)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.in.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.sroa.03.0.in.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i", label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i": ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !52701)
  %i.cs = icmp ult i64 %..sroa.5.sroa.5.0.copyload.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.cs)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !52704 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cu = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i, -1
  %i.cv = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i, %i.cu
  %i.cw = shl nuw nsw i64 %i.cv, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.ct, i64 %i.cw, i1 false), !noalias !52706
  %i.cx = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i, -1 ; 4 uses
  store i64 %i.cx, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !52708, !noalias !52709
  switch i64 %i.cn, label %bb.o [
    i64 -9223372036854775808, label %bb.p
    i64 0, label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i"
  ]

bb.o:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i"
  %i.cy = shl nuw i64 %i.cn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !52700
  br label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i"

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !52700
  br label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i"

bb.q:                                             ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i", %bb.k
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #81, !noalias !52679
  br label %.body

"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i": ; preds = %bb.p, %bb.o, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i", %bb.n, %.noexc.i, %bb.j, %bb.i
  %i.da = phi i64 [ %..sroa.5.sroa.5.0.copyload.i.i, %bb.i ], [ %.sroa.511.sroa.5.0.copyload.i.i, %bb.j ], [ %.sroa.511.sroa.5.0.copyload.i.i, %.noexc.i ], [ %.sroa.511.sroa.5.0.copyload.i.i, %bb.n ], [ %i.cx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i" ], [ %i.cx, %bb.o ], [ %i.cx, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !52710
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17he273a9e881c225f8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, i64 %.val255, i32 %.val256, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, i8 range(i8 0, 5) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc22.i unwind label %bb.q, !noalias !52715

.noexc22.i:                                       ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h04dc991e0deefc71E.exit.i"
  %i.db = load i32, ptr %i.l, align 8, !range !33282, !noalias !52710, !noundef !14
  %.not.i20.i = icmp eq i32 %i.db, 5
  br i1 %.not.i20.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.noexc22.i
  %.sroa.6.8.copyload426 = load i64, ptr %i.l, align 8, !noalias !52716 ; 2 uses
  %.sroa.9427.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.9427.8.copyload428 = load ptr, ptr %.sroa.9427.8..sroa_idx, align 8, !noalias !52716 ; 2 uses
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.10.8.copyload429 = load i64, ptr %.sroa.10.8..sroa_idx, align 8, !noalias !52716 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !52710
  call void @llvm.experimental.noalias.scope.decl(metadata !52717)
  %i.dc = icmp eq i64 %i.da, 0
  br i1 %i.dc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i", label %.lr.ph.i.i.i.i23.i

.lr.ph.i.i.i.i23.i:                               ; preds = %bb.r, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.de, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i" ], [ 0, %bb.r ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.de = add nuw i64 %.sroa.0.010.i.i.i.i.i, 1   ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.dd, align 8, !range !2917, !alias.scope !52717, !noalias !52720, !noundef !14 ; 2 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !52717, !noalias !52720 ; 4 uses
  switch i64 %.val8.i.i.i.i.i, label %bb.s [
    i64 -9223372036854775808, label %bb.t
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i"
  ]

bb.s:                                             ; preds = %.lr.ph.i.i.i.i23.i
  %i.dg = shl nuw i64 %.val8.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !52725
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i"

bb.t:                                             ; preds = %.lr.ph.i.i.i.i23.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !52725
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i": ; preds = %bb.t, %bb.s, %.lr.ph.i.i.i.i23.i
  %i.dh = icmp eq i64 %i.de, %i.da
  br i1 %i.dh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i", label %.lr.ph.i.i.i.i23.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i", %bb.r
  %i.di = icmp eq i64 %..sroa.08.0.copyload.i.i, 0
  br i1 %i.di, label %bb.z, label %bb.u

bb.u:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i"
  %i.dj = shl nuw i64 %..sroa.08.0.copyload.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !52720
  br label %bb.z

bb.v:                                             ; preds = %.noexc22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !52710
  call void @llvm.experimental.noalias.scope.decl(metadata !52726)
  %i.dk = icmp eq i64 %i.da, 0
  br i1 %i.dk, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i", label %.lr.ph.i.i.i.i26.i

.lr.ph.i.i.i.i26.i:                               ; preds = %bb.v, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i"
  %.sroa.0.010.i.i.i.i27.i = phi i64 [ %i.dm, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i" ], [ 0, %bb.v ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i, i64 %.sroa.0.010.i.i.i.i27.i ; 2 uses
  %i.dm = add nuw i64 %.sroa.0.010.i.i.i.i27.i, 1 ; 2 uses
  %.val8.i.i.i.i28.i = load i64, ptr %i.dl, align 8, !range !2917, !alias.scope !52726, !noalias !52729, !noundef !14 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dl, i64 8
  %.val9.i.i.i.i29.i = load ptr, ptr %i.dn, align 8, !alias.scope !52726, !noalias !52729 ; 4 uses
  switch i64 %.val8.i.i.i.i28.i, label %bb.w [
    i64 -9223372036854775808, label %bb.x
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i"
  ]

bb.w:                                             ; preds = %.lr.ph.i.i.i.i26.i
  %i.do = shl nuw i64 %.val8.i.i.i.i28.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i29.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i29.i, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !52734
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i"

bb.x:                                             ; preds = %.lr.ph.i.i.i.i26.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i29.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i29.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !52734
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i": ; preds = %bb.x, %bb.w, %.lr.ph.i.i.i.i26.i
  %i.dp = icmp eq i64 %i.dm, %i.da
  br i1 %i.dp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i", label %.lr.ph.i.i.i.i26.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i", %bb.v
  %i.dq = icmp eq i64 %..sroa.08.0.copyload.i.i, 0
  br i1 %i.dq, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i"
  %i.dr = shl nuw i64 %..sroa.08.0.copyload.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !52729
  br label %bb.aa

bb.z:                                             ; preds = %bb.u, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i", %.noexc
  %.sroa.10.0.ph = phi i64 [ %.sroa.511.sroa.5.0.copyload.i.i, %.noexc ], [ %.sroa.10.8.copyload429, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i" ], [ %.sroa.10.8.copyload429, %bb.u ]
  %.sroa.9427.0.ph = phi ptr [ %.sroa.511.sroa.0.0.copyload.i.i, %.noexc ], [ %.sroa.9427.8.copyload428, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i" ], [ %.sroa.9427.8.copyload428, %bb.u ]
  %.sroa.6.0.ph = phi i64 [ %.sroa.010.0.copyload.i.i, %.noexc ], [ %.sroa.6.8.copyload426, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i" ], [ %.sroa.6.8.copyload426, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !52679
  store i64 127, ptr %0, align 8
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.ph, ptr %.sroa.2140.0..sroa_idx, align 8
  %.sroa.2140.sroa.2.0..sroa.2140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9427.0.ph, ptr %.sroa.2140.sroa.2.0..sroa.2140.0..sroa_idx.sroa_idx, align 8
  %.sroa.2140.sroa.3.0..sroa.2140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0.ph, ptr %.sroa.2140.sroa.3.0..sroa.2140.0..sroa_idx.sroa_idx, align 8
  br label %bb.cs

bb.aa:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i", %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !52679
  %i.ds = load i8, ptr %i.ba, align 4, !range !1330, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !52738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !52741
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h1630200aad08bd22E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.j, i64 %.val255, i32 %.val256, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 range(i8 0, 5) %i.ds)
          to label %.noexc288 unwind label %bb.g

.noexc288:                                        ; preds = %bb.aa
  %i.dt = load i64, ptr %i.j, align 8, !range !751, !noalias !52741, !noundef !14
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.010.0.copyload.i.i265 = load i64, ptr %i.dv, align 8, !noalias !52741 ; 3 uses
  %.sroa.511.0..sroa_idx.i.i266 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.511.sroa.0.0.copyload.i.i267 = load ptr, ptr %.sroa.511.0..sroa_idx.i.i266, align 8, !noalias !52741 ; 2 uses
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i268 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.511.sroa.5.0.copyload.i.i269 = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i268, align 8, !noalias !52741 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !52741
  br i1 %i.du, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %.noexc288
  %.not.i.i270 = icmp eq i64 %.sroa.010.0.copyload.i.i265, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i.i271 = select i1 %.not.i.i270, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i.i267
  %..sroa.5.sroa.5.0.copyload.i.i272 = select i1 %.not.i.i270, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i.i269
  %..sroa.08.0.copyload.i.i273 = select i1 %.not.i.i270, i64 0, i64 %.sroa.010.0.copyload.i.i265
  store i64 %..sroa.08.0.copyload.i.i273, ptr %i.k, align 8, !noalias !52738
  %.sroa.420.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %..sroa.5.sroa.026.0.copyload.i.i271, ptr %.sroa.420.0..sroa_idx.i274, align 8, !noalias !52738
  %.sroa.521.0..sroa_idx.i275 = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 %..sroa.5.sroa.5.0.copyload.i.i272, ptr %.sroa.521.0..sroa_idx.i275, align 8, !noalias !52738
  %i.dw = load i32, ptr %i.al, align 8, !alias.scope !52735, !noalias !52745, !noundef !14
  invoke fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef %i.dw)
          to label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h706d884d1dee16d3E.exit.i" unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h706d884d1dee16d3E.exit.i"
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #81, !noalias !52738
  br label %.body

"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h706d884d1dee16d3E.exit.i": ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !52748
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17he273a9e881c225f8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, i64 %.val255, i32 %.val256, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, i8 range(i8 0, 5) %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %.noexc.i276 unwind label %bb.ac, !noalias !52753

.noexc.i276:                                      ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h706d884d1dee16d3E.exit.i"
  %i.dy = load i32, ptr %i.i, align 8, !range !33282, !noalias !52748, !noundef !14
  %.not.i20.i277 = icmp eq i32 %i.dy, 5
  br i1 %.not.i20.i277, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %.noexc.i276
  %.sroa.6431.8.copyload432 = load i64, ptr %i.i, align 8, !noalias !52754 ; 2 uses
  %.sroa.9433.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.9433.8.copyload434 = load ptr, ptr %.sroa.9433.8..sroa_idx, align 8, !noalias !52754 ; 2 uses
  %.sroa.10435.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.10435.8.copyload436 = load i64, ptr %.sroa.10435.8..sroa_idx, align 8, !noalias !52754 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !52748
  call void @llvm.experimental.noalias.scope.decl(metadata !52755)
  call void @llvm.experimental.noalias.scope.decl(metadata !52758)
  %.val.i.i.i = load ptr, ptr %.sroa.420.0..sroa_idx.i274, align 8, !alias.scope !52761, !noalias !52738, !nonnull !14, !noundef !14 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN15index_scheduler5queue5tasks9TaskQueue11update_task17h2fa37dcab3242c67E:bb.a
  br i1 %i.ee, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i284", label %.lr.ph.i.i.i.i.i279

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i284": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i283", %bb.ad
  %.val2.i.i.i = load i64, ptr %i.k, align 8, !range !9, !alias.scope !52761, !noalias !52738, !noundef !14 ; 2 uses
  %i.ef = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ef, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i284"
  %i.eg = shl nuw i64 %.val2.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !52765
  br label %bb.al

bb.ah:                                            ; preds = %.noexc.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !52748
  call void @llvm.experimental.noalias.scope.decl(metadata !52767)
  call void @llvm.experimental.noalias.scope.decl(metadata !52770)
  %.val.i.i22.i = load ptr, ptr %.sroa.420.0..sroa_idx.i274, align 8, !alias.scope !52773, !noalias !52738, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i23.i = load i64, ptr %.sroa.521.0..sroa_idx.i275, align 8, !alias.scope !52773, !noalias !52738, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52774)
  %i.eh = icmp eq i64 %.val1.i.i23.i, 0
  br i1 %i.eh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i29.i", label %.lr.ph.i.i.i.i24.i

.lr.ph.i.i.i.i24.i:                               ; preds = %bb.ah, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i28.i"
  %.sroa.0.010.i.i.i.i25.i = phi i64 [ %i.ej, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i28.i" ], [ 0, %bb.ah ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i22.i, i64 %.sroa.0.010.i.i.i.i25.i ; 2 uses
  %i.ej = add nuw i64 %.sroa.0.010.i.i.i.i25.i, 1 ; 2 uses
  %.val8.i.i.i.i26.i = load i64, ptr %i.ei, align 8, !range !2917, !alias.scope !52774, !noalias !52777, !noundef !14 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  %.val9.i.i.i.i27.i = load ptr, ptr %i.ek, align 8, !alias.scope !52774, !noalias !52777 ; 4 uses
  switch i64 %.val8.i.i.i.i26.i, label %bb.ai [
    i64 -9223372036854775808, label %bb.aj
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i28.i"
  ]

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i24.i
  %i.el = shl nuw i64 %.val8.i.i.i.i26.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i27.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i27.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !52778
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i28.i"

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i24.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i27.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i27.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !52778
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i28.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i28.i": ; preds = %bb.aj, %bb.ai, %.lr.ph.i.i.i.i24.i
  %i.em = icmp eq i64 %i.ej, %.val1.i.i23.i
  br i1 %i.em, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i29.i", label %.lr.ph.i.i.i.i24.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i29.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i28.i", %bb.ah
  %.val2.i.i30.i = load i64, ptr %i.k, align 8, !range !9, !alias.scope !52773, !noalias !52738, !noundef !14 ; 2 uses
  %i.en = icmp eq i64 %.val2.i.i30.i, 0
  br i1 %i.en, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i29.i"
  %i.eo = shl nuw i64 %.val2.i.i30.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i22.i, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !52777
  br label %bb.am

bb.al:                                            ; preds = %bb.ag, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i284", %.noexc288
  %.sroa.10435.0.ph = phi i64 [ %.sroa.511.sroa.5.0.copyload.i.i269, %.noexc288 ], [ %.sroa.10435.8.copyload436, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i284" ], [ %.sroa.10435.8.copyload436, %bb.ag ]
  %.sroa.9433.0.ph = phi ptr [ %.sroa.511.sroa.0.0.copyload.i.i267, %.noexc288 ], [ %.sroa.9433.8.copyload434, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i284" ], [ %.sroa.9433.8.copyload434, %bb.ag ]
  %.sroa.6431.0.ph = phi i64 [ %.sroa.010.0.copyload.i.i265, %.noexc288 ], [ %.sroa.6431.8.copyload432, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i284" ], [ %.sroa.6431.8.copyload432, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !52738
  store i64 127, ptr %0, align 8
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6431.0.ph, ptr %.sroa.2146.0..sroa_idx, align 8
  %.sroa.2146.sroa.2.0..sroa.2146.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9433.0.ph, ptr %.sroa.2146.sroa.2.0..sroa.2146.0..sroa_idx.sroa_idx, align 8
  %.sroa.2146.sroa.3.0..sroa.2146.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10435.0.ph, ptr %.sroa.2146.sroa.3.0..sroa.2146.0..sroa_idx.sroa_idx, align 8
  br label %bb.cs

bb.am:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i29.i", %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !52738
  br label %switch.lookup

bb.an:                                            ; preds = %switch.lookup, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.ah, ptr noundef nonnull align 8 dereferenceable(288) %i.bc, i64 288, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ah, i64 288
  store ptr %i.bh, ptr %i.ep, align 8
  %i.eq = load i64, ptr %i.ah, align 8, !range !4548, !noundef !14 ; 2 uses
  %i.er = icmp ne i64 %i.eq, -9223372036854775790
  call void @llvm.assume(i1 %i.er)
  %i.es = icmp ult i64 %i.eq, -9223372036854775807
  br i1 %i.es, label %bb.bs, label %bb.ca

switch.lookup600:                                 ; preds = %switch.lookup
  %switch.gep601 = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.bg
  %switch.load602 = load i8, ptr %switch.gep601, align 1 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val259 = load i64, ptr %i.et, align 8, !noundef !14 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val260 = load i32, ptr %i.eu, align 8         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !52782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !52785
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h626f7dffaa513beaE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.g, i64 %.val259, i32 %.val260, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 range(i8 0, 18) %switch.load602)
          to label %.noexc338 unwind label %bb.g

.noexc338:                                        ; preds = %switch.lookup600
  %i.ev = load i64, ptr %i.g, align 8, !range !751, !noalias !52785, !noundef !14
  %i.ew = trunc nuw i64 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.010.0.copyload.i.i297 = load i64, ptr %i.ex, align 8, !noalias !52785 ; 3 uses
  %.sroa.511.0..sroa_idx.i.i298 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.511.sroa.0.0.copyload.i.i299 = load ptr, ptr %.sroa.511.0..sroa_idx.i.i298, align 8, !noalias !52785 ; 2 uses
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i300 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.511.sroa.5.0.copyload.i.i301 = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i300, align 8, !noalias !52785 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !52785
  br i1 %i.ew, label %bb.bf, label %bb.ao

bb.ao:                                            ; preds = %.noexc338
  %.not.i.i302 = icmp eq i64 %.sroa.010.0.copyload.i.i297, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i.i303 = select i1 %.not.i.i302, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i.i299 ; 7 uses
  %..sroa.5.sroa.5.0.copyload.i.i304 = select i1 %.not.i.i302, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i.i301 ; 9 uses
  %..sroa.08.0.copyload.i.i305 = select i1 %.not.i.i302, i64 0, i64 %.sroa.010.0.copyload.i.i297 ; 5 uses
  store i64 %..sroa.08.0.copyload.i.i305, ptr %i.h, align 8, !noalias !52782
  %.sroa.420.0..sroa_idx.i306 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %..sroa.5.sroa.026.0.copyload.i.i303, ptr %.sroa.420.0..sroa_idx.i306, align 8, !noalias !52782
  %.sroa.521.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %..sroa.5.sroa.5.0.copyload.i.i304, ptr %.sroa.521.0..sroa_idx.i307, align 8, !noalias !52782
  call void @llvm.experimental.noalias.scope.decl(metadata !52789)
  %i.ey = load i32, ptr %i.al, align 8, !alias.scope !52779, !noalias !52792, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52793)
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc nuw i32 %i.ez to i16              ; 3 uses
  %i.fb = trunc i32 %i.ey to i16
  switch i64 %..sroa.5.sroa.5.0.copyload.i.i304, label %.lr.ph.i.i.i.i.i331 [
    i64 0, label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i"
    i64 1, label %._crit_edge.i.i.i.i.i308
  ]

._crit_edge.i.i.i.i.i308:                         ; preds = %.lr.ph.i.i.i.i.i331, %bb.ao
  %.sroa.05.0.lcssa.i.i.i.i.i309 = phi i64 [ 0, %bb.ao ], [ %i.fm, %.lr.ph.i.i.i.i.i331 ] ; 4 uses
  %i.fc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i309, %..sroa.5.sroa.5.0.copyload.i.i304
  call void @llvm.assume(i1 %i.fc)
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i303, i64 %.sroa.05.0.lcssa.i.i.i.i.i309 ; 7 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 24
  %.val20.i.i.i.i.i310 = load i16, ptr %i.fe, align 8, !alias.scope !52796, !noalias !52801, !noundef !14 ; 2 uses
  %i.ff = icmp eq i16 %.val20.i.i.i.i.i310, %i.fa
  br i1 %i.ff, label %bb.aq, label %bb.ap

.lr.ph.i.i.i.i.i331:                              ; preds = %bb.ao, %.lr.ph.i.i.i.i.i331
  %.sroa.01.025.i.i.i.i.i332 = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i331 ], [ %.sroa.511.sroa.5.0.copyload.i.i301, %bb.ao ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i333 = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i331 ], [ 0, %bb.ao ] ; 2 uses
  %i.fg = lshr i64 %.sroa.01.025.i.i.i.i.i332, 1  ; 2 uses
  %i.fh = add i64 %i.fg, %.sroa.05.024.i.i.i.i.i333 ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %..sroa.5.sroa.5.0.copyload.i.i304
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i303, i64 %i.fh
  %i.fk = getelementptr i8, ptr %i.fj, i64 24
  %.val22.i.i.i.i.i334 = load i16, ptr %i.fk, align 8, !alias.scope !52796, !noalias !52801, !noundef !14
  %i.fl = icmp ugt i16 %.val22.i.i.i.i.i334, %i.fa
  %i.fm = select i1 %i.fl, i64 %.sroa.05.024.i.i.i.i.i333, i64 %i.fh, !unpredictable !14 ; 2 uses
  %i.fn = sub nuw i64 %.sroa.01.025.i.i.i.i.i332, %i.fg ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, 1
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i331, label %._crit_edge.i.i.i.i.i308

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i308
  %i.fp = icmp ult i16 %.val20.i.i.i.i.i310, %i.fa
  %i.fq = zext i1 %i.fp to i64
  %i.fr = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i309, %i.fq
  %i.fs = icmp ule i64 %i.fr, %..sroa.5.sroa.5.0.copyload.i.i304
  call void @llvm.assume(i1 %i.fs)
  br label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i"

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i308
  %i.ft = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fd, i16 noundef %i.fb)
          to label %.noexc.i326 unwind label %bb.aw, !noalias !52782

.noexc.i326:                                      ; preds = %bb.aq
  br i1 %i.ft, label %bb.ar, label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i"

bb.ar:                                            ; preds = %.noexc.i326
  %i.fu = load i64, ptr %i.fd, align 8, !range !2917, !noalias !52803, !noundef !14 ; 3 uses
  %i.fv = icmp eq i64 %i.fu, -9223372036854775808
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !52803, !noundef !14 ; 2 uses
  br i1 %i.fv, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fy = icmp ult i64 %i.fx, 4611686018427387904
  call void @llvm.assume(i1 %i.fy)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.03.0.in.i.i.i327 = icmp eq i64 %i.fx, 0
  br i1 %.sroa.03.0.in.i.i.i327, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i328", label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i328": ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !52804)
  %i.fz = icmp ult i64 %..sroa.5.sroa.5.0.copyload.i.i304, 288230376151711744
  call void @llvm.assume(i1 %i.fz)
  %.sroa.4.0..sroa_idx.i.i.i329 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.4.0.copyload.i.i.i330 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i329, align 8, !noalias !52807 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.gb = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i309, -1
  %i.gc = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i304, %i.gb
  %i.gd = shl nuw nsw i64 %i.gc, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr nonnull align 8 %i.ga, i64 %i.gd, i1 false), !noalias !52809
  %i.ge = add nsw i64 %..sroa.5.sroa.5.0.copyload.i.i304, -1 ; 4 uses
  store i64 %i.ge, ptr %.sroa.521.0..sroa_idx.i307, align 8, !alias.scope !52811, !noalias !52812
  switch i64 %i.fu, label %bb.au [
    i64 -9223372036854775808, label %bb.av
    i64 0, label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i"
  ]

bb.au:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i328"
  %i.gf = shl nuw i64 %i.fu, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i330) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i330, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !52803
  br label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i"

bb.av:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i328"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i330) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i330, i64 noundef 8192, i64 noundef 8) #79, !noalias !52803
  br label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i"

bb.aw:                                            ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i", %bb.aq
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #81, !noalias !52782
  br label %.body

"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i": ; preds = %bb.av, %bb.au, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i328", %bb.at, %.noexc.i326, %bb.ap, %bb.ao
  %i.gh = phi i64 [ %..sroa.5.sroa.5.0.copyload.i.i304, %bb.ao ], [ %.sroa.511.sroa.5.0.copyload.i.i301, %bb.ap ], [ %.sroa.511.sroa.5.0.copyload.i.i301, %.noexc.i326 ], [ %.sroa.511.sroa.5.0.copyload.i.i301, %bb.at ], [ %i.ge, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i.i328" ], [ %i.ge, %bb.au ], [ %i.ge, %bb.av ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !52813
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h6c35809cf94f65a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 %.val259, i32 %.val260, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, i8 range(i8 0, 18) %switch.load602, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.noexc22.i311 unwind label %bb.aw, !noalias !52818

.noexc22.i311:                                    ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17h36bf1dd20732ae2fE.exit.i"
  %i.gi = load i32, ptr %i.f, align 8, !range !33282, !noalias !52813, !noundef !14
  %.not.i20.i312 = icmp eq i32 %i.gi, 5
  br i1 %.not.i20.i312, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %.noexc22.i311
  %.sroa.6439.8.copyload440 = load i64, ptr %i.f, align 8, !noalias !52819 ; 2 uses
  %.sroa.9441.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.9441.8.copyload442 = load ptr, ptr %.sroa.9441.8..sroa_idx, align 8, !noalias !52819 ; 2 uses
  %.sroa.10443.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.10443.8.copyload444 = load i64, ptr %.sroa.10443.8..sroa_idx, align 8, !noalias !52819 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !52813
  call void @llvm.experimental.noalias.scope.decl(metadata !52820)
  %i.gj = icmp eq i64 %i.gh, 0
  br i1 %i.gj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i319", label %.lr.ph.i.i.i.i23.i314

.lr.ph.i.i.i.i23.i314:                            ; preds = %bb.ax, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i318"
  %.sroa.0.010.i.i.i.i.i315 = phi i64 [ %i.gl, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i318" ], [ 0, %bb.ax ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i303, i64 %.sroa.0.010.i.i.i.i.i315 ; 2 uses
  %i.gl = add nuw i64 %.sroa.0.010.i.i.i.i.i315, 1 ; 2 uses
  %.val8.i.i.i.i.i316 = load i64, ptr %i.gk, align 8, !range !2917, !alias.scope !52820, !noalias !52823, !noundef !14 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gk, i64 8
  %.val9.i.i.i.i.i317 = load ptr, ptr %i.gm, align 8, !alias.scope !52820, !noalias !52823 ; 4 uses
  switch i64 %.val8.i.i.i.i.i316, label %bb.ay [
    i64 -9223372036854775808, label %bb.az
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i318"
  ]

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i23.i314
  %i.gn = shl nuw i64 %.val8.i.i.i.i.i316, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i317) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i317, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !52828
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i318"

bb.az:                                            ; preds = %.lr.ph.i.i.i.i23.i314
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i317) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i317, i64 noundef 8192, i64 noundef 8) #79, !noalias !52828
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i318"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i318": ; preds = %bb.az, %bb.ay, %.lr.ph.i.i.i.i23.i314
  %i.go = icmp eq i64 %i.gl, %i.gh
  br i1 %i.go, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i319", label %.lr.ph.i.i.i.i23.i314

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i319": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i318", %bb.ax
  %i.gp = icmp eq i64 %..sroa.08.0.copyload.i.i305, 0
  br i1 %i.gp, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i319"
  %i.gq = shl nuw i64 %..sroa.08.0.copyload.i.i305, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i303, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !52823
  br label %bb.bf

bb.bb:                                            ; preds = %.noexc22.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !52813
  call void @llvm.experimental.noalias.scope.decl(metadata !52829)
  %i.gr = icmp eq i64 %i.gh, 0
  br i1 %i.gr, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i325", label %.lr.ph.i.i.i.i26.i320

.lr.ph.i.i.i.i26.i320:                            ; preds = %bb.bb, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i324"
  %.sroa.0.010.i.i.i.i27.i321 = phi i64 [ %i.gt, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i324" ], [ 0, %bb.bb ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i.i303, i64 %.sroa.0.010.i.i.i.i27.i321 ; 2 uses
  %i.gt = add nuw i64 %.sroa.0.010.i.i.i.i27.i321, 1 ; 2 uses
  %.val8.i.i.i.i28.i322 = load i64, ptr %i.gs, align 8, !range !2917, !alias.scope !52829, !noalias !52832, !noundef !14 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gs, i64 8
  %.val9.i.i.i.i29.i323 = load ptr, ptr %i.gu, align 8, !alias.scope !52829, !noalias !52832 ; 4 uses
  switch i64 %.val8.i.i.i.i28.i322, label %bb.bc [
    i64 -9223372036854775808, label %bb.bd
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i324"
  ]

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i26.i320
  %i.gv = shl nuw i64 %.val8.i.i.i.i28.i322, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i29.i323) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i29.i323, i64 noundef %i.gv, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !52837
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i324"

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i26.i320
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i29.i323) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i29.i323, i64 noundef 8192, i64 noundef 8) #79, !noalias !52837
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i324"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i324": ; preds = %bb.bd, %bb.bc, %.lr.ph.i.i.i.i26.i320
  %i.gw = icmp eq i64 %i.gt, %i.gh
  br i1 %i.gw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i325", label %.lr.ph.i.i.i.i26.i320

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i325": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i30.i324", %bb.bb
  %i.gx = icmp eq i64 %..sroa.08.0.copyload.i.i305, 0
  br i1 %i.gx, label %switch.lookup603, label %bb.be

bb.be:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i325"
  %i.gy = shl nuw i64 %..sroa.08.0.copyload.i.i305, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i.i303, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !52832
  br label %switch.lookup603

bb.bf:                                            ; preds = %bb.ba, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i319", %.noexc338
  %.sroa.10443.0.ph = phi i64 [ %.sroa.511.sroa.5.0.copyload.i.i301, %.noexc338 ], [ %.sroa.10443.8.copyload444, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i319" ], [ %.sroa.10443.8.copyload444, %bb.ba ]
  %.sroa.9441.0.ph = phi ptr [ %.sroa.511.sroa.0.0.copyload.i.i299, %.noexc338 ], [ %.sroa.9441.8.copyload442, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i319" ], [ %.sroa.9441.8.copyload442, %bb.ba ]
  %.sroa.6439.0.ph = phi i64 [ %.sroa.010.0.copyload.i.i297, %.noexc338 ], [ %.sroa.6439.8.copyload440, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i319" ], [ %.sroa.6439.8.copyload440, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !52782
  store i64 127, ptr %0, align 8
  %.sroa.2152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6439.0.ph, ptr %.sroa.2152.0..sroa_idx, align 8
  %.sroa.2152.sroa.2.0..sroa.2152.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9441.0.ph, ptr %.sroa.2152.sroa.2.0..sroa.2152.0..sroa_idx.sroa_idx, align 8
  %.sroa.2152.sroa.3.0..sroa.2152.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10443.0.ph, ptr %.sroa.2152.sroa.3.0..sroa.2152.0..sroa_idx.sroa_idx, align 8
  br label %bb.cs

switch.lookup603:                                 ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i31.i325", %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !52782
  %.val = load i64, ptr %i.bh, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.gz = icmp ne i64 %.val, -9223372036854775790
  call void @llvm.assume(i1 %i.gz)
  %i.ha = add nsw i64 %.val, 9223372036854775807
  %i.hb = icmp ugt i64 %.val, -9223372036854775808
  %i.hc = select i1 %i.hb, i64 %i.ha, i64 17
  %switch.gep604 = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.hc
  %switch.load605 = load i8, ptr %switch.gep604, align 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52838)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !52841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !52844
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h626f7dffaa513beaE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, i64 %.val259, i32 %.val260, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 range(i8 0, 18) %switch.load605)
          to label %.noexc380 unwind label %bb.g

.noexc380:                                        ; preds = %switch.lookup603
  %i.hd = load i64, ptr %i.d, align 8, !range !751, !noalias !52844, !noundef !14
  %i.he = trunc nuw i64 %i.hd to i1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.010.0.copyload.i.i345 = load i64, ptr %i.hf, align 8, !noalias !52844 ; 3 uses
  %.sroa.511.0..sroa_idx.i.i346 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.511.sroa.0.0.copyload.i.i347 = load ptr, ptr %.sroa.511.0..sroa_idx.i.i346, align 8, !noalias !52844 ; 2 uses
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i348 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.511.sroa.5.0.copyload.i.i349 = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i348, align 8, !noalias !52844 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !52844
  br i1 %i.he, label %bb.bq, label %bb.bg

bb.bg:                                            ; preds = %.noexc380
  %.not.i.i350 = icmp eq i64 %.sroa.010.0.copyload.i.i345, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i.i351 = select i1 %.not.i.i350, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i.i347
  %..sroa.5.sroa.5.0.copyload.i.i352 = select i1 %.not.i.i350, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i.i349
  %..sroa.08.0.copyload.i.i353 = select i1 %.not.i.i350, i64 0, i64 %.sroa.010.0.copyload.i.i345
  store i64 %..sroa.08.0.copyload.i.i353, ptr %i.e, align 8, !noalias !52841
  %.sroa.420.0..sroa_idx.i354 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %..sroa.5.sroa.026.0.copyload.i.i351, ptr %.sroa.420.0..sroa_idx.i354, align 8, !noalias !52841
  %.sroa.521.0..sroa_idx.i355 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %..sroa.5.sroa.5.0.copyload.i.i352, ptr %.sroa.521.0..sroa_idx.i355, align 8, !noalias !52841
  %i.hg = load i32, ptr %i.al, align 8, !alias.scope !52838, !noalias !52848, !noundef !14
  invoke fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.hg)
          to label %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17had6a0def10a5bbe7E.exit.i" unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17had6a0def10a5bbe7E.exit.i"
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81, !noalias !52841
  br label %.body

"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17had6a0def10a5bbe7E.exit.i": ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !52851
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h6c35809cf94f65a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i64 %.val259, i32 %.val260, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, i8 range(i8 0, 18) %switch.load605, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %.noexc.i356 unwind label %bb.bh, !noalias !52856

.noexc.i356:                                      ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue11update_task28_$u7b$$u7b$closure$u7d$$u7d$17had6a0def10a5bbe7E.exit.i"
  %i.hi = load i32, ptr %i.c, align 8, !range !33282, !noalias !52851, !noundef !14
  %.not.i20.i357 = icmp eq i32 %i.hi, 5
  br i1 %.not.i20.i357, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %.noexc.i356
  %.sroa.6447.8.copyload448 = load i64, ptr %i.c, align 8, !noalias !52857 ; 2 uses
  %.sroa.9449.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_5
begin_hunk_6_@"_ZN15index_scheduler5queue7batches47_$LT$impl$u20$index_scheduler..queue..Queue$GT$13get_batch_ids17hb4dc59d693b61965E":bb.a

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !range !2917, !noundef !14
  %.not223 = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %.not223, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val289 = load ptr, ptr %i.bg, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val290 = load i64, ptr %i.bh, align 8, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53889
  store i64 0, ptr %i.d, align 8, !noalias !53889
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !53889
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !53889
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val289, i64 %.val290
  invoke fastcc void @"_ZN7roaring6bitmap4iter107_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u32$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$6extend17h2576881001d3dde0E"(ptr noalias noundef align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly %.val289, ptr noundef readonly %i.bi)
          to label %bb.i unwind label %.thread528, !noalias !53889

.thread528:                                       ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #81, !noalias !53889
  br label %.thread523

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !range !2917, !noundef !14
  %.not224 = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not224, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53889
  invoke void @"_ZN7roaring6bitmap3ops89_$LT$impl$u20$core..ops..bit..BitAndAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$13bitand_assign17h950c38bcd5c65f10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.al)
          to label %bb.h unwind label %.thread532

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 0, ptr %i.ak, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4140.0..sroa_idx, align 8
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5141.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !14 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp ; 2 uses
  %cond = icmp eq i64 %i.bp, 0
  br i1 %cond, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hdfccdc710c4b880cE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.sroa.0213.1689 = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 1440
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val283 = load i64, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val284 = load i32, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.5500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %bb.l

bb.k:                                             ; preds = %bb.w, %bb.h
  %i.bv = load i64, ptr %3, align 8, !range !2917, !noundef !14
  %.not227 = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not227, label %bb.as, label %bb.ap

bb.l:                                             ; preds = %.lr.ph, %.critedge271
  %.sroa.0213.1691 = phi ptr [ %.sroa.0213.1689, %.lr.ph ], [ %.sroa.0213.1, %.critedge271 ] ; 3 uses
  %.sroa.0213.0690 = phi ptr [ %i.bn, %.lr.ph ], [ %.sroa.0213.1691, %.critedge271 ] ; 2 uses
  %i.bw = load i8, ptr %.sroa.0213.0690, align 1, !range !1330, !noundef !14
  switch i8 %i.bw, label %bb.x [
    i8 0, label %.critedge271
    i8 1, label %bb.y
  ]

bb.m:                                             ; preds = %.lr.ph783
  %i.bx = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.bx, %i.bq
  br i1 %.not.not.not.i.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hdfccdc710c4b880cE.exit", label %.lr.ph783

.lr.ph783:                                        ; preds = %.critedge271, %bb.m
  %i.by = phi ptr [ %i.bx, %bb.m ], [ %i.bn, %.critedge271 ] ; 2 uses
  %.val4.i = load i8, ptr %i.by, align 1, !range !1330, !noalias !53892, !noundef !14
  %i.bz = icmp eq i8 %.val4.i, 1
  br i1 %i.bz, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit", label %bb.m

.thread543.loopexit:                              ; preds = %bb.z, %bb.x
  %lpad.loopexit681 = landingpad { ptr, i32 }
          cleanup
  br label %.thread535

.thread543.loopexit.split-lp:                     ; preds = %bb.q
  %lpad.loopexit.split-lp682 = landingpad { ptr, i32 }
          cleanup
  br label %.thread535

bb.n:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %lpad.thr_comm.split-lp542 = landingpad { ptr, i32 }
          cleanup
  br label %.thread523

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hdfccdc710c4b880cE.exit": ; preds = %bb.m, %bb.j
  br i1 %.not221, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit", label %bb.o

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %.lr.ph783, %bb.v, %bb.u, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", %bb.t, %.noexc, %bb.p, %bb.o, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hdfccdc710c4b880cE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  invoke void @"_ZN7roaring6bitmap3ops89_$LT$impl$u20$core..ops..bit..BitAndAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$13bitand_assign17h950c38bcd5c65f10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai)
          to label %bb.w unwind label %bb.n

bb.o:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hdfccdc710c4b880cE.exit"
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 1440
  %i.cb = load i32, ptr %i.ca, align 8, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53895)
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = trunc nuw i32 %i.cc to i16              ; 3 uses
  %i.ce = trunc i32 %i.cb to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !53895, !nonnull !14, !noundef !14 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !53895, !noundef !14 ; 8 uses
  switch i64 %i.ci, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.o
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.o ], [ %i.ct, %.lr.ph.i.i.i ] ; 4 uses
  %i.cj = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.ci
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 24
  %.val20.i.i.i = load i16, ptr %i.cl, align 8, !alias.scope !53898, !noalias !53903, !noundef !14 ; 2 uses
  %i.cm = icmp eq i16 %.val20.i.i.i, %i.cd
  br i1 %i.cm, label %bb.q, label %bb.p

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %i.ci, %bb.o ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.cn = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.co = add i64 %i.cn, %.sroa.05.024.i.i.i      ; 3 uses
  %i.cp = icmp ult i64 %i.co, %i.ci
  call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 24
  %.val22.i.i.i = load i16, ptr %i.cr, align 8, !alias.scope !53898, !noalias !53903, !noundef !14
  %i.cs = icmp ugt i16 %.val22.i.i.i, %i.cd
  %i.ct = select i1 %i.cs, i64 %.sroa.05.024.i.i.i, i64 %i.co, !unpredictable !14 ; 2 uses
  %i.cu = sub nuw i64 %.sroa.01.025.i.i.i, %i.cn  ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 1
  br i1 %i.cv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.cw = icmp ult i16 %.val20.i.i.i, %i.cd
  %i.cx = zext i1 %i.cw to i64
  %i.cy = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.cx
  %i.cz = icmp ule i64 %i.cy, %i.ci
  call void @llvm.assume(i1 %i.cz)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.da = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ck, i16 noundef %i.ce)
          to label %.noexc unwind label %.thread543.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  br i1 %i.da, label %bb.r, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.r:                                             ; preds = %.noexc
  %i.db = load i64, ptr %i.ck, align 8, !range !2917, !noalias !53895, !noundef !14 ; 3 uses
  %i.dc = icmp eq i64 %i.db, -9223372036854775808
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noalias !53895, !noundef !14 ; 2 uses
  br i1 %i.dc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = icmp ult i64 %i.de, 4611686018427387904
  call void @llvm.assume(i1 %i.df)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.03.0.in.i = icmp eq i64 %i.de, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !53905)
  %i.dg = icmp ult i64 %i.ci, 288230376151711744
  call void @llvm.assume(i1 %i.dg)
  %.sroa.4.0..sroa_idx.i301 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i301, align 8, !noalias !53908 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.di = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.dj = add nsw i64 %i.ci, %i.di
  %i.dk = shl nuw nsw i64 %i.dj, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr nonnull align 8 %i.dh, i64 %i.dk, i1 false), !noalias !53910
  %i.dl = add nsw i64 %i.ci, -1
  store i64 %i.dl, ptr %i.ch, align 8, !alias.scope !53912, !noalias !53913
  switch i64 %i.db, label %bb.u [
    i64 -9223372036854775808, label %bb.v
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.u:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.dm = shl nuw i64 %i.db, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53895
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.v:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53895
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.w:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.k

bb.x:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.dn = load i8, ptr %.sroa.0213.0690, align 1, !range !1330, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53914
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h1630200aad08bd22E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, i64 %.val283, i32 %.val284, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 range(i8 0, 5) %i.dn)
          to label %.noexc302 unwind label %.thread543.loopexit

.noexc302:                                        ; preds = %bb.x
  %i.do = load i64, ptr %i.c, align 8, !range !751, !noalias !53914, !noundef !14
  %i.dp = trunc nuw i64 %i.do to i1
  %.sroa.010.0.copyload.i = load i64, ptr %i.bu, align 8, !noalias !53914 ; 3 uses
  %.sroa.511.sroa.0.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !53914 ; 2 uses
  %.sroa.511.sroa.5.0.copyload.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !noalias !53914 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53914
  br i1 %i.dp, label %bb.aa, label %bb.ae

.critedge271:                                     ; preds = %bb.z, %bb.y, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit312", %bb.l
  %i.dq = icmp ne ptr %.sroa.0213.1691, %i.bq     ; 2 uses
  %.sroa.0213.1.idx = zext i1 %i.dq to i64
  %.sroa.0213.1 = getelementptr inbounds nuw i8, ptr %.sroa.0213.1691, i64 %.sroa.0213.1.idx
  br i1 %i.dq, label %bb.l, label %.lr.ph783

bb.y:                                             ; preds = %bb.l
  br i1 %.not221, label %.critedge271, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = load i32, ptr %i.br, align 8, !noundef !14
  invoke fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef align 8 dereferenceable(24) %i.ak, i32 noundef %i.dr)
          to label %.critedge271 unwind label %.thread543.loopexit

bb.aa:                                            ; preds = %.noexc302
  store i64 127, ptr %0, align 8
  %.sroa.2149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.010.0.copyload.i, ptr %.sroa.2149.0..sroa_idx, align 8
  %.sroa.2149.sroa.2.0..sroa.2149.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.sroa.0.0.copyload.i, ptr %.sroa.2149.sroa.2.0..sroa.2149.0..sroa_idx.sroa_idx, align 8
  %.sroa.2149.sroa.3.0..sroa.2149.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.511.sroa.5.0.copyload.i, ptr %.sroa.2149.sroa.3.0..sroa.2149.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.experimental.noalias.scope.decl(metadata !53918)
  call void @llvm.experimental.noalias.scope.decl(metadata !53921)
  %.val.i.i = load ptr, ptr %.sroa.4140.0..sroa_idx, align 8, !alias.scope !53924, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5141.0..sroa_idx, align 8, !alias.scope !53924, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53925)
  %i.ds = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ds, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aa, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.du, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i" ], [ 0, %bb.aa ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.du = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.dt, align 8, !range !2917, !alias.scope !53925, !noalias !53924, !noundef !14 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !53925, !noalias !53924 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.ab [
    i64 -9223372036854775808, label %bb.ac
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  ]

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dw = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.dw, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53928
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !53928
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i": ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i.i.i
  %i.dx = icmp eq i64 %i.du, %.val1.i.i
  br i1 %i.dx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i", %bb.aa
  %.val2.i.i = load i64, ptr %i.ak, align 8, !range !9, !alias.scope !53924, !noundef !14 ; 2 uses
  %i.dy = icmp eq i64 %.val2.i.i, 0
  br i1 %i.dy, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit", label %bb.ad

bb.ad:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  %i.dz = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !53924
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"

bb.ae:                                            ; preds = %.noexc302
  %.not.i = icmp eq i64 %.sroa.010.0.copyload.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i = select i1 %.not.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i ; 3 uses
  %..sroa.5.sroa.5.0.copyload.i = select i1 %.not.i, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i ; 3 uses
  %..sroa.08.0.copyload.i = select i1 %.not.i, i64 0, i64 %.sroa.010.0.copyload.i ; 3 uses
  store i64 %..sroa.08.0.copyload.i, ptr %i.aj, align 8
  store ptr %..sroa.5.sroa.026.0.copyload.i, ptr %.sroa.4499.0..sroa_idx, align 8
  store i64 %..sroa.5.sroa.5.0.copyload.i, ptr %.sroa.5500.0..sroa_idx, align 8
  invoke void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..bit..BitOrAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17hc5985bbf05dcee8fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #81
  br label %.thread535

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !53929)
  %i.eb = icmp eq i64 %..sroa.5.sroa.5.0.copyload.i, 0
  br i1 %i.eb, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i310", label %.lr.ph.i.i.i.i305

.lr.ph.i.i.i.i305:                                ; preds = %bb.ag, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i309"
  %.sroa.0.010.i.i.i.i306 = phi i64 [ %i.ed, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i309" ], [ 0, %bb.ag ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i, i64 %.sroa.0.010.i.i.i.i306 ; 2 uses
  %i.ed = add nuw i64 %.sroa.0.010.i.i.i.i306, 1  ; 2 uses
  %.val8.i.i.i.i307 = load i64, ptr %i.ec, align 8, !range !2917, !alias.scope !53929, !noalias !53932, !noundef !14 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  %.val9.i.i.i.i308 = load ptr, ptr %i.ee, align 8, !alias.scope !53929, !noalias !53932 ; 4 uses
  switch i64 %.val8.i.i.i.i307, label %bb.ah [
    i64 -9223372036854775808, label %bb.ai
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i309"
  ]

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i305
  %i.ef = shl nuw i64 %.val8.i.i.i.i307, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i308) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i308, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !53937
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i309"

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i305
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i308) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i308, i64 noundef 8192, i64 noundef 8) #79, !noalias !53937
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i309"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i309": ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i.i.i305
  %i.eg = icmp eq i64 %i.ed, %..sroa.5.sroa.5.0.copyload.i
  br i1 %i.eg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i310", label %.lr.ph.i.i.i.i305

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i310": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i309", %bb.ag
  %i.eh = icmp eq i64 %..sroa.08.0.copyload.i, 0
  br i1 %i.eh, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit312", label %bb.aj

bb.aj:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i310"
  %i.ei = shl nuw i64 %..sroa.08.0.copyload.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.5.sroa.026.0.copyload.i, i64 noundef %i.ei, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !53932
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit312"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit312": ; preds = %bb.aj, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i310"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %.critedge271

bb.ak:                                            ; preds = %bb.bx, %bb.bh
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit": ; preds = %bb.ad, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.al

bb.al:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit464", %bb.el, %bb.ei, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit419", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit383", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit348", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit338", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !53938)
  call void @llvm.experimental.noalias.scope.decl(metadata !53941)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val.i.i313 = load ptr, ptr %i.ek, align 8, !alias.scope !53944, !nonnull !14, !noundef !14 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.val1.i.i314 = load i64, ptr %i.el, align 8, !alias.scope !53944, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53945)
  %i.em = icmp eq i64 %.val1.i.i314, 0
  br i1 %i.em, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i320", label %.lr.ph.i.i.i.i315

.lr.ph.i.i.i.i315:                                ; preds = %bb.al, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i319"
  %.sroa.0.010.i.i.i.i316 = phi i64 [ %i.eo, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i319" ], [ 0, %bb.al ] ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i313, i64 %.sroa.0.010.i.i.i.i316 ; 2 uses
  %i.eo = add nuw i64 %.sroa.0.010.i.i.i.i316, 1  ; 2 uses
  %.val8.i.i.i.i317 = load i64, ptr %i.en, align 8, !range !2917, !alias.scope !53945, !noalias !53944, !noundef !14 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 8
  %.val9.i.i.i.i318 = load ptr, ptr %i.ep, align 8, !alias.scope !53945, !noalias !53944 ; 4 uses
  switch i64 %.val8.i.i.i.i317, label %bb.am [
    i64 -9223372036854775808, label %bb.an
end_hunk_6
begin_hunk_7_@"_ZN15index_scheduler5queue7batches47_$LT$impl$u20$index_scheduler..queue..Queue$GT$37get_batch_ids_from_authorized_indexes17h472406cf3282bd02E":bb.a

default.unreachable:                              ; preds = %.noexc
  unreachable

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hdf03ed6b9912aaedE.exit.i": ; preds = %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54148
  %.not.i.i = icmp eq i8 %i.bv, 18
  br i1 %.not.i.i, label %.loopexit364, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hdf03ed6b9912aaedE.exit.i", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  br label %.lr.ph.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17ha8e9d5b51d70eddfE.exit: ; preds = %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc
  store i8 %i.bu, ptr %i.o, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54150
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h626f7dffaa513beaE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, i64 %.val, i32 %.val185, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 range(i8 0, 18) %i.bu)
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit

.noexc188:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17ha8e9d5b51d70eddfE.exit
  %i.bw = load i64, ptr %i.a, align 8, !range !751, !noalias !54150, !noundef !14
  %i.bx = trunc nuw i64 %i.bw to i1
  %.sroa.010.0.copyload.i = load i64, ptr %i.bi, align 8, !noalias !54150 ; 3 uses
  %.sroa.511.sroa.0.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !54150 ; 2 uses
  %.sroa.511.sroa.5.0.copyload.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !noalias !54150 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54150
  br i1 %i.bx, label %bb.o, label %bb.p

.loopexit364:                                     ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hdf03ed6b9912aaedE.exit.i", %.preheader365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54146
  br label %bb.n

bb.o:                                             ; preds = %.noexc188
  store i64 127, ptr %0, align 8
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.010.0.copyload.i, ptr %.sroa.296.0..sroa_idx, align 8
  %.sroa.296.sroa.2.0..sroa.296.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.sroa.0.0.copyload.i, ptr %.sroa.296.sroa.2.0..sroa.296.0..sroa_idx.sroa_idx, align 8
  %.sroa.296.sroa.3.0..sroa.296.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.511.sroa.5.0.copyload.i, ptr %.sroa.296.sroa.3.0..sroa.296.0..sroa_idx.sroa_idx, align 8
  br label %bb.ad

bb.p:                                             ; preds = %.noexc188
  %.not.i = icmp eq i64 %.sroa.010.0.copyload.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i = select i1 %.not.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i
  %..sroa.5.sroa.5.0.copyload.i = select i1 %.not.i, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i
  %..sroa.08.0.copyload.i = select i1 %.not.i, i64 0, i64 %.sroa.010.0.copyload.i
  store i64 %..sroa.08.0.copyload.i, ptr %i.n, align 8
  store ptr %..sroa.5.sroa.026.0.copyload.i, ptr %.sroa.718.sroa.7.0..sroa_idx, align 8
  store i64 %..sroa.5.sroa.5.0.copyload.i, ptr %.sroa.718.sroa.8.0..sroa_idx, align 8
  invoke void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..arith..SubAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$10sub_assign17h04e53a6df9bf2adeE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit

bb.q:                                             ; preds = %bb.p
  br i1 %.not174, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !54154)
  %i.by = load i64, ptr %i.bl, align 8, !alias.scope !54154, !noalias !54157, !noundef !14
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val.i = load i64, ptr %i.bn, align 8, !alias.scope !54154, !noalias !54157, !noundef !14
  %.val5.i = load i64, ptr %i.bo, align 8, !alias.scope !54154, !noalias !54157, !noundef !14
  %i.ca = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h925cdc3236cefae1E(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.o), !noalias !54154 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54159)
  call void @llvm.experimental.noalias.scope.decl(metadata !54162)
  %i.cb = lshr i64 %i.ca, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8
  %i.cd = load i64, ptr %i.bp, align 8, !alias.scope !54165, !noalias !54166, !noundef !14 ; 2 uses
  %i.ce = load ptr, ptr %i.bm, align 8, !alias.scope !54165, !noalias !54166, !nonnull !14, !noundef !14 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.s ], [ %i.cv, %bb.v ]
  %.pn.i.i = phi i64 [ %i.ca, %bb.s ], [ %i.cw, %bb.v ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.cd     ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !54169 ; 2 uses
  %i.cg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.u
  %.sroa.06.0.i33.i.i = phi i16 [ %i.cu, %bb.u ], [ %i.ch, %bb.t ] ; 3 uses
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add i64 %.sroa.01.0.i.i.i, %i.cj
  %i.cl = and i64 %i.ck, %i.cd
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.ce, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -1
  %.val3.i.i.i = load i8, ptr %i.co, align 1, !range !4559, !noalias !54172, !noundef !14
  %i.cp = icmp eq i8 %i.bu, %.val3.i.i.i
  br i1 %i.cp, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit", label %bb.u, !prof !15

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.t
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.v, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit", !prof !121

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ct = add i16 %.sroa.06.0.i33.i.i, -1
  %i.cu = and i16 %i.ct, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.cv = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.cw = add i64 %.sroa.01.0.i.i.i, %i.cv
  br label %bb.t

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %._crit_edge.i.i, %bb.r, %bb.ac, %bb.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", %bb.aa, %.noexc191, %bb.w, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit", %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54141
  %.not.i11.i = icmp eq i8 %i.bv, 18
  br i1 %.not.i11.i, label %.loopexit364, label %.lr.ph.i.backedge

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit": ; preds = %.lr.ph.i.i
  %i.cx = load i32, ptr %i.bq, align 8, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54175)
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = trunc nuw i32 %i.cy to i16              ; 3 uses
  %i.da = trunc i32 %i.cx to i16
  %i.db = load ptr, ptr %i.br, align 8, !alias.scope !54175, !nonnull !14, !noundef !14 ; 2 uses
  %i.dc = load i64, ptr %i.bs, align 8, !alias.scope !54175, !noundef !14 ; 8 uses
  switch i64 %i.dc, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit"
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit" ], [ %i.dn, %.lr.ph.i.i.i ] ; 4 uses
  %i.dd = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.dc
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.df = getelementptr i8, ptr %i.de, i64 24
  %.val20.i.i.i = load i16, ptr %i.df, align 8, !alias.scope !54178, !noalias !54183, !noundef !14 ; 2 uses
  %i.dg = icmp eq i16 %.val20.i.i.i, %i.cz
  br i1 %i.dg, label %bb.x, label %bb.w

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit", %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %i.dc, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit" ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.dn, %.lr.ph.i.i.i ], [ 0, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h01046e2fd4a64163E.exit" ] ; 2 uses
  %i.dh = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.di = add i64 %i.dh, %.sroa.05.024.i.i.i      ; 3 uses
  %i.dj = icmp ult i64 %i.di, %i.dc
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 24
  %.val22.i.i.i = load i16, ptr %i.dl, align 8, !alias.scope !54178, !noalias !54183, !noundef !14
  %i.dm = icmp ugt i16 %.val22.i.i.i, %i.cz
  %i.dn = select i1 %i.dm, i64 %.sroa.05.024.i.i.i, i64 %i.di, !unpredictable !14 ; 2 uses
  %i.do = sub nuw i64 %.sroa.01.025.i.i.i, %i.dh  ; 2 uses
  %i.dp = icmp ugt i64 %i.do, 1
  br i1 %i.dp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.dq = icmp ult i16 %.val20.i.i.i, %i.cz
  %i.dr = zext i1 %i.dq to i64
  %i.ds = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.dr
  %i.dt = icmp ule i64 %i.ds, %i.dc
  call void @llvm.assume(i1 %i.dt)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.du = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.de, i16 noundef %i.da)
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit

.noexc191:                                        ; preds = %bb.x
  br i1 %i.du, label %bb.y, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.y:                                             ; preds = %.noexc191
  %i.dv = load i64, ptr %i.de, align 8, !range !2917, !noalias !54175, !noundef !14 ; 3 uses
  %i.dw = icmp eq i64 %i.dv, -9223372036854775808
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !54175, !noundef !14 ; 2 uses
  br i1 %i.dw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = icmp ult i64 %i.dy, 4611686018427387904
  call void @llvm.assume(i1 %i.dz)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.03.0.in.i = icmp eq i64 %i.dy, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !54185)
  %i.ea = icmp ult i64 %i.dc, 288230376151711744
  call void @llvm.assume(i1 %i.ea)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !54188 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.ec = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.ed = add nsw i64 %i.dc, %i.ec
  %i.ee = shl nuw nsw i64 %i.ed, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.eb, i64 %i.ee, i1 false), !noalias !54190
  %i.ef = add nsw i64 %i.dc, -1
  store i64 %i.ef, ptr %i.bs, align 8, !alias.scope !54192, !noalias !54193
  switch i64 %i.dv, label %bb.ab [
    i64 -9223372036854775808, label %bb.ac
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.ab:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.eg = shl nuw i64 %i.dv, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !54175
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ac:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !54175
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ad:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit222", %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !54194)
  call void @llvm.experimental.noalias.scope.decl(metadata !54197)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i = load ptr, ptr %i.eh, align 8, !alias.scope !54200, !nonnull !14, !noundef !14 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i = load i64, ptr %i.ei, align 8, !alias.scope !54200, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54201)
  %i.ej = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ej, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.el, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i" ], [ 0, %bb.ad ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.el = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.ek, align 8, !range !2917, !alias.scope !54201, !noalias !54200, !noundef !14 ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.em, align 8, !alias.scope !54201, !noalias !54200 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.ae [
    i64 -9223372036854775808, label %bb.af
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  ]

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.en = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !54204
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !54204
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i": ; preds = %bb.af, %bb.ae, %.lr.ph.i.i.i.i
  %i.eo = icmp eq i64 %i.el, %.val1.i.i
  br i1 %i.eo, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i", %bb.ad
  %.val2.i.i = load i64, ptr %i.q, align 8, !range !9, !alias.scope !54200, !noundef !14 ; 2 uses
  %i.ep = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ep, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit", label %bb.ag

bb.ag:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  %i.eq = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !54200
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"

bb.ah:                                            ; preds = %bb.n
  br i1 %i.bt, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %.sroa.3100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3100.0..sroa_idx, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.4103.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %.sroa.3100.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3100.0..sroa_idx101, align 8
  %.sroa.4103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.4103.0..sroa_idx104, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val186 = load i64, ptr %i.er, align 8, !noundef !14
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val187 = load i32, ptr %i.es, align 8
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$4iter17h8922ce0c4aeec7bcE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, i64 %.val186, i32 %.val187, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.al unwind label %.thread327.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ay, %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !14 ; 6 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.thread", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.aj
  %min.iters.check = icmp ult i64 %i.ew, 5
  br i1 %min.iters.check, label %.preheader.preheader474, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.ey = and i64 %i.ew, 3                        ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = select i1 %i.ez, i64 4, i64 %i.ey
  %n.vec = sub i64 %i.ew, %i.fa                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fr, %vector.body ]
  %vec.phi473 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %index
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %index
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %index
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %index
  %i.ff = getelementptr i8, ptr %i.fb, i64 16
  %i.fg = getelementptr i8, ptr %i.fc, i64 48
  %i.fh = getelementptr i8, ptr %i.fd, i64 80
  %i.fi = getelementptr i8, ptr %i.fe, i64 112
  %i.fj = load i64, ptr %i.ff, align 8
  %i.fk = load i64, ptr %i.fg, align 8
  %i.fl = insertelement <2 x i64> poison, i64 %i.fj, i64 0
  %i.fm = insertelement <2 x i64> %i.fl, i64 %i.fk, i64 1
  %i.fn = load i64, ptr %i.fh, align 8
  %i.fo = load i64, ptr %i.fi, align 8
  %i.fp = insertelement <2 x i64> poison, i64 %i.fn, i64 0
  %i.fq = insertelement <2 x i64> %i.fp, i64 %i.fo, i64 1
  %i.fr = add <2 x i64> %i.fm, %vec.phi           ; 2 uses
  %i.fs = add <2 x i64> %i.fq, %vec.phi473        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !54205

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fs, %i.fr
  %i.fu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader474

.preheader.preheader474:                          ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.fu, %middle.block ]
  br label %.preheader

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.thread": ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.464.0..sroa_idx432 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.464.0..sroa_idx432, align 8
  store i64 152, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i240"

.preheader:                                       ; preds = %.preheader.preheader474, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i"
  %.sroa.09.0.i = phi i64 [ %i.gb, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i" ], [ %.sroa.09.0.i.ph, %.preheader.preheader474 ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.ga, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i" ], [ %.sroa.07.0.i.ph, %.preheader.preheader474 ]
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %.sroa.09.0.i ; 2 uses
  %.val.i192 = load i64, ptr %i.fw, align 8, !range !2917, !noundef !14
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  %.val19.i = load i64, ptr %i.fx, align 8        ; 2 uses
  %i.fy = icmp eq i64 %.val.i192, -9223372036854775808
  br i1 %i.fy, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i", label %bb.ak

bb.ak:                                            ; preds = %.preheader
  %i.fz = icmp ult i64 %.val19.i, 4611686018427387904
  call void @llvm.assume(i1 %i.fz)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i": ; preds = %bb.ak, %.preheader
  %i.ga = add i64 %.val19.i, %.sroa.07.0.i        ; 2 uses
  %i.gb = add nuw i64 %.sroa.09.0.i, 1            ; 2 uses
  %i.gc = icmp eq i64 %i.gb, %i.ew
  br i1 %i.gc, label %.lr.ph.i.i.i.i235.preheader, label %.preheader, !llvm.loop !54206

.thread327.loopexit:                              ; preds = %.invoke, %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread321

.thread327.loopexit.split-lp:                     ; preds = %bb.ai, %bb.at, %.critedge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread321

bb.al:                                            ; preds = %bb.ai
  %i.gd = load i32, ptr %i.k, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not160 = icmp eq i32 %i.gd, 5
  br i1 %.not160, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.4112.0.copyload = load i32, ptr %.sroa.4112.0..sroa_idx, align 4
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5113.0.copyload = load ptr, ptr %.sroa.5113.0..sroa_idx, align 8
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6114.0.copyload = load i8, ptr %.sroa.6114.0..sroa_idx, align 8
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
end_hunk_7
begin_hunk_8_@_ZN15index_scheduler5utils20insert_task_datetime17h781f09ae8b9ea0a5E:bb.a

bb.q:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i42"
  %i.bl = shl nuw i64 %.val2.i.i43, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i35, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !55273
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit": ; preds = %bb.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i42", %bb.b, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN15index_scheduler5utils20remove_task_datetime17ha87db9d0a3d60800E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.10 = alloca [19 x i8], align 1           ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.sroa.7 = alloca [16 x i8], align 8     ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.378.0.copyload = load i8, ptr %.sroa.378.0..sroa_idx, align 4 ; 2 uses
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 5
  %.sroa.479.0.copyload = load i8, ptr %.sroa.479.0..sroa_idx, align 1 ; 2 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 6
  %.sroa.580.0.copyload = load i8, ptr %.sroa.580.0..sroa_idx, align 2 ; 2 uses
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.681.0.copyload = load i32, ptr %.sroa.681.0..sroa_idx, align 4 ; 2 uses
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.782.0.copyload = load i24, ptr %.sroa.782.0..sroa_idx, align 4 ; 3 uses
  %i.g = icmp ult i8 %.sroa.580.0.copyload, 24
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i8 %.sroa.479.0.copyload, 60
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp ult i8 %.sroa.378.0.copyload, 60
  %i.j = zext nneg i8 %.sroa.479.0.copyload to i64
  %i.k = zext nneg i8 %.sroa.580.0.copyload to i64
  %i.l = ashr i32 %.sroa.681.0.copyload, 10
  %i.m = add nsw i32 %i.l, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.m, -100
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, 1461
  %i.p = sdiv i64 %i.o, 4
  %i.q = trunc nsw i64 %i.p to i32
  %i.r = sdiv i32 %i.m, 400
  %i.s = and i32 %.sroa.681.0.copyload, 511
  %i.t = add nsw i32 %.neg.i, %i.s
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = add nsw i32 %i.u, %i.q
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 86400
  tail call void @llvm.assume(i1 %i.i)
  %i.y = zext nneg i8 %.sroa.378.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.782.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.782.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.782.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.z = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.ae)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.j
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.k
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.af = or disjoint i64 %i.y, -31619087683200
  %i.ag = add nsw i64 %i.af, %.neg7.i
  %i.ah = add nsw i64 %i.ag, %reass.mul.i
  %i.ai = add nsw i64 %i.ah, %reass.mul13.i
  %i.aj = add nsw i64 %i.ai, %i.x
  %i.ak = sext i64 %i.aj to i128
  %i.al = mul nsw i128 %i.ak, 1000000000
  %i.am = load i32, ptr %4, align 4, !noundef !14 ; 2 uses
  %i.an = icmp ult i32 %i.am, 1000000000
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = zext nneg i32 %i.am to i128
  %i.ap = add nsw i128 %i.al, %i.ao               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hf5baf831e7ca1b75E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, i64 %2, i32 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i128 %i.ap)
  %i.aq = load i64, ptr %i.f, align 8, !range !751, !noundef !14
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.019.0.copyload = load i64, ptr %i.as, align 8 ; 7 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.7, i64 16, i1 false)
  store i64 127, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.019.0.copyload, ptr %.sroa.424.0..sroa_idx, align 8
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.sroa.019.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.019.0.copyload, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.7, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55278)
  %i.at = lshr i32 %5, 16
  %i.au = trunc nuw i32 %i.at to i16              ; 3 uses
  %i.av = trunc i32 %5 to i16
  %i.aw = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !55278, !nonnull !14, !noundef !14 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !14 ; 10 uses
  switch i64 %i.ay, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.bj, %.lr.ph.i.i.i ] ; 4 uses
  %i.az = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.ay
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %.val20.i.i.i = load i16, ptr %i.bb, align 8, !alias.scope !55281, !noalias !55286, !noundef !14 ; 2 uses
  %i.bc = icmp eq i16 %.val20.i.i.i, %i.au
  br i1 %i.bc, label %bb.f, label %bb.e

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.bd = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.be = add i64 %i.bd, %.sroa.05.024.i.i.i      ; 3 uses
  %i.bf = icmp ult i64 %i.be, %i.ay
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  %.val22.i.i.i = load i16, ptr %i.bh, align 8, !alias.scope !55281, !noalias !55286, !noundef !14
  %i.bi = icmp ugt i16 %.val22.i.i.i, %i.au
  %i.bj = select i1 %i.bi, i64 %.sroa.05.024.i.i.i, i64 %i.be, !unpredictable !14 ; 2 uses
  %i.bk = sub nuw i64 %.sroa.01.025.i.i.i, %i.bd  ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 1
  br i1 %i.bl, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = icmp ult i16 %.val20.i.i.i, %i.au
  %i.bn = zext i1 %i.bm to i64
  %i.bo = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.bn
  %i.bp = icmp ule i64 %i.bo, %i.ay
  tail call void @llvm.assume(i1 %i.bp)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread96"

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bq = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba, i16 noundef %i.av)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  br i1 %i.bq, label %bb.g, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread96"

bb.g:                                             ; preds = %.noexc
  %i.br = load i64, ptr %i.ba, align 8, !range !2917, !noalias !55278, !noundef !14 ; 3 uses
  %i.bs = icmp eq i64 %i.br, -9223372036854775808
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !55278, !noundef !14 ; 2 uses
  br i1 %i.bs, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = icmp ult i64 %i.bu, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bv)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.03.0.in.i = icmp eq i64 %i.bu, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread96"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55288)
  %i.bw = icmp ult i64 %i.ay, 288230376151711744
  tail call void @llvm.assume(i1 %i.bw)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !55291 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.by = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.bz = add nsw i64 %i.ay, %i.by
  %i.ca = shl nuw nsw i64 %i.bz, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.bx, i64 %i.ca, i1 false), !noalias !55293
  %i.cb = add nsw i64 %i.ay, -1                   ; 3 uses
  store i64 %i.cb, ptr %i.ax, align 8, !alias.scope !55295, !noalias !55296
  switch i64 %i.br, label %bb.j [
    i64 -9223372036854775808, label %bb.k
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.j:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.cc = shl nuw i64 %i.br, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !55278
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !55278
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.l:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit", %bb.c
  store i64 152, ptr %0, align 8
  br label %bb.ag

bb.m:                                             ; preds = %bb.p, %bb.n, %bb.f, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.cd, %bb.m ], [ %i.dd, %bb.w ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #81
  resume { ptr, i32 } %eh.lpad-body

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread96": ; preds = %bb.e, %.noexc, %bb.i
  %i.ce = icmp ult i64 %i.ay, 288230376151711744
  tail call void @llvm.assume(i1 %i.ce)
  br label %bb.x

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.k, %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.cf = icmp eq i64 %i.cb, 0
  br i1 %i.cf, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread", label %bb.x

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread": ; preds = %bb.d, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55297)
  %i.cg = load i64, ptr %1, align 8, !range !751, !alias.scope !55297, !noalias !55300, !noundef !14
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ci = trunc nuw i64 %i.cg to i1
  %i.cj = load ptr, ptr %i.ch, align 8, !alias.scope !55297, !noalias !55300, !nonnull !14, !align !240
  %.sroa.010.0.i = select i1 %i.ci, ptr %i.ch, ptr %i.cj
  %i.ck = load ptr, ptr %.sroa.010.0.i, align 8, !noalias !55300, !nonnull !14, !noundef !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !55302, !nonnull !14, !noundef !14
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = icmp eq i64 %2, %i.cn
  br i1 %i.co, label %bb.o, label %bb.n, !prof !15

bb.n:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !55302
  store ptr @2206, ptr %i.c, align 8, !noalias !55302
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.cp, align 8, !noalias !55302
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.cq, align 8, !noalias !55302
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cr, align 8, !noalias !55302
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.cs, align 8, !noalias !55302
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2219) #80
          to label %.noexc56 unwind label %bb.m

.noexc56:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !55303
  %i.ct = tail call noundef dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 16, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55303 ; 6 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4585) #80
          to label %.noexc57 unwind label %bb.m

.noexc57:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cv = tail call i128 @llvm.bswap.i128(i128 %i.ap)
  store i128 %i.cv, ptr %i.ct, align 1, !alias.scope !55311, !noalias !55319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55302
  store i64 16, ptr %i.b, align 8, !noalias !55302
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ct, ptr %i.cw, align 8, !noalias !55302
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !55297, !noalias !55300, !noundef !14 ; 2 uses
  %.not72.i = icmp eq ptr %i.cy, null
  br i1 %.not72.i, label %bb.s, label %bb.r, !prof !121

bb.r:                                             ; preds = %bb.q
  %i.cz = call noundef i32 @mdb_del(ptr noundef nonnull %i.cy, i32 noundef %3, ptr noundef nonnull %i.b, ptr noundef null) #79, !noalias !55302
  %i.da = invoke { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.cz)
          to label %bb.u unwind label %bb.w, !noalias !55302 ; 2 uses

bb.s:                                             ; preds = %bb.q
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80
          to label %bb.t unwind label %bb.w, !noalias !55302

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.db = extractvalue { i32, i32 } %i.da, 0      ; 2 uses
  switch i32 %i.db, label %bb.v [
    i32 22, label %.thread
    i32 1, label %.thread
  ]

bb.v:                                             ; preds = %bb.u
  %i.dc = extractvalue { i32, i32 } %i.da, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55302
  invoke void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.db, i32 %i.dc)
          to label %bb.y unwind label %bb.w, !noalias !55302

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.r
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55321
  br label %.body

bb.x:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread96", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %i.de = phi i64 [ %i.ay, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread96" ], [ %i.cb, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h0b925cad7c08e835E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 %2, i32 %3, ptr noalias noundef align 8 dereferenceable(24) %1, i128 %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.af unwind label %bb.m

.thread:                                          ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55302
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55324
  br label %.thread97

bb.y:                                             ; preds = %bb.v
  %.sroa.076.0.copyload = load i32, ptr %i.a, align 8, !noalias !55297 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 4, !noalias !55297
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.10.0..sroa_idx, i64 19, i1 false), !noalias !55297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55302
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55324
  %.not47 = icmp eq i32 %.sroa.076.0.copyload, 5
  br i1 %.not47, label %.thread97, label %.thread99

.thread99:                                        ; preds = %bb.y
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.639.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.10, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store i64 127, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.076.0.copyload, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.7.0.copyload, ptr %.sroa.538.0..sroa_idx, align 4
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i65"

.thread97:                                        ; preds = %bb.y, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !55327)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.dg, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i" ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.dg = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.df, align 8, !range !2917, !alias.scope !55327, !noalias !55330, !noundef !14 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !55327, !noalias !55330 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.z [
    i64 -9223372036854775808, label %bb.aa
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  ]

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.di = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !55335
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !55335
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i": ; preds = %bb.aa, %bb.z, %.lr.ph.i.i.i.i
  %i.dj = icmp eq i64 %i.dg, %i.de
  br i1 %i.dj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

end_hunk_8
begin_hunk_9_@_ZN15index_scheduler5utils36remove_n_tasks_datetime_earlier_than17hdfa6db9f478e4f84E:bb.a
  br label %.thread

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.32.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !55511)
  %i.en = icmp eq i64 %.sroa.17.32.copyload.i, 0
  br i1 %i.en, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aj, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.ep, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i" ], [ 0, %bb.aj ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13.32.copyload.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.ep = add nuw i64 %.sroa.0.010.i.i.i.i.i, 1   ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.eo, align 8, !range !2917, !alias.scope !55511, !noalias !55514, !noundef !14 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !55511, !noalias !55514 ; 4 uses
  switch i64 %.val8.i.i.i.i.i, label %bb.ak [
    i64 -9223372036854775808, label %bb.al
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i"
  ]

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.er = shl nuw i64 %.val8.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !55519
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i"

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !55519
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i": ; preds = %bb.al, %bb.ak, %.lr.ph.i.i.i.i.i
  %i.es = icmp eq i64 %i.ep, %.sroa.17.32.copyload.i
  br i1 %i.es, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i", %bb.aj
  %i.et = icmp eq i64 %.sroa.8.32.copyload.i, 0
  br i1 %i.et, label %.thread, label %bb.am

bb.am:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i"
  %i.eu = shl nuw i64 %.sroa.8.32.copyload.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.32.copyload.i, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !55514
  br label %.thread

bb.an:                                            ; preds = %bb.ag
  %i.ev = inttoptr i64 %.sroa.17.32.copyload.i to ptr ; 5 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !invariant.load !14, !noalias !55520 ; 2 uses
  %.not.i46.i = icmp eq ptr %i.ew, null
  br i1 %.not.i46.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.32.copyload.i) ]
  invoke void %i.ew(ptr noundef nonnull %.sroa.13.32.copyload.i)
          to label %bb.ap unwind label %bb.aq, !noalias !55520

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !range !9, !invariant.load !14, !noalias !55520 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !range !3999, !invariant.load !14, !noalias !55520 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, -9223372036854775807
  call void @llvm.assume(i1 %i.fb)
  %i.fc = icmp eq i64 %i.ey, 0
  br i1 %i.fc, label %.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.32.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.32.copyload.i, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) %i.fa) #79, !noalias !55520
  br label %.thread

bb.aq:                                            ; preds = %bb.ao
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !9, !invariant.load !14, !noalias !55520 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !range !3999, !invariant.load !14, !noalias !55520 ; 2 uses
  %i.fi = icmp ult i64 %i.fh, -9223372036854775807
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq i64 %i.ff, 0
  br i1 %i.fj, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.aq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.32.copyload.i, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) %i.fh) #79, !noalias !55520
  br label %.body

.body:                                            ; preds = %.body106, %bb.ar, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.aq, %bb.ad, %bb.aa
  %.pn = phi { ptr, i32 } [ %eh.lpad-body107, %.body106 ], [ %i.fk, %bb.ar ], [ %i.ee, %bb.ad ], [ %i.dz, %bb.aa ], [ %i.fd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ], [ %i.fd, %bb.aq ]
  invoke fastcc void @"_ZN4core3ptr200drop_in_place$LT$heed..iterator..range..RwRevRange$LT$heed_types..integer..I128$LT$byteorder..BigEndian$GT$$C$milli..heed_codec..roaring_bitmap..cbo_roaring_bitmap_codec..CboRoaringBitmapCodec$GT$$GT$17h6931d759ce87d734E"(ptr noalias noundef align 8 dereferenceable(80) %i.s) #81
          to label %common.resume unwind label %bb.cc

bb.ar:                                            ; preds = %bb.n, %bb.m
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.o, %bb.ap, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i", %bb.am, %bb.ai
  %.sroa.14134.0.ph = phi ptr [ inttoptr (i64 3 to ptr), %bb.ai ], [ inttoptr (i64 3 to ptr), %bb.am ], [ inttoptr (i64 3 to ptr), %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i" ], [ inttoptr (i64 3 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ inttoptr (i64 3 to ptr), %bb.ap ], [ %.sroa.14134.24.copyload136, %bb.o ]
  %.sroa.23.0.ph = phi ptr [ %i.el, %bb.ai ], [ %i.eh, %bb.am ], [ %i.eh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i" ], [ %i.eh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ %i.eh, %bb.ap ], [ %.sroa.23.24.copyload142, %bb.o ]
  %.sroa.20.0.ph = phi i64 [ %i.em, %bb.ai ], [ %i.ei, %bb.am ], [ %i.ei, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i" ], [ %i.ei, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ %i.ei, %bb.ap ], [ %.sroa.20.24.copyload139, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !55475
  store i64 127, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14134.0.ph, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.462.sroa.4.0..sroa.462.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.20.0.ph, ptr %.sroa.462.sroa.4.0..sroa.462.0..sroa_idx.sroa_idx, align 8
  %.sroa.462.sroa.5.0..sroa.462.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.23.0.ph, ptr %.sroa.462.sroa.5.0..sroa.462.0..sroa_idx.sroa_idx, align 8
  br label %bb.cb

.thread194:                                       ; preds = %"_ZN45_$LT$C$u20$as$u20$heed_traits..Comparator$GT$7compare17h1b64cb15f3ee862fE.exit.i", %bb.p, %.split.i, %._crit_edge, %.split89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !55475
  br label %.thread201

bb.as:                                            ; preds = %bb.af
  %.sroa.0132.0.insert.ext = zext i64 %.sroa.5.0.copyload.i to i128
  %.sroa.0132.8.insert.ext = zext i64 %.sroa.7.0.copyload.i to i128
  %.sroa.0132.8.insert.shift = shl nuw i128 %.sroa.0132.8.insert.ext, 64
  %.sroa.0132.8.insert.insert = or disjoint i128 %.sroa.0132.8.insert.shift, %.sroa.0132.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !55475
  %cond = icmp eq i64 %.sroa.8.32.copyload.i, -9223372036854775807
  br i1 %cond, label %.thread201, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.sroa.8.32.copyload.i, ptr %i.r, align 8
  store ptr %.sroa.13.32.copyload.i, ptr %.sroa.522.16..sroa_idx, align 8
  store i64 %.sroa.17.32.copyload.i, ptr %.sroa.522.sroa.2.0..sroa.522.16..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !55523)
  switch i64 %.sroa.17.32.copyload.i, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread209"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.at
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.at ], [ %i.fv, %.lr.ph.i.i.i ] ; 4 uses
  %i.fl = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %.sroa.17.32.copyload.i
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13.32.copyload.i, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 24
  %.val20.i.i.i = load i16, ptr %i.fn, align 8, !alias.scope !55526, !noalias !55531, !noundef !14 ; 2 uses
  %i.fo = icmp eq i16 %.val20.i.i.i, %i.ci
  br i1 %i.fo, label %bb.av, label %bb.au

.lr.ph.i.i.i:                                     ; preds = %bb.at, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.fw, %.lr.ph.i.i.i ], [ %.sroa.17.32.copyload.i, %bb.at ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.fv, %.lr.ph.i.i.i ], [ 0, %bb.at ] ; 2 uses
  %i.fp = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.fq = add i64 %i.fp, %.sroa.05.024.i.i.i      ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %.sroa.17.32.copyload.i
  call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13.32.copyload.i, i64 %i.fq
  %i.ft = getelementptr i8, ptr %i.fs, i64 24
  %.val22.i.i.i = load i16, ptr %i.ft, align 8, !alias.scope !55526, !noalias !55531, !noundef !14
  %i.fu = icmp ugt i16 %.val22.i.i.i, %i.ci
  %i.fv = select i1 %i.fu, i64 %.sroa.05.024.i.i.i, i64 %i.fq, !unpredictable !14 ; 2 uses
  %i.fw = sub nuw i64 %.sroa.01.025.i.i.i, %i.fp  ; 2 uses
  %i.fx = icmp ugt i64 %i.fw, 1
  br i1 %i.fx, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.au:                                            ; preds = %._crit_edge.i.i.i
  %i.fy = icmp ult i16 %.val20.i.i.i, %i.ci
  %i.fz = zext i1 %i.fy to i64
  %i.ga = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.fz
  %i.gb = icmp ule i64 %i.ga, %.sroa.17.32.copyload.i
  call void @llvm.assume(i1 %i.gb)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread"

bb.av:                                            ; preds = %._crit_edge.i.i.i
  %i.gc = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fm, i16 noundef %i.cj)
          to label %.noexc103 unwind label %.loopexit

.noexc103:                                        ; preds = %bb.av
  br i1 %i.gc, label %bb.aw, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread"

bb.aw:                                            ; preds = %.noexc103
  %i.gd = load i64, ptr %i.fm, align 8, !range !2917, !noalias !55523, !noundef !14 ; 3 uses
  %i.ge = icmp eq i64 %i.gd, -9223372036854775808
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !55523, !noundef !14 ; 2 uses
  br i1 %i.ge, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gh = icmp ult i64 %i.gg, 4611686018427387904
  call void @llvm.assume(i1 %i.gh)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.03.0.in.i = icmp eq i64 %i.gg, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !55533)
  %i.gi = icmp ult i64 %.sroa.17.32.copyload.i, 288230376151711744
  call void @llvm.assume(i1 %i.gi)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !55536 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.gk = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.gl = add nsw i64 %.sroa.17.32.copyload.i, %i.gk
  %i.gm = shl nuw nsw i64 %i.gl, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr nonnull align 8 %i.gj, i64 %i.gm, i1 false), !noalias !55538
  %i.gn = add nsw i64 %.sroa.17.32.copyload.i, -1 ; 3 uses
  store i64 %i.gn, ptr %.sroa.522.sroa.2.0..sroa.522.16..sroa_idx.sroa_idx, align 8, !alias.scope !55540, !noalias !55541
  switch i64 %i.gd, label %bb.az [
    i64 -9223372036854775808, label %bb.ba
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.az:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.go = shl nuw i64 %i.gd, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !55523
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ba:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !55523
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

.loopexit:                                        ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread209", %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body106

.loopexit.split-lp:                               ; preds = %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body106

.body106:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.bm
  %eh.lpad-body107 = phi { ptr, i32 } [ %.pn.i104, %bb.bm ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.r) #81
  br label %.body

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread": ; preds = %bb.ay, %.noexc103, %bb.au
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.au ], [ 0, %.noexc103 ], [ -1, %bb.ay ]
  %i.gp = add i64 %.sroa.0.0.i.ph, %.sroa.0.0
  %i.gq = icmp ult i64 %.sroa.17.32.copyload.i, 288230376151711744
  call void @llvm.assume(i1 %i.gq)
  br label %bb.bb

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.ba, %bb.az, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.gr = add i64 %.sroa.0.0, -1                  ; 2 uses
  %i.gs = icmp eq i64 %i.gn, 0
  br i1 %i.gs, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread209", label %bb.bb

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread209": ; preds = %bb.at, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %i.gt = phi i64 [ %i.gr, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit" ], [ %.sroa.0.0, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_ZN4heed6cursor8RwCursor11del_current17hf8f6939c3d3ee09eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx)
          to label %bb.bn unwind label %.loopexit

bb.bb:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %i.gu = phi i64 [ %i.gp, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread" ], [ %i.gr, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit" ] ; 2 uses
  %i.gv = phi i64 [ %.sroa.17.32.copyload.i, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread" ], [ %i.gn, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !55542)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !55545
  %i.gw = call noundef dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 16, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55545 ; 6 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4585) #80
          to label %.noexc105 unwind label %.loopexit.split-lp

.noexc105:                                        ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.gy = call i128 @llvm.bswap.i128(i128 %.sroa.0132.8.insert.insert)
  store i128 %i.gy, ptr %i.gw, align 1, !alias.scope !55555, !noalias !55563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !55565
  invoke void @"_ZN127_$LT$milli..heed_codec..roaring_bitmap..cbo_roaring_bitmap_codec..CboRoaringBitmapCodec$u20$as$u20$heed_traits..BytesEncode$GT$12bytes_encode17h91deefef035a7d97E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.bf unwind label %bb.be, !noalias !55566

bb.be:                                            ; preds = %bb.bd
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bf:                                            ; preds = %bb.bd
  %i.ha = load i64, ptr %i.c, align 8, !range !2978, !noalias !55565, !noundef !14 ; 6 uses
  %i.hb = icmp eq i64 %i.ha, -9223372036854775807
  %i.hc = load ptr, ptr %i.ck, align 8, !noalias !55565 ; 5 uses
  %i.hd = load ptr, ptr %i.cl, align 8, !noalias !55565 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !55565
  br i1 %i.hb, label %.thread213, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not126.i = icmp eq i64 %i.ha, -9223372036854775808
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hc) ]
  %i.he = icmp sgt ptr %i.hd, inttoptr (i64 -1 to ptr)
  %or.cond.i = select i1 %.not126.i, i1 true, i1 %i.he, !prof !31183
  br i1 %or.cond.i, label %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit139.i, label %bb.bh, !prof !31183

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55565
  store ptr @2127, ptr %i.a, align 8, !noalias !55565
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 279, ptr %i.hf, align 8, !noalias !55565
  store ptr %i.a, ptr %i.b, align 8, !noalias !55565
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.hg, align 8, !noalias !55565
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.hh, align 8, !noalias !55565
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hi, align 8, !noalias !55565
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.hj, align 8, !noalias !55565
  call void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, i1 noundef zeroext false, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #83, !noalias !55566
  unreachable

_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit139.i: ; preds = %bb.bg
  %i.hk = ptrtoint ptr %i.hd to i64
  invoke void @_ZN4heed6cursor8RwCursor11put_current17hdb1951d49881612eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gw, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hc, i64 noundef %i.hk)
          to label %bb.bk unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit139.i
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %i.ha, label %bb.bj [
    i64 -9223372036854775808, label %bb.bm
    i64 0, label %bb.bm
  ]

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hc, i64 noundef %i.ha, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55567
  br label %bb.bm

bb.bk:                                            ; preds = %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit139.i
  switch i64 %i.ha, label %bb.bl [
    i64 -9223372036854775808, label %bb.bt
    i64 0, label %bb.bt
  ]

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hc, i64 noundef %i.ha, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55570
  br label %bb.bt

.thread213:                                       ; preds = %bb.bf
  %.sroa.3120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.hc, ptr %.sroa.3120.0..sroa_idx.i, align 8, !alias.scope !55542, !noalias !55573
  %.sroa.4121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.hd, ptr %.sroa.4121.0..sroa_idx.i, align 8, !alias.scope !55542, !noalias !55573
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55542
  br label %.split

bb.bm:                                            ; preds = %bb.bj, %bb.bi, %bb.bi, %bb.be
  %.pn.i104 = phi { ptr, i32 } [ %i.gz, %bb.be ], [ %i.hl, %bb.bi ], [ %i.hl, %bb.bi ], [ %i.hl, %bb.bj ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !55574
  br label %.body106

bb.bn:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.thread209"
  %i.hm = load i32, ptr %i.q, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not97 = icmp eq i32 %i.hm, 5
  br i1 %.not97, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hn = icmp eq i64 %i.gt, 0
  br i1 %i.hn, label %bb.bu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i125"

.thread441:                                       ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ho = icmp eq i64 %i.gu, 0
  br i1 %i.ho, label %.lr.ph.i.i.i.i110, label %.lr.ph.i.i.i.i120.preheader

bb.bp:                                            ; preds = %bb.bn
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.568.0.copyload = load i8, ptr %.sroa.568.0..sroa_idx, align 4
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.676.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.669.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 127, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.hm, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.568.0.copyload, ptr %.sroa.575.0..sroa_idx, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !55577)
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %.split, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.hq, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i" ], [ 0, %.split ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13.32.copyload.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.hq = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.hp, align 8, !range !2917, !alias.scope !55577, !noalias !55580, !noundef !14 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hp, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.hr, align 8, !alias.scope !55577, !noalias !55580 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.bq [
    i64 -9223372036854775808, label %bb.br
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  ]

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hs = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !55585
end_hunk_9
begin_hunk_10_@"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16apply_index_swap17h4e53f34307dcd54aE":bb.a
bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !60635
  %i.y = trunc nuw i8 %.sroa.09.0.copyload.i to i1
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp slt i64 %5, 0
  br i1 %i.z, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.d
  %i.aa = icmp eq i64 %5, 0
  br i1 %i.aa, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit", label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !60641
  %i.ab = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %5, i64 noundef range(i64 1, 9) 1) #79, !noalias !60641 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit"

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !60649
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.e
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ab, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %4, i64 %5, i1 false), !noalias !60650
  store i64 98, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %5, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.bo

bb.g:                                             ; preds = %bb.c
  br i1 %8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !60651
  call fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h047f5fe9fe85c352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 %.val210, i32 %.val211, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7), !noalias !60656
  %i.ad = load i32, ptr %i.d, align 8, !range !33282, !noalias !60651, !noundef !14 ; 2 uses
  %.not.i225 = icmp eq i32 %i.ad, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.09.0.copyload.i226 = load i8, ptr %i.ae, align 4, !noalias !60651 ; 2 uses
  br i1 %.not.i225, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val201 = load i64, ptr %i.ag, align 8, !noundef !14 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val202 = load i32, ptr %i.ah, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60657
  call fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hff9275776605b636E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, i64 %.val201, i32 %.val202, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5), !noalias !60662
  %i.ai = load i64, ptr %i.c, align 8, !range !751, !noalias !60657, !noundef !14
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.010.0.copyload.i = load i64, ptr %i.ak, align 8, !noalias !60657 ; 3 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.511.sroa.0.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !60657 ; 2 uses
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.511.sroa.5.0.copyload.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !noalias !60657 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !60657
  br i1 %i.aj, label %bb.o, label %bb.p

bb.j:                                             ; preds = %bb.h
  %.sroa.615.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %.sroa.3111.sroa.3.0..sroa.3111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3111.sroa.3.0..sroa.3111.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.615.0..sroa_idx.i227, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  %.sroa.3111.sroa.4.0..sroa.3111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.3111.sroa.4.0..sroa.3111.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.0..sroa_idx.i228, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !60651
  %.sroa.42.sroa.0.0.extract.trunc = trunc nuw nsw i32 %i.ad to i8
  store i64 127, ptr %0, align 8
  %.sroa.2110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.42.sroa.0.0.extract.trunc, ptr %.sroa.2110.0..sroa_idx, align 8
  %.sroa.3111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i24 0, ptr %.sroa.3111.0..sroa_idx, align 1
  %.sroa.3111.sroa.2.0..sroa.3111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.09.0.copyload.i226, ptr %.sroa.3111.sroa.2.0..sroa.3111.0..sroa_idx.sroa_idx, align 4
  br label %bb.bo

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !60651
  %i.al = trunc nuw i8 %.sroa.09.0.copyload.i226 to i1
  br i1 %i.al, label %bb.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp slt i64 %7, 0
  br i1 %i.am, label %bb.n, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i237, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i237: ; preds = %bb.l
  %i.an = icmp eq i64 %7, 0
  br i1 %i.an, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit242", label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i237
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !60663
  %i.ao = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %7, i64 noundef range(i64 1, 9) 1) #79, !noalias !60663 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit242"

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.4.0.ph.i.i241 = phi i64 [ 1, %bb.m ], [ 0, %bb.l ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i241, i64 %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !60671
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit242": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i237, %bb.m
  %.sroa.10.0.i.i238 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i237 ], [ %i.ao, %bb.m ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i238, ptr nonnull readonly align 1 %6, i64 %7, i1 false), !noalias !60672
  store i64 98, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %7, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i238, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %7, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.bo

bb.o:                                             ; preds = %bb.i
  store i64 127, ptr %0, align 8
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.010.0.copyload.i, ptr %.sroa.2119.0..sroa_idx, align 8
  %.sroa.2119.sroa.2.0..sroa.2119.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.sroa.0.0.copyload.i, ptr %.sroa.2119.sroa.2.0..sroa.2119.0..sroa_idx.sroa_idx, align 8
  %.sroa.2119.sroa.3.0..sroa.2119.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.511.sroa.5.0.copyload.i, ptr %.sroa.2119.sroa.3.0..sroa.2119.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit302"

bb.p:                                             ; preds = %bb.i
  %.not.i235 = icmp eq i64 %.sroa.010.0.copyload.i, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i = select i1 %.not.i235, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i ; 4 uses
  %..sroa.5.sroa.5.0.copyload.i = select i1 %.not.i235, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i ; 3 uses
  %..sroa.08.0.copyload.i = select i1 %.not.i235, i64 0, i64 %.sroa.010.0.copyload.i ; 3 uses
  store i64 %..sroa.08.0.copyload.i, ptr %i.t, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %..sroa.5.sroa.026.0.copyload.i, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %..sroa.5.sroa.5.0.copyload.i, ptr %.sroa.559.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60673)
  %i.aq = lshr i32 %3, 16
  %i.ar = trunc nuw i32 %i.aq to i16              ; 4 uses
  %i.as = trunc i32 %3 to i16                     ; 2 uses
  %i.at = icmp ult i64 %..sroa.5.sroa.5.0.copyload.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.at)
  %.not33.i = icmp eq i64 %..sroa.5.sroa.5.0.copyload.i, 0
  br i1 %.not33.i, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.outer.i
  %.sroa.01.0.ph31.i = phi i64 [ %i.ba, %.outer.i ], [ 0, %bb.p ] ; 4 uses
  %.promoted2729.i = phi i64 [ %.promoted26.i, %.outer.i ], [ %.sroa.511.sroa.5.0.copyload.i, %bb.p ]
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i, i64 %.sroa.01.0.ph31.i ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.4.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ay = xor i64 %.sroa.01.0.ph31.i, -1
  br label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i", %.lr.ph.i
  %.promoted26.i = phi i64 [ %.promoted2729.i, %.lr.ph.i ], [ %i.bk, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i" ] ; 5 uses
  %i.az = load i16, ptr %i.av, align 8, !noalias !60673, !noundef !14 ; 2 uses
  %.not.i244 = icmp ult i16 %i.az, %i.ar
  br i1 %.not.i244, label %.outer.i, label %bb.r

.outer.i:                                         ; preds = %bb.t, %bb.q
  %i.ba = add nuw nsw i64 %.sroa.01.0.ph31.i, 1   ; 2 uses
  %i.bb = icmp samesign ult i64 %i.ba, %.promoted26.i
  br i1 %i.bb, label %.lr.ph.i, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit"

bb.r:                                             ; preds = %bb.q
  %i.bc = icmp eq i16 %i.az, %i.ar
  %..i = select i1 %i.bc, i16 %i.as, i16 0
  %.sroa.013.0.insert.ext.i = zext i16 %..i to i48
  %.sroa.013.2.insert.insert.i = or disjoint i48 %.sroa.013.0.insert.ext.i, 4294901760
  %i.bd = invoke noundef i64 @_ZN7roaring6bitmap9container9Container12remove_range17h1a85b2ff3d71fcb1E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.au, i48 %.sroa.013.2.insert.insert.i)
          to label %.noexc unwind label %.loopexit165 ; 0 uses

.noexc:                                           ; preds = %bb.r
  %i.be = load i64, ptr %i.au, align 8, !range !2917, !noalias !60673, !noundef !14 ; 3 uses
  %i.bf = icmp eq i64 %i.be, -9223372036854775808
  %i.bg = load i64, ptr %i.aw, align 8, !noalias !60673, !noundef !14 ; 2 uses
  br i1 %i.bf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc
  %i.bh = icmp ult i64 %i.bg, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bh)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.noexc
  %.sroa.012.0.in.i = icmp eq i64 %i.bg, 0
  br i1 %.sroa.012.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %.outer.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60676)
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i243, align 8, !noalias !60679 ; 4 uses
  %i.bi = add nsw i64 %.promoted26.i, %i.ay
  %i.bj = shl nuw nsw i64 %i.bi, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.ax, i64 %i.bj, i1 false), !noalias !60681
  %i.bk = add nsw i64 %.promoted26.i, -1          ; 5 uses
  store i64 %i.bk, ptr %.sroa.559.0..sroa_idx, align 8, !alias.scope !60683, !noalias !60684
  switch i64 %i.be, label %bb.u [
    i64 -9223372036854775808, label %bb.v
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i"
  ]

bb.u:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.bl = shl nuw i64 %i.be, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !60673
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i"

bb.v:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !60673
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i": ; preds = %bb.v, %bb.u, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.bm = icmp ult i64 %i.bk, 288230376151711744
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp samesign ult i64 %.sroa.01.0.ph31.i, %i.bk
  br i1 %i.bn, label %bb.q, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit"

bb.w:                                             ; preds = %.loopexit165, %.loopexit.split-lp166, %bb.af
  %.pn198 = phi { ptr, i32 } [ %.pn195.pn, %bb.af ], [ %lpad.loopexit167, %.loopexit165 ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp166 ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #81
  resume { ptr, i32 } %.pn198

.loopexit165:                                     ; preds = %bb.r
  %lpad.loopexit167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp166:                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit"
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit": ; preds = %.outer.i, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i", %bb.p
  %.promoted25.i60 = phi i64 [ %i.bk, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i" ], [ 0, %bb.p ], [ %.promoted26.i, %.outer.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60685
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hff9275776605b636E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, i64 %.val201, i32 %.val202, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %6, i64 noundef %7)
          to label %.noexc258 unwind label %.loopexit.split-lp166

.noexc258:                                        ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit"
  %i.bo = load i64, ptr %i.b, align 8, !range !751, !noalias !60685, !noundef !14
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.010.0.copyload.i245 = load i64, ptr %i.bq, align 8, !noalias !60685 ; 3 uses
  %.sroa.511.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.511.sroa.0.0.copyload.i247 = load ptr, ptr %.sroa.511.0..sroa_idx.i246, align 8, !noalias !60685 ; 2 uses
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i248 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.511.sroa.5.0.copyload.i249 = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i248, align 8, !noalias !60685 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60685
  br i1 %i.bp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc258
  store i64 127, ptr %0, align 8
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.010.0.copyload.i245, ptr %.sroa.2128.0..sroa_idx, align 8
  %.sroa.2128.sroa.2.0..sroa.2128.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.sroa.0.0.copyload.i247, ptr %.sroa.2128.sroa.2.0..sroa.2128.0..sroa_idx.sroa_idx, align 8
  %.sroa.2128.sroa.3.0..sroa.2128.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.511.sroa.5.0.copyload.i249, ptr %.sroa.2128.sroa.3.0..sroa.2128.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"

bb.y:                                             ; preds = %.noexc258
  %.not.i250 = icmp eq i64 %.sroa.010.0.copyload.i245, -9223372036854775808 ; 3 uses
  %..sroa.5.sroa.026.0.copyload.i251 = select i1 %.not.i250, ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.0.0.copyload.i247 ; 4 uses
  %..sroa.5.sroa.5.0.copyload.i252 = select i1 %.not.i250, i64 0, i64 %.sroa.511.sroa.5.0.copyload.i249 ; 3 uses
  %..sroa.08.0.copyload.i253 = select i1 %.not.i250, i64 0, i64 %.sroa.010.0.copyload.i245 ; 3 uses
  store i64 %..sroa.08.0.copyload.i253, ptr %i.s, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %..sroa.5.sroa.026.0.copyload.i251, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 %..sroa.5.sroa.5.0.copyload.i252, ptr %.sroa.572.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60690)
  %i.br = icmp ult i64 %..sroa.5.sroa.5.0.copyload.i252, 288230376151711744
  tail call void @llvm.assume(i1 %i.br)
  %.not33.i261 = icmp eq i64 %..sroa.5.sroa.5.0.copyload.i252, 0
  br i1 %.not33.i261, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit282", label %.lr.ph.i263

.lr.ph.i263:                                      ; preds = %bb.y, %.outer.i275
  %.sroa.01.0.ph31.i264 = phi i64 [ %i.by, %.outer.i275 ], [ 0, %bb.y ] ; 4 uses
  %.promoted2729.i266 = phi i64 [ %.promoted26.i268, %.outer.i275 ], [ %.sroa.511.sroa.5.0.copyload.i249, %bb.y ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %..sroa.5.sroa.026.0.copyload.i251, i64 %.sroa.01.0.ph31.i264 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.4.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = xor i64 %.sroa.01.0.ph31.i264, -1
  br label %bb.z

bb.z:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i280", %.lr.ph.i263
  %.promoted26.i268 = phi i64 [ %.promoted2729.i266, %.lr.ph.i263 ], [ %i.ci, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i280" ] ; 5 uses
  %i.bx = load i16, ptr %i.bt, align 8, !noalias !60690, !noundef !14 ; 2 uses
  %.not.i270 = icmp ult i16 %i.bx, %i.ar
  br i1 %.not.i270, label %.outer.i275, label %bb.aa

.outer.i275:                                      ; preds = %bb.ac, %bb.z
  %i.by = add nuw nsw i64 %.sroa.01.0.ph31.i264, 1 ; 2 uses
  %i.bz = icmp samesign ult i64 %i.by, %.promoted26.i268
  br i1 %i.bz, label %.lr.ph.i263, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit282"

bb.aa:                                            ; preds = %bb.z
  %i.ca = icmp eq i16 %i.bx, %i.ar
  %..i271 = select i1 %i.ca, i16 %i.as, i16 0
  %.sroa.013.0.insert.ext.i272 = zext i16 %..i271 to i48
  %.sroa.013.2.insert.insert.i273 = or disjoint i48 %.sroa.013.0.insert.ext.i272, 4294901760
  %i.cb = invoke noundef i64 @_ZN7roaring6bitmap9container9Container12remove_range17h1a85b2ff3d71fcb1E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs, i48 %.sroa.013.2.insert.insert.i273)
          to label %.noexc281 unwind label %.loopexit159 ; 0 uses

.noexc281:                                        ; preds = %bb.aa
  %i.cc = load i64, ptr %i.bs, align 8, !range !2917, !noalias !60690, !noundef !14 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, -9223372036854775808
  %i.ce = load i64, ptr %i.bu, align 8, !noalias !60690, !noundef !14 ; 2 uses
  br i1 %i.cd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc281
  %i.cf = icmp ult i64 %i.ce, 4611686018427387904
  tail call void @llvm.assume(i1 %i.cf)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc281
  %.sroa.012.0.in.i274 = icmp eq i64 %i.ce, 0
  br i1 %.sroa.012.0.in.i274, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i278", label %.outer.i275

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i278": ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60693)
  %.sroa.4.0.copyload.i279 = load ptr, ptr %.sroa.4.0..sroa_idx.i267, align 8, !noalias !60696 ; 4 uses
  %i.cg = add nsw i64 %.promoted26.i268, %i.bw
  %i.ch = shl nuw nsw i64 %i.cg, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.bv, i64 %i.ch, i1 false), !noalias !60698
  %i.ci = add nsw i64 %.promoted26.i268, -1       ; 5 uses
  store i64 %i.ci, ptr %.sroa.572.0..sroa_idx, align 8, !alias.scope !60700, !noalias !60701
  switch i64 %i.cc, label %bb.ad [
    i64 -9223372036854775808, label %bb.ae
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i280"
  ]

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i278"
  %i.cj = shl nuw i64 %i.cc, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i279) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i279, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !60690
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i280"

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i278"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i279) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i279, i64 noundef 8192, i64 noundef 8) #79, !noalias !60690
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i280"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i280": ; preds = %bb.ae, %bb.ad, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i278"
  %i.ck = icmp ult i64 %i.ci, 288230376151711744
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ult i64 %.sroa.01.0.ph31.i264, %i.ci
  br i1 %i.cl, label %bb.z, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit282"

bb.af:                                            ; preds = %.loopexit159, %.loopexit.split-lp160, %bb.dj, %.split.thread, %.noexc285
  %.pn195.pn = phi { ptr, i32 } [ %.pn195135, %bb.dj ], [ %.pn193, %.noexc285 ], [ %lpad.thr_comm, %.split.thread ], [ %lpad.loopexit161, %.loopexit159 ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp160 ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #81
  br label %bb.w

.loopexit159:                                     ; preds = %bb.aa
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp160:                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit282", %bb.ag
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit282": ; preds = %.outer.i275, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i280", %bb.y
  %.promoted25.i26073 = phi i64 [ %i.ci, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i280" ], [ 0, %bb.y ], [ %.promoted26.i268, %.outer.i275 ] ; 2 uses
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17h7ac57e1edc9e6790E(ptr nonnull %.0.val, i8 noundef 1)
          to label %bb.ag unwind label %.loopexit.split-lp160

bb.ag:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit282"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @"_ZN7roaring6bitmap3ops86_$LT$impl$u20$core..ops..bit..BitOr$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$5bitor17h375e22022fd96ad5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.ah unwind label %.loopexit.split-lp160

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !14 ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ah
  %min.iters.check = icmp ult i64 %i.cp, 5
  br i1 %min.iters.check, label %.preheader.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.cr = and i64 %i.cp, 3                        ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  %i.ct = select i1 %i.cs, i64 4, i64 %i.cr
  %n.vec = sub i64 %i.cp, %i.ct                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi269 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %index
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %index
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %index
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %index
  %i.cy = getelementptr i8, ptr %i.cu, i64 16
  %i.cz = getelementptr i8, ptr %i.cv, i64 48
  %i.da = getelementptr i8, ptr %i.cw, i64 80
  %i.db = getelementptr i8, ptr %i.cx, i64 112
  %i.dc = load i64, ptr %i.cy, align 8
  %i.dd = load i64, ptr %i.cz, align 8
  %i.de = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.df = insertelement <2 x i64> %i.de, i64 %i.dd, i64 1
  %i.dg = load i64, ptr %i.da, align 8
  %i.dh = load i64, ptr %i.db, align 8
  %i.di = insertelement <2 x i64> poison, i64 %i.dg, i64 0
  %i.dj = insertelement <2 x i64> %i.di, i64 %i.dh, i64 1
  %i.dk = add <2 x i64> %i.df, %vec.phi           ; 2 uses
  %i.dl = add <2 x i64> %i.dj, %vec.phi269        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !60702

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dl, %i.dk
  %i.dn = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader276

.preheader.preheader276:                          ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.dn, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader276, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i"
  %.sroa.09.0.i = phi i64 [ %i.dt, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i" ], [ %.sroa.09.0.i.ph, %.preheader.preheader276 ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.ds, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i" ], [ %.sroa.07.0.i.ph, %.preheader.preheader276 ]
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %.sroa.09.0.i ; 2 uses
  %.val.i = load i64, ptr %i.do, align 8, !range !2917, !noundef !14
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %.val19.i = load i64, ptr %i.dp, align 8        ; 2 uses
  %i.dq = icmp eq i64 %.val.i, -9223372036854775808
  br i1 %i.dq, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i", label %bb.ai

bb.ai:                                            ; preds = %.preheader
  %i.dr = icmp ult i64 %.val19.i, 4611686018427387904
  call void @llvm.assume(i1 %i.dr)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i": ; preds = %bb.ai, %.preheader
  %i.ds = add i64 %.val19.i, %.sroa.07.0.i        ; 2 uses
  %i.dt = add nuw i64 %.sroa.09.0.i, 1            ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.cp
  br i1 %i.du, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.loopexit", label %.preheader, !llvm.loop !60703

.noexc285:                                        ; preds = %bb.am, %bb.al
  br i1 %.sroa.093.2, label %bb.dj, label %bb.af

.split.thread:                                    ; preds = %bb.bk, %bb.bi
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.split:                                           ; preds = %bb.aj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.loopexit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i"
  %i.dv = trunc i64 %i.ds to i32
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.loopexit", %bb.ah
  %.sroa.04.0.i = phi i32 [ 0, %bb.ah ], [ %i.dv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !60704
  %i.dw = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !60704 ; 7 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.aj, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i, !prof !586

bb.aj:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc284 unwind label %.split

.noexc284:                                        ; preds = %bb.aj
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit"
  store i64 1, ptr %i.dw, align 8, !noalias !60709
  %.sroa.4.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i283, align 8, !noalias !60709
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !60709
  %i.dy = atomicrmw add ptr %i.dw, i64 1 monotonic, align 8, !noalias !60709
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.ak, label %"_ZN5milli8progress25AtomicSubStep$LT$Name$GT$3new17h602f7c91bea956c8E.exit"

bb.ak:                                            ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i
  call void @llvm.trap()
  unreachable

"_ZN5milli8progress25AtomicSubStep$LT$Name$GT$3new17h602f7c91bea956c8E.exit": ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.dw, ptr %i.q, align 8
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17hed2cb557e4ab0bdfE(ptr nonnull %.0.val, ptr noundef nonnull %i.dw, i32 noundef %.sroa.04.0.i)
          to label %bb.ao unwind label %bb.an

bb.al:                                            ; preds = %bb.ar, %bb.an
  %.sroa.093.2 = phi i1 [ %.sroa.093.3, %bb.an ], [ false, %bb.ar ]
  %.pn193 = phi { ptr, i32 } [ %i.ed, %bb.an ], [ %.pn, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60710)
  call void @llvm.experimental.noalias.scope.decl(metadata !60713)
  %i.ea = load ptr, ptr %i.q, align 8, !alias.scope !60716, !nonnull !14, !noundef !14
  %i.eb = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !60716
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.am, label %.noexc285

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8d402ac64f5104c0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.noexc285 unwind label %bb.db

bb.an:                                            ; preds = %"_ZN5milli8progress25AtomicSubStep$LT$Name$GT$3new17h602f7c91bea956c8E.exit", %bb.au, %bb.bd, %bb.bc, %bb.ay, %bb.av, %bb.ao
  %.sroa.093.3 = phi i1 [ false, %bb.ao ], [ false, %bb.bd ], [ false, %bb.bc ], [ false, %bb.ay ], [ false, %bb.av ], [ false, %bb.au ], [ true, %"_ZN5milli8progress25AtomicSubStep$LT$Name$GT$3new17h602f7c91bea956c8E.exit" ]
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ao:                                            ; preds = %"_ZN5milli8progress25AtomicSubStep$LT$Name$GT$3new17h602f7c91bea956c8E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
end_hunk_10
begin_hunk_11_@_ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE:bb.a
          cleanup
  br label %.thread984

.thread984:                                       ; preds = %.thread984.loopexit.split-lp, %.thread984.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread984.loopexit ], [ %lpad.loopexit.split-lp, %.thread984.loopexit.split-lp ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !69072
  br label %.thread980

._crit_edge:                                      ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit877", %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  invoke void @_ZN4heed3txn5RwTxn6commit17haebc78cd2f97afddE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ab unwind label %bb.j

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = load i32, ptr %i.f, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not661 = icmp eq i32 %i.cs, 5
  br i1 %.not661, label %bb.ac, label %.thread993

.thread993:                                       ; preds = %bb.ab
  %.sroa.4647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.5652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5652.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4647.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 127, ptr %0, align 8
  %.sroa.4651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cs, ptr %.sroa.4651.0..sroa_idx, align 8
  br label %"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17h4fc9729f2a5c8207E.exit"

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 152, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !69075)
  call void @llvm.experimental.noalias.scope.decl(metadata !69078)
  call void @llvm.experimental.noalias.scope.decl(metadata !69081)
  %i.ct = load ptr, ptr %i.aa, align 8, !alias.scope !69084, !nonnull !14, !noundef !14
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !69084
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ad, label %"_ZN4core3ptr70drop_in_place$LT$heed..envs..env..Env$LT$heed..txn..WithoutTls$GT$$GT$17h98feda7644c8323eE.exit898"

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
  br label %"_ZN4core3ptr70drop_in_place$LT$heed..envs..env..Env$LT$heed..txn..WithoutTls$GT$$GT$17h98feda7644c8323eE.exit898"

"_ZN4core3ptr70drop_in_place$LT$heed..envs..env..Env$LT$heed..txn..WithoutTls$GT$$GT$17h98feda7644c8323eE.exit898": ; preds = %bb.ad, %bb.ac, %bb.b, %"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17h4fc9729f2a5c8207E.exit", %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.ae:                                            ; preds = %bb.ep, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i895"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.n

.thread997:                                       ; preds = %bb.z, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69055
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !69085
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %.sroa.0927.0.copyload = load i32, ptr %i.a, align 8, !noalias !69050 ; 2 uses
  %.sroa.6928.0.copyload = load i8, ptr %.sroa.6928.0..sroa_idx, align 4, !noalias !69050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.10.0..sroa_idx, i64 19, i1 false), !noalias !69050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69055
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !69085
  %.not663 = icmp eq i32 %.sroa.0927.0.copyload, 5
  br i1 %.not663, label %bb.ag, label %.thread994

.thread994:                                       ; preds = %bb.af
  %.sroa.6490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.6490.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.10, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store i64 127, ptr %0, align 8
  %.sroa.4488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0927.0.copyload, ptr %.sroa.4488.0..sroa_idx, align 8
  %.sroa.5489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.6928.0.copyload, ptr %.sroa.5489.0..sroa_idx, align 4
  br label %bb.n

bb.ag:                                            ; preds = %.thread997, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 780 ; 2 uses
  %.val692 = load i8, ptr %i.cw, align 4
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h1630200aad08bd22E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.u, i64 %.sroa.7328.0.copyload, i32 %.sroa.8329.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i8 %.val692)
          to label %bb.ah unwind label %.thread987.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.cx = load i64, ptr %i.u, align 8, !range !751, !noundef !14
  %i.cy = trunc nuw i64 %i.cx to i1
  %.sroa.0496.0.copyload = load i64, ptr %i.bk, align 8 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6191.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4493.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.cy, label %.thread995, label %bb.ai

.thread995:                                       ; preds = %bb.ah
  %.sroa.5507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5507.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6191.sroa.7, i64 16, i1 false)
  store i64 127, ptr %0, align 8
  %.sroa.4506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0496.0.copyload, ptr %.sroa.4506.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.n

bb.ai:                                            ; preds = %bb.ah
  %.not665 = icmp eq i64 %.sroa.0496.0.copyload, -9223372036854775808
  br i1 %.not665, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.ai
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4499.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5502.0..sroa_idx, align 8
  store i64 0, ptr %i.v, align 8
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4499.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6191.sroa.7, i64 16, i1 false)
  %.pre = load ptr, ptr %.sroa.4499.0..sroa_idx, align 8, !alias.scope !69088 ; 2 uses
  %.pre1380 = load i64, ptr %.sroa.5502.0..sroa_idx, align 8, !alias.scope !69088 ; 8 uses
  store i64 %.sroa.0496.0.copyload, ptr %i.v, align 8
  %i.cz = load i32, ptr %i.bx, align 8, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69088)
  %i.da = lshr i32 %i.cz, 16
  %i.db = trunc nuw i32 %i.da to i16              ; 3 uses
  %i.dc = trunc i32 %i.cz to i16
  switch i64 %.pre1380, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.aj
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.dn, %.lr.ph.i.i.i ] ; 4 uses
  %i.dd = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %.pre1380
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.df = getelementptr i8, ptr %i.de, i64 24
  %.val20.i.i.i = load i16, ptr %i.df, align 8, !alias.scope !69091, !noalias !69096, !noundef !14 ; 2 uses
  %i.dg = icmp eq i16 %.val20.i.i.i, %i.db
  br i1 %i.dg, label %bb.al, label %bb.ak

.lr.ph.i.i.i:                                     ; preds = %bb.aj, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.pre1380, %bb.aj ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.dn, %.lr.ph.i.i.i ], [ 0, %bb.aj ] ; 2 uses
  %i.dh = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.di = add i64 %i.dh, %.sroa.05.024.i.i.i      ; 3 uses
  %i.dj = icmp ult i64 %i.di, %.pre1380
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 24
  %.val22.i.i.i = load i16, ptr %i.dl, align 8, !alias.scope !69091, !noalias !69096, !noundef !14
  %i.dm = icmp ugt i16 %.val22.i.i.i, %i.db
  %i.dn = select i1 %i.dm, i64 %.sroa.05.024.i.i.i, i64 %i.di, !unpredictable !14 ; 2 uses
  %i.do = sub nuw i64 %.sroa.01.025.i.i.i, %i.dh  ; 2 uses
  %i.dp = icmp ugt i64 %i.do, 1
  br i1 %i.dp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  %i.dq = icmp ult i16 %.val20.i.i.i, %i.db
  %i.dr = zext i1 %i.dq to i64
  %i.ds = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.dr
  %i.dt = icmp ule i64 %i.ds, %.pre1380
  call void @llvm.assume(i1 %i.dt)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.al:                                            ; preds = %._crit_edge.i.i.i
  %i.du = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.de, i16 noundef %i.dc)
          to label %.noexc734 unwind label %bb.as

.noexc734:                                        ; preds = %bb.al
  br i1 %i.du, label %bb.am, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.am:                                            ; preds = %.noexc734
  %i.dv = load i64, ptr %i.de, align 8, !range !2917, !noalias !69088, !noundef !14 ; 3 uses
  %i.dw = icmp eq i64 %i.dv, -9223372036854775808
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !69088, !noundef !14 ; 2 uses
  br i1 %i.dw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dz = icmp ult i64 %i.dy, 4611686018427387904
  call void @llvm.assume(i1 %i.dz)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.03.0.in.i = icmp eq i64 %i.dy, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !69098)
  %i.ea = icmp ult i64 %.pre1380, 288230376151711744
  call void @llvm.assume(i1 %i.ea)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !69101 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.ec = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.ed = add nsw i64 %.pre1380, %i.ec
  %i.ee = shl nuw nsw i64 %i.ed, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.eb, i64 %i.ee, i1 false), !noalias !69103
  %i.ef = add nsw i64 %.pre1380, -1
  store i64 %i.ef, ptr %.sroa.5502.0..sroa_idx, align 8, !alias.scope !69105, !noalias !69106
  switch i64 %i.dv, label %bb.ap [
    i64 -9223372036854775808, label %bb.aq
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.ap:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.eg = shl nuw i64 %i.dv, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69088
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.aq:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !69088
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ar:                                            ; preds = %bb.bg, %bb.as
  %.pn685 = phi { ptr, i32 } [ %i.eh, %bb.as ], [ %.pn683, %bb.bg ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #81
  br label %.thread980

bb.as:                                            ; preds = %bb.al, %switch.lookup, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %.thread, %bb.aq, %bb.ap, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", %bb.ao, %.noexc734, %bb.ak, %bb.aj
  %.sroa.0492.0.copyload.sink1415 = phi i64 [ 0, %.thread ], [ %.sroa.0496.0.copyload, %bb.aq ], [ %.sroa.0496.0.copyload, %bb.ap ], [ %.sroa.0496.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i" ], [ %.sroa.0496.0.copyload, %bb.ao ], [ %.sroa.0496.0.copyload, %.noexc734 ], [ %.sroa.0496.0.copyload, %bb.ak ], [ %.sroa.0496.0.copyload, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.val695 = load i8, ptr %i.cw, align 4
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17he273a9e881c225f8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t, i64 %.sroa.7328.0.copyload, i32 %.sroa.8329.0.copyload, ptr noalias noundef align 8 dereferenceable(24) %i.y, i8 %.val695, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.at unwind label %bb.as

bb.at:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  %i.ei = load i32, ptr %i.t, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not666 = icmp eq i32 %i.ei, 5
  br i1 %.not666, label %switch.lookup, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.4512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.5517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5517.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4512.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 127, ptr %0, align 8
  %.sroa.4516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ei, ptr %.sroa.4516.0..sroa_idx, align 8
  br label %bb.em

switch.lookup:                                    ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 424 ; 2 uses
  %.val703 = load i64, ptr %i.ej, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.ek = icmp ne i64 %.val703, -9223372036854775790
  call void @llvm.assume(i1 %i.ek)
  %i.el = add nsw i64 %.val703, 9223372036854775807
  %i.em = icmp ugt i64 %.val703, -9223372036854775808
  %i.en = select i1 %i.em, i64 %i.el, i64 17
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.en
  %switch.load = load i8, ptr %switch.gep, align 1
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h626f7dffaa513beaE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.r, i64 %.sroa.10331.0.copyload, i32 %.sroa.11.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i8 %switch.load)
          to label %bb.av unwind label %bb.as

bb.av:                                            ; preds = %switch.lookup
  %i.eo = load i64, ptr %i.r, align 8, !range !751, !noundef !14
  %i.ep = trunc nuw i64 %i.eo to i1
  %.sroa.0523.0.copyload = load i64, ptr %i.bl, align 8 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6208.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4520.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.ep, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.sroa.5534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6208.sroa.7, i64 16, i1 false)
  store i64 127, ptr %0, align 8
  %.sroa.4533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0523.0.copyload, ptr %.sroa.4533.0..sroa_idx, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit887"

bb.ax:                                            ; preds = %bb.av
  %.not668 = icmp eq i64 %.sroa.0523.0.copyload, -9223372036854775808
  br i1 %.not668, label %.thread1421, label %bb.ay

.thread1421:                                      ; preds = %bb.ax
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4526.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5529.0..sroa_idx, align 8
  store i64 0, ptr %i.s, align 8
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6208.sroa.7, i64 16, i1 false)
  %.pre1381 = load ptr, ptr %.sroa.4526.0..sroa_idx, align 8, !alias.scope !69107 ; 2 uses
  %.pre1382 = load i64, ptr %.sroa.5529.0..sroa_idx, align 8, !alias.scope !69107 ; 8 uses
  store i64 %.sroa.0523.0.copyload, ptr %i.s, align 8
  %i.eq = load i32, ptr %i.bx, align 8, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69107)
  %i.er = lshr i32 %i.eq, 16
  %i.es = trunc nuw i32 %i.er to i16              ; 3 uses
  %i.et = trunc i32 %i.eq to i16
  switch i64 %.pre1382, label %.lr.ph.i.i.i744 [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"
    i64 1, label %._crit_edge.i.i.i736
  ]

._crit_edge.i.i.i736:                             ; preds = %.lr.ph.i.i.i744, %bb.ay
  %.sroa.05.0.lcssa.i.i.i737 = phi i64 [ 0, %bb.ay ], [ %i.fe, %.lr.ph.i.i.i744 ] ; 4 uses
  %i.eu = icmp ult i64 %.sroa.05.0.lcssa.i.i.i737, %.pre1382
  call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %.pre1381, i64 %.sroa.05.0.lcssa.i.i.i737 ; 7 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 24
  %.val20.i.i.i738 = load i16, ptr %i.ew, align 8, !alias.scope !69110, !noalias !69115, !noundef !14 ; 2 uses
  %i.ex = icmp eq i16 %.val20.i.i.i738, %i.es
  br i1 %i.ex, label %bb.ba, label %bb.az

.lr.ph.i.i.i744:                                  ; preds = %bb.ay, %.lr.ph.i.i.i744
  %.sroa.01.025.i.i.i745 = phi i64 [ %i.ff, %.lr.ph.i.i.i744 ], [ %.pre1382, %bb.ay ] ; 2 uses
  %.sroa.05.024.i.i.i746 = phi i64 [ %i.fe, %.lr.ph.i.i.i744 ], [ 0, %bb.ay ] ; 2 uses
  %i.ey = lshr i64 %.sroa.01.025.i.i.i745, 1      ; 2 uses
  %i.ez = add i64 %i.ey, %.sroa.05.024.i.i.i746   ; 3 uses
  %i.fa = icmp ult i64 %i.ez, %.pre1382
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %.pre1381, i64 %i.ez
  %i.fc = getelementptr i8, ptr %i.fb, i64 24
  %.val22.i.i.i747 = load i16, ptr %i.fc, align 8, !alias.scope !69110, !noalias !69115, !noundef !14
  %i.fd = icmp ugt i16 %.val22.i.i.i747, %i.es
  %i.fe = select i1 %i.fd, i64 %.sroa.05.024.i.i.i746, i64 %i.ez, !unpredictable !14 ; 2 uses
  %i.ff = sub nuw i64 %.sroa.01.025.i.i.i745, %i.ey ; 2 uses
  %i.fg = icmp ugt i64 %i.ff, 1
  br i1 %i.fg, label %.lr.ph.i.i.i744, label %._crit_edge.i.i.i736

bb.az:                                            ; preds = %._crit_edge.i.i.i736
  %i.fh = icmp ult i16 %.val20.i.i.i738, %i.es
  %i.fi = zext i1 %i.fh to i64
  %i.fj = add nuw i64 %.sroa.05.0.lcssa.i.i.i737, %i.fi
  %i.fk = icmp ule i64 %i.fj, %.pre1382
  call void @llvm.assume(i1 %i.fk)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"

bb.ba:                                            ; preds = %._crit_edge.i.i.i736
  %i.fl = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ev, i16 noundef %i.et)
          to label %.noexc748 unwind label %bb.bh

.noexc748:                                        ; preds = %bb.ba
  br i1 %i.fl, label %bb.bb, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"

bb.bb:                                            ; preds = %.noexc748
  %i.fm = load i64, ptr %i.ev, align 8, !range !2917, !noalias !69107, !noundef !14 ; 3 uses
  %i.fn = icmp eq i64 %i.fm, -9223372036854775808
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !69107, !noundef !14 ; 2 uses
  br i1 %i.fn, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fq = icmp ult i64 %i.fp, 4611686018427387904
  call void @llvm.assume(i1 %i.fq)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.03.0.in.i740 = icmp eq i64 %i.fp, 0
  br i1 %.sroa.03.0.in.i740, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i741", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i741": ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !69117)
  %i.fr = icmp ult i64 %.pre1382, 288230376151711744
  call void @llvm.assume(i1 %i.fr)
  %.sroa.4.0..sroa_idx.i742 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.4.0.copyload.i743 = load ptr, ptr %.sroa.4.0..sroa_idx.i742, align 8, !noalias !69120 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ft = xor i64 %.sroa.05.0.lcssa.i.i.i737, -1
  %i.fu = add nsw i64 %.pre1382, %i.ft
  %i.fv = shl nuw nsw i64 %i.fu, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr nonnull align 8 %i.fs, i64 %i.fv, i1 false), !noalias !69122
  %i.fw = add nsw i64 %.pre1382, -1
  store i64 %i.fw, ptr %.sroa.5529.0..sroa_idx, align 8, !alias.scope !69124, !noalias !69125
  switch i64 %i.fm, label %bb.be [
    i64 -9223372036854775808, label %bb.bf
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"
  ]

bb.be:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i741"
  %i.fx = shl nuw i64 %i.fm, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i743) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i743, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69107
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"

bb.bf:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i741"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i743) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i743, i64 noundef 8192, i64 noundef 8) #79, !noalias !69107
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"

bb.bg:                                            ; preds = %bb.bz, %bb.bh
  %.pn683 = phi { ptr, i32 } [ %i.fy, %bb.bh ], [ %.pn, %bb.bz ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #81
  br label %bb.ar

bb.bh:                                            ; preds = %bb.ba, %bb.bk, %bb.bn, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749": ; preds = %.thread1421, %bb.bf, %bb.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i741", %bb.bd, %.noexc748, %bb.az, %bb.ay
  %.sroa.0519.0.copyload.sink1423 = phi i64 [ 0, %.thread1421 ], [ %.sroa.0523.0.copyload, %bb.bf ], [ %.sroa.0523.0.copyload, %bb.be ], [ %.sroa.0523.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i741" ], [ %.sroa.0523.0.copyload, %bb.bd ], [ %.sroa.0523.0.copyload, %.noexc748 ], [ %.sroa.0523.0.copyload, %bb.az ], [ %.sroa.0523.0.copyload, %bb.ay ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.val702 = load i64, ptr %i.ej, align 8, !range !4548, !noundef !14 ; 3 uses
  %i.fz = icmp ne i64 %.val702, -9223372036854775790
  call void @llvm.assume(i1 %i.fz)
  %i.ga = add nsw i64 %.val702, 9223372036854775807
  %i.gb = icmp ugt i64 %.val702, -9223372036854775808
  %i.gc = select i1 %i.gb, i64 %i.ga, i64 17
  %switch.gep1706 = getelementptr inbounds i8, ptr @switch.table._ZN15index_scheduler9scheduler25process_snapshot_creation12remove_tasks17h1f4bc260c6e716ddE.9061, i64 %i.gc
  %switch.load1707 = load i8, ptr %switch.gep1706, align 1
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h6c35809cf94f65a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, i64 %.sroa.10331.0.copyload, i32 %.sroa.11.0.copyload, ptr noalias noundef align 8 dereferenceable(24) %i.y, i8 %switch.load1707, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.bi unwind label %bb.bh

bb.bi:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit749"
  %i.gd = load i32, ptr %i.q, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not669 = icmp eq i32 %i.gd, 5
  br i1 %.not669, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5544.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4539.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 127, ptr %0, align 8
  %.sroa.4543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.gd, ptr %.sroa.4543.0..sroa_idx, align 8
  br label %bb.ei

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.val727 = load i32, ptr %i.bx, align 8
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$6delete17h6e07466d14eee7a7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, i64 %.sroa.16336.0.copyload, i32 %.sroa.17337.0.copyload, ptr noalias noundef align 8 dereferenceable(24) %i.y, i32 %.val727)
          to label %bb.bl unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bk
  %i.ge = load i32, ptr %i.p, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not671 = icmp eq i32 %i.ge, 5
  br i1 %.not671, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.4550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.4550.0.copyload = load i8, ptr %.sroa.4550.0..sroa_idx, align 4
  %.sroa.5551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %.sroa.6559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.6559.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5551.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 127, ptr %0, align 8
  %.sroa.4557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ge, ptr %.sroa.4557.0..sroa_idx, align 8
  %.sroa.5558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.4550.0.copyload, ptr %.sroa.5558.0..sroa_idx, align 4
  br label %bb.ei

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 728
  %.sroa.0234.0.copyload = load i32, ptr %i.gf, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 732
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 733
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 734
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 736
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 740
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.gg = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  call void @llvm.assume(i1 %i.gg)
  %i.gh = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.gj = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.gk = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.gl = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.gm = add nsw i32 %i.gl, 999999               ; 3 uses
  %.neg.i = sdiv i32 %i.gm, -100
  %i.gn = sext i32 %i.gm to i64
  %i.go = mul nsw i64 %i.gn, 1461
  %i.gp = sdiv i64 %i.go, 4
  %i.gq = trunc nsw i64 %i.gp to i32
  %i.gr = sdiv i32 %i.gm, 400
  %i.gs = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.gt = add nsw i32 %.neg.i, %i.gs
  %i.gu = add nsw i32 %i.gt, %i.gr
  %i.gv = add nsw i32 %i.gu, %i.gq
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul nsw i64 %i.gw, 86400
  call void @llvm.assume(i1 %i.gi)
  %i.gy = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.gz = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  call void @llvm.assume(i1 %i.he)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.gj
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.gk
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.hf = or disjoint i64 %i.gy, -31619087683200
  %i.hg = add nsw i64 %i.hf, %.neg7.i
  %i.hh = add nsw i64 %i.hg, %reass.mul.i
  %i.hi = add nsw i64 %i.hh, %reass.mul13.i
  %i.hj = add nsw i64 %i.hi, %i.gx
  %i.hk = sext i64 %i.hj to i128
  %i.hl = mul nsw i128 %i.hk, 1000000000
  %i.hm = icmp ult i32 %.sroa.0234.0.copyload, 1000000000
  call void @llvm.assume(i1 %i.hm)
  %i.hn = zext nneg i32 %.sroa.0234.0.copyload to i128
  %i.ho = add nsw i128 %i.hl, %i.hn               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hf5baf831e7ca1b75E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.n, i64 %.sroa.19339.0.copyload, i32 %.sroa.20340.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i128 %i.ho)
          to label %bb.bo unwind label %bb.bh

bb.bo:                                            ; preds = %bb.bn
  %i.hp = load i64, ptr %i.n, align 8, !range !751, !noundef !14
  %i.hq = trunc nuw i64 %i.hp to i1
  %.sroa.0565.0.copyload = load i64, ptr %i.bm, align 8 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4562.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.hq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %.sroa.5576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5576.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238.sroa.7, i64 16, i1 false)
  store i64 127, ptr %0, align 8
  %.sroa.4575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0565.0.copyload, ptr %.sroa.4575.0..sroa_idx, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit806"

bb.bq:                                            ; preds = %bb.bo
  %.not673 = icmp eq i64 %.sroa.0565.0.copyload, -9223372036854775808
  br i1 %.not673, label %.thread1427, label %bb.br

.thread1427:                                      ; preds = %bb.bq
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4568.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5571.0..sroa_idx, align 8
  store i64 0, ptr %i.o, align 8
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4568.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238.sroa.7, i64 16, i1 false)
  %.pre1383 = load ptr, ptr %.sroa.4568.0..sroa_idx, align 8, !alias.scope !69126 ; 2 uses
  %.pre1384 = load i64, ptr %.sroa.5571.0..sroa_idx, align 8, !alias.scope !69126 ; 8 uses
  store i64 %.sroa.0565.0.copyload, ptr %i.o, align 8
  %i.hr = load i32, ptr %i.bx, align 8, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69126)
  %i.hs = lshr i32 %i.hr, 16
  %i.ht = trunc nuw i32 %i.hs to i16              ; 3 uses
  %i.hu = trunc i32 %i.hr to i16
  switch i64 %.pre1384, label %.lr.ph.i.i.i760 [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"
    i64 1, label %._crit_edge.i.i.i752
  ]

._crit_edge.i.i.i752:                             ; preds = %.lr.ph.i.i.i760, %bb.br
  %.sroa.05.0.lcssa.i.i.i753 = phi i64 [ 0, %bb.br ], [ %i.if, %.lr.ph.i.i.i760 ] ; 4 uses
  %i.hv = icmp ult i64 %.sroa.05.0.lcssa.i.i.i753, %.pre1384
  call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds nuw [32 x i8], ptr %.pre1383, i64 %.sroa.05.0.lcssa.i.i.i753 ; 7 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 24
  %.val20.i.i.i754 = load i16, ptr %i.hx, align 8, !alias.scope !69129, !noalias !69134, !noundef !14 ; 2 uses
  %i.hy = icmp eq i16 %.val20.i.i.i754, %i.ht
  br i1 %i.hy, label %bb.bt, label %bb.bs

.lr.ph.i.i.i760:                                  ; preds = %bb.br, %.lr.ph.i.i.i760
  %.sroa.01.025.i.i.i761 = phi i64 [ %i.ig, %.lr.ph.i.i.i760 ], [ %.pre1384, %bb.br ] ; 2 uses
  %.sroa.05.024.i.i.i762 = phi i64 [ %i.if, %.lr.ph.i.i.i760 ], [ 0, %bb.br ] ; 2 uses
  %i.hz = lshr i64 %.sroa.01.025.i.i.i761, 1      ; 2 uses
  %i.ia = add i64 %i.hz, %.sroa.05.024.i.i.i762   ; 3 uses
  %i.ib = icmp ult i64 %i.ia, %.pre1384
  call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %.pre1383, i64 %i.ia
  %i.id = getelementptr i8, ptr %i.ic, i64 24
  %.val22.i.i.i763 = load i16, ptr %i.id, align 8, !alias.scope !69129, !noalias !69134, !noundef !14
  %i.ie = icmp ugt i16 %.val22.i.i.i763, %i.ht
  %i.if = select i1 %i.ie, i64 %.sroa.05.024.i.i.i762, i64 %i.ia, !unpredictable !14 ; 2 uses
  %i.ig = sub nuw i64 %.sroa.01.025.i.i.i761, %i.hz ; 2 uses
  %i.ih = icmp ugt i64 %i.ig, 1
  br i1 %i.ih, label %.lr.ph.i.i.i760, label %._crit_edge.i.i.i752

bb.bs:                                            ; preds = %._crit_edge.i.i.i752
  %i.ii = icmp ult i16 %.val20.i.i.i754, %i.ht
  %i.ij = zext i1 %i.ii to i64
  %i.ik = add nuw i64 %.sroa.05.0.lcssa.i.i.i753, %i.ij
  %i.il = icmp ule i64 %i.ik, %.pre1384
  call void @llvm.assume(i1 %i.il)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"

bb.bt:                                            ; preds = %._crit_edge.i.i.i752
  %i.im = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hw, i16 noundef %i.hu)
          to label %.noexc764 unwind label %bb.ca

.noexc764:                                        ; preds = %bb.bt
  br i1 %i.im, label %bb.bu, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"

bb.bu:                                            ; preds = %.noexc764
  %i.in = load i64, ptr %i.hw, align 8, !range !2917, !noalias !69126, !noundef !14 ; 3 uses
  %i.io = icmp eq i64 %i.in, -9223372036854775808
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !69126, !noundef !14 ; 2 uses
  br i1 %i.io, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ir = icmp ult i64 %i.iq, 4611686018427387904
  call void @llvm.assume(i1 %i.ir)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.sroa.03.0.in.i756 = icmp eq i64 %i.iq, 0
  br i1 %.sroa.03.0.in.i756, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i757", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i757": ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !69136)
  %i.is = icmp ult i64 %.pre1384, 288230376151711744
  call void @llvm.assume(i1 %i.is)
  %.sroa.4.0..sroa_idx.i758 = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.sroa.4.0.copyload.i759 = load ptr, ptr %.sroa.4.0..sroa_idx.i758, align 8, !noalias !69139 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.iu = xor i64 %.sroa.05.0.lcssa.i.i.i753, -1
  %i.iv = add nsw i64 %.pre1384, %i.iu
  %i.iw = shl nuw nsw i64 %i.iv, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr nonnull align 8 %i.it, i64 %i.iw, i1 false), !noalias !69141
  %i.ix = add nsw i64 %.pre1384, -1
  store i64 %i.ix, ptr %.sroa.5571.0..sroa_idx, align 8, !alias.scope !69143, !noalias !69144
  switch i64 %i.in, label %bb.bx [
    i64 -9223372036854775808, label %bb.by
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"
  ]

bb.bx:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i757"
  %i.iy = shl nuw i64 %i.in, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i759) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i759, i64 noundef %i.iy, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69126
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"

bb.by:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i757"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i759) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i759, i64 noundef 8192, i64 noundef 8) #79, !noalias !69126
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"

bb.bz:                                            ; preds = %bb.du, %bb.cr, %bb.ca
  %.pn = phi { ptr, i32 } [ %i.iz, %bb.ca ], [ %i.pw, %bb.du ], [ %i.mb, %bb.cr ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #81
  br label %bb.bg

bb.ca:                                            ; preds = %bb.bt, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765", %bb.cf, %bb.di
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765": ; preds = %.thread1427, %bb.by, %bb.bx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i757", %bb.bw, %.noexc764, %bb.bs, %bb.br
  %.sroa.0561.0.copyload.sink1429 = phi i64 [ 0, %.thread1427 ], [ %.sroa.0565.0.copyload, %bb.by ], [ %.sroa.0565.0.copyload, %bb.bx ], [ %.sroa.0565.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i757" ], [ %.sroa.0565.0.copyload, %bb.bw ], [ %.sroa.0565.0.copyload, %.noexc764 ], [ %.sroa.0565.0.copyload, %bb.bs ], [ %.sroa.0565.0.copyload, %bb.br ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h0b925cad7c08e835E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, i64 %.sroa.19339.0.copyload, i32 %.sroa.20340.0.copyload, ptr noalias noundef align 8 dereferenceable(24) %i.y, i128 %i.ho, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.cb unwind label %bb.ca

bb.cb:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit765"
  %i.ja = load i32, ptr %i.m, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not674 = icmp eq i32 %i.ja, 5
  br i1 %.not674, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.sroa.4581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.5586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5586.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4581.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 127, ptr %0, align 8
  %.sroa.4585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ja, ptr %.sroa.4585.0..sroa_idx, align 8
  br label %bb.da

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 751
  %i.jc = load i8, ptr %i.jb, align 1, !range !1313, !noundef !14
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit", %bb.cd
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 767
  %i.jf = load i8, ptr %i.je, align 1, !range !1313, !noundef !14
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.de, label %bb.di

bb.cf:                                            ; preds = %bb.cd
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 744
  %.sroa.0254.0.copyload = load i32, ptr %i.jh, align 8 ; 2 uses
  %.sroa.3256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 748
  %.sroa.3256.sroa.0.0.copyload = load i8, ptr %.sroa.3256.0..sroa_idx, align 4 ; 2 uses
  %.sroa.3256.sroa.2.0..sroa.3256.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 749
  %.sroa.3256.sroa.2.0.copyload = load i8, ptr %.sroa.3256.sroa.2.0..sroa.3256.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.3256.sroa.3.0..sroa.3256.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 750
  %.sroa.3256.sroa.3.0.copyload = load i8, ptr %.sroa.3256.sroa.3.0..sroa.3256.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.3256.sroa.5.0..sroa.3256.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 752
  %.sroa.3256.sroa.5.0.copyload = load i32, ptr %.sroa.3256.sroa.5.0..sroa.3256.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3256.sroa.6.0..sroa.3256.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 756
  %.sroa.3256.sroa.6.0.copyload = load i24, ptr %.sroa.3256.sroa.6.0..sroa.3256.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.ji = icmp ult i8 %.sroa.3256.sroa.3.0.copyload, 24
  call void @llvm.assume(i1 %i.ji)
  %i.jj = icmp ult i8 %.sroa.3256.sroa.2.0.copyload, 60
  call void @llvm.assume(i1 %i.jj)
  %i.jk = icmp ult i8 %.sroa.3256.sroa.0.0.copyload, 60
  %i.jl = zext nneg i8 %.sroa.3256.sroa.2.0.copyload to i64
  %i.jm = zext nneg i8 %.sroa.3256.sroa.3.0.copyload to i64
  %i.jn = ashr i32 %.sroa.3256.sroa.5.0.copyload, 10
  %i.jo = add nsw i32 %i.jn, 999999               ; 3 uses
  %.neg.i766 = sdiv i32 %i.jo, -100
  %i.jp = sext i32 %i.jo to i64
  %i.jq = mul nsw i64 %i.jp, 1461
  %i.jr = sdiv i64 %i.jq, 4
  %i.js = trunc nsw i64 %i.jr to i32
  %i.jt = sdiv i32 %i.jo, 400
  %i.ju = and i32 %.sroa.3256.sroa.5.0.copyload, 511
  %i.jv = add nsw i32 %.neg.i766, %i.ju
  %i.jw = add nsw i32 %i.jv, %i.jt
  %i.jx = add nsw i32 %i.jw, %i.js
  %i.jy = sext i32 %i.jx to i64
  %i.jz = mul nsw i64 %i.jy, 86400
  call void @llvm.assume(i1 %i.jk)
  %i.ka = zext nneg i8 %.sroa.3256.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i768 = trunc i24 %.sroa.3256.sroa.6.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i769 = lshr i24 %.sroa.3256.sroa.6.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i770 = trunc i24 %.sroa.01.1.extract.shift.i.i769 to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i771 = lshr i24 %.sroa.3256.sroa.6.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i772 = trunc nuw i24 %.sroa.01.2.extract.shift.i.i771 to i8 ; 3 uses
  %i.kb = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i772, -26
  call void @llvm.assume(i1 %i.kb)
  %i.kc = icmp slt i8 %.sroa.01.2.extract.trunc.i.i772, 26
  call void @llvm.assume(i1 %i.kc)
  %i.kd = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i770, -60
  call void @llvm.assume(i1 %i.kd)
  %i.ke = icmp slt i8 %.sroa.01.1.extract.trunc.i.i770, 60
  call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i768, -60
  call void @llvm.assume(i1 %i.kf)
  %i.kg = icmp slt i8 %.sroa.01.0.extract.trunc.i.i768, 60
  call void @llvm.assume(i1 %i.kg)
  %narrow.i773 = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i772
  %neg11.i774 = sext i8 %narrow.i773 to i64
  %narrow14.i775 = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i768
  %.neg7.i776 = sext i8 %narrow14.i775 to i64
  %narrow15.i777 = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i770
  %neg.i778 = sext i8 %narrow15.i777 to i64
  %reass.add.i779 = add nsw i64 %neg.i778, %i.jl
  %reass.mul.i780 = mul nsw i64 %reass.add.i779, 60
  %reass.add12.i781 = add nsw i64 %neg11.i774, %i.jm
  %reass.mul13.i782 = mul nsw i64 %reass.add12.i781, 3600
  %i.kh = or disjoint i64 %i.ka, -31619087683200
  %i.ki = add nsw i64 %i.kh, %.neg7.i776
  %i.kj = add nsw i64 %i.ki, %reass.mul.i780
  %i.kk = add nsw i64 %i.kj, %reass.mul13.i782
  %i.kl = add nsw i64 %i.kk, %i.jz
  %i.km = sext i64 %i.kl to i128
  %i.kn = mul nsw i128 %i.km, 1000000000
  %i.ko = icmp ult i32 %.sroa.0254.0.copyload, 1000000000
  call void @llvm.assume(i1 %i.ko)
  %i.kp = zext nneg i32 %.sroa.0254.0.copyload to i128
  %i.kq = add nsw i128 %i.kn, %i.kp               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hf5baf831e7ca1b75E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, i64 %.sroa.22342.0.copyload, i32 %.sroa.23343.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i128 %i.kq)
          to label %bb.cg unwind label %bb.ca

bb.cg:                                            ; preds = %bb.cf
  %i.kr = load i64, ptr %i.k, align 8, !range !751, !noundef !14
  %i.ks = trunc nuw i64 %i.kr to i1
  %.sroa.0593.0.copyload = load i64, ptr %i.bn, align 8 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6259.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4590.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.ks, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %.sroa.5604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5604.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6259.sroa.7, i64 16, i1 false)
  store i64 127, ptr %0, align 8
  %.sroa.4603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0593.0.copyload, ptr %.sroa.4603.0..sroa_idx, align 8
  br label %bb.cy

bb.ci:                                            ; preds = %bb.cg
  %.not676 = icmp eq i64 %.sroa.0593.0.copyload, -9223372036854775808
  br i1 %.not676, label %.thread1431, label %bb.cj

.thread1431:                                      ; preds = %bb.ci
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4596.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5599.0..sroa_idx, align 8
  store i64 0, ptr %i.l, align 8
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4596.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6259.sroa.7, i64 16, i1 false)
  %.pre1385 = load ptr, ptr %.sroa.4596.0..sroa_idx, align 8, !alias.scope !69145 ; 2 uses
  %.pre1386 = load i64, ptr %.sroa.5599.0..sroa_idx, align 8, !alias.scope !69145 ; 8 uses
  store i64 %.sroa.0593.0.copyload, ptr %i.l, align 8
  %i.kt = load i32, ptr %i.bx, align 8, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69145)
  %i.ku = lshr i32 %i.kt, 16
  %i.kv = trunc nuw i32 %i.ku to i16              ; 3 uses
  %i.kw = trunc i32 %i.kt to i16
  switch i64 %.pre1386, label %.lr.ph.i.i.i791 [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"
    i64 1, label %._crit_edge.i.i.i783
  ]

._crit_edge.i.i.i783:                             ; preds = %.lr.ph.i.i.i791, %bb.cj
  %.sroa.05.0.lcssa.i.i.i784 = phi i64 [ 0, %bb.cj ], [ %i.lh, %.lr.ph.i.i.i791 ] ; 4 uses
  %i.kx = icmp ult i64 %.sroa.05.0.lcssa.i.i.i784, %.pre1386
  call void @llvm.assume(i1 %i.kx)
  %i.ky = getelementptr inbounds nuw [32 x i8], ptr %.pre1385, i64 %.sroa.05.0.lcssa.i.i.i784 ; 7 uses
  %i.kz = getelementptr i8, ptr %i.ky, i64 24
  %.val20.i.i.i785 = load i16, ptr %i.kz, align 8, !alias.scope !69148, !noalias !69153, !noundef !14 ; 2 uses
  %i.la = icmp eq i16 %.val20.i.i.i785, %i.kv
  br i1 %i.la, label %bb.cl, label %bb.ck

.lr.ph.i.i.i791:                                  ; preds = %bb.cj, %.lr.ph.i.i.i791
  %.sroa.01.025.i.i.i792 = phi i64 [ %i.li, %.lr.ph.i.i.i791 ], [ %.pre1386, %bb.cj ] ; 2 uses
  %.sroa.05.024.i.i.i793 = phi i64 [ %i.lh, %.lr.ph.i.i.i791 ], [ 0, %bb.cj ] ; 2 uses
  %i.lb = lshr i64 %.sroa.01.025.i.i.i792, 1      ; 2 uses
  %i.lc = add i64 %i.lb, %.sroa.05.024.i.i.i793   ; 3 uses
  %i.ld = icmp ult i64 %i.lc, %.pre1386
  call void @llvm.assume(i1 %i.ld)
  %i.le = getelementptr inbounds nuw [32 x i8], ptr %.pre1385, i64 %i.lc
  %i.lf = getelementptr i8, ptr %i.le, i64 24
  %.val22.i.i.i794 = load i16, ptr %i.lf, align 8, !alias.scope !69148, !noalias !69153, !noundef !14
  %i.lg = icmp ugt i16 %.val22.i.i.i794, %i.kv
  %i.lh = select i1 %i.lg, i64 %.sroa.05.024.i.i.i793, i64 %i.lc, !unpredictable !14 ; 2 uses
  %i.li = sub nuw i64 %.sroa.01.025.i.i.i792, %i.lb ; 2 uses
  %i.lj = icmp ugt i64 %i.li, 1
  br i1 %i.lj, label %.lr.ph.i.i.i791, label %._crit_edge.i.i.i783

bb.ck:                                            ; preds = %._crit_edge.i.i.i783
  %i.lk = icmp ult i16 %.val20.i.i.i785, %i.kv
  %i.ll = zext i1 %i.lk to i64
  %i.lm = add nuw i64 %.sroa.05.0.lcssa.i.i.i784, %i.ll
  %i.ln = icmp ule i64 %i.lm, %.pre1386
  call void @llvm.assume(i1 %i.ln)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"

bb.cl:                                            ; preds = %._crit_edge.i.i.i783
  %i.lo = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ky, i16 noundef %i.kw)
          to label %.noexc795 unwind label %bb.cr

.noexc795:                                        ; preds = %bb.cl
  br i1 %i.lo, label %bb.cm, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"

bb.cm:                                            ; preds = %.noexc795
  %i.lp = load i64, ptr %i.ky, align 8, !range !2917, !noalias !69145, !noundef !14 ; 3 uses
  %i.lq = icmp eq i64 %i.lp, -9223372036854775808
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !69145, !noundef !14 ; 2 uses
  br i1 %i.lq, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lt = icmp ult i64 %i.ls, 4611686018427387904
  call void @llvm.assume(i1 %i.lt)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.sroa.03.0.in.i787 = icmp eq i64 %i.ls, 0
  br i1 %.sroa.03.0.in.i787, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i788", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i788": ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !69155)
  %i.lu = icmp ult i64 %.pre1386, 288230376151711744
  call void @llvm.assume(i1 %i.lu)
  %.sroa.4.0..sroa_idx.i789 = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %.sroa.4.0.copyload.i790 = load ptr, ptr %.sroa.4.0..sroa_idx.i789, align 8, !noalias !69158 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.lw = xor i64 %.sroa.05.0.lcssa.i.i.i784, -1
  %i.lx = add nsw i64 %.pre1386, %i.lw
  %i.ly = shl nuw nsw i64 %i.lx, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ky, ptr nonnull align 8 %i.lv, i64 %i.ly, i1 false), !noalias !69160
  %i.lz = add nsw i64 %.pre1386, -1
  store i64 %i.lz, ptr %.sroa.5599.0..sroa_idx, align 8, !alias.scope !69162, !noalias !69163
  switch i64 %i.lp, label %bb.cp [
    i64 -9223372036854775808, label %bb.cq
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"
  ]

bb.cp:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i788"
  %i.ma = shl nuw i64 %i.lp, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i790) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i790, i64 noundef %i.ma, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69145
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"

bb.cq:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i788"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i790) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i790, i64 noundef 8192, i64 noundef 8) #79, !noalias !69145
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"

bb.cr:                                            ; preds = %bb.cl, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #81
  br label %bb.bz

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796": ; preds = %.thread1431, %bb.cq, %bb.cp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i788", %bb.co, %.noexc795, %bb.ck, %bb.cj
  %.sroa.0589.0.copyload.sink1433 = phi i64 [ 0, %.thread1431 ], [ %.sroa.0593.0.copyload, %bb.cq ], [ %.sroa.0593.0.copyload, %bb.cp ], [ %.sroa.0593.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i788" ], [ %.sroa.0593.0.copyload, %bb.co ], [ %.sroa.0593.0.copyload, %.noexc795 ], [ %.sroa.0593.0.copyload, %bb.ck ], [ %.sroa.0593.0.copyload, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h0b925cad7c08e835E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, i64 %.sroa.22342.0.copyload, i32 %.sroa.23343.0.copyload, ptr noalias noundef align 8 dereferenceable(24) %i.y, i128 %i.kq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.cs unwind label %bb.cr

bb.cs:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit796"
  %i.mc = load i32, ptr %i.j, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not677 = icmp eq i32 %i.mc, 5
  br i1 %.not677, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.sroa.4609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.5614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5614.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4609.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 127, ptr %0, align 8
  %.sroa.4613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.mc, ptr %.sroa.4613.0..sroa_idx, align 8
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.l)
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !69164)
  call void @llvm.experimental.noalias.scope.decl(metadata !69167)
  %.val.i.i = load ptr, ptr %.sroa.4596.0..sroa_idx, align 8, !alias.scope !69170, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5599.0..sroa_idx, align 8, !alias.scope !69170, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69171)
  %i.md = icmp eq i64 %.val1.i.i, 0
  br i1 %i.md, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cu, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.mf, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i" ], [ 0, %bb.cu ] ; 2 uses
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.mf = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.me, align 8, !range !2917, !alias.scope !69171, !noalias !69170, !noundef !14 ; 2 uses
  %i.mg = getelementptr i8, ptr %i.me, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.mg, align 8, !alias.scope !69171, !noalias !69170 ; 4 uses
  switch i64 %.val8.i.i.i.i, label %bb.cv [
    i64 -9223372036854775808, label %bb.cw
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"
  ]

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mh = shl nuw i64 %.val8.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69174
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !69174
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i": ; preds = %bb.cw, %bb.cv, %.lr.ph.i.i.i.i
  %i.mi = icmp eq i64 %i.mf, %.val1.i.i
  br i1 %i.mi, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i", %bb.cu
  %i.mj = icmp eq i64 %.sroa.0589.0.copyload.sink1433, 0
  br i1 %i.mj, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit", label %bb.cx

bb.cx:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  %i.mk = shl nuw i64 %.sroa.0589.0.copyload.sink1433, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.mk, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69170
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit": ; preds = %bb.cx, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ce

bb.cy:                                            ; preds = %bb.ct, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.da

bb.cz:                                            ; preds = %bb.f, %.thread980
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.da:                                            ; preds = %bb.eb, %bb.cy, %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !69175)
  call void @llvm.experimental.noalias.scope.decl(metadata !69178)
  %.val.i.i797 = load ptr, ptr %.sroa.4568.0..sroa_idx, align 8, !alias.scope !69181, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i798 = load i64, ptr %.sroa.5571.0..sroa_idx, align 8, !alias.scope !69181, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69182)
  %i.mm = icmp eq i64 %.val1.i.i798, 0
  br i1 %i.mm, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i804", label %.lr.ph.i.i.i.i799

.lr.ph.i.i.i.i799:                                ; preds = %bb.da, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i803"
  %.sroa.0.010.i.i.i.i800 = phi i64 [ %i.mo, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i803" ], [ 0, %bb.da ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i797, i64 %.sroa.0.010.i.i.i.i800 ; 2 uses
  %i.mo = add nuw i64 %.sroa.0.010.i.i.i.i800, 1  ; 2 uses
  %.val8.i.i.i.i801 = load i64, ptr %i.mn, align 8, !range !2917, !alias.scope !69182, !noalias !69181, !noundef !14 ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mn, i64 8
  %.val9.i.i.i.i802 = load ptr, ptr %i.mp, align 8, !alias.scope !69182, !noalias !69181 ; 4 uses
  switch i64 %.val8.i.i.i.i801, label %bb.db [
    i64 -9223372036854775808, label %bb.dc
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i803"
  ]

bb.db:                                            ; preds = %.lr.ph.i.i.i.i799
  %i.mq = shl nuw i64 %.val8.i.i.i.i801, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i802) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i802, i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69185
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i803"

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i799
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i802) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i802, i64 noundef 8192, i64 noundef 8) #79, !noalias !69185
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i803"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i803": ; preds = %bb.dc, %bb.db, %.lr.ph.i.i.i.i799
  %i.mr = icmp eq i64 %i.mo, %.val1.i.i798
  br i1 %i.mr, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i804", label %.lr.ph.i.i.i.i799

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i804": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i803", %bb.da
  %i.ms = icmp eq i64 %.sroa.0561.0.copyload.sink1429, 0
  br i1 %i.ms, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit806", label %bb.dd

bb.dd:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i804"
  %i.mt = shl nuw i64 %.sroa.0561.0.copyload.sink1429, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i797, i64 noundef %i.mt, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69181
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit806"

bb.de:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit857", %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !69186)
  call void @llvm.experimental.noalias.scope.decl(metadata !69189)
  %.val.i.i824 = load ptr, ptr %.sroa.4568.0..sroa_idx, align 8, !alias.scope !69192, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i825 = load i64, ptr %.sroa.5571.0..sroa_idx, align 8, !alias.scope !69192, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69193)
  %i.mu = icmp eq i64 %.val1.i.i825, 0
  br i1 %i.mu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i831", label %.lr.ph.i.i.i.i826

.lr.ph.i.i.i.i826:                                ; preds = %bb.de, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i830"
  %.sroa.0.010.i.i.i.i827 = phi i64 [ %i.mw, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i830" ], [ 0, %bb.de ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i824, i64 %.sroa.0.010.i.i.i.i827 ; 2 uses
  %i.mw = add nuw i64 %.sroa.0.010.i.i.i.i827, 1  ; 2 uses
  %.val8.i.i.i.i828 = load i64, ptr %i.mv, align 8, !range !2917, !alias.scope !69193, !noalias !69192, !noundef !14 ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mv, i64 8
  %.val9.i.i.i.i829 = load ptr, ptr %i.mx, align 8, !alias.scope !69193, !noalias !69192 ; 4 uses
  switch i64 %.val8.i.i.i.i828, label %bb.df [
    i64 -9223372036854775808, label %bb.dg
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i830"
  ]

bb.df:                                            ; preds = %.lr.ph.i.i.i.i826
  %i.my = shl nuw i64 %.val8.i.i.i.i828, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i829) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i829, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69196
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i830"

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i826
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i829) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i829, i64 noundef 8192, i64 noundef 8) #79, !noalias !69196
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i830"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i830": ; preds = %bb.dg, %bb.df, %.lr.ph.i.i.i.i826
  %i.mz = icmp eq i64 %i.mw, %.val1.i.i825
  br i1 %i.mz, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i831", label %.lr.ph.i.i.i.i826

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i831": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i830", %bb.de
  %i.na = icmp eq i64 %.sroa.0561.0.copyload.sink1429, 0
  br i1 %i.na, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit833", label %bb.dh

bb.dh:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i831"
  %i.nb = shl nuw i64 %.sroa.0561.0.copyload.sink1429, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i824, i64 noundef %i.nb, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69192
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit833"

bb.di:                                            ; preds = %bb.ce
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 760
  %.sroa.0275.0.copyload = load i32, ptr %i.nc, align 8 ; 2 uses
  %.sroa.3277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 764
  %.sroa.3277.sroa.0.0.copyload = load i8, ptr %.sroa.3277.0..sroa_idx, align 4 ; 2 uses
  %.sroa.3277.sroa.2.0..sroa.3277.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 765
  %.sroa.3277.sroa.2.0.copyload = load i8, ptr %.sroa.3277.sroa.2.0..sroa.3277.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.3277.sroa.3.0..sroa.3277.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 766
  %.sroa.3277.sroa.3.0.copyload = load i8, ptr %.sroa.3277.sroa.3.0..sroa.3277.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.3277.sroa.5.0..sroa.3277.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 768
  %.sroa.3277.sroa.5.0.copyload = load i32, ptr %.sroa.3277.sroa.5.0..sroa.3277.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3277.sroa.6.0..sroa.3277.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0654.01247, i64 772
  %.sroa.3277.sroa.6.0.copyload = load i24, ptr %.sroa.3277.sroa.6.0..sroa.3277.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.nd = icmp ult i8 %.sroa.3277.sroa.3.0.copyload, 24
  call void @llvm.assume(i1 %i.nd)
  %i.ne = icmp ult i8 %.sroa.3277.sroa.2.0.copyload, 60
  call void @llvm.assume(i1 %i.ne)
  %i.nf = icmp ult i8 %.sroa.3277.sroa.0.0.copyload, 60
  %i.ng = zext nneg i8 %.sroa.3277.sroa.2.0.copyload to i64
  %i.nh = zext nneg i8 %.sroa.3277.sroa.3.0.copyload to i64
  %i.ni = ashr i32 %.sroa.3277.sroa.5.0.copyload, 10
  %i.nj = add nsw i32 %i.ni, 999999               ; 3 uses
  %.neg.i807 = sdiv i32 %i.nj, -100
  %i.nk = sext i32 %i.nj to i64
  %i.nl = mul nsw i64 %i.nk, 1461
  %i.nm = sdiv i64 %i.nl, 4
  %i.nn = trunc nsw i64 %i.nm to i32
  %i.no = sdiv i32 %i.nj, 400
  %i.np = and i32 %.sroa.3277.sroa.5.0.copyload, 511
  %i.nq = add nsw i32 %.neg.i807, %i.np
  %i.nr = add nsw i32 %i.nq, %i.no
  %i.ns = add nsw i32 %i.nr, %i.nn
  %i.nt = sext i32 %i.ns to i64
  %i.nu = mul nsw i64 %i.nt, 86400
  call void @llvm.assume(i1 %i.nf)
  %i.nv = zext nneg i8 %.sroa.3277.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i809 = trunc i24 %.sroa.3277.sroa.6.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i810 = lshr i24 %.sroa.3277.sroa.6.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i811 = trunc i24 %.sroa.01.1.extract.shift.i.i810 to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i812 = lshr i24 %.sroa.3277.sroa.6.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i813 = trunc nuw i24 %.sroa.01.2.extract.shift.i.i812 to i8 ; 3 uses
  %i.nw = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i813, -26
  call void @llvm.assume(i1 %i.nw)
  %i.nx = icmp slt i8 %.sroa.01.2.extract.trunc.i.i813, 26
  call void @llvm.assume(i1 %i.nx)
  %i.ny = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i811, -60
  call void @llvm.assume(i1 %i.ny)
  %i.nz = icmp slt i8 %.sroa.01.1.extract.trunc.i.i811, 60
  call void @llvm.assume(i1 %i.nz)
  %i.oa = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i809, -60
  call void @llvm.assume(i1 %i.oa)
  %i.ob = icmp slt i8 %.sroa.01.0.extract.trunc.i.i809, 60
  call void @llvm.assume(i1 %i.ob)
  %narrow.i814 = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i813
  %neg11.i815 = sext i8 %narrow.i814 to i64
  %narrow14.i816 = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i809
  %.neg7.i817 = sext i8 %narrow14.i816 to i64
  %narrow15.i818 = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i811
  %neg.i819 = sext i8 %narrow15.i818 to i64
  %reass.add.i820 = add nsw i64 %neg.i819, %i.ng
  %reass.mul.i821 = mul nsw i64 %reass.add.i820, 60
  %reass.add12.i822 = add nsw i64 %neg11.i815, %i.nh
  %reass.mul13.i823 = mul nsw i64 %reass.add12.i822, 3600
  %i.oc = or disjoint i64 %i.nv, -31619087683200
  %i.od = add nsw i64 %i.oc, %.neg7.i817
  %i.oe = add nsw i64 %i.od, %reass.mul.i821
  %i.of = add nsw i64 %i.oe, %reass.mul13.i823
  %i.og = add nsw i64 %i.of, %i.nu
  %i.oh = sext i64 %i.og to i128
  %i.oi = mul nsw i128 %i.oh, 1000000000
  %i.oj = icmp ult i32 %.sroa.0275.0.copyload, 1000000000
  call void @llvm.assume(i1 %i.oj)
  %i.ok = zext nneg i32 %.sroa.0275.0.copyload to i128
  %i.ol = add nsw i128 %i.oi, %i.ok               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hf5baf831e7ca1b75E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h, i64 %.sroa.25345.0.copyload, i32 %.sroa.26346.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i128 %i.ol)
          to label %bb.dj unwind label %bb.ca

bb.dj:                                            ; preds = %bb.di
  %i.om = load i64, ptr %i.h, align 8, !range !751, !noundef !14
  %i.on = trunc nuw i64 %i.om to i1
  %.sroa.0621.0.copyload = load i64, ptr %i.bo, align 8 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6280.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4618.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.on, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %.sroa.5632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5632.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6280.sroa.7, i64 16, i1 false)
  store i64 127, ptr %0, align 8
  %.sroa.4631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0621.0.copyload, ptr %.sroa.4631.0..sroa_idx, align 8
  br label %bb.eb

bb.dl:                                            ; preds = %bb.dj
  %.not679 = icmp eq i64 %.sroa.0621.0.copyload, -9223372036854775808
  br i1 %.not679, label %.thread1434, label %bb.dm

.thread1434:                                      ; preds = %bb.dl
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4624.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5627.0..sroa_idx, align 8
  store i64 0, ptr %i.i, align 8
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4624.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6280.sroa.7, i64 16, i1 false)
  %.pre1387 = load ptr, ptr %.sroa.4624.0..sroa_idx, align 8, !alias.scope !69197 ; 2 uses
  %.pre1388 = load i64, ptr %.sroa.5627.0..sroa_idx, align 8, !alias.scope !69197 ; 8 uses
  store i64 %.sroa.0621.0.copyload, ptr %i.i, align 8
  %i.oo = load i32, ptr %i.bx, align 8, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69197)
  %i.op = lshr i32 %i.oo, 16
  %i.oq = trunc nuw i32 %i.op to i16              ; 3 uses
  %i.or = trunc i32 %i.oo to i16
  switch i64 %.pre1388, label %.lr.ph.i.i.i842 [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"
    i64 1, label %._crit_edge.i.i.i834
  ]

._crit_edge.i.i.i834:                             ; preds = %.lr.ph.i.i.i842, %bb.dm
  %.sroa.05.0.lcssa.i.i.i835 = phi i64 [ 0, %bb.dm ], [ %i.pc, %.lr.ph.i.i.i842 ] ; 4 uses
  %i.os = icmp ult i64 %.sroa.05.0.lcssa.i.i.i835, %.pre1388
  call void @llvm.assume(i1 %i.os)
  %i.ot = getelementptr inbounds nuw [32 x i8], ptr %.pre1387, i64 %.sroa.05.0.lcssa.i.i.i835 ; 7 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 24
  %.val20.i.i.i836 = load i16, ptr %i.ou, align 8, !alias.scope !69200, !noalias !69205, !noundef !14 ; 2 uses
  %i.ov = icmp eq i16 %.val20.i.i.i836, %i.oq
  br i1 %i.ov, label %bb.do, label %bb.dn

.lr.ph.i.i.i842:                                  ; preds = %bb.dm, %.lr.ph.i.i.i842
  %.sroa.01.025.i.i.i843 = phi i64 [ %i.pd, %.lr.ph.i.i.i842 ], [ %.pre1388, %bb.dm ] ; 2 uses
  %.sroa.05.024.i.i.i844 = phi i64 [ %i.pc, %.lr.ph.i.i.i842 ], [ 0, %bb.dm ] ; 2 uses
  %i.ow = lshr i64 %.sroa.01.025.i.i.i843, 1      ; 2 uses
  %i.ox = add i64 %i.ow, %.sroa.05.024.i.i.i844   ; 3 uses
  %i.oy = icmp ult i64 %i.ox, %.pre1388
  call void @llvm.assume(i1 %i.oy)
  %i.oz = getelementptr inbounds nuw [32 x i8], ptr %.pre1387, i64 %i.ox
  %i.pa = getelementptr i8, ptr %i.oz, i64 24
  %.val22.i.i.i845 = load i16, ptr %i.pa, align 8, !alias.scope !69200, !noalias !69205, !noundef !14
  %i.pb = icmp ugt i16 %.val22.i.i.i845, %i.oq
  %i.pc = select i1 %i.pb, i64 %.sroa.05.024.i.i.i844, i64 %i.ox, !unpredictable !14 ; 2 uses
  %i.pd = sub nuw i64 %.sroa.01.025.i.i.i843, %i.ow ; 2 uses
  %i.pe = icmp ugt i64 %i.pd, 1
  br i1 %i.pe, label %.lr.ph.i.i.i842, label %._crit_edge.i.i.i834

bb.dn:                                            ; preds = %._crit_edge.i.i.i834
  %i.pf = icmp ult i16 %.val20.i.i.i836, %i.oq
  %i.pg = zext i1 %i.pf to i64
  %i.ph = add nuw i64 %.sroa.05.0.lcssa.i.i.i835, %i.pg
  %i.pi = icmp ule i64 %i.ph, %.pre1388
  call void @llvm.assume(i1 %i.pi)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"

bb.do:                                            ; preds = %._crit_edge.i.i.i834
  %i.pj = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ot, i16 noundef %i.or)
          to label %.noexc846 unwind label %bb.du

.noexc846:                                        ; preds = %bb.do
  br i1 %i.pj, label %bb.dp, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"

bb.dp:                                            ; preds = %.noexc846
  %i.pk = load i64, ptr %i.ot, align 8, !range !2917, !noalias !69197, !noundef !14 ; 3 uses
  %i.pl = icmp eq i64 %i.pk, -9223372036854775808
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pn = load i64, ptr %i.pm, align 8, !noalias !69197, !noundef !14 ; 2 uses
  br i1 %i.pl, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.po = icmp ult i64 %i.pn, 4611686018427387904
  call void @llvm.assume(i1 %i.po)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.sroa.03.0.in.i838 = icmp eq i64 %i.pn, 0
  br i1 %.sroa.03.0.in.i838, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i839", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i839": ; preds = %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !69207)
  %i.pp = icmp ult i64 %.pre1388, 288230376151711744
  call void @llvm.assume(i1 %i.pp)
  %.sroa.4.0..sroa_idx.i840 = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %.sroa.4.0.copyload.i841 = load ptr, ptr %.sroa.4.0..sroa_idx.i840, align 8, !noalias !69210 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.pr = xor i64 %.sroa.05.0.lcssa.i.i.i835, -1
  %i.ps = add nsw i64 %.pre1388, %i.pr
  %i.pt = shl nuw nsw i64 %i.ps, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ot, ptr nonnull align 8 %i.pq, i64 %i.pt, i1 false), !noalias !69212
  %i.pu = add nsw i64 %.pre1388, -1
  store i64 %i.pu, ptr %.sroa.5627.0..sroa_idx, align 8, !alias.scope !69214, !noalias !69215
  switch i64 %i.pk, label %bb.ds [
    i64 -9223372036854775808, label %bb.dt
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"
  ]

bb.ds:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i839"
  %i.pv = shl nuw i64 %i.pk, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i841) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i841, i64 noundef %i.pv, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69197
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"

bb.dt:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i839"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i841) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i841, i64 noundef 8192, i64 noundef 8) #79, !noalias !69197
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"

bb.du:                                            ; preds = %bb.do, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #81
  br label %bb.bz

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847": ; preds = %.thread1434, %bb.dt, %bb.ds, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i839", %bb.dr, %.noexc846, %bb.dn, %bb.dm
  %.sroa.0617.0.copyload.sink1436 = phi i64 [ 0, %.thread1434 ], [ %.sroa.0621.0.copyload, %bb.dt ], [ %.sroa.0621.0.copyload, %bb.ds ], [ %.sroa.0621.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i839" ], [ %.sroa.0621.0.copyload, %bb.dr ], [ %.sroa.0621.0.copyload, %.noexc846 ], [ %.sroa.0621.0.copyload, %bb.dn ], [ %.sroa.0621.0.copyload, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h0b925cad7c08e835E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, i64 %.sroa.25345.0.copyload, i32 %.sroa.26346.0.copyload, ptr noalias noundef align 8 dereferenceable(24) %i.y, i128 %i.ol, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.dv unwind label %bb.du

bb.dv:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit847"
  %i.px = load i32, ptr %i.g, align 8, !range !33282, !noundef !14 ; 2 uses
  %.not680 = icmp eq i32 %i.px, 5
  br i1 %.not680, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.sroa.4637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.5642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5642.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4637.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 127, ptr %0, align 8
  %.sroa.4641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.px, ptr %.sroa.4641.0..sroa_idx, align 8
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.i)
  br label %bb.eb

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !69216)
  call void @llvm.experimental.noalias.scope.decl(metadata !69219)
  %.val.i.i848 = load ptr, ptr %.sroa.4624.0..sroa_idx, align 8, !alias.scope !69222, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i849 = load i64, ptr %.sroa.5627.0..sroa_idx, align 8, !alias.scope !69222, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69223)
  %i.py = icmp eq i64 %.val1.i.i849, 0
  br i1 %i.py, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i855", label %.lr.ph.i.i.i.i850

.lr.ph.i.i.i.i850:                                ; preds = %bb.dx, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i854"
  %.sroa.0.010.i.i.i.i851 = phi i64 [ %i.qa, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i854" ], [ 0, %bb.dx ] ; 2 uses
  %i.pz = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i848, i64 %.sroa.0.010.i.i.i.i851 ; 2 uses
  %i.qa = add nuw i64 %.sroa.0.010.i.i.i.i851, 1  ; 2 uses
  %.val8.i.i.i.i852 = load i64, ptr %i.pz, align 8, !range !2917, !alias.scope !69223, !noalias !69222, !noundef !14 ; 2 uses
  %i.qb = getelementptr i8, ptr %i.pz, i64 8
  %.val9.i.i.i.i853 = load ptr, ptr %i.qb, align 8, !alias.scope !69223, !noalias !69222 ; 4 uses
  switch i64 %.val8.i.i.i.i852, label %bb.dy [
    i64 -9223372036854775808, label %bb.dz
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i854"
  ]

bb.dy:                                            ; preds = %.lr.ph.i.i.i.i850
  %i.qc = shl nuw i64 %.val8.i.i.i.i852, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i853) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i853, i64 noundef %i.qc, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69226
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i854"

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i850
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i853) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i853, i64 noundef 8192, i64 noundef 8) #79, !noalias !69226
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i854"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i854": ; preds = %bb.dz, %bb.dy, %.lr.ph.i.i.i.i850
  %i.qd = icmp eq i64 %i.qa, %.val1.i.i849
  br i1 %i.qd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i855", label %.lr.ph.i.i.i.i850

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i855": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i854", %bb.dx
  %i.qe = icmp eq i64 %.sroa.0617.0.copyload.sink1436, 0
  br i1 %i.qe, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit857", label %bb.ea

bb.ea:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i855"
  %i.qf = shl nuw i64 %.sroa.0617.0.copyload.sink1436, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i848, i64 noundef %i.qf, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69222
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit857"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit857": ; preds = %bb.ea, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i855"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.de

bb.eb:                                            ; preds = %bb.dw, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.da

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit833": ; preds = %bb.dh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i831"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !69227)
  call void @llvm.experimental.noalias.scope.decl(metadata !69230)
  %.val.i.i858 = load ptr, ptr %.sroa.4526.0..sroa_idx, align 8, !alias.scope !69233, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i859 = load i64, ptr %.sroa.5529.0..sroa_idx, align 8, !alias.scope !69233, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69234)
  %i.qg = icmp eq i64 %.val1.i.i859, 0
  br i1 %i.qg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i865", label %.lr.ph.i.i.i.i860

.lr.ph.i.i.i.i860:                                ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit833", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i864"
  %.sroa.0.010.i.i.i.i861 = phi i64 [ %i.qi, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i864" ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit833" ] ; 2 uses
  %i.qh = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i858, i64 %.sroa.0.010.i.i.i.i861 ; 2 uses
  %i.qi = add nuw i64 %.sroa.0.010.i.i.i.i861, 1  ; 2 uses
  %.val8.i.i.i.i862 = load i64, ptr %i.qh, align 8, !range !2917, !alias.scope !69234, !noalias !69233, !noundef !14 ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qh, i64 8
  %.val9.i.i.i.i863 = load ptr, ptr %i.qj, align 8, !alias.scope !69234, !noalias !69233 ; 4 uses
  switch i64 %.val8.i.i.i.i862, label %bb.ec [
    i64 -9223372036854775808, label %bb.ed
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i864"
  ]

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i860
  %i.qk = shl nuw i64 %.val8.i.i.i.i862, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i863) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i863, i64 noundef %i.qk, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69237
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i864"

bb.ed:                                            ; preds = %.lr.ph.i.i.i.i860
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i863) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i863, i64 noundef 8192, i64 noundef 8) #79, !noalias !69237
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i864"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i864": ; preds = %bb.ed, %bb.ec, %.lr.ph.i.i.i.i860
  %i.ql = icmp eq i64 %i.qi, %.val1.i.i859
  br i1 %i.ql, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i865", label %.lr.ph.i.i.i.i860

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i865": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i864", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit833"
  %i.qm = icmp eq i64 %.sroa.0519.0.copyload.sink1423, 0
  br i1 %i.qm, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit867", label %bb.ee

bb.ee:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i865"
  %i.qn = shl nuw i64 %.sroa.0519.0.copyload.sink1423, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i858, i64 noundef %i.qn, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69233
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit867"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit867": ; preds = %bb.ee, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i865"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !69238)
  call void @llvm.experimental.noalias.scope.decl(metadata !69241)
  %.val.i.i868 = load ptr, ptr %.sroa.4499.0..sroa_idx, align 8, !alias.scope !69244, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i869 = load i64, ptr %.sroa.5502.0..sroa_idx, align 8, !alias.scope !69244, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69245)
  %i.qo = icmp eq i64 %.val1.i.i869, 0
  br i1 %i.qo, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i875", label %.lr.ph.i.i.i.i870

.lr.ph.i.i.i.i870:                                ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit867", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i874"
  %.sroa.0.010.i.i.i.i871 = phi i64 [ %i.qq, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i874" ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit867" ] ; 2 uses
  %i.qp = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i868, i64 %.sroa.0.010.i.i.i.i871 ; 2 uses
  %i.qq = add nuw i64 %.sroa.0.010.i.i.i.i871, 1  ; 2 uses
  %.val8.i.i.i.i872 = load i64, ptr %i.qp, align 8, !range !2917, !alias.scope !69245, !noalias !69244, !noundef !14 ; 2 uses
  %i.qr = getelementptr i8, ptr %i.qp, i64 8
  %.val9.i.i.i.i873 = load ptr, ptr %i.qr, align 8, !alias.scope !69245, !noalias !69244 ; 4 uses
  switch i64 %.val8.i.i.i.i872, label %bb.ef [
    i64 -9223372036854775808, label %bb.eg
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i874"
  ]

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i870
  %i.qs = shl nuw i64 %.val8.i.i.i.i872, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i873) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i873, i64 noundef %i.qs, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !69248
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i874"

bb.eg:                                            ; preds = %.lr.ph.i.i.i.i870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i873) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i873, i64 noundef 8192, i64 noundef 8) #79, !noalias !69248
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i874"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i874": ; preds = %bb.eg, %bb.ef, %.lr.ph.i.i.i.i870
  %i.qt = icmp eq i64 %i.qq, %.val1.i.i869
  br i1 %i.qt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i875", label %.lr.ph.i.i.i.i870

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i875": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i874", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit867"
  %i.qu = icmp eq i64 %.sroa.0492.0.copyload.sink1415, 0
  br i1 %i.qu, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit877", label %bb.eh

bb.eh:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i875"
  %i.qv = shl nuw i64 %.sroa.0492.0.copyload.sink1415, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i868, i64 noundef %i.qv, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !69244
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit877"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit877": ; preds = %bb.eh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i875"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.qw = icmp eq ptr %.sroa.0654.11248, %i.bf    ; 2 uses
  %.sroa.0654.1.idx = select i1 %i.qw, i64 0, i64 784
  %.sroa.0654.1 = getelementptr inbounds nuw i8, ptr %.sroa.0654.11248, i64 %.sroa.0654.1.idx
  br i1 %i.qw, label %._crit_edge, label %bb.r

end_hunk_11
begin_hunk_12_@_ZN5milli6update3new6merger20merge_and_send_rtree17h87d306452375d24bE:bb.a
  %i.qf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.qf, align 8, !noalias !153754
  %i.qg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.qg, align 8, !noalias !153754
  %i.qh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.qh, align 8, !noalias !153754
  %i.qi = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.qi, align 8, !noalias !153754
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @416) #80
          to label %bb.fp unwind label %bb.fq, !noalias !153717

bb.fp:                                            ; preds = %bb.fs, %bb.fo
  unreachable

bb.fq:                                            ; preds = %bb.fo
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %i.j) #81
          to label %.body.i1.i unwind label %bb.fr, !noalias !153717

bb.fr:                                            ; preds = %bb.ft, %bb.fq
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153717
  unreachable

bb.fs:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !153754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !153754
  store ptr @418, ptr %i.g, align 8, !noalias !153754
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !153754
  store ptr @415, ptr %i.h, align 8, !noalias !153754
  %i.ql = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.ql, align 8, !noalias !153754
  %i.qm = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.qm, align 8, !noalias !153754
  %i.qn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.qn, align 8, !noalias !153754
  %i.qo = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.qo, align 8, !noalias !153754
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @419) #80
          to label %bb.fp unwind label %bb.ft, !noalias !153717

bb.ft:                                            ; preds = %bb.fs
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %i.l) #81
          to label %.body.i1.i unwind label %bb.fr, !noalias !153717

bb.fu:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !153754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !153754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !153754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !noalias !153754
  %i.qq = load i64, ptr %i.dw, align 8, !alias.scope !153831, !noalias !153834, !noundef !14 ; 3 uses
  %i.qr = load i64, ptr %i.p, align 8, !range !9, !alias.scope !153831, !noalias !153834, !noundef !14
  %i.qs = icmp eq i64 %i.qq, %i.qr
  br i1 %i.qs, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %bb.fu
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4a41d8201b760b5bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @420)
          to label %bb.fy unwind label %bb.fw, !noalias !153837

bb.fw:                                            ; preds = %bb.fv
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$17h14d326ef49847d8aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.k) #81
          to label %.body.i1.i unwind label %bb.fx, !noalias !153717

bb.fx:                                            ; preds = %bb.fw
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153837
  unreachable

bb.fy:                                            ; preds = %bb.fv, %bb.fu
  %i.qv = load ptr, ptr %i.dx, align 8, !alias.scope !153831, !noalias !153834, !nonnull !14, !noundef !14
  %i.qw = getelementptr inbounds nuw [88 x i8], ptr %i.qv, i64 %i.qq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.qw, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !153717
  %i.qx = add i64 %i.qq, 1                        ; 2 uses
  store i64 %i.qx, ptr %i.dw, align 8, !alias.scope !153831, !noalias !153834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !153754
  br label %.backedge.i.i.i.i.i

bb.fz:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !153754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !153702
  store i64 0, ptr %i.dv, align 8, !alias.scope !153838, !noalias !153839
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"

.loopexit.i.i.i324:                               ; preds = %.backedge.i.i.i.i.i, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i", %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !153702
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"

.loopexit.i.i:                                    ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.fw, %bb.ft, %bb.fq, %.body.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.qp, %bb.ft ], [ %i.qt, %bb.fw ], [ %i.op, %.body.i.i.i.i.i ], [ %i.qj, %bb.fq ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17hcb66315d368b958cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p) #81
          to label %.body330 unwind label %bb.ga, !noalias !153753

bb.ga:                                            ; preds = %.body.i1.i
  %i.qy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153753
  unreachable

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i": ; preds = %.loopexit.i.i.i324, %bb.fz
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17hcb66315d368b958cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %bb.gb unwind label %.loopexit596

bb.gb:                                            ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !153660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !153843)
  %i.qz = lshr i32 %.sroa.11.sroa.0.0.insert.insert499, 16
  %i.ra = trunc nuw i32 %i.qz to i16              ; 3 uses
  %i.rb = trunc i32 %.sroa.11.sroa.0.0.insert.insert499 to i16
  %i.rc = load ptr, ptr %i.ea, align 8, !alias.scope !153843, !nonnull !14, !noundef !14 ; 2 uses
  %i.rd = load i64, ptr %i.eb, align 8, !alias.scope !153843, !noundef !14 ; 8 uses
  switch i64 %i.rd, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.gb
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.gb ], [ %i.ro, %.lr.ph.i.i.i ] ; 4 uses
  %i.re = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.rd
  call void @llvm.assume(i1 %i.re)
  %i.rf = getelementptr inbounds nuw [32 x i8], ptr %i.rc, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.rg = getelementptr i8, ptr %i.rf, i64 24
  %.val20.i.i.i = load i16, ptr %i.rg, align 8, !alias.scope !153846, !noalias !153851, !noundef !14 ; 2 uses
  %i.rh = icmp eq i16 %.val20.i.i.i, %i.ra
  br i1 %i.rh, label %bb.gd, label %bb.gc

.lr.ph.i.i.i:                                     ; preds = %bb.gb, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.rp, %.lr.ph.i.i.i ], [ %i.rd, %bb.gb ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.ro, %.lr.ph.i.i.i ], [ 0, %bb.gb ] ; 2 uses
  %i.ri = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.rj = add i64 %i.ri, %.sroa.05.024.i.i.i      ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %i.rd
  call void @llvm.assume(i1 %i.rk)
  %i.rl = getelementptr inbounds nuw [32 x i8], ptr %i.rc, i64 %i.rj
  %i.rm = getelementptr i8, ptr %i.rl, i64 24
  %.val22.i.i.i = load i16, ptr %i.rm, align 8, !alias.scope !153846, !noalias !153851, !noundef !14
  %i.rn = icmp ugt i16 %.val22.i.i.i, %i.ra
  %i.ro = select i1 %i.rn, i64 %.sroa.05.024.i.i.i, i64 %i.rj, !unpredictable !14 ; 2 uses
  %i.rp = sub nuw i64 %.sroa.01.025.i.i.i, %i.ri  ; 2 uses
  %i.rq = icmp ugt i64 %i.rp, 1
  br i1 %i.rq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.gc:                                            ; preds = %._crit_edge.i.i.i
  %i.rr = icmp ult i16 %.val20.i.i.i, %i.ra
  %i.rs = zext i1 %i.rr to i64
  %i.rt = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.rs
  %i.ru = icmp ule i64 %i.rt, %i.rd
  call void @llvm.assume(i1 %i.ru)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gd:                                            ; preds = %._crit_edge.i.i.i
  %i.rv = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.rf, i16 noundef %i.rb)
          to label %.noexc335 unwind label %.loopexit596

.noexc335:                                        ; preds = %bb.gd
  br i1 %i.rv, label %bb.ge, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ge:                                            ; preds = %.noexc335
  %i.rw = load i64, ptr %i.rf, align 8, !range !2917, !noalias !153843, !noundef !14 ; 3 uses
  %i.rx = icmp eq i64 %i.rw, -9223372036854775808
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rz = load i64, ptr %i.ry, align 8, !noalias !153843, !noundef !14 ; 2 uses
  br i1 %i.rx, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.sa = icmp ult i64 %i.rz, 4611686018427387904
  call void @llvm.assume(i1 %i.sa)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.sroa.03.0.in.i = icmp eq i64 %i.rz, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.gg
  call void @llvm.experimental.noalias.scope.decl(metadata !153853)
  %i.sb = icmp ult i64 %i.rd, 288230376151711744
  call void @llvm.assume(i1 %i.sb)
  %.sroa.4.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i334, align 8, !noalias !153856 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.sd = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.se = add nsw i64 %i.rd, %i.sd
  %i.sf = shl nuw nsw i64 %i.se, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rf, ptr nonnull align 8 %i.sc, i64 %i.sf, i1 false), !noalias !153858
  %i.sg = add nsw i64 %i.rd, -1
  store i64 %i.sg, ptr %i.eb, align 8, !alias.scope !153860, !noalias !153861
  switch i64 %i.rw, label %bb.gh [
    i64 -9223372036854775808, label %bb.gi
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.gh:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.sh = shl nuw i64 %i.rw, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.sh, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !153843
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gi:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !153843
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.gi, %bb.gh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", %bb.gg, %.noexc335, %bb.gc, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.bz

"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h4aa99a5d15b43f31E.exit320": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17he5d54392b14c28c9E.exit.i.i.i.i.i318", %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ej

"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit315": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17he5d54392b14c28c9E.exit.i3.i313", %"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17h6b4edd2e0c29bc59E.exit.i310", %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gj

bb.gj:                                            ; preds = %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit315", %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6357)
  br label %bb.gk

bb.gk:                                            ; preds = %.backedge.i.i.i.i, %bb.gj
  %.sroa.0.0.idx12.i.i.i.i = phi i64 [ 0, %bb.gj ], [ %.sroa.0.0.add.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i.i = phi i64 [ 0, %bb.gj ], [ %i.si, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.0.idx12.i.i.i.i
  %.sroa.0.0.add.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i, 8 ; 2 uses
  %i.si = add nuw nsw i64 %.sroa.7.011.i.i.i.i, 1
  %i.sj = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i, align 8, !alias.scope !153862, !noundef !14 ; 2 uses
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %.backedge.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.sl = shl nuw i64 1, %.sroa.7.011.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17h21305d096b039e44E"(ptr nonnull %i.sj, i64 %i.sl)
          to label %.backedge.i.i.i.i unwind label %.loopexit

.backedge.i.i.i.i:                                ; preds = %bb.gl, %bb.gk
  %i.sm = icmp eq i64 %.sroa.0.0.add.i.i.i.i, 504
  br i1 %i.sm, label %"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17heaa253cadc356a46E.exit", label %bb.gk

"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17heaa253cadc356a46E.exit": ; preds = %.backedge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0347)
  br label %bb.bj

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit": ; preds = %bb.bm, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", %bb.gq
  %.sroa.0125.8 = phi i8 [ 1, %bb.gq ], [ 0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i" ], [ 0, %bb.bm ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !153871)
  call void @llvm.experimental.noalias.scope.decl(metadata !153874)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h45aa8a1e5909e72aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.bf)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339" unwind label %bb.gm, !inline_history !107746

bb.gm:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
  %i.sn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i337 = load i64, ptr %i.bf, align 8, !range !9, !alias.scope !153877, !noundef !14 ; 2 uses
  %i.so = icmp eq i64 %.val2.i.i.i337, 0
  br i1 %i.so, label %.body342, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.sp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val3.i.i.i338 = load ptr, ptr %i.sp, align 8, !alias.scope !153877, !nonnull !14, !noundef !14
  %i.sq = mul nuw i64 %.val2.i.i.i337, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i338, i64 noundef %i.sq, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153880, !inline_history !107750
  br label %.body342

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339": ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
  %.val.i.i.i340 = load i64, ptr %i.bf, align 8, !range !9, !alias.scope !153877, !noundef !14 ; 2 uses
  %i.sr = icmp eq i64 %.val.i.i.i340, 0
  br i1 %i.sr, label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit", label %bb.go

bb.go:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339"
  %i.ss = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val1.i.i.i341 = load ptr, ptr %i.ss, align 8, !alias.scope !153877, !nonnull !14, !noundef !14
  %i.st = mul nuw i64 %.val.i.i.i340, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i341, i64 noundef %i.st, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153880, !inline_history !107750
  br label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit"

bb.gp:                                            ; preds = %bb.ai
  %i.su = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$17hfe77ade7e580bff7E"(ptr noalias noundef align 8 dereferenceable(136) %i.ba) #81
          to label %.thread434 unwind label %bb.r

bb.gq:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.am, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"

"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit": ; preds = %bb.go, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339", %bb.u
  %.sroa.0125.9 = phi i8 [ 1, %bb.u ], [ %.sroa.0125.8, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339" ], [ %.sroa.0125.8, %bb.go ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.sv = trunc nuw i8 %.sroa.0117.2 to i1
  br i1 %i.sv, label %bb.gr, label %bb.gv

bb.gr:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !153881)
  %i.sw = load i64, ptr %i.bk, align 8, !range !802, !alias.scope !153881, !noalias !153884, !noundef !14
  %.not.i.i344 = icmp eq i64 %i.sw, 2
  br i1 %.not.i.i344, label %.noexc345, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.sx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch4exit17h66a7948e4d957dc0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sx)
          to label %.noexc345 unwind label %.thread.thread

.noexc345:                                        ; preds = %bb.gs, %bb.gr
  %i.sy = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !153884
  %i.sz = icmp eq i8 %i.sy, 0
  br i1 %i.sz, label %bb.gt, label %.thread590

bb.gt:                                            ; preds = %.noexc345
  %i.ta = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.tb = load ptr, ptr %i.ta, align 8, !alias.scope !153881, !noalias !153884, !align !240, !noundef !14 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.tb, null
  br i1 %.not4.i.i, label %.thread590, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !153887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !153887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !153887
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = load ptr, ptr %i.tc, align 8, !noalias !153884, !nonnull !14, !align !584, !noundef !14
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.tf = load i64, ptr %i.te, align 8, !noalias !153884, !noundef !14
  store ptr %i.td, ptr %i.b, align 8, !noalias !153887
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.tf, ptr %i.tg, align 8, !noalias !153887
  store ptr %i.b, ptr %i.c, align 8, !noalias !153887
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !153887
  store ptr @4685, ptr %i.d, align 8, !noalias !153887
  %i.th = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %i.th, align 8, !noalias !153887
  %i.ti = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.ti, align 8, !noalias !153887
  %i.tj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.tj, align 8, !noalias !153887
  %i.tk = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %i.tk, align 8, !noalias !153887
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %.noexc346 unwind label %.thread.thread

.noexc346:                                        ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !153887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !153887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !153887
  br label %.thread590

bb.gv:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit", %.thread590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.tl = trunc nuw i8 %.sroa.0125.9 to i1
  br i1 %i.tl, label %bb.gw, label %"_ZN4core3ptr151drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17hdf18f13faf94b7b3E.exit"

.thread590:                                       ; preds = %.noexc345, %bb.gt, %.noexc346
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.bk)
          to label %bb.gv unwind label %bb.bg

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.experimental.noalias.scope.decl(metadata !153888)
  call void @llvm.experimental.noalias.scope.decl(metadata !153891)
  call void @llvm.experimental.noalias.scope.decl(metadata !153894)
  br label %bb.gx

bb.gx:                                            ; preds = %.backedge.i.i.i, %bb.gw
  %.sroa.0.0.idx12.i.i.i = phi i64 [ 0, %bb.gw ], [ %.sroa.0.0.add.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i = phi i64 [ 0, %bb.gw ], [ %i.tm, %.backedge.i.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx12.i.i.i
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i, 8 ; 2 uses
  %i.tm = add nuw nsw i64 %.sroa.7.011.i.i.i, 1
  %i.tn = load ptr, ptr %.sroa.0.0.ptr.i.i.i, align 8, !alias.scope !153897, !noundef !14 ; 2 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %.backedge.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.tp = shl nuw i64 1, %.sroa.7.011.i.i.i
  call fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17h21305d096b039e44E"(ptr nonnull %i.tn, i64 %i.tp), !noalias !153897
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.gy, %bb.gx
  %i.tq = icmp eq i64 %.sroa.0.0.add.i.i.i, 504
  br i1 %i.tq, label %"_ZN4core3ptr151drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17hdf18f13faf94b7b3E.exit", label %bb.gx
end_hunk_12
begin_hunk_13_@"_ZN7roaring6bitmap5serde87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9serialize17hdc86e7a86cc4081cE":bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.015.02.i.i, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187366)
  call void @llvm.experimental.noalias.scope.decl(metadata !187369)
  call void @llvm.experimental.noalias.scope.decl(metadata !187372)
  call void @llvm.experimental.noalias.scope.decl(metadata !187375)
  %i.ee = load i64, ptr %.0.val, align 8, !range !9, !alias.scope !187378, !noalias !187381, !noundef !14
  %i.ef = icmp eq i64 %i.ee, %i.ec
  br i1 %i.ef, label %bb.q, label %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i, !prof !121

bb.q:                                             ; preds = %.lr.ph.peel.next.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.ec, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.q
  %.pre.i.i.i.i.i.i19.i.i = load i64, ptr %i.db, align 8, !alias.scope !187386, !noalias !187381
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i: ; preds = %.noexc19, %.lr.ph.peel.next.i.i
  %i.eg = phi i64 [ %i.ec, %.lr.ph.peel.next.i.i ], [ %.pre.i.i.i.i.i.i19.i.i, %.noexc19 ] ; 3 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  call void @llvm.assume(i1 %i.eh)
  %i.ei = load ptr, ptr %i.dh, align 8, !alias.scope !187386, !noalias !187381, !nonnull !14, !noundef !14
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 44, ptr %i.ej, align 1, !noalias !187387
  %i.ek = add nuw i64 %i.eg, 1
  store i64 %i.ek, ptr %i.db, align 8, !alias.scope !187386, !noalias !187381
  %i.el = load i8, ptr %.sroa.015.02.i.i, align 1, !alias.scope !187343, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !187343
  %i.em = invoke noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef %i.el, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.a)
          to label %.noexc20 unwind label %.loopexit ; 2 uses

.noexc20:                                         ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17he9a3bb811dad8781E.exit.i.i
  %i.en = sub nuw i64 3, %i.em                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187388)
  call void @llvm.experimental.noalias.scope.decl(metadata !187390)
  call void @llvm.experimental.noalias.scope.decl(metadata !187392)
  call void @llvm.experimental.noalias.scope.decl(metadata !187394)
  %i.eo = load i64, ptr %i.db, align 8, !alias.scope !187396, !noalias !187359, !noundef !14 ; 3 uses
  %i.ep = load i64, ptr %.0.val, align 8, !range !9, !alias.scope !187396, !noalias !187359, !noundef !14
  %i.eq = sub i64 %i.ep, %i.eo
  %i.er = icmp ugt i64 %i.en, %i.eq
  br i1 %i.er, label %bb.r, label %_ZN10serde_json3ser9Formatter8write_u817h2fc48171950d3b38E.exit.i.i, !prof !121

bb.r:                                             ; preds = %.noexc20
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.eo, i64 noundef %i.en, i64 noundef 1, i64 noundef 1)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %bb.r
  %.pre.i.i.i.i.i.i21.i.i = load i64, ptr %i.db, align 8, !alias.scope !187397, !noalias !187359
  br label %_ZN10serde_json3ser9Formatter8write_u817h2fc48171950d3b38E.exit.i.i

_ZN10serde_json3ser9Formatter8write_u817h2fc48171950d3b38E.exit.i.i: ; preds = %.noexc21, %.noexc20
  %i.es = phi i64 [ %i.eo, %.noexc20 ], [ %.pre.i.i.i.i.i.i21.i.i, %.noexc21 ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  %i.eu = icmp sgt i64 %i.es, -1
  call void @llvm.assume(i1 %i.eu)
  %i.ev = load ptr, ptr %i.dh, align 8, !alias.scope !187397, !noalias !187359, !nonnull !14, !noundef !14
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull readonly align 1 %i.et, i64 %i.en, i1 false), !noalias !187398
  %i.ex = add nuw i64 %i.es, %i.en                ; 3 uses
  store i64 %i.ex, ptr %i.db, align 8, !alias.scope !187397, !noalias !187359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !187343
  %i.ey = icmp eq ptr %i.ed, %i.dl
  br i1 %i.ey, label %._crit_edge.i.i, label %.lr.ph.peel.next.i.i, !llvm.loop !187399

._crit_edge.i.i:                                  ; preds = %_ZN10serde_json3ser9Formatter8write_u817h2fc48171950d3b38E.exit.i.i, %_ZN10serde_json3ser9Formatter8write_u817h2fc48171950d3b38E.exit.peel.i.i, %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i
  %i.ez = phi i64 [ %i.dk, %_ZN10serde_json3ser9Formatter11begin_array17h47ac5a3329cd6549E.exit.i.i ], [ %i.ea, %_ZN10serde_json3ser9Formatter8write_u817h2fc48171950d3b38E.exit.peel.i.i ], [ %i.ex, %_ZN10serde_json3ser9Formatter8write_u817h2fc48171950d3b38E.exit.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187400)
  call void @llvm.experimental.noalias.scope.decl(metadata !187403)
  call void @llvm.experimental.noalias.scope.decl(metadata !187406)
  call void @llvm.experimental.noalias.scope.decl(metadata !187409)
  %i.fa = load i64, ptr %.0.val, align 8, !range !9, !alias.scope !187412, !noalias !187415, !noundef !14
  %i.fb = icmp eq i64 %i.fa, %i.ez
  br i1 %i.fb, label %bb.s, label %bb.t, !prof !121

bb.s:                                             ; preds = %._crit_edge.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.ez, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.s
  %.pre.i.i.i.i.i.i23.i.i = load i64, ptr %i.db, align 8, !alias.scope !187420, !noalias !187415
  br label %bb.t

bb.t:                                             ; preds = %.noexc22, %._crit_edge.i.i
  %i.fc = phi i64 [ %i.ez, %._crit_edge.i.i ], [ %.pre.i.i.i.i.i.i23.i.i, %.noexc22 ] ; 3 uses
  %i.fd = icmp sgt i64 %i.fc, -1
  call void @llvm.assume(i1 %i.fd)
  %i.fe = load ptr, ptr %i.dh, align 8, !alias.scope !187420, !noalias !187415, !nonnull !14, !noundef !14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fc
  store i8 93, ptr %i.ff, align 1, !noalias !187421
  %i.fg = add nuw i64 %i.fc, 1
  store i64 %i.fg, ptr %i.db, align 8, !alias.scope !187420, !noalias !187415
  call void @llvm.experimental.noalias.scope.decl(metadata !187422)
  %.val.i23 = load i64, ptr %i.b, align 8, !range !9, !alias.scope !187422, !noundef !14 ; 2 uses
  %i.fh = icmp eq i64 %.val.i23, 0
  br i1 %i.fh, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit25", label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %.val.i23, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !187422
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit25"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit25": ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit": ; preds = %bb.n, %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h716c11546c61f527E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i32 %1, %2
  br i1 %i.a, label %.loopexit, label %.thread75.i

.thread75.i:                                      ; preds = %bb.a
  %.not71.i = icmp eq i32 %2, 0
  %i.b = add i32 %2, -1                           ; 3 uses
  %i.c = icmp ugt i32 %1, %i.b
  %or.cond31 = or i1 %.not71.i, %i.c
  br i1 %or.cond31, label %.loopexit, label %_ZN7roaring6bitmap4util26convert_range_to_inclusive17h44cec72964cbb80cE.exit

_ZN7roaring6bitmap4util26convert_range_to_inclusive17h44cec72964cbb80cE.exit: ; preds = %.thread75.i
  %i.d = lshr i32 %1, 16
  %i.e = trunc nuw i32 %i.d to i16                ; 2 uses
  %i.f = trunc i32 %1 to i16
  %i.g = lshr i32 %i.b, 16
  %i.h = trunc nuw i32 %i.g to i16                ; 2 uses
  %i.i = trunc i32 %i.b to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted35 = load i64, ptr %i.j, align 8      ; 3 uses
  %i.k = icmp ult i64 %.promoted35, 288230376151711744
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp eq i64 %.promoted35, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_ZN7roaring6bitmap4util26convert_range_to_inclusive17h44cec72964cbb80cE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.01.0.ph41 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %i.v, %.outer ] ; 4 uses
  %.sroa.07.0.ph40 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.sroa.07.1, %.outer ]
  %.promoted3739 = phi i64 [ %.promoted35, %.lr.ph.lr.ph ], [ %.promoted36, %.outer ]
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.0.ph41 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = xor i64 %.sroa.01.0.ph41, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit"
  %.promoted36 = phi i64 [ %.promoted3739, %.lr.ph ], [ %i.ah, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit" ] ; 4 uses
  %.sroa.07.033 = phi i64 [ %.sroa.07.0.ph40, %.lr.ph ], [ %i.aa, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit" ] ; 2 uses
  %i.s = load i16, ptr %i.o, align 8, !noundef !14 ; 4 uses
  %i.t = icmp uge i16 %i.s, %i.e
  %i.u = icmp ule i16 %i.s, %i.h
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %bb.c, label %.outer

.loopexit:                                        ; preds = %.outer, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit", %_ZN7roaring6bitmap4util26convert_range_to_inclusive17h44cec72964cbb80cE.exit, %bb.a, %.thread75.i
  ret void

.outer:                                           ; preds = %bb.e, %bb.b
  %.sroa.07.1 = phi i64 [ %.sroa.07.033, %bb.b ], [ %i.aa, %bb.e ]
  %i.v = add nuw nsw i64 %.sroa.01.0.ph41, 1      ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, %.promoted36
  br i1 %i.w, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i16 %i.s, %i.e
  %. = select i1 %i.x, i16 %i.f, i16 0
  %i.y = icmp eq i16 %i.s, %i.h
  %.sroa.010.0 = select i1 %i.y, i16 %i.i, i16 -1
  %.sroa.013.0.insert.ext = zext i16 %. to i48
  %.sroa.013.2.insert.ext = zext i16 %.sroa.010.0 to i48
  %.sroa.013.2.insert.shift = shl nuw nsw i48 %.sroa.013.2.insert.ext, 16
  %.sroa.013.2.insert.insert = or disjoint i48 %.sroa.013.2.insert.shift, %.sroa.013.0.insert.ext
  %i.z = tail call noundef i64 @_ZN7roaring6bitmap9container9Container12remove_range17h1a85b2ff3d71fcb1E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, i48 %.sroa.013.2.insert.insert)
  %i.aa = add i64 %i.z, %.sroa.07.033             ; 2 uses
  %i.ab = load i64, ptr %i.n, align 8, !range !2917, !noundef !14 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -9223372036854775808
  %i.ad = load i64, ptr %i.p, align 8, !noundef !14 ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp ult i64 %i.ad, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ae)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.012.0.in = icmp eq i64 %i.ad, 0
  br i1 %.sroa.012.0.in, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit", label %.outer

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit": ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187425)
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !187428 ; 4 uses
  %i.af = add nsw i64 %.promoted36, %i.r
  %i.ag = shl nuw nsw i64 %i.af, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.q, i64 %i.ag, i1 false), !noalias !187430
  %i.ah = add nsw i64 %.promoted36, -1            ; 4 uses
  store i64 %i.ah, ptr %i.j, align 8, !alias.scope !187425, !noalias !187432
  switch i64 %i.ab, label %bb.f [
    i64 -9223372036854775808, label %bb.g
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit"
  ]

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit"
  %i.ai = shl nuw i64 %i.ab, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 2) #79
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit"

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef 8192, i64 noundef 8) #79
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit", %bb.f, %bb.g
  %i.aj = icmp ult i64 %i.ah, 288230376151711744
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp samesign ult i64 %.sroa.01.0.ph41, %i.ah
  br i1 %i.ak, label %bb.b, label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$14push_unchecked17h0029f924b4d7d11fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = lshr i32 %1, 16
  %i.c = trunc nuw i32 %i.b to i16                ; 2 uses
  %i.d = trunc i32 %1 to i16                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 5 uses
  %.not = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14 ; 2 uses
  %i.i = getelementptr [32 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -32      ; 2 uses
  %.not1424 = icmp eq ptr %i.j, null
  %.not14 = select i1 %.not, i1 true, i1 %.not1424
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.i, i64 -8
  %i.l = load i16, ptr %i.k, align 8, !noundef !14
  %i.m = icmp eq i16 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.c, ptr %i.n, align 8
  store i64 0, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  invoke void @_ZN7roaring6bitmap9container9Container14push_unchecked17h6b3eba3050a78d77E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, i16 noundef %i.d)
          to label %bb.f unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN7roaring6bitmap9container9Container14push_unchecked17h6b3eba3050a78d77E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, i16 noundef %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  ret void

.body:                                            ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E"(i64 %.sroa.0.0.copyload, ptr %.sroa.5.0.copyload) #81, !noalias !187433
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx, i64 16, i1 false)
  %i.p = load i64, ptr %0, align 8, !range !9, !alias.scope !187436, !noalias !187438, !noundef !14
  %i.q = icmp eq i64 %i.f, %i.p
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4671)
          to label %._crit_edge unwind label %.body, !noalias !187433

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !187436, !noalias !187438
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.h, %bb.f ]
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.f ; 3 uses
  store i64 %.sroa.0.0.copyload, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx17, align 8
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %i.t = add i64 %i.f, 1
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !187436, !noalias !187438
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.i:                                             ; preds = %bb.j, %.body
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.o, %.body ]
  resume { ptr, i32 } %eh.lpad-body22

bb.j:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8, !range !2917, !noundef !14
  %.val15 = load ptr, ptr %.sroa.410.0..sroa_idx, align 8
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E"(i64 %.val, ptr %.val15) #81
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h807849db75189ca0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = lshr i32 %1, 16
  %i.c = trunc nuw i32 %i.b to i16                ; 4 uses
  %i.d = trunc i32 %1 to i16                      ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 11 uses
  switch i64 %i.h, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.i = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.h
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %.sroa.05.0.lcssa.i.i
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %.val20.i.i = load i16, ptr %i.k, align 8, !alias.scope !187440, !noalias !187445, !noundef !14 ; 2 uses
  %i.l = icmp eq i16 %.val20.i.i, %i.c
  br i1 %i.l, label %bb.h, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.n = add i64 %i.m, %.sroa.05.024.i.i          ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.h
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %.val22.i.i = load i16, ptr %i.q, align 8, !alias.scope !187440, !noalias !187445, !noundef !14
  %i.r = icmp ugt i16 %.val22.i.i, %i.c
  %i.s = select i1 %i.r, i64 %.sroa.05.024.i.i, i64 %i.n, !unpredictable !14 ; 2 uses
  %i.t = sub nuw i64 %.sroa.01.025.i.i, %i.m      ; 2 uses
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.v = icmp ult i16 %.val20.i.i, %i.c
  %i.w = zext i1 %i.v to i64
  %i.x = add nuw i64 %.sroa.05.0.lcssa.i.i, %i.w  ; 2 uses
  %i.y = icmp ule i64 %i.x, %i.h
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.i.i.ph = phi i64 [ %i.x, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.c, ptr %i.z, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %i.aa = icmp ult i64 %i.h, 230584300921369396
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %0, align 8, !range !9, !alias.scope !187447, !noalias !187450, !noundef !14
  %i.ac = icmp eq i64 %i.h, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h112f6c00e55aefbfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4674)
          to label %._crit_edge unwind label %bb.f, !noalias !187450

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.e, align 8, !alias.scope !187447, !noalias !187450
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.ad = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.c ]
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.4.0.i.i.ph ; 3 uses
  %i.af = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.h
  br i1 %i.af, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h0962e6275e6c6e75E.exit"

end_hunk_13
begin_hunk_14_@"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h807849db75189ca0E":bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !187458, !nonnull !14, !noundef !14 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !187458, !noundef !14 ; 11 uses
  switch i64 %i.aq, label %.lr.ph.i.i.i [
    i64 0, label %bb.k
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.az, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.aq
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.sroa.05.0.lcssa.i.i.i
  %.val20.i.i.i = load i16, ptr %i.as, align 2, !alias.scope !187459, !noalias !187462, !noundef !14 ; 2 uses
  %i.at = icmp eq i16 %.val20.i.i.i, %i.d
  br i1 %i.at, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22, label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i ], [ %i.aq, %bb.i ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.au = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.av = add i64 %i.au, %.sroa.05.024.i.i.i      ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.aq
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.av
  %.val22.i.i.i = load i16, ptr %i.ax, align 2, !alias.scope !187459, !noalias !187462, !noundef !14
  %i.ay = icmp ugt i16 %.val22.i.i.i, %i.d
  %i.az = select i1 %i.ay, i64 %.sroa.05.024.i.i.i, i64 %i.av, !unpredictable !14 ; 2 uses
  %i.ba = sub nuw i64 %.sroa.01.025.i.i.i, %i.au  ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = icmp ult i16 %.val20.i.i.i, %i.d
  %i.bd = zext i1 %i.bc to i64
  %i.be = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ule i64 %i.be, %i.aq
  tail call void @llvm.assume(i1 %i.bf)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.be, %bb.j ], [ %i.aq, %bb.i ] ; 3 uses
  %i.bg = icmp ult i64 %i.aq, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.am, align 8, !range !9, !alias.scope !187464, !noalias !187467, !noundef !14
  %i.bi = icmp eq i64 %i.aq, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4667)
  %.pre.i.i = load ptr, ptr %i.an, align 8, !alias.scope !187464, !noalias !187467
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = phi ptr [ %.pre.i.i, %bb.l ], [ %i.ao, %bb.k ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.bl = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.aq
  br i1 %i.bl, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h4fe9781f376f8e79E.exit.i.i"

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bn = sub nuw nsw i64 %i.aq, %.sroa.4.0.i.ph.i.i
  %i.bo = shl nuw nsw i64 %i.bn, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bm, ptr nonnull align 2 %i.bk, i64 %i.bo, i1 false)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h4fe9781f376f8e79E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h4fe9781f376f8e79E.exit.i.i": ; preds = %bb.n, %bb.m
  store i16 %i.d, ptr %i.bk, align 2
  %i.bp = add nuw nsw i64 %i.aq, 1
  store i64 %i.bp, ptr %i.ap, align 8, !alias.scope !187464, !noalias !187467
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.o:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187469)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !187472, !nonnull !14, !noundef !14 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !187472, !noundef !14 ; 16 uses
  switch i64 %i.bt, label %.lr.ph.i.i.i.i [
    i64 0, label %.thread.i.i
    i64 1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h449d48eab4a568a2E.exit.i.i"
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.sroa.01.026.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bt, %bb.o ] ; 2 uses
  %.sroa.05.025.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.bu = lshr i64 %.sroa.01.026.i.i.i.i, 1       ; 2 uses
  %i.bv = add i64 %i.bu, %.sroa.05.025.i.i.i.i    ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 2
  %.val22.i.i.i.i = load i16, ptr %i.by, align 2, !alias.scope !187473, !noalias !187478, !noundef !14
  %.not.i.i.i.i = icmp ult i16 %.val22.i.i.i.i, %i.d
  %i.bz = select i1 %.not.i.i.i.i, i64 %i.bv, i64 %.sroa.05.025.i.i.i.i, !unpredictable !14 ; 2 uses
  %i.ca = sub nuw i64 %.sroa.01.026.i.i.i.i, %i.bu ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h449d48eab4a568a2E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h449d48eab4a568a2E.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.o
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.o ], [ %i.bz, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.cc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.bt
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.05.0.lcssa.i.i.i.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 2
  %.val20.i.i.i.i = load i16, ptr %i.ce, align 2, !alias.scope !187473, !noalias !187478, !noundef !14
  %i.cf = icmp ult i16 %.val20.i.i.i.i, %i.d
  %i.cg = zext i1 %i.cf to i64
  %i.ch = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.cg ; 8 uses
  %i.ci = icmp ule i64 %i.ch, %i.bt
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr [4 x i8], ptr %i.br, i64 %i.ch ; 7 uses
  %i.ck = sub nuw i64 %i.bt, %i.ch                ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bt, %i.ch
  br i1 %.not9.i.i, label %.thread23.i.i, label %bb.p

bb.p:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h449d48eab4a568a2E.exit.i.i"
  %i.cl = load i16, ptr %i.cj, align 2, !noalias !187472, !noundef !14 ; 3 uses
  %.not10.i.i = icmp ugt i16 %i.cl, %i.d
  br i1 %.not10.i.i, label %bb.r, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22

bb.q:                                             ; preds = %bb.r
  %.not11.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not11.i.i, label %.thread.i.i, label %.thread23.i.i

bb.r:                                             ; preds = %bb.p
  %i.cm = add nuw i16 %i.d, 1
  %i.cn = icmp eq i16 %i.cl, %i.cm
  br i1 %i.cn, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.co = add i16 %i.cl, -1
  store i16 %i.co, ptr %i.cj, align 2, !noalias !187472
  %.not12.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not12.i.i, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread, label %bb.x

.thread23.i.i:                                    ; preds = %bb.q, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h449d48eab4a568a2E.exit.i.i"
  %i.cp = phi i64 [ %i.ck, %bb.q ], [ 0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h449d48eab4a568a2E.exit.i.i" ]
  %i.cq = getelementptr i8, ptr %i.cj, i64 -2     ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !noalias !187472, !noundef !14
  %i.cs = add i16 %i.cr, 1
  %i.ct = icmp eq i16 %i.cs, %i.d
  br i1 %i.ct, label %bb.w, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread23.i.i, %bb.q, %bb.o
  %.sroa.4.0.i.i1922.i.i = phi i64 [ %i.ch, %.thread23.i.i ], [ 0, %bb.q ], [ %i.bt, %bb.o ] ; 2 uses
  %i.cu = phi i64 [ %i.cp, %.thread23.i.i ], [ %i.ck, %bb.q ], [ %i.bt, %bb.o ]
  %i.cv = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %i.am, align 8, !range !9, !alias.scope !187481, !noundef !14
  %i.cx = icmp eq i64 %i.bt, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8d5e9699404ee268E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4669)
  %.pre.i1.i = load ptr, ptr %i.bq, align 8, !alias.scope !187481
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i.i
  %i.cy = phi ptr [ %.pre.i1.i, %bb.t ], [ %i.br, %.thread.i.i ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.sroa.4.0.i.i1922.i.i ; 4 uses
  %i.da = icmp samesign ult i64 %.sroa.4.0.i.i1922.i.i, %i.bt
  br i1 %i.da, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hf824dbe6e0cff927E.exit.i.i"

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.db, ptr nonnull align 2 %i.cz, i64 %i.dc, i1 false)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hf824dbe6e0cff927E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hf824dbe6e0cff927E.exit.i.i": ; preds = %bb.v, %bb.u
  store i16 %i.d, ptr %i.cz, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store i16 %i.d, ptr %i.dd, align 2
  %i.de = add nuw nsw i64 %i.bt, 1
  store i64 %i.de, ptr %i.bs, align 8, !alias.scope !187481
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.w:                                             ; preds = %.thread23.i.i
  store i16 %i.d, ptr %i.cq, align 2, !noalias !187472
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.x:                                             ; preds = %bb.s
  %i.df = getelementptr i8, ptr %i.cj, i64 -2     ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !noalias !187472, !noundef !14
  %i.dh = add i16 %i.d, -1
  %i.di = icmp eq i16 %i.dg, %i.dh
  br i1 %i.di, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb70186cdeb285c45E.exit.i.i", label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb70186cdeb285c45E.exit.i.i": ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !187472, !noundef !14
  store i16 %i.dk, ptr %i.df, align 2, !noalias !187472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187484)
  %i.dl = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.dn = xor i64 %i.ch, -1
  %i.do = add nsw i64 %i.bt, %i.dn
  %i.dp = shl nuw nsw i64 %i.do, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cj, ptr nonnull align 2 %i.dm, i64 %i.dp, i1 false), !noalias !187487
  %i.dq = add nsw i64 %i.bt, -1
  store i64 %i.dq, ptr %i.bs, align 8, !alias.scope !187487
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187488)
  %.mask = and i32 %1, 65535
  %i.dr = zext nneg i32 %.mask to i64             ; 2 uses
  %i.ds = and i64 %i.dr, 63                       ; 2 uses
  %i.dt = lshr i64 %i.dr, 6
  %i.du = load ptr, ptr %i.am, align 8, !alias.scope !187491, !nonnull !14, !align !240, !noundef !14
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !187491, !noundef !14 ; 2 uses
  %i.dx = shl nuw i64 1, %i.ds
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = xor i64 %i.dy, %i.dw
  %i.ea = lshr i64 %i.dz, %i.ds                   ; 2 uses
  store i64 %i.dy, ptr %i.dv, align 8, !noalias !187491
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !187491, !noundef !14
  %i.ed = add i64 %i.ea, %i.ec
  store i64 %i.ed, ptr %i.eb, align 8, !alias.scope !187491
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb70186cdeb285c45E.exit.i.i", %bb.x, %bb.s, %bb.w, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hf824dbe6e0cff927E.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h4fe9781f376f8e79E.exit.i.i", %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit
  %i.ee = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hbe63faf056884c5aE(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.01.0) ; 0 uses
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22: ; preds = %bb.p, %._crit_edge.i.i.i, %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit, %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = trunc nuw i32 %i.a to i16                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 11 uses
  switch i64 %i.f, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %.lr.ph.i.i ] ; 4 uses
  %i.g = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.05.0.lcssa.i.i
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %.val20.i.i = load i16, ptr %i.i, align 8, !alias.scope !187492, !noalias !187497, !noundef !14 ; 2 uses
  %i.j = icmp eq i16 %.val20.i.i, %i.b
  br i1 %i.j, label %bb.h, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add i64 %i.k, %.sroa.05.024.i.i          ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.f
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %.val22.i.i = load i16, ptr %i.o, align 8, !alias.scope !187492, !noalias !187497, !noundef !14
  %i.p = icmp ugt i16 %.val22.i.i, %i.b
  %i.q = select i1 %i.p, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !14 ; 2 uses
  %i.r = sub nuw i64 %.sroa.01.025.i.i, %i.k      ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.t = icmp ult i16 %.val20.i.i, %i.b
  %i.u = zext i1 %i.t to i64
  %i.v = add nuw i64 %.sroa.05.0.lcssa.i.i, %i.u  ; 2 uses
  %i.w = icmp ule i64 %i.v, %i.f
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.i.i.ph = phi i64 [ %i.v, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.x = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %0, align 8, !range !9, !alias.scope !187499, !noalias !187502, !noundef !14
  %i.z = icmp eq i64 %i.f, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4675)
          to label %._crit_edge unwind label %bb.f, !noalias !187505

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !187499, !noalias !187502
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.aa = phi ptr [ %.pre, %._crit_edge ], [ %i.d, %bb.c ]
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.4.0.i.i.ph ; 6 uses
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.f
  br i1 %i.ac, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit"

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E"(i64 0, ptr nonnull inttoptr (i64 2 to ptr)) #81, !noalias !187505
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = sub nuw nsw i64 %i.f, %.sroa.4.0.i.i.ph
  %i.ag = shl nuw nsw i64 %i.af, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ab, i64 %i.ag, i1 false), !noalias !187505
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit": ; preds = %bb.e, %bb.g
  store i64 0, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i16 %i.b, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ah = add nuw nsw i64 %i.f, 1
  store i64 %i.ah, ptr %i.e, align 8, !alias.scope !187499, !noalias !187502
  %.pn.pre = load ptr, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit"
  %.pn = phi ptr [ %.pn.pre, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit" ], [ %i.d, %._crit_edge.i.i ]
  %.sroa.4.0.i.i18 = phi i64 [ %.sroa.4.0.i.i.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit" ], [ %.sroa.05.0.lcssa.i.i, %._crit_edge.i.i ]
  %.sroa.0.0 = getelementptr inbounds nuw [32 x i8], ptr %.pn, i64 %.sroa.4.0.i.i18 ; 7 uses
  %i.ai = trunc i32 %1 to i16                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187506)
  %i.aj = load i64, ptr %.sroa.0.0, align 8, !range !2917, !alias.scope !187506, !noundef !14 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %i.ak, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187509)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !187512, !nonnull !14, !noundef !14 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !187512, !noundef !14 ; 11 uses
  switch i64 %i.ao, label %.lr.ph.i.i.i [
    i64 0, label %bb.k
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.ax, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %.sroa.05.0.lcssa.i.i.i
  %.val20.i.i.i = load i16, ptr %i.aq, align 2, !alias.scope !187513, !noalias !187516, !noundef !14 ; 2 uses
  %i.ar = icmp eq i16 %.val20.i.i.i, %i.ai
  br i1 %i.ar, label %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit, label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.as = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.05.024.i.i.i      ; 3 uses
  %i.au = icmp ult i64 %i.at, %i.ao
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.at
  %.val22.i.i.i = load i16, ptr %i.av, align 2, !alias.scope !187513, !noalias !187516, !noundef !14
  %i.aw = icmp ugt i16 %.val22.i.i.i, %i.ai
  %i.ax = select i1 %i.aw, i64 %.sroa.05.024.i.i.i, i64 %i.at, !unpredictable !14 ; 2 uses
  %i.ay = sub nuw i64 %.sroa.01.025.i.i.i, %i.as  ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 1
  br i1 %i.az, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ba = icmp ult i16 %.val20.i.i.i, %i.ai
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ule i64 %i.bc, %i.ao
  tail call void @llvm.assume(i1 %i.bd)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bc, %bb.j ], [ %i.ao, %bb.i ] ; 3 uses
  %i.be = icmp ult i64 %i.ao, 4611686018427387904
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.ao, %i.aj
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4665)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !alias.scope !187518, !noalias !187521
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre.i.i, %bb.l ], [ %i.am, %bb.k ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.bi = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.ao
  br i1 %i.bi, label %bb.n, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i
end_hunk_14
