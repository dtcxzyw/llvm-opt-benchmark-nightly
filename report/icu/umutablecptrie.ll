Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/umutablecptrie?download=true
inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
  %i.mn = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.mm) #14 ; 23 uses
  %i.mo = ptrtoaddr ptr %i.mn to i64
  %i.mp = icmp eq ptr %i.mn, null
  br i1 %i.mp, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.mn, ptr noundef nonnull align 16 dereferenceable(512) %i.c, i64 512, i1 false)
  %i.mq = load i32, ptr %5, align 4, !tbaa !119   ; 4 uses
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i, label %.preheader.i65.i.i

.preheader.i65.i.i:                               ; preds = %bb.br
  %i.ms = icmp sgt i32 %i.mq, 0
  br i1 %i.ms, label %.lr.ph.i67.i.i, label %._crit_edge.i66.i.i

.lr.ph.i67.i.i:                                   ; preds = %.preheader.i65.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.mq to i64 ; 2 uses
  %xtraiter401 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.mt = icmp ult i32 %i.mq, 4
  br i1 %i.mt, label %.epil.preheader400, label %.lr.ph.i67.i.i.new

.lr.ph.i67.i.i.new:                               ; preds = %.lr.ph.i67.i.i
  %unroll_iter406 = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.bt

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %bb.bt
  %lcmp.mod403.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod403.not, label %._crit_edge.loopexit.i.i.i, label %.epil.preheader400

.epil.preheader400:                               ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i67.i.i
  %indvars.iv.i68.i.i.epil.init = phi i64 [ 0, %.lr.ph.i67.i.i ], [ %indvars.iv.next.i70.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0815.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i67.i.i ], [ %spec.select13.i.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0914.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i67.i.i ], [ %spec.select.i69.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod405 = icmp ne i64 %xtraiter401, 0
  tail call void @llvm.assume(i1 %lcmp.mod405)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader400
  %indvars.iv.i68.i.i.epil = phi i64 [ %indvars.iv.i68.i.i.epil.init, %.epil.preheader400 ], [ %indvars.iv.next.i70.i.i.epil, %bb.bs ] ; 3 uses
  %.0815.i.i.i.epil = phi i32 [ %.0815.i.i.i.epil.init, %.epil.preheader400 ], [ %spec.select13.i.i.i.epil, %bb.bs ] ; 2 uses
  %.0914.i.i.i.epil = phi i32 [ %.0914.i.i.i.epil.init, %.epil.preheader400 ], [ %spec.select.i69.i.i.epil, %bb.bs ]
  %epil.iter402 = phi i64 [ 0, %.epil.preheader400 ], [ %epil.iter402.next, %bb.bs ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i68.i.i.epil
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !34 ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, %.0815.i.i.i.epil
  %i.mx = trunc nuw nsw i64 %indvars.iv.i68.i.i.epil to i32
  %spec.select.i69.i.i.epil = select i1 %i.mw, i32 %i.mx, i32 %.0914.i.i.i.epil ; 2 uses
  %spec.select13.i.i.i.epil = tail call i32 @llvm.smax.i32(i32 %i.mv, i32 %.0815.i.i.i.epil)
  %indvars.iv.next.i70.i.i.epil = add nuw nsw i64 %indvars.iv.i68.i.i.epil, 1
  %epil.iter402.next = add i64 %epil.iter402, 1   ; 2 uses
  %epil.iter402.cmp.not = icmp eq i64 %epil.iter402.next, %xtraiter401
  br i1 %epil.iter402.cmp.not, label %._crit_edge.loopexit.i.i.i, label %bb.bs, !llvm.loop !78

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.bs, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %spec.select.i69.i.i.lcssa = phi i32 [ %spec.select.i69.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %spec.select.i69.i.i.epil, %bb.bs ]
  %i.my = sext i32 %spec.select.i69.i.i.lcssa to i64
  br label %._crit_edge.i66.i.i

._crit_edge.i66.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i65.i.i
  %.09.lcssa.i.i.i = phi i64 [ -1, %.preheader.i65.i.i ], [ %i.my, %._crit_edge.loopexit.i.i.i ]
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %.09.lcssa.i.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !34
  br label %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i

bb.bt:                                            ; preds = %bb.bt, %.lr.ph.i67.i.i.new
  %indvars.iv.i68.i.i = phi i64 [ 0, %.lr.ph.i67.i.i.new ], [ %indvars.iv.next.i70.i.i.3, %bb.bt ] ; 6 uses
  %.0815.i.i.i = phi i32 [ 0, %.lr.ph.i67.i.i.new ], [ %spec.select13.i.i.i.3, %bb.bt ] ; 2 uses
  %.0914.i.i.i = phi i32 [ -1, %.lr.ph.i67.i.i.new ], [ %spec.select.i69.i.i.3, %bb.bt ]
  %niter407 = phi i64 [ 0, %.lr.ph.i67.i.i.new ], [ %niter407.next.3, %bb.bt ]
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i68.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !34 ; 2 uses
  %i.nd = icmp sgt i32 %i.nc, %.0815.i.i.i
  %i.ne = trunc nuw nsw i64 %indvars.iv.i68.i.i to i32
  %spec.select.i69.i.i = select i1 %i.nd, i32 %i.ne, i32 %.0914.i.i.i
  %spec.select13.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.nc, i32 %.0815.i.i.i) ; 2 uses
  %indvars.iv.next.i70.i.i = or disjoint i64 %indvars.iv.i68.i.i, 1 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.next.i70.i.i
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !34 ; 2 uses
  %i.nh = icmp sgt i32 %i.ng, %spec.select13.i.i.i
  %i.ni = trunc nuw nsw i64 %indvars.iv.next.i70.i.i to i32
  %spec.select.i69.i.i.1 = select i1 %i.nh, i32 %i.ni, i32 %spec.select.i69.i.i
  %spec.select13.i.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ng, i32 %spec.select13.i.i.i) ; 2 uses
  %indvars.iv.next.i70.i.i.1 = or disjoint i64 %indvars.iv.i68.i.i, 2 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.next.i70.i.i.1
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !34 ; 2 uses
  %i.nl = icmp sgt i32 %i.nk, %spec.select13.i.i.i.1
  %i.nm = trunc nuw nsw i64 %indvars.iv.next.i70.i.i.1 to i32
  %spec.select.i69.i.i.2 = select i1 %i.nl, i32 %i.nm, i32 %spec.select.i69.i.i.1
  %spec.select13.i.i.i.2 = tail call i32 @llvm.smax.i32(i32 %i.nk, i32 %spec.select13.i.i.i.1) ; 2 uses
  %indvars.iv.next.i70.i.i.2 = or disjoint i64 %indvars.iv.i68.i.i, 3 ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.next.i70.i.i.2
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !34 ; 2 uses
  %i.np = icmp sgt i32 %i.no, %spec.select13.i.i.i.2
  %i.nq = trunc nuw nsw i64 %indvars.iv.next.i70.i.i.2 to i32
  %spec.select.i69.i.i.3 = select i1 %i.np, i32 %i.nq, i32 %spec.select.i69.i.i.2 ; 3 uses
  %spec.select13.i.i.i.3 = tail call i32 @llvm.smax.i32(i32 %i.no, i32 %spec.select13.i.i.i.2) ; 2 uses
  %indvars.iv.next.i70.i.i.3 = add nuw nsw i64 %indvars.iv.i68.i.i, 4 ; 2 uses
  %niter407.next.3 = add i64 %niter407, 4         ; 2 uses
  %niter407.ncmp.3 = icmp eq i64 %niter407.next.3, %unroll_iter406
  br i1 %niter407.ncmp.3, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %bb.bt, !llvm.loop !79

_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i: ; preds = %._crit_edge.i66.i.i, %bb.br
  %.011.i.i.i = phi i32 [ %i.na, %._crit_edge.i66.i.i ], [ -1, %bb.br ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  %i.nr = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  store i32 0, ptr %i.nr, align 4, !tbaa !34
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store i32 64, ptr %i.ns, align 4, !tbaa !34
  %i.nt = icmp samesign ult i32 %.5136.i.i.i, 4159
  br i1 %i.nt, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 12, ptr %i.nu, align 8, !tbaa !46
  %i.nv = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 4095, ptr %i.nv, align 4, !tbaa !47
  br label %bb.ca

bb.bv:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i
  %i.nw = icmp samesign ult i32 %.5136.i.i.i, 32831
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  br i1 %i.nw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ny = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 15, ptr %i.ny, align 8, !tbaa !46
  store i32 32767, ptr %i.nx, align 4, !tbaa !47
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.nz = icmp samesign ult i32 %.5136.i.i.i, 131135
  %i.oa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.nz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 17, ptr %i.oa, align 8, !tbaa !46
  store i32 131071, ptr %i.nx, align 4, !tbaa !47
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  store i32 21, ptr %i.oa, align 8, !tbaa !46
  store i32 2097151, ptr %i.nx, align 4, !tbaa !47
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bw, %bb.bu
  %.promoted176.i.i = phi i32 [ 4095, %bb.bu ], [ 32767, %bb.bw ], [ 131071, %bb.by ], [ 2097151, %bb.bz ]
  %.promoted.i.i = phi i32 [ 12, %bb.bu ], [ 15, %bb.bw ], [ 17, %bb.by ], [ 21, %bb.bz ]
  %.promoted184.i.i = phi i32 [ 6007, %bb.bu ], [ 50021, %bb.bw ], [ 200003, %bb.by ], [ 1500007, %bb.bz ] ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  invoke void @uprv_free_78(ptr noundef null)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.ca
  %i.oc = shl nuw nsw i32 %.promoted184.i.i, 2
  %i.od = zext nneg i32 %i.oc to i64              ; 2 uses
  %i.oe = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.od) #14
          to label %.noexc86.i.i unwind label %.loopexit.split-lp.i.i ; 5 uses

.noexc86.i.i:                                     ; preds = %.noexc.i.i
  store ptr %i.oe, ptr %6, align 8, !tbaa !48
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i, label %bb.cb

bb.cb:                                            ; preds = %.noexc86.i.i
  store i32 %.promoted184.i.i, ptr %i.ob, align 8, !tbaa !122
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  store i32 %.promoted184.i.i, ptr %i.og, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.oe, i8 0, i64 %i.od, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 64, ptr %i.oh, align 8, !tbaa !50
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mn, i32 noundef 0, i32 noundef 128)
  %i.oi = load i32, ptr %i.cp, align 8, !tbaa !29
  %i.oj = ashr i32 %i.oi, 4                       ; 2 uses
  %.not201.i.i.i = icmp sgt i32 %i.oj, 8
  br i1 %.not201.i.i.i, label %.lr.ph209.i.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

