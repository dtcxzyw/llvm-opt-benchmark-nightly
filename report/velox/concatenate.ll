Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/concatenate?download=true
inline.NumInlined: 2763
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #20, !noalias !647
  %i.abx = load ptr, ptr %i.abp, align 8, !tbaa !194, !noalias !646
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !223, !noalias !646
  %i.aca = shl nsw i64 %i.abz, 3
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !191, !noalias !646 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !170, !noalias !646 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !647
  store ptr @.str.21, ptr %i.b, align 8, !tbaa !204, !noalias !648
  %i.acf = icmp slt i64 %i.acc, 0
  br i1 %i.acf, label %.invoke.i.i, label %bb.iq, !prof !105

bb.iq:                                            ; preds = %bb.ip
  %i.acg = icmp slt i64 %i.ace, 0
  br i1 %i.acg, label %.invoke.i.i, label %bb.ir, !prof !105

.invoke.i.i:                                      ; preds = %bb.iq, %bb.ip
  %i.ach = phi ptr [ @.str.23, %bb.ip ], [ @.str.24, %bb.iq ]
  invoke void @_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) %i.ach)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.jy, !noalias !640, !inline_history !335

bb.ir:                                            ; preds = %bb.iq
  %i.aci = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.acc, i64 %i.ace) ; 2 uses
  %i.acj = extractvalue { i64, i1 } %i.aci, 1
  br i1 %i.acj, label %bb.is, label %bb.it, !prof !105

bb.is:                                            ; preds = %bb.ir
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(22) @.str.25)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.jy, !noalias !640, !inline_history !335

bb.it:                                            ; preds = %bb.ir
  %i.ack = extractvalue { i64, i1 } %i.aci, 0
  %i.acl = icmp sgt i64 %i.ack, %i.aca
  br i1 %i.acl, label %bb.iu, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, !prof !105

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(21) @.str.26, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(8) @.str.27)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.jy, !noalias !640, !inline_history !335

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20, !noalias !647
  br label %bb.ix

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.iu, %bb.is, %.invoke.i.i
  %.pr.i.i.i = load ptr, ptr %81, align 8, !tbaa !112, !noalias !649 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !647
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  store ptr %.pr.i.i.i, ptr %80, align 8, !tbaa !112, !alias.scope !650, !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20, !noalias !647
  %i.acm = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.acm, label %bb.ix, label %bb.iv, !prof !651

bb.iv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %86, ptr noundef nonnull align 8 dereferenceable(8) %80) #20, !noalias !640, !inline_history !335
  %i.acn = load ptr, ptr %80, align 8, !tbaa !112, !noalias !647
  %.not.i32.i.i.i = icmp eq ptr %i.acn, null
  br i1 %.not.i32.i.i.i, label %bb.jw, label %bb.iw, !prof !113

bb.iw:                                            ; preds = %bb.iv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %80), !noalias !646, !inline_history !335
  br label %bb.jw

bb.ix:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20, !noalias !647
  %.pr56.i.i.i = load ptr, ptr %i.abp, align 8, !tbaa !194, !noalias !646 ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abj, i64 9
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !202, !range !203, !noalias !646, !noundef !151
  %i.acq = trunc nuw i8 %i.acp to i1
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.acs = load ptr, ptr %i.acr, align 8, !noalias !646
  %i.act = select i1 %i.acq, ptr %i.acs, ptr null, !prof !113 ; 2 uses
  %.not57.i.i.i = icmp eq ptr %.pr56.i.i.i, null
  br i1 %.not57.i.i.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.acu = getelementptr inbounds nuw i8, ptr %.pr56.i.i.i, i64 9
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !202, !range !203, !noalias !646, !noundef !151
  %i.acw = trunc nuw i8 %i.acv to i1
  %i.acx = getelementptr inbounds nuw i8, ptr %.pr56.i.i.i, i64 16
  %i.acy = load ptr, ptr %i.acx, align 8, !noalias !646
  %i.acz = select i1 %i.acw, ptr %i.acy, ptr null, !prof !113
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %.thread.i.i.i
  %i.ada = phi ptr [ %i.act, %bb.iy ], [ %i.act, %bb.ix ], [ %i.abw, %.thread.i.i.i ] ; 7 uses
  %i.adb = phi ptr [ %i.acz, %bb.iy ], [ null, %bb.ix ], [ null, %.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #20, !noalias !647
  %i.adc = getelementptr inbounds nuw i8, ptr %i.abg, i64 32 ; 2 uses
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !191, !noalias !646
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abg, i64 16 ; 3 uses
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !170, !noalias !646
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef %i.adb, i64 noundef %i.add, i64 noundef %i.adf)
          to label %.noexc83.i.i unwind label %bb.jy, !noalias !640, !inline_history !335

.noexc83.i.i:                                     ; preds = %bb.iz
  %i.adg = load i64, ptr %i.ade, align 8, !tbaa !170, !noalias !646 ; 2 uses
  %i.adh = icmp sgt i64 %i.adg, 0
  br i1 %i.adh, label %.lr.ph67.i.i.preheader.i, label %._crit_edge.i.i.i

.lr.ph67.i.i.preheader.i:                         ; preds = %.noexc83.i.i
  %i.adi = load i8, ptr %82, align 8, !tbaa !227, !range !203, !noalias !641, !noundef !151
  %i.adj = trunc nuw i8 %i.adi to i1
  br i1 %i.adj, label %.lr.ph67.i.i.i, label %.lr.ph67.i.i.preheader.split.us.i

.lr.ph67.i.i.preheader.split.us.i:                ; preds = %.lr.ph67.i.i.preheader.i
  %i.adk = load i64, ptr %i.aal, align 8, !tbaa !228, !noalias !641
  %.promoted236.i = load i64, ptr %i.aam, align 8, !tbaa !229, !noalias !641
  br label %.lr.ph67.i.i.us.i

.lr.ph67.i.i.us.i:                                ; preds = %.loopexit.i.i.us.i, %.lr.ph67.i.i.preheader.split.us.i
  %i.adl = phi i64 [ %i.adp, %.loopexit.i.i.us.i ], [ %.promoted236.i, %.lr.ph67.i.i.preheader.split.us.i ] ; 2 uses
  %.02966.i.i.us.i = phi i64 [ %.3.i.i.us.i, %.loopexit.i.i.us.i ], [ 0, %.lr.ph67.i.i.preheader.split.us.i ] ; 3 uses
  %i.adm = sub nsw i64 %i.adk, %i.adl
  %.sroa.speculated.i.i.us.i = call i64 @llvm.smin.i64(i64 %i.adm, i64 32767) ; 4 uses
  %i.adn = trunc i64 %.sroa.speculated.i.i.us.i to i16
  %sext.i.i.us.i = shl i64 %.sroa.speculated.i.i.us.i, 48 ; 2 uses
  %i.ado = ashr exact i64 %sext.i.i.us.i, 48      ; 2 uses
  %i.adp = add nsw i64 %i.ado, %i.adl
  %i.adq = icmp sgt i16 %i.adn, 0
  br i1 %i.adq, label %.lr.ph64.i.i.us.i.preheader, label %.loopexit.i.i.us.i

.lr.ph64.i.i.us.i.preheader:                      ; preds = %.lr.ph67.i.i.us.i
  %xtraiter1163 = and i64 %.sroa.speculated.i.i.us.i, 1 ; 2 uses
  %i.adr = icmp eq i64 %sext.i.i.us.i, 281474976710656
  br i1 %i.adr, label %.lr.ph64.i.i.us.i.epil.preheader, label %.lr.ph64.i.i.us.i.preheader.new

.lr.ph64.i.i.us.i.preheader.new:                  ; preds = %.lr.ph64.i.i.us.i.preheader
  %unroll_iter1167 = sub nsw i64 %i.ado, %xtraiter1163
  br label %.lr.ph64.i.i.us.i

