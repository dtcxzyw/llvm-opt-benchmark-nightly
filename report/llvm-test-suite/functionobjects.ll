inline.NumInlined: 306
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 %.idx451 ; 3 uses
  %cond = icmp eq i32 %.fr, 1
  %.not.i186392 = icmp eq i32 %.fr, 1
  %.06.i185391 = getelementptr i8, ptr %i.s, i64 8
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph291, %_Z13verify_sortedIPdEvT_S1_.exit
  %.0289 = phi i32 [ 0, %.lr.ph291 ], [ %i.ai, %_Z13verify_sortedIPdEvT_S1_.exit ]
  br i1 %i.u, label %bb.f, label %bb.g, !prof !39

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.q, i64 %i.n, i1 false)
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.v, label %bb.h, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = load double, ptr %i.q, align 8, !tbaa !29
  store double %i.ac, ptr %i.s, align 8, !tbaa !29
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.g, %bb.h
  tail call void @qsort(ptr noundef nonnull %i.s, i64 noundef %i.l, i64 noundef 8, ptr noundef nonnull @_Z19less_than_function1PKvS0_)
  br i1 %.not.i387, label %_Z13verify_sortedIPdEvT_S1_.exit, label %.lr.ph390

bb.i:                                             ; preds = %.lr.ph390
  %.06.i = getelementptr i8, ptr %.06.i389, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.06.i, %i.w
  br i1 %.not.i, label %_Z13verify_sortedIPdEvT_S1_.exit, label %.lr.ph390, !llvm.loop !40

.lr.ph390:                                        ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit, %bb.i
  %.06.i389 = phi ptr [ %.06.i, %bb.i ], [ %.06.i386, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit ] ; 3 uses
  %.pn.i388 = phi ptr [ %.06.i389, %bb.i ], [ %i.s, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit ]
  %i.ad = load double, ptr %.06.i389, align 8, !tbaa !29
  %i.ae = load double, ptr %.pn.i388, align 8, !tbaa !29
  %i.af = fcmp olt double %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %bb.i, !llvm.loop !40

bb.j:                                             ; preds = %.lr.ph390
  %i.ag = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ag) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit

_Z13verify_sortedIPdEvT_S1_.exit:                 ; preds = %bb.i, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit, %bb.j
  %i.ai = add nuw nsw i32 %.0289, 1               ; 2 uses
  %exitcond325.not = icmp eq i32 %i.ai, %i.j
  br i1 %exitcond325.not, label %.lr.ph293, label %bb.e, !llvm.loop !41

.lr.ph295:                                        ; preds = %_Z13verify_sortedIPdEvT_S1_.exit187
  %i.aj = icmp sgt i32 %.fr, 1
  %i.ak = icmp eq i32 %.fr, 1
  %.idx452 = shl nsw i64 %i.l, 3
  %i.al = getelementptr inbounds i8, ptr %i.s, i64 %.idx452 ; 2 uses
  %.not.i191397 = icmp eq i32 %.fr, 1
  %.06.i190396 = getelementptr i8, ptr %i.s, i64 8
  br label %bb.x

bb.k:                                             ; preds = %.lr.ph293, %_Z13verify_sortedIPdEvT_S1_.exit187
  %.1292 = phi i32 [ 0, %.lr.ph293 ], [ %i.bb, %_Z13verify_sortedIPdEvT_S1_.exit187 ]
  br i1 %i.aa, label %bb.n, label %bb.l, !prof !39

bb.l:                                             ; preds = %bb.k
  br i1 %cond, label %bb.m, label %.lr.ph395

bb.m:                                             ; preds = %bb.l
  %i.am = load double, ptr %i.q, align 8, !tbaa !29
  store double %i.am, ptr %i.s, align 8, !tbaa !29
  br label %_Z18quicksort_functionPdS_PFbddE.exit

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.q, i64 %i.n, i1 false)
  %i.an = load double, ptr %i.s, align 8, !tbaa !29 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %.027.i = phi ptr [ %i.ab, %bb.n ], [ %i.ao, %bb.s ]
  %.0.i = phi ptr [ %i.s, %bb.n ], [ %.1.i, %bb.s ] ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.128.i = phi ptr [ %.027.i, %bb.o ], [ %i.ao, %bb.p ] ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.128.i, i64 -8 ; 6 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %i.aq = fcmp olt double %i.an, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.q, !llvm.loop !30

bb.q:                                             ; preds = %bb.p
  %i.ar = icmp ult ptr %.0.i, %i.ao
  br i1 %i.ar, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %bb.q, %.preheader.i
  %.1.i = phi ptr [ %i.au, %.preheader.i ], [ %.0.i, %bb.q ] ; 5 uses
  %i.as = load double, ptr %.1.i, align 8, !tbaa !29 ; 2 uses
  %i.at = fcmp olt double %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  br i1 %i.at, label %.preheader.i, label %bb.r, !llvm.loop !31

bb.r:                                             ; preds = %.preheader.i
  %i.av = icmp ult ptr %.1.i, %i.ao
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.as, ptr %i.ao, align 8, !tbaa !29
  store double %i.ap, ptr %.1.i, align 8, !tbaa !29
  br label %bb.o, !llvm.loop !32

bb.t:                                             ; preds = %bb.r, %bb.q
  tail call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %i.s, ptr noundef nonnull %.128.i, ptr noundef nonnull @_Z19less_than_function2dd)
  tail call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %.128.i, ptr noundef nonnull %i.ab, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %_Z18quicksort_functionPdS_PFbddE.exit

_Z18quicksort_functionPdS_PFbddE.exit:            ; preds = %bb.m, %bb.t
  br i1 %.not.i186392, label %_Z13verify_sortedIPdEvT_S1_.exit187, label %.lr.ph395

.lr.ph395:                                        ; preds = %bb.l, %_Z18quicksort_functionPdS_PFbddE.exit
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %.06.i185 = getelementptr i8, ptr %.06.i185394, i64 8 ; 2 uses
  %.not.i186 = icmp eq ptr %.06.i185, %i.ab
  br i1 %.not.i186, label %_Z13verify_sortedIPdEvT_S1_.exit187, label %bb.v, !llvm.loop !40