.lr.ph209.i.i.i:                                  ; preds = %bb.cb
  %i.ok = icmp samesign ult i32 %.5136.i.i.i, 4111 ; 3 uses
  %i.ol = icmp samesign ult i32 %.5136.i.i.i, 32783 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.on = icmp samesign ult i32 %.5136.i.i.i, 131087 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.op = zext nneg i32 %i.co to i64
  %.mux.i.i.i = select i1 %i.ok, i32 12, i32 15
  %.mux315.i.i.i = select i1 %i.ok, i32 4095, i32 32767
  %.mux316.i.i.i = select i1 %i.ok, i32 6007, i32 50021
  %..i.i.i = select i1 %i.on, i32 17, i32 21
  %.313.i.i.i = select i1 %i.on, i32 131071, i32 2097151
  %.314.i.i.i = select i1 %i.on, i32 200003, i32 1500007
  %.sink312.i.i.i = select i1 %i.ol, i32 %.mux.i.i.i, i32 %..i.i.i ; 2 uses
  %.sink.i.i.i = select i1 %i.ol, i32 %.mux315.i.i.i, i32 %.313.i.i.i ; 2 uses
  %.0.i118.i.i.i = select i1 %i.ol, i32 %.mux316.i.i.i, i32 %.314.i.i.i ; 6 uses
  %.pre13.i121.i.i.i = shl nuw nsw i32 %.0.i118.i.i.i, 2
  %.pre14.i122.i.i.i = zext nneg i32 %.pre13.i121.i.i.i to i64 ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cw, %.lr.ph209.i.i.i
  %i.oq = phi i32 [ 64, %.lr.ph209.i.i.i ], [ %i.ox, %bb.cw ]
  %.0.i118.i185.i.i = phi i32 [ %.promoted184.i.i, %.lr.ph209.i.i.i ], [ %.0.i118.i186.i.i, %bb.cw ]
  %i.or = phi ptr [ %i.oe, %.lr.ph209.i.i.i ], [ %i.oy, %bb.cw ] ; 3 uses
  %.0.i118.i182.i.i = phi i32 [ %.promoted184.i.i, %.lr.ph209.i.i.i ], [ %.0.i118.i180.i.i, %bb.cw ] ; 3 uses
  %.sink.i178.i.i = phi i32 [ %.promoted176.i.i, %.lr.ph209.i.i.i ], [ %.sink.i177.i.i, %bb.cw ]
  %.sink312.i175.i.i = phi i32 [ %.promoted.i.i, %.lr.ph209.i.i.i ], [ %.sink312.i174.i.i, %bb.cw ]
  %.0101207.i.i.i = phi i32 [ 8, %.lr.ph209.i.i.i ], [ %i.yc, %bb.cw ] ; 5 uses
  %.0102206.i.i.i = phi i32 [ 0, %.lr.ph209.i.i.i ], [ %.1103.i.i.i, %bb.cw ]
  %.0104205.i.i.i = phi i32 [ 4, %.lr.ph209.i.i.i ], [ %.1105.i.i.i, %bb.cw ]
  %.0107204.i.i.i = phi i32 [ 64, %.lr.ph209.i.i.i ], [ %.1108.i.i.i, %bb.cw ]
  %.1111202.i.i.i = phi i32 [ 128, %.lr.ph209.i.i.i ], [ %.6.i.i.i, %bb.cw ] ; 19 uses
  %i.os = icmp eq i32 %.0101207.i.i.i, %i.co
  br i1 %i.os, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  store i32 %.sink312.i.i.i, ptr %i.oo, align 8, !tbaa !46
  store i32 %.sink.i.i.i, ptr %i.om, align 4, !tbaa !47
  %i.ot = icmp sgt i32 %.0.i118.i.i.i, %.0.i118.i182.i.i
  br i1 %i.ot, label %bb.ce, label %._crit_edge.i120.i.i.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @uprv_free_78(ptr noundef %i.or)
          to label %.noexc87.i.i unwind label %.loopexit.i.i

.noexc87.i.i:                                     ; preds = %bb.ce
  %i.ou = invoke noalias ptr @uprv_malloc_78(i64 noundef %.pre14.i122.i.i.i) #14
          to label %.noexc88.i.i unwind label %.loopexit.i.i ; 3 uses

.noexc88.i.i:                                     ; preds = %.noexc87.i.i
  store ptr %i.ou, ptr %6, align 8, !tbaa !48
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i, label %bb.cf

bb.cf:                                            ; preds = %.noexc88.i.i
  store i32 %.0.i118.i.i.i, ptr %i.ob, align 8, !tbaa !122
  br label %._crit_edge.i120.i.i.i

