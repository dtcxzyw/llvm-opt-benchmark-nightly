Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilNet?download=true
inline.NumInlined: 220
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Tn_SolveProblem:bb.a
  %i.ahq = sext i32 %i.agl to i64
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.ahn, i64 %i.ahq
  store i32 %i.agr, ptr %i.ahr, align 4, !tbaa !10
  br label %bb.bg

bb.bg:                                            ; preds = %tn_vi_push.exit153.i.i, %bb.ay, %tn_vi_push.exit141.i.i, %tn_vi_push.exit.i.i41, %bb.ap, %.lr.ph180.i.i
  %i.ahs = phi ptr [ %i.abv, %bb.ap ], [ %i.adl, %tn_vi_push.exit.i.i41 ], [ %i.abv, %bb.ay ], [ %i.ahl, %tn_vi_push.exit153.i.i ], [ %i.aes, %tn_vi_push.exit141.i.i ], [ %i.abv, %.lr.ph180.i.i ] ; 2 uses
  %i.aht = phi i32 [ %i.abw, %bb.ap ], [ %i.adm, %tn_vi_push.exit.i.i41 ], [ %i.abw, %bb.ay ], [ %i.aho, %tn_vi_push.exit153.i.i ], [ %i.aet, %tn_vi_push.exit141.i.i ], [ %i.abw, %.lr.ph180.i.i ] ; 2 uses
  %i.ahu = phi ptr [ %i.abx, %bb.ap ], [ %i.adl, %tn_vi_push.exit.i.i41 ], [ %i.abx, %bb.ay ], [ %i.ahm, %tn_vi_push.exit153.i.i ], [ %i.aeu, %tn_vi_push.exit141.i.i ], [ %i.abx, %.lr.ph180.i.i ] ; 2 uses
  %i.ahv = phi i32 [ %i.aby, %bb.ap ], [ %i.adm, %tn_vi_push.exit.i.i41 ], [ %i.aby, %bb.ay ], [ %i.aho, %tn_vi_push.exit153.i.i ], [ %i.aev, %tn_vi_push.exit141.i.i ], [ %i.aby, %.lr.ph180.i.i ] ; 2 uses
  %i.ahw = phi ptr [ %i.abz, %bb.ap ], [ %i.adl, %tn_vi_push.exit.i.i41 ], [ %i.abz, %bb.ay ], [ %i.ahn, %tn_vi_push.exit153.i.i ], [ %i.aeu, %tn_vi_push.exit141.i.i ], [ %i.abz, %.lr.ph180.i.i ] ; 2 uses
  %i.ahx = phi ptr [ %i.aca, %bb.ap ], [ %i.adl, %tn_vi_push.exit.i.i41 ], [ %i.aca, %bb.ay ], [ %i.ahn, %tn_vi_push.exit153.i.i ], [ %i.aeu, %tn_vi_push.exit141.i.i ], [ %i.aca, %.lr.ph180.i.i ] ; 2 uses
  %i.ahy = phi i32 [ %i.acb, %bb.ap ], [ %i.adm, %tn_vi_push.exit.i.i41 ], [ %i.acb, %bb.ay ], [ %i.aho, %tn_vi_push.exit153.i.i ], [ %i.aev, %tn_vi_push.exit141.i.i ], [ %i.acb, %.lr.ph180.i.i ] ; 2 uses
  %i.ahz = phi i32 [ %i.acc, %bb.ap ], [ %i.adn, %tn_vi_push.exit.i.i41 ], [ %i.acc, %bb.ay ], [ %i.ahp, %tn_vi_push.exit153.i.i ], [ %i.aew, %tn_vi_push.exit141.i.i ], [ %i.acc, %.lr.ph180.i.i ] ; 2 uses
  %.1118.i.i = add nuw nsw i32 %.1118178.i.i, 1   ; 2 uses
  %i.aia = load i32, ptr %i.u, align 8, !tbaa !134 ; 3 uses
  %i.aib = icmp slt i32 %.1118.i.i, %i.aia
  br i1 %i.aib, label %.lr.ph180.i.i, label %.loopexit159.i.i, !llvm.loop !89

.loopexit159.i.i:                                 ; preds = %bb.bg, %bb.ao, %..loopexit159_crit_edge.i.i
  %.pre-phi.i.i40 = phi i32 [ %.pre204.i.i, %..loopexit159_crit_edge.i.i ], [ %.1118176.i.i, %bb.ao ], [ %.1118176.i.i, %bb.bg ] ; 2 uses
  %i.aic = phi i32 [ %i.abj, %..loopexit159_crit_edge.i.i ], [ %i.abj, %bb.ao ], [ %i.aia, %bb.bg ] ; 5 uses
  %i.aid = phi ptr [ %i.abk, %..loopexit159_crit_edge.i.i ], [ %i.abk, %bb.ao ], [ %i.ahs, %bb.bg ] ; 2 uses
  %i.aie = phi i32 [ %i.abl, %..loopexit159_crit_edge.i.i ], [ %i.abl, %bb.ao ], [ %i.aht, %bb.bg ] ; 2 uses
  %i.aif = phi ptr [ %i.abm, %..loopexit159_crit_edge.i.i ], [ %i.abm, %bb.ao ], [ %i.ahu, %bb.bg ] ; 2 uses
  %i.aig = phi i32 [ %i.abn, %..loopexit159_crit_edge.i.i ], [ %i.abn, %bb.ao ], [ %i.ahv, %bb.bg ] ; 2 uses
  %i.aih = phi ptr [ %i.abo, %..loopexit159_crit_edge.i.i ], [ %i.abo, %bb.ao ], [ %i.ahw, %bb.bg ] ; 2 uses
  %i.aii = phi ptr [ %i.abp, %..loopexit159_crit_edge.i.i ], [ %i.abp, %bb.ao ], [ %i.ahx, %bb.bg ] ; 2 uses
  %i.aij = phi i32 [ %i.abq, %..loopexit159_crit_edge.i.i ], [ %i.abq, %bb.ao ], [ %i.ahy, %bb.bg ] ; 2 uses
  %i.aik = phi i32 [ %i.abr, %..loopexit159_crit_edge.i.i ], [ %i.abr, %bb.ao ], [ %i.ahz, %bb.bg ] ; 2 uses
  %i.ail = icmp slt i32 %.pre-phi.i.i40, %i.aic
  br i1 %i.ail, label %bb.am, label %._crit_edge184.loopexit.i.i, !llvm.loop !90

._crit_edge184.loopexit.i.i:                      ; preds = %.loopexit159.i.i
  %.pre202.i.i = load i32, ptr %i.q, align 8, !tbaa !132
  br label %._crit_edge184.i.i