bb.v:                                             ; preds = %.lr.ph395, %bb.u
  %.06.i185394 = phi ptr [ %.06.i185391, %.lr.ph395 ], [ %.06.i185, %bb.u ] ; 3 uses
  %.pn.i184393 = phi ptr [ %i.s, %.lr.ph395 ], [ %.06.i185394, %bb.u ]
  %i.aw = load double, ptr %.06.i185394, align 8, !tbaa !29
  %i.ax = load double, ptr %.pn.i184393, align 8, !tbaa !29
  %i.ay = fcmp olt double %i.aw, %i.ax
  br i1 %i.ay, label %bb.w, label %bb.u, !llvm.loop !40

bb.w:                                             ; preds = %bb.v
  %i.az = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.az) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit187

_Z13verify_sortedIPdEvT_S1_.exit187:              ; preds = %bb.u, %_Z18quicksort_functionPdS_PFbddE.exit, %bb.w
  %i.bb = add nuw nsw i32 %.1292, 1               ; 2 uses
  %exitcond326.not = icmp eq i32 %i.bb, %i.j
  br i1 %exitcond326.not, label %.lr.ph295, label %bb.k, !llvm.loop !42

.lr.ph297:                                        ; preds = %_Z13verify_sortedIPdEvT_S1_.exit192
  %i.bc = icmp sgt i32 %.fr, 1
  %.idx453 = shl nsw i64 %i.l, 3
  %i.bd = getelementptr inbounds i8, ptr %i.s, i64 %.idx453 ; 3 uses
  %cond458 = icmp eq i32 %.fr, 1
  %.not.i199402 = icmp eq i32 %.fr, 1
  %.06.i198401 = getelementptr i8, ptr %i.s, i64 8
  br label %bb.ad

bb.x:                                             ; preds = %.lr.ph295, %_Z13verify_sortedIPdEvT_S1_.exit192
  %.2294 = phi i32 [ 0, %.lr.ph295 ], [ %i.bk, %_Z13verify_sortedIPdEvT_S1_.exit192 ]
  br i1 %i.aj, label %bb.y, label %bb.z, !prof !39

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.q, i64 %i.n, i1 false)
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit188

bb.z:                                             ; preds = %bb.x
  br i1 %i.ak, label %bb.aa, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit188

bb.aa:                                            ; preds = %bb.z
  %i.be = load double, ptr %i.q, align 8, !tbaa !29
  store double %i.be, ptr %i.s, align 8, !tbaa !29
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit188

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit188:              ; preds = %bb.y, %bb.z, %bb.aa
  tail call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.al, ptr noundef nonnull @_Z19less_than_function2dd)
  br i1 %.not.i191397, label %_Z13verify_sortedIPdEvT_S1_.exit192, label %.lr.ph400

bb.ab:                                            ; preds = %.lr.ph400
  %.06.i190 = getelementptr i8, ptr %.06.i190399, i64 8 ; 2 uses
  %.not.i191 = icmp eq ptr %.06.i190, %i.al
  br i1 %.not.i191, label %_Z13verify_sortedIPdEvT_S1_.exit192, label %.lr.ph400, !llvm.loop !40

.lr.ph400:                                        ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit188, %bb.ab
  %.06.i190399 = phi ptr [ %.06.i190, %bb.ab ], [ %.06.i190396, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit188 ] ; 3 uses
  %.pn.i189398 = phi ptr [ %.06.i190399, %bb.ab ], [ %i.s, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit188 ]
  %i.bf = load double, ptr %.06.i190399, align 8, !tbaa !29
  %i.bg = load double, ptr %.pn.i189398, align 8, !tbaa !29
  %i.bh = fcmp olt double %i.bf, %i.bg
  br i1 %i.bh, label %bb.ac, label %bb.ab, !llvm.loop !40

bb.ac:                                            ; preds = %.lr.ph400
  %i.bi = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bi) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit192

_Z13verify_sortedIPdEvT_S1_.exit192:              ; preds = %bb.ab, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit188, %bb.ac
  %i.bk = add nuw nsw i32 %.2294, 1               ; 2 uses
  %exitcond327.not = icmp eq i32 %i.bk, %i.j
  br i1 %exitcond327.not, label %.lr.ph297, label %bb.x, !llvm.loop !43

.lr.ph299:                                        ; preds = %_Z13verify_sortedIPdEvT_S1_.exit200
  %i.bl = icmp sgt i32 %.fr, 1
  %i.bm = getelementptr inbounds i8, ptr %i.s, i64 %i.n ; 6 uses
  %i.bn = ptrtoint ptr %i.s to i64
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.bp = shl nuw nsw i64 %i.bo, 1
  %i.bq = xor i64 %i.bp, 126                      ; 3 uses
  %2 = icmp samesign ugt i32 %.fr, 16
  %.018.i16.i = getelementptr i8, ptr %i.s, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 4 uses
  %i.bs = add nsw i64 %i.n, -136                  ; 2 uses
  %i.bt = and i64 %i.bs, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bt, 0
  %.011.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.s, i64 120 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.bv = icmp eq i64 %i.bs, 0
  %.not.i204407 = icmp eq i32 %.fr, 1
  %.06.i203406 = getelementptr i8, ptr %i.s, i64 8
  br label %bb.aq

bb.ad:                                            ; preds = %.lr.ph297, %_Z13verify_sortedIPdEvT_S1_.exit200
  %.3296 = phi i32 [ 0, %.lr.ph297 ], [ %i.cl, %_Z13verify_sortedIPdEvT_S1_.exit200 ]
  br i1 %i.bc, label %bb.ag, label %bb.ae, !prof !39

bb.ae:                                            ; preds = %bb.ad
  br i1 %cond458, label %bb.af, label %.lr.ph405

bb.af:                                            ; preds = %bb.ae
  %i.bw = load double, ptr %i.q, align 8, !tbaa !29
  store double %i.bw, ptr %i.s, align 8, !tbaa !29
  br label %_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_.exit

bb.ag:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.q, i64 %i.n, i1 false)
  %i.bx = load double, ptr %i.s, align 8, !tbaa !29 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %bb.ag
  %.023.i = phi ptr [ %i.bd, %bb.ag ], [ %i.by, %bb.al ]
  %.0.i194 = phi ptr [ %i.s, %bb.ag ], [ %.1.i196, %bb.al ] ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.124.i = phi ptr [ %.023.i, %bb.ah ], [ %i.by, %bb.ai ] ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.124.i, i64 -8 ; 6 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !29 ; 2 uses
  %i.ca = fcmp olt double %i.bx, %i.bz
  br i1 %i.ca, label %bb.ai, label %bb.aj, !llvm.loop !44

