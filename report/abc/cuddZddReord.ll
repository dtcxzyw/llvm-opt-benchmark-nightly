Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddZddReord?download=true
inline.NumInlined: 28
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cuddZddSifting:bb.a
  %.139.i141.i = phi ptr [ %i.ej, %bb.w ], [ %i.da, %.preheader.i139.i ] ; 3 uses
  %i.ed = load i32, ptr %.139.i141.i, align 8, !tbaa !102
  %i.ee = getelementptr inbounds nuw i8, ptr %.139.i141.i, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !105
  %i.eg = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.ed, i32 noundef %i.ef) ; 2 uses
  %.not31.i142.i = icmp eq i32 %i.eg, 0
  br i1 %.not31.i142.i, label %.preheader.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.i140.i
  %i.eh = icmp eq i32 %i.eg, %spec.select.i135.i
  br i1 %i.eh, label %.preheader276.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %.139.i141.i, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !107 ; 2 uses
  %.not30.i143.i = icmp eq ptr %i.ej, null
  br i1 %.not30.i143.i, label %.preheader276.i, label %.lr.ph.split.i140.i, !llvm.loop !110

bb.x:                                             ; preds = %bb.p
  %i.ek = sub nsw i32 %i.bg, %1
  %i.el = sub nsw i32 %2, %i.bg
  %i.em = icmp sgt i32 %i.ek, %i.el
  br i1 %i.em, label %.lr.ph.i154.i, label %.lr.ph.i209.i

.lr.ph.i154.i:                                    ; preds = %bb.x, %bb.z
  %.052.i155.i = phi i32 [ %spec.select.i159.i, %bb.z ], [ %i.bj, %bb.x ] ; 2 uses
  %.03951.i156.i = phi ptr [ %i.ep, %bb.z ], [ null, %bb.x ] ; 3 uses
  %.04250.i157.i = phi i32 [ %.03853.i158.i, %bb.z ], [ %i.bg, %bb.x ] ; 3 uses
  %.03853.i158.i = add nsw i32 %.04250.i157.i, 1  ; 5 uses
  %i.en = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.04250.i157.i, i32 noundef %.03853.i158.i) ; 4 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i154.i
  %i.ep = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #14 ; 14 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %.04250.i157.i, ptr %i.ep, align 8, !tbaa !102
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %.03853.i158.i, ptr %i.er, align 4, !tbaa !105
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 %i.en, ptr %i.es, align 4, !tbaa !106
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %.03951.i156.i, ptr %i.et, align 8, !tbaa !107
  %i.eu = sitofp i32 %i.en to double
  %i.ev = sitofp i32 %.052.i155.i to double
  %i.ew = load double, ptr %i.ax, align 8, !tbaa !108
  %i.ex = fmul double %i.ew, %i.ev
  %i.ey = fcmp olt double %i.ex, %i.eu
  %spec.select.i159.i = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %.052.i155.i)
  %exitcond.not.i160.i = icmp eq i32 %.03853.i158.i, %2
  %or.cond.i161.i = or i1 %exitcond.not.i160.i, %i.ey
  br i1 %or.cond.i161.i, label %.lr.ph.i171.i, label %.lr.ph.i154.i, !llvm.loop !118

bb.aa:                                            ; preds = %bb.y, %.lr.ph.i154.i
  %.not4556.i162.i = icmp eq ptr %.03951.i156.i, null
  br i1 %.not4556.i162.i, label %cuddZddSiftingAux.exit.thread, label %.lr.ph58.i163.i

.lr.ph58.i163.i:                                  ; preds = %bb.aa
  %.promoted.i164.i = load ptr, ptr %i.ay, align 8, !tbaa !94
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph58.i163.i
  %i.ez = phi ptr [ %.promoted.i164.i, %.lr.ph58.i163.i ], [ %.257.i165.i, %bb.ab ]
  %.257.i165.i = phi ptr [ %.03951.i156.i, %.lr.ph58.i163.i ], [ %i.fb, %bb.ab ] ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.257.i165.i, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !107 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.257.i165.i, i64 4
  store i32 0, ptr %i.fc, align 4, !tbaa !90
  %i.fd = getelementptr inbounds nuw i8, ptr %.257.i165.i, i64 8
  store ptr %i.ez, ptr %i.fd, align 8, !tbaa !54
  %.not45.i166.i = icmp eq ptr %i.fb, null
  br i1 %.not45.i166.i, label %..loopexit_crit_edge.i167.i, label %bb.ab, !llvm.loop !119

..loopexit_crit_edge.i167.i:                      ; preds = %bb.ab
  store ptr %.257.i165.i, ptr %i.ay, align 8, !tbaa !94
  br label %cuddZddSiftingAux.exit.thread

