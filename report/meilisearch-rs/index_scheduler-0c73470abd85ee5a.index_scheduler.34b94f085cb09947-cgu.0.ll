Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$20delete_matched_tasks17h605763e0ea12dc87E":bb.a
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.ef) #81
  %i.gl = trunc nuw i8 %.sroa.0288.6 to i1
  br i1 %i.gl, label %.body829.thread, label %bb.r

.loopexit1566:                                    ; preds = %bb.v, %bb.w
  %lpad.loopexit1568 = landingpad { ptr, i32 }
          cleanup
  br label %.body829.thread

.loopexit.split-lp1567:                           ; preds = %select.unfold, %bb.ae
  %lpad.loopexit.split-lp1569 = landingpad { ptr, i32 }
          cleanup
  br label %.body829.thread

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !62543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !62544
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h1630200aad08bd22E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ap, i64 %.val760, i32 %.val761, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek, i8 range(i8 0, 5) %.sroa.07.01853)
          to label %.noexc823 unwind label %.loopexit1566

.noexc823:                                        ; preds = %bb.w
  %i.gm = load i64, ptr %i.ap, align 8, !range !71, !noalias !62544, !noundef !57
  %i.gn = trunc nuw i64 %i.gm to i1
  %.sroa.010.0.copyload.i = load i64, ptr %i.gg, align 8, !noalias !62544 ; 3 uses
  %.sroa.511.sroa.0.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !62544 ; 2 uses
  %.sroa.511.sroa.5.0.copyload.i = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !noalias !62544 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !62544
  br i1 %i.gn, label %.thread1459, label %bb.wz

bb.x:                                             ; preds = %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit1799"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !62543
  call void @llvm.experimental.noalias.scope.decl(metadata !62545)
  %i.go = load i64, ptr %i.gj, align 8, !alias.scope !62545, !noundef !57 ; 6 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val.i824 = load i64, ptr %.sroa.4296.0..sroa_idx, align 8, !alias.scope !62545, !noundef !57
  %.val5.i = load i64, ptr %.sroa.5297.0..sroa_idx, align 8, !alias.scope !62545, !noundef !57
  %i.gq = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h011a9c1edf617866E(i64 %.val.i824, i64 %.val5.i, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) @51), !noalias !62545 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62546)
  call void @llvm.experimental.noalias.scope.decl(metadata !62547)
  %i.gr = lshr i64 %i.gq, 57
  %i.gs = trunc nuw nsw i64 %i.gr to i8
  %i.gt = load i64, ptr %i.gi, align 8, !alias.scope !62548, !noalias !62549, !noundef !57 ; 2 uses
  %i.gu = load ptr, ptr %i.eh, align 8, !alias.scope !62548, !noalias !62549, !nonnull !57, !noundef !57 ; 5 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.gs, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.y ], [ %i.hl, %bb.ab ]
  %.pn.i.i = phi i64 [ %i.gq, %bb.y ], [ %i.hm, %bb.ab ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.gt     ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i16.i.i = load <16 x i8>, ptr %i.gv, align 1, !noalias !62550 ; 2 uses
  %i.gw = icmp eq <16 x i8> %.sroa.0.0.copyload.i16.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.gx = bitcast <16 x i1> %i.gw to i16          ; 2 uses
  %.not.i.not22.i.i = icmp eq i16 %i.gx, 0
  br i1 %.not.i.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.aa
  %.sroa.06.0.i23.i.i = phi i16 [ %i.hk, %bb.aa ], [ %i.gx, %bb.z ] ; 3 uses
  %i.gy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i23.i.i, i1 true)
  %i.gz = zext nneg i16 %i.gy to i64
  %i.ha = add i64 %.sroa.01.0.i.i.i, %i.gz
  %i.hb = and i64 %i.ha, %i.gt
  %i.hc = sub nsw i64 0, %i.hb
  %i.hd = getelementptr inbounds [32 x i8], ptr %i.gu, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -32
  %.val3.i.i.i = load i8, ptr %i.he, align 1, !range !75, !noalias !62551, !noundef !57
  %i.hf = icmp eq i8 %.val3.i.i.i, 0
  br i1 %i.hf, label %bb.ad, label %bb.aa, !prof !58

