inline.NumInlined: 119
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtCs7kNFBubu20U_7zlib_rs7deflate16flush_block_only:bb.a
  %.not12.i = icmp samesign ugt i64 %i.adw, %i.ads
  br i1 %.not12.i, label %bb.go, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i._crit_edge

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i._crit_edge: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i
  %.pre307.pre = load ptr, ptr %i.j, align 8, !alias.scope !170
  br label %bb.c

bb.go:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.ady = load i8, ptr %i.adx, align 1, !range !287, !noalias !170, !noundef !4
  %i.adz = icmp eq i8 %i.ady, 4
  %.pre307.pre308 = load ptr, ptr %i.j, align 8, !alias.scope !170 ; 22 uses
  br i1 %i.adz, label %bb.c, label %.thread.i

bb.gp:                                            ; preds = %.thread.i, %bb.c
  %i.aea = phi ptr [ %.pre307.pre308, %.thread.i ], [ %.pre307, %bb.c ] ; 2 uses
  %i.aeb = phi i64 [ %i.aa, %.thread.i ], [ %i.y, %bb.c ]
  %i.aec = add nuw i64 %i.aeb, %i.m
  call void @_RNvNtCs7kNFBubu20U_7zlib_rs7deflate19zng_tr_stored_block(ptr noalias noundef nonnull align 64 dereferenceable(3136) %i.aea, i64 noundef %i.m, i64 noundef %i.aec, i1 noundef zeroext %1), !noalias !170
  br label %_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i

_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i: ; preds = %bb.id, %bb.ic, %bb.hm, %bb.hl, %bb.gp
  %i.aed = phi ptr [ %i.ala, %bb.id ], [ %i.ala, %bb.ic ], [ %.pre307.pre308, %bb.hm ], [ %.pre307.pre308, %bb.hl ], [ %i.aea, %bb.gp ] ; 2 uses
  call fastcc void @_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State10init_block(ptr noalias noundef align 64 dereferenceable(3136) %i.aed), !noalias !170
  br i1 %1, label %bb.io, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate18zng_tr_flush_block.exit

bb.gq:                                            ; preds = %.thread.i
  %i.aee = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 144 ; 10 uses
  %i.aef = zext i1 %1 to i64
  %i.aeg = or disjoint i64 %i.aef, 4              ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 184 ; 16 uses
  %i.aei = load i8, ptr %i.aeh, align 8, !alias.scope !288, !noalias !170, !noundef !4 ; 2 uses
  %i.aej = add i8 %i.aei, 3                       ; 3 uses
  %i.aek = icmp ult i8 %i.aej, 64
  br i1 %i.aek, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef align 8 dereferenceable(48) %i.aee, i64 noundef %i.aeg, i8 noundef %i.aej), !noalias !170
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i

bb.gs:                                            ; preds = %bb.gq
  %i.ael = and i8 %i.aei, 63
  %i.aem = zext nneg i8 %i.ael to i64
  %i.aen = shl i64 %i.aeg, %i.aem
  %i.aeo = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 176 ; 2 uses
  %i.aep = load i64, ptr %i.aeo, align 8, !alias.scope !288, !noalias !170, !noundef !4
  %i.aeq = or i64 %i.aep, %i.aen
  store i64 %i.aeq, ptr %i.aeo, align 8, !alias.scope !288, !noalias !170
  store i8 %i.aej, ptr %i.aeh, align 8, !alias.scope !288, !noalias !170
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i

_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i: ; preds = %bb.gs, %bb.gr
  %i.aer = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 360
  %i.aes = load i64, ptr %i.aer, align 8, !noalias !170, !noundef !4 ; 3 uses
  %i.aet = add i64 %i.aes, 1                      ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 2672
  %i.aev = load i64, ptr %i.aeu, align 8, !noalias !170, !noundef !4 ; 4 uses
  %i.aew = add i64 %i.aev, 1                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.aex = icmp ugt i64 %i.aet, 256
  %i.aey = icmp ne i64 %i.aew, 0
  %or.cond.i.i = and i1 %i.aex, %i.aey
  %i.aez = icmp samesign ugt i64 %.sroa.0.0.lcssa.i.i, 2
  %or.cond1.i.i = and i1 %i.aez, %or.cond.i.i
  br i1 %or.cond1.i.i, label %bb.gu, label %bb.gt, !prof !294

