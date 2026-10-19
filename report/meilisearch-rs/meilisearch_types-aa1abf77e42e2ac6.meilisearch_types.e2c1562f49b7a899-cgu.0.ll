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
  call void @llvm.experimental.noalias.scope.decl(metadata !11340)
  call void @llvm.experimental.noalias.scope.decl(metadata !11341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11343
  %i.fm = icmp eq i64 %.sroa.4396.sroa.5.0.copyload, 0
  br i1 %i.fm, label %.thread.i.i.i.i.i.i, label %bb.x

.thread.i.i.i.i.i.i:                              ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11343
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
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fq, align 16, !noalias !11344
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
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !11345 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11343
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
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gg, align 16, !noalias !11346
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
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gs, align 8, !alias.scope !11347, !noalias !11348 ; 2 uses
  %i.gt = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gt, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gu = getelementptr i8, ptr %i.gq, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gu, align 8, !noalias !11348, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11349
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
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11350
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i"

bb.ab:                                            ; preds = %bb.ae
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, 0
  br i1 %i.gx, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11351
  br label %bb.am

bb.ad:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ga, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !11352 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11352
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.4396.sroa.5.0.copyload, i64 4) ; 3 uses
  %i.gy = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.4396.sroa.5.0.copyload, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !11353
  %i.ha = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gy, i64 noundef range(i64 1, 9) 8) #52, !noalias !11353 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.ad
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.ad ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ab, !noalias !11343

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ha, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hc = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.hc)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !11343
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11343
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11343
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !11343
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11343
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11343
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.d, align 8, !noalias !11354
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !11354
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !11354
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !11354
  %.sroa.13.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i.i.i.i, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !noalias !11354
  %.sroa.17.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.fl, ptr %.sroa.17.0..sroa_idx13.i.i.i.i, align 8, !noalias !11354
  %.sroa.1715.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i16 %i.fy, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !noalias !11354
  %.sroa.1919.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store i64 %i.gb, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !noalias !11354
  call void @llvm.experimental.noalias.scope.decl(metadata !11355)
  call void @llvm.experimental.noalias.scope.decl(metadata !11356)
  call void @llvm.experimental.noalias.scope.decl(metadata !11357)
  call void @llvm.experimental.noalias.scope.decl(metadata !11358)
  %i.hd = icmp eq i64 %i.gb, 0
  br i1 %i.hd, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"
  %i.he = phi ptr [ %i.ip, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.af ]
  %i.hf = phi i64 [ %i.ir, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.af ] ; 5 uses
  %.lcssa1225.i.i.i.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.af ] ; 2 uses
  %.lcssa1322.i.i.i.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.af ] ; 2 uses
  %i.hg = phi i16 [ %i.hp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.fy, %bb.af ] ; 2 uses
  %.val1617.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.gb, %bb.af ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11359)
  call void @llvm.experimental.noalias.scope.decl(metadata !11360)
  call void @llvm.experimental.noalias.scope.decl(metadata !11361)
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hg, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hl, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !11362, !noalias !11343
  store ptr %i.hk, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !11362, !noalias !11343
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1225.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hi = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1322.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hh, align 16, !noalias !11363
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
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ht, align 8, !noalias !11364 ; 4 uses
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.ag

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$std..collections..hash..set..IntoIter$LT$alloc..string..String$GT$$GT$17hba43583e2accb8a3E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #55, !noalias !11365
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #55, !noalias !11343
  br label %.loopexit.split-lp

bb.ag:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hr, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !11366 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hr, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11366
  %4 = icmp samesign ult i64 %i.hf, 384307168202282326
  call void @llvm.assume(i1 %4)
  %i.hu = load i64, ptr %i.e, align 8, !range !22, !alias.scope !11367, !noalias !11343, !noundef !21
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
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hz, align 16, !noalias !11368
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
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.il, align 8, !alias.scope !11369, !noalias !11370 ; 2 uses
  %i.im = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.im, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.in = getelementptr i8, ptr %i.ij, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.in, align 8, !noalias !11370, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11371
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i", %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i, %bb.af
  %i.io = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond22.i.i.i.i = or i1 %i.ex, %i.io
  br i1 %or.cond22.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11372
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ag
  %i.ip = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.he, %bb.ag ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.hf ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, ptr %i.iq, align 8, !noalias !11373
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11373
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11373
  %i.ir = add nuw nsw i64 %i.hf, 1                ; 2 uses
  store i64 %i.ir, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11367, !noalias !11343
  %i.is = icmp eq i64 %i.hs, 0
  br i1 %i.is, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.al
  %i.it = landingpad { ptr, i32 }
          cleanup
  store i16 %i.hp, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !alias.scope !11362, !noalias !11343
  store i64 %i.hs, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !alias.scope !11374, !noalias !11343
  %i.iu = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11375
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.ag
  %i.iv = call i64 @llvm.uadd.sat.i64(i64 %i.hs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.hf, i64 noundef %i.iv, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.aj, !noalias !11376

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.al
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11367, !noalias !11343
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
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.iz, align 16, !noalias !11377
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
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jl, align 8, !alias.scope !11378, !noalias !11379 ; 2 uses
  %i.jm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jm, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.jn = getelementptr i8, ptr %i.jj, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !noalias !11379, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11380
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.an, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.am
  %i.jo = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond23.i.i.i.i = or i1 %i.ex, %i.jo
  br i1 %or.cond23.i.i.i.i, label %.loopexit.split-lp, label %bb.ao

bb.ao:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11381
  br label %.loopexit.split-lp

_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i: ; preds = %bb.ai, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11343
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !11342 ; 7 uses
  %i.jp = icmp ult i64 %.pre.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.jp)
  %i.jq = icmp eq i64 %.pre.i.i, 0
  br i1 %i.jq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i", label %bb.aq

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i": ; preds = %bb.aa, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"
  store ptr null, ptr %i.dp, align 8, !alias.scope !11383
  %.sroa.5.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i62.i, align 8, !alias.scope !11383
  br label %bb.aw

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i
  %.val2.i.i.pre.i = load i64, ptr %i.g, align 8, !range !22, !alias.scope !11384, !noalias !11342 ; 2 uses
  store ptr null, ptr %i.dp, align 8, !alias.scope !11383
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11383
  call void @llvm.experimental.noalias.scope.decl(metadata !11384)
  %i.jr = icmp eq i64 %.val2.i.i.pre.i, 0
  br i1 %i.jr, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i"
  %i.js = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i = load ptr, ptr %i.js, align 8, !alias.scope !11384, !noalias !11342, !nonnull !21, !noundef !21
  %i.jt = mul nuw i64 %.val2.i.i.pre.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.jt, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !11385
  br label %bb.aw

