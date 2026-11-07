Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/concatenate?download=true
inline.NumInlined: 2834
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.adt = getelementptr inbounds nuw i8, ptr %i.acy, i64 32
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !206, !noalias !683 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !185, !noalias !683 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !684
  store ptr @.str.23, ptr %i.b, align 8, !tbaa !217, !noalias !685
  %i.adx = icmp slt i64 %i.adu, 0
  br i1 %i.adx, label %.invoke.i.i, label %bb.ja, !prof !122

bb.ja:                                            ; preds = %bb.iz
  %i.ady = icmp slt i64 %i.adw, 0
  br i1 %i.ady, label %.invoke.i.i, label %bb.jb, !prof !122

.invoke.i.i:                                      ; preds = %bb.ja, %bb.iz
  %i.adz = phi ptr [ @.str.25, %bb.iz ], [ @.str.26, %bb.ja ]
  invoke void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 1 dereferenceable(10) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) %i.adz)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.kk, !noalias !677, !inline_history !376

bb.jb:                                            ; preds = %bb.ja
  %i.aea = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.adu, i64 %i.adw) ; 2 uses
  %i.aeb = extractvalue { i64, i1 } %i.aea, 1
  br i1 %i.aeb, label %bb.jc, label %bb.jd, !prof !122

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(22) @.str.27)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.kk, !noalias !677, !inline_history !376

bb.jd:                                            ; preds = %bb.jb
  %i.aec = extractvalue { i64, i1 } %i.aea, 0
  %i.aed = icmp sgt i64 %i.aec, %i.ads
  br i1 %i.aed, label %bb.je, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, !prof !122

bb.je:                                            ; preds = %bb.jd
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(21) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(8) @.str.29)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.kk, !noalias !677, !inline_history !376

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20, !noalias !684
  br label %bb.ji

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.je, %bb.jc, %.invoke.i.i
  %.pr.i.i.i = load ptr, ptr %81, align 8, !tbaa !129, !noalias !684 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !684
  store ptr %.pr.i.i.i, ptr %80, align 8, !tbaa !129, !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20, !noalias !684
  %i.aee = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.aee, label %bb.ji, label %bb.jf, !prof !686

bb.jf:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %86, ptr noundef nonnull align 8 dereferenceable(8) %80) #20, !noalias !677, !inline_history !376
  %i.aef = load ptr, ptr %80, align 8, !tbaa !129, !noalias !684 ; 2 uses
  %.not.i34.i.i.i = icmp eq ptr %i.aef, null
  br i1 %.not.i34.i.i.i, label %bb.kh, label %bb.jg, !prof !130

bb.jg:                                            ; preds = %bb.jf
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 1
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !140, !range !141, !noalias !677, !noundef !142
  %i.aei = trunc nuw i8 %i.aeh to i1
  br i1 %i.aei, label %bb.kh, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %80) #20, !noalias !677, !inline_history !376
  br label %bb.kh

bb.ji:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20, !noalias !684
  %.pr60.i.i.i = load ptr, ptr %i.adh, align 8, !tbaa !209, !noalias !683 ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adb, i64 9
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !216, !range !141, !noalias !683, !noundef !142
  %i.ael = trunc nuw i8 %i.aek to i1
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8, !noalias !683
  %i.aeo = select i1 %i.ael, ptr %i.aen, ptr null, !prof !130 ; 2 uses
  %.not61.i.i.i = icmp eq ptr %.pr60.i.i.i, null
  br i1 %.not61.i.i.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aep = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i, i64 9
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !216, !range !141, !noalias !683, !noundef !142
  %i.aer = trunc nuw i8 %i.aeq to i1
  %i.aes = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i, i64 16
  %i.aet = load ptr, ptr %i.aes, align 8, !noalias !683
  %i.aeu = select i1 %i.aer, ptr %i.aet, ptr null, !prof !130
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji, %.thread.i.i.i
  %i.aev = phi ptr [ %i.aeo, %bb.jj ], [ %i.aeo, %bb.ji ], [ %i.ado, %.thread.i.i.i ] ; 7 uses
  %i.aew = phi ptr [ %i.aeu, %bb.jj ], [ null, %bb.ji ], [ null, %.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #20, !noalias !684
  %i.aex = getelementptr inbounds nuw i8, ptr %i.acy, i64 32 ; 2 uses
  %i.aey = load i64, ptr %i.aex, align 8, !tbaa !206, !noalias !683
  %i.aez = getelementptr inbounds nuw i8, ptr %i.acy, i64 16 ; 3 uses
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !185, !noalias !683
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef %i.aew, i64 noundef %i.aey, i64 noundef %i.afa)
          to label %.noexc82.i.i unwind label %bb.kk, !noalias !677, !inline_history !376

.noexc82.i.i:                                     ; preds = %bb.jk
  %i.afb = load i64, ptr %i.aez, align 8, !tbaa !185, !noalias !683 ; 2 uses
  %i.afc = icmp sgt i64 %i.afb, 0
  br i1 %i.afc, label %.lr.ph71.i.i.preheader.i, label %._crit_edge.i.i.i

.lr.ph71.i.i.preheader.i:                         ; preds = %.noexc82.i.i
  %i.afd = load i8, ptr %82, align 8, !tbaa !241, !range !141, !noalias !678, !noundef !142
  %i.afe = trunc nuw i8 %i.afd to i1
  br i1 %i.afe, label %.lr.ph71.i.i.i, label %.lr.ph71.i.i.preheader.split.us.i

.lr.ph71.i.i.preheader.split.us.i:                ; preds = %.lr.ph71.i.i.preheader.i
  %i.aff = load i64, ptr %i.acd, align 8, !tbaa !242, !noalias !678
  %.promoted253.i = load i64, ptr %i.ace, align 8, !tbaa !243, !noalias !678
  br label %.lr.ph71.i.i.us.i

.lr.ph71.i.i.us.i:                                ; preds = %.loopexit.i.i.us.i, %.lr.ph71.i.i.preheader.split.us.i
  %i.afg = phi i64 [ %i.afk, %.loopexit.i.i.us.i ], [ %.promoted253.i, %.lr.ph71.i.i.preheader.split.us.i ] ; 2 uses
  %.03170.i.i.us.i = phi i64 [ %.3.i.i.us.i, %.loopexit.i.i.us.i ], [ 0, %.lr.ph71.i.i.preheader.split.us.i ] ; 3 uses
  %i.afh = sub nsw i64 %i.aff, %i.afg
  %.sroa.speculated.i.i.us.i = call i64 @llvm.smin.i64(i64 %i.afh, i64 32767) ; 4 uses
  %i.afi = trunc i64 %.sroa.speculated.i.i.us.i to i16
  %sext.i.i.us.i = shl i64 %.sroa.speculated.i.i.us.i, 48 ; 2 uses
  %i.afj = ashr exact i64 %sext.i.i.us.i, 48      ; 2 uses
  %i.afk = add nsw i64 %i.afj, %i.afg
  %i.afl = icmp sgt i16 %i.afi, 0
  br i1 %i.afl, label %.lr.ph68.i.i.us.i.preheader, label %.loopexit.i.i.us.i

.lr.ph68.i.i.us.i.preheader:                      ; preds = %.lr.ph71.i.i.us.i
  %xtraiter1186 = and i64 %.sroa.speculated.i.i.us.i, 1 ; 2 uses
  %i.afm = icmp eq i64 %sext.i.i.us.i, 281474976710656
  br i1 %i.afm, label %.lr.ph68.i.i.us.i.epil.preheader, label %.lr.ph68.i.i.us.i.preheader.new

.lr.ph68.i.i.us.i.preheader.new:                  ; preds = %.lr.ph68.i.i.us.i.preheader
  %unroll_iter1190 = sub nsw i64 %i.afj, %xtraiter1186
  br label %.lr.ph68.i.i.us.i