.lr.ph.i171.i:                                    ; preds = %bb.z, %bb.ad
  %.052.i172.i = phi i32 [ %spec.select.i176.i, %bb.ad ], [ %i.bj, %bb.z ] ; 2 uses
  %.03951.i173.i = phi ptr [ %i.fg, %bb.ad ], [ null, %bb.z ] ; 3 uses
  %.04250.i174.i = phi i32 [ %.03853.i175.i, %bb.ad ], [ %.03853.i158.i, %bb.z ] ; 3 uses
  %.03853.i175.i = add nsw i32 %.04250.i174.i, -1 ; 4 uses
  %i.fe = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.03853.i175.i, i32 noundef %.04250.i174.i) ; 4 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i171.i
  %i.fg = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #14 ; 15 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %.03853.i175.i, ptr %i.fg, align 8, !tbaa !102
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %.04250.i174.i, ptr %i.fi, align 4, !tbaa !105
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 %i.fe, ptr %i.fj, align 4, !tbaa !106
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store ptr %.03951.i173.i, ptr %i.fk, align 8, !tbaa !107
  %i.fl = sitofp i32 %i.fe to double
  %i.fm = sitofp i32 %.052.i172.i to double
  %i.fn = load double, ptr %i.ax, align 8, !tbaa !108
  %i.fo = fmul double %i.fn, %i.fm
  %i.fp = fcmp uge double %i.fo, %i.fl
  %spec.select.i176.i = tail call i32 @llvm.smin.i32(i32 %i.fe, i32 %.052.i172.i)
  %.not.not.i177.i = icmp sgt i32 %.03853.i175.i, %1
  %or.cond.i178.i = and i1 %.not.not.i177.i, %i.fp
  br i1 %or.cond.i178.i, label %.lr.ph.i171.i, label %cuddZddSiftingUp.exit185.i, !llvm.loop !120

bb.ae:                                            ; preds = %bb.ac, %.lr.ph.i171.i
  %.not4556.i179.i = icmp eq ptr %.03951.i173.i, null
  br i1 %.not4556.i179.i, label %.lr.ph311.i, label %.lr.ph58.i180.i

.lr.ph58.i180.i:                                  ; preds = %bb.ae
  %.promoted.i181.i = load ptr, ptr %i.ay, align 8, !tbaa !94
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph58.i180.i
  %i.fq = phi ptr [ %.promoted.i181.i, %.lr.ph58.i180.i ], [ %.257.i182.i, %bb.af ]
  %.257.i182.i = phi ptr [ %.03951.i173.i, %.lr.ph58.i180.i ], [ %i.fs, %bb.af ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.257.i182.i, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !107 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.257.i182.i, i64 4
  store i32 0, ptr %i.ft, align 4, !tbaa !90
  %i.fu = getelementptr inbounds nuw i8, ptr %.257.i182.i, i64 8
  store ptr %i.fq, ptr %i.fu, align 8, !tbaa !54
  %.not45.i183.i = icmp eq ptr %i.fs, null
  br i1 %.not45.i183.i, label %..loopexit_crit_edge.i184.i, label %bb.af, !llvm.loop !121

..loopexit_crit_edge.i184.i:                      ; preds = %bb.af
  store ptr %.257.i182.i, ptr %i.ay, align 8, !tbaa !94
  br label %.lr.ph311.i

.preheader.i194.i:                                ; preds = %cuddZddSiftingUp.exit185.i
  switch i32 %spec.select32.fr.i192.i, label %.lr.ph.split.us.i200.i [
    i32 0, label %.lr.ph.i
    i32 -1, label %.lr.ph.split.i195.i
  ]

.lr.ph.split.us.i200.i:                           ; preds = %.preheader.i194.i, %bb.ag
  %.139.us.i201.i = phi ptr [ %i.ga, %bb.ag ], [ %i.fg, %.preheader.i194.i ] ; 3 uses
  %.12438.us.i202.i = phi i32 [ %i.gb, %bb.ag ], [ 0, %.preheader.i194.i ]
  %i.fv = load i32, ptr %.139.us.i201.i, align 8, !tbaa !102
  %i.fw = getelementptr inbounds nuw i8, ptr %.139.us.i201.i, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !105
  %i.fy = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.fv, i32 noundef %i.fx)
  %.not31.us.i203.i = icmp eq i32 %i.fy, 0
  br i1 %.not31.us.i203.i, label %.lr.ph311.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us.i200.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.139.us.i201.i, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !107 ; 2 uses
  %i.gb = add nuw nsw i32 %.12438.us.i202.i, 1    ; 2 uses
  %.not30.us.i204.i = icmp eq ptr %i.ga, null
  %i.gc = icmp eq i32 %i.gb, %spec.select32.fr.i192.i
  %or.cond.us.i205.i = select i1 %.not30.us.i204.i, i1 true, i1 %i.gc
  br i1 %or.cond.us.i205.i, label %.lr.ph.i, label %.lr.ph.split.us.i200.i, !llvm.loop !110