bb.aq:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !11342, !nonnull !21, !noundef !21 ; 5 uses
  %i.jw = icmp eq i64 %.pre.i.i, 1
  br i1 %i.jw, label %bb.au, label %bb.ar, !prof !49

bb.ar:                                            ; preds = %bb.aq
  %i.jx = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.jx, label %bb.at, label %bb.as, !prof !49

bb.as:                                            ; preds = %bb.ar
end_hunk_0
begin_hunk_1_@"_ZN3fst3raw24StreamWithState$LT$A$GT$3new17h9edc151e04cbee57E":bb.a
  %i.rk = load ptr, ptr %i.c, align 8, !noalias !12301, !nonnull !21, !align !37 ; 4 uses
  %i.rl = load i8, ptr %i.ag, align 2, !noalias !12301
  %.fr180 = freeze i8 %i.rl                       ; 2 uses
  %i.rm = and i8 %.fr180, 15                      ; 3 uses
  %i.rn = zext nneg i8 %i.rm to i64               ; 14 uses
  %i.ro = icmp eq i8 %i.rm, 0                     ; 4 uses
  %i.rp = select i1 %or.cond.i.i.i.i, i64 -257, i64 -1
  %i.rq = lshr i8 %.fr180, 4                      ; 6 uses
  %narrow.i.i.i.i = add nuw nsw i8 %i.rq, 1
  %i.rr = zext nneg i8 %narrow.i.i.i.i to i64
  %i.rs = mul i64 %i.rd, %i.rr                    ; 2 uses
  %invariant.op614.i = add i64 %i.rp, %i.rf       ; 2 uses
  %or.cond.i.i.i.i.i = icmp samesign ult i8 %i.rm, 9 ; 4 uses
  %i.rt = add i64 %i.rf, -1                       ; 4 uses
  %i.ru = icmp ult i64 %i.rt, %i.rj               ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rt ; 2 uses
  %i.rw = xor i8 %i.rq, -1
  %i.rx = sext i8 %i.rw to i64
  %invariant.op616.i = add i64 %i.rf, %i.rx
  %cond.i = icmp eq i8 %i.re, 3
  br i1 %cond.i, label %.invoke1136.i, label %.lr.ph.i.split.preheader.i, !prof !12319

.lr.ph.i.split.preheader.i:                       ; preds = %.lr.ph.i.i
  %i.ry = zext nneg i8 %i.rq to i64               ; 12 uses
  %i.rz = load i8, ptr %i.ab, align 1, !noalias !12301, !noundef !21
  %i.sa = and i8 %i.rz, 63                        ; 3 uses
  %i.sb = icmp eq i8 %i.sa, 0                     ; 7 uses
  switch i8 %i.re, label %default.unreachable [
    i8 0, label %bb.bz
    i8 1, label %bb.br
    i8 2, label %bb.bl
  ], !prof !95

bb.bl:                                            ; preds = %.lr.ph.i.split.preheader.i
  %..i.i.i.peel.i = sext i1 %i.sb to i64          ; 2 uses
  %i.sc = add i64 %.sroa.01.0.neg.i.i.i.i, %invariant.op.i
  %i.sd = add i64 %i.sc, %..i.i.i.peel.i          ; 3 uses
  %i.se = icmp ult i64 %i.sd, %i.rj
  br i1 %i.se, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.peel.i, label %.invoke1134.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.peel.i: ; preds = %bb.bl
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.sd
  %i.sg = load i8, ptr %i.sf, align 1, !noalias !12320, !noundef !21
  br i1 %i.ro, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.peel.i
  %i.sh = add i64 %i.rs, %i.rn
  %i.si = sub i64 %invariant.op614.i, %i.sh
  %i.sj = add i64 %i.si, %..i.i.i.peel.i          ; 3 uses
  %i.sk = icmp ugt i64 %i.sj, %i.rj
  br i1 %i.sk, label %.invoke, label %bb.bn, !prof !23

bb.bn:                                            ; preds = %bb.bm
  br i1 %or.cond.i.i.i.i.i, label %bb.bo, label %.invoke428, !prof !45

bb.bo:                                            ; preds = %bb.bn
  %i.sl = sub nuw i64 %i.rj, %i.sj                ; 2 uses
  %.not.i.i.i.i.peel.i = icmp ult i64 %i.sl, %i.rn
  br i1 %.not.i.i.i.i.peel.i, label %.invoke, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i, !prof !44