._crit_edge.i.i:                                  ; preds = %bb.aa, %bb.z
  %i.hg = icmp eq <16 x i8> %.sroa.0.0.copyload.i16.i.i, splat (i8 -1)
  %i.hh = bitcast <16 x i1> %i.hg to i16
  %i.hi = icmp eq i16 %i.hh, 0
  br i1 %i.hi, label %bb.ab, label %select.unfold, !prof !60

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.hj = add i16 %.sroa.06.0.i23.i.i, -1
  %i.hk = and i16 %i.hj, %.sroa.06.0.i23.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.hl = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.hm = add i64 %.sroa.01.0.i.i.i, %i.hl
  br label %bb.z

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.x
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @967) #80
          to label %bb.ac unwind label %.loopexit.split-lp1567

bb.ac:                                            ; preds = %select.unfold
  unreachable

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.hn = getelementptr inbounds i8, ptr %i.hd, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %.val13.i.i = load <16 x i8>, ptr %i.gu, align 16, !noalias !62552
  call void @llvm.experimental.noalias.scope.decl(metadata !62553)
  %i.ho = icmp ugt i64 %i.go, 50
  %spec.store.select.i.i.i = select i1 %i.ho, i64 10, i64 %i.go ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !62554
  %i.hp = shl nuw nsw i64 %spec.store.select.i.i.i, 3 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !62555
  %i.hq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.hp, i64 noundef range(i64 1, 9) 8) #79, !noalias !62555 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ae, label %.lr.ph.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.hp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4680) #80
          to label %.noexc828 unwind label %.loopexit.split-lp1567

.noexc828:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ai
  %.val15.i.i.i = load ptr, ptr %i.hw, align 8, !noalias !62554, !nonnull !57, !noundef !57
  %i.hs = shl nuw i64 %.val14.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i.i.i, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !62554
  br label %.body829.thread

.lr.ph.i.i.i:                                     ; preds = %bb.ad
  %i.ht = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.hu = bitcast <16 x i1> %i.ht to i16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 %spec.store.select.i.i.i, ptr %i.an, align 8, !noalias !62554
  %i.hw = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  store ptr %i.hq, ptr %i.hw, align 8, !noalias !62554
  %i.hx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store i64 0, ptr %i.hx, align 8, !noalias !62554
  %i.hy = sub i64 %i.go, %spec.store.select.i.i.i
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i", %.lr.ph.i.i.i
  %.sroa.1285.0.i.i = phi i64 [ %i.go, %.lr.ph.i.i.i ], [ %i.ip, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ] ; 2 uses
  %.sroa.1081.0.i.i = phi i16 [ %i.hu, %.lr.ph.i.i.i ], [ %i.im, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ] ; 3 uses
  %.sroa.8.0.i.i = phi ptr [ %i.hv, %.lr.ph.i.i.i ], [ %.sroa.8.1.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ] ; 3 uses
  %i.hz = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.iv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ] ; 3 uses
  %.sroa.4.022.i.i.i = phi i64 [ %spec.store.select.i.i.i, %.lr.ph.i.i.i ], [ %i.ia, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ]
  %i.ia = add nsw i64 %.sroa.4.022.i.i.i, -1      ; 2 uses
  %i.ib = icmp eq i64 %.sroa.1285.0.i.i, 0
  br i1 %i.ib, label %_ZN7roaring6bitmap8multiops25collect_starting_elements17h52dade20e71e37aaE.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.1081.0.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ic = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.i.i, %bb.ah ] ; 2 uses
  %i.id = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i, %bb.ah ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ic, align 16, !noalias !62556
  %i.ie = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 -512 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ie to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.aj
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val14.i.i.i = load i64, ptr %i.an, align 8, !noalias !62554 ; 2 uses
  %i.ii = icmp eq i64 %.val14.i.i.i, 0
  br i1 %i.ii, label %.body829.thread, label %bb.af

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ah
  %.sroa.8.1.i.i = phi ptr [ %.sroa.8.0.i.i, %bb.ah ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.ah ], [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.1081.0.i.i, %bb.ah ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ij = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.ik = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.il = zext nneg i16 %i.ik to i64
  %i.im = and i16 %i.ij, %.lcssa.i.i.i.i.i.i.i.i  ; 2 uses
  %i.in = sub nsw i64 0, %i.il
  %i.io = getelementptr inbounds [32 x i8], ptr %.sroa.0.1.i.i, i64 %i.in
  %i.ip = add i64 %.sroa.1285.0.i.i, -1
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -24
  %i.ir = load i64, ptr %i.an, align 8, !range !56, !alias.scope !62557, !noalias !62558, !noundef !57
  %i.is = icmp eq i64 %i.hz, %i.ir
  br i1 %i.is, label %bb.aj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i"

bb.aj:                                            ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h99206d92a6a19d47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4681)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" unwind label %bb.ai, !noalias !62554

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i": ; preds = %bb.aj, %._crit_edge20.i.i.i.i.i.i.i.i
  %i.it = load ptr, ptr %i.hw, align 8, !alias.scope !62557, !noalias !62558, !nonnull !57, !noundef !57
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.hz
  store ptr %i.iq, ptr %i.iu, align 8, !noalias !62558
  %i.iv = add nuw i64 %i.hz, 1                    ; 2 uses
  store i64 %i.iv, ptr %i.hx, align 8, !noalias !62554
  %i.iw = icmp eq i64 %i.ia, 0
  br i1 %i.iw, label %_ZN7roaring6bitmap8multiops25collect_starting_elements17h52dade20e71e37aaE.exit.i.i, label %bb.ag