bb.gt:                                            ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @84, ptr noundef nonnull inttoptr (i64 33 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #17, !noalias !295
  unreachable

bb.gu:                                            ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i
  %i.afa = icmp ult i64 %i.aet, 287
  %i.afb = icmp ult i64 %i.aew, 31
  %or.cond2.i.i = and i1 %i.afa, %i.afb
  br i1 %or.cond2.i.i, label %bb.gw, label %bb.gv, !prof !294

bb.gv:                                            ; preds = %bb.gu
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @86, ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #17, !noalias !295
  unreachable

bb.gw:                                            ; preds = %bb.gu
  %i.afc = add nsw i64 %i.aes, -256               ; 2 uses
  %i.afd = load i8, ptr %i.aeh, align 8, !alias.scope !291, !noalias !170, !noundef !4 ; 2 uses
  %i.afe = add i8 %i.afd, 5                       ; 4 uses
  %i.aff = icmp ult i8 %i.afe, 64
  br i1 %i.aff, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef align 8 dereferenceable(48) %i.aee, i64 noundef %i.afc, i8 noundef %i.afe), !noalias !170
  %.pre.i.i = load i8, ptr %i.aeh, align 8, !alias.scope !291, !noalias !170
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  %i.afg = and i8 %i.afd, 63
  %i.afh = zext nneg i8 %i.afg to i64
  %i.afi = shl i64 %i.afc, %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 176 ; 2 uses
  %i.afk = load i64, ptr %i.afj, align 8, !alias.scope !291, !noalias !170, !noundef !4
  %i.afl = or i64 %i.afk, %i.afi
  store i64 %i.afl, ptr %i.afj, align 8, !alias.scope !291, !noalias !170
  store i8 %i.afe, ptr %i.aeh, align 8, !alias.scope !291, !noalias !170
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.afm = phi i8 [ %i.afe, %bb.gy ], [ %.pre.i.i, %bb.gx ] ; 2 uses
  %i.afn = add i8 %i.afm, 5                       ; 4 uses
  %i.afo = icmp ult i8 %i.afn, 64
  br i1 %i.afo, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef align 8 dereferenceable(48) %i.aee, i64 noundef %i.aev, i8 noundef %i.afn), !noalias !170
  %.pre18.i.i = load i8, ptr %i.aeh, align 8, !alias.scope !291, !noalias !170
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gz
  %i.afp = and i8 %i.afm, 63
  %i.afq = zext nneg i8 %i.afp to i64
  %i.afr = shl i64 %i.aev, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 176 ; 2 uses
  %i.aft = load i64, ptr %i.afs, align 8, !alias.scope !291, !noalias !170, !noundef !4
  %i.afu = or i64 %i.aft, %i.afr
  store i64 %i.afu, ptr %i.afs, align 8, !alias.scope !291, !noalias !170
  store i8 %i.afn, ptr %i.aeh, align 8, !alias.scope !291, !noalias !170
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.afv = phi i8 [ %i.afn, %bb.hb ], [ %.pre18.i.i, %bb.ha ] ; 2 uses
  %i.afw = add nsw i64 %.sroa.0.0.lcssa.i.i, -3   ; 2 uses
  %i.afx = add i8 %i.afv, 4                       ; 3 uses
  %i.afy = icmp ult i8 %i.afx, 64
  br i1 %i.afy, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef align 8 dereferenceable(48) %i.aee, i64 noundef %i.afw, i8 noundef %i.afx), !noalias !170
  br label %bb.hf

bb.he:                                            ; preds = %bb.hc
  %i.afz = and i8 %i.afv, 63
  %i.aga = zext nneg i8 %i.afz to i64
  %i.agb = shl i64 %i.afw, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 176 ; 2 uses
  %i.agd = load i64, ptr %i.agc, align 8, !alias.scope !291, !noalias !170, !noundef !4
  %i.age = or i64 %i.agd, %i.agb
  store i64 %i.age, ptr %i.agc, align 8, !alias.scope !291, !noalias !170
  store i8 %i.afx, ptr %i.aeh, align 8, !alias.scope !291, !noalias !170
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.agf = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 176 ; 8 uses
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hj, %bb.hf
  %.sroa.04.017.i.i = phi i64 [ 0, %bb.hf ], [ %i.agg, %bb.hj ] ; 3 uses
  %i.agg = add nuw nsw i64 %.sroa.04.017.i.i, 1
  %i.agh = getelementptr inbounds nuw i8, ptr @83, i64 %.sroa.04.017.i.i
  %i.agi = load i8, ptr %i.agh, align 1, !noalias !295, !noundef !4
  %i.agj = zext i8 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.pre307.pre308, i64 %i.agj
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 2946
  %i.agm = load i16, ptr %i.agl, align 2, !alias.scope !291, !noalias !170, !noundef !4
  %i.agn = zext i16 %i.agm to i64                 ; 2 uses
  %i.ago = load i8, ptr %i.aeh, align 8, !alias.scope !291, !noalias !170, !noundef !4 ; 2 uses
  %i.agp = add i8 %i.ago, 3                       ; 3 uses
  %i.agq = icmp ult i8 %i.agp, 64
  br i1 %i.agq, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef align 8 dereferenceable(48) %i.aee, i64 noundef %i.agn, i8 noundef %i.agp), !noalias !170
  br label %bb.hj

