Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/milli-dcad8bcf446596ae.milli.ae659b5d16487f95-cgu.0?download=true
inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5milli6prompt6Prompt15render_kvdeladd17hacef01f4d1f18f37E:bb.a
.thread.i.i.i.i.i:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h43d56a9154f7604bE.exit.i.i.i.i.i.i"
  %i.ub = add nuw nsw i64 %.sroa.21.182.i.i.i.i.i, 1
  br label %.noexc10.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h43d56a9154f7604bE.exit.i.i.i.i.i.i", %bb.cs
  %.sroa.0.038.i.i.i.i.i.i.i.i.i = phi ptr [ %i.uc, %bb.cs ], [ %.sroa.720.181.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h43d56a9154f7604bE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ud, %bb.cs ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h43d56a9154f7604bE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.uc = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, align 8, !noalias !212143, !noundef !10 ; 8 uses
  %.not.i.i.i.i.i11.i.i.i.i.i = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ud = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, i64 272
  %i.uf = load i16, ptr %i.ue, align 8, !noalias !212143 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 274
  %i.uh = load i16, ptr %i.ug, align 2, !noalias !212132, !noundef !10
  %i.ui = icmp ult i16 %i.uf, %i.uh
  br i1 %i.ui, label %bb.ct, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.uj = zext i16 %i.uf to i64                   ; 4 uses
  %i.uk = icmp eq i64 %i.ud, 0
  %i.ul = add nuw nsw i64 %i.uj, 1                ; 2 uses
  br i1 %i.uk, label %.noexc10.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.um = getelementptr inbounds nuw i8, ptr %i.uc, i64 304
  %i.un = icmp ult i16 %i.uf, 11
  call void @llvm.assume(i1 %i.un)
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.ul ; 2 uses
  %xtraiter731 = and i64 %i.ud, 7                 ; 2 uses
  %lcmp.mod732.not = icmp eq i64 %xtraiter731, 0
  br i1 %lcmp.mod732.not, label %.prol.loopexit728, label %.prol.preheader727

.prol.preheader727:                               ; preds = %bb.cu, %.prol.preheader727
  %.pn30.in.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.up, %.prol.preheader727 ], [ %i.uo, %bb.cu ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader727 ], [ %i.ud, %bb.cu ]
  %prol.iter733 = phi i64 [ %prol.iter733.next, %.prol.preheader727 ], [ 0, %bb.cu ]
  %.pn28.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !212146, !nonnull !10, !noundef !10 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.prol, i64 304 ; 2 uses
  %prol.iter733.next = add i64 %prol.iter733, 1   ; 2 uses
  %prol.iter733.cmp.not = icmp eq i64 %prol.iter733.next, %xtraiter731
  br i1 %prol.iter733.cmp.not, label %.prol.loopexit728, label %.prol.preheader727, !llvm.loop !212150

.prol.loopexit728:                                ; preds = %.prol.preheader727, %bb.cu
  %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cu ], [ %.pn30.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader727 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.uo, %bb.cu ], [ %i.up, %.prol.preheader727 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ud, %bb.cu ], [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader727 ]
  %i.uq = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.uq, label %.noexc10.i.i.i.i.i, label %.new729