bb.aj:                                            ; preds = %bb.ai
  %i.cb = icmp ult ptr %.0.i194, %i.by
  br i1 %i.cb, label %.preheader.i195, label %bb.am

.preheader.i195:                                  ; preds = %bb.aj, %.preheader.i195
  %.1.i196 = phi ptr [ %i.ce, %.preheader.i195 ], [ %.0.i194, %bb.aj ] ; 5 uses
  %i.cc = load double, ptr %.1.i196, align 8, !tbaa !29 ; 2 uses
  %i.cd = fcmp olt double %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.i196, i64 8
  br i1 %i.cd, label %.preheader.i195, label %bb.ak, !llvm.loop !45

bb.ak:                                            ; preds = %.preheader.i195
  %i.cf = icmp ult ptr %.1.i196, %i.by
  br i1 %i.cf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store double %i.cc, ptr %i.by, align 8, !tbaa !29
  store double %i.bz, ptr %.1.i196, align 8, !tbaa !29
  br label %bb.ah, !llvm.loop !46

bb.am:                                            ; preds = %bb.ak, %bb.aj
  tail call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %i.s, ptr noundef nonnull %.124.i, ptr noundef nonnull @_Z19less_than_function2dd)
  tail call void @_Z9quicksortIPdPFbddEEvT_S3_T0_(ptr noundef nonnull %.124.i, ptr noundef nonnull %i.bd, ptr noundef nonnull @_Z19less_than_function2dd)
  br label %_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_.exit

_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_.exit: ; preds = %bb.af, %bb.am
  br i1 %.not.i199402, label %_Z13verify_sortedIPdEvT_S1_.exit200, label %.lr.ph405

.lr.ph405:                                        ; preds = %bb.ae, %_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_.exit
  br label %bb.ao

bb.an:                                            ; preds = %bb.ao
  %.06.i198 = getelementptr i8, ptr %.06.i198404, i64 8 ; 2 uses
  %.not.i199 = icmp eq ptr %.06.i198, %i.bd
  br i1 %.not.i199, label %_Z13verify_sortedIPdEvT_S1_.exit200, label %bb.ao, !llvm.loop !40

bb.ao:                                            ; preds = %.lr.ph405, %bb.an
  %.06.i198404 = phi ptr [ %.06.i198401, %.lr.ph405 ], [ %.06.i198, %bb.an ] ; 3 uses
  %.pn.i197403 = phi ptr [ %i.s, %.lr.ph405 ], [ %.06.i198404, %bb.an ]
  %i.cg = load double, ptr %.06.i198404, align 8, !tbaa !29
  %i.ch = load double, ptr %.pn.i197403, align 8, !tbaa !29
  %i.ci = fcmp olt double %i.cg, %i.ch
  br i1 %i.ci, label %bb.ap, label %bb.an, !llvm.loop !40

bb.ap:                                            ; preds = %bb.ao
  %i.cj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.cj) ; 0 uses
  br label %_Z13verify_sortedIPdEvT_S1_.exit200

_Z13verify_sortedIPdEvT_S1_.exit200:              ; preds = %bb.an, %_Z9quicksortIPdXadL_Z19less_than_function2ddEEEvT_S1_.exit, %bb.ap
  %i.cl = add nuw nsw i32 %.3296, 1               ; 2 uses
  %exitcond328.not = icmp eq i32 %i.cl, %i.j
  br i1 %exitcond328.not, label %.lr.ph299, label %bb.ad, !llvm.loop !47

.lr.ph301:                                        ; preds = %_Z13verify_sortedIPdEvT_S1_.exit205
  %i.cm = icmp sgt i32 %.fr, 1
  %i.cn = icmp eq i32 %.fr, 1
  %.idx454 = shl nsw i64 %i.l, 3
  %i.co = getelementptr inbounds i8, ptr %i.s, i64 %.idx454 ; 2 uses
  %.not.i209412 = icmp eq i32 %.fr, 1
  %.06.i208411 = getelementptr i8, ptr %i.s, i64 8
  br label %bb.bf

bb.aq:                                            ; preds = %.lr.ph299, %_Z13verify_sortedIPdEvT_S1_.exit205
  %.4298 = phi i32 [ 0, %.lr.ph299 ], [ %i.eq, %_Z13verify_sortedIPdEvT_S1_.exit205 ]
  br i1 %i.bl, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit201, label %bb.ar, !prof !39

bb.ar:                                            ; preds = %bb.aq
  switch i32 %.fr, label %bb.aw [
    i32 1, label %.thread372
    i32 0, label %.lr.ph410
  ]

.thread372:                                       ; preds = %bb.ar
  %i.cp = load double, ptr %i.q, align 8, !tbaa !29
  store double %i.cp, ptr %i.s, align 8, !tbaa !29
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.bm, i64 noundef %i.bq, ptr nonnull @_Z19less_than_function2dd)
  br label %_ZSt4sortIPdPFbddEEvT_S3_T0_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit201:              ; preds = %bb.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.q, i64 %i.n, i1 false)
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.bm, i64 noundef %i.bq, ptr nonnull @_Z19less_than_function2dd)
  br i1 %2, label %.preheader317, label %.lr.ph.i17.i.preheader

.preheader317:                                    ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit201, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i
  %.021.i.idx.i = phi i64 [ %.021.i.add.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i ], [ 8, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit201 ] ; 4 uses
  %.pn20.i.i = phi ptr [ %.021.i.ptr.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i ], [ %i.s, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit201 ] ; 3 uses
  %.021.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.021.i.idx.i ; 4 uses
  %i.cq = load double, ptr %.021.i.ptr.i, align 8, !tbaa !29 ; 4 uses
  %i.cr = load double, ptr %i.s, align 8, !tbaa !29 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %bb.as, label %bb.av

bb.as:                                            ; preds = %.preheader317
  %i.ct = icmp samesign ugt i64 %.021.i.idx.i, 8
  br i1 %i.ct, label %bb.at, label %bb.au, !prof !39

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.018.i16.i, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %.021.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 8
  store double %i.cr, ptr %i.cu, align 8, !tbaa !29
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i

