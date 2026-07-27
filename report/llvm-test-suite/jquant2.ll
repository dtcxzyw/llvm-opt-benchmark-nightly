inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@finish_pass1:bb.a
  %wide.trip.count.i = zext nneg i32 %.0.lcssa.i62.i to i64
  br label %bb.l

bb.l:                                             ; preds = %compute_color.exit.i, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next53.i, %compute_color.exit.i ] ; 5 uses
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv52.i ; 6 uses
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !49
  %i.da = load i32, ptr %i.cw, align 8, !tbaa !84 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !82 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !85 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !83 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !73 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !75 ; 2 uses
  %.not95.i.i = icmp sle i32 %i.da, %i.dc
  tail call void @llvm.assume(i1 %.not95.i.i)
  %.not6780.i.i = icmp sgt i32 %i.de, %i.dg
  %i.dl = sext i32 %i.di to i64                   ; 2 uses
  br i1 %.not6780.i.i, label %.preheader.us.i.i, label %.preheader.lr.ph.split.i.i

.preheader.us.i.i:                                ; preds = %bb.l, %.preheader.us.i.i
  br label %.preheader.us.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %bb.l
  %.not6870.i.i = icmp sgt i32 %i.di, %i.dk
  br i1 %.not6870.i.i, label %.preheader.us110.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.split.i.i
  %i.dm = add i32 %i.dk, 1
  %i.dn = sext i32 %i.de to i64
  %i.do = add i32 %i.dg, 1
  %i.dp = sext i32 %i.da to i64
  %i.dq = add i32 %i.dc, 1
  br label %.preheader.i.i

.preheader.us110.i.i:                             ; preds = %.preheader.lr.ph.split.i.i, %.preheader.us110.i.i
  br label %.preheader.us110.i.i

