inline.NumInlined: 2834
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.abs = trunc nuw i8 %i.abr to i1
  %i.abt = select i1 %i.abp, i1 %i.abs, i1 false, !prof !54
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abv = load ptr, ptr %i.abu, align 8, !noalias !303
  %i.abw = select i1 %i.abt, ptr %i.abv, ptr null, !prof !54
  %i.abx = load ptr, ptr %i.yu, align 8, !tbaa !113, !noalias !307 ; 2 uses
  %i.aby = load ptr, ptr %102, align 8, !tbaa !116, !noalias !307 ; 3 uses
  %.not607.not.i.i = icmp eq ptr %i.abx, %i.aby
  br i1 %.not607.not.i.i, label %.critedge62.i.i, label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.abz = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 5 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %82, i64 24 ; 5 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %82, i64 32 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %82, i64 40
  %i.ace = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.acf = ptrtoint ptr %i.abx to i64
  %i.acg = ptrtoint ptr %i.aby to i64
  %i.ach = sub i64 %i.acf, %i.acg
  %i.aci = ashr exact i64 %i.ach, 4
  br label %bb.ix

bb.iw:                                            ; preds = %bb.io
  %i.acj = landingpad { ptr, i32 }
          cleanup
  %i.ack = load ptr, ptr %85, align 8, !tbaa !314, !noalias !307 ; 3 uses
  %.not.i73.i.i = icmp eq ptr %i.ack, null
  br i1 %.not.i73.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i: ; preds = %bb.iw
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !42, !noalias !303
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8, !noalias !303
  call void %i.acn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ack) #20, !noalias !303, !inline_history !318
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20, !noalias !307
  br label %bb.ko

bb.ix:                                            ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i, %.lr.ph.i.i91
  %.04310.i.i = phi i64 [ 0, %.lr.ph.i.i91 ], [ %i.akg, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i ] ; 4 uses
  %.0449.i.i = phi i64 [ 0, %.lr.ph.i.i91 ], [ %i.akf, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i ] ; 3 uses
  %.0478.i.i = phi i64 [ 0, %.lr.ph.i.i91 ], [ %i.ajz, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i ] ; 2 uses
  %i.aco = getelementptr inbounds nuw [16 x i8], ptr %.val99.i, i64 %.04310.i.i ; 2 uses
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !157, !noalias !303
  %i.acq = sub nsw i64 %.0478.i.i, %i.acp
  %i.acr = trunc i64 %i.acq to i32                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #20, !noalias !307
  %i.acs = load ptr, ptr %i.yz, align 8, !tbaa !67, !noalias !303
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.acs, i64 %.04310.i.i
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !75, !noalias !303 ; 5 uses
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %.0449.i.i ; 8 uses
  %i.acw = getelementptr inbounds nuw [16 x i8], ptr %i.aby, i64 %.04310.i.i ; 2 uses
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !164, !noalias !303 ; 5 uses
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %.0449.i.i ; 7 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acx, i64 24
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !306, !noalias !319
  %i.adb = icmp eq i64 %i.ada, 0
  br i1 %i.adb, label %.thread.thread.i.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acu, i64 40
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !116, !noalias !319 ; 2 uses
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !164, !noalias !319 ; 2 uses
  %.not.i76.i.i = icmp eq ptr %i.ade, null
  br i1 %.not.i76.i.i, label %.thread.i.i.i, label %bb.iz

.thread.i.i.i:                                    ; preds = %bb.iy
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acx, i64 9
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !167, !range !65, !noalias !319, !noundef !66
  %i.adh = trunc nuw i8 %i.adg to i1
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8, !noalias !319
  %i.adk = select i1 %i.adh, ptr %i.adj, ptr null, !prof !54
  br label %bb.jk

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #20, !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #20, !noalias !322
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ade, i64 24
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !306, !noalias !319
  %i.adn = shl nsw i64 %i.adm, 3
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !163, !noalias !319 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !119, !noalias !319 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !322
  store ptr @.str.23, ptr %i.b, align 8, !tbaa !174, !noalias !323
  %i.ads = icmp slt i64 %i.adp, 0
  br i1 %i.ads, label %.invoke.i.i, label %bb.ja, !prof !46

bb.ja:                                            ; preds = %bb.iz
  %i.adt = icmp slt i64 %i.adr, 0
  br i1 %i.adt, label %.invoke.i.i, label %bb.jb, !prof !46

.invoke.i.i:                                      ; preds = %bb.ja, %bb.iz
  %i.adu = phi ptr [ @.str.25, %bb.iz ], [ @.str.26, %bb.ja ]
  invoke void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 1 dereferenceable(10) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) %i.adu)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.kk, !noalias !303, !inline_history !225

bb.jb:                                            ; preds = %bb.ja
  %i.adv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.adp, i64 %i.adr) ; 2 uses
  %i.adw = extractvalue { i64, i1 } %i.adv, 1
  br i1 %i.adw, label %bb.jc, label %bb.jd, !prof !46

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(22) @.str.27)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.kk, !noalias !303, !inline_history !225

bb.jd:                                            ; preds = %bb.jb
  %i.adx = extractvalue { i64, i1 } %i.adv, 0
  %i.ady = icmp sgt i64 %i.adx, %i.adn
  br i1 %i.ady, label %bb.je, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, !prof !46

bb.je:                                            ; preds = %bb.jd
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(21) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(8) @.str.29)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i unwind label %bb.kk, !noalias !303, !inline_history !225

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20, !noalias !322
  br label %bb.ji

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.je, %bb.jc, %.invoke.i.i
  %.pr.i.i.i = load ptr, ptr %81, align 8, !tbaa !51, !noalias !322 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !322
  store ptr %.pr.i.i.i, ptr %80, align 8, !tbaa !51, !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20, !noalias !322
  %i.adz = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.adz, label %bb.ji, label %bb.jf, !prof !326

bb.jf:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %86, ptr noundef nonnull align 8 dereferenceable(8) %80) #20, !noalias !303, !inline_history !225
  %i.aea = load ptr, ptr %80, align 8, !tbaa !51, !noalias !322 ; 2 uses
  %.not.i34.i.i.i = icmp eq ptr %i.aea, null
  br i1 %.not.i34.i.i.i, label %bb.kh, label %bb.jg, !prof !54

bb.jg:                                            ; preds = %bb.jf
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 1
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !55, !range !65, !noalias !303, !noundef !66
  %i.aed = trunc nuw i8 %i.aec to i1
  br i1 %i.aed, label %bb.kh, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %80) #20, !noalias !303, !inline_history !225
  br label %bb.kh

bb.ji:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20, !noalias !322
  %.pr60.i.i.i = load ptr, ptr %i.add, align 8, !tbaa !164, !noalias !319 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.acx, i64 9
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !167, !range !65, !noalias !319, !noundef !66
  %i.aeg = trunc nuw i8 %i.aef to i1
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  %i.aei = load ptr, ptr %i.aeh, align 8, !noalias !319
  %i.aej = select i1 %i.aeg, ptr %i.aei, ptr null, !prof !54 ; 2 uses
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
  %.promoted253.i = load i64, ptr %i.aca, align 8, !tbaa !331, !noalias !307
  br label %.lr.ph71.i.i.us.i

.lr.ph71.i.i.us.i:                                ; preds = %.loopexit.i.i.us.i, %.lr.ph71.i.i.preheader.split.us.i
  %i.afb = phi i64 [ %i.aff, %.loopexit.i.i.us.i ], [ %.promoted253.i, %.lr.ph71.i.i.preheader.split.us.i ] ; 2 uses
  %.03170.i.i.us.i = phi i64 [ %.3.i.i.us.i, %.loopexit.i.i.us.i ], [ 0, %.lr.ph71.i.i.preheader.split.us.i ] ; 3 uses
  %i.afc = sub nsw i64 %i.afa, %i.afb
  %.sroa.speculated.i.i.us.i = call i64 @llvm.smin.i64(i64 %i.afc, i64 32767) ; 5 uses
  %i.afd = trunc i64 %.sroa.speculated.i.i.us.i to i16
  %sext.i.i.us.i = shl i64 %.sroa.speculated.i.i.us.i, 48 ; 2 uses
  %i.afe = ashr exact i64 %sext.i.i.us.i, 48      ; 2 uses
  %i.aff = add nsw i64 %i.afe, %i.afb
  %i.afg = icmp sgt i16 %i.afd, 0
  br i1 %i.afg, label %.lr.ph68.i.i.us.i.preheader, label %.loopexit.i.i.us.i

.lr.ph68.i.i.us.i.preheader:                      ; preds = %.lr.ph71.i.i.us.i
  %i.afh = icmp eq i64 %sext.i.i.us.i, 281474976710656
  br i1 %i.afh, label %.lr.ph68.i.i.us.i.epil.preheader, label %.lr.ph68.i.i.us.i.preheader.new

.lr.ph68.i.i.us.i.preheader.new:                  ; preds = %.lr.ph68.i.i.us.i.preheader
  %xtraiter1185 = and i64 %.sroa.speculated.i.i.us.i, 1
  %unroll_iter1189 = sub nsw i64 %i.afe, %xtraiter1185
  br label %.lr.ph68.i.i.us.i

