inline.NumInlined: 2834
inline.NumDeleted: 1091
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %.not61.i.i.i = icmp eq ptr %.pr60.i.i.i, null
  br i1 %.not61.i.i.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aek = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i, i64 9
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !167, !range !65, !noalias !319, !noundef !66
  %i.aem = trunc nuw i8 %i.ael to i1
  %i.aen = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i, i64 16
  %i.aeo = load ptr, ptr %i.aen, align 8, !noalias !319
  %i.aep = select i1 %i.aem, ptr %i.aeo, ptr null, !prof !54
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji, %.thread.i.i.i
  %i.aeq = phi ptr [ %i.aej, %bb.jj ], [ %i.aej, %bb.ji ], [ %i.adk, %.thread.i.i.i ] ; 7 uses
  %i.aer = phi ptr [ %i.aep, %bb.jj ], [ null, %bb.ji ], [ null, %.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #20, !noalias !322
  %i.aes = getelementptr inbounds nuw i8, ptr %i.acu, i64 32 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8, !tbaa !163, !noalias !319
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.acu, i64 16 ; 3 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !119, !noalias !319
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef %i.aer, i64 noundef %i.aet, i64 noundef %i.aev)
          to label %.noexc82.i.i unwind label %bb.kk, !noalias !303, !inline_history !225

.noexc82.i.i:                                     ; preds = %bb.jk
  %i.aew = load i64, ptr %i.aeu, align 8, !tbaa !119, !noalias !319 ; 2 uses
  %i.aex = icmp sgt i64 %i.aew, 0
  br i1 %i.aex, label %.lr.ph71.i.i.preheader.i, label %._crit_edge.i.i.i

.lr.ph71.i.i.preheader.i:                         ; preds = %.noexc82.i.i
  %i.aey = load i8, ptr %82, align 8, !tbaa !327, !range !65, !noalias !307, !noundef !66
  %i.aez = trunc nuw i8 %i.aey to i1
  br i1 %i.aez, label %.lr.ph71.i.i.i, label %.lr.ph71.i.i.preheader.split.us.i

.lr.ph71.i.i.preheader.split.us.i:                ; preds = %.lr.ph71.i.i.preheader.i
  %i.afa = load i64, ptr %i.abz, align 8, !tbaa !330, !noalias !307
  %.promoted252.i = load i64, ptr %i.aca, align 8, !tbaa !331, !noalias !307
  br label %.lr.ph71.i.i.us.i

.lr.ph71.i.i.us.i:                                ; preds = %.loopexit.i.i.us.i, %.lr.ph71.i.i.preheader.split.us.i
  %i.afb = phi i64 [ %i.aff, %.loopexit.i.i.us.i ], [ %.promoted252.i, %.lr.ph71.i.i.preheader.split.us.i ] ; 2 uses
  %.03170.i.i.us.i = phi i64 [ %.3.i.i.us.i, %.loopexit.i.i.us.i ], [ 0, %.lr.ph71.i.i.preheader.split.us.i ] ; 3 uses
  %i.afc = sub nsw i64 %i.afa, %i.afb
  %.sroa.speculated.i.i.us.i = call i64 @llvm.smin.i64(i64 %i.afc, i64 32767) ; 4 uses
  %i.afd = trunc i64 %.sroa.speculated.i.i.us.i to i16
  %sext.i.i.us.i = shl i64 %.sroa.speculated.i.i.us.i, 48 ; 2 uses
  %i.afe = ashr exact i64 %sext.i.i.us.i, 48      ; 2 uses
  %i.aff = add nsw i64 %i.afe, %i.afb
  %i.afg = icmp sgt i16 %i.afd, 0
  br i1 %i.afg, label %.lr.ph68.i.i.us.i.preheader, label %.loopexit.i.i.us.i

.lr.ph68.i.i.us.i.preheader:                      ; preds = %.lr.ph71.i.i.us.i
  %xtraiter1187 = and i64 %.sroa.speculated.i.i.us.i, 1 ; 2 uses
  %i.afh = icmp eq i64 %sext.i.i.us.i, 281474976710656
  br i1 %i.afh, label %.lr.ph68.i.i.us.i.epil.preheader, label %.lr.ph68.i.i.us.i.preheader.new

.lr.ph68.i.i.us.i.preheader.new:                  ; preds = %.lr.ph68.i.i.us.i.preheader
  %unroll_iter1191 = sub nsw i64 %i.afe, %xtraiter1187
  br label %.lr.ph68.i.i.us.i

.lr.ph68.i.i.us.i:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph68.i.i.us.i.preheader.new
  %.166.i.i.us.i = phi i64 [ %.03170.i.i.us.i, %.lr.ph68.i.i.us.i.preheader.new ], [ %i.afx, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter1192 = phi i64 [ 0, %.lr.ph68.i.i.us.i.preheader.new ], [ %niter1192.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.166.i.i.us.i
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !3, !noalias !319
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %bb.jl, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

bb.jl:                                            ; preds = %.lr.ph68.i.i.us.i
  %i.afl = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %.166.i.i.us.i
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !3, !noalias !319
  %i.afn = add i32 %i.afm, %i.acr
  %i.afo = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %.166.i.i.us.i
  store i32 %i.afn, ptr %i.afo, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i: ; preds = %bb.jl, %.lr.ph68.i.i.us.i
  %i.afp = add nsw i64 %.166.i.i.us.i, 1          ; 3 uses
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %i.afp
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !3, !noalias !319
  %i.afs = icmp sgt i32 %i.afr, 0
  br i1 %i.afs, label %bb.jm, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

bb.jm:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.afp
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !3, !noalias !319
  %i.afv = add i32 %i.afu, %i.acr
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %i.afp
  store i32 %i.afv, ptr %i.afw, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1: ; preds = %bb.jm, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.afx = add nsw i64 %.166.i.i.us.i, 2          ; 3 uses
  %niter1192.next.1 = add i64 %niter1192, 2       ; 2 uses
  %niter1192.ncmp.1 = icmp eq i64 %niter1192.next.1, %unroll_iter1191
  br i1 %niter1192.ncmp.1, label %.loopexit.i.i.us.i.loopexit.unr-lcssa, label %.lr.ph68.i.i.us.i, !llvm.loop !332

.loopexit.i.i.us.i.loopexit.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1188.not = icmp eq i64 %xtraiter1187, 0
  br i1 %lcmp.mod1188.not, label %.loopexit.i.i.us.i, label %.lr.ph68.i.i.us.i.epil.preheader

.lr.ph68.i.i.us.i.epil.preheader:                 ; preds = %.loopexit.i.i.us.i.loopexit.unr-lcssa, %.lr.ph68.i.i.us.i.preheader
  %.166.i.i.us.i.epil.init = phi i64 [ %.03170.i.i.us.i, %.lr.ph68.i.i.us.i.preheader ], [ %i.afx, %.loopexit.i.i.us.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1190 = trunc i64 %.sroa.speculated.i.i.us.i to i1
  call void @llvm.assume(i1 %lcmp.mod1190)
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.166.i.i.us.i.epil.init
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !3, !noalias !319
  %i.aga = icmp sgt i32 %i.afz, 0
  br i1 %i.aga, label %bb.jn, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

bb.jn:                                            ; preds = %.lr.ph68.i.i.us.i.epil.preheader
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %.166.i.i.us.i.epil.init
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !3, !noalias !319
  %i.agd = add i32 %i.agc, %i.acr
  %i.age = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %.166.i.i.us.i.epil.init
  store i32 %i.agd, ptr %i.age, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil: ; preds = %bb.jn, %.lr.ph68.i.i.us.i.epil.preheader
  %i.agf = add nsw i64 %.166.i.i.us.i.epil.init, 1
  br label %.loopexit.i.i.us.i

.loopexit.i.i.us.i:                               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil, %.loopexit.i.i.us.i.loopexit.unr-lcssa, %.lr.ph71.i.i.us.i
  %.3.i.i.us.i = phi i64 [ %.03170.i.i.us.i, %.lr.ph71.i.i.us.i ], [ %i.afx, %.loopexit.i.i.us.i.loopexit.unr-lcssa ], [ %i.agf, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil ] ; 2 uses
  %i.agg = icmp slt i64 %.3.i.i.us.i, %i.aew
  br i1 %i.agg, label %.lr.ph71.i.i.us.i, label %._crit_edge.i.i.i, !llvm.loop !333

.lr.ph71.i.i.i:                                   ; preds = %.lr.ph71.i.i.preheader.i, %.loopexit.i.i.i
  %.03170.i.i.i = phi i64 [ %.3.i.i.i, %.loopexit.i.i.i ], [ 0, %.lr.ph71.i.i.preheader.i ] ; 7 uses
  %i.agh = load i8, ptr %82, align 8, !tbaa !327, !range !65, !noalias !307, !noundef !66
  %i.agi = trunc nuw i8 %i.agh to i1
  br i1 %i.agi, label %bb.jo, label %.noexc83.thread.i.i

bb.jo:                                            ; preds = %.lr.ph71.i.i.i
  %i.agj = load i64, ptr %i.acc, align 8, !tbaa !334, !noalias !307 ; 4 uses
  %.not.i.i97.i.i = icmp eq i64 %i.agj, 0
  br i1 %.not.i.i97.i.i, label %.noexc83.i.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.agk = load i64, ptr %i.acd, align 8, !tbaa !335, !noalias !307 ; 3 uses
  %i.agl = icmp eq i64 %i.agk, 0
  br i1 %i.agl, label %bb.jq, label %bb.jt

bb.jq:                                            ; preds = %bb.jp
  %i.agm = icmp slt i64 %i.agj, 64
  br i1 %i.agm, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.agn = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.acb, i64 noundef 64) #20, !noalias !303, !inline_history !225 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %i.agn, 16
  br label %bb.jx

bb.js:                                            ; preds = %bb.jq
  %i.ago = load ptr, ptr %i.acb, align 8, !tbaa !336, !noalias !307 ; 2 uses
  %i.agp = load i64, ptr %i.ago, align 1, !noalias !303
  br label %bb.jw

bb.jt:                                            ; preds = %bb.jp
  %i.agq = sub nsw i64 128, %i.agk
  %i.agr = icmp slt i64 %i.agj, %i.agq
  br i1 %i.agr, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.ags = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.acb, i64 noundef 64) #20, !noalias !303, !inline_history !225 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i = lshr i32 %i.ags, 16
  br label %bb.jx

bb.jv:                                            ; preds = %bb.jt
  %i.agt = load ptr, ptr %i.acb, align 8, !tbaa !336, !noalias !307 ; 3 uses
  %i.agu = load i64, ptr %i.agt, align 1, !noalias !303
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.agw = load i64, ptr %i.agv, align 1, !noalias !303
  %.0.i.i.i.i154.i = call noundef i64 @llvm.fshr.i64(i64 %i.agw, i64 %i.agu, i64 %i.agk)
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.js
  %.0.i.sink.i.i.i.i = phi i64 [ %.0.i.i.i.i154.i, %bb.jv ], [ %i.agp, %bb.js ]
  %i.agx = phi ptr [ %i.agt, %bb.jv ], [ %i.ago, %bb.js ]
  %i.agy = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i)
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  store ptr %i.agz, ptr %i.acb, align 8, !tbaa !336, !noalias !307
  %i.aha = add nsw i64 %i.agj, -64
  store i64 %i.aha, ptr %i.acc, align 8, !tbaa !334, !noalias !307
  %i.ahb = trunc nuw nsw i64 %i.agy to i32
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.ju, %bb.jr
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.agn, %bb.jr ], [ 64, %bb.jw ], [ %i.ags, %bb.ju ]
  %.sroa.5.0.i.i.i.i = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i, %bb.jr ], [ %i.ahb, %bb.jw ], [ %.sroa.5.0.extract.shift2.i.i.i.i, %bb.ju ]
  %i.ahc = shl nuw i32 %.sroa.5.0.i.i.i.i, 16
  %i.ahd = and i32 %.sroa.0.0.i.i.i.i, 65535
  %i.ahe = or disjoint i32 %i.ahc, %i.ahd
  br label %.noexc83.i.i