.lr.ph68.i.i.us.i:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph68.i.i.us.i.preheader.new
  %.166.i.i.us.i = phi i64 [ %.03170.i.i.us.i, %.lr.ph68.i.i.us.i.preheader.new ], [ %i.agc, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter1191 = phi i64 [ 0, %.lr.ph68.i.i.us.i.preheader.new ], [ %niter1191.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %.166.i.i.us.i
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !35, !noalias !683
  %i.afp = icmp sgt i32 %i.afo, 0
  br i1 %i.afp, label %bb.jl, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

bb.jl:                                            ; preds = %.lr.ph68.i.i.us.i
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %.166.i.i.us.i
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !35, !noalias !683
  %i.afs = add i32 %i.afr, %i.acv
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %.166.i.i.us.i
  store i32 %i.afs, ptr %i.aft, align 4, !tbaa !35, !noalias !683
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i: ; preds = %bb.jl, %.lr.ph68.i.i.us.i
  %i.afu = add nsw i64 %.166.i.i.us.i, 1          ; 3 uses
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.afu
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !35, !noalias !683
  %i.afx = icmp sgt i32 %i.afw, 0
  br i1 %i.afx, label %bb.jm, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

bb.jm:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.afu
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !35, !noalias !683
  %i.aga = add i32 %i.afz, %i.acv
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %i.afu
  store i32 %i.aga, ptr %i.agb, align 4, !tbaa !35, !noalias !683
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1: ; preds = %bb.jm, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.agc = add nsw i64 %.166.i.i.us.i, 2          ; 3 uses
  %niter1191.next.1 = add i64 %niter1191, 2       ; 2 uses
  %niter1191.ncmp.1 = icmp eq i64 %niter1191.next.1, %unroll_iter1190
  br i1 %niter1191.ncmp.1, label %.loopexit.i.i.us.i.loopexit.unr-lcssa, label %.lr.ph68.i.i.us.i, !llvm.loop !423

.loopexit.i.i.us.i.loopexit.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1187.not = icmp eq i64 %xtraiter1186, 0
  br i1 %lcmp.mod1187.not, label %.loopexit.i.i.us.i, label %.lr.ph68.i.i.us.i.epil.preheader

.lr.ph68.i.i.us.i.epil.preheader:                 ; preds = %.loopexit.i.i.us.i.loopexit.unr-lcssa, %.lr.ph68.i.i.us.i.preheader
  %.166.i.i.us.i.epil.init = phi i64 [ %.03170.i.i.us.i, %.lr.ph68.i.i.us.i.preheader ], [ %i.agc, %.loopexit.i.i.us.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1189 = trunc i64 %.sroa.speculated.i.i.us.i to i1
  call void @llvm.assume(i1 %lcmp.mod1189)
  %i.agd = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %.166.i.i.us.i.epil.init
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !35, !noalias !683
  %i.agf = icmp sgt i32 %i.age, 0
  br i1 %i.agf, label %bb.jn, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

bb.jn:                                            ; preds = %.lr.ph68.i.i.us.i.epil.preheader
  %i.agg = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %.166.i.i.us.i.epil.init
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !35, !noalias !683
  %i.agi = add i32 %i.agh, %i.acv
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %.166.i.i.us.i.epil.init
  store i32 %i.agi, ptr %i.agj, align 4, !tbaa !35, !noalias !683
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil: ; preds = %bb.jn, %.lr.ph68.i.i.us.i.epil.preheader
  %i.agk = add nsw i64 %.166.i.i.us.i.epil.init, 1
  br label %.loopexit.i.i.us.i

.loopexit.i.i.us.i:                               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil, %.loopexit.i.i.us.i.loopexit.unr-lcssa, %.lr.ph71.i.i.us.i
  %.3.i.i.us.i = phi i64 [ %.03170.i.i.us.i, %.lr.ph71.i.i.us.i ], [ %i.agc, %.loopexit.i.i.us.i.loopexit.unr-lcssa ], [ %i.agk, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil ] ; 2 uses
  %i.agl = icmp slt i64 %.3.i.i.us.i, %i.afb
  br i1 %i.agl, label %.lr.ph71.i.i.us.i, label %._crit_edge.i.i.i, !llvm.loop !424

.lr.ph71.i.ithread-pre-split.i:                   ; preds = %.loopexit.i.i.i
  %.pr371.i = load i8, ptr %82, align 8, !tbaa !241, !noalias !678
  br label %.lr.ph71.i.i.i

.lr.ph71.i.i.i:                                   ; preds = %.lr.ph71.i.i.preheader.i, %.lr.ph71.i.ithread-pre-split.i
  %118 = phi i8 [ %.pr371.i, %.lr.ph71.i.ithread-pre-split.i ], [ 1, %.lr.ph71.i.i.preheader.i ]
  %.03170.i.i.i = phi i64 [ %.3.i.i.i, %.lr.ph71.i.ithread-pre-split.i ], [ 0, %.lr.ph71.i.i.preheader.i ] ; 7 uses
  %i.agm = trunc nuw i8 %118 to i1
  br i1 %i.agm, label %bb.jo, label %.noexc83.thread.i.i

bb.jo:                                            ; preds = %.lr.ph71.i.i.i
  %i.agn = load i64, ptr %i.acg, align 8, !tbaa !244, !noalias !678 ; 4 uses
  %.not.i.i97.i.i = icmp eq i64 %i.agn, 0
  br i1 %.not.i.i97.i.i, label %.noexc83.i.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ago = load i64, ptr %i.ach, align 8, !tbaa !245, !noalias !678 ; 3 uses
  %i.agp = icmp eq i64 %i.ago, 0
  br i1 %i.agp, label %bb.jq, label %bb.jt

bb.jq:                                            ; preds = %bb.jp
  %i.agq = icmp slt i64 %i.agn, 64
  br i1 %i.agq, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.agr = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.acf, i64 noundef 64) #20, !noalias !677, !inline_history !376 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %i.agr, 16
  br label %bb.jx

bb.js:                                            ; preds = %bb.jq
  %i.ags = load ptr, ptr %i.acf, align 8, !tbaa !246, !noalias !678 ; 2 uses
  %i.agt = load i64, ptr %i.ags, align 1, !noalias !677
  br label %bb.jw

bb.jt:                                            ; preds = %bb.jp
  %i.agu = sub nsw i64 128, %i.ago
  %i.agv = icmp slt i64 %i.agn, %i.agu
  br i1 %i.agv, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.agw = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.acf, i64 noundef 64) #20, !noalias !677, !inline_history !376 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i = lshr i32 %i.agw, 16
  br label %bb.jx

bb.jv:                                            ; preds = %bb.jt
  %i.agx = load ptr, ptr %i.acf, align 8, !tbaa !246, !noalias !678 ; 3 uses
  %i.agy = load i64, ptr %i.agx, align 1, !noalias !677
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.aha = load i64, ptr %i.agz, align 1, !noalias !677
  %.0.i.i.i.i154.i = call noundef i64 @llvm.fshr.i64(i64 %i.aha, i64 %i.agy, i64 %i.ago)
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.js
  %.0.i.sink.i.i.i.i = phi i64 [ %.0.i.i.i.i154.i, %bb.jv ], [ %i.agt, %bb.js ]
  %i.ahb = phi ptr [ %i.agx, %bb.jv ], [ %i.ags, %bb.js ]
  %i.ahc = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i)
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  store ptr %i.ahd, ptr %i.acf, align 8, !tbaa !246, !noalias !678
  %i.ahe = add nsw i64 %i.agn, -64
  store i64 %i.ahe, ptr %i.acg, align 8, !tbaa !244, !noalias !678
  %i.ahf = trunc nuw nsw i64 %i.ahc to i32
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.ju, %bb.jr
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.agr, %bb.jr ], [ 64, %bb.jw ], [ %i.agw, %bb.ju ]
  %.sroa.5.0.i.i.i.i = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i, %bb.jr ], [ %i.ahf, %bb.jw ], [ %.sroa.5.0.extract.shift2.i.i.i.i, %bb.ju ]
  %i.ahg = shl nuw i32 %.sroa.5.0.i.i.i.i, 16
  %i.ahh = and i32 %.sroa.0.0.i.i.i.i, 65535
  %i.ahi = or disjoint i32 %i.ahg, %i.ahh
  br label %.noexc83.i.i

.noexc83.thread.i.i:                              ; preds = %.lr.ph71.i.i.i
  %i.ahj = load i64, ptr %i.acd, align 8, !tbaa !242, !noalias !678
  %i.ahk = load i64, ptr %i.ace, align 8, !tbaa !243, !noalias !678 ; 2 uses
  %i.ahl = sub nsw i64 %i.ahj, %i.ahk
  %.sroa.speculated.i.i.i = call i64 @llvm.smin.i64(i64 %i.ahl, i64 32767) ; 2 uses
  %i.ahm = trunc i64 %.sroa.speculated.i.i.i to i16
  %sext.i.i.i = shl i64 %.sroa.speculated.i.i.i, 48
  %i.ahn = ashr exact i64 %sext.i.i.i, 48
  %i.aho = add nsw i64 %i.ahn, %i.ahk
  store i64 %i.aho, ptr %i.ace, align 8, !tbaa !243, !noalias !678
  br label %.preheader.i.i.i

.noexc83.i.i:                                     ; preds = %bb.jx, %bb.jo
  %.sroa.0.0.insert.insert.i.i.i.i = phi i32 [ %i.ahi, %bb.jx ], [ 0, %bb.jo ] ; 4 uses
  %.sroa.0.0.extract.trunc.i98.i.i = zext i32 %.sroa.0.0.insert.insert.i.i.i.i to i64
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i, 16 ; 2 uses
  %sext4.i.i.i = shl i64 %.sroa.0.0.extract.trunc.i98.i.i, 48
  %i.ahp = ashr exact i64 %sext4.i.i.i, 48
  %i.ahq = load i64, ptr %i.ace, align 8, !tbaa !243, !noalias !678
  %i.ahr = add nsw i64 %i.ahp, %i.ahq
  store i64 %i.ahr, ptr %i.ace, align 8, !tbaa !243, !noalias !678
  %.pre.i.i155.i = and i32 %.sroa.0.0.insert.insert.i.i.i.i, 65535
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i to i16 ; 4 uses
  %i.ahs = icmp eq i32 %.pre.i.i155.i, %.sroa.4.0.extract.shift.i.i.i
  br i1 %i.ahs, label %.preheader.i.i.i, label %bb.ka

.preheader.i.i.i:                                 ; preds = %.noexc83.i.i, %.noexc83.thread.i.i
  %.sroa.0.0.extract.trunc.i35.i.i = phi i16 [ %i.ahm, %.noexc83.thread.i.i ], [ %.sroa.0.0.extract.trunc.i.i.i, %.noexc83.i.i ] ; 5 uses
  %i.aht = icmp sgt i16 %.sroa.0.0.extract.trunc.i35.i.i, 0
  br i1 %i.aht, label %.lr.ph68.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph68.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %i.ahu = icmp eq i16 %.sroa.0.0.extract.trunc.i35.i.i, 1
  br i1 %i.ahu, label %.lr.ph68.i.i.i.epil.preheader, label %.lr.ph68.i.i.i.preheader.new