.lr.ph68.i.i.us.i:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph68.i.i.us.i.preheader.new
  %.166.i.i.us.i = phi i64 [ %.03170.i.i.us.i, %.lr.ph68.i.i.us.i.preheader.new ], [ %i.afx, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter1190 = phi i64 [ 0, %.lr.ph68.i.i.us.i.preheader.new ], [ %niter1190.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
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
  %niter1190.next.1 = add i64 %niter1190, 2       ; 2 uses
  %niter1190.ncmp.1 = icmp eq i64 %niter1190.next.1, %unroll_iter1189
  br i1 %niter1190.ncmp.1, label %.loopexit.i.i.us.i.loopexit.unr-lcssa, label %.lr.ph68.i.i.us.i, !llvm.loop !332

.loopexit.i.i.us.i.loopexit.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1186.not = trunc nuw i64 %.sroa.speculated.i.i.us.i to i1
  br i1 %lcmp.mod1186.not, label %.lr.ph68.i.i.us.i.epil.preheader, label %.loopexit.i.i.us.i

.lr.ph68.i.i.us.i.epil.preheader:                 ; preds = %.loopexit.i.i.us.i.loopexit.unr-lcssa, %.lr.ph68.i.i.us.i.preheader
  %.166.i.i.us.i.epil.init = phi i64 [ %.03170.i.i.us.i, %.lr.ph68.i.i.us.i.preheader ], [ %i.afx, %.loopexit.i.i.us.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1188 = trunc nuw i64 %.sroa.speculated.i.i.us.i to i1
  call void @llvm.assume(i1 %lcmp.mod1188)
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
  %i.ahl = ashr exact i64 %sext4.i.i.i, 48
  %i.ahm = load i64, ptr %i.aca, align 8, !tbaa !331, !noalias !307
  %i.ahn = add nsw i64 %i.ahl, %i.ahm
  store i64 %i.ahn, ptr %i.aca, align 8, !tbaa !331, !noalias !307
  %.pre.i.i155.i = and i32 %.sroa.0.0.insert.insert.i.i.i.i, 65535
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i to i16 ; 4 uses
  %i.aho = icmp eq i32 %.pre.i.i155.i, %.sroa.4.0.extract.shift.i.i.i
  br i1 %i.aho, label %.preheader.i.i.i, label %bb.ka

.preheader.i.i.i:                                 ; preds = %.noexc83.i.i, %.noexc83.thread.i.i
  %.sroa.0.0.extract.trunc.i36.i.i = phi i16 [ %i.ahi, %.noexc83.thread.i.i ], [ %.sroa.0.0.extract.trunc.i.i.i, %.noexc83.i.i ] ; 5 uses
  %i.ahp = icmp sgt i16 %.sroa.0.0.extract.trunc.i36.i.i, 0
  br i1 %i.ahp, label %.lr.ph68.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph68.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %i.ahq = icmp eq i16 %.sroa.0.0.extract.trunc.i36.i.i, 1
  br i1 %i.ahq, label %.lr.ph68.i.i.i.epil.preheader, label %.lr.ph68.i.i.i.preheader.new

.lr.ph68.i.i.i.preheader.new:                     ; preds = %.lr.ph68.i.i.i.preheader
  %i.ahr = and i16 %.sroa.0.0.extract.trunc.i36.i.i, 32766
  %unroll_iter1195 = zext nneg i16 %i.ahr to i64
  br label %.lr.ph68.i.i.i

.lr.ph68.i.i.i:                                   ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph68.i.i.i.preheader.new
  %.166.i.i.i = phi i64 [ %.03170.i.i.i, %.lr.ph68.i.i.i.preheader.new ], [ %i.aih, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1196 = phi i64 [ 0, %.lr.ph68.i.i.i.preheader.new ], [ %niter1196.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.ahs = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.166.i.i.i
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !3, !noalias !319
  %i.ahu = icmp sgt i32 %i.aht, 0
  br i1 %i.ahu, label %bb.jy, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.jy:                                            ; preds = %.lr.ph68.i.i.i
  %i.ahv = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %.166.i.i.i
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !3, !noalias !319
  %i.ahx = add i32 %i.ahw, %i.acr
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %.166.i.i.i
  store i32 %i.ahx, ptr %i.ahy, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.jy, %.lr.ph68.i.i.i
  %i.ahz = add nsw i64 %.166.i.i.i, 1             ; 3 uses
  %i.aia = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !3, !noalias !319
  %i.aic = icmp sgt i32 %i.aib, 0
  br i1 %i.aic, label %bb.jz, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.jz:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.aid = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.ahz
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !3, !noalias !319
  %i.aif = add i32 %i.aie, %i.acr
  %i.aig = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %i.ahz
  store i32 %i.aif, ptr %i.aig, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.jz, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.aih = add nsw i64 %.166.i.i.i, 2             ; 3 uses
  %niter1196.next.1 = add i64 %niter1196, 2       ; 2 uses
  %niter1196.ncmp.1 = icmp eq i64 %niter1196.next.1, %unroll_iter1195
  br i1 %niter1196.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i.i, !llvm.loop !332

bb.ka:                                            ; preds = %.noexc83.i.i
  %i.aii = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i, 0
  br i1 %i.aii, label %bb.kb, label %.preheader62.i.i.i

.preheader62.i.i.i:                               ; preds = %bb.ka
  %i.aij = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64
  %i.aik = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %i.aik, label %.lr.ph.i77.i.i, label %.loopexit.i.i.i

.lr.ph.i77.i.i:                                   ; preds = %.preheader62.i.i.i
  %i.ail = load i64, ptr %i.aes, align 8, !tbaa !163, !noalias !319
  br label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.aim = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.03170.i.i.i
  %i.ain = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %i.aio = shl nsw i64 %i.ain, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aim, i8 0, i64 %i.aio, i1 false), !noalias !319
  %i.aip = add nsw i64 %.03170.i.i.i, %i.ain
  br label %.loopexit.i.i.i

bb.kc:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %.lr.ph.i77.i.i
  %.065.i.i.i = phi i64 [ 0, %.lr.ph.i77.i.i ], [ %i.ajf, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ]
  %.264.i.i.i = phi i64 [ %.03170.i.i.i, %.lr.ph.i77.i.i ], [ %i.ajg, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 5 uses
  %i.aiq = add nsw i64 %.264.i.i.i, %i.ail        ; 2 uses
  %i.air = lshr i64 %i.aiq, 3
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.air
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !45, !noalias !319
  %i.aiu = trunc i64 %i.aiq to i8
  %i.aiv = and i8 %i.aiu, 7
  %i.aiw = lshr i8 %i.ait, %i.aiv
  %i.aix = trunc i8 %i.aiw to i1
  %i.aiy = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.264.i.i.i ; 2 uses
  br i1 %i.aix, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !3, !noalias !319
  %i.aja = icmp sgt i32 %i.aiz, 0
  br i1 %i.aja, label %bb.ke, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %.264.i.i.i
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !3, !noalias !319
  %i.ajd = add i32 %i.ajc, %i.acr
  %i.aje = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %.264.i.i.i
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.kf:                                            ; preds = %bb.kc
  store i32 0, ptr %i.aiy, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i: ; preds = %bb.kf, %bb.ke, %bb.kd
  %i.ajf = add nuw nsw i64 %.065.i.i.i, 1         ; 2 uses
  %i.ajg = add nsw i64 %.264.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ajf, %i.aij
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %bb.kc, !llvm.loop !337

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1
  %lcmp.mod1192.not = trunc i16 %.sroa.0.0.extract.trunc.i36.i.i to i1
  br i1 %lcmp.mod1192.not, label %.lr.ph68.i.i.i.epil.preheader, label %.loopexit.i.i.i

.lr.ph68.i.i.i.epil.preheader:                    ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph68.i.i.i.preheader
  %.166.i.i.i.epil.init = phi i64 [ %.03170.i.i.i, %.lr.ph68.i.i.i.preheader ], [ %i.aih, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1194 = trunc i16 %.sroa.0.0.extract.trunc.i36.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1194)
  %i.ajh = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %.166.i.i.i.epil.init
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !3, !noalias !319
  %i.ajj = icmp sgt i32 %i.aji, 0
  br i1 %i.ajj, label %bb.kg, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

bb.kg:                                            ; preds = %.lr.ph68.i.i.i.epil.preheader
  %i.ajk = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %.166.i.i.i.epil.init
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !3, !noalias !319
  %i.ajm = add i32 %i.ajl, %i.acr
  %i.ajn = getelementptr inbounds [4 x i8], ptr %i.acy, i64 %.166.i.i.i.epil.init
  store i32 %i.ajm, ptr %i.ajn, align 4, !tbaa !3, !noalias !319
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil: ; preds = %bb.kg, %.lr.ph68.i.i.i.epil.preheader
  %i.ajo = add nsw i64 %.166.i.i.i.epil.init, 1
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.kb, %.preheader62.i.i.i, %.preheader.i.i.i
  %.3.i.i.i = phi i64 [ %i.ajo, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil ], [ %i.aip, %bb.kb ], [ %.03170.i.i.i, %.preheader.i.i.i ], [ %.03170.i.i.i, %.preheader62.i.i.i ], [ %i.aih, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.ajg, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 2 uses
  %i.ajp = load i64, ptr %i.aeu, align 8, !tbaa !119, !noalias !319
  %i.ajq = icmp slt i64 %.3.i.i.i, %i.ajp
  br i1 %i.ajq, label %.lr.ph71.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !338

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.us.i, %.loopexit.i.i.i, %.noexc82.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20, !noalias !322
  br label %.thread.thread.i.i

bb.kh:                                            ; preds = %bb.jh, %bb.jg, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20, !noalias !322
  %.val69.pr.i.i = load ptr, ptr %86, align 8, !tbaa !51, !noalias !307
  %i.ajr = icmp eq ptr %.val69.pr.i.i, null
  br i1 %i.ajr, label %.thread.i.i, label %.critedge.i.i, !prof !340

.critedge.i.i:                                    ; preds = %bb.kh
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %103, ptr noundef nonnull align 8 dereferenceable(8) %86) #20, !inline_history !225
  %i.ajs = load ptr, ptr %86, align 8, !tbaa !51, !noalias !307 ; 2 uses
  %.not.i.i.i156.i = icmp eq ptr %i.ajs, null
  br i1 %.not.i.i.i156.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, label %bb.ki, !prof !54

bb.ki:                                            ; preds = %.critedge.i.i
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 1
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !55, !range !65, !noundef !66
  %i.ajv = trunc nuw i8 %i.aju to i1
  br i1 %i.ajv, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %86) #20, !inline_history !225
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i: ; preds = %bb.kj, %bb.ki, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !307
  br label %bb.kl

bb.kk:                                            ; preds = %bb.jk, %bb.je, %bb.jc, %.invoke.i.i
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

.thread.i.i:                                      ; preds = %bb.kh
  %.val70.pre.i.i = load i32, ptr %i.ace, align 8, !tbaa !45, !noalias !307 ; 2 uses
  %.not.i157.i = icmp eq i32 %.val70.pre.i.i, 0
  br i1 %.not.i157.i, label %.thread.thread.i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, !prof !340

.thread.thread.i.i:                               ; preds = %.thread.i.i, %._crit_edge.i.i.i, %bb.ix
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !159, !noalias !303
  %i.ajz = add nsw i64 %i.ajy, %.0478.i.i         ; 2 uses
  %i.aka = icmp sgt i64 %i.ajz, 2147483647
  br i1 %i.aka, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i: ; preds = %.thread.thread.i.i
  %i.akb = load ptr, ptr %i.acw, align 8, !tbaa !164, !noalias !303
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 24
  %i.akd = load i64, ptr %i.akc, align 8, !tbaa !306, !noalias !303
  %i.ake = lshr i64 %i.akd, 2
  %i.akf = add i64 %i.ake, %.0449.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !307
  %i.akg = add nuw i64 %.04310.i.i, 1             ; 2 uses
  %exitcond640.not = icmp eq i64 %i.akg, %i.aci
  br i1 %exitcond640.not, label %.critedge62.i.i, label %bb.ix, !llvm.loop !341

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i: ; preds = %.thread.thread.i.i, %.thread.i.i
  %.val70.pre.lcssa.sink.i.i = phi i32 [ %.val70.pre.i.i, %.thread.i.i ], [ 1, %.thread.thread.i.i ]
  store ptr null, ptr %103, align 8, !tbaa !51, !alias.scope !303, !noalias !222
  %i.akh = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 %.val70.pre.lcssa.sink.i.i, ptr %i.akh, align 8, !tbaa !45, !alias.scope !303, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20, !noalias !307
  br label %bb.kl

.critedge62.i.i:                                  ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i
  store ptr null, ptr %103, align 8, !tbaa !51, !alias.scope !303, !noalias !222
  %i.aki = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 0, ptr %i.aki, align 8, !tbaa !45, !alias.scope !303, !noalias !222
  br label %bb.kl

bb.kl:                                            ; preds = %.critedge62.i.i, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i, %bb.in
  %i.akj = load ptr, ptr %84, align 8, !tbaa !51, !noalias !307 ; 2 uses
  %i.akk = icmp eq ptr %i.akj, null
  br i1 %i.akk, label %bb.km, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !54

bb.km:                                            ; preds = %bb.kl
  %i.akl = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !314, !noalias !307 ; 3 uses
  %.not.i.i.i.i95.i.i = icmp eq ptr %i.akm, null
  br i1 %.not.i.i.i.i95.i.i, label %bb.kp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.km
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !42
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  %i.akp = load ptr, ptr %i.ako, align 8
  call void %i.akp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.akm) #20, !inline_history !342
  %.pr.pre.i.i.i = load ptr, ptr %84, align 8, !tbaa !51, !noalias !307 ; 2 uses
  %.not.i.i96.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i96.i.i, label %bb.kp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !294

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.kl
  %i.akq = phi ptr [ %.pr.pre.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i ], [ %i.akj, %bb.kl ]
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 1
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !55, !range !65, !noundef !66
  %i.akt = trunc nuw i8 %i.aks to i1
  br i1 %i.akt, label %bb.kp, label %bb.kn

bb.kn:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %84) #20, !inline_history !225
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kk, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i
  %.pn56.pn.pn.i.i = phi { ptr, i32 } [ %i.ajw, %bb.kk ], [ %i.acj, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %84) #20, !noalias !303, !inline_history !225
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20, !noalias !307
  br label %.body159.i

bb.kp:                                            ; preds = %bb.kn, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20, !noalias !307
  %.val.i77 = load ptr, ptr %103, align 8, !tbaa !51, !noalias !222
  %i.aku = icmp eq ptr %.val.i77, null
  br i1 %i.aku, label %bb.kt, label %bb.kq, !prof !54

bb.kq:                                            ; preds = %bb.kp
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !222
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %_ZN5arrow6StatusC2ERKS0_.exit162.i unwind label %bb.ks, !inline_history !225

bb.kr:                                            ; preds = %.loopexit.i.i
  %i.akv = landingpad { ptr, i32 }
          cleanup
  br label %.body159.i

bb.ks:                                            ; preds = %bb.kq
  %i.akw = landingpad { ptr, i32 }
          cleanup
  br label %bb.md

bb.kt:                                            ; preds = %bb.kp
  %i.akx = getelementptr inbounds nuw i8, ptr %103, i64 8
  %.val92.i = load i32, ptr %i.akx, align 8, !tbaa !45, !noalias !222
  %cond2.i = icmp eq i32 %.val92.i, 1
  br i1 %cond2.i, label %bb.kv, label %bb.lt

bb.ku:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177.i
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %bb.md

bb.kv:                                            ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #20, !noalias !222
  %i.akz = load ptr, ptr %i.ut, align 8, !tbaa !267, !noalias !222
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !268 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 56
  %i.alc = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 64
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !36 ; 2 uses
  %i.alf = load <2 x ptr>, ptr %i.alb, align 8, !tbaa !91
  store <2 x ptr> %i.alf, ptr %105, align 16, !tbaa !91, !noalias !222
  %.not.i.i.i163.i = icmp eq ptr %i.ale, null
  br i1 %.not.i.i.i163.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 8 ; 3 uses
  %i.alh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !222
  %.not.i.i.i.i164.i = icmp eq i8 %i.alh, 0
  br i1 %.not.i.i.i.i164.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.ali = load i32, ptr %i.alg, align 4, !tbaa !3
  %i.alj = add nsw i32 %i.ali, 1
  store i32 %i.alj, ptr %i.alg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.ky:                                            ; preds = %bb.kw
  %i.alk = atomicrmw volatile add ptr %i.alg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.ky, %bb.kx, %bb.kv
  invoke void @_ZN5arrow15large_list_viewESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %104, ptr noundef nonnull %105)
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.bhc = load i8, ptr %i.bhb, align 1, !tbaa !167, !range !65, !noalias !410, !noundef !66
  %i.bhd = trunc nuw i8 %i.bhc to i1
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %i.bhf = load i8, ptr %i.bhe, align 8, !range !65, !noalias !410
  %i.bhg = trunc nuw i8 %i.bhf to i1
  %i.bhh = select i1 %i.bhd, i1 %i.bhg, i1 false, !prof !54
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bha, i64 16
  %i.bhj = load ptr, ptr %i.bhi, align 8, !noalias !410
  %i.bhk = select i1 %i.bhh, ptr %i.bhj, ptr null, !prof !54
  %i.bhl = load ptr, ptr %i.bei, align 8, !tbaa !113, !noalias !413 ; 5 uses
  %i.bhm = load ptr, ptr %78, align 8, !tbaa !116, !noalias !413 ; 6 uses
  %.not606.not.i.i = icmp eq ptr %i.bhl, %i.bhm
  br i1 %.not606.not.i.i, label %.critedge62.i.i206, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i196
  %i.bhn = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 6 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %58, i64 24 ; 5 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %58, i64 40
  %i.bhs = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.bht = ptrtoint ptr %i.bhl to i64
  %i.bhu = ptrtoint ptr %i.bhm to i64
  %i.bhv = sub i64 %i.bht, %i.bhu
  %i.bhw = ashr exact i64 %i.bhv, 4
  br label %bb.sl

bb.sk:                                            ; preds = %bb.sc
  %i.bhx = landingpad { ptr, i32 }
          cleanup
  %i.bhy = load ptr, ptr %61, align 8, !tbaa !314, !noalias !413 ; 3 uses
  %.not.i73.i.i190 = icmp eq ptr %i.bhy, null
  br i1 %.not.i73.i.i190, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i192, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i191

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i191: ; preds = %bb.sk
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !42, !noalias !410
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 8
  %i.bib = load ptr, ptr %i.bia, align 8, !noalias !410
  call void %i.bib(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bhy) #20, !noalias !410, !inline_history !423
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i192

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i192: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i191, %bb.sk
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #20, !noalias !413
  br label %bb.ub

bb.sl:                                            ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204, %.lr.ph.i.i197
  %.0439.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.bpu, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204 ] ; 4 uses
  %.0448.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.bpq, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204 ] ; 3 uses
  %.0477.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.bpt, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204 ] ; 2 uses
  %i.bic = getelementptr inbounds nuw [16 x i8], ptr %.val92.i166, i64 %.0439.i.i ; 2 uses
  %i.bid = load i64, ptr %i.bic, align 8, !tbaa !157, !noalias !410
  %i.bie = sub nsw i64 %.0477.i.i, %i.bid         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #20, !noalias !413
  %i.bif = load ptr, ptr %i.ben, align 8, !tbaa !67, !noalias !410
  %i.big = getelementptr inbounds nuw [16 x i8], ptr %i.bif, i64 %.0439.i.i
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !75, !noalias !410 ; 5 uses
  %i.bii = getelementptr inbounds [8 x i8], ptr %i.bfc, i64 %.0448.i.i ; 8 uses
  %i.bij = getelementptr inbounds nuw [16 x i8], ptr %i.bhm, i64 %.0439.i.i ; 2 uses
  %i.bik = load ptr, ptr %i.bij, align 8, !tbaa !164, !noalias !410 ; 5 uses
  %i.bil = getelementptr inbounds [8 x i8], ptr %i.bhk, i64 %.0448.i.i ; 7 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bik, i64 24
  %i.bin = load i64, ptr %i.bim, align 8, !tbaa !306, !noalias !424
  %i.bio = icmp eq i64 %i.bin, 0
  br i1 %i.bio, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bih, i64 40
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !116, !noalias !424 ; 2 uses
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !164, !noalias !424 ; 2 uses
  %.not.i76.i.i198 = icmp eq ptr %i.bir, null
  br i1 %.not.i76.i.i198, label %.thread.i.i.i257, label %bb.sn