bb.hi:                                            ; preds = %bb.hg
  %i.agr = and i8 %i.ago, 63
  %i.ags = zext nneg i8 %i.agr to i64
  %i.agt = shl i64 %i.agn, %i.ags
  %i.agu = load i64, ptr %i.agf, align 8, !alias.scope !291, !noalias !170, !noundef !4
  %i.agv = or i64 %i.agu, %i.agt
  store i64 %i.agv, ptr %i.agf, align 8, !alias.scope !291, !noalias !170
  store i8 %i.agp, ptr %i.aeh, align 8, !alias.scope !291, !noalias !170
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.017.i.i, %.sroa.0.0.lcssa.i.i
  br i1 %exitcond.not.i.i, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate14send_all_trees.exit.i, label %bb.hg

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate14send_all_trees.exit.i: ; preds = %bb.hj
  %i.agw = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 368 ; 3 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 2944 ; 2 uses
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9send_tree(ptr noalias noundef align 8 dereferenceable(48) %i.aee, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.agw, i64 noundef 573, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.agx, i64 noundef %i.aes)
  %i.agy = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 2680 ; 2 uses
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9send_tree(ptr noalias noundef align 8 dereferenceable(48) %i.aee, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.agy, i64 noundef 61, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.agx, i64 noundef %i.aev)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.agz = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.aha = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 112
  %i.ahb = load i64, ptr %i.aha, align 8, !alias.scope !311, !noalias !312, !noundef !4 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 120
  %i.ahd = load i64, ptr %i.ahc, align 8, !alias.scope !311, !noalias !312, !noundef !4 ; 5 uses
  %.not.i.i.i116.i = icmp ugt i64 %i.ahd, %i.ahb
  br i1 %.not.i.i.i116.i, label %bb.hk, label %_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iter.exit.i.i.i, !prof !127

bb.hk:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate14send_all_trees.exit.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ahd, i64 noundef %i.ahb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17, !noalias !314
  unreachable

_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iter.exit.i.i.i: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate14send_all_trees.exit.i
  %.not7.i.i117.i = icmp ult i64 %i.ahd, 3
  br i1 %.not7.i.i117.i, label %._crit_edge.i.i120.i, label %.lr.ph.i.i118.i

.lr.ph.i.i118.i:                                  ; preds = %_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iter.exit.i.i.i
  %2 = urem i64 %i.ahd, 3
  %3 = sub nuw nsw i64 %i.ahd, %2
  %i.ahe = load ptr, ptr %i.agz, align 8, !alias.scope !311, !noalias !312, !noundef !4
  br label %bb.hn

._crit_edge.i.i120.i:                             ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i, %_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iter.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ahf = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 1392
  %i.ahg = load i16, ptr %i.ahf, align 8, !alias.scope !325, !noalias !326, !noundef !4
  %i.ahh = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 1394
  %i.ahi = load i16, ptr %i.ahh, align 2, !alias.scope !325, !noalias !326, !noundef !4
  %i.ahj = zext i16 %i.ahg to i64                 ; 2 uses
  %i.ahk = trunc i16 %i.ahi to i8
  %i.ahl = load i8, ptr %i.aeh, align 8, !alias.scope !327, !noalias !328, !noundef !4 ; 2 uses
  %i.ahm = add i8 %i.ahl, %i.ahk                  ; 3 uses
  %i.ahn = icmp ult i8 %i.ahm, 64
  br i1 %i.ahn, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %._crit_edge.i.i120.i
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aee, i64 noundef %i.ahj, i8 noundef %i.ahm), !noalias !328
  br label %_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i

bb.hm:                                            ; preds = %._crit_edge.i.i120.i
  %i.aho = and i8 %i.ahl, 63
  %i.ahp = zext nneg i8 %i.aho to i64
  %i.ahq = shl i64 %i.ahj, %i.ahp
  %i.ahr = load i64, ptr %i.agf, align 8, !alias.scope !327, !noalias !328, !noundef !4
  %i.ahs = or i64 %i.ahr, %i.ahq
  store i64 %i.ahs, ptr %i.agf, align 8, !alias.scope !327, !noalias !328
  store i8 %i.ahm, ptr %i.aeh, align 8, !alias.scope !327, !noalias !328
  br label %_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i

