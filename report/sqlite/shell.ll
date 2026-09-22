Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_expert_analyze:bb.a
  br i1 %or.cond3.i, label %bb.bg, label %bb.am, !llvm.loop !809

bb.am:                                            ; preds = %bb.al
  %i.gw = load i32, ptr %0, align 8, !tbaa !175   ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 99
  %.not.i31 = icmp eq i64 %.053140.i, %i.gp
  %or.cond61.i = select i1 %i.gx, i1 true, i1 %.not.i31
  br i1 %or.cond61.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gy = sitofp i32 %i.gw to double
  %i.gz = fdiv double %i.gy, 1.000000e+02
  store double %i.gz, ptr %i.gh, align 8, !tbaa !221
  store i32 %i.gw, ptr %3, align 8, !tbaa !222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false)
  %i.ha = load ptr, ptr %i.gj, align 8, !tbaa !177
  %i.hb = call i32 @sqlite3_exec(ptr noundef %i.ha, ptr noundef nonnull @.str.428, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %.not.i67.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i67.i, label %bb.ao, label %.thread120.i

bb.ao:                                            ; preds = %bb.an
  %i.hc = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.431, ptr noundef nonnull %i.gr) #45 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %.thread120.i, label %idxBuildSampleTable.exit.i

idxBuildSampleTable.exit.i:                       ; preds = %bb.ao
  %i.he = load ptr, ptr %i.gj, align 8, !tbaa !177
  %i.hf = call i32 @sqlite3_exec(ptr noundef %i.he, ptr noundef nonnull %i.hc, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 2 uses
  call void @sqlite3_free(ptr noundef nonnull %i.hc) #45
  %.not59.i = icmp eq i32 %i.hf, 0
  br i1 %.not59.i, label %bb.ap, label %.thread120.i

bb.ap:                                            ; preds = %idxBuildSampleTable.exit.i, %bb.am
  %i.hg = load ptr, ptr %i.g, align 8, !tbaa !109 ; 7 uses
  %i.hh = load ptr, ptr %i.h, align 8, !tbaa !109 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  store ptr null, ptr %i.c, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  store i32 0, ptr %i.d, align 4, !tbaa !53
  %i.hi = call i32 @sqlite3_bind_text(ptr noundef %i.hg, i32 noundef 1, ptr noundef nonnull %i.gt, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  br label %bb.aq

thread-pre-split.i.i:                             ; preds = %bb.ar
  %i.hj = icmp eq ptr %.091126.i.i, null
  %i.hk = select i1 %i.hj, ptr @.str.48, ptr @.str.397 ; 2 uses
  %i.hl = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.d, ptr noundef %.091126.i.i, ptr noundef nonnull @.str.432, ptr noundef nonnull %i.hk, ptr noundef nonnull %i.hr, i32 noundef %.086128.i.i, ptr noundef nonnull %i.hr, ptr noundef %i.hs) ; 2 uses
  %i.hm = add nuw nsw i32 %.086128.i.i, 1         ; 3 uses
  %i.hn = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.d, ptr noundef %.089127.i.i, ptr noundef nonnull @.str.433, ptr noundef nonnull %i.hk, i32 noundef %i.hm) ; 2 uses
  %.pr.i.i = load i32, ptr %i.d, align 4, !tbaa !53 ; 2 uses
  %i.ho = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ho, label %bb.aq, label %.critedge.i.i

bb.aq:                                            ; preds = %thread-pre-split.i.i, %bb.ap
  %.086128.i.i = phi i32 [ 0, %bb.ap ], [ %i.hm, %thread-pre-split.i.i ] ; 4 uses
  %.089127.i.i = phi ptr [ null, %bb.ap ], [ %i.hn, %thread-pre-split.i.i ] ; 6 uses
  %.091126.i.i = phi ptr [ null, %bb.ap ], [ %i.hl, %thread-pre-split.i.i ] ; 7 uses
  %i.hp = call i32 @sqlite3_step(ptr noundef %i.hg) #45
  %i.hq = icmp eq i32 %i.hp, 100
  br i1 %i.hq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hr = call ptr @sqlite3_column_text(ptr noundef %i.hg, i32 noundef 0) #45 ; 3 uses
  %i.hs = call ptr @sqlite3_column_text(ptr noundef %i.hg, i32 noundef 1) #45
  %.not99.i.i = icmp eq ptr %i.hr, null
  br i1 %.not99.i.i, label %.thread.i.i39, label %thread-pre-split.i.i

