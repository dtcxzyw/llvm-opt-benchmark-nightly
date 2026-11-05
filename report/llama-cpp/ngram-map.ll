Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ngram-map?download=true
inline.NumInlined: 313
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_:bb.a
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit419
  %.0341596 = phi i64 [ %.0341, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit419 ], [ %.0341592, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %.sroa.0.0595 = phi ptr [ %.sroa.0.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit419 ], [ %.sroa.19.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 7 uses
  %.sroa.19.0594 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit419 ], [ %.sroa.19.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 6 uses
  %.sroa.28.0593 = phi ptr [ %.sroa.28.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit419 ], [ %.sroa.28.3, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.0341596 ; 2 uses
  %.not.i410 = icmp eq ptr %.sroa.19.0594, %.sroa.28.0593
  br i1 %.not.i410, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.av = load i32, ptr %i.au, align 4, !tbaa !14
  store i32 %i.av, ptr %.sroa.19.0594, align 4, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit419

bb.m:                                             ; preds = %.lr.ph
  %i.aw = ptrtoint ptr %.sroa.19.0594 to i64
  %i.ax = ptrtoint ptr %.sroa.0.0595 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i411

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #13
          to label %.noexc417 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc417:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i411: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i412 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i412, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i413 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i413)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #12
          to label %.noexc418 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc418:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i411
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  %i.bi = load i32, ptr %i.au, align 4, !tbaa !14
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !14
  %i.bj = icmp sgt i64 %i.ay, 0
  br i1 %i.bj, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i414

bb.o:                                             ; preds = %.noexc418
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %.sroa.0.0595, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i414

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i414: ; preds = %bb.o, %.noexc418
  %.not.i17.i.i415 = icmp eq ptr %.sroa.0.0595, null
  br i1 %.not.i17.i.i415, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i416, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i414
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0595, i64 noundef %i.ay) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i416

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i416: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i414
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit419

_ZNSt6vectorIiSaIiEE9push_backERKi.exit419:       ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i416
  %.sroa.28.5 = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i416 ], [ %.sroa.28.0593, %bb.l ] ; 2 uses
  %.pn545 = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i416 ], [ %.sroa.19.0594, %bb.l ]
  %.sroa.0.5 = phi ptr [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i416 ], [ %.sroa.0.0595, %bb.l ] ; 2 uses
  %.sroa.19.3 = getelementptr inbounds nuw i8, ptr %.pn545, i64 4 ; 2 uses
  %.0341 = add i64 %.0341596, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %.0341, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g
  %.sroa.28.4 = phi ptr [ %i.as, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.28.0.lcssa, %bb.g ] ; 23 uses
  %.pn = phi ptr [ %i.aq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.19.0.lcssa, %bb.g ]
  %.sroa.0.4 = phi ptr [ %i.ap, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.0.lcssa, %bb.g ] ; 36 uses
  %.sroa.19.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !32 ; 5 uses
  %i.bn = icmp ugt i64 %i.bm, %i.l
  br i1 %i.bn, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.7, i32 noundef 257, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %i.bm, i64 noundef %i.l) #13
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 2 uses
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.bt = icmp ult i16 %.fr, 4
  br i1 %i.bt, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.z, 65532
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cn, %.lr.ph.i ] ; 5 uses
  %.071.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.cm, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bu = mul i32 %.071.i, -1640531535
  %i.bv = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !14
  %i.bx = add i32 %i.bw, %i.bu
  %i.by = mul i32 %i.bx, -1640531535
  %i.bz = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14
  %i.cc = add i32 %i.cb, %i.by
  %i.cd = mul i32 %i.cc, -1640531535
  %i.ce = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !14
  %i.ch = add i32 %i.cg, %i.cd
  %i.ci = mul i32 %i.ch, -1640531535
  %i.cj = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = add i32 %i.cl, %i.ci                    ; 3 uses
  %i.cn = add nuw nsw i64 %.02.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !67

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.02.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cn, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ]
  %.071.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.cm, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod929 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod929)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.02.i.epil = phi i64 [ %i.cs, %.lr.ph.i.epil ], [ %.02.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.071.i.epil = phi i32 [ %i.cr, %.lr.ph.i.epil ], [ %.071.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.co = mul i32 %.071.i.epil, -1640531535
  %i.cp = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i.epil
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !14
  %i.cr = add i32 %i.cq, %i.co                    ; 2 uses
  %i.cs = add nuw nsw i64 %.02.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !68

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit: ; preds = %.lr.ph.i.epil, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa
  %.lcssa923 = phi i32 [ %i.cm, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ], [ %i.cr, %.lr.ph.i.epil ]
  %i.ct = zext i32 %.lcssa923 to i64
  br label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit: ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, %bb.t
  %.07.lcssa.i = phi i64 [ 0, %bb.t ], [ %i.ct, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit ]
  %i.cu = ptrtoint ptr %i.br to i64
  %i.cv = ptrtoint ptr %i.bp to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 2
  %i.cy = urem i64 %.07.lcssa.i, %i.cx            ; 2 uses
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cy
  %i.db = load i32, ptr %i.da, align 4, !tbaa !14 ; 3 uses
  %.not = icmp eq i32 %i.db, 0
  br i1 %.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit
  %i.dc = zext i32 %i.db to i64                   ; 3 uses
  %i.dd = zext i16 %.fr664 to i64
  %i.de = xor i64 %i.dd, -1
  %i.df = add nsw i64 %i.ad, %i.de
  %i.dg = icmp ugt i64 %i.df, %i.dc
  br i1 %i.dg, label %.preheader568, label %.thread

.preheader568:                                    ; preds = %bb.u
  br i1 %.not543, label %._crit_edge603, label %.lr.ph602

.lr.ph602:                                        ; preds = %.preheader568
  %i.dh = load ptr, ptr %1, align 8, !tbaa !12
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dc
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph602
  %.0335600 = phi i64 [ 0, %.lr.ph602 ], [ %i.dl, %bb.v ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.0335600
  %i.di = load i32, ptr %gep, align 4, !tbaa !14
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0335600
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !14
  %.not373 = icmp eq i32 %i.di, %i.dk             ; 2 uses
  %i.dl = add nuw nsw i64 %.0335600, 1            ; 2 uses
  %exitcond690.not = icmp ne i64 %i.dl, %i.z
  %or.cond.not = select i1 %.not373, i1 %exitcond690.not, i1 false
  br i1 %or.cond.not, label %bb.v, label %._crit_edge603, !llvm.loop !69

._crit_edge603:                                   ; preds = %bb.v, %.preheader568
  %.not374.lcssa = phi i1 [ true, %.preheader568 ], [ %.not373, %bb.v ] ; 2 uses
  %i.dm = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %._crit_edge603
  %i.dn = icmp sgt i32 %i.dm, 4
  br i1 %i.dn, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.do = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.dp = zext i1 %.not374.lcssa to i32
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.do, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i32 noundef %i.cz, i32 noundef %i.db, i32 noundef %i.dp)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y, %bb.w
  br i1 %.not374.lcssa, label %.critedge.thread, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.z
  %.pre = load i64, ptr %i.bl, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit, %bb.u, %bb.s
  %i.dq = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.bm, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit ], [ %i.bm, %bb.u ], [ %i.bm, %bb.s ] ; 4 uses
  %i.dr = add nuw nsw i32 %i.p, 1
  %i.ds = add nuw nsw i32 %i.dr, %i.r
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = icmp ugt i64 %i.dq, %i.dt
  %i.dv = zext i16 %.fr664 to i64                 ; 2 uses
  br i1 %i.du, label %bb.aa, label %.thread518

bb.aa:                                            ; preds = %.thread
  %i.dw = add nuw nsw i64 %i.dv, %i.z
  %i.dx = xor i64 %i.dw, -1
  %i.dy = add i64 %i.dq, %i.dx                    ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !38
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ugt i64 %i.dy, %i.eb
  br i1 %i.ec, label %.preheader565.lr.ph, label %.thread518

.preheader565.lr.ph:                              ; preds = %bb.aa
  br i1 %.not543, label %.critedge.thread, label %.preheader565.lr.ph.split

.preheader565.lr.ph.split:                        ; preds = %.preheader565.lr.ph
  %i.ed = load ptr, ptr %1, align 8, !tbaa !12
  br label %.preheader565

.preheader565:                                    ; preds = %.preheader565.lr.ph.split, %bb.ad
  %.0334612 = phi i64 [ %i.dy, %.preheader565.lr.ph.split ], [ %i.ek, %bb.ad ] ; 3 uses
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %.0334612
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  %i.ef = add nuw nsw i64 %.0332608, 1            ; 2 uses
  %exitcond691.not = icmp eq i64 %i.ef, %i.z
  br i1 %exitcond691.not, label %.critedge.thread, label %bb.ac, !llvm.loop !70

bb.ac:                                            ; preds = %.preheader565, %bb.ab
  %.0332608 = phi i64 [ 0, %.preheader565 ], [ %i.ef, %bb.ab ] ; 3 uses
  %i.eg = getelementptr [4 x i8], ptr %i.ee, i64 %.0332608
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !14
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0332608
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !14
  %.not375 = icmp eq i32 %i.eh, %i.ej
  br i1 %.not375, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = add i64 %.0334612, -1                   ; 2 uses
  %i.el = icmp ugt i64 %i.ek, %i.eb
  br i1 %i.el, label %.preheader565, label %.thread518, !llvm.loop !71

.thread518:                                       ; preds = %bb.ad, %.thread, %bb.aa
  %i.em = xor i64 %i.dv, -1
  %i.en = add nsw i64 %i.ad, %i.em                ; 4 uses
  %i.eo = icmp ugt i64 %i.en, %i.dq
  br i1 %i.eo, label %.lr.ph619, label %.critedge.thread845

.lr.ph619:                                        ; preds = %.thread518
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !38
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  br i1 %.not543, label %.lr.ph619.split, label %.lr.ph619.split.us

.lr.ph619.split.us:                               ; preds = %.lr.ph619, %bb.ag
  %.0331618.us = phi i64 [ %i.ey, %bb.ag ], [ %i.en, %.lr.ph619 ] ; 4 uses
  %i.es = icmp ugt i64 %.0331618.us, %i.er
  br i1 %i.es, label %.preheader563.us, label %.critedge.thread845

bb.ae:                                            ; preds = %bb.af
  %i.et = add nuw nsw i64 %.0329614.us, 1         ; 2 uses
  %exitcond692.not = icmp eq i64 %i.et, %i.z
  br i1 %exitcond692.not, label %.critedge.thread, label %bb.af, !llvm.loop !72

bb.af:                                            ; preds = %.preheader563.us, %bb.ae
  %.0329614.us = phi i64 [ 0, %.preheader563.us ], [ %i.et, %bb.ae ] ; 3 uses
  %i.eu = getelementptr [4 x i8], ptr %i.fb, i64 %.0329614.us
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !14
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0329614.us
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !14
  %.not377.us = icmp eq i32 %i.ev, %i.ex
  br i1 %.not377.us, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = add i64 %.0331618.us, -1                ; 2 uses
  %i.ez = icmp ugt i64 %i.ey, %i.dq
  br i1 %i.ez, label %.lr.ph619.split.us, label %.critedge.thread845, !llvm.loop !73

.preheader563.us:                                 ; preds = %.lr.ph619.split.us
  %i.fa = load ptr, ptr %1, align 8, !tbaa !12
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %.0331618.us
  br label %bb.af

.lr.ph619.split:                                  ; preds = %.lr.ph619
  %i.fc = icmp ugt i64 %i.en, %i.er
  br i1 %i.fc, label %.critedge.thread, label %.critedge.thread845

.critedge.thread:                                 ; preds = %bb.ab, %bb.ae, %.lr.ph619.split, %.preheader565.lr.ph, %bb.z
  %.10527 = phi i64 [ %.0331618.us, %bb.ae ], [ %i.en, %.lr.ph619.split ], [ %i.dc, %bb.z ], [ %i.dy, %.preheader565.lr.ph ], [ %.0334612, %bb.ab ] ; 3 uses
  %i.fd = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %.critedge.thread
  %i.fe = icmp sgt i32 %i.fd, 4
  br i1 %i.fe, label %bb.ai, label %.critedge.thread845

bb.ai:                                            ; preds = %bb.ah
  %i.ff = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.fg = ptrtoint ptr %.sroa.19.2 to i64
  %i.fh = ptrtoint ptr %.sroa.0.4 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = ashr exact i64 %i.fi, 2
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ff, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %i.l, i32 noundef %i.p, i32 noundef %i.r, i64 noundef %i.fj, i32 noundef %2, i64 noundef %.10527)
          to label %.critedge.thread845 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge.thread845:                              ; preds = %bb.ag, %.lr.ph619.split.us, %.lr.ph619.split, %.thread518, %bb.ah, %bb.aj
  %.not379530 = phi i1 [ false, %bb.ah ], [ false, %bb.aj ], [ true, %.lr.ph619.split ], [ true, %.thread518 ], [ true, %.lr.ph619.split.us ], [ true, %bb.ag ]
  %.10528 = phi i64 [ %.10527, %bb.ah ], [ %.10527, %bb.aj ], [ 0, %.lr.ph619.split ], [ 0, %.thread518 ], [ 0, %.lr.ph619.split.us ], [ 0, %bb.ag ] ; 7 uses
  %i.fk = load ptr, ptr %i.bo, align 8, !tbaa !35 ; 5 uses
  %i.fl = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 3 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %.critedge.thread845
  %i.fn = load i64, ptr %i.bl, align 8, !tbaa !32 ; 4 uses
  %i.fo = add nuw nsw i32 %i.p, 1
  %i.fp = add nuw nsw i32 %i.fo, %i.r
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = icmp ugt i64 %i.fn, %i.fq
  %i.fs = zext i16 %.fr664 to i64                 ; 2 uses
  br i1 %i.fr, label %bb.al, label %.loopexit562