_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i: ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.peel.i, %bb.bo
  %.neg3.i16 = select i1 %i.sb, i64 -2, i64 -1
  %i.sm = add i64 %i.rf, %.neg3.i16
  %i.sn = add i64 %i.rd, %i.ry
  %i.so = sub i64 %i.sm, %i.sn
  %i.sp = add i64 %i.so, %.sroa.01.0.neg.i.i.i.i  ; 3 uses
  %i.sq = icmp ugt i64 %i.sp, %i.rj
  br i1 %i.sq, label %.invoke, label %bb.bp, !prof !23

bb.bp:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i
  %i.sr = add nsw i8 %i.rq, -1
  %or.cond.i.i17 = icmp ult i8 %i.sr, 8
  br i1 %or.cond.i.i17, label %bb.bq, label %.invoke428, !prof !45

.invoke428:                                       ; preds = %bb.ba, %.noexc35.i, %bb.bd, %bb.bh, %bb.bj, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us, %bb.v, %bb.w, %bb.z, %.noexc46.i, %bb.ac, %bb.al, %bb.an, %bb.bn, %bb.bv, %bb.bx, %.loopexit825.invoke.i.loopexit.split, %.lr.ph.i.split.peel.next.i, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us, %bb.cl, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i, %bb.bp
  %i.ss = phi ptr [ @1029, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1014, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ @1029, %bb.bp ], [ @1014, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156 ], [ @1024, %.loopexit825.invoke.i.loopexit.split ], [ @1029, %bb.bv ], [ @1029, %bb.bx ], [ @1029, %bb.bn ], [ @1014, %.noexc46.i ], [ @1029, %bb.z ], [ @1029, %bb.ac ], [ @1029, %bb.an ], [ @1024, %.lr.ph.i.split.peel.next.i ], [ @1024, %bb.w ], [ @1029, %bb.al ], [ @1024, %bb.v ], [ @1029, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us ], [ @1029, %bb.cl ], [ @1029, %bb.ba ], [ @1014, %.noexc35.i ], [ @1029, %bb.bd ], [ @1029, %bb.bh ], [ @1029, %bb.bj ]
  %i.st = phi i64 [ 44, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ 33, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ 44, %bb.bp ], [ 33, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156 ], [ 24, %.loopexit825.invoke.i.loopexit.split ], [ 44, %bb.bv ], [ 44, %bb.bx ], [ 44, %bb.bn ], [ 33, %.noexc46.i ], [ 44, %bb.z ], [ 44, %bb.ac ], [ 44, %bb.an ], [ 24, %.lr.ph.i.split.peel.next.i ], [ 24, %bb.w ], [ 44, %bb.al ], [ 24, %bb.v ], [ 44, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us ], [ 44, %bb.cl ], [ 44, %bb.ba ], [ 33, %.noexc35.i ], [ 44, %bb.bd ], [ 44, %bb.bh ], [ 44, %bb.bj ]
  %i.su = phi ptr [ @1031, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1015, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ @1031, %bb.bp ], [ @1015, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156 ], [ @1025, %.loopexit825.invoke.i.loopexit.split ], [ @1031, %bb.bv ], [ @1031, %bb.bx ], [ @1031, %bb.bn ], [ @1015, %.noexc46.i ], [ @1031, %bb.z ], [ @1031, %bb.ac ], [ @1031, %bb.an ], [ @1026, %.lr.ph.i.split.peel.next.i ], [ @1026, %bb.w ], [ @1031, %bb.al ], [ @1025, %bb.v ], [ @1031, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us ], [ @1031, %bb.cl ], [ @1031, %bb.ba ], [ @1015, %.noexc35.i ], [ @1031, %bb.bd ], [ @1031, %bb.bh ], [ @1031, %bb.bj ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ss, i64 noundef %i.st, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.su) #57
          to label %.cont429 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont429:                                         ; preds = %.invoke428
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.sv = sub nuw i64 %i.rj, %i.sp                ; 2 uses
  %.not.i.i18 = icmp ult i64 %i.sv, %i.ry
  br i1 %.not.i.i18, label %.invoke, label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, !prof !44

