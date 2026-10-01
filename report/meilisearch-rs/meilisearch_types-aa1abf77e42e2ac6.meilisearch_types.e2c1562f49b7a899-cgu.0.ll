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
  call void @llvm.experimental.noalias.scope.decl(metadata !11775)
  call void @llvm.experimental.noalias.scope.decl(metadata !11776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11778
  %i.fm = icmp eq i64 %.sroa.4396.sroa.5.0.copyload, 0
  br i1 %i.fm, label %.thread.i.i.i.i.i.i, label %bb.x

.thread.i.i.i.i.i.i:                              ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11778
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
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fq, align 16, !noalias !11779
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
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !11780 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11778
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
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gg, align 16, !noalias !11781
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
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gs, align 8, !alias.scope !11782, !noalias !11783 ; 2 uses
  %i.gt = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gt, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gu = getelementptr i8, ptr %i.gq, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gu, align 8, !noalias !11783, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11784
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
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11785
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i"

bb.ab:                                            ; preds = %bb.ae
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, 0
  br i1 %i.gx, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11786
  br label %bb.am

bb.ad:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ga, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !11787 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11787
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.4396.sroa.5.0.copyload, i64 4) ; 3 uses
  %i.gy = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.4396.sroa.5.0.copyload, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !11788
  %i.ha = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gy, i64 noundef range(i64 1, 9) 8) #52, !noalias !11788 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.ad
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.ad ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ab, !noalias !11778

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ha, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hc = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.hc)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !11778
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11778
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11778
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !11778
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11778
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11778
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.d, align 8, !noalias !11789
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !11789
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !11789
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !11789
  %.sroa.13.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i.i.i.i, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !noalias !11789
  %.sroa.17.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.fl, ptr %.sroa.17.0..sroa_idx13.i.i.i.i, align 8, !noalias !11789
  %.sroa.1715.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i16 %i.fy, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !noalias !11789
  %.sroa.1919.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store i64 %i.gb, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !noalias !11789
  call void @llvm.experimental.noalias.scope.decl(metadata !11790)
  call void @llvm.experimental.noalias.scope.decl(metadata !11791)
  call void @llvm.experimental.noalias.scope.decl(metadata !11792)
  call void @llvm.experimental.noalias.scope.decl(metadata !11793)
  %i.hd = icmp eq i64 %i.gb, 0
  br i1 %i.hd, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"
  %i.he = phi ptr [ %i.ip, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.af ]
  %i.hf = phi i64 [ %i.ir, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.af ] ; 5 uses
  %.lcssa1225.i.i.i.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.af ] ; 2 uses
  %.lcssa1322.i.i.i.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.af ] ; 2 uses
  %i.hg = phi i16 [ %i.hp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.fy, %bb.af ] ; 2 uses
  %.val1617.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.gb, %bb.af ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11794)
  call void @llvm.experimental.noalias.scope.decl(metadata !11795)
  call void @llvm.experimental.noalias.scope.decl(metadata !11796)
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hg, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hl, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !11797, !noalias !11798
  store ptr %i.hk, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !11797, !noalias !11798
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1225.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hi = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1322.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hh, align 16, !noalias !11799
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
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ht, align 8, !noalias !11800 ; 4 uses
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.ag

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$std..collections..hash..set..IntoIter$LT$alloc..string..String$GT$$GT$17hba43583e2accb8a3E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #55, !noalias !11801
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #55, !noalias !11778
  br label %bb.ih