cuddZddSiftingUp.exit185.i:                       ; preds = %bb.ad, %cuddZddSiftingUp.exit185.i
  %.037.i186.i = phi ptr [ %i.gh, %cuddZddSiftingUp.exit185.i ], [ %i.fg, %bb.ad ] ; 2 uses
  %.02136.i187.i = phi i32 [ %spec.select32.fr.i192.i, %cuddZddSiftingUp.exit185.i ], [ -1, %bb.ad ]
  %.02335.i188.i = phi i32 [ %i.gi, %cuddZddSiftingUp.exit185.i ], [ 0, %bb.ad ] ; 2 uses
  %.02534.i189.i = phi i32 [ %spec.select.i190.i, %cuddZddSiftingUp.exit185.i ], [ %i.bj, %bb.ad ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.037.i186.i, i64 12
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !106 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, %.02534.i189.i
  %spec.select.i190.i = tail call i32 @llvm.smin.i32(i32 %i.ge, i32 %.02534.i189.i) ; 2 uses
  %spec.select32.i191.i = select i1 %i.gf, i32 %.02335.i188.i, i32 %.02136.i187.i
  %spec.select32.fr.i192.i = freeze i32 %spec.select32.i191.i ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.037.i186.i, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !107 ; 2 uses
  %i.gi = add nuw nsw i32 %.02335.i188.i, 1
  %.not.i193.i = icmp eq ptr %i.gh, null
  br i1 %.not.i193.i, label %.preheader.i194.i, label %cuddZddSiftingUp.exit185.i, !llvm.loop !111

.lr.ph.split.i195.i:                              ; preds = %.preheader.i194.i, %bb.ai
  %.139.i196.i = phi ptr [ %i.gp, %bb.ai ], [ %i.fg, %.preheader.i194.i ] ; 3 uses
  %i.gj = load i32, ptr %.139.i196.i, align 8, !tbaa !102
  %i.gk = getelementptr inbounds nuw i8, ptr %.139.i196.i, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !105
  %i.gm = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.gj, i32 noundef %i.gl) ; 2 uses
  %.not31.i197.i = icmp eq i32 %i.gm, 0
  br i1 %.not31.i197.i, label %.lr.ph311.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split.i195.i
  %i.gn = icmp eq i32 %i.gm, %spec.select.i190.i
  br i1 %i.gn, label %.lr.ph.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = getelementptr inbounds nuw i8, ptr %.139.i196.i, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !107 ; 2 uses
  %.not30.i198.i = icmp eq ptr %i.gp, null
  br i1 %.not30.i198.i, label %.lr.ph.i, label %.lr.ph.split.i195.i, !llvm.loop !110

.lr.ph.i209.i:                                    ; preds = %bb.x, %bb.ak
  %.052.i210.i = phi i32 [ %spec.select.i214.i, %bb.ak ], [ %i.bj, %bb.x ] ; 2 uses
  %.03951.i211.i = phi ptr [ %i.gs, %bb.ak ], [ null, %bb.x ] ; 3 uses
  %.04250.i212.i = phi i32 [ %.03853.i213.i, %bb.ak ], [ %i.bg, %bb.x ] ; 3 uses
  %.03853.i213.i = add nsw i32 %.04250.i212.i, -1 ; 5 uses
  %i.gq = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.03853.i213.i, i32 noundef %.04250.i212.i) ; 4 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i209.i
  %i.gs = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #14 ; 14 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %.03853.i213.i, ptr %i.gs, align 8, !tbaa !102
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 %.04250.i212.i, ptr %i.gu, align 4, !tbaa !105
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 %i.gq, ptr %i.gv, align 4, !tbaa !106
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store ptr %.03951.i211.i, ptr %i.gw, align 8, !tbaa !107
  %i.gx = sitofp i32 %i.gq to double
  %i.gy = sitofp i32 %.052.i210.i to double
  %i.gz = load double, ptr %i.ax, align 8, !tbaa !108
  %i.ha = fmul double %i.gz, %i.gy
  %i.hb = fcmp uge double %i.ha, %i.gx
  %spec.select.i214.i = tail call i32 @llvm.smin.i32(i32 %i.gq, i32 %.052.i210.i)
  %.not.not.i215.i = icmp sgt i32 %.03853.i213.i, %1
  %or.cond.i216.i = and i1 %.not.not.i215.i, %i.hb
  br i1 %or.cond.i216.i, label %.lr.ph.i209.i, label %.lr.ph.i226.i, !llvm.loop !120

bb.al:                                            ; preds = %bb.aj, %.lr.ph.i209.i
  %.not4556.i217.i = icmp eq ptr %.03951.i211.i, null
  br i1 %.not4556.i217.i, label %cuddZddSiftingAux.exit.thread, label %.lr.ph58.i218.i

