Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangle?download=true
inline.NumInlined: 349
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z11reconstructP4meshP8behaviorPiPdS4_iiiS3_S3_i:bb.a

bb.dp:                                            ; preds = %_Z9poolallocP10memorypool.exit319
  %i.ahd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71) ; 0 uses
  call void @_Z11printsubsegP4meshP8behaviorP4osub(ptr noundef nonnull %0, ptr nonnull readonly poison, ptr noundef nonnull %11)
  %.pre523.pre = load ptr, ptr %i.ada, align 8, !tbaa !85
  br label %_Z12insertsubsegP4meshP8behaviorP4otrii.exit302

bb.dq:                                            ; preds = %bb.dg
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aew, i64 64 ; 2 uses
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !34
  %i.ahg = icmp eq i32 %i.ahf, 0
  br i1 %i.ahg, label %bb.dr, label %_Z12insertsubsegP4meshP8behaviorP4otrii.exit302

bb.dr:                                            ; preds = %bb.dq
  store i32 1, ptr %i.ahe, align 4, !tbaa !34
  br label %_Z12insertsubsegP4meshP8behaviorP4otrii.exit302

_Z12insertsubsegP4meshP8behaviorP4otrii.exit302:  ; preds = %_Z9poolallocP10memorypool.exit319, %bb.dp, %bb.dq, %bb.dr
  %.pre523 = phi ptr [ %i.agk, %_Z9poolallocP10memorypool.exit319 ], [ %.pre523.pre, %bb.dp ], [ %.pre523525, %bb.dq ], [ %.pre523525, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.ahh = add i32 %.7456, 1
  br label %bb.ds

bb.ds:                                            ; preds = %_Z12insertsubsegP4meshP8behaviorP4otrii.exit302, %.lr.ph460
  %.pre523528 = phi ptr [ %.pre523, %_Z12insertsubsegP4meshP8behaviorP4otrii.exit302 ], [ %.pre523525, %.lr.ph460 ] ; 2 uses
  %i.ahi = phi ptr [ %.pre523, %_Z12insertsubsegP4meshP8behaviorP4otrii.exit302 ], [ %i.adp, %.lr.ph460 ] ; 5 uses
  %.8 = phi i32 [ %i.ahh, %_Z12insertsubsegP4meshP8behaviorP4otrii.exit302 ], [ %.7456, %.lr.ph460 ] ; 2 uses
  %storemerge.in.in = ptrtoint ptr %i.adt to i64  ; 2 uses
  %storemerge.in = and i64 %storemerge.in.in, -4
  %storemerge = inttoptr i64 %storemerge.in to ptr ; 2 uses
  %.not225 = icmp eq ptr %i.ahi, %storemerge
  br i1 %.not225, label %._crit_edge461.loopexit, label %.lr.ph460, !llvm.loop !283

._crit_edge461.loopexit:                          ; preds = %bb.ds
  %.pre524 = load i64, ptr %i.bb, align 8, !tbaa !273
  br label %._crit_edge461

._crit_edge461:                                   ; preds = %._crit_edge461.loopexit, %bb.db
  %.pre523527 = phi ptr [ %.pre523526, %bb.db ], [ %.pre523528, %._crit_edge461.loopexit ]
  %i.ahj = phi i64 [ %i.adk, %bb.db ], [ %.pre524, %._crit_edge461.loopexit ] ; 2 uses
  %i.ahk = phi ptr [ %i.adl, %bb.db ], [ %i.ahi, %._crit_edge461.loopexit ]
  %i.ahl = phi ptr [ %i.adm, %bb.db ], [ %i.ahi, %._crit_edge461.loopexit ]
  %.7.lcssa = phi i32 [ %.6463, %bb.db ], [ %.8, %._crit_edge461.loopexit ] ; 2 uses
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %i.ahm = icmp sgt i64 %i.ahj, %indvars.iv.next512
  br i1 %i.ahm, label %bb.db, label %._crit_edge467, !llvm.loop !284

._crit_edge467:                                   ; preds = %._crit_edge461, %.loopexit
  %.6.lcssa = phi i32 [ %.5, %.loopexit ], [ %.7.lcssa, %._crit_edge461 ]
  tail call void @free(ptr noundef %i.bf) #37
  ret i32 %.6.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_Z13finddirectionP4meshP8behaviorP4otriPd(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !181
  %.tr = trunc i64 %i.b to i32
  %i.c = shl i32 %.tr, 1
  %i.d = add i32 %i.c, 100                        ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !77     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !82   ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [8 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83   ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.h
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [8 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83   ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.e, i64 %i.h
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 82792 ; 7 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !140  ; 2 uses
  %i.z = add nsw i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load <2 x double>, ptr %3, align 8, !tbaa !8 ; 8 uses
  %i.ad = load <2 x double>, ptr %i.n, align 8, !tbaa !8 ; 8 uses
  %i.ae = load <2 x double>, ptr %i.w, align 8, !tbaa !8 ; 2 uses
  %i.af = fsub <2 x double> %i.ac, %i.ae
  %i.ag = fsub <2 x double> %i.ad, %i.ae
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fmul <2 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 5 uses
  %i.ak = extractelement <2 x double> %i.ai, i64 1 ; 5 uses
  %i.al = fsub double %i.aj, %i.ak                ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.an = load i32, ptr %i.am, align 4, !tbaa !61
  %.not.i = icmp eq i32 %i.an, 0                  ; 4 uses
  br i1 %.not.i, label %bb.b, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ao = fcmp ogt double %i.aj, 0.000000e+00
  br i1 %i.ao, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp ugt double %i.ak, 0.000000e+00
  br i1 %i.ap, label %bb.d, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.d:                                             ; preds = %bb.c
  %i.aq = fadd double %i.aj, %i.ak
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ar = fcmp olt double %i.aj, 0.000000e+00
  %i.as = fcmp ult double %i.ak, 0.000000e+00
  %or.cond42.i = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond42.i, label %bb.f, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.at = fneg double %i.aj
  %i.au = fsub double %i.at, %i.ak
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0.i = phi double [ %i.aq, %bb.d ], [ %i.au, %bb.f ] ; 2 uses
  %i.av = load double, ptr @_ZL12ccwerrboundA, align 8, !tbaa !8
  %i.aw = fmul double %.0.i, %i.av                ; 2 uses
  %i.ax = fcmp ult double %i.al, %i.aw
  %i.ay = fneg double %i.al
  %i.az = fcmp ugt double %i.aw, %i.ay
  %or.cond.i = and i1 %i.ax, %i.az
  br i1 %or.cond.i, label %bb.h, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ba = tail call noundef double @_Z21counterclockwiseadaptPdS_S_d(ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.w, double noundef %.0.i)
  br label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.h
  %.035.i = phi double [ %i.al, %bb.g ], [ %i.al, %bb.a ], [ %i.al, %bb.e ], [ %i.ba, %bb.h ], [ %i.al, %bb.c ] ; 5 uses
  %i.bb = fcmp ogt double %.035.i, 0.000000e+00   ; 2 uses
  %i.bc = add nsw i64 %i.y, 2                     ; 5 uses
  store i64 %i.bc, ptr %i.x, align 8, !tbaa !140
  %i.bd = load <2 x double>, ptr %i.t, align 8, !tbaa !8 ; 2 uses
  %i.be = fsub <2 x double> %i.ad, %i.bd
  %i.bf = fsub <2 x double> %i.ac, %i.bd
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = fmul <2 x double> %i.bg, %i.be          ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 5 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 5 uses
  %i.bk = fsub double %i.bi, %i.bj                ; 6 uses
  br i1 %.not.i, label %bb.i, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit109

bb.i:                                             ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit
  %i.bl = fcmp ogt double %i.bi, 0.000000e+00
  br i1 %i.bl, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bm = fcmp ugt double %i.bj, 0.000000e+00
  br i1 %i.bm, label %bb.k, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit109

bb.k:                                             ; preds = %bb.j
  %i.bn = fadd double %i.bi, %i.bj
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bo = fcmp olt double %i.bi, 0.000000e+00
  %i.bp = fcmp ult double %i.bj, 0.000000e+00
  %or.cond42.i106 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond42.i106, label %bb.m, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit109

bb.m:                                             ; preds = %bb.l
  %i.bq = fneg double %i.bi
  %i.br = fsub double %i.bq, %i.bj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0.i107 = phi double [ %i.bn, %bb.k ], [ %i.br, %bb.m ] ; 2 uses
  %i.bs = load double, ptr @_ZL12ccwerrboundA, align 8, !tbaa !8
  %i.bt = fmul double %.0.i107, %i.bs             ; 2 uses
  %i.bu = fcmp ult double %i.bk, %i.bt
  %i.bv = fneg double %i.bk
  %i.bw = fcmp ugt double %i.bt, %i.bv
  %or.cond.i108 = and i1 %i.bu, %i.bw
  br i1 %or.cond.i108, label %bb.o, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit109

bb.o:                                             ; preds = %bb.n
  %i.bx = tail call noundef double @_Z21counterclockwiseadaptPdS_S_d(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.t, double noundef %.0.i107)
  br label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit109

_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit109: ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit, %bb.j, %bb.l, %bb.n, %bb.o
  %.035.i105 = phi double [ %i.bk, %bb.n ], [ %i.bk, %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit ], [ %i.bk, %bb.l ], [ %i.bx, %bb.o ], [ %i.bk, %bb.j ] ; 3 uses
  %i.by = fcmp ogt double %.035.i105, 0.000000e+00 ; 3 uses
  %or.cond = and i1 %i.bb, %i.by
  br i1 %or.cond, label %.split, label %bb.p

.split:                                           ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit109
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = and i64 %i.ca, -4
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 82856
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !85 ; 2 uses
  %4 = icmp eq ptr %i.ce, %i.cc                   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.cc
  br i1 %i.cf, label %.preheader, label %.lr.ph

bb.p:                                             ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit109
  br i1 %i.bb, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.split, %bb.p
  %.089.shrunk216 = phi i1 [ %4, %.split ], [ %i.by, %bb.p ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 82856
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !85 ; 2 uses
  %i.ci = load double, ptr @_ZL12ccwerrboundA, align 8
  %smax187 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 0) ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cj = shufflevector <2 x double> %i.ac, <2 x double> %i.ad, <2 x i32> <i32 0, i32 3>
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.q
  %i.ck = phi i64 [ %i.df, %bb.q ], [ %i.bc, %.lr.ph.split.us.preheader ]
  %i.cl = phi ptr [ %i.cx, %bb.q ], [ %i.e, %.lr.ph.split.us.preheader ]
  %i.cm = phi i32 [ %i.cv, %bb.q ], [ %i.g, %.lr.ph.split.us.preheader ]
  %.0144.us = phi i32 [ %i.cz, %bb.q ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.095143.us = phi double [ %.035.i111.us, %bb.q ], [ %.035.i, %.lr.ph.split.us.preheader ]
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !34
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !83
  %i.ct = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 3                        ; 3 uses
  store i32 %i.cv, ptr %i.f, align 8, !tbaa !82
  %i.cw = and i64 %i.ct, -4
  %i.cx = inttoptr i64 %i.cw to ptr               ; 5 uses
  store ptr %i.cx, ptr %2, align 8, !tbaa !77
  %i.cy = icmp eq ptr %i.ch, %i.cx
  br i1 %i.cy, label %.split.us, label %bb.r

bb.q:                                             ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115.us
  %i.cz = add nuw nsw i32 %.0144.us, 1
  %i.da = fcmp ogt double %.035.i111.us, 0.000000e+00
  br i1 %i.da, label %.lr.ph.split.us, label %.preheader, !llvm.loop !285

bb.r:                                             ; preds = %.lr.ph.split.us
  %i.db = and i64 %i.ct, 3
  %i.dc = getelementptr [8 x i8], ptr %i.cx, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !83 ; 2 uses
  %i.df = add nsw i64 %i.ck, 1                    ; 3 uses
  store i64 %i.df, ptr %i.x, align 8, !tbaa !140
  %i.dg = load <2 x double>, ptr %i.de, align 8, !tbaa !8 ; 3 uses
  %i.dh = fsub <2 x double> %i.cj, %i.dg          ; 2 uses
  %shift = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.dh, %shift ; 3 uses
  %i.di = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop284 = fsub <2 x double> %i.ac, %i.dg
  %foldExtExtBinop286 = fsub <2 x double> %i.ad, %i.dg
  %shift288 = shufflevector <2 x double> %foldExtExtBinop284, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop289 = fmul <2 x double> %foldExtExtBinop286, %shift288 ; 3 uses
  %i.dj = extractelement <2 x double> %foldExtExtBinop289, i64 0 ; 3 uses
  %foldExtExtBinop291 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop289
  %i.dk = extractelement <2 x double> %foldExtExtBinop291, i64 0 ; 5 uses
  %i.dl = fcmp ogt double %i.di, 0.000000e+00
  br i1 %i.dl, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = fcmp olt double %i.di, 0.000000e+00
  %i.dn = fcmp ult double %i.dj, 0.000000e+00
  %or.cond42.i112.us = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond42.i112.us, label %bb.t, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115.us

bb.t:                                             ; preds = %bb.s
  %i.do = fneg double %i.di
  %i.dp = fsub double %i.do, %i.dj
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.dq = fcmp ugt double %i.dj, 0.000000e+00
  br i1 %i.dq, label %bb.v, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115.us

bb.v:                                             ; preds = %bb.u
  %foldExtExtBinop293 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop289
  %i.dr = extractelement <2 x double> %foldExtExtBinop293, i64 0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0.i113.us = phi double [ %i.dr, %bb.v ], [ %i.dp, %bb.t ] ; 2 uses
  %i.ds = fmul double %.0.i113.us, %i.ci          ; 2 uses
  %i.dt = fcmp ult double %i.dk, %i.ds
  %i.du = fneg double %i.dk
  %i.dv = fcmp ugt double %i.ds, %i.du
  %or.cond.i114.us = and i1 %i.dt, %i.dv
  br i1 %or.cond.i114.us, label %bb.x, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115.us

bb.x:                                             ; preds = %bb.w
  %i.dw = tail call noundef double @_Z21counterclockwiseadaptPdS_S_d(ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.de, double noundef %.0.i113.us)
  br label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115.us

_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115.us: ; preds = %bb.x, %bb.w, %bb.u, %bb.s
  %.035.i111.us = phi double [ %i.dk, %bb.w ], [ %i.dk, %bb.u ], [ %i.dk, %bb.s ], [ %i.dw, %bb.x ] ; 3 uses
  %exitcond188.not = icmp eq i32 %.0144.us, %smax187
  br i1 %exitcond188.not, label %.split148.us, label %bb.q, !llvm.loop !285

bb.y:                                             ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115
  %i.dx = add nuw nsw i32 %.0144, 1
  %i.dy = load <2 x double>, ptr %i.ha, align 8, !tbaa !8 ; 2 uses
  %i.dz = fsub <2 x double> %i.ad, %i.dy
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = fsub <2 x double> %i.ac, %i.dy
  %i.ec = fmul <2 x double> %i.ea, %i.eb          ; 2 uses
  %shift295 = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop296 = fsub <2 x double> %i.ec, %shift295
  %i.ed = extractelement <2 x double> %foldExtExtBinop296, i64 0 ; 3 uses
  %i.ee = fcmp ogt double %i.ed, 0.000000e+00
  br i1 %i.ee, label %.lr.ph.split, label %.preheader, !llvm.loop !285

.preheader:                                       ; preds = %bb.y, %bb.q, %.split, %bb.p
  %.089.shrunk215 = phi i1 [ %i.by, %bb.p ], [ %4, %.split ], [ %.089.shrunk216, %bb.q ], [ %.089.shrunk216, %bb.y ]
  %i.ef = phi i64 [ %i.bc, %bb.p ], [ %i.bc, %.split ], [ %i.df, %bb.q ], [ %i.hb, %bb.y ] ; 2 uses
  %i.eg = phi i32 [ %i.g, %bb.p ], [ %i.g, %.split ], [ %i.cv, %bb.q ], [ %i.gn, %bb.y ] ; 2 uses
  %i.eh = phi ptr [ %i.e, %bb.p ], [ %i.e, %.split ], [ %i.cx, %bb.q ], [ %i.gp, %bb.y ] ; 2 uses
  %.095.lcssa = phi double [ %.035.i, %bb.p ], [ %.035.i, %.split ], [ %.035.i111.us, %bb.q ], [ %i.ed, %bb.y ]
  %.093.lcssa = phi double [ %.035.i105, %bb.p ], [ %.035.i105, %.split ], [ %.095143.us, %bb.q ], [ %.095143, %bb.y ] ; 3 uses
  br i1 %.089.shrunk215, label %.lr.ph152, label %._crit_edge

.lr.ph152:                                        ; preds = %.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 82856
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !85 ; 2 uses
  %i.ek = load double, ptr @_ZL12ccwerrboundA, align 8
  %smax191 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 0) ; 3 uses
  br i1 %.not.i, label %.lr.ph152.split.us.preheader, label %.lr.ph152.split

.lr.ph152.split.us.preheader:                     ; preds = %.lr.ph152
  %i.el = shufflevector <2 x double> %i.ad, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3>
  br label %.lr.ph152.split.us

.lr.ph152.split.us:                               ; preds = %.lr.ph152.split.us.preheader, %bb.z
  %i.em = phi i64 [ %i.fk, %bb.z ], [ %i.ef, %.lr.ph152.split.us.preheader ]
  %i.en = phi i32 [ %i.ez, %bb.z ], [ %i.eg, %.lr.ph152.split.us.preheader ]
  %i.eo = phi ptr [ %i.ew, %bb.z ], [ %i.eh, %.lr.ph152.split.us.preheader ]
  %.1151.us = phi i32 [ %i.fb, %bb.z ], [ 0, %.lr.ph152.split.us.preheader ] ; 2 uses
  %.194150.us = phi double [ %.035.i125.us, %bb.z ], [ %.093.lcssa, %.lr.ph152.split.us.preheader ]
  %i.ep = sext i32 %i.en to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !83
  %i.es = ptrtoint ptr %i.er to i64               ; 3 uses
  %i.et = trunc i64 %i.es to i32
  %i.eu = and i32 %i.et, 3
  store i32 %i.eu, ptr %i.f, align 8, !tbaa !82
  %i.ev = and i64 %i.es, -4
  %i.ew = inttoptr i64 %i.ev to ptr               ; 4 uses
  store ptr %i.ew, ptr %2, align 8, !tbaa !77
  %i.ex = and i64 %i.es, 3
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @plus1mod3, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !34 ; 3 uses
  store i32 %i.ez, ptr %i.f, align 8, !tbaa !82
  %i.fa = icmp eq ptr %i.ej, %i.ew
  br i1 %i.fa, label %.split156.us, label %bb.aa

bb.z:                                             ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit129.us
  %i.fb = add nuw nsw i32 %.1151.us, 1
  %i.fc = fcmp ogt double %.035.i125.us, 0.000000e+00
  br i1 %i.fc, label %.lr.ph152.split.us, label %._crit_edge, !llvm.loop !286

bb.aa:                                            ; preds = %.lr.ph152.split.us
  %i.fd = sext i32 %i.ez to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !34
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [8 x i8], ptr %i.ew, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !83 ; 2 uses
  %i.fk = add nsw i64 %i.em, 1                    ; 2 uses
  store i64 %i.fk, ptr %i.x, align 8, !tbaa !140
  %i.fl = load <2 x double>, ptr %i.fj, align 8, !tbaa !8 ; 3 uses
  %i.fm = fsub <2 x double> %i.el, %i.fl          ; 2 uses
  %shift298 = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop299 = fmul <2 x double> %i.fm, %shift298 ; 3 uses
  %i.fn = extractelement <2 x double> %foldExtExtBinop299, i64 0 ; 3 uses
  %foldExtExtBinop301 = fsub <2 x double> %i.ad, %i.fl
  %foldExtExtBinop303 = fsub <2 x double> %i.ac, %i.fl
  %shift305 = shufflevector <2 x double> %foldExtExtBinop301, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop306 = fmul <2 x double> %foldExtExtBinop303, %shift305 ; 3 uses
  %i.fo = extractelement <2 x double> %foldExtExtBinop306, i64 0 ; 3 uses
  %foldExtExtBinop308 = fsub <2 x double> %foldExtExtBinop299, %foldExtExtBinop306
  %i.fp = extractelement <2 x double> %foldExtExtBinop308, i64 0 ; 5 uses
  %i.fq = fcmp ogt double %i.fn, 0.000000e+00
  br i1 %i.fq, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = fcmp olt double %i.fn, 0.000000e+00
  %i.fs = fcmp ult double %i.fo, 0.000000e+00
  %or.cond42.i126.us = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond42.i126.us, label %bb.ac, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit129.us

bb.ac:                                            ; preds = %bb.ab
  %i.ft = fneg double %i.fn
  %i.fu = fsub double %i.ft, %i.fo
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.fv = fcmp ugt double %i.fo, 0.000000e+00
  br i1 %i.fv, label %bb.ae, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit129.us

bb.ae:                                            ; preds = %bb.ad
  %foldExtExtBinop310 = fadd <2 x double> %foldExtExtBinop299, %foldExtExtBinop306
  %i.fw = extractelement <2 x double> %foldExtExtBinop310, i64 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.0.i127.us = phi double [ %i.fw, %bb.ae ], [ %i.fu, %bb.ac ] ; 2 uses
  %i.fx = fmul double %.0.i127.us, %i.ek          ; 2 uses
  %i.fy = fcmp ult double %i.fp, %i.fx
  %i.fz = fneg double %i.fp
  %i.ga = fcmp ugt double %i.fx, %i.fz
  %or.cond.i128.us = and i1 %i.fy, %i.ga
  br i1 %or.cond.i128.us, label %bb.ag, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit129.us

bb.ag:                                            ; preds = %bb.af
  %i.gb = tail call noundef double @_Z21counterclockwiseadaptPdS_S_d(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.fj, double noundef %.0.i127.us)
  br label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit129.us

_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit129.us: ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ab
  %.035.i125.us = phi double [ %i.fp, %bb.af ], [ %i.fp, %bb.ad ], [ %i.fp, %bb.ab ], [ %i.gb, %bb.ag ] ; 3 uses
  %exitcond192.not = icmp eq i32 %.1151.us, %smax191
  br i1 %exitcond192.not, label %.split160.us, label %bb.z, !llvm.loop !286

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.y
  %i.gc = phi i64 [ %i.hb, %bb.y ], [ %i.bc, %.lr.ph ]
  %i.gd = phi ptr [ %i.gp, %bb.y ], [ %i.e, %.lr.ph ]
  %i.ge = phi i32 [ %i.gn, %bb.y ], [ %i.g, %.lr.ph ]
  %.0144 = phi i32 [ %i.dx, %bb.y ], [ 0, %.lr.ph ] ; 2 uses
  %.095143 = phi double [ %i.ed, %bb.y ], [ %.035.i, %.lr.ph ]
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !34
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !83
  %i.gl = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = and i32 %i.gm, 3                        ; 3 uses
  store i32 %i.gn, ptr %i.f, align 8, !tbaa !82
  %i.go = and i64 %i.gl, -4
  %i.gp = inttoptr i64 %i.go to ptr               ; 5 uses
  store ptr %i.gp, ptr %2, align 8, !tbaa !77
  %i.gq = icmp eq ptr %i.ch, %i.gp
  br i1 %i.gq, label %.split.us, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %puts100 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48) ; 0 uses
  %i.gr = load double, ptr %i.n, align 8, !tbaa !8
  %i.gs = load double, ptr %i.aa, align 8, !tbaa !8
  %i.gt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, double noundef %i.gr, double noundef %i.gs) ; 0 uses
  %i.gu = load double, ptr %3, align 8, !tbaa !8
  %i.gv = load double, ptr %i.ab, align 8, !tbaa !8
  %i.gw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, double noundef %i.gu, double noundef %i.gv) ; 0 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts1.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts2.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @_Z7triexiti(i32 noundef 1)
  unreachable

_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115: ; preds = %.lr.ph.split
  %i.gx = and i64 %i.gl, 3
  %i.gy = getelementptr [8 x i8], ptr %i.gp, i64 %i.gx
  %i.gz = getelementptr i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !83
  %i.hb = add nsw i64 %i.gc, 1                    ; 3 uses
  store i64 %i.hb, ptr %i.x, align 8, !tbaa !140
  %exitcond.not = icmp eq i32 %.0144, %smax187
  br i1 %exitcond.not, label %.split148.us, label %bb.y, !llvm.loop !285

.split148.us:                                     ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115, %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit115.us
  %.us-phi149 = or disjoint i32 %smax187, 1
  %i.hc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, i32 noundef %.us-phi149) ; 0 uses
  %puts.i116 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts1.i117 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts2.i118 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @_Z7triexiti(i32 noundef 1)
  unreachable