.thread.i.i.i257:                                 ; preds = %bb.sm
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bik, i64 9
  %i.bit = load i8, ptr %i.bis, align 1, !tbaa !167, !range !65, !noalias !424, !noundef !66
  %i.biu = trunc nuw i8 %i.bit to i1
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bik, i64 16
  %i.biw = load ptr, ptr %i.biv, align 8, !noalias !424
  %i.bix = select i1 %i.biu, ptr %i.biw, ptr null, !prof !54
  br label %bb.sy

bb.sn:                                            ; preds = %bb.sm
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20, !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #20, !noalias !427
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bir, i64 24
  %i.biz = load i64, ptr %i.biy, align 8, !tbaa !306, !noalias !424
  %i.bja = shl nsw i64 %i.biz, 3
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bih, i64 32
  %i.bjc = load i64, ptr %i.bjb, align 8, !tbaa !163, !noalias !424 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bih, i64 16
  %i.bje = load i64, ptr %i.bjd, align 8, !tbaa !119, !noalias !424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !427
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !174, !noalias !428
  %i.bjf = icmp slt i64 %i.bjc, 0
  br i1 %i.bjf, label %.invoke.i.i256, label %bb.so, !prof !46

bb.so:                                            ; preds = %bb.sn
  %i.bjg = icmp slt i64 %i.bje, 0
  br i1 %i.bjg, label %.invoke.i.i256, label %bb.sp, !prof !46

.invoke.i.i256:                                   ; preds = %bb.so, %bb.sn
  %i.bjh = phi ptr [ @.str.25, %bb.sn ], [ @.str.26, %bb.so ]
  invoke void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 1 dereferenceable(10) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) %i.bjh)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i247 unwind label %bb.tx, !noalias !410, !inline_history !355

