inline.NumInlined: 67
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11duckdb_zstdL14COVER_ctx_initEPNS_11COVER_ctx_tEPKvPKmjjd:bb.a
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bu = trunc i64 %i.ak to i32
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.20, i32 noundef %i.p, i32 noundef %i.bu) #22 ; 0 uses
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bx = tail call i32 @fflush(ptr noundef %i.bw) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l
  store ptr %1, ptr %0, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.by, align 8, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %wide.trip.count.i, ptr %i.bz, align 8, !tbaa !45
  %i.ca = zext i32 %i.o to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !46
  %i.cc = zext i32 %i.p to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !47
  %i.ce = sub i64 %i.aj, %i.am
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !22
  %i.ch = shl i64 %i.cf, 2                        ; 2 uses
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.ch) #25 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !33
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.ch) #25 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !35
  %i.cm = add i32 %3, 1                           ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = tail call noalias ptr @malloc(i64 noundef %i.co) #25 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !36
  %.not = icmp eq ptr %i.ci, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread
  %.not97 = icmp eq ptr %i.ck, null
  %.not98 = icmp eq ptr %i.cp, null
  %or.cond100 = or i1 %.not97, %.not98
  br i1 %or.cond100, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n, %.thread
  %i.cr = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cu = tail call i64 @fwrite(ptr nonnull @.str.21, i64 35, i64 1, ptr %i.ct) #24 ; 0 uses
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cw = tail call i32 @fflush(ptr noundef %i.cv) ; 0 uses
  %.pre131 = load ptr, ptr %i.cj, align 8, !tbaa !33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cx = phi ptr [ %.pre131, %bb.p ], [ %i.ci, %bb.o ] ; 2 uses
  %.not.i118 = icmp eq ptr %i.cx, null
  br i1 %.not.i118, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.cx) #23
  store ptr null, ptr %i.cj, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !34 ; 2 uses
  %.not17.i = icmp eq ptr %i.cz, null
  br i1 %.not17.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.cz) #23
  store ptr null, ptr %i.cy, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.da = load ptr, ptr %i.cl, align 8, !tbaa !35 ; 2 uses
  %.not18.i = icmp eq ptr %i.da, null
  br i1 %.not18.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.da) #23
  store ptr null, ptr %i.cl, align 8, !tbaa !35
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !36 ; 2 uses
  %.not19.i = icmp eq ptr %i.db, null
  br i1 %.not19.i, label %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.db) #23
  store ptr null, ptr %i.cq, align 8, !tbaa !36
  br label %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit

bb.y:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.dc, align 8, !tbaa !34
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i32 %4, ptr %i.dd, align 8, !tbaa !48
  store i64 0, ptr %i.cp, align 8, !tbaa !7
  %umax = tail call i32 @llvm.umax.i32(i32 %i.cm, i32 2) ; 2 uses
  %wide.trip.count = zext i32 %umax to i64
  %i.de = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.de, 3                    ; 3 uses
  %i.df = add i32 %umax, -2
  %i.dg = icmp ult i32 %i.df, 3
  br i1 %i.dg, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.y
  %unroll_iter = and i64 %i.de, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.new
  %i.dh = phi i64 [ 0, %.new ], [ %i.ea, %bb.z ]
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.3, %bb.z ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.z ]
  %i.di = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !7
  %i.dl = add i64 %i.dk, %i.dh                    ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.do = getelementptr i8, ptr %i.dn, i64 -8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !7
  %i.dq = add i64 %i.dp, %i.dl                    ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !7
  %i.dv = add i64 %i.du, %i.dq                    ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next.1
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !7
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.dy = getelementptr i8, ptr %i.dx, i64 -8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !7
  %i.ea = add i64 %i.dz, %i.dv                    ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next.2
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !7
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.z, !llvm.loop !49

.unr-lcssa:                                       ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.y
  %.epil.init = phi i64 [ 0, %bb.y ], [ %i.ea, %.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %bb.y ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod229 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod229)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %i.ec = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.eg, %bb.aa ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.aa ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.ed = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ee = getelementptr i8, ptr %i.ed, i64 -8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !7
  %i.eg = add i64 %i.ef, %i.ec                    ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.epil
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !7
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.aa, !llvm.loop !50