.lr.ph58.i218.i:                                  ; preds = %bb.al
  %.promoted.i219.i = load ptr, ptr %i.ay, align 8, !tbaa !94
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph58.i218.i
  %i.hc = phi ptr [ %.promoted.i219.i, %.lr.ph58.i218.i ], [ %.257.i220.i, %bb.am ]
  %.257.i220.i = phi ptr [ %.03951.i211.i, %.lr.ph58.i218.i ], [ %i.he, %bb.am ] ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.257.i220.i, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !107 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.257.i220.i, i64 4
  store i32 0, ptr %i.hf, align 4, !tbaa !90
  %i.hg = getelementptr inbounds nuw i8, ptr %.257.i220.i, i64 8
  store ptr %i.hc, ptr %i.hg, align 8, !tbaa !54
  %.not45.i221.i = icmp eq ptr %i.he, null
  br i1 %.not45.i221.i, label %..loopexit_crit_edge.i222.i, label %bb.am, !llvm.loop !121

..loopexit_crit_edge.i222.i:                      ; preds = %bb.am
  store ptr %.257.i220.i, ptr %i.ay, align 8, !tbaa !94
  br label %cuddZddSiftingAux.exit.thread

.lr.ph.i226.i:                                    ; preds = %bb.ak, %bb.ao
  %.052.i227.i = phi i32 [ %spec.select.i231.i, %bb.ao ], [ %i.bj, %bb.ak ] ; 2 uses
  %.03951.i228.i = phi ptr [ %i.hj, %bb.ao ], [ null, %bb.ak ] ; 3 uses
  %.04250.i229.i = phi i32 [ %.03853.i230.i, %bb.ao ], [ %.03853.i213.i, %bb.ak ] ; 3 uses
  %.03853.i230.i = add nsw i32 %.04250.i229.i, 1  ; 4 uses
  %i.hh = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.04250.i229.i, i32 noundef %.03853.i230.i) ; 4 uses
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i226.i
  %i.hj = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #14 ; 15 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 %.04250.i229.i, ptr %i.hj, align 8, !tbaa !102
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %.03853.i230.i, ptr %i.hl, align 4, !tbaa !105
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 %i.hh, ptr %i.hm, align 4, !tbaa !106
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr %.03951.i228.i, ptr %i.hn, align 8, !tbaa !107
  %i.ho = sitofp i32 %i.hh to double
  %i.hp = sitofp i32 %.052.i227.i to double
  %i.hq = load double, ptr %i.ax, align 8, !tbaa !108
  %i.hr = fmul double %i.hq, %i.hp
  %i.hs = fcmp olt double %i.hr, %i.ho
  %spec.select.i231.i = tail call i32 @llvm.smin.i32(i32 %i.hh, i32 %.052.i227.i)
  %exitcond.not.i232.i = icmp eq i32 %.03853.i230.i, %2
  %or.cond.i233.i = or i1 %exitcond.not.i232.i, %i.hs
  br i1 %or.cond.i233.i, label %cuddZddSiftingDown.exit240.i, label %.lr.ph.i226.i, !llvm.loop !118

bb.ap:                                            ; preds = %bb.an, %.lr.ph.i226.i
  %.not4556.i234.i = icmp eq ptr %.03951.i228.i, null
  br i1 %.not4556.i234.i, label %.preheader.i, label %.lr.ph58.i235.i

.lr.ph58.i235.i:                                  ; preds = %bb.ap
  %.promoted.i236.i = load ptr, ptr %i.ay, align 8, !tbaa !94
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph58.i235.i
  %i.ht = phi ptr [ %.promoted.i236.i, %.lr.ph58.i235.i ], [ %.257.i237.i, %bb.aq ]
  %.257.i237.i = phi ptr [ %.03951.i228.i, %.lr.ph58.i235.i ], [ %i.hv, %bb.aq ] ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.257.i237.i, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !107 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.257.i237.i, i64 4
  store i32 0, ptr %i.hw, align 4, !tbaa !90
  %i.hx = getelementptr inbounds nuw i8, ptr %.257.i237.i, i64 8
  store ptr %i.ht, ptr %i.hx, align 8, !tbaa !54
  %.not45.i238.i = icmp eq ptr %i.hv, null
  br i1 %.not45.i238.i, label %.preheader.i.sink.split, label %bb.aq, !llvm.loop !119

.preheader.i249.i:                                ; preds = %cuddZddSiftingDown.exit240.i
  switch i32 %spec.select32.fr.i247.i, label %.lr.ph.split.us.i255.i [
    i32 0, label %.lr.ph.i
    i32 -1, label %.lr.ph.split.i250.i
  ]

