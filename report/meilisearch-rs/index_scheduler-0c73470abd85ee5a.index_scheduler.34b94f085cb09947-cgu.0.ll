Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17h59a8f6170108c91dE":bb.a
  br label %.noexc.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h9a98de0620dd1e9fE.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.1.i.ph284) ]
  %i.dp = load i16, ptr %i.db, align 2, !noalias !143340, !noundef !57
  %i.dq = zext i16 %i.dp to i64
  %i.dr = icmp ult i64 %.sroa.27.1.i, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !143231

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i.peel"
  %.sroa.40.0.i.lcssa291 = phi i64 [ %.sroa.40.0.i.peel, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i.peel" ], [ %.sroa.40.0.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6ad722cd10f18b4fE.exit.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.v
  %.sroa.0.060.i.i.i.i.i.i = phi ptr [ %i.ds, %bb.v ], [ %.sroa.11.1.i.ph284, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i.i = phi i64 [ %i.ek, %bb.v ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.ds = load ptr, ptr %.sroa.0.060.i.i.i.i.i.i, align 8, !noalias !143351, !noundef !57 ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.v
  %i.dt = zext i16 %i.em to i64                   ; 2 uses
  %i.du = icmp eq i64 %i.ek, 0
  %i.dv = add nuw nsw i64 %i.dt, 1                ; 2 uses
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.outer.backedge, label %bb.u

.lr.ph.i.i.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit353, %.new354, %._crit_edge.i.i.i.i.i.i
  %.sroa.27.1.i.ph283.be = phi i64 [ %i.dv, %._crit_edge.i.i.i.i.i.i ], [ 0, %.new354 ], [ 0, %.prol.loopexit353 ]
  %.sroa.11.1.i.ph284.be = phi ptr [ %i.ds, %._crit_edge.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit353 ], [ %.pn30.i.i.i.i.i.i.i.7, %.new354 ]
  br label %.lr.ph.i.i.i.i.i.outer

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 544
  %i.dx = icmp ult i16 %i.em, 11
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv ; 2 uses
  %xtraiter357 = and i64 %i.ek, 7                 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.prol.loopexit353, label %.prol.preheader352

.prol.preheader352:                               ; preds = %bb.u, %.prol.preheader352
  %.pn30.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.dz, %.prol.preheader352 ], [ %i.dy, %bb.u ]
  %.pn28.in.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.prol, %.prol.preheader352 ], [ %i.ek, %bb.u ]
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.prol.preheader352 ], [ 0, %bb.u ]
  %.pn28.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.prol, align 8, !noalias !143352, !nonnull !57, !noundef !57 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.prol.loopexit353, label %.prol.preheader352, !llvm.loop !143239

.prol.loopexit353:                                ; preds = %.prol.preheader352, %bb.u
  %.pn30.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.u ], [ %.pn30.i.i.i.i.i.i.i.prol, %.prol.preheader352 ]
  %.pn30.in.i.i.i.i.i.i.i.unr = phi ptr [ %i.dy, %bb.u ], [ %i.dz, %.prol.preheader352 ]
  %.pn28.in.i.i.i.i.i.i.i.unr = phi i64 [ %i.ek, %bb.u ], [ %.pn28.i.i.i.i.i.i.i.prol, %.prol.preheader352 ]
  %i.ea = icmp ult i64 %.sroa.5.059.i.i.i.i.i.i, 7
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.outer.backedge, label %.new354