.thread.i.i39:                                    ; preds = %bb.ar
  call void @sqlite3_free(ptr noundef %.091126.i.i) #45
  call void @sqlite3_free(ptr noundef %.089127.i.i) #45
  %i.ht = call i32 @sqlite3_reset(ptr noundef %i.hg) #45
  br label %idxPopulateOneStat1.exit.i

.critedge.i.i:                                    ; preds = %thread-pre-split.i.i
  %i.hu = call i32 @sqlite3_reset(ptr noundef %i.hg) #45 ; 0 uses
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.hv = call i32 @sqlite3_reset(ptr noundef %i.hg) #45 ; 0 uses
  %i.hw = load i32, ptr %0, align 8, !tbaa !175
  %i.hx = icmp eq i32 %i.hw, 100
  br i1 %i.hx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hy = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.434, ptr noundef %.091126.i.i, ptr noundef nonnull %i.gr, ptr noundef %.089127.i.i) #45
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.hz = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.435, ptr noundef %.091126.i.i, ptr noundef %.089127.i.i) #45
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.critedge.i.i
  %i.ia = phi i32 [ 0, %bb.at ], [ 0, %bb.au ], [ %.pr.i.i, %.critedge.i.i ] ; 2 uses
  %.091125.i.i = phi ptr [ %.091126.i.i, %bb.at ], [ %.091126.i.i, %bb.au ], [ %i.hl, %.critedge.i.i ]
  %.089122.i.i = phi ptr [ %.089127.i.i, %bb.at ], [ %.089127.i.i, %bb.au ], [ %i.hn, %.critedge.i.i ]
  %.086119.i.i = phi i32 [ %.086128.i.i, %bb.at ], [ %.086128.i.i, %bb.au ], [ %i.hm, %.critedge.i.i ] ; 7 uses
  %.088.i.i = phi ptr [ %i.hy, %bb.at ], [ %i.hz, %bb.au ], [ null, %.critedge.i.i ] ; 3 uses
  call void @sqlite3_free(ptr noundef %.091125.i.i) #45
  call void @sqlite3_free(ptr noundef %.089122.i.i) #45
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.aw, label %idxFinalize.exit.critedge.i.sink.split.i

bb.aw:                                            ; preds = %bb.av
  %i.ic = load i32, ptr %0, align 8, !tbaa !175
  %i.id = icmp eq i32 %i.ic, 100
  %.in.v.i.i = select i1 %i.id, i64 8, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i.i
  %i.ie = load ptr, ptr %.in.i.i, align 8, !tbaa !218 ; 2 uses
  %i.if = call i32 @sqlite3_prepare_v2(ptr noundef %i.ie, ptr noundef %.088.i.i, i32 noundef -1, ptr noundef nonnull %i.c, ptr noundef null) #45 ; 2 uses
  %.not.i.i69.i = icmp eq i32 %i.if, 0
  br i1 %.not.i.i69.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr null, ptr %i.c, align 8, !tbaa !109
  %i.ig = call ptr @sqlite3_errmsg(ptr noundef %i.ie) #45
  %i.ih = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.ig) #45
  store ptr %i.ih, ptr %1, align 8, !tbaa !88
  br label %idxFinalize.exit.critedge.i.sink.split.i

bb.ay:                                            ; preds = %bb.aw
  store i32 0, ptr %i.d, align 4, !tbaa !53
  call void @sqlite3_free(ptr noundef %.088.i.i) #45
  %i.ii = add i32 %.086119.i.i, 1                 ; 2 uses
  %i.ij = zext i32 %i.ii to i64                   ; 4 uses
  %i.ik = shl nuw nsw i64 %i.ij, 3                ; 2 uses
  %i.il = call ptr @sqlite3_malloc64(i64 noundef %i.ik) #45 ; 11 uses
  %.not.i100.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i100.i.i, label %idxFinalize.exit.critedge.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.il, i8 0, i64 %i.ik, i1 false)
  %i.im = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.in = call i32 @sqlite3_step(ptr noundef %i.im) #45
  %i.io = icmp eq i32 %i.in, 100
  br i1 %i.io, label %.preheader115.i.i.preheader, label %idxMalloc.exit.threadthread-pre-split.i.i

.preheader115.i.i.preheader:                      ; preds = %bb.az
  %min.iters.check291 = icmp ult i32 %i.ii, 4
  br i1 %min.iters.check291, label %.preheader115.i.i.preheader314, label %vector.ph292