.lr.ph64.i.i.us.i:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph64.i.i.us.i.preheader.new
  %.162.i.i.us.i = phi i64 [ %.02966.i.i.us.i, %.lr.ph64.i.i.us.i.preheader.new ], [ %i.aeh, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter1168 = phi i64 [ 0, %.lr.ph64.i.i.us.i.preheader.new ], [ %niter1168.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %.162.i.i.us.i
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !104, !noalias !646
  %i.adu = icmp sgt i32 %i.adt, 0
  br i1 %i.adu, label %bb.ja, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

bb.ja:                                            ; preds = %.lr.ph64.i.i.us.i
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %.162.i.i.us.i
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !104, !noalias !646
  %i.adx = add i32 %i.adw, %i.abd
  %i.ady = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %.162.i.i.us.i
  store i32 %i.adx, ptr %i.ady, align 4, !tbaa !104, !noalias !646
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i: ; preds = %bb.ja, %.lr.ph64.i.i.us.i
  %i.adz = add nsw i64 %.162.i.i.us.i, 1          ; 3 uses
  %i.aea = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %i.adz
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !104, !noalias !646
  %i.aec = icmp sgt i32 %i.aeb, 0
  br i1 %i.aec, label %bb.jb, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

bb.jb:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.aed = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %i.adz
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !104, !noalias !646
  %i.aef = add i32 %i.aee, %i.abd
  %i.aeg = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %i.adz
  store i32 %i.aef, ptr %i.aeg, align 4, !tbaa !104, !noalias !646
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1: ; preds = %bb.jb, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.aeh = add nsw i64 %.162.i.i.us.i, 2          ; 3 uses
  %niter1168.next.1 = add i64 %niter1168, 2       ; 2 uses
  %niter1168.ncmp.1 = icmp eq i64 %niter1168.next.1, %unroll_iter1167
  br i1 %niter1168.ncmp.1, label %.loopexit.i.i.us.i.loopexit.unr-lcssa, label %.lr.ph64.i.i.us.i, !llvm.loop !379

.loopexit.i.i.us.i.loopexit.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1164.not = icmp eq i64 %xtraiter1163, 0
  br i1 %lcmp.mod1164.not, label %.loopexit.i.i.us.i, label %.lr.ph64.i.i.us.i.epil.preheader

.lr.ph64.i.i.us.i.epil.preheader:                 ; preds = %.loopexit.i.i.us.i.loopexit.unr-lcssa, %.lr.ph64.i.i.us.i.preheader
  %.162.i.i.us.i.epil.init = phi i64 [ %.02966.i.i.us.i, %.lr.ph64.i.i.us.i.preheader ], [ %i.aeh, %.loopexit.i.i.us.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1166 = trunc i64 %.sroa.speculated.i.i.us.i to i1
  call void @llvm.assume(i1 %lcmp.mod1166)
  %i.aei = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %.162.i.i.us.i.epil.init
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !104, !noalias !646
  %i.aek = icmp sgt i32 %i.aej, 0
  br i1 %i.aek, label %bb.jc, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

bb.jc:                                            ; preds = %.lr.ph64.i.i.us.i.epil.preheader
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %.162.i.i.us.i.epil.init
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !104, !noalias !646
  %i.aen = add i32 %i.aem, %i.abd
  %i.aeo = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %.162.i.i.us.i.epil.init
  store i32 %i.aen, ptr %i.aeo, align 4, !tbaa !104, !noalias !646
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil: ; preds = %bb.jc, %.lr.ph64.i.i.us.i.epil.preheader
  %i.aep = add nsw i64 %.162.i.i.us.i.epil.init, 1
  br label %.loopexit.i.i.us.i

.loopexit.i.i.us.i:                               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil, %.loopexit.i.i.us.i.loopexit.unr-lcssa, %.lr.ph67.i.i.us.i
  %.3.i.i.us.i = phi i64 [ %.02966.i.i.us.i, %.lr.ph67.i.i.us.i ], [ %i.aeh, %.loopexit.i.i.us.i.loopexit.unr-lcssa ], [ %i.aep, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil ] ; 2 uses
  %i.aeq = icmp slt i64 %.3.i.i.us.i, %i.adg
  br i1 %i.aeq, label %.lr.ph67.i.i.us.i, label %._crit_edge.i.i.i, !llvm.loop !380

.lr.ph67.i.i.i:                                   ; preds = %.lr.ph67.i.i.preheader.i, %.loopexit.i.i.i
  %.02966.i.i.i = phi i64 [ %.3.i.i.i, %.loopexit.i.i.i ], [ 0, %.lr.ph67.i.i.preheader.i ] ; 7 uses
  %118 = load i8, ptr %82, align 8, !tbaa !227, !range !203, !noalias !641, !noundef !151
  %i.aer = trunc nuw i8 %118 to i1
  br i1 %i.aer, label %bb.jd, label %.noexc84.thread.i.i

bb.jd:                                            ; preds = %.lr.ph67.i.i.i
  %i.aes = load i64, ptr %i.aao, align 8, !tbaa !230, !noalias !641 ; 4 uses
  %.not.i.i97.i.i = icmp eq i64 %i.aes, 0
  br i1 %.not.i.i97.i.i, label %.noexc84.i.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aet = load i64, ptr %i.aap, align 8, !tbaa !231, !noalias !641 ; 3 uses
  %i.aeu = icmp eq i64 %i.aet, 0
  br i1 %i.aeu, label %bb.jf, label %bb.ji

bb.jf:                                            ; preds = %bb.je
  %i.aev = icmp slt i64 %i.aes, 64
  br i1 %i.aev, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.aew = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.aan, i64 noundef 64) #20, !noalias !640, !inline_history !335 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %i.aew, 16
  br label %bb.jm

bb.jh:                                            ; preds = %bb.jf
  %i.aex = load ptr, ptr %i.aan, align 8, !tbaa !232, !noalias !641 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aex, align 1, !noalias !640
  br label %bb.jl

bb.ji:                                            ; preds = %bb.je
  %i.aey = sub nsw i64 128, %i.aet
  %i.aez = icmp slt i64 %i.aes, %i.aey
  br i1 %i.aez, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.afa = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.aan, i64 noundef 64) #20, !noalias !640, !inline_history !335 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i = lshr i32 %i.afa, 16
  br label %bb.jm

bb.jk:                                            ; preds = %bb.ji
  %i.afb = load ptr, ptr %i.aan, align 8, !tbaa !232, !noalias !641 ; 3 uses
  %.0.copyload.i.i6.i.i.i.i = load i64, ptr %i.afb, align 1, !noalias !640
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %.0.copyload.i.i7.i.i.i.i = load i64, ptr %i.afc, align 1, !noalias !640
  %.0.i.i.i.i136.i = call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i7.i.i.i.i, i64 %.0.copyload.i.i6.i.i.i.i, i64 %i.aet)
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jh
  %.0.i.sink.i.i.i.i = phi i64 [ %.0.i.i.i.i136.i, %bb.jk ], [ %.0.copyload.i.i.i.i.i.i, %bb.jh ]
  %i.afd = phi ptr [ %i.afb, %bb.jk ], [ %i.aex, %bb.jh ]
  %i.afe = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i)
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  store ptr %i.aff, ptr %i.aan, align 8, !tbaa !232, !noalias !641
  %i.afg = add nsw i64 %i.aes, -64
  store i64 %i.afg, ptr %i.aao, align 8, !tbaa !230, !noalias !641
  %i.afh = trunc nuw nsw i64 %i.afe to i32
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jj, %bb.jg
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.aew, %bb.jg ], [ 64, %bb.jl ], [ %i.afa, %bb.jj ]
  %.sroa.5.0.i.i.i.i = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i, %bb.jg ], [ %i.afh, %bb.jl ], [ %.sroa.5.0.extract.shift2.i.i.i.i, %bb.jj ]
  %i.afi = shl nuw i32 %.sroa.5.0.i.i.i.i, 16
  %i.afj = and i32 %.sroa.0.0.i.i.i.i, 65535
  %i.afk = or disjoint i32 %i.afi, %i.afj
  br label %.noexc84.i.i

.noexc84.thread.i.i:                              ; preds = %.lr.ph67.i.i.i
  %i.afl = load i64, ptr %i.aal, align 8, !tbaa !228, !noalias !641
  %i.afm = load i64, ptr %i.aam, align 8, !tbaa !229, !noalias !641 ; 2 uses
  %i.afn = sub nsw i64 %i.afl, %i.afm
  %.sroa.speculated.i.i.i = call i64 @llvm.smin.i64(i64 %i.afn, i64 32767) ; 2 uses
  %i.afo = trunc i64 %.sroa.speculated.i.i.i to i16
  %sext.i.i.i = shl i64 %.sroa.speculated.i.i.i, 48
  %i.afp = ashr exact i64 %sext.i.i.i, 48
  %i.afq = add nsw i64 %i.afp, %i.afm
  store i64 %i.afq, ptr %i.aam, align 8, !tbaa !229, !noalias !641
  br label %.preheader.i.i.i

.noexc84.i.i:                                     ; preds = %bb.jm, %bb.jd
  %.sroa.0.0.insert.insert.i.i.i.i = phi i32 [ %i.afk, %bb.jm ], [ 0, %bb.jd ] ; 4 uses
  %.sroa.0.0.extract.trunc.i98.i.i = zext i32 %.sroa.0.0.insert.insert.i.i.i.i to i64
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i, 16 ; 2 uses
  %sext4.i.i.i = shl i64 %.sroa.0.0.extract.trunc.i98.i.i, 48
  %i.afr = ashr exact i64 %sext4.i.i.i, 48
  %i.afs = load i64, ptr %i.aam, align 8, !tbaa !229, !noalias !641
  %i.aft = add nsw i64 %i.afr, %i.afs
  store i64 %i.aft, ptr %i.aam, align 8, !tbaa !229, !noalias !641
  %.pre.i.i.i = and i32 %.sroa.0.0.insert.insert.i.i.i.i, 65535
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i to i16 ; 4 uses
  %i.afu = icmp eq i32 %.pre.i.i.i, %.sroa.4.0.extract.shift.i.i.i
  br i1 %i.afu, label %.preheader.i.i.i, label %bb.jp

.preheader.i.i.i:                                 ; preds = %.noexc84.i.i, %.noexc84.thread.i.i
  %.sroa.0.0.extract.trunc.i31.i.i = phi i16 [ %i.afo, %.noexc84.thread.i.i ], [ %.sroa.0.0.extract.trunc.i.i.i, %.noexc84.i.i ] ; 5 uses
  %i.afv = icmp sgt i16 %.sroa.0.0.extract.trunc.i31.i.i, 0
  br i1 %i.afv, label %.lr.ph64.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph64.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %i.afw = icmp eq i16 %.sroa.0.0.extract.trunc.i31.i.i, 1
  br i1 %i.afw, label %.lr.ph64.i.i.i.epil.preheader, label %.lr.ph64.i.i.i.preheader.new

.lr.ph64.i.i.i.preheader.new:                     ; preds = %.lr.ph64.i.i.i.preheader
  %i.afx = and i16 %.sroa.0.0.extract.trunc.i31.i.i, 32766
  %unroll_iter1173 = zext nneg i16 %i.afx to i64
  br label %.lr.ph64.i.i.i