.new354:                                          ; preds = %.prol.loopexit353, %.new354
  %.pn30.in.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.new354 ], [ %.pn30.in.i.i.i.i.i.i.i.unr, %.prol.loopexit353 ]
  %.pn28.in.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.7, %.new354 ], [ %.pn28.in.i.i.i.i.i.i.i.unr, %.prol.loopexit353 ]
  %.pn30.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i, align 8, !noalias !143352, !nonnull !57, !noundef !57
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.i.i.1 = load ptr, ptr %i.eb, align 8, !noalias !143352, !nonnull !57, !noundef !57
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ec, align 8, !noalias !143352, !nonnull !57, !noundef !57
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ed, align 8, !noalias !143352, !nonnull !57, !noundef !57
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ee, align 8, !noalias !143352, !nonnull !57, !noundef !57
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ef, align 8, !noalias !143352, !nonnull !57, !noundef !57
  %i.eg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.i.i.6 = load ptr, ptr %i.eg, align 8, !noalias !143352, !nonnull !57, !noundef !57
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.7 = load ptr, ptr %i.eh, align 8, !noalias !143352, !nonnull !57, !noundef !57 ; 2 uses
  %i.ei = icmp eq i64 %.pn28.i.i.i.i.i.i.i.7, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.outer.backedge, label %.new354

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ek = add i64 %.sroa.5.059.i.i.i.i.i.i, 1     ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i.i, i64 536
  %i.em = load i16, ptr %i.el, align 8, !noalias !143351 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 8) #79, !noalias !143353
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 538
  %i.eo = load i16, ptr %i.en, align 2, !noalias !143340, !noundef !57
  %i.ep = icmp ult i16 %i.em, %i.eo
  br i1 %i.ep, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i54.i.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i.i.i, 0
  %..i55.i.i.i.i.i.i = select i1 %.not.i54.i.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i.i, i64 noundef %..i55.i.i.i.i.i.i, i64 noundef 8) #79, !noalias !143353
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2536) #80
          to label %.noexc.i.i.i.i unwind label %bb.x, !noalias !143354

.noexc.i.i.i.i:                                   ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.ap, %bb.aj
  %.pn.i = phi { ptr, i32 } [ %i.me, %bb.ap ], [ %i.im, %bb.aj ]
  invoke fastcc void @"_ZN4core3ptr238drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$C$alloc..vec..into_iter..IntoIter$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$$GT$$GT$17ha43f4bb06412b6b5E"(ptr noalias noundef align 8 dereferenceable(96) %i.e) #81
          to label %.thread unwind label %bb.aq, !noalias !143303

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f3fd32595b394f3E.exit.i": ; preds = %bb.h
  store i64 %.sroa.6.0.i.i, ptr %i.c, align 8, !noalias !143303
  store ptr %.sroa.9.i.sroa.0.0.copyload.i, ptr %.sroa.9.16..sroa_idx.i, align 8, !noalias !143303
  store i64 %.sroa.9.i.sroa.5.0.copyload.i, ptr %.sroa.9.sroa.6.0..sroa.9.16..sroa_idx.sroa_idx.i, align 8, !noalias !143303
  store ptr %.sroa.9.i.sroa.6.0.copyload.i, ptr %.sroa.9.sroa.8.0..sroa.9.16..sroa_idx.sroa_idx.i, align 8, !noalias !143303
  store i64 %.sroa.9.i.sroa.7.0.copyload.i, ptr %.sroa.9.sroa.10.0..sroa.9.16..sroa_idx.sroa_idx.i, align 8, !noalias !143303
  store i64 %.sroa.9.i.sroa.8.0.copyload.i, ptr %.sroa.9.sroa.12.0..sroa.9.16..sroa_idx.sroa_idx.i, align 8, !noalias !143303
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0174.i, i64 714 ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !noalias !143303, !noundef !57 ; 3 uses
  %i.et = icmp ult i16 %i.es, 11
  br i1 %i.et, label %bb.ao, label %.preheader.i

