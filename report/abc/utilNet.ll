Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilNet?download=true
inline.NumInlined: 220
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Tn_SolveProblem:bb.a
  %i.ahp = sext i32 %i.agk to i64
  %i.ahq = getelementptr inbounds [4 x i8], ptr %i.ahm, i64 %i.ahp
  store i32 %i.agq, ptr %i.ahq, align 4, !tbaa !10
  br label %bb.bg

bb.bg:                                            ; preds = %tn_vi_push.exit153.i.i, %bb.ay, %tn_vi_push.exit141.i.i, %tn_vi_push.exit.i.i41, %bb.ap, %.lr.ph180.i.i
  %i.ahr = phi ptr [ %i.abu, %bb.ap ], [ %i.adk, %tn_vi_push.exit.i.i41 ], [ %i.abu, %bb.ay ], [ %i.ahk, %tn_vi_push.exit153.i.i ], [ %i.aer, %tn_vi_push.exit141.i.i ], [ %i.abu, %.lr.ph180.i.i ] ; 2 uses
  %i.ahs = phi i32 [ %i.abv, %bb.ap ], [ %i.adl, %tn_vi_push.exit.i.i41 ], [ %i.abv, %bb.ay ], [ %i.ahn, %tn_vi_push.exit153.i.i ], [ %i.aes, %tn_vi_push.exit141.i.i ], [ %i.abv, %.lr.ph180.i.i ] ; 2 uses
  %i.aht = phi ptr [ %i.abw, %bb.ap ], [ %i.adk, %tn_vi_push.exit.i.i41 ], [ %i.abw, %bb.ay ], [ %i.ahl, %tn_vi_push.exit153.i.i ], [ %i.aet, %tn_vi_push.exit141.i.i ], [ %i.abw, %.lr.ph180.i.i ] ; 2 uses
  %i.ahu = phi i32 [ %i.abx, %bb.ap ], [ %i.adl, %tn_vi_push.exit.i.i41 ], [ %i.abx, %bb.ay ], [ %i.ahn, %tn_vi_push.exit153.i.i ], [ %i.aeu, %tn_vi_push.exit141.i.i ], [ %i.abx, %.lr.ph180.i.i ] ; 2 uses
  %i.ahv = phi ptr [ %i.aby, %bb.ap ], [ %i.adk, %tn_vi_push.exit.i.i41 ], [ %i.aby, %bb.ay ], [ %i.ahm, %tn_vi_push.exit153.i.i ], [ %i.aet, %tn_vi_push.exit141.i.i ], [ %i.aby, %.lr.ph180.i.i ] ; 2 uses
  %i.ahw = phi ptr [ %i.abz, %bb.ap ], [ %i.adk, %tn_vi_push.exit.i.i41 ], [ %i.abz, %bb.ay ], [ %i.ahm, %tn_vi_push.exit153.i.i ], [ %i.aet, %tn_vi_push.exit141.i.i ], [ %i.abz, %.lr.ph180.i.i ] ; 2 uses
  %i.ahx = phi i32 [ %i.aca, %bb.ap ], [ %i.adl, %tn_vi_push.exit.i.i41 ], [ %i.aca, %bb.ay ], [ %i.ahn, %tn_vi_push.exit153.i.i ], [ %i.aeu, %tn_vi_push.exit141.i.i ], [ %i.aca, %.lr.ph180.i.i ] ; 2 uses
  %i.ahy = phi i32 [ %i.acb, %bb.ap ], [ %i.adm, %tn_vi_push.exit.i.i41 ], [ %i.acb, %bb.ay ], [ %i.aho, %tn_vi_push.exit153.i.i ], [ %i.aev, %tn_vi_push.exit141.i.i ], [ %i.acb, %.lr.ph180.i.i ] ; 2 uses
  %.1118.i.i = add nuw nsw i32 %.1118178.i.i, 1   ; 2 uses
  %i.ahz = load i32, ptr %i.u, align 8, !tbaa !134 ; 3 uses
  %i.aia = icmp slt i32 %.1118.i.i, %i.ahz
  br i1 %i.aia, label %.lr.ph180.i.i, label %.loopexit159.i.i, !llvm.loop !89

.loopexit159.i.i:                                 ; preds = %bb.bg, %bb.ao, %..loopexit159_crit_edge.i.i
  %.pre-phi.i.i40 = phi i32 [ %.pre204.i.i, %..loopexit159_crit_edge.i.i ], [ %.1118176.i.i, %bb.ao ], [ %.1118176.i.i, %bb.bg ] ; 2 uses
  %i.aib = phi i32 [ %i.abi, %..loopexit159_crit_edge.i.i ], [ %i.abi, %bb.ao ], [ %i.ahz, %bb.bg ] ; 5 uses
  %i.aic = phi ptr [ %i.abj, %..loopexit159_crit_edge.i.i ], [ %i.abj, %bb.ao ], [ %i.ahr, %bb.bg ] ; 2 uses
  %i.aid = phi i32 [ %i.abk, %..loopexit159_crit_edge.i.i ], [ %i.abk, %bb.ao ], [ %i.ahs, %bb.bg ] ; 2 uses
  %i.aie = phi ptr [ %i.abl, %..loopexit159_crit_edge.i.i ], [ %i.abl, %bb.ao ], [ %i.aht, %bb.bg ] ; 2 uses
  %i.aif = phi i32 [ %i.abm, %..loopexit159_crit_edge.i.i ], [ %i.abm, %bb.ao ], [ %i.ahu, %bb.bg ] ; 2 uses
  %i.aig = phi ptr [ %i.abn, %..loopexit159_crit_edge.i.i ], [ %i.abn, %bb.ao ], [ %i.ahv, %bb.bg ] ; 2 uses
  %i.aih = phi ptr [ %i.abo, %..loopexit159_crit_edge.i.i ], [ %i.abo, %bb.ao ], [ %i.ahw, %bb.bg ] ; 2 uses
  %i.aii = phi i32 [ %i.abp, %..loopexit159_crit_edge.i.i ], [ %i.abp, %bb.ao ], [ %i.ahx, %bb.bg ] ; 2 uses
  %i.aij = phi i32 [ %i.abq, %..loopexit159_crit_edge.i.i ], [ %i.abq, %bb.ao ], [ %i.ahy, %bb.bg ] ; 2 uses
  %i.aik = icmp slt i32 %.pre-phi.i.i40, %i.aib
  br i1 %i.aik, label %bb.am, label %._crit_edge184.loopexit.i.i, !llvm.loop !90

._crit_edge184.loopexit.i.i:                      ; preds = %.loopexit159.i.i
  %.pre202.i.i = load i32, ptr %i.q, align 8, !tbaa !132
  br label %._crit_edge184.i.i