.lr.ph64.i.i.i:                                   ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph64.i.i.i.preheader.new
  %.162.i.i.i = phi i64 [ %.02966.i.i.i, %.lr.ph64.i.i.i.preheader.new ], [ %i.agn, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1174 = phi i64 [ 0, %.lr.ph64.i.i.i.preheader.new ], [ %niter1174.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %.162.i.i.i
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !104, !noalias !646
  %i.aga = icmp sgt i32 %i.afz, 0
  br i1 %i.aga, label %bb.jn, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.jn:                                            ; preds = %.lr.ph64.i.i.i
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %.162.i.i.i
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !104, !noalias !646
  %i.agd = add i32 %i.agc, %i.abd
  %i.age = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %.162.i.i.i
  store i32 %i.agd, ptr %i.age, align 4, !tbaa !104, !noalias !646
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.jn, %.lr.ph64.i.i.i
  %i.agf = add nsw i64 %.162.i.i.i, 1             ; 3 uses
  %i.agg = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %i.agf
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !104, !noalias !646
  %i.agi = icmp sgt i32 %i.agh, 0
  br i1 %i.agi, label %bb.jo, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.jo:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %i.agf
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !104, !noalias !646
  %i.agl = add i32 %i.agk, %i.abd
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %i.agf
  store i32 %i.agl, ptr %i.agm, align 4, !tbaa !104, !noalias !646
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.jo, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.agn = add nsw i64 %.162.i.i.i, 2             ; 3 uses
  %niter1174.next.1 = add i64 %niter1174, 2       ; 2 uses
  %niter1174.ncmp.1 = icmp eq i64 %niter1174.next.1, %unroll_iter1173
  br i1 %niter1174.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph64.i.i.i, !llvm.loop !379

bb.jp:                                            ; preds = %.noexc84.i.i
  %i.ago = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i, 0
  br i1 %i.ago, label %bb.jq, label %.preheader58.i.i.i

.preheader58.i.i.i:                               ; preds = %bb.jp
  %i.agp = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64
  %i.agq = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %i.agq, label %.lr.ph.i78.i.i, label %.loopexit.i.i.i

.lr.ph.i78.i.i:                                   ; preds = %.preheader58.i.i.i
  %i.agr = load i64, ptr %i.adc, align 8, !tbaa !191, !noalias !646
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.ags = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %.02966.i.i.i
  %i.agt = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %i.agu = shl nsw i64 %i.agt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ags, i8 0, i64 %i.agu, i1 false), !noalias !646
  %i.agv = add nsw i64 %.02966.i.i.i, %i.agt
  br label %.loopexit.i.i.i

bb.jr:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i, %.lr.ph.i78.i.i
  %.061.i.i.i = phi i64 [ 0, %.lr.ph.i78.i.i ], [ %i.ahl, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i ]
  %.260.i.i.i = phi i64 [ %.02966.i.i.i, %.lr.ph.i78.i.i ], [ %i.ahm, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i ] ; 5 uses
  %i.agw = add nsw i64 %.260.i.i.i, %i.agr        ; 2 uses
  %i.agx = lshr i64 %i.agw, 3
  %i.agy = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.agx
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !103, !noalias !646
  %i.aha = trunc i64 %i.agw to i8
  %i.ahb = and i8 %i.aha, 7
  %i.ahc = lshr i8 %i.agz, %i.ahb
  %i.ahd = trunc i8 %i.ahc to i1
  %i.ahe = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %.260.i.i.i ; 2 uses
  br i1 %i.ahd, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !104, !noalias !646
  %i.ahg = icmp sgt i32 %i.ahf, 0
  br i1 %i.ahg, label %bb.jt, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i

bb.jt:                                            ; preds = %bb.js
  %i.ahh = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %.260.i.i.i
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !104, !noalias !646
  %i.ahj = add i32 %i.ahi, %i.abd
  %i.ahk = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %.260.i.i.i
  store i32 %i.ahj, ptr %i.ahk, align 4, !tbaa !104, !noalias !646
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i

bb.ju:                                            ; preds = %bb.jr
  store i32 0, ptr %i.ahe, align 4, !tbaa !104, !noalias !646
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i: ; preds = %bb.ju, %bb.jt, %bb.js
  %i.ahl = add nuw nsw i64 %.061.i.i.i, 1         ; 2 uses
  %i.ahm = add nsw i64 %.260.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ahl, %i.agp
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %bb.jr, !llvm.loop !381

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1
  %i.ahn = and i16 %.sroa.0.0.extract.trunc.i31.i.i, 1
  %lcmp.mod1170.not = icmp eq i16 %i.ahn, 0
  br i1 %lcmp.mod1170.not, label %.loopexit.i.i.i, label %.lr.ph64.i.i.i.epil.preheader

.lr.ph64.i.i.i.epil.preheader:                    ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph64.i.i.i.preheader
  %.162.i.i.i.epil.init = phi i64 [ %.02966.i.i.i, %.lr.ph64.i.i.i.preheader ], [ %i.agn, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1172 = trunc i16 %.sroa.0.0.extract.trunc.i31.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1172)
  %i.aho = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %.162.i.i.i.epil.init
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !104, !noalias !646
  %i.ahq = icmp sgt i32 %i.ahp, 0
  br i1 %i.ahq, label %bb.jv, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

bb.jv:                                            ; preds = %.lr.ph64.i.i.i.epil.preheader
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %.162.i.i.i.epil.init
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !104, !noalias !646
  %i.aht = add i32 %i.ahs, %i.abd
  %i.ahu = getelementptr inbounds [4 x i8], ptr %i.abk, i64 %.162.i.i.i.epil.init
  store i32 %i.aht, ptr %i.ahu, align 4, !tbaa !104, !noalias !646
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil: ; preds = %bb.jv, %.lr.ph64.i.i.i.epil.preheader
  %i.ahv = add nsw i64 %.162.i.i.i.epil.init, 1
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.jq, %.preheader58.i.i.i, %.preheader.i.i.i
  %.3.i.i.i = phi i64 [ %i.ahv, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil ], [ %i.agv, %bb.jq ], [ %.02966.i.i.i, %.preheader.i.i.i ], [ %.02966.i.i.i, %.preheader58.i.i.i ], [ %i.agn, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.ahm, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i ] ; 2 uses
  %i.ahw = load i64, ptr %i.ade, align 8, !tbaa !170, !noalias !646
  %i.ahx = icmp slt i64 %.3.i.i.i, %i.ahw
  br i1 %i.ahx, label %.lr.ph67.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !382

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.us.i, %.loopexit.i.i.i, %.noexc83.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20, !noalias !647
  br label %.thread.thread.i.i

bb.jw:                                            ; preds = %bb.iw, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20, !noalias !647
  %.val69.pr.i.i = load ptr, ptr %86, align 8, !tbaa !112, !noalias !641
  %i.ahy = icmp eq ptr %.val69.pr.i.i, null
  br i1 %i.ahy, label %.thread.i.i, label %.critedge.i.i, !prof !653

.critedge.i.i:                                    ; preds = %bb.jw
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %103, ptr noundef nonnull align 8 dereferenceable(8) %86) #20, !inline_history !335
  %i.ahz = load ptr, ptr %86, align 8, !tbaa !112, !noalias !641
  %.not.i.i.i137.i = icmp eq ptr %i.ahz, null
  br i1 %.not.i.i.i137.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, label %bb.jx, !prof !113

bb.jx:                                            ; preds = %.critedge.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %86), !noalias !640, !inline_history !335
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i: ; preds = %bb.jx, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !641
  br label %bb.jz

bb.jy:                                            ; preds = %bb.iz, %bb.iu, %bb.is, %.invoke.i.i
  %i.aia = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

.thread.i.i:                                      ; preds = %bb.jw
  %.val70.pre.i.i = load i32, ptr %i.aaq, align 8, !tbaa !103, !noalias !641 ; 2 uses
  %.not.i138.i = icmp eq i32 %.val70.pre.i.i, 0
  br i1 %.not.i138.i, label %.thread.thread.i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i, !prof !653

.thread.thread.i.i:                               ; preds = %.thread.i.i, %._crit_edge.i.i.i, %bb.in
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !189, !noalias !640
  %i.aid = add nsw i64 %i.aic, %.0407.i.i         ; 2 uses
  %i.aie = icmp sgt i64 %i.aid, 2147483647
  br i1 %i.aie, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit88.i.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit88.i.i: ; preds = %.thread.thread.i.i
  %i.aif = load ptr, ptr %i.abi, align 8, !tbaa !194, !noalias !640
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 24
  %i.aih = load i64, ptr %i.aig, align 8, !tbaa !223, !noalias !640
  %i.aii = lshr i64 %i.aih, 2
  %i.aij = add i64 %i.aii, %.0398.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !641
  %i.aik = add nuw i64 %.09.i.i, 1                ; 2 uses
  %exitcond647.not = icmp eq i64 %i.aik, %i.aau
  br i1 %exitcond647.not, label %.critedge62.i.i, label %bb.in, !llvm.loop !383

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i: ; preds = %.thread.thread.i.i, %.thread.i.i
  %.val70.pre.lcssa.sink.i.i = phi i32 [ %.val70.pre.i.i, %.thread.i.i ], [ 1, %.thread.thread.i.i ]
  store ptr null, ptr %103, align 8, !tbaa !112, !alias.scope !640, !noalias !618
  %i.ail = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 %.val70.pre.lcssa.sink.i.i, ptr %i.ail, align 8, !tbaa !103, !alias.scope !640, !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !641
  br label %bb.jz

.critedge62.i.i:                                  ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit88.i.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i
  store ptr null, ptr %103, align 8, !tbaa !112, !alias.scope !640, !noalias !618
  %i.aim = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 0, ptr %i.aim, align 8, !tbaa !103, !alias.scope !640, !noalias !618
  br label %bb.jz