.noexc4:                                          ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haab80548765e119fE.exit.i.i", %bb.d
  call fastcc void @"_ZN4core3ptr238drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$C$alloc..vec..into_iter..IntoIter$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$$GT$$GT$17ha43f4bb06412b6b5E"(ptr noalias noundef align 8 dereferenceable(96) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !143303
  %i.eu = icmp eq i64 %.sroa.8.0, 0
  br i1 %i.eu, label %.loopexit, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.noexc4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i17.i
  %.sroa.02.010.i.i = phi i64 [ %.sroa.8.0, %.lr.ph.i17.i ], [ %i.fd, %bb.aa ]
  %.sroa.03.09.i.i = phi ptr [ %.sroa.0.0, %.lr.ph.i17.i ], [ %i.fg, %bb.aa ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 714
  %i.ex = load i16, ptr %i.ew, align 2, !noalias !143303, !noundef !57 ; 3 uses
  %.not.i18.i = icmp eq i16 %i.ex, 0
  br i1 %.not.i18.i, label %.noexc19.i, label %bb.z, !prof !60

.noexc19.i:                                       ; preds = %bb.y
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2499, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2501) #80
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = add nsw i64 %i.ey, -1                   ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 720
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !143355, !nonnull !57, !noundef !57 ; 5 uses
  %i.fd = add i64 %.sroa.02.010.i.i, -1           ; 3 uses
  %i.fe = icmp ult i16 %i.ex, 12
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !143356, !nonnull !57, !noundef !57 ; 19 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 714 ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2, !noalias !143303, !noundef !57 ; 3 uses
  %i.fj = icmp ult i16 %i.fi, 5
  br i1 %i.fj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5a8738be4ae50258E.exit.i.i", %bb.z
  %i.fk = icmp eq i64 %i.fd, 0
  br i1 %i.fk, label %.loopexit, label %bb.y

bb.ab:                                            ; preds = %bb.z
  %narrow.i.i = sub nuw nsw i16 5, %i.fi          ; 2 uses
  %i.fl = zext nneg i16 %narrow.i.i to i64        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 714 ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !noalias !143357, !noundef !57 ; 2 uses
  %i.fo = zext nneg i16 %i.fi to i64              ; 3 uses
  %.not.i.i.i = icmp ugt i16 %narrow.i.i, %i.fn
  br i1 %.not.i.i.i, label %.noexc20.i, label %_ZN5alloc11collections5btree4node13move_to_slice17h5d6e5aa959367c11E.exit.i.i.i, !prof !60

.noexc20.i:                                       ; preds = %bb.ab
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2524, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2525) #80
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h5d6e5aa959367c11E.exit.i.i.i: ; preds = %bb.ab
  %i.fp = zext i16 %i.fn to i64                   ; 2 uses
  %i.fq = sub nuw nsw i64 %i.fp, %i.fl            ; 4 uses
  %i.fr = trunc nuw i64 %i.fq to i16
  store i16 %i.fr, ptr %i.fm, align 2, !noalias !143357
  store i16 5, ptr %i.fh, align 2, !noalias !143357
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.fl
  %i.ft = shl nuw nsw i64 %i.fo, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 2 %i.fg, i64 %i.ft, i1 false), !alias.scope !143358, !noalias !143357
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 176 ; 4 uses
  %i.fv = getelementptr inbounds nuw [48 x i8], ptr %i.fu, i64 %i.fl
  %i.fw = mul nuw nsw i64 %i.fo, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fv, ptr nonnull align 8 %i.fu, i64 %i.fw, i1 false), !alias.scope !143359, !noalias !143357
  %i.fx = add nuw nsw i64 %i.fq, 1                ; 4 uses
  %i.fy = sub nuw nsw i64 %i.fp, %i.fx            ; 4 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.fx
  %i.ga = shl nuw nsw i64 %i.fy, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr nonnull readonly align 1 %i.fz, i64 %i.ga, i1 false), !alias.scope !143360, !noalias !143357
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 176 ; 2 uses
  %i.gc = getelementptr inbounds nuw [48 x i8], ptr %i.gb, i64 %i.fx
  %i.gd = mul nuw nsw i64 %i.fy, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr nonnull readonly align 8 %i.gc, i64 %i.gd, i1 false), !alias.scope !143361, !noalias !143357
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.fq
  %i.gf = getelementptr inbounds nuw [48 x i8], ptr %i.gb, i64 %i.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.gf, i64 48, i1 false), !noalias !143357
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.03.09.i.i, i64 %i.ez ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 176
  %i.gi = getelementptr inbounds nuw [48 x i8], ptr %i.gh, i64 %i.ez ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.gg, i64 16, i1 false), !noalias !143357
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gg, ptr noundef nonnull align 1 dereferenceable(16) %i.ge, i64 16, i1 false), !noalias !143357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, ptr noundef nonnull align 8 dereferenceable(48) %i.gi, i64 48, i1 false), !noalias !143357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !143362
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !143357
  %i.gk = getelementptr inbounds nuw [48 x i8], ptr %i.fu, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gk, ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i64 48, i1 false), !noalias !143357
  %.not183.i.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not183.i.i.i, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5a8738be4ae50258E.exit.i.i", label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5a8738be4ae50258E.exit.loopexit.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5a8738be4ae50258E.exit.loopexit.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h5d6e5aa959367c11E.exit.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fg, i64 720 ; 4 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.fl
  %i.gn = shl nuw nsw i64 %i.fo, 3
  %i.go = add nuw nsw i64 %i.gn, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gm, ptr noundef nonnull align 8 dereferenceable(1) %i.gl, i64 %i.go, i1 false), !alias.scope !143363, !noalias !143357
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fc, i64 720
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.fx
  %i.gr = shl nuw nsw i64 %i.fl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gq, i64 %i.gr, i1 false), !alias.scope !143364, !noalias !143357
  %i.gs = load ptr, ptr %i.gl, align 8, !noalias !143365, !nonnull !57, !noundef !57 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 704
  store ptr %i.fg, ptr %i.gt, align 8, !noalias !143366
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 712
  store i16 0, ptr %i.gu, align 8, !noalias !143366
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fg, i64 728
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !143365, !nonnull !57, !noundef !57 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 704
  store ptr %i.fg, ptr %i.gx, align 8, !noalias !143366
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 712
  store i16 1, ptr %i.gy, align 8, !noalias !143366
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fg, i64 736
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !143365, !nonnull !57, !noundef !57 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 704
  store ptr %i.fg, ptr %i.hb, align 8, !noalias !143366
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 712
  store i16 2, ptr %i.hc, align 8, !noalias !143366
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fg, i64 744
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !143365, !nonnull !57, !noundef !57 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 704
  store ptr %i.fg, ptr %i.hf, align 8, !noalias !143366
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 712
  store i16 3, ptr %i.hg, align 8, !noalias !143366
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fg, i64 752
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !143365, !nonnull !57, !noundef !57 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 704
  store ptr %i.fg, ptr %i.hj, align 8, !noalias !143366
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 712
  store i16 4, ptr %i.hk, align 8, !noalias !143366
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fg, i64 760
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !143365, !nonnull !57, !noundef !57 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 704
  store ptr %i.fg, ptr %i.hn, align 8, !noalias !143366
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 712
  store i16 5, ptr %i.ho, align 8, !noalias !143366
  br label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5a8738be4ae50258E.exit.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5a8738be4ae50258E.exit.i.i": ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5a8738be4ae50258E.exit.loopexit.i.i", %_ZN5alloc11collections5btree4node13move_to_slice17h5d6e5aa959367c11E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

