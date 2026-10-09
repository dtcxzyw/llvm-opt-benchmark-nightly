Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta8snapshot16SnapshotContents11from_inline17h072379006ec6435cE:bb.a
  %i.og = add i64 %i.nu, 1
  %i.oh = add i64 %i.og, %.sroa.4.0.i27.i.i88.i   ; 11 uses
  %.not20.i.i89.i = icmp ult i64 %i.oh, %i.mm
  %.not21.i.i90.i = icmp ugt i64 %i.oh, %.val1.i69.i
  %or.cond.i.i91.i = or i1 %.not20.i.i89.i, %.not21.i.i90.i
  br i1 %or.cond.i.i91.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bw, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i87.i
  %i.oi = icmp ult i64 %i.mk, %i.oh
  br i1 %i.oi, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h37a2dfcd6ac241faE.exit.i77.i", label %bb.bt

bb.bw:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i87.i
  %i.oj = sub nuw i64 %i.oh, %i.mm
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 %i.oj
  %bcmp.i.i92.i = call i32 @bcmp(ptr nonnull readonly %i.ok, ptr nonnull %.sroa.530.sroa.7.0..sroa.530.0..sroa_idx.sroa_idx.i, i64 %i.mm), !noalias !17894
  %i.ol = icmp eq i32 %bcmp.i.i92.i, 0
  br i1 %i.ol, label %bb.bx, label %bb.bv

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h37a2dfcd6ac241faE.exit.i77.i": ; preds = %bb.bv, %.noexc99.i, %.preheader.i.i.i94.i, %bb.bu, %bb.bs
  %.lcssa268282.i = phi i64 [ %i.mk, %bb.bu ], [ %.lcssa268283.i, %bb.bs ], [ %i.mk, %.preheader.i.i.i94.i ], [ %i.mk, %.noexc99.i ], [ %i.oh, %bb.bv ]
  store i8 1, ptr %.sroa.732.0..sroa_idx.i, align 1, !alias.scope !17895, !noalias !17784
  %.not.i3.i81.not.i = icmp eq i64 %2, %.lcssa237273277.i
  br i1 %.not.i3.i81.not.i, label %._crit_edge.i, label %.thread180.i

.thread180.i:                                     ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h37a2dfcd6ac241faE.exit.i77.i"
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa237273277.i ; 2 uses
  %i.on = sub nuw i64 %2, %.lcssa237273277.i      ; 2 uses
  %i.oo = insertvalue { ptr, i64 } poison, ptr %i.om, 0
  %i.op = insertvalue { ptr, i64 } %i.oo, i64 %i.on, 1
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i"

bb.bx:                                            ; preds = %bb.bw
  %i.oq = sub nuw i64 %i.oh, %.lcssa237273277.i   ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa237273277.i ; 2 uses
  %i.os = insertvalue { ptr, i64 } poison, ptr %i.or, 0
  %i.ot = insertvalue { ptr, i64 } %i.os, i64 %i.oq, 1 ; 2 uses
  %.not.i.i.i101.i = icmp eq i64 %i.oq, 0
  br i1 %.not.i.i.i101.i, label %"_ZN89_$LT$core..str..LinesMap$u20$as$u20$core..ops..function..Fn$LT$$LP$$RF$str$C$$RP$$GT$$GT$4call17h2da1cf865658e73dE.exit116.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i": ; preds = %bb.bx, %.thread180.i
  %.lcssa268281.i = phi i64 [ %.lcssa268282.i, %.thread180.i ], [ %i.oh, %bb.bx ] ; 2 uses
  %.lcssa237272.i = phi i64 [ %.lcssa237273277.i, %.thread180.i ], [ %i.oh, %bb.bx ] ; 2 uses
  %i.ou = phi i1 [ true, %.thread180.i ], [ false, %bb.bx ] ; 2 uses
  %i.ov = phi { ptr, i64 } [ %i.op, %.thread180.i ], [ %i.ot, %bb.bx ] ; 2 uses
  %.sroa.0.1.i86186.i = phi ptr [ %i.om, %.thread180.i ], [ %i.or, %bb.bx ]
  %.sroa.4.1.i85185.i = phi i64 [ %i.on, %.thread180.i ], [ %i.oq, %bb.bx ] ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa237273277.i ; 2 uses
  %.pre.i.i102187.i = add i64 %.sroa.4.1.i85185.i, -1 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.pre.i.i102187.i
  %rhsc.i104.i = load i8, ptr %i.ox, align 1, !alias.scope !17896, !noalias !17783
  %rhsc.fr.i105.i = freeze i8 %rhsc.i104.i
  %i.oy = icmp eq i8 %rhsc.fr.i105.i, 10
  br i1 %i.oy, label %bb.by, label %"_ZN89_$LT$core..str..LinesMap$u20$as$u20$core..ops..function..Fn$LT$$LP$$RF$str$C$$RP$$GT$$GT$4call17h2da1cf865658e73dE.exit116.i"