._crit_edge.i120.i.i.i:                           ; preds = %bb.cf, %bb.cd
  %i.ow = phi ptr [ %i.ou, %bb.cf ], [ %i.or, %bb.cd ] ; 2 uses
  %.0.i118.i181.i.i = phi i32 [ %.0.i118.i.i.i, %bb.cf ], [ %.0.i118.i182.i.i, %bb.cd ]
  store i32 %.0.i118.i.i.i, ptr %i.og, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ow, i8 0, i64 %.pre14.i122.i.i.i, i1 false)
  store i32 16, ptr %i.oh, align 8, !tbaa !50
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mn, i32 noundef 0, i32 noundef %.1111202.i.i.i)
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i120.i.i.i, %bb.cc
  %i.ox = phi i32 [ 16, %._crit_edge.i120.i.i.i ], [ %i.oq, %bb.cc ] ; 6 uses
  %.0.i118.i186.i.i = phi i32 [ %.0.i118.i.i.i, %._crit_edge.i120.i.i.i ], [ %.0.i118.i185.i.i, %bb.cc ] ; 5 uses
  %i.oy = phi ptr [ %i.ow, %._crit_edge.i120.i.i.i ], [ %i.or, %bb.cc ] ; 8 uses
  %.0.i118.i180.i.i = phi i32 [ %.0.i118.i181.i.i, %._crit_edge.i120.i.i.i ], [ %.0.i118.i182.i.i, %bb.cc ]
  %.sink.i177.i.i = phi i32 [ %.sink.i.i.i, %._crit_edge.i120.i.i.i ], [ %.sink.i178.i.i, %bb.cc ] ; 7 uses
  %.sink312.i174.i.i = phi i32 [ %.sink312.i.i.i, %._crit_edge.i120.i.i.i ], [ %.sink312.i175.i.i, %bb.cc ] ; 3 uses
  %.1108.i.i.i = phi i32 [ 16, %._crit_edge.i120.i.i.i ], [ %.0107204.i.i.i, %bb.cc ] ; 9 uses
  %.1105.i.i.i = phi i32 [ 1, %._crit_edge.i120.i.i.i ], [ %.0104205.i.i.i, %bb.cc ] ; 2 uses
  %.1103.i.i.i = phi i32 [ %.1111202.i.i.i, %._crit_edge.i120.i.i.i ], [ %.0102206.i.i.i, %bb.cc ] ; 3 uses
  %i.oz = zext nneg i32 %.0101207.i.i.i to i64    ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !40
  switch i8 %i.pb, label %bb.cv [
    i8 0, label %.lr.ph.i.i.i.preheader.i.i
    i8 1, label %bb.co
  ]

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.cg
  %i.pc = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.oz ; 3 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !34 ; 16 uses
  %i.pf = add nsw i32 %i.ox, -16
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i
  %.061.i.i.i.i.i = phi i32 [ %i.pe, %.lr.ph.i.i.i.preheader.i.i ], [ %i.pv, %.lr.ph.i.i.i.i.i ]
  %niter425 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.i.i ], [ %niter425.next.7, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.pg = mul i32 %.061.i.i.i.i.i, 37
  %i.ph = add i32 %i.pg, %i.pe
  %i.pi = mul i32 %i.ph, 37
  %i.pj = add i32 %i.pi, %i.pe
  %i.pk = mul i32 %i.pj, 37
  %i.pl = add i32 %i.pk, %i.pe
  %i.pm = mul i32 %i.pl, 37
  %i.pn = add i32 %i.pm, %i.pe
  %i.po = mul i32 %i.pn, 37
  %i.pp = add i32 %i.po, %i.pe
  %i.pq = mul i32 %i.pp, 37
  %i.pr = add i32 %i.pq, %i.pe
  %i.ps = mul i32 %i.pr, 37
  %i.pt = add i32 %i.ps, %i.pe
  %i.pu = mul i32 %i.pt, 37
  %i.pv = add i32 %i.pu, %i.pe                    ; 2 uses
  %niter425.next.7 = add nuw i32 %niter425, 8
  %niter425.ncmp.7 = icmp eq i32 %niter425, %i.pf
  br i1 %niter425.ncmp.7, label %.lr.ph.i.i.i.i.i.epil, label %.lr.ph.i.i.i.i.i, !llvm.loop !80

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.epil
  %.061.i.i.i.i.i.epil = phi i32 [ %i.px, %.lr.ph.i.i.i.i.i.epil ], [ %i.pv, %.lr.ph.i.i.i.i.i ]
  %epil.iter420 = phi i32 [ %epil.iter420.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.pw = mul i32 %.061.i.i.i.i.i.epil, 37
  %i.px = add i32 %i.pw, %i.pe                    ; 3 uses
  %epil.iter420.next = add i32 %epil.iter420, 1   ; 2 uses
  %epil.iter420.cmp.not = icmp eq i32 %epil.iter420.next, 7
  br i1 %epil.iter420.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !81

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %i.py = shl i32 %i.px, %.sink312.i174.i.i
  %i.pz = add nsw i32 %.0.i118.i186.i.i, -1
  %i.qa = urem i32 %i.px, %i.pz
  %i.qb = add nuw nsw i32 %i.qa, 1                ; 4 uses
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !34 ; 2 uses
  %i.qf = icmp eq i32 %i.qe, 0
  br i1 %i.qf, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.preheader.i.i

.lr.ph.split.us.i.i.i.preheader.i.i:              ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %i.qg = xor i32 %.sink.i177.i.i, -1
  %i.qh = shl nuw nsw i32 %i.ox, 2
  %.idx.i.i.i.i.i.i = zext nneg i32 %i.qh to i64
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.ci, %.lr.ph.split.us.i.i.i.preheader.i.i
  %i.qi = phi i32 [ %i.qy, %bb.ci ], [ %i.qe, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %.01929.us.i.i.i.i.i = phi i32 [ %i.qv, %bb.ci ], [ %i.qb, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %i.qj = and i32 %i.qi, %i.qg
  %i.qk = icmp eq i32 %i.qj, %i.py
  br i1 %i.qk, label %.lr.ph.i.preheader.us.i.i.i.i.i, label %bb.ci

.lr.ph.i.preheader.us.i.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.ql = and i32 %i.qi, %.sink.i177.i.i
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr [4 x i8], ptr %i.mn, i64 %i.qm
  %i.qo = getelementptr i8, ptr %i.qn, i64 -4     ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.idx.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.us.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i:                            ; preds = %bb.ch, %.lr.ph.i.preheader.us.i.i.i.i.i
  %.08.i.us.i.i.i.i.i = phi ptr [ %i.qs, %bb.ch ], [ %i.qo, %.lr.ph.i.preheader.us.i.i.i.i.i ] ; 3 uses
  %i.qq = load i32, ptr %.08.i.us.i.i.i.i.i, align 4, !tbaa !34
  %i.qr = icmp eq i32 %i.qq, %i.pe
  br i1 %i.qr, label %bb.ch, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i

bb.ch:                                            ; preds = %.lr.ph.i.us.i.i.i.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.08.i.us.i.i.i.i.i, i64 4 ; 3 uses
  %i.qt = icmp ult ptr %i.qs, %i.qp
  br i1 %i.qt, label %.lr.ph.i.us.i.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, !llvm.loop !69

bb.ci:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.qu = add nuw nsw i32 %.01929.us.i.i.i.i.i, %i.qb
  %i.qv = urem i32 %i.qu, %.0.i118.i186.i.i       ; 3 uses
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !34 ; 2 uses
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !llvm.loop !82

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i: ; preds = %bb.ch, %.lr.ph.i.us.i.i.i.i.i
  %.0.lcssa.i.ph.us.i.i.i.i.i = phi ptr [ %.08.i.us.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i ], [ %i.qs, %bb.ch ]
  %i.ra = icmp eq ptr %.0.lcssa.i.ph.us.i.i.i.i.i, %i.qp
  br i1 %i.ra, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i, label %bb.ci

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ci, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %.019.lcssa.i.i.i.i.i = phi i32 [ %i.qb, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i ], [ %i.qv, %bb.ci ]
  %i.rb = xor i32 %.019.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.3.ph.i.i.i.i.i = phi i32 [ %i.rb, %._crit_edge.i.i.i.i.i ], [ %.01929.us.i.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i ] ; 2 uses
  %i.rc = icmp sgt i32 %.3.ph.i.i.i.i.i, -1
  br i1 %i.rc, label %bb.cj, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

bb.cj:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %i.rd = zext nneg i32 %.3.ph.i.i.i.i.i to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !34
  %i.rg = and i32 %i.rf, %.sink.i177.i.i
  %i.rh = add nsw i32 %i.rg, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i: ; preds = %bb.cj, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %.0.i126.i.i.i = phi i32 [ %i.rh, %bb.cj ], [ -1, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i ] ; 4 uses
  %i.ri = icmp eq i32 %.0101207.i.i.i, %.011.i.i.i
  %.not115.i.i.i = icmp uge i32 %.0101207.i.i.i, %i.co
  %i.rj = icmp sgt i32 %.0.i126.i.i.i, -1         ; 2 uses
  %i.rk = and i1 %i.ri, %.not115.i.i.i
  %or.cond116188.i.i.i = and i1 %i.rk, %i.rj
  %i.rl = icmp slt i32 %.0.i126.i.i.i, %.1103.i.i.i
  %or.cond117189.i.i.i = select i1 %or.cond116188.i.i.i, i1 %i.rl, i1 false
  br i1 %or.cond117189.i.i.i, label %.lr.ph191.split.preheader.i.i.i, label %.critedge.i82.i.i

.lr.ph191.split.preheader.i.i.i:                  ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %i.rm = sub nuw nsw i32 %.1111202.i.i.i, %.1108.i.i.i ; 2 uses
  %i.rn = zext nneg i32 %.1108.i.i.i to i64
  br label %.lr.ph191.split.i.i.i

.lr.ph191.split.i.i.i:                            ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %.lr.ph191.split.preheader.i.i.i
  %.099190.i.i.i = phi i32 [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ], [ %.0.i126.i.i.i, %.lr.ph191.split.preheader.i.i.i ] ; 4 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph191.split.i.i.i
  %indvars.iv.i.i83.i.i = phi i64 [ 0, %.lr.ph191.split.i.i.i ], [ %indvars.iv.next.i.i84.i.i, %bb.ck ] ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.i.i83.i.i
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !34
  %i.rq = icmp eq i32 %i.rp, %.099190.i.i.i       ; 2 uses
end_hunk_0
begin_hunk_1_@umutablecptrie_buildImmutable_78:bb.a
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !34 ; 2 uses
  %i.vm = icmp eq i32 %i.vl, 0
  br i1 %i.vm, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.i.i, !llvm.loop !3

._crit_edge.i.i136.i.i.i:                         ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %.020.lcssa.i.i.i.i.i = phi i32 [ %i.un, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i ], [ %i.vi, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ]
  %i.vn = xor i32 %.020.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i: ; preds = %bb.cr, %._crit_edge.i.i136.i.i.i
  %.3.ph.i.i137.i.i.i = phi i32 [ %i.vn, %._crit_edge.i.i136.i.i.i ], [ %.02037.us.i.i.i.i.i, %bb.cr ] ; 2 uses
  %i.vo = icmp sgt i32 %.3.ph.i.i137.i.i.i, -1
  br i1 %i.vo, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i
  %i.vp = zext nneg i32 %.3.ph.i.i137.i.i.i to i64
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.vp
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !34
  %i.vs = and i32 %i.vr, %.sink.i177.i.i          ; 2 uses
  %i.vt = icmp sgt i32 %i.vs, 0
  br i1 %i.vt, label %bb.cs, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i

bb.cs:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i
  %i.vu = add nsw i32 %i.vs, -1
  store i32 %i.vu, ptr %i.tf, align 4, !tbaa !34
  br label %bb.cw

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i: ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i
  %i.vv = zext nneg i32 %.1108.i.i.i to i64       ; 4 uses
  %i.vw = zext i32 %.1111202.i.i.i to i64         ; 6 uses
  br label %bb.ct

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i143.i.i.i
  %i.vx = icmp sgt i64 %indvars.iv.in.i.i.i.i, 2
  br i1 %i.vx, label %bb.ct, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !91

bb.ct:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i
  %indvars.iv.in.i.i.i.i = phi i64 [ %i.vv, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIjjEEiPKT_PKT0_i.exit.thread.i.i.i ], [ %indvars.iv.i142.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ] ; 2 uses
  %indvars.iv.i142.i.i.i = add nsw i64 %indvars.iv.in.i.i.i.i, -1 ; 3 uses
  %i.vy = sub nsw i64 %i.vw, %indvars.iv.i142.i.i.i
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.vy
  %i.wa = trunc nuw nsw i64 %indvars.iv.i142.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i143.i.i.i

.lr.ph.i.i143.i.i.i:                              ; preds = %bb.cu, %bb.ct
  %.010.i.i.i.i.i = phi i32 [ %i.wg, %bb.cu ], [ %i.wa, %bb.ct ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.wf, %bb.cu ], [ %i.ti, %bb.ct ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.we, %bb.cu ], [ %i.vz, %bb.ct ] ; 2 uses
  %i.wb = load i32, ptr %.078.i.i.i.i.i, align 4, !tbaa !34
  %i.wc = load i32, ptr %.069.i.i.i.i.i, align 4, !tbaa !34
  %i.wd = icmp eq i32 %i.wb, %i.wc
  br i1 %i.wd, label %bb.cu, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.cu:                                            ; preds = %.lr.ph.i.i143.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %.078.i.i.i.i.i, i64 4
  %i.wf = getelementptr inbounds nuw i8, ptr %.069.i.i.i.i.i, i64 4
  %i.wg = add nsw i32 %.010.i.i.i.i.i, -1
  %i.wh = icmp sgt i32 %.010.i.i.i.i.i, 1
  br i1 %i.wh, label %.lr.ph.i.i143.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !2

_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %bb.cu
  %.013.i.i.i.i = phi i32 [ %i.wa, %bb.cu ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ] ; 3 uses
  %i.wi = sub nsw i32 %.1111202.i.i.i, %.013.i.i.i.i
  store i32 %i.wi, ptr %i.tf, align 4, !tbaa !34
  %i.wj = icmp slt i32 %.013.i.i.i.i, %.1108.i.i.i
  br i1 %i.wj, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i74.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i
  %i.wk = sext i32 %.013.i.i.i.i to i64           ; 6 uses
  %i.wl = sub nsw i64 %i.vv, %i.wk                ; 3 uses
  %min.iters.check244 = icmp ult i64 %i.wl, 8
  br i1 %min.iters.check244, label %.lr.ph.i77.i.i.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.preheader.i.i.i
  %i.wm = shl nuw nsw i64 %i.vw, 2
  %i.wn = add i64 %i.wm, %i.mo
  %i.wo = add nsw i64 %i.wk, %i.th
  %i.wp = shl nsw i64 %i.wo, 2
  %i.wq = add i64 %i.wp, %i.td
  %i.wr = sub i64 %i.wq, %i.wn
  %diff.check = icmp ugt i64 %i.wr, -32
  br i1 %diff.check, label %.lr.ph.i77.i.i.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck242
  %n.vec246 = and i64 %i.wl, -8                   ; 4 uses
  %i.ws = add nsw i64 %n.vec246, %i.vw            ; 2 uses
  %i.wt = add nsw i64 %n.vec246, %i.wk
  %invariant.gep = getelementptr [4 x i8], ptr %i.ti, i64 %i.wk
  %invariant.gep501 = getelementptr [4 x i8], ptr %i.mn, i64 %i.vw
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next250, %vector.body247 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index248 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !34
  %wide.load249 = load <4 x i32>, ptr %i.wu, align 4, !tbaa !34
  %gep502 = getelementptr [4 x i8], ptr %invariant.gep501, i64 %index248 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %gep502, i64 16
  store <4 x i32> %wide.load, ptr %gep502, align 4, !tbaa !34
  store <4 x i32> %wide.load249, ptr %i.wv, align 4, !tbaa !34
  %index.next250 = add nuw i64 %index248, 8       ; 2 uses
  %i.ww = icmp eq i64 %index.next250, %n.vec246
  br i1 %i.ww, label %middle.block251, label %vector.body247, !llvm.loop !92

middle.block251:                                  ; preds = %vector.body247
  %cmp.n252 = icmp eq i64 %i.wl, %n.vec246
  br i1 %cmp.n252, label %._crit_edge.loopexit.i81.i.i, label %.lr.ph.i77.i.i.preheader

.lr.ph.i77.i.i.preheader:                         ; preds = %vector.memcheck242, %.lr.ph.preheader.i.i.i, %middle.block251
  %indvars.iv250.i.i.i.ph = phi i64 [ %i.vw, %vector.memcheck242 ], [ %i.vw, %.lr.ph.preheader.i.i.i ], [ %i.ws, %middle.block251 ] ; 2 uses
  %indvars.iv.i78.i.i.ph = phi i64 [ %i.wk, %vector.memcheck242 ], [ %i.wk, %.lr.ph.preheader.i.i.i ], [ %i.wt, %middle.block251 ] ; 4 uses
  %i.wx = sub nsw i64 0, %indvars.iv.i78.i.i.ph
  %xtraiter416 = and i64 %i.wx, 3                 ; 2 uses
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.lr.ph.i77.i.i.prol.loopexit, label %.lr.ph.i77.i.i.prol

.lr.ph.i77.i.i.prol:                              ; preds = %.lr.ph.i77.i.i.preheader, %.lr.ph.i77.i.i.prol
  %indvars.iv250.i.i.i.prol = phi i64 [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i77.i.i.prol ], [ %indvars.iv250.i.i.i.ph, %.lr.ph.i77.i.i.preheader ] ; 2 uses
  %indvars.iv.i78.i.i.prol = phi i64 [ %indvars.iv.next.i79.i.i.prol, %.lr.ph.i77.i.i.prol ], [ %indvars.iv.i78.i.i.ph, %.lr.ph.i77.i.i.preheader ] ; 2 uses
  %prol.iter418 = phi i64 [ %prol.iter418.next, %.lr.ph.i77.i.i.prol ], [ 0, %.lr.ph.i77.i.i.preheader ]
  %indvars.iv.next.i79.i.i.prol = add nsw i64 %indvars.iv.i78.i.i.prol, 1 ; 2 uses
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %indvars.iv.i78.i.i.prol
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !34
  %indvars.iv.next251.i.i.i.prol = add nuw nsw i64 %indvars.iv250.i.i.i.prol, 1 ; 3 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i.prol
  store i32 %i.wz, ptr %i.xa, align 4, !tbaa !34
  %prol.iter418.next = add i64 %prol.iter418, 1   ; 2 uses
  %prol.iter418.cmp.not = icmp eq i64 %prol.iter418.next, %xtraiter416
  br i1 %prol.iter418.cmp.not, label %.lr.ph.i77.i.i.prol.loopexit, label %.lr.ph.i77.i.i.prol, !llvm.loop !93

.lr.ph.i77.i.i.prol.loopexit:                     ; preds = %.lr.ph.i77.i.i.prol, %.lr.ph.i77.i.i.preheader
  %indvars.iv.next251.i.i.i.lcssa354.unr = phi i64 [ poison, %.lr.ph.i77.i.i.preheader ], [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i77.i.i.prol ]
  %indvars.iv250.i.i.i.unr = phi i64 [ %indvars.iv250.i.i.i.ph, %.lr.ph.i77.i.i.preheader ], [ %indvars.iv.next251.i.i.i.prol, %.lr.ph.i77.i.i.prol ]
  %indvars.iv.i78.i.i.unr = phi i64 [ %indvars.iv.i78.i.i.ph, %.lr.ph.i77.i.i.preheader ], [ %indvars.iv.next.i79.i.i.prol, %.lr.ph.i77.i.i.prol ]
  %i.xb = sub nsw i64 %indvars.iv.i78.i.i.ph, %i.vv
  %i.xc = icmp ugt i64 %i.xb, -4
  br i1 %i.xc, label %._crit_edge.loopexit.i81.i.i, label %.lr.ph.i77.i.i

.lr.ph.i77.i.i:                                   ; preds = %.lr.ph.i77.i.i.prol.loopexit, %.lr.ph.i77.i.i
  %indvars.iv250.i.i.i = phi i64 [ %indvars.iv.next251.i.i.i.3, %.lr.ph.i77.i.i ], [ %indvars.iv250.i.i.i.unr, %.lr.ph.i77.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i78.i.i = phi i64 [ %indvars.iv.next.i79.i.i.3, %.lr.ph.i77.i.i ], [ %indvars.iv.i78.i.i.unr, %.lr.ph.i77.i.i.prol.loopexit ] ; 5 uses
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %indvars.iv.i78.i.i
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !34
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !34
  %i.xg = getelementptr [4 x i8], ptr %i.ti, i64 %indvars.iv.i78.i.i
  %i.xh = getelementptr i8, ptr %i.xg, i64 4
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !34
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  store i32 %i.xi, ptr %i.xk, align 4, !tbaa !34
  %i.xl = getelementptr [4 x i8], ptr %i.ti, i64 %indvars.iv.i78.i.i
  %i.xm = getelementptr i8, ptr %i.xl, i64 8
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !34
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  store i32 %i.xn, ptr %i.xp, align 4, !tbaa !34
  %indvars.iv.next.i79.i.i.3 = add nsw i64 %indvars.iv.i78.i.i, 4 ; 2 uses
  %i.xq = getelementptr [4 x i8], ptr %i.ti, i64 %indvars.iv.i78.i.i
  %i.xr = getelementptr i8, ptr %i.xq, i64 12
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !34
  %indvars.iv.next251.i.i.i.3 = add nuw nsw i64 %indvars.iv250.i.i.i, 4 ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv250.i.i.i
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 12
  store i32 %i.xs, ptr %i.xu, align 4, !tbaa !34
  %exitcond.not.i80.i.i.3 = icmp eq i64 %indvars.iv.next.i79.i.i.3, %i.vv
  br i1 %exitcond.not.i80.i.i.3, label %._crit_edge.loopexit.i81.i.i, label %.lr.ph.i77.i.i, !llvm.loop !94

._crit_edge.loopexit.i81.i.i:                     ; preds = %.lr.ph.i77.i.i.prol.loopexit, %.lr.ph.i77.i.i, %middle.block251
  %indvars.iv.next251.i.i.i.lcssa = phi i64 [ %i.ws, %middle.block251 ], [ %indvars.iv.next251.i.i.i.lcssa354.unr, %.lr.ph.i77.i.i.prol.loopexit ], [ %indvars.iv.next251.i.i.i.3, %.lr.ph.i77.i.i ]
  %i.xv = trunc nuw i64 %indvars.iv.next251.i.i.i.lcssa to i32
  br label %._crit_edge.i74.i.i

._crit_edge.i74.i.i:                              ; preds = %._crit_edge.loopexit.i81.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i
  %.4.lcssa.i.i.i = phi i32 [ %.1111202.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.xv, %._crit_edge.loopexit.i81.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mn, i32 noundef %.1111202.i.i.i, i32 noundef %.4.lcssa.i.i.i)
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cg
  %i.xw = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %i.oz ; 2 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !34
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %i.xz
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !34
  store i32 %i.yb, ptr %i.xx, align 4, !tbaa !34
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge.i74.i.i, %bb.cs, %._crit_edge199.i.i.i, %.critedge.thread.i.i.i
  %.6.i.i.i = phi i32 [ %.1111202.i.i.i, %bb.cv ], [ %.2112.lcssa.i.i.i, %._crit_edge199.i.i.i ], [ %.1111202.i.i.i, %.critedge.thread.i.i.i ], [ %.1111202.i.i.i, %bb.cs ], [ %.4.lcssa.i.i.i, %._crit_edge.i74.i.i ] ; 2 uses
  %i.yc = add i32 %.1105.i.i.i, %.0101207.i.i.i   ; 2 uses
  %.not.i75.i.i = icmp slt i32 %i.yc, %i.oj
  br i1 %.not.i75.i.i, label %bb.cc, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, !llvm.loop !95

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i: ; preds = %.noexc88.i.i, %.noexc86.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fs

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i: ; preds = %bb.cw, %bb.cb
  %.pre.i.i93.ph.i.i = phi ptr [ %i.oe, %bb.cb ], [ %i.oy, %bb.cw ] ; 4 uses
  %.2.i72.ph.i.i = phi i32 [ 128, %bb.cb ], [ %.6.i.i.i, %bb.cw ] ; 2 uses
  %.pr.i.i = load i32, ptr %3, align 4, !tbaa !17
  %i.yd = icmp slt i32 %.pr.i.i, 1
  br i1 %i.yd, label %bb.cx, label %bb.fs

.loopexit.i.i:                                    ; preds = %.noexc87.i.i, %bb.ce
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.cx, %.noexc.i.i, %bb.ca
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.cx:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i
  %i.ye = load ptr, ptr %i.gr, align 8, !tbaa !32
  invoke void @uprv_free_78(ptr noundef %i.ye)
          to label %bb.cy unwind label %.loopexit.split-lp.i.i

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.mn, ptr %i.gr, align 8, !tbaa !32
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.5136.i.i.i, ptr %i.yf, align 8, !tbaa !33
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.2.i72.ph.i.i, ptr %i.yg, align 4, !tbaa !35
  %i.yh = icmp samesign ugt i32 %.2.i72.ph.i.i, 262159
  br i1 %i.yh, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 8, ptr %3, align 4, !tbaa !17
  br label %bb.fs

bb.da:                                            ; preds = %bb.cy
  %i.yi = icmp sgt i32 %.011.i.i.i, -1
  br i1 %i.yi, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yj = load ptr, ptr %0, align 8, !tbaa !22
  %i.yk = zext nneg i32 %.011.i.i.i to i64
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.yk
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !34 ; 2 uses
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.yn
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !34
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.yp, ptr %i.yq, align 8, !tbaa !27
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.sink.i.i = phi i32 [ %i.ym, %bb.db ], [ 1048575, %bb.da ]
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 %.sink.i.i, ptr %i.yr, align 8, !tbaa !25
  %i.ys = lshr exact i32 %i.cn, 6                 ; 5 uses
  %i.yt = load i32, ptr %i.cp, align 8, !tbaa !29
  %i.yu = ashr i32 %i.yt, 6
  %.not.i89.i.i = icmp sgt i32 %i.yu, %i.ys
  br i1 %.not.i89.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32767, ptr %i.yv, align 4, !tbaa !24
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.yw = load ptr, ptr %0, align 8, !tbaa !22
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.yy = add nsw i32 %i.co, -4
  %i.yz = lshr exact i32 %i.yy, 2
  %i.za = add nuw nsw i32 %i.yz, 1
  %wide.trip.count.i90.i.i = zext nneg i32 %i.za to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.dj, %bb.de
  %indvars.iv447.i.i.i = phi i64 [ 0, %bb.de ], [ %indvars.iv.next448.i.i.i, %bb.dj ] ; 2 uses
  %indvars.iv.i91.i.i = phi i64 [ 0, %bb.de ], [ %indvars.iv.next446.i.i.i, %bb.dj ] ; 3 uses
  %.0284390.i.i.i = phi i32 [ -1, %bb.de ], [ %.1285.i.i.i, %bb.dj ] ; 5 uses
  %indvars449.i.i.i = trunc i64 %indvars.iv.i91.i.i to i32 ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv447.i.i.i ; 3 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !34 ; 4 uses
  %i.zd = trunc i32 %i.zc to i16
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i91.i.i
  store i16 %i.zd, ptr %i.ze, align 2, !tbaa !42
  %i.zf = load i32, ptr %i.yr, align 8, !tbaa !25
  %i.zg = icmp eq i32 %i.zc, %i.zf
  br i1 %i.zg, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.zh = icmp slt i32 %.0284390.i.i.i, 0
  br i1 %i.zh, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.zi = load i32, ptr %i.yx, align 4, !tbaa !24
  %i.zj = icmp slt i32 %i.zi, 0
  %i.zk = sub nsw i32 %indvars449.i.i.i, %.0284390.i.i.i
  %i.zl = icmp eq i32 %i.zk, 31
  %or.cond315.i.i.i = select i1 %i.zj, i1 %i.zl, i1 false
  br i1 %or.cond315.i.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 %.0284390.i.i.i, ptr %i.yx, align 4, !tbaa !24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.1285.i.i.i = phi i32 [ %.0284390.i.i.i, %bb.dh ], [ %.0284390.i.i.i, %bb.di ], [ %indvars449.i.i.i, %bb.dg ], [ -1, %bb.df ]
  %i.zm = insertelement <2 x i32> poison, i32 %i.zc, i64 0
  %i.zn = shufflevector <2 x i32> %i.zm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.zo = add <2 x i32> %i.zn, <i32 16, i32 32>
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  store <2 x i32> %i.zo, ptr %i.zp, align 4, !tbaa !34
  %i.zq = add i32 %i.zc, 48
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zb, i64 12
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !34
  %indvars.iv.next448.i.i.i = add nuw nsw i64 %indvars.iv447.i.i.i, 4
  %indvars.iv.next446.i.i.i = add nuw nsw i64 %indvars.iv.i91.i.i, 1 ; 2 uses
  %exitcond.not.i92.i.i = icmp eq i64 %indvars.iv.next446.i.i.i, %wide.trip.count.i90.i.i
  br i1 %exitcond.not.i92.i.i, label %._crit_edge.i.i94.i.i, label %bb.df, !llvm.loop !96

._crit_edge.i.i94.i.i:                            ; preds = %bb.dj
  %i.zs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.zt = getelementptr inbounds nuw i8, ptr %6, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24028) %.pre.i.i93.ph.i.i, i8 0, i64 24028, i1 false)
  store <4 x i32> <i32 6007, i32 12, i32 4095, i32 32>, ptr %i.og, align 4, !tbaa !34
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef %i.ys)
  %i.zu = and i32 %i.co, 4096                     ; 4 uses
  %i.zv = load i32, ptr %i.cp, align 8, !tbaa !29
  %i.zw = ashr i32 %i.zv, 4                       ; 4 uses
  %i.zx = icmp slt i32 %i.zu, %i.zw               ; 2 uses
  br i1 %i.zx, label %.preheader376.lr.ph.i.i.i, label %._crit_edge.i95.i.i

.preheader376.lr.ph.i.i.i:                        ; preds = %._crit_edge.i.i94.i.i
  %i.zy = load i32, ptr %i.yx, align 4, !tbaa !24
  %i.zz = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.aaa = zext nneg i32 %i.zu to i64
  %sext.i.i = zext nneg i32 %i.zw to i64
  br label %.preheader376.i.i.i

.preheader376.i.i.i:                              ; preds = %bb.dr, %.preheader376.lr.ph.i.i.i
  %indvars.iv458.i.i.i = phi i64 [ %i.aaa, %.preheader376.lr.ph.i.i.i ], [ %i.acv, %bb.dr ] ; 6 uses
  %.0273395.i.i.i = phi i1 [ false, %.preheader376.lr.ph.i.i.i ], [ %.2275.i.i.i, %bb.dr ] ; 4 uses
  %.0276394.i.i.i = phi i32 [ 0, %.preheader376.lr.ph.i.i.i ], [ %.3279.i.i.i, %bb.dr ] ; 5 uses
  %.2286393.i.i.i = phi i32 [ %i.zy, %.preheader376.lr.ph.i.i.i ], [ %.3287.i.i.i, %bb.dr ] ; 5 uses
  %i.aab = load i32, ptr %i.yr, align 8, !tbaa !25
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %indvars.iv458.i.i.i ; 2 uses
  %i.aad = load <32 x i32>, ptr %i.aac, align 4, !tbaa !34 ; 33 uses
  %i.aae = extractelement <32 x i32> %i.aad, i64 0
  %i.aaf = extractelement <32 x i32> %i.aad, i64 1
  %i.aag = or i32 %i.aaf, %i.aae
  %i.aah = extractelement <32 x i32> %i.aad, i64 2
  %i.aai = or i32 %i.aag, %i.aah
  %i.aaj = extractelement <32 x i32> %i.aad, i64 3
  %i.aak = or i32 %i.aai, %i.aaj
  %i.aal = extractelement <32 x i32> %i.aad, i64 4
  %i.aam = or i32 %i.aak, %i.aal
  %i.aan = extractelement <32 x i32> %i.aad, i64 5
  %i.aao = or i32 %i.aam, %i.aan
  %i.aap = extractelement <32 x i32> %i.aad, i64 6
  %i.aaq = or i32 %i.aao, %i.aap
  %i.aar = extractelement <32 x i32> %i.aad, i64 7
  %i.aas = or i32 %i.aaq, %i.aar
  %i.aat = extractelement <32 x i32> %i.aad, i64 8
  %i.aau = or i32 %i.aas, %i.aat
  %i.aav = extractelement <32 x i32> %i.aad, i64 9
  %i.aaw = or i32 %i.aau, %i.aav
  %i.aax = extractelement <32 x i32> %i.aad, i64 10
  %i.aay = or i32 %i.aaw, %i.aax
  %i.aaz = extractelement <32 x i32> %i.aad, i64 11
  %i.aba = or i32 %i.aay, %i.aaz
  %i.abb = extractelement <32 x i32> %i.aad, i64 12
  %i.abc = or i32 %i.aba, %i.abb
  %i.abd = extractelement <32 x i32> %i.aad, i64 13
  %i.abe = or i32 %i.abc, %i.abd
  %i.abf = extractelement <32 x i32> %i.aad, i64 14
  %i.abg = or i32 %i.abe, %i.abf
  %i.abh = extractelement <32 x i32> %i.aad, i64 15
  %i.abi = or i32 %i.abg, %i.abh
  %i.abj = extractelement <32 x i32> %i.aad, i64 16
  %i.abk = or i32 %i.abi, %i.abj
  %i.abl = extractelement <32 x i32> %i.aad, i64 17
  %i.abm = or i32 %i.abk, %i.abl
  %i.abn = extractelement <32 x i32> %i.aad, i64 18
  %i.abo = or i32 %i.abm, %i.abn
  %i.abp = extractelement <32 x i32> %i.aad, i64 19
  %i.abq = or i32 %i.abo, %i.abp
  %i.abr = extractelement <32 x i32> %i.aad, i64 20
  %i.abs = or i32 %i.abq, %i.abr
  %i.abt = extractelement <32 x i32> %i.aad, i64 21
  %i.abu = or i32 %i.abs, %i.abt
  %i.abv = extractelement <32 x i32> %i.aad, i64 22
  %i.abw = or i32 %i.abu, %i.abv
  %i.abx = extractelement <32 x i32> %i.aad, i64 23
  %i.aby = or i32 %i.abw, %i.abx
  %i.abz = extractelement <32 x i32> %i.aad, i64 24
  %i.aca = or i32 %i.aby, %i.abz
  %i.acb = extractelement <32 x i32> %i.aad, i64 25
  %i.acc = or i32 %i.aca, %i.acb
  %i.acd = extractelement <32 x i32> %i.aad, i64 26
  %i.ace = or i32 %i.acc, %i.acd
  %i.acf = extractelement <32 x i32> %i.aad, i64 27
  %i.acg = or i32 %i.ace, %i.acf
  %i.ach = extractelement <32 x i32> %i.aad, i64 28
  %i.aci = or i32 %i.acg, %i.ach
  %i.acj = extractelement <32 x i32> %i.aad, i64 29
  %i.ack = or i32 %i.aci, %i.acj
  %i.acl = extractelement <32 x i32> %i.aad, i64 30
  %i.acm = or i32 %i.ack, %i.acl
  %i.acn = extractelement <32 x i32> %i.aad, i64 31
  %i.aco = or i32 %i.acm, %i.acn                  ; 2 uses
  %i.acp = insertelement <32 x i32> poison, i32 %i.aab, i64 0
  %i.acq = shufflevector <32 x i32> %i.acp, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.acr = icmp eq <32 x i32> %i.aad, %i.acq
  %i.acs = freeze <32 x i1> %i.acr
  %i.act = bitcast <32 x i1> %i.acs to i32
  %i.acu = icmp eq i32 %i.act, -1
  %i.acv = add nuw nsw i64 %indvars.iv458.i.i.i, 32 ; 2 uses
  br i1 %i.acu, label %bb.dk, label %bb.dm

._crit_edge.i95.i.i:                              ; preds = %bb.dr, %._crit_edge.i.i94.i.i
  %.0276.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i94.i.i ], [ %.3279.i.i.i, %bb.dr ]
  %.0273.lcssa.i.i.i = phi i1 [ false, %._crit_edge.i.i94.i.i ], [ %.2275.i.i.i, %bb.dr ] ; 3 uses
  %i.acw = sub nsw i32 %i.zw, %i.zu
  %i.acx = ashr i32 %i.acw, 5                     ; 2 uses
  %i.acy = add nsw i32 %i.acx, 31
  %i.acz = ashr i32 %i.acy, 5
  %i.ada = add nsw i32 %i.acz, %i.ys              ; 16 uses
  %i.adb = add nsw i32 %i.ada, %i.acx
  %i.adc = add i32 %i.adb, %.0276.lcssa.i.i.i     ; 7 uses
  %i.add = shl i32 %i.adc, 1
  %i.ade = add i32 %i.add, 2
  %i.adf = sext i32 %i.ade to i64
  %i.adg = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.adf) #14
          to label %.noexc115.i.i unwind label %bb.fr ; 3 uses