.invoke:                                          ; preds = %bb.o, %bb.az, %bb.bb, %bb.bc, %bb.be, %bb.bg, %bb.bi, %.noexc41.i, %bb.bk, %bb.cg, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155, %bb.ch, %bb.ci, %bb.cd, %bb.ce, %bb.y, %bb.aa, %bb.ab, %bb.ad, %bb.ak, %bb.am, %.noexc52.i, %bb.ao, %bb.bm, %bb.bo, %bb.bu, %bb.bw, %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i, %bb.by, %bb.cm, %bb.ck, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i, %bb.bq
  %i.sw = phi i64 [ 0, %bb.bq ], [ %i.ul, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us ], [ 0, %bb.cm ], [ %i.sp, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ], [ 0, %bb.ce ], [ %.reass131.us.us158, %bb.ch ], [ %.reass131, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ 0, %bb.by ], [ %i.td, %bb.bu ], [ 0, %bb.bw ], [ %i.sj, %bb.bm ], [ 0, %bb.bo ], [ %i.gb, %bb.ak ], [ 0, %bb.am ], [ %i.dt, %bb.ab ], [ 0, %bb.ad ], [ %i.dl, %bb.y ], [ 0, %bb.aa ], [ %i.uo, %bb.ck ], [ %.pre52.i.i.reass.peel.i, %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i ], [ %.pre-phi849.i, %.noexc52.i ], [ 0, %bb.ao ], [ %.reass131.us.us, %bb.cd ], [ 0, %bb.ci ], [ %i.ue, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155 ], [ 0, %bb.cg ], [ %i.bt, %bb.o ], [ 0, %bb.bb ], [ %i.jl, %bb.az ], [ 0, %bb.be ], [ 0, %bb.bi ], [ %.pre859.i, %.noexc41.i ], [ %i.lk, %bb.bc ], [ %i.nm, %bb.bg ], [ 0, %bb.bk ]
  %i.sx = phi i64 [ %i.ry, %bb.bq ], [ %i.rj, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us ], [ %i.rn, %bb.cm ], [ %i.rj, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ], [ %i.ry, %bb.ce ], [ %i.rj, %bb.ch ], [ %i.rj, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ %i.ry, %bb.by ], [ %i.rj, %bb.bu ], [ %i.rn, %bb.bw ], [ %i.rj, %bb.bm ], [ %i.rn, %bb.bo ], [ %.sroa.10259.0.copyload.i, %bb.ak ], [ %i.fv, %bb.am ], [ %.sroa.10259.0.copyload.i, %bb.ab ], [ %i.dq, %bb.ad ], [ %.sroa.10259.0.copyload.i, %bb.y ], [ %i.df, %bb.aa ], [ %i.rj, %bb.ck ], [ %i.rj, %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i ], [ %.sroa.10259.0.copyload.i, %.noexc52.i ], [ %i.gi, %bb.ao ], [ %i.rj, %bb.cd ], [ %i.ry, %bb.ci ], [ %i.rj, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155 ], [ %i.rn, %bb.cg ], [ %i.bs, %bb.o ], [ %i.jf, %bb.bb ], [ %i.iy, %bb.az ], [ %i.lj, %bb.be ], [ %i.nk, %bb.bi ], [ %.pre835.pre.pre.i, %.noexc41.i ], [ %i.iy, %bb.bc ], [ %.pre835.pre.pre.i, %bb.bg ], [ %i.pp, %bb.bk ]
  %i.sy = phi i64 [ %i.sv, %bb.bq ], [ %i.rj, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us ], [ %i.uq, %bb.cm ], [ %i.rj, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ], [ %i.tw, %bb.ce ], [ %i.rj, %bb.ch ], [ %i.rj, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ %i.ti, %bb.by ], [ %i.rj, %bb.bu ], [ %i.tf, %bb.bw ], [ %i.rj, %bb.bm ], [ %i.sl, %bb.bo ], [ %.sroa.10259.0.copyload.i, %bb.ak ], [ %i.gd, %bb.am ], [ %.sroa.10259.0.copyload.i, %bb.ab ], [ %i.dx, %bb.ad ], [ %.sroa.10259.0.copyload.i, %bb.y ], [ %i.dn, %bb.aa ], [ %i.rj, %bb.ck ], [ %i.rj, %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i ], [ %.sroa.10259.0.copyload.i, %.noexc52.i ], [ %i.gh, %bb.ao ], [ %i.rj, %bb.cd ], [ %i.ui, %bb.ci ], [ %i.rj, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155 ], [ %i.ug, %bb.cg ], [ %i.bu, %bb.o ], [ %i.jo, %bb.bb ], [ %i.iy, %bb.az ], [ %i.lp, %bb.be ], [ %i.nq, %bb.bi ], [ %.pre835.pre.pre.i, %.noexc41.i ], [ %i.iy, %bb.bc ], [ %.pre835.pre.pre.i, %bb.bg ], [ %i.po, %bb.bk ]
  %i.sz = phi ptr [ @1032, %bb.bq ], [ @1018, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us ], [ @1032, %bb.cm ], [ @1016, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ], [ @1032, %bb.ce ], [ @1016, %bb.ch ], [ @1016, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1032, %bb.by ], [ @1022, %bb.bu ], [ @1032, %bb.bw ], [ @1018, %bb.bm ], [ @1032, %bb.bo ], [ @1022, %bb.ak ], [ @1032, %bb.am ], [ @1016, %bb.ab ], [ @1032, %bb.ad ], [ @1018, %bb.y ], [ @1032, %bb.aa ], [ @1018, %bb.ck ], [ @1019, %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i ], [ @1019, %.noexc52.i ], [ @1032, %bb.ao ], [ @1016, %bb.cd ], [ @1032, %bb.ci ], [ @1018, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155 ], [ @1032, %bb.cg ], [ @1012, %bb.o ], [ @1032, %bb.bb ], [ @1018, %bb.az ], [ @1032, %bb.be ], [ @1032, %bb.bi ], [ @1019, %.noexc41.i ], [ @1016, %bb.bc ], [ @1022, %bb.bg ], [ @1032, %bb.bk ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.sw, i64 noundef %i.sx, i64 noundef %i.sy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sz) #57
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.br:                                            ; preds = %.lr.ph.i.split.preheader.i
  br i1 %i.sb, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ta = zext nneg i8 %i.sa to i64
  %i.tb = getelementptr i8, ptr @1021, i64 %i.ta
  %i.tc = getelementptr i8, ptr %i.tb, i64 -1
  br label %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i

bb.bt:                                            ; preds = %bb.br
  br i1 %i.ru, label %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i, label %.invoke1134.i

