Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/vivify?download=true
inline.NumInlined: 131
inline.NumDeleted: 86
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@kissat_vivify:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !64
  %i.ed = call i32 %i.ea(ptr noundef %i.ec) #7, !inline_history !0
  %.not10.i84 = icmp eq i32 %i.ed, 0
  br i1 %.not10.i84, label %kissat_terminated.exit85, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store volatile i8 1, ptr %i.d, align 8, !tbaa !62
  br label %kissat_terminated.exit85

kissat_terminated.exit85:                         ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.ee = load volatile i8, ptr %i.d, align 8, !tbaa !62, !range !60, !noundef !61
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %kissat_terminated.exit85
  %i.eg = uitofp i64 %i.ak to double
  %i.eh = fmul nnan double %i.p, %i.eg
  %i.ei = fdiv double %i.eh, %i.u
  %i.ej = uitofp i64 %.2 to double
  %i.ek = fadd double %i.ei, %i.ej
  %i.el = fptoui double %i.ek to i64
  %i.em = load ptr, ptr %1, align 8, !tbaa !73
  %i.en = load ptr, ptr %i.av, align 8, !tbaa !74
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !102
  %i.eq = shl i32 %i.ep, 1
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw nsw i64 %i.er, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.en, i8 0, i64 %i.es, i1 false)
  %i.et = load ptr, ptr %i.aw, align 8, !tbaa !76
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !77
  %i.ev = load ptr, ptr %i.ax, align 8, !tbaa !103
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !104
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !105
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !106
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 0, ptr %i.fa, align 8, !tbaa !75
  call fastcc void @vivify_round(ptr noundef nonnull %1, i64 noundef %i.el)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !78
  %i.fd = uitofp i64 %i.fc to double
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !79 ; 2 uses
  %i.fg = uitofp i64 %i.ff to double
  %.not86 = icmp eq i64 %i.ff, 0
  %i.fh = fdiv double %i.fd, %i.fg
  %i.fi = fcmp olt double %i.fh, 1.000000e-02
  %i.fj = select i1 %.not86, i1 true, i1 %i.fi
  br i1 %i.fj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @kissat_bump_delay(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #7
  br label %bb.af

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
  %i.ah = phi ptr [ %.pre.i, %sort_scheduled_candidate_literals.exit.loopexit.i ], [ %i.o, %bb.f ] ; 8 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = ashr exact i64 %i.ak, 2                 ; 4 uses
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %sort_vivification_candidates.exit, label %bb.h

bb.h:                                             ; preds = %sort_scheduled_candidate_literals.exit.i
  %i.an = add nsw i64 %i.al, -1                   ; 3 uses
  %i.ao = icmp ult i64 %i.al, 12
  br i1 %i.ao, label %.thread.i.i, label %.preheader388.i.i

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
  %.val209.i.i = load ptr, ptr %i.aq, align 8, !tbaa !82 ; 10 uses
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
  %i.cn = icmp eq ptr %.045.lcssa.i.i.i, %i.bp
  %brmerge.not.i.i.i = select i1 %i.cn, i1 %.lcssa.i.i.i, i1 false
  br i1 %brmerge.not.i.i.i, label %worse_candidate.exit.thread356.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = icmp ult i32 %.043.lcssa.i.i.i, %.0.lcssa.i.i.i
  br i1 %i.co, label %worse_candidate.exit.thread.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.n
  %i.cp = icmp ule i32 %.043.lcssa.i.i.i, %.0.lcssa.i.i.i
  %i.cq = icmp ult i32 %i.ax, %i.bb
  %spec.select.i.i.i = and i1 %i.cq, %i.cp
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
  %i.cr = phi i32 [ %i.ax, %bb.m ], [ %i.ax, %bb.k ], [ %i.ax, %.split.i.i ], [ %i.ax, %worse_candidate.exit.i.i ], [ %i.bb, %worse_candidate.exit.thread.i.i ] ; 4 uses
  %i.cs = phi i32 [ %i.bb, %bb.m ], [ %i.bb, %bb.k ], [ %i.bb, %.split.i.i ], [ %i.bb, %worse_candidate.exit.i.i ], [ %.pre.i.i, %worse_candidate.exit.thread.i.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.0187.i.i ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !68 ; 7 uses
  %i.cv = zext i32 %i.cu to i64                   ; 5 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %.pre-phi558.i.i ; 3 uses
  %i.cy = load i32, ptr %i.cw, align 4            ; 5 uses
  %i.cz = and i32 %i.cy, 67108864
  %.not.i210.i.i = icmp eq i32 %i.cz, 0
  %.not50.i211.i.i = icmp eq i32 %.pre-phi560.i.i, 0 ; 2 uses
  br i1 %.not.i210.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %worse_candidate.exit.thread356.i.i
  br i1 %.not50.i211.i.i, label %.thread.i212.i.i, label %worse_candidate.exit233.thread.i.i

bb.p:                                             ; preds = %worse_candidate.exit.thread356.i.i
  br i1 %.not50.i211.i.i, label %worse_candidate.exit233.thread360.i.i, label %.thread.i212.i.i

.thread.i212.i.i:                                 ; preds = %bb.p, %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 12 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !83 ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %.idx.i213.i.i = shl nuw nsw i64 %i.de, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i213.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !83 ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %.idx17.i214.i.i = shl nuw nsw i64 %i.di, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx17.i214.i.i ; 2 uses
  %i.dk = icmp ne i32 %i.dd, 0                    ; 2 uses
  %i.dl = icmp ne i32 %i.dh, 0                    ; 2 uses
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i226.i.i, label %._crit_edge.i215.i.i

bb.q:                                             ; preds = %.lr.ph.i226.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.04411.i227.i.i, i64 4 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.04510.i228.i.i, i64 4 ; 3 uses
  %i.dp = icmp ne ptr %i.do, %i.df                ; 2 uses
  %i.dq = icmp ne ptr %i.dn, %i.dj                ; 2 uses
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph.i226.i.i, label %._crit_edge.i215.i.i, !llvm.loop !111

.lr.ph.i226.i.i:                                  ; preds = %.thread.i212.i.i, %bb.q
  %.04411.i227.i.i = phi ptr [ %i.dn, %bb.q ], [ %i.db, %.thread.i212.i.i ] ; 2 uses
  %.04510.i228.i.i = phi ptr [ %i.do, %bb.q ], [ %i.da, %.thread.i212.i.i ] ; 2 uses
  %.0479.i229.i.i = phi i1 [ %.1.i231.i.i, %bb.q ], [ undef, %.thread.i212.i.i ]
  %i.ds = load i32, ptr %.04510.i228.i.i, align 4, !tbaa !68 ; 2 uses
  %i.dt = load i32, ptr %.04411.i227.i.i, align 4, !tbaa !68 ; 2 uses
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !68 ; 3 uses
  %i.dx = zext i32 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !68 ; 3 uses
  %i.ea = icmp ult i32 %i.dw, %i.dz
  %i.eb = icmp ule i32 %i.dw, %i.dz
  %..047.i230.i.i = select i1 %i.eb, i1 %.0479.i229.i.i, i1 false
  %.1.i231.i.i = select i1 %i.ea, i1 true, i1 %..047.i230.i.i ; 2 uses
  %cond.i232.i.i = icmp eq i32 %i.dw, %i.dz
  br i1 %cond.i232.i.i, label %bb.q, label %worse_candidate.exit233.i.i, !llvm.loop !111

._crit_edge.i215.i.i:                             ; preds = %bb.q, %.thread.i212.i.i
  %.045.lcssa.i216.i.i = phi ptr [ %i.da, %.thread.i212.i.i ], [ %i.do, %bb.q ]
  %.044.lcssa.i217.i.i = phi ptr [ %i.db, %.thread.i212.i.i ], [ %i.dn, %bb.q ]
  %.043.lcssa.i218.i.i = phi i32 [ -1, %.thread.i212.i.i ], [ %i.ds, %bb.q ] ; 2 uses
  %.0.lcssa.i219.i.i = phi i32 [ -1, %.thread.i212.i.i ], [ %i.dt, %bb.q ] ; 2 uses
  %.lcssa3.i220.i.i = phi i1 [ %i.dk, %.thread.i212.i.i ], [ %i.dp, %bb.q ]
  %.lcssa.i221.i.i = phi i1 [ %i.dl, %.thread.i212.i.i ], [ %i.dq, %bb.q ]
  %i.ec = icmp eq ptr %.044.lcssa.i217.i.i, %i.dj
  %or.cond.i222.i.i = select i1 %.lcssa3.i220.i.i, i1 %i.ec, i1 false
  br i1 %or.cond.i222.i.i, label %worse_candidate.exit233.thread.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i215.i.i
  %i.ed = icmp eq ptr %.045.lcssa.i216.i.i, %i.df
  %brmerge.not.i223.i.i = select i1 %i.ed, i1 %.lcssa.i221.i.i, i1 false
  br i1 %brmerge.not.i223.i.i, label %worse_candidate.exit233.thread360.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = icmp ult i32 %.043.lcssa.i218.i.i, %.0.lcssa.i219.i.i
  br i1 %i.ee, label %worse_candidate.exit233.thread.i.i, label %.split362.i.i

.split362.i.i:                                    ; preds = %bb.s
  %i.ef = icmp ule i32 %.043.lcssa.i218.i.i, %.0.lcssa.i219.i.i
  %i.eg = icmp ult i32 %i.cu, %i.cs
  %spec.select.i224.i.i = and i1 %i.eg, %i.ef
  br i1 %spec.select.i224.i.i, label %worse_candidate.exit233.thread.i.i, label %worse_candidate.exit233.thread360.i.i

worse_candidate.exit233.i.i:                      ; preds = %.lr.ph.i226.i.i
  br i1 %.1.i231.i.i, label %worse_candidate.exit233.thread.i.i, label %worse_candidate.exit233.thread360.i.i

worse_candidate.exit233.thread.i.i:               ; preds = %worse_candidate.exit233.i.i, %.split362.i.i, %bb.s, %._crit_edge.i215.i.i, %bb.o
  store i32 %i.cu, ptr %i.av, align 4, !tbaa !68
end_hunk_0
begin_hunk_1_@vivify_round:bb.a
  %cond.i280.i.i = icmp eq i32 %i.hf, %i.hi
  br i1 %cond.i280.i.i, label %bb.ab, label %worse_candidate.exit281.i.i, !llvm.loop !111

._crit_edge.i263.i.i:                             ; preds = %bb.ab, %.thread.i260.i.i
  %.045.lcssa.i264.i.i = phi ptr [ %i.gl, %.thread.i260.i.i ], [ %i.gx, %bb.ab ]
  %.044.lcssa.i265.i.i = phi ptr [ %i.fz, %.thread.i260.i.i ], [ %i.gw, %bb.ab ]
  %.043.lcssa.i266.i.i = phi i32 [ -1, %.thread.i260.i.i ], [ %i.hb, %bb.ab ] ; 2 uses
  %.0.lcssa.i267.i.i = phi i32 [ -1, %.thread.i260.i.i ], [ %i.hc, %bb.ab ] ; 2 uses
  %.lcssa3.i268.i.i = phi i1 [ %i.gt, %.thread.i260.i.i ], [ %i.gy, %bb.ab ]
  %.lcssa.i269.i.i = phi i1 [ %i.gu, %.thread.i260.i.i ], [ %i.gz, %bb.ab ]
  %i.hl = icmp eq ptr %.044.lcssa.i265.i.i, %i.gs
  %or.cond.i270.i.i = select i1 %.lcssa3.i268.i.i, i1 %i.hl, i1 false
  br i1 %or.cond.i270.i.i, label %.backedge.i.i.backedge, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i263.i.i
  %i.hm = icmp eq ptr %.045.lcssa.i264.i.i, %i.gp
  %brmerge.not.i271.i.i = select i1 %i.hm, i1 %.lcssa.i269.i.i, i1 false
  br i1 %brmerge.not.i271.i.i, label %.preheader387.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hn = icmp ult i32 %.043.lcssa.i266.i.i, %.0.lcssa.i267.i.i
  br i1 %i.hn, label %.backedge.i.i.backedge, label %.split368.i.i

.split368.i.i:                                    ; preds = %bb.ad
  %i.ho = icmp ule i32 %.043.lcssa.i266.i.i, %.0.lcssa.i267.i.i
  %i.hp = icmp ult i32 %i.gg, %i.fx
  %spec.select.i272.i.i = and i1 %i.hp, %i.ho
  br i1 %spec.select.i272.i.i, label %.backedge.i.i.backedge, label %.preheader387.i.i

worse_candidate.exit281.i.i:                      ; preds = %.lr.ph.i274.i.i
  br i1 %.1.i279.i.i, label %.backedge.i.i.backedge, label %.preheader387.i.i

.backedge.i.i.backedge:                           ; preds = %worse_candidate.exit281.i.i, %.split368.i.i, %bb.ad, %._crit_edge.i263.i.i, %bb.z
  br label %.backedge.i.i, !llvm.loop !112

.preheader387.i.i:                                ; preds = %worse_candidate.exit281.i.i, %.split368.i.i, %bb.ac, %bb.aa
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ge ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %worse_candidate.exit305.i.i, %.preheader387.i.i
  %.1.i.i = phi i64 [ %i.hr, %worse_candidate.exit305.i.i ], [ %.0183.i.i, %.preheader387.i.i ] ; 2 uses
  %i.hr = add i64 %.1.i.i, -1                     ; 5 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !68 ; 3 uses
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val209.i.i, i64 %i.hu ; 3 uses
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = and i32 %i.hw, 67108864
  %.not50.i283.i.i = icmp eq i32 %i.hx, 0         ; 2 uses
  br i1 %.not50.i259.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.not50.i283.i.i, label %.thread.i284.i.i, label %worse_candidate.exit305.i.i

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not50.i283.i.i, label %worse_candidate.exit305.thread.i.i, label %.thread.i284.i.i

.thread.i284.i.i:                                 ; preds = %bb.ag, %bb.af
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 12 ; 3 uses
  %i.hz = load i32, ptr %i.ga, align 4, !tbaa !83 ; 2 uses
  %i.ia = zext i32 %i.hz to i64
  %.idx.i285.i.i = shl nuw nsw i64 %i.ia, 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i285.i.i ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !83 ; 2 uses
  %i.ie = zext i32 %i.id to i64
  %.idx17.i286.i.i = shl nuw nsw i64 %i.ie, 2
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx17.i286.i.i ; 2 uses
  %i.ig = icmp ne i32 %i.hz, 0                    ; 2 uses
  %i.ih = icmp ne i32 %i.id, 0                    ; 2 uses
  %i.ii = select i1 %i.ig, i1 %i.ih, i1 false
  br i1 %i.ii, label %.lr.ph.i298.i.i, label %._crit_edge.i287.i.i

bb.ah:                                            ; preds = %.lr.ph.i298.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.04411.i299.i.i, i64 4 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.04510.i300.i.i, i64 4 ; 3 uses
  %i.il = icmp ne ptr %i.ik, %i.ib                ; 2 uses
  %i.im = icmp ne ptr %i.ij, %i.if                ; 2 uses
  %i.in = select i1 %i.il, i1 %i.im, i1 false
  br i1 %i.in, label %.lr.ph.i298.i.i, label %._crit_edge.i287.i.i, !llvm.loop !111

.lr.ph.i298.i.i:                                  ; preds = %.thread.i284.i.i, %bb.ah
  %.04411.i299.i.i = phi ptr [ %i.ij, %bb.ah ], [ %i.hy, %.thread.i284.i.i ] ; 2 uses
  %.04510.i300.i.i = phi ptr [ %i.ik, %bb.ah ], [ %i.fz, %.thread.i284.i.i ] ; 2 uses
  %.0479.i301.i.i = phi i1 [ %.1.i303.i.i, %bb.ah ], [ undef, %.thread.i284.i.i ]
  %i.io = load i32, ptr %.04510.i300.i.i, align 4, !tbaa !68 ; 2 uses
  %i.ip = load i32, ptr %.04411.i299.i.i, align 4, !tbaa !68 ; 2 uses
  %i.iq = zext i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !68 ; 3 uses
  %i.it = zext i32 %i.ip to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !68 ; 3 uses
  %i.iw = icmp ult i32 %i.is, %i.iv
  %i.ix = icmp ule i32 %i.is, %i.iv
  %..047.i302.i.i = select i1 %i.ix, i1 %.0479.i301.i.i, i1 false
  %.1.i303.i.i = select i1 %i.iw, i1 true, i1 %..047.i302.i.i ; 2 uses
  %cond.i304.i.i = icmp eq i32 %i.is, %i.iv
  br i1 %cond.i304.i.i, label %bb.ah, label %worse_candidate.exit305.i.i, !llvm.loop !111

._crit_edge.i287.i.i:                             ; preds = %bb.ah, %.thread.i284.i.i
  %.045.lcssa.i288.i.i = phi ptr [ %i.fz, %.thread.i284.i.i ], [ %i.ik, %bb.ah ]
  %.044.lcssa.i289.i.i = phi ptr [ %i.hy, %.thread.i284.i.i ], [ %i.ij, %bb.ah ]
  %.043.lcssa.i290.i.i = phi i32 [ -1, %.thread.i284.i.i ], [ %i.io, %bb.ah ] ; 2 uses
  %.0.lcssa.i291.i.i = phi i32 [ -1, %.thread.i284.i.i ], [ %i.ip, %bb.ah ] ; 2 uses
  %.lcssa3.i292.i.i = phi i1 [ %i.ig, %.thread.i284.i.i ], [ %i.il, %bb.ah ]
  %.lcssa.i293.i.i = phi i1 [ %i.ih, %.thread.i284.i.i ], [ %i.im, %bb.ah ]
  %i.iy = icmp eq ptr %.044.lcssa.i289.i.i, %i.if
  %or.cond.i294.i.i = select i1 %.lcssa3.i292.i.i, i1 %i.iy, i1 false
  br i1 %or.cond.i294.i.i, label %worse_candidate.exit305.i.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i287.i.i
  %i.iz = icmp eq ptr %.045.lcssa.i288.i.i, %i.ib
  %brmerge.not.i295.i.i = select i1 %i.iz, i1 %.lcssa.i293.i.i, i1 false
  br i1 %brmerge.not.i295.i.i, label %worse_candidate.exit305.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ja = icmp ult i32 %.043.lcssa.i290.i.i, %.0.lcssa.i291.i.i
  br i1 %i.ja, label %worse_candidate.exit305.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jb = icmp ule i32 %.043.lcssa.i290.i.i, %.0.lcssa.i291.i.i
  %i.jc = icmp ult i32 %i.fx, %i.ht
  %spec.select.i296.i.i = and i1 %i.jc, %i.jb
  br label %worse_candidate.exit305.i.i

worse_candidate.exit305.i.i:                      ; preds = %.lr.ph.i298.i.i, %bb.ak, %bb.aj, %._crit_edge.i287.i.i, %bb.af
  %.3.i297.i.i = phi i1 [ true, %._crit_edge.i287.i.i ], [ true, %bb.af ], [ true, %bb.aj ], [ %spec.select.i296.i.i, %bb.ak ], [ %.1.i303.i.i, %.lr.ph.i298.i.i ]
  %i.jd = icmp ne i64 %.1.i.i, %i.gb
  %or.cond.not.i.i = and i1 %i.jd, %.3.i297.i.i
  br i1 %or.cond.not.i.i, label %bb.ae, label %worse_candidate.exit305.thread.i.i, !llvm.loop !113

worse_candidate.exit305.thread.i.i:               ; preds = %worse_candidate.exit305.i.i, %bb.ai, %bb.ag
  %.not.i6.i = icmp ult i64 %i.ge, %i.hr
  br i1 %.not.i6.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %worse_candidate.exit305.thread.i.i
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hr
  store i32 %i.ht, ptr %i.hq, align 4, !tbaa !68
  store i32 %i.gg, ptr %i.je, align 4, !tbaa !68
  br label %bb.y

bb.am:                                            ; preds = %worse_candidate.exit305.thread.i.i
  %i.jf = load i32, ptr %i.az, align 4, !tbaa !68
  store i32 %i.jf, ptr %i.hq, align 4, !tbaa !68
  store i32 %i.gg, ptr %i.az, align 4, !tbaa !68
  %i.jg = sub i64 %i.ge, %.0189.i.i
  %i.jh = sub i64 %.0187.i.i, %i.ge
  %i.ji = icmp ult i64 %i.jg, %i.jh               ; 4 uses
  %i.jj = add i64 %.1185.i.i, 2                   ; 2 uses
  %.0189..i.i = select i1 %i.ji, i64 %.0189.i.i, i64 %i.jj ; 2 uses
  %.1185..0187.i.i = select i1 %i.ji, i64 %.1185.i.i, i64 %.0187.i.i ; 2 uses
  %..0189.i.i = select i1 %i.ji, i64 %i.jj, i64 %.0189.i.i ; 3 uses
  %.0187..1185.i.i = select i1 %i.ji, i64 %.0187.i.i, i64 %.1185.i.i ; 3 uses
  %i.jk = sub i64 %.1185..0187.i.i, %.0189..i.i
  %i.jl = icmp ugt i64 %i.jk, 10
  br i1 %i.jl, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.jm = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %i.jn = load ptr, ptr %i.as, align 8, !tbaa !86 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ap, i64 noundef 8) #7
  %.pre555.i.i = load ptr, ptr %i.ar, align 8, !tbaa !85
  %.pre556.i.i = load ptr, ptr %i.as, align 8, !tbaa !86
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jp = phi ptr [ %.pre556.i.i, %bb.ao ], [ %i.jn, %bb.an ]
  %i.jq = phi ptr [ %.pre555.i.i, %bb.ao ], [ %i.jm, %bb.an ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 3 uses
  store ptr %i.jr, ptr %i.ar, align 8, !tbaa !85
  store i64 %..0189.i.i, ptr %i.jq, align 8, !tbaa !67
  %i.js = icmp eq ptr %i.jr, %i.jp
  br i1 %i.js, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ap, i64 noundef 8) #7
  %.pre557.i.i = load ptr, ptr %i.ar, align 8, !tbaa !85
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jt = phi ptr [ %.pre557.i.i, %bb.aq ], [ %i.jr, %bb.ap ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %i.ju, ptr %i.ar, align 8, !tbaa !85
  store i64 %.0187..1185.i.i, ptr %i.jt, align 8, !tbaa !67
  br label %.backedge

bb.as:                                            ; preds = %bb.am
  %i.jv = sub i64 %.0187..1185.i.i, %..0189.i.i
  %i.jw = icmp ugt i64 %i.jv, 10
  br i1 %i.jw, label %.backedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jx = load ptr, ptr %i.ap, align 8, !tbaa !87
  %i.jy = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 3 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %.thread.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !67
  %i.kc = getelementptr inbounds i8, ptr %i.jy, i64 -16 ; 2 uses
  store ptr %i.kc, ptr %i.ar, align 8, !tbaa !85
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !67
  br label %.backedge

.backedge:                                        ; preds = %bb.au, %bb.as, %bb.ar
  %.0189.i.i.be = phi i64 [ %..0189.i.i, %bb.as ], [ %.0189..i.i, %bb.ar ], [ %i.kd, %bb.au ]
  %.0187.i.i.be = phi i64 [ %.0187..1185.i.i, %bb.as ], [ %.1185..0187.i.i, %bb.ar ], [ %i.kb, %bb.au ]
  br label %bb.i

.thread.i.i:                                      ; preds = %bb.at, %bb.h
  %.not200472.i.i = icmp eq i64 %i.an, 0
  br i1 %.not200472.i.i, label %.preheader.i.i, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %.thread.i.i
  %2 = getelementptr i8, ptr %i.ah, i64 816
  %.val204.i.i = load ptr, ptr %2, align 8, !tbaa !82 ; 2 uses
  br label %bb.av

.preheader.i.i:                                   ; preds = %worse_candidate.exit329.thread377.i.i, %.thread.i.i
  %.not201474.i.i = icmp eq i64 %i.ak, 8
  br i1 %.not201474.i.i, label %sort_vivification_candidates.exit, label %.lr.ph476.i.i

.lr.ph476.i.i:                                    ; preds = %.preheader.i.i
  %3 = getelementptr i8, ptr %i.ah, i64 816
  %.val.i8.i = load ptr, ptr %3, align 8, !tbaa !82 ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 3)
  br label %bb.bb

bb.av:                                            ; preds = %worse_candidate.exit329.thread377.i.i, %.lr.ph.i7.i
  %.0180473.i.i = phi i64 [ %i.an, %.lr.ph.i7.i ], [ %i.lx, %worse_candidate.exit329.thread377.i.i ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.0180473.i.i ; 3 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !68 ; 3 uses
  %i.kg = getelementptr i8, ptr %i.ke, i64 -4     ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !68 ; 3 uses
  %i.ki = zext i32 %i.kf to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.val204.i.i, i64 %i.ki ; 3 uses
  %i.kk = zext i32 %i.kh to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.val204.i.i, i64 %i.kk ; 3 uses
  %i.km = load i32, ptr %i.kj, align 4
  %i.kn = and i32 %i.km, 67108864
  %.not.i306.i.i = icmp eq i32 %i.kn, 0
  %i.ko = load i32, ptr %i.kl, align 4
  %i.kp = and i32 %i.ko, 67108864
  %.not50.i307.i.i = icmp eq i32 %i.kp, 0         ; 2 uses
  br i1 %.not.i306.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  br i1 %.not50.i307.i.i, label %.thread.i308.i.i, label %worse_candidate.exit329.thread.i.i

bb.ax:                                            ; preds = %bb.av
  br i1 %.not50.i307.i.i, label %worse_candidate.exit329.thread377.i.i, label %.thread.i308.i.i

.thread.i308.i.i:                                 ; preds = %bb.ax, %bb.aw
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 12 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 12 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !83 ; 2 uses
  %i.ku = zext i32 %i.kt to i64
  %.idx.i309.i.i = shl nuw nsw i64 %i.ku, 2
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 %.idx.i309.i.i ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !83 ; 2 uses
  %i.ky = zext i32 %i.kx to i64
  %.idx17.i310.i.i = shl nuw nsw i64 %i.ky, 2
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx17.i310.i.i ; 2 uses
  %i.la = icmp ne i32 %i.kt, 0                    ; 2 uses
  %i.lb = icmp ne i32 %i.kx, 0                    ; 2 uses
  %i.lc = select i1 %i.la, i1 %i.lb, i1 false
  br i1 %i.lc, label %.lr.ph.i322.i.i, label %._crit_edge.i311.i.i

bb.ay:                                            ; preds = %.lr.ph.i322.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.04411.i323.i.i, i64 4 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.04510.i324.i.i, i64 4 ; 3 uses
  %i.lf = icmp ne ptr %i.le, %i.kv                ; 2 uses
  %i.lg = icmp ne ptr %i.ld, %i.kz                ; 2 uses
  %i.lh = select i1 %i.lf, i1 %i.lg, i1 false
  br i1 %i.lh, label %.lr.ph.i322.i.i, label %._crit_edge.i311.i.i, !llvm.loop !111

.lr.ph.i322.i.i:                                  ; preds = %.thread.i308.i.i, %bb.ay
  %.04411.i323.i.i = phi ptr [ %i.ld, %bb.ay ], [ %i.kr, %.thread.i308.i.i ] ; 2 uses
  %.04510.i324.i.i = phi ptr [ %i.le, %bb.ay ], [ %i.kq, %.thread.i308.i.i ] ; 2 uses
  %.0479.i325.i.i = phi i1 [ %.1.i327.i.i, %bb.ay ], [ undef, %.thread.i308.i.i ]
  %i.li = load i32, ptr %.04510.i324.i.i, align 4, !tbaa !68 ; 2 uses
  %i.lj = load i32, ptr %.04411.i323.i.i, align 4, !tbaa !68 ; 2 uses
  %i.lk = zext i32 %i.li to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !68 ; 3 uses
  %i.ln = zext i32 %i.lj to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !68 ; 3 uses
  %i.lq = icmp ult i32 %i.lm, %i.lp
  %i.lr = icmp ule i32 %i.lm, %i.lp
  %..047.i326.i.i = select i1 %i.lr, i1 %.0479.i325.i.i, i1 false
  %.1.i327.i.i = select i1 %i.lq, i1 true, i1 %..047.i326.i.i ; 2 uses
  %cond.i328.i.i = icmp eq i32 %i.lm, %i.lp
  br i1 %cond.i328.i.i, label %bb.ay, label %worse_candidate.exit329.i.i, !llvm.loop !111

._crit_edge.i311.i.i:                             ; preds = %bb.ay, %.thread.i308.i.i
  %.045.lcssa.i312.i.i = phi ptr [ %i.kq, %.thread.i308.i.i ], [ %i.le, %bb.ay ]
  %.044.lcssa.i313.i.i = phi ptr [ %i.kr, %.thread.i308.i.i ], [ %i.ld, %bb.ay ]
  %.043.lcssa.i314.i.i = phi i32 [ -1, %.thread.i308.i.i ], [ %i.li, %bb.ay ] ; 2 uses
  %.0.lcssa.i315.i.i = phi i32 [ -1, %.thread.i308.i.i ], [ %i.lj, %bb.ay ] ; 2 uses
  %.lcssa3.i316.i.i = phi i1 [ %i.la, %.thread.i308.i.i ], [ %i.lf, %bb.ay ]
  %.lcssa.i317.i.i = phi i1 [ %i.lb, %.thread.i308.i.i ], [ %i.lg, %bb.ay ]
  %i.ls = icmp eq ptr %.044.lcssa.i313.i.i, %i.kz
  %or.cond.i318.i.i = select i1 %.lcssa3.i316.i.i, i1 %i.ls, i1 false
  br i1 %or.cond.i318.i.i, label %worse_candidate.exit329.thread.i.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i311.i.i
  %i.lt = icmp eq ptr %.045.lcssa.i312.i.i, %i.kv
  %brmerge.not.i319.i.i = select i1 %i.lt, i1 %.lcssa.i317.i.i, i1 false
  br i1 %brmerge.not.i319.i.i, label %worse_candidate.exit329.thread377.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lu = icmp ult i32 %.043.lcssa.i314.i.i, %.0.lcssa.i315.i.i
  br i1 %i.lu, label %worse_candidate.exit329.thread.i.i, label %.split379.i.i

.split379.i.i:                                    ; preds = %bb.ba
  %i.lv = icmp ule i32 %.043.lcssa.i314.i.i, %.0.lcssa.i315.i.i
  %i.lw = icmp ult i32 %i.kf, %i.kh
  %spec.select.i320.i.i = and i1 %i.lw, %i.lv
  br i1 %spec.select.i320.i.i, label %worse_candidate.exit329.thread.i.i, label %worse_candidate.exit329.thread377.i.i

worse_candidate.exit329.i.i:                      ; preds = %.lr.ph.i322.i.i
  br i1 %.1.i327.i.i, label %worse_candidate.exit329.thread.i.i, label %worse_candidate.exit329.thread377.i.i

worse_candidate.exit329.thread.i.i:               ; preds = %worse_candidate.exit329.i.i, %.split379.i.i, %bb.ba, %._crit_edge.i311.i.i, %bb.aw
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !68
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !68
  br label %worse_candidate.exit329.thread377.i.i

worse_candidate.exit329.thread377.i.i:            ; preds = %worse_candidate.exit329.thread.i.i, %worse_candidate.exit329.i.i, %.split379.i.i, %bb.az, %bb.ax
  %i.lx = add i64 %.0180473.i.i, -1               ; 2 uses
  %.not200.i.i = icmp eq i64 %i.lx, 0
  br i1 %.not200.i.i, label %.preheader.i.i, label %bb.av, !llvm.loop !114

bb.bb:                                            ; preds = %worse_candidate.exit353.thread382.i.i, %.lr.ph476.i.i
  %.0179475.i.i = phi i64 [ 2, %.lr.ph476.i.i ], [ %i.nt, %worse_candidate.exit353.thread382.i.i ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.0179475.i.i
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !68 ; 3 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.val.i8.i, i64 %i.ma ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 12 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %worse_candidate.exit353.thread.i.i, %bb.bb
  %.0.i.i = phi i64 [ %.0179475.i.i, %bb.bb ], [ %i.ns, %worse_candidate.exit353.thread.i.i ] ; 2 uses
  %i.me = getelementptr [4 x i8], ptr %i.ae, i64 %.0.i.i ; 3 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 -4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !68 ; 3 uses
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.val.i8.i, i64 %i.mh ; 3 uses
  %i.mj = load i32, ptr %i.mb, align 4
  %i.mk = and i32 %i.mj, 67108864
  %.not.i330.i.i = icmp eq i32 %i.mk, 0
  %i.ml = load i32, ptr %i.mi, align 4
  %i.mm = and i32 %i.ml, 67108864
  %.not50.i331.i.i = icmp eq i32 %i.mm, 0         ; 2 uses
  br i1 %.not.i330.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not50.i331.i.i, label %.thread.i332.i.i, label %worse_candidate.exit353.thread.i.i

bb.be:                                            ; preds = %bb.bc
  br i1 %.not50.i331.i.i, label %worse_candidate.exit353.thread382.i.i, label %.thread.i332.i.i

.thread.i332.i.i:                                 ; preds = %bb.be, %bb.bd
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 12 ; 3 uses
  %i.mo = load i32, ptr %i.md, align 4, !tbaa !83 ; 2 uses
  %i.mp = zext i32 %i.mo to i64
  %.idx.i333.i.i = shl nuw nsw i64 %i.mp, 2
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.idx.i333.i.i ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !83 ; 2 uses
  %i.mt = zext i32 %i.ms to i64
  %.idx17.i334.i.i = shl nuw nsw i64 %i.mt, 2
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.idx17.i334.i.i ; 2 uses
  %i.mv = icmp ne i32 %i.mo, 0                    ; 2 uses
  %i.mw = icmp ne i32 %i.ms, 0                    ; 2 uses
  %i.mx = select i1 %i.mv, i1 %i.mw, i1 false
  br i1 %i.mx, label %.lr.ph.i346.i.i, label %._crit_edge.i335.i.i

bb.bf:                                            ; preds = %.lr.ph.i346.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %.04411.i347.i.i, i64 4 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.04510.i348.i.i, i64 4 ; 3 uses
  %i.na = icmp ne ptr %i.mz, %i.mq                ; 2 uses
  %i.nb = icmp ne ptr %i.my, %i.mu                ; 2 uses
  %i.nc = select i1 %i.na, i1 %i.nb, i1 false
  br i1 %i.nc, label %.lr.ph.i346.i.i, label %._crit_edge.i335.i.i, !llvm.loop !111

.lr.ph.i346.i.i:                                  ; preds = %.thread.i332.i.i, %bb.bf
  %.04411.i347.i.i = phi ptr [ %i.my, %bb.bf ], [ %i.mn, %.thread.i332.i.i ] ; 2 uses
  %.04510.i348.i.i = phi ptr [ %i.mz, %bb.bf ], [ %i.mc, %.thread.i332.i.i ] ; 2 uses
  %.0479.i349.i.i = phi i1 [ %.1.i351.i.i, %bb.bf ], [ undef, %.thread.i332.i.i ]
  %i.nd = load i32, ptr %.04510.i348.i.i, align 4, !tbaa !68 ; 2 uses
  %i.ne = load i32, ptr %.04411.i347.i.i, align 4, !tbaa !68 ; 2 uses
  %i.nf = zext i32 %i.nd to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !68 ; 3 uses
  %i.ni = zext i32 %i.ne to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !68 ; 3 uses
  %i.nl = icmp ult i32 %i.nh, %i.nk
  %i.nm = icmp ule i32 %i.nh, %i.nk
  %..047.i350.i.i = select i1 %i.nm, i1 %.0479.i349.i.i, i1 false
  %.1.i351.i.i = select i1 %i.nl, i1 true, i1 %..047.i350.i.i ; 2 uses
  %cond.i352.i.i = icmp eq i32 %i.nh, %i.nk
  br i1 %cond.i352.i.i, label %bb.bf, label %worse_candidate.exit353.i.i, !llvm.loop !111

._crit_edge.i335.i.i:                             ; preds = %bb.bf, %.thread.i332.i.i
  %.045.lcssa.i336.i.i = phi ptr [ %i.mc, %.thread.i332.i.i ], [ %i.mz, %bb.bf ]
  %.044.lcssa.i337.i.i = phi ptr [ %i.mn, %.thread.i332.i.i ], [ %i.my, %bb.bf ]
  %.043.lcssa.i338.i.i = phi i32 [ -1, %.thread.i332.i.i ], [ %i.nd, %bb.bf ] ; 2 uses
  %.0.lcssa.i339.i.i = phi i32 [ -1, %.thread.i332.i.i ], [ %i.ne, %bb.bf ] ; 2 uses
  %.lcssa3.i340.i.i = phi i1 [ %i.mv, %.thread.i332.i.i ], [ %i.na, %bb.bf ]
  %.lcssa.i341.i.i = phi i1 [ %i.mw, %.thread.i332.i.i ], [ %i.nb, %bb.bf ]
  %i.nn = icmp eq ptr %.044.lcssa.i337.i.i, %i.mu
  %or.cond.i342.i.i = select i1 %.lcssa3.i340.i.i, i1 %i.nn, i1 false
  br i1 %or.cond.i342.i.i, label %worse_candidate.exit353.thread.i.i, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i335.i.i
  %i.no = icmp eq ptr %.045.lcssa.i336.i.i, %i.mq
  %brmerge.not.i343.i.i = select i1 %i.no, i1 %.lcssa.i341.i.i, i1 false
  br i1 %brmerge.not.i343.i.i, label %worse_candidate.exit353.thread382.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.np = icmp ult i32 %.043.lcssa.i338.i.i, %.0.lcssa.i339.i.i
  br i1 %i.np, label %worse_candidate.exit353.thread.i.i, label %.split384.i.i

.split384.i.i:                                    ; preds = %bb.bh
  %i.nq = icmp ule i32 %.043.lcssa.i338.i.i, %.0.lcssa.i339.i.i
  %i.nr = icmp ult i32 %i.lz, %i.mg
  %spec.select.i344.i.i = and i1 %i.nr, %i.nq
  br i1 %spec.select.i344.i.i, label %worse_candidate.exit353.thread.i.i, label %worse_candidate.exit353.thread382.i.i

worse_candidate.exit353.i.i:                      ; preds = %.lr.ph.i346.i.i
  br i1 %.1.i351.i.i, label %worse_candidate.exit353.thread.i.i, label %worse_candidate.exit353.thread382.i.i
end_hunk_1