._crit_edge184.i.i:                               ; preds = %._crit_edge184.loopexit.i.i, %.preheader160.i.i
  %i.ail = phi i32 [ %.pre202.i.i, %._crit_edge184.loopexit.i.i ], [ %i.aaq, %.preheader160.i.i ] ; 5 uses
  %.pr.i = phi i32 [ %i.aib, %._crit_edge184.loopexit.i.i ], [ %i.aar, %.preheader160.i.i ] ; 4 uses
  %i.aim = phi ptr [ %i.aic, %._crit_edge184.loopexit.i.i ], [ %i.aas, %.preheader160.i.i ] ; 4 uses
  %i.ain = phi i32 [ %i.aid, %._crit_edge184.loopexit.i.i ], [ %i.aat, %.preheader160.i.i ]
  %i.aio = phi ptr [ %i.aie, %._crit_edge184.loopexit.i.i ], [ %i.aau, %.preheader160.i.i ]
  %i.aip = phi i32 [ %i.aif, %._crit_edge184.loopexit.i.i ], [ %i.aav, %.preheader160.i.i ]
  %i.aiq = phi ptr [ %i.aig, %._crit_edge184.loopexit.i.i ], [ %i.aaw, %.preheader160.i.i ]
  %i.air = phi ptr [ %i.aih, %._crit_edge184.loopexit.i.i ], [ %i.aax, %.preheader160.i.i ]
  %i.ais = phi i32 [ %i.aii, %._crit_edge184.loopexit.i.i ], [ %i.aay, %.preheader160.i.i ]
  %i.ait = phi i32 [ %i.aij, %._crit_edge184.loopexit.i.i ], [ %i.aaz, %.preheader160.i.i ]
  %i.aiu = phi i32 [ %i.aib, %._crit_edge184.loopexit.i.i ], [ %i.aba, %.preheader160.i.i ]
  %indvars.iv.next.i.i38 = add nuw nsw i64 %indvars.iv.i.i37, 1 ; 2 uses
  %i.aiv = sext i32 %i.ail to i64
  %i.aiw = icmp slt i64 %indvars.iv.next.i.i38, %i.aiv
  br i1 %i.aiw, label %.preheader160.i.i, label %.preheader158.i.i, !llvm.loop !91

.preheader.i.i39:                                 ; preds = %.preheader.lr.ph.i.i, %._crit_edge191.i.i
  %i.aix = phi i32 [ %i.ajw, %._crit_edge191.i.i ], [ %i.ail, %.preheader.lr.ph.i.i ]
  %i.aiy = phi i32 [ %i.ajx, %._crit_edge191.i.i ], [ %.pr.i, %.preheader.lr.ph.i.i ] ; 2 uses
  %i.aiz = phi i32 [ %i.ajy, %._crit_edge191.i.i ], [ %.pr.i, %.preheader.lr.ph.i.i ] ; 3 uses
  %.3192.i.i = phi i32 [ %i.ajz, %._crit_edge191.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 2 uses
  %i.aja = icmp sgt i32 %i.aiz, 0
  br i1 %i.aja, label %.lr.ph190.i.i, label %._crit_edge191.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph188.i.i, %.lr.ph190.i.i
  %i.ajb = phi i32 [ %i.ajd, %.lr.ph190.i.i ], [ %i.aju, %.lr.ph188.i.i ] ; 5 uses
  %i.ajc = icmp slt i32 %i.ajf, %i.ajb
  br i1 %i.ajc, label %.lr.ph190.i.i, label %._crit_edge191.loopexit.i.i, !llvm.loop !92

.lr.ph190.i.i:                                    ; preds = %.preheader.i.i39, %.loopexit.i.i
  %i.ajd = phi i32 [ %i.ajb, %.loopexit.i.i ], [ %i.aiy, %.preheader.i.i39 ]
  %i.aje = phi i32 [ %i.ajb, %.loopexit.i.i ], [ %i.aiz, %.preheader.i.i39 ] ; 2 uses
  %.3123189.i.i = phi i32 [ %i.ajf, %.loopexit.i.i ], [ 0, %.preheader.i.i39 ] ; 3 uses
  %i.ajf = add nuw nsw i32 %.3123189.i.i, 1       ; 4 uses
  %i.ajg = icmp slt i32 %i.ajf, %i.aje
  br i1 %i.ajg, label %.lr.ph188.i.i, label %.loopexit.i.i

.lr.ph188.i.i:                                    ; preds = %.lr.ph190.i.i, %.lr.ph188.i.i
  %i.ajh = phi i32 [ %i.aju, %.lr.ph188.i.i ], [ %i.aje, %.lr.ph190.i.i ] ; 2 uses
  %.2119186.i.i = phi i32 [ %i.ajt, %.lr.ph188.i.i ], [ %i.ajf, %.lr.ph190.i.i ] ; 3 uses
  %.val13.i155.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.aji = mul nsw i32 %.val13.i155.i.i, %.3192.i.i ; 2 uses
  %i.ajj = mul nuw nsw i32 %i.ajh, %.3123189.i.i
  %i.ajk = add i32 %i.ajj, %.2119186.i.i
  %i.ajl = add i32 %i.ajk, %i.aji
  %i.ajm = shl nsw i32 %i.ajl, 1
  %i.ajn = or disjoint i32 %i.ajm, 1
  %i.ajo = mul nuw nsw i32 %.2119186.i.i, %i.ajh
  %i.ajp = add i32 %i.ajo, %.3123189.i.i
  %i.ajq = add i32 %i.ajp, %i.aji
  %i.ajr = shl nsw i32 %i.ajq, 1
  %i.ajs = or disjoint i32 %i.ajr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 %i.ajn, ptr %i.d, align 16, !tbaa !10
  store i32 %i.ajs, ptr %i.abe, align 4, !tbaa !10
  store i32 0, ptr %i.abf, align 8, !tbaa !10
  store i32 0, ptr %i.abg, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.d, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ajt = add nuw nsw i32 %.2119186.i.i, 1       ; 2 uses
  %i.aju = load i32, ptr %i.u, align 8, !tbaa !134 ; 3 uses
  %i.ajv = icmp slt i32 %i.ajt, %i.aju
  br i1 %i.ajv, label %.lr.ph188.i.i, label %.loopexit.i.i, !llvm.loop !93

._crit_edge191.loopexit.i.i:                      ; preds = %.loopexit.i.i
  %.pre203.i.i = load i32, ptr %i.q, align 8, !tbaa !132
  br label %._crit_edge191.i.i

._crit_edge191.i.i:                               ; preds = %._crit_edge191.loopexit.i.i, %.preheader.i.i39
  %i.ajw = phi i32 [ %.pre203.i.i, %._crit_edge191.loopexit.i.i ], [ %i.aix, %.preheader.i.i39 ] ; 3 uses
  %i.ajx = phi i32 [ %i.ajb, %._crit_edge191.loopexit.i.i ], [ %i.aiy, %.preheader.i.i39 ]
  %i.ajy = phi i32 [ %i.ajb, %._crit_edge191.loopexit.i.i ], [ %i.aiz, %.preheader.i.i39 ]
  %i.ajz = add nuw nsw i32 %.3192.i.i, 1          ; 2 uses
  %i.aka = icmp slt i32 %i.ajz, %i.ajw
  br i1 %i.aka, label %.preheader.i.i39, label %Tn_GenCnfStart.exit.i, !llvm.loop !94

Tn_GenCnfStart.exit.i:                            ; preds = %._crit_edge191.i.i, %.preheader.lr.ph.i.i, %.preheader160.lr.ph.i.i
  %i.akb = phi ptr [ %i.aim, %.preheader.lr.ph.i.i ], [ %i.zz, %.preheader160.lr.ph.i.i ], [ %i.aim, %._crit_edge191.i.i ] ; 2 uses
  %i.akc = phi i32 [ %i.ail, %.preheader.lr.ph.i.i ], [ %i.zw, %.preheader160.lr.ph.i.i ], [ %i.ajw, %._crit_edge191.i.i ]
  %.not82.i = icmp eq i32 %i.akc, 31
  br i1 %.not82.i, label %._crit_edge81.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %Tn_GenCnfStart.exit.i, %.preheader158.i.i, %._crit_edge175.i.i
  %i.akd = phi ptr [ %i.akb, %Tn_GenCnfStart.exit.i ], [ %i.aim, %.preheader158.i.i ], [ %i.zz, %._crit_edge175.i.i ]
  %i.ake = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre.i28 = load i32, ptr %i.r, align 4, !tbaa !133
  br label %.preheader.i

.preheader.i:                                     ; preds = %Tn_GenCnfMint.exit.i, %.preheader.lr.ph.i
  %i.akh = phi i32 [ %.pre.i28, %.preheader.lr.ph.i ], [ %i.ayq, %Tn_GenCnfMint.exit.i ] ; 5 uses
  %indvars.iv114.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next115.i, %Tn_GenCnfMint.exit.i ] ; 4 uses
  %i.aki = icmp sgt i32 %i.akh, 0
  br i1 %i.aki, label %.lr.ph.i34, label %._crit_edge.i29