_ZN7roaring6bitmap8multiops25collect_starting_elements17h52dade20e71e37aaE.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i", %bb.ag
  %.sroa.5154.0.copyload252.i.i = phi i64 [ %spec.store.select.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ], [ %i.go, %bb.ag ] ; 8 uses
  %.sroa.1285.1.ph.i.i = phi i64 [ %i.hy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ], [ 0, %bb.ag ]
  %.sroa.1081.1.ph.i.i = phi i16 [ %i.im, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ], [ %.sroa.1081.0.i.i, %bb.ag ]
  %.sroa.8.2.ph.i.i = phi ptr [ %.sroa.8.1.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ], [ %.sroa.8.0.i.i, %bb.ag ]
  %.sroa.0.2.ph.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf546ff7165a3a1ffE.exit.i.i.i" ], [ %.sroa.0.0.i.i, %bb.ag ]
  %.sroa.0152.0.copyload.pr.i.i = load i64, ptr %i.an, align 8, !noalias !62559 ; 6 uses
  %.sroa.4153.0.copyload.pre.i.i = load ptr, ptr %i.hw, align 8, !noalias !62559 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !62554
  %i.ix = icmp ult i64 %.sroa.5154.0.copyload252.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ix)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !62560
  %i.iy = icmp samesign ult i64 %.sroa.5154.0.copyload252.i.i, 2
  br i1 %i.iy, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, label %bb.ak, !prof !62561

bb.ak:                                            ; preds = %_ZN7roaring6bitmap8multiops25collect_starting_elements17h52dade20e71e37aaE.exit.i.i
  %i.iz = icmp samesign ult i64 %.sroa.5154.0.copyload252.i.i, 21
  br i1 %i.iz, label %bb.am, label %bb.al, !prof !58

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17h10da8b97fa599dacE(ptr noalias noundef nonnull align 8 %.sroa.4153.0.copyload.pre.i.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.5154.0.copyload252.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i unwind label %bb.cv, !noalias !62562

bb.am:                                            ; preds = %bb.ak
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf0fd97a387cc186aE(ptr noalias noundef nonnull align 8 %.sroa.4153.0.copyload.pre.i.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.5154.0.copyload252.i.i, i64 noundef 1), !noalias !62562
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.ap
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = icmp eq i64 %.sroa.0152.0.copyload.pr.i.i, 0
  br i1 %i.jb, label %.body829.thread, label %bb.cu

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN7roaring6bitmap8multiops25collect_starting_elements17h52dade20e71e37aaE.exit.i.i, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !62560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !62562
  %.idx304.i.i = shl nuw nsw i64 %.sroa.5154.0.copyload252.i.i, 3 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.4153.0.copyload.pre.i.i, i64 %.idx304.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.4153.0.copyload.pre.i.i, i64 8 ; 2 uses
  %i.je = load ptr, ptr %.sroa.4153.0.copyload.pre.i.i, align 8, !noalias !62563, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !62562, !nonnull !57, !noundef !57 ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !noalias !62562, !noundef !57 ; 8 uses
  %.idx194.i.i = shl nuw nsw i64 %i.ji, 5         ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %3, label %bb.ao

bb.ao:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !62564
  %i.jk = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx194.i.i, i64 noundef range(i64 1, 9) 8) #79, !noalias !62564 ; 7 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.ap, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.ao
  %xtraiter = and i64 %i.ji, 3                    ; 3 uses
  %i.jm = icmp ult i64 %i.ji, 4
  br i1 %i.jm, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ji, -4
  br label %.preheader.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx194.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc31.i.i unwind label %bb.an, !noalias !62562