.lr.ph.split.us.i255.i:                           ; preds = %.preheader.i249.i, %bb.ar
  %.139.us.i256.i = phi ptr [ %i.id, %bb.ar ], [ %i.hj, %.preheader.i249.i ] ; 3 uses
  %.12438.us.i257.i = phi i32 [ %i.ie, %bb.ar ], [ 0, %.preheader.i249.i ]
  %i.hy = load i32, ptr %.139.us.i256.i, align 8, !tbaa !102
  %i.hz = getelementptr inbounds nuw i8, ptr %.139.us.i256.i, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !105
  %i.ib = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.hy, i32 noundef %i.ia)
  %.not31.us.i258.i = icmp eq i32 %i.ib, 0
  br i1 %.not31.us.i258.i, label %.lr.ph311.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.us.i255.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.139.us.i256.i, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !107 ; 2 uses
  %i.ie = add nuw nsw i32 %.12438.us.i257.i, 1    ; 2 uses
  %.not30.us.i259.i = icmp eq ptr %i.id, null
  %i.if = icmp eq i32 %i.ie, %spec.select32.fr.i247.i
  %or.cond.us.i260.i = select i1 %.not30.us.i259.i, i1 true, i1 %i.if
  br i1 %or.cond.us.i260.i, label %.lr.ph.i, label %.lr.ph.split.us.i255.i, !llvm.loop !110

cuddZddSiftingDown.exit240.i:                     ; preds = %bb.ao, %cuddZddSiftingDown.exit240.i
  %.037.i241.i = phi ptr [ %i.ik, %cuddZddSiftingDown.exit240.i ], [ %i.hj, %bb.ao ] ; 2 uses
  %.02136.i242.i = phi i32 [ %spec.select32.fr.i247.i, %cuddZddSiftingDown.exit240.i ], [ -1, %bb.ao ]
  %.02335.i243.i = phi i32 [ %i.il, %cuddZddSiftingDown.exit240.i ], [ 0, %bb.ao ] ; 2 uses
  %.02534.i244.i = phi i32 [ %spec.select.i245.i, %cuddZddSiftingDown.exit240.i ], [ %i.bj, %bb.ao ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.037.i241.i, i64 12
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !106 ; 2 uses
  %i.ii = icmp slt i32 %i.ih, %.02534.i244.i
  %spec.select.i245.i = tail call i32 @llvm.smin.i32(i32 %i.ih, i32 %.02534.i244.i) ; 2 uses
  %spec.select32.i246.i = select i1 %i.ii, i32 %.02335.i243.i, i32 %.02136.i242.i
  %spec.select32.fr.i247.i = freeze i32 %spec.select32.i246.i ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.037.i241.i, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !107 ; 2 uses
  %i.il = add nuw nsw i32 %.02335.i243.i, 1
  %.not.i248.i = icmp eq ptr %i.ik, null
  br i1 %.not.i248.i, label %.preheader.i249.i, label %cuddZddSiftingDown.exit240.i, !llvm.loop !111

.lr.ph.split.i250.i:                              ; preds = %.preheader.i249.i, %bb.at
  %.139.i251.i = phi ptr [ %i.is, %bb.at ], [ %i.hj, %.preheader.i249.i ] ; 3 uses
  %i.im = load i32, ptr %.139.i251.i, align 8, !tbaa !102
  %i.in = getelementptr inbounds nuw i8, ptr %.139.i251.i, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !105
  %i.ip = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.im, i32 noundef %i.io) ; 2 uses
  %.not31.i252.i = icmp eq i32 %i.ip, 0
  br i1 %.not31.i252.i, label %.lr.ph311.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.split.i250.i
  %i.iq = icmp eq i32 %i.ip, %spec.select.i245.i
  br i1 %i.iq, label %.lr.ph.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = getelementptr inbounds nuw i8, ptr %.139.i251.i, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !107 ; 2 uses
  %.not30.i253.i = icmp eq ptr %i.is, null
  br i1 %.not30.i253.i, label %.lr.ph.i, label %.lr.ph.split.i250.i, !llvm.loop !110

.lr.ph.i:                                         ; preds = %bb.as, %bb.at, %bb.ar, %bb.ah, %bb.ai, %bb.ag, %bb.n, %bb.o, %bb.m, %.preheader.i194.i, %.preheader.i249.i, %.preheader.i.i
  %.0384.i = phi ptr [ %i.bn, %.preheader.i.i ], [ %i.hj, %.preheader.i249.i ], [ %i.ep, %.preheader.i194.i ], [ %i.ep, %bb.ag ], [ %i.hj, %bb.ar ], [ %i.bn, %bb.n ], [ %i.bn, %bb.m ], [ %i.ep, %bb.ah ], [ %i.bn, %bb.o ], [ %i.ep, %bb.ai ], [ %i.hj, %bb.at ], [ %i.hj, %bb.as ]
  %.087383.i = phi ptr [ null, %.preheader.i.i ], [ %i.gs, %.preheader.i249.i ], [ %i.fg, %.preheader.i194.i ], [ %i.fg, %bb.ag ], [ %i.gs, %bb.ar ], [ null, %bb.n ], [ null, %bb.m ], [ %i.fg, %bb.ah ], [ null, %bb.o ], [ %i.fg, %bb.ai ], [ %i.gs, %bb.at ], [ %i.gs, %bb.as ]
  %.promoted.i = load ptr, ptr %i.ay, align 8, !tbaa !94
  br label %bb.au