.lr.ph.i34:                                       ; preds = %.preheader.i
  %i.akj = shl nuw i64 1, %indvars.iv114.i        ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.akh to i64 ; 2 uses
  %xtraiter893 = and i64 %wide.trip.count.i, 1
  %i.akk = icmp eq i32 %i.akh, 1
  br i1 %i.akk, label %.epil.preheader, label %.lr.ph.i34.new

.lr.ph.i34.new:                                   ; preds = %.lr.ph.i34
  %unroll_iter897 = and i64 %wide.trip.count.i, 2147483646
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i34.new
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.i34.new ], [ %indvars.iv.next.i36.1, %bb.bh ] ; 4 uses
  %.079.i = phi i32 [ 0, %.lr.ph.i34.new ], [ %.1.i.1, %bb.bh ]
  %niter898 = phi i64 [ 0, %.lr.ph.i34.new ], [ %niter898.next.1, %bb.bh ]
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.ake, i64 %indvars.iv.i35
  %i.akm = load i64, ptr %i.akl, align 8, !tbaa !33
  %i.akn = and i64 %i.akm, %i.akj
  %.not33.i = icmp eq i64 %i.akn, 0
  %i.ako = trunc nuw nsw i64 %indvars.iv.i35 to i32
  %i.akp = shl nuw i32 1, %i.ako
  %i.akq = select i1 %.not33.i, i32 0, i32 %i.akp
  %.1.i = or i32 %i.akq, %.079.i
  %indvars.iv.next.i36 = or disjoint i64 %indvars.iv.i35, 1 ; 2 uses
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.ake, i64 %indvars.iv.next.i36
  %i.aks = load i64, ptr %i.akr, align 8, !tbaa !33
  %i.akt = and i64 %i.aks, %i.akj
  %.not33.i.1 = icmp eq i64 %i.akt, 0
  %i.aku = trunc nuw nsw i64 %indvars.iv.next.i36 to i32
  %i.akv = shl nuw i32 1, %i.aku
  %i.akw = select i1 %.not33.i.1, i32 0, i32 %i.akv
  %.1.i.1 = or i32 %i.akw, %.1.i                  ; 3 uses
  %indvars.iv.next.i36.1 = add nuw nsw i64 %indvars.iv.i35, 2 ; 2 uses
  %niter898.next.1 = add i64 %niter898, 2         ; 2 uses
  %niter898.ncmp.1 = icmp eq i64 %niter898.next.1, %unroll_iter897
  br i1 %niter898.ncmp.1, label %._crit_edge.i29.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !95

._crit_edge.i29.loopexit.unr-lcssa:               ; preds = %bb.bh
  %lcmp.mod894.not = icmp eq i64 %xtraiter893, 0
  br i1 %lcmp.mod894.not, label %._crit_edge.i29, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i29.loopexit.unr-lcssa, %.lr.ph.i34
  %indvars.iv.i35.epil.init = phi i64 [ 0, %.lr.ph.i34 ], [ %indvars.iv.next.i36.1, %._crit_edge.i29.loopexit.unr-lcssa ] ; 2 uses
  %.079.i.epil.init = phi i32 [ 0, %.lr.ph.i34 ], [ %.1.i.1, %._crit_edge.i29.loopexit.unr-lcssa ]
  %lcmp.mod896 = trunc i32 %i.akh to i1
  tail call void @llvm.assume(i1 %lcmp.mod896)
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %i.ake, i64 %indvars.iv.i35.epil.init
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !33
  %i.akz = and i64 %i.aky, %i.akj
  %.not33.i.epil = icmp eq i64 %i.akz, 0
  %i.ala = trunc nuw nsw i64 %indvars.iv.i35.epil.init to i32
  %i.alb = shl nuw i32 1, %i.ala
  %i.alc = select i1 %.not33.i.epil, i32 0, i32 %i.alb
  %.1.i.epil = or i32 %i.alc, %.079.i.epil.init
  br label %._crit_edge.i29

._crit_edge.i29:                                  ; preds = %.epil.preheader, %._crit_edge.i29.loopexit.unr-lcssa, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i.1, %._crit_edge.i29.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.ald = load i32, ptr %i.u, align 8, !tbaa !134 ; 2 uses
  %i.ale = icmp sgt i32 %i.ald, 0
  br i1 %i.ale, label %.lr.ph177.i.preheader.i, label %.preheader168.i.i

.lr.ph177.i.preheader.i:                          ; preds = %._crit_edge.i29
  %.pre119.i.a = trunc nuw nsw i64 %indvars.iv114.i to i32 ; 2 uses
  br label %.lr.ph177.i.i

.loopexit.i38.i:                                  ; preds = %Tn_GenAndOrGate.exit.i.i, %.lr.ph177.i.i
  %10 = phi i32 [ %i.alj, %.lr.ph177.i.i ], [ %i.aql, %Tn_GenAndOrGate.exit.i.i ] ; 2 uses
  %i.alf = icmp slt i32 %i.alk, %10
  br i1 %i.alf, label %.lr.ph177.i.i, label %.preheader168.i.loopexit.i, !llvm.loop !96

.preheader168.i.loopexit.i:                       ; preds = %.loopexit.i38.i
  %.pre117.i = load i32, ptr %i.r, align 4, !tbaa !133
  br label %.preheader168.i.i

.preheader168.i.i:                                ; preds = %.preheader168.i.loopexit.i, %._crit_edge.i29
  %i.alg = phi i32 [ %.pre117.i, %.preheader168.i.loopexit.i ], [ %i.akh, %._crit_edge.i29 ] ; 2 uses
  %i.alh = icmp sgt i32 %i.alg, 0
  br i1 %i.alh, label %.lr.ph201.i.preheader.i, label %Tn_GenCnfMint.exit.i