bb.hn:                                            ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i, %.lr.ph.i.i118.i
  %.sroa.0.09.i.i.i = phi ptr [ %i.ahe, %.lr.ph.i.i118.i ], [ %i.aht, %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i ] ; 3 uses
  %.sroa.5.08.i.i.i = phi i64 [ %3, %.lr.ph.i.i118.i ], [ %i.ahu, %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i ]
  %i.aht = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i, i64 3
  %i.ahu = add i64 %.sroa.5.08.i.i.i, -3          ; 2 uses
  %i.ahv = load i16, ptr %.sroa.0.09.i.i.i, align 1, !noalias !329 ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i, i64 2
  %i.ahx = load i8, ptr %i.ahw, align 1, !noalias !329, !noundef !4 ; 2 uses
  %i.ahy = icmp eq i16 %i.ahv, 0
  br i1 %i.ahy, label %bb.ho, label %bb.hr

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.ahz = zext i8 %i.ahx to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ahz ; 2 uses
  %i.aib = load i16, ptr %i.aia, align 2, !alias.scope !340, !noalias !341, !noundef !4
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 2
  %i.aid = load i16, ptr %i.aic, align 2, !alias.scope !340, !noalias !341, !noundef !4
  %i.aie = zext i16 %i.aib to i64                 ; 2 uses
  %i.aif = trunc i16 %i.aid to i8
  %i.aig = load i8, ptr %i.aeh, align 8, !alias.scope !342, !noalias !343, !noundef !4 ; 2 uses
  %i.aih = add i8 %i.aig, %i.aif                  ; 3 uses
  %i.aii = icmp ult i8 %i.aih, 64
  br i1 %i.aii, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aee, i64 noundef %i.aie, i8 noundef %i.aih), !noalias !343
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i

bb.hq:                                            ; preds = %bb.ho
  %i.aij = and i8 %i.aig, 63
  %i.aik = zext nneg i8 %i.aij to i64
  %i.ail = shl i64 %i.aie, %i.aik
  %i.aim = load i64, ptr %i.agf, align 8, !alias.scope !342, !noalias !343, !noundef !4
  %i.ain = or i64 %i.aim, %i.ail
  store i64 %i.ain, ptr %i.agf, align 8, !alias.scope !342, !noalias !343
  store i8 %i.aih, ptr %i.aeh, align 8, !alias.scope !342, !noalias !343
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i

bb.hr:                                            ; preds = %bb.hn
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.aio = zext i8 %i.ahx to i64                  ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr @62, i64 %i.aio
  %i.aiq = load i8, ptr %i.aip, align 1, !noalias !354, !noundef !4 ; 2 uses
  %i.air = zext i8 %i.aiq to i64                  ; 3 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.air ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 1028
  %i.aiu = load i16, ptr %i.ait, align 2, !alias.scope !355, !noalias !356, !noundef !4
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ais, i64 1030
  %i.aiw = load i16, ptr %i.aiv, align 2, !alias.scope !355, !noalias !356, !noundef !4
  %i.aix = zext i16 %i.aiu to i64                 ; 2 uses
  %i.aiy = zext i16 %i.aiw to i64                 ; 3 uses
  %i.aiz = add i8 %i.aiq, -28
  %i.aja = icmp ult i8 %i.aiz, -20
  br i1 %i.aja, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate10encode_len.exit.i.i.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ajb = getelementptr inbounds nuw i8, ptr @38, i64 %i.air
  %i.ajc = load i8, ptr %i.ajb, align 1, !noalias !354, !noundef !4
  %i.ajd = zext i8 %i.ajc to i64
  %i.aje = getelementptr inbounds nuw i8, ptr @63, i64 %i.air
  %i.ajf = load i8, ptr %i.aje, align 1, !noalias !354, !noundef !4
  %i.ajg = zext i8 %i.ajf to i64
  %i.ajh = sub nsw i64 %i.aio, %i.ajg
  %i.aji = and i64 %i.aiy, 63
  %i.ajj = shl i64 %i.ajh, %i.aji
  %i.ajk = or i64 %i.ajj, %i.aix
  %i.ajl = add nuw nsw i64 %i.ajd, %i.aiy
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate10encode_len.exit.i.i.i.i

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate10encode_len.exit.i.i.i.i: ; preds = %bb.hs, %bb.hr
  %.sroa.05.0.i.i.i.i.i = phi i64 [ %i.aiy, %bb.hr ], [ %i.ajl, %bb.hs ] ; 2 uses
  %.sroa.03.0.i.i.i.i.i = phi i64 [ %i.aix, %bb.hr ], [ %i.ajk, %bb.hs ]
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.ajm = add i16 %i.ahv, -1                     ; 2 uses
  %i.ajn = zext i16 %i.ajm to i64                 ; 2 uses
  %i.ajo = icmp ult i16 %i.ahv, 257
  %i.ajp = lshr i64 %i.ajn, 7
  %i.ajq = add nuw nsw i64 %i.ajp, 256
  %.sroa.04.0.i.i.i.i.i = select i1 %i.ajo, i64 %i.ajn, i64 %i.ajq ; 3 uses
  %i.ajr = icmp samesign ult i64 %.sroa.04.0.i.i.i.i.i, 512
  br i1 %i.ajr, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate10encode_len.exit.i.i.i.i
  %i.ajs = getelementptr inbounds nuw i8, ptr @64, i64 %.sroa.04.0.i.i.i.i.i
  %i.ajt = load i8, ptr %i.ajs, align 1, !noalias !360, !noundef !4 ; 2 uses
  %i.aju = zext i8 %i.ajt to i64                  ; 3 uses
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.aju ; 2 uses
  %i.ajw = load i16, ptr %i.ajv, align 2, !alias.scope !361, !noalias !362, !noundef !4
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 2
  %i.ajy = load i16, ptr %i.ajx, align 2, !alias.scope !361, !noalias !362, !noundef !4
  %i.ajz = zext i16 %i.ajw to i64                 ; 2 uses
  %i.aka = zext i16 %i.ajy to i64                 ; 3 uses
  %i.akb = icmp ult i8 %i.ajt, 4
  br i1 %i.akb, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i.i, label %bb.hv

