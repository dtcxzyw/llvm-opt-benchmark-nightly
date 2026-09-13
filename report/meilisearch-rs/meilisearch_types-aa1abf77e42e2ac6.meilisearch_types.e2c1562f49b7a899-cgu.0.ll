Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN17meilisearch_types8settings8settings17h434d4bbc0b5a657dE:bb.a
  %i.fe = add i64 %i.fd, %i.fc                    ; 3 uses
  %i.ff = icmp uge i64 %i.fe, %i.fc
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp ult i64 %i.fe, 9223372036854775793
  call void @llvm.assume(i1 %i.fg)
  %i.fh = sub i64 -32, %i.fb
  %i.fi = getelementptr inbounds i8, ptr %i.et, i64 %i.fh
  br label %bb.w

bb.w:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.v
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.fe, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.v ] ; 7 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.fi, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.v ] ; 6 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %bb.v ] ; 4 uses
  %i.fj = getelementptr i8, ptr %i.et, i64 %.sroa.01050.0.copyload
  %i.fk = getelementptr i8, ptr %i.fj, i64 1
  %i.fl = ptrtoint ptr %i.fk to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !11789)
  call void @llvm.experimental.noalias.scope.decl(metadata !11790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11792
  %i.fm = icmp eq i64 %.sroa.4396.sroa.5.0.copyload, 0
  br i1 %i.fm, label %.thread.i.i.i.i.i.i, label %bb.x

.thread.i.i.i.i.i.i:                              ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11792
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w
  %i.fn = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.fo = bitcast <16 x i1> %i.fn to i16          ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.fo, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fq = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fp, %bb.x ] ; 2 uses
  %i.fr = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.et, %bb.x ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fq, align 16, !noalias !11793
  %i.fs = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 -384 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.fs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.x
  %.sroa.13.0.i.i.i.i = phi ptr [ %i.fp, %bb.x ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ %i.et, %bb.x ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.fo, %bb.x ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.fw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = and i16 %i.fv, %.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.fz = sub nsw i64 0, %i.fx
  %i.ga = getelementptr inbounds [24 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.fz ; 3 uses
  %i.gb = add i64 %.sroa.4396.sroa.5.0.copyload, -1 ; 7 uses
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !11794 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11792
  %i.gd = icmp eq i64 %i.gb, 0
  br i1 %i.gd, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.y, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.y ] ; 2 uses
  %i.ge = phi i64 [ %i.gr, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.gb, %bb.y ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.y ] ; 2 uses
  %i.gf = phi i16 [ %i.go, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fy, %bb.y ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gh = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gg, align 16, !noalias !11795
  %i.gi = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -384 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.gi to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gf, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gl = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gn = zext nneg i16 %i.gm to i64
  %i.go = and i16 %i.gl, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gp = sub nsw i64 0, %i.gn
  %i.gq = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gp ; 2 uses
  %i.gr = add i64 %i.ge, -1                       ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gs, align 8, !alias.scope !11796, !noalias !11797 ; 2 uses
  %i.gt = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gt, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gu = getelementptr i8, ptr %i.gq, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gu, align 8, !noalias !11797, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11798
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.z, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.y, %.thread.i.i.i.i.i.i
  %i.gv = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.ex, %i.gv
  br i1 %or.cond.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i", label %bb.aa

bb.aa:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11799
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i"

bb.ab:                                            ; preds = %bb.ae
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, 0
  br i1 %i.gx, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11800
  br label %bb.am

bb.ad:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ga, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !11801 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11801
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.4396.sroa.5.0.copyload, i64 4) ; 3 uses
  %i.gy = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.4396.sroa.5.0.copyload, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !11802
  %i.ha = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gy, i64 noundef range(i64 1, 9) 8) #52, !noalias !11802 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.ad
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.ad ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ab, !noalias !11792

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ha, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hc = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.hc)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !11792
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11792
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11792
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !11792
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11792
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11792
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.d, align 8, !noalias !11803
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !11803
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !11803
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !11803
  %.sroa.13.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i.i.i.i, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !noalias !11803
  %.sroa.17.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.fl, ptr %.sroa.17.0..sroa_idx13.i.i.i.i, align 8, !noalias !11803
  %.sroa.1715.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i16 %i.fy, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !noalias !11803
  %.sroa.1919.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store i64 %i.gb, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !noalias !11803
  call void @llvm.experimental.noalias.scope.decl(metadata !11804)
  call void @llvm.experimental.noalias.scope.decl(metadata !11805)
  call void @llvm.experimental.noalias.scope.decl(metadata !11806)
  call void @llvm.experimental.noalias.scope.decl(metadata !11807)
  %i.hd = icmp eq i64 %i.gb, 0
  br i1 %i.hd, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"
  %i.he = phi ptr [ %i.ip, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.af ]
  %i.hf = phi i64 [ %i.ir, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.af ] ; 5 uses
  %.lcssa1225.i.i.i.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.af ] ; 2 uses
  %.lcssa1322.i.i.i.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.af ] ; 2 uses
  %i.hg = phi i16 [ %i.hp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.fy, %bb.af ] ; 2 uses
  %.val1617.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.gb, %bb.af ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11808)
  call void @llvm.experimental.noalias.scope.decl(metadata !11809)
  call void @llvm.experimental.noalias.scope.decl(metadata !11810)
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hg, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hl, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !11811, !noalias !11812
  store ptr %i.hk, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !11811, !noalias !11812
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1225.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hi = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1322.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hh, align 16, !noalias !11813
  %i.hj = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 -384 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.hj to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hl, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1225.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hk, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1322.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hm = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ho = zext nneg i16 %i.hn to i64
  %i.hp = and i16 %i.hm, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.hq = sub nsw i64 0, %i.ho
  %i.hr = getelementptr inbounds [24 x i8], ptr %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hq ; 3 uses
  %i.hs = add i64 %.val1617.i.i.i.i.i.i.i.i, -1   ; 6 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ht, align 8, !noalias !11814 ; 4 uses
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.ag

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$std..collections..hash..set..IntoIter$LT$alloc..string..String$GT$$GT$17hba43583e2accb8a3E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #55, !noalias !11815
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #55, !noalias !11792
  br label %bb.ih