._crit_edge184.i.i:                               ; preds = %._crit_edge184.loopexit.i.i, %.preheader160.i.i
  %i.aim = phi i32 [ %.pre202.i.i, %._crit_edge184.loopexit.i.i ], [ %i.aar, %.preheader160.i.i ] ; 5 uses
  %.pr.i = phi i32 [ %i.aic, %._crit_edge184.loopexit.i.i ], [ %i.aas, %.preheader160.i.i ] ; 4 uses
  %i.ain = phi ptr [ %i.aid, %._crit_edge184.loopexit.i.i ], [ %i.aat, %.preheader160.i.i ] ; 4 uses
  %i.aio = phi i32 [ %i.aie, %._crit_edge184.loopexit.i.i ], [ %i.aau, %.preheader160.i.i ]
  %i.aip = phi ptr [ %i.aif, %._crit_edge184.loopexit.i.i ], [ %i.aav, %.preheader160.i.i ]
  %i.aiq = phi i32 [ %i.aig, %._crit_edge184.loopexit.i.i ], [ %i.aaw, %.preheader160.i.i ]
  %i.air = phi ptr [ %i.aih, %._crit_edge184.loopexit.i.i ], [ %i.aax, %.preheader160.i.i ]
  %i.ais = phi ptr [ %i.aii, %._crit_edge184.loopexit.i.i ], [ %i.aay, %.preheader160.i.i ]
  %i.ait = phi i32 [ %i.aij, %._crit_edge184.loopexit.i.i ], [ %i.aaz, %.preheader160.i.i ]
  %i.aiu = phi i32 [ %i.aik, %._crit_edge184.loopexit.i.i ], [ %i.aba, %.preheader160.i.i ]
  %i.aiv = phi i32 [ %i.aic, %._crit_edge184.loopexit.i.i ], [ %i.abb, %.preheader160.i.i ]
  %indvars.iv.next.i.i38 = add nuw nsw i64 %indvars.iv.i.i37, 1 ; 2 uses
  %i.aiw = sext i32 %i.aim to i64
  %i.aix = icmp slt i64 %indvars.iv.next.i.i38, %i.aiw
  br i1 %i.aix, label %.preheader160.i.i, label %.preheader158.i.i, !llvm.loop !91

.preheader.i.i39:                                 ; preds = %.preheader.lr.ph.i.i, %._crit_edge191.i.i
  %i.aiy = phi i32 [ %i.ajx, %._crit_edge191.i.i ], [ %i.aim, %.preheader.lr.ph.i.i ]
  %i.aiz = phi i32 [ %i.ajy, %._crit_edge191.i.i ], [ %.pr.i, %.preheader.lr.ph.i.i ] ; 2 uses
  %i.aja = phi i32 [ %i.ajz, %._crit_edge191.i.i ], [ %.pr.i, %.preheader.lr.ph.i.i ] ; 3 uses
  %.3192.i.i = phi i32 [ %i.aka, %._crit_edge191.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 2 uses
  %i.ajb = icmp sgt i32 %i.aja, 0
  br i1 %i.ajb, label %.lr.ph190.i.i, label %._crit_edge191.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph188.i.i, %.lr.ph190.i.i
  %i.ajc = phi i32 [ %i.aje, %.lr.ph190.i.i ], [ %i.ajv, %.lr.ph188.i.i ] ; 5 uses
  %i.ajd = icmp slt i32 %i.ajg, %i.ajc
  br i1 %i.ajd, label %.lr.ph190.i.i, label %._crit_edge191.loopexit.i.i, !llvm.loop !92

.lr.ph190.i.i:                                    ; preds = %.preheader.i.i39, %.loopexit.i.i
  %i.aje = phi i32 [ %i.ajc, %.loopexit.i.i ], [ %i.aiz, %.preheader.i.i39 ]
  %i.ajf = phi i32 [ %i.ajc, %.loopexit.i.i ], [ %i.aja, %.preheader.i.i39 ] ; 2 uses
  %.3123189.i.i = phi i32 [ %i.ajg, %.loopexit.i.i ], [ 0, %.preheader.i.i39 ] ; 3 uses
  %i.ajg = add nuw nsw i32 %.3123189.i.i, 1       ; 4 uses
  %i.ajh = icmp slt i32 %i.ajg, %i.ajf
  br i1 %i.ajh, label %.lr.ph188.i.i, label %.loopexit.i.i

.lr.ph188.i.i:                                    ; preds = %.lr.ph190.i.i, %.lr.ph188.i.i
  %i.aji = phi i32 [ %i.ajv, %.lr.ph188.i.i ], [ %i.ajf, %.lr.ph190.i.i ] ; 2 uses
  %.2119186.i.i = phi i32 [ %i.aju, %.lr.ph188.i.i ], [ %i.ajg, %.lr.ph190.i.i ] ; 3 uses
  %.val13.i155.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.ajj = mul nsw i32 %.val13.i155.i.i, %.3192.i.i ; 2 uses
  %i.ajk = mul nuw nsw i32 %i.aji, %.3123189.i.i
  %i.ajl = add i32 %i.ajk, %.2119186.i.i
  %i.ajm = add i32 %i.ajl, %i.ajj
  %i.ajn = shl nsw i32 %i.ajm, 1
  %i.ajo = or disjoint i32 %i.ajn, 1
  %i.ajp = mul nuw nsw i32 %.2119186.i.i, %i.aji
  %i.ajq = add i32 %i.ajp, %.3123189.i.i
  %i.ajr = add i32 %i.ajq, %i.ajj
  %i.ajs = shl nsw i32 %i.ajr, 1
  %i.ajt = or disjoint i32 %i.ajs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 %i.ajo, ptr %i.d, align 16, !tbaa !10
  store i32 %i.ajt, ptr %i.abf, align 4, !tbaa !10
  store i32 0, ptr %i.abg, align 8, !tbaa !10
  store i32 0, ptr %i.abh, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.d, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.aju = add nuw nsw i32 %.2119186.i.i, 1       ; 2 uses
  %i.ajv = load i32, ptr %i.u, align 8, !tbaa !134 ; 3 uses
  %i.ajw = icmp slt i32 %i.aju, %i.ajv
  br i1 %i.ajw, label %.lr.ph188.i.i, label %.loopexit.i.i, !llvm.loop !93

._crit_edge191.loopexit.i.i:                      ; preds = %.loopexit.i.i
  %.pre203.i.i = load i32, ptr %i.q, align 8, !tbaa !132
  br label %._crit_edge191.i.i

._crit_edge191.i.i:                               ; preds = %._crit_edge191.loopexit.i.i, %.preheader.i.i39
  %i.ajx = phi i32 [ %.pre203.i.i, %._crit_edge191.loopexit.i.i ], [ %i.aiy, %.preheader.i.i39 ] ; 3 uses
  %i.ajy = phi i32 [ %i.ajc, %._crit_edge191.loopexit.i.i ], [ %i.aiz, %.preheader.i.i39 ]
  %i.ajz = phi i32 [ %i.ajc, %._crit_edge191.loopexit.i.i ], [ %i.aja, %.preheader.i.i39 ]
  %i.aka = add nuw nsw i32 %.3192.i.i, 1          ; 2 uses
  %i.akb = icmp slt i32 %i.aka, %i.ajx
  br i1 %i.akb, label %.preheader.i.i39, label %Tn_GenCnfStart.exit.i, !llvm.loop !94

Tn_GenCnfStart.exit.i:                            ; preds = %._crit_edge191.i.i, %.preheader.lr.ph.i.i, %.preheader160.lr.ph.i.i
  %i.akc = phi ptr [ %i.ain, %.preheader.lr.ph.i.i ], [ %i.aaa, %.preheader160.lr.ph.i.i ], [ %i.ain, %._crit_edge191.i.i ] ; 2 uses
  %i.akd = phi i32 [ %i.aim, %.preheader.lr.ph.i.i ], [ %i.zx, %.preheader160.lr.ph.i.i ], [ %i.ajx, %._crit_edge191.i.i ]
  %.not82.i = icmp eq i32 %i.akd, 31
  br i1 %.not82.i, label %._crit_edge81.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %Tn_GenCnfStart.exit.i, %.preheader158.i.i, %._crit_edge175.i.i
  %i.ake = phi ptr [ %i.akc, %Tn_GenCnfStart.exit.i ], [ %i.ain, %.preheader158.i.i ], [ %i.aaa, %._crit_edge175.i.i ]
  %i.akf = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.akh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre.i28 = load i32, ptr %i.r, align 4, !tbaa !133
  br label %.preheader.i

.preheader.i:                                     ; preds = %Tn_GenCnfMint.exit.i, %.preheader.lr.ph.i
  %i.aki = phi i32 [ %.pre.i28, %.preheader.lr.ph.i ], [ %i.ayr, %Tn_GenCnfMint.exit.i ] ; 5 uses
  %indvars.iv114.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next115.i, %Tn_GenCnfMint.exit.i ] ; 4 uses
  %i.akj = icmp sgt i32 %i.aki, 0
  br i1 %i.akj, label %.lr.ph.i34, label %._crit_edge.i29