bb.jz:                                            ; preds = %.critedge62.i.i, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, %bb.id
  %i.ain = load ptr, ptr %84, align 8, !tbaa !112, !noalias !641
  %i.aio = icmp eq ptr %i.ain, null
  br i1 %i.aio, label %bb.ka, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !113

bb.ka:                                            ; preds = %bb.jz
  %i.aip = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !224, !noalias !641 ; 3 uses
  %.not.i.i.i.i96.i.i = icmp eq ptr %i.aiq, null
  br i1 %.not.i.i.i.i96.i.i, label %bb.kc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.ka
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !102, !noalias !640
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %i.ait = load ptr, ptr %i.ais, align 8, !noalias !640
  call void %i.ait(ptr noundef nonnull align 8 dereferenceable(80) %i.aiq) #20, !noalias !640, !inline_history !384
  %.pr.pre.i.i.i = load ptr, ptr %84, align 8, !tbaa !112, !noalias !641
  %i.aiu = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %i.aiu, label %bb.kc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !222

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.jz
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %84), !noalias !640, !inline_history !335
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jy, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit76.i.i
  %.pn56.pn.pn.i.i = phi { ptr, i32 } [ %i.aia, %bb.jy ], [ %i.aav, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit76.i.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %84) #20, !noalias !640, !inline_history !335
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20, !noalias !641
  br label %.body140.i

bb.kc:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20, !noalias !641
  %.val.i76 = load ptr, ptr %103, align 8, !tbaa !112, !noalias !618
  %i.aiv = icmp eq ptr %.val.i76, null
  br i1 %i.aiv, label %bb.kf, label %bb.kd, !prof !113

bb.kd:                                            ; preds = %bb.kc
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %_ZN5arrow12_GLOBAL__N_120OffsetOverflowStatusEv.exit.i77 unwind label %bb.kg, !inline_history !335

bb.ke:                                            ; preds = %.loopexit.i.i75
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

bb.kf:                                            ; preds = %bb.kc
  %i.aix = getelementptr inbounds nuw i8, ptr %103, i64 8
  %.val90.i = load i32, ptr %i.aix, align 8, !tbaa !103, !noalias !618
  %cond2.i = icmp eq i32 %.val90.i, 1
  br i1 %cond2.i, label %bb.kh, label %bb.lf

bb.kg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156.i, %bb.kd
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

bb.kh:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #20, !noalias !618
  %i.aiz = load ptr, ptr %i.uh, align 8, !tbaa !218, !noalias !618
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !221 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 56
  %i.ajc = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aja, i64 64
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !97 ; 2 uses
  %i.ajf = load <2 x ptr>, ptr %i.ajb, align 8, !tbaa !133
  store <2 x ptr> %i.ajf, ptr %105, align 16, !tbaa !133, !noalias !618
  %.not.i.i.i142.i = icmp eq ptr %i.aje, null
  br i1 %.not.i.i.i142.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aje, i64 8 ; 3 uses
  %i.ajh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103, !noalias !618
  %.not.i.i.i.i143.i = icmp eq i8 %i.ajh, 0
  br i1 %.not.i.i.i.i143.i, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.aji = load i32, ptr %i.ajg, align 4, !tbaa !104
  %i.ajj = add nsw i32 %i.aji, 1
  store i32 %i.ajj, ptr %i.ajg, align 4, !tbaa !104
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.kk:                                            ; preds = %bb.ki
  %i.ajk = atomicrmw volatile add ptr %i.ajg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.kk, %bb.kj, %bb.kh
  invoke void @_ZN5arrow15large_list_viewESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %104, ptr noundef nonnull align 8 %105)
          to label %bb.kl unwind label %bb.le, !inline_history !335

bb.kl:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ajm = getelementptr inbounds nuw i8, ptr %104, i64 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ajo = load <2 x ptr>, ptr %104, align 16, !tbaa !133, !noalias !618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %104, i8 0, i64 16, i1 false), !noalias !618
  %i.ajp = load ptr, ptr %i.ajn, align 8, !tbaa !97, !noalias !618 ; 8 uses
  store <2 x ptr> %i.ajo, ptr %i.ajl, align 8, !tbaa !133, !noalias !618
  %.not.i.i.i.i144.i = icmp eq ptr %i.ajp, null
  br i1 %.not.i.i.i.i144.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i87, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8 ; 4 uses
  %i.ajr = load atomic i64, ptr %i.ajq acquire, align 8 ; 2 uses
  %i.ajs = icmp eq i64 %i.ajr, 4294967297
  %i.ajt = trunc i64 %i.ajr to i32                ; 2 uses
  br i1 %i.ajs, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  store i32 0, ptr %i.ajq, align 8, !tbaa !99
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajp, i64 12
  store i32 0, ptr %i.aju, align 4, !tbaa !100
  %i.ajv = load ptr, ptr %i.ajp, align 8, !tbaa !102
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 16
  %i.ajx = load ptr, ptr %i.ajw, align 8
  call void %i.ajx(ptr noundef nonnull align 8 dereferenceable(16) %i.ajp) #20, !inline_history !385
  %i.ajy = load ptr, ptr %i.ajp, align 8, !tbaa !102
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 24
  %i.aka = load ptr, ptr %i.ajz, align 8
  call void %i.aka(ptr noundef nonnull align 8 dereferenceable(16) %i.ajp) #20, !inline_history !385
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i87

bb.ko:                                            ; preds = %bb.km
  %i.akb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103, !noalias !618
  %.not.i.i.i.i.i145.i = icmp eq i8 %i.akb, 0
  br i1 %.not.i.i.i.i.i145.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.akc = add nsw i32 %i.ajt, -1
  store i32 %i.akc, ptr %i.ajq, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i146.i

bb.kq:                                            ; preds = %bb.ko
  %i.akd = atomicrmw volatile add ptr %i.ajq, i32 -1 acq_rel, align 4
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.bfg = shl nsw i64 %i.bff, 3
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bem, i64 32
  %i.bfi = load i64, ptr %i.bfh, align 8, !tbaa !191, !noalias !679 ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bem, i64 16
  %i.bfk = load i64, ptr %i.bfj, align 8, !tbaa !170, !noalias !679 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !680
  store ptr @.str.21, ptr %i.a, align 8, !tbaa !204, !noalias !681
  %i.bfl = icmp slt i64 %i.bfi, 0
  br i1 %i.bfl, label %.invoke.i.i257, label %bb.rp, !prof !105

bb.rp:                                            ; preds = %bb.ro
  %i.bfm = icmp slt i64 %i.bfk, 0
  br i1 %i.bfm, label %.invoke.i.i257, label %bb.rq, !prof !105

.invoke.i.i257:                                   ; preds = %bb.rp, %bb.ro
  %i.bfn = phi ptr [ @.str.23, %bb.ro ], [ @.str.24, %bb.rp ]
  invoke void @_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, i8 noundef signext 7, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) %i.bfn)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i248 unwind label %bb.sw, !noalias !673, !inline_history !394

bb.rq:                                            ; preds = %bb.rp
  %i.bfo = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bfi, i64 %i.bfk) ; 2 uses
  %i.bfp = extractvalue { i64, i1 } %i.bfo, 1
  br i1 %i.bfp, label %bb.rr, label %bb.rs, !prof !105

bb.rr:                                            ; preds = %bb.rq
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.25)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i248 unwind label %bb.sw, !noalias !673, !inline_history !394

bb.rs:                                            ; preds = %bb.rq
  %i.bfq = extractvalue { i64, i1 } %i.bfo, 0
  %i.bfr = icmp sgt i64 %i.bfq, %i.bfg
  br i1 %i.bfr, label %bb.rt, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i196, !prof !105

bb.rt:                                            ; preds = %bb.rs
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.26, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.27)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i248 unwind label %bb.sw, !noalias !673, !inline_history !394

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i196:        ; preds = %bb.rs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !680
  br label %bb.rw

_ZN5arrow6StatusD2Ev.exit.i.i.i248:               ; preds = %bb.rt, %bb.rr, %.invoke.i.i257
  %.pr.i.i.i249 = load ptr, ptr %57, align 8, !tbaa !112, !noalias !682 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !680
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  store ptr %.pr.i.i.i249, ptr %56, align 8, !tbaa !112, !alias.scope !683, !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !680
  %i.bfs = icmp eq ptr %.pr.i.i.i249, null
  br i1 %i.bfs, label %bb.rw, label %bb.ru, !prof !651

bb.ru:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i248
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %62, ptr noundef nonnull align 8 dereferenceable(8) %56) #20, !noalias !673, !inline_history !394
  %i.bft = load ptr, ptr %56, align 8, !tbaa !112, !noalias !680
  %.not.i32.i.i.i250 = icmp eq ptr %i.bft, null
  br i1 %.not.i32.i.i.i250, label %bb.su, label %bb.rv, !prof !113

bb.rv:                                            ; preds = %bb.ru
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %56), !noalias !679, !inline_history !394
  br label %bb.su

