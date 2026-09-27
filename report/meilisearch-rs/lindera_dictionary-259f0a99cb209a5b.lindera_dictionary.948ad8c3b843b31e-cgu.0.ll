Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator7collect17h946800fb2149df5bE:bb.a
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.t, %bb.f ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.f ] ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.v)
  store i64 %i.f, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !9127
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !9127
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !9127
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.d, align 8, !noalias !9127
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !9127
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !9127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !9128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9139
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3e5866cbd5c792bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !9127

.noexc5.i.i.i:                                    ; preds = %bb.h
  %i.w = load i64, ptr %i.a, align 8, !range !15, !noalias !9139, !noundef !6 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i64 %i.w, -9223372036854775808
  br i1 %.not12.i.i.i.i.i, label %.loopexit12.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc5.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.i

bb.i:                                             ; preds = %.noexc6.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aa = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc6.i.i.i ]
  %i.ab = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.noexc6.i.i.i ] ; 5 uses
  %i.ac = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.aj, %.noexc6.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9139 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9139
  %i.ad = icmp samesign ult i64 %i.ab, 384307168202282326
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load i64, ptr %i.d, align 8, !range !14, !alias.scope !9140, !noalias !9141, !noundef !6
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i", %bb.i
  %i.ag = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i" ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ab ; 3 uses
  store i64 %i.ac, ptr %i.ah, align 8, !noalias !9139
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9139
  %.sroa.510.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9139
  %i.ai = add nuw nsw i64 %i.ab, 1                ; 2 uses
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !9140, !noalias !9141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9139
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3e5866cbd5c792bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc6.i.i.i unwind label %.loopexit.i.i.i, !noalias !9127

.noexc6.i.i.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i"
  %i.aj = load i64, ptr %i.a, align 8, !range !15, !noalias !9139, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %.loopexit12.i.i.i, label %bb.i

bb.j:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq i64 %i.ac, 0
  br i1 %i.al, label %.body.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9142
  br label %.body.i.i.i

