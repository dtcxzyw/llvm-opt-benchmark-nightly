Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN3nls8position14PositionLookup3new28_$u7b$$u7b$closure$u7d$$u7d$17hc18d7189dfce2624E":bb.a

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit.i.i.i.i.i.i.i.i.i.i164": ; preds = %bb.ck, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i219", %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i.i.i.i.i.i.i.i.i.i.i163"
  %i.pz = and i32 %.sroa.1426.0.copyload.i.i.i.i.i.i.i.i.i.i154, -2
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i165 = icmp eq i32 %i.pz, 2
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i165, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit.i.i.i.i.i.i.i.i.i.i164"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i166 = icmp eq ptr %i.ot, %i.mq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i166, label %.loopexit.i.i.i.i.i.i.i.i.i.i167.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i135

.loopexit.i.i.i.i.i.i.i.i.i.i167.loopexit:        ; preds = %bb.cl
  store ptr %i.mq, ptr %i.it, align 8, !alias.scope !62632, !noalias !62624
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i167

.loopexit.i.i.i.i.i.i.i.i.i.i167:                 ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i167.loopexit, %"_ZN4core6option15Option$LT$T$GT$6insert17h943cdeb4f3e81ee3E.exit.i.i.i.i.i.i.i.i.i.i.i.i133"
  %i.qa = phi ptr [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i122, %"_ZN4core6option15Option$LT$T$GT$6insert17h943cdeb4f3e81ee3E.exit.i.i.i.i.i.i.i.i.i.i.i.i133" ], [ %i.mq, %.loopexit.i.i.i.i.i.i.i.i.i.i167.loopexit ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62598
  %i.qb = icmp eq ptr %i.mn, %i.ir
  br i1 %i.qb, label %bb.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i114

bb.cm:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit.i.i.i.i.i.i.i.i.i.i164"
  store ptr %i.mn, ptr %.sroa.415.0..sroa_idx, align 8, !alias.scope !62633
  store ptr %i.ot, ptr %i.it, align 8, !alias.scope !62632, !noalias !62624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62598
  br label %.loopexit.i85

bb.cn:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i167
  store ptr %i.ir, ptr %.sroa.415.0..sroa_idx, align 8, !alias.scope !62633
  %i.qc = ptrtoint ptr %i.mq to i64
  %i.qd = ptrtoint ptr %i.qa to i64
  %i.qe = sub nuw i64 %i.qc, %i.qd
  %i.qf = udiv exact i64 %i.qe, 248
  call void @llvm.experimental.noalias.scope.decl(metadata !62634)
  %i.qg = icmp eq ptr %i.mq, %i.qa
  br i1 %i.qg, label %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i.i28.i.i.i.i.i.i.i173", label %.lr.ph.i.i.i.i23.i.i.i.i.i.i.i168

.lr.ph.i.i.i.i23.i.i.i.i.i.i.i168:                ; preds = %bb.cn, %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i.i27.i.i.i.i.i.i.i172"
  %.sroa.0.07.i.i.i.i24.i.i.i.i.i.i.i169 = phi i64 [ %i.qi, %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i.i27.i.i.i.i.i.i.i172" ], [ 0, %bb.cn ] ; 2 uses
  %i.qh = getelementptr inbounds nuw [248 x i8], ptr %i.qa, i64 %.sroa.0.07.i.i.i.i24.i.i.i.i.i.i.i169 ; 3 uses
  %i.qi = add nuw i64 %.sroa.0.07.i.i.i.i24.i.i.i.i.i.i.i169, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62635)
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 200
  call void @llvm.experimental.noalias.scope.decl(metadata !62636)
  %.val.i.i.i.i.i.i25.i.i.i.i.i.i.i170 = load i64, ptr %i.qj, align 8, !range !76, !alias.scope !62637, !noalias !62638, !noundef !46 ; 2 uses
  %i.qk = icmp eq i64 %.val.i.i.i.i.i.i25.i.i.i.i.i.i.i170, 0
  br i1 %i.qk, label %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i.i27.i.i.i.i.i.i.i172", label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i23.i.i.i.i.i.i.i168
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 208
  %.val1.i.i.i.i.i.i26.i.i.i.i.i.i.i171 = load ptr, ptr %i.ql, align 8, !alias.scope !62637, !noalias !62638, !nonnull !46, !noundef !46
  %i.qm = mul nuw i64 %.val.i.i.i.i.i.i25.i.i.i.i.i.i.i170, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i26.i.i.i.i.i.i.i171, i64 noundef %i.qm, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !62639
  br label %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i.i27.i.i.i.i.i.i.i172"

"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i.i27.i.i.i.i.i.i.i172": ; preds = %bb.co, %.lr.ph.i.i.i.i23.i.i.i.i.i.i.i168
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(248) %i.qh), !noalias !62638
  %i.qn = icmp eq i64 %i.qi, %i.qf
  br i1 %i.qn, label %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i.i28.i.i.i.i.i.i.i173", label %.lr.ph.i.i.i.i23.i.i.i.i.i.i.i168

