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
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.ca
  %i.oc = shl nuw nsw i32 %.promoted184.i.i, 2
  %i.od = zext nneg i32 %i.oc to i64              ; 2 uses
  %i.oe = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.od) #14
          to label %.noexc86.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

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
          to label %.noexc87.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87.i.i:                                     ; preds = %bb.ce
  %i.ou = invoke noalias ptr @uprv_malloc_78(i64 noundef %.pre14.i122.i.i.i) #14
          to label %.noexc88.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

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
  %indvars.iv.next.i.i84.i.i = add nuw nsw i64 %indvars.iv.i.i83.i.i, 4 ; 2 uses
  %i.rr = icmp samesign uge i64 %indvars.iv.next.i.i84.i.i, %i.op
  %or.cond.not.i.i.i.i = select i1 %i.rq, i1 true, i1 %i.rr
  br i1 %or.cond.not.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, label %bb.ck, !llvm.loop !83

_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i: ; preds = %bb.ck
  br i1 %i.rq, label %bb.cl, label %.critedge.thread.i.i.i

bb.cl:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i
  %.not40.i.not.i.i.i = icmp ult i32 %.099190.i.i.i, %i.rm
  br i1 %.not40.i.not.i.i.i, label %.lr.ph.i.i85.i.i, label %.critedge.thread279.i.i.i

.lr.ph.i.i85.i.i:                                 ; preds = %bb.cl, %.loopexit36.i.i.i.i
  %.02241.i.in.i.i.i = phi i32 [ %.2.i.i.i.i, %.loopexit36.i.i.i.i ], [ %.099190.i.i.i, %bb.cl ] ; 2 uses
  %.02241.i.i.i.i = add nsw i32 %.02241.i.in.i.i.i, 1 ; 5 uses
  %i.rs = sext i32 %.02241.i.i.i.i to i64         ; 2 uses
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !34
  %i.rv = icmp eq i32 %i.ru, %i.pe
  br i1 %i.rv, label %.preheader.i.i.i.i, label %.loopexit36.i.i.i.i

bb.cm:                                            ; preds = %.preheader.i.i.i.i
  %indvars.iv.next.i128.i.i.i = add nuw nsw i64 %indvars.iv.i127.i.i.i, 1 ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %indvars.iv.next.i128.i.i.i, %i.rn