.noexc115.i.i:                                    ; preds = %._crit_edge.i95.i.i
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  store ptr %i.adg, ptr %i.adh, align 8, !tbaa !31
  %i.adi = icmp eq ptr %i.adg, null
  br i1 %i.adi, label %bb.ds, label %bb.dt

bb.dk:                                            ; preds = %.preheader376.i.i.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv458.i.i.i
  store i8 0, ptr %i.adj, align 1, !tbaa !40
  %i.adk = icmp slt i32 %.2286393.i.i.i, 0
  br i1 %i.adk, label %bb.dl, label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.adl = icmp ugt i32 %i.aco, 65535             ; 2 uses
  %.1277.v.i.i.i = select i1 %i.adl, i32 36, i32 32
  %.1277.i.i.i = add nsw i32 %.1277.v.i.i.i, %.0276394.i.i.i
  %.1274.i.i.i = select i1 %i.adl, i1 true, i1 %.0273395.i.i.i
  br label %bb.dr

bb.dm:                                            ; preds = %.preheader376.i.i.i
  %i.adm = icmp ult i32 %i.aco, 65536
  br i1 %i.adm, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.adn = trunc nuw nsw i64 %indvars.iv458.i.i.i to i32
  %i.ado = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zz, i32 noundef %i.adn) ; 2 uses
  %i.adp = icmp sgt i32 %i.ado, -1
  %i.adq = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv458.i.i.i ; 2 uses
  br i1 %i.adp, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.adq, align 1, !tbaa !40
  store i32 %i.ado, ptr %i.aac, align 4, !tbaa !34
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  store i8 2, ptr %i.adq, align 1, !tbaa !40
  %i.adr = add nsw i32 %.0276394.i.i.i, 32
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.ads = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv458.i.i.i
  store i8 3, ptr %i.ads, align 1, !tbaa !40
  %i.adt = add nsw i32 %.0276394.i.i.i, 36
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk
  %.3287.i.i.i = phi i32 [ 0, %bb.dl ], [ %.2286393.i.i.i, %bb.dk ], [ %.2286393.i.i.i, %bb.dq ], [ %.2286393.i.i.i, %bb.dp ], [ %.2286393.i.i.i, %bb.do ]
  %.3279.i.i.i = phi i32 [ %.1277.i.i.i, %bb.dl ], [ %.0276394.i.i.i, %bb.dk ], [ %i.adt, %bb.dq ], [ %i.adr, %bb.dp ], [ %.0276394.i.i.i, %bb.do ] ; 2 uses
  %.2275.i.i.i = phi i1 [ %.1274.i.i.i, %bb.dl ], [ %.0273395.i.i.i, %bb.dk ], [ true, %bb.dq ], [ %.0273395.i.i.i, %bb.dp ], [ %.0273395.i.i.i, %bb.do ] ; 2 uses
  %i.adu = icmp samesign ult i64 %i.acv, %sext.i.i
  br i1 %i.adu, label %.preheader376.i.i.i, label %._crit_edge.i95.i.i, !llvm.loop !97