bb.sp:                                            ; preds = %bb.so
  %i.bji = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bjc, i64 %i.bje) ; 2 uses
  %i.bjj = extractvalue { i64, i1 } %i.bji, 1
  br i1 %i.bjj, label %bb.sq, label %bb.sr, !prof !46

bb.sq:                                            ; preds = %bb.sp
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.27)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i247 unwind label %bb.tx, !noalias !410, !inline_history !355

bb.sr:                                            ; preds = %bb.sp
  %i.bjk = extractvalue { i64, i1 } %i.bji, 0
  %i.bjl = icmp sgt i64 %i.bjk, %i.bja
  br i1 %i.bjl, label %bb.ss, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i199, !prof !46

bb.ss:                                            ; preds = %bb.sr
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.29)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i247 unwind label %bb.tx, !noalias !410, !inline_history !355

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i199:        ; preds = %bb.sr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !427
  br label %bb.sw

_ZN5arrow6StatusD2Ev.exit.i.i.i247:               ; preds = %bb.ss, %bb.sq, %.invoke.i.i256
  %.pr.i.i.i248 = load ptr, ptr %57, align 8, !tbaa !51, !noalias !427 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  store ptr %.pr.i.i.i248, ptr %56, align 8, !tbaa !51, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !427
  %i.bjm = icmp eq ptr %.pr.i.i.i248, null
  br i1 %i.bjm, label %bb.sw, label %bb.st, !prof !326

bb.st:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i247
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %62, ptr noundef nonnull align 8 dereferenceable(8) %56) #20, !noalias !410, !inline_history !355
  %i.bjn = load ptr, ptr %56, align 8, !tbaa !51, !noalias !427 ; 2 uses
  %.not.i34.i.i.i249 = icmp eq ptr %i.bjn, null
  br i1 %.not.i34.i.i.i249, label %bb.tu, label %bb.su, !prof !54

bb.su:                                            ; preds = %bb.st
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 1
  %i.bjp = load i8, ptr %i.bjo, align 1, !tbaa !55, !range !65, !noalias !410, !noundef !66
  %i.bjq = trunc nuw i8 %i.bjp to i1
  br i1 %i.bjq, label %bb.tu, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %56) #20, !noalias !410, !inline_history !355
  br label %bb.tu

bb.sw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i247, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !427
  %.pr60.i.i.i200 = load ptr, ptr %i.biq, align 8, !tbaa !164, !noalias !424 ; 3 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bik, i64 9
  %i.bjs = load i8, ptr %i.bjr, align 1, !tbaa !167, !range !65, !noalias !424, !noundef !66
  %i.bjt = trunc nuw i8 %i.bjs to i1
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bik, i64 16
  %i.bjv = load ptr, ptr %i.bju, align 8, !noalias !424
  %i.bjw = select i1 %i.bjt, ptr %i.bjv, ptr null, !prof !54 ; 2 uses
  %.not61.i.i.i201 = icmp eq ptr %.pr60.i.i.i200, null
  br i1 %.not61.i.i.i201, label %bb.sy, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.bjx = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i200, i64 9
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !167, !range !65, !noalias !424, !noundef !66
  %i.bjz = trunc nuw i8 %i.bjy to i1
  %i.bka = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i200, i64 16
  %i.bkb = load ptr, ptr %i.bka, align 8, !noalias !424
  %i.bkc = select i1 %i.bjz, ptr %i.bkb, ptr null, !prof !54
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %bb.sw, %.thread.i.i.i257
  %i.bkd = phi ptr [ %i.bjw, %bb.sx ], [ %i.bjw, %bb.sw ], [ %i.bix, %.thread.i.i.i257 ] ; 7 uses
  %i.bke = phi ptr [ %i.bkc, %bb.sx ], [ null, %bb.sw ], [ null, %.thread.i.i.i257 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20, !noalias !427
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bih, i64 32 ; 2 uses
  %i.bkg = load i64, ptr %i.bkf, align 8, !tbaa !163, !noalias !424
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bih, i64 16 ; 4 uses
  %i.bki = load i64, ptr %i.bkh, align 8, !tbaa !119, !noalias !424
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef %i.bke, i64 noundef %i.bkg, i64 noundef %i.bki)
          to label %.noexc82.i.i202 unwind label %bb.tx, !noalias !410, !inline_history !355

.noexc82.i.i202:                                  ; preds = %bb.sy
  %i.bkj = load i64, ptr %i.bkh, align 8, !tbaa !119, !noalias !424 ; 2 uses
  %i.bkk = icmp sgt i64 %i.bkj, 0
  br i1 %i.bkk, label %.lr.ph71.i.i.preheader.i207, label %._crit_edge.i.i.i203

.lr.ph71.i.i.preheader.i207:                      ; preds = %.noexc82.i.i202
  %i.bkl = load i8, ptr %58, align 8, !tbaa !327, !range !65, !noalias !413, !noundef !66
  %i.bkm = trunc nuw i8 %i.bkl to i1
  br i1 %i.bkm, label %.lr.ph71.i.i.i218, label %.lr.ph71.i.i.us.i208

.lr.ph71.i.i.us.i208:                             ; preds = %.lr.ph71.i.i.preheader.i207, %.loopexit.i.i.us.i212
  %i.bkn = phi i64 [ %i.blu, %.loopexit.i.i.us.i212 ], [ %i.bkj, %.lr.ph71.i.i.preheader.i207 ]
  %.03170.i.i.us.i209 = phi i64 [ %.3.i.i.us.i213, %.loopexit.i.i.us.i212 ], [ 0, %.lr.ph71.i.i.preheader.i207 ] ; 3 uses
  %i.bko = load i64, ptr %i.bhn, align 8, !tbaa !330, !noalias !413
  %i.bkp = load i64, ptr %i.bho, align 8, !tbaa !331, !noalias !413 ; 2 uses
  %i.bkq = sub nsw i64 %i.bko, %i.bkp
  %.sroa.speculated.i.i.us.i210 = call i64 @llvm.smin.i64(i64 %i.bkq, i64 32767) ; 5 uses
  %i.bkr = trunc i64 %.sroa.speculated.i.i.us.i210 to i16
  %sext.i.i.us.i211 = shl i64 %.sroa.speculated.i.i.us.i210, 48 ; 2 uses
  %i.bks = ashr exact i64 %sext.i.i.us.i211, 48   ; 2 uses
  %i.bkt = add nsw i64 %i.bks, %i.bkp
  store i64 %i.bkt, ptr %i.bho, align 8, !tbaa !331, !noalias !413
  %i.bku = icmp sgt i16 %i.bkr, 0
  br i1 %i.bku, label %.lr.ph68.i.i.us.i214.preheader, label %.loopexit.i.i.us.i212

.lr.ph68.i.i.us.i214.preheader:                   ; preds = %.lr.ph71.i.i.us.i208
  %i.bkv = icmp eq i64 %sext.i.i.us.i211, 281474976710656
  br i1 %i.bkv, label %.lr.ph68.i.i.us.i214.epil.preheader, label %.lr.ph68.i.i.us.i214.preheader.new

.lr.ph68.i.i.us.i214.preheader.new:               ; preds = %.lr.ph68.i.i.us.i214.preheader
  %xtraiter1175 = and i64 %.sroa.speculated.i.i.us.i210, 1
  %unroll_iter = sub nsw i64 %i.bks, %xtraiter1175
  br label %.lr.ph68.i.i.us.i214