.epilog-lcssa:                                    ; preds = %bb.aa, %.unr-lcssa
  %i.ei = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.epilog-lcssa
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.el = tail call i64 @fwrite(ptr nonnull @.str.22, i64 34, i64 1, ptr %i.ek) #24 ; 0 uses
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.en = tail call i32 @fflush(ptr noundef %i.em) ; 0 uses
  %.pre = load i64, ptr %i.cg, align 8, !tbaa !22
  %.pre130.pre = load ptr, ptr %i.cj, align 8, !tbaa !33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.epilog-lcssa
  %.pre130 = phi ptr [ %.pre130.pre, %bb.ab ], [ %i.ci, %.epilog-lcssa ] ; 3 uses
  %i.eo = phi i64 [ %.pre, %bb.ab ], [ %i.cf, %.epilog-lcssa ] ; 7 uses
  %.not126 = icmp eq i64 %i.eo, 0
  br i1 %.not126, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ac
  %min.iters.check203 = icmp ult i64 %i.eo, 20
  br i1 %min.iters.check203, label %.lr.ph.preheader218, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = icmp eq i64 %i.eq, 4294967295
  %i.es = icmp ugt i64 %i.ep, 4294967295
  %i.et = or i1 %i.er, %i.es
  br i1 %i.et, label %.lr.ph.preheader218, label %vector.ph204

vector.ph204:                                     ; preds = %vector.scevcheck
  %n.vec206 = and i64 %i.eo, 8589934584           ; 4 uses
  %6 = trunc i64 %n.vec206 to i32
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph204
  %index208 = phi i64 [ 0, %vector.ph204 ], [ %index.next209, %vector.body207 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph204 ], [ %vec.ind.next, %vector.body207 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.pre130, i64 %index208 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x i32> %vec.ind, ptr %i.eu, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.ev, align 4, !tbaa !3
  %index.next209 = add nuw i64 %index208, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ew = icmp eq i64 %index.next209, %n.vec206
  br i1 %i.ew, label %middle.block210, label %vector.body207, !llvm.loop !52

middle.block210:                                  ; preds = %vector.body207
  %cmp.n211 = icmp eq i64 %i.eo, %n.vec206
  br i1 %cmp.n211, label %._crit_edge, label %.lr.ph.preheader218

.lr.ph.preheader218:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block210
  %.ph219 = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec206, %middle.block210 ]
  %.0125.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %6, %middle.block210 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader218, %.lr.ph
  %i.ex = phi i64 [ %9, %.lr.ph ], [ %.ph219, %.lr.ph.preheader218 ]
  %.0125 = phi i32 [ %8, %.lr.ph ], [ %.0125.ph, %.lr.ph.preheader218 ] ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.pre130, i64 %i.ex
  store i32 %.0125, ptr %7, align 4, !tbaa !3
  %8 = add i32 %.0125, 1                          ; 2 uses
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.ey = icmp ugt i64 %i.eo, %9
  br i1 %i.ey, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %middle.block210, %bb.ac
  store ptr %0, ptr @_ZN11duckdb_zstdL10g_coverCtxE, align 8, !tbaa !54
  %i.ez = load i32, ptr %i.dd, align 8, !tbaa !48
  %i.fa = icmp ult i32 %i.ez, 9
  %i.fb = select i1 %i.fa, ptr @_ZN11duckdb_zstdL17COVER_strict_cmp8EPKvS1_, ptr @_ZN11duckdb_zstdL16COVER_strict_cmpEPKvS1_
  tail call void @qsort(ptr noundef %.pre130, i64 noundef %i.eo, i64 noundef 4, ptr noundef nonnull %i.fb)
  %i.fc = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.fd = icmp sgt i32 %i.fc, 1
  br i1 %i.fd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ff = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %i.fe) #24 ; 0 uses
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fh = tail call i32 @fflush(ptr noundef %i.fg) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  %i.fi = load ptr, ptr %i.cj, align 8, !tbaa !33 ; 2 uses
  %i.fj = load i64, ptr %i.cg, align 8, !tbaa !22 ; 3 uses
  %i.fk = load i32, ptr %i.dd, align 8, !tbaa !48
  %i.fl = icmp ult i32 %i.fk, 9
  %i.fm = select i1 %i.fl, ptr @_ZN11duckdb_zstdL10COVER_cmp8EPNS_11COVER_ctx_tEPKvS3_, ptr @_ZN11duckdb_zstdL9COVER_cmpEPNS_11COVER_ctx_tEPKvS3_
  %.not.i119 = icmp eq i64 %i.fj, 0
  br i1 %.not.i119, label %_ZN11duckdb_zstdL13COVER_groupByEPKvmmPNS_11COVER_ctx_tEPFiS3_S1_S1_EPFvS3_S1_S1_E.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ae, %_ZN11duckdb_zstdL11COVER_groupEPNS_11COVER_ctx_tEPKvS3_.exit.i
  %.0192.i = phi i64 [ %.1.lcssa.i, %_ZN11duckdb_zstdL11COVER_groupEPNS_11COVER_ctx_tEPKvS3_.exit.i ], [ 0, %bb.ae ] ; 3 uses
  %.0201.i = phi ptr [ %.0.i.lcssa, %_ZN11duckdb_zstdL11COVER_groupEPNS_11COVER_ctx_tEPKvS3_.exit.i ], [ %i.fi, %bb.ae ] ; 6 uses
  %i.fn = add nuw i64 %.0192.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 %i.fn) ; 3 uses
  %i.fo = add i64 %umax.i, -1                     ; 2 uses
  %.0.i154 = getelementptr inbounds nuw i8, ptr %.0201.i, i64 4 ; 2 uses
  %exitcond.not.i120155 = icmp eq i64 %.0192.i, %i.fo
  br i1 %exitcond.not.i120155, label %.critedge.i, label %.lr.ph159