.lr.ph201.i.preheader.i:                          ; preds = %.preheader168.i.i
  %i.ali = trunc nuw nsw i64 %indvars.iv114.i to i32 ; 3 uses
  br label %.lr.ph201.i.i

.lr.ph177.i.i:                                    ; preds = %.loopexit.i38.i, %.lr.ph177.i.preheader.i
  %i.alj = phi i32 [ %10, %.loopexit.i38.i ], [ %i.ald, %.lr.ph177.i.preheader.i ] ; 3 uses
  %.0123175.i.i = phi i32 [ %i.alk, %.loopexit.i38.i ], [ 0, %.lr.ph177.i.preheader.i ] ; 4 uses
  %i.alk = add nuw nsw i32 %.0123175.i.i, 1       ; 4 uses
  %i.all = icmp slt i32 %i.alk, %i.alj
  br i1 %i.all, label %.lr.ph174.i.i, label %.loopexit.i38.i

.lr.ph174.i.i:                                    ; preds = %.lr.ph177.i.i, %Tn_GenAndOrGate.exit.i.i
  %.val.i150219.i.i = phi i32 [ %i.aql, %Tn_GenAndOrGate.exit.i.i ], [ %i.alj, %.lr.ph177.i.i ]
  %.0124172.i.i = phi i32 [ %i.aqk, %Tn_GenAndOrGate.exit.i.i ], [ %i.alk, %.lr.ph177.i.i ] ; 4 uses
  %i.alm = load ptr, ptr %i.xc, align 8, !tbaa !21 ; 2 uses
  store i32 0, ptr %i.alm, align 8, !tbaa !15
  %i.aln = load ptr, ptr %i.xh, align 8, !tbaa !21 ; 2 uses
  store i32 0, ptr %i.aln, align 8, !tbaa !15
  %i.alo = load i32, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.alp = icmp sgt i32 %i.alo, 0
  br i1 %i.alp, label %.lr.ph.i41.i, label %._crit_edge.i39.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph174.i.i, %tn_vi_push.exit.i43.i
  %.0126171.i.i = phi i32 [ %i.anb, %tn_vi_push.exit.i43.i ], [ 0, %.lr.ph174.i.i ] ; 3 uses
  %i.alq = load ptr, ptr %i.xc, align 8, !tbaa !21 ; 6 uses
  %i.alr = shl nuw i32 1, %.0126171.i.i
  %i.als = and i32 %i.alr, %.pre119.i.a
  %.not.i.not.i.i = icmp eq i32 %i.als, 0         ; 2 uses
  %.val.i.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val13.i.i42.i = load i32, ptr %i.w, align 4, !tbaa !135
  %.0124172..0123175.i.i = select i1 %.not.i.not.i.i, i32 %.0124172.i.i, i32 %.0123175.i.i
  %.0123175..0124172.i.i = select i1 %.not.i.not.i.i, i32 %.0123175.i.i, i32 %.0124172.i.i
  %i.alt = mul nsw i32 %.val13.i.i42.i, %.0126171.i.i
  %i.alu = mul nsw i32 %.0124172..0123175.i.i, %.val.i.i.i
  %i.alv = add i32 %.0123175..0124172.i.i, %i.alt
  %i.alw = add i32 %i.alv, %i.alu
  %i.alx = load i32, ptr %i.alq, align 8, !tbaa !15 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alq, i64 4 ; 3 uses
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !17 ; 3 uses
  %i.ama = icmp slt i32 %i.alx, %i.alz
  br i1 %i.ama, label %tn_vi_push.exit.i43.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i41.i
  %i.amb = icmp slt i32 %i.alz, 4
  %i.amc = lshr i32 %i.alz, 1
  %i.amd = mul nuw nsw i32 %i.amc, 3
  %i.ame = select i1 %i.amb, i32 8, i32 %i.amd    ; 3 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alq, i64 8 ; 2 uses
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !16
  %i.amh = zext nneg i32 %i.ame to i64
  %i.ami = shl nuw nsw i64 %i.amh, 2
  %i.amj = tail call ptr @realloc(ptr noundef %i.amg, i64 noundef %i.ami) #20 ; 2 uses
  store ptr %i.amj, ptr %i.amf, align 8, !tbaa !16
  %i.amk = icmp eq ptr %i.amj, null
  br i1 %i.amk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.aml = load i32, ptr %i.aly, align 4, !tbaa !17
  %i.amm = sitofp i32 %i.aml to double
  %i.amn = fmul nnan double %i.amm, 4.000000e+00
  %i.amo = fmul nnan double %i.amn, f0x3EB0000000000000
  %i.amp = uitofp nneg i32 %i.ame to double
  %i.amq = fmul nnan double %i.amp, 4.000000e+00
  %i.amr = fmul nnan double %i.amq, f0x3EB0000000000000
  %i.ams = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.amo, double noundef %i.amr) ; 0 uses
  %i.amt = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.amu = tail call i32 @fflush(ptr noundef %i.amt) ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  store i32 %i.ame, ptr %i.aly, align 4, !tbaa !17
  %.pre.i.i.i = load i32, ptr %i.alq, align 8, !tbaa !15
  br label %tn_vi_push.exit.i43.i

tn_vi_push.exit.i43.i:                            ; preds = %bb.bk, %.lr.ph.i41.i
  %i.amv = phi i32 [ %i.alx, %.lr.ph.i41.i ], [ %.pre.i.i.i, %bb.bk ] ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !16
  %i.amy = add nsw i32 %i.amv, 1
  store i32 %i.amy, ptr %i.alq, align 8, !tbaa !15
  %i.amz = sext i32 %i.amv to i64
  %i.ana = getelementptr inbounds [4 x i8], ptr %i.amx, i64 %i.amz
  store i32 %i.alw, ptr %i.ana, align 4, !tbaa !10
  %i.anb = add nuw nsw i32 %.0126171.i.i, 1       ; 2 uses
  %i.anc = load i32, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.and = icmp slt i32 %i.anb, %i.anc
  br i1 %i.and, label %.lr.ph.i41.i, label %._crit_edge.loopexit.i44.i, !llvm.loop !97

._crit_edge.loopexit.i44.i:                       ; preds = %tn_vi_push.exit.i43.i
  %.val.i150.pre.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.pre.i45.i = load ptr, ptr %i.xc, align 8, !tbaa !21
  %.pre220.i.i = load ptr, ptr %i.xh, align 8, !tbaa !21 ; 2 uses
  %.val43.i.pre.i.i = load i32, ptr %.pre220.i.i, align 8, !tbaa !15
  br label %._crit_edge.i39.i