.preheader.i:                                     ; preds = %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f3fd32595b394f3E.exit.i", %bb.ac
  %.sroa.5.0.i = phi i64 [ %i.hr, %bb.ac ], [ 0, %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f3fd32595b394f3E.exit.i" ]
  %.sroa.0.0.i = phi ptr [ %i.hq, %bb.ac ], [ %.sroa.0.0174.i, %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f3fd32595b394f3E.exit.i" ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 704
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !143367, !noundef !57 ; 4 uses
  %.not.i21.i = icmp eq ptr %i.hq, null
  br i1 %.not.i21.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i
  %i.hr = add i64 %.sroa.5.0.i, 1                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 714
  %i.ht = load i16, ptr %i.hs, align 2, !noalias !143303, !noundef !57
  %i.hu = icmp ult i16 %i.ht, 11
  br i1 %i.hu, label %.loopexit236.i, label %.preheader.i

bb.ad:                                            ; preds = %.preheader.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !143368
  %i.hv = tail call noalias noundef align 8 dereferenceable_or_null(816) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 816, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !143368 ; 7 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ae, label %bb.ag, !prof !60

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 816) #80
          to label %.noexc.i.i unwind label %bb.af, !noalias !143368

.noexc.i.i:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 704
  store ptr null, ptr %i.hy, align 8, !noalias !143368
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 714
  store i16 0, ptr %i.hz, align 2, !noalias !143368
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 720
  store ptr %.sroa.0.0, ptr %i.ia, align 8, !noalias !143368
  %i.ib = add i64 %.sroa.8.0, 1                   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 704
  store ptr %i.hv, ptr %i.ic, align 8, !noalias !143369
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 712
  store i16 0, ptr %i.id, align 8, !noalias !143370
  br label %.loopexit236.i

.loopexit236.i:                                   ; preds = %bb.ac, %bb.ag
  %.sroa.8.1 = phi i64 [ %i.ib, %bb.ag ], [ %.sroa.8.0, %bb.ac ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.hv, %bb.ag ], [ %.sroa.0.0, %bb.ac ] ; 3 uses
  %.sroa.6119.0.i = phi i64 [ %i.ib, %bb.ag ], [ %i.hr, %bb.ac ] ; 6 uses
  %.sroa.0118.0.i = phi ptr [ %i.hv, %bb.ag ], [ %i.hq, %bb.ac ] ; 8 uses
  %i.ie = add i64 %.sroa.6119.0.i, -1             ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !143303
  %i.if = tail call noalias noundef align 8 dereferenceable_or_null(720) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 720, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !143303 ; 5 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ah, label %bb.ai, !prof !60

bb.ah:                                            ; preds = %.loopexit236.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 720) #80
          to label %.noexc22.i unwind label %bb.ap, !noalias !143303

