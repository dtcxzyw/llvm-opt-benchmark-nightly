Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pairlist?download=true
inline.NumInlined: 3346
inline.NumDeleted: 1578
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3gmxL23print_nblist_statisticsILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistCpuERKNS_7GridSetEf:bb.a
  %i.bb = fcmp olt double %i.ba, 1.000000e+00
  %.sroa.speculated5 = select i1 %i.bb, double 1.000000e+00, double %i.ba
  %i.bc = fdiv double %i.at, %.sroa.speculated5
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, double noundef %i.bc) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(180) %i.a, i8 0, i64 180, i1 false)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !348 ; 2 uses
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !348 ; 2 uses
  %.not914 = icmp eq ptr %i.be, %i.bf
  br i1 %.not914, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %.053.lcssa = phi i32 [ 0, %bb.b ], [ %.1.lcssa, %.critedge ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !160
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 2 uses
  %i.bq = mul nsw i32 %.053.lcssa, 100
  %i.br = sitofp i32 %i.bq to double
  %i.bs = sitofp i64 %i.bp to double              ; 2 uses
  %i.bt = fcmp olt double %i.bs, 1.000000e+00
  %.sroa.speculated = select i1 %i.bt, double 1.000000e+00, double %i.bs
  %i.bu = fdiv double %i.br, %.sroa.speculated
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef %i.bp, i32 noundef %.053.lcssa, double noundef %i.bu) #14 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph17, %.critedge
  %.05316 = phi i32 [ 0, %.lr.ph17 ], [ %.1.lcssa, %.critedge ] ; 3 uses
  %.sroa.01.015 = phi ptr [ %i.be, %.lr.ph17 ], [ %i.cq, %.critedge ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !352 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !353 ; 4 uses
  %i.ca = sub i32 %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !351
  %i.cd = and i32 %i.cc, 127
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !101
  %i.ch = add nsw i32 %i.ca, %i.cg
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !101
  %i.ci = icmp slt i32 %i.bz, %i.bx
  br i1 %i.ci, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.cj = sext i32 %i.bz to i64
  %i.ck = add i32 %.05316, %i.bx
  %i.cl = sub i32 %i.ck, %i.bz
  %wide.trip.count = sext i32 %i.bx to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.cj, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.110 = phi i32 [ %.05316, %.lr.ph ], [ %i.cp, %bb.e ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !101
  %.not = icmp eq i32 %i.co, -1
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = add nsw i32 %.110, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !669

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.c
  %.1.lcssa = phi i32 [ %.05316, %bb.c ], [ %i.cl, %bb.e ], [ %.110, %bb.d ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 16 ; 2 uses
  %.not9 = icmp eq ptr %i.cq, %i.bf
  br i1 %.not9, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge, %bb.i
  %indvars.iv21 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next22, %bb.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv21
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !101 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cu = trunc nuw nsw i64 %indvars.iv21 to i32
  %i.cv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %i.cu, i32 noundef %i.cs) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next22, 45
  br i1 %exitcond24.not, label %bb.f, label %bb.g, !llvm.loop !670

bb.j:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN3gmxL23print_nblist_statisticsILNS_12PairlistTypeE3EEEvP8_IO_FILERKNS_16NbnxnPairlistGpuERKNS_7GridSetEf(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1, ptr nofree readonly captures(none) %.24.val, float noundef %2) unnamed_addr #22 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !314
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 7
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %i.i, i64 noundef %i.q, i32 noundef %i.s, i64 noundef %i.aa) #14 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.24.val, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !280
  %i.ae = load i32, ptr %i.r, align 8, !tbaa !94  ; 2 uses
  %i.af = sitofp i32 %i.ae to double
  %i.ag = load i8, ptr %.24.val, align 8, !tbaa !289, !range !131, !noundef !132
  %i.ah = trunc nuw i8 %i.ag to i1
  %.0.in.v.i = select i1 %i.ah, i64 96, i64 368
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.24.val, i64 %.0.in.v.i
  %.0.i = load i32, ptr %.0.in.i, align 8, !tbaa !101
  %i.ai = sitofp i32 %.0.i to double              ; 2 uses
  %i.aj = fdiv double %i.af, %i.ai                ; 2 uses
  %i.ak = sitofp i32 %i.ad to double              ; 2 uses
  %i.al = fmul double %i.aj, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = load i32, ptr %i.am, align 8, !tbaa !90
  %i.ao = fpext float %2 to double                ; 4 uses
  %i.ap = fmul double %i.ao, f0x4000C152382D7365
  %i.aq = fmul double %i.ap, %i.ao
  %i.ar = fmul double %i.aq, %i.ao
  %i.as = fmul double %i.ar, %i.ai
  %i.at = fmul double %i.as, %i.ak
  %i.au = getelementptr inbounds nuw i8, ptr %.24.val, i64 52
  %i.av = load float, ptr %i.au, align 4, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %.24.val, i64 56
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !57
  %i.ay = fmul float %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.24.val, i64 60
  %i.ba = load float, ptr %i.az, align 4, !tbaa !57
  %i.bb = fmul float %i.ay, %i.ba
  %i.bc = fpext float %i.bb to double
  %i.bd = fdiv double %i.at, %i.bc
  %i.be = fdiv double %i.al, %i.bd
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %i.an, double noundef %i.ao, i32 noundef %i.ae, double noundef %i.aj, double noundef %i.al, double noundef %i.be) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !137 ; 3 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !137 ; 3 uses
  %.not1423 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not1423, label %._crit_edge29.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.bi = load ptr, ptr %i.j, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.sroa.06.025 = phi ptr [ %i.ds, %._crit_edge ], [ %i.bg, %.lr.ph.preheader ] ; 3 uses
  %.01324 = phi i32 [ %.sroa.speculated, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %i.bj = phi <2 x double> [ %i.dr, %._crit_edge ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.025, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !360 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.025, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !359 ; 2 uses
  %i.bo = icmp slt i32 %i.bl, %i.bn
  br i1 %i.bo, label %.preheader16.lr.ph, label %._crit_edge

.preheader16.lr.ph:                               ; preds = %.lr.ph
  %i.bp = sext i32 %i.bl to i64
  %wide.trip.count = sext i32 %i.bn to i64
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.lr.ph, %.preheader16
  %indvars.iv = phi i64 [ %i.bp, %.preheader16.lr.ph ], [ %indvars.iv.next, %.preheader16 ] ; 2 uses
  %slprdx.acc = phi <4 x i32> [ zeroinitializer, %.preheader16.lr.ph ], [ %slprdx.acc56, %.preheader16 ]
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !362
  %i.bt = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.bv = lshr <4 x i32> %i.bu, <i32 0, i32 8, i32 16, i32 24>
  %i.bw = and <4 x i32> %i.bv, splat (i32 1)
  %i.bx = lshr <4 x i32> %i.bu, <i32 1, i32 9, i32 17, i32 25>
  %i.by = and <4 x i32> %i.bx, splat (i32 1)
  %i.bz = add nuw nsw <4 x i32> %i.by, %i.bw
  %i.ca = lshr <4 x i32> %i.bu, <i32 2, i32 10, i32 18, i32 26>
  %i.cb = and <4 x i32> %i.ca, splat (i32 1)
  %i.cc = add nuw nsw <4 x i32> %i.cb, %i.bz
  %i.cd = lshr <4 x i32> %i.bu, <i32 3, i32 11, i32 19, i32 27>
  %i.ce = and <4 x i32> %i.cd, splat (i32 1)
  %i.cf = add nuw nsw <4 x i32> %i.ce, %i.cc
  %i.cg = lshr <4 x i32> %i.bu, <i32 4, i32 12, i32 20, i32 28>
  %i.ch = and <4 x i32> %i.cg, splat (i32 1)
  %i.ci = add nuw nsw <4 x i32> %i.ch, %i.cf
  %i.cj = lshr <4 x i32> %i.bu, <i32 5, i32 13, i32 21, i32 29>
  %i.ck = and <4 x i32> %i.cj, splat (i32 1)
  %i.cl = add nuw nsw <4 x i32> %i.ck, %i.ci
  %i.cm = lshr <4 x i32> %i.bu, <i32 6, i32 14, i32 22, i32 30>
  %i.cn = and <4 x i32> %i.cm, splat (i32 1)
  %i.co = add nuw nsw <4 x i32> %i.cn, %i.cl
  %i.cp = lshr <4 x i32> %i.bu, <i32 7, i32 15, i32 23, i32 31>
  %i.cq = and <4 x i32> %i.cp, <i32 1, i32 1, i32 1, i32 -1>
  %i.cr = add nuw nsw <4 x i32> %i.cq, %i.co      ; 5 uses
  %i.cs = extractelement <4 x i32> %i.cr, i64 0
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !101
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !101
  %i.cx = extractelement <4 x i32> %i.cr, i64 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !101
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !101
  %i.dc = extractelement <4 x i32> %i.cr, i64 2
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !101
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !101
  %slprdx.acc56 = add <4 x i32> %slprdx.acc, %i.cr ; 2 uses
  %i.dh = extractelement <4 x i32> %i.cr, i64 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !101
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !101
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader16, !llvm.loop !671

._crit_edge.loopexit:                             ; preds = %.preheader16
  %3 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %slprdx.acc56)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph
  %.012.lcssa = phi i32 [ 0, %.lr.ph ], [ %3, %._crit_edge.loopexit ] ; 4 uses
  %i.dm = mul nsw i32 %.012.lcssa, %.012.lcssa
  %i.dn = uitofp nneg i32 %i.dm to double
  %i.do = sitofp i32 %.012.lcssa to double
  %i.dp = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.do, i64 1
  %i.dr = fadd <2 x double> %i.bj, %i.dq          ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.01324, i32 %.012.lcssa) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.025, i64 16 ; 2 uses
  %.not14 = icmp eq ptr %i.ds, %i.bh
  br i1 %.not14, label %._crit_edge29, label %.lr.ph