.lr.ph.i34:                                       ; preds = %.preheader.i
  %i.akk = shl nuw i64 1, %indvars.iv114.i        ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.aki to i64 ; 2 uses
  %xtraiter894 = and i64 %wide.trip.count.i, 1
  %i.akl = icmp eq i32 %i.aki, 1
  br i1 %i.akl, label %.epil.preheader, label %.lr.ph.i34.new

.lr.ph.i34.new:                                   ; preds = %.lr.ph.i34
  %unroll_iter898 = and i64 %wide.trip.count.i, 2147483646
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i34.new
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.i34.new ], [ %indvars.iv.next.i36.1, %bb.bh ] ; 4 uses
  %.079.i = phi i32 [ 0, %.lr.ph.i34.new ], [ %.1.i.1, %bb.bh ]
  %niter899 = phi i64 [ 0, %.lr.ph.i34.new ], [ %niter899.next.1, %bb.bh ]
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.akf, i64 %indvars.iv.i35
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !33
  %i.ako = and i64 %i.akn, %i.akk
  %.not33.i = icmp eq i64 %i.ako, 0
  %i.akp = trunc nuw nsw i64 %indvars.iv.i35 to i32
  %i.akq = shl nuw i32 1, %i.akp
  %i.akr = select i1 %.not33.i, i32 0, i32 %i.akq
  %.1.i = or i32 %i.akr, %.079.i
  %indvars.iv.next.i36 = or disjoint i64 %indvars.iv.i35, 1 ; 2 uses
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.akf, i64 %indvars.iv.next.i36
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !33
  %i.aku = and i64 %i.akt, %i.akk
  %.not33.i.1 = icmp eq i64 %i.aku, 0
  %i.akv = trunc nuw nsw i64 %indvars.iv.next.i36 to i32
  %i.akw = shl nuw i32 1, %i.akv
  %i.akx = select i1 %.not33.i.1, i32 0, i32 %i.akw
  %.1.i.1 = or i32 %i.akx, %.1.i                  ; 3 uses
  %indvars.iv.next.i36.1 = add nuw nsw i64 %indvars.iv.i35, 2 ; 2 uses
  %niter899.next.1 = add i64 %niter899, 2         ; 2 uses
  %niter899.ncmp.1 = icmp eq i64 %niter899.next.1, %unroll_iter898
  br i1 %niter899.ncmp.1, label %._crit_edge.i29.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !95

._crit_edge.i29.loopexit.unr-lcssa:               ; preds = %bb.bh
  %lcmp.mod895.not = icmp eq i64 %xtraiter894, 0
  br i1 %lcmp.mod895.not, label %._crit_edge.i29, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i29.loopexit.unr-lcssa, %.lr.ph.i34
  %indvars.iv.i35.epil.init = phi i64 [ 0, %.lr.ph.i34 ], [ %indvars.iv.next.i36.1, %._crit_edge.i29.loopexit.unr-lcssa ] ; 2 uses
  %.079.i.epil.init = phi i32 [ 0, %.lr.ph.i34 ], [ %.1.i.1, %._crit_edge.i29.loopexit.unr-lcssa ]
  %lcmp.mod897 = trunc i32 %i.aki to i1
  tail call void @llvm.assume(i1 %lcmp.mod897)
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akf, i64 %indvars.iv.i35.epil.init
  %i.akz = load i64, ptr %i.aky, align 8, !tbaa !33
  %i.ala = and i64 %i.akz, %i.akk
  %.not33.i.epil = icmp eq i64 %i.ala, 0
  %i.alb = trunc nuw nsw i64 %indvars.iv.i35.epil.init to i32
  %i.alc = shl nuw i32 1, %i.alb
  %i.ald = select i1 %.not33.i.epil, i32 0, i32 %i.alc
  %.1.i.epil = or i32 %i.ald, %.079.i.epil.init
  br label %._crit_edge.i29

._crit_edge.i29:                                  ; preds = %.epil.preheader, %._crit_edge.i29.loopexit.unr-lcssa, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i.1, %._crit_edge.i29.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.ale = load i32, ptr %i.u, align 8, !tbaa !134 ; 2 uses
  %i.alf = icmp sgt i32 %i.ale, 0
  br i1 %i.alf, label %.lr.ph177.i.preheader.i, label %.preheader168.i.i

.lr.ph177.i.preheader.i:                          ; preds = %._crit_edge.i29
  %.pre119.i.a = trunc nuw nsw i64 %indvars.iv114.i to i32 ; 2 uses
  br label %.lr.ph177.i.i

.loopexit.i38.i:                                  ; preds = %Tn_GenAndOrGate.exit.i.i
  %i.alg = icmp slt i32 %i.all, %i.aqm
  br i1 %i.alg, label %.lr.ph177.i.i, label %.preheader168.i.loopexit.i, !llvm.loop !96

.preheader168.i.loopexit.i:                       ; preds = %.lr.ph177.i.i, %.loopexit.i38.i
  %.pre117.i = load i32, ptr %i.r, align 4, !tbaa !133
  br label %.preheader168.i.i

.preheader168.i.i:                                ; preds = %.preheader168.i.loopexit.i, %._crit_edge.i29
  %i.alh = phi i32 [ %.pre117.i, %.preheader168.i.loopexit.i ], [ %i.aki, %._crit_edge.i29 ] ; 2 uses
  %i.ali = icmp sgt i32 %i.alh, 0
  br i1 %i.ali, label %.lr.ph201.i.preheader.i, label %Tn_GenCnfMint.exit.i

.lr.ph201.i.preheader.i:                          ; preds = %.preheader168.i.i
  %i.alj = trunc nuw nsw i64 %indvars.iv114.i to i32 ; 3 uses
  br label %.lr.ph201.i.i