bb.by:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i"
  %i.oz = insertvalue { ptr, i64 } %i.ov, i64 %.pre.i.i102187.i, 1
  %.not.i.i10.i107.i = icmp eq i64 %.pre.i.i102187.i, 0
  %.pre.i11.i108.i = add i64 %.sroa.4.1.i85185.i, -2 ; 2 uses
  br i1 %.not.i.i10.i107.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i113.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i12.i109.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i12.i109.i": ; preds = %bb.by
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.pre.i11.i108.i
  %rhsc4.i110.i = load i8, ptr %i.pa, align 1, !alias.scope !17896, !noalias !17783
  %rhsc4.fr.i111.i = freeze i8 %rhsc4.i110.i
  %i.pb = icmp eq i8 %rhsc4.fr.i111.i, 13
  %spec.select.i15.i112.i = select i1 %i.pb, ptr %.sroa.0.1.i86186.i, ptr null
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i113.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i113.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i12.i109.i", %bb.by
  %i.pc = phi ptr [ %spec.select.i15.i112.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i12.i109.i" ], [ null, %bb.by ] ; 2 uses
  %i.pd = insertvalue { ptr, i64 } poison, ptr %i.pc, 0
  %i.pe = insertvalue { ptr, i64 } %i.pd, i64 %.pre.i11.i108.i, 1
  %.not9.i114.i = icmp eq ptr %i.pc, null
  %..i115.i = select i1 %.not9.i114.i, { ptr, i64 } %i.oz, { ptr, i64 } %i.pe
  br label %"_ZN89_$LT$core..str..LinesMap$u20$as$u20$core..ops..function..Fn$LT$$LP$$RF$str$C$$RP$$GT$$GT$4call17h2da1cf865658e73dE.exit116.i"

._crit_edge.i:                                    ; preds = %.backedge.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h37a2dfcd6ac241faE.exit.i77.i", %.thread.i
  %i.pf = phi i64 [ %i.mi, %.thread.i ], [ %i.ns, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h37a2dfcd6ac241faE.exit.i77.i" ], [ %i.qk, %.backedge.i ]
  %i.pg = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17784, !nonnull !17, !noundef !17 ; 2 uses
  %i.ph = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h550555816672d01bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pg, i64 noundef %i.pf), !noalias !17783 ; 2 uses
  %i.pi = extractvalue { ptr, i64 } %i.ph, 0
  %i.pj = extractvalue { ptr, i64 } %i.ph, 1      ; 7 uses
  %i.pk = icmp slt i64 %i.pj, 0
  br i1 %i.pk, label %bb.bz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %._crit_edge.i
  %i.pl = icmp eq i64 %i.pj, 0
  br i1 %i.pl, label %bb.ca, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17897
  %i.pm = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.pj, i64 noundef range(i64 1, 17) 1) #51, !noalias !17897 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %._crit_edge.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %._crit_edge.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.pj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc117.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !17783