.lr.ph68.i.i.i.preheader.new:                     ; preds = %.lr.ph68.i.i.i.preheader
  %i.ahv = and i16 %.sroa.0.0.extract.trunc.i35.i.i, 32766
  %unroll_iter1196 = zext nneg i16 %i.ahv to i64
  br label %.lr.ph68.i.i.i

.lr.ph68.i.i.i:                                   ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph68.i.i.i.preheader.new
  %.166.i.i.i = phi i64 [ %.03170.i.i.i, %.lr.ph68.i.i.i.preheader.new ], [ %i.ail, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1197 = phi i64 [ 0, %.lr.ph68.i.i.i.preheader.new ], [ %niter1197.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.ahw = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %.166.i.i.i
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !35, !noalias !683
  %i.ahy = icmp sgt i32 %i.ahx, 0
  br i1 %i.ahy, label %bb.jy, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.jy:                                            ; preds = %.lr.ph68.i.i.i
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %.166.i.i.i
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !35, !noalias !683
  %i.aib = add i32 %i.aia, %i.acv
  %i.aic = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %.166.i.i.i
  store i32 %i.aib, ptr %i.aic, align 4, !tbaa !35, !noalias !683
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.jy, %.lr.ph68.i.i.i
  %i.aid = add nsw i64 %.166.i.i.i, 1             ; 3 uses
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.aid
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !35, !noalias !683
  %i.aig = icmp sgt i32 %i.aif, 0
  br i1 %i.aig, label %bb.jz, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.jz:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.aih = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.aid
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !35, !noalias !683
  %i.aij = add i32 %i.aii, %i.acv
  %i.aik = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %i.aid
  store i32 %i.aij, ptr %i.aik, align 4, !tbaa !35, !noalias !683
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.jz, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.ail = add nsw i64 %.166.i.i.i, 2             ; 3 uses
  %niter1197.next.1 = add i64 %niter1197, 2       ; 2 uses
  %niter1197.ncmp.1 = icmp eq i64 %niter1197.next.1, %unroll_iter1196
  br i1 %niter1197.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i.i, !llvm.loop !423

bb.ka:                                            ; preds = %.noexc83.i.i
  %i.aim = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i, 0
  br i1 %i.aim, label %bb.kb, label %.preheader62.i.i.i

.preheader62.i.i.i:                               ; preds = %bb.ka
  %i.ain = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64
  %i.aio = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %i.aio, label %.lr.ph.i77.i.i, label %.loopexit.i.i.i

.lr.ph.i77.i.i:                                   ; preds = %.preheader62.i.i.i
  %i.aip = load i64, ptr %i.aex, align 8, !tbaa !206, !noalias !683
  br label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.aiq = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %.03170.i.i.i
  %i.air = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %i.ais = shl nsw i64 %i.air, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aiq, i8 0, i64 %i.ais, i1 false), !noalias !683
  %i.ait = add nsw i64 %.03170.i.i.i, %i.air
  br label %.loopexit.i.i.i

bb.kc:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %.lr.ph.i77.i.i
  %.065.i.i.i = phi i64 [ 0, %.lr.ph.i77.i.i ], [ %i.ajj, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ]
  %.264.i.i.i = phi i64 [ %.03170.i.i.i, %.lr.ph.i77.i.i ], [ %i.ajk, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 5 uses
  %i.aiu = add nsw i64 %.264.i.i.i, %i.aip        ; 2 uses
  %i.aiv = lshr i64 %i.aiu, 3
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.aiv
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !121, !noalias !683
  %i.aiy = trunc i64 %i.aiu to i8
  %i.aiz = and i8 %i.aiy, 7
  %i.aja = lshr i8 %i.aix, %i.aiz
  %i.ajb = trunc i8 %i.aja to i1
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %.264.i.i.i ; 2 uses
  br i1 %i.ajb, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !35, !noalias !683
  %i.aje = icmp sgt i32 %i.ajd, 0
  br i1 %i.aje, label %bb.ke, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %.264.i.i.i
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !35, !noalias !683
  %i.ajh = add i32 %i.ajg, %i.acv
  %i.aji = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %.264.i.i.i
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !35, !noalias !683
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.kf:                                            ; preds = %bb.kc
  store i32 0, ptr %i.ajc, align 4, !tbaa !35, !noalias !683
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i: ; preds = %bb.kf, %bb.ke, %bb.kd
  %i.ajj = add nuw nsw i64 %.065.i.i.i, 1         ; 2 uses
  %i.ajk = add nsw i64 %.264.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ajj, %i.ain
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %bb.kc, !llvm.loop !425

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1
  %i.ajl = and i16 %.sroa.0.0.extract.trunc.i35.i.i, 1
  %lcmp.mod1193.not = icmp eq i16 %i.ajl, 0
  br i1 %lcmp.mod1193.not, label %.loopexit.i.i.i, label %.lr.ph68.i.i.i.epil.preheader

.lr.ph68.i.i.i.epil.preheader:                    ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph68.i.i.i.preheader
  %.166.i.i.i.epil.init = phi i64 [ %.03170.i.i.i, %.lr.ph68.i.i.i.preheader ], [ %i.ail, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1195 = trunc i16 %.sroa.0.0.extract.trunc.i35.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1195)
  %i.ajm = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %.166.i.i.i.epil.init
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !35, !noalias !683
  %i.ajo = icmp sgt i32 %i.ajn, 0
  br i1 %i.ajo, label %bb.kg, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

bb.kg:                                            ; preds = %.lr.ph68.i.i.i.epil.preheader
  %i.ajp = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %.166.i.i.i.epil.init
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !35, !noalias !683
  %i.ajr = add i32 %i.ajq, %i.acv
  %i.ajs = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %.166.i.i.i.epil.init
  store i32 %i.ajr, ptr %i.ajs, align 4, !tbaa !35, !noalias !683
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil: ; preds = %bb.kg, %.lr.ph68.i.i.i.epil.preheader
  %i.ajt = add nsw i64 %.166.i.i.i.epil.init, 1
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.kb, %.preheader62.i.i.i, %.preheader.i.i.i
  %.3.i.i.i = phi i64 [ %i.ajt, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil ], [ %i.ait, %bb.kb ], [ %.03170.i.i.i, %.preheader.i.i.i ], [ %.03170.i.i.i, %.preheader62.i.i.i ], [ %i.ail, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.ajk, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 2 uses
  %i.aju = load i64, ptr %i.aez, align 8, !tbaa !185, !noalias !683
  %i.ajv = icmp slt i64 %.3.i.i.i, %i.aju
  br i1 %i.ajv, label %.lr.ph71.i.ithread-pre-split.i, label %._crit_edge.i.i.i, !llvm.loop !426

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.us.i, %.loopexit.i.i.i, %.noexc82.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20, !noalias !684
  br label %.thread.thread.i.i

bb.kh:                                            ; preds = %bb.jh, %bb.jg, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20, !noalias !684
  %.val69.pr.i.i = load ptr, ptr %86, align 8, !tbaa !129, !noalias !678
  %i.ajw = icmp eq ptr %.val69.pr.i.i, null
  br i1 %i.ajw, label %.thread.i.i, label %.critedge.i.i, !prof !688

.critedge.i.i:                                    ; preds = %bb.kh
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %103, ptr noundef nonnull align 8 dereferenceable(8) %86) #20, !inline_history !376
  %i.ajx = load ptr, ptr %86, align 8, !tbaa !129, !noalias !678 ; 2 uses
  %.not.i.i.i156.i = icmp eq ptr %i.ajx, null
  br i1 %.not.i.i.i156.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, label %bb.ki, !prof !130

bb.ki:                                            ; preds = %.critedge.i.i
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 1
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !140, !range !141, !noundef !142
  %i.aka = trunc nuw i8 %i.ajz to i1
  br i1 %i.aka, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %86) #20, !inline_history !376
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i: ; preds = %bb.kj, %bb.ki, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !678
  br label %bb.kl

bb.kk:                                            ; preds = %bb.jk, %bb.je, %bb.jc, %.invoke.i.i
  %i.akb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

.thread.i.i:                                      ; preds = %bb.kh
  %.val70.pre.i.i = load i32, ptr %i.aci, align 8, !tbaa !121, !noalias !678 ; 2 uses
  %.not.i157.i = icmp eq i32 %.val70.pre.i.i, 0
  br i1 %.not.i157.i, label %.thread.thread.i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, !prof !688

.thread.thread.i.i:                               ; preds = %.thread.i.i, %._crit_edge.i.i.i, %bb.ix
  %i.akc = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  %i.akd = load i64, ptr %i.akc, align 8, !tbaa !204, !noalias !677
  %i.ake = add nsw i64 %i.akd, %.0408.i.i         ; 2 uses
  %i.akf = icmp sgt i64 %i.ake, 2147483647
  br i1 %i.akf, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i: ; preds = %.thread.thread.i.i
  %i.akg = load ptr, ptr %i.ada, align 8, !tbaa !209, !noalias !677
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 24
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !237, !noalias !677
  %i.akj = lshr i64 %i.aki, 2
  %i.akk = add i64 %i.akj, %.0399.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !678
  %i.akl = add nuw i64 %.010.i.i, 1               ; 2 uses
  %exitcond648.not = icmp eq i64 %i.akl, %i.acm
  br i1 %exitcond648.not, label %.critedge62.i.i, label %bb.ix, !llvm.loop !427

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i: ; preds = %.thread.thread.i.i, %.thread.i.i
  %.val70.pre.lcssa.sink.i.i = phi i32 [ %.val70.pre.i.i, %.thread.i.i ], [ 1, %.thread.thread.i.i ]
  store ptr null, ptr %103, align 8, !tbaa !129, !alias.scope !677, !noalias !651
  %i.akm = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 %.val70.pre.lcssa.sink.i.i, ptr %i.akm, align 8, !tbaa !121, !alias.scope !677, !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !678
  br label %bb.kl

.critedge62.i.i:                                  ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i
  store ptr null, ptr %103, align 8, !tbaa !129, !alias.scope !677, !noalias !651
  %i.akn = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 0, ptr %i.akn, align 8, !tbaa !121, !alias.scope !677, !noalias !651
  br label %bb.kl

bb.kl:                                            ; preds = %.critedge62.i.i, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, %bb.in
  %i.ako = load ptr, ptr %84, align 8, !tbaa !129, !noalias !678 ; 2 uses
  %i.akp = icmp eq ptr %i.ako, null
  br i1 %i.akp, label %bb.km, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !130

bb.km:                                            ; preds = %bb.kl
  %i.akq = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !238, !noalias !678 ; 3 uses
  %.not.i.i.i.i95.i.i = icmp eq ptr %i.akr, null
  br i1 %.not.i.i.i.i95.i.i, label %bb.kp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.km
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !120
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.aku = load ptr, ptr %i.akt, align 8
  call void %i.aku(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.akr) #20, !inline_history !428
  %.pr.pre.i.i.i = load ptr, ptr %84, align 8, !tbaa !129, !noalias !678 ; 2 uses
  %.not.i.i96.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i96.i.i, label %bb.kp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !236

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.kl
  %i.akv = phi ptr [ %.pr.pre.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i ], [ %i.ako, %bb.kl ]
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 1
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !140, !range !141, !noundef !142
  %i.aky = trunc nuw i8 %i.akx to i1
  br i1 %i.aky, label %bb.kp, label %bb.kn

bb.kn:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %84) #20, !inline_history !376
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kk, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i
  %.pn56.pn.pn.i.i = phi { ptr, i32 } [ %i.akb, %bb.kk ], [ %i.acn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %84) #20, !noalias !677, !inline_history !376
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20, !noalias !678
  br label %.body159.i