._crit_edge.i39.i:                                ; preds = %._crit_edge.loopexit.i44.i, %.lr.ph174.i.i
  %.val43.i.i.i = phi i32 [ %.val43.i.pre.i.i, %._crit_edge.loopexit.i44.i ], [ 0, %.lr.ph174.i.i ] ; 2 uses
  %i.ane = phi ptr [ %.pre220.i.i, %._crit_edge.loopexit.i44.i ], [ %i.aln, %.lr.ph174.i.i ] ; 4 uses
  %i.anf = phi ptr [ %.pre.i45.i, %._crit_edge.loopexit.i44.i ], [ %i.alm, %.lr.ph174.i.i ] ; 6 uses
  %.val.i150.i40.i = phi i32 [ %.val.i150.pre.i.i, %._crit_edge.loopexit.i44.i ], [ %.val.i150219.i.i, %.lr.ph174.i.i ]
  %.lcssa169.i.i = phi i32 [ %i.anc, %._crit_edge.loopexit.i44.i ], [ %i.alo, %.lr.ph174.i.i ]
  %i.ang = add nsw i32 %.lcssa169.i.i, %.pre119.i.a
  %.val6.i.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.anh = mul nsw i32 %.val6.i.i.i, %i.ang
  %i.ani = mul nsw i32 %.val.i150.i40.i, %.0123175.i.i
  %i.anj = add i32 %i.ani, %.0124172.i.i
  %i.ank = add i32 %i.anj, %i.anh                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.anf, ptr %i.a, align 16, !tbaa !21
  store ptr %i.ane, ptr %i.akf, align 8, !tbaa !21
  %.not.i151.i.i = icmp eq i32 %.val43.i.i.i, 31
  br i1 %.not.i151.i.i, label %.preheader.i.i.i, label %.lr.ph58.i.i.i

.lr.ph58.i.i.i:                                   ; preds = %._crit_edge.i39.i
  %i.anl = shl nuw nsw i32 1, %.val43.i.i.i
  %i.anm = shl nsw i32 %i.ank, 1
  %i.ann = or disjoint i32 %i.anm, 1
  %i.ano = getelementptr i8, ptr %i.anf, i64 8
  br label %bb.bl

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %._crit_edge.i39.i
  %.val4059.i.i.i = load i32, ptr %i.anf, align 8, !tbaa !15
  %i.anp = icmp sgt i32 %.val4059.i.i.i, 0
  br i1 %i.anp, label %.lr.ph61.i.i.i, label %Tn_GenAndOrGate.exit.i.i

.lr.ph61.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.anq = shl nsw i32 %i.ank, 1
  %i.anr = getelementptr i8, ptr %i.ane, i64 8
  %i.ans = getelementptr i8, ptr %i.anf, i64 8
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph58.i.i.i
  %.03756.i.i.i = phi i32 [ 0, %.lr.ph58.i.i.i ], [ %i.apu, %._crit_edge.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.ann, ptr %i.b, align 16, !tbaa !10
  %.val42.i.i.i = load i32, ptr %i.ane, align 8, !tbaa !15 ; 5 uses
  %i.ant = icmp sgt i32 %.val42.i.i.i, 0
  br i1 %i.ant, label %.lr.ph.preheader.i.i.i, label %.preheader48.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bl
  %wide.trip.count.i.i.i = zext nneg i32 %.val42.i.i.i to i64 ; 2 uses
  %xtraiter899 = and i64 %wide.trip.count.i.i.i, 1
  %i.anu = icmp eq i32 %.val42.i.i.i, 1
  br i1 %i.anu, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter903 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %.lr.ph.i.i.i

.preheader48.loopexit.i.i.i.unr-lcssa:            ; preds = %.lr.ph.i.i.i
  %lcmp.mod900.not = icmp eq i64 %xtraiter899, 0
  br i1 %lcmp.mod900.not, label %.preheader48.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader48.loopexit.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv65.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next66.i.i.i.1, %.preheader48.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.preheader48.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod902 = trunc i32 %.val42.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod902)
  %i.anv = trunc nuw nsw i64 %indvars.iv65.i.i.i.epil.init to i32
  %i.anw = lshr i32 %.03756.i.i.i, %i.anv
  %i.anx = and i32 %i.anw, 1
  %i.any = zext nneg i32 %i.anx to i64
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.any
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !21
  %i.aob = getelementptr i8, ptr %i.aoa, i64 8
  %.val47.i.i.i.epil = load ptr, ptr %i.aob, align 8, !tbaa !16
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %.val47.i.i.i.epil, i64 %indvars.iv65.i.i.i.epil.init
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !10
  %i.aoe = shl nsw i32 %i.aod, 1
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil.init, 1
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.epil.init
  store i32 %i.aoe, ptr %i.aof, align 4, !tbaa !10
  br label %.preheader48.loopexit.i.i.i

.preheader48.loopexit.i.i.i:                      ; preds = %.preheader48.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.1, %.preheader48.loopexit.i.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader ]
  %i.aog = trunc nuw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %.preheader48.i.i.i

.preheader48.i.i.i:                               ; preds = %.preheader48.loopexit.i.i.i, %bb.bl
  %.038.lcssa.i.i.i = phi i32 [ 0, %bb.bl ], [ %.val42.i.i.i, %.preheader48.loopexit.i.i.i ] ; 2 uses
  %.036.lcssa.i.i.i = phi i32 [ 1, %bb.bl ], [ %i.aog, %.preheader48.loopexit.i.i.i ] ; 2 uses
  %.val41.i.i.i = load i32, ptr %i.anf, align 8, !tbaa !15 ; 2 uses
  %i.aoh = icmp slt i32 %.038.lcssa.i.i.i, %.val41.i.i.i
  br i1 %i.aoh, label %.lr.ph54.i.i.i, label %._crit_edge.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %.preheader48.i.i.i
  %.val46.i.i.i = load ptr, ptr %i.ano, align 8, !tbaa !16 ; 2 uses
  %i.aoi = zext i32 %.036.lcssa.i.i.i to i64      ; 3 uses
  %i.aoj = zext nneg i32 %.038.lcssa.i.i.i to i64 ; 4 uses
  %wide.trip.count77.i.i.i = zext nneg i32 %.val41.i.i.i to i64 ; 2 uses
  %i.aok = sub nsw i64 %wide.trip.count77.i.i.i, %i.aoj ; 3 uses
  %min.iters.check766 = icmp ult i64 %i.aok, 8
  br i1 %min.iters.check766, label %scalar.ph765.preheader, label %vector.ph767

vector.ph767:                                     ; preds = %.lr.ph54.i.i.i
  %n.vec768 = and i64 %i.aok, -8                  ; 4 uses
  %i.aol = add nsw i64 %n.vec768, %i.aoj
  %i.aom = add nsw i64 %n.vec768, %i.aoi          ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val46.i.i.i, i64 %i.aoj
  %invariant.gep1004 = getelementptr [4 x i8], ptr %i.b, i64 %i.aoi
  br label %vector.body769