.new729:                                          ; preds = %.prol.loopexit728, %.new729
  %.pn30.in.i.i.i.i.i.i.i.i.i = phi ptr [ %i.uz, %.new729 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit728 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.7, %.new729 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit728 ]
  %.pn30.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !212146, !nonnull !10, !noundef !10
  %i.ur = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ur, align 8, !noalias !212146, !nonnull !10, !noundef !10
  %i.us = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.1, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.us, align 8, !noalias !212146, !nonnull !10, !noundef !10
  %i.ut = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.2, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ut, align 8, !noalias !212146, !nonnull !10, !noundef !10
  %i.uu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.3, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.uu, align 8, !noalias !212146, !nonnull !10, !noundef !10
  %i.uv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.4, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.uv, align 8, !noalias !212146, !nonnull !10, !noundef !10
  %i.uw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.5, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.uw, align 8, !noalias !212146, !nonnull !10, !noundef !10
  %i.ux = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.6, i64 304
  %.pn28.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ux, align 8, !noalias !212146, !nonnull !10, !noundef !10 ; 2 uses
  %i.uy = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.7, 0
  %i.uz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.7, i64 304
  br i1 %i.uy, label %.noexc10.i.i.i.i.i, label %.new729

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2486) #106
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.cw, !noalias !212151

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %bb.cv
  %i.va = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc10.i.i.i.i.i:                               ; preds = %.prol.loopexit728, %.new729, %bb.ct, %.thread.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i56.i.i.i.i.i = phi ptr [ %i.uc, %bb.ct ], [ %.sroa.720.181.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.uc, %.new729 ], [ %i.uc, %.prol.loopexit728 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i55.i.i.i.i.i = phi i64 [ %i.uj, %bb.ct ], [ %.sroa.21.182.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.uj, %.new729 ], [ %i.uj, %.prol.loopexit728 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ul, %bb.ct ], [ %i.ub, %.thread.i.i.i.i.i ], [ 0, %.new729 ], [ 0, %.prol.loopexit728 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i = phi ptr [ %i.uc, %bb.ct ], [ %.sroa.720.181.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit728 ], [ %.pn30.i.i.i.i.i.i.i.i.i.7, %.new729 ]
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i56.i.i.i.i.i, i64 276
  %i.vc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i55.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.vc)
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %.sroa.6.sroa.4.0.ph.i.i.i55.i.i.i.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i56.i.i.i.i.i, i64 8
  %i.vf = getelementptr inbounds nuw [24 x i8], ptr %i.ve, i64 %.sroa.6.sroa.4.0.ph.i.i.i55.i.i.i.i.i
  br label %.preheader.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3212a8b64650a862E.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %_ZN5milli14fields_ids_map8metadata22FieldIdMapWithMetadata8metadata17h2a0a6e7bb843146aE.exit.thread.i.i.i.i.i.i.i.invoke.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212152)
  %.val.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !180, !alias.scope !212152, !noalias !211996, !noundef !10 ; 2 uses
  %i.vg = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.vg, label %.body, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !212152, !noalias !211996, !nonnull !10, !noundef !10
  %i.vh = mul nuw i64 %.val.i.i.i.i.i.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.vh, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !212155
  br label %.body

.noexc.thread.i.i.i.i.loopexit.i:                 ; preds = %.noexc9.i.i.i.i.i
  %.sroa.0.0.copyload29.pre.i = load i64, ptr %i.a, align 8, !noalias !212156
  %.sroa.5.0.copyload31.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !212156
  br label %.noexc.thread.i.i.i.i.i

.noexc.thread.i.i.i.i.i:                          ; preds = %.noexc.thread.i.i.i.i.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i.i.i"
  %.sroa.6.0.copyload33.i = phi i64 [ %i.ok, %.noexc.thread.i.i.i.i.loopexit.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i.i.i" ]
  %.sroa.5.0.copyload31.i = phi ptr [ %.sroa.5.0.copyload31.pre.i, %.noexc.thread.i.i.i.i.loopexit.i ], [ %.sroa.10.0.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i.i.i" ]
  %.sroa.0.0.copyload29.i = phi i64 [ %.sroa.0.0.copyload29.pre.i, %.noexc.thread.i.i.i.i.loopexit.i ], [ %.sroa.4.0.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.85.i.i.i.i.i.i.i)
  br label %bb.da

.body:                                            ; preds = %bb.db, %bb.dc, %bb.cz, %bb.cy, %bb.cx
  %.pn41 = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %bb.cx ], [ %i.vi, %bb.cz ], [ %lpad.phi.i.i.i.i.i, %bb.cy ], [ %i.vl, %bb.dc ], [ %i.vl, %bb.db ]
  invoke fastcc void @"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$$RF$str$C$$LP$$RF$$u5b$u8$u5d$$C$milli..prompt..document..ParsedValue$RP$$GT$$GT$17hdefa8114e59764c9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.dj

bb.cz:                                            ; preds = %bb.ci, %_ZN5milli14fields_ids_map8metadata22FieldIdMapWithMetadata8metadata17h2a0a6e7bb843146aE.exit.thread.i.i.i.i.i.i.i.i.i.i
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.da:                                            ; preds = %.noexc.thread.i.i.i.i.i, %_ZN5milli6prompt8document8Document3new17h8bd57510fd22d00eE.exit
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload33.i, %.noexc.thread.i.i.i.i.i ], [ 0, %_ZN5milli6prompt8document8Document3new17h8bd57510fd22d00eE.exit ]
  %.sroa.5.053.i = phi ptr [ %.sroa.5.0.copyload31.i, %.noexc.thread.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_ZN5milli6prompt8document8Document3new17h8bd57510fd22d00eE.exit ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload29.i, %.noexc.thread.i.i.i.i.i ], [ 0, %_ZN5milli6prompt8document8Document3new17h8bd57510fd22d00eE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !211996
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.87.i.i.i.i.i)
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !alias.scope !211989, !noalias !212157
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr %.sroa.5.053.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !211989, !noalias !212157
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !211989, !noalias !212157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.vj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_ZN6liquid8template8Template6render17h248805d5a10af939E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @258)
          to label %bb.dd unwind label %bb.dc