bb.av:                                            ; preds = %.preheader317
  %i.cv = load double, ptr %.pn20.i.i, align 8, !tbaa !29 ; 2 uses
  %i.cw = fcmp olt double %i.cq, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.av, %.lr.ph.i.i.i
  %i.cx = phi double [ %i.cy, %.lr.ph.i.i.i ], [ %i.cv, %bb.av ]
  %.013.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn20.i.i, %bb.av ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %.013.i.i.i, %.lr.ph.i.i.i ], [ %.021.i.ptr.i, %bb.av ]
  store double %i.cx, ptr %.0912.i.i.i, align 8, !tbaa !29
  %.0.i.i.i = getelementptr inbounds i8, ptr %.013.i.i.i, i64 -8 ; 2 uses
  %i.cy = load double, ptr %.0.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.cz = fcmp olt double %i.cq, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i, !llvm.loop !48

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %.lr.ph.i.i.i, %bb.av, %bb.au, %bb.at
  %.sink.i.i = phi ptr [ %i.s, %bb.au ], [ %i.s, %bb.at ], [ %.021.i.ptr.i, %bb.av ], [ %.013.i.i.i, %.lr.ph.i.i.i ]
  store double %i.cq, ptr %.sink.i.i, align 8, !tbaa !29
  %.021.i.add.i = add nuw nsw i64 %.021.i.idx.i, 8 ; 2 uses
  %.not.i.i250 = icmp eq i64 %.021.i.add.i, 128
  br i1 %.not.i.i250, label %.lr.ph.i.i.preheader, label %.preheader317, !llvm.loop !49

.lr.ph.i.i.preheader:                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i.i
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.da = load double, ptr %i.br, align 8, !tbaa !29 ; 3 uses
  %i.db = load double, ptr %.011.i.i.i.prol, align 8, !tbaa !29 ; 2 uses
  %i.dc = fcmp olt double %i.da, %i.db
  br i1 %i.dc, label %.lr.ph.i.i12.i.prol, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i.prol

.lr.ph.i.i12.i.prol:                              ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i12.i.prol
  %i.dd = phi double [ %i.de, %.lr.ph.i.i12.i.prol ], [ %i.db, %.lr.ph.i.i.prol ]
  %.013.i.i13.i.prol = phi ptr [ %.0.i.i15.i.prol, %.lr.ph.i.i12.i.prol ], [ %.011.i.i.i.prol, %.lr.ph.i.i.prol ] ; 3 uses
  %.0912.i.i14.i.prol = phi ptr [ %.013.i.i13.i.prol, %.lr.ph.i.i12.i.prol ], [ %i.br, %.lr.ph.i.i.prol ]
  store double %i.dd, ptr %.0912.i.i14.i.prol, align 8, !tbaa !29
  %.0.i.i15.i.prol = getelementptr inbounds i8, ptr %.013.i.i13.i.prol, i64 -8 ; 2 uses
  %i.de = load double, ptr %.0.i.i15.i.prol, align 8, !tbaa !29 ; 2 uses
  %i.df = fcmp olt double %i.da, %i.de
  br i1 %i.df, label %.lr.ph.i.i12.i.prol, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i.prol, !llvm.loop !48