.noexc31.i.i:                                     ; preds = %bb.ap
  unreachable

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %i.jn = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.jz, %.preheader.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i ]
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.jn ; 2 uses
  store i64 -9223372036854775807, ptr %i.jp, align 8, !noalias !62565
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr %i.jo, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62565
  %i.jq = or disjoint i64 %i.jn, 1                ; 2 uses
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %i.jq
  %i.js = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.jq ; 2 uses
  store i64 -9223372036854775807, ptr %i.js, align 8, !noalias !62565
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store ptr %i.jr, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !62565
  %i.jt = or disjoint i64 %i.jn, 2                ; 2 uses
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.jt ; 2 uses
  store i64 -9223372036854775807, ptr %i.jv, align 8, !noalias !62565
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %i.ju, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !62565
  %i.jw = or disjoint i64 %i.jn, 3                ; 2 uses
  %i.jx = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.jw ; 2 uses
  store i64 -9223372036854775807, ptr %i.jy, align 8, !noalias !62565
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %i.jx, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !62565
  %i.jz = add nuw i64 %i.jn, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.jz, %.unr-lcssa ]
  %lcmp.mod3464 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3464)
  br label %.preheader.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.epil:                  ; preds = %.preheader.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.epil.preheader
  %i.ka = phi i64 [ %i.kd, %.preheader.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.preheader.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.ka ; 2 uses
  store i64 -9223372036854775807, ptr %i.kc, align 8, !noalias !62565
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr %i.kb, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !62565
  %i.kd = add nuw i64 %i.ka, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.epil, !llvm.loop !61580

.epilog-lcssa:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i.epil, %.unr-lcssa
  %i.ke = icmp samesign ult i64 %i.ji, 288230376151711744
  call void @llvm.assume(i1 %i.ke)
  br label %bb.aq

3:                                                ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %gepdiff.i.i = add nsw i64 %.idx304.i.i, -8
  %4 = lshr exact i64 %gepdiff.i.i, 3             ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sroa.5154.0.copyload252.i.i, i64 %4)
  %.idx196.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i.i, 3 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.idx196.i.i ; 2 uses
  %.not16.not.i.i = icmp samesign ugt i64 %.sroa.5154.0.copyload252.i.i, %4
  br i1 %.not16.not.i.i, label %bb.aq, label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i64 %.idx196.i.i, 8
  %8 = icmp samesign eq i64 %7, %.idx304.i.i
  %spec.select.idx.i.i = select i1 %8, i64 0, i64 8
  %spec.select.i.i827 = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.idx.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %6, %3, %.epilog-lcssa
  %.sroa.5.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %3 ], [ inttoptr (i64 8 to ptr), %6 ], [ %i.jk, %.epilog-lcssa ]
  %.sroa.7.0.i.i = phi ptr [ %5, %3 ], [ %spec.select.i.i827, %6 ], [ %i.jd, %.epilog-lcssa ]
  store i64 %i.ji, ptr %i.ao, align 8, !noalias !62562
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 5 uses
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !62562
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  store i64 %i.ji, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !62562
  %i.kf = ptrtoint ptr %.sroa.7.0.i.i to i64
  %i.kg = icmp eq i64 %.sroa.0152.0.copyload.pr.i.i, 0 ; 2 uses
  %i.kh = shl nuw i64 %.sroa.0152.0.copyload.pr.i.i, 3 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  br label %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i