.lr.ph177.i.i:                                    ; preds = %.loopexit.i38.i, %.lr.ph177.i.preheader.i
  %i.alk = phi i32 [ %i.aqm, %.loopexit.i38.i ], [ %i.ale, %.lr.ph177.i.preheader.i ] ; 2 uses
  %.0123175.i.i = phi i32 [ %i.all, %.loopexit.i38.i ], [ 0, %.lr.ph177.i.preheader.i ] ; 4 uses
  %i.all = add nuw nsw i32 %.0123175.i.i, 1       ; 4 uses
  %i.alm = icmp slt i32 %i.all, %i.alk
  br i1 %i.alm, label %.lr.ph174.i.i, label %.preheader168.i.loopexit.i

.lr.ph174.i.i:                                    ; preds = %.lr.ph177.i.i, %Tn_GenAndOrGate.exit.i.i
  %.val.i150219.i.i = phi i32 [ %i.aqm, %Tn_GenAndOrGate.exit.i.i ], [ %i.alk, %.lr.ph177.i.i ]
  %.0124172.i.i = phi i32 [ %i.aql, %Tn_GenAndOrGate.exit.i.i ], [ %i.all, %.lr.ph177.i.i ] ; 4 uses
  %i.aln = load ptr, ptr %i.xd, align 8, !tbaa !21 ; 2 uses
  store i32 0, ptr %i.aln, align 8, !tbaa !15
  %i.alo = load ptr, ptr %i.xi, align 8, !tbaa !21 ; 2 uses
  store i32 0, ptr %i.alo, align 8, !tbaa !15
  %i.alp = load i32, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.alq = icmp sgt i32 %i.alp, 0
  br i1 %i.alq, label %.lr.ph.i41.i, label %._crit_edge.i39.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph174.i.i, %tn_vi_push.exit.i43.i
  %.0126171.i.i = phi i32 [ %i.anc, %tn_vi_push.exit.i43.i ], [ 0, %.lr.ph174.i.i ] ; 3 uses
  %i.alr = load ptr, ptr %i.xd, align 8, !tbaa !21 ; 6 uses
  %i.als = shl nuw i32 1, %.0126171.i.i
  %i.alt = and i32 %i.als, %.pre119.i.a
  %.not.i.not.i.i = icmp eq i32 %i.alt, 0         ; 2 uses
  %.val.i.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val13.i.i42.i = load i32, ptr %i.w, align 4, !tbaa !135
  %.0124172..0123175.i.i = select i1 %.not.i.not.i.i, i32 %.0124172.i.i, i32 %.0123175.i.i
  %.0123175..0124172.i.i = select i1 %.not.i.not.i.i, i32 %.0123175.i.i, i32 %.0124172.i.i
  %i.alu = mul nsw i32 %.val13.i.i42.i, %.0126171.i.i
  %i.alv = mul nsw i32 %.0124172..0123175.i.i, %.val.i.i.i
  %i.alw = add i32 %.0123175..0124172.i.i, %i.alu
  %i.alx = add i32 %i.alw, %i.alv
  %i.aly = load i32, ptr %i.alr, align 8, !tbaa !15 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alr, i64 4 ; 3 uses
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !17 ; 3 uses
  %i.amb = icmp slt i32 %i.aly, %i.ama
  br i1 %i.amb, label %tn_vi_push.exit.i43.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i41.i
  %i.amc = icmp slt i32 %i.ama, 4
  %i.amd = lshr i32 %i.ama, 1
  %i.ame = mul nuw nsw i32 %i.amd, 3
  %i.amf = select i1 %i.amc, i32 8, i32 %i.ame    ; 3 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alr, i64 8 ; 2 uses
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !16
  %i.ami = zext nneg i32 %i.amf to i64
  %i.amj = shl nuw nsw i64 %i.ami, 2
  %i.amk = tail call ptr @realloc(ptr noundef %i.amh, i64 noundef %i.amj) #20 ; 2 uses
  store ptr %i.amk, ptr %i.amg, align 8, !tbaa !16
  %i.aml = icmp eq ptr %i.amk, null
  br i1 %i.aml, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.amm = load i32, ptr %i.alz, align 4, !tbaa !17
  %i.amn = sitofp i32 %i.amm to double
  %i.amo = fmul nnan double %i.amn, 4.000000e+00
  %i.amp = fmul nnan double %i.amo, f0x3EB0000000000000
  %i.amq = uitofp nneg i32 %i.amf to double
  %i.amr = fmul nnan double %i.amq, 4.000000e+00
  %i.ams = fmul nnan double %i.amr, f0x3EB0000000000000
  %i.amt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.amp, double noundef %i.ams) ; 0 uses
  %i.amu = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.amv = tail call i32 @fflush(ptr noundef %i.amu) ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  store i32 %i.amf, ptr %i.alz, align 4, !tbaa !17
  %.pre.i.i.i = load i32, ptr %i.alr, align 8, !tbaa !15
  br label %tn_vi_push.exit.i43.i

tn_vi_push.exit.i43.i:                            ; preds = %bb.bk, %.lr.ph.i41.i
  %i.amw = phi i32 [ %i.aly, %.lr.ph.i41.i ], [ %.pre.i.i.i, %bb.bk ] ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !16
  %i.amz = add nsw i32 %i.amw, 1
  store i32 %i.amz, ptr %i.alr, align 8, !tbaa !15
  %i.ana = sext i32 %i.amw to i64
  %i.anb = getelementptr inbounds [4 x i8], ptr %i.amy, i64 %i.ana
  store i32 %i.alx, ptr %i.anb, align 4, !tbaa !10
  %i.anc = add nuw nsw i32 %.0126171.i.i, 1       ; 2 uses
  %i.and = load i32, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.ane = icmp slt i32 %i.anc, %i.and
  br i1 %i.ane, label %.lr.ph.i41.i, label %._crit_edge.loopexit.i44.i, !llvm.loop !97

._crit_edge.loopexit.i44.i:                       ; preds = %tn_vi_push.exit.i43.i
  %.val.i150.pre.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.pre.i45.i = load ptr, ptr %i.xd, align 8, !tbaa !21
  %.pre220.i.i = load ptr, ptr %i.xi, align 8, !tbaa !21 ; 2 uses
  %.val43.i.pre.i.i = load i32, ptr %.pre220.i.i, align 8, !tbaa !15
  br label %._crit_edge.i39.i

._crit_edge.i39.i:                                ; preds = %._crit_edge.loopexit.i44.i, %.lr.ph174.i.i
  %.val43.i.i.i = phi i32 [ %.val43.i.pre.i.i, %._crit_edge.loopexit.i44.i ], [ 0, %.lr.ph174.i.i ] ; 2 uses
  %i.anf = phi ptr [ %.pre220.i.i, %._crit_edge.loopexit.i44.i ], [ %i.alo, %.lr.ph174.i.i ] ; 4 uses
  %i.ang = phi ptr [ %.pre.i45.i, %._crit_edge.loopexit.i44.i ], [ %i.aln, %.lr.ph174.i.i ] ; 6 uses
  %.val.i150.i40.i = phi i32 [ %.val.i150.pre.i.i, %._crit_edge.loopexit.i44.i ], [ %.val.i150219.i.i, %.lr.ph174.i.i ]
  %.lcssa169.i.i = phi i32 [ %i.and, %._crit_edge.loopexit.i44.i ], [ %i.alp, %.lr.ph174.i.i ]
  %i.anh = add nsw i32 %.lcssa169.i.i, %.pre119.i.a
  %.val6.i.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.ani = mul nsw i32 %.val6.i.i.i, %i.anh
  %i.anj = mul nsw i32 %.val.i150.i40.i, %.0123175.i.i
  %i.ank = add i32 %i.anj, %.0124172.i.i
  %i.anl = add i32 %i.ank, %i.ani                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.ang, ptr %i.a, align 16, !tbaa !21
  store ptr %i.anf, ptr %i.akg, align 8, !tbaa !21
  %.not.i151.i.i = icmp eq i32 %.val43.i.i.i, 31
  br i1 %.not.i151.i.i, label %.preheader.i.i.i, label %.lr.ph58.i.i.i