bb.kp:                                            ; preds = %bb.kn, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20, !noalias !678
  %.val.i80 = load ptr, ptr %103, align 8, !tbaa !129, !noalias !651
  %i.akz = icmp eq ptr %.val.i80, null
  br i1 %i.akz, label %bb.ks, label %bb.kq, !prof !130

bb.kq:                                            ; preds = %bb.kp
  store ptr null, ptr %117, align 8, !tbaa !129, !alias.scope !651
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %_ZN5arrow6StatusC2ERKS0_.exit162.i unwind label %bb.kt, !inline_history !376

bb.kr:                                            ; preds = %.loopexit.i.i79
  %i.ala = landingpad { ptr, i32 }
          cleanup
  br label %.body159.i

bb.ks:                                            ; preds = %bb.kp
  %i.alb = getelementptr inbounds nuw i8, ptr %103, i64 8
  %.val92.i = load i32, ptr %i.alb, align 8, !tbaa !121, !noalias !651
  %cond2.i = icmp eq i32 %.val92.i, 1
  br i1 %cond2.i, label %bb.ku, label %bb.ls

bb.kt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177.i, %bb.kq
  %i.alc = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #20, !noalias !651
  %i.ald = load ptr, ptr %i.ux, align 8, !tbaa !232, !noalias !651
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !235 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 56
  %i.alg = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ale, i64 64
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !115 ; 2 uses
  %i.alj = load <2 x ptr>, ptr %i.alf, align 8, !tbaa !158
  store <2 x ptr> %i.alj, ptr %105, align 16, !tbaa !158, !noalias !651
  %.not.i.i.i163.i = icmp eq ptr %i.ali, null
  br i1 %.not.i.i.i163.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ali, i64 8 ; 3 uses
  %i.all = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121, !noalias !651
  %.not.i.i.i.i164.i = icmp eq i8 %i.all, 0
  br i1 %.not.i.i.i.i164.i, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.alm = load i32, ptr %i.alk, align 4, !tbaa !35
  %i.aln = add nsw i32 %i.alm, 1
  store i32 %i.aln, ptr %i.alk, align 4, !tbaa !35
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.kx:                                            ; preds = %bb.kv
  %i.alo = atomicrmw volatile add ptr %i.alk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.kx, %bb.kw, %bb.ku
  invoke void @_ZN5arrow15large_list_viewESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %104, ptr noundef nonnull %105)
          to label %bb.ky unwind label %bb.lr, !inline_history !376

bb.ky:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.alq = getelementptr inbounds nuw i8, ptr %104, i64 8
  %i.alr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.als = load <2 x ptr>, ptr %104, align 16, !tbaa !158, !noalias !651
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %104, i8 0, i64 16, i1 false), !noalias !651
  %i.alt = load ptr, ptr %i.alr, align 8, !tbaa !115, !noalias !651 ; 8 uses
  store <2 x ptr> %i.als, ptr %i.alp, align 8, !tbaa !158, !noalias !651
  %.not.i.i.i.i165.i = icmp eq ptr %i.alt, null
  br i1 %.not.i.i.i.i165.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i91, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 8 ; 4 uses
  %i.alv = load atomic i64, ptr %i.alu acquire, align 8 ; 2 uses
  %i.alw = icmp eq i64 %i.alv, 4294967297
  %i.alx = trunc i64 %i.alv to i32                ; 2 uses
  br i1 %i.alw, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  store i32 0, ptr %i.alu, align 8, !tbaa !117
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alt, i64 12
  store i32 0, ptr %i.aly, align 4, !tbaa !118
  %i.alz = load ptr, ptr %i.alt, align 8, !tbaa !120
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 16
  %i.amb = load ptr, ptr %i.ama, align 8
  call void %i.amb(ptr noundef nonnull align 8 dereferenceable(16) %i.alt) #20, !inline_history !429
  %i.amc = load ptr, ptr %i.alt, align 8, !tbaa !120
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 24
  %i.ame = load ptr, ptr %i.amd, align 8
  call void %i.ame(ptr noundef nonnull align 8 dereferenceable(16) %i.alt) #20, !inline_history !429
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !719
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !217, !noalias !720
  %i.bjk = icmp slt i64 %i.bjh, 0
  br i1 %i.bjk, label %.invoke.i.i260, label %bb.sn, !prof !122

bb.sn:                                            ; preds = %bb.sm
  %i.bjl = icmp slt i64 %i.bjj, 0
  br i1 %i.bjl, label %.invoke.i.i260, label %bb.so, !prof !122

.invoke.i.i260:                                   ; preds = %bb.sn, %bb.sm
  %i.bjm = phi ptr [ @.str.25, %bb.sm ], [ @.str.26, %bb.sn ]
  invoke void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 1 dereferenceable(10) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) %i.bjm)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i251 unwind label %bb.tw, !noalias !712, !inline_history !438

bb.so:                                            ; preds = %bb.sn
  %i.bjn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bjh, i64 %i.bjj) ; 2 uses
  %i.bjo = extractvalue { i64, i1 } %i.bjn, 1
  br i1 %i.bjo, label %bb.sp, label %bb.sq, !prof !122

bb.sp:                                            ; preds = %bb.so
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.27)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i251 unwind label %bb.tw, !noalias !712, !inline_history !438

bb.sq:                                            ; preds = %bb.so
  %i.bjp = extractvalue { i64, i1 } %i.bjn, 0
  %i.bjq = icmp sgt i64 %i.bjp, %i.bjf
  br i1 %i.bjq, label %bb.sr, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i203, !prof !122

bb.sr:                                            ; preds = %bb.sq
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.29)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i251 unwind label %bb.tw, !noalias !712, !inline_history !438

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i203:        ; preds = %bb.sq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !719
  br label %bb.sv

_ZN5arrow6StatusD2Ev.exit.i.i.i251:               ; preds = %bb.sr, %bb.sp, %.invoke.i.i260
  %.pr.i.i.i252 = load ptr, ptr %57, align 8, !tbaa !129, !noalias !719 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !719
  store ptr %.pr.i.i.i252, ptr %56, align 8, !tbaa !129, !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !719
  %i.bjr = icmp eq ptr %.pr.i.i.i252, null
  br i1 %i.bjr, label %bb.sv, label %bb.ss, !prof !686

bb.ss:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i251
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %62, ptr noundef nonnull align 8 dereferenceable(8) %56) #20, !noalias !712, !inline_history !438
  %i.bjs = load ptr, ptr %56, align 8, !tbaa !129, !noalias !719 ; 2 uses
  %.not.i34.i.i.i253 = icmp eq ptr %i.bjs, null
  br i1 %.not.i34.i.i.i253, label %bb.tt, label %bb.st, !prof !130

bb.st:                                            ; preds = %bb.ss
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 1
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !140, !range !141, !noalias !712, !noundef !142
  %i.bjv = trunc nuw i8 %i.bju to i1
  br i1 %i.bjv, label %bb.tt, label %bb.su

bb.su:                                            ; preds = %bb.st
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %56) #20, !noalias !712, !inline_history !438
  br label %bb.tt