bb.hu:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate10encode_len.exit.i.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0.i.i.i.i.i, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #17, !noalias !360
  unreachable

bb.hv:                                            ; preds = %bb.ht
  %i.akc = getelementptr inbounds nuw i8, ptr @40, i64 %i.aju
  %i.akd = load i8, ptr %i.akc, align 1, !noalias !360, !noundef !4
  %i.ake = zext i8 %i.akd to i64
  %i.akf = getelementptr inbounds nuw [2 x i8], ptr @66, i64 %i.aju
  %i.akg = load i16, ptr %i.akf, align 2, !noalias !360, !noundef !4
  %i.akh = sub i16 %i.ajm, %i.akg
  %i.aki = zext i16 %i.akh to i64
  %i.akj = and i64 %i.aka, 63
  %i.akk = shl i64 %i.aki, %i.akj
  %i.akl = or i64 %i.akk, %i.ajz
  %i.akm = add nuw nsw i64 %i.ake, %i.aka
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i.i

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i.i: ; preds = %bb.hv, %bb.ht
  %.sroa.011.0.i.i.i.i.i = phi i64 [ %i.aka, %bb.ht ], [ %i.akm, %bb.hv ]
  %.sroa.09.0.i.i.i.i.i = phi i64 [ %i.ajz, %bb.ht ], [ %i.akl, %bb.hv ]
  %i.akn = and i64 %.sroa.05.0.i.i.i.i.i, 63
  %i.ako = shl i64 %.sroa.09.0.i.i.i.i.i, %i.akn
  %i.akp = or i64 %i.ako, %.sroa.03.0.i.i.i.i.i   ; 2 uses
  %i.akq = add nuw nsw i64 %.sroa.011.0.i.i.i.i.i, %.sroa.05.0.i.i.i.i.i
  %i.akr = trunc i64 %i.akq to i8
  %i.aks = load i8, ptr %i.aeh, align 8, !alias.scope !363, !noalias !364, !noundef !4 ; 2 uses
  %i.akt = add i8 %i.aks, %i.akr                  ; 3 uses
  %i.aku = icmp ult i8 %i.akt, 64
  br i1 %i.aku, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i.i
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aee, i64 noundef %i.akp, i8 noundef %i.akt), !noalias !364
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i

bb.hx:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i.i
  %i.akv = and i8 %i.aks, 63
  %i.akw = zext nneg i8 %i.akv to i64
  %i.akx = shl i64 %i.akp, %i.akw
  %i.aky = load i64, ptr %i.agf, align 8, !alias.scope !363, !noalias !364, !noundef !4
  %i.akz = or i64 %i.aky, %i.akx
  store i64 %i.akz, ptr %i.agf, align 8, !alias.scope !363, !noalias !364
  store i8 %i.akt, ptr %i.aeh, align 8, !alias.scope !363, !noalias !364
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i

_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i.i: ; preds = %bb.hx, %bb.hw, %bb.hq, %bb.hp
  %.not.i.i119.i = icmp ult i64 %i.ahu, 3
  br i1 %.not.i.i119.i, label %._crit_edge.i.i120.i, label %bb.hn