.lr.ph58.i.i.i:                                   ; preds = %._crit_edge.i39.i
  %i.anm = shl nuw nsw i32 1, %.val43.i.i.i
  %i.ann = shl nsw i32 %i.anl, 1
  %i.ano = or disjoint i32 %i.ann, 1
  %i.anp = getelementptr i8, ptr %i.ang, i64 8
  br label %bb.bl

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %._crit_edge.i39.i
  %.val4059.i.i.i = load i32, ptr %i.ang, align 8, !tbaa !15
  %i.anq = icmp sgt i32 %.val4059.i.i.i, 0
  br i1 %i.anq, label %.lr.ph61.i.i.i, label %Tn_GenAndOrGate.exit.i.i

.lr.ph61.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.anr = shl nsw i32 %i.anl, 1
  %i.ans = getelementptr i8, ptr %i.anf, i64 8
  %i.ant = getelementptr i8, ptr %i.ang, i64 8
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph58.i.i.i
  %.03756.i.i.i = phi i32 [ 0, %.lr.ph58.i.i.i ], [ %i.apv, %._crit_edge.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.ano, ptr %i.b, align 16, !tbaa !10
  %.val42.i.i.i = load i32, ptr %i.anf, align 8, !tbaa !15 ; 5 uses
  %i.anu = icmp sgt i32 %.val42.i.i.i, 0
  br i1 %i.anu, label %.lr.ph.preheader.i.i.i, label %.preheader48.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bl
  %wide.trip.count.i.i.i = zext nneg i32 %.val42.i.i.i to i64 ; 2 uses
  %xtraiter900 = and i64 %wide.trip.count.i.i.i, 1
  %i.anv = icmp eq i32 %.val42.i.i.i, 1
  br i1 %i.anv, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter904 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %.lr.ph.i.i.i

.preheader48.loopexit.i.i.i.unr-lcssa:            ; preds = %.lr.ph.i.i.i
  %lcmp.mod901.not = icmp eq i64 %xtraiter900, 0
  br i1 %lcmp.mod901.not, label %.preheader48.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader48.loopexit.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv65.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next66.i.i.i.1, %.preheader48.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.preheader48.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod903 = trunc i32 %.val42.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod903)
  %i.anw = trunc nuw nsw i64 %indvars.iv65.i.i.i.epil.init to i32
  %i.anx = lshr i32 %.03756.i.i.i, %i.anw
  %i.any = and i32 %i.anx, 1
  %i.anz = zext nneg i32 %i.any to i64
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.anz
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !21
  %i.aoc = getelementptr i8, ptr %i.aob, i64 8
  %.val47.i.i.i.epil = load ptr, ptr %i.aoc, align 8, !tbaa !16
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %.val47.i.i.i.epil, i64 %indvars.iv65.i.i.i.epil.init
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !10
  %i.aof = shl nsw i32 %i.aoe, 1
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil.init, 1
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.epil.init
  store i32 %i.aof, ptr %i.aog, align 4, !tbaa !10
  br label %.preheader48.loopexit.i.i.i

.preheader48.loopexit.i.i.i:                      ; preds = %.preheader48.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.1, %.preheader48.loopexit.i.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader ]
  %i.aoh = trunc nuw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %.preheader48.i.i.i

.preheader48.i.i.i:                               ; preds = %.preheader48.loopexit.i.i.i, %bb.bl
  %.038.lcssa.i.i.i = phi i32 [ 0, %bb.bl ], [ %.val42.i.i.i, %.preheader48.loopexit.i.i.i ] ; 2 uses
  %.036.lcssa.i.i.i = phi i32 [ 1, %bb.bl ], [ %i.aoh, %.preheader48.loopexit.i.i.i ] ; 2 uses
  %.val41.i.i.i = load i32, ptr %i.ang, align 8, !tbaa !15 ; 2 uses
  %i.aoi = icmp slt i32 %.038.lcssa.i.i.i, %.val41.i.i.i
  br i1 %i.aoi, label %.lr.ph54.i.i.i, label %._crit_edge.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %.preheader48.i.i.i
  %.val46.i.i.i = load ptr, ptr %i.anp, align 8, !tbaa !16 ; 2 uses
  %i.aoj = zext i32 %.036.lcssa.i.i.i to i64      ; 3 uses
  %i.aok = zext nneg i32 %.038.lcssa.i.i.i to i64 ; 4 uses
  %wide.trip.count77.i.i.i = zext nneg i32 %.val41.i.i.i to i64 ; 2 uses
  %i.aol = sub nsw i64 %wide.trip.count77.i.i.i, %i.aok ; 3 uses
  %min.iters.check767 = icmp ult i64 %i.aol, 8
  br i1 %min.iters.check767, label %scalar.ph766.preheader, label %vector.ph768