bb.sv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i251, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !719
  %.pr60.i.i.i204 = load ptr, ptr %i.biu, align 8, !tbaa !209, !noalias !718 ; 3 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bio, i64 9
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !216, !range !141, !noalias !718, !noundef !142
  %i.bjy = trunc nuw i8 %i.bjx to i1
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bio, i64 16
  %i.bka = load ptr, ptr %i.bjz, align 8, !noalias !718
  %i.bkb = select i1 %i.bjy, ptr %i.bka, ptr null, !prof !130 ; 2 uses
  %.not61.i.i.i205 = icmp eq ptr %.pr60.i.i.i204, null
  br i1 %.not61.i.i.i205, label %bb.sx, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.bkc = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i204, i64 9
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !216, !range !141, !noalias !718, !noundef !142
  %i.bke = trunc nuw i8 %i.bkd to i1
  %i.bkf = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i204, i64 16
  %i.bkg = load ptr, ptr %i.bkf, align 8, !noalias !718
  %i.bkh = select i1 %i.bke, ptr %i.bkg, ptr null, !prof !130
  br label %bb.sx

bb.sx:                                            ; preds = %bb.sw, %bb.sv, %.thread.i.i.i261
  %i.bki = phi ptr [ %i.bkb, %bb.sw ], [ %i.bkb, %bb.sv ], [ %i.bjb, %.thread.i.i.i261 ] ; 7 uses
  %i.bkj = phi ptr [ %i.bkh, %bb.sw ], [ null, %bb.sv ], [ null, %.thread.i.i.i261 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20, !noalias !719
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bil, i64 32 ; 2 uses
  %i.bkl = load i64, ptr %i.bkk, align 8, !tbaa !206, !noalias !718
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bil, i64 16 ; 4 uses
  %i.bkn = load i64, ptr %i.bkm, align 8, !tbaa !185, !noalias !718
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef %i.bkj, i64 noundef %i.bkl, i64 noundef %i.bkn)
          to label %.noexc82.i.i206 unwind label %bb.tw, !noalias !712, !inline_history !438

.noexc82.i.i206:                                  ; preds = %bb.sx
  %i.bko = load i64, ptr %i.bkm, align 8, !tbaa !185, !noalias !718 ; 2 uses
  %i.bkp = icmp sgt i64 %i.bko, 0
  br i1 %i.bkp, label %.lr.ph71.i.i.preheader.i211, label %._crit_edge.i.i.i207

.lr.ph71.i.i.preheader.i211:                      ; preds = %.noexc82.i.i206
  %i.bkq = load i8, ptr %58, align 8, !tbaa !241, !range !141, !noalias !713, !noundef !142
  %i.bkr = trunc nuw i8 %i.bkq to i1
  br i1 %i.bkr, label %.lr.ph71.i.i.i222, label %.lr.ph71.i.i.us.i212

.lr.ph71.i.i.us.i212:                             ; preds = %.lr.ph71.i.i.preheader.i211, %.loopexit.i.i.us.i216
  %i.bks = phi i64 [ %i.blz, %.loopexit.i.i.us.i216 ], [ %i.bko, %.lr.ph71.i.i.preheader.i211 ]
  %.03170.i.i.us.i213 = phi i64 [ %.3.i.i.us.i217, %.loopexit.i.i.us.i216 ], [ 0, %.lr.ph71.i.i.preheader.i211 ] ; 3 uses
  %i.bkt = load i64, ptr %i.bhr, align 8, !tbaa !242, !noalias !713
  %i.bku = load i64, ptr %i.bhs, align 8, !tbaa !243, !noalias !713 ; 2 uses
  %i.bkv = sub nsw i64 %i.bkt, %i.bku
  %.sroa.speculated.i.i.us.i214 = call i64 @llvm.smin.i64(i64 %i.bkv, i64 32767) ; 4 uses
  %i.bkw = trunc i64 %.sroa.speculated.i.i.us.i214 to i16
  %sext.i.i.us.i215 = shl i64 %.sroa.speculated.i.i.us.i214, 48 ; 2 uses
  %i.bkx = ashr exact i64 %sext.i.i.us.i215, 48   ; 2 uses
  %i.bky = add nsw i64 %i.bkx, %i.bku
  store i64 %i.bky, ptr %i.bhs, align 8, !tbaa !243, !noalias !713
  %i.bkz = icmp sgt i16 %i.bkw, 0
  br i1 %i.bkz, label %.lr.ph68.i.i.us.i218.preheader, label %.loopexit.i.i.us.i216

.lr.ph68.i.i.us.i218.preheader:                   ; preds = %.lr.ph71.i.i.us.i212
  %xtraiter1176 = and i64 %.sroa.speculated.i.i.us.i214, 1 ; 2 uses
  %i.bla = icmp eq i64 %sext.i.i.us.i215, 281474976710656
  br i1 %i.bla, label %.lr.ph68.i.i.us.i218.epil.preheader, label %.lr.ph68.i.i.us.i218.preheader.new

.lr.ph68.i.i.us.i218.preheader.new:               ; preds = %.lr.ph68.i.i.us.i218.preheader
  %unroll_iter = sub nsw i64 %i.bkx, %xtraiter1176
  br label %.lr.ph68.i.i.us.i218

