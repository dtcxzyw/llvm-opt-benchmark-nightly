Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/milli-dcad8bcf446596ae.milli.ae659b5d16487f95-cgu.0?download=true
inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5milli6prompt6Prompt15render_kvdeladd17hacef01f4d1f18f37E:bb.a
.thread.i.i.i.i.i:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h43d56a9154f7604bE.exit.i.i.i.i.i.i"
  %i.tx = add nuw nsw i64 %.sroa.21.182.i.i.i.i.i, 1
  br label %.noexc10.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h43d56a9154f7604bE.exit.i.i.i.i.i.i", %bb.cu
  %.sroa.0.038.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ty, %bb.cu ], [ %.sroa.720.181.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h43d56a9154f7604bE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tz, %bb.cu ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h43d56a9154f7604bE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ty = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, align 8, !noalias !212224, !noundef !10 ; 8 uses
  %.not.i.i.i.i.i11.i.i.i.i.i = icmp eq ptr %i.ty, null
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.tz = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, i64 272
  %i.ub = load i16, ptr %i.ua, align 8, !noalias !212224 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 274
  %i.ud = load i16, ptr %i.uc, align 2, !noalias !212213, !noundef !10
  %i.ue = icmp ult i16 %i.ub, %i.ud
  br i1 %i.ue, label %bb.cv, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.uf = zext i16 %i.ub to i64                   ; 4 uses
  %i.ug = icmp eq i64 %i.tz, 0
  %i.uh = add nuw nsw i64 %i.uf, 1                ; 2 uses
  br i1 %i.ug, label %.noexc10.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ty, i64 304
  %i.uj = icmp ult i16 %i.ub, 11
  call void @llvm.assume(i1 %i.uj)
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %i.uh ; 2 uses
  %xtraiter660 = and i64 %i.tz, 7                 ; 2 uses
  %lcmp.mod661.not = icmp eq i64 %xtraiter660, 0
  br i1 %lcmp.mod661.not, label %.prol.loopexit657, label %.prol.preheader656

.prol.preheader656:                               ; preds = %bb.cw, %.prol.preheader656
  %.pn30.in.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ul, %.prol.preheader656 ], [ %i.uk, %bb.cw ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader656 ], [ %i.tz, %bb.cw ]
  %prol.iter662 = phi i64 [ %prol.iter662.next, %.prol.preheader656 ], [ 0, %bb.cw ]
  %.pn28.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !212227, !nonnull !10, !noundef !10 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.prol, i64 304 ; 2 uses
  %prol.iter662.next = add i64 %prol.iter662, 1   ; 2 uses
  %prol.iter662.cmp.not = icmp eq i64 %prol.iter662.next, %xtraiter660
  br i1 %prol.iter662.cmp.not, label %.prol.loopexit657, label %.prol.preheader656, !llvm.loop !212231

.prol.loopexit657:                                ; preds = %.prol.preheader656, %bb.cw
  %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cw ], [ %.pn30.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader656 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.uk, %bb.cw ], [ %i.ul, %.prol.preheader656 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.tz, %bb.cw ], [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader656 ]
  %i.um = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.um, label %.noexc10.i.i.i.i.i, label %.new658

.new658:                                          ; preds = %.prol.loopexit657, %.new658
  %.pn30.in.i.i.i.i.i.i.i.i.i = phi ptr [ %i.uv, %.new658 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit657 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.7, %.new658 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit657 ]
  %.pn30.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !212227, !nonnull !10, !noundef !10
  %i.un = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.un, align 8, !noalias !212227, !nonnull !10, !noundef !10
  %i.uo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.1, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.uo, align 8, !noalias !212227, !nonnull !10, !noundef !10
  %i.up = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.2, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.up, align 8, !noalias !212227, !nonnull !10, !noundef !10
  %i.uq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.3, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.uq, align 8, !noalias !212227, !nonnull !10, !noundef !10
  %i.ur = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.4, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ur, align 8, !noalias !212227, !nonnull !10, !noundef !10
  %i.us = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.5, i64 304
  %.pn30.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.us, align 8, !noalias !212227, !nonnull !10, !noundef !10
  %i.ut = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.6, i64 304
  %.pn28.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ut, align 8, !noalias !212227, !nonnull !10, !noundef !10 ; 2 uses
  %i.uu = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.7, 0
  %i.uv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.7, i64 304
  br i1 %i.uu, label %.noexc10.i.i.i.i.i, label %.new658