bb.ag:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hr, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !11802 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hr, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11802
  %4 = icmp samesign ult i64 %i.hf, 384307168202282326
  call void @llvm.assume(i1 %4)
  %i.hu = load i64, ptr %i.e, align 8, !range !22, !alias.scope !11803, !noalias !11804, !noundef !21
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
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hz, align 16, !noalias !11805
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
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.il, align 8, !alias.scope !11806, !noalias !11807 ; 2 uses
  %i.im = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.im, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.in = getelementptr i8, ptr %i.ij, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.in, align 8, !noalias !11807, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11808
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i", %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i, %bb.af
  %i.io = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond22.i.i.i.i = or i1 %i.ex, %i.io
  br i1 %or.cond22.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11809
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ag
  %i.ip = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.he, %bb.ag ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.hf ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, ptr %i.iq, align 8, !noalias !11810
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11810
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11810
  %i.ir = add nuw nsw i64 %i.hf, 1                ; 2 uses
  store i64 %i.ir, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11803, !noalias !11804
  %i.is = icmp eq i64 %i.hs, 0
  br i1 %i.is, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.al
  %i.it = landingpad { ptr, i32 }
          cleanup
  store i16 %i.hp, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !alias.scope !11797, !noalias !11798
  store i64 %i.hs, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !alias.scope !11811, !noalias !11798
  %i.iu = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11812
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.ag
  %i.iv = call i64 @llvm.uadd.sat.i64(i64 %i.hs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.hf, i64 noundef %i.iv, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.aj, !noalias !11804

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.al
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11803, !noalias !11804
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
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.iz, align 16, !noalias !11813
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
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jl, align 8, !alias.scope !11814, !noalias !11815 ; 2 uses
  %i.jm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jm, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.jn = getelementptr i8, ptr %i.jj, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !noalias !11815, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11816
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
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11817
  br label %bb.ih

_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i: ; preds = %bb.ai, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11778
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !11777 ; 7 uses
  %i.jp = icmp ult i64 %.pre.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.jp)
  %i.jq = icmp eq i64 %.pre.i.i, 0
  br i1 %i.jq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i", label %bb.aq

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i": ; preds = %bb.aa, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"
  store ptr null, ptr %i.dp, align 8, !alias.scope !11819, !noalias !11820
  %.sroa.5.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i62.i, align 8, !alias.scope !11819, !noalias !11820
  br label %bb.aw

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i
  %.val2.i.i.pre.i = load i64, ptr %i.g, align 8, !range !22, !alias.scope !11821, !noalias !11777 ; 2 uses
  store ptr null, ptr %i.dp, align 8, !alias.scope !11819, !noalias !11820
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11819, !noalias !11820
  call void @llvm.experimental.noalias.scope.decl(metadata !11821)
  %i.jr = icmp eq i64 %.val2.i.i.pre.i, 0
  br i1 %i.jr, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i"
  %i.js = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i = load ptr, ptr %i.js, align 8, !alias.scope !11821, !noalias !11777, !nonnull !21, !noundef !21
  %i.jt = mul nuw i64 %.val2.i.i.pre.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.jt, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !11822
  br label %bb.aw

bb.aq:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !11777, !nonnull !21, !noundef !21 ; 5 uses
  %i.jw = icmp eq i64 %.pre.i.i, 1
  br i1 %i.jw, label %bb.au, label %bb.ar, !prof !49

bb.ar:                                            ; preds = %bb.aq
  %i.jx = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.jx, label %bb.at, label %bb.as, !prof !49

bb.as:                                            ; preds = %bb.ar
end_hunk_0
begin_hunk_1_@"_ZN3fst3raw24StreamWithState$LT$A$GT$3new17h9edc151e04cbee57E":bb.a
  %.sroa.01.0.neg.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 -256, i64 0 ; 4 uses
  %invariant.op.i = add i64 %i.rq, -2             ; 3 uses
  %i.ru = load i64, ptr %i.ag, align 8, !noalias !12773 ; 51 uses
  %i.rv = load ptr, ptr %i.c, align 8, !noalias !12773, !nonnull !21, !align !37 ; 4 uses
  %i.rw = load i8, ptr %i.ah, align 2, !noalias !12773
  %.fr180 = freeze i8 %i.rw                       ; 2 uses
  %i.rx = and i8 %.fr180, 15                      ; 3 uses
  %i.ry = zext nneg i8 %i.rx to i64               ; 14 uses
  %i.rz = icmp eq i8 %i.rx, 0                     ; 4 uses
  %i.sa = select i1 %or.cond.i.i.i.i, i64 -257, i64 -1
  %i.sb = lshr i8 %.fr180, 4                      ; 6 uses
  %narrow.i.i.i.i = add nuw nsw i8 %i.sb, 1
  %i.sc = zext nneg i8 %narrow.i.i.i.i to i64
  %i.sd = mul i64 %i.ro, %i.sc                    ; 2 uses
  %invariant.op611.i = add i64 %i.sa, %i.rq       ; 2 uses
  %or.cond.i.i.i.i.i = icmp samesign ult i8 %i.rx, 9 ; 4 uses
  %i.se = add i64 %i.rq, -1                       ; 4 uses
  %i.sf = icmp ult i64 %i.se, %i.ru               ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.se ; 2 uses
  %i.sh = xor i8 %i.sb, -1
  %i.si = sext i8 %i.sh to i64
  %invariant.op613.i = add i64 %i.rq, %i.si
  %cond.i = icmp eq i8 %i.rp, 3
  br i1 %cond.i, label %.invoke.i, label %.lr.ph.i.split.preheader.i, !prof !12792