bb.hy:                                            ; preds = %bb.c, %.thread136.i
  %i.ala = phi ptr [ %i.k, %.thread136.i ], [ %.pre307, %bb.c ] ; 9 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 144 ; 4 uses
  %i.alc = zext i1 %1 to i64
  %i.ald = or disjoint i64 %i.alc, 2              ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ala, i64 184 ; 8 uses
  %i.alf = load i8, ptr %i.ale, align 8, !alias.scope !365, !noalias !170, !noundef !4 ; 2 uses
  %i.alg = add i8 %i.alf, 3                       ; 3 uses
  %i.alh = icmp ult i8 %i.alg, 64
  br i1 %i.alh, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef align 8 dereferenceable(48) %i.alb, i64 noundef %i.ald, i8 noundef %i.alg), !noalias !170
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit121.i

bb.ia:                                            ; preds = %bb.hy
  %i.ali = and i8 %i.alf, 63
  %i.alj = zext nneg i8 %i.ali to i64
  %i.alk = shl i64 %i.ald, %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %i.ala, i64 176 ; 2 uses
  %i.alm = load i64, ptr %i.all, align 8, !alias.scope !365, !noalias !170, !noundef !4
  %i.aln = or i64 %i.alm, %i.alk
  store i64 %i.aln, ptr %i.all, align 8, !alias.scope !365, !noalias !170
  store i8 %i.alg, ptr %i.ale, align 8, !alias.scope !365, !noalias !170
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit121.i

_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit121.i: ; preds = %bb.ia, %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ala, i64 112
  %i.alp = load i64, ptr %i.alo, align 8, !alias.scope !374, !noalias !375, !noundef !4 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.ala, i64 120
  %i.alr = load i64, ptr %i.alq, align 8, !alias.scope !374, !noalias !375, !noundef !4 ; 5 uses
  %.not.i.i122.i = icmp ugt i64 %i.alr, %i.alp
  br i1 %.not.i.i122.i, label %bb.ib, label %_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iter.exit.i.i, !prof !127

bb.ib:                                            ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit121.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.alr, i64 noundef %i.alp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17, !noalias !377
  unreachable

_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iter.exit.i.i: ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit121.i
  %.not7.i.i = icmp ult i64 %i.alr, 3
  br i1 %.not7.i.i, label %._crit_edge.i127.i, label %.lr.ph.i123.i

.lr.ph.i123.i:                                    ; preds = %_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iter.exit.i.i
  %4 = urem i64 %i.alr, 3
  %5 = sub nuw nsw i64 %i.alr, %4
  %i.als = getelementptr inbounds nuw i8, ptr %i.ala, i64 104
  %i.alt = load ptr, ptr %i.als, align 8, !alias.scope !374, !noalias !375, !noundef !4
  %i.alu = getelementptr inbounds nuw i8, ptr %i.ala, i64 176 ; 4 uses
  br label %bb.ie

._crit_edge.i127.i:                               ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i, %_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iter.exit.i.i
  %i.alv = load i8, ptr %i.ale, align 8, !alias.scope !378, !noalias !383, !noundef !4
  %i.alw = add i8 %i.alv, 7                       ; 3 uses
  %i.alx = icmp ult i8 %i.alw, 64
  br i1 %i.alx, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %._crit_edge.i127.i
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.alb, i64 noundef 0, i8 noundef %i.alw), !noalias !383
  br label %_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i

bb.id:                                            ; preds = %._crit_edge.i127.i
  store i8 %i.alw, ptr %i.ale, align 8, !alias.scope !378, !noalias !383
  br label %_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i

bb.ie:                                            ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i, %.lr.ph.i123.i
  %.sroa.0.09.i.i = phi ptr [ %i.alt, %.lr.ph.i123.i ], [ %i.aly, %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i ] ; 3 uses
  %.sroa.5.08.i.i = phi i64 [ %5, %.lr.ph.i123.i ], [ %i.alz, %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i ]
  %i.aly = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 3
  %i.alz = add i64 %.sroa.5.08.i.i, -3            ; 2 uses
  %i.ama = load i16, ptr %.sroa.0.09.i.i, align 1, !noalias !386 ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 2
  %i.amc = load i8, ptr %i.amb, align 1, !noalias !386, !noundef !4 ; 2 uses
  %i.amd = icmp eq i16 %i.ama, 0
  br i1 %i.amd, label %bb.if, label %bb.ii