"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i.i28.i.i.i.i.i.i.i173": ; preds = %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i.i27.i.i.i.i.i.i.i172", %bb.cn
  %i.qo = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i121, 0
  br i1 %i.qo, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hfdafc539459c9186E.exit", label %bb.cp

bb.cp:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i.i28.i.i.i.i.i.i.i173"
  %i.qp = mul nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i121, 248
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i122, i64 noundef %i.qp, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !62638
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hfdafc539459c9186E.exit"

.loopexit.i85.loopexit:                           ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit55.i83"
  store ptr %i.jd, ptr %i.it, align 8, !alias.scope !62570
  br label %.loopexit.i85

.loopexit.i85:                                    ; preds = %.loopexit.i85.loopexit, %bb.cm
  %i.qq = phi ptr [ %i.mn, %bb.cm ], [ %i.ix, %.loopexit.i85.loopexit ]
  %i.qr = phi ptr [ %i.mq, %bb.cm ], [ %i.iy, %.loopexit.i85.loopexit ]
  %i.qs = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i121, %bb.cm ], [ %i.iz, %.loopexit.i85.loopexit ]
  %.promoted.i.i.i.i.i.i.i.i.i52499 = phi ptr [ %i.ot, %bb.cm ], [ %i.jd, %.loopexit.i85.loopexit ]
  %i.qt = phi ptr [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i122, %bb.cm ], [ %i.ja, %.loopexit.i85.loopexit ]
  %.sroa.51.0.ph.i90 = phi i32 [ %.sroa.1426.0.copyload.i.i.i.i.i.i.i.i.i.i154, %bb.cm ], [ %.sroa.1435.0.copyload.i73, %.loopexit.i85.loopexit ]
  %i.qu = phi <4 x i32> [ %i.os, %bb.cm ], [ %i.jc, %.loopexit.i85.loopexit ] ; 2 uses
  %i.qv = load i64, ptr %i.iv, align 8, !alias.scope !62555, !noundef !46 ; 5 uses
  %i.qw = icmp ult i64 %i.qv, 192153584101141163
  call void @llvm.assume(i1 %i.qw)
  %i.qx = load i64, ptr %i.im, align 8, !range !76, !alias.scope !62555, !noundef !46
  %i.qy = icmp eq i64 %i.qv, %i.qx
  br i1 %i.qy, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc3378ba2ff9d5598E.exit.i.i.i.i.i99", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i91"