._crit_edge29:                                    ; preds = %._crit_edge
  %i.dt = ptrtoint ptr %i.bh to i64
  %i.du = ptrtoint ptr %i.bg to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 4
  %i.dx = uitofp i64 %i.dw to double
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fdiv <2 x double> %i.dr, %i.dz
  br label %._crit_edge29.thread

._crit_edge29.thread:                             ; preds = %bb.a, %._crit_edge29
  %.013.lcssa51 = phi i32 [ 0, %bb.a ], [ %.sroa.speculated, %._crit_edge29 ]
  %i.eb = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.ea, %._crit_edge29 ] ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 1 ; 3 uses
  %i.ed = fneg double %i.ec
  %i.ee = extractelement <2 x double> %i.eb, i64 0
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ec, double %i.ee)
  %i.eg = tail call double @sqrt(double noundef %i.ef) #14
  %i.eh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, double noundef %i.ec, double noundef %i.eg, i32 noundef %.013.lcssa51) #14 ; 0 uses
  %i.ei = load ptr, ptr %i.k, align 8, !tbaa !315 ; 2 uses
  %i.ej = load ptr, ptr %i.j, align 8, !tbaa !98  ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge29.thread
  %i.el = load i32, ptr %i.a, align 16, !tbaa !101 ; 2 uses
  %i.em = sitofp i32 %i.el to double
  %i.en = fmul nnan double %i.em, 1.000000e+02
  %i.eo = ptrtoint ptr %i.ei to i64
  %i.ep = ptrtoint ptr %i.ej to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 3
  %i.es = sitofp i64 %i.er to double
  %i.et = fdiv double %i.en, %i.es
  %i.eu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %i.el, double noundef %i.et) #14 ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !101 ; 2 uses
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = fmul nnan double %i.ex, 1.000000e+02
  %i.ez = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.fa = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 3
  %i.ff = sitofp i64 %i.fe to double
  %i.fg = fdiv double %i.ey, %i.ff
  %i.fh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef %i.ew, double noundef %i.fg) #14 ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !101 ; 2 uses
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = fmul nnan double %i.fk, 1.000000e+02
  %i.fm = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3
  %i.fs = sitofp i64 %i.fr to double
  %i.ft = fdiv double %i.fl, %i.fs
  %i.fu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 2, i32 noundef %i.fj, double noundef %i.ft) #14 ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !101 ; 2 uses
  %i.fx = sitofp i32 %i.fw to double
  %i.fy = fmul nnan double %i.fx, 1.000000e+02
  %i.fz = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.ga = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = sitofp i64 %i.ge to double
  %i.gg = fdiv double %i.fy, %i.gf
  %i.gh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 3, i32 noundef %i.fw, double noundef %i.gg) #14 ; 0 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gj = load i32, ptr %i.gi, align 16, !tbaa !101 ; 2 uses
  %i.gk = sitofp i32 %i.gj to double
  %i.gl = fmul nnan double %i.gk, 1.000000e+02
  %i.gm = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.gn = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 3
  %i.gs = sitofp i64 %i.gr to double
  %i.gt = fdiv double %i.gl, %i.gs
  %i.gu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %i.gj, double noundef %i.gt) #14 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !101 ; 2 uses
  %i.gx = sitofp i32 %i.gw to double
  %i.gy = fmul nnan double %i.gx, 1.000000e+02
  %i.gz = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.ha = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = ashr exact i64 %i.hd, 3
  %i.hf = sitofp i64 %i.he to double
  %i.hg = fdiv double %i.gy, %i.hf
  %i.hh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 5, i32 noundef %i.gw, double noundef %i.hg) #14 ; 0 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !101 ; 2 uses
  %i.hk = sitofp i32 %i.hj to double
  %i.hl = fmul nnan double %i.hk, 1.000000e+02
  %i.hm = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.hn = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 3
  %i.hs = sitofp i64 %i.hr to double
  %i.ht = fdiv double %i.hl, %i.hs
  %i.hu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 6, i32 noundef %i.hj, double noundef %i.ht) #14 ; 0 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !101 ; 2 uses
  %i.hx = sitofp i32 %i.hw to double
  %i.hy = fmul nnan double %i.hx, 1.000000e+02
  %i.hz = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.ia = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = ashr exact i64 %i.id, 3
  %i.if = sitofp i64 %i.ie to double
  %i.ig = fdiv double %i.hy, %i.if
  %i.ih = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 7, i32 noundef %i.hw, double noundef %i.ig) #14 ; 0 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ij = load i32, ptr %i.ii, align 16, !tbaa !101 ; 2 uses
  %i.ik = sitofp i32 %i.ij to double
  %i.il = fmul nnan double %i.ik, 1.000000e+02
  %i.im = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.in = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = ashr exact i64 %i.iq, 3
  %i.is = sitofp i64 %i.ir to double
  %i.it = fdiv double %i.il, %i.is
  %i.iu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 8, i32 noundef %i.ij, double noundef %i.it) #14 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %._crit_edge29.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5arrayImLm2EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9 = alloca [15 x i8], align 1            ; 14 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !675
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !277  ; 11 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.4.8.copyload = load i8, ptr %3, align 8  ; 11 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..sroa_idx, i64 15, i1 false), !tbaa.struct !676
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 5 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.m = sub i64 0, %2
  %i.n = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.m ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = icmp sgt i64 %2, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !368

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.n, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPSt5arrayImLm2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit

end_hunk_0