..preheader276_crit_edge.i:                       ; preds = %bb.au
  store ptr %.1304.i, ptr %i.ay, align 8, !tbaa !94
  br label %.preheader276.i

.preheader276.i:                                  ; preds = %bb.w, %bb.v, %bb.u, %..preheader276_crit_edge.i
  %.087377.i = phi ptr [ %i.da, %bb.u ], [ %.087383.i, %..preheader276_crit_edge.i ], [ %i.da, %bb.v ], [ %i.da, %bb.w ] ; 2 uses
  %.not112305.i = icmp eq ptr %.087377.i, null
  br i1 %.not112305.i, label %cuddZddSiftingAux.exit, label %.lr.ph307.i

.lr.ph307.i:                                      ; preds = %.preheader276.i, %.preheader.i139.i
  %.087377398.i = phi ptr [ %.087377.i, %.preheader276.i ], [ %i.da, %.preheader.i139.i ]
  %.promoted308.i = load ptr, ptr %i.ay, align 8, !tbaa !94
  br label %bb.av

bb.au:                                            ; preds = %bb.au, %.lr.ph.i
  %i.it = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %.1304.i, %bb.au ]
  %.1304.i = phi ptr [ %.0384.i, %.lr.ph.i ], [ %i.iv, %bb.au ] ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.1304.i, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !107 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.1304.i, i64 4
  store i32 0, ptr %i.iw, align 4, !tbaa !90
  %i.ix = getelementptr inbounds nuw i8, ptr %.1304.i, i64 8
  store ptr %i.it, ptr %i.ix, align 8, !tbaa !54
  %.not111.i = icmp eq ptr %i.iv, null
  br i1 %.not111.i, label %..preheader276_crit_edge.i, label %bb.au, !llvm.loop !122

bb.av:                                            ; preds = %bb.av, %.lr.ph307.i
  %i.iy = phi ptr [ %.promoted308.i, %.lr.ph307.i ], [ %.188306.i, %bb.av ]
  %.188306.i = phi ptr [ %.087377398.i, %.lr.ph307.i ], [ %i.ja, %bb.av ] ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.188306.i, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !107 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.188306.i, i64 4
  store i32 0, ptr %i.jb, align 4, !tbaa !90
  %i.jc = getelementptr inbounds nuw i8, ptr %.188306.i, i64 8
  store ptr %i.iy, ptr %i.jc, align 8, !tbaa !54
  %.not112.i = icmp eq ptr %i.ja, null
  br i1 %.not112.i, label %..loopexit277_crit_edge.i, label %bb.av, !llvm.loop !123

.lr.ph311.i:                                      ; preds = %.lr.ph.split.i250.i, %.lr.ph.split.us.i255.i, %.lr.ph.split.i195.i, %.lr.ph.split.us.i200.i, %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %bb.ae, %..loopexit_crit_edge.i184.i
  %.2395.i = phi ptr [ %i.bn, %.lr.ph.split.i.i ], [ %i.ep, %..loopexit_crit_edge.i184.i ], [ %i.hj, %.lr.ph.split.us.i255.i ], [ %i.ep, %.lr.ph.split.us.i200.i ], [ %i.bn, %.lr.ph.split.us.i.i ], [ %i.ep, %bb.ae ], [ %i.ep, %.lr.ph.split.i195.i ], [ %i.hj, %.lr.ph.split.i250.i ]
  %.289394.i = phi ptr [ null, %.lr.ph.split.i.i ], [ null, %..loopexit_crit_edge.i184.i ], [ %i.gs, %.lr.ph.split.us.i255.i ], [ %i.fg, %.lr.ph.split.us.i200.i ], [ null, %.lr.ph.split.us.i.i ], [ null, %bb.ae ], [ %i.fg, %.lr.ph.split.i195.i ], [ %i.gs, %.lr.ph.split.i250.i ]
  %.promoted312.i = load ptr, ptr %i.ay, align 8, !tbaa !94
  br label %bb.aw