bb.rw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i248, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !680
  %.pr56.i.i.i197 = load ptr, ptr %i.bev, align 8, !tbaa !194, !noalias !679 ; 3 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bep, i64 9
  %i.bfv = load i8, ptr %i.bfu, align 1, !tbaa !202, !range !203, !noalias !679, !noundef !151
  %i.bfw = trunc nuw i8 %i.bfv to i1
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bep, i64 16
  %i.bfy = load ptr, ptr %i.bfx, align 8, !noalias !679
  %i.bfz = select i1 %i.bfw, ptr %i.bfy, ptr null, !prof !113 ; 2 uses
  %.not57.i.i.i198 = icmp eq ptr %.pr56.i.i.i197, null
  br i1 %.not57.i.i.i198, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.bga = getelementptr inbounds nuw i8, ptr %.pr56.i.i.i197, i64 9
  %i.bgb = load i8, ptr %i.bga, align 1, !tbaa !202, !range !203, !noalias !679, !noundef !151
  %i.bgc = trunc nuw i8 %i.bgb to i1
  %i.bgd = getelementptr inbounds nuw i8, ptr %.pr56.i.i.i197, i64 16
  %i.bge = load ptr, ptr %i.bgd, align 8, !noalias !679
  %i.bgf = select i1 %i.bgc, ptr %i.bge, ptr null, !prof !113
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw, %.thread.i.i.i258
  %i.bgg = phi ptr [ %i.bfz, %bb.rx ], [ %i.bfz, %bb.rw ], [ %i.bfc, %.thread.i.i.i258 ] ; 7 uses
  %i.bgh = phi ptr [ %i.bgf, %bb.rx ], [ null, %bb.rw ], [ null, %.thread.i.i.i258 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20, !noalias !680
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bem, i64 32 ; 2 uses
  %i.bgj = load i64, ptr %i.bgi, align 8, !tbaa !191, !noalias !679
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bem, i64 16 ; 4 uses
  %i.bgl = load i64, ptr %i.bgk, align 8, !tbaa !170, !noalias !679
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef %i.bgh, i64 noundef %i.bgj, i64 noundef %i.bgl)
          to label %.noexc83.i.i199 unwind label %bb.sw, !noalias !673, !inline_history !394

.noexc83.i.i199:                                  ; preds = %bb.ry
  %i.bgm = load i64, ptr %i.bgk, align 8, !tbaa !170, !noalias !679 ; 2 uses
  %i.bgn = icmp sgt i64 %i.bgm, 0
  br i1 %i.bgn, label %.lr.ph67.i.i.preheader.i204, label %._crit_edge.i.i.i200

.lr.ph67.i.i.preheader.i204:                      ; preds = %.noexc83.i.i199
  %i.bgo = load i8, ptr %58, align 8, !tbaa !227, !range !203, !noalias !674, !noundef !151
  %i.bgp = trunc nuw i8 %i.bgo to i1
  br i1 %i.bgp, label %.lr.ph67.i.i.i215, label %.lr.ph67.i.i.us.i205

.lr.ph67.i.i.us.i205:                             ; preds = %.lr.ph67.i.i.preheader.i204, %.loopexit.i.i.us.i209
  %i.bgq = phi i64 [ %i.bhx, %.loopexit.i.i.us.i209 ], [ %i.bgm, %.lr.ph67.i.i.preheader.i204 ]
  %.02966.i.i.us.i206 = phi i64 [ %.3.i.i.us.i210, %.loopexit.i.i.us.i209 ], [ 0, %.lr.ph67.i.i.preheader.i204 ] ; 3 uses
  %i.bgr = load i64, ptr %i.bds, align 8, !tbaa !228, !noalias !674
  %i.bgs = load i64, ptr %i.bdt, align 8, !tbaa !229, !noalias !674 ; 2 uses
  %i.bgt = sub nsw i64 %i.bgr, %i.bgs
  %.sroa.speculated.i.i.us.i207 = call i64 @llvm.smin.i64(i64 %i.bgt, i64 32767) ; 4 uses
  %i.bgu = trunc i64 %.sroa.speculated.i.i.us.i207 to i16
  %sext.i.i.us.i208 = shl i64 %.sroa.speculated.i.i.us.i207, 48 ; 2 uses
  %i.bgv = ashr exact i64 %sext.i.i.us.i208, 48   ; 2 uses
  %i.bgw = add nsw i64 %i.bgv, %i.bgs
  store i64 %i.bgw, ptr %i.bdt, align 8, !tbaa !229, !noalias !674
  %i.bgx = icmp sgt i16 %i.bgu, 0
  br i1 %i.bgx, label %.lr.ph64.i.i.us.i211.preheader, label %.loopexit.i.i.us.i209

.lr.ph64.i.i.us.i211.preheader:                   ; preds = %.lr.ph67.i.i.us.i205
  %xtraiter1153 = and i64 %.sroa.speculated.i.i.us.i207, 1 ; 2 uses
  %i.bgy = icmp eq i64 %sext.i.i.us.i208, 281474976710656
  br i1 %i.bgy, label %.lr.ph64.i.i.us.i211.epil.preheader, label %.lr.ph64.i.i.us.i211.preheader.new

.lr.ph64.i.i.us.i211.preheader.new:               ; preds = %.lr.ph64.i.i.us.i211.preheader
  %unroll_iter = sub nsw i64 %i.bgv, %xtraiter1153
  br label %.lr.ph64.i.i.us.i211