.lr.ph68.i.i.us.i214:                             ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph68.i.i.us.i214.preheader.new
  %.166.i.i.us.i216 = phi i64 [ %.03170.i.i.us.i209, %.lr.ph68.i.i.us.i214.preheader.new ], [ %i.bll, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph68.i.i.us.i214.preheader.new ], [ %niter.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
  %i.bkw = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %.166.i.i.us.i216
  %i.bkx = load i64, ptr %i.bkw, align 8, !tbaa !175, !noalias !424
  %i.bky = icmp sgt i64 %i.bkx, 0
  br i1 %i.bky, label %bb.sz, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

bb.sz:                                            ; preds = %.lr.ph68.i.i.us.i214
  %i.bkz = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %.166.i.i.us.i216
  %i.bla = load i64, ptr %i.bkz, align 8, !tbaa !175, !noalias !424
  %i.blb = add i64 %i.bla, %i.bie
  %i.blc = getelementptr inbounds [8 x i8], ptr %i.bil, i64 %.166.i.i.us.i216
  store i64 %i.blb, ptr %i.blc, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i: ; preds = %bb.sz, %.lr.ph68.i.i.us.i214
  %i.bld = add nsw i64 %.166.i.i.us.i216, 1       ; 3 uses
  %i.ble = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bld
  %i.blf = load i64, ptr %i.ble, align 8, !tbaa !175, !noalias !424
  %i.blg = icmp sgt i64 %i.blf, 0
  br i1 %i.blg, label %bb.ta, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

bb.ta:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.blh = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %i.bld
  %i.bli = load i64, ptr %i.blh, align 8, !tbaa !175, !noalias !424
  %i.blj = add i64 %i.bli, %i.bie
  %i.blk = getelementptr inbounds [8 x i8], ptr %i.bil, i64 %i.bld
  store i64 %i.blj, ptr %i.blk, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1: ; preds = %bb.ta, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.bll = add nsw i64 %.166.i.i.us.i216, 2       ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.us.loopexit.i.unr-lcssa, label %.lr.ph68.i.i.us.i214, !llvm.loop !431

.loopexit.i.i.us.loopexit.i.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1176.not = trunc nuw i64 %.sroa.speculated.i.i.us.i210 to i1
  br i1 %lcmp.mod1176.not, label %.lr.ph68.i.i.us.i214.epil.preheader, label %.loopexit.i.i.us.loopexit.i

.lr.ph68.i.i.us.i214.epil.preheader:              ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %.lr.ph68.i.i.us.i214.preheader
  %.166.i.i.us.i216.epil.init = phi i64 [ %.03170.i.i.us.i209, %.lr.ph68.i.i.us.i214.preheader ], [ %i.bll, %.loopexit.i.i.us.loopexit.i.unr-lcssa ] ; 4 uses
  %lcmp.mod1178 = trunc nuw i64 %.sroa.speculated.i.i.us.i210 to i1
  call void @llvm.assume(i1 %lcmp.mod1178)
  %i.blm = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %.166.i.i.us.i216.epil.init
  %i.bln = load i64, ptr %i.blm, align 8, !tbaa !175, !noalias !424
  %i.blo = icmp sgt i64 %i.bln, 0
  br i1 %i.blo, label %bb.tb, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

bb.tb:                                            ; preds = %.lr.ph68.i.i.us.i214.epil.preheader
  %i.blp = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %.166.i.i.us.i216.epil.init
  %i.blq = load i64, ptr %i.blp, align 8, !tbaa !175, !noalias !424
  %i.blr = add i64 %i.blq, %i.bie
  %i.bls = getelementptr inbounds [8 x i8], ptr %i.bil, i64 %.166.i.i.us.i216.epil.init
  store i64 %i.blr, ptr %i.bls, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil: ; preds = %bb.tb, %.lr.ph68.i.i.us.i214.epil.preheader
  %i.blt = add nsw i64 %.166.i.i.us.i216.epil.init, 1
  br label %.loopexit.i.i.us.loopexit.i

.loopexit.i.i.us.loopexit.i:                      ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil
  %.lcssa1142 = phi i64 [ %i.bll, %.loopexit.i.i.us.loopexit.i.unr-lcssa ], [ %i.blt, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil ]
  %.pre258.i = load i64, ptr %i.bkh, align 8, !tbaa !119, !noalias !424
  br label %.loopexit.i.i.us.i212

.loopexit.i.i.us.i212:                            ; preds = %.loopexit.i.i.us.loopexit.i, %.lr.ph71.i.i.us.i208
  %i.blu = phi i64 [ %i.bkn, %.lr.ph71.i.i.us.i208 ], [ %.pre258.i, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %.3.i.i.us.i213 = phi i64 [ %.03170.i.i.us.i209, %.lr.ph71.i.i.us.i208 ], [ %.lcssa1142, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %i.blv = icmp slt i64 %.3.i.i.us.i213, %i.blu
  br i1 %i.blv, label %.lr.ph71.i.i.us.i208, label %._crit_edge.i.i.i203, !llvm.loop !432

.lr.ph71.i.i.i218:                                ; preds = %.lr.ph71.i.i.preheader.i207, %.loopexit.i.i.i224
  %.03170.i.i.i219 = phi i64 [ %.3.i.i.i225, %.loopexit.i.i.i224 ], [ 0, %.lr.ph71.i.i.preheader.i207 ] ; 7 uses
  %i.blw = load i8, ptr %58, align 8, !tbaa !327, !range !65, !noalias !413, !noundef !66
  %i.blx = trunc nuw i8 %i.blw to i1
  br i1 %i.blx, label %bb.tc, label %.noexc83.thread.i.i220

bb.tc:                                            ; preds = %.lr.ph71.i.i.i218
  %i.bly = load i64, ptr %i.bhq, align 8, !tbaa !334, !noalias !413 ; 4 uses
  %.not.i.i97.i.i230 = icmp eq i64 %i.bly, 0
  br i1 %.not.i.i97.i.i230, label %.noexc83.i.i234, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.blz = load i64, ptr %i.bhr, align 8, !tbaa !335, !noalias !413 ; 3 uses
  %i.bma = icmp eq i64 %i.blz, 0
  br i1 %i.bma, label %bb.te, label %bb.th

bb.te:                                            ; preds = %bb.td
  %i.bmb = icmp slt i64 %i.bly, 64
  br i1 %i.bmb, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %bb.te
  %i.bmc = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bhp, i64 noundef 64) #20, !noalias !410, !inline_history !355 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i246 = lshr i32 %i.bmc, 16
  br label %bb.tl

bb.tg:                                            ; preds = %bb.te
  %i.bmd = load ptr, ptr %i.bhp, align 8, !tbaa !336, !noalias !413 ; 2 uses
  %i.bme = load i64, ptr %i.bmd, align 1, !noalias !410
  br label %bb.tk

bb.th:                                            ; preds = %bb.td
  %i.bmf = sub nsw i64 128, %i.blz
  %i.bmg = icmp slt i64 %i.bly, %i.bmf
  br i1 %i.bmg, label %bb.ti, label %bb.tj

bb.ti:                                            ; preds = %bb.th
  %i.bmh = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bhp, i64 noundef 64) #20, !noalias !410, !inline_history !355 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i245 = lshr i32 %i.bmh, 16
  br label %bb.tl

bb.tj:                                            ; preds = %bb.th
  %i.bmi = load ptr, ptr %i.bhp, align 8, !tbaa !336, !noalias !413 ; 3 uses
  %i.bmj = load i64, ptr %i.bmi, align 1, !noalias !410
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmi, i64 8
  %i.bml = load i64, ptr %i.bmk, align 1, !noalias !410
  %.0.i.i.i.i147.i = call noundef i64 @llvm.fshr.i64(i64 %i.bml, i64 %i.bmj, i64 %i.blz)
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %bb.tg
  %.0.i.sink.i.i.i.i231 = phi i64 [ %.0.i.i.i.i147.i, %bb.tj ], [ %i.bme, %bb.tg ]
  %i.bmm = phi ptr [ %i.bmi, %bb.tj ], [ %i.bmd, %bb.tg ]
  %i.bmn = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i231)
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmm, i64 8
  store ptr %i.bmo, ptr %i.bhp, align 8, !tbaa !336, !noalias !413
  %i.bmp = add nsw i64 %i.bly, -64
  store i64 %i.bmp, ptr %i.bhq, align 8, !tbaa !334, !noalias !413
  %i.bmq = trunc nuw nsw i64 %i.bmn to i32
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tk, %bb.ti, %bb.tf
  %.sroa.0.0.i.i.i.i232 = phi i32 [ %i.bmc, %bb.tf ], [ 64, %bb.tk ], [ %i.bmh, %bb.ti ]
  %.sroa.5.0.i.i.i.i233 = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i246, %bb.tf ], [ %i.bmq, %bb.tk ], [ %.sroa.5.0.extract.shift2.i.i.i.i245, %bb.ti ]
  %i.bmr = shl nuw i32 %.sroa.5.0.i.i.i.i233, 16
  %i.bms = and i32 %.sroa.0.0.i.i.i.i232, 65535
  %i.bmt = or disjoint i32 %i.bmr, %i.bms
  br label %.noexc83.i.i234

.noexc83.thread.i.i220:                           ; preds = %.lr.ph71.i.i.i218
  %i.bmu = load i64, ptr %i.bhn, align 8, !tbaa !330, !noalias !413
  %i.bmv = load i64, ptr %i.bho, align 8, !tbaa !331, !noalias !413 ; 2 uses
  %i.bmw = sub nsw i64 %i.bmu, %i.bmv
  %.sroa.speculated.i.i.i221 = call i64 @llvm.smin.i64(i64 %i.bmw, i64 32767) ; 2 uses
  %i.bmx = trunc i64 %.sroa.speculated.i.i.i221 to i16
  %sext.i.i.i222 = shl i64 %.sroa.speculated.i.i.i221, 48
  %i.bmy = ashr exact i64 %sext.i.i.i222, 48
  %i.bmz = add nsw i64 %i.bmy, %i.bmv
  store i64 %i.bmz, ptr %i.bho, align 8, !tbaa !331, !noalias !413
  br label %.preheader.i.i.i223

.noexc83.i.i234:                                  ; preds = %bb.tl, %bb.tc
  %.sroa.0.0.insert.insert.i.i.i.i235 = phi i32 [ %i.bmt, %bb.tl ], [ 0, %bb.tc ] ; 4 uses
  %.sroa.0.0.extract.trunc.i98.i.i236 = zext i32 %.sroa.0.0.insert.insert.i.i.i.i235 to i64
  %.sroa.4.0.extract.shift.i.i.i237 = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i235, 16 ; 2 uses
  %sext4.i.i.i238 = shl i64 %.sroa.0.0.extract.trunc.i98.i.i236, 48
  %i.bna = ashr exact i64 %sext4.i.i.i238, 48
  %i.bnb = load i64, ptr %i.bho, align 8, !tbaa !331, !noalias !413
  %i.bnc = add nsw i64 %i.bna, %i.bnb
  store i64 %i.bnc, ptr %i.bho, align 8, !tbaa !331, !noalias !413
  %.pre.i.i148.i = and i32 %.sroa.0.0.insert.insert.i.i.i.i235, 65535
  %.sroa.0.0.extract.trunc.i.i.i239 = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i235 to i16 ; 4 uses
  %i.bnd = icmp eq i32 %.pre.i.i148.i, %.sroa.4.0.extract.shift.i.i.i237
  br i1 %i.bnd, label %.preheader.i.i.i223, label %bb.to

.preheader.i.i.i223:                              ; preds = %.noexc83.i.i234, %.noexc83.thread.i.i220
  %.sroa.0.0.extract.trunc.i33.i.i = phi i16 [ %i.bmx, %.noexc83.thread.i.i220 ], [ %.sroa.0.0.extract.trunc.i.i.i239, %.noexc83.i.i234 ] ; 5 uses
  %i.bne = icmp sgt i16 %.sroa.0.0.extract.trunc.i33.i.i, 0
  br i1 %i.bne, label %.lr.ph68.i.i.i226.preheader, label %.loopexit.i.i.i224

.lr.ph68.i.i.i226.preheader:                      ; preds = %.preheader.i.i.i223
  %i.bnf = icmp eq i16 %.sroa.0.0.extract.trunc.i33.i.i, 1
  br i1 %i.bnf, label %.lr.ph68.i.i.i226.epil.preheader, label %.lr.ph68.i.i.i226.preheader.new

.lr.ph68.i.i.i226.preheader.new:                  ; preds = %.lr.ph68.i.i.i226.preheader
  %i.bng = and i16 %.sroa.0.0.extract.trunc.i33.i.i, 32766
  %unroll_iter1183 = zext nneg i16 %i.bng to i64
  br label %.lr.ph68.i.i.i226