.lr.ph.i.split.preheader.i:                       ; preds = %.lr.ph.i.i
  %i.sj = zext nneg i8 %i.sb to i64               ; 12 uses
  %i.sk = load i8, ptr %i.ac, align 1, !noalias !12773, !noundef !21
  %i.sl = and i8 %i.sk, 63                        ; 3 uses
  %i.sm = icmp eq i8 %i.sl, 0                     ; 7 uses
  switch i8 %i.rp, label %default.unreachable [
    i8 0, label %bb.cb
    i8 1, label %bb.bt
    i8 2, label %bb.bm
  ], !prof !95

bb.bm:                                            ; preds = %.lr.ph.i.split.preheader.i
  %..i.i.i.peel.i = sext i1 %i.sm to i64          ; 2 uses
  %i.sn = add i64 %.sroa.01.0.neg.i.i.i.i, %invariant.op.i
  %i.so = add i64 %i.sn, %..i.i.i.peel.i          ; 3 uses
  %i.sp = icmp ult i64 %i.so, %i.ru
  br i1 %i.sp, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.peel.i, label %.invoke1129.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.peel.i: ; preds = %bb.bm
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.so
  %i.sr = load i8, ptr %i.sq, align 1, !noalias !12793, !noundef !21
  br i1 %i.rz, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.peel.i
  %i.ss = add i64 %i.sd, %i.ry
  %i.st = sub i64 %invariant.op611.i, %i.ss
  %i.su = add i64 %i.st, %..i.i.i.peel.i          ; 3 uses
  %i.sv = icmp ugt i64 %i.su, %i.ru
  br i1 %i.sv, label %.invoke1131.i, label %bb.bo, !prof !23

bb.bo:                                            ; preds = %bb.bn
  br i1 %or.cond.i.i.i.i.i, label %bb.bp, label %.invoke1127.i, !prof !45

bb.bp:                                            ; preds = %bb.bo
  %i.sw = sub nuw i64 %i.ru, %i.su                ; 2 uses
  %.not.i.i.i.i.peel.i = icmp ult i64 %i.sw, %i.ry
  br i1 %.not.i.i.i.i.peel.i, label %.invoke1131.i, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i, !prof !44

_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i: ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.peel.i, %bb.bp
  %.neg3.i16 = select i1 %i.sm, i64 -2, i64 -1
  %i.sx = add i64 %i.rq, %.neg3.i16
  %i.sy = add i64 %i.ro, %i.sj
  %i.sz = sub i64 %i.sx, %i.sy
  %i.ta = add i64 %i.sz, %.sroa.01.0.neg.i.i.i.i  ; 3 uses
  %i.tb = icmp ugt i64 %i.ta, %i.ru
  br i1 %i.tb, label %.invoke427, label %bb.bq, !prof !23

bb.bq:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i
  %i.tc = add nsw i8 %i.sb, -1
  %or.cond.i.i17 = icmp ult i8 %i.tc, 8
  br i1 %or.cond.i.i17, label %bb.bs, label %bb.br, !prof !45

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1029, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1031) #57
          to label %.noexc26 unwind label %.loopexit.loopexit.split-lp.i

.noexc26:                                         ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.td = sub nuw i64 %i.ru, %i.ta                ; 2 uses
  %.not.i.i18 = icmp ult i64 %i.td, %i.sj
  br i1 %.not.i.i18, label %.invoke427, label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, !prof !44

.invoke427:                                       ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i, %bb.bs
  %i.te = phi i64 [ 0, %bb.bs ], [ %i.ta, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ]
  %i.tf = phi i64 [ %i.sj, %bb.bs ], [ %i.ru, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ]
  %i.tg = phi i64 [ %i.td, %bb.bs ], [ %i.ru, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ]
  %i.th = phi ptr [ @1032, %bb.bs ], [ @1016, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.peel.i ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.te, i64 noundef %i.tf, i64 noundef %i.tg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.th) #57
          to label %.cont428 unwind label %.loopexit.loopexit.split-lp.i

.cont428:                                         ; preds = %.invoke427
  unreachable

bb.bt:                                            ; preds = %.lr.ph.i.split.preheader.i
  br i1 %i.sm, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ti = zext nneg i8 %i.sl to i64
  %i.tj = getelementptr i8, ptr @1021, i64 %i.ti
  %i.tk = getelementptr i8, ptr %i.tj, i64 -1
  br label %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i