_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i: ; preds = %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge, %bb.aq
  %.sroa.27.0.i.i = phi i64 [ %.sroa.1285.1.ph.i.i, %bb.aq ], [ %.sroa.27.1.i.i, %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge ] ; 3 uses
  %.sroa.23.0.i.i = phi i16 [ %.sroa.1081.1.ph.i.i, %bb.aq ], [ %.sroa.23.1.i.i, %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge ] ; 3 uses
  %.sroa.19.0.i.i = phi ptr [ %.sroa.8.2.ph.i.i, %bb.aq ], [ %.sroa.19.2.i.i, %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge ] ; 3 uses
  %.sroa.16.0.i.i = phi ptr [ %.sroa.0.2.ph.i.i, %bb.aq ], [ %.sroa.16.2.i.i, %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge ] ; 3 uses
  %.sroa.7123.0.i.i = phi i64 [ %i.kf, %bb.aq ], [ %.sroa.7123.1180.i.i, %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge ] ; 2 uses
  %.sroa.0122.0.i.i = phi ptr [ %.sroa.4153.0.copyload.pre.i.i, %bb.aq ], [ %.sroa.0122.1182.i.i, %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0122.0.i.i, null
  br i1 %.not.i.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i
  %i.kk = inttoptr i64 %.sroa.7123.0.i.i to ptr   ; 3 uses
  %i.kl = icmp eq ptr %i.jc, %i.kk
  br i1 %i.kl, label %bb.as, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i

bb.as:                                            ; preds = %bb.ar
  br i1 %i.kg, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0122.0.i.i, i64 noundef %i.kh, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !62566
  br label %bb.av

.loopexit198.i.i:                                 ; preds = %bb.bk, %"_ZN5alloc6borrow12Cow$LT$B$GT$6to_mut17he4c9da31cdb40d14E.exit.i.i.i"
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %.invoke
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bw, %bb.bo, %bb.bb, %.loopexit.split-lp.i.i, %.loopexit198.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ok, %bb.bw ], [ %i.mt, %bb.bb ], [ %i.nt, %bb.bo ], [ %lpad.loopexit.i.i, %.loopexit198.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.km = icmp eq ptr %.sroa.0122.1182.i.i, null
  %or.cond.i.i.i.i = select i1 %i.km, i1 true, i1 %i.kg
  br i1 %or.cond.i.i.i.i, label %.thread172.i.i, label %bb.au

bb.au:                                            ; preds = %.body.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0122.1182.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0122.1182.i.i, i64 noundef %i.kh, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !62567
  br label %.thread172.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i: ; preds = %bb.ar
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = load ptr, ptr %i.kk, align 8, !noalias !62568, !nonnull !57, !align !61, !noundef !57
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h8006da9ef2b72bddE.exit.i.i"

bb.av:                                            ; preds = %bb.at, %bb.as, %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i
  %i.kq = icmp eq i64 %.sroa.27.0.i.i, 0
  br i1 %i.kq, label %bb.bx, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not13.i.i.i.i.i.i42.i.i = icmp eq i16 %.sroa.23.0.i.i, 0
  br i1 %.not13.i.i.i.i.i.i42.i.i, label %.lr.ph.i.i.i.i.i.i45.i.i, label %._crit_edge20.i.i.i.i.i.i43.i.i

.lr.ph.i.i.i.i.i.i45.i.i:                         ; preds = %bb.aw, %.lr.ph.i.i.i.i.i.i45.i.i
  %i.kr = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i45.i.i ], [ %.sroa.19.0.i.i, %bb.aw ] ; 2 uses
  %i.ks = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i.i45.i.i ], [ %.sroa.16.0.i.i, %bb.aw ]
  %.val911.i.i.i.i.i.i47.i.i = load <16 x i8>, ptr %i.kr, align 16, !noalias !62569
  %i.kt = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i47.i.i, splat (i8 -1)
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 -512 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i48.i.i = bitcast <16 x i1> %i.kt to i16 ; 2 uses
  %.not.i.i.i.i.i.i49.i.i = icmp eq i16 %.cast.i.i.i.i.i.i48.i.i, 0
  br i1 %.not.i.i.i.i.i.i49.i.i, label %.lr.ph.i.i.i.i.i.i45.i.i, label %._crit_edge20.i.i.i.i.i.i43.i.i