.lr.ph68.i.i.i226:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph68.i.i.i226.preheader.new
  %.166.i.i.i228 = phi i64 [ %.03170.i.i.i219, %.lr.ph68.i.i.i226.preheader.new ], [ %i.bnw, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1184 = phi i64 [ 0, %.lr.ph68.i.i.i226.preheader.new ], [ %niter1184.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.bnh = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %.166.i.i.i228
  %i.bni = load i64, ptr %i.bnh, align 8, !tbaa !175, !noalias !424
  %i.bnj = icmp sgt i64 %i.bni, 0
  br i1 %i.bnj, label %bb.tm, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.tm:                                            ; preds = %.lr.ph68.i.i.i226
  %i.bnk = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %.166.i.i.i228
  %i.bnl = load i64, ptr %i.bnk, align 8, !tbaa !175, !noalias !424
  %i.bnm = add i64 %i.bnl, %i.bie
  %i.bnn = getelementptr inbounds [8 x i8], ptr %i.bil, i64 %.166.i.i.i228
  store i64 %i.bnm, ptr %i.bnn, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.tm, %.lr.ph68.i.i.i226
  %i.bno = add nsw i64 %.166.i.i.i228, 1          ; 3 uses
  %i.bnp = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bno
  %i.bnq = load i64, ptr %i.bnp, align 8, !tbaa !175, !noalias !424
  %i.bnr = icmp sgt i64 %i.bnq, 0
  br i1 %i.bnr, label %bb.tn, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.tn:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.bns = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %i.bno
  %i.bnt = load i64, ptr %i.bns, align 8, !tbaa !175, !noalias !424
  %i.bnu = add i64 %i.bnt, %i.bie
  %i.bnv = getelementptr inbounds [8 x i8], ptr %i.bil, i64 %i.bno
  store i64 %i.bnu, ptr %i.bnv, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.tn, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.bnw = add nsw i64 %.166.i.i.i228, 2          ; 3 uses
  %niter1184.next.1 = add i64 %niter1184, 2       ; 2 uses
  %niter1184.ncmp.1 = icmp eq i64 %niter1184.next.1, %unroll_iter1183
  br i1 %niter1184.ncmp.1, label %.loopexit.i.i.i224.loopexit.unr-lcssa, label %.lr.ph68.i.i.i226, !llvm.loop !431

bb.to:                                            ; preds = %.noexc83.i.i234
  %i.bnx = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i237, 0
  br i1 %i.bnx, label %bb.tp, label %.preheader62.i.i.i240

.preheader62.i.i.i240:                            ; preds = %bb.to
  %i.bny = sext i16 %.sroa.0.0.extract.trunc.i.i.i239 to i64
  %i.bnz = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i239, 0
  br i1 %i.bnz, label %.lr.ph.i77.i.i241, label %.loopexit.i.i.i224

bb.tp:                                            ; preds = %bb.to
  %i.boa = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %.03170.i.i.i219
  %i.bob = sext i16 %.sroa.0.0.extract.trunc.i.i.i239 to i64 ; 2 uses
  %i.boc = shl nsw i64 %i.bob, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.boa, i8 0, i64 %i.boc, i1 false), !noalias !424
  %i.bod = add nsw i64 %.03170.i.i.i219, %i.bob
  br label %.loopexit.i.i.i224

.lr.ph.i77.i.i241:                                ; preds = %.preheader62.i.i.i240, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i
  %.065.i.i.i242 = phi i64 [ %i.bou, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ], [ 0, %.preheader62.i.i.i240 ]
  %.264.i.i.i243 = phi i64 [ %i.bov, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ], [ %.03170.i.i.i219, %.preheader62.i.i.i240 ] ; 5 uses
  %i.boe = load i64, ptr %i.bkf, align 8, !tbaa !163, !noalias !424
  %i.bof = add nsw i64 %i.boe, %.264.i.i.i243     ; 2 uses
  %i.bog = lshr i64 %i.bof, 3
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bke, i64 %i.bog
  %i.boi = load i8, ptr %i.boh, align 1, !tbaa !45, !noalias !424
  %i.boj = trunc i64 %i.bof to i8
  %i.bok = and i8 %i.boj, 7
  %i.bol = lshr i8 %i.boi, %i.bok
  %i.bom = trunc i8 %i.bol to i1
  %i.bon = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %.264.i.i.i243 ; 2 uses
  br i1 %i.bom, label %bb.tq, label %bb.ts

bb.tq:                                            ; preds = %.lr.ph.i77.i.i241
  %i.boo = load i64, ptr %i.bon, align 8, !tbaa !175, !noalias !424
  %i.bop = icmp sgt i64 %i.boo, 0
  br i1 %i.bop, label %bb.tr, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.tr:                                            ; preds = %bb.tq
  %i.boq = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %.264.i.i.i243
  %i.bor = load i64, ptr %i.boq, align 8, !tbaa !175, !noalias !424
  %i.bos = add i64 %i.bor, %i.bie
  %i.bot = getelementptr inbounds [8 x i8], ptr %i.bil, i64 %.264.i.i.i243
  store i64 %i.bos, ptr %i.bot, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.ts:                                            ; preds = %.lr.ph.i77.i.i241
  store i64 0, ptr %i.bon, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i: ; preds = %bb.ts, %bb.tr, %bb.tq
  %i.bou = add nuw nsw i64 %.065.i.i.i242, 1      ; 2 uses
  %i.bov = add nsw i64 %.264.i.i.i243, 1          ; 2 uses
  %exitcond.not.i.i.i244 = icmp eq i64 %i.bou, %i.bny
  br i1 %exitcond.not.i.i.i244, label %.loopexit.i.i.i224, label %.lr.ph.i77.i.i241, !llvm.loop !433

.loopexit.i.i.i224.loopexit.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1
  %lcmp.mod1180.not = trunc i16 %.sroa.0.0.extract.trunc.i33.i.i to i1
  br i1 %lcmp.mod1180.not, label %.lr.ph68.i.i.i226.epil.preheader, label %.loopexit.i.i.i224

.lr.ph68.i.i.i226.epil.preheader:                 ; preds = %.loopexit.i.i.i224.loopexit.unr-lcssa, %.lr.ph68.i.i.i226.preheader
  %.166.i.i.i228.epil.init = phi i64 [ %.03170.i.i.i219, %.lr.ph68.i.i.i226.preheader ], [ %i.bnw, %.loopexit.i.i.i224.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1182 = trunc i16 %.sroa.0.0.extract.trunc.i33.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1182)
  %i.bow = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %.166.i.i.i228.epil.init
  %i.box = load i64, ptr %i.bow, align 8, !tbaa !175, !noalias !424
  %i.boy = icmp sgt i64 %i.box, 0
  br i1 %i.boy, label %bb.tt, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

bb.tt:                                            ; preds = %.lr.ph68.i.i.i226.epil.preheader
  %i.boz = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %.166.i.i.i228.epil.init
  %i.bpa = load i64, ptr %i.boz, align 8, !tbaa !175, !noalias !424
  %i.bpb = add i64 %i.bpa, %i.bie
  %i.bpc = getelementptr inbounds [8 x i8], ptr %i.bil, i64 %.166.i.i.i228.epil.init
  store i64 %i.bpb, ptr %i.bpc, align 8, !tbaa !175, !noalias !424
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil: ; preds = %bb.tt, %.lr.ph68.i.i.i226.epil.preheader
  %i.bpd = add nsw i64 %.166.i.i.i228.epil.init, 1
  br label %.loopexit.i.i.i224

.loopexit.i.i.i224:                               ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil, %.loopexit.i.i.i224.loopexit.unr-lcssa, %bb.tp, %.preheader62.i.i.i240, %.preheader.i.i.i223
  %.3.i.i.i225 = phi i64 [ %i.bpd, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.epil ], [ %i.bod, %bb.tp ], [ %.03170.i.i.i219, %.preheader.i.i.i223 ], [ %.03170.i.i.i219, %.preheader62.i.i.i240 ], [ %i.bnw, %.loopexit.i.i.i224.loopexit.unr-lcssa ], [ %i.bov, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ] ; 2 uses
  %i.bpe = load i64, ptr %i.bkh, align 8, !tbaa !119, !noalias !424
  %i.bpf = icmp slt i64 %.3.i.i.i225, %i.bpe
  br i1 %i.bpf, label %.lr.ph71.i.i.i218, label %._crit_edge.i.i.i203, !llvm.loop !434

._crit_edge.i.i.i203:                             ; preds = %.loopexit.i.i.us.i212, %.loopexit.i.i.i224, %.noexc82.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20, !noalias !427
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204

bb.tu:                                            ; preds = %bb.sv, %bb.su, %bb.st
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !427
  %.val69.pr.i.i250 = load ptr, ptr %62, align 8, !tbaa !51, !noalias !413
  %i.bpg = icmp eq ptr %.val69.pr.i.i250, null
  br i1 %i.bpg, label %.thread.i.i253, label %.critedge.i.i251, !prof !340

.critedge.i.i251:                                 ; preds = %bb.tu
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %79, ptr noundef nonnull align 8 dereferenceable(8) %62) #20, !inline_history !355
  %i.bph = load ptr, ptr %62, align 8, !tbaa !51, !noalias !413 ; 2 uses
  %.not.i.i.i149.i = icmp eq ptr %i.bph, null
  br i1 %.not.i.i.i149.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i252, label %bb.tv, !prof !54

bb.tv:                                            ; preds = %.critedge.i.i251
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 1
  %i.bpj = load i8, ptr %i.bpi, align 1, !tbaa !55, !range !65, !noundef !66
  %i.bpk = trunc nuw i8 %i.bpj to i1
  br i1 %i.bpk, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i252, label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %62) #20, !inline_history !355
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i252

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i252: ; preds = %bb.tw, %bb.tv, %.critedge.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !413
  br label %bb.ty

bb.tx:                                            ; preds = %bb.sy, %bb.ss, %bb.sq, %.invoke.i.i256
  %i.bpl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ub

.thread.i.i253:                                   ; preds = %bb.tu
  %.val70.pre.i.i254 = load i32, ptr %i.bhs, align 8, !tbaa !45, !noalias !413 ; 2 uses
  %.not.i150.i = icmp eq i32 %.val70.pre.i.i254, 0
  br i1 %.not.i150.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i255, !prof !340

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204: ; preds = %.thread.i.i253, %._crit_edge.i.i.i203, %bb.sl
  %i.bpm = load ptr, ptr %i.bij, align 8, !tbaa !164, !noalias !410
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 24
  %i.bpo = load i64, ptr %i.bpn, align 8, !tbaa !306, !noalias !410
  %i.bpp = lshr i64 %i.bpo, 3
  %i.bpq = add i64 %i.bpp, %.0448.i.i
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bic, i64 8
  %i.bps = load i64, ptr %i.bpr, align 8, !tbaa !159, !noalias !410
  %i.bpt = add nsw i64 %i.bps, %.0477.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !413
  %i.bpu = add nuw i64 %.0439.i.i, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bpu, %i.bhw
  br i1 %exitcond.not, label %.critedge62.i.i206, label %bb.sl, !llvm.loop !435

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i255: ; preds = %.thread.i.i253
  store ptr null, ptr %79, align 8, !tbaa !51, !alias.scope !410, !noalias !352
  %i.bpv = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i32 %.val70.pre.i.i254, ptr %i.bpv, align 8, !tbaa !45, !alias.scope !410, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20, !noalias !413
  br label %bb.ty