_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i.prol: ; preds = %.lr.ph.i.i12.i.prol, %.lr.ph.i.i.prol
  %.09.lcssa.i.i.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.prol ], [ %.013.i.i13.i.prol, %.lr.ph.i.i12.i.prol ]
  store double %i.da, ptr %.09.lcssa.i.i.i.prol, align 8, !tbaa !29
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %i.br, %.lr.ph.i.i.preheader ], [ %i.bu, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i.prol ]
  br i1 %i.bv, label %_ZSt4sortIPdPFbddEEvT_S3_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i.1
  %.08.i.i = phi ptr [ %i.dt, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i.1 ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.dg = load double, ptr %.08.i.i, align 8, !tbaa !29 ; 3 uses
end_hunk_0
begin_hunk_1_@_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.122 = phi ptr [ %.021, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.122, i64 -8 ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !29 ; 2 uses
  %i.h = fcmp olt double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d, !llvm.loop !63

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.0, %i.f
  br i1 %i.i, label %.preheader, label %tailrecurse

.preheader:                                       ; preds = %bb.d, %.preheader
  %.1 = phi ptr [ %i.l, %.preheader ], [ %.0, %bb.d ] ; 5 uses
  %i.j = load double, ptr %.1, align 8, !tbaa !29 ; 2 uses
  %i.k = fcmp olt double %i.j, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %i.k, label %.preheader, label %bb.e, !llvm.loop !64

bb.e:                                             ; preds = %.preheader
  %i.m = icmp ult ptr %.1, %i.f
  br i1 %i.m, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  store double %i.j, ptr %i.f, align 8, !tbaa !29
  store double %i.g, ptr %.1, align 8, !tbaa !29
  br label %bb.b, !llvm.loop !65

tailrecurse:                                      ; preds = %bb.e, %bb.d
  tail call void @_Z9quicksortIPd24inline_less_than_functorEvT_S2_T0_(ptr noundef nonnull %.tr28, ptr noundef nonnull %.122)
  %i.n = ptrtoint ptr %.122 to i64
  %i.o = sub i64 %i.a, %i.n
  %i.p = icmp sgt i64 %i.o, 8
  br i1 %i.p, label %.lr.ph, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr28 = phi ptr [ %.122, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.e = load double, ptr %.tr28, align 8, !tbaa !29 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.f ]
  %.0 = phi ptr [ %.tr28, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.122 = phi ptr [ %.021, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.122, i64 -8 ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !29 ; 2 uses
  %i.h = fcmp olt double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d, !llvm.loop !66

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.0, %i.f
  br i1 %i.i, label %.preheader, label %tailrecurse

.preheader:                                       ; preds = %bb.d, %.preheader
  %.1 = phi ptr [ %i.l, %.preheader ], [ %.0, %bb.d ] ; 5 uses
  %i.j = load double, ptr %.1, align 8, !tbaa !29 ; 2 uses
  %i.k = fcmp olt double %i.j, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %i.k, label %.preheader, label %bb.e, !llvm.loop !67

bb.e:                                             ; preds = %.preheader
  %i.m = icmp ult ptr %.1, %i.f
  br i1 %i.m, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  store double %i.j, ptr %i.f, align 8, !tbaa !29
  store double %i.g, ptr %.1, align 8, !tbaa !29
  br label %bb.b, !llvm.loop !68

tailrecurse:                                      ; preds = %bb.e, %bb.d
  tail call void @_Z9quicksortIPdSt4lessIdEEvT_S3_T0_(ptr noundef nonnull %.tr28, ptr noundef nonnull %.122)
  %i.n = ptrtoint ptr %.122 to i64
  %i.o = sub i64 %i.a, %i.n
  %i.p = icmp sgt i64 %i.o, 8
  br i1 %i.p, label %.lr.ph, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z9quicksortIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr31 = phi ptr [ %.124, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.e = load double, ptr %.tr31, align 8, !tbaa !29 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.023 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.f ]
  %.0 = phi ptr [ %.tr31, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.124 = phi ptr [ %.023, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.124, i64 -8 ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !29 ; 2 uses
  %i.h = fcmp olt double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d, !llvm.loop !69

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.0, %i.f
  br i1 %i.i, label %.preheader, label %tailrecurse

.preheader:                                       ; preds = %bb.d, %.preheader
  %.1 = phi ptr [ %i.l, %.preheader ], [ %.0, %bb.d ] ; 5 uses
  %i.j = load double, ptr %.1, align 8, !tbaa !29 ; 2 uses
  %i.k = fcmp olt double %i.j, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %i.k, label %.preheader, label %bb.e, !llvm.loop !70

bb.e:                                             ; preds = %.preheader
  %i.m = icmp ult ptr %.1, %i.f
  br i1 %i.m, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  store double %i.j, ptr %i.f, align 8, !tbaa !29
  store double %i.g, ptr %.1, align 8, !tbaa !29
  br label %bb.b, !llvm.loop !71

tailrecurse:                                      ; preds = %bb.e, %bb.d
  tail call void @_Z9quicksortIPdEvT_S1_(ptr noundef nonnull %.tr31, ptr noundef nonnull %.124)
  %i.n = ptrtoint ptr %.124 to i64
  %i.o = sub i64 %i.a, %i.n
  %i.p = icmp sgt i64 %i.o, 8
  br i1 %i.p, label %.lr.ph, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #11 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph31

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph31, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.021.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %.021.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i ], [ %.021.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.j = load double, ptr %0, align 8, !tbaa !29
  store double %i.j, ptr %i.h, align 8, !tbaa !29
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %5 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load double, ptr %i.r, align 8, !tbaa !29
  %i.v = load double, ptr %i.t, align 8, !tbaa !29
  %i.w = call noundef zeroext i1 %3(double noundef %i.u, double noundef %i.v), !inline_history !73
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.i.i.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !29
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %5
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !74

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.ak, ptr %i.al, align 8, !tbaa !29
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i89.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i89.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i89.i.i.i ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !29
  %i.ao = call noundef zeroext i1 %3(double noundef %i.an, double noundef %i.i), !inline_history !75
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = load double, ptr %i.am, align 8, !tbaa !29
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store double %i.ap, ptr %i.aq, align 8, !tbaa !29
  %.not10.i.i.i = icmp eq i64 %.018.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !76

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store double %i.i, ptr %i.ar, align 8, !tbaa !29
  %i.as = icmp sgt i64 %i.l, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_.exit, !llvm.loop !77

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.ch, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0152030, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds i8, ptr %.02129, i64 -8 ; 7 uses
  %i.ay = load double, ptr %i.e, align 8, !tbaa !29
  %i.az = load double, ptr %i.aw, align 8, !tbaa !29
  %i.ba = tail call noundef zeroext i1 %3(double noundef %i.ay, double noundef %i.az), !inline_history !78
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.bc = load double, ptr %i.aw, align 8, !tbaa !29
  %i.bd = tail call noundef zeroext i1 %3(double noundef %i.bc, double noundef %i.bb), !inline_history !78
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load double, ptr %0, align 8, !tbaa !29
  %i.bf = load double, ptr %i.aw, align 8, !tbaa !29
  store double %i.bf, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bg = load double, ptr %i.e, align 8, !tbaa !29
  %i.bh = load double, ptr %i.ax, align 8, !tbaa !29
  %i.bi = tail call noundef zeroext i1 %3(double noundef %i.bg, double noundef %i.bh), !inline_history !78
  %i.bj = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = load double, ptr %i.ax, align 8, !tbaa !29
  store double %i.bk, ptr %0, align 8, !tbaa !29
  store double %i.bj, ptr %i.ax, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bl = load double, ptr %i.e, align 8, !tbaa !29
  store double %i.bl, ptr %0, align 8, !tbaa !29
  store double %i.bj, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.bm = load double, ptr %i.e, align 8, !tbaa !29
  %i.bn = tail call noundef zeroext i1 %3(double noundef %i.bm, double noundef %i.bb), !inline_history !78
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load <2 x double>, ptr %0, align 8, !tbaa !29
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bp, ptr %0, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bq = load double, ptr %i.aw, align 8, !tbaa !29
  %i.br = load double, ptr %i.ax, align 8, !tbaa !29
  %i.bs = tail call noundef zeroext i1 %3(double noundef %i.bq, double noundef %i.br), !inline_history !78
  %i.bt = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load double, ptr %i.ax, align 8, !tbaa !29
  store double %i.bu, ptr %0, align 8, !tbaa !29
  store double %i.bt, ptr %i.ax, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bv = load double, ptr %i.aw, align 8, !tbaa !29
  store double %i.bv, ptr %0, align 8, !tbaa !29
  store double %i.bt, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i ], [ %i.bz, %bb.p ] ; 9 uses
  %i.bw = load double, ptr %.1.i.i, align 8, !tbaa !29
  %i.bx = load double, ptr %0, align 8, !tbaa !29
  %i.by = tail call noundef zeroext i1 %3(double noundef %i.bw, double noundef %i.bx), !inline_history !79
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.by, label %bb.p, label %.preheader.i.i, !llvm.loop !80

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ca = load double, ptr %0, align 8, !tbaa !29
  %i.cb = load double, ptr %.114.i.i, align 8, !tbaa !29
  %i.cc = tail call noundef zeroext i1 %3(double noundef %i.ca, double noundef %i.cb), !inline_history !79
  br i1 %i.cc, label %.preheader.i.i, label %bb.q, !llvm.loop !81

bb.q:                                             ; preds = %.preheader.i.i
  %i.cd = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cd, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = load double, ptr %.1.i.i, align 8, !tbaa !29
  %i.cf = load double, ptr %.114.i.i, align 8, !tbaa !29
  store double %i.cf, ptr %.1.i.i, align 8, !tbaa !29
  store double %i.ce, ptr %.114.i.i, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i, !llvm.loop !82

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.au, ptr %3)
  %i.cg = ptrtoint ptr %.1.i.i to i64
  %i.ch = sub i64 %i.cg, %i.a                     ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 128
  br i1 %i.ci, label %bb.b, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_.exit, !llvm.loop !72

_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.an, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.q = load double, ptr %i.p, align 8, !tbaa !29 ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !83 ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.u, align 8, !tbaa !29
  %i.y = load double, ptr %i.w, align 8, !tbaa !29
  %i.z = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(double noundef %i.x, double noundef %i.y), !inline_history !84
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  store double %i.ac, ptr %i.ad, align 8, !tbaa !29
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !74

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29
  %i.ai = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(double noundef %i.ah, double noundef %i.q), !inline_history !85
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.aj, ptr %i.ak, align 8, !tbaa !29
  %i.al = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us, !llvm.loop !76

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.q, ptr %i.am, align 8, !tbaa !29
  %.not.us = icmp eq i64 %.014.us, 0
  %i.an = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !86

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit
  %.014 = phi i64 [ %i.bo, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !83 ; 2 uses
  %i.aq = icmp slt i64 %.014, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ar = shl i64 %.031.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.at, align 8, !tbaa !29
  %i.ax = load double, ptr %i.av, align 8, !tbaa !29
  %i.ay = tail call noundef zeroext i1 %.sroa.0.0.copyload(double noundef %i.aw, double noundef %i.ax), !inline_history !84
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !29
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  store double %i.bb, ptr %i.bc, align 8, !tbaa !29
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bf = load double, ptr %i.n, align 8, !tbaa !29
  store double %i.bf, ptr %i.o, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.128.i, %.014
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !29
  %i.bj = tail call noundef zeroext i1 %.sroa.0.0.copyload(double noundef %i.bi, double noundef %i.ap), !inline_history !85
  br i1 %i.bj, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bk, ptr %i.bl, align 8, !tbaa !29
  %i.bm = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bm, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit, !llvm.loop !76

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.ap, ptr %i.bn, align 8, !tbaa !29
  %.not = icmp eq i64 %.014, 0
  %i.bo = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !86

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.0", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.025.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_.exit.i.i ], [ %.025.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.j = load double, ptr %0, align 8, !tbaa !29
  store double %i.j, ptr %i.h, align 8, !tbaa !29
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load double, ptr %i.r, align 8, !tbaa !29
  %i.v = load double, ptr %i.t, align 8, !tbaa !29
  %i.w = fcmp olt double %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !29
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !88

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.ak, ptr %i.al, align 8, !tbaa !29
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i89.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i89.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i89.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %i.ao = fcmp olt double %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store double %i.an, ptr %i.ap, align 8, !tbaa !29
  %.not10.i.i.i = icmp eq i64 %.018.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !89

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store double %i.i, ptr %i.aq, align 8, !tbaa !29
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_.exit, !llvm.loop !90

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %.0172449 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02548 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0172449, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02548, i64 -8 ; 3 uses
  %i.ax = load double, ptr %i.e, align 8, !tbaa !29 ; 5 uses
  %i.ay = load double, ptr %i.av, align 8, !tbaa !29 ; 5 uses
  %i.az = fcmp olt double %i.ax, %i.ay
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !29 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph50
  %i.bb = fcmp olt double %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load double, ptr %0, align 8, !tbaa !29
  store double %i.ay, ptr %0, align 8, !tbaa !29
  store double %i.bc, ptr %i.av, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt double %i.ax, %i.ba
  %i.be = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.ba, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store double %i.ax, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph50
  %i.bf = fcmp olt double %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load double, ptr %0, align 8, !tbaa !29
  store double %i.ax, ptr %0, align 8, !tbaa !29
  store double %i.bg, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt double %i.ay, %i.ba
  %i.bi = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ba, ptr %0, align 8, !tbaa !29
  store double %i.bi, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store double %i.ay, ptr %0, align 8, !tbaa !29
  store double %i.bi, ptr %i.av, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02548, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader ]
  %i.bj = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load double, ptr %.1.i.i, align 8, !tbaa !29 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !91

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load double, ptr %.114.i.i, align 8, !tbaa !29 ; 2 uses
  %i.bo = fcmp olt double %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !92

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bn, ptr %.1.i.i, align 8, !tbaa !29
  store double %i.bk, ptr %.114.i.i, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_S6_T0_.exit.i, !llvm.loop !93

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02548, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_.exit, !llvm.loop !87

_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEET_S6_S6_T0_.exit, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_S6_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load double, ptr %.020.i.ptr, align 8, !tbaa !29 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !29  ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !29
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load double, ptr %.pn19.i, align 8, !tbaa !29 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store double %i.l, ptr %.0912.i.i, align 8, !tbaa !29
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.0.i.i, align 8, !tbaa !29 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, !llvm.loop !94

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !29
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_.exit, label %bb.c, !llvm.loop !95

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %1
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_:bb.a
  store double %i.al, ptr %.0912.i.i28, align 8, !tbaa !29
  %.0.i.i29 = getelementptr inbounds i8, ptr %.013.i.i27, i64 -8 ; 2 uses
  %i.am = load double, ptr %.0.i.i29, align 8, !tbaa !29 ; 2 uses
  %i.an = fcmp olt double %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i26, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22, !llvm.loop !94

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22:   ; preds = %.lr.ph.i.i26, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i23 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.020.i20, %bb.m ], [ %.013.i.i27, %.lr.ph.i.i26 ]
  store double %i.x, ptr %.sink.i23, align 8, !tbaa !29
  %.0.i24 = getelementptr inbounds nuw i8, ptr %.020.i20, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_.exit, label %.lr.ph.i19, !llvm.loop !95

_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI17less_than_functorEEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.q = load double, ptr %i.p, align 8, !tbaa !29 ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.u, align 8, !tbaa !29
  %i.y = load double, ptr %i.w, align 8, !tbaa !29
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store double %i.ac, ptr %i.ad, align 8, !tbaa !29
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !88

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = fcmp olt double %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.ah, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us, !llvm.loop !89

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.q, ptr %i.al, align 8, !tbaa !29
  %.not.us = icmp eq i64 %.014.us, 0
  %i.am = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !97

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit
  %.014 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = icmp slt i64 %.014, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load double, ptr %i.as, align 8, !tbaa !29
  %i.aw = load double, ptr %i.au, align 8, !tbaa !29
  %i.ax = fcmp olt double %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !29
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !88

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load double, ptr %i.n, align 8, !tbaa !29
  store double %i.be, ptr %i.o, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.014
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %i.bi = fcmp olt double %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bh, ptr %i.bj, align 8, !tbaa !29
  %i.bk = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit, !llvm.loop !89

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.ao, ptr %i.bl, align 8, !tbaa !29
  %.not = icmp eq i64 %.014, 0
  %i.bm = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !97

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI17less_than_functorEEEvT_T0_S7_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.025.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_.exit.i.i ], [ %.025.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.j = load double, ptr %0, align 8, !tbaa !29
  store double %i.j, ptr %i.h, align 8, !tbaa !29
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load double, ptr %i.r, align 8, !tbaa !29
  %i.v = load double, ptr %i.t, align 8, !tbaa !29
  %i.w = fcmp olt double %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !29
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !99

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.ak, ptr %i.al, align 8, !tbaa !29
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i89.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i89.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i89.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %i.ao = fcmp olt double %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store double %i.an, ptr %i.ap, align 8, !tbaa !29
  %.not10.i.i.i = icmp eq i64 %.018.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store double %i.i, ptr %i.aq, align 8, !tbaa !29
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_.exit, !llvm.loop !101

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %.0172449 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02548 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0172449, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02548, i64 -8 ; 3 uses
  %i.ax = load double, ptr %i.e, align 8, !tbaa !29 ; 5 uses
  %i.ay = load double, ptr %i.av, align 8, !tbaa !29 ; 5 uses
  %i.az = fcmp olt double %i.ax, %i.ay
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !29 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph50
  %i.bb = fcmp olt double %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load double, ptr %0, align 8, !tbaa !29
  store double %i.ay, ptr %0, align 8, !tbaa !29
  store double %i.bc, ptr %i.av, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt double %i.ax, %i.ba
  %i.be = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.ba, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store double %i.ax, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph50
  %i.bf = fcmp olt double %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load double, ptr %0, align 8, !tbaa !29
  store double %i.ax, ptr %0, align 8, !tbaa !29
  store double %i.bg, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt double %i.ay, %i.ba
  %i.bi = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ba, ptr %0, align 8, !tbaa !29
  store double %i.bi, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store double %i.ay, ptr %0, align 8, !tbaa !29
  store double %i.bi, ptr %i.av, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02548, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i.preheader ]
  %i.bj = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load double, ptr %.1.i.i, align 8, !tbaa !29 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !102

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load double, ptr %.114.i.i, align 8, !tbaa !29 ; 2 uses
  %i.bo = fcmp olt double %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !103

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bn, ptr %.1.i.i, align 8, !tbaa !29
  store double %i.bk, ptr %.114.i.i, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_S6_T0_.exit.i, !llvm.loop !104

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02548, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_.exit, !llvm.loop !98

_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEET_S6_S6_T0_.exit, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_S6_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load double, ptr %.020.i.ptr, align 8, !tbaa !29 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !29  ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !29
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load double, ptr %.pn19.i, align 8, !tbaa !29 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store double %i.l, ptr %.0912.i.i, align 8, !tbaa !29
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.0.i.i, align 8, !tbaa !29 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, !llvm.loop !105

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !29
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_.exit, label %bb.c, !llvm.loop !106

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %1
end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_:bb.a
  store double %i.al, ptr %.0912.i.i28, align 8, !tbaa !29
  %.0.i.i29 = getelementptr inbounds i8, ptr %.013.i.i27, i64 -8 ; 2 uses
  %i.am = load double, ptr %.0.i.i29, align 8, !tbaa !29 ; 2 uses
  %i.an = fcmp olt double %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i26, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22, !llvm.loop !105

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22:   ; preds = %.lr.ph.i.i26, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i23 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.020.i20, %bb.m ], [ %.013.i.i27, %.lr.ph.i.i26 ]
  store double %i.x, ptr %.sink.i23, align 8, !tbaa !29
  %.0.i24 = getelementptr inbounds nuw i8, ptr %.020.i20, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_.exit, label %.lr.ph.i19, !llvm.loop !106

_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterI24inline_less_than_functorEEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.q = load double, ptr %i.p, align 8, !tbaa !29 ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.u, align 8, !tbaa !29
  %i.y = load double, ptr %i.w, align 8, !tbaa !29
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store double %i.ac, ptr %i.ad, align 8, !tbaa !29
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !99

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = fcmp olt double %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.ah, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us, !llvm.loop !100

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.q, ptr %i.al, align 8, !tbaa !29
  %.not.us = icmp eq i64 %.014.us, 0
  %i.am = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !108

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit
  %.014 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = icmp slt i64 %.014, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load double, ptr %i.as, align 8, !tbaa !29
  %i.aw = load double, ptr %i.au, align 8, !tbaa !29
  %i.ax = fcmp olt double %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !29
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !99

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load double, ptr %i.n, align 8, !tbaa !29
  store double %i.be, ptr %i.o, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.014
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %i.bi = fcmp olt double %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bh, ptr %i.bj, align 8, !tbaa !29
  %i.bk = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit, !llvm.loop !100

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.ao, ptr %i.bl, align 8, !tbaa !29
  %.not = icmp eq i64 %.014, 0
  %i.bm = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !108

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterI24inline_less_than_functorEEEvT_T0_S7_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.6", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %.025.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i ], [ %.025.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.j = load double, ptr %0, align 8, !tbaa !29
  store double %i.j, ptr %i.h, align 8, !tbaa !29
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load double, ptr %i.r, align 8, !tbaa !29
  %i.v = load double, ptr %i.t, align 8, !tbaa !29
  %i.w = fcmp olt double %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !29
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !110

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.ak, ptr %i.al, align 8, !tbaa !29
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i89.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i89.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i89.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %i.ao = fcmp olt double %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store double %i.an, ptr %i.ap, align 8, !tbaa !29
  %.not10.i.i.i = icmp eq i64 %.018.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !111

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store double %i.i, ptr %i.aq, align 8, !tbaa !29
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit, !llvm.loop !112

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %.0172449 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02548 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0172449, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02548, i64 -8 ; 3 uses
  %i.ax = load double, ptr %i.e, align 8, !tbaa !29 ; 5 uses
  %i.ay = load double, ptr %i.av, align 8, !tbaa !29 ; 5 uses
  %i.az = fcmp olt double %i.ax, %i.ay
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !29 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph50
  %i.bb = fcmp olt double %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load double, ptr %0, align 8, !tbaa !29
  store double %i.ay, ptr %0, align 8, !tbaa !29
  store double %i.bc, ptr %i.av, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt double %i.ax, %i.ba
  %i.be = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.ba, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store double %i.ax, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph50
  %i.bf = fcmp olt double %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load double, ptr %0, align 8, !tbaa !29
  store double %i.ax, ptr %0, align 8, !tbaa !29
  store double %i.bg, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt double %i.ay, %i.ba
  %i.bi = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ba, ptr %0, align 8, !tbaa !29
  store double %i.bi, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store double %i.ay, ptr %0, align 8, !tbaa !29
  store double %i.bi, ptr %i.av, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02548, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  %i.bj = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load double, ptr %.1.i.i, align 8, !tbaa !29 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !113

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load double, ptr %.114.i.i, align 8, !tbaa !29 ; 2 uses
  %i.bo = fcmp olt double %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !114

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bn, ptr %.1.i.i, align 8, !tbaa !29
  store double %i.bk, ptr %.114.i.i, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i, !llvm.loop !115

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02548, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit, !llvm.loop !109

_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load double, ptr %.020.i.ptr, align 8, !tbaa !29 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !29  ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !29
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load double, ptr %.pn19.i, align 8, !tbaa !29 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store double %i.l, ptr %.0912.i.i, align 8, !tbaa !29
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.0.i.i, align 8, !tbaa !29 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, !llvm.loop !116

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !29
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit, label %bb.c, !llvm.loop !117

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %1
end_hunk_3
begin_hunk_4_@_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_:bb.a
  store double %i.al, ptr %.0912.i.i28, align 8, !tbaa !29
  %.0.i.i29 = getelementptr inbounds i8, ptr %.013.i.i27, i64 -8 ; 2 uses
  %i.am = load double, ptr %.0.i.i29, align 8, !tbaa !29 ; 2 uses
  %i.an = fcmp olt double %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i26, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22, !llvm.loop !116

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22:   ; preds = %.lr.ph.i.i26, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i23 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.020.i20, %bb.m ], [ %.013.i.i27, %.lr.ph.i.i26 ]
  store double %i.x, ptr %.sink.i23, align 8, !tbaa !29
  %.0.i24 = getelementptr inbounds nuw i8, ptr %.020.i20, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit, label %.lr.ph.i19, !llvm.loop !117

