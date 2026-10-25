Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_cjk_metrics_init:bb.a
  %.pre.i.i = load i64, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.preheader.i.i
  %indvars.iv307.i = phi i64 [ %i.es, %bb.s ], [ %indvars.iv305.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.es = add nsw i64 %indvars.iv307.i, -1        ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i = icmp slt i64 %.pre.i.i, %i.eu
  br i1 %.not21.i.i, label %bb.s, label %._crit_edge.i.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !76
  store i64 %.pre.i.i, ptr %i.et, align 8, !tbaa !76
  %.not.i.wide.i = icmp eq i64 %i.es, 0
  br i1 %.not.i.wide.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.next306.i = add nuw nsw i64 %indvars.iv305.i, 1 ; 2 uses
  %.phi.trans.insert27.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next306.i
  %.pre.i.i.1 = load i64, ptr %.phi.trans.insert27.i.i.1, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.t, %._crit_edge.i.i
  %indvars.iv307.i.1 = phi i64 [ %i.ew, %bb.t ], [ %indvars.iv.next306.i, %._crit_edge.i.i ] ; 2 uses
  %i.ew = add nsw i64 %indvars.iv307.i.1, -1      ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ew ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i.1 = icmp slt i64 %.pre.i.i.1, %i.ey
  br i1 %.not21.i.i.1, label %bb.t, label %._crit_edge.i.i.1

bb.t:                                             ; preds = %.lr.ph.i.i.1
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i.1
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !76
  store i64 %.pre.i.i.1, ptr %i.ex, align 8, !tbaa !76
  %.not.i.wide.i.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.wide.i.1, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !0

._crit_edge.i.i.1:                                ; preds = %bb.t, %.lr.ph.i.i.1
  %indvars.iv.next306.i.1 = add nuw nsw i64 %indvars.iv305.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %af_sort_pos.exit.i.loopexit.unr-lcssa, label %.lr.ph.preheader.i.i, !llvm.loop !1

af_sort_pos.exit.i.loopexit.unr-lcssa:            ; preds = %._crit_edge.i.i.1
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %af_sort_pos.exit.i, label %.lr.ph.preheader.i.i.epil.preheader

.lr.ph.preheader.i.i.epil.preheader:              ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.preheader.i
  %indvars.iv305.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next306.i.1, %af_sort_pos.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.eq to i1
  call void @llvm.assume(i1 %lcmp.mod56)
  %.phi.trans.insert27.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv305.i.epil.init
  %.pre.i.i.epil = load i64, ptr %.phi.trans.insert27.i.i.epil, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.u, %.lr.ph.preheader.i.i.epil.preheader
  %indvars.iv307.i.epil = phi i64 [ %i.fa, %bb.u ], [ %indvars.iv305.i.epil.init, %.lr.ph.preheader.i.i.epil.preheader ] ; 2 uses
  %i.fa = add nsw i64 %indvars.iv307.i.epil, -1   ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i.epil = icmp slt i64 %.pre.i.i.epil, %i.fc
  br i1 %.not21.i.i.epil, label %bb.u, label %af_sort_pos.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i.epil
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i.epil
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !76
  store i64 %.pre.i.i.epil, ptr %i.fb, align 8, !tbaa !76
  %.not.i.wide.i.epil = icmp eq i64 %i.fa, 0
  br i1 %.not.i.wide.i.epil, label %af_sort_pos.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !0

af_sort_pos.exit.i:                               ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %bb.u, %.lr.ph.i.i.epil, %bb.r
  %i.fe = icmp ugt i32 %.2154.i, 1
  br i1 %i.fe, label %.lr.ph.preheader.i183.preheader.i, label %af_sort_pos.exit194.i

.lr.ph.preheader.i183.preheader.i:                ; preds = %af_sort_pos.exit.i
  %i.ff = zext i32 %.2154.i to i64
  %i.fg = add nsw i64 %i.ff, -1                   ; 3 uses
  %xtraiter57 = and i64 %i.fg, 1
  %i.fh = icmp eq i32 %.2154.i, 2
  br i1 %i.fh, label %.lr.ph.preheader.i183.i.epil.preheader, label %.lr.ph.preheader.i183.preheader.i.new

.lr.ph.preheader.i183.preheader.i.new:            ; preds = %.lr.ph.preheader.i183.preheader.i
  %unroll_iter60 = and i64 %i.fg, -2
  br label %.lr.ph.preheader.i183.i

.lr.ph.preheader.i183.i:                          ; preds = %._crit_edge.i191.i.1, %.lr.ph.preheader.i183.preheader.i.new
  %indvars.iv311.i = phi i64 [ 1, %.lr.ph.preheader.i183.preheader.i.new ], [ %indvars.iv.next312.i.1, %._crit_edge.i191.i.1 ] ; 4 uses
  %niter61 = phi i64 [ 0, %.lr.ph.preheader.i183.preheader.i.new ], [ %niter61.next.1, %._crit_edge.i191.i.1 ]
  %.phi.trans.insert27.i186.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i
  %.pre.i187.i = load i64, ptr %.phi.trans.insert27.i186.i, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i188.i

.lr.ph.i188.i:                                    ; preds = %bb.v, %.lr.ph.preheader.i183.i
  %indvars.iv313.i = phi i64 [ %i.fi, %bb.v ], [ %indvars.iv311.i, %.lr.ph.preheader.i183.i ] ; 2 uses
  %i.fi = add nsw i64 %indvars.iv313.i, -1        ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fi ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !76 ; 2 uses
  %.not21.i190.i = icmp slt i64 %.pre.i187.i, %i.fk
  br i1 %.not21.i190.i, label %bb.v, label %._crit_edge.i191.i

bb.v:                                             ; preds = %.lr.ph.i188.i
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !76
  store i64 %.pre.i187.i, ptr %i.fj, align 8, !tbaa !76
  %.not.i193.wide.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i193.wide.i, label %._crit_edge.i191.i, label %.lr.ph.i188.i, !llvm.loop !0

._crit_edge.i191.i:                               ; preds = %bb.v, %.lr.ph.i188.i
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %.phi.trans.insert27.i186.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next312.i
  %.pre.i187.i.1 = load i64, ptr %.phi.trans.insert27.i186.i.1, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i188.i.1

.lr.ph.i188.i.1:                                  ; preds = %bb.w, %._crit_edge.i191.i
  %indvars.iv313.i.1 = phi i64 [ %i.fm, %bb.w ], [ %indvars.iv.next312.i, %._crit_edge.i191.i ] ; 2 uses
  %i.fm = add nsw i64 %indvars.iv313.i.1, -1      ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !76 ; 2 uses
  %.not21.i190.i.1 = icmp slt i64 %.pre.i187.i.1, %i.fo
  br i1 %.not21.i190.i.1, label %bb.w, label %._crit_edge.i191.i.1

bb.w:                                             ; preds = %.lr.ph.i188.i.1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i.1
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !76
  store i64 %.pre.i187.i.1, ptr %i.fn, align 8, !tbaa !76
  %.not.i193.wide.i.1 = icmp eq i64 %i.fm, 0
  br i1 %.not.i193.wide.i.1, label %._crit_edge.i191.i.1, label %.lr.ph.i188.i.1, !llvm.loop !0

._crit_edge.i191.i.1:                             ; preds = %bb.w, %.lr.ph.i188.i.1
  %indvars.iv.next312.i.1 = add nuw nsw i64 %indvars.iv311.i, 2 ; 2 uses
  %niter61.next.1 = add i64 %niter61, 2           ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %af_sort_pos.exit194.thread.i.unr-lcssa, label %.lr.ph.preheader.i183.i, !llvm.loop !1

af_sort_pos.exit194.thread.i.unr-lcssa:           ; preds = %._crit_edge.i191.i.1
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %af_sort_pos.exit194.thread.i, label %.lr.ph.preheader.i183.i.epil.preheader

.lr.ph.preheader.i183.i.epil.preheader:           ; preds = %af_sort_pos.exit194.thread.i.unr-lcssa, %.lr.ph.preheader.i183.preheader.i
  %indvars.iv311.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i183.preheader.i ], [ %indvars.iv.next312.i.1, %af_sort_pos.exit194.thread.i.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i64 %i.fg to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %.phi.trans.insert27.i186.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i.epil.init
  %.pre.i187.i.epil = load i64, ptr %.phi.trans.insert27.i186.i.epil, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i188.i.epil

.lr.ph.i188.i.epil:                               ; preds = %bb.x, %.lr.ph.preheader.i183.i.epil.preheader
  %indvars.iv313.i.epil = phi i64 [ %i.fq, %bb.x ], [ %indvars.iv311.i.epil.init, %.lr.ph.preheader.i183.i.epil.preheader ] ; 2 uses
  %i.fq = add nsw i64 %indvars.iv313.i.epil, -1   ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !76 ; 2 uses
  %.not21.i190.i.epil = icmp slt i64 %.pre.i187.i.epil, %i.fs
  br i1 %.not21.i190.i.epil, label %bb.x, label %af_sort_pos.exit194.thread.i

bb.x:                                             ; preds = %.lr.ph.i188.i.epil
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i.epil
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !76
  store i64 %.pre.i187.i.epil, ptr %i.fr, align 8, !tbaa !76
  %.not.i193.wide.i.epil = icmp eq i64 %i.fq, 0
  br i1 %.not.i193.wide.i.epil, label %af_sort_pos.exit194.thread.i, label %.lr.ph.i188.i.epil, !llvm.loop !0

af_sort_pos.exit194.thread.i:                     ; preds = %.lr.ph.i188.i.epil, %bb.x, %af_sort_pos.exit194.thread.i.unr-lcssa
  %i.fu = getelementptr inbounds nuw i8, ptr %.0149.i, i64 432
  %i.fv = getelementptr inbounds nuw i8, ptr %.0149.i, i64 428 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !86 ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.fu, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.ga = add i32 %i.fw, 1
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !86
  br i1 %i.en, label %bb.aa, label %bb.ab

af_sort_pos.exit194.i:                            ; preds = %af_sort_pos.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.0149.i, i64 432
  %i.gc = getelementptr inbounds nuw i8, ptr %.0149.i, i64 428 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !86 ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [56 x i8], ptr %i.gb, i64 %i.ge ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 3 uses
  %i.gh = add i32 %i.gd, 1
  store i32 %i.gh, ptr %i.gc, align 4, !tbaa !86
  br i1 %i.em, label %bb.y, label %bb.z

bb.y:                                             ; preds = %af_sort_pos.exit194.i
  %i.gi = lshr i32 %.2157.i, 1
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !76 ; 2 uses
  store i64 %i.gl, ptr %i.gg, align 8, !tbaa !76
  store i64 %i.gl, ptr %i.gf, align 8, !tbaa !76
  br label %.thread370.i

bb.z:                                             ; preds = %af_sort_pos.exit194.i
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %af_sort_pos.exit194.thread.i
  %i.gm = phi ptr [ %i.fy, %af_sort_pos.exit194.thread.i ], [ %i.gf, %bb.z ] ; 2 uses
  %i.gn = phi ptr [ %i.fz, %af_sort_pos.exit194.thread.i ], [ %i.gg, %bb.z ]
  %i.go = lshr i32 %.2154.i, 1
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !76 ; 2 uses
  store i64 %i.gr, ptr %i.gn, align 8, !tbaa !76
  store i64 %i.gr, ptr %i.gm, align 8, !tbaa !76
  br label %.thread370.i

bb.ab:                                            ; preds = %bb.z, %af_sort_pos.exit194.thread.i
  %i.gs = phi ptr [ %i.fy, %af_sort_pos.exit194.thread.i ], [ %i.gf, %bb.z ] ; 4 uses
  %i.gt = phi ptr [ %i.fz, %af_sort_pos.exit194.thread.i ], [ %i.gg, %bb.z ] ; 2 uses
  %i.gu = lshr i32 %.2157.i, 1
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !76 ; 4 uses
  store i64 %i.gx, ptr %i.gs, align 8, !tbaa !76
  %i.gy = lshr i32 %.2154.i, 1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !76 ; 4 uses
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !76
  %.not168.i = icmp eq i64 %i.hb, %i.gx
  %i.hc = trunc i16 %.fr.i to i1
  %i.hd = icmp sge i64 %i.hb, %i.gx
  %.not169.i = xor i1 %i.hd, %i.hc
  %or.cond198.i = or i1 %.not168.i, %.not169.i
  br i1 %or.cond198.i, label %.thread370.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.he = add nsw i64 %i.hb, %i.gx
  %i.hf = sdiv i64 %i.he, 2                       ; 2 uses
  store i64 %i.hf, ptr %i.gt, align 8, !tbaa !76
  store i64 %i.hf, ptr %i.gs, align 8, !tbaa !76
  br label %.thread370.i

.thread370.i:                                     ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  %i.hg = phi ptr [ %i.gs, %bb.ab ], [ %i.gs, %bb.ac ], [ %i.gf, %bb.y ], [ %i.gm, %bb.aa ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = shl i16 %.fr.i, 1
  %i.hj = and i16 %i.hi, 2
  %spec.store.select.i = zext nneg i16 %i.hj to i32
  store i32 %spec.store.select.i, ptr %i.hh, align 8, !tbaa !89
  br label %._crit_edge257.thread.i

._crit_edge257.thread.i:                          ; preds = %.thread370.i, %._crit_edge257.i, %bb.d
  %i.hk = getelementptr inbounds nuw i8, ptr %.0148261.i, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !66 ; 2 uses
  %.not165.i = icmp eq i32 %i.hl, 5531
  br i1 %.not165.i, label %._crit_edge263.i, label %bb.d, !llvm.loop !303

._crit_edge263.i:                                 ; preds = %._crit_edge257.thread.i, %af_shaper_buf_create.exit.i
  %i.hm = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.hn = getelementptr i8, ptr %i.hm, i64 816
  %.val.i195.i = load ptr, ptr %i.hn, align 8, !tbaa !56
  %i.ho = getelementptr i8, ptr %.val.i195.i, i64 72
  %.val.val.i196.i = load ptr, ptr %i.ho, align 8, !tbaa !62 ; 2 uses
  %.not6.i.i = icmp eq ptr %.val.val.i196.i, null
  br i1 %.not6.i.i, label %af_cjk_metrics_init_blues.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge263.i
  %i.hp = getelementptr i8, ptr %.val.val.i196.i, i64 40
  %.val5.val.val.i.i = load ptr, ptr %i.hp, align 8, !tbaa !90
  call void %.val5.val.val.i.i(ptr noundef %.0147.i) #18, !inline_history !304
  br label %af_cjk_metrics_init_blues.exit

af_cjk_metrics_init_blues.exit:                   ; preds = %._crit_edge263.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call fastcc void @af_cjk_metrics_check_digits(ptr noundef nonnull %0)
  br label %bb.ae

bb.ae:                                            ; preds = %af_cjk_metrics_init_blues.exit, %bb.a
  store ptr %i.g, ptr %i.f, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @af_cjk_metrics_scale(ptr nofree noundef captures(none) initializes((8, 56)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !92
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @af_cjk_get_standard_widths(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.b, ptr %1, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93
  store i64 %i.d, ptr %2, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_cjk_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5160, 5176)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %1, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !76
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !76
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !102  ; 4 uses
  %i.m = icmp eq i32 %i.l, 2                      ; 2 uses
  %i.n = and i32 %i.l, -2
  %or.cond = icmp eq i32 %i.n, 2
  %spec.select = zext i1 %or.cond to i32          ; 2 uses
  %i.o = icmp eq i32 %i.l, 4
  %or.cond3 = or i1 %i.m, %i.o
  %i.p = or disjoint i32 %spec.select, 2
  %.1 = select i1 %or.cond3, i32 %i.p, i32 %spec.select ; 2 uses
  %i.q = and i32 %i.l, -3
  %or.cond5.not = icmp eq i32 %i.q, 1
  %i.r = or disjoint i32 %.1, 4
  %.2 = select i1 %or.cond5.not, i32 %.1, i32 %i.r ; 2 uses
  %i.s = or disjoint i32 %.2, 8
  %.3 = select i1 %i.m, i32 %i.s, i32 %.2
  %i.t = or i32 %i.c, 4
  store i32 %i.t, ptr %i.d, align 8, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5164
  store i32 %.3, ptr %i.u, align 4, !tbaa !104
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_cjk_hints_apply(i32 %0, ptr noundef initializes((44, 48), (60, 64), (88, 92), (104, 108), (2624, 2628), (2640, 2644)) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @af_glyph_hints_reload(ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %af_glyph_hints_save.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5160 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not40 = icmp eq i32 %i.d, 0
  br i1 %.not40, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @af_cjk_hints_detect_features(ptr noundef nonnull %1, i32 noundef 0) ; 2 uses
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %bb.d, label %af_glyph_hints_save.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @af_cjk_hints_compute_blue_edges(ptr noundef nonnull %1, ptr noundef %3, i32 noundef 0)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.f = phi i32 [ %.pre, %bb.d ], [ %i.c, %bb.b ]
  %i.g = and i32 %i.f, 2
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = tail call fastcc i32 @af_cjk_hints_detect_features(ptr noundef nonnull %1, i32 noundef 1) ; 2 uses
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %bb.g, label %af_glyph_hints_save.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @af_cjk_hints_compute_blue_edges(ptr noundef nonnull %1, ptr noundef %3, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2648
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5164 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load i32, ptr %i.b, align 8, !tbaa !103
  %i.n = and i32 %i.m, 1
  %.not44 = icmp eq i32 %i.n, 0
  br i1 %.not44, label %.split, label %bb.k

.split:                                           ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call fastcc void @af_cjk_hint_edges(ptr noundef nonnull %1, i32 noundef 0)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109  ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %af_cjk_align_edge_points.exit, label %.thread.i

.thread.i:                                        ; preds = %.split
  %i.q = load i32, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx59 = mul nuw nsw i64 %i.r, 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx59 ; 2 uses
  %.not60 = icmp eq i32 %i.q, 0
  br i1 %.not60, label %af_cjk_align_edge_points.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i
end_hunk_0
begin_hunk_1_@af_latin_metrics_init:bb.a
.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i.1, %.lr.ph.preheader.i.preheader.i.new
  %indvars.iv911.i = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i.new ], [ %indvars.iv.next912.i.1, %._crit_edge.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i.new ], [ %niter.next.1, %._crit_edge.i.i.1 ]
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv911.i
  %.pre.i696.i = load i64, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bu, %.lr.ph.preheader.i.i
  %indvars.iv913.i = phi i64 [ %i.ow, %bb.bu ], [ %indvars.iv911.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ow = add nsw i64 %indvars.iv913.i, -1        ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ow ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i = icmp slt i64 %.pre.i696.i, %i.oy
  br i1 %.not21.i.i, label %bb.bu, label %._crit_edge.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !76
  store i64 %.pre.i696.i, ptr %i.ox, align 8, !tbaa !76
  %.not.i.wide.i = icmp eq i64 %i.ow, 0
  br i1 %.not.i.wide.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.bu, %.lr.ph.i.i
  %indvars.iv.next912.i = add nuw nsw i64 %indvars.iv911.i, 1 ; 2 uses
  %.phi.trans.insert27.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next912.i
  %.pre.i696.i.1 = load i64, ptr %.phi.trans.insert27.i.i.1, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.bv, %._crit_edge.i.i
  %indvars.iv913.i.1 = phi i64 [ %i.pa, %bb.bv ], [ %indvars.iv.next912.i, %._crit_edge.i.i ] ; 2 uses
  %i.pa = add nsw i64 %indvars.iv913.i.1, -1      ; 3 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.pa ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i.1 = icmp slt i64 %.pre.i696.i.1, %i.pc
  br i1 %.not21.i.i.1, label %bb.bv, label %._crit_edge.i.i.1

bb.bv:                                            ; preds = %.lr.ph.i.i.1
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i.1
  store i64 %i.pc, ptr %i.pd, align 8, !tbaa !76
  store i64 %.pre.i696.i.1, ptr %i.pb, align 8, !tbaa !76
  %.not.i.wide.i.1 = icmp eq i64 %i.pa, 0
  br i1 %.not.i.wide.i.1, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !0

._crit_edge.i.i.1:                                ; preds = %bb.bv, %.lr.ph.i.i.1
  %indvars.iv.next912.i.1 = add nuw nsw i64 %indvars.iv911.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %af_sort_pos.exit.i.loopexit.unr-lcssa, label %.lr.ph.preheader.i.i, !llvm.loop !1

af_sort_pos.exit.i.loopexit.unr-lcssa:            ; preds = %._crit_edge.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %af_sort_pos.exit.i, label %.lr.ph.preheader.i.i.epil.preheader

.lr.ph.preheader.i.i.epil.preheader:              ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.preheader.i
  %indvars.iv911.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next912.i.1, %af_sort_pos.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %i.ou to i1
  call void @llvm.assume(i1 %lcmp.mod295)
  %.phi.trans.insert27.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv911.i.epil.init
  %.pre.i696.i.epil = load i64, ptr %.phi.trans.insert27.i.i.epil, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.bw, %.lr.ph.preheader.i.i.epil.preheader
  %indvars.iv913.i.epil = phi i64 [ %i.pe, %bb.bw ], [ %indvars.iv911.i.epil.init, %.lr.ph.preheader.i.i.epil.preheader ] ; 2 uses
  %i.pe = add nsw i64 %indvars.iv913.i.epil, -1   ; 3 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.pe ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i.epil = icmp slt i64 %.pre.i696.i.epil, %i.pg
  br i1 %.not21.i.i.epil, label %bb.bw, label %af_sort_pos.exit.i

bb.bw:                                            ; preds = %.lr.ph.i.i.epil
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i.epil
  store i64 %i.pg, ptr %i.ph, align 8, !tbaa !76
  store i64 %.pre.i696.i.epil, ptr %i.pf, align 8, !tbaa !76
  %.not.i.wide.i.epil = icmp eq i64 %i.pe, 0
  br i1 %.not.i.wide.i.epil, label %af_sort_pos.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !0

af_sort_pos.exit.i:                               ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %bb.bw, %.lr.ph.i.i.epil, %bb.bt
  %i.pi = icmp ugt i32 %.2594.i, 1
  br i1 %i.pi, label %.lr.ph.preheader.i697.preheader.i, label %af_sort_pos.exit708.i

.lr.ph.preheader.i697.preheader.i:                ; preds = %af_sort_pos.exit.i
  %i.pj = zext i32 %.2594.i to i64
  %i.pk = add nsw i64 %i.pj, -1                   ; 3 uses
  %xtraiter296 = and i64 %i.pk, 1
  %i.pl = icmp eq i32 %.2594.i, 2
  br i1 %i.pl, label %.lr.ph.preheader.i697.i.epil.preheader, label %.lr.ph.preheader.i697.preheader.i.new

.lr.ph.preheader.i697.preheader.i.new:            ; preds = %.lr.ph.preheader.i697.preheader.i
  %unroll_iter299 = and i64 %i.pk, -2
  br label %.lr.ph.preheader.i697.i

.lr.ph.preheader.i697.i:                          ; preds = %._crit_edge.i705.i.1, %.lr.ph.preheader.i697.preheader.i.new
  %indvars.iv917.i = phi i64 [ 1, %.lr.ph.preheader.i697.preheader.i.new ], [ %indvars.iv.next918.i.1, %._crit_edge.i705.i.1 ] ; 4 uses
  %niter300 = phi i64 [ 0, %.lr.ph.preheader.i697.preheader.i.new ], [ %niter300.next.1, %._crit_edge.i705.i.1 ]
  %.phi.trans.insert27.i700.i = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv917.i
  %.pre.i701.i = load i64, ptr %.phi.trans.insert27.i700.i, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i702.i

.lr.ph.i702.i:                                    ; preds = %bb.bx, %.lr.ph.preheader.i697.i
  %indvars.iv919.i = phi i64 [ %i.pm, %bb.bx ], [ %indvars.iv917.i, %.lr.ph.preheader.i697.i ] ; 2 uses
  %i.pm = add nsw i64 %indvars.iv919.i, -1        ; 3 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pm ; 2 uses
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !76 ; 2 uses
  %.not21.i704.i = icmp slt i64 %.pre.i701.i, %i.po
  br i1 %.not21.i704.i, label %bb.bx, label %._crit_edge.i705.i

bb.bx:                                            ; preds = %.lr.ph.i702.i
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i
  store i64 %i.po, ptr %i.pp, align 8, !tbaa !76
  store i64 %.pre.i701.i, ptr %i.pn, align 8, !tbaa !76
  %.not.i707.wide.i = icmp eq i64 %i.pm, 0
  br i1 %.not.i707.wide.i, label %._crit_edge.i705.i, label %.lr.ph.i702.i, !llvm.loop !0

._crit_edge.i705.i:                               ; preds = %bb.bx, %.lr.ph.i702.i
  %indvars.iv.next918.i = add nuw nsw i64 %indvars.iv917.i, 1 ; 2 uses
  %.phi.trans.insert27.i700.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next918.i
  %.pre.i701.i.1 = load i64, ptr %.phi.trans.insert27.i700.i.1, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i702.i.1

.lr.ph.i702.i.1:                                  ; preds = %bb.by, %._crit_edge.i705.i
  %indvars.iv919.i.1 = phi i64 [ %i.pq, %bb.by ], [ %indvars.iv.next918.i, %._crit_edge.i705.i ] ; 2 uses
  %i.pq = add nsw i64 %indvars.iv919.i.1, -1      ; 3 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pq ; 2 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !76 ; 2 uses
  %.not21.i704.i.1 = icmp slt i64 %.pre.i701.i.1, %i.ps
  br i1 %.not21.i704.i.1, label %bb.by, label %._crit_edge.i705.i.1

bb.by:                                            ; preds = %.lr.ph.i702.i.1
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i.1
  store i64 %i.ps, ptr %i.pt, align 8, !tbaa !76
  store i64 %.pre.i701.i.1, ptr %i.pr, align 8, !tbaa !76
  %.not.i707.wide.i.1 = icmp eq i64 %i.pq, 0
  br i1 %.not.i707.wide.i.1, label %._crit_edge.i705.i.1, label %.lr.ph.i702.i.1, !llvm.loop !0

._crit_edge.i705.i.1:                             ; preds = %bb.by, %.lr.ph.i702.i.1
  %indvars.iv.next918.i.1 = add nuw nsw i64 %indvars.iv917.i, 2 ; 2 uses
  %niter300.next.1 = add i64 %niter300, 2         ; 2 uses
  %niter300.ncmp.1 = icmp eq i64 %niter300.next.1, %unroll_iter299
  br i1 %niter300.ncmp.1, label %af_sort_pos.exit708.thread.i.unr-lcssa, label %.lr.ph.preheader.i697.i, !llvm.loop !1

af_sort_pos.exit708.thread.i.unr-lcssa:           ; preds = %._crit_edge.i705.i.1
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %af_sort_pos.exit708.thread.i, label %.lr.ph.preheader.i697.i.epil.preheader

.lr.ph.preheader.i697.i.epil.preheader:           ; preds = %af_sort_pos.exit708.thread.i.unr-lcssa, %.lr.ph.preheader.i697.preheader.i
  %indvars.iv917.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i697.preheader.i ], [ %indvars.iv.next918.i.1, %af_sort_pos.exit708.thread.i.unr-lcssa ] ; 2 uses
  %lcmp.mod298 = trunc i64 %i.pk to i1
  call void @llvm.assume(i1 %lcmp.mod298)
  %.phi.trans.insert27.i700.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv917.i.epil.init
  %.pre.i701.i.epil = load i64, ptr %.phi.trans.insert27.i700.i.epil, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.i702.i.epil

.lr.ph.i702.i.epil:                               ; preds = %bb.bz, %.lr.ph.preheader.i697.i.epil.preheader
  %indvars.iv919.i.epil = phi i64 [ %i.pu, %bb.bz ], [ %indvars.iv917.i.epil.init, %.lr.ph.preheader.i697.i.epil.preheader ] ; 2 uses
  %i.pu = add nsw i64 %indvars.iv919.i.epil, -1   ; 3 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pu ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !76 ; 2 uses
  %.not21.i704.i.epil = icmp slt i64 %.pre.i701.i.epil, %i.pw
  br i1 %.not21.i704.i.epil, label %bb.bz, label %af_sort_pos.exit708.thread.i

bb.bz:                                            ; preds = %.lr.ph.i702.i.epil
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i.epil
  store i64 %i.pw, ptr %i.px, align 8, !tbaa !76
  store i64 %.pre.i701.i.epil, ptr %i.pv, align 8, !tbaa !76
  %.not.i707.wide.i.epil = icmp eq i64 %i.pu, 0
  br i1 %.not.i707.wide.i.epil, label %af_sort_pos.exit708.thread.i, label %.lr.ph.i702.i.epil, !llvm.loop !0

af_sort_pos.exit708.thread.i:                     ; preds = %.lr.ph.i702.i.epil, %bb.bz, %af_sort_pos.exit708.thread.i.unr-lcssa
  %i.py = load i32, ptr %i.gt, align 4, !tbaa !162 ; 2 uses
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [72 x i8], ptr %i.gs, i64 %i.pz ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 24 ; 2 uses
  %i.qc = add i32 %i.py, 1
  store i32 %i.qc, ptr %i.gt, align 4, !tbaa !162
  br i1 %i.or, label %bb.cc, label %bb.cd

af_sort_pos.exit708.i:                            ; preds = %af_sort_pos.exit.i
  %i.qd = load i32, ptr %i.gt, align 4, !tbaa !162 ; 2 uses
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [72 x i8], ptr %i.gs, i64 %i.qe ; 5 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24 ; 3 uses
  %i.qh = add i32 %i.qd, 1
  store i32 %i.qh, ptr %i.gt, align 4, !tbaa !162
  br i1 %i.oq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %af_sort_pos.exit708.i
  %i.qi = lshr i32 %.2591.i, 1
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.qj
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !76 ; 2 uses
  store i64 %i.ql, ptr %i.qg, align 8, !tbaa !76
  store i64 %i.ql, ptr %i.qf, align 8, !tbaa !76
  br label %._crit_edge950.i

bb.cb:                                            ; preds = %af_sort_pos.exit708.i
  br i1 %i.or, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %af_sort_pos.exit708.thread.i
  %i.qm = phi ptr [ %i.qa, %af_sort_pos.exit708.thread.i ], [ %i.qf, %bb.cb ] ; 2 uses
  %i.qn = phi ptr [ %i.qb, %af_sort_pos.exit708.thread.i ], [ %i.qg, %bb.cb ]
  %i.qo = lshr i32 %.2594.i, 1
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.qp
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !76 ; 2 uses
  store i64 %i.qr, ptr %i.qn, align 8, !tbaa !76
  store i64 %i.qr, ptr %i.qm, align 8, !tbaa !76
  br label %._crit_edge950.i

bb.cd:                                            ; preds = %bb.cb, %af_sort_pos.exit708.thread.i
  %i.qs = phi ptr [ %i.qa, %af_sort_pos.exit708.thread.i ], [ %i.qf, %bb.cb ] ; 5 uses
  %i.qt = phi ptr [ %i.qb, %af_sort_pos.exit708.thread.i ], [ %i.qg, %bb.cb ] ; 2 uses
  %i.qu = lshr i32 %.2594.i, 1
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.qv
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !76 ; 4 uses
  store i64 %i.qx, ptr %i.qs, align 8, !tbaa !76
  %i.qy = lshr i32 %.2591.i, 1
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.qz
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !76 ; 4 uses
  store i64 %i.rb, ptr %i.qt, align 8, !tbaa !76
  %.not641.i = icmp eq i64 %i.rb, %i.qx
  br i1 %.not641.i, label %._crit_edge950.i, label %bb.ce

._crit_edge950.i:                                 ; preds = %bb.cd, %bb.cc, %bb.ca
  %i.rc = phi ptr [ %i.qs, %bb.cd ], [ %i.qf, %bb.ca ], [ %i.qm, %bb.cc ]
  %.pre952.i = load i16, ptr %i.gy, align 4, !tbaa !67
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.rd = load i16, ptr %i.gy, align 4, !tbaa !67 ; 3 uses
  %i.re = and i16 %i.rd, 3
  %i.rf = icmp ne i16 %i.re, 0
  %i.rg = icmp sle i64 %i.rb, %i.qx
  %.not643.i = xor i1 %i.rg, %i.rf
  br i1 %.not643.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rh = add nsw i64 %i.rb, %i.qx
  %i.ri = sdiv i64 %i.rh, 2                       ; 2 uses
  store i64 %i.ri, ptr %i.qt, align 8, !tbaa !76
  store i64 %i.ri, ptr %i.qs, align 8, !tbaa !76
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %._crit_edge950.i
  %i.rj = phi ptr [ %i.rc, %._crit_edge950.i ], [ %i.qs, %bb.ce ], [ %i.qs, %bb.cf ] ; 3 uses
  %i.rk = phi i16 [ %.pre952.i, %._crit_edge950.i ], [ %i.rd, %bb.ce ], [ %i.rd, %bb.cf ] ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  store i64 %.10584.i, ptr %i.rl, align 8, !tbaa !164
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 56
  store i64 %.10573.i, ptr %i.rm, align 8, !tbaa !165
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 64 ; 2 uses
  %i.ro = shl i16 %i.rk, 1
  %spec.select10741076.i = and i16 %i.ro, 14
  %i.rp = and i16 %i.rk, 96
  %i.rq = or disjoint i16 %spec.select10741076.i, %i.rp
  %i.rr = zext nneg i16 %i.rq to i32              ; 2 uses
  store i32 %i.rr, ptr %i.rn, align 8, !tbaa !166
  %i.rs = and i16 %i.rk, 8
  %.not649.i = icmp eq i16 %i.rs, 0
  br i1 %.not649.i, label %._crit_edge861.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rt = or disjoint i32 %i.rr, 16
  store i32 %i.rt, ptr %i.rn, align 8, !tbaa !166
  br label %._crit_edge861.thread.i

._crit_edge861.thread.i:                          ; preds = %bb.ch, %bb.cg, %._crit_edge861.i, %bb.ad
  %i.ru = getelementptr inbounds nuw i8, ptr %.0588867.i, i64 8 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !66 ; 2 uses
  %.not636.i = icmp eq i32 %i.rv, 5531
  br i1 %.not636.i, label %._crit_edge869.i, label %bb.ad, !llvm.loop !327

._crit_edge869.i:                                 ; preds = %._crit_edge861.thread.i, %af_shaper_buf_create.exit.i19
  %i.rw = load ptr, ptr %i.ar, align 8, !tbaa !141
  %i.rx = getelementptr i8, ptr %i.rw, i64 816
  %.val.i709.i = load ptr, ptr %i.rx, align 8, !tbaa !56
  %i.ry = getelementptr i8, ptr %.val.i709.i, i64 72
  %.val.val.i710.i = load ptr, ptr %i.ry, align 8, !tbaa !62 ; 2 uses
  %.not6.i.i26 = icmp eq ptr %.val.val.i710.i, null
  br i1 %.not6.i.i26, label %af_shaper_buf_destroy.exit.i28, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge869.i
  %i.rz = getelementptr i8, ptr %.val.val.i710.i, i64 40
  %.val5.val.val.i.i27 = load ptr, ptr %i.rz, align 8, !tbaa !90
  call void %.val5.val.val.i.i27(ptr noundef %.0587.i) #18, !inline_history !328
  br label %af_shaper_buf_destroy.exit.i28

af_shaper_buf_destroy.exit.i28:                   ; preds = %bb.ci, %._crit_edge869.i
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 1540
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !162 ; 5 uses
  %.not637.i = icmp eq i32 %i.sb, 0
  br i1 %.not637.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %af_shaper_buf_destroy.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 3 uses
  %wide.trip.count926.i = zext i32 %i.sb to i64   ; 4 uses
  %min.iters.check = icmp ult i32 %i.sb, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.cj
  %n.vec = and i64 %wide.trip.count926.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %i.sc, <2 x i64> %vec.ind
  %wide.gep212 = getelementptr inbounds nuw [72 x i8], ptr %i.sc, <2 x i64> %step.add
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store <2 x ptr> %wide.gep, ptr %i.sd, align 16, !tbaa !357
  store <2 x ptr> %wide.gep212, ptr %i.se, align 16, !tbaa !357
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.sf = icmp eq i64 %index.next, %n.vec
  br i1 %i.sf, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count926.i
  br i1 %cmp.n, label %.loopexit270, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.cj, %middle.block
  %indvars.iv923.i.ph = phi i64 [ 0, %bb.cj ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv923.i = phi i64 [ %indvars.iv.next924.i, %scalar.ph ], [ %indvars.iv923.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [72 x i8], ptr %i.sc, i64 %indvars.iv923.i
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv923.i
  store ptr %i.sg, ptr %i.sh, align 8, !tbaa !357
  %indvars.iv.next924.i = add nuw nsw i64 %indvars.iv923.i, 1 ; 2 uses
  %exitcond927.not.i = icmp eq i64 %indvars.iv.next924.i, %wide.trip.count926.i
  br i1 %exitcond927.not.i, label %.loopexit270, label %scalar.ph, !llvm.loop !330

.loopexit270:                                     ; preds = %scalar.ph, %middle.block
  %.not781.i = icmp eq i32 %i.sb, 1
  br i1 %.not781.i, label %.loopexit, label %.lr.ph.preheader.i711.i

.lr.ph.preheader.i711.i:                          ; preds = %.loopexit270, %._crit_edge.i715.i
  %indvars.iv928.i = phi i64 [ %indvars.iv.next929.i, %._crit_edge.i715.i ], [ 1, %.loopexit270 ] ; 3 uses
  %.phi.trans.insert42.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv928.i
  %.pre.i713.i = load ptr, ptr %.phi.trans.insert42.i.i, align 8, !tbaa !357 ; 3 uses
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.pre.i713.i, i64 64
  %.pre44.i.i = load i32, ptr %.phi.trans.insert43.i.i, align 8, !tbaa !166
  %i.si = and i32 %.pre44.i.i, 6
  %.not34.i.i = icmp eq i32 %i.si, 0
  %.029.in.idx.i.i = select i1 %.not34.i.i, i64 24, i64 0
  %.029.in.i.i = getelementptr inbounds nuw i8, ptr %.pre.i713.i, i64 %.029.in.idx.i.i
  %.029.i.i = load i64, ptr %.029.in.i.i, align 8, !tbaa !76
  br label %.lr.ph.i714.i

.lr.ph.i714.i:                                    ; preds = %bb.ck, %.lr.ph.preheader.i711.i
  %indvars.iv930.i = phi i64 [ %i.sj, %bb.ck ], [ %indvars.iv928.i, %.lr.ph.preheader.i711.i ] ; 2 uses
  %i.sj = add nsw i64 %indvars.iv930.i, -1        ; 3 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.sj ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !357 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 64
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !166
  %i.so = and i32 %i.sn, 6
  %.not33.i.i = icmp eq i32 %i.so, 0
  %.030.in.idx.i.i = select i1 %.not33.i.i, i64 24, i64 0
  %.030.in.i.i = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.030.in.idx.i.i
  %.030.i.i = load i64, ptr %.030.in.i.i, align 8, !tbaa !76
  %.not35.i.i = icmp slt i64 %.029.i.i, %.030.i.i
  br i1 %.not35.i.i, label %bb.ck, label %._crit_edge.i715.i

bb.ck:                                            ; preds = %.lr.ph.i714.i
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv930.i
  store ptr %i.sl, ptr %i.sp, align 8, !tbaa !357
  store ptr %.pre.i713.i, ptr %i.sk, align 8, !tbaa !357
  %.not.i717.wide.i = icmp eq i64 %i.sj, 0
  br i1 %.not.i717.wide.i, label %._crit_edge.i715.i, label %.lr.ph.i714.i, !llvm.loop !331

._crit_edge.i715.i:                               ; preds = %bb.ck, %.lr.ph.i714.i
  %indvars.iv.next929.i = add nuw nsw i64 %indvars.iv928.i, 1 ; 2 uses
  %exitcond.not.i716.i = icmp eq i64 %indvars.iv.next929.i, %wide.trip.count926.i
  br i1 %exitcond.not.i716.i, label %af_latin_sort_blue.exit.i, label %.lr.ph.preheader.i711.i, !llvm.loop !332

af_latin_sort_blue.exit.i:                        ; preds = %._crit_edge.i715.i
  %i.sq = add i32 %i.sb, -1
  %wide.trip.count937.i = zext i32 %i.sq to i64
  %.pre953.i = load ptr, ptr %i.r, align 16, !tbaa !357 ; 2 uses
  %.phi.trans.insert954.i = getelementptr inbounds nuw i8, ptr %.pre953.i, i64 64
  %.pre955.i = load i32, ptr %.phi.trans.insert954.i, align 8, !tbaa !166
  br label %.lr.ph872.i

.lr.ph872.i:                                      ; preds = %bb.cm, %af_latin_sort_blue.exit.i
  %i.sr = phi i32 [ %.pre955.i, %af_latin_sort_blue.exit.i ], [ %i.sx, %bb.cm ]
  %i.ss = phi ptr [ %.pre953.i, %af_latin_sort_blue.exit.i ], [ %i.sv, %bb.cm ]
  %indvars.iv934.i = phi i64 [ 0, %af_latin_sort_blue.exit.i ], [ %indvars.iv.next935.i, %bb.cm ]
  %i.st = and i32 %i.sr, 6
  %.not638.i = icmp eq i32 %i.st, 0
  %.0454.idx.i = select i1 %.not638.i, i64 0, i64 24
  %.0454.i = getelementptr inbounds nuw i8, ptr %i.ss, i64 %.0454.idx.i ; 2 uses
  %indvars.iv.next935.i = add nuw nsw i64 %indvars.iv934.i, 1 ; 3 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next935.i
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !357 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 64
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !166 ; 2 uses
  %i.sy = and i32 %i.sx, 6
  %.not639.i = icmp eq i32 %i.sy, 0
  %.0453.idx.i = select i1 %.not639.i, i64 0, i64 24
  %.0453.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.0453.idx.i
  %i.sz = load i64, ptr %.0454.i, align 8, !tbaa !76
  %i.ta = load i64, ptr %.0453.i, align 8, !tbaa !76 ; 2 uses
  %i.tb = icmp sgt i64 %i.sz, %i.ta
  br i1 %i.tb, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph872.i
end_hunk_1