.lr.ph68.i.i.us.i218:                             ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph68.i.i.us.i218.preheader.new
  %.166.i.i.us.i220 = phi i64 [ %.03170.i.i.us.i213, %.lr.ph68.i.i.us.i218.preheader.new ], [ %i.blq, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph68.i.i.us.i218.preheader.new ], [ %niter.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
  %i.blb = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.166.i.i.us.i220
  %i.blc = load i64, ptr %i.blb, align 8, !tbaa !218, !noalias !718
  %i.bld = icmp sgt i64 %i.blc, 0
  br i1 %i.bld, label %bb.sy, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

bb.sy:                                            ; preds = %.lr.ph68.i.i.us.i218
  %i.ble = getelementptr inbounds [8 x i8], ptr %i.bki, i64 %.166.i.i.us.i220
  %i.blf = load i64, ptr %i.ble, align 8, !tbaa !218, !noalias !718
  %i.blg = add i64 %i.blf, %i.bii
  %i.blh = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %.166.i.i.us.i220
  store i64 %i.blg, ptr %i.blh, align 8, !tbaa !218, !noalias !718
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i: ; preds = %bb.sy, %.lr.ph68.i.i.us.i218
  %i.bli = add nsw i64 %.166.i.i.us.i220, 1       ; 3 uses
  %i.blj = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %i.bli
  %i.blk = load i64, ptr %i.blj, align 8, !tbaa !218, !noalias !718
  %i.bll = icmp sgt i64 %i.blk, 0
  br i1 %i.bll, label %bb.sz, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

bb.sz:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.blm = getelementptr inbounds [8 x i8], ptr %i.bki, i64 %i.bli
  %i.bln = load i64, ptr %i.blm, align 8, !tbaa !218, !noalias !718
  %i.blo = add i64 %i.bln, %i.bii
  %i.blp = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %i.bli
  store i64 %i.blo, ptr %i.blp, align 8, !tbaa !218, !noalias !718
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1: ; preds = %bb.sz, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.blq = add nsw i64 %.166.i.i.us.i220, 2       ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.us.loopexit.i.unr-lcssa, label %.lr.ph68.i.i.us.i218, !llvm.loop !485

.loopexit.i.i.us.loopexit.i.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1177.not = icmp eq i64 %xtraiter1176, 0
  br i1 %lcmp.mod1177.not, label %.loopexit.i.i.us.loopexit.i, label %.lr.ph68.i.i.us.i218.epil.preheader

.lr.ph68.i.i.us.i218.epil.preheader:              ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %.lr.ph68.i.i.us.i218.preheader
  %.166.i.i.us.i220.epil.init = phi i64 [ %.03170.i.i.us.i213, %.lr.ph68.i.i.us.i218.preheader ], [ %i.blq, %.loopexit.i.i.us.loopexit.i.unr-lcssa ] ; 4 uses
  %lcmp.mod1179 = trunc i64 %.sroa.speculated.i.i.us.i214 to i1
  call void @llvm.assume(i1 %lcmp.mod1179)
  %i.blr = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.166.i.i.us.i220.epil.init
  %i.bls = load i64, ptr %i.blr, align 8, !tbaa !218, !noalias !718
  %i.blt = icmp sgt i64 %i.bls, 0
  br i1 %i.blt, label %bb.ta, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

bb.ta:                                            ; preds = %.lr.ph68.i.i.us.i218.epil.preheader
  %i.blu = getelementptr inbounds [8 x i8], ptr %i.bki, i64 %.166.i.i.us.i220.epil.init
  %i.blv = load i64, ptr %i.blu, align 8, !tbaa !218, !noalias !718
  %i.blw = add i64 %i.blv, %i.bii
  %i.blx = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %.166.i.i.us.i220.epil.init
  store i64 %i.blw, ptr %i.blx, align 8, !tbaa !218, !noalias !718
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil: ; preds = %bb.ta, %.lr.ph68.i.i.us.i218.epil.preheader
  %i.bly = add nsw i64 %.166.i.i.us.i220.epil.init, 1
  br label %.loopexit.i.i.us.loopexit.i

.loopexit.i.i.us.loopexit.i:                      ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil
  %.lcssa1143 = phi i64 [ %i.blq, %.loopexit.i.i.us.loopexit.i.unr-lcssa ], [ %i.bly, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil ]
  %.pre259.i = load i64, ptr %i.bkm, align 8, !tbaa !185, !noalias !718
  br label %.loopexit.i.i.us.i216

.loopexit.i.i.us.i216:                            ; preds = %.loopexit.i.i.us.loopexit.i, %.lr.ph71.i.i.us.i212
  %i.blz = phi i64 [ %i.bks, %.lr.ph71.i.i.us.i212 ], [ %.pre259.i, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %.3.i.i.us.i217 = phi i64 [ %.03170.i.i.us.i213, %.lr.ph71.i.i.us.i212 ], [ %.lcssa1143, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %i.bma = icmp slt i64 %.3.i.i.us.i217, %i.blz
  br i1 %i.bma, label %.lr.ph71.i.i.us.i212, label %._crit_edge.i.i.i207, !llvm.loop !486

.lr.ph71.i.ithread-pre-split.i230:                ; preds = %.loopexit.i.i.i228
  %.pr344.i = load i8, ptr %58, align 8, !tbaa !241, !noalias !713
  br label %.lr.ph71.i.i.i222

.lr.ph71.i.i.i222:                                ; preds = %.lr.ph71.i.i.preheader.i211, %.lr.ph71.i.ithread-pre-split.i230
  %119 = phi i8 [ %.pr344.i, %.lr.ph71.i.ithread-pre-split.i230 ], [ 1, %.lr.ph71.i.i.preheader.i211 ]
  %.03170.i.i.i223 = phi i64 [ %.3.i.i.i229, %.lr.ph71.i.ithread-pre-split.i230 ], [ 0, %.lr.ph71.i.i.preheader.i211 ] ; 7 uses
  %i.bmb = trunc nuw i8 %119 to i1
  br i1 %i.bmb, label %bb.tb, label %.noexc83.thread.i.i224

bb.tb:                                            ; preds = %.lr.ph71.i.i.i222
  %i.bmc = load i64, ptr %i.bhu, align 8, !tbaa !244, !noalias !713 ; 4 uses
  %.not.i.i97.i.i234 = icmp eq i64 %i.bmc, 0
  br i1 %.not.i.i97.i.i234, label %.noexc83.i.i238, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.bmd = load i64, ptr %i.bhv, align 8, !tbaa !245, !noalias !713 ; 3 uses
  %i.bme = icmp eq i64 %i.bmd, 0
  br i1 %i.bme, label %bb.td, label %bb.tg

bb.td:                                            ; preds = %bb.tc
  %i.bmf = icmp slt i64 %i.bmc, 64
  br i1 %i.bmf, label %bb.te, label %bb.tf

bb.te:                                            ; preds = %bb.td
  %i.bmg = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bht, i64 noundef 64) #20, !noalias !712, !inline_history !438 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i250 = lshr i32 %i.bmg, 16
  br label %bb.tk

bb.tf:                                            ; preds = %bb.td
  %i.bmh = load ptr, ptr %i.bht, align 8, !tbaa !246, !noalias !713 ; 2 uses
  %i.bmi = load i64, ptr %i.bmh, align 1, !noalias !712
  br label %bb.tj

bb.tg:                                            ; preds = %bb.tc
  %i.bmj = sub nsw i64 128, %i.bmd
  %i.bmk = icmp slt i64 %i.bmc, %i.bmj
  br i1 %i.bmk, label %bb.th, label %bb.ti

bb.th:                                            ; preds = %bb.tg
  %i.bml = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bht, i64 noundef 64) #20, !noalias !712, !inline_history !438 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i249 = lshr i32 %i.bml, 16
  br label %bb.tk

bb.ti:                                            ; preds = %bb.tg
  %i.bmm = load ptr, ptr %i.bht, align 8, !tbaa !246, !noalias !713 ; 3 uses
  %i.bmn = load i64, ptr %i.bmm, align 1, !noalias !712
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmm, i64 8
  %i.bmp = load i64, ptr %i.bmo, align 1, !noalias !712
  %.0.i.i.i.i147.i = call noundef i64 @llvm.fshr.i64(i64 %i.bmp, i64 %i.bmn, i64 %i.bmd)
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.tf
  %.0.i.sink.i.i.i.i235 = phi i64 [ %.0.i.i.i.i147.i, %bb.ti ], [ %i.bmi, %bb.tf ]
  %i.bmq = phi ptr [ %i.bmm, %bb.ti ], [ %i.bmh, %bb.tf ]
  %i.bmr = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i235)
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmq, i64 8
  store ptr %i.bms, ptr %i.bht, align 8, !tbaa !246, !noalias !713
  %i.bmt = add nsw i64 %i.bmc, -64
  store i64 %i.bmt, ptr %i.bhu, align 8, !tbaa !244, !noalias !713
  %i.bmu = trunc nuw nsw i64 %i.bmr to i32
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %bb.th, %bb.te
  %.sroa.0.0.i.i.i.i236 = phi i32 [ %i.bmg, %bb.te ], [ 64, %bb.tj ], [ %i.bml, %bb.th ]
  %.sroa.5.0.i.i.i.i237 = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i250, %bb.te ], [ %i.bmu, %bb.tj ], [ %.sroa.5.0.extract.shift2.i.i.i.i249, %bb.th ]
  %i.bmv = shl nuw i32 %.sroa.5.0.i.i.i.i237, 16
  %i.bmw = and i32 %.sroa.0.0.i.i.i.i236, 65535
  %i.bmx = or disjoint i32 %i.bmv, %i.bmw
  br label %.noexc83.i.i238

.noexc83.thread.i.i224:                           ; preds = %.lr.ph71.i.i.i222
  %i.bmy = load i64, ptr %i.bhr, align 8, !tbaa !242, !noalias !713
  %i.bmz = load i64, ptr %i.bhs, align 8, !tbaa !243, !noalias !713 ; 2 uses
  %i.bna = sub nsw i64 %i.bmy, %i.bmz
  %.sroa.speculated.i.i.i225 = call i64 @llvm.smin.i64(i64 %i.bna, i64 32767) ; 2 uses
  %i.bnb = trunc i64 %.sroa.speculated.i.i.i225 to i16
  %sext.i.i.i226 = shl i64 %.sroa.speculated.i.i.i225, 48
  %i.bnc = ashr exact i64 %sext.i.i.i226, 48
  %i.bnd = add nsw i64 %i.bnc, %i.bmz
  store i64 %i.bnd, ptr %i.bhs, align 8, !tbaa !243, !noalias !713
  br label %.preheader.i.i.i227

.noexc83.i.i238:                                  ; preds = %bb.tk, %bb.tb
  %.sroa.0.0.insert.insert.i.i.i.i239 = phi i32 [ %i.bmx, %bb.tk ], [ 0, %bb.tb ] ; 4 uses
  %.sroa.0.0.extract.trunc.i98.i.i240 = zext i32 %.sroa.0.0.insert.insert.i.i.i.i239 to i64
  %.sroa.4.0.extract.shift.i.i.i241 = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i239, 16 ; 2 uses
  %sext4.i.i.i242 = shl i64 %.sroa.0.0.extract.trunc.i98.i.i240, 48
  %i.bne = ashr exact i64 %sext4.i.i.i242, 48
  %i.bnf = load i64, ptr %i.bhs, align 8, !tbaa !243, !noalias !713
  %i.bng = add nsw i64 %i.bne, %i.bnf
  store i64 %i.bng, ptr %i.bhs, align 8, !tbaa !243, !noalias !713
  %.pre.i.i148.i = and i32 %.sroa.0.0.insert.insert.i.i.i.i239, 65535
  %.sroa.0.0.extract.trunc.i.i.i243 = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i239 to i16 ; 4 uses
  %i.bnh = icmp eq i32 %.pre.i.i148.i, %.sroa.4.0.extract.shift.i.i.i241
  br i1 %i.bnh, label %.preheader.i.i.i227, label %bb.tn

.preheader.i.i.i227:                              ; preds = %.noexc83.i.i238, %.noexc83.thread.i.i224
  %.sroa.0.0.extract.trunc.i32.i.i = phi i16 [ %i.bnb, %.noexc83.thread.i.i224 ], [ %.sroa.0.0.extract.trunc.i.i.i243, %.noexc83.i.i238 ] ; 5 uses
  %i.bni = icmp sgt i16 %.sroa.0.0.extract.trunc.i32.i.i, 0
  br i1 %i.bni, label %.lr.ph68.i.i.i230.preheader, label %.loopexit.i.i.i228

.lr.ph68.i.i.i230.preheader:                      ; preds = %.preheader.i.i.i227
  %i.bnj = icmp eq i16 %.sroa.0.0.extract.trunc.i32.i.i, 1
  br i1 %i.bnj, label %.lr.ph68.i.i.i230.epil.preheader, label %.lr.ph68.i.i.i230.preheader.new

.lr.ph68.i.i.i230.preheader.new:                  ; preds = %.lr.ph68.i.i.i230.preheader
  %i.bnk = and i16 %.sroa.0.0.extract.trunc.i32.i.i, 32766
  %unroll_iter1184 = zext nneg i16 %i.bnk to i64
  br label %.lr.ph68.i.i.i230