.critedge62.i.i206:                               ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i204, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i196
  store ptr null, ptr %79, align 8, !tbaa !51, !alias.scope !410, !noalias !352
  %i.bpw = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i32 0, ptr %i.bpw, align 8, !tbaa !45, !alias.scope !410, !noalias !352
  br label %bb.ty

bb.ty:                                            ; preds = %.critedge62.i.i206, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i255, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i252, %bb.sb
  %i.bpx = phi ptr [ %i.bhl, %.critedge62.i.i206 ], [ %i.bhl, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i255 ], [ %i.bhl, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i252 ], [ %i.bem, %bb.sb ] ; 2 uses
  %i.bpy = phi ptr [ %i.bhm, %.critedge62.i.i206 ], [ %i.bhm, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit93.i.i255 ], [ %i.bhm, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i.i252 ], [ %i.beh, %bb.sb ] ; 3 uses
  %i.bpz = load ptr, ptr %60, align 8, !tbaa !51, !noalias !413 ; 2 uses
  %i.bqa = icmp eq ptr %i.bpz, null
  br i1 %i.bqa, label %bb.tz, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172, !prof !54

bb.tz:                                            ; preds = %bb.ty
  %i.bqb = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !314, !noalias !413 ; 3 uses
  %.not.i.i.i.i95.i.i186 = icmp eq ptr %i.bqc, null
  br i1 %.not.i.i.i.i95.i.i186, label %bb.uc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187: ; preds = %bb.tz
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !42
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 8
  %i.bqf = load ptr, ptr %i.bqe, align 8
  call void %i.bqf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqc) #20, !inline_history !436
  %.pr.pre.i.i.i188 = load ptr, ptr %60, align 8, !tbaa !51, !noalias !413 ; 2 uses
  %.not.i.i96.i.i189 = icmp eq ptr %.pr.pre.i.i.i188, null
  br i1 %.not.i.i96.i.i189, label %bb.uc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172, !prof !294

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187, %bb.ty
  %i.bqg = phi ptr [ %.pr.pre.i.i.i188, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187 ], [ %i.bpz, %bb.ty ]
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqg, i64 1
  %i.bqi = load i8, ptr %i.bqh, align 1, !tbaa !55, !range !65, !noundef !66
  %i.bqj = trunc nuw i8 %i.bqi to i1
  br i1 %i.bqj, label %bb.uc, label %bb.ua

bb.ua:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %60) #20, !inline_history !355
  br label %bb.uc

bb.ub:                                            ; preds = %bb.tx, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i192
  %.pn56.pn.pn.i.i193 = phi { ptr, i32 } [ %i.bpl, %bb.tx ], [ %i.bhx, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i192 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %60) #20, !noalias !410, !inline_history !355
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !413
  br label %.body152.i

bb.uc:                                            ; preds = %bb.ua, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i172, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i187, %bb.tz
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !413
  %.val.i173 = load ptr, ptr %79, align 8, !tbaa !51, !noalias !352
  %i.bqk = icmp eq ptr %.val.i173, null
  br i1 %i.bqk, label %bb.ug, label %bb.ud, !prof !54

bb.ud:                                            ; preds = %bb.uc
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !352
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %79)
          to label %_ZN5arrow6StatusC2ERKS0_.exit155.i unwind label %bb.uf, !inline_history !355

bb.ue:                                            ; preds = %.loopexit.i.i169
  %i.bql = landingpad { ptr, i32 }
          cleanup
  br label %.body152.i

bb.uf:                                            ; preds = %bb.ud
  %i.bqm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

bb.ug:                                            ; preds = %bb.uc
  %i.bqn = getelementptr inbounds nuw i8, ptr %79, i64 8
  %.val85.i = load i32, ptr %i.bqn, align 8, !tbaa !45, !noalias !352
  %cond2.i185 = icmp eq i32 %.val85.i, 1
  br i1 %cond2.i185, label %bb.ui, label %bb.uj

bb.uh:                                            ; preds = %bb.ui
  %i.bqo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

bb.ui:                                            ; preds = %bb.ug
  invoke void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %117, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(43) @.str.21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit155.i unwind label %bb.uh, !inline_history !355

bb.uj:                                            ; preds = %bb.ug
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !437
  br label %_ZN5arrow6StatusC2ERKS0_.exit155.i

_ZN5arrow6StatusC2ERKS0_.exit155.i:               ; preds = %bb.uj, %bb.ui, %bb.ud
  %i.bqp = load ptr, ptr %79, align 8, !tbaa !51, !noalias !352 ; 2 uses
  %.not.i.i157.i = icmp eq ptr %i.bqp, null
  br i1 %.not.i.i157.i, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174, label %bb.uk, !prof !54

bb.uk:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit155.i
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 1
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !55, !range !65, !noundef !66
  %i.bqs = trunc nuw i8 %i.bqr to i1
  br i1 %i.bqs, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %79) #20, !inline_history !355
  br label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174

_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174: ; preds = %bb.ul, %bb.uk, %_ZN5arrow6StatusC2ERKS0_.exit155.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20, !noalias !352
  %.not4.i.i.i.i175 = icmp eq ptr %i.bpy, %i.bpx
  br i1 %.not4.i.i.i.i175, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i183, label %.lr.ph.i.i.i.i176

.lr.ph.i.i.i.i176:                                ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i181
  %.05.i.i.i.i177 = phi ptr [ %i.brk, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i181 ], [ %i.bpy, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit.i174 ] ; 2 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i177, i64 8
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i.i178 = icmp eq ptr %i.bqu, null
  br i1 %.not.i.i.i.i.i.i.i.i178, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i181, label %bb.um
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14BinaryViewTypeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImpl7BuffersEmi(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1, i32 noundef 16)
  %i.cs = load ptr, ptr %3, align 8, !tbaa !51
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.w, label %bb.u, !prof !54

bb.u:                                             ; preds = %._crit_edge34
  store ptr null, ptr %0, align 8, !tbaa !51
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.w:                                             ; preds = %._crit_edge34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !203, !noalias !791
  store <2 x ptr> %i.cx, ptr %4, align 16, !tbaa !203, !alias.scope !791
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !206, !noalias !791
  store ptr %i.da, ptr %i.cy, align 16, !tbaa !206, !alias.scope !791
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !98
  invoke void @_ZN5arrow18ConcatenateBuffersERKSt6vectorISt10shared_ptrINS_6BufferEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.57") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.dc)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %5, align 8, !tbaa !51
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ab, label %bb.y, !prof !54

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %0, align 8, !tbaa !51
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6StatusC2ERKS0_.exit45 unwind label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.aa:                                            ; preds = %bb.y
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dk = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !91, !noalias !798 ; 3 uses
  %i.dl = extractelement <2 x ptr> %i.dk, i64 0   ; 3 uses
  store ptr null, ptr %i.dj, align 8, !tbaa !36, !noalias !798
  store <2 x ptr> %i.dk, ptr %6, align 16, !tbaa !91, !alias.scope !798
  store ptr null, ptr %i.dh, align 8, !tbaa !164, !noalias !798
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 9
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !167, !range !65, !noundef !66
  %i.do = trunc nuw i8 %i.dn to i1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dq = load i8, ptr %i.dp, align 8, !range !65
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = select i1 %i.do, i1 %i.dr, i1 false, !prof !54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.du = load ptr, ptr %i.dt, align 8            ; 5 uses
  %i.dv = select i1 %i.ds, ptr %i.du, ptr null, !prof !54
  %i.dw = load ptr, ptr %1, align 8, !tbaa !111, !nonnull !66, !align !132 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !67 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !71
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ugt i64 %i.ec, 16
  br i1 %i.ed, label %.lr.ph43.preheader, label %._crit_edge44

.lr.ph43.preheader:                               ; preds = %bb.ab
  %i.ee = load ptr, ptr %i.dx, align 8, !tbaa !75
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !119
  br label %.lr.ph43

._crit_edge44:                                    ; preds = %._crit_edge38, %bb.ab
  %.lcssa28 = phi ptr [ %i.dx, %bb.ab ], [ %i.fg, %._crit_edge38 ]
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !75  ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !116 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !164 ; 3 uses
  %.not.i46 = icmp eq ptr %i.ek, null
  br i1 %.not.i46, label %bb.am, label %bb.af

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge38
  %i.el = phi ptr [ %i.fg, %._crit_edge38 ], [ %i.dx, %.lr.ph43.preheader ] ; 2 uses
  %i.em = phi ptr [ %i.fh, %._crit_edge38 ], [ %i.dw, %.lr.ph43.preheader ]
  %.041 = phi i64 [ %i.fi, %._crit_edge38 ], [ 1, %.lr.ph43.preheader ] ; 2 uses
  %.02540 = phi i64 [ %i.ez, %._crit_edge38 ], [ 0, %.lr.ph43.preheader ]
  %.02239 = phi i64 [ %.1.lcssa, %._crit_edge38 ], [ %i.eg, %.lr.ph43.preheader ] ; 3 uses
  %i.en = getelementptr [16 x i8], ptr %i.el, i64 %.041 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !75 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !113
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !116
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 4
  %i.ey = add i64 %.02540, -2
  %i.ez = add i64 %i.ey, %i.ex                    ; 2 uses
  %i.fa = load ptr, ptr %i.en, align 8, !tbaa !75
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !119 ; 2 uses
  %i.fd = add nsw i64 %i.fc, %.02239
  %i.fe = icmp sgt i64 %i.fc, 0
  br i1 %i.fe, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %.lr.ph43
  %i.ff = trunc i64 %i.ez to i32
  br label %bb.ac

._crit_edge38.loopexit:                           ; preds = %bb.ae
  %.pre = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %.pre50 = load ptr, ptr %.pre, align 8, !tbaa !67
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %.lr.ph43
  %i.fg = phi ptr [ %i.el, %.lr.ph43 ], [ %.pre50, %._crit_edge38.loopexit ] ; 3 uses
  %i.fh = phi ptr [ %i.em, %.lr.ph43 ], [ %.pre, %._crit_edge38.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.02239, %.lr.ph43 ], [ %i.fw, %._crit_edge38.loopexit ]
  %i.fi = add nuw i64 %.041, 1                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !71
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fg to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 4
  %i.fp = icmp ult i64 %i.fi, %i.fo
  br i1 %i.fp, label %.lr.ph43, label %._crit_edge44, !llvm.loop !799