bb.bv:                                            ; preds = %bb.bt
  br i1 %i.sf, label %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i, label %.invoke1129.i

_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i: ; preds = %bb.bv, %bb.bu
  %.sroa.0.0.in.i10.i.i.peel.i = phi ptr [ %i.tk, %bb.bu ], [ %i.sg, %bb.bv ]
  %.sroa.0.0.i11.i.i.peel.i = load i8, ptr %.sroa.0.0.in.i10.i.i.peel.i, align 1, !noalias !12794, !noundef !21
  %.pre45.i.i.peel.i = sext i1 %i.sm to i64
  %.pre52.i.i.reass.peel.i = add i64 %invariant.op613.i, %.pre45.i.i.peel.i ; 4 uses
  br i1 %i.rz, label %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i
  %i.tl = sub i64 %.pre52.i.i.reass.peel.i, %i.ry ; 3 uses
  %i.tm = icmp ugt i64 %i.tl, %i.ru
  br i1 %i.tm, label %.invoke1131.i, label %bb.bx, !prof !23

bb.bx:                                            ; preds = %bb.bw
  br i1 %or.cond.i.i.i.i.i, label %bb.by, label %.invoke1127.i, !prof !45

bb.by:                                            ; preds = %bb.bx
  %i.tn = sub nuw i64 %i.ru, %i.tl                ; 2 uses
  %.not.i.i14.i.i.peel.i = icmp ult i64 %i.tn, %i.ry
  br i1 %.not.i.i14.i.i.peel.i, label %.invoke1131.i, label %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i, !prof !44

_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i: ; preds = %bb.by, %_ZN3fst3raw4node13StateOneTrans5input17h85300bb4b3aace54E.exit.i.i.peel.i
  %i.to = icmp ugt i64 %.pre52.i.i.reass.peel.i, %i.ru
  br i1 %i.to, label %.invoke1131.i, label %bb.bz, !prof !23

bb.bz:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans6output17h604454b3947b591eE.exit.i.i.peel.i
  %i.tp = add nsw i8 %i.sb, -1
  %or.cond.i.i22.i.i.peel.i = icmp ult i8 %i.tp, 8
  br i1 %or.cond.i.i22.i.i.peel.i, label %bb.ca, label %.invoke1127.i, !prof !45

bb.ca:                                            ; preds = %bb.bz
  %i.tq = sub nuw i64 %i.ru, %.pre52.i.i.reass.peel.i ; 2 uses
  %.not.i.i23.i.i.peel.i = icmp ult i64 %i.tq, %i.sj
  br i1 %.not.i.i23.i.i.peel.i, label %.invoke1131.i, label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, !prof !44

bb.cb:                                            ; preds = %.lr.ph.i.split.preheader.i
  br i1 %i.sm, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tr = zext nneg i8 %i.sl to i64
  %i.ts = getelementptr i8, ptr @1021, i64 %i.tr
  %i.tt = getelementptr i8, ptr %i.ts, i64 -1
  br label %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i

bb.cd:                                            ; preds = %bb.cb
  br i1 %i.sf, label %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i, label %.invoke1129.i

_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i: ; preds = %bb.cd, %bb.cc
  %.sroa.0.0.in.i.i.i.peel.i = phi ptr [ %i.tt, %bb.cc ], [ %i.sg, %bb.cd ]
  %.sroa.0.0.i9.i.i.peel.i = load i8, ptr %.sroa.0.0.in.i.i.i.peel.i, align 1, !noalias !12795, !noundef !21
  br label %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i

_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i: ; preds = %bb.bs, %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i, %bb.ca
  %.sroa.9.0.ph.i.peel.i = phi i8 [ %.sroa.0.0.i11.i.i.peel.i, %bb.ca ], [ %.sroa.0.0.i9.i.i.peel.i, %_ZN3fst3raw4node17StateOneTransNext5input17h5a8ab89f12a6dea4E.exit.i.i.peel.i ], [ %i.sr, %bb.bs ]
  %i.tu = icmp ugt i8 %.sroa.9.0.ph.i.peel.i, %i.aj
  br i1 %i.tu, label %.loopexit355.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i
  %exitcond.not.i.peel.i = icmp eq i64 %i.ro, 1
  br i1 %exitcond.not.i.peel.i, label %.loopexit355.i, label %.lr.ph.i.split.peel.next.i