.noexc83.thread.i.i:                              ; preds = %.lr.ph71.i.i.i
  %i.ahf = load i64, ptr %i.abz, align 8, !tbaa !330, !noalias !307
  %i.ahg = load i64, ptr %i.aca, align 8, !tbaa !331, !noalias !307 ; 2 uses
  %i.ahh = sub nsw i64 %i.ahf, %i.ahg
  %.sroa.speculated.i.i.i = call i64 @llvm.smin.i64(i64 %i.ahh, i64 32767) ; 2 uses
  %i.ahi = trunc i64 %.sroa.speculated.i.i.i to i16
  %sext.i.i.i = shl i64 %.sroa.speculated.i.i.i, 48
  %i.ahj = ashr exact i64 %sext.i.i.i, 48
  %i.ahk = add nsw i64 %i.ahj, %i.ahg
  store i64 %i.ahk, ptr %i.aca, align 8, !tbaa !331, !noalias !307
  br label %.preheader.i.i.i

.noexc83.i.i:                                     ; preds = %bb.jx, %bb.jo
  %.sroa.0.0.insert.insert.i.i.i.i = phi i32 [ %i.ahe, %bb.jx ], [ 0, %bb.jo ] ; 4 uses
  %.sroa.0.0.extract.trunc.i98.i.i = zext i32 %.sroa.0.0.insert.insert.i.i.i.i to i64
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i, 16 ; 2 uses
  %sext4.i.i.i = shl i64 %.sroa.0.0.extract.trunc.i98.i.i, 48
  %118 = ashr exact i64 %sext4.i.i.i, 48
  %i.ahl = load i64, ptr %i.aca, align 8, !tbaa !331, !noalias !307
  %i.ahm = add nsw i64 %118, %i.ahl
  store i64 %i.ahm, ptr %i.aca, align 8, !tbaa !331, !noalias !307
  %.pre.i.i155.i = and i32 %.sroa.0.0.insert.insert.i.i.i.i, 65535
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i to i16 ; 4 uses
  %i.ahn = icmp eq i32 %.pre.i.i155.i, %.sroa.4.0.extract.shift.i.i.i
  br i1 %i.ahn, label %.preheader.i.i.i, label %bb.ka

.preheader.i.i.i:                                 ; preds = %.noexc83.i.i, %.noexc83.thread.i.i
  %.sroa.0.0.i36.i.i = phi i16 [ %i.ahi, %.noexc83.thread.i.i ], [ %.sroa.0.0.extract.trunc.i.i.i, %.noexc83.i.i ] ; 5 uses
  %i.aho = icmp sgt i16 %.sroa.0.0.i36.i.i, 0
  br i1 %i.aho, label %.lr.ph68.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph68.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %i.ahp = icmp eq i16 %.sroa.0.0.i36.i.i, 1
  br i1 %i.ahp, label %.lr.ph68.i.i.i.epil.preheader, label %.lr.ph68.i.i.i.preheader.new

.lr.ph68.i.i.i.preheader.new:                     ; preds = %.lr.ph68.i.i.i.preheader
  %119 = and i16 %.sroa.0.0.i36.i.i, 32766
  %unroll_iter1195 = zext nneg i16 %119 to i64
  br label %.lr.ph68.i.i.i

