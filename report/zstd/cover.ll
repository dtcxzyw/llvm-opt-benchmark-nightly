inline.NumInlined: 67
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@COVER_ctx_init:bb.a
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.19, i32 noundef %i.o, i32 noundef %i.bl) #20 ; 0 uses
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bo = tail call i32 @fflush(ptr noundef %i.bn) ; 0 uses
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bq = trunc i64 %i.ak to i32
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.20, i32 noundef %i.p, i32 noundef %i.bq) #20 ; 0 uses
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bt = tail call i32 @fflush(ptr noundef %i.bs) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l
  store ptr %1, ptr %0, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.bu, align 8, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %wide.trip.count.i, ptr %i.bv, align 8, !tbaa !48
  %i.bw = zext i32 %i.o to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !49
  %i.by = zext i32 %i.p to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !50
  %i.ca = sub i64 %i.aj, %i.an
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !24
  %i.cd = shl i64 %i.cb, 2                        ; 2 uses
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cd) #23 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !35
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.cd) #23 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !37
  %i.ci = add i32 %3, 1                           ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.ck) #23 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !38
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %.not104 = icmp eq ptr %i.cg, null
  %.not105 = icmp eq ptr %i.cl, null
  %or.cond107 = or i1 %.not104, %.not105
  br i1 %or.cond107, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m, %.critedge
  %i.cn = icmp sgt i32 %6, 0
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cp = tail call i64 @fwrite(ptr nonnull @.str.21, i64 35, i64 1, ptr %i.co) #22 ; 0 uses
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cr = tail call i32 @fflush(ptr noundef %i.cq) ; 0 uses
  %.pre141 = load ptr, ptr %i.cf, align 8, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cs = phi ptr [ %.pre141, %bb.o ], [ %i.ce, %bb.n ] ; 2 uses
  %.not.i125 = icmp eq ptr %i.cs, null
  br i1 %.not.i125, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.cs) #21
  store ptr null, ptr %i.cf, align 8, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %.not17.i = icmp eq ptr %i.cu, null
  br i1 %.not17.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.cu) #21
  store ptr null, ptr %i.ct, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cv = load ptr, ptr %i.ch, align 8, !tbaa !37 ; 2 uses
  %.not18.i = icmp eq ptr %i.cv, null
  br i1 %.not18.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.cv) #21
  store ptr null, ptr %i.ch, align 8, !tbaa !37
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !38 ; 2 uses
  %.not19.i = icmp eq ptr %i.cw, null
  br i1 %.not19.i, label %COVER_ctx_destroy.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.cw) #21
  store ptr null, ptr %i.cm, align 8, !tbaa !38
  br label %COVER_ctx_destroy.exit

bb.x:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i32 %4, ptr %i.cy, align 8, !tbaa !51
  store i64 0, ptr %i.cl, align 8, !tbaa !8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 2) ; 2 uses
  %wide.trip.count = zext i32 %umax to i64
  %i.cz = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.cz, 3                    ; 3 uses
  %i.da = add i32 %umax, -2
  %i.db = icmp ult i32 %i.da, 3
  br i1 %i.db, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.x
  %unroll_iter = and i64 %i.cz, -4
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.new
  %i.dc = phi i64 [ 0, %.new ], [ %i.dv, %bb.y ]
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.3, %bb.y ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.y ]
  %i.dd = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.de = getelementptr i8, ptr %i.dd, i64 -8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !8
  %i.dg = add i64 %i.df, %i.dc                    ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !8
  %i.dl = add i64 %i.dk, %i.dg                    ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.do = getelementptr i8, ptr %i.dn, i64 -8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !8
  %i.dq = add i64 %i.dp, %i.dl                    ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.1
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !8
  %i.dv = add i64 %i.du, %i.dq                    ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.2
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.y, !llvm.loop !52

.unr-lcssa:                                       ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.x
  %.epil.init = phi i64 [ 0, %bb.x ], [ %i.dv, %.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %bb.x ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod234)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %i.dx = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.eb, %bb.z ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !8
  %i.eb = add i64 %i.ea, %i.dx                    ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.epil
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.z, !llvm.loop !53