bb.ag:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hr, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !11816 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hr, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11816
  %4 = icmp samesign ult i64 %i.hf, 384307168202282326
  call void @llvm.assume(i1 %4)
  %i.hu = load i64, ptr %i.e, align 8, !range !22, !alias.scope !11817, !noalias !11818, !noundef !21
  %i.hv = icmp eq i64 %i.hf, %i.hu
  br i1 %i.hv, label %bb.al, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"
  %i.hw = icmp eq i64 %i.hs, 0
  br i1 %i.hw, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hx = phi i64 [ %i.ik, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.hs, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hy = phi i16 [ %i.ih, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.hp, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ia = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hz, align 16, !noalias !11819
  %i.ib = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 -384 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ib to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hy, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ie = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.if = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ig = zext nneg i16 %i.if to i64
  %i.ih = and i16 %i.ie, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ii = sub nsw i64 0, %i.ig
  %i.ij = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ii ; 2 uses
  %i.ik = add i64 %i.hx, -1                       ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.il, align 8, !alias.scope !11820, !noalias !11821 ; 2 uses
  %i.im = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.im, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.in = getelementptr i8, ptr %i.ij, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.in, align 8, !noalias !11821, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11822
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i", %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i, %bb.af
  %i.io = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond22.i.i.i.i = or i1 %i.ex, %i.io
  br i1 %or.cond22.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11823
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ag
  %i.ip = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.he, %bb.ag ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.hf ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, ptr %i.iq, align 8, !noalias !11824
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11824
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11824
  %i.ir = add nuw nsw i64 %i.hf, 1                ; 2 uses
  store i64 %i.ir, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11817, !noalias !11818
  %i.is = icmp eq i64 %i.hs, 0
  br i1 %i.is, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.al
  %i.it = landingpad { ptr, i32 }
          cleanup
  store i16 %i.hp, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !alias.scope !11811, !noalias !11812
  store i64 %i.hs, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !alias.scope !11825, !noalias !11812
  %i.iu = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11826
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.ag
  %i.iv = call i64 @llvm.uadd.sat.i64(i64 %i.hs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.hf, i64 noundef %i.iv, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.aj, !noalias !11818

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.al
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11817, !noalias !11818
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"

bb.am:                                            ; preds = %bb.ac, %bb.ab
  %i.iw = icmp eq i64 %i.gb, 0
  br i1 %i.iw, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.am, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.am ] ; 2 uses
  %i.ix = phi i64 [ %i.jk, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.gb, %bb.am ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.am ] ; 2 uses
  %i.iy = phi i16 [ %i.jh, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fy, %bb.am ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.iy, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iz = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ja = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.iz, align 16, !noalias !11827
  %i.jb = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jc = getelementptr inbounds i8, ptr %i.ja, i64 -384 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.jb to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.iy, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.je = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.jf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jg = zext nneg i16 %i.jf to i64
  %i.jh = and i16 %i.je, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ji = sub nsw i64 0, %i.jg
  %i.jj = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ji ; 2 uses
  %i.jk = add i64 %i.ix, -1                       ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jl, align 8, !alias.scope !11828, !noalias !11829 ; 2 uses
  %i.jm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jm, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.jn = getelementptr i8, ptr %i.jj, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !noalias !11829, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11830
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.an, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.am
  %i.jo = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond23.i.i.i.i = or i1 %i.ex, %i.jo
  br i1 %or.cond23.i.i.i.i, label %bb.ih, label %bb.ao

bb.ao:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11831
  br label %bb.ih

_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i: ; preds = %bb.ai, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11792
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !11791 ; 7 uses
  %i.jp = icmp ult i64 %.pre.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.jp)
  %i.jq = icmp eq i64 %.pre.i.i, 0
  br i1 %i.jq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i", label %bb.aq

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i": ; preds = %bb.aa, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"
  store ptr null, ptr %i.dp, align 8, !alias.scope !11833, !noalias !11834
  %.sroa.5.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i62.i, align 8, !alias.scope !11833, !noalias !11834
  br label %bb.aw

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i
  %.val2.i.i.pre.i = load i64, ptr %i.g, align 8, !range !22, !alias.scope !11835, !noalias !11791 ; 2 uses
  store ptr null, ptr %i.dp, align 8, !alias.scope !11833, !noalias !11834
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11833, !noalias !11834
  call void @llvm.experimental.noalias.scope.decl(metadata !11835)
  %i.jr = icmp eq i64 %.val2.i.i.pre.i, 0
  br i1 %i.jr, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i"
  %i.js = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i = load ptr, ptr %i.js, align 8, !alias.scope !11835, !noalias !11791, !nonnull !21, !noundef !21
  %i.jt = mul nuw i64 %.val2.i.i.pre.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.jt, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !11836
  br label %bb.aw

bb.aq:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !11791, !nonnull !21, !noundef !21 ; 5 uses
  %i.jw = icmp eq i64 %.pre.i.i, 1
  br i1 %i.jw, label %bb.au, label %bb.ar, !prof !49

bb.ar:                                            ; preds = %bb.aq
  %i.jx = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.jx, label %bb.at, label %bb.as, !prof !49

bb.as:                                            ; preds = %bb.ar
end_hunk_0
begin_hunk_1_@"_ZN3fst3raw24StreamWithState$LT$A$GT$3new17h9edc151e04cbee57E":bb.a
  br i1 %or.cond.i.i17, label %bb.bs, label %bb.br, !prof !45

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1029, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1031) #57
          to label %.noexc26 unwind label %.loopexit.loopexit.split-lp.i

.noexc26:                                         ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.sw = sub nuw i64 %i.rz, %i.st                ; 2 uses
  %.not.i.i18 = icmp ult i64 %i.sw, %i.sq
  br i1 %.not.i.i18, label %.invoke482, label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, !prof !44

.invoke482:                                       ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i, %bb.bs
  %i.sx = phi i64 [ 0, %bb.bs ], [ %i.st, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ]
  %i.sy = phi i64 [ %i.sq, %bb.bs ], [ %i.rz, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ]
  %i.sz = phi i64 [ %i.sw, %bb.bs ], [ %i.rz, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ]
  %i.ta = phi ptr [ @1032, %bb.bs ], [ @1016, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.sx, i64 noundef %i.sy, i64 noundef %i.sz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ta) #57
          to label %.cont483 unwind label %.loopexit.loopexit.split-lp.i

.cont483:                                         ; preds = %.invoke482
  unreachable

bb.bt:                                            ; preds = %.lr.ph.i.i
  %i.tb = load i8, ptr %i.ac, align 1, !noalias !12788, !noundef !21 ; 2 uses
  %i.tc = and i8 %i.tb, 63                        ; 2 uses
  %i.td = icmp eq i8 %i.tc, 0                     ; 3 uses
  br i1 %i.td, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.te = zext nneg i8 %i.tc to i64
  %i.tf = getelementptr i8, ptr @1021, i64 %i.te
  %i.tg = getelementptr i8, ptr %i.tf, i64 -1
  br label %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i

bb.bv:                                            ; preds = %bb.bt
  %i.th = load i64, ptr %i.af, align 8, !noalias !12788, !noundef !21
  %i.ti = add i64 %i.th, -1                       ; 3 uses
  %i.tj = load i64, ptr %i.ag, align 8, !noalias !12788, !noundef !21 ; 2 uses
  %i.tk = icmp ult i64 %i.ti, %i.tj
  br i1 %i.tk, label %bb.bw, label %.invoke1171.i

bb.bw:                                            ; preds = %bb.bv
  %i.tl = load ptr, ptr %i.c, align 8, !noalias !12788, !nonnull !21, !align !37, !noundef !21
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.ti
  br label %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i

_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i: ; preds = %bb.bw, %bb.bu
  %.sroa.0.0.in.i10.i.i.peel.i = phi ptr [ %i.tm, %bb.bw ], [ %i.tg, %bb.bu ]
  %.sroa.0.0.i11.i.i.peel.i = load i8, ptr %.sroa.0.0.in.i10.i.i.peel.i, align 1, !noalias !12808, !noundef !21
  %i.tn = load i8, ptr %i.ah, align 2, !noalias !12788, !noundef !21 ; 3 uses
  %i.to = and i8 %i.tn, 15                        ; 3 uses
  %i.tp = zext nneg i8 %i.to to i64               ; 3 uses
  %i.tq = icmp eq i8 %i.to, 0
  br i1 %i.tq, label %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit._ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit_crit_edge.i.i.peel.i, label %bb.bx

bb.bx:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i
  %i.tr = lshr i8 %i.tn, 4                        ; 2 uses
  %i.ts = load i64, ptr %i.af, align 8, !noalias !12788, !noundef !21
  %.sroa.01.0.neg.i12.i.i.peel.i = sext i1 %i.td to i64
  %i.tt = xor i8 %i.tr, -1
  %i.tu = sext i8 %i.tt to i64
  %i.tv = add nsw i64 %i.tu, %.sroa.01.0.neg.i12.i.i.peel.i
  %i.tw = add i64 %i.tv, %i.ts                    ; 2 uses
  %i.tx = sub i64 %i.tw, %i.tp                    ; 3 uses
  %i.ty = load i64, ptr %i.ag, align 8, !noalias !12788, !noundef !21 ; 5 uses
  %i.tz = icmp ugt i64 %i.tx, %i.ty
  br i1 %i.tz, label %.invoke1173.i, label %bb.by, !prof !23

bb.by:                                            ; preds = %bb.bx
  %or.cond.i.i13.i.i.peel.i = icmp samesign ult i8 %i.to, 9
  br i1 %or.cond.i.i13.i.i.peel.i, label %bb.bz, label %.invoke1169.i, !prof !45

bb.bz:                                            ; preds = %bb.by
  %i.ua = sub nuw i64 %i.ty, %i.tx                ; 2 uses
  %.not.i.i14.i.i.peel.i = icmp ult i64 %i.ua, %i.tp
  br i1 %.not.i.i14.i.i.peel.i, label %.invoke1173.i, label %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i, !prof !44

_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit._ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit_crit_edge.i.i.peel.i: ; preds = %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i
  %.pre.i.i.peel.i = load i64, ptr %i.af, align 8, !noalias !12788
  %.pre43.i.i.peel.i = load i64, ptr %i.ag, align 8, !noalias !12788
  %.pre44.i.i.peel.i = lshr exact i8 %i.tn, 4     ; 2 uses
  %.pre45.i.i.peel.i = sext i1 %i.td to i64
  %.pre46.i.i.peel.i = xor i8 %.pre44.i.i.peel.i, -1
  %.pre48.i.i.peel.i = sext i8 %.pre46.i.i.peel.i to i64
  %.pre50.i.i.peel.i = add nsw i64 %.pre48.i.i.peel.i, %.pre45.i.i.peel.i
  %.pre52.i.i.peel.i = add i64 %.pre50.i.i.peel.i, %.pre.i.i.peel.i
  br label %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i

_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i: ; preds = %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit._ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit_crit_edge.i.i.peel.i, %bb.bz
  %.pre-phi53.i.i.peel.i = phi i64 [ %.pre52.i.i.peel.i, %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit._ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit_crit_edge.i.i.peel.i ], [ %i.tw, %bb.bz ] ; 3 uses
  %.pre-phi.i.i.peel.i = phi i8 [ %.pre44.i.i.peel.i, %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit._ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit_crit_edge.i.i.peel.i ], [ %i.tr, %bb.bz ] ; 2 uses
  %i.ub = phi i64 [ %.pre43.i.i.peel.i, %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit._ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit_crit_edge.i.i.peel.i ], [ %i.ty, %bb.bz ] ; 4 uses
  %i.uc = icmp ugt i64 %.pre-phi53.i.i.peel.i, %i.ub
  br i1 %i.uc, label %.invoke1173.i, label %bb.ca, !prof !23

bb.ca:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i
  %i.ud = add nsw i8 %.pre-phi.i.i.peel.i, -1
  %or.cond.i.i22.i.i.peel.i = icmp ult i8 %i.ud, 8
  br i1 %or.cond.i.i22.i.i.peel.i, label %bb.cb, label %.invoke1169.i, !prof !45

bb.cb:                                            ; preds = %bb.ca
  %i.ue = sub nuw i64 %i.ub, %.pre-phi53.i.i.peel.i ; 2 uses
  %i.uf = zext nneg i8 %.pre-phi.i.i.peel.i to i64 ; 2 uses
  %.not.i.i23.i.i.peel.i = icmp ult i64 %i.ue, %i.uf
  br i1 %.not.i.i23.i.i.peel.i, label %.invoke1173.i, label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, !prof !44

bb.cc:                                            ; preds = %.lr.ph.i.i
  %i.ug = load i8, ptr %i.ac, align 1, !noalias !12788, !noundef !21 ; 2 uses
  %i.uh = and i8 %i.ug, 63                        ; 2 uses
  %i.ui = icmp eq i8 %i.uh, 0
  br i1 %i.ui, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uj = zext nneg i8 %i.uh to i64
  %i.uk = getelementptr i8, ptr @1021, i64 %i.uj
  %i.ul = getelementptr i8, ptr %i.uk, i64 -1
  br label %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i

bb.ce:                                            ; preds = %bb.cc
  %i.um = load i64, ptr %i.af, align 8, !noalias !12788, !noundef !21
  %i.un = add i64 %i.um, -1                       ; 3 uses
  %i.uo = load i64, ptr %i.ag, align 8, !noalias !12788, !noundef !21 ; 2 uses
  %i.up = icmp ult i64 %i.un, %i.uo
  br i1 %i.up, label %bb.cf, label %.invoke1171.i

bb.cf:                                            ; preds = %bb.ce
  %i.uq = load ptr, ptr %i.c, align 8, !noalias !12788, !nonnull !21, !align !37, !noundef !21
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.un
  br label %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i

_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i: ; preds = %bb.cf, %bb.cd
  %.sroa.0.0.in.i.i.i.peel.i = phi ptr [ %i.ur, %bb.cf ], [ %i.ul, %bb.cd ]
  %.sroa.0.0.i9.i.i.peel.i = load i8, ptr %.sroa.0.0.in.i.i.i.peel.i, align 1, !noalias !12809, !noundef !21
  br label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i

_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i: ; preds = %bb.bs, %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i, %bb.cb
  %i.us = phi i8 [ %i.tb, %bb.cb ], [ %i.ug, %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i ], [ %i.rp, %bb.bs ]
  %.sroa.9.0.ph.i.peel.i = phi i8 [ %.sroa.0.0.i11.i.i.peel.i, %bb.cb ], [ %.sroa.0.0.i9.i.i.peel.i, %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i ], [ %i.sd, %bb.bs ]
  %i.ut = icmp ugt i8 %.sroa.9.0.ph.i.peel.i, %i.aj
  br i1 %i.ut, label %.loopexit355.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i
  %exitcond.not.i.peel.i = icmp eq i64 %.pre826.i, 1
  br i1 %exitcond.not.i.peel.i, label %.loopexit355.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.cg
  %i.uu = load i64, ptr %i.af, align 8, !noalias !12788 ; 6 uses
  %i.uv = and i8 %i.us, 63
  %i.uw = icmp eq i8 %i.uv, 0                     ; 3 uses
  %..i.i.i.i = sext i1 %i.uw to i64
  %i.ux = load i64, ptr %i.ad, align 8, !noalias !12788
  %i.uy = icmp ugt i64 %i.ux, 1
  %i.uz = icmp ugt i64 %.pre826.i, 32
  %or.cond.i.i.i.i = and i1 %i.uy, %i.uz          ; 2 uses
  %.sroa.01.0.neg.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 -256, i64 0 ; 2 uses
  %invariant.op.i = select i1 %i.uw, i64 -3, i64 -2
  %invariant.op1166.i = add nsw i64 %.sroa.01.0.neg.i.i.i.i, %invariant.op.i ; 4 uses
  %i.va = load i64, ptr %i.ag, align 8, !noalias !12788 ; 30 uses
  %i.vb = load ptr, ptr %i.c, align 8, !noalias !12788, !nonnull !21, !align !37 ; 2 uses
  %i.vc = load i8, ptr %i.ah, align 2, !noalias !12788
  %.fr202 = freeze i8 %i.vc                       ; 2 uses
  %i.vd = and i8 %.fr202, 15                      ; 3 uses
  %i.ve = zext nneg i8 %i.vd to i64               ; 8 uses
  %i.vf = icmp eq i8 %i.vd, 0                     ; 2 uses
  %i.vg = select i1 %or.cond.i.i.i.i, i64 -257, i64 -1
  %i.vh = lshr i8 %.fr202, 4                      ; 3 uses
  %narrow.i.i.i.i = add nuw nsw i8 %i.vh, 1
  %i.vi = zext nneg i8 %narrow.i.i.i.i to i64
  %or.cond.i.i.i.i.i = icmp samesign ult i8 %i.vd, 9 ; 2 uses
  %i.vj = mul i64 %.pre826.i, %i.vi
  %.reass.i.neg = add i64 %i.uu, %..i.i.i.i
  %.neg352.i = add i64 %.reass.i.neg, %i.vg
  %i.vk = add i64 %i.vj, %i.ve
  %invariant.op = sub i64 %.neg352.i, %i.vk       ; 3 uses
  %i.vl = zext nneg i8 %i.vh to i64               ; 7 uses
  %.neg3.i = select i1 %i.uw, i64 -2, i64 -1
  %factor.op.mul150 = sub nsw i64 0, %i.vl        ; 2 uses
  %.neg56 = add i64 %.neg3.i, %i.uu
  %i.vm = add i64 %.neg56, %.sroa.01.0.neg.i.i.i.i
  %i.vn = add i64 %.pre826.i, %i.vl
  %i.vo = sub i64 %i.vm, %i.vn                    ; 3 uses
  switch i8 %i.ro, label %default.unreachable962.i [
    i8 0, label %.invoke1169.i
    i8 1, label %.loopexit812.i
    i8 2, label %.peel.next.i.split
  ], !prof !95

.peel.next.i.split:                               ; preds = %.peel.next.i
  %i.vp = add nsw i8 %i.vh, -1
  %or.cond.i.i8 = icmp ult i8 %i.vp, 8
  br i1 %or.cond.i.i8, label %.peel.next.i.split.split.us, label %.peel.next.i.split.split, !prof !45

.peel.next.i.split.split.us:                      ; preds = %.peel.next.i.split
  br i1 %i.vf, label %.peel.next.i.split.split.us.split.us, label %.peel.next.i.split.split.us.split

.peel.next.i.split.split.us.split.us:             ; preds = %.peel.next.i.split.split.us, %bb.cj
  %i.vq = phi i64 [ %i.vr, %bb.cj ], [ 1, %.peel.next.i.split.split.us ] ; 5 uses
  %i.vr = add i64 %i.vq, 1                        ; 2 uses
  %reass.sub612.i.us.us = sub i64 %i.uu, %i.vq
  %.reass1167.i.us.us = add i64 %invariant.op1166.i, %reass.sub612.i.us.us ; 3 uses
  %i.vs = icmp ult i64 %.reass1167.i.us.us, %i.va
  br i1 %i.vs, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us, label %.invoke1171.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us: ; preds = %.peel.next.i.split.split.us.split.us
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.reass1167.i.us.us
  %i.vu = load i8, ptr %i.vt, align 1, !noalias !12810, !noundef !21
  %exitcond295.not = icmp eq i64 %i.vq, %.pre826.i
  br i1 %exitcond295.not, label %.invoke, label %bb.ch, !prof !23

bb.ch:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us
  %.reass151.us.us = mul i64 %i.vq, %factor.op.mul150
  %i.vv = add i64 %i.vo, %.reass151.us.us         ; 3 uses
  %i.vw = icmp ugt i64 %i.vv, %i.va
  br i1 %i.vw, label %.split162.us.invoke, label %bb.ci, !prof !23

bb.ci:                                            ; preds = %bb.ch
  %i.vx = sub nuw i64 %i.va, %i.vv                ; 2 uses
  %.not.i.i.us.us = icmp ult i64 %i.vx, %i.vl
  br i1 %.not.i.i.us.us, label %.split162.us.invoke, label %.lr.ph.preheader.i.i.us.us, !prof !44

.lr.ph.preheader.i.i.us.us:                       ; preds = %bb.ci
  %i.vy = icmp ugt i8 %i.vu, %i.aj
  br i1 %i.vy, label %.loopexit355.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.preheader.i.i.us.us
  %exitcond.not.i.i.us.us = icmp eq i64 %i.vr, %.pre826.i
  br i1 %exitcond.not.i.i.us.us, label %.loopexit355.i, label %.peel.next.i.split.split.us.split.us, !llvm.loop !12772

.peel.next.i.split.split.us.split:                ; preds = %.peel.next.i.split.split.us
  br i1 %or.cond.i.i.i.i.i, label %.peel.next.i.split.split.us.split.split.us, label %.peel.next.i.split.split.us.split.split, !prof !45

.peel.next.i.split.split.us.split.split.us:       ; preds = %.peel.next.i.split.split.us.split, %bb.cn
  %i.vz = phi i64 [ %i.wa, %bb.cn ], [ 1, %.peel.next.i.split.split.us.split ] ; 6 uses
  %i.wa = add i64 %i.vz, 1                        ; 2 uses
  %reass.sub612.i.us.us174 = sub i64 %i.uu, %i.vz
  %.reass1167.i.us.us175 = add i64 %invariant.op1166.i, %reass.sub612.i.us.us174 ; 3 uses
  %i.wb = icmp ult i64 %.reass1167.i.us.us175, %i.va
  br i1 %i.wb, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us176, label %.invoke1171.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us176: ; preds = %.peel.next.i.split.split.us.split.split.us
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.reass1167.i.us.us175
  %i.wd = load i8, ptr %i.wc, align 1, !noalias !12810, !noundef !21
  %i.we = mul i64 %i.vz, %i.ve
  %.reass.us.us = sub i64 %invariant.op, %i.we    ; 3 uses
  %i.wf = icmp ugt i64 %.reass.us.us, %i.va
  br i1 %i.wf, label %.invoke1173.i, label %bb.ck, !prof !23

bb.ck:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us176
  %i.wg = sub nuw i64 %i.va, %.reass.us.us        ; 2 uses
  %.not.i.i.i.i.i.us.us = icmp ult i64 %i.wg, %i.ve
  br i1 %.not.i.i.i.i.i.us.us, label %.invoke1173.i, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us177, !prof !44

_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us177: ; preds = %bb.ck
  %exitcond.not = icmp eq i64 %i.vz, %.pre826.i
  br i1 %exitcond.not, label %.invoke, label %bb.cl, !prof !23

bb.cl:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us177
  %.reass151.us.us178 = mul i64 %i.vz, %factor.op.mul150
  %i.wh = add i64 %i.vo, %.reass151.us.us178      ; 3 uses
  %i.wi = icmp ugt i64 %i.wh, %i.va
  br i1 %i.wi, label %.split162.us.invoke, label %bb.cm, !prof !23

bb.cm:                                            ; preds = %bb.cl
  %i.wj = sub nuw i64 %i.va, %i.wh                ; 2 uses
  %.not.i.i.us.us179 = icmp ult i64 %i.wj, %i.vl
  br i1 %.not.i.i.us.us179, label %.split162.us.invoke, label %.lr.ph.preheader.i.i.us.us180, !prof !44

.lr.ph.preheader.i.i.us.us180:                    ; preds = %bb.cm
  %i.wk = icmp ugt i8 %i.wd, %i.aj
  br i1 %i.wk, label %.loopexit355.i, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.preheader.i.i.us.us180
  %exitcond.not.i.i.us.us184 = icmp eq i64 %i.wa, %.pre826.i
  br i1 %exitcond.not.i.i.us.us184, label %.loopexit355.i, label %.peel.next.i.split.split.us.split.split.us, !llvm.loop !12772

.peel.next.i.split.split.us.split.split:          ; preds = %.peel.next.i.split.split.us.split
  %reass.sub612.i.us = add i64 %i.uu, -1
  %.reass1167.i.us = add i64 %invariant.op1166.i, %reass.sub612.i.us ; 2 uses
  %i.wl = icmp ult i64 %.reass1167.i.us, %i.va
  br i1 %i.wl, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us, label %.invoke1171.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us: ; preds = %.peel.next.i.split.split.us.split.split
  %.reass.us = sub i64 %invariant.op, %i.ve       ; 2 uses
  %i.wm = icmp ugt i64 %.reass.us, %i.va
  br i1 %i.wm, label %.invoke1173.i, label %.invoke1169.i, !prof !23

.peel.next.i.split.split:                         ; preds = %.peel.next.i.split
  %reass.sub612.i = add i64 %i.uu, -1
  %.reass1167.i = add i64 %invariant.op1166.i, %reass.sub612.i ; 2 uses
  %i.wn = icmp ult i64 %.reass1167.i, %i.va
  br i1 %i.wn, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i, label %.invoke1171.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i: ; preds = %.peel.next.i.split.split
  br i1 %i.vf, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i, label %bb.co

bb.co:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i
  %.reass = sub i64 %invariant.op, %i.ve          ; 3 uses
  %i.wo = icmp ugt i64 %.reass, %i.va
  br i1 %i.wo, label %.invoke1173.i, label %bb.cp, !prof !23

bb.cp:                                            ; preds = %bb.co
  br i1 %or.cond.i.i.i.i.i, label %bb.cq, label %.invoke1169.i, !prof !45

bb.cq:                                            ; preds = %bb.cp
  %i.wp = sub nuw i64 %i.va, %.reass              ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.wp, %i.ve
  br i1 %.not.i.i.i.i.i, label %.invoke1173.i, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i, !prof !44

_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i: ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i, %bb.cq
  %i.wq = sub i64 %i.vo, %i.vl                    ; 2 uses
  %i.wr = icmp ugt i64 %i.wq, %i.va
  br i1 %i.wr, label %.split162.us.invoke, label %.invoke, !prof !23

.invoke:                                          ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us177, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i
  %i.ws = phi ptr [ @1029, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1014, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ @1014, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us177 ]
  %i.wt = phi i64 [ 44, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ 33, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ 33, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us177 ]
  %i.wu = phi ptr [ @1031, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1015, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ @1015, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us177 ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ws, i64 noundef %i.wt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wu) #57
          to label %.cont unwind label %.loopexit.loopexit.i

.cont:                                            ; preds = %.invoke
  unreachable

.split162.us.invoke:                              ; preds = %bb.cl, %bb.cm, %bb.ch, %bb.ci, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i
  %i.wv = phi i64 [ %i.wq, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ 0, %bb.ci ], [ %i.vv, %bb.ch ], [ 0, %bb.cm ], [ %i.wh, %bb.cl ]
  %i.ww = phi i64 [ %i.va, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ %i.vl, %bb.ci ], [ %i.va, %bb.ch ], [ %i.vl, %bb.cm ], [ %i.va, %bb.cl ]
  %i.wx = phi i64 [ %i.va, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ %i.vx, %bb.ci ], [ %i.va, %bb.ch ], [ %i.wj, %bb.cm ], [ %i.va, %bb.cl ]
  %i.wy = phi ptr [ @1016, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1032, %bb.ci ], [ @1016, %bb.ch ], [ @1032, %bb.cm ], [ @1016, %bb.cl ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.wv, i64 noundef %i.ww, i64 noundef %i.wx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wy) #57
          to label %.split162.us.cont unwind label %.loopexit.loopexit.i

.split162.us.cont:                                ; preds = %.split162.us.invoke
  unreachable

.loopexit812.i:                                   ; preds = %.peel.next.i, %bb.x
  br label %.invoke1169.i

.loopexit355.i:                                   ; preds = %.lr.ph.preheader.i.i.us.us180, %bb.cn, %.lr.ph.preheader.i.i.us.us, %bb.cj, %bb.cg, %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, %.thread308.i
  %.sroa.0.0.i203.i = phi i64 [ 0, %.thread308.i ], [ %i.vq, %.lr.ph.preheader.i.i.us.us ], [ 0, %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i ], [ 1, %bb.cg ], [ %.pre826.i, %bb.cj ], [ %.pre826.i, %bb.cn ], [ %i.vz, %.lr.ph.preheader.i.i.us.us180 ]
  %i.wz = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12811, !noalias !12812, !noundef !21 ; 3 uses
  %i.xa = load i64, ptr %i.k, align 8, !range !22, !alias.scope !12811, !noalias !12812, !noundef !21
  %i.xb = icmp eq i64 %i.wz, %i.xa
  br i1 %i.xb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.loopexit355.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h55770e63b21f6089E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1004)
          to label %bb.cs unwind label %.loopexit.split-lp.i, !noalias !12786