_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i: ; preds = %bb.bt, %bb.bs
  %.sroa.0.0.in.i10.i.i.peel.i = phi ptr [ %i.tc, %bb.bs ], [ %i.rv, %bb.bt ]
  %.sroa.0.0.i11.i.i.peel.i = load i8, ptr %.sroa.0.0.in.i10.i.i.peel.i, align 1, !noalias !12321, !noundef !21
  %.pre45.i.i.peel.i = sext i1 %i.sb to i64
  %.pre52.i.i.reass.peel.i = add i64 %invariant.op616.i, %.pre45.i.i.peel.i ; 4 uses
  br i1 %i.ro, label %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i
  %i.td = sub i64 %.pre52.i.i.reass.peel.i, %i.rn ; 3 uses
  %i.te = icmp ugt i64 %i.td, %i.rj
  br i1 %i.te, label %.invoke, label %bb.bv, !prof !23

bb.bv:                                            ; preds = %bb.bu
  br i1 %or.cond.i.i.i.i.i, label %bb.bw, label %.invoke428, !prof !45

bb.bw:                                            ; preds = %bb.bv
  %i.tf = sub nuw i64 %i.rj, %i.td                ; 2 uses
  %.not.i.i14.i.i.peel.i = icmp ult i64 %i.tf, %i.rn
  br i1 %.not.i.i14.i.i.peel.i, label %.invoke, label %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i, !prof !44

_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i: ; preds = %bb.bw, %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i
  %i.tg = icmp ugt i64 %.pre52.i.i.reass.peel.i, %i.rj
  br i1 %i.tg, label %.invoke, label %bb.bx, !prof !23

bb.bx:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i
  %i.th = add nsw i8 %i.rq, -1
  %or.cond.i.i22.i.i.peel.i = icmp ult i8 %i.th, 8
  br i1 %or.cond.i.i22.i.i.peel.i, label %bb.by, label %.invoke428, !prof !45

bb.by:                                            ; preds = %bb.bx
  %i.ti = sub nuw i64 %i.rj, %.pre52.i.i.reass.peel.i ; 2 uses
  %.not.i.i23.i.i.peel.i = icmp ult i64 %i.ti, %i.ry
  br i1 %.not.i.i23.i.i.peel.i, label %.invoke, label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, !prof !44

bb.bz:                                            ; preds = %.lr.ph.i.split.preheader.i
  br i1 %i.sb, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tj = zext nneg i8 %i.sa to i64
  %i.tk = getelementptr i8, ptr @1021, i64 %i.tj
  %i.tl = getelementptr i8, ptr %i.tk, i64 -1
  br label %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i

bb.cb:                                            ; preds = %bb.bz
  br i1 %i.ru, label %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i, label %.invoke1134.i

_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i: ; preds = %bb.cb, %bb.ca
  %.sroa.0.0.in.i.i.i.peel.i = phi ptr [ %i.tl, %bb.ca ], [ %i.rv, %bb.cb ]
  %.sroa.0.0.i9.i.i.peel.i = load i8, ptr %.sroa.0.0.in.i.i.i.peel.i, align 1, !noalias !12322, !noundef !21
  br label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i

_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i: ; preds = %bb.bq, %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i, %bb.by
  %.sroa.9.0.ph.i.peel.i = phi i8 [ %.sroa.0.0.i11.i.i.peel.i, %bb.by ], [ %.sroa.0.0.i9.i.i.peel.i, %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i ], [ %i.sg, %bb.bq ]
  %i.tm = icmp ugt i8 %.sroa.9.0.ph.i.peel.i, %i.ai
  br i1 %i.tm, label %.loopexit355.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i
  %exitcond.not.i.peel.i = icmp eq i64 %i.rd, 1
  br i1 %exitcond.not.i.peel.i, label %.loopexit355.i, label %.lr.ph.i.split.peel.next.i

.lr.ph.i.split.peel.next.i:                       ; preds = %bb.cc
  %..i.i.i.i = sext i1 %i.sb to i64               ; 2 uses
  %invariant.op1128.i = add nsw i64 %.sroa.01.0.neg.i.i.i.i, %..i.i.i.i ; 4 uses
  %invariant.op = sub i64 %..i.i.i.i, %i.rs
  %factor.op.mul126 = sub nsw i64 0, %i.ry        ; 2 uses
  %invariant.op1130.i.neg = sub i64 %invariant.op614.i, %i.rn
  %.reass = add i64 %invariant.op1130.i.neg, %invariant.op ; 3 uses
  %.neg3.i = select i1 %i.sb, i64 -2, i64 -1
  %i.tn = add i64 %i.rf, %.neg3.i
  %i.to = add i64 %i.rd, %i.ry
  %invariant.op128 = sub i64 %i.tn, %i.to
  %invariant.op130 = add i64 %invariant.op128, %.sroa.01.0.neg.i.i.i.i ; 3 uses
  switch i8 %i.re, label %default.unreachable [
    i8 0, label %.loopexit825.invoke.i.loopexit.split
    i8 1, label %.invoke428
    i8 2, label %.lr.ph.i.split.peel.next.i.split
  ], !prof !95

.lr.ph.i.split.peel.next.i.split:                 ; preds = %.lr.ph.i.split.peel.next.i
  %i.tp = add nsw i8 %i.rq, -1
  %or.cond.i.i8 = icmp ult i8 %i.tp, 8
  br i1 %or.cond.i.i8, label %.lr.ph.i.split.peel.next.i.split.split.us, label %.lr.ph.i.split.i, !prof !45

.lr.ph.i.split.peel.next.i.split.split.us:        ; preds = %.lr.ph.i.split.peel.next.i.split
  br i1 %i.ro, label %.lr.ph.i.split.i.us.us, label %.lr.ph.i.split.peel.next.i.split.split.us.split