"_ZN4core6option15Option$LT$T$GT$6map_or17hc3378ba2ff9d5598E.exit.i.i.i.i.i99": ; preds = %.loopexit.i85
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.im, i64 noundef %i.qv, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 48)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i91" unwind label %.loopexit.split-lp.loopexit.split-lp.i100.loopexit.split-lp, !noalias !62556

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i91": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hc3378ba2ff9d5598E.exit.i.i.i.i.i99", %.loopexit.i85
  %i.qz = load ptr, ptr %i.iw, align 8, !alias.scope !62555, !nonnull !46, !noundef !46
  %i.ra = getelementptr inbounds nuw [48 x i8], ptr %i.qz, i64 %i.qv ; 4 uses
  store ptr null, ptr %i.ra, align 8, !noalias !62599
  %.sroa.515.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store i32 %.sroa.51.0.ph.i90, ptr %.sroa.515.0..sroa_idx.i92, align 8, !noalias !62599
  %.sroa.616.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.ra, i64 20
  store <4 x i32> %i.qu, ptr %.sroa.616.0..sroa_idx.i93, align 4, !noalias !62599
  %.sroa.1121.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.ra, i64 40
  %i.rb = shufflevector <4 x i32> %i.qu, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %i.rb, ptr %.sroa.1121.0..sroa_idx.i97, align 8, !noalias !62599
  %i.rc = add nuw nsw i64 %i.qv, 1
  store i64 %i.rc, ptr %i.iv, align 8, !alias.scope !62555
  br label %bb.ay

.loopexit.split-lp.loopexit.split-lp.i100.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i114
  %lpad.loopexit515 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.mn, ptr %.sroa.415.0..sroa_idx, align 8, !alias.scope !62633
  br label %.loopexit.split-lp.loopexit.split-lp.i100

.loopexit.split-lp.loopexit.split-lp.i100.loopexit.split-lp: ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hc3378ba2ff9d5598E.exit.i.i.i.i.i99"
  %lpad.loopexit.split-lp516 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i100

.loopexit.split-lp.loopexit.split-lp.i100:        ; preds = %.loopexit.split-lp.loopexit.split-lp.i100.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i100.loopexit
  %lpad.phi517 = phi { ptr, i32 } [ %lpad.loopexit515, %.loopexit.split-lp.loopexit.split-lp.i100.loopexit ], [ %lpad.loopexit.split-lp516, %.loopexit.split-lp.loopexit.split-lp.i100.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr996drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..ast..LetBinding$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$C$nls..position..PositionLookup..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..position..PositionLookup..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..position..PositionLookup..new..push_ids$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..ast..LetBinding$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$C$nls..position..PositionLookup..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..position..PositionLookup..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h13a68a94f3888819E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e) #77, !noalias !62555
  br label %common.resume

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hfdafc539459c9186E.exit": ; preds = %bb.bs, %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i.i28.i.i.i.i.i.i.i173", %bb.cp
  store ptr null, ptr %i.e, align 8, !alias.scope !62592
  store ptr null, ptr %.sroa.014.sroa.5.0..sroa_idx, align 8, !alias.scope !62592
  call fastcc void @"_ZN4core3ptr996drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..ast..LetBinding$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$C$nls..position..PositionLookup..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..position..PositionLookup..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..position..PositionLookup..new..push_ids$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nickel_lang_parser..ast..LetBinding$GT$$C$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$C$nls..position..PositionLookup..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nls..position..PositionLookup..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h13a68a94f3888819E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !62555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN3nls8position14PositionLookup3new7push_id17h311bcb13ad9e6a31E.exit

bb.cq:                                            ; preds = %bb.d
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !nonnull !46, !align !52, !noundef !46 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.rg = load <4 x i32>, ptr %i.rf, align 4      ; 2 uses
  %.sroa.0482.0.copyload = load i32, ptr %i.rf, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62640)
  %i.rh = icmp eq i32 %.sroa.0482.0.copyload, 2
  br i1 %i.rh, label %_ZN3nls8position14PositionLookup3new7push_id17h311bcb13ad9e6a31E.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62641)
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 16 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !alias.scope !62642, !noundef !46 ; 3 uses
  %i.rk = load i64, ptr %i.re, align 8, !range !76, !alias.scope !62642, !noundef !46
  %i.rl = icmp eq i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.cs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hfadf9c0846c00331E.exit.i"