.lr.ph68.i.i.i230:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph68.i.i.i230.preheader.new
  %.166.i.i.i232 = phi i64 [ %.03170.i.i.i223, %.lr.ph68.i.i.i230.preheader.new ], [ %i.boa, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1185 = phi i64 [ 0, %.lr.ph68.i.i.i230.preheader.new ], [ %niter1185.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.bnl = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.166.i.i.i232
  %i.bnm = load i64, ptr %i.bnl, align 8, !tbaa !218, !noalias !718
  %i.bnn = icmp sgt i64 %i.bnm, 0
  br i1 %i.bnn, label %bb.tl, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.tl:                                            ; preds = %.lr.ph68.i.i.i230
  %i.bno = getelementptr inbounds [8 x i8], ptr %i.bki, i64 %.166.i.i.i232
  %i.bnp = load i64, ptr %i.bno, align 8, !tbaa !218, !noalias !718
  %i.bnq = add i64 %i.bnp, %i.bii
  %i.bnr = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %.166.i.i.i232
  store i64 %i.bnq, ptr %i.bnr, align 8, !tbaa !218, !noalias !718
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.tl, %.lr.ph68.i.i.i230
  %i.bns = add nsw i64 %.166.i.i.i232, 1          ; 3 uses
  %i.bnt = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %i.bns
  %i.bnu = load i64, ptr %i.bnt, align 8, !tbaa !218, !noalias !718
  %i.bnv = icmp sgt i64 %i.bnu, 0
  br i1 %i.bnv, label %bb.tm, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.tm:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.bnw = getelementptr inbounds [8 x i8], ptr %i.bki, i64 %i.bns
  %i.bnx = load i64, ptr %i.bnw, align 8, !tbaa !218, !noalias !718
  %i.bny = add i64 %i.bnx, %i.bii
  %i.bnz = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %i.bns
  store i64 %i.bny, ptr %i.bnz, align 8, !tbaa !218, !noalias !718
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.tm, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.boa = add nsw i64 %.166.i.i.i232, 2          ; 3 uses
  %niter1185.next.1 = add i64 %niter1185, 2       ; 2 uses
  %niter1185.ncmp.1 = icmp eq i64 %niter1185.next.1, %unroll_iter1184
  br i1 %niter1185.ncmp.1, label %.loopexit.i.i.i228.loopexit.unr-lcssa, label %.lr.ph68.i.i.i230, !llvm.loop !485

bb.tn:                                            ; preds = %.noexc83.i.i238
  %i.bob = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i241, 0
  br i1 %i.bob, label %bb.to, label %.preheader62.i.i.i244

.preheader62.i.i.i244:                            ; preds = %bb.tn
  %i.boc = sext i16 %.sroa.0.0.extract.trunc.i.i.i243 to i64
  %i.bod = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i243, 0
  br i1 %i.bod, label %.lr.ph.i77.i.i245, label %.loopexit.i.i.i228

bb.to:                                            ; preds = %bb.tn
  %i.boe = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.03170.i.i.i223
  %i.bof = sext i16 %.sroa.0.0.extract.trunc.i.i.i243 to i64 ; 2 uses
  %i.bog = shl nsw i64 %i.bof, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.boe, i8 0, i64 %i.bog, i1 false), !noalias !718
  %i.boh = add nsw i64 %.03170.i.i.i223, %i.bof
  br label %.loopexit.i.i.i228

.lr.ph.i77.i.i245:                                ; preds = %.preheader62.i.i.i244, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i
  %.065.i.i.i246 = phi i64 [ %i.boy, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ], [ 0, %.preheader62.i.i.i244 ]
  %.264.i.i.i247 = phi i64 [ %i.boz, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ], [ %.03170.i.i.i223, %.preheader62.i.i.i244 ] ; 5 uses
  %i.boi = load i64, ptr %i.bkk, align 8, !tbaa !206, !noalias !718
  %i.boj = add nsw i64 %i.boi, %.264.i.i.i247     ; 2 uses
  %i.bok = lshr i64 %i.boj, 3
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %i.bok
  %i.bom = load i8, ptr %i.bol, align 1, !tbaa !121, !noalias !718
  %i.bon = trunc i64 %i.boj to i8
  %i.boo = and i8 %i.bon, 7
  %i.bop = lshr i8 %i.bom, %i.boo
  %i.boq = trunc i8 %i.bop to i1
  %i.bor = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.264.i.i.i247 ; 2 uses
  br i1 %i.boq, label %bb.tp, label %bb.tr

bb.tp:                                            ; preds = %.lr.ph.i77.i.i245
  %i.bos = load i64, ptr %i.bor, align 8, !tbaa !218, !noalias !718
  %i.bot = icmp sgt i64 %i.bos, 0
  br i1 %i.bot, label %bb.tq, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.tq:                                            ; preds = %bb.tp
  %i.bou = getelementptr inbounds [8 x i8], ptr %i.bki, i64 %.264.i.i.i247
  %i.bov = load i64, ptr %i.bou, align 8, !tbaa !218, !noalias !718
  %i.bow = add i64 %i.bov, %i.bii
  %i.box = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %.264.i.i.i247
  store i64 %i.bow, ptr %i.box, align 8, !tbaa !218, !noalias !718
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.tr:                                            ; preds = %.lr.ph.i77.i.i245
  store i64 0, ptr %i.bor, align 8, !tbaa !218, !noalias !718
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i: ; preds = %bb.tr, %bb.tq, %bb.tp
  %i.boy = add nuw nsw i64 %.065.i.i.i246, 1      ; 2 uses
  %i.boz = add nsw i64 %.264.i.i.i247, 1          ; 2 uses
  %exitcond.not.i.i.i248 = icmp eq i64 %i.boy, %i.boc
  br i1 %exitcond.not.i.i.i248, label %.loopexit.i.i.i228, label %.lr.ph.i77.i.i245, !llvm.loop !487

.loopexit.i.i.i228.loopexit.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1
  %i.bpa = and i16 %.sroa.0.0.extract.trunc.i32.i.i, 1
  %lcmp.mod1181.not = icmp eq i16 %i.bpa, 0
  br i1 %lcmp.mod1181.not, label %.loopexit.i.i.i228, label %.lr.ph68.i.i.i230.epil.preheader

.lr.ph68.i.i.i230.epil.preheader:                 ; preds = %.loopexit.i.i.i228.loopexit.unr-lcssa, %.lr.ph68.i.i.i230.preheader
  %.166.i.i.i232.epil.init = phi i64 [ %.03170.i.i.i223, %.lr.ph68.i.i.i230.preheader ], [ %i.boa, %.loopexit.i.i.i228.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1183 = trunc i16 %.sroa.0.0.extract.trunc.i32.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1183)
  %i.bpb = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.166.i.i.i232.epil.init
  %i.bpc = load i64, ptr %i.bpb, align 8, !tbaa !218, !noalias !718
  %i.bpd = icmp sgt i64 %i.bpc, 0
  br i1 %i.bpd, label %bb.ts, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

bb.ts:                                            ; preds = %.lr.ph68.i.i.i230.epil.preheader
  %i.bpe = getelementptr inbounds [8 x i8], ptr %i.bki, i64 %.166.i.i.i232.epil.init
  %i.bpf = load i64, ptr %i.bpe, align 8, !tbaa !218, !noalias !718
  %i.bpg = add i64 %i.bpf, %i.bii
  %i.bph = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %.166.i.i.i232.epil.init
  store i64 %i.bpg, ptr %i.bph, align 8, !tbaa !218, !noalias !718
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil: ; preds = %bb.ts, %.lr.ph68.i.i.i230.epil.preheader
  %i.bpi = add nsw i64 %.166.i.i.i232.epil.init, 1
  br label %.loopexit.i.i.i228

.loopexit.i.i.i228:                               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil, %.loopexit.i.i.i228.loopexit.unr-lcssa, %bb.to, %.preheader62.i.i.i244, %.preheader.i.i.i227
  %.3.i.i.i229 = phi i64 [ %i.bpi, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil ], [ %i.boh, %bb.to ], [ %.03170.i.i.i223, %.preheader.i.i.i227 ], [ %.03170.i.i.i223, %.preheader62.i.i.i244 ], [ %i.boa, %.loopexit.i.i.i228.loopexit.unr-lcssa ], [ %i.boz, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 2 uses
  %i.bpj = load i64, ptr %i.bkm, align 8, !tbaa !185, !noalias !718
  %i.bpk = icmp slt i64 %.3.i.i.i229, %i.bpj
  br i1 %i.bpk, label %.lr.ph71.i.ithread-pre-split.i230, label %._crit_edge.i.i.i207, !llvm.loop !488

._crit_edge.i.i.i207:                             ; preds = %.loopexit.i.i.us.i216, %.loopexit.i.i.i228, %.noexc82.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20, !noalias !719
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208

bb.tt:                                            ; preds = %bb.su, %bb.st, %bb.ss
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !719
  %.val69.pr.i.i254 = load ptr, ptr %62, align 8, !tbaa !129, !noalias !713
  %i.bpl = icmp eq ptr %.val69.pr.i.i254, null
  br i1 %i.bpl, label %.thread.i.i257, label %.critedge.i.i255, !prof !688

.critedge.i.i255:                                 ; preds = %bb.tt
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %79, ptr noundef nonnull align 8 dereferenceable(8) %62) #20, !inline_history !438
  %i.bpm = load ptr, ptr %62, align 8, !tbaa !129, !noalias !713 ; 2 uses
  %.not.i.i.i149.i = icmp eq ptr %i.bpm, null
  br i1 %.not.i.i.i149.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i256, label %bb.tu, !prof !130

bb.tu:                                            ; preds = %.critedge.i.i255
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 1
  %i.bpo = load i8, ptr %i.bpn, align 1, !tbaa !140, !range !141, !noundef !142
  %i.bpp = trunc nuw i8 %i.bpo to i1
  br i1 %i.bpp, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i256, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %62) #20, !inline_history !438
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i256

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i256: ; preds = %bb.tv, %bb.tu, %.critedge.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !713
  br label %bb.tx