.preheader.i.i:                                   ; preds = %._crit_edge87.split.i.i, %.preheader.preheader.i.i
  %indvars.iv131.i.i = phi i64 [ %i.dp, %.preheader.preheader.i.i ], [ %indvars.iv.next132.i.i, %._crit_edge87.split.i.i ] ; 3 uses
  %.0100.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.3.i.i, %._crit_edge87.split.i.i ]
  %.05099.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.353.i.i, %._crit_edge87.split.i.i ]
  %.05498.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.357.i.i, %._crit_edge87.split.i.i ]
  %.05897.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.361.i.i, %._crit_edge87.split.i.i ]
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %indvars.iv131.i.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !51
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.ds, i64 %i.dl
  %i.dt = trunc nsw i64 %indvars.iv131.i.i to i32
  %i.du = shl i32 %i.dt, 3
  %i.dv = or disjoint i32 %i.du, 4
  %i.dw = sext i32 %i.dv to i64
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %._crit_edge.i.i, %.preheader.i.i
  %indvars.iv126.i.i = phi i64 [ %i.dn, %.preheader.i.i ], [ %indvars.iv.next127.i.i, %._crit_edge.i.i ] ; 3 uses
  %.185.i.i = phi i64 [ %.0100.i.i, %.preheader.i.i ], [ %.3.i.i, %._crit_edge.i.i ]
  %.15184.i.i = phi i64 [ %.05099.i.i, %.preheader.i.i ], [ %.353.i.i, %._crit_edge.i.i ]
  %.15583.i.i = phi i64 [ %.05498.i.i, %.preheader.i.i ], [ %.357.i.i, %._crit_edge.i.i ]
  %.15982.i.i = phi i64 [ %.05897.i.i, %.preheader.i.i ], [ %.361.i.i, %._crit_edge.i.i ]
  %gep.i.i = getelementptr [64 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv126.i.i
  %i.dx = trunc nsw i64 %indvars.iv126.i.i to i32
  %i.dy = shl i32 %i.dx, 2
  %i.dz = or disjoint i32 %i.dy, 2
  %i.ea = sext i32 %i.dz to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i29.i
  %indvars.iv.i30.i = phi i64 [ %i.dl, %.lr.ph.i29.i ], [ %indvars.iv.next.i31.i, %bb.o ] ; 2 uses
  %.276.i.i = phi i64 [ %.185.i.i, %.lr.ph.i29.i ], [ %.3.i.i, %bb.o ] ; 2 uses
  %.25275.i.i = phi i64 [ %.15184.i.i, %.lr.ph.i29.i ], [ %.353.i.i, %bb.o ] ; 2 uses
  %.25674.i.i = phi i64 [ %.15583.i.i, %.lr.ph.i29.i ], [ %.357.i.i, %bb.o ] ; 2 uses
  %.26073.i.i = phi i64 [ %.15982.i.i, %.lr.ph.i29.i ], [ %.361.i.i, %bb.o ] ; 2 uses
  %.06272.i.i = phi ptr [ %gep.i.i, %.lr.ph.i29.i ], [ %i.eb, %bb.o ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.06272.i.i, i64 2
  %i.ec = load i16, ptr %.06272.i.i, align 2, !tbaa !68 ; 2 uses
  %.not69.i.i = icmp eq i16 %i.ec, 0
  br i1 %.not69.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = zext i16 %i.ec to i64                   ; 4 uses
  %i.ee = add nsw i64 %.26073.i.i, %i.ed
  %i.ef = mul nsw i64 %i.ed, %i.dw
  %i.eg = add nsw i64 %i.ef, %.25674.i.i
  %i.eh = mul nsw i64 %i.ed, %i.ea
  %i.ei = add nsw i64 %i.eh, %.25275.i.i
  %i.ej = trunc nsw i64 %indvars.iv.i30.i to i32
  %i.ek = shl i32 %i.ej, 3
  %i.el = or disjoint i32 %i.ek, 4
  %i.em = sext i32 %i.el to i64
  %i.en = mul nsw i64 %i.ed, %i.em
  %i.eo = add nsw i64 %i.en, %.276.i.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.361.i.i = phi i64 [ %i.ee, %bb.n ], [ %.26073.i.i, %bb.m ] ; 7 uses
  %.357.i.i = phi i64 [ %i.eg, %bb.n ], [ %.25674.i.i, %bb.m ] ; 4 uses
  %.353.i.i = phi i64 [ %i.ei, %bb.n ], [ %.25275.i.i, %bb.m ] ; 4 uses
  %.3.i.i = phi i64 [ %i.eo, %bb.n ], [ %.276.i.i, %bb.m ] ; 4 uses
  %indvars.iv.next.i31.i = add nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i31.i to i32
  %exitcond.not.i32.i = icmp eq i32 %i.dm, %lftr.wideiv.i.i
  br i1 %exitcond.not.i32.i, label %._crit_edge.i.i, label %bb.m, !llvm.loop !87

._crit_edge.i.i:                                  ; preds = %bb.o
  %indvars.iv.next127.i.i = add nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %lftr.wideiv129.i.i = trunc i64 %indvars.iv.next127.i.i to i32
  %exitcond130.not.i.i = icmp eq i32 %i.do, %lftr.wideiv129.i.i
  br i1 %exitcond130.not.i.i, label %._crit_edge87.split.i.i, label %.lr.ph.i29.i, !llvm.loop !88

._crit_edge87.split.i.i:                          ; preds = %._crit_edge.i.i
  %indvars.iv.next132.i.i = add nsw i64 %indvars.iv131.i.i, 1 ; 2 uses
  %lftr.wideiv134.i.i = trunc i64 %indvars.iv.next132.i.i to i32
  %exitcond135.not.i.i = icmp eq i32 %i.dq, %lftr.wideiv134.i.i
  br i1 %exitcond135.not.i.i, label %compute_color.exit.i, label %.preheader.i.i, !llvm.loop !89

compute_color.exit.i:                             ; preds = %._crit_edge87.split.i.i
  %i.ep = ashr i64 %.361.i.i, 1                   ; 3 uses
  %i.eq = add nsw i64 %.357.i.i, %i.ep
  %i.er = sdiv i64 %i.eq, %.361.i.i
  %i.es = trunc i64 %i.er to i8
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !67
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv52.i
  store i8 %i.es, ptr %i.ev, align 1, !tbaa !57
  %i.ew = add nsw i64 %.353.i.i, %i.ep
  %i.ex = sdiv i64 %i.ew, %.361.i.i
  %i.ey = trunc i64 %i.ex to i8
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !67
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv52.i
  store i8 %i.ey, ptr %i.fc, align 1, !tbaa !57
  %i.fd = add nsw i64 %.3.i.i, %i.ep
  %i.fe = sdiv i64 %i.fd, %.361.i.i
  %i.ff = trunc i64 %i.fe to i8
  %i.fg = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !67
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv52.i
  store i8 %i.ff, ptr %i.fj, align 1, !tbaa !57
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %select_colors.exit, label %bb.l, !llvm.loop !90

select_colors.exit:                               ; preds = %compute_color.exit.i, %median_cut.exit.i
  %.0.lcssa.i61.i = phi i32 [ %.0.lcssa.i.i, %median_cut.exit.i ], [ %.0.lcssa.i62.i, %compute_color.exit.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.0.lcssa.i61.i, ptr %i.fk, align 4, !tbaa !65
  %i.fl = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i32 95, ptr %i.fm, align 8, !tbaa !46
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 44
  store i32 %.0.lcssa.i61.i, ptr %i.fn, align 4, !tbaa !57
  %i.fo = load ptr, ptr %0, align 8, !tbaa !45
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !91
  tail call void %i.fq(ptr noundef nonnull %0, i32 noundef 1) #9, !inline_history !72
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 1, ptr %i.fr, align 8, !tbaa !54
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pass2_fs_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.t = add i32 %i.f, -1                         ; 2 uses
  %i.u = mul i32 %i.t, 3
  %i.v = zext i32 %i.u to i64
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.y = mul i32 %i.f, 3
  %i.z = add i32 %i.y, 3
  %i.aa = zext i32 %i.z to i64
  %.not146147 = icmp eq i32 %i.f, 0
  br i1 %.not146147, label %.lr.ph166.split.us, label %.lr.ph166.split.preheader

.lr.ph166.split.preheader:                        ; preds = %.lr.ph166
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph166.split

.lr.ph166.split.us:                               ; preds = %.lr.ph166
  %.promoted = load i32, ptr %i.s, align 8, !tbaa !93 ; 2 uses
  %xtraiter = and i32 %3, 1
  %i.ab = icmp eq i32 %3, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph166.split.us.new

.lr.ph166.split.us.new:                           ; preds = %.lr.ph166.split.us
  %unroll_iter = and i32 %3, 2147483646
  %i.ac = icmp ne i32 %.promoted, 0               ; 3 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !42  ; 2 uses
  %.0141.us.idx = select i1 %i.ac, i64 6, i64 0
  %.0141.us = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0141.us.idx ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0141.us, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %.0141.us, i64 4
  %.0141.us.idx.1 = select i1 %i.ac, i64 0, i64 6
  %.0141.us.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0141.us.idx.1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0141.us.1, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.0141.us.1, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph166.split.us.new
  %niter = phi i32 [ 0, %.lr.ph166.split.us.new ], [ %niter.next.1, %bb.b ]
  store i16 0, ptr %.0141.us, align 2, !tbaa !68
  store i16 0, ptr %i.ae, align 2, !tbaa !68
  store i16 0, ptr %i.af, align 2, !tbaa !68
  store i16 0, ptr %.0141.us.1, align 2, !tbaa !68
  store i16 0, ptr %i.ag, align 2, !tbaa !68
  store i16 0, ptr %i.ah, align 2, !tbaa !68
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge167.split.us.unr-lcssa, label %bb.b, !llvm.loop !94

._crit_edge167.split.us.unr-lcssa:                ; preds = %bb.b
  %storemerge.us.1 = zext i1 %i.ac to i32         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge167.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge167.split.us.unr-lcssa, %.lr.ph166.split.us
  %storemerge.us168.epil.init = phi i32 [ %.promoted, %.lr.ph166.split.us ], [ %storemerge.us.1, %._crit_edge167.split.us.unr-lcssa ]
  %lcmp.mod191 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %.not.us.epil = icmp eq i32 %storemerge.us168.epil.init, 0 ; 2 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !42
  %storemerge.us.epil = zext i1 %.not.us.epil to i32
  %.0141.us.idx.epil = select i1 %.not.us.epil, i64 0, i64 6
  %.0141.us.epil = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0141.us.idx.epil ; 3 uses
  store i16 0, ptr %.0141.us.epil, align 2, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %.0141.us.epil, i64 2
  store i16 0, ptr %i.aj, align 2, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %.0141.us.epil, i64 4
  store i16 0, ptr %i.ak, align 2, !tbaa !68
  br label %._crit_edge167.split.us

._crit_edge167.split.us:                          ; preds = %._crit_edge167.split.us.unr-lcssa, %.epil.preheader
  %storemerge.us.lcssa = phi i32 [ %storemerge.us.1, %._crit_edge167.split.us.unr-lcssa ], [ %storemerge.us.epil, %.epil.preheader ]
  store i32 %storemerge.us.lcssa, ptr %i.s, align 8, !tbaa !93
  br label %._crit_edge167

.lr.ph166.split:                                  ; preds = %.lr.ph166.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph166.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !67 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %i.ap = load i32, ptr %i.s, align 8, !tbaa !93
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph166.split
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.v
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.w
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.aa
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph166.split
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !42
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %.0144 = phi ptr [ %i.am, %bb.d ], [ %i.aq, %bb.c ]
  %.0142 = phi ptr [ %i.ao, %bb.d ], [ %i.ar, %bb.c ]
  %.0141 = phi ptr [ %i.au, %bb.d ], [ %i.at, %bb.c ]
  %.0140 = phi i64 [ 1, %bb.d ], [ -1, %bb.c ]
  %.0139 = phi i64 [ 3, %bb.d ], [ -3, %bb.c ]    ; 2 uses
  store i32 %storemerge, ptr %i.s, align 8, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.0160 = phi i32 [ 0, %.lr.ph ], [ %i.eb, %bb.g ]
  %.0129159 = phi i32 [ 0, %.lr.ph ], [ %i.ei, %bb.g ]
  %.0130158 = phi i32 [ 0, %.lr.ph ], [ %i.ep, %bb.g ]
  %.0131157 = phi i32 [ 0, %.lr.ph ], [ %i.dn, %bb.g ]
  %.0132156 = phi i32 [ 0, %.lr.ph ], [ %i.dr, %bb.g ]
  %.0133155 = phi i32 [ 0, %.lr.ph ], [ %i.dv, %bb.g ]
  %.0134154 = phi i32 [ 0, %.lr.ph ], [ %i.ea, %bb.g ]
  %.0135153 = phi i32 [ 0, %.lr.ph ], [ %i.eh, %bb.g ]
  %.0136152 = phi i32 [ 0, %.lr.ph ], [ %i.eo, %bb.g ]
  %.0137151 = phi i32 [ %i.f, %.lr.ph ], [ %i.es, %bb.g ]
  %.1150 = phi ptr [ %.0141, %.lr.ph ], [ %i.av, %bb.g ] ; 4 uses
  %.1143149 = phi ptr [ %.0142, %.lr.ph ], [ %i.er, %bb.g ] ; 2 uses
  %.1145148 = phi ptr [ %.0144, %.lr.ph ], [ %i.eq, %bb.g ] ; 4 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %.1150, i64 %.0139 ; 7 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !68
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %.0160, 8
  %i.az = add nsw i32 %i.ay, %i.ax
  %i.ba = ashr i32 %i.az, 4
  %i.bb = getelementptr i8, ptr %i.av, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !68
  %i.bd = sext i16 %i.bc to i32
  %i.be = add nsw i32 %.0129159, 8
  %i.bf = add nsw i32 %i.be, %i.bd
  %i.bg = ashr i32 %i.bf, 4
  %i.bh = getelementptr i8, ptr %i.av, i64 4
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !68
  %i.bj = sext i16 %i.bi to i32
  %i.bk = add nsw i32 %.0130158, 8
  %i.bl = add nsw i32 %i.bk, %i.bj
  %i.bm = ashr i32 %i.bl, 4
  %i.bn = sext i32 %i.ba to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = sext i32 %i.bg to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = sext i32 %i.bm to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = load i8, ptr %.1145148, align 1, !tbaa !57
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bp, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.1145148, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !57
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.bs, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.1145148, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !57
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.bv, %i.cf
  %i.ch = sext i32 %i.by to i64
  %i.ci = getelementptr inbounds i8, ptr %i.h, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !57
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = sext i32 %i.cc to i64
  %i.cm = getelementptr inbounds i8, ptr %i.h, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !57
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = sext i32 %i.cg to i64
  %i.cq = getelementptr inbounds i8, ptr %i.h, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !57
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = lshr i32 %i.ck, 3                       ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !51
  %i.cx = lshr i32 %i.co, 2                       ; 2 uses
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [64 x i8], ptr %i.cw, i64 %i.cy
  %i.da = lshr i32 %i.cs, 3                       ; 2 uses
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !68 ; 2 uses
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @fill_inverse_cmap(ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cx, i32 noundef %i.da)
  %.pre = load i16, ptr %i.dc, align 2, !tbaa !68
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.df = phi i16 [ %.pre, %bb.f ], [ %i.dd, %bb.e ]
  %i.dg = zext i16 %i.df to i32
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  %i.di = trunc i32 %i.dh to i8
  store i8 %i.di, ptr %.1143149, align 1, !tbaa !57
  %i.dj = sext i32 %i.dh to i64                   ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %i.m, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !57
  %i.dm = zext i8 %i.dl to i32
  %i.dn = sub nsw i32 %i.ck, %i.dm                ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %i.o, i64 %i.dj
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !57
  %i.dq = zext i8 %i.dp to i32
  %i.dr = sub nsw i32 %i.co, %i.dq                ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.q, i64 %i.dj
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !57
  %i.du = zext i8 %i.dt to i32
  %i.dv = sub nsw i32 %i.cs, %i.du                ; 4 uses
  %i.dw = mul nsw i32 %i.dn, 3
  %i.dx = add nsw i32 %i.dw, %.0134154
  %i.dy = trunc nsw i32 %i.dx to i16
  store i16 %i.dy, ptr %.1150, align 2, !tbaa !68
  %i.dz = mul nsw i32 %i.dn, 5
  %i.ea = add nsw i32 %i.dz, %.0131157            ; 2 uses
  %i.eb = mul nsw i32 %i.dn, 7
  %i.ec = mul nsw i32 %i.dr, 3
  %i.ed = add nsw i32 %i.ec, %.0135153
  %i.ee = trunc nsw i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %.1150, i64 2
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !68
  %i.eg = mul nsw i32 %i.dr, 5
  %i.eh = add nsw i32 %i.eg, %.0132156            ; 2 uses
  %i.ei = mul nsw i32 %i.dr, 7
  %i.ej = mul nsw i32 %i.dv, 3
  %i.ek = add nsw i32 %i.ej, %.0136152
  %i.el = trunc nsw i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %.1150, i64 4
  store i16 %i.el, ptr %i.em, align 2, !tbaa !68
  %i.en = mul nsw i32 %i.dv, 5
  %i.eo = add nsw i32 %i.en, %.0133155            ; 2 uses
  %i.ep = mul nsw i32 %i.dv, 7
  %i.eq = getelementptr inbounds i8, ptr %.1145148, i64 %.0139
  %i.er = getelementptr inbounds i8, ptr %.1143149, i64 %.0140
  %i.es = add i32 %.0137151, -1                   ; 2 uses
  %.not146 = icmp eq i32 %i.es, 0
  br i1 %.not146, label %._crit_edge, label %bb.e, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.g
  %i.et = getelementptr i8, ptr %i.av, i64 2
  %i.eu = getelementptr i8, ptr %i.av, i64 4
  %i.ev = trunc nsw i32 %i.ea to i16
  store i16 %i.ev, ptr %i.av, align 2, !tbaa !68
  %i.ew = trunc nsw i32 %i.eh to i16
  store i16 %i.ew, ptr %i.et, align 2, !tbaa !68
  %i.ex = trunc nsw i32 %i.eo to i16
  store i16 %i.ex, ptr %i.eu, align 2, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge167, label %.lr.ph166.split, !llvm.loop !94

._crit_edge167:                                   ; preds = %._crit_edge, %._crit_edge167.split.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pass2_no_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62   ; 2 uses
end_hunk_0