.epilog-lcssa:                                    ; preds = %bb.z, %.unr-lcssa
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.epilog-lcssa
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ee = tail call i64 @fwrite(ptr nonnull @.str.22, i64 34, i64 1, ptr %i.ed) #22 ; 0 uses
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.eg = tail call i32 @fflush(ptr noundef %i.ef) ; 0 uses
  %.pre = load i64, ptr %i.cc, align 8, !tbaa !24
  %.pre140.pre = load ptr, ptr %i.cf, align 8, !tbaa !35
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.epilog-lcssa
  %.pre140 = phi ptr [ %.pre140.pre, %bb.aa ], [ %i.ce, %.epilog-lcssa ] ; 3 uses
  %i.eh = phi i64 [ %.pre, %bb.aa ], [ %i.cb, %.epilog-lcssa ] ; 7 uses
  %.not133 = icmp eq i64 %i.eh, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ab
  %min.iters.check211 = icmp ult i64 %i.eh, 16
  br i1 %min.iters.check211, label %.lr.ph.preheader224, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.ei = add i64 %i.eh, -1                       ; 2 uses
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = icmp eq i64 %i.ej, 4294967295
  %i.el = icmp ugt i64 %i.ei, 4294967295
  %i.em = or i1 %i.ek, %i.el
  br i1 %i.em, label %.lr.ph.preheader224, label %vector.ph212

vector.ph212:                                     ; preds = %vector.scevcheck
  %n.vec213 = and i64 %i.eh, 8589934584           ; 3 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next216, %vector.body214 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph212 ], [ %vec.ind.next, %vector.body214 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.pre140, i64 %index215 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x i32> %vec.ind, ptr %i.en, align 4, !tbaa !55
  store <4 x i32> %step.add, ptr %i.eo, align 4, !tbaa !55
  %index.next216 = add nuw i64 %index215, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ep = icmp eq i64 %index.next216, %n.vec213
  br i1 %i.ep, label %middle.block217, label %vector.body214, !llvm.loop !56

middle.block217:                                  ; preds = %vector.body214
  %cmp.n218 = icmp eq i64 %i.eh, %n.vec213
  br i1 %cmp.n218, label %._crit_edge, label %.lr.ph.preheader224

.lr.ph.preheader224:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block217
  %indvars.iv137.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec213, %middle.block217 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader224, %.lr.ph
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph ], [ %indvars.iv137.ph, %.lr.ph.preheader224 ] ; 3 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.pre140, i64 %indvars.iv137
  %8 = trunc nuw i64 %indvars.iv137 to i32
  store i32 %8, ptr %7, align 4, !tbaa !55
  %indvars.iv.next138 = add i64 %indvars.iv137, 1 ; 2 uses
  %9 = and i64 %indvars.iv.next138, 4294967295
  %i.eq = icmp ugt i64 %i.eh, %9
  br i1 %i.eq, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block217, %bb.ab
  %i.er = load i32, ptr %i.cy, align 8, !tbaa !51
  %i.es = icmp ult i32 %i.er, 9
  %i.et = select i1 %i.es, ptr @COVER_strict_cmp8, ptr @COVER_strict_cmp
  tail call void @qsort_r(ptr noundef %.pre140, i64 noundef %i.eh, i64 noundef 4, ptr noundef nonnull %i.et, ptr noundef nonnull %0) #21
  br i1 %i.bj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ev = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %i.eu) #22 ; 0 uses
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ex = tail call i32 @fflush(ptr noundef %i.ew) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  %i.ey = load ptr, ptr %i.cf, align 8, !tbaa !35 ; 2 uses
  %i.ez = load i64, ptr %i.cc, align 8, !tbaa !24 ; 3 uses
  %i.fa = load i32, ptr %i.cy, align 8, !tbaa !51
  %i.fb = icmp ult i32 %i.fa, 9
  %i.fc = select i1 %i.fb, ptr @COVER_cmp8, ptr @COVER_cmp
  %.not.i126 = icmp eq i64 %i.ez, 0
  br i1 %.not.i126, label %COVER_groupBy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ad, %COVER_group.exit.i
  %.0192.i = phi i64 [ %.1.lcssa.i, %COVER_group.exit.i ], [ 0, %bb.ad ] ; 3 uses
  %.0201.i = phi ptr [ %.0.i.lcssa, %COVER_group.exit.i ], [ %i.ey, %bb.ad ] ; 6 uses
  %i.fd = add nuw i64 %.0192.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ez, i64 %i.fd) ; 3 uses
  %i.fe = add i64 %umax.i, -1                     ; 2 uses
  %.0.i164 = getelementptr inbounds nuw i8, ptr %.0201.i, i64 4 ; 2 uses
  %exitcond.not.i127165 = icmp eq i64 %.0192.i, %i.fe
  br i1 %exitcond.not.i127165, label %.critedge.i, label %.lr.ph169