.lr.ph68.i.i.i:                                   ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph68.i.i.i.preheader.new
  %.166.i.i.i = phi i64 [ %.03170.i.i.i, %.lr.ph68.i.i.i.preheader.new ], [ %i.aif, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1198 = phi i64 [ 0, %.lr.ph68.i.i.i.preheader.new ], [ %niter1198.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.ahq = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.166.i.i.i
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !3, !noalias !319
  %i.ahs = icmp sgt i32 %i.ahr, 0
  br i1 %i.ahs, label %bb.jy, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.jy:                                            ; preds = %.lr.ph68.i.i.i
  %i.aht = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %.166.i.i.i
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !3, !noalias !319
  %i.ahv = add i32 %i.ahu, %i.acr
  %i.ahw = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %.166.i.i.i
  store i32 %i.ahv, ptr %i.ahw, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.jy, %.lr.ph68.i.i.i
  %i.ahx = add nsw i64 %.166.i.i.i, 1             ; 3 uses
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %i.ahx
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !3, !noalias !319
  %i.aia = icmp sgt i32 %i.ahz, 0
  br i1 %i.aia, label %bb.jz, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.jz:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.ahx
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !3, !noalias !319
  %i.aid = add i32 %i.aic, %i.acr
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %i.ahx
  store i32 %i.aid, ptr %i.aie, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.jz, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.aif = add nsw i64 %.166.i.i.i, 2             ; 3 uses
  %niter1198.next.1 = add i64 %niter1198, 2       ; 2 uses
  %niter1198.ncmp.1 = icmp eq i64 %niter1198.next.1, %unroll_iter1195
  br i1 %niter1198.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i.i, !llvm.loop !332

bb.ka:                                            ; preds = %.noexc83.i.i
  %i.aig = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i, 0
  br i1 %i.aig, label %bb.kb, label %.preheader62.i.i.i

.preheader62.i.i.i:                               ; preds = %bb.ka
  %120 = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64
  %i.aih = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %i.aih, label %.lr.ph.i77.i.i, label %.loopexit.i.i.i

.lr.ph.i77.i.i:                                   ; preds = %.preheader62.i.i.i
  %i.aii = load i64, ptr %i.aes, align 8, !tbaa !163, !noalias !319
  br label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.aij = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.03170.i.i.i
  %121 = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %i.aik = shl nsw i64 %121, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aij, i8 0, i64 %i.aik, i1 false), !noalias !319
  %i.ail = add nsw i64 %.03170.i.i.i, %121
  br label %.loopexit.i.i.i

bb.kc:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %.lr.ph.i77.i.i
  %.065.i.i.i = phi i64 [ 0, %.lr.ph.i77.i.i ], [ %i.ajb, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ]
  %.264.i.i.i = phi i64 [ %.03170.i.i.i, %.lr.ph.i77.i.i ], [ %i.ajc, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 5 uses
  %i.aim = add nsw i64 %.264.i.i.i, %i.aii        ; 2 uses
  %i.ain = lshr i64 %i.aim, 3
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !45, !noalias !319
  %i.aiq = trunc i64 %i.aim to i8
  %i.air = and i8 %i.aiq, 7
  %i.ais = lshr i8 %i.aip, %i.air
  %i.ait = trunc i8 %i.ais to i1
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.264.i.i.i ; 2 uses
  br i1 %i.ait, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !3, !noalias !319
  %i.aiw = icmp sgt i32 %i.aiv, 0
  br i1 %i.aiw, label %bb.ke, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %.264.i.i.i
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !3, !noalias !319
  %i.aiz = add i32 %i.aiy, %i.acr
  %i.aja = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %.264.i.i.i
  store i32 %i.aiz, ptr %i.aja, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.kf:                                            ; preds = %bb.kc
  store i32 0, ptr %i.aiu, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i: ; preds = %bb.kf, %bb.ke, %bb.kd
  %i.ajb = add nuw nsw i64 %.065.i.i.i, 1         ; 2 uses
  %i.ajc = add nsw i64 %.264.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ajb, %120
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %bb.kc, !llvm.loop !337

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1
  %122 = and i16 %.sroa.0.0.i36.i.i, 1
  %lcmp.mod1194.not = icmp eq i16 %122, 0
  br i1 %lcmp.mod1194.not, label %.loopexit.i.i.i, label %.lr.ph68.i.i.i.epil.preheader

.lr.ph68.i.i.i.epil.preheader:                    ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph68.i.i.i.preheader
  %.166.i.i.i.epil.init = phi i64 [ %.03170.i.i.i, %.lr.ph68.i.i.i.preheader ], [ %i.aif, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1196 = trunc i16 %.sroa.0.0.i36.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1196)
  %i.ajd = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.166.i.i.i.epil.init
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !3, !noalias !319
  %i.ajf = icmp sgt i32 %i.aje, 0
  br i1 %i.ajf, label %bb.kg, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

bb.kg:                                            ; preds = %.lr.ph68.i.i.i.epil.preheader
  %i.ajg = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %.166.i.i.i.epil.init
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !3, !noalias !319
  %i.aji = add i32 %i.ajh, %i.acr
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %.166.i.i.i.epil.init
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil: ; preds = %bb.kg, %.lr.ph68.i.i.i.epil.preheader
  %i.ajk = add nsw i64 %.166.i.i.i.epil.init, 1
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.kb, %.preheader62.i.i.i, %.preheader.i.i.i
  %.3.i.i.i = phi i64 [ %i.ajk, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil ], [ %i.ail, %bb.kb ], [ %.03170.i.i.i, %.preheader.i.i.i ], [ %.03170.i.i.i, %.preheader62.i.i.i ], [ %i.aif, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.ajc, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 2 uses
  %i.ajl = load i64, ptr %i.aeu, align 8, !tbaa !119, !noalias !319
  %i.ajm = icmp slt i64 %.3.i.i.i, %i.ajl
  br i1 %i.ajm, label %.lr.ph71.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !338

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.us.i, %.loopexit.i.i.i, %.noexc82.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20, !noalias !322
  br label %.thread.thread.i.i

bb.kh:                                            ; preds = %bb.jh, %bb.jg, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20, !noalias !322
  %.val69.pr.i.i = load ptr, ptr %86, align 8, !tbaa !51, !noalias !307
  %i.ajn = icmp eq ptr %.val69.pr.i.i, null
  br i1 %i.ajn, label %.thread.i.i, label %.critedge.i.i, !prof !340

.critedge.i.i:                                    ; preds = %bb.kh
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %103, ptr noundef nonnull align 8 dereferenceable(8) %86) #20, !inline_history !225
  %i.ajo = load ptr, ptr %86, align 8, !tbaa !51, !noalias !307 ; 2 uses
  %.not.i.i.i155.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i.i.i155.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, label %bb.ki, !prof !54

bb.ki:                                            ; preds = %.critedge.i.i
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 1
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !55, !range !65, !noundef !66
  %i.ajr = trunc nuw i8 %i.ajq to i1
  br i1 %i.ajr, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %86) #20, !inline_history !225
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i: ; preds = %bb.kj, %bb.ki, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !307
  br label %bb.kl

bb.kk:                                            ; preds = %bb.jk, %bb.je, %bb.jc, %.invoke.i.i
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

.thread.i.i:                                      ; preds = %bb.kh
  %.val70.pre.i.i = load i32, ptr %i.ace, align 8, !tbaa !45, !noalias !307 ; 2 uses
  %.not.i156.i = icmp eq i32 %.val70.pre.i.i, 0
  br i1 %.not.i156.i, label %.thread.thread.i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, !prof !340

.thread.thread.i.i:                               ; preds = %.thread.i.i, %._crit_edge.i.i.i, %bb.ix
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !159, !noalias !303
  %i.ajv = add nsw i64 %i.aju, %.0478.i.i         ; 2 uses
  %i.ajw = icmp sgt i64 %i.ajv, 2147483647
  br i1 %i.ajw, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i: ; preds = %.thread.thread.i.i
  %i.ajx = load ptr, ptr %i.acw, align 8, !tbaa !164, !noalias !303
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 24
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !306, !noalias !303
  %i.aka = lshr i64 %i.ajz, 2
  %i.akb = add i64 %i.aka, %.0449.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !307
  %i.akc = add nuw i64 %.04310.i.i, 1             ; 2 uses
  %exitcond642.not = icmp eq i64 %i.akc, %i.aci
  br i1 %exitcond642.not, label %.critedge62.i.i, label %bb.ix, !llvm.loop !341

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i: ; preds = %.thread.thread.i.i, %.thread.i.i
  %.val70.pre.lcssa.sink.i.i = phi i32 [ %.val70.pre.i.i, %.thread.i.i ], [ 1, %.thread.thread.i.i ]
  store ptr null, ptr %103, align 8, !tbaa !51, !alias.scope !303, !noalias !222
  %i.akd = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 %.val70.pre.lcssa.sink.i.i, ptr %i.akd, align 8, !tbaa !45, !alias.scope !303, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !307
  br label %bb.kl

.critedge62.i.i:                                  ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i
  store ptr null, ptr %103, align 8, !tbaa !51, !alias.scope !303, !noalias !222
  %i.ake = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 0, ptr %i.ake, align 8, !tbaa !45, !alias.scope !303, !noalias !222
  br label %bb.kl

bb.kl:                                            ; preds = %.critedge62.i.i, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, %bb.in
  %i.akf = load ptr, ptr %84, align 8, !tbaa !51, !noalias !307 ; 2 uses
  %i.akg = icmp eq ptr %i.akf, null
  br i1 %i.akg, label %bb.km, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !54

bb.km:                                            ; preds = %bb.kl
  %i.akh = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !314, !noalias !307 ; 3 uses
  %.not.i.i.i.i95.i.i = icmp eq ptr %i.aki, null
  br i1 %.not.i.i.i.i95.i.i, label %bb.kp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.km
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !42
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akl = load ptr, ptr %i.akk, align 8
  call void %i.akl(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.aki) #20, !inline_history !342
  %.pr.pre.i.i.i = load ptr, ptr %84, align 8, !tbaa !51, !noalias !307 ; 2 uses
  %.not.i.i96.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i96.i.i, label %bb.kp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !294

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.kl
  %i.akm = phi ptr [ %.pr.pre.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i ], [ %i.akf, %bb.kl ]
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 1
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !55, !range !65, !noundef !66
  %i.akp = trunc nuw i8 %i.ako to i1
  br i1 %i.akp, label %bb.kp, label %bb.kn

bb.kn:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %84) #20, !inline_history !225
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kk, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i
  %.pn56.pn.pn.i.i = phi { ptr, i32 } [ %i.ajs, %bb.kk ], [ %i.acj, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %84) #20, !noalias !303, !inline_history !225
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20, !noalias !307
  br label %.body158.i