.lr.ph64.i.i.us.i211:                             ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph64.i.i.us.i211.preheader.new
  %.162.i.i.us.i213 = phi i64 [ %.02966.i.i.us.i206, %.lr.ph64.i.i.us.i211.preheader.new ], [ %i.bho, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph64.i.i.us.i211.preheader.new ], [ %niter.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
  %i.bgz = getelementptr inbounds [8 x i8], ptr %i.ben, i64 %.162.i.i.us.i213
  %i.bha = load i64, ptr %i.bgz, align 8, !tbaa !142, !noalias !679
  %i.bhb = icmp sgt i64 %i.bha, 0
  br i1 %i.bhb, label %bb.rz, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

bb.rz:                                            ; preds = %.lr.ph64.i.i.us.i211
  %i.bhc = getelementptr inbounds [8 x i8], ptr %i.bgg, i64 %.162.i.i.us.i213
  %i.bhd = load i64, ptr %i.bhc, align 8, !tbaa !142, !noalias !679
  %i.bhe = add i64 %i.bhd, %i.bej
  %i.bhf = getelementptr inbounds [8 x i8], ptr %i.beq, i64 %.162.i.i.us.i213
  store i64 %i.bhe, ptr %i.bhf, align 8, !tbaa !142, !noalias !679
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i: ; preds = %bb.rz, %.lr.ph64.i.i.us.i211
  %i.bhg = add nsw i64 %.162.i.i.us.i213, 1       ; 3 uses
  %i.bhh = getelementptr inbounds [8 x i8], ptr %i.ben, i64 %i.bhg
  %i.bhi = load i64, ptr %i.bhh, align 8, !tbaa !142, !noalias !679
  %i.bhj = icmp sgt i64 %i.bhi, 0
  br i1 %i.bhj, label %bb.sa, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

bb.sa:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.bhk = getelementptr inbounds [8 x i8], ptr %i.bgg, i64 %i.bhg
  %i.bhl = load i64, ptr %i.bhk, align 8, !tbaa !142, !noalias !679
  %i.bhm = add i64 %i.bhl, %i.bej
  %i.bhn = getelementptr inbounds [8 x i8], ptr %i.beq, i64 %i.bhg
  store i64 %i.bhm, ptr %i.bhn, align 8, !tbaa !142, !noalias !679
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1: ; preds = %bb.sa, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.bho = add nsw i64 %.162.i.i.us.i213, 2       ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.us.loopexit.i.unr-lcssa, label %.lr.ph64.i.i.us.i211, !llvm.loop !438

.loopexit.i.i.us.loopexit.i.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1153, 0
  br i1 %lcmp.mod1154.not, label %.loopexit.i.i.us.loopexit.i, label %.lr.ph64.i.i.us.i211.epil.preheader

.lr.ph64.i.i.us.i211.epil.preheader:              ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %.lr.ph64.i.i.us.i211.preheader
  %.162.i.i.us.i213.epil.init = phi i64 [ %.02966.i.i.us.i206, %.lr.ph64.i.i.us.i211.preheader ], [ %i.bho, %.loopexit.i.i.us.loopexit.i.unr-lcssa ] ; 4 uses
  %lcmp.mod1156 = trunc i64 %.sroa.speculated.i.i.us.i207 to i1
  call void @llvm.assume(i1 %lcmp.mod1156)
  %i.bhp = getelementptr inbounds [8 x i8], ptr %i.ben, i64 %.162.i.i.us.i213.epil.init
  %i.bhq = load i64, ptr %i.bhp, align 8, !tbaa !142, !noalias !679
  %i.bhr = icmp sgt i64 %i.bhq, 0
  br i1 %i.bhr, label %bb.sb, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

bb.sb:                                            ; preds = %.lr.ph64.i.i.us.i211.epil.preheader
  %i.bhs = getelementptr inbounds [8 x i8], ptr %i.bgg, i64 %.162.i.i.us.i213.epil.init
  %i.bht = load i64, ptr %i.bhs, align 8, !tbaa !142, !noalias !679
  %i.bhu = add i64 %i.bht, %i.bej
  %i.bhv = getelementptr inbounds [8 x i8], ptr %i.beq, i64 %.162.i.i.us.i213.epil.init
  store i64 %i.bhu, ptr %i.bhv, align 8, !tbaa !142, !noalias !679
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil: ; preds = %bb.sb, %.lr.ph64.i.i.us.i211.epil.preheader
  %i.bhw = add nsw i64 %.162.i.i.us.i213.epil.init, 1
  br label %.loopexit.i.i.us.loopexit.i

.loopexit.i.i.us.loopexit.i:                      ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil
  %.lcssa1115 = phi i64 [ %i.bho, %.loopexit.i.i.us.loopexit.i.unr-lcssa ], [ %i.bhw, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil ]
  %.pre246.i = load i64, ptr %i.bgk, align 8, !tbaa !170, !noalias !679
  br label %.loopexit.i.i.us.i209

.loopexit.i.i.us.i209:                            ; preds = %.loopexit.i.i.us.loopexit.i, %.lr.ph67.i.i.us.i205
  %i.bhx = phi i64 [ %i.bgq, %.lr.ph67.i.i.us.i205 ], [ %.pre246.i, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %.3.i.i.us.i210 = phi i64 [ %.02966.i.i.us.i206, %.lr.ph67.i.i.us.i205 ], [ %.lcssa1115, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %i.bhy = icmp slt i64 %.3.i.i.us.i210, %i.bhx
  br i1 %i.bhy, label %.lr.ph67.i.i.us.i205, label %._crit_edge.i.i.i200, !llvm.loop !439

.lr.ph67.i.i.i215:                                ; preds = %.lr.ph67.i.i.preheader.i204, %.loopexit.i.i.i221
  %.02966.i.i.i216 = phi i64 [ %.3.i.i.i222, %.loopexit.i.i.i221 ], [ 0, %.lr.ph67.i.i.preheader.i204 ] ; 7 uses
  %119 = load i8, ptr %58, align 8, !tbaa !227, !range !203, !noalias !674, !noundef !151
  %i.bhz = trunc nuw i8 %119 to i1
  br i1 %i.bhz, label %bb.sc, label %.noexc84.thread.i.i217

bb.sc:                                            ; preds = %.lr.ph67.i.i.i215
  %i.bia = load i64, ptr %i.bdv, align 8, !tbaa !230, !noalias !674 ; 4 uses
  %.not.i.i97.i.i227 = icmp eq i64 %i.bia, 0
  br i1 %.not.i.i97.i.i227, label %.noexc84.i.i233, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.bib = load i64, ptr %i.bdw, align 8, !tbaa !231, !noalias !674 ; 3 uses
  %i.bic = icmp eq i64 %i.bib, 0
  br i1 %i.bic, label %bb.se, label %bb.sh

bb.se:                                            ; preds = %bb.sd
  %i.bid = icmp slt i64 %i.bia, 64
  br i1 %i.bid, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %bb.se
  %i.bie = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bdu, i64 noundef 64) #20, !noalias !673, !inline_history !394 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i247 = lshr i32 %i.bie, 16
  br label %bb.sl

bb.sg:                                            ; preds = %bb.se
  %i.bif = load ptr, ptr %i.bdu, align 8, !tbaa !232, !noalias !674 ; 2 uses
  %.0.copyload.i.i.i.i.i.i246 = load i64, ptr %i.bif, align 1, !noalias !673
  br label %bb.sk

bb.sh:                                            ; preds = %bb.sd
  %i.big = sub nsw i64 128, %i.bib
  %i.bih = icmp slt i64 %i.bia, %i.big
  br i1 %i.bih, label %bb.si, label %bb.sj

bb.si:                                            ; preds = %bb.sh
  %i.bii = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bdu, i64 noundef 64) #20, !noalias !673, !inline_history !394 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i245 = lshr i32 %i.bii, 16
  br label %bb.sl

bb.sj:                                            ; preds = %bb.sh
  %i.bij = load ptr, ptr %i.bdu, align 8, !tbaa !232, !noalias !674 ; 3 uses
  %.0.copyload.i.i6.i.i.i.i228 = load i64, ptr %i.bij, align 1, !noalias !673
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 8
  %.0.copyload.i.i7.i.i.i.i229 = load i64, ptr %i.bik, align 1, !noalias !673
  %.0.i.i.i.i129.i = call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i7.i.i.i.i229, i64 %.0.copyload.i.i6.i.i.i.i228, i64 %i.bib)
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.sg
  %.0.i.sink.i.i.i.i230 = phi i64 [ %.0.i.i.i.i129.i, %bb.sj ], [ %.0.copyload.i.i.i.i.i.i246, %bb.sg ]
  %i.bil = phi ptr [ %i.bij, %bb.sj ], [ %i.bif, %bb.sg ]
  %i.bim = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i230)
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bil, i64 8
  store ptr %i.bin, ptr %i.bdu, align 8, !tbaa !232, !noalias !674
  %i.bio = add nsw i64 %i.bia, -64
  store i64 %i.bio, ptr %i.bdv, align 8, !tbaa !230, !noalias !674
  %i.bip = trunc nuw nsw i64 %i.bim to i32
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sk, %bb.si, %bb.sf
  %.sroa.0.0.i.i.i.i231 = phi i32 [ %i.bie, %bb.sf ], [ 64, %bb.sk ], [ %i.bii, %bb.si ]
  %.sroa.5.0.i.i.i.i232 = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i247, %bb.sf ], [ %i.bip, %bb.sk ], [ %.sroa.5.0.extract.shift2.i.i.i.i245, %bb.si ]
  %i.biq = shl nuw i32 %.sroa.5.0.i.i.i.i232, 16
  %i.bir = and i32 %.sroa.0.0.i.i.i.i231, 65535
  %i.bis = or disjoint i32 %i.biq, %i.bir
  br label %.noexc84.i.i233

.noexc84.thread.i.i217:                           ; preds = %.lr.ph67.i.i.i215
  %i.bit = load i64, ptr %i.bds, align 8, !tbaa !228, !noalias !674
  %i.biu = load i64, ptr %i.bdt, align 8, !tbaa !229, !noalias !674 ; 2 uses
  %i.biv = sub nsw i64 %i.bit, %i.biu
  %.sroa.speculated.i.i.i218 = call i64 @llvm.smin.i64(i64 %i.biv, i64 32767) ; 2 uses
  %i.biw = trunc i64 %.sroa.speculated.i.i.i218 to i16
  %sext.i.i.i219 = shl i64 %.sroa.speculated.i.i.i218, 48
  %i.bix = ashr exact i64 %sext.i.i.i219, 48
  %i.biy = add nsw i64 %i.bix, %i.biu
  store i64 %i.biy, ptr %i.bdt, align 8, !tbaa !229, !noalias !674
  br label %.preheader.i.i.i220

.noexc84.i.i233:                                  ; preds = %bb.sl, %bb.sc
  %.sroa.0.0.insert.insert.i.i.i.i234 = phi i32 [ %i.bis, %bb.sl ], [ 0, %bb.sc ] ; 4 uses
  %.sroa.0.0.extract.trunc.i98.i.i235 = zext i32 %.sroa.0.0.insert.insert.i.i.i.i234 to i64
  %.sroa.4.0.extract.shift.i.i.i236 = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i234, 16 ; 2 uses
  %sext4.i.i.i237 = shl i64 %.sroa.0.0.extract.trunc.i98.i.i235, 48
  %i.biz = ashr exact i64 %sext4.i.i.i237, 48
  %i.bja = load i64, ptr %i.bdt, align 8, !tbaa !229, !noalias !674
  %i.bjb = add nsw i64 %i.biz, %i.bja
  store i64 %i.bjb, ptr %i.bdt, align 8, !tbaa !229, !noalias !674
  %.pre.i.i.i238 = and i32 %.sroa.0.0.insert.insert.i.i.i.i234, 65535
  %.sroa.0.0.extract.trunc.i.i.i239 = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i234 to i16 ; 4 uses
  %i.bjc = icmp eq i32 %.pre.i.i.i238, %.sroa.4.0.extract.shift.i.i.i236
  br i1 %i.bjc, label %.preheader.i.i.i220, label %bb.so

.preheader.i.i.i220:                              ; preds = %.noexc84.i.i233, %.noexc84.thread.i.i217
  %.sroa.0.0.extract.trunc.i28.i.i = phi i16 [ %i.biw, %.noexc84.thread.i.i217 ], [ %.sroa.0.0.extract.trunc.i.i.i239, %.noexc84.i.i233 ] ; 5 uses
  %i.bjd = icmp sgt i16 %.sroa.0.0.extract.trunc.i28.i.i, 0
  br i1 %i.bjd, label %.lr.ph64.i.i.i223.preheader, label %.loopexit.i.i.i221

.lr.ph64.i.i.i223.preheader:                      ; preds = %.preheader.i.i.i220
  %i.bje = icmp eq i16 %.sroa.0.0.extract.trunc.i28.i.i, 1
  br i1 %i.bje, label %.lr.ph64.i.i.i223.epil.preheader, label %.lr.ph64.i.i.i223.preheader.new

.lr.ph64.i.i.i223.preheader.new:                  ; preds = %.lr.ph64.i.i.i223.preheader
  %i.bjf = and i16 %.sroa.0.0.extract.trunc.i28.i.i, 32766
  %unroll_iter1161 = zext nneg i16 %i.bjf to i64
  br label %.lr.ph64.i.i.i223