bb.ae:                                            ; preds = %.lr.ph169
  %.0.i = getelementptr inbounds nuw i8, ptr %.0.i168, i64 4 ; 2 uses
  %exitcond.not.i127 = icmp eq i64 %.1.i, %i.fe
  br i1 %exitcond.not.i127, label %.critedge.i, label %.lr.ph169, !llvm.loop !58

.lr.ph169:                                        ; preds = %.preheader.i, %bb.ae
  %.0.i168 = phi ptr [ %.0.i, %bb.ae ], [ %.0.i164, %.preheader.i ] ; 5 uses
  %.020.pn.i167 = phi ptr [ %.0.i168, %bb.ae ], [ %.0201.i, %.preheader.i ]
  %.1.in.i166 = phi i64 [ %.1.i, %bb.ae ], [ %.0192.i, %.preheader.i ]
  %.1.i = add i64 %.1.in.i166, 1                  ; 3 uses
  %i.ff = tail call i32 %i.fc(ptr noundef nonnull %0, ptr noundef %.0201.i, ptr noundef nonnull %.0.i168) #21, !callees !59, !inline_history !60
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ae, label %..critedge.i_crit_edge, !llvm.loop !58

..critedge.i_crit_edge:                           ; preds = %.lr.ph169
  br label %.critedge.i, !llvm.loop !58