bb.cs:                                            ; preds = %bb.cr
  tail call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha014c68a696ee328E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.re), !noalias !62643
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hfadf9c0846c00331E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hfadf9c0846c00331E.exit.i": ; preds = %bb.cs, %bb.cr
  %i.rm = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !alias.scope !62642, !nonnull !46, !noundef !46
  %i.ro = getelementptr inbounds nuw [48 x i8], ptr %i.rn, i64 %i.rj ; 4 uses
  store ptr null, ptr %i.ro, align 8, !noalias !62644
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  store <4 x i32> %i.rg, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !62644
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  store i32 %.sroa.7.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !62644
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.rp = shufflevector <4 x i32> %i.rg, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.rp, ptr %.sroa.713.0..sroa_idx.i, align 8, !noalias !62644
  %i.rq = add i64 %i.rj, 1
  store i64 %i.rq, ptr %i.ri, align 8, !alias.scope !62642
  br label %_ZN3nls8position14PositionLookup3new7push_id17h311bcb13ad9e6a31E.exit

bb.ct:                                            ; preds = %bb.d
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !nonnull !46, !align !52, !noundef !46 ; 6 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8, !nonnull !46, !align !52, !noundef !46 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !nonnull !46, !align !52, !noundef !46 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.ry = load i64, ptr %i.rx, align 8, !noundef !46
  %i.rz = getelementptr inbounds nuw [280 x i8], ptr %i.rw, i64 %i.ry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62645)
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.ct, %bb.cx
  %.ph = phi ptr [ %i.rw, %bb.ct ], [ %i.sn, %bb.cx ] ; 5 uses
  %.ph1011 = phi ptr [ undef, %bb.ct ], [ %i.ss, %bb.cx ] ; 2 uses
  %.ph1012 = phi ptr [ undef, %bb.ct ], [ %.ph, %bb.cx ] ; 2 uses
  %.promoted.i.i47.i.ph = phi ptr [ null, %bb.ct ], [ %i.sp, %bb.cx ]
  br label %bb.cu

bb.cu:                                            ; preds = %.outer, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i267"
  %i.sc = phi i64 [ %i.st, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i267" ], [ 0, %.outer ]
  %.promoted.i.i47.i = phi ptr [ %i.sg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i267" ], [ %.promoted.i.i47.i.ph, %.outer ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.promoted.i.i47.i, null
  %i.sd = icmp eq ptr %.promoted.i.i47.i, %.ph1011
  %or.cond = select i1 %.not.i.i.i.i, i1 true, i1 %i.sd
  br i1 %or.cond, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i265

.lr.ph.i.i.i.i.i.i.i.i.i265:                      ; preds = %bb.cu, %bb.cw
  %i.se = phi ptr [ %i.sg, %bb.cw ], [ %.promoted.i.i47.i, %bb.cu ] ; 5 uses
  %i.sf = phi i64 [ %i.sk, %bb.cw ], [ %i.sc, %bb.cu ] ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 48 ; 3 uses
  %i.sh = load i32, ptr %i.se, align 8, !range !74, !alias.scope !62646, !noalias !62647, !noundef !46
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.sh, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i265
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  %.sroa.016.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.si, align 4, !alias.scope !62646, !noalias !62647
  %3 = and i32 %.sroa.016.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  %i.sj = icmp eq i32 %3, 2
  br i1 %i.sj, label %bb.cw, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa10868b4c48aa0bE.exit.i"

bb.cw:                                            ; preds = %bb.cv, %.lr.ph.i.i.i.i.i.i.i.i.i265
  %i.sk = add i64 %i.sf, 1
  %i.sl = icmp eq ptr %i.sg, %.ph1011
  br i1 %i.sl, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i265

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.cu, %bb.cw
  %i.sm = icmp eq ptr %.ph, %i.rz
  br i1 %i.sm, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h79dd66d91c072ea5E.exit", label %bb.cx

bb.cx:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.ph, i64 280
  %i.so = getelementptr inbounds nuw i8, ptr %.ph, i64 264
  %i.sp = load ptr, ptr %i.so, align 8, !alias.scope !62648, !noalias !62649, !nonnull !46, !align !52, !noundef !46 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.ph, i64 272
  %i.sr = load i64, ptr %i.sq, align 8, !alias.scope !62648, !noalias !62649, !noundef !46
  %i.ss = getelementptr inbounds nuw [48 x i8], ptr %i.sp, i64 %i.sr
  br label %.outer

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa10868b4c48aa0bE.exit.i": ; preds = %bb.cv
  %4 = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.ph1012) ]
  %i.st = add i64 %i.sf, 1
  %.sroa.12.0.in.i = getelementptr inbounds nuw i8, ptr %i.se, i64 20
  %.sroa.18.0.i = load i32, ptr %.sroa.12.0.in.i, align 4, !noalias !62650
  %i.su = load <4 x i32>, ptr %4, align 4, !noalias !62650 ; 2 uses
  %i.sv = load i64, ptr %i.sa, align 8, !alias.scope !62645, !noundef !46 ; 5 uses
  %i.sw = icmp ult i64 %i.sv, 192153584101141163
  tail call void @llvm.assume(i1 %i.sw)
  %i.sx = load i64, ptr %i.rs, align 8, !range !76, !alias.scope !62645, !noundef !46
  %i.sy = icmp eq i64 %i.sv, %i.sx
  br i1 %i.sy, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h3e19f75c1e681e54E.exit.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i267"