.lr.ph64.i.i.i223:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph64.i.i.i223.preheader.new
  %.162.i.i.i225 = phi i64 [ %.02966.i.i.i216, %.lr.ph64.i.i.i223.preheader.new ], [ %i.bjv, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1162 = phi i64 [ 0, %.lr.ph64.i.i.i223.preheader.new ], [ %niter1162.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.bjg = getelementptr inbounds [8 x i8], ptr %i.ben, i64 %.162.i.i.i225
  %i.bjh = load i64, ptr %i.bjg, align 8, !tbaa !142, !noalias !679
  %i.bji = icmp sgt i64 %i.bjh, 0
  br i1 %i.bji, label %bb.sm, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.sm:                                            ; preds = %.lr.ph64.i.i.i223
  %i.bjj = getelementptr inbounds [8 x i8], ptr %i.bgg, i64 %.162.i.i.i225
  %i.bjk = load i64, ptr %i.bjj, align 8, !tbaa !142, !noalias !679
  %i.bjl = add i64 %i.bjk, %i.bej
  %i.bjm = getelementptr inbounds [8 x i8], ptr %i.beq, i64 %.162.i.i.i225
  store i64 %i.bjl, ptr %i.bjm, align 8, !tbaa !142, !noalias !679
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.sm, %.lr.ph64.i.i.i223
  %i.bjn = add nsw i64 %.162.i.i.i225, 1          ; 3 uses
  %i.bjo = getelementptr inbounds [8 x i8], ptr %i.ben, i64 %i.bjn
  %i.bjp = load i64, ptr %i.bjo, align 8, !tbaa !142, !noalias !679
  %i.bjq = icmp sgt i64 %i.bjp, 0
  br i1 %i.bjq, label %bb.sn, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.sn:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.bjr = getelementptr inbounds [8 x i8], ptr %i.bgg, i64 %i.bjn
  %i.bjs = load i64, ptr %i.bjr, align 8, !tbaa !142, !noalias !679
  %i.bjt = add i64 %i.bjs, %i.bej
  %i.bju = getelementptr inbounds [8 x i8], ptr %i.beq, i64 %i.bjn
  store i64 %i.bjt, ptr %i.bju, align 8, !tbaa !142, !noalias !679
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.sn, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.bjv = add nsw i64 %.162.i.i.i225, 2          ; 3 uses
  %niter1162.next.1 = add i64 %niter1162, 2       ; 2 uses
  %niter1162.ncmp.1 = icmp eq i64 %niter1162.next.1, %unroll_iter1161
  br i1 %niter1162.ncmp.1, label %.loopexit.i.i.i221.loopexit.unr-lcssa, label %.lr.ph64.i.i.i223, !llvm.loop !438

bb.so:                                            ; preds = %.noexc84.i.i233
  %i.bjw = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i236, 0
  br i1 %i.bjw, label %bb.sp, label %.preheader58.i.i.i240

.preheader58.i.i.i240:                            ; preds = %bb.so
  %i.bjx = sext i16 %.sroa.0.0.extract.trunc.i.i.i239 to i64
  %i.bjy = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i239, 0
  br i1 %i.bjy, label %.lr.ph.i78.i.i241, label %.loopexit.i.i.i221

bb.sp:                                            ; preds = %bb.so
  %i.bjz = getelementptr inbounds [8 x i8], ptr %i.ben, i64 %.02966.i.i.i216
  %i.bka = sext i16 %.sroa.0.0.extract.trunc.i.i.i239 to i64 ; 2 uses
  %i.bkb = shl nsw i64 %i.bka, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bjz, i8 0, i64 %i.bkb, i1 false), !noalias !679
  %i.bkc = add nsw i64 %.02966.i.i.i216, %i.bka
  br label %.loopexit.i.i.i221

.lr.ph.i78.i.i241:                                ; preds = %.preheader58.i.i.i240, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i
  %.061.i.i.i242 = phi i64 [ %i.bkt, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i ], [ 0, %.preheader58.i.i.i240 ]
  %.260.i.i.i243 = phi i64 [ %i.bku, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i ], [ %.02966.i.i.i216, %.preheader58.i.i.i240 ] ; 5 uses
  %i.bkd = load i64, ptr %i.bgi, align 8, !tbaa !191, !noalias !679
  %i.bke = add nsw i64 %i.bkd, %.260.i.i.i243     ; 2 uses
  %i.bkf = lshr i64 %i.bke, 3
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bgh, i64 %i.bkf
  %i.bkh = load i8, ptr %i.bkg, align 1, !tbaa !103, !noalias !679
  %i.bki = trunc i64 %i.bke to i8
  %i.bkj = and i8 %i.bki, 7
  %i.bkk = lshr i8 %i.bkh, %i.bkj
  %i.bkl = trunc i8 %i.bkk to i1
  %i.bkm = getelementptr inbounds [8 x i8], ptr %i.ben, i64 %.260.i.i.i243 ; 2 uses
  br i1 %i.bkl, label %bb.sq, label %bb.ss

bb.sq:                                            ; preds = %.lr.ph.i78.i.i241
  %i.bkn = load i64, ptr %i.bkm, align 8, !tbaa !142, !noalias !679
  %i.bko = icmp sgt i64 %i.bkn, 0
  br i1 %i.bko, label %bb.sr, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i

bb.sr:                                            ; preds = %bb.sq
  %i.bkp = getelementptr inbounds [8 x i8], ptr %i.bgg, i64 %.260.i.i.i243
  %i.bkq = load i64, ptr %i.bkp, align 8, !tbaa !142, !noalias !679
  %i.bkr = add i64 %i.bkq, %i.bej
  %i.bks = getelementptr inbounds [8 x i8], ptr %i.beq, i64 %.260.i.i.i243
  store i64 %i.bkr, ptr %i.bks, align 8, !tbaa !142, !noalias !679
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i

bb.ss:                                            ; preds = %.lr.ph.i78.i.i241
  store i64 0, ptr %i.bkm, align 8, !tbaa !142, !noalias !679
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i: ; preds = %bb.ss, %bb.sr, %bb.sq
  %i.bkt = add nuw nsw i64 %.061.i.i.i242, 1      ; 2 uses
  %i.bku = add nsw i64 %.260.i.i.i243, 1          ; 2 uses
  %exitcond.not.i.i.i244 = icmp eq i64 %i.bkt, %i.bjx
  br i1 %exitcond.not.i.i.i244, label %.loopexit.i.i.i221, label %.lr.ph.i78.i.i241, !llvm.loop !440

.loopexit.i.i.i221.loopexit.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1
  %i.bkv = and i16 %.sroa.0.0.extract.trunc.i28.i.i, 1
  %lcmp.mod1158.not = icmp eq i16 %i.bkv, 0
  br i1 %lcmp.mod1158.not, label %.loopexit.i.i.i221, label %.lr.ph64.i.i.i223.epil.preheader

.lr.ph64.i.i.i223.epil.preheader:                 ; preds = %.loopexit.i.i.i221.loopexit.unr-lcssa, %.lr.ph64.i.i.i223.preheader
  %.162.i.i.i225.epil.init = phi i64 [ %.02966.i.i.i216, %.lr.ph64.i.i.i223.preheader ], [ %i.bjv, %.loopexit.i.i.i221.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1160 = trunc i16 %.sroa.0.0.extract.trunc.i28.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1160)
  %i.bkw = getelementptr inbounds [8 x i8], ptr %i.ben, i64 %.162.i.i.i225.epil.init
  %i.bkx = load i64, ptr %i.bkw, align 8, !tbaa !142, !noalias !679
  %i.bky = icmp sgt i64 %i.bkx, 0
  br i1 %i.bky, label %bb.st, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

bb.st:                                            ; preds = %.lr.ph64.i.i.i223.epil.preheader
  %i.bkz = getelementptr inbounds [8 x i8], ptr %i.bgg, i64 %.162.i.i.i225.epil.init
  %i.bla = load i64, ptr %i.bkz, align 8, !tbaa !142, !noalias !679
  %i.blb = add i64 %i.bla, %i.bej
  %i.blc = getelementptr inbounds [8 x i8], ptr %i.beq, i64 %.162.i.i.i225.epil.init
  store i64 %i.blb, ptr %i.blc, align 8, !tbaa !142, !noalias !679
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil: ; preds = %bb.st, %.lr.ph64.i.i.i223.epil.preheader
  %i.bld = add nsw i64 %.162.i.i.i225.epil.init, 1
  br label %.loopexit.i.i.i221

.loopexit.i.i.i221:                               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil, %.loopexit.i.i.i221.loopexit.unr-lcssa, %bb.sp, %.preheader58.i.i.i240, %.preheader.i.i.i220
  %.3.i.i.i222 = phi i64 [ %i.bld, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil ], [ %i.bkc, %bb.sp ], [ %.02966.i.i.i216, %.preheader.i.i.i220 ], [ %.02966.i.i.i216, %.preheader58.i.i.i240 ], [ %i.bjv, %.loopexit.i.i.i221.loopexit.unr-lcssa ], [ %i.bku, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit36.i.i.i ] ; 2 uses
  %i.ble = load i64, ptr %i.bgk, align 8, !tbaa !170, !noalias !679
  %i.blf = icmp slt i64 %.3.i.i.i222, %i.ble
  br i1 %i.blf, label %.lr.ph67.i.i.i215, label %._crit_edge.i.i.i200, !llvm.loop !441

._crit_edge.i.i.i200:                             ; preds = %.loopexit.i.i.us.i209, %.loopexit.i.i.i221, %.noexc83.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20, !noalias !680
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit88.i.i201

bb.su:                                            ; preds = %bb.rv, %bb.ru
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !680
  %.val69.pr.i.i251 = load ptr, ptr %62, align 8, !tbaa !112, !noalias !674
  %i.blg = icmp eq ptr %.val69.pr.i.i251, null
  br i1 %i.blg, label %.thread.i.i254, label %.critedge.i.i252, !prof !653

.critedge.i.i252:                                 ; preds = %bb.su
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %79, ptr noundef nonnull align 8 dereferenceable(8) %62) #20, !inline_history !394
  %i.blh = load ptr, ptr %62, align 8, !tbaa !112, !noalias !674
  %.not.i.i.i130.i = icmp eq ptr %i.blh, null
  br i1 %.not.i.i.i130.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253, label %bb.sv, !prof !113

bb.sv:                                            ; preds = %.critedge.i.i252
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %62), !noalias !673, !inline_history !394
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253: ; preds = %bb.sv, %.critedge.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !674
  br label %bb.sx