bb.ds:                                            ; preds = %.noexc115.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fq

bb.dt:                                            ; preds = %.noexc115.i.i
  %i.adv = lshr exact i32 %i.cn, 5
  %i.adw = zext nneg i32 %i.adv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.adg, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.adw, i1 false)
  %i.adx = icmp slt i32 %i.adc, 4126
  br i1 %i.adx, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ady = icmp samesign ult i32 %i.adc, 32798
  br i1 %i.ady, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.adz = icmp samesign ult i32 %i.adc, 131102   ; 3 uses
  %..i96.i.i = select i1 %i.adz, i32 17, i32 21
  %.537.i.i.i = select i1 %i.adz, i32 131071, i32 2097151
  %.538.i.i.i = select i1 %i.adz, i32 200003, i32 1500007
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.sink536.i.i.i = phi i32 [ 15, %bb.du ], [ %..i96.i.i, %bb.dv ], [ 12, %bb.dt ]
  %.sink.i97.i.i = phi i32 [ 32767, %bb.du ], [ %.537.i.i.i, %bb.dv ], [ 4095, %bb.dt ]
  %.0.i317.i.i.i = phi i32 [ 50021, %bb.du ], [ %.538.i.i.i, %bb.dv ], [ 6007, %bb.dt ] ; 5 uses
  store i32 %.sink536.i.i.i, ptr %i.zs, align 8, !tbaa !46
  store i32 %.sink.i97.i.i, ptr %i.zt, align 4, !tbaa !47
  %i.aea = load i32, ptr %i.ob, align 8, !tbaa !122
  %i.aeb = icmp sgt i32 %.0.i317.i.i.i, %i.aea
  %.pre.i318.i.i.i = load ptr, ptr %6, align 8, !tbaa !48 ; 2 uses
  br i1 %i.aeb, label %bb.dx, label %._crit_edge.i319.i.i.i