bb.kp:                                            ; preds = %bb.kn, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20, !noalias !307
  %.val.i77 = load ptr, ptr %103, align 8, !tbaa !51, !noalias !222
  %i.akq = icmp eq ptr %.val.i77, null
  br i1 %i.akq, label %bb.kt, label %bb.kq, !prof !54

bb.kq:                                            ; preds = %bb.kp
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !222
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %_ZN5arrow6StatusC2ERKS0_.exit161.i unwind label %bb.ks, !inline_history !225

bb.kr:                                            ; preds = %.loopexit.i.i
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %.body158.i

bb.ks:                                            ; preds = %bb.kq
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %bb.md

bb.kt:                                            ; preds = %bb.kp
  %i.akt = getelementptr inbounds nuw i8, ptr %103, i64 8
  %.val92.i = load i32, ptr %i.akt, align 8, !tbaa !45, !noalias !222
  %cond2.i = icmp eq i32 %.val92.i, 1
  br i1 %cond2.i, label %bb.kv, label %bb.lt

bb.ku:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176.i
  %i.aku = landingpad { ptr, i32 }
          cleanup
  br label %bb.md

bb.kv:                                            ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #20, !noalias !222
  %i.akv = load ptr, ptr %i.ut, align 8, !tbaa !267, !noalias !222
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !268 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 56
  %i.aky = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akw, i64 64
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !36 ; 2 uses
  %i.alb = load <2 x ptr>, ptr %i.akx, align 8, !tbaa !91
  store <2 x ptr> %i.alb, ptr %105, align 16, !tbaa !91, !noalias !222
  %.not.i.i.i162.i = icmp eq ptr %i.ala, null
  br i1 %.not.i.i.i162.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 8 ; 3 uses
  %i.ald = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !222
  %.not.i.i.i.i163.i = icmp eq i8 %i.ald, 0
  br i1 %.not.i.i.i.i163.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.ale = load i32, ptr %i.alc, align 4, !tbaa !3
  %i.alf = add nsw i32 %i.ale, 1
  store i32 %i.alf, ptr %i.alc, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.ky:                                            ; preds = %bb.kw
  %i.alg = atomicrmw volatile add ptr %i.alc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.ky, %bb.kx, %bb.kv
  invoke void @_ZN5arrow15large_list_viewESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %104, ptr noundef nonnull %105)
          to label %bb.kz unwind label %bb.ls, !inline_history !225

bb.kz:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.alh = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.bjt = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i200, i64 9
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !167, !range !65, !noalias !424, !noundef !66
  %i.bjv = trunc nuw i8 %i.bju to i1
  %i.bjw = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i200, i64 16
  %i.bjx = load ptr, ptr %i.bjw, align 8, !noalias !424
  %i.bjy = select i1 %i.bjv, ptr %i.bjx, ptr null, !prof !54
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %bb.sw, %.thread.i.i.i258
  %i.bjz = phi ptr [ %i.bjs, %bb.sx ], [ %i.bjs, %bb.sw ], [ %i.bit, %.thread.i.i.i258 ] ; 7 uses
  %i.bka = phi ptr [ %i.bjy, %bb.sx ], [ null, %bb.sw ], [ null, %.thread.i.i.i258 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20, !noalias !427
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bid, i64 32 ; 2 uses
  %i.bkc = load i64, ptr %i.bkb, align 8, !tbaa !163, !noalias !424
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bid, i64 16 ; 4 uses
  %i.bke = load i64, ptr %i.bkd, align 8, !tbaa !119, !noalias !424
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef %i.bka, i64 noundef %i.bkc, i64 noundef %i.bke)
          to label %.noexc82.i.i202 unwind label %bb.tx, !noalias !410, !inline_history !355

.noexc82.i.i202:                                  ; preds = %bb.sy
  %i.bkf = load i64, ptr %i.bkd, align 8, !tbaa !119, !noalias !424 ; 2 uses
  %i.bkg = icmp sgt i64 %i.bkf, 0
  br i1 %i.bkg, label %.lr.ph71.i.i.preheader.i207, label %._crit_edge.i.i.i203

.lr.ph71.i.i.preheader.i207:                      ; preds = %.noexc82.i.i202
  %i.bkh = load i8, ptr %58, align 8, !tbaa !327, !range !65, !noalias !413, !noundef !66
  %i.bki = trunc nuw i8 %i.bkh to i1
  br i1 %i.bki, label %.lr.ph71.i.i.i218, label %.lr.ph71.i.i.us.i208

.lr.ph71.i.i.us.i208:                             ; preds = %.lr.ph71.i.i.preheader.i207, %.loopexit.i.i.us.i212
  %i.bkj = phi i64 [ %i.blq, %.loopexit.i.i.us.i212 ], [ %i.bkf, %.lr.ph71.i.i.preheader.i207 ]
  %.03170.i.i.us.i209 = phi i64 [ %.3.i.i.us.i213, %.loopexit.i.i.us.i212 ], [ 0, %.lr.ph71.i.i.preheader.i207 ] ; 3 uses
  %i.bkk = load i64, ptr %i.bhj, align 8, !tbaa !330, !noalias !413
  %i.bkl = load i64, ptr %i.bhk, align 8, !tbaa !331, !noalias !413 ; 2 uses
  %i.bkm = sub nsw i64 %i.bkk, %i.bkl
  %.sroa.speculated.i.i.us.i210 = call i64 @llvm.smin.i64(i64 %i.bkm, i64 32767) ; 4 uses
  %i.bkn = trunc i64 %.sroa.speculated.i.i.us.i210 to i16
  %sext.i.i.us.i211 = shl i64 %.sroa.speculated.i.i.us.i210, 48 ; 2 uses
  %i.bko = ashr exact i64 %sext.i.i.us.i211, 48   ; 2 uses
  %i.bkp = add nsw i64 %i.bko, %i.bkl
  store i64 %i.bkp, ptr %i.bhk, align 8, !tbaa !331, !noalias !413
  %i.bkq = icmp sgt i16 %i.bkn, 0
  br i1 %i.bkq, label %.lr.ph68.i.i.us.i214.preheader, label %.loopexit.i.i.us.i212

.lr.ph68.i.i.us.i214.preheader:                   ; preds = %.lr.ph71.i.i.us.i208
  %xtraiter1177 = and i64 %.sroa.speculated.i.i.us.i210, 1 ; 2 uses
  %i.bkr = icmp eq i64 %sext.i.i.us.i211, 281474976710656
  br i1 %i.bkr, label %.lr.ph68.i.i.us.i214.epil.preheader, label %.lr.ph68.i.i.us.i214.preheader.new

.lr.ph68.i.i.us.i214.preheader.new:               ; preds = %.lr.ph68.i.i.us.i214.preheader
  %unroll_iter = sub nsw i64 %i.bko, %xtraiter1177
  br label %.lr.ph68.i.i.us.i214