bb.sw:                                            ; preds = %bb.ry, %bb.rt, %bb.rr, %.invoke.i.i257
  %i.bli = landingpad { ptr, i32 }
          cleanup
  br label %bb.sz

.thread.i.i254:                                   ; preds = %bb.su
  %.val70.pre.i.i255 = load i32, ptr %i.bdx, align 8, !tbaa !103, !noalias !674 ; 2 uses
  %.not.i131.i = icmp eq i32 %.val70.pre.i.i255, 0
  br i1 %.not.i131.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit88.i.i201, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i256, !prof !653

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit88.i.i201: ; preds = %.thread.i.i254, %._crit_edge.i.i.i200, %bb.rm
  %i.blj = load ptr, ptr %i.beo, align 8, !tbaa !194, !noalias !673
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 24
  %i.bll = load i64, ptr %i.blk, align 8, !tbaa !223, !noalias !673
  %i.blm = lshr i64 %i.bll, 3
  %i.bln = add i64 %i.blm, %.0397.i.i
  %i.blo = getelementptr inbounds nuw i8, ptr %i.beh, i64 8
  %i.blp = load i64, ptr %i.blo, align 8, !tbaa !189, !noalias !673
  %i.blq = add nsw i64 %i.blp, %.0406.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !674
  %i.blr = add nuw i64 %.08.i.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.blr, %i.beb
  br i1 %exitcond.not, label %.critedge62.i.i203, label %bb.rm, !llvm.loop !442

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i256: ; preds = %.thread.i.i254
  store ptr null, ptr %79, align 8, !tbaa !112, !alias.scope !673, !noalias !656
  %i.bls = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i32 %.val70.pre.i.i255, ptr %i.bls, align 8, !tbaa !103, !alias.scope !673, !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !674
  br label %bb.sx

.critedge62.i.i203:                               ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit88.i.i201, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i193
  store ptr null, ptr %79, align 8, !tbaa !112, !alias.scope !673, !noalias !656
  %i.blt = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i32 0, ptr %i.blt, align 8, !tbaa !103, !alias.scope !673, !noalias !656
  br label %bb.sx

bb.sx:                                            ; preds = %.critedge62.i.i203, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i256, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253, %bb.rc
  %i.blu = phi ptr [ %i.bdq, %.critedge62.i.i203 ], [ %i.bdq, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i256 ], [ %i.bdq, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253 ], [ %i.bat, %bb.rc ] ; 2 uses
  %i.blv = phi ptr [ %i.bdr, %.critedge62.i.i203 ], [ %i.bdr, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit94.i.i256 ], [ %i.bdr, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i253 ], [ %i.bao, %bb.rc ] ; 3 uses
  %i.blw = load ptr, ptr %60, align 8, !tbaa !112, !noalias !674
  %i.blx = icmp eq ptr %i.blw, null
  br i1 %i.blx, label %bb.sy, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i169, !prof !113

bb.sy:                                            ; preds = %bb.sx
  %i.bly = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !224, !noalias !674 ; 3 uses
  %.not.i.i.i.i96.i.i183 = icmp eq ptr %i.blz, null
  br i1 %.not.i.i.i.i96.i.i183, label %bb.ta, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i184

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i184: ; preds = %bb.sy
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !102, !noalias !673
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 8
  %i.bmc = load ptr, ptr %i.bmb, align 8, !noalias !673
  call void %i.bmc(ptr noundef nonnull align 8 dereferenceable(80) %i.blz) #20, !noalias !673, !inline_history !443
  %.pr.pre.i.i.i185 = load ptr, ptr %60, align 8, !tbaa !112, !noalias !674
  %i.bmd = icmp eq ptr %.pr.pre.i.i.i185, null
  br i1 %i.bmd, label %bb.ta, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i169, !prof !222

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i169: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i184, %bb.sx
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %60), !noalias !673, !inline_history !394
  br label %bb.ta

bb.sz:                                            ; preds = %bb.sw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit76.i.i188
  %.pn56.pn.pn.i.i189 = phi { ptr, i32 } [ %i.bli, %bb.sw ], [ %i.bec, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit76.i.i188 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #20, !noalias !673, !inline_history !394
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !674
  br label %.body133.i

bb.ta:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i169, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i184, %bb.sy
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !674
  %.val.i170 = load ptr, ptr %79, align 8, !tbaa !112, !noalias !656
  %i.bme = icmp eq ptr %.val.i170, null
  br i1 %i.bme, label %bb.td, label %bb.tb, !prof !113

bb.tb:                                            ; preds = %bb.ta
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %_ZN5arrow12_GLOBAL__N_120OffsetOverflowStatusEv.exit.i172 unwind label %bb.te, !inline_history !394

bb.tc:                                            ; preds = %.loopexit.i.i167
  %i.bmf = landingpad { ptr, i32 }
          cleanup
  br label %.body133.i

bb.td:                                            ; preds = %bb.ta
  %i.bmg = getelementptr inbounds nuw i8, ptr %79, i64 8
  %.val83.i = load i32, ptr %i.bmg, align 8, !tbaa !103, !noalias !656
  %cond2.i182 = icmp eq i32 %.val83.i, 1
  br i1 %cond2.i182, label %bb.tg, label %bb.th

bb.te:                                            ; preds = %bb.tg, %bb.tb
  %i.bmh = landingpad { ptr, i32 }
          cleanup
  %i.bmi = load ptr, ptr %79, align 8, !tbaa !112, !noalias !656
  %.not.i.i135.i = icmp eq ptr %i.bmi, null
  br i1 %.not.i.i135.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i171, label %bb.tf, !prof !113

bb.tf:                                            ; preds = %bb.te
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %79), !inline_history !394
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i171

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i171: ; preds = %bb.tf, %bb.te
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20, !noalias !656
  br label %.body133.i

bb.tg:                                            ; preds = %bb.td
  invoke void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %117, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(43) @.str.19)
          to label %_ZN5arrow12_GLOBAL__N_120OffsetOverflowStatusEv.exit.i172 unwind label %bb.te, !inline_history !394

bb.th:                                            ; preds = %bb.td
  store ptr null, ptr %117, align 8, !tbaa !112, !alias.scope !684
  br label %_ZN5arrow12_GLOBAL__N_120OffsetOverflowStatusEv.exit.i172

_ZN5arrow12_GLOBAL__N_120OffsetOverflowStatusEv.exit.i172: ; preds = %bb.th, %bb.tg, %bb.tb
  %i.bmj = load ptr, ptr %79, align 8, !tbaa !112, !noalias !656
  %.not.i.i137.i = icmp eq ptr %i.bmj, null
  br i1 %.not.i.i137.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit138.i, label %bb.ti, !prof !113

bb.ti:                                            ; preds = %_ZN5arrow12_GLOBAL__N_120OffsetOverflowStatusEv.exit.i172
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %79), !inline_history !394
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit138.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit138.i: ; preds = %bb.ti, %_ZN5arrow12_GLOBAL__N_120OffsetOverflowStatusEv.exit.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20, !noalias !656
  %.not4.i.i.i.i173 = icmp eq ptr %i.blv, %i.blu
  br i1 %.not4.i.i.i.i173, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i180, label %.lr.ph.i.i.i.i174

.lr.ph.i.i.i.i174:                                ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit138.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i178
  %.05.i.i.i.i175 = phi ptr [ %i.bnb, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i178 ], [ %i.blv, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit138.i ] ; 2 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i175, i64 8
  %i.bml = load ptr, ptr %i.bmk, align 8, !tbaa !97 ; 8 uses
  %.not.i.i.i.i.i.i139.i = icmp eq ptr %i.bml, null
  br i1 %.not.i.i.i.i.i.i139.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i178, label %bb.tj

bb.tj:                                            ; preds = %.lr.ph.i.i.i.i174
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 8 ; 4 uses
  %i.bmn = load atomic i64, ptr %i.bmm acquire, align 8 ; 2 uses
  %i.bmo = icmp eq i64 %i.bmn, 4294967297
  %i.bmp = trunc i64 %i.bmn to i32                ; 2 uses
  br i1 %i.bmo, label %bb.tk, label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  store i32 0, ptr %i.bmm, align 8, !tbaa !99
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bml, i64 12
  store i32 0, ptr %i.bmq, align 4, !tbaa !100
  %i.bmr = load ptr, ptr %i.bml, align 8, !tbaa !102
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 16
  %i.bmt = load ptr, ptr %i.bms, align 8
  call void %i.bmt(ptr noundef nonnull align 8 dereferenceable(16) %i.bml) #20, !inline_history !446
  %i.bmu = load ptr, ptr %i.bml, align 8, !tbaa !102
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmu, i64 24
  %i.bmw = load ptr, ptr %i.bmv, align 8
  call void %i.bmw(ptr noundef nonnull align 8 dereferenceable(16) %i.bml) #20, !inline_history !446
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i178

bb.tl:                                            ; preds = %bb.tj
  %i.bmx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103, !noalias !656
  %.not.i.i.i.i.i.i.i140.i = icmp eq i8 %i.bmx, 0
  br i1 %.not.i.i.i.i.i.i.i140.i, label %bb.tn, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.bmy = add nsw i32 %i.bmp, -1
  store i32 %i.bmy, ptr %i.bmm, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i176

bb.tn:                                            ; preds = %bb.tl
  %i.bmz = atomicrmw volatile add ptr %i.bmm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i176

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i176: ; preds = %bb.tn, %bb.tm
  %.0.i.i.i.i.i.i.i.i.i177 = phi i32 [ %i.bmp, %bb.tm ], [ %i.bmz, %bb.tn ]
  %i.bna = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i177, 1
  br i1 %i.bna, label %bb.to, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i178, !prof !105

bb.to:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i176
end_hunk_1