.preheader.i.sink.split:                          ; preds = %bb.aq, %bb.aw
  %.3310.i.lcssa.sink = phi ptr [ %.3310.i, %bb.aw ], [ %.257.i237.i, %bb.aq ]
  %.289389.i.ph = phi ptr [ %.289394.i, %bb.aw ], [ %i.gs, %bb.aq ]
  store ptr %.3310.i.lcssa.sink, ptr %i.ay, align 8, !tbaa !94
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.split.i140.i, %.lr.ph.split.us.i145.i, %.preheader.i.sink.split, %bb.ap
  %.289389.i = phi ptr [ %.289389.i.ph, %.preheader.i.sink.split ], [ %i.gs, %bb.ap ], [ %i.da, %.lr.ph.split.us.i145.i ], [ %i.da, %.lr.ph.split.i140.i ] ; 2 uses
  %.not114313.i = icmp eq ptr %.289389.i, null
  br i1 %.not114313.i, label %cuddZddSiftingAux.exit.thread, label %.lr.ph315.i

.lr.ph315.i:                                      ; preds = %.preheader.i
  %.promoted316.i = load ptr, ptr %i.ay, align 8, !tbaa !94
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aw, %.lr.ph311.i
  %i.jd = phi ptr [ %.promoted312.i, %.lr.ph311.i ], [ %.3310.i, %bb.aw ]
  %.3310.i = phi ptr [ %.2395.i, %.lr.ph311.i ], [ %i.jf, %bb.aw ] ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.3310.i, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !107 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.3310.i, i64 4
  store i32 0, ptr %i.jg, align 4, !tbaa !90
  %i.jh = getelementptr inbounds nuw i8, ptr %.3310.i, i64 8
  store ptr %i.jd, ptr %i.jh, align 8, !tbaa !54
  %.not113.i = icmp eq ptr %i.jf, null
  br i1 %.not113.i, label %.preheader.i.sink.split, label %bb.aw, !llvm.loop !124

bb.ax:                                            ; preds = %bb.ax, %.lr.ph315.i
  %i.ji = phi ptr [ %.promoted316.i, %.lr.ph315.i ], [ %.390314.i, %bb.ax ]
  %.390314.i = phi ptr [ %.289389.i, %.lr.ph315.i ], [ %i.jk, %bb.ax ] ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.390314.i, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !107 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.390314.i, i64 4
  store i32 0, ptr %i.jl, align 4, !tbaa !90
  %i.jm = getelementptr inbounds nuw i8, ptr %.390314.i, i64 8
  store ptr %i.ji, ptr %i.jm, align 8, !tbaa !54
  %.not114.i = icmp eq ptr %i.jk, null
  br i1 %.not114.i, label %..loopexit_crit_edge.i, label %bb.ax, !llvm.loop !125

..loopexit_crit_edge.i:                           ; preds = %bb.ax
  store ptr %.390314.i, ptr %i.ay, align 8, !tbaa !94
  br label %cuddZddSiftingAux.exit.thread

..loopexit277_crit_edge.i:                        ; preds = %bb.av
  store ptr %.188306.i, ptr %i.ay, align 8, !tbaa !94
  br label %cuddZddSiftingAux.exit

cuddZddSiftingAux.exit:                           ; preds = %..loopexit277_crit_edge.i, %.preheader276.i, %bb.f
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.jn = load i32, ptr %i.ar, align 8, !tbaa !116
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.jn)
  %i.jo = sext i32 %. to i64
  %i.jp = icmp slt i64 %indvars.iv.next149, %i.jo
  br i1 %i.jp, label %bb.e, label %._crit_edge110, !llvm.loop !126

._crit_edge110:                                   ; preds = %bb.e, %cuddZddSiftingAux.exit, %._crit_edge
  tail call void @free(ptr noundef %i.h) #14
  %i.jq = load ptr, ptr @zdd_entry, align 8, !tbaa !86 ; 2 uses
  %.not58 = icmp eq ptr %i.jq, null
  br i1 %.not58, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge110
  tail call void @free(ptr noundef nonnull %i.jq) #14
  store ptr null, ptr @zdd_entry, align 8, !tbaa !86
  br label %bb.bc

cuddZddSiftingAux.exit.thread:                    ; preds = %bb.h, %bb.k, %..loopexit_crit_edge.i.i, %bb.s, %..loopexit_crit_edge.i130.i, %bb.aa, %..loopexit_crit_edge.i167.i, %bb.al, %..loopexit_crit_edge.i222.i, %..loopexit_crit_edge.i, %.preheader.i, %bb.c
  %.pr = load ptr, ptr @zdd_entry, align 8, !tbaa !86 ; 2 uses
  %.not59 = icmp eq ptr %.pr, null
  br i1 %.not59, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %cuddZddSiftingAux.exit.thread
  tail call void @free(ptr noundef nonnull %.pr) #14
  store ptr null, ptr @zdd_entry, align 8, !tbaa !86
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %cuddZddSiftingAux.exit.thread
  br i1 %i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @free(ptr noundef nonnull %i.h) #14
  br label %bb.bc