bb.l:                                             ; preds = %bb.i
  %.val5.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !9143, !noalias !9144, !noundef !6
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !9143, !noalias !9144, !noundef !6
  %i.am = sub i64 %.val5.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %i.an = load i64, ptr %i.z, align 8, !alias.scope !9143, !noalias !9144, !noundef !6
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 %i.an)
  %i.ap = tail call i64 @llvm.uadd.sat.i64(i64 %i.ao, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ab, i64 noundef %i.ap, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i" unwind label %bb.j, !noalias !9141

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i_crit_edge.i.i.i": ; preds = %bb.l
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !9140, !noalias !9141
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i"

.loopexit.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i"
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.k, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #48, !noalias !9127
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i"

.loopexit12.i.i.i:                                ; preds = %.noexc6.i.i.i, %.noexc5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !9130
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17heb266c3d4d74a49dE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i": ; preds = %.body.i.i.i, %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %.pn.i.i.i

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17heb266c3d4d74a49dE.exit": ; preds = %bb.b, %.loopexit12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9121
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_ZN4core4iter6traits8iterator8Iterator8try_fold17h5192b4e5534a99c4E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !9149, !noundef !6 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !alias.scope !9149 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !align !8
  %.promoted31 = load i64, ptr %i.d, align 8
  %i.f = add i64 %.promoted, %1
  %i.g = sub i64 %i.f, %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.h = phi i64 [ %.promoted31, %bb.a ], [ %i.t, %bb.i ] ; 2 uses
  %i.i = phi i64 [ %.promoted, %bb.a ], [ %i.u, %bb.i ] ; 5 uses
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.y, %bb.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9151)
  %i.j = icmp eq i64 %i.i, %i.c
  br i1 %i.j, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !noalias !9149, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load i64, ptr %i.l, align 8, !noalias !9149, !noundef !6 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !noalias !9149, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.q = load i64, ptr %i.p, align 8, !noalias !9149, !noundef !6 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.m, %i.q
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46, !noalias !9149
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = icmp ult i64 %i.i, %i.m
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !9149, !noundef !6 ; 5 uses
  %i.u = add nuw i64 %i.i, 1                      ; 2 uses
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !9149
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !9149
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noalias !9149, !noundef !6 ; 2 uses
  %i.x = icmp ult i64 %i.t, %i.h
  %.not5.i.i = icmp ugt i64 %i.t, %i.w
  %or.cond.i.i = or i1 %i.x, %.not5.i.i
  br i1 %or.cond.i.i, label %bb.h, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.i, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46, !noalias !9149
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.h, i64 noundef %i.t, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #46, !noalias !9149
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.y = add i64 %.sroa.01.0, -1                  ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i, %bb.b
  %.sroa.0.0 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.i ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h0d64285e5117eaf7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h11490955842431c7E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h1cbf26661ab47f7dE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h3a78aa83924c6cf3E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h4701e1bdfd24fd21E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h47323c7856792084E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h477af03a8755de52E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h6db4dd2ff3879d3aE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h6e143d8ff3bbc036E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h7b4230292020d1fbE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h9b8d06a8902ce572E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h9f7413c755c3c78cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17ha706369270d516fdE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hab3b9e3cbea604b2E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hbb6390e32c849f94E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hd69f14a95f795a19E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hde3b8a0e5248444cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hece7d896e4382943E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hecead499872dc8acE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hedd4ec01238a86bdE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hee6145b864c25911E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf108165b590df0c1E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h0146f9777b7766f7E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h0202088ac3e7df17E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h21c26037b20b454dE(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9152
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h246f7612543b4a02E(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9153
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h2ceef5ce0fc17fa9E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h38612514717f069aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !49, !alias.scope !9156, !noundef !6
  switch i64 %i.a, label %"_ZN7bincode8features8impl_std76_$LT$impl$u20$core..error..Error$u20$for$u20$bincode..error..EncodeError$GT$6source17h22f8f5b45ea16e1cE.exit" [
    i64 1, label %bb.b
    i64 5, label %bb.c
    i64 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %"_ZN7bincode8features8impl_std76_$LT$impl$u20$core..error..Error$u20$for$u20$bincode..error..EncodeError$GT$6source17h22f8f5b45ea16e1cE.exit"

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %"_ZN7bincode8features8impl_std76_$LT$impl$u20$core..error..Error$u20$for$u20$bincode..error..EncodeError$GT$6source17h22f8f5b45ea16e1cE.exit"

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %"_ZN7bincode8features8impl_std76_$LT$impl$u20$core..error..Error$u20$for$u20$bincode..error..EncodeError$GT$6source17h22f8f5b45ea16e1cE.exit"

"_ZN7bincode8features8impl_std76_$LT$impl$u20$core..error..Error$u20$for$u20$bincode..error..EncodeError$GT$6source17h22f8f5b45ea16e1cE.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i = phi ptr [ @642, %bb.d ], [ @640, %bb.b ], [ @391, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.5.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h5f84c82735d6a72bE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h61b696db6cc45f38E(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9157
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h628b98e16f319ce2E(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9158
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h708810d30bf3798aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h70ace06e5c72bbd4E(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9159
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h77e9a9b687fc6d5cE(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9160
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h867a6dee6303408eE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #17 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !48, !alias.scope !9163, !noundef !6
  %i.b = icmp eq i8 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @638, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h87143e7901012d7eE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h920afd7fe5149e1cE(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9164
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h925f4a81765cf9caE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h9b3dc6087cf70a9eE(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9165
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17had930f90ca7a8989E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hc3beffca830aa7f2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17heee2734fe4034e42E(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4yada7builder18DoubleArrayBuilder5build17h2966da70c206852fE:bb.a
  %i.c = invoke fastcc noundef zeroext i1 @_ZN4yada7builder18DoubleArrayBuilder15build_recursive17he517e50b11602793E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef 0, i64 noundef %2, i64 noundef 0)
          to label %.noexc1 unwind label %bb.j

.noexc1:                                          ; preds = %.noexc
  br i1 %i.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, label %bb.d

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %.noexc1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10440
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10439, !noalias !10441, !noundef !6 ; 3 uses
  %i.f = icmp ult i64 %i.e, 5101422586755961
  call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i64 %i.e, 8                  ; 4 uses
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  store i64 %i.g, ptr %i.a, align 8, !noalias !10440
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8, !noalias !10440
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.j, align 8, !noalias !10440
  br label %._crit_edge.i

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10442
  %i.k = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 1) #47, !noalias !10442 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i"

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #46
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.c
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i": ; preds = %bb.b
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !10439, !noalias !10441 ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !noalias !10440
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.m, align 8, !noalias !10440
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.n, align 8, !noalias !10440
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !10439, !noalias !10441, !nonnull !6, !noundef !6 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.pre.i, 1808
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %i.r = icmp eq i64 %.pre.i, 0
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %.noexc1
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !10438, !noalias !10443
  br label %_ZN4yada7builder18DoubleArrayBuilder17build_from_keyset17h5be55c518313eccfE.exit

.loopexit.i:                                      ; preds = %bb.i
  %i.s = icmp eq ptr %i.v, %i.q
  br i1 %i.s, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i", %.loopexit.i
  %i.t = phi ptr [ %i.ae, %.loopexit.i ], [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i" ]
  %i.u = phi i64 [ %i.ai, %.loopexit.i ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i" ]
  %.sroa.02.08.i = phi ptr [ %i.v, %.loopexit.i ], [ %i.p, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i" ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i, i64 1808 ; 2 uses
  br label %bb.e

._crit_edge.i:                                    ; preds = %.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !10443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10440
  br label %_ZN4yada7builder18DoubleArrayBuilder17build_from_keyset17h5be55c518313eccfE.exit

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %i.w = phi ptr [ %i.t, %.lr.ph.i ], [ %i.ae, %bb.i ]
  %i.x = phi i64 [ %i.u, %.lr.ph.i ], [ %i.ai, %bb.i ] ; 3 uses
  %.sroa.03.0.idx7.i = phi i64 [ 264, %.lr.ph.i ], [ %.sroa.03.0.add.i, %bb.i ] ; 2 uses
  %.sroa.03.0.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i, i64 %.sroa.03.0.idx7.i
  %i.y = load i32, ptr %.sroa.03.0.ptr.i, align 4, !noalias !10441, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !10444)
  call void @llvm.experimental.noalias.scope.decl(metadata !10445)
  %i.z = load i64, ptr %i.a, align 8, !range !14, !alias.scope !10446, !noalias !10440, !noundef !6
  %i.aa = sub i64 %i.z, %i.x
  %i.ab = icmp ult i64 %i.aa, 4
  br i1 %i.ab, label %bb.f, label %bb.i, !prof !16

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.x, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.g, !noalias !10441

.noexc.i:                                         ; preds = %bb.f
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !10447, !noalias !10440
  %.pre9.i = load ptr, ptr %i.m, align 8, !alias.scope !10447, !noalias !10440
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !noalias !10440 ; 2 uses
  %i.ad = icmp eq i64 %.val.i, 0
  br i1 %i.ad, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val6.i = load ptr, ptr %i.m, align 8, !noalias !10440, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10441
  br label %.body

bb.i:                                             ; preds = %.noexc.i, %bb.e
  %i.ae = phi ptr [ %i.w, %bb.e ], [ %.pre9.i, %.noexc.i ] ; 3 uses
  %i.af = phi i64 [ %i.x, %bb.e ], [ %.pre.i.i.i, %.noexc.i ] ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i32 %i.y, ptr %i.ah, align 1, !noalias !10448
  %i.ai = add nuw i64 %i.af, 4                    ; 3 uses
  store i64 %i.ai, ptr %i.n, align 8, !alias.scope !10447, !noalias !10440
  %.sroa.03.0.add.i = add nuw nsw i64 %.sroa.03.0.idx7.i, 4 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.03.0.add.i, 1288
  br i1 %i.aj, label %.loopexit.i, label %bb.e

bb.j:                                             ; preds = %bb.c, %.noexc, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.ac, %bb.h ], [ %i.ac, %bb.g ]
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$yada..builder..DoubleArrayBuilder$GT$17h0669d6a4fc34a686E"(ptr noalias noundef align 8 dereferenceable(72) %i.b) #48
  resume { ptr, i32 } %eh.lpad-body

_ZN4yada7builder18DoubleArrayBuilder17build_from_keyset17h5be55c518313eccfE.exit: ; preds = %._crit_edge.i, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10449)
  %.val.i3 = load i64, ptr %i.b, align 8, !alias.scope !10449 ; 2 uses
  %i.al = icmp eq i64 %.val.i3, 0
  br i1 %i.al, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$yada..builder..DoubleArrayBlock$GT$$GT$17h8e5af2ae7632b8e3E.exit.i", label %bb.k

bb.k:                                             ; preds = %_ZN4yada7builder18DoubleArrayBuilder17build_from_keyset17h5be55c518313eccfE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.am, align 8, !alias.scope !10449, !nonnull !6, !noundef !6
  %i.an = mul nuw i64 %.val.i3, 1808
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !10449
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$yada..builder..DoubleArrayBlock$GT$$GT$17h8e5af2ae7632b8e3E.exit.i"

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$yada..builder..DoubleArrayBlock$GT$$GT$17h8e5af2ae7632b8e3E.exit.i": ; preds = %bb.k, %_ZN4yada7builder18DoubleArrayBuilder17build_from_keyset17h5be55c518313eccfE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val2.i = load ptr, ptr %i.ao, align 8, !alias.scope !10449 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val3.i = load i64, ptr %i.ap, align 8, !alias.scope !10449, !noundef !6 ; 4 uses
  %i.aq = icmp eq i64 %.val3.i, 0
  br i1 %i.aq, label %"_ZN4core3ptr54drop_in_place$LT$yada..builder..DoubleArrayBuilder$GT$17h0669d6a4fc34a686E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$yada..builder..DoubleArrayBlock$GT$$GT$17h8e5af2ae7632b8e3E.exit.i"
  %i.ar = shl i64 %.val3.i, 2
  %i.as = icmp slt i64 %.val3.i, 4611686018427387900
  call void @llvm.assume(i1 %i.as)
  %i.at = and i64 %i.ar, -16                      ; 2 uses
  %i.au = add i64 %i.at, 16                       ; 2 uses
  %i.av = add nsw i64 %.val3.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = icmp ult i64 %i.aw, 9223372036854775793
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %"_ZN4core3ptr54drop_in_place$LT$yada..builder..DoubleArrayBuilder$GT$17h0669d6a4fc34a686E.exit", label %bb.l

bb.l:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %i.ba = sub nuw nsw i64 -16, %i.at
  %i.bb = getelementptr inbounds i8, ptr %.val2.i, i64 %i.ba
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 16) #47, !noalias !10449
  br label %"_ZN4core3ptr54drop_in_place$LT$yada..builder..DoubleArrayBuilder$GT$17h0669d6a4fc34a686E.exit"

"_ZN4core3ptr54drop_in_place$LT$yada..builder..DoubleArrayBuilder$GT$17h0669d6a4fc34a686E.exit": ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$yada..builder..DoubleArrayBlock$GT$$GT$17h8e5af2ae7632b8e3E.exit.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN52_$LT$glob..GlobError$u20$as$u20$core..fmt..Debug$GT$3fmt17h616d32b59be3d7e1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @385, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @386, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @383, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @387, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @384)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN54_$LT$csv..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hff06d1c38d4e49a5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @389, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @388)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN54_$LT$glob..GlobError$u20$as$u20$core..error..Error$GT$11description17h72e16b0b5e9620a4E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @318, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN54_$LT$glob..GlobError$u20$as$u20$core..error..Error$GT$5cause17h20f212a0e4a76204E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @391, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN55_$LT$glob..PatternError$u20$as$u20$core..fmt..Debug$GT$3fmt17h496f3f6d7877f343E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @393, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @392, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @395, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @"_ZN57_$LT$glob..PatternError$u20$as$u20$core..error..Error$GT$11description17hf1162d046edb4c8bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hc9ba220b3a6d24e8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb39ca07ebc1a7187E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val12 = load i64, ptr %i.e, align 8           ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.aa, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.z, %bb.f ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 538
  %i.h = load i16, ptr %i.g, align 2, !noalias !10459, !noundef !6 ; 2 uses
  %i.i = zext i16 %i.h to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.i, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.k = icmp eq i16 %i.h, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i75, i64 24 ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.8.0.i.i74, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.03.0.i.i75 = phi ptr [ %i.l, %bb.d ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i74 = phi i64 [ %i.m, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.03.0.i.i75, i64 8
  %.val8.i.i = load ptr, ptr %i.o, align 8, !noalias !10459, !nonnull !6, !noundef !6
  %i.p = getelementptr i8, ptr %.sroa.03.0.i.i75, i64 16
  %.val9.i.i = load i64, ptr %i.p, align 8, !noalias !10459, !noundef !6 ; 2 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12, i64 %.val9.i.i)
  %i.q = sub i64 %.val12, %.val9.i.i
  %i.r = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val8.i.i, i64 %..i.i.i.i.i), !alias.scope !10460, !noalias !10459 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.t, i64 %i.q, i64 %i.s
  %i.u = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i, i64 0)
  switch i8 %i.u, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h03526daf6a401263E.exit"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.sroa.8.0.i.i74, %.lr.ph ] ; 3 uses
  %i.v = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.v, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 544
  %i.x = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.4.0.i.ph.i
  %i.z = load ptr, ptr %i.y, align 8, !noalias !10461, !nonnull !6, !noundef !6
  %i.aa = add i64 %.sroa.3.0.i, -1
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %.sroa.022.0.copyload = load i64, ptr %2, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.022.0.copyload, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.524.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15": ; preds = %bb.h, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h03526daf6a401263E.exit", %bb.i, %bb.g
  ret void

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h03526daf6a401263E.exit": ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.ab, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.i.i74, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10462)
  %.val.i13 = load i64, ptr %2, align 8, !alias.scope !10462 ; 2 uses
  %i.ac = icmp eq i64 %.val.i13, 0
  br i1 %i.ac, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15", label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h03526daf6a401263E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10462
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15"

bb.i:                                             ; preds = %._crit_edge
  %.sroa.037.0.copyload = load i64, ptr %2, align 8
  store i64 %.sroa.037.0.copyload, ptr %0, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val12, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.4.0.i.ph.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit15"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h373f035985f41430E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10499)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !10500, !noalias !10501
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10500, !noalias !10501 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !10500, !noalias !10501 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !10500, !noalias !10501 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !10500, !noalias !10501
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h77cfca97dd81f902E.exit"
end_hunk_1