vector.body769:                                   ; preds = %vector.body769, %vector.ph767
  %index770 = phi i64 [ 0, %vector.ph767 ], [ %index.next773, %vector.body769 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index770 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load771 = load <4 x i32>, ptr %gep, align 4, !tbaa !10
  %wide.load772 = load <4 x i32>, ptr %i.aon, align 4, !tbaa !10
  %i.aoo = shl nsw <4 x i32> %wide.load771, splat (i32 1)
  %i.aop = shl nsw <4 x i32> %wide.load772, splat (i32 1)
  %gep1005 = getelementptr [4 x i8], ptr %invariant.gep1004, i64 %index770 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %gep1005, i64 16
  store <4 x i32> %i.aoo, ptr %gep1005, align 4, !tbaa !10
  store <4 x i32> %i.aop, ptr %i.aoq, align 4, !tbaa !10
  %index.next773 = add nuw i64 %index770, 8       ; 2 uses
  %i.aor = icmp eq i64 %index.next773, %n.vec768
  br i1 %i.aor, label %middle.block774, label %vector.body769, !llvm.loop !98

middle.block774:                                  ; preds = %vector.body769
  %cmp.n775 = icmp eq i64 %i.aok, %n.vec768
  br i1 %cmp.n775, label %._crit_edge.loopexit.i.i.i, label %scalar.ph765.preheader

scalar.ph765.preheader:                           ; preds = %.lr.ph54.i.i.i, %middle.block774
  %indvars.iv72.i.i.i.ph = phi i64 [ %i.aoj, %.lr.ph54.i.i.i ], [ %i.aol, %middle.block774 ]
  %indvars.iv70.i.i.i.ph = phi i64 [ %i.aoi, %.lr.ph54.i.i.i ], [ %i.aom, %middle.block774 ]
  br label %scalar.ph765

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv65.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next66.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %niter904 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter904.next.1, %.lr.ph.i.i.i ]
  %i.aos = trunc nuw nsw i64 %indvars.iv65.i.i.i to i32
  %i.aot = lshr i32 %.03756.i.i.i, %i.aos
  %i.aou = and i32 %i.aot, 1
  %i.aov = zext nneg i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aov
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !21
  %i.aoy = getelementptr i8, ptr %i.aox, i64 8
  %.val47.i.i.i = load ptr, ptr %i.aoy, align 8, !tbaa !16
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %.val47.i.i.i, i64 %indvars.iv65.i.i.i
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !10
  %i.apb = shl nsw i32 %i.apa, 1
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  store i32 %i.apb, ptr %i.apc, align 4, !tbaa !10
  %indvars.iv.next66.i.i.i = or disjoint i64 %indvars.iv65.i.i.i, 1 ; 2 uses
  %i.apd = trunc nuw nsw i64 %indvars.iv.next66.i.i.i to i32
  %i.ape = lshr i32 %.03756.i.i.i, %i.apd
  %i.apf = and i32 %i.ape, 1
  %i.apg = zext nneg i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.apg
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !21
  %i.apj = getelementptr i8, ptr %i.api, i64 8
  %.val47.i.i.i.1 = load ptr, ptr %i.apj, align 8, !tbaa !16
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %.val47.i.i.i.1, i64 %indvars.iv.next66.i.i.i
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !10
  %i.apm = shl nsw i32 %i.apl, 1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 3 uses
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 4
  store i32 %i.apm, ptr %i.apo, align 4, !tbaa !10
  %indvars.iv.next66.i.i.i.1 = add nuw nsw i64 %indvars.iv65.i.i.i, 2 ; 2 uses
  %niter904.next.1 = add nuw i64 %niter904, 2     ; 2 uses
  %niter904.ncmp.1 = icmp eq i64 %niter904.next.1, %unroll_iter903
  br i1 %niter904.ncmp.1, label %.preheader48.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !99

scalar.ph765:                                     ; preds = %scalar.ph765.preheader, %scalar.ph765
  %indvars.iv72.i.i.i = phi i64 [ %indvars.iv.next73.i.i.i, %scalar.ph765 ], [ %indvars.iv72.i.i.i.ph, %scalar.ph765.preheader ] ; 2 uses
  %indvars.iv70.i.i.i = phi i64 [ %indvars.iv.next71.i.i.i, %scalar.ph765 ], [ %indvars.iv70.i.i.i.ph, %scalar.ph765.preheader ] ; 2 uses
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %.val46.i.i.i, i64 %indvars.iv72.i.i.i
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !10
  %i.apr = shl nsw i32 %i.apq, 1
  %indvars.iv.next71.i.i.i = add nuw nsw i64 %indvars.iv70.i.i.i, 1 ; 2 uses
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv70.i.i.i
  store i32 %i.apr, ptr %i.aps, align 4, !tbaa !10
  %indvars.iv.next73.i.i.i = add nuw nsw i64 %indvars.iv72.i.i.i, 1 ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i64 %indvars.iv.next73.i.i.i, %wide.trip.count77.i.i.i
  br i1 %exitcond78.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %scalar.ph765, !llvm.loop !100

._crit_edge.loopexit.i.i.i:                       ; preds = %scalar.ph765, %middle.block774
  %indvars.iv.next71.i.i.i.lcssa = phi i64 [ %i.aom, %middle.block774 ], [ %indvars.iv.next71.i.i.i, %scalar.ph765 ]
  %i.apt = trunc nuw i64 %indvars.iv.next71.i.i.i.lcssa to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader48.i.i.i
  %.1.lcssa.i.i.i = phi i32 [ %.036.lcssa.i.i.i, %.preheader48.i.i.i ], [ %i.apt, %._crit_edge.loopexit.i.i.i ]
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, i32 noundef %.1.lcssa.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.apu = add nuw nsw i32 %.03756.i.i.i, 1       ; 2 uses
  %exitcond79.not.i.i.i = icmp eq i32 %i.apu, %i.anl
  br i1 %exitcond79.not.i.i.i, label %.preheader.i.i.i, label %bb.bl, !llvm.loop !101