.lr.ph.i.split.peel.next.i:                       ; preds = %bb.ce
  %..i.i.i.i = sext i1 %i.sm to i64               ; 2 uses
  %invariant.op1123.i = add nsw i64 %.sroa.01.0.neg.i.i.i.i, %..i.i.i.i ; 4 uses
  %invariant.op = sub i64 %..i.i.i.i, %i.sd
  %factor.op.mul126 = sub nsw i64 0, %i.sj        ; 2 uses
  %invariant.op1125.i.neg = sub i64 %invariant.op611.i, %i.ry
  %.reass = add i64 %invariant.op1125.i.neg, %invariant.op ; 3 uses
  %.neg3.i = select i1 %i.sm, i64 -2, i64 -1
  %i.tv = add i64 %i.rq, %.neg3.i
  %i.tw = add i64 %i.ro, %i.sj
  %invariant.op128 = sub i64 %i.tv, %i.tw
  %invariant.op130 = add i64 %invariant.op128, %.sroa.01.0.neg.i.i.i.i ; 3 uses
  switch i8 %i.rp, label %default.unreachable [
    i8 0, label %.invoke1127.i
    i8 1, label %.loopexit820.i
    i8 2, label %.lr.ph.i.split.peel.next.i.split
  ], !prof !95

.lr.ph.i.split.peel.next.i.split:                 ; preds = %.lr.ph.i.split.peel.next.i
  %i.tx = add nsw i8 %i.sb, -1
  %or.cond.i.i8 = icmp ult i8 %i.tx, 8
  br i1 %or.cond.i.i8, label %.lr.ph.i.split.peel.next.i.split.split.us, label %.lr.ph.i.split.i, !prof !45

.lr.ph.i.split.peel.next.i.split.split.us:        ; preds = %.lr.ph.i.split.peel.next.i.split
  br i1 %i.rz, label %.lr.ph.i.split.i.us.us, label %.lr.ph.i.split.peel.next.i.split.split.us.split

.lr.ph.i.split.i.us.us:                           ; preds = %.lr.ph.i.split.peel.next.i.split.split.us, %bb.ch
  %i.ty = phi i64 [ %i.tz, %bb.ch ], [ 1, %.lr.ph.i.split.peel.next.i.split.split.us ] ; 5 uses
  %i.tz = add i64 %i.ty, 1                        ; 2 uses
  %.reass.i.us.us = sub i64 %invariant.op.i, %i.ty
  %.reass1124.i.us.us = add i64 %invariant.op1123.i, %.reass.i.us.us ; 3 uses
  %i.ua = icmp ult i64 %.reass1124.i.us.us, %i.ru
  br i1 %i.ua, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us, label %.invoke1129.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us: ; preds = %.lr.ph.i.split.i.us.us
  %i.ub = getelementptr inbounds nuw i8, ptr %i.rv, i64 %.reass1124.i.us.us
  %i.uc = load i8, ptr %i.ub, align 1, !noalias !12793, !noundef !21
  %exitcond252.not = icmp eq i64 %i.ty, %i.ro
  br i1 %exitcond252.not, label %.invoke, label %bb.cf, !prof !23

bb.cf:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us
  %.reass127.us.us = mul i64 %i.ty, %factor.op.mul126
  %.reass131.us.us = add i64 %.reass127.us.us, %invariant.op130 ; 3 uses
  %i.ud = icmp ugt i64 %.reass131.us.us, %i.ru
  br i1 %i.ud, label %.split142.us.invoke, label %bb.cg, !prof !23

bb.cg:                                            ; preds = %bb.cf
  %i.ue = sub nuw i64 %i.ru, %.reass131.us.us     ; 2 uses
  %.not.i.i.us.us = icmp ult i64 %i.ue, %i.sj
  br i1 %.not.i.i.us.us, label %.split142.us.invoke, label %.lr.ph.preheader.i.i.us.us, !prof !44

.lr.ph.preheader.i.i.us.us:                       ; preds = %bb.cg
  %i.uf = icmp ugt i8 %i.uc, %i.aj
  br i1 %i.uf, label %.loopexit355.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.preheader.i.i.us.us
  %exitcond.not.i.i.us.us = icmp eq i64 %i.tz, %i.ro
  br i1 %exitcond.not.i.i.us.us, label %.loopexit355.i, label %.lr.ph.i.split.i.us.us, !llvm.loop !12757

.lr.ph.i.split.peel.next.i.split.split.us.split:  ; preds = %.lr.ph.i.split.peel.next.i.split.split.us
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.split.i.us.us152, label %.lr.ph.i.split.i.us, !prof !45