bb.db:                                            ; preds = %bb.dc
  %.val49 = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !10, !noundef !10
  %i.vk = mul nuw i64 %.val48, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef %i.vk, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !212158
  br label %.body

bb.dc:                                            ; preds = %bb.da
  %i.vl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val48 = load i64, ptr %i.q, align 8, !range !180, !alias.scope !212161, !noundef !10 ; 2 uses
  %i.vm = icmp eq i64 %.val48, 0
  br i1 %i.vm, label %.body, label %bb.db

bb.dd:                                            ; preds = %bb.da
  %i.vn = load i64, ptr %i.o, align 8, !range !1428, !noundef !10 ; 2 uses
  %i.vo = icmp eq i64 %i.vn, -9223372036854775808
  %i.vp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8            ; 4 uses
  br i1 %i.vo, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.2.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vq, ptr %.sroa.2.0..sroa_idx35, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val46 = load i64, ptr %i.q, align 8, !range !180, !alias.scope !212161, !noundef !10 ; 2 uses
  %i.vr = icmp eq i64 %.val46, 0
  br i1 %i.vr, label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52", label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52.sink.split"

bb.df:                                            ; preds = %bb.dd
  %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.521.sroa.5.0.copyload = load i64, ptr %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.vt = load i64, ptr %i.vs, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq i64 %i.vt, 0
  br i1 %.not, label %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vu = icmp sgt i64 %.sroa.521.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.vu)
  %.not.i53 = icmp ult i64 %i.vt, %.sroa.521.sroa.5.0.copyload
  br i1 %.not.i53, label %.lr.ph.i, label %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit

.lr.ph.i:                                         ; preds = %bb.dg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vq) ]
  br label %bb.dh

bb.dh:                                            ; preds = %.backedge.i55, %.lr.ph.i
  %.sroa.4.032.i = phi i64 [ %i.vt, %.lr.ph.i ], [ %i.vv, %.backedge.i55 ] ; 4 uses
  %i.vv = add nsw i64 %.sroa.4.032.i, -1          ; 2 uses
  %.not10.i = icmp ult i64 %.sroa.4.032.i, %.sroa.521.sroa.5.0.copyload
  br i1 %.not10.i, label %bb.di, label %.backedge.i55

bb.di:                                            ; preds = %bb.dh
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vq, i64 %.sroa.4.032.i
  %i.vx = load i8, ptr %i.vw, align 1, !noalias !212164, !noundef !10
  %i.vy = icmp sgt i8 %i.vx, -65
  br i1 %i.vy, label %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, label %.backedge.i55

.backedge.i55:                                    ; preds = %bb.dh, %bb.di
  %.not26.i = icmp eq i64 %i.vv, 0
  br i1 %.not26.i, label %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, label %bb.dh