bb.bc:                                            ; preds = %.thread66, %bb.ba, %bb.bb, %bb.ay, %._crit_edge110
  %.047 = phi i32 [ 1, %bb.ay ], [ 1, %._crit_edge110 ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %.thread66 ]
  ret i32 %.047
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare void @cuddCacheFlush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 232}
!9 = !{!"DdManager", !10, i64 0, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !14, i64 80, !14, i64 88, !5, i64 96, !5, i64 100, !15, i64 104, !15, i64 112, !15, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !16, i64 152, !16, i64 160, !17, i64 168, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !15, i64 256, !5, i64 264, !5, i64 268, !5, i64 272, !18, i64 280, !13, i64 288, !13, i64 296, !15, i64 304, !5, i64 312, !20, i64 320, !20, i64 328, !20, i64 336, !20, i64 344, !18, i64 352, !20, i64 360, !18, i64 368, !5, i64 376, !21, i64 384, !21, i64 392, !18, i64 400, !11, i64 408, !22, i64 416, !18, i64 424, !5, i64 432, !5, i64 436, !5, i64 440, !15, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !15, i64 472, !15, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !23, i64 528, !23, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !24, i64 568, !22, i64 576, !25, i64 584, !25, i64 592, !25, i64 600, !25, i64 608, !26, i64 616, !26, i64 624, !5, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !5, i64 664, !13, i64 672, !13, i64 680, !15, i64 688, !15, i64 696, !15, i64 704, !15, i64 712, !15, i64 720, !15, i64 728, !5, i64 736, !11, i64 744, !11, i64 752, !13, i64 760}
!10 = !{!"DdNode", !5, i64 0, !5, i64 4, !11, i64 8, !6, i64 16, !13, i64 32}
!11 = !{!"p1 _ZTS6DdNode", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS7DdCache", !12, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"p1 _ZTS10DdSubtable", !12, i64 0}
!17 = !{!"DdSubtable", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!18 = !{!"p2 _ZTS6DdNode", !19, i64 0}
!19 = !{!"any p2 pointer", !12, i64 0}
!20 = !{!"p1 int", !12, i64 0}
!21 = !{!"p1 long", !12, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"p1 _ZTS7MtrNode", !12, i64 0}
!24 = !{!"p1 _ZTS12DdLocalCache", !12, i64 0}
!25 = !{!"p1 _ZTS6DdHook", !12, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!27 = !{!9, !5, i64 240}
!28 = !{!9, !5, i64 504}
!29 = !{!9, !5, i64 460}
!30 = !{!9, !11, i64 48}
!31 = !{!11, !11, i64 0}
!32 = !{!25, !25, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !12, i64 0}
!36 = !{!"DdHook", !12, i64 0, !25, i64 8}
!37 = !{!5, !5, i64 0}
!38 = !{!9, !5, i64 512}
!39 = !{!9, !5, i64 516}
!40 = !{!9, !5, i64 456}
!41 = distinct !{!41, !34}
!42 = !{!9, !13, i64 680}
!43 = !{!9, !15, i64 304}
!44 = !{!9, !13, i64 288}
!45 = !{!9, !5, i64 140}
!46 = !{!9, !16, i64 160}
!47 = !{!17, !5, i64 12}
!48 = !{!17, !5, i64 16}
!49 = !{!9, !5, i64 272}
!50 = !{!17, !18, i64 0}
!51 = !{!12, !12, i64 0}
!52 = !{!17, !5, i64 8}
!53 = !{!17, !5, i64 20}
!54 = !{!10, !11, i64 8}
!55 = !{!6, !6, i64 0}
!56 = !{!10, !13, i64 32}
!57 = distinct !{!57, !34}
!58 = distinct !{!58, !34}
!59 = !{!9, !13, i64 640}
!60 = !{!9, !5, i64 224}
!61 = !{!9, !15, i64 256}
!62 = !{!9, !5, i64 248}
!63 = !{!9, !5, i64 132}
!64 = !{!9, !5, i64 96}
!65 = !{!9, !5, i64 128}
!66 = distinct !{!66, !34}
!67 = !{!9, !20, i64 328}
!68 = distinct !{!68, !34}
!69 = distinct !{!69, !34}
!70 = !{!9, !5, i64 136}
!71 = !{!9, !20, i64 336}
!72 = !{!9, !20, i64 344}
!73 = !{!9, !5, i64 632}
!74 = distinct !{!74, !34, !75, !76}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = distinct !{!77, !34, !76, !75}
!78 = distinct !{!78, !34}
!79 = !{!9, !23, i64 536}
!80 = !{!81, !5, i64 12}
!81 = !{!"MtrNode", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40}
!82 = !{!81, !5, i64 4}
!83 = !{!81, !23, i64 24}
!84 = !{!81, !23, i64 40}
!85 = !{!81, !23, i64 16}
!86 = !{!20, !20, i64 0}
!87 = !{!10, !5, i64 0}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !34}
!90 = !{!10, !5, i64 4}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = !{!9, !11, i64 408}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34}
!97 = !{!9, !18, i64 368}
end_hunk_0