bb.if:                                            ; preds = %bb.ie
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.ame = zext i8 %i.amc to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr @33, i64 %i.ame ; 2 uses
  %i.amg = load i16, ptr %i.amf, align 2, !alias.scope !397, !noalias !398, !noundef !4
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amf, i64 2
  %i.ami = load i16, ptr %i.amh, align 2, !alias.scope !397, !noalias !398, !noundef !4
  %i.amj = zext i16 %i.amg to i64                 ; 2 uses
  %i.amk = trunc i16 %i.ami to i8
  %i.aml = load i8, ptr %i.ale, align 8, !alias.scope !399, !noalias !400, !noundef !4 ; 2 uses
  %i.amm = add i8 %i.aml, %i.amk                  ; 3 uses
  %i.amn = icmp ult i8 %i.amm, 64
  br i1 %i.amn, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.alb, i64 noundef %i.amj, i8 noundef %i.amm), !noalias !400
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i

bb.ih:                                            ; preds = %bb.if
  %i.amo = and i8 %i.aml, 63
  %i.amp = zext nneg i8 %i.amo to i64
  %i.amq = shl i64 %i.amj, %i.amp
  %i.amr = load i64, ptr %i.alu, align 8, !alias.scope !399, !noalias !400, !noundef !4
  %i.ams = or i64 %i.amr, %i.amq
  store i64 %i.ams, ptr %i.alu, align 8, !alias.scope !399, !noalias !400
  store i8 %i.amm, ptr %i.ale, align 8, !alias.scope !399, !noalias !400
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i

bb.ii:                                            ; preds = %bb.ie
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.amt = zext i8 %i.amc to i64
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr @29, i64 %i.amt ; 2 uses
  %i.amv = load i16, ptr %i.amu, align 2, !noalias !404, !noundef !4
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amu, i64 2
  %i.amx = load i16, ptr %i.amw, align 2, !noalias !404, !noundef !4 ; 2 uses
  %i.amy = zext i16 %i.amv to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.amz = add i16 %i.ama, -1                     ; 2 uses
  %i.ana = zext i16 %i.amz to i64                 ; 2 uses
  %i.anb = icmp ult i16 %i.ama, 257
  %i.anc = lshr i64 %i.ana, 7
  %i.and = add nuw nsw i64 %i.anc, 256
  %.sroa.04.0.i.i.i.i = select i1 %i.anb, i64 %i.ana, i64 %i.and ; 3 uses
  %i.ane = icmp samesign ult i64 %.sroa.04.0.i.i.i.i, 512
  br i1 %i.ane, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.anf = getelementptr inbounds nuw i8, ptr @64, i64 %.sroa.04.0.i.i.i.i
  %i.ang = load i8, ptr %i.anf, align 1, !noalias !408, !noundef !4 ; 2 uses
  %i.anh = zext i8 %i.ang to i64                  ; 3 uses
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr @30, i64 %i.anh
  %i.anj = load i16, ptr %i.ani, align 2, !alias.scope !405, !noalias !404, !noundef !4
  %i.ank = zext i16 %i.anj to i64                 ; 2 uses
  %i.anl = icmp ult i8 %i.ang, 4
  br i1 %i.anl, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i, label %bb.il

bb.ik:                                            ; preds = %bb.ii
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0.i.i.i.i, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #17, !noalias !408
  unreachable

bb.il:                                            ; preds = %bb.ij
  %i.anm = getelementptr inbounds nuw i8, ptr @40, i64 %i.anh
  %i.ann = load i8, ptr %i.anm, align 1, !noalias !408, !noundef !4
  %i.ano = zext i8 %i.ann to i16
  %i.anp = getelementptr inbounds nuw [2 x i8], ptr @66, i64 %i.anh
  %i.anq = load i16, ptr %i.anp, align 2, !noalias !408, !noundef !4
  %i.anr = sub i16 %i.amz, %i.anq
  %i.ans = zext i16 %i.anr to i64
  %i.ant = shl nuw nsw i64 %i.ans, 5
  %i.anu = or i64 %i.ant, %i.ank
  %i.anv = add nuw nsw i16 %i.ano, 5
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i: ; preds = %bb.il, %bb.ij
  %.sroa.011.0.i.i.i124.i = phi i16 [ 5, %bb.ij ], [ %i.anv, %bb.il ]
  %.sroa.09.0.i.i.i125.i = phi i64 [ %i.ank, %bb.ij ], [ %i.anu, %bb.il ]
  %i.anw = and i16 %i.amx, 63
  %i.anx = zext nneg i16 %i.anw to i64
  %i.any = shl i64 %.sroa.09.0.i.i.i125.i, %i.anx
  %i.anz = or i64 %i.any, %i.amy                  ; 2 uses
  %i.aoa = add i16 %.sroa.011.0.i.i.i124.i, %i.amx
  %i.aob = trunc i16 %i.aoa to i8
  %i.aoc = load i8, ptr %i.ale, align 8, !alias.scope !409, !noalias !170, !noundef !4 ; 2 uses
  %i.aod = add i8 %i.aoc, %i.aob                  ; 3 uses
  %i.aoe = icmp ult i8 %i.aod, 64
  br i1 %i.aoe, label %bb.in, label %bb.im