.noexc22.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %.loopexit236.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 704
  store ptr null, ptr %i.ih, align 8, !noalias !143303
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 714
  store i16 0, ptr %i.ii, align 2, !noalias !143303
  %.not278.i = icmp eq i64 %i.ie, 0
  br i1 %.not278.i, label %.loopexit339.i, label %.lr.ph.i

.invoke.i.i:                                      ; preds = %.loopexit339.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2506, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2510) #80
          to label %.cont.i.i unwind label %bb.aj, !noalias !143371

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.loopexit339.i:                                   ; preds = %_ZN5alloc11collections5btree3mem7replace17hb37b9f2d9ab6cdeeE.exit32.i, %bb.ai
  %.sroa.0124.0.lcssa.i = phi ptr [ %i.if, %bb.ai ], [ %i.lq, %_ZN5alloc11collections5btree3mem7replace17hb37b9f2d9ab6cdeeE.exit32.i ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.i, i64 714 ; 2 uses
  %i.ik = load i16, ptr %i.ij, align 2, !noalias !143371, !noundef !57 ; 3 uses
  %i.il = icmp ult i16 %i.ik, 11
  br i1 %i.il, label %bb.al, label %.invoke.i.i, !prof !58

bb.aj:                                            ; preds = %.invoke.i.i
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.c) #81
          to label %.body.i unwind label %bb.ak, !noalias !143303

bb.ak:                                            ; preds = %bb.aj
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !143371
  unreachable

bb.al:                                            ; preds = %.loopexit339.i
  %i.io = zext nneg i16 %i.ik to i64              ; 3 uses
  %i.ip = add nuw nsw i16 %i.ik, 1
  store i16 %i.ip, ptr %i.ij, align 2, !noalias !143371
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0118.0.i, i64 %i.io
  store i128 %.sroa.0.i.sroa.0.0.i, ptr %i.iq, align 1, !noalias !143372
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.i, i64 176
  %i.is = getelementptr inbounds nuw [48 x i8], ptr %i.ir, i64 %i.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.is, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !143303
  %i.it = add nuw nsw i64 %i.io, 1                ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.i, i64 720
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.it
  store ptr %.sroa.0124.0.lcssa.i, ptr %i.iv, align 8, !noalias !143371
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0124.0.lcssa.i, i64 704
  store ptr %.sroa.0118.0.i, ptr %i.iw, align 8, !noalias !143373
  %i.ix = trunc nuw nsw i64 %i.it to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0124.0.lcssa.i, i64 712
  store i16 %i.ix, ptr %i.iy, align 8, !noalias !143373
  %i.iz = icmp eq i64 %.sroa.6119.0.i, 0
  br i1 %i.iz, label %.loopexit.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %bb.al
  %xtraiter363 = and i64 %.sroa.6119.0.i, 7       ; 2 uses
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol

end_hunk_0
begin_hunk_1_@"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h5aa044b6d67f5eb8E":bb.a
  %i.x = sub nuw nsw i64 %i.f, %i.w               ; 5 uses
  %i.y = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151547)
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %_ZN5alloc11collections5btree4node13move_to_slice17h111b6ba2611c6cebE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2516, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2517) #80, !noalias !151548
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h111b6ba2611c6cebE.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.w
  %i.ac = mul nuw nsw i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.ab, i64 %i.ac, i1 false), !alias.scope !151548
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.w
  %i.af = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ae, i64 %i.af, i1 false), !alias.scope !151549
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.n
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.n
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !57
  %.val189 = load ptr, ptr %0, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val190 = load i64, ptr %i.aj, align 8, !noundef !57 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val189, i64 8
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.val190 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val189, i64 272
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.val190 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.ao = load i64, ptr %i.an, align 8, !noalias !151550, !noundef !57
  store i64 %i.ai, ptr %i.an, align 8, !noalias !151550
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.x
  store i64 %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !noundef !57
  %.not186 = icmp eq i64 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !57
  %.not187 = icmp eq i64 %i.au, 0                 ; 2 uses
  br i1 %.not186, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h111b6ba2611c6cebE.exit
  br i1 %.not187, label %bb.i, label %bb.k, !prof !60

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h111b6ba2611c6cebE.exit
  br i1 %.not187, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit", label %bb.i, !prof !58

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2526) #80
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod195 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.av, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.av = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i.epil
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !151551, !nonnull !57, !noundef !57 ; 2 uses
  store ptr %i.h, ptr %i.ax, align 8, !noalias !151552
  %i.ay = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 360
  store i16 %i.ay, ptr %i.az, align 8, !noalias !151552
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit", label %bb.j, !llvm.loop !151538

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 368 ; 8 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %1
  %i.bc = add nuw nsw i64 %i.v, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bc, i1 false), !alias.scope !151553
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.w
  %i.bf = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.be, i64 %i.bf, i1 false), !alias.scope !151554
  %i.bg = add nuw nsw i64 %1, %i.k
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %xtraiter = and i64 %i.bh, 3                    ; 3 uses
  %i.bi = icmp samesign ult i64 %i.l, 3
  br i1 %i.bi, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bh, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bj = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !151551, !nonnull !57, !noundef !57 ; 2 uses
  store ptr %i.h, ptr %i.bl, align 8, !noalias !151552
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 360
  store i16 %i.bm, ptr %i.bn, align 8, !noalias !151552
  %i.bo = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bj
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !151551, !nonnull !57, !noundef !57 ; 2 uses
  store ptr %i.h, ptr %i.bq, align 8, !noalias !151552
  %i.br = trunc nuw nsw i64 %i.bj to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 360
  store i16 %i.br, ptr %i.bs, align 8, !noalias !151552
  %i.bt = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bo
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !151551, !nonnull !57, !noundef !57 ; 2 uses
  store ptr %i.h, ptr %i.bv, align 8, !noalias !151552
  %i.bw = trunc nuw nsw i64 %i.bo to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 360
  store i16 %i.bw, ptr %i.bx, align 8, !noalias !151552
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bt
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !151551, !nonnull !57, !noundef !57 ; 2 uses
  store ptr %i.h, ptr %i.ca, align 8, !noalias !151552
  %i.cb = trunc nuw nsw i64 %i.bt to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 360
  store i16 %i.cb, ptr %i.cc, align 8, !noalias !151552
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h497fb42715fe22ceE.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17ha73c3f50386aa642E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !57, !noundef !57 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !57
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !57, !noundef !57 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !57
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2522, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2523) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2524, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2525) #80
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 2 %i.h, i64 %i.r, i1 false), !alias.scope !151578
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 4 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %1
  %i.u = mul nuw nsw i64 %i.k, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !alias.scope !151579
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151581)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_ZN5alloc11collections5btree4node13move_to_slice17hf251c2c95445bcafE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2516, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2517) #80, !noalias !151582
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17hf251c2c95445bcafE.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.v
  %i.aa = shl nuw nsw i64 %i.w, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull readonly align 1 %i.z, i64 %i.aa, i1 false), !alias.scope !151582
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.v
  %i.ad = mul nuw nsw i64 %i.w, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ac, i64 %i.ad, i1 false), !alias.scope !151583
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.n
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val185 = load i64, ptr %i.ag, align 8, !noundef !57 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val185 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %.val185 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %i.ah, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ah, ptr noundef nonnull align 1 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !151584
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, i64 48, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !57
  %.not183 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !57
  %.not184 = icmp eq i64 %i.ap, 0                 ; 2 uses
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hf251c2c95445bcafE.exit
  br i1 %.not184, label %bb.i, label %bb.k, !prof !60

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hf251c2c95445bcafE.exit
  br i1 %.not184, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit", label %bb.i, !prof !58

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2526) #80
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !151585, !nonnull !57, !noundef !57 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8, !noalias !151586
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8, !noalias !151586
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit", label %bb.j, !llvm.loop !151572

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !151587
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.v
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !151588
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !151585, !nonnull !57, !noundef !57 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8, !noalias !151586
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8, !noalias !151586
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !151585, !nonnull !57, !noundef !57 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8, !noalias !151586
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8, !noalias !151586
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !151585, !nonnull !57, !noundef !57 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8, !noalias !151586
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8, !noalias !151586
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !151585, !nonnull !57, !noundef !57 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8, !noalias !151586
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !151586
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$16bulk_steal_right17h187a5d863eda71ecE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !57, !noundef !57 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !57 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !57, !noundef !57 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !57
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2527, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2528) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2529, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2530) #80
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 4 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val179 = load i64, ptr %i.u, align 8, !noundef !57 ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val179 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %.val179 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.v, ptr noundef nonnull align 1 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !151616
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2, i64 48, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 2 %i.h, i64 %i.ad, i1 false), !alias.scope !151617
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.ab
  %i.af = mul nuw nsw i64 %i.q, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.af, i1 false), !alias.scope !151618
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1
  %i.ah = shl nuw nsw i64 %i.n, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 1 %i.ag, i64 %i.ah, i1 false), !alias.scope !151619
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %1
  %i.aj = mul nuw nsw i64 %i.n, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false), !alias.scope !151620
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !57
  %.not177 = icmp eq i64 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !noundef !57
  %.not178 = icmp eq i64 %i.an, 0                 ; 2 uses
  br i1 %.not177, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not178, label %bb.h, label %bb.i, !prof !60