.noexc117.i:                                      ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.pm, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.pi, i64 %i.pj, i1 false), !noalias !17898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17784
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17899)
  %.val.i118.i = load i64, ptr %i.n, align 8, !alias.scope !17899, !noalias !17784 ; 2 uses
  %i.po = icmp eq i64 %.val.i118.i, 0
  br i1 %i.po, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit120.i", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pg, i64 noundef %.val.i118.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17900
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit120.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit120.i": ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17784
  br label %_ZN5insta8snapshot25get_inline_snapshot_value17he0cfe7a3f5d08f37E.exit

"_ZN89_$LT$core..str..LinesMap$u20$as$u20$core..ops..function..Fn$LT$$LP$$RF$str$C$$RP$$GT$$GT$4call17h2da1cf865658e73dE.exit116.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i113.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i", %bb.bx
  %.lcssa268280.i = phi i64 [ %.lcssa268281.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i113.i" ], [ %.lcssa268281.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i" ], [ %i.oh, %bb.bx ]
  %.lcssa237271.i = phi i64 [ %.lcssa237272.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i113.i" ], [ %.lcssa237272.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i" ], [ %i.oh, %bb.bx ]
  %i.pp = phi i1 [ %i.ou, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i113.i" ], [ %i.ou, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i" ], [ false, %bb.bx ]
  %.merged.i106.i = phi { ptr, i64 } [ %..i115.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i113.i" ], [ %i.ov, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17hf312aae698a97916E.exit.i.i103.i" ], [ %i.ot, %bb.bx ] ; 2 uses
  %i.pq = extractvalue { ptr, i64 } %.merged.i106.i, 0 ; 9 uses
  %i.pr = extractvalue { ptr, i64 } %.merged.i106.i, 1 ; 4 uses
  br i1 %i.mq, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %"_ZN89_$LT$core..str..LinesMap$u20$as$u20$core..ops..function..Fn$LT$$LP$$RF$str$C$$RP$$GT$$GT$4call17h2da1cf865658e73dE.exit116.i"
  %.not.i121.i = icmp ult i64 %.sroa.0.0.i, %i.pr
  br i1 %.not.i121.i, label %bb.cd, label %.split.i122.i

.split.i122.i:                                    ; preds = %bb.cc
  %i.ps = icmp ne i64 %.sroa.0.0.i, %i.pr
  %.not51.i5 = icmp eq ptr %i.pq, null
  %or.cond = select i1 %i.ps, i1 true, i1 %.not51.i5
  br i1 %or.cond, label %.split.i125.i, label %.thread192.i.thread6

bb.cd:                                            ; preds = %bb.cc
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.sroa.0.0.i
  %i.pu = load i8, ptr %i.pt, align 1, !alias.scope !17901, !noalias !17783, !noundef !17
  %i.pv = icmp sgt i8 %i.pu, -65
  br i1 %i.pv, label %.thread192.i.thread, label %bb.cf

bb.ce:                                            ; preds = %"_ZN89_$LT$core..str..LinesMap$u20$as$u20$core..ops..function..Fn$LT$$LP$$RF$str$C$$RP$$GT$$GT$4call17h2da1cf865658e73dE.exit116.i"
  %.not51.i = icmp eq ptr %i.pq, null
  br i1 %.not51.i, label %.backedge.i, label %.thread192.i

.thread192.i:                                     ; preds = %bb.ce
  %i.pw = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hbbd1ff547671e87dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pq, i64 noundef 0), !noalias !17783
  %i.px = extractvalue { ptr, i64 } %i.pw, 1
  %i.py = icmp eq i64 %i.px, 0
  br i1 %i.py, label %.thread427.i, label %bb.cg

.thread192.i.thread6:                             ; preds = %.split.i122.i
  %i.pz = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hbbd1ff547671e87dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pq, i64 noundef %.sroa.0.0.i), !noalias !17783
  %i.qa = extractvalue { ptr, i64 } %i.pz, 1
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %.split.i125.i, label %bb.cg