._crit_edge20.i.i.i.i.i.i43.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i45.i.i, %bb.aw
  %.sroa.19.1.i.i = phi ptr [ %.sroa.19.0.i.i, %bb.aw ], [ %i.kv, %.lr.ph.i.i.i.i.i.i45.i.i ]
  %.sroa.16.1.i.i = phi ptr [ %.sroa.16.0.i.i, %bb.aw ], [ %i.ku, %.lr.ph.i.i.i.i.i.i45.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i44.i.i = phi i16 [ %.sroa.23.0.i.i, %bb.aw ], [ %.cast.i.i.i.i.i.i48.i.i, %.lr.ph.i.i.i.i.i.i45.i.i ] ; 3 uses
  %i.kw = add i16 %.lcssa.i.i.i.i.i.i44.i.i, -1
  %i.kx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i44.i.i, i1 true)
  %i.ky = zext nneg i16 %i.kx to i64
  %i.kz = and i16 %i.kw, %.lcssa.i.i.i.i.i.i44.i.i
  %i.la = sub nsw i64 0, %i.ky
  %i.lb = getelementptr inbounds [32 x i8], ptr %.sroa.16.1.i.i, i64 %i.la
  %i.lc = add i64 %.sroa.27.0.i.i, -1
  %i.ld = getelementptr inbounds i8, ptr %i.lb, i64 -24
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h8006da9ef2b72bddE.exit.i.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17h8006da9ef2b72bddE.exit.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i43.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i
  %.sroa.0122.1182.i.i = phi ptr [ null, %._crit_edge20.i.i.i.i.i.i43.i.i ], [ %.sroa.0122.0.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i ] ; 4 uses
  %.sroa.7123.1180.i.i = phi i64 [ %.sroa.7123.0.i.i, %._crit_edge20.i.i.i.i.i.i43.i.i ], [ %i.ko, %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i ]
  %.sroa.27.1.i.i = phi i64 [ %i.lc, %._crit_edge20.i.i.i.i.i.i43.i.i ], [ %.sroa.27.0.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i ]
  %.sroa.23.1.i.i = phi i16 [ %i.kz, %._crit_edge20.i.i.i.i.i.i43.i.i ], [ %.sroa.23.0.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i ]
  %.sroa.19.2.i.i = phi ptr [ %.sroa.19.1.i.i, %._crit_edge20.i.i.i.i.i.i43.i.i ], [ %.sroa.19.0.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i ]
  %.sroa.16.2.i.i = phi ptr [ %.sroa.16.1.i.i, %._crit_edge20.i.i.i.i.i.i43.i.i ], [ %.sroa.16.0.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i ]
  %.sroa.0.0.i41.i.i = phi ptr [ %i.ld, %._crit_edge20.i.i.i.i.i.i43.i.i ], [ %i.kp, %_ZN4core4iter8adapters5chain17and_then_or_clear17h01de2152ecb2578dE.exit.i.i ] ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i.i, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !62562, !nonnull !57, !noundef !57 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i.i, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !62562, !noundef !57 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62570)
  call void @llvm.experimental.noalias.scope.decl(metadata !62571)
  %.idx.i.i.i = shl nuw nsw i64 %i.lh, 5
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.idx.i.i.i
  %i.lj = icmp eq i64 %i.lh, 0
  br i1 %i.lj, label %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge, label %.lr.ph.i51.i.i

_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i.backedge: ; preds = %.noexc55.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h8006da9ef2b72bddE.exit.i.i"
  br label %_ZN7roaring6bitmap8multiops19merge_container_ref17h9623cb6af1f462d0E.exit.i.i