._crit_edge.i319.i.i.i:                           ; preds = %bb.dw
  %.pre13.i320.i.i.i = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %.pre14.i321.i.i.i = zext nneg i32 %.pre13.i320.i.i.i to i64
  br label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @uprv_free_78(ptr noundef %.pre.i318.i.i.i)
          to label %.noexc116.i.i unwind label %bb.fr

.noexc116.i.i:                                    ; preds = %bb.dx
  %i.aec = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %i.aed = zext nneg i32 %i.aec to i64            ; 2 uses
  %i.aee = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aed) #14
          to label %.noexc117.i.i unwind label %bb.fr ; 3 uses

.noexc117.i.i:                                    ; preds = %.noexc116.i.i
  store ptr %i.aee, ptr %6, align 8, !tbaa !48
  %i.aef = icmp eq ptr %i.aee, null
  br i1 %i.aef, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %.noexc117.i.i
  store i32 %.0.i317.i.i.i, ptr %i.ob, align 8, !tbaa !122
  br label %bb.dz

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i: ; preds = %.noexc117.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fq

bb.dz:                                            ; preds = %bb.dy, %._crit_edge.i319.i.i.i
  %.pre-phi15.i322.i.i.i = phi i64 [ %.pre14.i321.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.aed, %bb.dy ]
  %i.aeg = phi ptr [ %.pre.i318.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.aee, %bb.dy ]
  store i32 %.0.i317.i.i.i, ptr %i.og, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aeg, i8 0, i64 %.pre-phi15.i322.i.i.i, i1 false)
  store i32 32, ptr %i.oh, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  br i1 %.0273.lcssa.i.i.i, label %bb.ea, label %bb.ej

bb.ea:                                            ; preds = %bb.dz
  %i.aeh = icmp slt i32 %i.adc, 4130
  br i1 %i.aeh, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aei = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.aei, align 8, !tbaa !46
  %i.aej = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4095, ptr %i.aej, align 4, !tbaa !47
  br label %bb.eh

bb.ec:                                            ; preds = %bb.ea
  %i.aek = icmp samesign ult i32 %i.adc, 32802
  %i.ael = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  br i1 %i.aek, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aem = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 15, ptr %i.aem, align 8, !tbaa !46
  store i32 32767, ptr %i.ael, align 4, !tbaa !47
  br label %bb.eh

bb.ee:                                            ; preds = %bb.ec
  %i.aen = icmp samesign ult i32 %i.adc, 131106
  %i.aeo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aen, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 17, ptr %i.aeo, align 8, !tbaa !46
  store i32 131071, ptr %i.ael, align 4, !tbaa !47
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  store i32 21, ptr %i.aeo, align 8, !tbaa !46
  store i32 2097151, ptr %i.ael, align 4, !tbaa !47
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ed, %bb.eb
  %.0.i325.i.i.i = phi i32 [ 6007, %bb.eb ], [ 50021, %bb.ed ], [ 200003, %bb.ef ], [ 1500007, %bb.eg ] ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @uprv_free_78(ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.ei

.noexc.i.i.i:                                     ; preds = %bb.eh
  %i.aeq = shl nuw nsw i32 %.0.i325.i.i.i, 2
  %i.aer = zext nneg i32 %i.aeq to i64            ; 2 uses
  %i.aes = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aer) #14
          to label %.noexc332.i.i.i unwind label %bb.ei ; 3 uses

.noexc332.i.i.i:                                  ; preds = %.noexc.i.i.i
  store ptr %i.aes, ptr %4, align 8, !tbaa !48
  %i.aet = icmp eq ptr %i.aes, null
  br i1 %i.aet, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 %.0.i325.i.i.i, ptr %i.aep, align 8, !tbaa !122
  %i.aeu = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.0.i325.i.i.i, ptr %i.aeu, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aes, i8 0, i64 %i.aer, i1 false)
  %i.aev = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 36, ptr %i.aev, align 8, !tbaa !50
  br label %bb.ej

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  br label %bb.fn

bb.ei:                                            ; preds = %.noexc.i.i.i, %bb.eh
  %i.aew = landingpad { ptr, i32 }
          cleanup
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i unwind label %bb.fp

bb.ej:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.pre.i.i.i = load i32, ptr %i.yx, align 4, !tbaa !24 ; 3 uses
  br i1 %i.zx, label %.lr.ph413.i.i.i, label %._crit_edge414.i.i.i

.lr.ph413.i.i.i:                                  ; preds = %bb.ej
  %i.aex = zext nneg i32 %i.zu to i64
  %i.aey = zext nneg i32 %i.zw to i64
  %.pre246.i.i = zext nneg i32 %i.ada to i64
  br label %bb.ek

._crit_edge414.loopexit.i.i.i:                    ; preds = %bb.fc
  %i.aez = trunc nuw nsw i64 %indvars.iv.next488.i.i.i to i32
  br label %._crit_edge414.i.i.i

._crit_edge414.i.i.i:                             ; preds = %._crit_edge414.loopexit.i.i.i, %bb.ej
  %i.afa = phi i32 [ %.pre.i.i.i, %bb.ej ], [ %i.asx, %._crit_edge414.loopexit.i.i.i ]
  %.0255.lcssa.i.i.i = phi i32 [ 0, %bb.ej ], [ %i.aez, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %.0250.lcssa.i.i.i = phi i32 [ %i.ada, %bb.ej ], [ %.6.i107.i.i, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %i.afb = icmp slt i32 %i.afa, 0
  br i1 %i.afb, label %bb.fd, label %bb.fe

bb.ek:                                            ; preds = %bb.fc, %.lr.ph413.i.i.i
  %i.afc = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %i.asx, %bb.fc ]
  %indvars.iv487.i.i.i = phi i64 [ 0, %.lr.ph413.i.i.i ], [ %indvars.iv.next488.i.i.i, %bb.fc ] ; 2 uses
  %indvars.iv460.i.i.i = phi i64 [ %i.aex, %.lr.ph413.i.i.i ], [ %indvars.iv.next461.i.i.i, %bb.fc ] ; 7 uses
  %.0250408.i.i.i = phi i32 [ %i.ada, %.lr.ph413.i.i.i ], [ %.6.i107.i.i, %bb.fc ] ; 18 uses
  %.4288406.i.i.i = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %.5289360.i.i.i, %bb.fc ] ; 5 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv460.i.i.i
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !40 ; 2 uses
  %i.aff = icmp eq i8 %i.afe, 0
  %i.afg = icmp slt i32 %.4288406.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.aff, i1 %i.afg, i1 false
  br i1 %or.cond.i.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.afh = load i32, ptr %i.yr, align 8, !tbaa !25
  %i.afi = icmp slt i32 %i.afh, 65536
  br i1 %i.afi, label %.thread362.i.i.i, label %.thread.i108.i.i

bb.em:                                            ; preds = %bb.ek
  switch i8 %i.afe, label %.thread.i108.i.i [
    i8 0, label %bb.fa
    i8 1, label %bb.en
    i8 2, label %.thread362.i.i.i
  ]

bb.en:                                            ; preds = %bb.em
  %i.afj = load ptr, ptr %0, align 8, !tbaa !22
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv460.i.i.i
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !34
  br label %bb.fa

.thread362.i.i.i:                                 ; preds = %bb.em, %bb.el
  %.5289365.i.i.i = phi i32 [ %.4288406.i.i.i, %bb.em ], [ 0, %bb.el ] ; 3 uses
  %i.afm = load ptr, ptr %i.adh, align 8, !tbaa !31 ; 6 uses
  %i.afn = load ptr, ptr %0, align 8, !tbaa !22   ; 3 uses
  %i.afo = trunc nuw nsw i64 %indvars.iv460.i.i.i to i32
  %i.afp = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.afm, ptr noundef %i.afn, i32 noundef %i.afo) ; 2 uses
  %i.afq = icmp sgt i32 %i.afp, -1
  br i1 %i.afq, label %bb.fa, label %bb.eo

bb.eo:                                            ; preds = %.thread362.i.i.i
  %i.afr = icmp eq i32 %.0250408.i.i.i, %i.ada
  br i1 %i.afr, label %.lr.ph403.preheader.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv460.i.i.i ; 2 uses
  %i.aft = sext i32 %.0250408.i.i.i to i64        ; 4 uses
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1, %bb.ep
  %indvars.iv.i.i101.i.i = phi i64 [ 31, %bb.ep ], [ %indvars.iv.next.i.i106.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1 ] ; 6 uses
  %i.afu = sub nsw i64 %i.aft, %indvars.iv.i.i101.i.i
  %i.afv = getelementptr inbounds [2 x i8], ptr %i.afm, i64 %i.afu
  %i.afw = trunc nuw nsw i64 %indvars.iv.i.i101.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i102.i.i

.lr.ph.i.i.i102.i.i:                              ; preds = %bb.er, %bb.eq
  %.010.i.i.i103.i.i = phi i32 [ %i.agd, %bb.er ], [ %i.afw, %bb.eq ] ; 2 uses
  %.069.i.i.i104.i.i = phi ptr [ %i.agc, %bb.er ], [ %i.afs, %bb.eq ] ; 2 uses
  %.078.i.i.i105.i.i = phi ptr [ %i.agb, %bb.er ], [ %i.afv, %bb.eq ] ; 2 uses
  %i.afx = load i16, ptr %.078.i.i.i105.i.i, align 2, !tbaa !42
  %i.afy = zext i16 %i.afx to i32
  %i.afz = load i32, ptr %.069.i.i.i104.i.i, align 4, !tbaa !34
  %i.aga = icmp eq i32 %i.afz, %i.afy
  br i1 %i.aga, label %bb.er, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i

bb.er:                                            ; preds = %.lr.ph.i.i.i102.i.i
  %i.agb = getelementptr inbounds nuw i8, ptr %.078.i.i.i105.i.i, i64 2
  %i.agc = getelementptr inbounds nuw i8, ptr %.069.i.i.i104.i.i, i64 4
  %i.agd = add nsw i32 %.010.i.i.i103.i.i, -1
  %i.age = icmp sgt i32 %.010.i.i.i103.i.i, 1
  br i1 %i.age, label %.lr.ph.i.i.i102.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapItjEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !4

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i102.i.i
  %indvars.iv.next.i.i106.i.i = add nsw i64 %indvars.iv.i.i101.i.i, -1 ; 3 uses
  %i.agf = icmp samesign ugt i64 %indvars.iv.i.i101.i.i, 1
  br i1 %i.agf, label %bb.es, label %.lr.ph403.preheader.i.i.i