.thread192.i.thread:                              ; preds = %bb.cd
  %i.qc = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hbbd1ff547671e87dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pq, i64 noundef %.sroa.0.0.i), !noalias !17783
  %i.qd = extractvalue { ptr, i64 } %i.qc, 1
  %i.qe = icmp eq i64 %i.qd, 0
  br i1 %i.qe, label %bb.cf, label %bb.cg

.split.i125.i:                                    ; preds = %.split.i122.i, %.thread192.i.thread6
  %i.qf = icmp ne i64 %.sroa.0.0.i, %i.pr
  %.not52.i = icmp eq ptr %i.pq, null
  %or.cond.i = select i1 %i.qf, i1 true, i1 %.not52.i
  br i1 %or.cond.i, label %.backedge.i, label %.thread427.i

bb.cf:                                            ; preds = %.thread192.i.thread, %bb.cd
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.sroa.0.0.i
  %i.qh = load i8, ptr %i.qg, align 1, !alias.scope !17902, !noalias !17783, !noundef !17
  %i.qi = icmp sgt i8 %i.qh, -65
  br i1 %i.qi, label %.thread427.i, label %.backedge.i

bb.cg:                                            ; preds = %.thread192.i.thread6, %.thread192.i.thread, %bb.ck, %.thread192.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17784
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17903)
  %.val.i133.i = load i64, ptr %i.n, align 8, !alias.scope !17903, !noalias !17784 ; 2 uses
  %i.qj = icmp eq i64 %.val.i133.i, 0
  br i1 %i.qj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit135.i", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.val1.i134.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17903, !noalias !17784, !nonnull !17, !noundef !17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i134.i, i64 noundef %.val.i133.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17904
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit135.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit135.i": ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17784
  br label %_ZN5insta8snapshot25get_inline_snapshot_value17he0cfe7a3f5d08f37E.exit

.backedge.i:                                      ; preds = %bb.ce, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit143.i, %bb.ck, %bb.cf, %.split.i125.i
  %i.qk = phi i64 [ %i.ns, %bb.ce ], [ %i.ru, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit143.i ], [ %i.ns, %bb.cf ], [ %i.ns, %.split.i125.i ], [ %i.ns, %bb.ck ] ; 2 uses
  br i1 %i.pp, label %._crit_edge.i, label %bb.bs

.thread427.i:                                     ; preds = %.thread192.i, %bb.cf, %.split.i125.i
  %i.ql = sub nuw i64 %i.pr, %.sroa.0.0.i         ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.sroa.0.0.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17784
  store i32 11439074, ptr %i.k, align 4, !noalias !17784
  %.not.i.i136.i = icmp ult i64 %i.ql, 3
  br i1 %.not.i.i136.i, label %bb.ck, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hd911a0b1193939d9E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hd911a0b1193939d9E.exit.i.i": ; preds = %.thread427.i
  %i.qn = load i16, ptr %i.k, align 4
  %i.qo = load i16, ptr %i.qm, align 1
  %i.qp = xor i16 %i.qn, %i.qo
  %i.qq = getelementptr i8, ptr %i.k, i64 2
  %i.qr = getelementptr i8, ptr %i.qm, i64 2
  %i.qs = load i8, ptr %i.qq, align 2
  %i.qt = load i8, ptr %i.qr, align 1
  %i.qu = zext i8 %i.qs to i16
  %i.qv = zext i8 %i.qt to i16
  %i.qw = xor i16 %i.qu, %i.qv
  %i.qx = or i16 %i.qp, %i.qw
  %i.qy = icmp ne i16 %i.qx, 0
  %i.qz = zext i1 %i.qy to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.qz
  %i.ra = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qm, i64 3
  br i1 %i.ra, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hd911a0b1193939d9E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17784
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17905)
  %gepdiff204.i = add i64 %i.ql, -3               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17906)
  %i.rc = load i64, ptr %i.n, align 8, !range !20, !alias.scope !17907, !noalias !17784, !noundef !17 ; 2 uses
  %i.rd = sub i64 %i.rc, %i.ns
  %i.re = icmp ugt i64 %gepdiff204.i, %i.rd
  br i1 %i.re, label %bb.cj, label %bb.cl, !prof !22