vector.ph292:                                     ; preds = %.preheader115.i.i.preheader
  %n.vec293 = and i64 %i.ij, 4294967292           ; 3 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph292
  %index295 = phi i64 [ 0, %vector.ph292 ], [ %index.next296, %vector.body294 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %index295 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ip, align 8, !tbaa !130
  store <2 x i64> splat (i64 1), ptr %i.iq, align 8, !tbaa !130
  %index.next296 = add nuw i64 %index295, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next296, %n.vec293
  br i1 %i.ir, label %middle.block297, label %vector.body294, !llvm.loop !810

middle.block297:                                  ; preds = %vector.body294
  %cmp.n298 = icmp eq i64 %n.vec293, %i.ij
  br i1 %cmp.n298, label %.preheader.i.i, label %.preheader115.i.i.preheader314

.preheader115.i.i.preheader314:                   ; preds = %.preheader115.i.i.preheader, %middle.block297
  %indvars.iv.i.i33.ph = phi i64 [ 0, %.preheader115.i.i.preheader ], [ %n.vec293, %middle.block297 ]
  br label %.preheader115.i.i

.preheader.i.i:                                   ; preds = %.preheader115.i.i, %middle.block297
  %i.is = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.it = call i32 @sqlite3_step(ptr noundef %i.is) #45
  %i.iu = icmp eq i32 %i.it, 100
  br i1 %i.iu, label %.lr.ph136.i.i, label %.critedge2.i.i

.lr.ph136.i.i:                                    ; preds = %.preheader.i.i
  %.not.i70.i = icmp eq i32 %.086119.i.i, 0
  %wide.trip.count159.i.i = zext i32 %.086119.i.i to i64 ; 2 uses
  br label %bb.ba

.preheader115.i.i:                                ; preds = %.preheader115.i.i.preheader314, %.preheader115.i.i
  %indvars.iv.i.i33 = phi i64 [ %indvars.iv.next.i.i34, %.preheader115.i.i ], [ %indvars.iv.i.i33.ph, %.preheader115.i.i.preheader314 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.i.i33
  store i64 1, ptr %i.iv, align 8, !tbaa !130
  %indvars.iv.next.i.i34 = add nuw nsw i64 %indvars.iv.i.i33, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i34, %i.ij
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.preheader115.i.i, !llvm.loop !811

.loopexit114.i.i:                                 ; preds = %bb.bb, %.lr.ph135.i.i, %middle.block, %._crit_edge.i.i38
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.ix = call i32 @sqlite3_step(ptr noundef %i.iw) #45
  %i.iy = icmp eq i32 %i.ix, 100
  br i1 %i.iy, label %bb.ba, label %.critedge2.i.i, !llvm.loop !812

bb.ba:                                            ; preds = %.loopexit114.i.i, %.lr.ph136.i.i
  %i.iz = load i64, ptr %i.il, align 8, !tbaa !130
  %i.ja = add nsw i64 %i.iz, 1
  store i64 %i.ja, ptr %i.il, align 8, !tbaa !130
  br i1 %.not.i70.i, label %._crit_edge.i.i38, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %bb.ba, %bb.bb
  %.185130.i.i = phi i32 [ %i.je, %bb.bb ], [ 0, %bb.ba ] ; 3 uses
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.jc = call i32 @sqlite3_column_int(ptr noundef %i.jb, i32 noundef %.185130.i.i) #45
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %._crit_edge.i.i38, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i37
  %i.je = add nuw nsw i32 %.185130.i.i, 1         ; 2 uses
  %exitcond155.not.i.i = icmp eq i32 %i.je, %.086119.i.i
  br i1 %exitcond155.not.i.i, label %.loopexit114.i.i, label %.lr.ph.i.i37, !llvm.loop !813

._crit_edge.i.i38:                                ; preds = %.lr.ph.i.i37, %bb.ba
  %.185.lcssa.i.i = phi i32 [ 0, %bb.ba ], [ %.185130.i.i, %.lr.ph.i.i37 ] ; 2 uses
  %i.jf = icmp samesign ult i32 %.185.lcssa.i.i, %.086119.i.i
  br i1 %i.jf, label %.lr.ph135.preheader.i.i, label %.loopexit114.i.i

.lr.ph135.preheader.i.i:                          ; preds = %._crit_edge.i.i38
  %i.jg = zext nneg i32 %.185.lcssa.i.i to i64    ; 4 uses
  %i.jh = sub nsw i64 %wide.trip.count159.i.i, %i.jg ; 3 uses
  %min.iters.check = icmp ult i64 %i.jh, 4
  br i1 %min.iters.check, label %.lr.ph135.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph135.preheader.i.i
  %n.vec = and i64 %i.jh, -4                      ; 3 uses
  %i.ji = add nsw i64 %n.vec, %i.jg
  %invariant.gep = getelementptr [8 x i8], ptr %i.il, i64 %i.jg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %gep, i64 24 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jj, align 8, !tbaa !130
  %wide.load289 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !130
  %i.jl = add nsw <2 x i64> %wide.load, splat (i64 1)
  %i.jm = add nsw <2 x i64> %wide.load289, splat (i64 1)
  store <2 x i64> %i.jl, ptr %i.jj, align 8, !tbaa !130
  store <2 x i64> %i.jm, ptr %i.jk, align 8, !tbaa !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !814

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jh, %n.vec
  br i1 %cmp.n, label %.loopexit114.i.i, label %.lr.ph135.i.i.preheader

.lr.ph135.i.i.preheader:                          ; preds = %.lr.ph135.preheader.i.i, %middle.block
  %indvars.iv156.i.i.ph = phi i64 [ %i.jg, %.lr.ph135.preheader.i.i ], [ %i.ji, %middle.block ]
  br label %.lr.ph135.i.i

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %.lr.ph135.i.i
  %indvars.iv156.i.i = phi i64 [ %indvars.iv.next157.i.i, %.lr.ph135.i.i ], [ %indvars.iv156.i.i.ph, %.lr.ph135.i.i.preheader ]
  %indvars.iv.next157.i.i = add nuw nsw i64 %indvars.iv156.i.i, 1 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next157.i.i ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !130
  %i.jq = add nsw i64 %i.jp, 1
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !130
  %exitcond160.not.i.i = icmp eq i64 %indvars.iv.next157.i.i, %wide.trip.count159.i.i
  br i1 %exitcond160.not.i.i, label %.loopexit114.i.i, label %.lr.ph135.i.i, !llvm.loop !815

.critedge2.i.i:                                   ; preds = %.loopexit114.i.i, %.preheader.i.i
  %i.jr = load i64, ptr %i.il, align 8, !tbaa !130 ; 2 uses
  %i.js = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.208, i64 noundef %i.jr) #45 ; 3 uses
  %.not192.i.i = icmp eq ptr %i.js, null
  br i1 %.not192.i.i, label %.sink.split.i.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge2.i.i
  %.not193.i.i = icmp eq i32 %.086119.i.i, 0
  br i1 %.not193.i.i, label %._crit_edge141.thread.i.i, label %.lr.ph140.preheader.i.i

.lr.ph140.preheader.i.i:                          ; preds = %bb.bc
  %i.jt = zext i32 %.086119.i.i to i64
  br label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %.lr.ph140.i.i, %.lr.ph140.preheader.i.i
  %indvars.iv161.i.i = phi i64 [ 1, %.lr.ph140.preheader.i.i ], [ %indvars.iv.next162.i.i, %.lr.ph140.i.i ] ; 3 uses
  %.0138.i.i = phi ptr [ %i.js, %.lr.ph140.preheader.i.i ], [ %i.jz, %.lr.ph140.i.i ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv161.i.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !130 ; 2 uses
  %i.jw = sdiv i64 %i.jv, 2
  %i.jx = add nsw i64 %i.jw, %i.jr
  %i.jy = sdiv i64 %i.jx, %i.jv
  %i.jz = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.d, ptr noundef %.0138.i.i, ptr noundef nonnull @.str.436, i64 noundef %i.jy) ; 3 uses
  %indvars.iv.next162.i.i = add nuw nsw i64 %indvars.iv161.i.i, 1
  %i.ka = load i32, ptr %i.d, align 4, !tbaa !53  ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 0                    ; 2 uses
  %i.kc = icmp samesign ult i64 %indvars.iv161.i.i, %i.jt
  %i.kd = and i1 %i.kc, %i.kb
  br i1 %i.kd, label %.lr.ph140.i.i, label %._crit_edge141.i.i, !llvm.loop !816

._crit_edge141.i.i:                               ; preds = %.lr.ph140.i.i
  br i1 %i.kb, label %._crit_edge141.thread.i.i, label %bb.bd

._crit_edge141.thread.i.i:                        ; preds = %._crit_edge141.i.i, %bb.bc
  %.0.lcssa174.i.i = phi ptr [ %i.jz, %._crit_edge141.i.i ], [ %i.js, %bb.bc ] ; 2 uses
  %i.ke = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 1, ptr noundef nonnull %i.gr, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kf = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 2, ptr noundef nonnull %i.gt, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kg = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 3, ptr noundef %.0.lcssa174.i.i, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kh = call i32 @sqlite3_step(ptr noundef %i.hh) #45 ; 0 uses
  %i.ki = call i32 @sqlite3_reset(ptr noundef %i.hh) #45
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge141.thread.i.i, %.critedge2.i.i
  %.sink.i.i = phi i32 [ %i.ki, %._crit_edge141.thread.i.i ], [ 7, %.critedge2.i.i ] ; 2 uses
  %.0.lcssa175.ph.i.i = phi ptr [ %.0.lcssa174.i.i, %._crit_edge141.thread.i.i ], [ null, %.critedge2.i.i ]
  store i32 %.sink.i.i, ptr %i.d, align 4, !tbaa !53
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split.i.i, %._crit_edge141.i.i
  %.0.lcssa175.i.i = phi ptr [ %i.jz, %._crit_edge141.i.i ], [ %.0.lcssa175.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.pr113165.i.i = phi i32 [ %i.ka, %._crit_edge141.i.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 2 uses
  %i.kj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gt) #46 ; 5 uses
  %i.kk = trunc i64 %i.kj to i32                  ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph.preheader.i.i.i.i, label %idxHashString.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bd
  %wide.trip.count.i.i.i.i = and i64 %i.kj, 2147483647
  %i.km = add nsw i64 %wide.trip.count.i.i.i.i, -1
  %xtraiter = and i64 %i.kj, 3                    ; 3 uses
  %i.kn = icmp ult i64 %i.km, 3
  br i1 %i.kn, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i64 %i.kj, 2147483644
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 5 uses
  %.078.i.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %i.lk, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !52
  %i.kq = zext i8 %i.kp to i32
  %i.kr = mul i32 %.078.i.i.i.i, 9
  %i.ks = add i32 %i.kr, %i.kq
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !52
  %i.kw = zext i8 %i.kv to i32
  %i.kx = mul i32 %i.ks, 9
  %i.ky = add i32 %i.kx, %i.kw
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !52
  %i.lc = zext i8 %i.lb to i32
  %i.ld = mul i32 %i.ky, 9
  %i.le = add i32 %i.ld, %i.lc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !52
  %i.li = zext i8 %i.lh to i32
  %i.lj = mul i32 %i.le, 9
  %i.lk = add i32 %i.lj, %i.li                    ; 3 uses
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !19

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.3, %._crit_edge.loopexit.i.i.i.i.unr-lcssa ]
  %.078.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.lk, %._crit_edge.loopexit.i.i.i.i.unr-lcssa ]
  %lcmp.mod342 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod342)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.078.i.i.i.i.epil = phi i32 [ %.078.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ], [ %i.lp, %.lr.ph.i.i.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i.epil
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !52
  %i.ln = zext i8 %i.lm to i32
  %i.lo = mul i32 %.078.i.i.i.i.epil, 9
  %i.lp = add i32 %i.lo, %i.ln                    ; 2 uses
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !817

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %.lcssa328 = phi i32 [ %i.lk, %._crit_edge.loopexit.i.i.i.i.unr-lcssa ], [ %i.lp, %.lr.ph.i.i.i.i.epil ]
  %i.lq = urem i32 %.lcssa328, 1023
  %i.lr = zext nneg i32 %i.lq to i64
  br label %idxHashString.exit.i.i.i

idxHashString.exit.i.i.i:                         ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.bd
  %.07.lcssa.i.i.i.i = phi i64 [ 0, %bb.bd ], [ %i.lr, %._crit_edge.loopexit.i.i.i.i ]
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.07.lcssa.i.i.i.i
  %sext.i.i = shl i64 %i.kj, 32
  %i.lt = ashr exact i64 %sext.i.i, 32
  %.017.i.i.i = load ptr, ptr %i.ls, align 8, !tbaa !208 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %.017.i.i.i, null
  br i1 %.not18.i.i.i, label %.loopexit.i.i36, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %idxHashString.exit.i.i.i, %bb.bf
  %.019.i.i.i = phi ptr [ %.0.i.i.i, %bb.bf ], [ %.017.i.i.i, %idxHashString.exit.i.i.i ] ; 3 uses
  %i.lu = load ptr, ptr %.019.i.i.i, align 8, !tbaa !223 ; 2 uses
  %i.lv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lu) #46
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = icmp eq i32 %i.kk, %i.lw
  br i1 %i.lx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i.i35
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.lu, ptr nonnull readonly %i.gt, i64 %i.lt)
  %i.ly = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ly, label %idxHashFind.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i.i.i35
  %i.lz = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24
  %.0.i.i.i = load ptr, ptr %i.lz, align 8, !tbaa !208 ; 2 uses
  %.not.i101.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i101.i.i, label %.loopexit.i.i36, label %.lr.ph.i.i.i35, !llvm.loop !818
end_hunk_0