bb.es:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i
  %i.agg = sub nsw i64 %i.aft, %indvars.iv.next.i.i106.i.i
  %i.agh = getelementptr inbounds [2 x i8], ptr %i.afm, i64 %i.agg
  %i.agi = trunc nuw nsw i64 %indvars.iv.next.i.i106.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.i102.i.i.1

.lr.ph.i.i.i102.i.i.1:                            ; preds = %bb.et, %bb.es
  %.010.i.i.i103.i.i.1 = phi i32 [ %i.agp, %bb.et ], [ %i.agi, %bb.es ] ; 2 uses
  %.069.i.i.i104.i.i.1 = phi ptr [ %i.ago, %bb.et ], [ %i.afs, %bb.es ] ; 2 uses
  %.078.i.i.i105.i.i.1 = phi ptr [ %i.agn, %bb.et ], [ %i.agh, %bb.es ] ; 2 uses
  %i.agj = load i16, ptr %.078.i.i.i105.i.i.1, align 2, !tbaa !42
  %i.agk = zext i16 %i.agj to i32
  %i.agl = load i32, ptr %.069.i.i.i104.i.i.1, align 4, !tbaa !34
  %i.agm = icmp eq i32 %i.agl, %i.agk
  br i1 %i.agm, label %bb.et, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksItjEEbPKT_PKT0_i.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i102.i.i.1
  %indvars.iv.next.i.i106.i.i.1 = add nsw i64 %indvars.iv.i.i101.i.i, -2
  br label %bb.eq

end_hunk_1
begin_hunk_2_@umutablecptrie_buildImmutable_78:bb.a
  %.not304.i.i.i = icmp slt i32 %i.atg, %.0234423.i.i.i
  br i1 %.not304.i.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ath = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.atf, ptr noundef nonnull %i.b, i32 noundef %.0232425.i.i.i)
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

bb.fi:                                            ; preds = %bb.fg
  %i.ati = sub i32 %.7422.i.i.i, %i.atg           ; 2 uses
  %i.atj = sext i32 %.0232425.i.i.i to i64
  %i.atk = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.atj
  %.not18.i.i.i.i = icmp sgt i32 %i.ada, %i.ati
  br i1 %.not18.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i340.i.i.i

.lr.ph.i340.i.i.i:                                ; preds = %bb.fi
  %i.atl = add i32 %i.ati, 1
  br label %.lr.ph.i.preheader.us.i.i.i.i