bb.bm:                                            ; preds = %bb.bo, %.lr.ph61.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ 0, %.lr.ph61.i.i.i ], [ %indvars.iv.next81.i.i.i, %bb.bo ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 %i.anq, ptr %i.c, align 16, !tbaa !10
  %.val.i152.i.i = load i32, ptr %i.ane, align 8, !tbaa !15
  %i.apv = sext i32 %.val.i152.i.i to i64
  %i.apw = icmp slt i64 %indvars.iv80.i.i.i, %i.apv
  br i1 %i.apw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.val45.i.i.i = load ptr, ptr %i.anr, align 8, !tbaa !16
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %.val45.i.i.i, i64 %indvars.iv80.i.i.i
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !10
  %i.apz = shl nsw i32 %i.apy, 1
  %i.aqa = or disjoint i32 %i.apz, 1
  store i32 %i.aqa, ptr %i.akg, align 4, !tbaa !10
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0.i.i.i = phi i32 [ 2, %bb.bn ], [ 1, %bb.bm ] ; 2 uses
  %.val44.i.i.i = load ptr, ptr %i.ans, align 8, !tbaa !16
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %.val44.i.i.i, i64 %indvars.iv80.i.i.i
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !10
  %i.aqd = shl nsw i32 %i.aqc, 1
  %i.aqe = or disjoint i32 %i.aqd, 1
  %i.aqf = add nuw nsw i32 %.0.i.i.i, 1
  %i.aqg = zext nneg i32 %.0.i.i.i to i64
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aqg
  store i32 %i.aqe, ptr %i.aqh, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c, i32 noundef %i.aqf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %indvars.iv.next81.i.i.i = add nuw nsw i64 %indvars.iv80.i.i.i, 1 ; 2 uses
  %.val40.i.i.i = load i32, ptr %i.anf, align 8, !tbaa !15
  %i.aqi = sext i32 %.val40.i.i.i to i64
  %i.aqj = icmp slt i64 %indvars.iv.next81.i.i.i, %i.aqi
  br i1 %i.aqj, label %bb.bm, label %Tn_GenAndOrGate.exit.i.i, !llvm.loop !102

Tn_GenAndOrGate.exit.i.i:                         ; preds = %bb.bo, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.aqk = add nuw nsw i32 %.0124172.i.i, 1       ; 2 uses
  %i.aql = load i32, ptr %i.u, align 8, !tbaa !134 ; 3 uses
  %i.aqm = icmp slt i32 %i.aqk, %i.aql
  br i1 %i.aqm, label %.lr.ph174.i.i, label %.loopexit.i38.i, !llvm.loop !103

.lr.ph201.i.i:                                    ; preds = %.critedge2.i.i, %.lr.ph201.i.preheader.i
  %indvars.iv215.i.i = phi i64 [ %indvars.iv.next216.i.i, %.critedge2.i.i ], [ 0, %.lr.ph201.i.preheader.i ] ; 3 uses
  %i.aqn = trunc nuw nsw i64 %indvars.iv215.i.i to i32
  %i.aqo = shl nuw i32 1, %i.aqn
  %i.aqp = and i32 %i.aqo, %.0.lcssa.i
  %.not.i34.i = icmp eq i32 %i.aqp, 0
  %.idx263.i.i = shl nuw nsw i64 %indvars.iv215.i.i, 4 ; 2 uses
  br i1 %.not.i34.i, label %.preheader.i37.i, label %.preheader167.i.i

.preheader167.i.i:                                ; preds = %.lr.ph201.i.i
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx263.i.i ; 4 uses
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !21 ; 2 uses
  %i.aqs = load i32, ptr %i.aqr, align 8, !tbaa !15
  %i.aqt = icmp sgt i32 %i.aqs, 0
  br i1 %i.aqt, label %.lr.ph184.i.i, label %.critedge.i.i

.preheader.i37.i:                                 ; preds = %.lr.ph201.i.i
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx263.i.i
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 168 ; 3 uses
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !21 ; 2 uses
  %i.aqx = load i32, ptr %i.aqw, align 8, !tbaa !15
  %i.aqy = icmp sgt i32 %i.aqx, 0
  br i1 %i.aqy, label %.lr.ph199.i.i, label %.critedge2.i.i

.lr.ph184.i.i:                                    ; preds = %.preheader167.i.i, %._crit_edge182.i.i
  %i.aqz = phi ptr [ %i.ath, %._crit_edge182.i.i ], [ %i.aqr, %.preheader167.i.i ]
  %.1125183.i.i = phi i32 [ %i.atg, %._crit_edge182.i.i ], [ 0, %.preheader167.i.i ] ; 2 uses
  %i.ara = add nsw i32 %.1125183.i.i, 1           ; 2 uses
  %i.arb = getelementptr i8, ptr %i.aqz, i64 8
  %.val143.i.i = load ptr, ptr %i.arb, align 8, !tbaa !16
  %i.arc = sext i32 %.1125183.i.i to i64
  %i.ard = getelementptr inbounds [4 x i8], ptr %.val143.i.i, i64 %i.arc
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !10 ; 3 uses
  %i.arf = load ptr, ptr %i.xc, align 8, !tbaa !21 ; 2 uses
  store i32 0, ptr %i.arf, align 8, !tbaa !15
  %i.arg = icmp sgt i32 %i.are, 1
  br i1 %i.arg, label %.lr.ph181.preheader.i.i, label %._crit_edge182.i.i

.lr.ph181.preheader.i.i:                          ; preds = %.lr.ph184.i.i
  %i.arh = lshr i32 %i.are, 1
  %i.ari = sext i32 %i.ara to i64
  %wide.trip.count.i.i31 = zext nneg i32 %i.arh to i64
  br label %.lr.ph181.i.i

.lr.ph181.i.i:                                    ; preds = %tn_vi_push.exit156.i.i, %.lr.ph181.preheader.i.i
  %indvars.iv.i35.i = phi i64 [ 0, %.lr.ph181.preheader.i.i ], [ %indvars.iv.next.i36.i, %tn_vi_push.exit156.i.i ] ; 2 uses
  %i.arj = load ptr, ptr %i.aqq, align 8, !tbaa !21
  %i.ark = getelementptr i8, ptr %i.arj, i64 8
  %.val142.i.i = load ptr, ptr %i.ark, align 8, !tbaa !16
  %.idx262.i.i = shl nuw nsw i64 %indvars.iv.i35.i, 3
  %i.arl = getelementptr i8, ptr %.val142.i.i, i64 %.idx262.i.i
  %i.arm = getelementptr [4 x i8], ptr %i.arl, i64 %i.ari ; 2 uses
  %i.arn = load i32, ptr %i.arm, align 4, !tbaa !10 ; 2 uses
  %i.aro = getelementptr i8, ptr %i.arm, i64 4
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !10 ; 2 uses
  %i.arq = load ptr, ptr %i.xc, align 8, !tbaa !21 ; 6 uses
  %i.arr = tail call noundef i32 @llvm.smin.i32(i32 %i.arn, i32 %i.arp)
  %i.ars = tail call noundef i32 @llvm.smax.i32(i32 %i.arn, i32 %i.arp)
  %i.art = load i32, ptr %i.q, align 8, !tbaa !132
  %i.aru = add nsw i32 %i.art, %i.ali
  %.val.i153.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val6.i154.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.arv = mul nsw i32 %.val6.i154.i.i, %i.aru
  %i.arw = mul nsw i32 %.val.i153.i.i, %i.arr
  %i.arx = add i32 %i.arw, %i.ars
  %i.ary = add i32 %i.arx, %i.arv
  %i.arz = shl nsw i32 %i.ary, 1
  %i.asa = load i32, ptr %i.arq, align 8, !tbaa !15 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arq, i64 4 ; 3 uses
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !17 ; 3 uses
  %i.asd = icmp slt i32 %i.asa, %i.asc
  br i1 %i.asd, label %tn_vi_push.exit156.i.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph181.i.i
  %i.ase = icmp slt i32 %i.asc, 4
  %i.asf = lshr i32 %i.asc, 1
  %i.asg = mul nuw nsw i32 %i.asf, 3
  %i.ash = select i1 %i.ase, i32 8, i32 %i.asg    ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arq, i64 8 ; 2 uses
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !16
  %i.ask = zext nneg i32 %i.ash to i64
  %i.asl = shl nuw nsw i64 %i.ask, 2
  %i.asm = tail call ptr @realloc(ptr noundef %i.asj, i64 noundef %i.asl) #20 ; 2 uses
  store ptr %i.asm, ptr %i.asi, align 8, !tbaa !16
  %i.asn = icmp eq ptr %i.asm, null
  br i1 %i.asn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.aso = load i32, ptr %i.asb, align 4, !tbaa !17
  %i.asp = sitofp i32 %i.aso to double
  %i.asq = fmul nnan double %i.asp, 4.000000e+00
  %i.asr = fmul nnan double %i.asq, f0x3EB0000000000000
  %i.ass = uitofp nneg i32 %i.ash to double
  %i.ast = fmul nnan double %i.ass, 4.000000e+00
  %i.asu = fmul nnan double %i.ast, f0x3EB0000000000000
  %i.asv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.asr, double noundef %i.asu) ; 0 uses
  %i.asw = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.asx = tail call i32 @fflush(ptr noundef %i.asw) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store i32 %i.ash, ptr %i.asb, align 4, !tbaa !17
  %.pre.i155.i.i = load i32, ptr %i.arq, align 8, !tbaa !15
  br label %tn_vi_push.exit156.i.i