.lr.ph.i.split.i.us.us:                           ; preds = %.lr.ph.i.split.peel.next.i.split.split.us, %bb.cf
  %i.tq = phi i64 [ %i.tr, %bb.cf ], [ 1, %.lr.ph.i.split.peel.next.i.split.split.us ] ; 5 uses
  %i.tr = add i64 %i.tq, 1                        ; 2 uses
  %.reass.i.us.us = sub i64 %invariant.op.i, %i.tq
  %.reass1129.i.us.us = add i64 %invariant.op1128.i, %.reass.i.us.us ; 3 uses
  %i.ts = icmp ult i64 %.reass1129.i.us.us, %i.rj
  br i1 %i.ts, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us, label %.invoke1134.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us: ; preds = %.lr.ph.i.split.i.us.us
  %i.tt = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.reass1129.i.us.us
  %i.tu = load i8, ptr %i.tt, align 1, !noalias !12320, !noundef !21
  %exitcond253.not = icmp eq i64 %i.tq, %i.rd
  br i1 %exitcond253.not, label %.invoke428, label %bb.cd, !prof !23

bb.cd:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us
  %.reass127.us.us = mul i64 %i.tq, %factor.op.mul126
  %.reass131.us.us = add i64 %.reass127.us.us, %invariant.op130 ; 3 uses
  %i.tv = icmp ugt i64 %.reass131.us.us, %i.rj
  br i1 %i.tv, label %.invoke, label %bb.ce, !prof !23

bb.ce:                                            ; preds = %bb.cd
  %i.tw = sub nuw i64 %i.rj, %.reass131.us.us     ; 2 uses
  %.not.i.i.us.us = icmp ult i64 %i.tw, %i.ry
  br i1 %.not.i.i.us.us, label %.invoke, label %.lr.ph.preheader.i.i.us.us, !prof !44

.lr.ph.preheader.i.i.us.us:                       ; preds = %bb.ce
  %i.tx = icmp ugt i8 %i.tu, %i.ai
  br i1 %i.tx, label %.loopexit355.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.preheader.i.i.us.us
  %exitcond.not.i.i.us.us = icmp eq i64 %i.tr, %i.rd
  br i1 %exitcond.not.i.i.us.us, label %.loopexit355.i, label %.lr.ph.i.split.i.us.us, !llvm.loop !12290

.lr.ph.i.split.peel.next.i.split.split.us.split:  ; preds = %.lr.ph.i.split.peel.next.i.split.split.us
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.split.i.us.us152, label %.lr.ph.i.split.i.us, !prof !45

.lr.ph.i.split.i.us.us152:                        ; preds = %.lr.ph.i.split.peel.next.i.split.split.us.split, %bb.cj
  %i.ty = phi i64 [ %i.tz, %bb.cj ], [ 1, %.lr.ph.i.split.peel.next.i.split.split.us.split ] ; 6 uses
  %i.tz = add i64 %i.ty, 1                        ; 2 uses
  %.reass.i.us.us153 = sub i64 %invariant.op.i, %i.ty
  %.reass1129.i.us.us154 = add i64 %invariant.op1128.i, %.reass.i.us.us153 ; 3 uses
  %i.ua = icmp ult i64 %.reass1129.i.us.us154, %i.rj
  br i1 %i.ua, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155, label %.invoke1134.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155: ; preds = %.lr.ph.i.split.i.us.us152
  %i.ub = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.reass1129.i.us.us154
  %i.uc = load i8, ptr %i.ub, align 1, !noalias !12320, !noundef !21
  %i.ud = mul i64 %i.ty, %i.rn
  %i.ue = sub i64 %.reass, %i.ud                  ; 3 uses
  %i.uf = icmp ugt i64 %i.ue, %i.rj
  br i1 %i.uf, label %.invoke, label %bb.cg, !prof !23

bb.cg:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155
  %i.ug = sub nuw i64 %i.rj, %i.ue                ; 2 uses
  %.not.i.i.i.i.i.us.us = icmp ult i64 %i.ug, %i.rn
  br i1 %.not.i.i.i.i.i.us.us, label %.invoke, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156, !prof !44

_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156: ; preds = %bb.cg
  %exitcond.not = icmp eq i64 %i.ty, %i.rd
  br i1 %exitcond.not, label %.invoke428, label %bb.ch, !prof !23

bb.ch:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156
  %.reass127.us.us157 = mul i64 %i.ty, %factor.op.mul126
  %.reass131.us.us158 = add i64 %.reass127.us.us157, %invariant.op130 ; 3 uses
  %i.uh = icmp ugt i64 %.reass131.us.us158, %i.rj
  br i1 %i.uh, label %.invoke, label %bb.ci, !prof !23

bb.ci:                                            ; preds = %bb.ch
  %i.ui = sub nuw i64 %i.rj, %.reass131.us.us158  ; 2 uses
  %.not.i.i.us.us159 = icmp ult i64 %i.ui, %i.ry
  br i1 %.not.i.i.us.us159, label %.invoke, label %.lr.ph.preheader.i.i.us.us160, !prof !44

.lr.ph.preheader.i.i.us.us160:                    ; preds = %bb.ci
  %i.uj = icmp ugt i8 %i.uc, %i.ai
  br i1 %i.uj, label %.loopexit355.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.preheader.i.i.us.us160
  %exitcond.not.i.i.us.us164 = icmp eq i64 %i.tz, %i.rd
  br i1 %exitcond.not.i.i.us.us164, label %.loopexit355.i, label %.lr.ph.i.split.i.us.us152, !llvm.loop !12290