bb.cx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2486) #106
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.cy, !noalias !212232

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cx
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc10.i.i.i.i.i:                               ; preds = %.prol.loopexit657, %.new658, %bb.cv, %.thread.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i56.i.i.i.i.i = phi ptr [ %i.ty, %bb.cv ], [ %.sroa.720.181.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.ty, %.new658 ], [ %i.ty, %.prol.loopexit657 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i55.i.i.i.i.i = phi i64 [ %i.uf, %bb.cv ], [ %.sroa.21.182.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.uf, %.new658 ], [ %i.uf, %.prol.loopexit657 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.uh, %bb.cv ], [ %i.tx, %.thread.i.i.i.i.i ], [ 0, %.new658 ], [ 0, %.prol.loopexit657 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ty, %bb.cv ], [ %.sroa.720.181.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit657 ], [ %.pn30.i.i.i.i.i.i.i.i.i.7, %.new658 ]
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i56.i.i.i.i.i, i64 276
  %i.uy = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i55.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.uy)
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.ux, i64 %.sroa.6.sroa.4.0.ph.i.i.i55.i.i.i.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i56.i.i.i.i.i, i64 8
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %i.va, i64 %.sroa.6.sroa.4.0.ph.i.i.i55.i.i.i.i.i
  br label %.preheader.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3212a8b64650a862E.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %_ZN5milli14fields_ids_map8metadata22FieldIdMapWithMetadata8metadata17h2a0a6e7bb843146aE.exit.thread.i.i.i.i.i.i.i.invoke.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cz:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212233)
  %.val.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !180, !alias.scope !212233, !noalias !212077, !noundef !10 ; 2 uses
  %i.vc = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.vc, label %.body, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !212233, !noalias !212077, !nonnull !10, !noundef !10
  %i.vd = mul nuw i64 %.val.i.i.i.i.i.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.vd, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !212236
  br label %.body

.noexc.thread.i.i.i.i.loopexit.i:                 ; preds = %.noexc9.i.i.i.i.i
  %.sroa.0.0.copyload29.pre.i = load i64, ptr %i.a, align 8, !noalias !212237
  %.sroa.5.0.copyload31.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !212237
  br label %.noexc.thread.i.i.i.i.i

.noexc.thread.i.i.i.i.i:                          ; preds = %.noexc.thread.i.i.i.i.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i.i.i"
  %.sroa.6.0.copyload33.i = phi i64 [ %i.og, %.noexc.thread.i.i.i.i.loopexit.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i.i.i" ]
  %.sroa.5.0.copyload31.i = phi ptr [ %.sroa.5.0.copyload31.pre.i, %.noexc.thread.i.i.i.i.loopexit.i ], [ %.sroa.10.0.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i.i.i" ]
  %.sroa.0.0.copyload29.i = phi i64 [ %.sroa.0.0.copyload29.pre.i, %.noexc.thread.i.i.i.i.loopexit.i ], [ %.sroa.4.0.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.85.i.i.i.i.i.i.i)
  br label %bb.dc

.body:                                            ; preds = %bb.dd, %bb.de, %bb.db, %bb.da, %bb.cz
  %.pn41 = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %bb.cz ], [ %i.ve, %bb.db ], [ %lpad.phi.i.i.i.i.i, %bb.da ], [ %i.vh, %bb.de ], [ %i.vh, %bb.dd ]
  invoke fastcc void @"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$$RF$str$C$$LP$$RF$$u5b$u8$u5d$$C$milli..prompt..document..ParsedValue$RP$$GT$$GT$17hdefa8114e59764c9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.dk

bb.db:                                            ; preds = %bb.ck, %_ZN5milli14fields_ids_map8metadata22FieldIdMapWithMetadata8metadata17h2a0a6e7bb843146aE.exit.thread.i.i.i.i.i.i.i.i.i.i
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dc:                                            ; preds = %.noexc.thread.i.i.i.i.i, %_ZN5milli6prompt8document8Document3new17h8bd57510fd22d00eE.exit
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload33.i, %.noexc.thread.i.i.i.i.i ], [ 0, %_ZN5milli6prompt8document8Document3new17h8bd57510fd22d00eE.exit ]
  %.sroa.5.053.i = phi ptr [ %.sroa.5.0.copyload31.i, %.noexc.thread.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_ZN5milli6prompt8document8Document3new17h8bd57510fd22d00eE.exit ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload29.i, %.noexc.thread.i.i.i.i.i ], [ 0, %_ZN5milli6prompt8document8Document3new17h8bd57510fd22d00eE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !212077
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.87.i.i.i.i.i)
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !alias.scope !212070, !noalias !212238
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr %.sroa.5.053.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !212070, !noalias !212238
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !212070, !noalias !212238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.vf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_ZN6liquid8template8Template6render17h248805d5a10af939E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @258)
          to label %bb.df unwind label %bb.de

bb.dd:                                            ; preds = %bb.de
  %.val49 = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !10, !noundef !10
  %i.vg = mul nuw i64 %.val48, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef %i.vg, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !212239
  br label %.body

bb.de:                                            ; preds = %bb.dc
  %i.vh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val48 = load i64, ptr %i.q, align 8, !range !180, !alias.scope !212242, !noundef !10 ; 2 uses
  %i.vi = icmp eq i64 %.val48, 0
  br i1 %i.vi, label %.body, label %bb.dd

bb.df:                                            ; preds = %bb.dc
  %i.vj = load i64, ptr %i.o, align 8, !range !1428, !noundef !10 ; 2 uses
  %i.vk = icmp eq i64 %i.vj, -9223372036854775808
  %i.vl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8            ; 4 uses
  br i1 %i.vk, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.2.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vm, ptr %.sroa.2.0..sroa_idx35, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val46 = load i64, ptr %i.q, align 8, !range !180, !alias.scope !212242, !noundef !10 ; 2 uses
  %i.vn = icmp eq i64 %.val46, 0
  br i1 %i.vn, label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52", label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52.sink.split"