"_ZN4core6option15Option$LT$T$GT$6map_or17h3e19f75c1e681e54E.exit.i.i.i": ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa10868b4c48aa0bE.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rs, i64 noundef %i.sv, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 48), !noalias !62651
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i267"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i267": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h3e19f75c1e681e54E.exit.i.i.i", %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa10868b4c48aa0bE.exit.i"
  %i.sz = load ptr, ptr %i.sb, align 8, !alias.scope !62645, !nonnull !46, !noundef !46
  %i.ta = getelementptr inbounds nuw [48 x i8], ptr %i.sz, i64 %i.sv ; 5 uses
  store ptr %.ph1012, ptr %i.ta, align 8, !noalias !62652
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store i64 %i.sf, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !62652
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store <4 x i32> %i.su, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !62652
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  store i32 %.sroa.18.0.i, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !62652
  %.sroa.1117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ta, i64 40
  %5 = shufflevector <4 x i32> %i.su, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %5, ptr %.sroa.1117.0..sroa_idx.i, align 8, !noalias !62652
  %i.tb = add nuw nsw i64 %i.sv, 1
  store i64 %i.tb, ptr %i.sa, align 8, !alias.scope !62645
  br label %bb.cu

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h79dd66d91c072ea5E.exit": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.tc = load ptr, ptr %i.ru, align 8, !nonnull !46, !align !52, !noundef !46 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.te = load i64, ptr %i.td, align 8, !noundef !46
  %i.tf = getelementptr inbounds nuw [224 x i8], ptr %i.tc, i64 %i.te
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62653)
  br label %bb.cy

bb.cy:                                            ; preds = %.backedge, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h79dd66d91c072ea5E.exit"
  %i.tg = phi ptr [ %i.tc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h79dd66d91c072ea5E.exit" ], [ %i.ti, %.backedge ] ; 4 uses
  %i.th = icmp eq ptr %i.tg, %i.tf
  br i1 %i.th, label %_ZN3nls8position14PositionLookup3new7push_id17h311bcb13ad9e6a31E.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 224
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 200 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i32, ptr %i.tj, align 8, !alias.scope !62654, !noalias !62655
  %i.tk = and i32 %.sroa.01.0.copyload.i.i.i.i.i.i, -2
  %switch.i.i.i.i.i.i.i = icmp eq i32 %i.tk, 2
  br i1 %switch.i.i.i.i.i.i.i, label %.backedge, label %bb.da

.backedge:                                        ; preds = %bb.cz, %bb.db
  br label %bb.cy

bb.da:                                            ; preds = %bb.cz
  %.sroa.75.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tg, i64 216
  %.sroa.75.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.75.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !62654, !noalias !62655
  %i.tl = load <4 x i32>, ptr %i.tj, align 8, !alias.scope !62654, !noalias !62655 ; 2 uses
  %i.tm = load i64, ptr %i.sa, align 8, !alias.scope !62653, !noundef !46 ; 5 uses
  %i.tn = icmp ult i64 %i.tm, 192153584101141163
  tail call void @llvm.assume(i1 %i.tn)
  %i.to = load i64, ptr %i.rs, align 8, !range !76, !alias.scope !62653, !noundef !46
  %i.tp = icmp eq i64 %i.tm, %i.to
  br i1 %i.tp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i270", label %bb.db

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i270": ; preds = %bb.da
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rs, i64 noundef %i.tm, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 48)
  br label %bb.db