.lr.ph.i.split.i.us:                              ; preds = %.lr.ph.i.split.peel.next.i.split.split.us.split
  %.reass.i.us = add i64 %i.rf, -3
  %.reass1129.i.us = add i64 %invariant.op1128.i, %.reass.i.us ; 2 uses
  %i.uk = icmp ult i64 %.reass1129.i.us, %i.rj
  br i1 %i.uk, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us, label %.invoke1134.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us: ; preds = %.lr.ph.i.split.i.us
  %i.ul = sub i64 %.reass, %i.rn                  ; 2 uses
  %i.um = icmp ugt i64 %i.ul, %i.rj
  br i1 %i.um, label %.invoke, label %.invoke428, !prof !23

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.split.peel.next.i.split
  %.reass.i = add i64 %i.rf, -3
  %.reass1129.i = add i64 %invariant.op1128.i, %.reass.i ; 2 uses
  %i.un = icmp ult i64 %.reass1129.i, %i.rj
  br i1 %i.un, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i, label %.invoke1134.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i: ; preds = %.lr.ph.i.split.i
  br i1 %i.ro, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i
  %i.uo = sub i64 %.reass, %i.rn                  ; 3 uses
  %i.up = icmp ugt i64 %i.uo, %i.rj
  br i1 %i.up, label %.invoke, label %bb.cl, !prof !23

bb.cl:                                            ; preds = %bb.ck
  br i1 %or.cond.i.i.i.i.i, label %bb.cm, label %.invoke428, !prof !45

bb.cm:                                            ; preds = %bb.cl
  %i.uq = sub nuw i64 %i.rj, %i.uo                ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.uq, %i.rn
  br i1 %.not.i.i.i.i.i, label %.invoke, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i, !prof !44

_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i: ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i, %bb.cm
  %.reass131 = sub i64 %invariant.op130, %i.ry    ; 2 uses
  %i.ur = icmp ugt i64 %.reass131, %i.rj
  br i1 %i.ur, label %.invoke, label %.invoke428, !prof !23

.invoke1136.i:                                    ; preds = %.lr.ph.i.i, %bb.u
  invoke void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1027, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1028) #57
          to label %.cont1137.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12299

.cont1137.i:                                      ; preds = %.invoke1136.i
  unreachable

.invoke1134.i:                                    ; preds = %bb.bf, %.thread326.i, %bb.p, %bb.k, %bb.i, %.lr.ph.i.split.i.us.us152, %.lr.ph.i.split.i.us.us, %.lr.ph.i.split.i.us, %.lr.ph.i.split.i, %bb.cb, %bb.bt, %bb.bl, %bb.ai, %bb.af, %bb.x
  %i.us = phi i64 [ %i.rt, %bb.cb ], [ %i.rt, %bb.bt ], [ %i.dc, %bb.x ], [ %.reass1129.i, %.lr.ph.i.split.i ], [ %i.sd, %bb.bl ], [ %i.fs, %bb.ai ], [ %i.fn, %bb.af ], [ %.reass1129.i.us, %.lr.ph.i.split.i.us ], [ %.reass1129.i.us.us, %.lr.ph.i.split.i.us.us ], [ %.reass1129.i.us.us154, %.lr.ph.i.split.i.us.us152 ], [ %i.bz, %bb.p ], [ %i.ba, %bb.k ], [ %i.an, %bb.i ], [ %i.ng, %bb.bf ], [ %i.jb, %.thread326.i ]
  %i.ut = phi i64 [ %i.rj, %bb.cb ], [ %i.rj, %bb.bt ], [ %.sroa.10259.0.copyload.i, %bb.x ], [ %i.rj, %.lr.ph.i.split.i ], [ %i.rj, %bb.bl ], [ %.sroa.10259.0.copyload.i, %bb.ai ], [ %.sroa.10259.0.copyload.i, %bb.af ], [ %i.rj, %.lr.ph.i.split.i.us ], [ %i.rj, %.lr.ph.i.split.i.us.us ], [ %i.rj, %.lr.ph.i.split.i.us.us152 ], [ %i.ca, %bb.p ], [ %i.bb, %bb.k ], [ %i.ao, %bb.i ], [ %.pre835.pre.pre.i, %bb.bf ], [ %i.iy, %.thread326.i ]
  %i.uu = phi ptr [ @1023, %bb.cb ], [ @1020, %bb.bt ], [ @1017, %bb.x ], [ @1017, %.lr.ph.i.split.i ], [ @1017, %bb.bl ], [ @1020, %bb.ai ], [ @1023, %bb.af ], [ @1017, %.lr.ph.i.split.i.us ], [ @1017, %.lr.ph.i.split.i.us.us ], [ @1017, %.lr.ph.i.split.i.us.us152 ], [ @1013, %bb.p ], [ @1020, %bb.k ], [ @1023, %bb.i ], [ @1020, %bb.bf ], [ @1017, %.thread326.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.us, i64 noundef %i.ut, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uu) #57
          to label %.cont1135.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12299

.cont1135.i:                                      ; preds = %.invoke1134.i
  unreachable

.loopexit825.invoke.i.loopexit.split:             ; preds = %.lr.ph.i.split.peel.next.i
  br label %.invoke428

.loopexit355.i:                                   ; preds = %bb.cj, %.lr.ph.preheader.i.i.us.us160, %.lr.ph.preheader.i.i.us.us, %bb.cf, %bb.cc, %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, %.thread308.i
  %.sroa.0.0.i203.i = phi i64 [ 0, %.thread308.i ], [ 0, %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i ], [ 1, %bb.cc ], [ %i.tq, %.lr.ph.preheader.i.i.us.us ], [ %i.rd, %bb.cf ], [ %i.rd, %bb.cj ], [ %i.ty, %.lr.ph.preheader.i.i.us.us160 ]
  %i.uv = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12323, !noundef !21 ; 3 uses
  %i.uw = load i64, ptr %i.k, align 8, !range !22, !alias.scope !12323, !noundef !21
  %i.ux = icmp eq i64 %i.uv, %i.uw
  br i1 %i.ux, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.loopexit355.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h55770e63b21f6089E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1004)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12299