vector.ph768:                                     ; preds = %.lr.ph54.i.i.i
  %n.vec769 = and i64 %i.aol, -8                  ; 4 uses
  %i.aom = add nsw i64 %n.vec769, %i.aok
  %i.aon = add nsw i64 %n.vec769, %i.aoj          ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val46.i.i.i, i64 %i.aok
  %invariant.gep1005 = getelementptr [4 x i8], ptr %i.b, i64 %i.aoj
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph768
  %index771 = phi i64 [ 0, %vector.ph768 ], [ %index.next774, %vector.body770 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index771 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load772 = load <4 x i32>, ptr %gep, align 4, !tbaa !10
  %wide.load773 = load <4 x i32>, ptr %i.aoo, align 4, !tbaa !10
  %i.aop = shl nsw <4 x i32> %wide.load772, splat (i32 1)
  %i.aoq = shl nsw <4 x i32> %wide.load773, splat (i32 1)
  %gep1006 = getelementptr [4 x i8], ptr %invariant.gep1005, i64 %index771 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %gep1006, i64 16
  store <4 x i32> %i.aop, ptr %gep1006, align 4, !tbaa !10
  store <4 x i32> %i.aoq, ptr %i.aor, align 4, !tbaa !10
  %index.next774 = add nuw i64 %index771, 8       ; 2 uses
  %i.aos = icmp eq i64 %index.next774, %n.vec769
  br i1 %i.aos, label %middle.block775, label %vector.body770, !llvm.loop !98

middle.block775:                                  ; preds = %vector.body770
  %cmp.n776 = icmp eq i64 %i.aol, %n.vec769
  br i1 %cmp.n776, label %._crit_edge.loopexit.i.i.i, label %scalar.ph766.preheader

scalar.ph766.preheader:                           ; preds = %.lr.ph54.i.i.i, %middle.block775
  %indvars.iv72.i.i.i.ph = phi i64 [ %i.aok, %.lr.ph54.i.i.i ], [ %i.aom, %middle.block775 ]
  %indvars.iv70.i.i.i.ph = phi i64 [ %i.aoj, %.lr.ph54.i.i.i ], [ %i.aon, %middle.block775 ]
  br label %scalar.ph766

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv65.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next66.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %niter905 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter905.next.1, %.lr.ph.i.i.i ]
  %i.aot = trunc nuw nsw i64 %indvars.iv65.i.i.i to i32
  %i.aou = lshr i32 %.03756.i.i.i, %i.aot
  %i.aov = and i32 %i.aou, 1
  %i.aow = zext nneg i32 %i.aov to i64
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aow
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !21
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 8
  %.val47.i.i.i = load ptr, ptr %i.aoz, align 8, !tbaa !16
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %.val47.i.i.i, i64 %indvars.iv65.i.i.i
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !10
  %i.apc = shl nsw i32 %i.apb, 1
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  store i32 %i.apc, ptr %i.apd, align 4, !tbaa !10
  %indvars.iv.next66.i.i.i = or disjoint i64 %indvars.iv65.i.i.i, 1 ; 2 uses
  %i.ape = trunc nuw nsw i64 %indvars.iv.next66.i.i.i to i32
  %i.apf = lshr i32 %.03756.i.i.i, %i.ape
  %i.apg = and i32 %i.apf, 1
  %i.aph = zext nneg i32 %i.apg to i64
  %i.api = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aph
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !21
  %i.apk = getelementptr i8, ptr %i.apj, i64 8
  %.val47.i.i.i.1 = load ptr, ptr %i.apk, align 8, !tbaa !16
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %.val47.i.i.i.1, i64 %indvars.iv.next66.i.i.i
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !10
  %i.apn = shl nsw i32 %i.apm, 1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 3 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 4
  store i32 %i.apn, ptr %i.app, align 4, !tbaa !10
  %indvars.iv.next66.i.i.i.1 = add nuw nsw i64 %indvars.iv65.i.i.i, 2 ; 2 uses
  %niter905.next.1 = add nuw i64 %niter905, 2     ; 2 uses
  %niter905.ncmp.1 = icmp eq i64 %niter905.next.1, %unroll_iter904
  br i1 %niter905.ncmp.1, label %.preheader48.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !99

scalar.ph766:                                     ; preds = %scalar.ph766.preheader, %scalar.ph766
  %indvars.iv72.i.i.i = phi i64 [ %indvars.iv.next73.i.i.i, %scalar.ph766 ], [ %indvars.iv72.i.i.i.ph, %scalar.ph766.preheader ] ; 2 uses
  %indvars.iv70.i.i.i = phi i64 [ %indvars.iv.next71.i.i.i, %scalar.ph766 ], [ %indvars.iv70.i.i.i.ph, %scalar.ph766.preheader ] ; 2 uses
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.val46.i.i.i, i64 %indvars.iv72.i.i.i
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !10
  %i.aps = shl nsw i32 %i.apr, 1
  %indvars.iv.next71.i.i.i = add nuw nsw i64 %indvars.iv70.i.i.i, 1 ; 2 uses
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv70.i.i.i
  store i32 %i.aps, ptr %i.apt, align 4, !tbaa !10
  %indvars.iv.next73.i.i.i = add nuw nsw i64 %indvars.iv72.i.i.i, 1 ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i64 %indvars.iv.next73.i.i.i, %wide.trip.count77.i.i.i
  br i1 %exitcond78.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %scalar.ph766, !llvm.loop !100

._crit_edge.loopexit.i.i.i:                       ; preds = %scalar.ph766, %middle.block775
  %indvars.iv.next71.i.i.i.lcssa = phi i64 [ %i.aon, %middle.block775 ], [ %indvars.iv.next71.i.i.i, %scalar.ph766 ]
  %i.apu = trunc nuw i64 %indvars.iv.next71.i.i.i.lcssa to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader48.i.i.i
  %.1.lcssa.i.i.i = phi i32 [ %.036.lcssa.i.i.i, %.preheader48.i.i.i ], [ %i.apu, %._crit_edge.loopexit.i.i.i ]
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, i32 noundef %.1.lcssa.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.apv = add nuw nsw i32 %.03756.i.i.i, 1       ; 2 uses
  %exitcond79.not.i.i.i = icmp eq i32 %i.apv, %i.anm
  br i1 %exitcond79.not.i.i.i, label %.preheader.i.i.i, label %bb.bl, !llvm.loop !101