.lr.ph68.i.i.us.i214:                             ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph68.i.i.us.i214.preheader.new
  %.166.i.i.us.i216 = phi i64 [ %.03170.i.i.us.i209, %.lr.ph68.i.i.us.i214.preheader.new ], [ %i.blh, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph68.i.i.us.i214.preheader.new ], [ %niter.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
  %i.bks = getelementptr inbounds [8 x i8], ptr %i.bie, i64 %.166.i.i.us.i216
  %i.bkt = load i64, ptr %i.bks, align 8, !tbaa !175, !noalias !424
  %i.bku = icmp sgt i64 %i.bkt, 0
  br i1 %i.bku, label %bb.sz, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

bb.sz:                                            ; preds = %.lr.ph68.i.i.us.i214
  %i.bkv = getelementptr inbounds [8 x i8], ptr %i.bjz, i64 %.166.i.i.us.i216
  %i.bkw = load i64, ptr %i.bkv, align 8, !tbaa !175, !noalias !424
  %i.bkx = add i64 %i.bkw, %i.bia
  %i.bky = getelementptr inbounds [8 x i8], ptr %i.bih, i64 %.166.i.i.us.i216
  store i64 %i.bkx, ptr %i.bky, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i: ; preds = %bb.sz, %.lr.ph68.i.i.us.i214
  %i.bkz = add nsw i64 %.166.i.i.us.i216, 1       ; 3 uses
  %i.bla = getelementptr inbounds [8 x i8], ptr %i.bie, i64 %i.bkz
  %i.blb = load i64, ptr %i.bla, align 8, !tbaa !175, !noalias !424
  %i.blc = icmp sgt i64 %i.blb, 0
  br i1 %i.blc, label %bb.ta, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

bb.ta:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.bld = getelementptr inbounds [8 x i8], ptr %i.bjz, i64 %i.bkz
  %i.ble = load i64, ptr %i.bld, align 8, !tbaa !175, !noalias !424
  %i.blf = add i64 %i.ble, %i.bia
  %i.blg = getelementptr inbounds [8 x i8], ptr %i.bih, i64 %i.bkz
  store i64 %i.blf, ptr %i.blg, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1: ; preds = %bb.ta, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.blh = add nsw i64 %.166.i.i.us.i216, 2       ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.us.loopexit.i.unr-lcssa, label %.lr.ph68.i.i.us.i214, !llvm.loop !431

.loopexit.i.i.us.loopexit.i.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1178.not = icmp eq i64 %xtraiter1177, 0
  br i1 %lcmp.mod1178.not, label %.loopexit.i.i.us.loopexit.i, label %.lr.ph68.i.i.us.i214.epil.preheader

.lr.ph68.i.i.us.i214.epil.preheader:              ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %.lr.ph68.i.i.us.i214.preheader
  %.166.i.i.us.i216.epil.init = phi i64 [ %.03170.i.i.us.i209, %.lr.ph68.i.i.us.i214.preheader ], [ %i.blh, %.loopexit.i.i.us.loopexit.i.unr-lcssa ] ; 4 uses
  %lcmp.mod1180 = trunc i64 %.sroa.speculated.i.i.us.i210 to i1
  call void @llvm.assume(i1 %lcmp.mod1180)
  %i.bli = getelementptr inbounds [8 x i8], ptr %i.bie, i64 %.166.i.i.us.i216.epil.init
  %i.blj = load i64, ptr %i.bli, align 8, !tbaa !175, !noalias !424
  %i.blk = icmp sgt i64 %i.blj, 0
  br i1 %i.blk, label %bb.tb, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

bb.tb:                                            ; preds = %.lr.ph68.i.i.us.i214.epil.preheader
  %i.bll = getelementptr inbounds [8 x i8], ptr %i.bjz, i64 %.166.i.i.us.i216.epil.init
  %i.blm = load i64, ptr %i.bll, align 8, !tbaa !175, !noalias !424
  %i.bln = add i64 %i.blm, %i.bia
  %i.blo = getelementptr inbounds [8 x i8], ptr %i.bih, i64 %.166.i.i.us.i216.epil.init
  store i64 %i.bln, ptr %i.blo, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil: ; preds = %bb.tb, %.lr.ph68.i.i.us.i214.epil.preheader
  %i.blp = add nsw i64 %.166.i.i.us.i216.epil.init, 1
  br label %.loopexit.i.i.us.loopexit.i

.loopexit.i.i.us.loopexit.i:                      ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil
  %.lcssa1144 = phi i64 [ %i.blh, %.loopexit.i.i.us.loopexit.i.unr-lcssa ], [ %i.blp, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil ]
  %.pre257.i = load i64, ptr %i.bkd, align 8, !tbaa !119, !noalias !424
  br label %.loopexit.i.i.us.i212

.loopexit.i.i.us.i212:                            ; preds = %.loopexit.i.i.us.loopexit.i, %.lr.ph71.i.i.us.i208
  %i.blq = phi i64 [ %i.bkj, %.lr.ph71.i.i.us.i208 ], [ %.pre257.i, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %.3.i.i.us.i213 = phi i64 [ %.03170.i.i.us.i209, %.lr.ph71.i.i.us.i208 ], [ %.lcssa1144, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %i.blr = icmp slt i64 %.3.i.i.us.i213, %i.blq
  br i1 %i.blr, label %.lr.ph71.i.i.us.i208, label %._crit_edge.i.i.i203, !llvm.loop !432

.lr.ph71.i.i.i218:                                ; preds = %.lr.ph71.i.i.preheader.i207, %.loopexit.i.i.i226
  %.03170.i.i.i219 = phi i64 [ %.3.i.i.i227, %.loopexit.i.i.i226 ], [ 0, %.lr.ph71.i.i.preheader.i207 ] ; 7 uses
  %i.bls = load i8, ptr %58, align 8, !tbaa !327, !range !65, !noalias !413, !noundef !66
  %i.blt = trunc nuw i8 %i.bls to i1
  br i1 %i.blt, label %bb.tc, label %.noexc83.thread.i.i220

bb.tc:                                            ; preds = %.lr.ph71.i.i.i218
  %i.blu = load i64, ptr %i.bhm, align 8, !tbaa !334, !noalias !413 ; 4 uses
  %.not.i.i97.i.i232 = icmp eq i64 %i.blu, 0
  br i1 %.not.i.i97.i.i232, label %.noexc83.i.i236, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.blv = load i64, ptr %i.bhn, align 8, !tbaa !335, !noalias !413 ; 3 uses
  %i.blw = icmp eq i64 %i.blv, 0
  br i1 %i.blw, label %bb.te, label %bb.th

bb.te:                                            ; preds = %bb.td
  %i.blx = icmp slt i64 %i.blu, 64
  br i1 %i.blx, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %bb.te
  %i.bly = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bhl, i64 noundef 64) #20, !noalias !410, !inline_history !355 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i247 = lshr i32 %i.bly, 16
  br label %bb.tl

bb.tg:                                            ; preds = %bb.te
  %i.blz = load ptr, ptr %i.bhl, align 8, !tbaa !336, !noalias !413 ; 2 uses
  %i.bma = load i64, ptr %i.blz, align 1, !noalias !410
  br label %bb.tk

bb.th:                                            ; preds = %bb.td
  %i.bmb = sub nsw i64 128, %i.blv
  %i.bmc = icmp slt i64 %i.blu, %i.bmb
  br i1 %i.bmc, label %bb.ti, label %bb.tj

bb.ti:                                            ; preds = %bb.th
  %i.bmd = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bhl, i64 noundef 64) #20, !noalias !410, !inline_history !355 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i246 = lshr i32 %i.bmd, 16
  br label %bb.tl

bb.tj:                                            ; preds = %bb.th
  %i.bme = load ptr, ptr %i.bhl, align 8, !tbaa !336, !noalias !413 ; 3 uses
  %i.bmf = load i64, ptr %i.bme, align 1, !noalias !410
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  %i.bmh = load i64, ptr %i.bmg, align 1, !noalias !410
  %.0.i.i.i.i147.i = call noundef i64 @llvm.fshr.i64(i64 %i.bmh, i64 %i.bmf, i64 %i.blv)
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %bb.tg
  %.0.i.sink.i.i.i.i233 = phi i64 [ %.0.i.i.i.i147.i, %bb.tj ], [ %i.bma, %bb.tg ]
  %i.bmi = phi ptr [ %i.bme, %bb.tj ], [ %i.blz, %bb.tg ]
  %i.bmj = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i233)
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmi, i64 8
  store ptr %i.bmk, ptr %i.bhl, align 8, !tbaa !336, !noalias !413
  %i.bml = add nsw i64 %i.blu, -64
  store i64 %i.bml, ptr %i.bhm, align 8, !tbaa !334, !noalias !413
  %i.bmm = trunc nuw nsw i64 %i.bmj to i32
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tk, %bb.ti, %bb.tf
  %.sroa.0.0.i.i.i.i234 = phi i32 [ %i.bly, %bb.tf ], [ 64, %bb.tk ], [ %i.bmd, %bb.ti ]
  %.sroa.5.0.i.i.i.i235 = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i247, %bb.tf ], [ %i.bmm, %bb.tk ], [ %.sroa.5.0.extract.shift2.i.i.i.i246, %bb.ti ]
  %i.bmn = shl nuw i32 %.sroa.5.0.i.i.i.i235, 16
  %i.bmo = and i32 %.sroa.0.0.i.i.i.i234, 65535
  %i.bmp = or disjoint i32 %i.bmn, %i.bmo
  br label %.noexc83.i.i236

.noexc83.thread.i.i220:                           ; preds = %.lr.ph71.i.i.i218
  %i.bmq = load i64, ptr %i.bhj, align 8, !tbaa !330, !noalias !413
  %i.bmr = load i64, ptr %i.bhk, align 8, !tbaa !331, !noalias !413 ; 2 uses
  %i.bms = sub nsw i64 %i.bmq, %i.bmr
  %.sroa.speculated.i.i.i221 = call i64 @llvm.smin.i64(i64 %i.bms, i64 32767) ; 2 uses
  %i.bmt = trunc i64 %.sroa.speculated.i.i.i221 to i16
  %sext.i.i.i222 = shl i64 %.sroa.speculated.i.i.i221, 48
  %i.bmu = ashr exact i64 %sext.i.i.i222, 48
  %i.bmv = add nsw i64 %i.bmu, %i.bmr
  store i64 %i.bmv, ptr %i.bhk, align 8, !tbaa !331, !noalias !413
  br label %.preheader.i.i.i224