bb.ah:                                            ; preds = %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit129
  %i.hd = add nuw nsw i32 %.1151, 1
  %i.he = load <2 x double>, ptr %i.im, align 8, !tbaa !8 ; 2 uses
  %i.hf = fsub <2 x double> %i.ac, %i.he
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hh = fsub <2 x double> %i.ad, %i.he
  %i.hi = fmul <2 x double> %i.hg, %i.hh          ; 2 uses
  %shift312 = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop313 = fsub <2 x double> %i.hi, %shift312
  %i.hj = extractelement <2 x double> %foldExtExtBinop313, i64 0 ; 3 uses
  %i.hk = fcmp ogt double %i.hj, 0.000000e+00
  br i1 %i.hk, label %.lr.ph152.split, label %._crit_edge, !llvm.loop !286

.lr.ph152.split:                                  ; preds = %.lr.ph152, %bb.ah
  %i.hl = phi i64 [ %i.in, %bb.ah ], [ %i.ef, %.lr.ph152 ]
  %i.hm = phi i32 [ %i.hy, %bb.ah ], [ %i.eg, %.lr.ph152 ]
  %i.hn = phi ptr [ %i.hv, %bb.ah ], [ %i.eh, %.lr.ph152 ]
  %.1151 = phi i32 [ %i.hd, %bb.ah ], [ 0, %.lr.ph152 ] ; 2 uses
  %.194150 = phi double [ %i.hj, %bb.ah ], [ %.093.lcssa, %.lr.ph152 ]
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !83
  %i.hr = ptrtoint ptr %i.hq to i64               ; 3 uses
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = and i32 %i.hs, 3
  store i32 %i.ht, ptr %i.f, align 8, !tbaa !82
  %i.hu = and i64 %i.hr, -4
  %i.hv = inttoptr i64 %i.hu to ptr               ; 4 uses
  store ptr %i.hv, ptr %2, align 8, !tbaa !77
  %i.hw = and i64 %i.hr, 3
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr @plus1mod3, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !34 ; 3 uses
  store i32 %i.hy, ptr %i.f, align 8, !tbaa !82
  %i.hz = icmp eq ptr %i.ej, %i.hv
  br i1 %i.hz, label %.split156.us, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit129

end_hunk_0