_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.q = load double, ptr %i.p, align 8, !tbaa !29 ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.u, align 8, !tbaa !29
  %i.y = load double, ptr %i.w, align 8, !tbaa !29
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store double %i.ac, ptr %i.ad, align 8, !tbaa !29
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !110

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = fcmp olt double %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.ah, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us, !llvm.loop !111

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.q, ptr %i.al, align 8, !tbaa !29
  %.not.us = icmp eq i64 %.014.us, 0
  %i.am = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !119

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit
  %.014 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = icmp slt i64 %.014, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load double, ptr %i.as, align 8, !tbaa !29
  %i.aw = load double, ptr %i.au, align 8, !tbaa !29
  %i.ax = fcmp olt double %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !29
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !110

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load double, ptr %i.n, align 8, !tbaa !29
  store double %i.be, ptr %i.o, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.014
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %i.bi = fcmp olt double %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bh, ptr %i.bj, align 8, !tbaa !29
  %i.bk = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit, !llvm.loop !111

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.ao, ptr %i.bl, align 8, !tbaa !29
  %.not = icmp eq i64 %.014, 0
  %i.bm = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !119

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.j = load double, ptr %0, align 8, !tbaa !29
  store double %i.j, ptr %i.h, align 8, !tbaa !29
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load double, ptr %i.r, align 8, !tbaa !29
  %i.v = load double, ptr %i.t, align 8, !tbaa !29
  %i.w = fcmp olt double %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !29
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !121

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.ak, ptr %i.al, align 8, !tbaa !29
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i78.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i78.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i78.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %i.ao = fcmp olt double %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store double %i.an, ptr %i.ap, align 8, !tbaa !29
  %.not9.i.i.i = icmp eq i64 %.018.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !122

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store double %i.i, ptr %i.aq, align 8, !tbaa !29
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !123

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ax = load double, ptr %i.e, align 8, !tbaa !29 ; 5 uses
  %i.ay = load double, ptr %i.av, align 8, !tbaa !29 ; 5 uses
  %i.az = fcmp olt double %i.ax, %i.ay
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !29 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = fcmp olt double %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load double, ptr %0, align 8, !tbaa !29
  store double %i.ay, ptr %0, align 8, !tbaa !29
  store double %i.bc, ptr %i.av, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt double %i.ax, %i.ba
  %i.be = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.ba, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store double %i.ax, ptr %0, align 8, !tbaa !29
  store double %i.be, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = fcmp olt double %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load double, ptr %0, align 8, !tbaa !29
  store double %i.ax, ptr %0, align 8, !tbaa !29
  store double %i.bg, ptr %i.e, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt double %i.ay, %i.ba
  %i.bi = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ba, ptr %0, align 8, !tbaa !29
  store double %i.bi, ptr %i.aw, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store double %i.ay, ptr %0, align 8, !tbaa !29
  store double %i.bi, ptr %i.av, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load double, ptr %0, align 8, !tbaa !29 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load double, ptr %.1.i.i, align 8, !tbaa !29 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !124

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load double, ptr %.114.i.i, align 8, !tbaa !29 ; 2 uses
  %i.bo = fcmp olt double %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !125

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bn, ptr %.1.i.i, align 8, !tbaa !29
  store double %i.bk, ptr %.114.i.i, align 8, !tbaa !29
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !126

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !120

_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load double, ptr %.020.i.ptr, align 8, !tbaa !29 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !29  ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !29
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load double, ptr %.pn19.i, align 8, !tbaa !29 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store double %i.l, ptr %.0912.i.i, align 8, !tbaa !29
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.0.i.i, align 8, !tbaa !29 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, !llvm.loop !127

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !29
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !128

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_4