bb.af:                                            ; preds = %.lr.ph159
  %.0.i = getelementptr inbounds nuw i8, ptr %.0.i158, i64 4 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %.1.i, %i.fo
  br i1 %exitcond.not.i120, label %.critedge.i, label %.lr.ph159, !llvm.loop !55

.lr.ph159:                                        ; preds = %.preheader.i, %bb.af
  %.0.i158 = phi ptr [ %.0.i, %bb.af ], [ %.0.i154, %.preheader.i ] ; 5 uses
  %.020.pn.i157 = phi ptr [ %.0.i158, %bb.af ], [ %.0201.i, %.preheader.i ]
  %.1.in.i156 = phi i64 [ %.1.i, %bb.af ], [ %.0192.i, %.preheader.i ]
  %.1.i = add i64 %.1.in.i156, 1                  ; 3 uses
  %i.fp = tail call noundef i32 %i.fm(ptr noundef nonnull %0, ptr noundef %.0201.i, ptr noundef nonnull %.0.i158), !callees !56, !inline_history !57
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.af, label %..critedge.i_crit_edge, !llvm.loop !55

..critedge.i_crit_edge:                           ; preds = %.lr.ph159
  br label %.critedge.i, !llvm.loop !55

.critedge.i:                                      ; preds = %bb.af, %..critedge.i_crit_edge, %.preheader.i
  %.020.pn.i.lcssa = phi ptr [ %.020.pn.i157, %..critedge.i_crit_edge ], [ %.0201.i, %.preheader.i ], [ %.0.i158, %bb.af ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %.0.i158, %..critedge.i_crit_edge ], [ %.0.i154, %.preheader.i ], [ %.0.i, %bb.af ]
  %.1.lcssa.i = phi i64 [ %.1.i, %..critedge.i_crit_edge ], [ %umax.i, %.preheader.i ], [ %umax.i, %bb.af ] ; 2 uses
  %i.fr = load ptr, ptr %i.cj, align 8, !tbaa !33 ; 3 uses
  %i.fs = ptrtoint ptr %.0201.i to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = lshr exact i64 %i.fu, 2                 ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = load ptr, ptr %i.cq, align 8, !tbaa !36 ; 3 uses
  %i.fy = load i64, ptr %i.bz, align 8, !tbaa !45
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy ; 3 uses
  %i.ga = load i64, ptr %i.fx, align 8, !tbaa !7
  %i.gb = load ptr, ptr %i.cl, align 8, !tbaa !35
  %i.gc = ptrtoint ptr %i.fz to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %.critedge.i
  %.038.i.i = phi ptr [ %.0201.i, %.critedge.i ], [ %i.gv, %bb.aj ] ; 5 uses
  %.02637.i.i = phi i64 [ %i.ga, %.critedge.i ], [ %.1.i.i, %bb.aj ] ; 3 uses
  %.02736.i.i = phi i32 [ 0, %.critedge.i ], [ %.128.i.i, %bb.aj ] ; 2 uses
  %.02935.i.i = phi ptr [ %i.fx, %.critedge.i ], [ %.130.i.i, %bb.aj ] ; 5 uses
  %i.gd = load i32, ptr %.038.i.i, align 4, !tbaa !3
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.ge
  store i32 %i.fw, ptr %i.gf, align 4, !tbaa !3
  %i.gg = load i32, ptr %.038.i.i, align 4, !tbaa !3
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = icmp ugt i64 %.02637.i.i, %i.gh
  br i1 %i.gi, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = add i32 %.02736.i.i, 1                  ; 2 uses
  %.not33.i.i = icmp eq ptr %.038.i.i, %.020.pn.i.lcssa
  br i1 %.not33.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not15.i.i.i = icmp eq ptr %i.fz, %.02935.i.i
  br i1 %.not15.i.i.i, label %_ZN11duckdb_zstdL17COVER_lower_boundEPKmS1_m.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ai
  %i.gk = ptrtoint ptr %.02935.i.i to i64
  %i.gl = sub i64 %i.gc, %i.gk
  %i.gm = ashr exact i64 %i.gl, 3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.017.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.02935.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01316.i.i.i = phi i64 [ %.114.i.i.i, %.lr.ph.i.i.i ], [ %i.gm, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.gn = lshr i64 %.01316.i.i.i, 1               ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i.i, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !7
  %i.gq = icmp ult i64 %i.gp, %i.gh               ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.neg.i.i.i = xor i64 %i.gn, -1
  %i.gs = add i64 %.01316.i.i.i, %.neg.i.i.i
  %.114.i.i.i = select i1 %i.gq, i64 %i.gs, i64 %i.gn ; 2 uses
  %.1.i.i.i = select i1 %i.gq, ptr %i.gr, ptr %.017.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.114.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL17COVER_lower_boundEPKmS1_m.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !58

_ZN11duckdb_zstdL17COVER_lower_boundEPKmS1_m.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.ai
  %.0.lcssa.i.i.i = phi ptr [ %i.fz, %bb.ai ], [ %.1.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.gt = load i64, ptr %.0.lcssa.i.i.i, align 8, !tbaa !7
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL17COVER_lower_boundEPKmS1_m.exit.i.i, %bb.ah, %bb.ag
  %.130.i.i = phi ptr [ %.02935.i.i, %bb.ag ], [ %i.gu, %_ZN11duckdb_zstdL17COVER_lower_boundEPKmS1_m.exit.i.i ], [ %.02935.i.i, %bb.ah ]
  %.128.i.i = phi i32 [ %.02736.i.i, %bb.ag ], [ %i.gj, %_ZN11duckdb_zstdL17COVER_lower_boundEPKmS1_m.exit.i.i ], [ %i.gj, %bb.ah ] ; 2 uses
  %.1.i.i = phi i64 [ %.02637.i.i, %bb.ag ], [ %i.gt, %_ZN11duckdb_zstdL17COVER_lower_boundEPKmS1_m.exit.i.i ], [ %.02637.i.i, %bb.ah ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 4
  %.not.i.i = icmp eq ptr %.038.i.i, %.020.pn.i.lcssa
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL11COVER_groupEPNS_11COVER_ctx_tEPKvS3_.exit.i, label %bb.ag, !llvm.loop !59

_ZN11duckdb_zstdL11COVER_groupEPNS_11COVER_ctx_tEPKvS3_.exit.i: ; preds = %bb.aj
  %i.gw = and i64 %i.fv, 4294967295
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gw
  store i32 %.128.i.i, ptr %i.gx, align 4, !tbaa !3
  %i.gy = icmp ult i64 %.1.lcssa.i, %i.fj
  br i1 %i.gy, label %.preheader.i, label %_ZN11duckdb_zstdL13COVER_groupByEPKvmmPNS_11COVER_ctx_tEPFiS3_S1_S1_EPFvS3_S1_S1_E.exit, !llvm.loop !60

_ZN11duckdb_zstdL13COVER_groupByEPKvmmPNS_11COVER_ctx_tEPFiS3_S1_S1_EPFvS3_S1_S1_E.exit: ; preds = %_ZN11duckdb_zstdL11COVER_groupEPNS_11COVER_ctx_tEPKvS3_.exit.i, %bb.ae
  %i.gz = phi ptr [ %i.fi, %bb.ae ], [ %i.fr, %_ZN11duckdb_zstdL11COVER_groupEPNS_11COVER_ctx_tEPKvS3_.exit.i ]
  store ptr %i.gz, ptr %i.dc, align 8, !tbaa !34
  store ptr null, ptr %i.cj, align 8, !tbaa !33
  br label %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit

_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit: ; preds = %bb.x, %bb.w, %bb.i, %bb.j, %bb.f, %bb.g, %bb.c, %bb.d, %_ZN11duckdb_zstdL13COVER_groupByEPKvmmPNS_11COVER_ctx_tEPFiS3_S1_S1_EPFvS3_S1_S1_E.exit
  %.090 = phi i64 [ -72, %bb.i ], [ -72, %bb.c ], [ -72, %bb.f ], [ 0, %_ZN11duckdb_zstdL13COVER_groupByEPKvmmPNS_11COVER_ctx_tEPFiS3_S1_S1_EPFvS3_S1_S1_E.exit ], [ -72, %bb.d ], [ -72, %bb.g ], [ -72, %bb.j ], [ -64, %bb.w ], [ -64, %bb.x ]
  ret i64 %.090
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL21COVER_buildDictionaryEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEPvmNS_20ZDICT_cover_params_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 captures(none) %5) unnamed_addr #6 {
bb.a:
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = load i32, ptr %5, align 8, !tbaa !61     ; 2 uses
  %i.f = mul i32 %i.e, 10                         ; 2 uses
  %i.g = udiv i32 %i.a, %i.e
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.g, i32 4)
  %spec.select = lshr i32 %i.h, 2                 ; 2 uses
  %i.i = udiv i32 %i.d, %spec.select              ; 2 uses
  %.not.i = icmp ult i32 %i.i, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN11duckdb_zstd19COVER_computeEpochsEjjjj.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.d) ; 2 uses
  %i.k = udiv i32 %i.d, %i.j
  br label %_ZN11duckdb_zstd19COVER_computeEpochsEjjjj.exit

_ZN11duckdb_zstd19COVER_computeEpochsEjjjj.exit:  ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ %i.k, %bb.b ], [ %spec.select, %bb.a ] ; 4 uses
  %.sroa.4.0.i = phi i32 [ %i.j, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %i.l = icmp ult i32 %.sroa.0.0.i, 80
  %i.m = lshr i32 %.sroa.0.0.i, 3
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 100)
  %narrow = select i1 %i.l, i32 10, i32 %i.n
  %i.o = zext nneg i32 %narrow to i64
  %i.p = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN11duckdb_zstd19COVER_computeEpochsEjjjj.exit
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.24, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.4.0.i) #22 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.u = tail call i32 @fflush(ptr noundef %i.t)  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN11duckdb_zstd19COVER_computeEpochsEjjjj.exit
  %.not86 = icmp eq i64 %4, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.d
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
end_hunk_0