tn_vi_push.exit156.i.i:                           ; preds = %bb.br, %.lr.ph181.i.i
  %i.asy = phi i32 [ %i.asa, %.lr.ph181.i.i ], [ %.pre.i155.i.i, %bb.br ] ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !16
  %i.atb = add nsw i32 %i.asy, 1
  store i32 %i.atb, ptr %i.arq, align 8, !tbaa !15
  %i.atc = sext i32 %i.asy to i64
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.ata, i64 %i.atc
  store i32 %i.arz, ptr %i.atd, align 4, !tbaa !10
  %indvars.iv.next.i36.i = add nuw nsw i64 %indvars.iv.i35.i, 1 ; 2 uses
  %exitcond.not.i.i32 = icmp eq i64 %indvars.iv.next.i36.i, %wide.trip.count.i.i31
  br i1 %exitcond.not.i.i32, label %._crit_edge182.loopexit.i.i, label %.lr.ph181.i.i, !llvm.loop !104

._crit_edge182.loopexit.i.i:                      ; preds = %tn_vi_push.exit156.i.i
  %.pre222.i.i = load ptr, ptr %i.xc, align 8, !tbaa !21 ; 2 uses
  %.val148.pre.i.i = load i32, ptr %.pre222.i.i, align 8, !tbaa !15
  br label %._crit_edge182.i.i

._crit_edge182.i.i:                               ; preds = %._crit_edge182.loopexit.i.i, %.lr.ph184.i.i
  %.val148.i.i = phi i32 [ %.val148.pre.i.i, %._crit_edge182.loopexit.i.i ], [ 0, %.lr.ph184.i.i ]
  %i.ate = phi ptr [ %.pre222.i.i, %._crit_edge182.loopexit.i.i ], [ %i.arf, %.lr.ph184.i.i ]
  %i.atf = getelementptr i8, ptr %i.ate, i64 8
  %.val149.i.i = load ptr, ptr %i.atf, align 8, !tbaa !16
  tail call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef %.val149.i.i, i32 noundef %.val148.i.i)
  %i.atg = add nsw i32 %i.are, %i.ara             ; 2 uses
  %i.ath = load ptr, ptr %i.aqq, align 8, !tbaa !21 ; 2 uses
  %i.ati = load i32, ptr %i.ath, align 8, !tbaa !15
  %i.atj = icmp slt i32 %i.atg, %i.ati
  br i1 %i.atj, label %.lr.ph184.i.i, label %.critedge.i.i, !llvm.loop !105

.critedge.i.i:                                    ; preds = %._crit_edge182.i.i, %.preheader167.i.i
  %i.atk = load i32, ptr %i.ae, align 8, !tbaa !138
  %i.atl = icmp eq i32 %i.atk, 0
  br i1 %i.atl, label %.critedge2.i.i, label %.preheader165.i.i

.preheader165.i.i:                                ; preds = %.critedge.i.i
  %i.atm = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8 ; 3 uses
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !21 ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 8, !tbaa !15 ; 2 uses
  %i.atp = icmp sgt i32 %i.ato, 0
  br i1 %i.atp, label %.lr.ph192.i.i, label %.critedge2.i.i

.lr.ph192.i.i:                                    ; preds = %.preheader165.i.i, %bb.bx
  %i.atq = phi i32 [ %i.avz, %bb.bx ], [ %i.ato, %.preheader165.i.i ]
  %i.atr = phi ptr [ %i.awa, %bb.bx ], [ %i.atn, %.preheader165.i.i ] ; 2 uses
  %.2191.i.i = phi i32 [ %i.awb, %bb.bx ], [ 0, %.preheader165.i.i ] ; 2 uses
  %i.ats = add nsw i32 %.2191.i.i, 1              ; 2 uses
  %i.att = getelementptr i8, ptr %i.atr, i64 8
  %.val140.i.i = load ptr, ptr %i.att, align 8, !tbaa !16 ; 2 uses
  %i.atu = sext i32 %.2191.i.i to i64
  %i.atv = getelementptr inbounds [4 x i8], ptr %.val140.i.i, i64 %i.atu
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !10 ; 4 uses
  %i.atx = load i32, ptr %i.ae, align 8, !tbaa !138
  %i.aty = add nsw i32 %i.atx, 1
  %.not134.i.i = icmp sgt i32 %i.atw, %i.aty
  br i1 %.not134.i.i, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %.lr.ph192.i.i
  %i.atz = sext i32 %i.ats to i64                 ; 2 uses
  %i.aua = getelementptr inbounds [4 x i8], ptr %.val140.i.i, i64 %i.atz
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !10
  %i.auc = load ptr, ptr %i.xc, align 8, !tbaa !21 ; 2 uses
  store i32 0, ptr %i.auc, align 8, !tbaa !15
  %i.aud = icmp sgt i32 %i.atw, 1
  br i1 %i.aud, label %.lr.ph189.preheader.i.i, label %.critedge4.i.i

.lr.ph189.preheader.i.i:                          ; preds = %bb.bs
  %wide.trip.count208.i.i = zext nneg i32 %i.atw to i64
  br label %.lr.ph189.i.i

.lr.ph189.i.i:                                    ; preds = %tn_vi_push.exit160.i.i, %.lr.ph189.preheader.i.i
  %indvars.iv205.i.i = phi i64 [ 1, %.lr.ph189.preheader.i.i ], [ %indvars.iv.next206.i.i, %tn_vi_push.exit160.i.i ] ; 2 uses
  %.0122187.i.i = phi i32 [ %i.aub, %.lr.ph189.preheader.i.i ], [ %i.aui, %tn_vi_push.exit160.i.i ] ; 2 uses
  %i.aue = load ptr, ptr %i.atm, align 8, !tbaa !21
  %i.auf = getelementptr i8, ptr %i.aue, i64 8
  %.val138.i.i = load ptr, ptr %i.auf, align 8, !tbaa !16
  %i.aug = getelementptr [4 x i8], ptr %.val138.i.i, i64 %indvars.iv205.i.i
  %i.auh = getelementptr [4 x i8], ptr %i.aug, i64 %i.atz
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !10 ; 4 uses
  %.not135.i.i = icmp eq i32 %i.aui, 0
  %.pre224.pre230.i.i = load ptr, ptr %i.xc, align 8, !tbaa !21 ; 7 uses
  br i1 %.not135.i.i, label %.critedge4.loopexit.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph189.i.i
  %i.auj = tail call noundef i32 @llvm.smin.i32(i32 %.0122187.i.i, i32 %i.aui)
  %i.auk = tail call noundef i32 @llvm.smax.i32(i32 %.0122187.i.i, i32 %i.aui)
  %i.aul = load i32, ptr %i.q, align 8, !tbaa !132
  %i.aum = add nsw i32 %i.aul, %i.ali
  %.val.i157.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val6.i158.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.aun = mul nsw i32 %.val6.i158.i.i, %i.aum
  %i.auo = mul nsw i32 %.val.i157.i.i, %i.auj
end_hunk_0