bb.al:                                            ; preds = %bb.ak
  %i.ft = add nuw nsw i64 %i.fs, %i.z
  %i.fu = xor i64 %i.ft, -1
  %i.fv = add i64 %i.fn, %i.fu                    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !38 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp ugt i64 %i.fv, %i.fy
  br i1 %i.fz, label %.lr.ph623, label %.loopexit562

.lr.ph623:                                        ; preds = %bb.al
  %i.ga = ptrtoint ptr %i.fl to i64
  %i.gb = ptrtoint ptr %i.fk to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 2
  %xtraiter930 = and i64 %i.z, 3                  ; 3 uses
  %i.ge = icmp ult i16 %.fr, 4
  %unroll_iter935 = and i64 %i.z, 65532
  %lcmp.mod932.not = icmp eq i64 %xtraiter930, 0
  %lcmp.mod934 = icmp ne i64 %xtraiter930, 0
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph623, %bb.ap
  %i.gf = phi i32 [ %i.fx, %.lr.ph623 ], [ %i.hm, %bb.ap ]
  %.0328621 = phi i64 [ %i.fv, %.lr.ph623 ], [ %i.hn, %bb.ap ] ; 3 uses
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427, label %.lr.ph.i422

.lr.ph.i422:                                      ; preds = %bb.am
  %.val = load ptr, ptr %1, align 8
  %i.gg = getelementptr [4 x i8], ptr %.val, i64 %.0328621 ; 5 uses
  br i1 %i.ge, label %.epil.preheader, label %.lr.ph.i422.new

.lr.ph.i422.new:                                  ; preds = %.lr.ph.i422, %.lr.ph.i422.new
end_hunk_0