bb.cj:                                            ; preds = %bb.ci
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ns, i64 noundef %gepdiff204.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !17783

.noexc138.i:                                      ; preds = %bb.cj
  %.pre.i.i137.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !17908, !noalias !17784
  %.pre357.i = load i64, ptr %i.n, align 8, !range !20, !alias.scope !17909, !noalias !17784
  br label %bb.cl

bb.ck:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hd911a0b1193939d9E.exit.i.i", %.thread427.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17784
  %i.rf = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hbbd1ff547671e87dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qm, i64 noundef %i.ql), !noalias !17783
  %i.rg = extractvalue { ptr, i64 } %i.rf, 1
  %i.rh = icmp eq i64 %i.rg, 0
  br i1 %i.rh, label %.backedge.i, label %bb.cg

bb.cl:                                            ; preds = %.noexc138.i, %bb.ci
  %i.ri = phi i64 [ %i.rc, %bb.ci ], [ %.pre357.i, %.noexc138.i ] ; 2 uses
  %i.rj = phi i64 [ %i.ns, %bb.ci ], [ %.pre.i.i137.i, %.noexc138.i ] ; 3 uses
  %i.rk = icmp sgt i64 %i.rj, -1
  tail call void @llvm.assume(i1 %i.rk)
  %i.rl = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17908, !noalias !17784, !nonnull !17, !noundef !17 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rm, ptr nonnull readonly align 1 %i.rb, i64 %gepdiff204.i, i1 false), !noalias !17910
  %i.rn = add i64 %i.rj, %gepdiff204.i            ; 5 uses
  store i64 %i.rn, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !17908, !noalias !17784
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17911)
  %i.ro = icmp sgt i64 %i.rn, -1
  tail call void @llvm.assume(i1 %i.ro)
  %i.rp = icmp eq i64 %i.ri, %i.rn
  br i1 %i.rp, label %bb.cm, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit143.i, !prof !22

bb.cm:                                            ; preds = %bb.cl
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ri, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc142.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !17783

.noexc142.i:                                      ; preds = %bb.cm
  %.pre.i141.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !17911, !noalias !17784
  %.pre358.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17911, !noalias !17784
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit143.i

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit143.i: ; preds = %.noexc142.i, %bb.cl
  %i.rq = phi ptr [ %i.rl, %bb.cl ], [ %.pre358.i, %.noexc142.i ]
  %i.rr = phi i64 [ %i.rn, %bb.cl ], [ %.pre.i141.i, %.noexc142.i ] ; 2 uses
  %i.rs = icmp sgt i64 %i.rr, -1
  tail call void @llvm.assume(i1 %i.rs)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rr
  store i8 10, ptr %i.rt, align 1, !noalias !17912
  %i.ru = add nuw i64 %i.rn, 1                    ; 2 uses
  store i64 %i.ru, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !17911, !noalias !17784
  br label %.backedge.i