bb.bm:                                            ; preds = %bb.bo, %.lr.ph61.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ 0, %.lr.ph61.i.i.i ], [ %indvars.iv.next81.i.i.i, %bb.bo ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 %i.anr, ptr %i.c, align 16, !tbaa !10
  %.val.i152.i.i = load i32, ptr %i.anf, align 8, !tbaa !15
  %i.apw = sext i32 %.val.i152.i.i to i64
  %i.apx = icmp slt i64 %indvars.iv80.i.i.i, %i.apw
  br i1 %i.apx, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.val45.i.i.i = load ptr, ptr %i.ans, align 8, !tbaa !16
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %.val45.i.i.i, i64 %indvars.iv80.i.i.i
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !10
  %i.aqa = shl nsw i32 %i.apz, 1
  %i.aqb = or disjoint i32 %i.aqa, 1
  store i32 %i.aqb, ptr %i.akh, align 4, !tbaa !10
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0.i.i.i = phi i32 [ 2, %bb.bn ], [ 1, %bb.bm ] ; 2 uses
  %.val44.i.i.i = load ptr, ptr %i.ant, align 8, !tbaa !16
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %.val44.i.i.i, i64 %indvars.iv80.i.i.i
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !10
  %i.aqe = shl nsw i32 %i.aqd, 1
  %i.aqf = or disjoint i32 %i.aqe, 1
  %i.aqg = add nuw nsw i32 %.0.i.i.i, 1
  %i.aqh = zext nneg i32 %.0.i.i.i to i64
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aqh
  store i32 %i.aqf, ptr %i.aqi, align 4, !tbaa !10
  call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c, i32 noundef %i.aqg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %indvars.iv.next81.i.i.i = add nuw nsw i64 %indvars.iv80.i.i.i, 1 ; 2 uses
  %.val40.i.i.i = load i32, ptr %i.ang, align 8, !tbaa !15
  %i.aqj = sext i32 %.val40.i.i.i to i64
  %i.aqk = icmp slt i64 %indvars.iv.next81.i.i.i, %i.aqj
  br i1 %i.aqk, label %bb.bm, label %Tn_GenAndOrGate.exit.i.i, !llvm.loop !102

Tn_GenAndOrGate.exit.i.i:                         ; preds = %bb.bo, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.aql = add nuw nsw i32 %.0124172.i.i, 1       ; 2 uses
  %i.aqm = load i32, ptr %i.u, align 8, !tbaa !134 ; 4 uses
  %i.aqn = icmp slt i32 %i.aql, %i.aqm
  br i1 %i.aqn, label %.lr.ph174.i.i, label %.loopexit.i38.i, !llvm.loop !103

.lr.ph201.i.i:                                    ; preds = %.critedge2.i.i, %.lr.ph201.i.preheader.i
  %indvars.iv215.i.i = phi i64 [ %indvars.iv.next216.i.i, %.critedge2.i.i ], [ 0, %.lr.ph201.i.preheader.i ] ; 3 uses
  %i.aqo = trunc nuw nsw i64 %indvars.iv215.i.i to i32
  %i.aqp = shl nuw i32 1, %i.aqo
  %i.aqq = and i32 %i.aqp, %.0.lcssa.i
  %.not.i34.i = icmp eq i32 %i.aqq, 0
  %.idx263.i.i = shl nuw nsw i64 %indvars.iv215.i.i, 4 ; 2 uses
  br i1 %.not.i34.i, label %.preheader.i37.i, label %.preheader167.i.i

.preheader167.i.i:                                ; preds = %.lr.ph201.i.i
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx263.i.i ; 4 uses
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !21 ; 2 uses
  %i.aqt = load i32, ptr %i.aqs, align 8, !tbaa !15
  %i.aqu = icmp sgt i32 %i.aqt, 0
  br i1 %i.aqu, label %.lr.ph184.i.i, label %.critedge.i.i

.preheader.i37.i:                                 ; preds = %.lr.ph201.i.i
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx263.i.i
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 168 ; 3 uses
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !21 ; 2 uses
  %i.aqy = load i32, ptr %i.aqx, align 8, !tbaa !15
  %i.aqz = icmp sgt i32 %i.aqy, 0
  br i1 %i.aqz, label %.lr.ph199.i.i, label %.critedge2.i.i

.lr.ph184.i.i:                                    ; preds = %.preheader167.i.i, %._crit_edge182.i.i
  %i.ara = phi ptr [ %i.ati, %._crit_edge182.i.i ], [ %i.aqs, %.preheader167.i.i ]
  %.1125183.i.i = phi i32 [ %i.ath, %._crit_edge182.i.i ], [ 0, %.preheader167.i.i ] ; 2 uses
  %i.arb = add nsw i32 %.1125183.i.i, 1           ; 2 uses
  %i.arc = getelementptr i8, ptr %i.ara, i64 8
  %.val143.i.i = load ptr, ptr %i.arc, align 8, !tbaa !16
  %i.ard = sext i32 %.1125183.i.i to i64
  %i.are = getelementptr inbounds [4 x i8], ptr %.val143.i.i, i64 %i.ard
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !10 ; 3 uses
  %i.arg = load ptr, ptr %i.xd, align 8, !tbaa !21 ; 2 uses
  store i32 0, ptr %i.arg, align 8, !tbaa !15
  %i.arh = icmp sgt i32 %i.arf, 1
  br i1 %i.arh, label %.lr.ph181.preheader.i.i, label %._crit_edge182.i.i

.lr.ph181.preheader.i.i:                          ; preds = %.lr.ph184.i.i
  %i.ari = lshr i32 %i.arf, 1
  %i.arj = sext i32 %i.arb to i64
  %wide.trip.count.i.i31 = zext nneg i32 %i.ari to i64
  br label %.lr.ph181.i.i

.lr.ph181.i.i:                                    ; preds = %tn_vi_push.exit156.i.i, %.lr.ph181.preheader.i.i
  %indvars.iv.i35.i = phi i64 [ 0, %.lr.ph181.preheader.i.i ], [ %indvars.iv.next.i36.i, %tn_vi_push.exit156.i.i ] ; 2 uses
  %i.ark = load ptr, ptr %i.aqr, align 8, !tbaa !21
  %i.arl = getelementptr i8, ptr %i.ark, i64 8
  %.val142.i.i = load ptr, ptr %i.arl, align 8, !tbaa !16
  %.idx262.i.i = shl nuw nsw i64 %indvars.iv.i35.i, 3
  %i.arm = getelementptr i8, ptr %.val142.i.i, i64 %.idx262.i.i
  %i.arn = getelementptr [4 x i8], ptr %i.arm, i64 %i.arj ; 2 uses
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !10 ; 2 uses
  %i.arp = getelementptr i8, ptr %i.arn, i64 4
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !10 ; 2 uses
  %i.arr = load ptr, ptr %i.xd, align 8, !tbaa !21 ; 6 uses
  %i.ars = tail call noundef i32 @llvm.smin.i32(i32 %i.aro, i32 %i.arq)
  %i.art = tail call noundef i32 @llvm.smax.i32(i32 %i.aro, i32 %i.arq)
  %i.aru = load i32, ptr %i.q, align 8, !tbaa !132
  %i.arv = add nsw i32 %i.aru, %i.alj
  %.val.i153.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val6.i154.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.arw = mul nsw i32 %.val6.i154.i.i, %i.arv
  %i.arx = mul nsw i32 %.val.i153.i.i, %i.ars
  %i.ary = add i32 %i.arx, %i.art
  %i.arz = add i32 %i.ary, %i.arw
  %i.asa = shl nsw i32 %i.arz, 1
  %i.asb = load i32, ptr %i.arr, align 8, !tbaa !15 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arr, i64 4 ; 3 uses
  %i.asd = load i32, ptr %i.asc, align 4, !tbaa !17 ; 3 uses
  %i.ase = icmp slt i32 %i.asb, %i.asd
  br i1 %i.ase, label %tn_vi_push.exit156.i.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph181.i.i
  %i.asf = icmp slt i32 %i.asd, 4
  %i.asg = lshr i32 %i.asd, 1
  %i.ash = mul nuw nsw i32 %i.asg, 3
  %i.asi = select i1 %i.asf, i32 8, i32 %i.ash    ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arr, i64 8 ; 2 uses
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !16
  %i.asl = zext nneg i32 %i.asi to i64
  %i.asm = shl nuw nsw i64 %i.asl, 2
  %i.asn = tail call ptr @realloc(ptr noundef %i.ask, i64 noundef %i.asm) #20 ; 2 uses
  store ptr %i.asn, ptr %i.asj, align 8, !tbaa !16
  %i.aso = icmp eq ptr %i.asn, null
  br i1 %i.aso, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.asp = load i32, ptr %i.asc, align 4, !tbaa !17
  %i.asq = sitofp i32 %i.asp to double
  %i.asr = fmul nnan double %i.asq, 4.000000e+00
  %i.ass = fmul nnan double %i.asr, f0x3EB0000000000000
  %i.ast = uitofp nneg i32 %i.asi to double
  %i.asu = fmul nnan double %i.ast, 4.000000e+00
  %i.asv = fmul nnan double %i.asu, f0x3EB0000000000000
  %i.asw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.ass, double noundef %i.asv) ; 0 uses
  %i.asx = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.asy = tail call i32 @fflush(ptr noundef %i.asx) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store i32 %i.asi, ptr %i.asc, align 4, !tbaa !17
  %.pre.i155.i.i = load i32, ptr %i.arr, align 8, !tbaa !15
  br label %tn_vi_push.exit156.i.i