bb.g:                                             ; preds = %bb.e
  br i1 %.not178, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186", label %bb.h, !prof !58

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2531) #80
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186.loopexit.unr-lcssa": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit"
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186", label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil.preheader"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil.preheader": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186.loopexit.unr-lcssa", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader"
  %.sroa.0.06.i184.epil.init = phi i64 [ 0, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader" ], [ %i.df, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil.preheader"
  %.sroa.0.06.i184.epil = phi i64 [ %i.ao, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil" ], [ %.sroa.0.06.i184.epil.init, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil.preheader" ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil" ], [ 0, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil.preheader" ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i184.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i184.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i184.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !151621, !nonnull !57, !noundef !57 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8, !noalias !151622
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i184.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8, !noalias !151622
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186", label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil", !llvm.loop !151606

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186.loopexit.unr-lcssa", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil", %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !151623
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !151624
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !151625, !nonnull !57, !noundef !57 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8, !noalias !151626
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8, !noalias !151626
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !151625, !nonnull !57, !noundef !57 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8, !noalias !151626
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8, !noalias !151626
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !151625, !nonnull !57, !noundef !57 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8, !noalias !151626
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8, !noalias !151626
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !151625, !nonnull !57, !noundef !57 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8, !noalias !151626
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8, !noalias !151626
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !151625, !nonnull !57, !noundef !57 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8, !noalias !151626
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8, !noalias !151626
  br label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader": ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.epil.preheader", label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader.new"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader.new": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader"
  %unroll_iter = and i64 %i.cl, -4
  br label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader.new"
  %.sroa.0.06.i184 = phi i64 [ 0, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader.new" ], [ %i.df, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit" ] ; 7 uses
  %niter = phi i64 [ 0, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit.preheader.new" ], [ %niter.next.3, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit" ]
  %i.cn = or disjoint i64 %.sroa.0.06.i184, 1     ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i184
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !151621, !nonnull !57, !noundef !57 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8, !noalias !151622
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i184 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8, !noalias !151622
  %i.ct = or disjoint i64 %.sroa.0.06.i184, 2     ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !151621, !nonnull !57, !noundef !57 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8, !noalias !151622
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8, !noalias !151622
  %i.cz = or disjoint i64 %.sroa.0.06.i184, 3     ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !noalias !151621, !nonnull !57, !noundef !57 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8, !noalias !151622
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8, !noalias !151622
  %i.df = add nuw nsw i64 %.sroa.0.06.i184, 4     ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i184, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !151621, !nonnull !57, !noundef !57 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8, !noalias !151622
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8, !noalias !151622
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit186.loopexit.unr-lcssa", label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h4cb1c293031c1c51E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$16bulk_steal_right17haaa64a575cbec257E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !57, !noundef !57 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 362 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !57 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !57, !noundef !57 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 362 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !57
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
end_hunk_1