.lr.ph.i.preheader.us.i.i.i.i:                    ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %.lr.ph.i340.i.i.i
  %indvars.iv.i342.i.i.i = phi i64 [ %i.atd, %.lr.ph.i340.i.i.i ], [ %indvars.iv.next.i343.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 3 uses
  %i.atm = getelementptr inbounds [2 x i8], ptr %i.atf, i64 %indvars.iv.i342.i.i.i
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.fj, %.lr.ph.i.preheader.us.i.i.i.i
  %.010.i.us.i.i.i.i = phi i32 [ %i.ats, %bb.fj ], [ %i.atg, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i = phi ptr [ %i.atr, %bb.fj ], [ %i.atk, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i = phi ptr [ %i.atq, %bb.fj ], [ %i.atm, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %i.atn = load i16, ptr %.078.i.us.i.i.i.i, align 2, !tbaa !42
  %i.ato = load i16, ptr %.069.i.us.i.i.i.i, align 2, !tbaa !42
  %i.atp = icmp eq i16 %i.atn, %i.ato
  br i1 %i.atp, label %bb.fj, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i

bb.fj:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.atq = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i, i64 2
  %i.atr = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i, i64 2
  %i.ats = add nsw i32 %.010.i.us.i.i.i.i, -1
  %i.att = icmp sgt i32 %.010.i.us.i.i.i.i, 1
  br i1 %i.att, label %.lr.ph.i.us.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  %indvars.iv.next.i343.i.i.i = add nsw i64 %indvars.iv.i342.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i343.i.i.i to i32
  %exitcond.not.i.i100.i.i = icmp eq i32 %i.atl, %lftr.wideiv.i.i.i.i
  br i1 %exitcond.not.i.i100.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i.preheader.us.i.i.i.i, !llvm.loop !103

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i: ; preds = %bb.fj
  %i.atu = trunc nsw i64 %indvars.iv.i342.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, %bb.fh
  %.1235.i.i.i = phi i32 [ %.0234423.i.i.i, %bb.fh ], [ %i.atg, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.ath, %bb.fh ], [ %i.atu, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.atv = icmp sgt i32 %.0231.i.i.i, -1
  br i1 %i.atv, label %bb.fm, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i, %bb.fi
  %.1235370.i.i.i = phi i32 [ %.1235.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.atg, %bb.fi ], [ %i.atg, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 7 uses
  %i.atw = icmp eq i32 %.7422.i.i.i, %i.ada
  br i1 %i.atw, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %i.atx = sext i32 %.0232425.i.i.i to i64
  %i.aty = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.atx
  %i.atz = icmp sgt i32 %.1235370.i.i.i, 1
  br i1 %i.atz, label %.lr.ph.preheader.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i: ; preds = %bb.fk
  %.014.i.i.i.i = add nsw i32 %.1235370.i.i.i, -1 ; 2 uses
  %i.aua = sub nsw i32 %.7422.i.i.i, %.014.i.i.i.i
  br label %.lr.ph419.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fk
  %i.aub = zext nneg i32 %.1235370.i.i.i to i64
  %i.auc = sext i32 %.7422.i.i.i to i64
  br label %.lr.ph.i345.i.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i: ; preds = %.lr.ph.i.i348.i.i.i
  %i.aud = icmp sgt i64 %indvars.iv.in.i346.i.i.i, 2
  br i1 %i.aud, label %.lr.ph.i345.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, !llvm.loop !104

.lr.ph.i345.i.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.in.i346.i.i.i = phi i64 [ %i.aub, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.i347.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i ] ; 2 uses
  %indvars.iv.i347.i.i.i = add nsw i64 %indvars.iv.in.i346.i.i.i, -1 ; 3 uses
  %i.aue = sub nsw i64 %i.auc, %indvars.iv.i347.i.i.i
  %i.auf = getelementptr inbounds [2 x i8], ptr %i.atf, i64 %i.aue
  %i.aug = trunc nuw nsw i64 %indvars.iv.i347.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i348.i.i.i

.lr.ph.i.i348.i.i.i:                              ; preds = %bb.fl, %.lr.ph.i345.i.i.i
  %.010.i.i349.i.i.i = phi i32 [ %i.aum, %bb.fl ], [ %i.aug, %.lr.ph.i345.i.i.i ] ; 2 uses
  %.069.i.i350.i.i.i = phi ptr [ %i.aul, %bb.fl ], [ %i.aty, %.lr.ph.i345.i.i.i ] ; 2 uses
  %.078.i.i351.i.i.i = phi ptr [ %i.auk, %bb.fl ], [ %i.auf, %.lr.ph.i345.i.i.i ] ; 2 uses
  %i.auh = load i16, ptr %.078.i.i351.i.i.i, align 2, !tbaa !42
  %i.aui = load i16, ptr %.069.i.i350.i.i.i, align 2, !tbaa !42
  %i.auj = icmp eq i16 %i.auh, %i.aui
  br i1 %i.auj, label %bb.fl, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i.i348.i.i.i
  %i.auk = getelementptr inbounds nuw i8, ptr %.078.i.i351.i.i.i, i64 2
  %i.aul = getelementptr inbounds nuw i8, ptr %.069.i.i350.i.i.i, i64 2
  %i.aum = add nsw i32 %.010.i.i349.i.i.i, -1
  %i.aun = icmp sgt i32 %.010.i.i349.i.i.i, 1
  br i1 %i.aun, label %.lr.ph.i.i348.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, !llvm.loop !5

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i, %bb.fl, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i
  %.1.i99.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i ], [ %i.aug, %bb.fl ], [ 0, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i352.i.i.i ] ; 3 uses
  %i.auo = sub nsw i32 %.7422.i.i.i, %.1.i99.i.i  ; 2 uses
  %i.aup = icmp slt i32 %.1.i99.i.i, %.1235370.i.i.i
  br i1 %i.aup, label %.lr.ph419.i.i.i, label %._crit_edge420.i.i.i

.lr.ph419.i.i.i:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i
  %i.auq = phi i32 [ %i.aua, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i ], [ %i.auo, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ]
  %.1523.i.i.i = phi i32 [ %.014.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.thread.i.i.i ], [ %.1.i99.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ] ; 3 uses
  %i.aur = sext i32 %.7422.i.i.i to i64
  %i.aus = shl nsw i64 %i.aur, 1
  %scevgep.i.i.i = getelementptr i8, ptr %i.atf, i64 %i.aus
  %i.aut = add i32 %.1523.i.i.i, %.0232425.i.i.i
  %i.auu = sext i32 %i.aut to i64
  %i.auv = shl nsw i64 %i.auu, 1
  %scevgep490.i.i.i = getelementptr i8, ptr %i.b, i64 %i.auv
  %i.auw = xor i32 %.1523.i.i.i, -1
  %i.aux = add i32 %.1235370.i.i.i, %i.auw
  %i.auy = zext i32 %i.aux to i64
  %i.auz = shl nuw nsw i64 %i.auy, 1
  %i.ava = add nuw nsw i64 %i.auz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 2 dereferenceable(1) %scevgep490.i.i.i, i64 %i.ava, i1 false), !tbaa !42
  %i.avb = add i32 %.1235370.i.i.i, %.7422.i.i.i
  %i.avc = sub i32 %i.avb, %.1523.i.i.i
  br label %._crit_edge420.i.i.i

._crit_edge420.i.i.i:                             ; preds = %.lr.ph419.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i
  %i.avd = phi i32 [ %i.auo, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ], [ %i.auq, %.lr.ph419.i.i.i ]
  %.8.lcssa.i.i.i = phi i32 [ %.7422.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit353.i.i.i ], [ %i.avc, %.lr.ph419.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.atf, i32 noundef %i.ada, i32 noundef %.7422.i.i.i, i32 noundef %.8.lcssa.i.i.i)
  %.pre503.i.i.i = load ptr, ptr %i.adh, align 8, !tbaa !31
  br label %bb.fm

bb.fm:                                            ; preds = %._crit_edge420.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i
  %i.ave = phi ptr [ %i.atf, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.pre503.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.1235371.i.i.i = phi i32 [ %.1235.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.1235370.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.9.i.i.i = phi i32 [ %.7422.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %.8.lcssa.i.i.i, %._crit_edge420.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.0231.i.i.i, %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i ], [ %i.avd, %._crit_edge420.i.i.i ]
  %i.avf = trunc i32 %.0.i.i.i to i16
  %indvars.iv.next501.i.i.i = add nuw nsw i64 %indvars.iv500.i.i.i, 1
  %i.avg = getelementptr inbounds nuw [2 x i8], ptr %i.ave, i64 %indvars.iv500.i.i.i
  store i16 %i.avf, ptr %i.avg, align 2, !tbaa !42
  %i.avh = add nsw i32 %.1235371.i.i.i, %.0232425.i.i.i ; 2 uses
  %i.avi = icmp slt i32 %i.avh, %.0255.lcssa.i.i.i
  br i1 %i.avi, label %bb.fg, label %.loopexit.i.i.i, !llvm.loop !105

.loopexit.i.i.i:                                  ; preds = %bb.fm, %bb.ff, %.preheader.i98.i.i
  %.0238.i.i.i = phi i32 [ 0, %bb.ff ], [ %.0250.lcssa.i.i.i, %.preheader.i98.i.i ], [ %.9.i.i.i, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.val316.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !48
  br label %bb.fn

bb.fn:                                            ; preds = %.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i
  %.val316.i.i.i = phi ptr [ %.val316.pre.i.i.i, %.loopexit.i.i.i ], [ null, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i ]
  %.1239.i.i.i = phi i32 [ %.0238.i.i.i, %.loopexit.i.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i ]
  invoke void @uprv_free_78(ptr noundef %.val316.i.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i.i unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.avj = landingpad { ptr, i32 }
          catch ptr null
  %i.avk = extractvalue { ptr, i32 } %i.avj, 0
  tail call void @__clang_call_terminate(ptr %i.avk) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i.i: ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.fq

bb.fp:                                            ; preds = %bb.ei
  %i.avl = landingpad { ptr, i32 }
          catch ptr null
  %i.avm = extractvalue { ptr, i32 } %i.avl, 0
  tail call void @__clang_call_terminate(ptr %i.avm) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.body.i.i

bb.fq:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i.i, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i, %bb.ds
  %.3.i.i.i = phi i32 [ 0, %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i ], [ 0, %bb.ds ], [ %.1239.i.i.i, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.val54.i.pre.pre.i = load ptr, ptr %6, align 8, !tbaa !48
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i: ; preds = %bb.fq, %bb.dd
  %.val54.i.pre.i = phi ptr [ %.pre.i.i93.ph.i.i, %bb.dd ], [ %.val54.i.pre.pre.i, %bb.fq ]
  %.4.i.i.i = phi i32 [ %i.ys, %bb.dd ], [ %.3.i.i.i, %bb.fq ]
  store i32 %i.gp, ptr %i.cp, align 8, !tbaa !29
  br label %bb.fs

bb.fr:                                            ; preds = %.noexc116.i.i, %bb.dx, %._crit_edge.i95.i.i
  %i.avn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.fs:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, %bb.cz, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i
  %.val54.i.i = phi ptr [ %.val54.i.pre.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ %.pre.i.i93.ph.i.i, %bb.cz ], [ %.pre.i.i93.ph.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ null, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i ]
  %.046.i.i = phi i32 [ %.4.i.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ 0, %bb.cz ], [ 0, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i ] ; 9 uses
  invoke void @uprv_free_78(ptr noundef %.val54.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.avo = landingpad { ptr, i32 }
          catch ptr null
  %i.avp = extractvalue { ptr, i32 } %i.avo, 0
  tail call void @__clang_call_terminate(ptr %i.avp) #15
  unreachable

.body.i.i:                                        ; preds = %bb.fr, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.aew, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i ], [ %i.avn, %bb.fr ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %.val.i.i = load ptr, ptr %6, align 8, !tbaa !48
  invoke void @uprv_free_78(ptr noundef %.val.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit118.i.i unwind label %bb.fu

bb.fu:                                            ; preds = %.body.i.i
  %i.avq = landingpad { ptr, i32 }
          catch ptr null
  %i.avr = extractvalue { ptr, i32 } %i.avq, 0
  tail call void @__clang_call_terminate(ptr %i.avr) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit118.i.i: ; preds = %.body.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  resume { ptr, i32 } %.pn.i.i

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i: ; preds = %bb.bm, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.fv

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i: ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pre.i = load i32, ptr %3, align 4, !tbaa !17
  %i.avs = icmp slt i32 %.pre.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br i1 %i.avs, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.avt, align 8, !tbaa !25
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.avu, align 4, !tbaa !24
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.avv, align 4, !tbaa !35
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !26 ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.avx, ptr %i.avy, align 8, !tbaa !27
  store i32 %i.avx, ptr %i.df, align 4, !tbaa !30
  store i32 0, ptr %i.cp, align 8, !tbaa !29
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !31
  tail call void @uprv_free_78(ptr noundef %i.awa)
  store ptr null, ptr %i.avz, align 8, !tbaa !31
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.fw:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i
  %i.awb = icmp ne i32 %2, 1                      ; 2 uses
  %i.awc = and i32 %.046.i.i, 1
  %.not103.i = icmp eq i32 %i.awc, 0
  %or.cond113.i = or i1 %i.awb, %.not103.i
  br i1 %or.cond113.i, label %bb.fx, label %.thread132.i

.thread132.i:                                     ; preds = %bb.fw
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !31
  %i.awf = add nsw i32 %.046.i.i, 1               ; 2 uses
  %i.awg = sext i32 %.046.i.i to i64
  %i.awh = getelementptr inbounds [2 x i8], ptr %i.awe, i64 %i.awg
  store i16 -18, ptr %i.awh, align 2, !tbaa !42
  %i.awi = shl nsw i32 %i.awf, 1
  br label %bb.ge

bb.fx:                                            ; preds = %bb.fw
  %i.awj = shl nsw i32 %.046.i.i, 1               ; 5 uses
  %i.awk = icmp eq i32 %2, 0
  br i1 %i.awk, label %bb.fy, label %bb.gd

bb.fy:                                            ; preds = %bb.fx
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !35 ; 4 uses
  %i.awn = xor i32 %i.awm, %.046.i.i
  %i.awo = and i32 %i.awn, 1
  %.not108.i = icmp eq i32 %i.awo, 0
  %.pre242.i.a = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.pre245.i.a = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28 ; 2 uses
  br i1 %.not108.i, label %._crit_edge244.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.awp = add nsw i32 %i.awm, 1
  store i32 %i.awp, ptr %i.awl, align 4, !tbaa !35
  %i.awq = sext i32 %i.awm to i64
  %i.awr = getelementptr inbounds [4 x i8], ptr %.pre242.i.a, i64 %i.awq
  store i32 %.pre245.i.a, ptr %i.awr, align 4, !tbaa !34
  %.pre243.i.a = load i32, ptr %i.awl, align 4, !tbaa !35
  br label %._crit_edge244.i

._crit_edge244.i:                                 ; preds = %bb.fz, %bb.fy
  %i.aws = phi i32 [ %.pre243.i.a, %bb.fz ], [ %i.awm, %bb.fy ] ; 3 uses
  %i.awt = sext i32 %i.aws to i64
  %i.awu = getelementptr [4 x i8], ptr %.pre242.i.a, i64 %i.awt ; 3 uses
  %i.awv = getelementptr i8, ptr %i.awu, i64 -4
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !34
  %.not109.i = icmp eq i32 %i.aww, %.pre245.i.a
  %.pre246.i = load i32, ptr %i.df, align 4, !tbaa !30 ; 2 uses
  br i1 %.not109.i, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %._crit_edge244.i
  %i.awx = getelementptr i8, ptr %i.awu, i64 -8
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !34
  %.not110.i = icmp eq i32 %i.awy, %.pre246.i
  br i1 %.not110.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %._crit_edge244.i
  %i.awz = add nsw i32 %i.aws, 1
  store i32 %i.awz, ptr %i.awl, align 4, !tbaa !35
  store i32 %.pre246.i, ptr %i.awu, align 4, !tbaa !34
  %i.axa = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28
  %i.axb = load i32, ptr %i.awl, align 4, !tbaa !35 ; 2 uses
  %i.axc = add nsw i32 %i.axb, 1
  store i32 %i.axc, ptr %i.awl, align 4, !tbaa !35
  %i.axd = sext i32 %i.axb to i64
  %i.axe = getelementptr inbounds [4 x i8], ptr %.pre242.i.a, i64 %i.axd
  store i32 %i.axa, ptr %i.axe, align 4, !tbaa !34
  %.pre247.i.a = load i32, ptr %i.awl, align 4, !tbaa !35
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.axf = phi i32 [ %.pre247.i.a, %bb.gb ], [ %i.aws, %bb.ga ]
  %i.axg = add i32 %i.axf, %.046.i.i
  %i.axh = shl i32 %i.axg, 1
  br label %bb.gr

bb.gd:                                            ; preds = %bb.fx
  br i1 %i.awb, label %bb.gk, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.thread132.i
  %.094131134.i = phi i32 [ %i.awf, %.thread132.i ], [ %.046.i.i, %bb.gd ]
  %i.axi = phi i32 [ %i.awi, %.thread132.i ], [ %i.awj, %bb.gd ] ; 2 uses
  %i.axj = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !35 ; 4 uses
  %i.axm = sext i32 %i.axl to i64                 ; 2 uses
  %i.axn = getelementptr [4 x i8], ptr %i.axj, i64 %i.axm ; 3 uses
  %i.axo = getelementptr i8, ptr %i.axn, i64 -4
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !34 ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !28 ; 2 uses
  %.not105.i = icmp eq i32 %i.axp, %i.axr
  %.pre234.i = load i32, ptr %i.df, align 4, !tbaa !30 ; 3 uses
  br i1 %.not105.i, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.axs = getelementptr i8, ptr %i.axn, i64 -8
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !34
  %.not106.i = icmp eq i32 %i.axt, %.pre234.i
  br i1 %.not106.i, label %bb.gj, label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.not107.i = icmp eq i32 %i.axp, %.pre234.i
  br i1 %.not107.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.axu = add nsw i32 %i.axl, 1
  store i32 %i.axu, ptr %i.axk, align 4, !tbaa !35
  store i32 %.pre234.i, ptr %i.axn, align 4, !tbaa !34
  %.pre235.i = load i32, ptr %i.axq, align 4, !tbaa !28
  %.pre236.i = load i32, ptr %i.axk, align 4, !tbaa !35 ; 2 uses
  %.pre249.i = sext i32 %.pre236.i to i64
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.pre-phi.i = phi i64 [ %.pre249.i, %bb.gh ], [ %i.axm, %bb.gg ]
  %i.axv = phi i32 [ %.pre236.i, %bb.gh ], [ %i.axl, %bb.gg ]
  %i.axw = phi i32 [ %.pre235.i, %bb.gh ], [ %i.axr, %bb.gg ]
  %i.axx = add nsw i32 %i.axv, 1
  store i32 %i.axx, ptr %i.axk, align 4, !tbaa !35
  %i.axy = getelementptr inbounds [4 x i8], ptr %i.axj, i64 %.pre-phi.i
  store i32 %i.axw, ptr %i.axy, align 4, !tbaa !34
  %.pre237.i = load i32, ptr %i.axk, align 4, !tbaa !35
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gf
  %i.axz = phi i32 [ %.pre237.i, %bb.gi ], [ %i.axl, %bb.gf ]
  %i.aya = shl nsw i32 %i.axz, 2
  %i.ayb = add nsw i32 %i.aya, %i.axi
  br label %bb.gr

bb.gk:                                            ; preds = %bb.gd
  %i.ayc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !35 ; 5 uses
  %i.aye = add nsw i32 %i.ayd, %i.awj
  %i.ayf = and i32 %i.aye, 3                      ; 2 uses
  %i.ayg = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 5 uses
  switch i32 %i.ayf, label %default.unreachable [
    i32 0, label %bb.gl
    i32 3, label %bb.gn
    i32 2, label %._crit_edge.i
    i32 1, label %..lr.ph.i_crit_edge
  ]

..lr.ph.i_crit_edge:                              ; preds = %bb.gk
  %.pre239.i.pre = load i32, ptr %i.df, align 4, !tbaa !30
  br label %.lr.ph.i

bb.gl:                                            ; preds = %bb.gk
end_hunk_2