tn_vi_push.exit156.i.i:                           ; preds = %bb.br, %.lr.ph181.i.i
  %i.asz = phi i32 [ %i.asb, %.lr.ph181.i.i ], [ %.pre.i155.i.i, %bb.br ] ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !16
  %i.atc = add nsw i32 %i.asz, 1
  store i32 %i.atc, ptr %i.arr, align 8, !tbaa !15
  %i.atd = sext i32 %i.asz to i64
  %i.ate = getelementptr inbounds [4 x i8], ptr %i.atb, i64 %i.atd
  store i32 %i.asa, ptr %i.ate, align 4, !tbaa !10
  %indvars.iv.next.i36.i = add nuw nsw i64 %indvars.iv.i35.i, 1 ; 2 uses
  %exitcond.not.i.i32 = icmp eq i64 %indvars.iv.next.i36.i, %wide.trip.count.i.i31
  br i1 %exitcond.not.i.i32, label %._crit_edge182.loopexit.i.i, label %.lr.ph181.i.i, !llvm.loop !104

._crit_edge182.loopexit.i.i:                      ; preds = %tn_vi_push.exit156.i.i
  %.pre222.i.i = load ptr, ptr %i.xd, align 8, !tbaa !21 ; 2 uses
  %.val148.pre.i.i = load i32, ptr %.pre222.i.i, align 8, !tbaa !15
  br label %._crit_edge182.i.i

._crit_edge182.i.i:                               ; preds = %._crit_edge182.loopexit.i.i, %.lr.ph184.i.i
  %.val148.i.i = phi i32 [ %.val148.pre.i.i, %._crit_edge182.loopexit.i.i ], [ 0, %.lr.ph184.i.i ]
  %i.atf = phi ptr [ %.pre222.i.i, %._crit_edge182.loopexit.i.i ], [ %i.arg, %.lr.ph184.i.i ]
  %i.atg = getelementptr i8, ptr %i.atf, i64 8
  %.val149.i.i = load ptr, ptr %i.atg, align 8, !tbaa !16
  tail call fastcc void @Tn_GenClause(ptr noundef nonnull %i.q, ptr noundef %.val149.i.i, i32 noundef %.val148.i.i)
  %i.ath = add nsw i32 %i.arf, %i.arb             ; 2 uses
  %i.ati = load ptr, ptr %i.aqr, align 8, !tbaa !21 ; 2 uses
  %i.atj = load i32, ptr %i.ati, align 8, !tbaa !15
  %i.atk = icmp slt i32 %i.ath, %i.atj
  br i1 %i.atk, label %.lr.ph184.i.i, label %.critedge.i.i, !llvm.loop !105

.critedge.i.i:                                    ; preds = %._crit_edge182.i.i, %.preheader167.i.i
  %i.atl = load i32, ptr %i.ae, align 8, !tbaa !138
  %i.atm = icmp eq i32 %i.atl, 0
  br i1 %i.atm, label %.critedge2.i.i, label %.preheader165.i.i

.preheader165.i.i:                                ; preds = %.critedge.i.i
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8 ; 3 uses
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !21 ; 2 uses
  %i.atp = load i32, ptr %i.ato, align 8, !tbaa !15 ; 2 uses
  %i.atq = icmp sgt i32 %i.atp, 0
  br i1 %i.atq, label %.lr.ph192.i.i, label %.critedge2.i.i

.lr.ph192.i.i:                                    ; preds = %.preheader165.i.i, %bb.bx
  %i.atr = phi i32 [ %i.awa, %bb.bx ], [ %i.atp, %.preheader165.i.i ]
  %i.ats = phi ptr [ %i.awb, %bb.bx ], [ %i.ato, %.preheader165.i.i ] ; 2 uses
  %.2191.i.i = phi i32 [ %i.awc, %bb.bx ], [ 0, %.preheader165.i.i ] ; 2 uses
  %i.att = add nsw i32 %.2191.i.i, 1              ; 2 uses
  %i.atu = getelementptr i8, ptr %i.ats, i64 8
  %.val140.i.i = load ptr, ptr %i.atu, align 8, !tbaa !16 ; 2 uses
  %i.atv = sext i32 %.2191.i.i to i64
  %i.atw = getelementptr inbounds [4 x i8], ptr %.val140.i.i, i64 %i.atv
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !10 ; 4 uses
  %i.aty = load i32, ptr %i.ae, align 8, !tbaa !138
  %i.atz = add nsw i32 %i.aty, 1
  %.not134.i.i = icmp sgt i32 %i.atx, %i.atz
  br i1 %.not134.i.i, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %.lr.ph192.i.i
  %i.aua = sext i32 %i.att to i64                 ; 2 uses
  %i.aub = getelementptr inbounds [4 x i8], ptr %.val140.i.i, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !10
  %i.aud = load ptr, ptr %i.xd, align 8, !tbaa !21 ; 2 uses
  store i32 0, ptr %i.aud, align 8, !tbaa !15
  %i.aue = icmp sgt i32 %i.atx, 1
  br i1 %i.aue, label %.lr.ph189.preheader.i.i, label %.critedge4.i.i

.lr.ph189.preheader.i.i:                          ; preds = %bb.bs
  %wide.trip.count208.i.i = zext nneg i32 %i.atx to i64
  br label %.lr.ph189.i.i

.lr.ph189.i.i:                                    ; preds = %tn_vi_push.exit160.i.i, %.lr.ph189.preheader.i.i
  %indvars.iv205.i.i = phi i64 [ 1, %.lr.ph189.preheader.i.i ], [ %indvars.iv.next206.i.i, %tn_vi_push.exit160.i.i ] ; 2 uses
  %.0122187.i.i = phi i32 [ %i.auc, %.lr.ph189.preheader.i.i ], [ %i.auj, %tn_vi_push.exit160.i.i ] ; 2 uses
  %i.auf = load ptr, ptr %i.atn, align 8, !tbaa !21
  %i.aug = getelementptr i8, ptr %i.auf, i64 8
  %.val138.i.i = load ptr, ptr %i.aug, align 8, !tbaa !16
  %i.auh = getelementptr [4 x i8], ptr %.val138.i.i, i64 %indvars.iv205.i.i
  %i.aui = getelementptr [4 x i8], ptr %i.auh, i64 %i.aua
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !10 ; 4 uses
  %.not135.i.i = icmp eq i32 %i.auj, 0
  %.pre224.pre230.i.i = load ptr, ptr %i.xd, align 8, !tbaa !21 ; 7 uses
  br i1 %.not135.i.i, label %.critedge4.loopexit.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph189.i.i
  %i.auk = tail call noundef i32 @llvm.smin.i32(i32 %.0122187.i.i, i32 %i.auj)
  %i.aul = tail call noundef i32 @llvm.smax.i32(i32 %.0122187.i.i, i32 %i.auj)
  %i.aum = load i32, ptr %i.q, align 8, !tbaa !132
  %i.aun = add nsw i32 %i.aum, %i.alj
  %.val.i157.i.i = load i32, ptr %i.u, align 8, !tbaa !134
  %.val6.i158.i.i = load i32, ptr %i.w, align 4, !tbaa !135
  %i.auo = mul nsw i32 %.val6.i158.i.i, %i.aun
  %i.aup = mul nsw i32 %.val.i157.i.i, %i.auk
end_hunk_0