.lr.ph.i.split.i.us.us152:                        ; preds = %.lr.ph.i.split.peel.next.i.split.split.us.split, %bb.cl
  %i.ug = phi i64 [ %i.uh, %bb.cl ], [ 1, %.lr.ph.i.split.peel.next.i.split.split.us.split ] ; 6 uses
  %i.uh = add i64 %i.ug, 1                        ; 2 uses
  %.reass.i.us.us153 = sub i64 %invariant.op.i, %i.ug
  %.reass1124.i.us.us154 = add i64 %invariant.op1123.i, %.reass.i.us.us153 ; 3 uses
  %i.ui = icmp ult i64 %.reass1124.i.us.us154, %i.ru
  br i1 %i.ui, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155, label %.invoke1129.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155: ; preds = %.lr.ph.i.split.i.us.us152
  %i.uj = getelementptr inbounds nuw i8, ptr %i.rv, i64 %.reass1124.i.us.us154
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !12793, !noundef !21
  %i.ul = mul i64 %i.ug, %i.ry
  %i.um = sub i64 %.reass, %i.ul                  ; 3 uses
  %i.un = icmp ugt i64 %i.um, %i.ru
  br i1 %i.un, label %.invoke1131.i, label %bb.ci, !prof !23

bb.ci:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us155
  %i.uo = sub nuw i64 %i.ru, %i.um                ; 2 uses
  %.not.i.i.i.i.i.us.us = icmp ult i64 %i.uo, %i.ry
  br i1 %.not.i.i.i.i.i.us.us, label %.invoke1131.i, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156, !prof !44

_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156: ; preds = %bb.ci
  %exitcond.not = icmp eq i64 %i.ug, %i.ro
  br i1 %exitcond.not, label %.invoke, label %bb.cj, !prof !23

bb.cj:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156
  %.reass127.us.us157 = mul i64 %i.ug, %factor.op.mul126
  %.reass131.us.us158 = add i64 %.reass127.us.us157, %invariant.op130 ; 3 uses
  %i.up = icmp ugt i64 %.reass131.us.us158, %i.ru
  br i1 %i.up, label %.split142.us.invoke, label %bb.ck, !prof !23

bb.ck:                                            ; preds = %bb.cj
  %i.uq = sub nuw i64 %i.ru, %.reass131.us.us158  ; 2 uses
  %.not.i.i.us.us159 = icmp ult i64 %i.uq, %i.sj
  br i1 %.not.i.i.us.us159, label %.split142.us.invoke, label %.lr.ph.preheader.i.i.us.us160, !prof !44

.lr.ph.preheader.i.i.us.us160:                    ; preds = %bb.ck
  %i.ur = icmp ugt i8 %i.uk, %i.aj
  br i1 %i.ur, label %.loopexit355.i, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.preheader.i.i.us.us160
  %exitcond.not.i.i.us.us164 = icmp eq i64 %i.uh, %i.ro
  br i1 %exitcond.not.i.i.us.us164, label %.loopexit355.i, label %.lr.ph.i.split.i.us.us152, !llvm.loop !12757

.lr.ph.i.split.i.us:                              ; preds = %.lr.ph.i.split.peel.next.i.split.split.us.split
  %.reass.i.us = add i64 %i.rq, -3
  %.reass1124.i.us = add i64 %invariant.op1123.i, %.reass.i.us ; 2 uses
  %i.us = icmp ult i64 %.reass1124.i.us, %i.ru
  br i1 %i.us, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us, label %.invoke1129.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us: ; preds = %.lr.ph.i.split.i.us
  %i.ut = sub i64 %.reass, %i.ry                  ; 2 uses
  %i.uu = icmp ugt i64 %i.ut, %i.ru
  br i1 %i.uu, label %.invoke1131.i, label %.invoke1127.i, !prof !23

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.split.peel.next.i.split
  %.reass.i = add i64 %i.rq, -3
  %.reass1124.i = add i64 %invariant.op1123.i, %.reass.i ; 2 uses
  %i.uv = icmp ult i64 %.reass1124.i, %i.ru
  br i1 %i.uv, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i, label %.invoke1129.i

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i: ; preds = %.lr.ph.i.split.i
  br i1 %i.rz, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i
  %i.uw = sub i64 %.reass, %i.ry                  ; 3 uses
  %i.ux = icmp ugt i64 %i.uw, %i.ru
  br i1 %i.ux, label %.invoke1131.i, label %bb.cn, !prof !23

bb.cn:                                            ; preds = %bb.cm
  br i1 %or.cond.i.i.i.i.i, label %bb.co, label %.invoke1127.i, !prof !45