end_hunk_0
begin_hunk_1_@umutablecptrie_buildImmutable_78:bb.a
  %.0234423.i.i.i = phi i32 [ 32, %.lr.ph427.i.i.i ], [ %.1235371.i.i.i, %bb.fm ] ; 2 uses
  %.7422.i.i.i = phi i32 [ %.0250.lcssa.i.i.i, %.lr.ph427.i.i.i ], [ %.9.i.i.i, %bb.fm ] ; 10 uses
  %i.atg = sub nsw i32 %.0255.lcssa.i.i.i, %.0232425.i.i.i ; 6 uses
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

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc87.i.i, %bb.ce, %.noexc116.i.i, %bb.dx, %._crit_edge.i95.i.i, %bb.cx, %.noexc.i.i, %bb.ca
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  %.val.pre.i.i = load ptr, ptr %6, align 8, !tbaa !48
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i
  %.val.i.i = phi ptr [ %.val.pre.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aeg, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp348, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aew, %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i ]
  invoke void @uprv_free_78(ptr noundef %.val.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i unwind label %bb.fr

bb.fr:                                            ; preds = %.body.i.i
  %i.avn = landingpad { ptr, i32 }
          catch ptr null
  %i.avo = extractvalue { ptr, i32 } %i.avn, 0
  tail call void @__clang_call_terminate(ptr %i.avo) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit.i.i: ; preds = %.body.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.fs:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, %bb.cz, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i
  %.val54.i.i = phi ptr [ %.val54.i.pre.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ %.pre.i.i93.ph.i.i, %bb.cz ], [ %.pre.i.i93.ph.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ null, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i ]
  %.046.i.i = phi i32 [ %.4.i.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ 0, %bb.cz ], [ 0, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i ], [ 0, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i ] ; 9 uses
  invoke void @uprv_free_78(ptr noundef %.val54.i.i)
          to label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.avp = landingpad { ptr, i32 }
          catch ptr null
  %i.avq = extractvalue { ptr, i32 } %i.avp, 0
  tail call void @__clang_call_terminate(ptr %i.avq) #15
  unreachable

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i: ; preds = %bb.bm, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i
  store i32 7, ptr %3, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.fu

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i: ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pre.i = load i32, ptr %3, align 4, !tbaa !17
  %i.avr = icmp slt i32 %.pre.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br i1 %i.avr, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i, %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.avs, align 8, !tbaa !25
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.avt, align 4, !tbaa !24
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.avu, align 4, !tbaa !35
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !26 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.avw, ptr %i.avx, align 8, !tbaa !27
  store i32 %i.avw, ptr %i.df, align 4, !tbaa !30
  store i32 0, ptr %i.cp, align 8, !tbaa !29
  %i.avy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !31
  tail call void @uprv_free_78(ptr noundef %i.avz)
  store ptr null, ptr %i.avy, align 8, !tbaa !31
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie5buildE11UCPTrieType17UCPTrieValueWidthR10UErrorCode.exit

bb.fv:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.i
  %i.awa = icmp ne i32 %2, 1                      ; 2 uses
  %i.awb = and i32 %.046.i.i, 1
  %.not103.i = icmp eq i32 %i.awb, 0
  %or.cond113.i = or i1 %i.awa, %.not103.i
  br i1 %or.cond113.i, label %bb.fw, label %.thread132.i

.thread132.i:                                     ; preds = %bb.fv
  %i.awc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !31
  %i.awe = add nsw i32 %.046.i.i, 1               ; 2 uses
  %i.awf = sext i32 %.046.i.i to i64
  %i.awg = getelementptr inbounds [2 x i8], ptr %i.awd, i64 %i.awf
  store i16 -18, ptr %i.awg, align 2, !tbaa !42
  %i.awh = shl nsw i32 %i.awe, 1
  br label %bb.gd

bb.fw:                                            ; preds = %bb.fv
  %i.awi = shl nsw i32 %.046.i.i, 1               ; 5 uses
  %i.awj = icmp eq i32 %2, 0
  br i1 %i.awj, label %bb.fx, label %bb.gc

bb.fx:                                            ; preds = %bb.fw
  %i.awk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !35 ; 4 uses
  %i.awm = xor i32 %i.awl, %.046.i.i
  %i.awn = and i32 %i.awm, 1
  %.not108.i = icmp eq i32 %i.awn, 0
  %.pre243.i.a = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.pre246.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28 ; 2 uses
  br i1 %.not108.i, label %._crit_edge245.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.awo = add nsw i32 %i.awl, 1
  store i32 %i.awo, ptr %i.awk, align 4, !tbaa !35
  %i.awp = sext i32 %i.awl to i64
  %i.awq = getelementptr inbounds [4 x i8], ptr %.pre243.i.a, i64 %i.awp
  store i32 %.pre246.i, ptr %i.awq, align 4, !tbaa !34
  %.pre244.i = load i32, ptr %i.awk, align 4, !tbaa !35
  br label %._crit_edge245.i

._crit_edge245.i:                                 ; preds = %bb.fy, %bb.fx
  %i.awr = phi i32 [ %.pre244.i, %bb.fy ], [ %i.awl, %bb.fx ] ; 3 uses
  %i.aws = sext i32 %i.awr to i64
  %i.awt = getelementptr [4 x i8], ptr %.pre243.i.a, i64 %i.aws ; 3 uses
  %i.awu = getelementptr i8, ptr %i.awt, i64 -4
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !34
  %.not109.i = icmp eq i32 %i.awv, %.pre246.i
  %.pre247.i = load i32, ptr %i.df, align 4, !tbaa !30 ; 2 uses
  br i1 %.not109.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %._crit_edge245.i
  %i.aww = getelementptr i8, ptr %i.awt, i64 -8
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !34
  %.not110.i = icmp eq i32 %i.awx, %.pre247.i
  br i1 %.not110.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %._crit_edge245.i
  %i.awy = add nsw i32 %i.awr, 1
  store i32 %i.awy, ptr %i.awk, align 4, !tbaa !35
  store i32 %.pre247.i, ptr %i.awt, align 4, !tbaa !34
  %i.awz = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28
  %i.axa = load i32, ptr %i.awk, align 4, !tbaa !35 ; 2 uses
  %i.axb = add nsw i32 %i.axa, 1
  store i32 %i.axb, ptr %i.awk, align 4, !tbaa !35
  %i.axc = sext i32 %i.axa to i64
  %i.axd = getelementptr inbounds [4 x i8], ptr %.pre243.i.a, i64 %i.axc
  store i32 %i.awz, ptr %i.axd, align 4, !tbaa !34
  %.pre248.i = load i32, ptr %i.awk, align 4, !tbaa !35
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.axe = phi i32 [ %.pre248.i, %bb.ga ], [ %i.awr, %bb.fz ]
  %i.axf = add i32 %i.axe, %.046.i.i
  %i.axg = shl i32 %i.axf, 1
  br label %bb.gq

bb.gc:                                            ; preds = %bb.fw
  br i1 %i.awa, label %bb.gj, label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %.thread132.i
  %.094131134.i = phi i32 [ %i.awe, %.thread132.i ], [ %.046.i.i, %bb.gc ]
  %i.axh = phi i32 [ %i.awh, %.thread132.i ], [ %i.awi, %bb.gc ] ; 2 uses
  %i.axi = load ptr, ptr %i.gr, align 8, !tbaa !32 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.axk = load i32, ptr %i.axj, align 4, !tbaa !35 ; 4 uses
  %i.axl = sext i32 %i.axk to i64                 ; 2 uses
  %i.axm = getelementptr [4 x i8], ptr %i.axi, i64 %i.axl ; 3 uses
  %i.axn = getelementptr i8, ptr %i.axm, i64 -4
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !34 ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !28 ; 2 uses
  %.not105.i = icmp eq i32 %i.axo, %i.axq
  %.pre235.i = load i32, ptr %i.df, align 4, !tbaa !30 ; 3 uses
  br i1 %.not105.i, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.axr = getelementptr i8, ptr %i.axm, i64 -8
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !34
  %.not106.i = icmp eq i32 %i.axs, %.pre235.i
  br i1 %.not106.i, label %bb.gi, label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.not107.i = icmp eq i32 %i.axo, %.pre235.i
  br i1 %.not107.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.axt = add nsw i32 %i.axk, 1
  store i32 %i.axt, ptr %i.axj, align 4, !tbaa !35
  store i32 %.pre235.i, ptr %i.axm, align 4, !tbaa !34
  %.pre236.i = load i32, ptr %i.axp, align 4, !tbaa !28
  %.pre237.i = load i32, ptr %i.axj, align 4, !tbaa !35 ; 2 uses
  %.pre250.i = sext i32 %.pre237.i to i64
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pre-phi.i = phi i64 [ %.pre250.i, %bb.gg ], [ %i.axl, %bb.gf ]
  %i.axu = phi i32 [ %.pre237.i, %bb.gg ], [ %i.axk, %bb.gf ]
  %i.axv = phi i32 [ %.pre236.i, %bb.gg ], [ %i.axq, %bb.gf ]
  %i.axw = add nsw i32 %i.axu, 1
  store i32 %i.axw, ptr %i.axj, align 4, !tbaa !35
  %i.axx = getelementptr inbounds [4 x i8], ptr %i.axi, i64 %.pre-phi.i
  store i32 %i.axv, ptr %i.axx, align 4, !tbaa !34
  %.pre238.i = load i32, ptr %i.axj, align 4, !tbaa !35
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ge
  %i.axy = phi i32 [ %.pre238.i, %bb.gh ], [ %i.axk, %bb.ge ]
  %i.axz = shl nsw i32 %i.axy, 2
  %i.aya = add nsw i32 %i.axz, %i.axh
  br label %bb.gq

bb.gj:                                            ; preds = %bb.gc
  %i.ayb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !35 ; 5 uses
  %i.ayd = add nsw i32 %i.ayc, %i.awi
  %i.aye = and i32 %i.ayd, 3                      ; 2 uses
end_hunk_1