bb.ac:                                            ; preds = %.lr.ph37, %bb.ae
  %.135 = phi i64 [ %.02239, %.lr.ph37 ], [ %i.fw, %bb.ae ] ; 2 uses
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %.135 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !45
  %i.fs = icmp slt i32 %i.fr, 13
  br i1 %i.fs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !45
  %i.fv = add i32 %i.fu, %i.ff
  store i32 %i.fv, ptr %i.ft, align 8, !tbaa !45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.fw = add nsw i64 %.135, 1                    ; 3 uses
  %i.fx = icmp slt i64 %i.fw, %i.fd
  br i1 %i.fx, label %bb.ac, label %._crit_edge38.loopexit, !llvm.loop !800

bb.af:                                            ; preds = %._crit_edge44
  %i.fy = load ptr, ptr %.lcssa28, align 8, !tbaa !75
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !119 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !167, !range !65, !noundef !66
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8            ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !119
  %i.gi = sub nsw i64 %i.gh, %i.ga                ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.gk = load atomic i64, ptr %i.gj seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.gl = icmp ne i64 %i.gk, 0
  %.not25 = and i1 %i.gl, %i.gd
  %i.gm = select i1 %.not25, ptr %i.gf, ptr null
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.gm, i64 noundef %i.ga, i64 noundef %i.gi)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.af
  %i.gn = icmp sgt i64 %i.gi, 0
  br i1 %i.gn, label %.lr.ph20.i, label %.loopexit27

.lr.ph20.i:                                       ; preds = %.noexc, %.loopexit.i
  %.2 = phi i64 [ %.6, %.loopexit.i ], [ %i.ga, %.noexc ] ; 7 uses
  %.02318.i = phi i64 [ %i.if, %.loopexit.i ], [ %i.ga, %.noexc ] ; 4 uses
  %.02417.i = phi i64 [ %i.ie, %.loopexit.i ], [ 0, %.noexc ]
  %i.go = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc47 unwind label %.loopexit ; 4 uses

.noexc47:                                         ; preds = %.lr.ph20.i
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.go to i16 ; 6 uses
  %.sroa.8.0.extract.shift.i = lshr i32 %i.go, 16 ; 2 uses
  %.sroa.8.0.extract.trunc.i = trunc nuw i32 %.sroa.8.0.extract.shift.i to i16
  %i.gp = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.8.0.extract.trunc.i
  br i1 %i.gp, label %.preheader.i, label %bb.ag

.preheader.i:                                     ; preds = %.noexc47
  %i.gq = sext i16 %.sroa.0.0.extract.trunc.i to i64
  %i.gr = call i16 @llvm.smax.i16(i16 %.sroa.0.0.extract.trunc.i, i16 0)
  %i.gs = zext nneg i16 %i.gr to i64
  %spec.select = add i64 %.2, %i.gs
  br label %.loopexit.i

bb.ag:                                            ; preds = %.noexc47
  %i.gt = icmp eq i32 %.sroa.8.0.extract.shift.i, 0
  %i.gu = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 8 uses
  %i.gv = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0 ; 2 uses
  br i1 %i.gt, label %.preheader8.i, label %.preheader10.i

.preheader10.i:                                   ; preds = %bb.ag
  br i1 %i.gv, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader10.i
  %i.gw = icmp eq i16 %.sroa.0.0.extract.trunc.i, 1
  br i1 %i.gw, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.gu, 32766
  br label %.lr.ph.i

.preheader8.i:                                    ; preds = %bb.ag
  br i1 %i.gv, label %.lr.ph14.i.preheader, label %.loopexit.i

.lr.ph14.i.preheader:                             ; preds = %.preheader8.i
  %i.gx = shl i64 %.2, 4
  %scevgep = getelementptr i8, ptr %i.du, i64 %i.gx
  %i.gy = shl nuw nsw i64 %i.gu, 4
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.gy, i1 false)
  %i.gz = add i64 %.2, %i.gu
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.i.preheader.new
  %.4 = phi i64 [ %.2, %.lr.ph.i.preheader.new ], [ %.5.1, %bb.aj ] ; 3 uses
  %.012.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.hu, %bb.aj ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.aj ]
  %i.ha = add nsw i64 %.012.i, %.02318.i          ; 2 uses
  %i.hb = lshr i64 %i.ha, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !45
  %i.he = trunc i64 %i.ha to i8
  %i.hf = and i8 %i.he, 7
  %i.hg = lshr i8 %i.hd, %i.hf
  %i.hh = trunc i8 %i.hg to i1
  br i1 %i.hh, label %.lr.ph.i.1, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i
  %i.hi = getelementptr inbounds [16 x i8], ptr %i.du, i64 %.4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i, %bb.ah
  %i.hj = or disjoint i64 %.012.i, 1
  %i.hk = add nsw i64 %i.hj, %.02318.i            ; 2 uses
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !45
  %i.ho = trunc i64 %i.hk to i8
  %i.hp = and i8 %i.ho, 7
  %i.hq = lshr i8 %i.hn, %i.hp
  %i.hr = trunc i8 %i.hq to i1
  br i1 %i.hr, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.1
  %i.hs = getelementptr [16 x i8], ptr %i.du, i64 %.4
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i8 0, i64 16, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.1
  %.5.1 = add nsw i64 %.4, 2                      ; 3 uses
  %i.hu = add nuw nsw i64 %.012.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !801

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.aj
  %lcmp.mod.not = trunc i32 %i.go to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i.epil.preheader, label %.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.4.epil.init = phi i64 [ %.2, %.lr.ph.i.preheader ], [ %.5.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.hu, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod94 = trunc i32 %i.go to i1
  call void @llvm.assume(i1 %lcmp.mod94)
  %i.hv = add nsw i64 %.012.i.epil.init, %.02318.i ; 2 uses
  %i.hw = lshr i64 %i.hv, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !45
  %i.hz = trunc i64 %i.hv to i8
  %i.ia = and i8 %i.hz, 7
  %i.ib = lshr i8 %i.hy, %i.ia
  %i.ic = trunc i8 %i.ib to i1
  br i1 %i.ic, label %.loopexit.i.loopexit.epilog-lcssa, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.id = getelementptr inbounds [16 x i8], ptr %i.du, i64 %.4.epil.init
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  br label %.loopexit.i.loopexit.epilog-lcssa

.loopexit.i.loopexit.epilog-lcssa:                ; preds = %bb.ak, %.lr.ph.i.epil.preheader
  %.5.epil = add nsw i64 %.4.epil.init, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.epilog-lcssa, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph14.i.preheader, %.preheader.i, %.preheader8.i, %.preheader10.i
  %.6 = phi i64 [ %.2, %.preheader10.i ], [ %spec.select, %.preheader.i ], [ %i.gz, %.lr.ph14.i.preheader ], [ %.2, %.preheader8.i ], [ %.5.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.5.epil, %.loopexit.i.loopexit.epilog-lcssa ]
  %.pre-phi.i = phi i64 [ %i.gu, %.preheader10.i ], [ %i.gq, %.preheader.i ], [ %i.gu, %.lr.ph14.i.preheader ], [ %i.gu, %.preheader8.i ], [ %i.gu, %.loopexit.i.loopexit.unr-lcssa ], [ %i.gu, %.loopexit.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.ie = add nsw i64 %.pre-phi.i, %.02417.i      ; 2 uses
  %i.if = add nsw i64 %.pre-phi.i, %.02318.i
  %i.ig = icmp slt i64 %i.ie, %i.gi
  br i1 %i.ig, label %.lr.ph20.i, label %.loopexit27, !llvm.loop !802

.loopexit27:                                      ; preds = %.loopexit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pre51 = load ptr, ptr %i.a, align 8, !tbaa !75
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre51, i64 40
  %.pre52 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !116
  %i.ih = load <2 x ptr>, ptr %6, align 16, !tbaa !91
  br label %bb.am

.loopexit:                                        ; preds = %.lr.ph20.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bo

bb.am:                                            ; preds = %.loopexit27, %._crit_edge44
  %i.ii = phi ptr [ %.pre52, %.loopexit27 ], [ %i.ej, %._crit_edge44 ] ; 2 uses
  %i.ij = phi <2 x ptr> [ %i.ih, %.loopexit27 ], [ %i.dk, %._crit_edge44 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !36 ; 8 uses
  store <2 x ptr> %i.ij, ptr %i.ik, align 8, !tbaa !91
  %.not.i.i.i.i48 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i48, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.in, align 8, !tbaa !39
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 0, ptr %i.ir, align 4, !tbaa !41
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !42
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #20, !inline_history !717
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !42
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #20, !inline_history !717
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.ap:                                            ; preds = %bb.an
  %i.iy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i49 = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i.i.i49, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i = phi i32 [ %i.iq, %bb.aq ], [ %i.ja, %bb.ar ]
  %i.jb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jb, label %bb.as, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !46

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #20
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.as
  store ptr null, ptr %0, align 8, !tbaa !51, !alias.scope !803
  %i.jc = load ptr, ptr %i.di, align 8, !tbaa !36 ; 8 uses
  %.not.i.i50 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i50, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 4 uses
  %i.je = load atomic i64, ptr %i.jd acquire, align 8 ; 2 uses
  %i.jf = icmp eq i64 %i.je, 4294967297
  %i.jg = trunc i64 %i.je to i32                  ; 2 uses
  br i1 %i.jf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.jd, align 8, !tbaa !39
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  store i32 0, ptr %i.jh, align 4, !tbaa !41
  %i.ji = load ptr, ptr %i.jc, align 8, !tbaa !42
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #20, !inline_history !806
  %i.jl = load ptr, ptr %i.jc, align 8, !tbaa !42
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #20, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.jo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.jo, 0
  br i1 %.not.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jp = add nsw i32 %i.jg, -1
  store i32 %i.jp, ptr %i.jd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.jq = atomicrmw volatile add ptr %i.jd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i = phi i32 [ %i.jg, %bb.aw ], [ %i.jq, %bb.ax ]
  %i.jr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jr, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN5arrow6StatusC2ERKS0_.exit45

_ZN5arrow6StatusC2ERKS0_.exit45:                  ; preds = %bb.y, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.js = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !54

bb.az:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit45
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i51 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i51, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 4 uses
  %i.jx = load atomic i64, ptr %i.jw acquire, align 8 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 4294967297
  %i.jz = trunc i64 %i.jx to i32                  ; 2 uses
  br i1 %i.jy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.jw, align 8, !tbaa !39
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i32 0, ptr %i.ka, align 4, !tbaa !41
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !42
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #20, !inline_history !721
  %i.ke = load ptr, ptr %i.jv, align 8, !tbaa !42
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #20, !inline_history !721
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.kh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
end_hunk_2