bb.tw:                                            ; preds = %bb.sx, %bb.sr, %bb.sp, %.invoke.i.i260
  %i.bpq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ua

.thread.i.i257:                                   ; preds = %bb.tt
  %.val70.pre.i.i258 = load i32, ptr %i.bhw, align 8, !tbaa !121, !noalias !713 ; 2 uses
  %.not.i150.i = icmp eq i32 %.val70.pre.i.i258, 0
  br i1 %.not.i150.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i259, !prof !688

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208: ; preds = %.thread.i.i257, %._crit_edge.i.i.i207, %bb.sk
  %i.bpr = load ptr, ptr %i.bin, align 8, !tbaa !209, !noalias !712
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpr, i64 24
  %i.bpt = load i64, ptr %i.bps, align 8, !tbaa !237, !noalias !712
  %i.bpu = lshr i64 %i.bpt, 3
  %i.bpv = add i64 %i.bpu, %.0398.i.i
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  %i.bpx = load i64, ptr %i.bpw, align 8, !tbaa !204, !noalias !712
  %i.bpy = add nsw i64 %i.bpx, %.0407.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !713
  %i.bpz = add nuw i64 %.09.i.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bpz, %i.bia
  br i1 %exitcond.not, label %.critedge62.i.i210, label %bb.sk, !llvm.loop !489

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i259: ; preds = %.thread.i.i257
  store ptr null, ptr %79, align 8, !tbaa !129, !alias.scope !712, !noalias !691
  %i.bqa = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i32 %.val70.pre.i.i258, ptr %i.bqa, align 8, !tbaa !121, !alias.scope !712, !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !713
  br label %bb.tx

.critedge62.i.i210:                               ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i200
  store ptr null, ptr %79, align 8, !tbaa !129, !alias.scope !712, !noalias !691
  %i.bqb = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i32 0, ptr %i.bqb, align 8, !tbaa !121, !alias.scope !712, !noalias !691
  br label %bb.tx

bb.tx:                                            ; preds = %.critedge62.i.i210, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i259, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i256, %bb.sa
  %i.bqc = phi ptr [ %i.bhp, %.critedge62.i.i210 ], [ %i.bhp, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i259 ], [ %i.bhp, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i256 ], [ %i.beq, %bb.sa ] ; 2 uses
  %i.bqd = phi ptr [ %i.bhq, %.critedge62.i.i210 ], [ %i.bhq, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i259 ], [ %i.bhq, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i256 ], [ %i.bel, %bb.sa ] ; 3 uses
  %i.bqe = load ptr, ptr %60, align 8, !tbaa !129, !noalias !713 ; 2 uses
  %i.bqf = icmp eq ptr %i.bqe, null
  br i1 %i.bqf, label %bb.ty, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i176, !prof !130

bb.ty:                                            ; preds = %bb.tx
  %i.bqg = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !238, !noalias !713 ; 3 uses
  %.not.i.i.i.i95.i.i190 = icmp eq ptr %i.bqh, null
  br i1 %.not.i.i.i.i95.i.i190, label %bb.ub, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i191: ; preds = %bb.ty
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !120
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 8
  %i.bqk = load ptr, ptr %i.bqj, align 8
  call void %i.bqk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqh) #20, !inline_history !490
  %.pr.pre.i.i.i192 = load ptr, ptr %60, align 8, !tbaa !129, !noalias !713 ; 2 uses
  %.not.i.i96.i.i193 = icmp eq ptr %.pr.pre.i.i.i192, null
  br i1 %.not.i.i96.i.i193, label %bb.ub, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i176, !prof !236

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i176: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i191, %bb.tx
  %i.bql = phi ptr [ %.pr.pre.i.i.i192, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i191 ], [ %i.bqe, %bb.tx ]
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 1
  %i.bqn = load i8, ptr %i.bqm, align 1, !tbaa !140, !range !141, !noundef !142
  %i.bqo = trunc nuw i8 %i.bqn to i1
  br i1 %i.bqo, label %bb.ub, label %bb.tz

bb.tz:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i176
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %60) #20, !inline_history !438
  br label %bb.ub

bb.ua:                                            ; preds = %bb.tw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i196
  %.pn56.pn.pn.i.i197 = phi { ptr, i32 } [ %i.bpq, %bb.tw ], [ %i.bib, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i196 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %60) #20, !noalias !712, !inline_history !438
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !713
  br label %.body152.i

bb.ub:                                            ; preds = %bb.tz, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i176, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i191, %bb.ty
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !713
  %.val.i177 = load ptr, ptr %79, align 8, !tbaa !129, !noalias !691
  %i.bqp = icmp eq ptr %.val.i177, null
  br i1 %i.bqp, label %bb.ue, label %bb.uc, !prof !130

bb.uc:                                            ; preds = %bb.ub
  store ptr null, ptr %117, align 8, !tbaa !129, !alias.scope !691
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %_ZN5arrow6StatusC2ERKS0_.exit155.i unwind label %bb.uf, !inline_history !438

bb.ud:                                            ; preds = %.loopexit.i.i173
  %i.bqq = landingpad { ptr, i32 }
          cleanup
  br label %.body152.i

bb.ue:                                            ; preds = %bb.ub
  %i.bqr = getelementptr inbounds nuw i8, ptr %79, i64 8
  %.val85.i = load i32, ptr %i.bqr, align 8, !tbaa !121, !noalias !691
  %cond2.i189 = icmp eq i32 %.val85.i, 1
  br i1 %cond2.i189, label %bb.ui, label %bb.uj

bb.uf:                                            ; preds = %bb.ui, %bb.uc
  %i.bqs = landingpad { ptr, i32 }
          cleanup
  %i.bqt = load ptr, ptr %79, align 8, !tbaa !129, !noalias !691 ; 2 uses
  %.not.i.i156.i = icmp eq ptr %i.bqt, null
  br i1 %.not.i.i156.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i178, label %bb.ug, !prof !130

bb.ug:                                            ; preds = %bb.uf
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 1
  %i.bqv = load i8, ptr %i.bqu, align 1, !tbaa !140, !range !141, !noundef !142
  %i.bqw = trunc nuw i8 %i.bqv to i1
  br i1 %i.bqw, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i178, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %79) #20, !inline_history !438
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i178

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i178: ; preds = %bb.uh, %bb.ug, %bb.uf
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20, !noalias !691
  br label %.body152.i

bb.ui:                                            ; preds = %bb.ue
  invoke void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %117, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(43) @.str.21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit155.i unwind label %bb.uf, !inline_history !438

bb.uj:                                            ; preds = %bb.ue
  store ptr null, ptr %117, align 8, !tbaa !129, !alias.scope !721
  br label %_ZN5arrow6StatusC2ERKS0_.exit155.i

_ZN5arrow6StatusC2ERKS0_.exit155.i:               ; preds = %bb.uj, %bb.ui, %bb.uc
  %i.bqx = load ptr, ptr %79, align 8, !tbaa !129, !noalias !691 ; 2 uses
  %.not.i.i158.i = icmp eq ptr %i.bqx, null
  br i1 %.not.i.i158.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit159.i, label %bb.uk, !prof !130

bb.uk:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit155.i
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 1
  %i.bqz = load i8, ptr %i.bqy, align 1, !tbaa !140, !range !141, !noundef !142
  %i.bra = trunc nuw i8 %i.bqz to i1
  br i1 %i.bra, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit159.i, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %79) #20, !inline_history !438
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit159.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit159.i: ; preds = %bb.ul, %bb.uk, %_ZN5arrow6StatusC2ERKS0_.exit155.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20, !noalias !691
  %.not4.i.i.i.i179 = icmp eq ptr %i.bqd, %i.bqc
  br i1 %.not4.i.i.i.i179, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i187, label %.lr.ph.i.i.i.i180

.lr.ph.i.i.i.i180:                                ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit159.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i185
  %.05.i.i.i.i181 = phi ptr [ %i.brs, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i185 ], [ %i.bqd, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit159.i ] ; 2 uses
  %i.brb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i181, i64 8
  %i.brc = load ptr, ptr %i.brb, align 8, !tbaa !115 ; 8 uses
  %.not.i.i.i.i.i.i.i.i182 = icmp eq ptr %i.brc, null
  br i1 %.not.i.i.i.i.i.i.i.i182, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i185, label %bb.um

bb.um:                                            ; preds = %.lr.ph.i.i.i.i180
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 8 ; 4 uses
  %i.bre = load atomic i64, ptr %i.brd acquire, align 8 ; 2 uses
  %i.brf = icmp eq i64 %i.bre, 4294967297
  %i.brg = trunc i64 %i.bre to i32                ; 2 uses
  br i1 %i.brf, label %bb.un, label %bb.uo

bb.un:                                            ; preds = %bb.um
  store i32 0, ptr %i.brd, align 8, !tbaa !117
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brc, i64 12
  store i32 0, ptr %i.brh, align 4, !tbaa !118
  %i.bri = load ptr, ptr %i.brc, align 8, !tbaa !120
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 16
  %i.brk = load ptr, ptr %i.brj, align 8
  call void %i.brk(ptr noundef nonnull align 8 dereferenceable(16) %i.brc) #20, !inline_history !493
end_hunk_1