bb.db:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i270", %bb.da
  %i.tq = load ptr, ptr %i.sb, align 8, !alias.scope !62653, !nonnull !46, !noundef !46
  %i.tr = getelementptr inbounds nuw [48 x i8], ptr %i.tq, i64 %i.tm ; 4 uses
  store ptr null, ptr %i.tr, align 8, !noalias !62653
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store <4 x i32> %i.tl, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !62653
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  store i32 %.sroa.75.0.copyload.i.i.i.i.i.i, ptr %.sroa.921.0..sroa_idx.i, align 8, !noalias !62653
  %.sroa.1123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 40
  %i.ts = shufflevector <4 x i32> %i.tl, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.ts, ptr %.sroa.1123.0..sroa_idx.i, align 8, !noalias !62653
  %i.tt = add nuw nsw i64 %i.tm, 1
  store i64 %i.tt, ptr %i.sa, align 8, !alias.scope !62653
  br label %.backedge

bb.dc:                                            ; preds = %bb.d
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !nonnull !46, !align !52, !noundef !46 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tx = load i64, ptr %i.tw, align 8, !noundef !46
  %i.ty = getelementptr inbounds nuw [160 x i8], ptr %i.tv, i64 %i.tx ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !nonnull !46, !align !52, !noundef !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8
  %.sroa.038.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr null, ptr %.sroa.038.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 4 uses
  store ptr %i.tv, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.ty, ptr %.sroa.3.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62657)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.uc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 16 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  br label %bb.dd