bb.cs:                                            ; preds = %bb.cr, %.loopexit355.i
  %i.xc = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !12811, !noalias !12812, !nonnull !21, !noundef !21
  %i.xd = getelementptr inbounds nuw [80 x i8], ptr %i.xc, i64 %i.wz ; 3 uses
  store i64 %.sroa.0.0.i203.i, ptr %i.xd, align 8, !noalias !12786
  %.sroa.4248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  store i64 %.sroa.04.0608.i, ptr %.sroa.4248.0..sroa_idx.i, align 8, !noalias !12786
  %.sroa.5249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !12786
  %i.xe = add i64 %i.wz, 1
  br label %bb.ct

bb.ct:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$$LP$$RP$$GT$$GT$$GT$17h63f99bd93466dc93E.exit.i", %bb.cs
  %storemerge = phi i64 [ %i.xe, %bb.cs ], [ 1, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$$LP$$RP$$GT$$GT$$GT$17h63f99bd93466dc93E.exit.i" ]
  store i64 %storemerge, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12785, !noalias !12786
  switch i64 %.sroa.0.0.copyload, label %bb.dj [
    i64 0, label %bb.cu
    i64 1, label %bb.cv
  ]

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i": ; preds = %bb.cv, %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload) ]
  br label %.sink.split

bb.cu:                                            ; preds = %bb.ct
  %i.xf = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.xf, label %bb.dj, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i"

bb.cv:                                            ; preds = %bb.ct
  %i.xg = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.xg, label %bb.dj, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i"

bb.cw:                                            ; preds = %bb.da, %bb.cz, %bb.cx
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i: ; preds = %.noexc42.i, %.noexc38.i, %.noexc36.i
  %.sroa.7.0.i316322.i = phi i64 [ 1, %.noexc38.i ], [ 1, %.noexc42.i ], [ %i.no, %.noexc36.i ]
  %.sroa.6243.0.i = phi i64 [ %i.nq, %.noexc38.i ], [ %.sroa.0.0.i198.i, %.noexc42.i ], [ %.sroa.0.0.i163.i, %.noexc36.i ]
  %.sroa.0242.0.i = phi i64 [ 0, %.noexc38.i ], [ %.sroa.0.0.i185.i, %.noexc42.i ], [ %.sroa.0.0.i148.i, %.noexc36.i ]
  %i.xi = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12813, !noalias !12814, !noundef !21 ; 3 uses
  %i.xj = load i64, ptr %i.j, align 8, !range !22, !alias.scope !12813, !noalias !12814, !noundef !21
  %i.xk = icmp eq i64 %i.xi, %i.xj
  br i1 %i.xk, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1005)
          to label %bb.cy unwind label %bb.cw, !noalias !12786