bb.co:                                            ; preds = %bb.cn
  %i.uy = sub nuw i64 %i.ru, %i.uw                ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.uy, %i.ry
  br i1 %.not.i.i.i.i.i, label %.invoke1131.i, label %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i, !prof !44

_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i: ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i, %bb.co
  %.reass131 = sub i64 %invariant.op130, %i.sj    ; 2 uses
  %i.uz = icmp ugt i64 %.reass131, %i.ru
  br i1 %i.uz, label %.split142.us.invoke, label %.invoke, !prof !23

.invoke:                                          ; preds = %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i
  %i.va = phi ptr [ @1029, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1014, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ @1014, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156 ]
  %i.vb = phi i64 [ 44, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ 33, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ 33, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156 ]
  %i.vc = phi ptr [ @1031, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1015, %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i.i.i.us.us ], [ @1015, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i.us.us156 ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.va, i64 noundef %i.vb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vc) #57
          to label %.cont unwind label %.loopexit.loopexit.i

.cont:                                            ; preds = %.invoke
  unreachable

.split142.us.invoke:                              ; preds = %bb.cj, %bb.ck, %bb.cf, %bb.cg, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i
  %i.vd = phi i64 [ %.reass131, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ 0, %bb.cg ], [ %.reass131.us.us, %bb.cf ], [ 0, %bb.ck ], [ %.reass131.us.us158, %bb.cj ]
  %i.ve = phi i64 [ %i.ru, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ %i.sj, %bb.cg ], [ %i.ru, %bb.cf ], [ %i.sj, %bb.ck ], [ %i.ru, %bb.cj ]
  %i.vf = phi i64 [ %i.ru, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ %i.ue, %bb.cg ], [ %i.ru, %bb.cf ], [ %i.uq, %bb.ck ], [ %i.ru, %bb.cj ]
  %i.vg = phi ptr [ @1016, %_ZN3fst3raw4node13StateAnyTrans6output17hb42dbb12c7bf37f1E.exit.i.i.i ], [ @1032, %bb.cg ], [ @1016, %bb.cf ], [ @1032, %bb.ck ], [ @1016, %bb.cj ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.vd, i64 noundef %i.ve, i64 noundef %i.vf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vg) #57
          to label %.split142.us.cont unwind label %.loopexit.loopexit.i

.split142.us.cont:                                ; preds = %.split142.us.invoke
  unreachable

.loopexit820.i:                                   ; preds = %.lr.ph.i.split.peel.next.i, %bb.x
  br label %.invoke1127.i

.loopexit355.i:                                   ; preds = %bb.cl, %.lr.ph.preheader.i.i.us.us160, %.lr.ph.preheader.i.i.us.us, %bb.ch, %bb.ce, %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i, %.thread308.i
  %.sroa.0.0.i203.i = phi i64 [ 0, %.thread308.i ], [ 0, %_ZN3fst3raw4node13StateOneTrans10trans_addr17h7636e0c39121e470E.exit.i.i.peel.i ], [ 1, %bb.ce ], [ %i.ty, %.lr.ph.preheader.i.i.us.us ], [ %i.ro, %bb.ch ], [ %i.ro, %bb.cl ], [ %i.ug, %.lr.ph.preheader.i.i.us.us160 ]
  %i.vh = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12796, !noalias !12797, !noundef !21 ; 3 uses
  %i.vi = load i64, ptr %i.k, align 8, !range !22, !alias.scope !12796, !noalias !12797, !noundef !21
  %i.vj = icmp eq i64 %i.vh, %i.vi
  br i1 %i.vj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.loopexit355.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h55770e63b21f6089E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1004)
          to label %bb.cq unwind label %.loopexit.split-lp.i, !noalias !12771

bb.cq:                                            ; preds = %bb.cp, %.loopexit355.i
  %i.vk = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !12796, !noalias !12797, !nonnull !21, !noundef !21
  %i.vl = getelementptr inbounds nuw [80 x i8], ptr %i.vk, i64 %i.vh ; 3 uses
  store i64 %.sroa.0.0.i203.i, ptr %i.vl, align 8, !noalias !12771
  %.sroa.4248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  store i64 %.sroa.04.0608.i, ptr %.sroa.4248.0..sroa_idx.i, align 8, !noalias !12771
  %.sroa.5249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5249.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !12771
  %i.vm = add i64 %i.vh, 1
  br label %bb.cr