bb.dh:                                            ; preds = %bb.df
  %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.521.sroa.5.0.copyload = load i64, ptr %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.vp = load i64, ptr %i.vo, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq i64 %i.vp, 0
  br i1 %.not, label %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vq = icmp sgt i64 %.sroa.521.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.vq)
  %.not.i53 = icmp ult i64 %i.vp, %.sroa.521.sroa.5.0.copyload
  br i1 %.not.i53, label %.lr.ph.i, label %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit

.lr.ph.i:                                         ; preds = %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vm) ]
  br label %bb.dj

bb.dj:                                            ; preds = %.backedge.i54, %.lr.ph.i
  %.sroa.4.032.i = phi i64 [ %i.vp, %.lr.ph.i ], [ %6, %.backedge.i54 ] ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.sroa.4.032.i
  %i.vs = load i8, ptr %i.vr, align 1, !noalias !212245, !noundef !10
  %i.vt = icmp sgt i8 %i.vs, -65
  br i1 %i.vt, label %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, label %.backedge.i54

.backedge.i54:                                    ; preds = %bb.dj
  %6 = add nsw i64 %.sroa.4.032.i, -1             ; 2 uses
  %.not26.i = icmp eq i64 %6, 0
  br i1 %.not26.i, label %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, label %bb.dj

_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit: ; preds = %.backedge.i54, %bb.dj, %bb.di, %bb.dh
  %.sroa.9.0 = phi i64 [ %.sroa.521.sroa.5.0.copyload, %bb.dh ], [ %.sroa.521.sroa.5.0.copyload, %bb.di ], [ %.sroa.4.032.i, %bb.dj ], [ 0, %.backedge.i54 ]
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.vj, ptr %i.vu, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.vm, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val44 = load i64, ptr %i.q, align 8, !range !180, !alias.scope !212242, !noundef !10 ; 2 uses
  %i.vv = icmp eq i64 %.val44, 0
  br i1 %i.vv, label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52", label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52.sink.split"

bb.dk:                                            ; preds = %.body
  %i.vw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable

"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52.sink.split": ; preds = %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, %bb.dg
  %.val44.sink = phi i64 [ %.val46, %bb.dg ], [ %.val44, %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit ]
  %.val45 = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !10, !noundef !10
  %i.vx = mul nuw i64 %.val44.sink, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45, i64 noundef %i.vx, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !10
  br label %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52"

"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52": ; preds = %"_ZN4core3ptr96drop_in_place$LT$milli..prompt..fields..OwnedFields$LT$milli..prompt..document..Document$GT$$GT$17ha3271bc253efce60E.exit52.sink.split", %_ZN5milli6prompt8truncate17h982bb0acbc2e5e52E.exit, %bb.dg
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
  call void @llvm.experimental.noalias.scope.decl(metadata !212248)
  call void @llvm.experimental.noalias.scope.decl(metadata !212251)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !212251, !noalias !212253, !noundef !10
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.i, !prof !59

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !212255
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !212251, !noalias !212253, !nonnull !10, !align !299, !noundef !10
  store ptr %i.k, ptr %i.a, align 8, !noalias !212255
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2069, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3901) #106
          to label %bb.g unwind label %bb.f, !noalias !212256

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h31090942bc441fefE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #107
          to label %bb.ae unwind label %bb.h, !noalias !212256

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !212256
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !212256, !noalias !212257
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
  call void @llvm.experimental.noalias.scope.decl(metadata !212258)
  call void @llvm.experimental.noalias.scope.decl(metadata !212261)
  call void @llvm.experimental.noalias.scope.decl(metadata !212264)
  %i.x = load ptr, ptr %i.d, align 8, !alias.scope !212267, !nonnull !10, !noundef !10
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !212267
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
  call void @llvm.experimental.noalias.scope.decl(metadata !212268)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !212271, !noundef !10 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.ae, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !212272
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.p, label %bb.ae

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc23887f7e8132e5bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ab)
          to label %bb.ae unwind label %bb.s

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$liquid_core..parser..lang..Language$GT$$GT$17h0f89626c081737c8E.exit.i": ; preds = %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212277)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !212280, !noundef !10 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %"_ZN4core3ptr43drop_in_place$LT$liquid..parser..Parser$GT$17h7054039a64227d06E.exit", label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$liquid_core..parser..lang..Language$GT$$GT$17h0f89626c081737c8E.exit.i"
  %i.aj = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !212281
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.r, label %"_ZN4core3ptr43drop_in_place$LT$liquid..parser..Parser$GT$17h7054039a64227d06E.exit"

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc23887f7e8132e5bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ag)
          to label %"_ZN4core3ptr43drop_in_place$LT$liquid..parser..Parser$GT$17h7054039a64227d06E.exit" unwind label %bb.b

bb.s:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !212258
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
end_hunk_0