bb.cy:                                            ; preds = %bb.cx, %_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i
  %i.xl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !12813, !noalias !12814, !nonnull !21, !noundef !21
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.xi
  store i8 %i.aj, ptr %i.xm, align 1, !noalias !12786
  %i.xn = add i64 %i.xi, 1
  store i64 %i.xn, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12813, !noalias !12814
  %i.xo = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12815, !noalias !12816, !noundef !21 ; 3 uses
  %i.xp = load i64, ptr %i.k, align 8, !range !22, !alias.scope !12815, !noalias !12816, !noundef !21
  %i.xq = icmp eq i64 %i.xo, %i.xp
  br i1 %i.xq, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h55770e63b21f6089E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1006)
          to label %bb.da unwind label %bb.cw, !noalias !12786

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.xr = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !12815, !noalias !12816, !nonnull !21, !noundef !21
  %i.xs = getelementptr inbounds nuw [80 x i8], ptr %i.xr, i64 %i.xo ; 3 uses
  store i64 %.sroa.7.0.i316322.i, ptr %i.xs, align 8, !noalias !12786
  %.sroa.4.0..sroa_idx245.i = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  store i64 %.sroa.04.0608.i, ptr %.sroa.4.0..sroa_idx245.i, align 8, !noalias !12786
  %.sroa.5246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5246.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !12786
  %i.xt = add i64 %i.xo, 1
  store i64 %i.xt, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12815, !noalias !12816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12788
  %i.xu = load ptr, ptr %i.i, align 8, !alias.scope !12785, !noalias !12786, !nonnull !21, !align !27, !noundef !21
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !noalias !12786, !noundef !21
  %i.xx = load ptr, ptr %i.t, align 8, !alias.scope !12785, !noalias !12786, !nonnull !21, !align !37, !noundef !21
  %i.xy = load i64, ptr %i.v, align 8, !alias.scope !12785, !noalias !12786, !noundef !21
  invoke void @_ZN3fst3raw4node4Node3new17h18cbd418bf54876bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, i64 noundef %i.xw, i64 noundef %.sroa.6243.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xx, i64 noundef %i.xy)
          to label %bb.db unwind label %bb.cw, !noalias !12786

bb.db:                                            ; preds = %bb.da
  %i.xz = add i64 %.sroa.0242.0.i, %.sroa.04.0608.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !12788
end_hunk_1