bb.co:                                            ; preds = %bb.cn, %.loopexit355.i
  %i.uy = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !12323, !nonnull !21, !noundef !21
  %i.uz = getelementptr inbounds nuw [80 x i8], ptr %i.uy, i64 %i.uv ; 3 uses
  store i64 %.sroa.0.0.i203.i, ptr %i.uz, align 8, !noalias !12299
  %.sroa.4248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  store i64 %.sroa.04.0611.i, ptr %.sroa.4248.0..sroa_idx.i, align 8, !noalias !12299
  %.sroa.5249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !12299
  %i.va = add i64 %i.uv, 1
  br label %bb.cp

bb.cp:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$$LP$$RP$$GT$$GT$$GT$17h63f99bd93466dc93E.exit.i", %bb.co
  %storemerge = phi i64 [ %i.va, %bb.co ], [ 1, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$$LP$$RP$$GT$$GT$$GT$17h63f99bd93466dc93E.exit.i" ]
  store i64 %storemerge, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12298
  switch i64 %.sroa.0.0.copyload, label %bb.de [
    i64 0, label %bb.cq
    i64 1, label %bb.cr
  ]

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i": ; preds = %bb.cr, %bb.cq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload) ]
  br label %.sink.split

bb.cq:                                            ; preds = %bb.cp
  %i.vb = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.vb, label %bb.de, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i"

bb.cr:                                            ; preds = %bb.cp
  %i.vc = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.vc, label %bb.de, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cv, %bb.cu, %bb.cs, %.invoke428, %.invoke, %bb.cz, %.thread.i, %bb.cn, %.invoke1134.i, %.invoke1136.i, %bb.aq, %_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit55.i, %.thread335.i
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i: ; preds = %.noexc42.i, %.noexc38.i, %.noexc36.i
  %.sroa.7.0.i316322.i = phi i64 [ 1, %.noexc38.i ], [ 1, %.noexc42.i ], [ %i.nd, %.noexc36.i ]
  %.sroa.6243.0.i = phi i64 [ %i.nf, %.noexc38.i ], [ %.sroa.0.0.i198.i, %.noexc42.i ], [ %.sroa.0.0.i163.i, %.noexc36.i ]
  %.sroa.0242.0.i = phi i64 [ 0, %.noexc38.i ], [ %.sroa.0.0.i185.i, %.noexc42.i ], [ %.sroa.0.0.i148.i, %.noexc36.i ]
  %i.vd = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12324, !noundef !21 ; 3 uses
  %i.ve = load i64, ptr %i.j, align 8, !range !22, !alias.scope !12324, !noundef !21
  %i.vf = icmp eq i64 %i.vd, %i.ve
  br i1 %i.vf, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1005)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12299

bb.ct:                                            ; preds = %bb.cs, %_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i
  %i.vg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !12324, !nonnull !21, !noundef !21
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vd
  store i8 %i.ai, ptr %i.vh, align 1, !noalias !12299
  %i.vi = add i64 %i.vd, 1
  store i64 %i.vi, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12324
  %i.vj = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12325, !noundef !21 ; 3 uses
  %i.vk = load i64, ptr %i.k, align 8, !range !22, !alias.scope !12325, !noundef !21
  %i.vl = icmp eq i64 %i.vj, %i.vk
  br i1 %i.vl, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h55770e63b21f6089E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1006)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12299

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.vm = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !12325, !nonnull !21, !noundef !21
  %i.vn = getelementptr inbounds nuw [80 x i8], ptr %i.vm, i64 %i.vj ; 3 uses
  store i64 %.sroa.7.0.i316322.i, ptr %i.vn, align 8, !noalias !12299
  %.sroa.4.0..sroa_idx245.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store i64 %.sroa.04.0611.i, ptr %.sroa.4.0..sroa_idx245.i, align 8, !noalias !12299
  %.sroa.5246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5246.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !12299
  %i.vo = add i64 %i.vj, 1
  store i64 %i.vo, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12301
  %i.vp = load ptr, ptr %i.i, align 8, !alias.scope !12298, !nonnull !21, !align !27, !noundef !21
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load i64, ptr %i.vq, align 8, !noalias !12299, !noundef !21
  %i.vs = load ptr, ptr %i.t, align 8, !alias.scope !12298, !nonnull !21, !align !37, !noundef !21
  %i.vt = load i64, ptr %i.v, align 8, !alias.scope !12298, !noundef !21
  invoke void @_ZN3fst3raw4node4Node3new17h18cbd418bf54876bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, i64 noundef %i.vr, i64 noundef %.sroa.6243.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.vs, i64 noundef %i.vt)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12299

bb.cw:                                            ; preds = %bb.cv
  %i.vu = add i64 %.sroa.0242.0.i, %.sroa.04.0611.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !12301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12301
  %i.vv = icmp ne ptr %.sroa.028.1613.i, %i.z     ; 2 uses
  %.sroa.028.1.idx.i = zext i1 %i.vv to i64
  %.sroa.028.1.i = getelementptr inbounds nuw i8, ptr %.sroa.028.1613.i, i64 %.sroa.028.1.idx.i
end_hunk_1