_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit: ; preds = %.backedge.i55, %bb.di, %bb.dg, %bb.df
  %.sroa.9.0 = phi i64 [ %.sroa.521.sroa.5.0.copyload, %bb.df ], [ %.sroa.521.sroa.5.0.copyload, %bb.dg ], [ %.sroa.4.032.i, %bb.di ], [ 0, %.backedge.i55 ]
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.vn, ptr %i.vz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.vq, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val44 = load i64, ptr %i.q, align 8, !range !180, !alias.scope !212161, !noundef !10 ; 2 uses
  %i.wa = icmp eq i64 %.val44, 0
  br i1 %i.wa, label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52", label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52.sink.split"

bb.dj:                                            ; preds = %.body
  %i.wb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable

"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52.sink.split": ; preds = %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, %bb.de
  %.val44.sink = phi i64 [ %.val46, %bb.de ], [ %.val44, %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit ]
  %.val45 = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !10, !noundef !10
  %i.wc = mul nuw i64 %.val44.sink, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45, i64 noundef %i.wc, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !10
  br label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52"

"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52": ; preds = %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52.sink.split", %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call fastcc void @"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$$RF$str$C$$LP$$RF$$u5b$u8$u5d$$C$milli..prompt..document..ParsedValue$RP$$GT$$GT$17hdefa8114e59764c9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5milli6prompt6Prompt3new17h1fe14962e86ad98fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN6liquid6parser13ParserBuilder11with_stdlib17h118489be69cc3903E(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.r, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN6liquid6parser22ParserBuilder$LT$P$GT$5build17h93a1f4beb63e0925E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.b)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !212167)
  call void @llvm.experimental.noalias.scope.decl(metadata !212170)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !212170, !noalias !212172, !noundef !10
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.i, !prof !59

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !212174
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !212170, !noalias !212172, !nonnull !10, !align !299, !noundef !10
  store ptr %i.k, ptr %i.a, align 8, !noalias !212174
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2069, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3901) #106
          to label %bb.g unwind label %bb.f, !noalias !212175

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h31090942bc441fefE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #107
          to label %bb.ae unwind label %bb.h, !noalias !212175

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !212175
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !212175, !noalias !212176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !10
  invoke void @_ZN6liquid6parser6Parser5parse17hc7718904913c607aE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.q)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$liquid..parser..Parser$GT$17h7054039a64227d06E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #107
          to label %bb.ae unwind label %bb.ac

bb.k:                                             ; preds = %bb.i
  %i.s = load i64, ptr %i.e, align 8, !range !1428, !noundef !10 ; 2 uses
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.t, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !10, !align !299, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %.sroa.248.0..sroa_idx, align 8
  %.sroa.349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.349.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !212177)
  call void @llvm.experimental.noalias.scope.decl(metadata !212180)
  call void @llvm.experimental.noalias.scope.decl(metadata !212183)
  %i.x = load ptr, ptr %i.d, align 8, !alias.scope !212186, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !212186
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$liquid_core..parser..lang..Language$GT$$GT$17h0f89626c081737c8E.exit.i"

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3ccd86bb7d655a54E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$liquid_core..parser..lang..Language$GT$$GT$17h0f89626c081737c8E.exit.i" unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212187)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !212190, !noundef !10 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.ae, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !212191
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.p, label %bb.ae

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc23887f7e8132e5bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ab)
          to label %bb.ae unwind label %bb.s

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$liquid_core..parser..lang..Language$GT$$GT$17h0f89626c081737c8E.exit.i": ; preds = %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212196)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !212199, !noundef !10 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %"_ZN4core3ptr43drop_in_place$LT$liquid..parser..Parser$GT$17h7054039a64227d06E.exit", label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$liquid_core..parser..lang..Language$GT$$GT$17h0f89626c081737c8E.exit.i"
  %i.aj = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !212200
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.r, label %"_ZN4core3ptr43drop_in_place$LT$liquid..parser..Parser$GT$17h7054039a64227d06E.exit"

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc23887f7e8132e5bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ag)
          to label %"_ZN4core3ptr43drop_in_place$LT$liquid..parser..Parser$GT$17h7054039a64227d06E.exit" unwind label %bb.b

bb.s:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !212177
  unreachable

bb.t:                                             ; preds = %bb.k
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %i.u, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.sroa.6.0.copyload = load i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.s, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.615.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 64
end_hunk_0