.noexc83.i.i236:                                  ; preds = %bb.tl, %bb.tc
  %.sroa.0.0.insert.insert.i.i.i.i237 = phi i32 [ %i.bmp, %bb.tl ], [ 0, %bb.tc ] ; 4 uses
  %.sroa.0.0.extract.trunc.i98.i.i236 = zext i32 %.sroa.0.0.insert.insert.i.i.i.i237 to i64
  %.sroa.4.0.extract.shift.i.i.i239 = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i237, 16 ; 2 uses
  %sext4.i.i.i238 = shl i64 %.sroa.0.0.extract.trunc.i98.i.i236, 48
  %123 = ashr exact i64 %sext4.i.i.i238, 48
  %i.bmw = load i64, ptr %i.bhk, align 8, !tbaa !331, !noalias !413
  %i.bmx = add nsw i64 %123, %i.bmw
  store i64 %i.bmx, ptr %i.bhk, align 8, !tbaa !331, !noalias !413
  %.pre.i.i148.i = and i32 %.sroa.0.0.insert.insert.i.i.i.i237, 65535
  %.sroa.0.0.extract.trunc.i.i.i239 = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i237 to i16 ; 4 uses
  %i.bmy = icmp eq i32 %.pre.i.i148.i, %.sroa.4.0.extract.shift.i.i.i239
  br i1 %i.bmy, label %.preheader.i.i.i224, label %bb.to

.preheader.i.i.i224:                              ; preds = %.noexc83.i.i236, %.noexc83.thread.i.i220
  %.sroa.0.0.i33.i.i = phi i16 [ %i.bmt, %.noexc83.thread.i.i220 ], [ %.sroa.0.0.extract.trunc.i.i.i239, %.noexc83.i.i236 ] ; 5 uses
  %i.bmz = icmp sgt i16 %.sroa.0.0.i33.i.i, 0
  br i1 %i.bmz, label %.lr.ph68.i.i.i228.preheader, label %.loopexit.i.i.i226

.lr.ph68.i.i.i228.preheader:                      ; preds = %.preheader.i.i.i224
  %i.bna = icmp eq i16 %.sroa.0.0.i33.i.i, 1
  br i1 %i.bna, label %.lr.ph68.i.i.i228.epil.preheader, label %.lr.ph68.i.i.i228.preheader.new

.lr.ph68.i.i.i228.preheader.new:                  ; preds = %.lr.ph68.i.i.i228.preheader
  %124 = and i16 %.sroa.0.0.i33.i.i, 32766
  %unroll_iter1183 = zext nneg i16 %124 to i64
  br label %.lr.ph68.i.i.i228

.lr.ph68.i.i.i228:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph68.i.i.i228.preheader.new
  %.166.i.i.i230 = phi i64 [ %.03170.i.i.i219, %.lr.ph68.i.i.i228.preheader.new ], [ %i.bnq, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1186 = phi i64 [ 0, %.lr.ph68.i.i.i228.preheader.new ], [ %niter1186.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.bnb = getelementptr inbounds [8 x i8], ptr %i.bie, i64 %.166.i.i.i230
  %i.bnc = load i64, ptr %i.bnb, align 8, !tbaa !175, !noalias !424
  %i.bnd = icmp sgt i64 %i.bnc, 0
  br i1 %i.bnd, label %bb.tm, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.tm:                                            ; preds = %.lr.ph68.i.i.i228
  %i.bne = getelementptr inbounds [8 x i8], ptr %i.bjz, i64 %.166.i.i.i230
  %i.bnf = load i64, ptr %i.bne, align 8, !tbaa !175, !noalias !424
  %i.bng = add i64 %i.bnf, %i.bia
  %i.bnh = getelementptr inbounds [8 x i8], ptr %i.bih, i64 %.166.i.i.i230
  store i64 %i.bng, ptr %i.bnh, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.tm, %.lr.ph68.i.i.i228
  %i.bni = add nsw i64 %.166.i.i.i230, 1          ; 3 uses
  %i.bnj = getelementptr inbounds [8 x i8], ptr %i.bie, i64 %i.bni
  %i.bnk = load i64, ptr %i.bnj, align 8, !tbaa !175, !noalias !424
  %i.bnl = icmp sgt i64 %i.bnk, 0
  br i1 %i.bnl, label %bb.tn, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.tn:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.bnm = getelementptr inbounds [8 x i8], ptr %i.bjz, i64 %i.bni
  %i.bnn = load i64, ptr %i.bnm, align 8, !tbaa !175, !noalias !424
  %i.bno = add i64 %i.bnn, %i.bia
  %i.bnp = getelementptr inbounds [8 x i8], ptr %i.bih, i64 %i.bni
  store i64 %i.bno, ptr %i.bnp, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.tn, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.bnq = add nsw i64 %.166.i.i.i230, 2          ; 3 uses
  %niter1186.next.1 = add i64 %niter1186, 2       ; 2 uses
  %niter1186.ncmp.1 = icmp eq i64 %niter1186.next.1, %unroll_iter1183
  br i1 %niter1186.ncmp.1, label %.loopexit.i.i.i226.loopexit.unr-lcssa, label %.lr.ph68.i.i.i228, !llvm.loop !431

bb.to:                                            ; preds = %.noexc83.i.i236
  %i.bnr = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i239, 0
  br i1 %i.bnr, label %bb.tp, label %.preheader62.i.i.i241

.preheader62.i.i.i241:                            ; preds = %bb.to
  %125 = sext i16 %.sroa.0.0.extract.trunc.i.i.i239 to i64
  %i.bns = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i239, 0
  br i1 %i.bns, label %.lr.ph.i77.i.i242, label %.loopexit.i.i.i226

bb.tp:                                            ; preds = %bb.to
  %i.bnt = getelementptr inbounds [8 x i8], ptr %i.bie, i64 %.03170.i.i.i219
  %126 = sext i16 %.sroa.0.0.extract.trunc.i.i.i239 to i64 ; 2 uses
  %i.bnu = shl nsw i64 %126, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bnt, i8 0, i64 %i.bnu, i1 false), !noalias !424
  %i.bnv = add nsw i64 %.03170.i.i.i219, %126
  br label %.loopexit.i.i.i226

.lr.ph.i77.i.i242:                                ; preds = %.preheader62.i.i.i241, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i
  %.065.i.i.i243 = phi i64 [ %i.bom, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ], [ 0, %.preheader62.i.i.i241 ]
  %.264.i.i.i244 = phi i64 [ %i.bon, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ], [ %.03170.i.i.i219, %.preheader62.i.i.i241 ] ; 5 uses
  %i.bnw = load i64, ptr %i.bkb, align 8, !tbaa !163, !noalias !424
  %i.bnx = add nsw i64 %i.bnw, %.264.i.i.i244     ; 2 uses
  %i.bny = lshr i64 %i.bnx, 3
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bka, i64 %i.bny
  %i.boa = load i8, ptr %i.bnz, align 1, !tbaa !45, !noalias !424
  %i.bob = trunc i64 %i.bnx to i8
  %i.boc = and i8 %i.bob, 7
  %i.bod = lshr i8 %i.boa, %i.boc
  %i.boe = trunc i8 %i.bod to i1
  %i.bof = getelementptr inbounds [8 x i8], ptr %i.bie, i64 %.264.i.i.i244 ; 2 uses
  br i1 %i.boe, label %bb.tq, label %bb.ts

bb.tq:                                            ; preds = %.lr.ph.i77.i.i242
  %i.bog = load i64, ptr %i.bof, align 8, !tbaa !175, !noalias !424
  %i.boh = icmp sgt i64 %i.bog, 0
  br i1 %i.boh, label %bb.tr, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.tr:                                            ; preds = %bb.tq
  %i.boi = getelementptr inbounds [8 x i8], ptr %i.bjz, i64 %.264.i.i.i244
  %i.boj = load i64, ptr %i.boi, align 8, !tbaa !175, !noalias !424
  %i.bok = add i64 %i.boj, %i.bia
  %i.bol = getelementptr inbounds [8 x i8], ptr %i.bih, i64 %.264.i.i.i244
  store i64 %i.bok, ptr %i.bol, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.ts:                                            ; preds = %.lr.ph.i77.i.i242
  store i64 0, ptr %i.bof, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i: ; preds = %bb.ts, %bb.tr, %bb.tq
  %i.bom = add nuw nsw i64 %.065.i.i.i243, 1      ; 2 uses
  %i.bon = add nsw i64 %.264.i.i.i244, 1          ; 2 uses
  %exitcond.not.i.i.i245 = icmp eq i64 %i.bom, %125
  br i1 %exitcond.not.i.i.i245, label %.loopexit.i.i.i226, label %.lr.ph.i77.i.i242, !llvm.loop !433

.loopexit.i.i.i226.loopexit.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1
  %127 = and i16 %.sroa.0.0.i33.i.i, 1
  %lcmp.mod1182.not = icmp eq i16 %127, 0
  br i1 %lcmp.mod1182.not, label %.loopexit.i.i.i226, label %.lr.ph68.i.i.i228.epil.preheader

.lr.ph68.i.i.i228.epil.preheader:                 ; preds = %.loopexit.i.i.i226.loopexit.unr-lcssa, %.lr.ph68.i.i.i228.preheader
  %.166.i.i.i230.epil.init = phi i64 [ %.03170.i.i.i219, %.lr.ph68.i.i.i228.preheader ], [ %i.bnq, %.loopexit.i.i.i226.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1184 = trunc i16 %.sroa.0.0.i33.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1184)
  %i.boo = getelementptr inbounds [8 x i8], ptr %i.bie, i64 %.166.i.i.i230.epil.init
  %i.bop = load i64, ptr %i.boo, align 8, !tbaa !175, !noalias !424
  %i.boq = icmp sgt i64 %i.bop, 0
  br i1 %i.boq, label %bb.tt, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

bb.tt:                                            ; preds = %.lr.ph68.i.i.i228.epil.preheader
  %i.bor = getelementptr inbounds [8 x i8], ptr %i.bjz, i64 %.166.i.i.i230.epil.init
  %i.bos = load i64, ptr %i.bor, align 8, !tbaa !175, !noalias !424
  %i.bot = add i64 %i.bos, %i.bia
  %i.bou = getelementptr inbounds [8 x i8], ptr %i.bih, i64 %.166.i.i.i230.epil.init
  store i64 %i.bot, ptr %i.bou, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil: ; preds = %bb.tt, %.lr.ph68.i.i.i228.epil.preheader
  %i.bov = add nsw i64 %.166.i.i.i230.epil.init, 1
  br label %.loopexit.i.i.i226

.loopexit.i.i.i226:                               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil, %.loopexit.i.i.i226.loopexit.unr-lcssa, %bb.tp, %.preheader62.i.i.i241, %.preheader.i.i.i224
  %.3.i.i.i227 = phi i64 [ %i.bov, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil ], [ %i.bnv, %bb.tp ], [ %.03170.i.i.i219, %.preheader.i.i.i224 ], [ %.03170.i.i.i219, %.preheader62.i.i.i241 ], [ %i.bnq, %.loopexit.i.i.i226.loopexit.unr-lcssa ], [ %i.bon, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 2 uses
  %i.bow = load i64, ptr %i.bkd, align 8, !tbaa !119, !noalias !424
  %i.box = icmp slt i64 %.3.i.i.i227, %i.bow
  br i1 %i.box, label %.lr.ph71.i.i.i218, label %._crit_edge.i.i.i203, !llvm.loop !434

._crit_edge.i.i.i203:                             ; preds = %.loopexit.i.i.us.i212, %.loopexit.i.i.i226, %.noexc82.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20, !noalias !427
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204

bb.tu:                                            ; preds = %bb.sv, %bb.su, %bb.st
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !427
  %.val69.pr.i.i251 = load ptr, ptr %62, align 8, !tbaa !51, !noalias !413
  %i.boy = icmp eq ptr %.val69.pr.i.i251, null
  br i1 %i.boy, label %.thread.i.i254, label %.critedge.i.i252, !prof !340

.critedge.i.i252:                                 ; preds = %bb.tu
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %79, ptr noundef nonnull align 8 dereferenceable(8) %62) #20, !inline_history !355
  %i.boz = load ptr, ptr %62, align 8, !tbaa !51, !noalias !413 ; 2 uses
  %.not.i.i.i148.i = icmp eq ptr %i.boz, null
  br i1 %.not.i.i.i148.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253, label %bb.tv, !prof !54

bb.tv:                                            ; preds = %.critedge.i.i252
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 1
  %i.bpb = load i8, ptr %i.bpa, align 1, !tbaa !55, !range !65, !noundef !66
  %i.bpc = trunc nuw i8 %i.bpb to i1
  br i1 %i.bpc, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253, label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %62) #20, !inline_history !355
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253: ; preds = %bb.tw, %bb.tv, %.critedge.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !413
  br label %bb.ty

