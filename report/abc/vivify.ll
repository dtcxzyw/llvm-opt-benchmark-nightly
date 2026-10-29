Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/vivify?download=true
inline.NumInlined: 131
inline.NumDeleted: 86
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@kissat_vivify:bb.a

bb.ae:                                            ; preds = %bb.ac
  call void @kissat_reduce_delay(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #7
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %kissat_terminated.exit85, %bb.x, %bb.w
  %i.fk = load ptr, ptr %1, align 8, !tbaa !73    ; 5 uses
  %i.fl = load ptr, ptr %i.av, align 8, !tbaa !74
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !102
  %i.fo = shl i32 %i.fn, 1
  %i.fp = zext i32 %i.fo to i64
  call void @kissat_dealloc(ptr noundef %i.fk, ptr noundef %i.fl, i64 noundef %i.fp, i64 noundef 4) #7
  %i.fq = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !107
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2
  call void @kissat_dealloc(ptr noundef %i.fk, ptr noundef %i.fq, i64 noundef %i.fw, i64 noundef 4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.fx = load ptr, ptr %i.ax, align 8, !tbaa !103 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !108
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = sdiv exact i64 %i.gc, 12
  call void @kissat_dealloc(ptr noundef %i.fk, ptr noundef %i.fx, i64 noundef %i.gd, i64 noundef 12) #7
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !105 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !109
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 2
  call void @kissat_dealloc(ptr noundef %i.fk, ptr noundef %i.gf, i64 noundef %i.gl, i64 noundef 4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.f, %kissat_terminated.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @kissat_delaying(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @kissat_bump_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @kissat_reduce_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @kissat_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @vivify_round(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 10 uses
  %i.b = alloca [256 x i64], align 16             ; 10 uses
  %i.c = alloca [256 x i64], align 16             ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75
  %i.f = load ptr, ptr %0, align 8, !tbaa !73     ; 14 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3872
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65
  %.not28 = icmp eq i64 %i.h, 0
  br i1 %.not28, label %bb.ix, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @kissat_flush_large_watches(ptr noundef nonnull %i.f) #7
  tail call fastcc void @schedule_vivification_candidates(ptr noundef %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @kissat_flush_large_watches(ptr noundef %i.f) #7
  tail call fastcc void @schedule_vivification_candidates(ptr noundef %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 3848
  %i.j = load i64, ptr %i.i, align 8, !tbaa !152
  %i.k = udiv i64 %i.j, 10
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 3872
  %i.m = load i64, ptr %i.l, align 8, !tbaa !65
  %.not29 = icmp ugt i64 %i.k, %i.m
  br i1 %.not29, label %sort_vivification_candidates.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = load i32, ptr %i.d, align 8, !tbaa !75
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = load ptr, ptr %0, align 8, !tbaa !73     ; 6 uses
  br i1 %.not.i, label %bb.bi, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81   ; 2 uses
  %.not13.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not13.i.i, label %sort_scheduled_candidate_literals.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.o, i64 816
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.w = load i32, ptr %.014.i.i, align 4, !tbaa !68
  %.val.i.i = load ptr, ptr %i.v, align 8, !tbaa !82
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !83
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  tail call fastcc void @vivify_sort_lits_by_counts(ptr noundef %i.o, i64 noundef %i.ab, ptr noundef nonnull %i.ac, ptr noundef readonly %i.q)
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.u
  br i1 %.not.i.i, label %sort_scheduled_candidate_literals.exit.loopexit.i, label %bb.g, !llvm.loop !110

sort_scheduled_candidate_literals.exit.loopexit.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !73
  %.pre162.i = load ptr, ptr %i.p, align 8, !tbaa !74
  %.pre163.i = load ptr, ptr %i.t, align 8, !tbaa !81
  %.pre164.i = load ptr, ptr %i.r, align 8, !tbaa !80
  br label %sort_scheduled_candidate_literals.exit.i

sort_scheduled_candidate_literals.exit.i:         ; preds = %sort_scheduled_candidate_literals.exit.loopexit.i, %bb.f
  %i.ae = phi ptr [ %.pre164.i, %sort_scheduled_candidate_literals.exit.loopexit.i ], [ %i.s, %bb.f ] ; 11 uses
  %i.af = phi ptr [ %.pre163.i, %sort_scheduled_candidate_literals.exit.loopexit.i ], [ %i.s, %bb.f ]
  %i.ag = phi ptr [ %.pre162.i, %sort_scheduled_candidate_literals.exit.loopexit.i ], [ %i.q, %bb.f ] ; 14 uses
  %i.ah = phi ptr [ %.pre.i, %sort_scheduled_candidate_literals.exit.loopexit.i ], [ %i.o, %bb.f ] ; 7 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = ashr exact i64 %i.ak, 2                 ; 4 uses
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %sort_vivification_candidates.exit, label %bb.h

bb.h:                                             ; preds = %sort_scheduled_candidate_literals.exit.i
  %i.an = add nsw i64 %i.al, -1                   ; 2 uses
  %i.ao = icmp ult i64 %i.al, 12
  br i1 %i.ao, label %..lr.ph.i7_crit_edge.i, label %.preheader388.i.i

..lr.ph.i7_crit_edge.i:                           ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr i8, ptr %i.ah, i64 816
  %.val204.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  br label %.lr.ph.i7.i

.preheader388.i.i:                                ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 904 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ah, i64 816
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 912 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 920 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %.preheader388.i.i
  %.0189.i.i = phi i64 [ 0, %.preheader388.i.i ], [ %.0189.i.i.be, %.backedge ] ; 7 uses
  %.0187.i.i = phi i64 [ %i.an, %.preheader388.i.i ], [ %.0187.i.i.be, %.backedge ] ; 6 uses
  %i.at = sub i64 %.0187.i.i, %.0189.i.i
  %i.au = lshr i64 %i.at, 1
  %i.av = getelementptr [4 x i8], ptr %i.ae, i64 %.0189.i.i ; 5 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.au ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !68 ; 8 uses
  %i.ay = add i64 %.0187.i.i, -1                  ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ay ; 7 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !68
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !68
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !68
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !68 ; 8 uses
  %.val209.i.i = load ptr, ptr %i.aq, align 8, !tbaa !82 ; 11 uses
  %i.bc = zext i32 %i.ax to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %i.bc ; 3 uses
  %i.be = zext i32 %i.bb to i64                   ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %i.be ; 3 uses
  %i.bg = load i32, ptr %i.bd, align 4
  %i.bh = and i32 %i.bg, 67108864
  %.not.i.i.i = icmp eq i32 %i.bh, 0
  %i.bi = load i32, ptr %i.bf, align 4
  %i.bj = and i32 %i.bi, 67108864                 ; 4 uses
  %.not50.i.i.i = icmp eq i32 %i.bj, 0            ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not50.i.i.i, label %.thread.i.i.i, label %worse_candidate.exit.thread.i.i

bb.k:                                             ; preds = %bb.i
  br i1 %.not50.i.i.i, label %worse_candidate.exit.thread356.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.k, %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 12 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !83 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bo, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !83 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %.idx17.i.i.i = shl nuw nsw i64 %i.bs, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx17.i.i.i ; 2 uses
  %i.bu = icmp ne i32 %i.bn, 0                    ; 2 uses
  %i.bv = icmp ne i32 %i.br, 0                    ; 2 uses
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.04411.i.i.i, i64 4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04510.i.i.i, i64 4 ; 3 uses
  %i.bz = icmp ne ptr %i.by, %i.bp                ; 2 uses
  %i.ca = icmp ne ptr %i.bx, %i.bt                ; 2 uses
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !111

.lr.ph.i.i.i:                                     ; preds = %.thread.i.i.i, %bb.l
  %.04411.i.i.i = phi ptr [ %i.bx, %bb.l ], [ %i.bl, %.thread.i.i.i ] ; 2 uses
  %.04510.i.i.i = phi ptr [ %i.by, %bb.l ], [ %i.bk, %.thread.i.i.i ] ; 2 uses
  %.0479.i.i.i = phi i1 [ %.1.i.i.i, %bb.l ], [ undef, %.thread.i.i.i ]
  %i.cc = load i32, ptr %.04510.i.i.i, align 4, !tbaa !68 ; 2 uses
  %i.cd = load i32, ptr %.04411.i.i.i, align 4, !tbaa !68 ; 2 uses
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !68 ; 3 uses
  %i.ch = zext i32 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !68 ; 3 uses
  %i.ck = icmp ult i32 %i.cg, %i.cj
  %i.cl = icmp ule i32 %i.cg, %i.cj
  %..047.i.i.i = select i1 %i.cl, i1 %.0479.i.i.i, i1 false
  %.1.i.i.i = select i1 %i.ck, i1 true, i1 %..047.i.i.i ; 2 uses
  %cond.i.i.i = icmp eq i32 %i.cg, %i.cj
  br i1 %cond.i.i.i, label %bb.l, label %worse_candidate.exit.i.i, !llvm.loop !111

._crit_edge.i.i.i:                                ; preds = %bb.l, %.thread.i.i.i
  %.045.lcssa.i.i.i = phi ptr [ %i.bk, %.thread.i.i.i ], [ %i.by, %bb.l ]
  %.044.lcssa.i.i.i = phi ptr [ %i.bl, %.thread.i.i.i ], [ %i.bx, %bb.l ]
  %.043.lcssa.i.i.i = phi i32 [ -1, %.thread.i.i.i ], [ %i.cc, %bb.l ] ; 2 uses
  %.0.lcssa.i.i.i = phi i32 [ -1, %.thread.i.i.i ], [ %i.cd, %bb.l ] ; 2 uses
  %.lcssa3.i.i.i = phi i1 [ %i.bu, %.thread.i.i.i ], [ %i.bz, %bb.l ]
  %.lcssa.i.i.i = phi i1 [ %i.bv, %.thread.i.i.i ], [ %i.ca, %bb.l ]
  %i.cm = icmp eq ptr %.044.lcssa.i.i.i, %i.bt
  %or.cond.i.i.i = select i1 %.lcssa3.i.i.i, i1 %i.cm, i1 false
  br i1 %or.cond.i.i.i, label %worse_candidate.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %2 = icmp eq ptr %.045.lcssa.i.i.i, %i.bp
  %brmerge.not.i.i.i = select i1 %2, i1 %.lcssa.i.i.i, i1 false
  br i1 %brmerge.not.i.i.i, label %worse_candidate.exit.thread356.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp ult i32 %.043.lcssa.i.i.i, %.0.lcssa.i.i.i
  br i1 %i.cn, label %worse_candidate.exit.thread.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.n
  %i.co = icmp ule i32 %.043.lcssa.i.i.i, %.0.lcssa.i.i.i
  %i.cp = icmp ult i32 %i.ax, %i.bb
  %spec.select.i.i.i = and i1 %i.cp, %i.co
  br i1 %spec.select.i.i.i, label %worse_candidate.exit.thread.i.i, label %worse_candidate.exit.thread356.i.i

worse_candidate.exit.i.i:                         ; preds = %.lr.ph.i.i.i
  br i1 %.1.i.i.i, label %worse_candidate.exit.thread.i.i, label %worse_candidate.exit.thread356.i.i

worse_candidate.exit.thread.i.i:                  ; preds = %worse_candidate.exit.i.i, %.split.i.i, %bb.n, %._crit_edge.i.i.i, %bb.j
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !68
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !68
  %.pre.i.i = load i32, ptr %i.av, align 4, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i.i = zext i32 %.pre.i.i to i64 ; 2 uses
  %.phi.trans.insert550.i.i = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %.phi.trans.insert.i.i
  %.pre551.i.i = load i32, ptr %.phi.trans.insert550.i.i, align 4
  %.pre559.i.i = and i32 %.pre551.i.i, 67108864
  br label %worse_candidate.exit.thread356.i.i

worse_candidate.exit.thread356.i.i:               ; preds = %worse_candidate.exit.thread.i.i, %worse_candidate.exit.i.i, %.split.i.i, %bb.m, %bb.k
  %.pre-phi560.i.i = phi i32 [ %i.bj, %bb.m ], [ 0, %bb.k ], [ %i.bj, %.split.i.i ], [ %i.bj, %worse_candidate.exit.i.i ], [ %.pre559.i.i, %worse_candidate.exit.thread.i.i ]
  %.pre-phi558.i.i = phi i64 [ %i.be, %bb.m ], [ %i.be, %bb.k ], [ %i.be, %.split.i.i ], [ %i.be, %worse_candidate.exit.i.i ], [ %.phi.trans.insert.i.i, %worse_candidate.exit.thread.i.i ] ; 2 uses
  %i.cq = phi i32 [ %i.ax, %bb.m ], [ %i.ax, %bb.k ], [ %i.ax, %.split.i.i ], [ %i.ax, %worse_candidate.exit.i.i ], [ %i.bb, %worse_candidate.exit.thread.i.i ] ; 4 uses
  %i.cr = phi i32 [ %i.bb, %bb.m ], [ %i.bb, %bb.k ], [ %i.bb, %.split.i.i ], [ %i.bb, %worse_candidate.exit.i.i ], [ %.pre.i.i, %worse_candidate.exit.thread.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.0187.i.i ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !68 ; 7 uses
  %i.cu = zext i32 %i.ct to i64                   ; 5 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %.pre-phi558.i.i ; 3 uses
  %i.cx = load i32, ptr %i.cv, align 4            ; 5 uses
  %i.cy = and i32 %i.cx, 67108864
  %.not.i210.i.i = icmp eq i32 %i.cy, 0
  %.not50.i211.i.i = icmp eq i32 %.pre-phi560.i.i, 0 ; 2 uses
  br i1 %.not.i210.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %worse_candidate.exit.thread356.i.i
  br i1 %.not50.i211.i.i, label %.thread.i212.i.i, label %worse_candidate.exit233.thread.i.i

bb.p:                                             ; preds = %worse_candidate.exit.thread356.i.i
  br i1 %.not50.i211.i.i, label %worse_candidate.exit233.thread360.i.i, label %.thread.i212.i.i

.thread.i212.i.i:                                 ; preds = %bb.p, %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !83 ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %.idx.i213.i.i = shl nuw nsw i64 %i.dd, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i213.i.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !83 ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %.idx17.i214.i.i = shl nuw nsw i64 %i.dh, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx17.i214.i.i ; 2 uses
  %i.dj = icmp ne i32 %i.dc, 0                    ; 2 uses
  %i.dk = icmp ne i32 %i.dg, 0                    ; 2 uses
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph.i226.i.i, label %._crit_edge.i215.i.i

bb.q:                                             ; preds = %.lr.ph.i226.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.04411.i227.i.i, i64 4 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.04510.i228.i.i, i64 4 ; 3 uses
  %i.do = icmp ne ptr %i.dn, %i.de                ; 2 uses
  %i.dp = icmp ne ptr %i.dm, %i.di                ; 2 uses
  %i.dq = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %i.dq, label %.lr.ph.i226.i.i, label %._crit_edge.i215.i.i, !llvm.loop !111

.lr.ph.i226.i.i:                                  ; preds = %.thread.i212.i.i, %bb.q
  %.04411.i227.i.i = phi ptr [ %i.dm, %bb.q ], [ %i.da, %.thread.i212.i.i ] ; 2 uses
  %.04510.i228.i.i = phi ptr [ %i.dn, %bb.q ], [ %i.cz, %.thread.i212.i.i ] ; 2 uses
  %.0479.i229.i.i = phi i1 [ %.1.i231.i.i, %bb.q ], [ undef, %.thread.i212.i.i ]
  %i.dr = load i32, ptr %.04510.i228.i.i, align 4, !tbaa !68 ; 2 uses
  %i.ds = load i32, ptr %.04411.i227.i.i, align 4, !tbaa !68 ; 2 uses
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !68 ; 3 uses
  %i.dw = zext i32 %i.ds to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !68 ; 3 uses
  %i.dz = icmp ult i32 %i.dv, %i.dy
  %i.ea = icmp ule i32 %i.dv, %i.dy
  %..047.i230.i.i = select i1 %i.ea, i1 %.0479.i229.i.i, i1 false
  %.1.i231.i.i = select i1 %i.dz, i1 true, i1 %..047.i230.i.i ; 2 uses
  %cond.i232.i.i = icmp eq i32 %i.dv, %i.dy
  br i1 %cond.i232.i.i, label %bb.q, label %worse_candidate.exit233.i.i, !llvm.loop !111

._crit_edge.i215.i.i:                             ; preds = %bb.q, %.thread.i212.i.i
  %.045.lcssa.i216.i.i = phi ptr [ %i.cz, %.thread.i212.i.i ], [ %i.dn, %bb.q ]
  %.044.lcssa.i217.i.i = phi ptr [ %i.da, %.thread.i212.i.i ], [ %i.dm, %bb.q ]
  %.043.lcssa.i218.i.i = phi i32 [ -1, %.thread.i212.i.i ], [ %i.dr, %bb.q ] ; 2 uses
  %.0.lcssa.i219.i.i = phi i32 [ -1, %.thread.i212.i.i ], [ %i.ds, %bb.q ] ; 2 uses
  %.lcssa3.i220.i.i = phi i1 [ %i.dj, %.thread.i212.i.i ], [ %i.do, %bb.q ]
  %.lcssa.i221.i.i = phi i1 [ %i.dk, %.thread.i212.i.i ], [ %i.dp, %bb.q ]
  %i.eb = icmp eq ptr %.044.lcssa.i217.i.i, %i.di
  %or.cond.i222.i.i = select i1 %.lcssa3.i220.i.i, i1 %i.eb, i1 false
  br i1 %or.cond.i222.i.i, label %worse_candidate.exit233.thread.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i215.i.i
  %3 = icmp eq ptr %.045.lcssa.i216.i.i, %i.de
  %brmerge.not.i223.i.i = select i1 %3, i1 %.lcssa.i221.i.i, i1 false
  br i1 %brmerge.not.i223.i.i, label %worse_candidate.exit233.thread360.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = icmp ult i32 %.043.lcssa.i218.i.i, %.0.lcssa.i219.i.i
  br i1 %i.ec, label %worse_candidate.exit233.thread.i.i, label %.split362.i.i

.split362.i.i:                                    ; preds = %bb.s
  %i.ed = icmp ule i32 %.043.lcssa.i218.i.i, %.0.lcssa.i219.i.i
  %i.ee = icmp ult i32 %i.ct, %i.cr
  %spec.select.i224.i.i = and i1 %i.ee, %i.ed
  br i1 %spec.select.i224.i.i, label %worse_candidate.exit233.thread.i.i, label %worse_candidate.exit233.thread360.i.i

worse_candidate.exit233.i.i:                      ; preds = %.lr.ph.i226.i.i
  br i1 %.1.i231.i.i, label %worse_candidate.exit233.thread.i.i, label %worse_candidate.exit233.thread360.i.i

worse_candidate.exit233.thread.i.i:               ; preds = %worse_candidate.exit233.i.i, %.split362.i.i, %bb.s, %._crit_edge.i215.i.i, %bb.o
  store i32 %i.ct, ptr %i.av, align 4, !tbaa !68
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !68
  %.pre552.i.i = load i32, ptr %i.az, align 4, !tbaa !68
  %.pre553.i.i = load i32, ptr %i.cw, align 4
  br label %worse_candidate.exit233.thread360.i.i

worse_candidate.exit233.thread360.i.i:            ; preds = %worse_candidate.exit233.thread.i.i, %worse_candidate.exit233.i.i, %.split362.i.i, %bb.r, %bb.p
  %i.ef = phi i32 [ %i.cx, %bb.r ], [ %i.cx, %bb.p ], [ %i.cx, %.split362.i.i ], [ %i.cx, %worse_candidate.exit233.i.i ], [ %.pre553.i.i, %worse_candidate.exit233.thread.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.cu, %bb.r ], [ %i.cu, %bb.p ], [ %i.cu, %.split362.i.i ], [ %i.cu, %worse_candidate.exit233.i.i ], [ %.pre-phi558.i.i, %worse_candidate.exit233.thread.i.i ] ; 2 uses
  %i.eg = phi i32 [ %i.cq, %bb.r ], [ %i.cq, %bb.p ], [ %i.cq, %.split362.i.i ], [ %i.cq, %worse_candidate.exit233.i.i ], [ %.pre552.i.i, %worse_candidate.exit233.thread.i.i ] ; 7 uses
  %i.eh = phi i32 [ %i.ct, %bb.r ], [ %i.ct, %bb.p ], [ %i.ct, %.split362.i.i ], [ %i.ct, %worse_candidate.exit233.i.i ], [ %i.cr, %worse_candidate.exit233.thread.i.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %.pre-phi.i.i ; 2 uses
  %i.ej = zext i32 %i.eg to i64                   ; 5 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %i.ej ; 3 uses
  %i.el = and i32 %i.ef, 67108864
  %.not.i234.i.i = icmp eq i32 %i.el, 0
  %i.em = load i32, ptr %i.ek, align 4
  %i.en = and i32 %i.em, 67108864
  %.not50.i235.i.i = icmp eq i32 %i.en, 0         ; 2 uses
  br i1 %.not.i234.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %worse_candidate.exit233.thread360.i.i
  br i1 %.not50.i235.i.i, label %.thread.i236.i.i, label %worse_candidate.exit257.thread.i.i

bb.u:                                             ; preds = %worse_candidate.exit233.thread360.i.i
  br i1 %.not50.i235.i.i, label %worse_candidate.exit257.thread365.i.i, label %.thread.i236.i.i

.thread.i236.i.i:                                 ; preds = %bb.u, %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 12 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !83 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %.idx.i237.i.i = shl nuw nsw i64 %i.es, 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx.i237.i.i ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !83 ; 2 uses
  %i.ew = zext i32 %i.ev to i64
  %.idx17.i238.i.i = shl nuw nsw i64 %i.ew, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx17.i238.i.i ; 2 uses
  %i.ey = icmp ne i32 %i.er, 0                    ; 2 uses
  %i.ez = icmp ne i32 %i.ev, 0                    ; 2 uses
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %i.fa, label %.lr.ph.i250.i.i, label %._crit_edge.i239.i.i

bb.v:                                             ; preds = %.lr.ph.i250.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.04411.i251.i.i, i64 4 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.04510.i252.i.i, i64 4 ; 3 uses
  %i.fd = icmp ne ptr %i.fc, %i.et                ; 2 uses
  %i.fe = icmp ne ptr %i.fb, %i.ex                ; 2 uses
  %i.ff = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %i.ff, label %.lr.ph.i250.i.i, label %._crit_edge.i239.i.i, !llvm.loop !111

.lr.ph.i250.i.i:                                  ; preds = %.thread.i236.i.i, %bb.v
  %.04411.i251.i.i = phi ptr [ %i.fb, %bb.v ], [ %i.ep, %.thread.i236.i.i ] ; 2 uses
  %.04510.i252.i.i = phi ptr [ %i.fc, %bb.v ], [ %i.eo, %.thread.i236.i.i ] ; 2 uses
  %.0479.i253.i.i = phi i1 [ %.1.i255.i.i, %bb.v ], [ undef, %.thread.i236.i.i ]
  %i.fg = load i32, ptr %.04510.i252.i.i, align 4, !tbaa !68 ; 2 uses
  %i.fh = load i32, ptr %.04411.i251.i.i, align 4, !tbaa !68 ; 2 uses
  %i.fi = zext i32 %i.fg to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !68 ; 3 uses
  %i.fl = zext i32 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !68 ; 3 uses
  %i.fo = icmp ult i32 %i.fk, %i.fn
  %i.fp = icmp ule i32 %i.fk, %i.fn
  %..047.i254.i.i = select i1 %i.fp, i1 %.0479.i253.i.i, i1 false
  %.1.i255.i.i = select i1 %i.fo, i1 true, i1 %..047.i254.i.i ; 2 uses
  %cond.i256.i.i = icmp eq i32 %i.fk, %i.fn
  br i1 %cond.i256.i.i, label %bb.v, label %worse_candidate.exit257.i.i, !llvm.loop !111

._crit_edge.i239.i.i:                             ; preds = %bb.v, %.thread.i236.i.i
  %.045.lcssa.i240.i.i = phi ptr [ %i.eo, %.thread.i236.i.i ], [ %i.fc, %bb.v ]
  %.044.lcssa.i241.i.i = phi ptr [ %i.ep, %.thread.i236.i.i ], [ %i.fb, %bb.v ]
  %.043.lcssa.i242.i.i = phi i32 [ -1, %.thread.i236.i.i ], [ %i.fg, %bb.v ] ; 2 uses
  %.0.lcssa.i243.i.i = phi i32 [ -1, %.thread.i236.i.i ], [ %i.fh, %bb.v ] ; 2 uses
  %.lcssa3.i244.i.i = phi i1 [ %i.ey, %.thread.i236.i.i ], [ %i.fd, %bb.v ]
  %.lcssa.i245.i.i = phi i1 [ %i.ez, %.thread.i236.i.i ], [ %i.fe, %bb.v ]
  %i.fq = icmp eq ptr %.044.lcssa.i241.i.i, %i.ex
  %or.cond.i246.i.i = select i1 %.lcssa3.i244.i.i, i1 %i.fq, i1 false
  br i1 %or.cond.i246.i.i, label %worse_candidate.exit257.thread.i.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i239.i.i
  %4 = icmp eq ptr %.045.lcssa.i240.i.i, %i.et
  %brmerge.not.i247.i.i = select i1 %4, i1 %.lcssa.i245.i.i, i1 false
  br i1 %brmerge.not.i247.i.i, label %worse_candidate.exit257.thread365.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fr = icmp ult i32 %.043.lcssa.i242.i.i, %.0.lcssa.i243.i.i
  br i1 %i.fr, label %worse_candidate.exit257.thread.i.i, label %.split367.i.i.a

.split367.i.i.a:                                  ; preds = %bb.x
  %i.fs = icmp ule i32 %.043.lcssa.i242.i.i, %.0.lcssa.i243.i.i
  %i.ft = icmp ult i32 %i.eh, %i.eg
  %spec.select.i248.i.i = and i1 %i.ft, %i.fs
  br i1 %spec.select.i248.i.i, label %worse_candidate.exit257.thread.i.i, label %worse_candidate.exit257.thread365.i.i

worse_candidate.exit257.i.i:                      ; preds = %.lr.ph.i250.i.i
  br i1 %.1.i255.i.i, label %worse_candidate.exit257.thread.i.i, label %worse_candidate.exit257.thread365.i.i

worse_candidate.exit257.thread.i.i:               ; preds = %worse_candidate.exit257.i.i, %.split367.i.i.a, %bb.x, %._crit_edge.i239.i.i, %bb.t
  store i32 %i.eh, ptr %i.az, align 4, !tbaa !68
  store i32 %i.eg, ptr %i.cs, align 4, !tbaa !68
  br label %worse_candidate.exit257.thread365.i.i

worse_candidate.exit257.thread365.i.i:            ; preds = %worse_candidate.exit257.thread.i.i, %worse_candidate.exit257.i.i, %.split367.i.i.a, %bb.w, %bb.u
  %.pre-phi554.i.i = phi i64 [ %i.ej, %bb.w ], [ %i.ej, %bb.u ], [ %i.ej, %.split367.i.i.a ], [ %.pre-phi.i.i, %worse_candidate.exit257.thread.i.i ], [ %i.ej, %worse_candidate.exit257.i.i ]
  %i.fu = phi i32 [ %i.eg, %bb.w ], [ %i.eg, %bb.u ], [ %i.eg, %.split367.i.i.a ], [ %i.eh, %worse_candidate.exit257.thread.i.i ], [ %i.eg, %worse_candidate.exit257.i.i ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %.pre-phi554.i.i ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fy = add i64 %.0189.i.i, 2
  br label %bb.y

bb.y:                                             ; preds = %bb.al, %worse_candidate.exit257.thread365.i.i
  %.0184.i.i = phi i64 [ %.0189.i.i, %worse_candidate.exit257.thread365.i.i ], [ %i.gb, %bb.al ]
  %.0183.i.i = phi i64 [ %i.ay, %worse_candidate.exit257.thread365.i.i ], [ %i.hn, %bb.al ]
  %i.fz = load i32, ptr %i.fv, align 4
  %i.ga = and i32 %i.fz, 67108864
  %.not50.i259.i.i = icmp eq i32 %i.ga, 0         ; 3 uses
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.y
  %.1185.i.i = phi i64 [ %.0184.i.i, %bb.y ], [ %i.gb, %.backedge.i.i.backedge ] ; 4 uses
  %i.gb = add i64 %.1185.i.i, 1                   ; 7 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !68 ; 4 uses
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %i.ge ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = and i32 %i.gg, 67108864
  %.not.i258.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i258.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.backedge.i.i
  br i1 %.not50.i259.i.i, label %.thread.i260.i.i, label %.backedge.i.i.backedge

bb.aa:                                            ; preds = %.backedge.i.i
  br i1 %.not50.i259.i.i, label %.preheader387.i.i, label %.thread.i260.i.i

.thread.i260.i.i:                                 ; preds = %bb.aa, %bb.z
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 12 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !83 ; 2 uses
  %i.gl = zext i32 %i.gk to i64
  %.idx.i261.i.i = shl nuw nsw i64 %i.gl, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.idx.i261.i.i ; 2 uses
  %i.gn = load i32, ptr %i.fx, align 4, !tbaa !83 ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %.idx17.i262.i.i = shl nuw nsw i64 %i.go, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx17.i262.i.i ; 2 uses
  %i.gq = icmp ne i32 %i.gk, 0                    ; 2 uses
  %i.gr = icmp ne i32 %i.gn, 0                    ; 2 uses
  %i.gs = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %i.gs, label %.lr.ph.i274.i.i, label %._crit_edge.i263.i.i

bb.ab:                                            ; preds = %.lr.ph.i274.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.04411.i275.i.i, i64 4 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.04510.i276.i.i, i64 4 ; 3 uses
  %i.gv = icmp ne ptr %i.gu, %i.gm                ; 2 uses
  %i.gw = icmp ne ptr %i.gt, %i.gp                ; 2 uses
  %i.gx = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %i.gx, label %.lr.ph.i274.i.i, label %._crit_edge.i263.i.i, !llvm.loop !111

.lr.ph.i274.i.i:                                  ; preds = %.thread.i260.i.i, %bb.ab
  %.04411.i275.i.i = phi ptr [ %i.gt, %bb.ab ], [ %i.fw, %.thread.i260.i.i ] ; 2 uses
  %.04510.i276.i.i = phi ptr [ %i.gu, %bb.ab ], [ %i.gi, %.thread.i260.i.i ] ; 2 uses
  %.0479.i277.i.i = phi i1 [ %.1.i279.i.i, %bb.ab ], [ undef, %.thread.i260.i.i ]
  %i.gy = load i32, ptr %.04510.i276.i.i, align 4, !tbaa !68 ; 2 uses
  %i.gz = load i32, ptr %.04411.i275.i.i, align 4, !tbaa !68 ; 2 uses
  %i.ha = zext i32 %i.gy to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !68 ; 3 uses
  %i.hd = zext i32 %i.gz to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !68 ; 3 uses
  %i.hg = icmp ult i32 %i.hc, %i.hf
  %i.hh = icmp ule i32 %i.hc, %i.hf
  %..047.i278.i.i = select i1 %i.hh, i1 %.0479.i277.i.i, i1 false
  %.1.i279.i.i = select i1 %i.hg, i1 true, i1 %..047.i278.i.i ; 2 uses
  %cond.i280.i.i = icmp eq i32 %i.hc, %i.hf
  br i1 %cond.i280.i.i, label %bb.ab, label %worse_candidate.exit281.i.i, !llvm.loop !111

._crit_edge.i263.i.i:                             ; preds = %bb.ab, %.thread.i260.i.i
  %.045.lcssa.i264.i.i = phi ptr [ %i.gi, %.thread.i260.i.i ], [ %i.gu, %bb.ab ]
  %.044.lcssa.i265.i.i = phi ptr [ %i.fw, %.thread.i260.i.i ], [ %i.gt, %bb.ab ]
  %.043.lcssa.i266.i.i = phi i32 [ -1, %.thread.i260.i.i ], [ %i.gy, %bb.ab ] ; 2 uses
  %.0.lcssa.i267.i.i = phi i32 [ -1, %.thread.i260.i.i ], [ %i.gz, %bb.ab ] ; 2 uses
  %.lcssa3.i268.i.i = phi i1 [ %i.gq, %.thread.i260.i.i ], [ %i.gv, %bb.ab ]
  %.lcssa.i269.i.i = phi i1 [ %i.gr, %.thread.i260.i.i ], [ %i.gw, %bb.ab ]
  %i.hi = icmp eq ptr %.044.lcssa.i265.i.i, %i.gp
  %or.cond.i270.i.i = select i1 %.lcssa3.i268.i.i, i1 %i.hi, i1 false
  br i1 %or.cond.i270.i.i, label %.backedge.i.i.backedge, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i263.i.i
  %5 = icmp eq ptr %.045.lcssa.i264.i.i, %i.gm
  %brmerge.not.i271.i.i = select i1 %5, i1 %.lcssa.i269.i.i, i1 false
  br i1 %brmerge.not.i271.i.i, label %.preheader387.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hj = icmp ult i32 %.043.lcssa.i266.i.i, %.0.lcssa.i267.i.i
  br i1 %i.hj, label %.backedge.i.i.backedge, label %.split368.i.i

.split368.i.i:                                    ; preds = %bb.ad
  %i.hk = icmp ule i32 %.043.lcssa.i266.i.i, %.0.lcssa.i267.i.i
  %i.hl = icmp ult i32 %i.gd, %i.fu
  %spec.select.i272.i.i = and i1 %i.hl, %i.hk
  br i1 %spec.select.i272.i.i, label %.backedge.i.i.backedge, label %.preheader387.i.i

worse_candidate.exit281.i.i:                      ; preds = %.lr.ph.i274.i.i
  br i1 %.1.i279.i.i, label %.backedge.i.i.backedge, label %.preheader387.i.i

.backedge.i.i.backedge:                           ; preds = %worse_candidate.exit281.i.i, %.split368.i.i, %bb.ad, %._crit_edge.i263.i.i, %bb.z
  br label %.backedge.i.i, !llvm.loop !112

.preheader387.i.i:                                ; preds = %worse_candidate.exit281.i.i, %.split368.i.i, %bb.ac, %bb.aa
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gb ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %worse_candidate.exit305.i.i, %.preheader387.i.i
  %.1.i.i = phi i64 [ %i.hn, %worse_candidate.exit305.i.i ], [ %.0183.i.i, %.preheader387.i.i ] ; 2 uses
  %i.hn = add i64 %.1.i.i, -1                     ; 5 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !68 ; 3 uses
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %i.hq ; 3 uses
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = and i32 %i.hs, 67108864
  %.not50.i283.i.i = icmp eq i32 %i.ht, 0         ; 2 uses
  br i1 %.not50.i259.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.not50.i283.i.i, label %.thread.i284.i.i, label %worse_candidate.exit305.i.i

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not50.i283.i.i, label %worse_candidate.exit305.thread.i.i, label %.thread.i284.i.i

.thread.i284.i.i:                                 ; preds = %bb.ag, %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 12 ; 3 uses
  %i.hv = load i32, ptr %i.fx, align 4, !tbaa !83 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %.idx.i285.i.i = shl nuw nsw i64 %i.hw, 2
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.i285.i.i ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !83 ; 2 uses
  %i.ia = zext i32 %i.hz to i64
  %.idx17.i286.i.i = shl nuw nsw i64 %i.ia, 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx17.i286.i.i ; 2 uses
  %i.ic = icmp ne i32 %i.hv, 0                    ; 2 uses
  %i.id = icmp ne i32 %i.hz, 0                    ; 2 uses
  %i.ie = select i1 %i.ic, i1 %i.id, i1 false
  br i1 %i.ie, label %.lr.ph.i298.i.i, label %._crit_edge.i287.i.i

bb.ah:                                            ; preds = %.lr.ph.i298.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.04411.i299.i.i, i64 4 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.04510.i300.i.i, i64 4 ; 3 uses
  %i.ih = icmp ne ptr %i.ig, %i.hx                ; 2 uses
  %i.ii = icmp ne ptr %i.if, %i.ib                ; 2 uses
  %i.ij = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %i.ij, label %.lr.ph.i298.i.i, label %._crit_edge.i287.i.i, !llvm.loop !111

.lr.ph.i298.i.i:                                  ; preds = %.thread.i284.i.i, %bb.ah
  %.04411.i299.i.i = phi ptr [ %i.if, %bb.ah ], [ %i.hu, %.thread.i284.i.i ] ; 2 uses
  %.04510.i300.i.i = phi ptr [ %i.ig, %bb.ah ], [ %i.fw, %.thread.i284.i.i ] ; 2 uses
  %.0479.i301.i.i = phi i1 [ %.1.i303.i.i, %bb.ah ], [ undef, %.thread.i284.i.i ]
  %i.ik = load i32, ptr %.04510.i300.i.i, align 4, !tbaa !68 ; 2 uses
  %i.il = load i32, ptr %.04411.i299.i.i, align 4, !tbaa !68 ; 2 uses
  %i.im = zext i32 %i.ik to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !68 ; 3 uses
  %i.ip = zext i32 %i.il to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !68 ; 3 uses
  %i.is = icmp ult i32 %i.io, %i.ir
  %i.it = icmp ule i32 %i.io, %i.ir
  %..047.i302.i.i = select i1 %i.it, i1 %.0479.i301.i.i, i1 false
  %.1.i303.i.i = select i1 %i.is, i1 true, i1 %..047.i302.i.i ; 2 uses
  %cond.i304.i.i = icmp eq i32 %i.io, %i.ir
  br i1 %cond.i304.i.i, label %bb.ah, label %worse_candidate.exit305.i.i, !llvm.loop !111

._crit_edge.i287.i.i:                             ; preds = %bb.ah, %.thread.i284.i.i
  %.045.lcssa.i288.i.i = phi ptr [ %i.fw, %.thread.i284.i.i ], [ %i.ig, %bb.ah ]
  %.044.lcssa.i289.i.i = phi ptr [ %i.hu, %.thread.i284.i.i ], [ %i.if, %bb.ah ]
  %.043.lcssa.i290.i.i = phi i32 [ -1, %.thread.i284.i.i ], [ %i.ik, %bb.ah ] ; 2 uses
  %.0.lcssa.i291.i.i = phi i32 [ -1, %.thread.i284.i.i ], [ %i.il, %bb.ah ] ; 2 uses
  %.lcssa3.i292.i.i = phi i1 [ %i.ic, %.thread.i284.i.i ], [ %i.ih, %bb.ah ]
  %.lcssa.i293.i.i = phi i1 [ %i.id, %.thread.i284.i.i ], [ %i.ii, %bb.ah ]
  %i.iu = icmp eq ptr %.044.lcssa.i289.i.i, %i.ib
  %or.cond.i294.i.i = select i1 %.lcssa3.i292.i.i, i1 %i.iu, i1 false
  br i1 %or.cond.i294.i.i, label %worse_candidate.exit305.i.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i287.i.i
  %6 = icmp eq ptr %.045.lcssa.i288.i.i, %i.hx
  %brmerge.not.i295.i.i = select i1 %6, i1 %.lcssa.i293.i.i, i1 false
  br i1 %brmerge.not.i295.i.i, label %worse_candidate.exit305.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iv = icmp ult i32 %.043.lcssa.i290.i.i, %.0.lcssa.i291.i.i
  br i1 %i.iv, label %worse_candidate.exit305.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iw = icmp ule i32 %.043.lcssa.i290.i.i, %.0.lcssa.i291.i.i
  %i.ix = icmp ult i32 %i.fu, %i.hp
  %spec.select.i296.i.i = and i1 %i.ix, %i.iw
  br label %worse_candidate.exit305.i.i

worse_candidate.exit305.i.i:                      ; preds = %.lr.ph.i298.i.i, %bb.ak, %bb.aj, %._crit_edge.i287.i.i, %bb.af
  %.3.i297.i.i = phi i1 [ true, %._crit_edge.i287.i.i ], [ true, %bb.af ], [ true, %bb.aj ], [ %spec.select.i296.i.i, %bb.ak ], [ %.1.i303.i.i, %.lr.ph.i298.i.i ]
  %i.iy = icmp ne i64 %.1.i.i, %i.fy
  %or.cond.not.i.i = and i1 %i.iy, %.3.i297.i.i
  br i1 %or.cond.not.i.i, label %bb.ae, label %worse_candidate.exit305.thread.i.i, !llvm.loop !113

worse_candidate.exit305.thread.i.i:               ; preds = %worse_candidate.exit305.i.i, %bb.ai, %bb.ag
  %.not.i6.i = icmp ult i64 %i.gb, %i.hn
  br i1 %.not.i6.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %worse_candidate.exit305.thread.i.i
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hn
  store i32 %i.hp, ptr %i.hm, align 4, !tbaa !68
  store i32 %i.gd, ptr %i.iz, align 4, !tbaa !68
  br label %bb.y

bb.am:                                            ; preds = %worse_candidate.exit305.thread.i.i
  %i.ja = load i32, ptr %i.az, align 4, !tbaa !68
  store i32 %i.ja, ptr %i.hm, align 4, !tbaa !68
  store i32 %i.gd, ptr %i.az, align 4, !tbaa !68
  %i.jb = sub i64 %i.gb, %.0189.i.i
  %i.jc = sub i64 %.0187.i.i, %i.gb
  %i.jd = icmp ult i64 %i.jb, %i.jc               ; 4 uses
  %i.je = add i64 %.1185.i.i, 2                   ; 2 uses
  %.0189..i.i = select i1 %i.jd, i64 %.0189.i.i, i64 %i.je ; 2 uses
  %.1185..0187.i.i = select i1 %i.jd, i64 %.1185.i.i, i64 %.0187.i.i ; 2 uses
  %..0189.i.i = select i1 %i.jd, i64 %i.je, i64 %.0189.i.i ; 3 uses
  %.0187..1185.i.i = select i1 %i.jd, i64 %.0187.i.i, i64 %.1185.i.i ; 3 uses
  %i.jf = sub i64 %.1185..0187.i.i, %.0189..i.i
  %i.jg = icmp ugt i64 %i.jf, 10
  br i1 %i.jg, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.jh = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %i.ji = load ptr, ptr %i.as, align 8, !tbaa !86 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ap, i64 noundef 8) #7
  %.pre555.i.i = load ptr, ptr %i.ar, align 8, !tbaa !85
  %.pre556.i.i = load ptr, ptr %i.as, align 8, !tbaa !86
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jk = phi ptr [ %.pre556.i.i, %bb.ao ], [ %i.ji, %bb.an ]
  %i.jl = phi ptr [ %.pre555.i.i, %bb.ao ], [ %i.jh, %bb.an ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 3 uses
  store ptr %i.jm, ptr %i.ar, align 8, !tbaa !85
  store i64 %..0189.i.i, ptr %i.jl, align 8, !tbaa !67
  %i.jn = icmp eq ptr %i.jm, %i.jk
  br i1 %i.jn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ap, i64 noundef 8) #7
  %.pre557.i.i = load ptr, ptr %i.ar, align 8, !tbaa !85
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jo = phi ptr [ %.pre557.i.i, %bb.aq ], [ %i.jm, %bb.ap ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %i.jp, ptr %i.ar, align 8, !tbaa !85
  store i64 %.0187..1185.i.i, ptr %i.jo, align 8, !tbaa !67
  br label %.backedge

bb.as:                                            ; preds = %bb.am
  %i.jq = sub i64 %.0187..1185.i.i, %..0189.i.i
  %i.jr = icmp ugt i64 %i.jq, 10
  br i1 %i.jr, label %.backedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.js = load ptr, ptr %i.ap, align 8, !tbaa !87
  %i.jt = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 3 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %.lr.ph.i7.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !67
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 -16 ; 2 uses
  store ptr %i.jx, ptr %i.ar, align 8, !tbaa !85
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !67
  br label %.backedge

.backedge:                                        ; preds = %bb.au, %bb.as, %bb.ar
  %.0189.i.i.be = phi i64 [ %..0189.i.i, %bb.as ], [ %.0189..i.i, %bb.ar ], [ %i.jy, %bb.au ]
  %.0187.i.i.be = phi i64 [ %.0187..1185.i.i, %bb.as ], [ %.1185..0187.i.i, %bb.ar ], [ %i.jw, %bb.au ]
  br label %bb.i

.lr.ph.i7.i:                                      ; preds = %bb.at, %..lr.ph.i7_crit_edge.i
  %.val.i8.i = phi ptr [ %.val204.i.pre.i, %..lr.ph.i7_crit_edge.i ], [ %.val209.i.i, %bb.at ] ; 4 uses
  br label %bb.av

.preheader.i.i:                                   ; preds = %worse_candidate.exit329.thread377.i.i
  %.not201474.i.i = icmp eq i64 %i.ak, 8
  br i1 %.not201474.i.i, label %sort_vivification_candidates.exit, label %.lr.ph476.i.i

.lr.ph476.i.i:                                    ; preds = %.preheader.i.i
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 3)
  br label %bb.bb

bb.av:                                            ; preds = %worse_candidate.exit329.thread377.i.i, %.lr.ph.i7.i
  %.0180473.i.i = phi i64 [ %i.an, %.lr.ph.i7.i ], [ %i.lr, %worse_candidate.exit329.thread377.i.i ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.0180473.i.i ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !68 ; 3 uses
  %i.kb = getelementptr i8, ptr %i.jz, i64 -4     ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !68 ; 3 uses
  %i.kd = zext i32 %i.ka to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.val.i8.i, i64 %i.kd ; 3 uses
  %i.kf = zext i32 %i.kc to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.val.i8.i, i64 %i.kf ; 3 uses
  %i.kh = load i32, ptr %i.ke, align 4
  %i.ki = and i32 %i.kh, 67108864
  %.not.i306.i.i = icmp eq i32 %i.ki, 0
  %i.kj = load i32, ptr %i.kg, align 4
  %i.kk = and i32 %i.kj, 67108864
  %.not50.i307.i.i = icmp eq i32 %i.kk, 0         ; 2 uses
  br i1 %.not.i306.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  br i1 %.not50.i307.i.i, label %.thread.i308.i.i, label %worse_candidate.exit329.thread.i.i

bb.ax:                                            ; preds = %bb.av
  br i1 %.not50.i307.i.i, label %worse_candidate.exit329.thread377.i.i, label %.thread.i308.i.i

.thread.i308.i.i:                                 ; preds = %bb.ax, %bb.aw
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 12 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 12 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !83 ; 2 uses
  %i.kp = zext i32 %i.ko to i64
  %.idx.i309.i.i = shl nuw nsw i64 %i.kp, 2
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx.i309.i.i ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !83 ; 2 uses
  %i.kt = zext i32 %i.ks to i64
  %.idx17.i310.i.i = shl nuw nsw i64 %i.kt, 2
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 %.idx17.i310.i.i ; 2 uses
  %i.kv = icmp ne i32 %i.ko, 0                    ; 2 uses
  %i.kw = icmp ne i32 %i.ks, 0                    ; 2 uses
  %i.kx = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %i.kx, label %.lr.ph.i322.i.i, label %._crit_edge.i311.i.i

bb.ay:                                            ; preds = %.lr.ph.i322.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %.04411.i323.i.i, i64 4 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.04510.i324.i.i, i64 4 ; 3 uses
  %i.la = icmp ne ptr %i.kz, %i.kq                ; 2 uses
  %i.lb = icmp ne ptr %i.ky, %i.ku                ; 2 uses
  %i.lc = select i1 %i.la, i1 %i.lb, i1 false
  br i1 %i.lc, label %.lr.ph.i322.i.i, label %._crit_edge.i311.i.i, !llvm.loop !111

.lr.ph.i322.i.i:                                  ; preds = %.thread.i308.i.i, %bb.ay
  %.04411.i323.i.i = phi ptr [ %i.ky, %bb.ay ], [ %i.km, %.thread.i308.i.i ] ; 2 uses
  %.04510.i324.i.i = phi ptr [ %i.kz, %bb.ay ], [ %i.kl, %.thread.i308.i.i ] ; 2 uses
  %.0479.i325.i.i = phi i1 [ %.1.i327.i.i, %bb.ay ], [ undef, %.thread.i308.i.i ]
  %i.ld = load i32, ptr %.04510.i324.i.i, align 4, !tbaa !68 ; 2 uses
  %i.le = load i32, ptr %.04411.i323.i.i, align 4, !tbaa !68 ; 2 uses
  %i.lf = zext i32 %i.ld to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !68 ; 3 uses
  %i.li = zext i32 %i.le to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !68 ; 3 uses
  %i.ll = icmp ult i32 %i.lh, %i.lk
  %i.lm = icmp ule i32 %i.lh, %i.lk
  %..047.i326.i.i = select i1 %i.lm, i1 %.0479.i325.i.i, i1 false
  %.1.i327.i.i = select i1 %i.ll, i1 true, i1 %..047.i326.i.i ; 2 uses
  %cond.i328.i.i = icmp eq i32 %i.lh, %i.lk
  br i1 %cond.i328.i.i, label %bb.ay, label %worse_candidate.exit329.i.i, !llvm.loop !111

._crit_edge.i311.i.i:                             ; preds = %bb.ay, %.thread.i308.i.i
  %.045.lcssa.i312.i.i = phi ptr [ %i.kl, %.thread.i308.i.i ], [ %i.kz, %bb.ay ]
  %.044.lcssa.i313.i.i = phi ptr [ %i.km, %.thread.i308.i.i ], [ %i.ky, %bb.ay ]
  %.043.lcssa.i314.i.i = phi i32 [ -1, %.thread.i308.i.i ], [ %i.ld, %bb.ay ] ; 2 uses
  %.0.lcssa.i315.i.i = phi i32 [ -1, %.thread.i308.i.i ], [ %i.le, %bb.ay ] ; 2 uses
  %.lcssa3.i316.i.i = phi i1 [ %i.kv, %.thread.i308.i.i ], [ %i.la, %bb.ay ]
  %.lcssa.i317.i.i = phi i1 [ %i.kw, %.thread.i308.i.i ], [ %i.lb, %bb.ay ]
  %i.ln = icmp eq ptr %.044.lcssa.i313.i.i, %i.ku
  %or.cond.i318.i.i = select i1 %.lcssa3.i316.i.i, i1 %i.ln, i1 false
  br i1 %or.cond.i318.i.i, label %worse_candidate.exit329.thread.i.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i311.i.i
  %7 = icmp eq ptr %.045.lcssa.i312.i.i, %i.kq
  %brmerge.not.i319.i.i = select i1 %7, i1 %.lcssa.i317.i.i, i1 false
  br i1 %brmerge.not.i319.i.i, label %worse_candidate.exit329.thread377.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lo = icmp ult i32 %.043.lcssa.i314.i.i, %.0.lcssa.i315.i.i
  br i1 %i.lo, label %worse_candidate.exit329.thread.i.i, label %.split379.i.i

.split379.i.i:                                    ; preds = %bb.ba
  %i.lp = icmp ule i32 %.043.lcssa.i314.i.i, %.0.lcssa.i315.i.i
  %i.lq = icmp ult i32 %i.ka, %i.kc
  %spec.select.i320.i.i = and i1 %i.lq, %i.lp
  br i1 %spec.select.i320.i.i, label %worse_candidate.exit329.thread.i.i, label %worse_candidate.exit329.thread377.i.i

worse_candidate.exit329.i.i:                      ; preds = %.lr.ph.i322.i.i
  br i1 %.1.i327.i.i, label %worse_candidate.exit329.thread.i.i, label %worse_candidate.exit329.thread377.i.i

worse_candidate.exit329.thread.i.i:               ; preds = %worse_candidate.exit329.i.i, %.split379.i.i, %bb.ba, %._crit_edge.i311.i.i, %bb.aw
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !68
  store i32 %i.kc, ptr %i.jz, align 4, !tbaa !68
  br label %worse_candidate.exit329.thread377.i.i

worse_candidate.exit329.thread377.i.i:            ; preds = %worse_candidate.exit329.thread.i.i, %worse_candidate.exit329.i.i, %.split379.i.i, %bb.az, %bb.ax
  %i.lr = add i64 %.0180473.i.i, -1               ; 2 uses
  %.not200.i.i = icmp eq i64 %i.lr, 0
  br i1 %.not200.i.i, label %.preheader.i.i, label %bb.av, !llvm.loop !114

bb.bb:                                            ; preds = %worse_candidate.exit353.thread382.i.i, %.lr.ph476.i.i
  %.0179475.i.i = phi i64 [ 2, %.lr.ph476.i.i ], [ %i.nm, %worse_candidate.exit353.thread382.i.i ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.0179475.i.i
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !68 ; 3 uses
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.val.i8.i, i64 %i.lu ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 12 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %worse_candidate.exit353.thread.i.i, %bb.bb
  %.0.i.i = phi i64 [ %.0179475.i.i, %bb.bb ], [ %i.nl, %worse_candidate.exit353.thread.i.i ] ; 2 uses
  %i.ly = getelementptr [4 x i8], ptr %i.ae, i64 %.0.i.i ; 3 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 -4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !68 ; 3 uses
  %i.mb = zext i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.val.i8.i, i64 %i.mb ; 3 uses
  %i.md = load i32, ptr %i.lv, align 4
  %i.me = and i32 %i.md, 67108864
  %.not.i330.i.i = icmp eq i32 %i.me, 0
  %i.mf = load i32, ptr %i.mc, align 4
  %i.mg = and i32 %i.mf, 67108864
  %.not50.i331.i.i = icmp eq i32 %i.mg, 0         ; 2 uses
  br i1 %.not.i330.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not50.i331.i.i, label %.thread.i332.i.i, label %worse_candidate.exit353.thread.i.i

bb.be:                                            ; preds = %bb.bc
  br i1 %.not50.i331.i.i, label %worse_candidate.exit353.thread382.i.i, label %.thread.i332.i.i

.thread.i332.i.i:                                 ; preds = %bb.be, %bb.bd
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 12 ; 3 uses
  %i.mi = load i32, ptr %i.lx, align 4, !tbaa !83 ; 2 uses
  %i.mj = zext i32 %i.mi to i64
  %.idx.i333.i.i = shl nuw nsw i64 %i.mj, 2
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx.i333.i.i ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !83 ; 2 uses
  %i.mn = zext i32 %i.mm to i64
  %.idx17.i334.i.i = shl nuw nsw i64 %i.mn, 2
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 %.idx17.i334.i.i ; 2 uses
  %i.mp = icmp ne i32 %i.mi, 0                    ; 2 uses
  %i.mq = icmp ne i32 %i.mm, 0                    ; 2 uses
  %i.mr = select i1 %i.mp, i1 %i.mq, i1 false
  br i1 %i.mr, label %.lr.ph.i346.i.i, label %._crit_edge.i335.i.i

bb.bf:                                            ; preds = %.lr.ph.i346.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.04411.i347.i.i, i64 4 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.04510.i348.i.i, i64 4 ; 3 uses
  %i.mu = icmp ne ptr %i.mt, %i.mk                ; 2 uses
  %i.mv = icmp ne ptr %i.ms, %i.mo                ; 2 uses
  %i.mw = select i1 %i.mu, i1 %i.mv, i1 false
  br i1 %i.mw, label %.lr.ph.i346.i.i, label %._crit_edge.i335.i.i, !llvm.loop !111

.lr.ph.i346.i.i:                                  ; preds = %.thread.i332.i.i, %bb.bf
  %.04411.i347.i.i = phi ptr [ %i.ms, %bb.bf ], [ %i.mh, %.thread.i332.i.i ] ; 2 uses
  %.04510.i348.i.i = phi ptr [ %i.mt, %bb.bf ], [ %i.lw, %.thread.i332.i.i ] ; 2 uses
  %.0479.i349.i.i = phi i1 [ %.1.i351.i.i, %bb.bf ], [ undef, %.thread.i332.i.i ]
  %i.mx = load i32, ptr %.04510.i348.i.i, align 4, !tbaa !68 ; 2 uses
  %i.my = load i32, ptr %.04411.i347.i.i, align 4, !tbaa !68 ; 2 uses
  %i.mz = zext i32 %i.mx to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !68 ; 3 uses
  %i.nc = zext i32 %i.my to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !68 ; 3 uses
  %i.nf = icmp ult i32 %i.nb, %i.ne
  %i.ng = icmp ule i32 %i.nb, %i.ne
  %..047.i350.i.i = select i1 %i.ng, i1 %.0479.i349.i.i, i1 false
  %.1.i351.i.i = select i1 %i.nf, i1 true, i1 %..047.i350.i.i ; 2 uses
  %cond.i352.i.i = icmp eq i32 %i.nb, %i.ne
  br i1 %cond.i352.i.i, label %bb.bf, label %worse_candidate.exit353.i.i, !llvm.loop !111

._crit_edge.i335.i.i:                             ; preds = %bb.bf, %.thread.i332.i.i
  %.045.lcssa.i336.i.i = phi ptr [ %i.lw, %.thread.i332.i.i ], [ %i.mt, %bb.bf ]
  %.044.lcssa.i337.i.i = phi ptr [ %i.mh, %.thread.i332.i.i ], [ %i.ms, %bb.bf ]
  %.043.lcssa.i338.i.i = phi i32 [ -1, %.thread.i332.i.i ], [ %i.mx, %bb.bf ] ; 2 uses
  %.0.lcssa.i339.i.i = phi i32 [ -1, %.thread.i332.i.i ], [ %i.my, %bb.bf ] ; 2 uses
  %.lcssa3.i340.i.i = phi i1 [ %i.mp, %.thread.i332.i.i ], [ %i.mu, %bb.bf ]
  %.lcssa.i341.i.i = phi i1 [ %i.mq, %.thread.i332.i.i ], [ %i.mv, %bb.bf ]
  %i.nh = icmp eq ptr %.044.lcssa.i337.i.i, %i.mo
  %or.cond.i342.i.i = select i1 %.lcssa3.i340.i.i, i1 %i.nh, i1 false
  br i1 %or.cond.i342.i.i, label %worse_candidate.exit353.thread.i.i, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i335.i.i
  %8 = icmp eq ptr %.045.lcssa.i336.i.i, %i.mk
  %brmerge.not.i343.i.i = select i1 %8, i1 %.lcssa.i341.i.i, i1 false
  br i1 %brmerge.not.i343.i.i, label %worse_candidate.exit353.thread382.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ni = icmp ult i32 %.043.lcssa.i338.i.i, %.0.lcssa.i339.i.i
  br i1 %i.ni, label %worse_candidate.exit353.thread.i.i, label %.split384.i.i

.split384.i.i:                                    ; preds = %bb.bh
  %i.nj = icmp ule i32 %.043.lcssa.i338.i.i, %.0.lcssa.i339.i.i
  %i.nk = icmp ult i32 %i.lt, %i.ma
  %spec.select.i344.i.i = and i1 %i.nk, %i.nj
  br i1 %spec.select.i344.i.i, label %worse_candidate.exit353.thread.i.i, label %worse_candidate.exit353.thread382.i.i

worse_candidate.exit353.i.i:                      ; preds = %.lr.ph.i346.i.i
  br i1 %.1.i351.i.i, label %worse_candidate.exit353.thread.i.i, label %worse_candidate.exit353.thread382.i.i

worse_candidate.exit353.thread.i.i:               ; preds = %worse_candidate.exit353.i.i, %.split384.i.i, %bb.bh, %._crit_edge.i335.i.i, %bb.bd
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !68
  %i.nl = add i64 %.0.i.i, -1
  br label %bb.bc, !llvm.loop !115

worse_candidate.exit353.thread382.i.i:            ; preds = %worse_candidate.exit353.i.i, %.split384.i.i, %bb.bg, %bb.be
  store i32 %i.lt, ptr %i.ly, align 4, !tbaa !68
  %i.nm = add nuw i64 %.0179475.i.i, 1            ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.nm, %umax.i.i
  br i1 %exitcond.i.i, label %sort_vivification_candidates.exit, label %bb.bb, !llvm.loop !116

bb.bi:                                            ; preds = %bb.e
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !74 ; 5 uses
  %i.nr = load ptr, ptr %i.nn, align 8, !tbaa !80 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !81 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.nr, %i.nt
  br i1 %.not26.i.i, label %init_countrefs.exit.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.bi
  %i.nu = getelementptr i8, ptr %i.o, i64 816
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.lr.ph.i9.i
  %.027.i.i = phi ptr [ %i.nr, %.lr.ph.i9.i ], [ %i.pq, %bb.bl ] ; 2 uses
  %i.nx = load i32, ptr %.027.i.i, align 4, !tbaa !68 ; 2 uses
  %.val.i10.i = load ptr, ptr %i.nu, align 8, !tbaa !82
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %.val.i10.i, i64 %i.ny ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !83 ; 3 uses
  %i.oc = shl i32 %i.ob, 1
  %i.od = load i32, ptr %i.nz, align 4
  %i.oe = lshr i32 %i.od, 26
  %.lobit.i.i.i = and i32 %i.oe, 1
  %i.of = or disjoint i32 %.lobit.i.i.i, %i.oc
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 12 ; 2 uses
  %.not3941.i.i.i = icmp eq i32 %i.ob, 0
  br i1 %.not3941.i.i.i, label %init_countref.exit.i.i, label %.lr.ph.i.i12.i.preheader

.lr.ph.i.i12.i.preheader:                         ; preds = %bb.bj
  %i.oh = zext i32 %i.ob to i64
  %i.oi = add nuw nsw i64 %i.oh, 4611686018427387903
  %i.oj = and i64 %i.oi, 4611686018427387903      ; 2 uses
  %i.ok = add nuw nsw i64 %i.oj, 1                ; 2 uses
  %xtraiter = and i64 %i.ok, 3                    ; 3 uses
  %i.ol = icmp samesign ult i64 %i.oj, 3
  br i1 %i.ol, label %.lr.ph.i.i12.i.epil.preheader, label %.lr.ph.i.i12.i.preheader.new

.lr.ph.i.i12.i.preheader.new:                     ; preds = %.lr.ph.i.i12.i.preheader
  %unroll_iter = and i64 %i.ok, 9223372036854775804
  br label %.lr.ph.i.i12.i

.lr.ph.i.i12.i:                                   ; preds = %.lr.ph.i.i12.i, %.lr.ph.i.i12.i.preheader.new
  %.03243.i.i.i = phi ptr [ %i.og, %.lr.ph.i.i12.i.preheader.new ], [ %i.pf, %.lr.ph.i.i12.i ] ; 5 uses
  %.03342.i.i.i = phi i32 [ 0, %.lr.ph.i.i12.i.preheader.new ], [ %.1.i.i13.i.3, %.lr.ph.i.i12.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i12.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i12.i ]
  %i.om = load i32, ptr %.03243.i.i.i, align 4, !tbaa !68
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !68
  %.1.i.i13.i = tail call i32 @llvm.umax.i32(i32 %i.op, i32 %.03342.i.i.i)
  %i.oq = getelementptr inbounds nuw i8, ptr %.03243.i.i.i, i64 4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !68
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !68
  %.1.i.i13.i.1 = tail call i32 @llvm.umax.i32(i32 %i.ou, i32 %.1.i.i13.i)
  %i.ov = getelementptr inbounds nuw i8, ptr %.03243.i.i.i, i64 8
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !68
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !68
  %.1.i.i13.i.2 = tail call i32 @llvm.umax.i32(i32 %i.oz, i32 %.1.i.i13.i.1)
  %i.pa = getelementptr inbounds nuw i8, ptr %.03243.i.i.i, i64 12
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !68
  %i.pc = zext i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !68
  %.1.i.i13.i.3 = tail call i32 @llvm.umax.i32(i32 %i.pe, i32 %.1.i.i13.i.2) ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.03243.i.i.i, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %init_countref.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i12.i, !llvm.loop !117

init_countref.exit.i.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i12.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %init_countref.exit.i.i, label %.lr.ph.i.i12.i.epil.preheader

.lr.ph.i.i12.i.epil.preheader:                    ; preds = %init_countref.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i12.i.preheader
  %.03243.i.i.i.epil.init = phi ptr [ %i.og, %.lr.ph.i.i12.i.preheader ], [ %i.pf, %init_countref.exit.i.i.loopexit.unr-lcssa ]
  %.03342.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i12.i.preheader ], [ %.1.i.i13.i.3, %init_countref.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod579 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod579)
  br label %.lr.ph.i.i12.i.epil

.lr.ph.i.i12.i.epil:                              ; preds = %.lr.ph.i.i12.i.epil, %.lr.ph.i.i12.i.epil.preheader
  %.03243.i.i.i.epil = phi ptr [ %i.pk, %.lr.ph.i.i12.i.epil ], [ %.03243.i.i.i.epil.init, %.lr.ph.i.i12.i.epil.preheader ] ; 2 uses
  %.03342.i.i.i.epil = phi i32 [ %.1.i.i13.i.epil, %.lr.ph.i.i12.i.epil ], [ %.03342.i.i.i.epil.init, %.lr.ph.i.i12.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i12.i.epil ], [ 0, %.lr.ph.i.i12.i.epil.preheader ]
  %i.pg = load i32, ptr %.03243.i.i.i.epil, align 4, !tbaa !68
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !68
  %.1.i.i13.i.epil = tail call i32 @llvm.umax.i32(i32 %i.pj, i32 %.03342.i.i.i.epil) ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.03243.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %init_countref.exit.i.i, label %.lr.ph.i.i12.i.epil, !llvm.loop !118

init_countref.exit.i.i:                           ; preds = %init_countref.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i12.i.epil, %bb.bj
  %.033.lcssa.i.i.i = phi i32 [ 0, %bb.bj ], [ %.1.i.i13.i.3, %init_countref.exit.i.i.loopexit.unr-lcssa ], [ %.1.i.i13.i.epil, %.lr.ph.i.i12.i.epil ]
  %i.pl = load ptr, ptr %i.nv, align 8, !tbaa !154 ; 2 uses
  %i.pm = load ptr, ptr %i.nw, align 8, !tbaa !155
  %i.pn = icmp eq ptr %i.pl, %i.pm
  br i1 %i.pn, label %bb.bk, label %bb.bl

.critedge.loopexit.i.i:                           ; preds = %bb.bl
  %.pre28.i.i = load ptr, ptr %i.nn, align 8, !tbaa !80
  br label %init_countrefs.exit.i

bb.bk:                                            ; preds = %init_countref.exit.i.i
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %i.o, ptr noundef nonnull %i.no, i64 noundef 12) #7
  %.pre.i15.i = load ptr, ptr %i.nv, align 8, !tbaa !154
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %init_countref.exit.i.i
  %i.po = phi ptr [ %.pre.i15.i, %bb.bk ], [ %i.pl, %init_countref.exit.i.i ] ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  store ptr %i.pp, ptr %i.nv, align 8, !tbaa !154
  store i32 %i.of, ptr %i.po, align 4, !tbaa !88
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  store i32 %.033.lcssa.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !88
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store i32 %i.nx, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !68
  %i.pq = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.pq, %i.nt
  br i1 %.not.i14.i, label %.critedge.loopexit.i.i, label %bb.bj, !llvm.loop !119

init_countrefs.exit.i:                            ; preds = %.critedge.loopexit.i.i, %bb.bi
  %i.pr = phi ptr [ %.pre28.i.i, %.critedge.loopexit.i.i ], [ %i.nr, %bb.bi ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !89
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.pr to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = ashr exact i64 %i.pw, 2
  tail call void @kissat_dealloc(ptr noundef %i.o, ptr noundef %i.pr, i64 noundef %i.px, i64 noundef 4) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nn, i8 0, i64 24, i1 false)
  %i.py = load ptr, ptr %0, align 8, !tbaa !73    ; 6 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !154 ; 3 uses
  %i.qb = load ptr, ptr %i.no, align 8, !tbaa !156 ; 7 uses
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd                    ; 5 uses
  %i.qf = sdiv exact i64 %i.qe, 12
  %i.qg = icmp ult i64 %i.qf, 2
  br i1 %i.qg, label %rank_vivification_candidates.exit.i, label %bb.bm

bb.bm:                                            ; preds = %init_countrefs.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not389413.i.i = icmp eq ptr %i.qa, %i.qb
  br label %bb.bo

bb.bn:                                            ; preds = %.loopexit412.i.i
  %i.qh = icmp eq ptr %.2357.i.i, %.3353.i.i
  br i1 %i.qh, label %bb.bv, label %bb.bw

bb.bo:                                            ; preds = %.loopexit412.i.i, %bb.bm
  %.0346441.i.i = phi ptr [ null, %bb.bm ], [ %.3349.i.i, %.loopexit412.i.i ] ; 6 uses
  %.0350440.i.i = phi ptr [ null, %bb.bm ], [ %.3353.i.i, %.loopexit412.i.i ] ; 5 uses
  %.0355439.i.i = phi ptr [ %i.qb, %bb.bm ], [ %.2357.i.i, %.loopexit412.i.i ] ; 8 uses
  %.0365438.i.i = phi i64 [ 0, %bb.bm ], [ %i.tg, %.loopexit412.i.i ] ; 3 uses
  %.0366436.i.i = phi i32 [ 255, %bb.bm ], [ %i.th, %.loopexit412.i.i ] ; 3 uses
  %.0367435.i.i = phi i32 [ -1, %bb.bm ], [ %.3370.i.i, %.loopexit412.i.i ] ; 5 uses
  %.0371434.i.i = phi i32 [ 0, %bb.bm ], [ %.3374.i.i, %.loopexit412.i.i ] ; 5 uses
  %.0375433.i.i = phi i1 [ false, %bb.bm ], [ true, %.loopexit412.i.i ] ; 4 uses
  %.0379432.i.i = phi i32 [ 255, %bb.bm ], [ %.1380.i.i, %.loopexit412.i.i ] ; 2 uses
  %.0381431.i.i = phi i32 [ 0, %bb.bm ], [ %.1382.i.i, %.loopexit412.i.i ] ; 3 uses
  br i1 %.0375433.i.i, label %bb.bp, label %bb.bq
end_hunk_0