bb.cr:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$$LP$$RP$$GT$$GT$$GT$17h63f99bd93466dc93E.exit.i", %bb.cq
  %storemerge = phi i64 [ %i.vm, %bb.cq ], [ 1, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$$LP$$RP$$GT$$GT$$GT$17h63f99bd93466dc93E.exit.i" ]
  store i64 %storemerge, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12770, !noalias !12771
  switch i64 %.sroa.0.0.copyload, label %bb.dh [
    i64 0, label %bb.cs
    i64 1, label %bb.ct
  ]

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i": ; preds = %bb.ct, %bb.cs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload) ]
  br label %.sink.split

bb.cs:                                            ; preds = %bb.cr
  %i.vn = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.vn, label %bb.dh, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i"

bb.ct:                                            ; preds = %bb.cr
  %i.vo = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.vo, label %bb.dh, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit.sink.split.i226.i"

bb.cu:                                            ; preds = %bb.cy, %bb.cx, %bb.cv
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i: ; preds = %.noexc42.i, %.noexc38.i, %.noexc36.i
  %.sroa.7.0.i316322.i = phi i64 [ 1, %.noexc38.i ], [ 1, %.noexc42.i ], [ %i.no, %.noexc36.i ]
  %.sroa.6243.0.i = phi i64 [ %i.nq, %.noexc38.i ], [ %.sroa.0.0.i198.i, %.noexc42.i ], [ %.sroa.0.0.i163.i, %.noexc36.i ]
  %.sroa.0242.0.i = phi i64 [ 0, %.noexc38.i ], [ %.sroa.0.0.i185.i, %.noexc42.i ], [ %.sroa.0.0.i148.i, %.noexc36.i ]
  %i.vq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12798, !noalias !12799, !noundef !21 ; 3 uses
  %i.vr = load i64, ptr %i.j, align 8, !range !22, !alias.scope !12798, !noalias !12799, !noundef !21
  %i.vs = icmp eq i64 %i.vq, %i.vr
  br i1 %i.vs, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1005)
          to label %bb.cw unwind label %bb.cu, !noalias !12771

bb.cw:                                            ; preds = %bb.cv, %_ZN3fst3raw4node4Node10transition17hb531b3ec2c5ba839E.exit.i
  %i.vt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !12798, !noalias !12799, !nonnull !21, !noundef !21
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vq
  store i8 %i.aj, ptr %i.vu, align 1, !noalias !12771
  %i.vv = add i64 %i.vq, 1
  store i64 %i.vv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12798, !noalias !12799
  %i.vw = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12800, !noalias !12801, !noundef !21 ; 3 uses
  %i.vx = load i64, ptr %i.k, align 8, !range !22, !alias.scope !12800, !noalias !12801, !noundef !21
  %i.vy = icmp eq i64 %i.vw, %i.vx
  br i1 %i.vy, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h55770e63b21f6089E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1006)
          to label %bb.cy unwind label %bb.cu, !noalias !12771

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.vz = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !12800, !noalias !12801, !nonnull !21, !noundef !21
  %i.wa = getelementptr inbounds nuw [80 x i8], ptr %i.vz, i64 %i.vw ; 3 uses
  store i64 %.sroa.7.0.i316322.i, ptr %i.wa, align 8, !noalias !12771
  %.sroa.4.0..sroa_idx245.i = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store i64 %.sroa.04.0608.i, ptr %.sroa.4.0..sroa_idx245.i, align 8, !noalias !12771
  %.sroa.5246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5246.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !12771
  %i.wb = add i64 %i.vw, 1
  store i64 %i.wb, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12800, !noalias !12801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12773
  %i.wc = load ptr, ptr %i.i, align 8, !alias.scope !12770, !noalias !12771, !nonnull !21, !align !27, !noundef !21
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load i64, ptr %i.wd, align 8, !noalias !12771, !noundef !21
  %i.wf = load ptr, ptr %i.t, align 8, !alias.scope !12770, !noalias !12771, !nonnull !21, !align !37, !noundef !21
  %i.wg = load i64, ptr %i.v, align 8, !alias.scope !12770, !noalias !12771, !noundef !21
  invoke void @_ZN3fst3raw4node4Node3new17h18cbd418bf54876bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, i64 noundef %i.we, i64 noundef %.sroa.6243.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.wf, i64 noundef %i.wg)
          to label %bb.cz unwind label %bb.cu, !noalias !12771

bb.cz:                                            ; preds = %bb.cy
  %i.wh = add i64 %.sroa.0242.0.i, %.sroa.04.0608.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !12773
end_hunk_1