bb.im:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef align 8 dereferenceable(48) %i.alb, i64 noundef %i.anz, i8 noundef %i.aod), !noalias !170
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i

bb.in:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate11encode_dist.exit.i.i.i
  %i.aof = and i8 %i.aoc, 63
  %i.aog = zext nneg i8 %i.aof to i64
  %i.aoh = shl i64 %i.anz, %i.aog
  %i.aoi = load i64, ptr %i.alu, align 8, !alias.scope !409, !noalias !170, !noundef !4
  %i.aoj = or i64 %i.aoi, %i.aoh
  store i64 %i.aoj, ptr %i.alu, align 8, !alias.scope !409, !noalias !170
  store i8 %i.aod, ptr %i.ale, align 8, !alias.scope !409, !noalias !170
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i

_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter8emit_lit.exit.i.i: ; preds = %bb.in, %bb.im, %bb.ih, %bb.ig
  %.not.i126.i = icmp ult i64 %i.alz, 3
  br i1 %.not.i126.i, label %._crit_edge.i127.i, label %bb.ie

bb.io:                                            ; preds = %_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aed, i64 144
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter10emit_align(ptr noalias noundef align 8 dereferenceable(48) %i.aok), !noalias !170
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate18zng_tr_flush_block.exit

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate18zng_tr_flush_block.exit: ; preds = %_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i, %bb.io
  %i.aol = load ptr, ptr %i.j, align 8, !nonnull !4, !align !123, !noundef !4 ; 5 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 16
  %i.aon = load i64, ptr %i.aom, align 16, !noundef !4
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aol, i64 96
  store i64 %i.aon, ptr %i.aoo, align 32
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aol, i64 144 ; 2 uses
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter10flush_bits(ptr noalias noundef align 8 dereferenceable(48) %i.aop), !noalias !410
  %i.aoq = call { ptr, i64 } @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7deflate7pendingNtB2_7Pending7pending(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aop), !noalias !410 ; 2 uses
  %i.aor = extractvalue { ptr, i64 } %i.aoq, 1
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aot = load i32, ptr %i.aos, align 8, !alias.scope !410, !noundef !4 ; 2 uses
  %i.aou = zext i32 %i.aot to i64
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aou, i64 %i.aor) ; 8 uses
  %i.aov = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.aov, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13flush_pending.exit, label %bb.ip

bb.ip:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate18zng_tr_flush_block.exit
  %i.aow = extractvalue { ptr, i64 } %i.aoq, 0
  %i.aox = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aoy = load ptr, ptr %i.aox, align 8, !alias.scope !410, !noundef !4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoy, ptr align 1 %i.aow, i64 %.sroa.0.0.i.i, i1 false), !noalias !410
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 %.sroa.0.0.i.i
  store ptr %i.aoz, ptr %i.aox, align 8, !alias.scope !410
  %i.apa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.apb = load i64, ptr %i.apa, align 8, !alias.scope !410, !noundef !4
  %i.apc = add i64 %i.apb, %.sroa.0.0.i.i
  store i64 %i.apc, ptr %i.apa, align 8, !alias.scope !410
  %i.apd = trunc nuw i64 %.sroa.0.0.i.i to i32
  %i.ape = sub i32 %i.aot, %i.apd
  store i32 %i.ape, ptr %i.aos, align 8, !alias.scope !410
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aol, i64 160 ; 3 uses
  %i.apg = load i64, ptr %i.apf, align 32, !noalias !410, !noundef !4
  %i.aph = add i64 %i.apg, %.sroa.0.0.i.i
  store i64 %i.aph, ptr %i.apf, align 32, !noalias !410
  %i.api = getelementptr inbounds nuw i8, ptr %i.aol, i64 168 ; 2 uses
  %i.apj = load i64, ptr %i.api, align 8, !noalias !410, !noundef !4 ; 2 uses
  %i.apk = sub i64 %i.apj, %.sroa.0.0.i.i
  store i64 %i.apk, ptr %i.api, align 8, !noalias !410
  %i.apl = icmp eq i64 %i.apj, %.sroa.0.0.i.i
  br i1 %i.apl, label %bb.iq, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13flush_pending.exit

bb.iq:                                            ; preds = %bb.ip
  store i64 0, ptr %i.apf, align 32, !noalias !410
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13flush_pending.exit

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13flush_pending.exit: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate18zng_tr_flush_block.exit, %bb.ip, %bb.iq
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs7kNFBubu20U_7zlib_rs7deflate19compress_with_flush(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %5, i8 noundef range(i8 0, 6) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