bb.dd:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i313", %bb.dc
  %i.ug = phi ptr [ %i.abw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i313" ], [ %i.tv, %bb.dc ] ; 3 uses
  %i.uh = phi ptr [ %i.abx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i313" ], [ undef, %bb.dc ] ; 6 uses
  %i.ui = phi i64 [ %i.aby, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i313" ], [ undef, %bb.dc ] ; 4 uses
  %.promoted.i.i.i.i.i.i.i.i.i274510 = phi ptr [ %storemerge, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i313" ], [ undef, %bb.dc ] ; 4 uses
  %i.uj = phi ptr [ %i.abz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7adf6b674b4e0378E.exit.i313" ], [ null, %bb.dc ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62658)
  call void @llvm.experimental.noalias.scope.decl(metadata !62659)
  call void @llvm.experimental.noalias.scope.decl(metadata !62660)
  call void @llvm.experimental.noalias.scope.decl(metadata !62661)
  call void @llvm.experimental.noalias.scope.decl(metadata !62662)
  call void @llvm.experimental.noalias.scope.decl(metadata !62663)
  %.not.i.i.i.i.i.i.i273 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i.i.i.i.i273, label %bb.dx, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !62664)
  call void @llvm.experimental.noalias.scope.decl(metadata !62665)
  %.not35.i.i.i.i.i.i.i.i.i275 = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i274510, %i.uh
  br i1 %.not35.i.i.i.i.i.i.i.i.i275, label %.thread149.i.i.i.i.i.i.i324, label %.lr.ph.i.i.i.i.i.i.i.i.i276

.lr.ph.i.i.i.i.i.i.i.i.i276:                      ; preds = %bb.de, %bb.dn
  %i.uk = phi ptr [ %i.ul, %bb.dn ], [ %.promoted.i.i.i.i.i.i.i.i.i274510, %bb.de ] ; 15 uses
  %.sroa.023.0.copyload.i277 = load i64, ptr %i.uk, align 8, !noalias !62666 ; 4 uses
  %.sroa.524.0..sroa_idx.i278 = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %.sroa.524.0.copyload.i279 = load ptr, ptr %.sroa.524.0..sroa_idx.i278, align 8, !noalias !62666 ; 2 uses
  %.sroa.625.0..sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %.sroa.625.0.copyload.i281 = load i64, ptr %.sroa.625.0..sroa_idx.i280, align 8, !noalias !62666 ; 8 uses
  %.sroa.827.0..sroa_idx.i282 = getelementptr inbounds nuw i8, ptr %i.uk, i64 120
  %.sroa.827.0.copyload.i283 = load i64, ptr %.sroa.827.0..sroa_idx.i282, align 8, !noalias !62666 ; 4 uses
  %.sroa.928.0..sroa_idx.i284 = getelementptr inbounds nuw i8, ptr %i.uk, i64 128
  %.sroa.928.0.copyload.i285 = load ptr, ptr %.sroa.928.0..sroa_idx.i284, align 8, !noalias !62666 ; 2 uses
  %.sroa.1030.0..sroa_idx.i286 = getelementptr inbounds nuw i8, ptr %i.uk, i64 144
  %.sroa.1030.0.copyload.i287 = load i64, ptr %.sroa.1030.0..sroa_idx.i286, align 8, !noalias !62666 ; 2 uses
  %.sroa.1131.0..sroa_idx.i288 = getelementptr inbounds nuw i8, ptr %i.uk, i64 152
  %.sroa.1131.0.copyload.i289 = load ptr, ptr %.sroa.1131.0..sroa_idx.i288, align 8, !noalias !62666 ; 2 uses
  %.sroa.1233.0..sroa_idx.i290 = getelementptr inbounds nuw i8, ptr %i.uk, i64 200
  %.sroa.1233.0.copyload.i291 = load i64, ptr %.sroa.1233.0..sroa_idx.i290, align 8, !noalias !62666 ; 2 uses
  %.sroa.1435.0..sroa_idx.i294 = getelementptr inbounds nuw i8, ptr %i.uk, i64 224
  %.sroa.1435.0.copyload.i295 = load i32, ptr %.sroa.1435.0..sroa_idx.i294, align 8, !noalias !62666 ; 2 uses
  %.sroa.15.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.uk, i64 228
  %.sroa.15.0.copyload.i297 = load i32, ptr %.sroa.15.0..sroa_idx.i296, align 4, !noalias !62666
  %.sroa.16.0..sroa_idx.i298 = getelementptr inbounds nuw i8, ptr %i.uk, i64 232
  %.sroa.16.0.copyload.i299 = load i32, ptr %.sroa.16.0..sroa_idx.i298, align 8, !noalias !62666
  %.sroa.17.0..sroa_idx.i300 = getelementptr inbounds nuw i8, ptr %i.uk, i64 236
  %.sroa.17.0.copyload.i301 = load i32, ptr %.sroa.17.0..sroa_idx.i300, align 4, !noalias !62666
  %.sroa.18.0..sroa_idx.i302 = getelementptr inbounds nuw i8, ptr %i.uk, i64 240
  %.sroa.18.0.copyload.i303 = load i32, ptr %.sroa.18.0..sroa_idx.i302, align 8, !noalias !62666
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 248 ; 5 uses
  %i.um = icmp eq i64 %.sroa.1233.0.copyload.i291, 0
  br i1 %i.um, label %"_ZN3nls8position14PositionLookup3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h6ae61ff640330916E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i276
  %.sroa.1334.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %i.uk, i64 208
  %.sroa.1334.0.copyload.i293 = load ptr, ptr %.sroa.1334.0..sroa_idx.i292, align 8, !noalias !62666, !nonnull !46, !noundef !46
  %i.un = mul nuw i64 %.sroa.1233.0.copyload.i291, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1334.0.copyload.i293, i64 noundef %i.un, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !62667
  br label %"_ZN3nls8position14PositionLookup3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h6ae61ff640330916E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3nls8position14PositionLookup3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h6ae61ff640330916E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.df, %.lr.ph.i.i.i.i.i.i.i.i.i276
  %i.uo = icmp eq i64 %.sroa.023.0.copyload.i277, 18
  br i1 %i.uo, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i39.i304", label %bb.dg

bb.dg:                                            ; preds = %"_ZN3nls8position14PositionLookup3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h6ae61ff640330916E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.up = icmp ne i64 %.sroa.023.0.copyload.i277, 12
  call void @llvm.assume(i1 %i.up), !noalias !62668
  %i.uq = icmp samesign ult i64 %.sroa.023.0.copyload.i277, 3
  br i1 %i.uq, label %bb.dh, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i39.i304"

bb.dh:                                            ; preds = %bb.dg
  switch i64 %.sroa.023.0.copyload.i277, label %bb.di [
    i64 0, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i39.i304"
    i64 1, label %bb.dj
  ]

bb.di:                                            ; preds = %bb.dh
  %i.ur = icmp eq i64 %.sroa.625.0.copyload.i281, 0
  br i1 %i.ur, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i39.i304", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i54.i478

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i54.i478: ; preds = %bb.di
  %i.us = shl i64 %.sroa.625.0.copyload.i281, 2
  %i.ut = icmp slt i64 %.sroa.625.0.copyload.i281, 4611686018427387900
  call void @llvm.assume(i1 %i.ut), !noalias !62668
  %i.uu = and i64 %i.us, -16                      ; 2 uses
  %i.uv = add i64 %i.uu, 16                       ; 2 uses
  %i.uw = add nsw i64 %.sroa.625.0.copyload.i281, 17
  %i.ux = add i64 %i.uw, %i.uv                    ; 4 uses
  %i.uy = icmp uge i64 %i.ux, %i.uv
  %i.uz = icmp ult i64 %i.ux, 9223372036854775793
  call void @llvm.assume(i1 %i.uy), !noalias !62668
  call void @llvm.assume(i1 %i.uz), !noalias !62668
  %i.va = icmp eq i64 %i.ux, 0
  br i1 %i.va, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i39.i304", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i48.i475"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i48.i475": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i47.i474, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i54.i478
  %.sink.i.i.i.i.i.i49.i476 = phi i64 [ %i.vg, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i47.i474 ], [ %i.uu, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i54.i478 ]
  %.sink7.i.i.i.i.i.i50.i477 = phi i64 [ %i.vj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i47.i474 ], [ %i.ux, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i54.i478 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i279) ]
  %i.vb = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i49.i476
  %i.vc = getelementptr inbounds i8, ptr %.sroa.524.0.copyload.i279, i64 %i.vb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vc, i64 noundef %.sink7.i.i.i.i.i.i50.i477, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !62669
  br label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i39.i304"

bb.dj:                                            ; preds = %bb.dh
  %i.vd = icmp eq i64 %.sroa.625.0.copyload.i281, 0
  br i1 %i.vd, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i39.i304", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i47.i474

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i47.i474: ; preds = %bb.dj
  %i.ve = shl i64 %.sroa.625.0.copyload.i281, 2
  %i.vf = icmp slt i64 %.sroa.625.0.copyload.i281, 4611686018427387900
  call void @llvm.assume(i1 %i.vf), !noalias !62668
  %i.vg = and i64 %i.ve, -16                      ; 2 uses
  %i.vh = add i64 %i.vg, 16                       ; 2 uses
  %i.vi = add nsw i64 %.sroa.625.0.copyload.i281, 17
  %i.vj = add i64 %i.vi, %i.vh                    ; 4 uses
end_hunk_0