_ZN5insta8snapshot25get_inline_snapshot_value17he0cfe7a3f5d08f37E.exit: ; preds = %_ZN5alloc3str17join_generic_copy17he55b7573e7681769E.exit.thread.i.i, %_ZN5alloc3str17join_generic_copy17he55b7573e7681769E.exit.i.i, %bb.bc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit120.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit135.i"
  %.sroa.11.0 = phi i64 [ 0, %_ZN5alloc3str17join_generic_copy17he55b7573e7681769E.exit.thread.i.i ], [ %i.kp, %_ZN5alloc3str17join_generic_copy17he55b7573e7681769E.exit.i.i ], [ %i.kp, %bb.bc ], [ %i.pj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit120.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit135.i" ]
  %.sroa.7.0 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN5alloc3str17join_generic_copy17he55b7573e7681769E.exit.thread.i.i ], [ %.sroa.549.0.copyload51.i.i, %_ZN5alloc3str17join_generic_copy17he55b7573e7681769E.exit.i.i ], [ %.sroa.549.0.copyload51.i.i, %bb.bc ], [ %.sroa.10.0.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit120.i" ], [ inttoptr (i64 1 to ptr), %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit135.i" ]
  %.sroa.0.0 = phi i64 [ 0, %_ZN5alloc3str17join_generic_copy17he55b7573e7681769E.exit.thread.i.i ], [ %.sroa.047.0.copyload48.i.i, %_ZN5alloc3str17join_generic_copy17he55b7573e7681769E.exit.i.i ], [ %.sroa.047.0.copyload48.i.i, %bb.bc ], [ %i.pj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit120.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit135.i" ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define { ptr, i64 } @_ZN5insta8snapshot16SnapshotContents6as_str17he46dcf7b27c8ca32E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 4 uses
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h5621ea0afbf16ba2E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.backedge.i.i.i
  %i.g = phi i64 [ %i.av, %.backedge.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %i.ar, %.backedge.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.h, align 1, !alias.scope !17928, !noalias !17929, !noundef !17 ; 5 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.m = and i8 %i.k, 31
  %i.n = zext nneg i8 %i.m to i32                 ; 3 uses
  %i.o = icmp ne ptr %i.j, %i.e
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  %i.q = load i8, ptr %i.j, align 1, !alias.scope !17928, !noalias !17929, !noundef !17
  %i.r = shl nuw nsw i32 %i.n, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32                 ; 2 uses
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = icmp samesign ugt i8 %i.k, -33
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i", label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = zext nneg i8 %i.k to i32
  br label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i"
  %i.x = icmp ne ptr %i.p, %i.e
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 3 ; 3 uses
  %i.z = load i8, ptr %i.p, align 1, !alias.scope !17928, !noalias !17929, !noundef !17
  %i.aa = shl nuw nsw i32 %i.t, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac            ; 2 uses
  %i.ae = shl nuw nsw i32 %i.n, 12
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = icmp samesign ugt i8 %i.k, -17
  br i1 %i.ag, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i.i", label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i"
  %i.ah = icmp ne ptr %i.y, %i.e
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.aj = load i8, ptr %i.y, align 1, !alias.scope !17928, !noalias !17929, !noundef !17
  %i.ak = shl nuw nsw i32 %i.n, 18
  %i.al = and i32 %i.ak, 1835008
  %i.am = shl nuw nsw i32 %i.ad, 6
  %i.an = and i8 %i.aj, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = or disjoint i32 %i.ap, %i.al
  br label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i"
  %i.ar = phi ptr [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i" ], [ %i.ai, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i.i" ], [ %i.p, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i" ], [ %i.j, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.af, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i.i" ], [ %i.aq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i.i" ], [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i" ], [ %i.w, %bb.b ] ; 2 uses
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.as)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h5621ea0afbf16ba2E.exit" [
    i32 13, label %.backedge.i.i.i
    i32 10, label %.backedge.i.i.i
  ]

.backedge.i.i.i:                                  ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i", %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i"
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.g, %i.i
  %i.av = add i64 %i.au, %i.at
  %i.aw = icmp eq ptr %i.ar, %i.e
  br i1 %i.aw, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h5621ea0afbf16ba2E.exit", label %.lr.ph.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h5621ea0afbf16ba2E.exit": ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i", %.backedge.i.i.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h177ee72de4b5ae0dE.exit.i.i.i" ], [ %i.d, %.backedge.i.i.i ] ; 2 uses
  %i.ax = sub nuw i64 %i.d, %.sroa.0.0.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i
  %i.az = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h550555816672d01bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ay, i64 noundef %i.ax)
  ret { ptr, i64 } %i.az
}

; Function Attrs: cold nonlazybind uwtable
define void @_ZN5insta8snapshot16SnapshotContents9to_inline17h66be609d0a66902bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 16               ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 15 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 10 uses
end_hunk_0