.lr.ph.i51.i.i:                                   ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h8006da9ef2b72bddE.exit.i.i", %.noexc55.i.i
  %.sroa.027.082.i.i.i = phi ptr [ %i.lk, %.noexc55.i.i ], [ %i.lf, %"_ZN4core6option15Option$LT$T$GT$7or_else17h8006da9ef2b72bddE.exit.i.i" ] ; 8 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.027.082.i.i.i, i64 32 ; 2 uses
  %i.ll = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !62570, !noalias !62572, !nonnull !57, !noundef !57 ; 3 uses
  %i.lm = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !62570, !noalias !62572, !noundef !57 ; 11 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.027.082.i.i.i, i64 24
  %.val46.i.i.i = load i16, ptr %i.ln, align 2, !alias.scope !62571, !noalias !62573 ; 3 uses
  switch i64 %i.lm, label %.lr.ph.i.i.i.i.i [
    i64 0, label %bb.ay
    i64 1, label %._crit_edge.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i51.i.i
  %.sroa.05.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i51.i.i ], [ %i.mg, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.lo = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i, %i.lm
  call void @llvm.assume(i1 %i.lo)
  %i.lp = getelementptr inbounds nuw [32 x i8], ptr %i.ll, i64 %.sroa.05.0.lcssa.i.i.i.i.i ; 19 uses
  %i.lq = load i64, ptr %i.lp, align 8, !range !84, !alias.scope !62574, !noalias !62575, !noundef !57 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.lq, -9223372036854775807
  %i.lr = getelementptr i8, ptr %i.lp, i64 8      ; 8 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !62574, !noalias !62575, !nonnull !57, !align !61 ; 5 uses
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ls, ptr %i.lp
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 24
  %i.lu = load i16, ptr %i.lt, align 8, !noalias !62575, !noundef !57 ; 2 uses
  %i.lv = icmp eq i16 %i.lu, %.val46.i.i.i
  br i1 %i.lv, label %bb.bd, label %bb.ax

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i51.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.01.025.i.i.i.i.i = phi i64 [ %i.mh, %.lr.ph.i.i.i.i.i ], [ %i.lm, %.lr.ph.i51.i.i ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i = phi i64 [ %i.mg, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i51.i.i ] ; 2 uses
  %i.lw = lshr i64 %.sroa.01.025.i.i.i.i.i, 1     ; 2 uses
  %i.lx = add i64 %i.lw, %.sroa.05.024.i.i.i.i.i  ; 3 uses
  %i.ly = icmp ult i64 %i.lx, %i.lm
  call void @llvm.assume(i1 %i.ly)
  %i.lz = getelementptr inbounds nuw [32 x i8], ptr %i.ll, i64 %i.lx ; 3 uses
  %i.ma = load i64, ptr %i.lz, align 8, !range !84, !alias.scope !62576, !noalias !62575, !noundef !57
  %.not.i.i21.i.i.i.i.i = icmp eq i64 %i.ma, -9223372036854775807
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !alias.scope !62576, !noalias !62575, !nonnull !57, !align !61
  %.sroa.0.0.i.i22.i.i.i.i.i = select i1 %.not.i.i21.i.i.i.i.i, ptr %i.mc, ptr %i.lz
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i22.i.i.i.i.i, i64 24
  %i.me = load i16, ptr %i.md, align 8, !noalias !62575, !noundef !57
  %i.mf = icmp ugt i16 %i.me, %.val46.i.i.i
  %i.mg = select i1 %i.mf, i64 %.sroa.05.024.i.i.i.i.i, i64 %i.lx, !unpredictable !57 ; 2 uses
  %i.mh = sub nuw i64 %.sroa.01.025.i.i.i.i.i, %i.lw ; 2 uses
  %i.mi = icmp ugt i64 %i.mh, 1
  br i1 %i.mi, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mj = icmp ult i16 %i.lu, %.val46.i.i.i
  %i.mk = zext i1 %i.mj to i64
  %i.ml = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i, %i.mk ; 2 uses
  %i.mm = icmp ule i64 %i.ml, %i.lm
  call void @llvm.assume(i1 %i.mm)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i51.i.i
  %.sroa.4.0.i.i.ph.i.i.i = phi i64 [ %i.ml, %bb.ax ], [ %i.lm, %.lr.ph.i51.i.i ] ; 3 uses
  %i.mn = icmp ult i64 %i.lm, 288230376151711744
  call void @llvm.assume(i1 %i.mn)
  %i.mo = load i64, ptr %i.ao, align 8, !range !56, !alias.scope !62577, !noalias !62578, !noundef !57
  %i.mp = icmp eq i64 %i.lm, %i.mo
  br i1 %i.mp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hba8cce176907b7e5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4678)
          to label %._crit_edge90.i.i.i unwind label %bb.bb, !noalias !62579

._crit_edge90.i.i.i:                              ; preds = %bb.az
  %.pre.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !62577, !noalias !62578
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge90.i.i.i, %bb.ay
  %i.mq = phi ptr [ %.pre.i.i.i, %._crit_edge90.i.i.i ], [ %i.ll, %bb.ay ]
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %.sroa.4.0.i.i.ph.i.i.i ; 4 uses
  %i.ms = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i.i.i, %i.lm
  br i1 %i.ms, label %bb.bc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hb1290257ba49ec95E.exit.i.i.i"

bb.bb:                                            ; preds = %bb.az
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bc:                                            ; preds = %bb.ba
end_hunk_0