bb.tx:                                            ; preds = %bb.sy, %bb.ss, %bb.sq, %.invoke.i.i257
  %i.bpd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ub

.thread.i.i254:                                   ; preds = %bb.tu
  %.val70.pre.i.i255 = load i32, ptr %i.bho, align 8, !tbaa !45, !noalias !413 ; 2 uses
  %.not.i149.i = icmp eq i32 %.val70.pre.i.i255, 0
  br i1 %.not.i149.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i256, !prof !340

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204: ; preds = %.thread.i.i254, %._crit_edge.i.i.i203, %bb.sl
  %i.bpe = load ptr, ptr %i.bif, align 8, !tbaa !164, !noalias !410
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 24
  %i.bpg = load i64, ptr %i.bpf, align 8, !tbaa !306, !noalias !410
  %i.bph = lshr i64 %i.bpg, 3
  %i.bpi = add i64 %i.bph, %.0448.i.i
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bhy, i64 8
  %i.bpk = load i64, ptr %i.bpj, align 8, !tbaa !159, !noalias !410
  %i.bpl = add nsw i64 %i.bpk, %.0477.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !413
  %i.bpm = add nuw i64 %.0439.i.i, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bpm, %i.bhs
  br i1 %exitcond.not, label %.critedge62.i.i206, label %bb.sl, !llvm.loop !435

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i256: ; preds = %.thread.i.i254
  store ptr null, ptr %79, align 8, !tbaa !51, !alias.scope !410, !noalias !352
  %i.bpn = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i32 %.val70.pre.i.i255, ptr %i.bpn, align 8, !tbaa !45, !alias.scope !410, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !413
  br label %bb.ty

.critedge62.i.i206:                               ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i196
  store ptr null, ptr %79, align 8, !tbaa !51, !alias.scope !410, !noalias !352
  %i.bpo = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i32 0, ptr %i.bpo, align 8, !tbaa !45, !alias.scope !410, !noalias !352
  br label %bb.ty

bb.ty:                                            ; preds = %.critedge62.i.i206, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i256, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253, %bb.sb
  %i.bpp = phi ptr [ %i.bhh, %.critedge62.i.i206 ], [ %i.bhh, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i256 ], [ %i.bhh, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253 ], [ %i.bei, %bb.sb ] ; 2 uses
  %i.bpq = phi ptr [ %i.bhi, %.critedge62.i.i206 ], [ %i.bhi, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i256 ], [ %i.bhi, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253 ], [ %i.bed, %bb.sb ] ; 3 uses
  %i.bpr = load ptr, ptr %60, align 8, !tbaa !51, !noalias !413 ; 2 uses
  %i.bps = icmp eq ptr %i.bpr, null
  br i1 %i.bps, label %bb.tz, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172, !prof !54

bb.tz:                                            ; preds = %bb.ty
  %i.bpt = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !314, !noalias !413 ; 3 uses
  %.not.i.i.i.i95.i.i186 = icmp eq ptr %i.bpu, null
  br i1 %.not.i.i.i.i95.i.i186, label %bb.uc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187: ; preds = %bb.tz
  %i.bpv = load ptr, ptr %i.bpu, align 8, !tbaa !42
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpv, i64 8
  %i.bpx = load ptr, ptr %i.bpw, align 8
  call void %i.bpx(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bpu) #20, !inline_history !436
  %.pr.pre.i.i.i188 = load ptr, ptr %60, align 8, !tbaa !51, !noalias !413 ; 2 uses
  %.not.i.i96.i.i189 = icmp eq ptr %.pr.pre.i.i.i188, null
  br i1 %.not.i.i96.i.i189, label %bb.uc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172, !prof !294

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187, %bb.ty
  %i.bpy = phi ptr [ %.pr.pre.i.i.i188, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187 ], [ %i.bpr, %bb.ty ]
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 1
  %i.bqa = load i8, ptr %i.bpz, align 1, !tbaa !55, !range !65, !noundef !66
  %i.bqb = trunc nuw i8 %i.bqa to i1
  br i1 %i.bqb, label %bb.uc, label %bb.ua

bb.ua:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %60) #20, !inline_history !355
  br label %bb.uc

bb.ub:                                            ; preds = %bb.tx, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i192
  %.pn56.pn.pn.i.i193 = phi { ptr, i32 } [ %i.bpd, %bb.tx ], [ %i.bht, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i192 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %60) #20, !noalias !410, !inline_history !355
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !413
  br label %.body151.i

bb.uc:                                            ; preds = %bb.ua, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187, %bb.tz
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !413
  %.val.i173 = load ptr, ptr %79, align 8, !tbaa !51, !noalias !352
  %i.bqc = icmp eq ptr %.val.i173, null
  br i1 %i.bqc, label %bb.ug, label %bb.ud, !prof !54

bb.ud:                                            ; preds = %bb.uc
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !352
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %_ZN5arrow6StatusC2ERKS0_.exit154.i unwind label %bb.uf, !inline_history !355