.critedge.i:                                      ; preds = %bb.ae, %..critedge.i_crit_edge, %.preheader.i
  %.020.pn.i.lcssa = phi ptr [ %.020.pn.i167, %..critedge.i_crit_edge ], [ %.0201.i, %.preheader.i ], [ %.0.i168, %bb.ae ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %.0.i168, %..critedge.i_crit_edge ], [ %.0.i164, %.preheader.i ], [ %.0.i, %bb.ae ]
  %.1.lcssa.i = phi i64 [ %.1.i, %..critedge.i_crit_edge ], [ %umax.i, %.preheader.i ], [ %umax.i, %bb.ae ] ; 2 uses
  %i.fh = load ptr, ptr %i.cf, align 8, !tbaa !35 ; 3 uses
  %i.fi = ptrtoint ptr %.0201.i to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = lshr exact i64 %i.fk, 2                 ; 2 uses
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = load ptr, ptr %i.cm, align 8, !tbaa !38 ; 3 uses
  %i.fo = load i64, ptr %i.bv, align 8, !tbaa !48
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo ; 3 uses
  %i.fq = load i64, ptr %i.fn, align 8, !tbaa !8
  %i.fr = load ptr, ptr %i.ch, align 8, !tbaa !37
  %i.fs = ptrtoint ptr %i.fp to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.critedge.i
  %.038.i.i = phi ptr [ %.0201.i, %.critedge.i ], [ %i.gl, %bb.ai ] ; 5 uses
  %.02637.i.i = phi i64 [ %i.fq, %.critedge.i ], [ %.1.i.i, %bb.ai ] ; 3 uses
  %.02736.i.i = phi ptr [ %i.fn, %.critedge.i ], [ %.128.i.i, %bb.ai ] ; 5 uses
  %.02935.i.i = phi i32 [ 0, %.critedge.i ], [ %.130.i.i, %bb.ai ] ; 2 uses
  %i.ft = load i32, ptr %.038.i.i, align 4, !tbaa !55
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fu
  store i32 %i.fm, ptr %i.fv, align 4, !tbaa !55
  %i.fw = load i32, ptr %.038.i.i, align 4, !tbaa !55
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = icmp ugt i64 %.02637.i.i, %i.fx
  br i1 %i.fy, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = add i32 %.02935.i.i, 1                  ; 2 uses
  %.not33.i.i = icmp eq ptr %.038.i.i, %.020.pn.i.lcssa
  br i1 %.not33.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not15.i.i.i = icmp eq ptr %i.fp, %.02736.i.i
  br i1 %.not15.i.i.i, label %COVER_lower_bound.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ah
  %i.ga = ptrtoint ptr %.02736.i.i to i64
  %i.gb = sub i64 %i.fs, %i.ga
  %i.gc = ashr exact i64 %i.gb, 3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.gc, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01316.i.i.i = phi ptr [ %.114.i.i.i, %.lr.ph.i.i.i ], [ %.02736.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.gd = lshr i64 %.017.i.i.i, 1                 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.01316.i.i.i, i64 %i.gd ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !8
  %i.gg = icmp ult i64 %i.gf, %i.fx               ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.neg.i.i.i = xor i64 %i.gd, -1
  %i.gi = add i64 %.017.i.i.i, %.neg.i.i.i
  %.114.i.i.i = select i1 %i.gg, ptr %i.gh, ptr %.01316.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.gg, i64 %i.gi, i64 %i.gd ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %COVER_lower_bound.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !61

COVER_lower_bound.exit.i.i:                       ; preds = %.lr.ph.i.i.i, %bb.ah
  %.013.lcssa.i.i.i = phi ptr [ %i.fp, %bb.ah ], [ %.114.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.gj = load i64, ptr %.013.lcssa.i.i.i, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %COVER_lower_bound.exit.i.i, %bb.ag, %bb.af
  %.130.i.i = phi i32 [ %.02935.i.i, %bb.af ], [ %i.fz, %COVER_lower_bound.exit.i.i ], [ %i.fz, %bb.ag ] ; 2 uses
  %.128.i.i = phi ptr [ %.02736.i.i, %bb.af ], [ %i.gk, %COVER_lower_bound.exit.i.i ], [ %.02736.i.i, %bb.ag ]
  %.1.i.i = phi i64 [ %.02637.i.i, %bb.af ], [ %i.gj, %COVER_lower_bound.exit.i.i ], [ %.02637.i.i, %bb.ag ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 4
  %.not.i.i = icmp eq ptr %.038.i.i, %.020.pn.i.lcssa
  br i1 %.not.i.i, label %COVER_group.exit.i, label %bb.af, !llvm.loop !62

COVER_group.exit.i:                               ; preds = %bb.ai
  %i.gm = and i64 %i.fl, 4294967295
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gm
  store i32 %.130.i.i, ptr %i.gn, align 4, !tbaa !55
  %i.go = icmp ult i64 %.1.lcssa.i, %i.ez
  br i1 %i.go, label %.preheader.i, label %COVER_groupBy.exit, !llvm.loop !63

COVER_groupBy.exit:                               ; preds = %COVER_group.exit.i, %bb.ad
  %i.gp = phi ptr [ %i.ey, %bb.ad ], [ %i.fh, %COVER_group.exit.i ]
  store ptr %i.gp, ptr %i.cx, align 8, !tbaa !36
  store ptr null, ptr %i.cf, align 8, !tbaa !35
  br label %COVER_ctx_destroy.exit

COVER_ctx_destroy.exit:                           ; preds = %bb.w, %bb.v, %bb.i, %bb.j, %bb.f, %bb.g, %bb.c, %bb.d, %COVER_groupBy.exit
  %.097 = phi i64 [ -72, %bb.i ], [ -72, %bb.c ], [ -72, %bb.f ], [ 0, %COVER_groupBy.exit ], [ -72, %bb.d ], [ -72, %bb.g ], [ -72, %bb.j ], [ -64, %bb.v ], [ -64, %bb.w ]
  ret i64 %.097
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @COVER_buildDictionary(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 %.0.val, i32 %.4.val) unnamed_addr #5 {
bb.a:
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = mul i32 %.0.val, 10                      ; 2 uses
  %i.f = udiv i32 %i.a, %.0.val
  %i.g = tail call i32 @llvm.umax.i32(i32 %i.f, i32 4)
  %spec.select = lshr i32 %i.g, 2                 ; 2 uses
  %i.h = udiv i32 %i.d, %spec.select              ; 2 uses
  %.not.i = icmp ult i32 %i.h, %i.e
  br i1 %.not.i, label %bb.b, label %COVER_computeEpochs.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.d) ; 2 uses
  %i.j = udiv i32 %i.d, %i.i
  br label %COVER_computeEpochs.exit

COVER_computeEpochs.exit:                         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.b ], [ %spec.select, %bb.a ] ; 4 uses
  %.sroa.4.0.i = phi i32 [ %i.i, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %i.k = icmp ult i32 %.sroa.0.0.i, 80
  %i.l = lshr i32 %.sroa.0.0.i, 3
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 100)
  %narrow = select i1 %i.k, i32 10, i32 %i.m
  %i.n = zext nneg i32 %narrow to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1                     ; 3 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %COVER_computeEpochs.exit
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.24, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.4.0.i) #20 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.u = tail call i32 @fflush(ptr noundef %i.t)  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %COVER_computeEpochs.exit
  %.not32 = icmp eq i64 %4, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.d
  %i.v = getelementptr i8, ptr %2, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.z = add i32 %.0.val, 2
  %i.aa = sub i32 %i.z, %.4.val
  %i.ab = add i32 %.4.val, -1
  %i.ac = zext i32 %.4.val to i64
end_hunk_0