bb.ue:                                            ; preds = %.loopexit.i.i169
  %i.bqd = landingpad { ptr, i32 }
          cleanup
  br label %.body151.i

bb.uf:                                            ; preds = %bb.ud
  %i.bqe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

bb.ug:                                            ; preds = %bb.uc
  %i.bqf = getelementptr inbounds nuw i8, ptr %79, i64 8
  %.val85.i = load i32, ptr %i.bqf, align 8, !tbaa !45, !noalias !352
  %cond2.i185 = icmp eq i32 %.val85.i, 1
  br i1 %cond2.i185, label %bb.ui, label %bb.uj

bb.uh:                                            ; preds = %bb.ui
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

bb.ui:                                            ; preds = %bb.ug
  invoke void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %117, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(43) @.str.21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit154.i unwind label %bb.uh, !inline_history !355

bb.uj:                                            ; preds = %bb.ug
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !437
  br label %_ZN5arrow6StatusC2ERKS0_.exit154.i

_ZN5arrow6StatusC2ERKS0_.exit154.i:               ; preds = %bb.uj, %bb.ui, %bb.ud
  %i.bqh = load ptr, ptr %79, align 8, !tbaa !51, !noalias !352 ; 2 uses
  %.not.i.i156.i = icmp eq ptr %i.bqh, null
  br i1 %.not.i.i156.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174, label %bb.uk, !prof !54

bb.uk:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit154.i
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 1
  %i.bqj = load i8, ptr %i.bqi, align 1, !tbaa !55, !range !65, !noundef !66
  %i.bqk = trunc nuw i8 %i.bqj to i1
  br i1 %i.bqk, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %79) #20, !inline_history !355
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174: ; preds = %bb.ul, %bb.uk, %_ZN5arrow6StatusC2ERKS0_.exit154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20, !noalias !352
  %.not4.i.i.i.i175 = icmp eq ptr %i.bpq, %i.bpp
  br i1 %.not4.i.i.i.i175, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i183, label %.lr.ph.i.i.i.i176

.lr.ph.i.i.i.i176:                                ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i181
  %.05.i.i.i.i177 = phi ptr [ %i.brc, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i181 ], [ %i.bpq, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174 ] ; 2 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i177, i64 8
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i.i178 = icmp eq ptr %i.bqm, null
  br i1 %.not.i.i.i.i.i.i.i.i178, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i181, label %bb.um

bb.um:                                            ; preds = %.lr.ph.i.i.i.i176
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 8 ; 4 uses
  %i.bqo = load atomic i64, ptr %i.bqn acquire, align 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #20, !inline_history !956
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !45
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #20
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(43) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !957
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !957
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !726, !noalias !957, !nonnull !66, !align !132
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %2) #20, !noalias !957
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(43) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !957 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !957
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !957
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !85     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !85     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !45
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume
}

declare void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !327, !range !65, !noundef !66
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !334  ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !335  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #20 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !336  ; 2 uses
  %i.l = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.m = sub nsw i64 128, %i.g
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #20 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.o, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !336  ; 3 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.s, i64 %i.q, i64 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i.sink.i = phi i64 [ %.0.i.i, %bb.i ], [ %i.l, %bb.f ]
  %i.t = phi ptr [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.u = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.c, align 8, !tbaa !336
  %i.w = add nsw i64 %i.e, -64
  store i64 %i.w, ptr %i.d, align 8, !tbaa !334
  %i.x = trunc nuw nsw i64 %i.u to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.e ], [ 64, %bb.j ], [ %i.o, %bb.h ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.extract.shift.i, %bb.e ], [ %i.x, %bb.j ], [ %.sroa.5.0.extract.shift2.i, %bb.h ]
  %i.y = shl nuw i32 %.sroa.5.0.i, 16
  %i.z = and i32 %.sroa.0.0.i, 65535
  %i.aa = or disjoint i32 %i.y, %i.z
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit: ; preds = %bb.b, %bb.k
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.b ] ; 3 uses
  %.sroa.0.0.extract.trunc = zext i32 %.sroa.0.0.insert.insert.i to i64
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %sext4 = shl i64 %.sroa.0.0.extract.trunc, 48
  %1 = ashr exact i64 %sext4, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !331
  %i.ad = add nsw i64 %1, %i.ac
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !331
  %.pre = and i32 %.sroa.0.0.insert.insert.i, 65535
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !330
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !331 ; 2 uses
  %i.ai = sub nsw i64 %i.af, %i.ah
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 32767) ; 2 uses
  %2 = trunc i64 %.sroa.speculated to i32
  %sext = shl i64 %.sroa.speculated, 48
  %i.aj = ashr exact i64 %sext, 48
  %i.ak = add nsw i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !331
  %3 = and i32 %2, 65535                          ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0.insert.ext.pre-phi = phi i32 [ %3, %bb.l ], [ %.pre, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ]
  %.sroa.4.0 = phi i32 [ %3, %bb.l ], [ %.sroa.4.0.extract.shift, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ]
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext.pre-phi
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #13

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_118ConcatenateOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKSt6vectorISt10shared_ptrINS_6BufferEESaIS8_EEPNS_10MemoryPoolEPS8_PS5_INS0_5RangeESaISG_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__shared_ptr.49", align 16 ; 5 uses
  %6 = alloca %"class.arrow::Result.116", align 8 ; 12 uses
  %7 = alloca %"class.std::unique_ptr.120", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = load ptr, ptr %1, align 8, !tbaa !116
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  tail call fastcc void @_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.g)
  %.val = load ptr, ptr %1, align 8, !tbaa !203   ; 2 uses
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !203 ; 2 uses
  %i.h = icmp eq ptr %.val, %.val57
  br i1 %i.h, label %.loopexit78, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.01.04.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.val, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !306
  %i.l = add nsw i64 %i.k, %.05.i                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %.val57
  br i1 %i.n, label %.loopexit78, label %.lr.ph.i

.loopexit78:                                      ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.o = add i64 %.0.lcssa.i, 8
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.116") align 8 %6, i64 noundef %i.o, ptr noundef %2)
  %i.p = load ptr, ptr %6, align 8, !tbaa !51
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.b, !prof !54

bb.b:                                             ; preds = %.loopexit78
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %.thread76

bb.c:                                             ; preds = %.loopexit78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !314, !noalias !966
  store i64 %i.s, ptr %7, align 8, !tbaa !314, !alias.scope !966
  store ptr null, ptr %i.r, align 8, !tbaa !314, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 8 uses
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !91
  %i.w = load <2 x ptr>, ptr %5, align 16, !tbaa !91
  store <2 x ptr> %i.w, ptr %3, align 8, !tbaa !91
  store <2 x ptr> %i.v, ptr %5, align 16, !tbaa !91
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !41
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !924
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !924
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !46

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.am = load ptr, ptr %7, align 8, !tbaa !314   ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.j
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.am) #20, !inline_history !925
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aq = load ptr, ptr %3, align 8, !tbaa !164   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !167, !range !65, !noundef !66
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load i8, ptr %i.au, align 8, !range !65
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false, !prof !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = select i1 %i.ax, ptr %i.az, ptr null, !prof !54 ; 2 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.bd = load ptr, ptr %1, align 8, !tbaa !116   ; 2 uses
  %.not5680.not = icmp eq ptr %i.bc, %i.bd
  br i1 %.not5680.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val59.pre = load ptr, ptr %4, align 8, !tbaa !228
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block, %bb.m
  %.val5987 = phi ptr [ %.val58.pre, %bb.m ], [ %.val59, %middle.block ], [ %.val59, %.lr.ph.i.i ] ; 2 uses
  %i.bf = phi ptr [ %.pre, %bb.m ], [ %i.cb, %middle.block ], [ %i.cb, %.lr.ph.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.03683
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !164
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !306
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add i64 %i.bk, %.04181
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.val5987, i64 %.03683
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !159
  %i.bp = add nsw i64 %i.bo, %.03782              ; 2 uses
  %i.bq = add nuw i64 %.03683, 1                  ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bf to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 4
  %.not56 = icmp ult i64 %i.bq, %i.bv
  br i1 %.not56, label %bb.l, label %._crit_edge, !llvm.loop !967

bb.k:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %7, align 8, !tbaa !314   ; 3 uses
  %.not.i64 = icmp eq ptr %i.bx, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65: ; preds = %bb.k
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bx) #20, !inline_history !925
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %i.bw

bb.l:                                             ; preds = %.lr.ph, %.loopexit
  %.val59 = phi ptr [ %.val59.pre, %.lr.ph ], [ %.val5987, %.loopexit ] ; 3 uses
  %i.cb = phi ptr [ %i.bd, %.lr.ph ], [ %i.bf, %.loopexit ] ; 3 uses
end_hunk_2
