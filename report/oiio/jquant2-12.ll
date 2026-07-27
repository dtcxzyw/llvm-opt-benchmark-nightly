inline.NumInlined: 9
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@finish_pass1:bb.a
.lr.ph.i:                                         ; preds = %median_cut.exit.i, %bb.a
  %.0.lcssa.i62.i = phi i32 [ %.0.lcssa.i.i, %median_cut.exit.i ], [ 1, %bb.a ] ; 2 uses
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !55
  %wide.trip.count.i = zext nneg i32 %.0.lcssa.i62.i to i64
  br label %bb.m

bb.m:                                             ; preds = %compute_color.exit.i, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next53.i, %compute_color.exit.i ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv52.i ; 6 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !92 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !90 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !93 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !91 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !81 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !83 ; 2 uses
  %.not95.i.i = icmp sle i32 %i.dw, %i.dy
  tail call void @llvm.assume(i1 %.not95.i.i)
  %.not6780.i.i = icmp sgt i32 %i.ea, %i.ec
  %i.eh = sext i32 %i.ee to i64                   ; 2 uses
  br i1 %.not6780.i.i, label %.preheader.us.i.i, label %.preheader.lr.ph.split.i.i

.preheader.us.i.i:                                ; preds = %bb.m, %.preheader.us.i.i
  br label %.preheader.us.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %bb.m
  %.not6870.i.i = icmp sgt i32 %i.ee, %i.eg
  br i1 %.not6870.i.i, label %.preheader.us110.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.split.i.i
  %i.ei = add i32 %i.eg, 1
  %i.ej = sext i32 %i.ea to i64
  %i.ek = add i32 %i.ec, 1
  %i.el = sext i32 %i.dw to i64
  %i.em = add i32 %i.dy, 1
  br label %.preheader.i.i

.preheader.us110.i.i:                             ; preds = %.preheader.lr.ph.split.i.i, %.preheader.us110.i.i
  br label %.preheader.us110.i.i

.preheader.i.i:                                   ; preds = %._crit_edge87.split.i.i, %.preheader.preheader.i.i
  %indvars.iv131.i.i = phi i64 [ %i.el, %.preheader.preheader.i.i ], [ %indvars.iv.next132.i.i, %._crit_edge87.split.i.i ] ; 3 uses
  %.0100.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.3.i.i, %._crit_edge87.split.i.i ]
  %.05099.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.353.i.i, %._crit_edge87.split.i.i ]
  %.05498.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.357.i.i, %._crit_edge87.split.i.i ]
  %.05897.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.361.i.i, %._crit_edge87.split.i.i ]
  %i.en = getelementptr inbounds [8 x i8], ptr %i.du, i64 %indvars.iv131.i.i
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !57
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.eo, i64 %i.eh
  %i.ep = trunc nsw i64 %indvars.iv131.i.i to i32
  %i.eq = shl i32 %i.ep, 7
  %i.er = or disjoint i32 %i.eq, 64
  %i.es = sext i32 %i.er to i64
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %._crit_edge.i.i, %.preheader.i.i
  %indvars.iv126.i.i = phi i64 [ %i.ej, %.preheader.i.i ], [ %indvars.iv.next127.i.i, %._crit_edge.i.i ] ; 3 uses
  %.185.i.i = phi i64 [ %.0100.i.i, %.preheader.i.i ], [ %.3.i.i, %._crit_edge.i.i ]
  %.15184.i.i = phi i64 [ %.05099.i.i, %.preheader.i.i ], [ %.353.i.i, %._crit_edge.i.i ]
  %.15583.i.i = phi i64 [ %.05498.i.i, %.preheader.i.i ], [ %.357.i.i, %._crit_edge.i.i ]
  %.15982.i.i = phi i64 [ %.05897.i.i, %.preheader.i.i ], [ %.361.i.i, %._crit_edge.i.i ]
  %gep.i.i = getelementptr [64 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv126.i.i
  %i.et = trunc nsw i64 %indvars.iv126.i.i to i32
  %i.eu = shl i32 %i.et, 6
  %i.ev = or disjoint i32 %i.eu, 32
  %i.ew = sext i32 %i.ev to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i29.i
  %indvars.iv.i30.i = phi i64 [ %i.eh, %.lr.ph.i29.i ], [ %indvars.iv.next.i31.i, %bb.p ] ; 2 uses
  %.276.i.i = phi i64 [ %.185.i.i, %.lr.ph.i29.i ], [ %.3.i.i, %bb.p ] ; 2 uses
  %.25275.i.i = phi i64 [ %.15184.i.i, %.lr.ph.i29.i ], [ %.353.i.i, %bb.p ] ; 2 uses
  %.25674.i.i = phi i64 [ %.15583.i.i, %.lr.ph.i29.i ], [ %.357.i.i, %bb.p ] ; 2 uses
  %.26073.i.i = phi i64 [ %.15982.i.i, %.lr.ph.i29.i ], [ %.361.i.i, %bb.p ] ; 2 uses
  %.06272.i.i = phi ptr [ %gep.i.i, %.lr.ph.i29.i ], [ %i.ex, %bb.p ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.06272.i.i, i64 2
  %i.ey = load i16, ptr %.06272.i.i, align 2, !tbaa !76 ; 2 uses
  %.not69.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not69.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ez = zext i16 %i.ey to i64                   ; 4 uses
  %i.fa = add nsw i64 %.26073.i.i, %i.ez
  %i.fb = mul nsw i64 %i.ez, %i.es
  %i.fc = add nsw i64 %i.fb, %.25674.i.i
  %i.fd = mul nsw i64 %i.ez, %i.ew
  %i.fe = add nsw i64 %i.fd, %.25275.i.i
  %i.ff = trunc nsw i64 %indvars.iv.i30.i to i32
  %i.fg = shl i32 %i.ff, 7
  %i.fh = or disjoint i32 %i.fg, 64
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul nsw i64 %i.ez, %i.fi
  %i.fk = add nsw i64 %i.fj, %.276.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.361.i.i = phi i64 [ %i.fa, %bb.o ], [ %.26073.i.i, %bb.n ] ; 7 uses
  %.357.i.i = phi i64 [ %i.fc, %bb.o ], [ %.25674.i.i, %bb.n ] ; 4 uses
  %.353.i.i = phi i64 [ %i.fe, %bb.o ], [ %.25275.i.i, %bb.n ] ; 4 uses
  %.3.i.i = phi i64 [ %i.fk, %bb.o ], [ %.276.i.i, %bb.n ] ; 4 uses
  %indvars.iv.next.i31.i = add nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i31.i to i32
  %exitcond.not.i32.i = icmp eq i32 %i.ei, %lftr.wideiv.i.i
  br i1 %exitcond.not.i32.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !95

._crit_edge.i.i:                                  ; preds = %bb.p
  %indvars.iv.next127.i.i = add nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %lftr.wideiv129.i.i = trunc i64 %indvars.iv.next127.i.i to i32
  %exitcond130.not.i.i = icmp eq i32 %i.ek, %lftr.wideiv129.i.i
  br i1 %exitcond130.not.i.i, label %._crit_edge87.split.i.i, label %.lr.ph.i29.i, !llvm.loop !96

._crit_edge87.split.i.i:                          ; preds = %._crit_edge.i.i
  %indvars.iv.next132.i.i = add nsw i64 %indvars.iv131.i.i, 1 ; 2 uses
  %lftr.wideiv134.i.i = trunc i64 %indvars.iv.next132.i.i to i32
  %exitcond135.not.i.i = icmp eq i32 %i.em, %lftr.wideiv134.i.i
  br i1 %exitcond135.not.i.i, label %compute_color.exit.i, label %.preheader.i.i, !llvm.loop !97

compute_color.exit.i:                             ; preds = %._crit_edge87.split.i.i
  %i.fl = ashr i64 %.361.i.i, 1                   ; 3 uses
  %i.fm = add nsw i64 %.357.i.i, %i.fl
  %i.fn = sdiv i64 %i.fm, %.361.i.i
  %i.fo = trunc i64 %i.fn to i16
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !79  ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !57
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvars.iv52.i
  store i16 %i.fo, ptr %i.fr, align 2, !tbaa !76
  %i.fs = add nsw i64 %.353.i.i, %i.fl
  %i.ft = sdiv i64 %i.fs, %.361.i.i
  %i.fu = trunc i64 %i.ft to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !57
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %indvars.iv52.i
  store i16 %i.fu, ptr %i.fx, align 2, !tbaa !76
  %i.fy = add nsw i64 %.3.i.i, %i.fl
  %i.fz = sdiv i64 %i.fy, %.361.i.i
  %i.ga = trunc i64 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !57
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %indvars.iv52.i
  store i16 %i.ga, ptr %i.gd, align 2, !tbaa !76
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %select_colors.exit, label %bb.m, !llvm.loop !98

select_colors.exit:                               ; preds = %compute_color.exit.i, %median_cut.exit.i
  %.0.lcssa.i61.i = phi i32 [ %.0.lcssa.i.i, %median_cut.exit.i ], [ %.0.lcssa.i62.i, %compute_color.exit.i ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.0.lcssa.i61.i, ptr %i.ge, align 4, !tbaa !75
  %i.gf = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  store i32 98, ptr %i.gg, align 8, !tbaa !33
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 44
  store i32 %.0.lcssa.i61.i, ptr %i.gh, align 4, !tbaa !36
  %i.gi = load ptr, ptr %0, align 8, !tbaa !32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !99
  tail call void %i.gk(ptr noundef nonnull %0, i32 noundef 1) #10, !inline_history !80
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 1, ptr %i.gl, align 8, !tbaa !61
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pass2_fs_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !68   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  %i.t = add i32 %i.f, -1                         ; 2 uses
  %i.u = mul i32 %i.t, 3
  %i.v = zext i32 %i.u to i64
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 7 uses
  %i.y = mul i32 %i.f, 3
  %i.z = add i32 %i.y, 3
  %i.aa = zext i32 %i.z to i64                    ; 6 uses
  %.not128129 = icmp eq i32 %i.f, 0
  br i1 %.not128129, label %.lr.ph148.split.us, label %.lr.ph148.split.preheader

.lr.ph148.split.preheader:                        ; preds = %.lr.ph148
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph148.split

.lr.ph148.split.us:                               ; preds = %.lr.ph148
  %.promoted = load i32, ptr %i.s, align 8, !tbaa !101 ; 2 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.ab = icmp ult i32 %3, 4
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph148.split.us.new

.lr.ph148.split.us.new:                           ; preds = %.lr.ph148.split.us
  %unroll_iter = and i32 %3, 2147483644
  %i.ac = icmp ne i32 %.promoted, 0               ; 5 uses
  %.0126.us.idx = select i1 %i.ac, i64 %i.aa, i64 0
  %.0126.us.idx.1 = select i1 %i.ac, i64 0, i64 %i.aa
  %.0126.us.idx.2 = select i1 %i.ac, i64 %i.aa, i64 0
  %.0126.us.idx.3 = select i1 %i.ac, i64 0, i64 %i.aa
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph148.split.us.new
  %niter = phi i32 [ 0, %.lr.ph148.split.us.new ], [ %niter.next.3, %bb.b ]
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !48
  %.0126.us = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0126.us.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0126.us, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !48
  %.0126.us.1 = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.0126.us.idx.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0126.us.1, i8 0, i64 24, i1 false)
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !48
  %.0126.us.2 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0126.us.idx.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0126.us.2, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !48
  %.0126.us.3 = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.0126.us.idx.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0126.us.3, i8 0, i64 24, i1 false)
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge149.split.us.unr-lcssa, label %bb.b, !llvm.loop !102

._crit_edge149.split.us.unr-lcssa:                ; preds = %bb.b
  %storemerge.us.3 = zext i1 %i.ac to i32         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge149.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge149.split.us.unr-lcssa, %.lr.ph148.split.us
  %storemerge.us150.epil.init = phi i32 [ %.promoted, %.lr.ph148.split.us ], [ %storemerge.us.3, %._crit_edge149.split.us.unr-lcssa ]
  %lcmp.mod173 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %storemerge.us150.epil = phi i32 [ %storemerge.us150.epil.init, %.epil.preheader ], [ %storemerge.us.epil, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.not.us.epil = icmp eq i32 %storemerge.us150.epil, 0 ; 2 uses
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !48
  %storemerge.us.epil = zext i1 %.not.us.epil to i32 ; 2 uses
  %.0126.us.idx.epil = select i1 %.not.us.epil, i64 0, i64 %i.aa
  %.0126.us.epil = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0126.us.idx.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0126.us.epil, i8 0, i64 24, i1 false)
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge149.split.us, label %bb.c, !llvm.loop !103

._crit_edge149.split.us:                          ; preds = %bb.c, %._crit_edge149.split.us.unr-lcssa
  %storemerge.us.lcssa = phi i32 [ %storemerge.us.3, %._crit_edge149.split.us.unr-lcssa ], [ %storemerge.us.epil, %bb.c ]
  store i32 %storemerge.us.lcssa, ptr %i.s, align 8, !tbaa !101
  br label %._crit_edge149

.lr.ph148.split:                                  ; preds = %.lr.ph148.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph148.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %i.am = load i32, ptr %i.s, align 8, !tbaa !101
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph148.split
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.v
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.w
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aa
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph148.split
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !48
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %storemerge = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  %.0126 = phi ptr [ %i.ar, %bb.e ], [ %i.aq, %bb.d ]
  %.0124 = phi ptr [ %i.aj, %bb.e ], [ %i.an, %bb.d ]
  %.0123 = phi ptr [ %i.al, %bb.e ], [ %i.ao, %bb.d ]
  %.0121 = phi i64 [ 1, %bb.e ], [ -1, %bb.d ]
  %.0120 = phi i64 [ 3, %bb.e ], [ -3, %bb.d ]    ; 2 uses
  store i32 %storemerge, ptr %i.s, align 8, !tbaa !101
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %bb.h ]
  %.0111141 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.h ]
  %.0112140 = phi i64 [ 0, %.lr.ph ], [ %i.ed, %bb.h ]
  %.0113139 = phi i64 [ 0, %.lr.ph ], [ %i.de, %bb.h ]
  %.0114138 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.h ]
  %.0115137 = phi i64 [ 0, %.lr.ph ], [ %i.dm, %bb.h ]
  %.0116136 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.h ]
  %.0117135 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.h ]
  %.0118134 = phi i32 [ %i.f, %.lr.ph ], [ %i.eg, %bb.h ]
  %.0122133 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %bb.h ]
  %.1132 = phi ptr [ %.0123, %.lr.ph ], [ %i.ef, %bb.h ] ; 2 uses
  %.1125131 = phi ptr [ %.0124, %.lr.ph ], [ %i.ee, %bb.h ] ; 4 uses
  %.1127130 = phi ptr [ %.0126, %.lr.ph ], [ %i.as, %bb.h ] ; 4 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.1127130, i64 %.0120 ; 7 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !104
  %i.au = add nsw i64 %.0142, 8
  %i.av = add i64 %i.au, %i.at
  %i.aw = ashr i64 %i.av, 4
  %i.ax = getelementptr i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !104
  %i.az = add nsw i64 %.0111141, 8
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = ashr i64 %i.ba, 4
  %i.bc = getelementptr i8, ptr %i.as, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !104
  %i.be = add nsw i64 %.0112140, 8
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = ashr i64 %i.bf, 4
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aw
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bb
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bg
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load i16, ptr %.1125131, align 2, !tbaa !76
  %i.br = sext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.1125131, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !76
  %i.bu = sext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.1125131, i64 4
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !76
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr [2 x i8], ptr %i.h, i64 %i.bj
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %i.br
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !76
  %i.cb = sext i16 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr [2 x i8], ptr %i.h, i64 %i.bm
  %i.cd = getelementptr [2 x i8], ptr %i.cc, i64 %i.bu
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !76
  %i.cf = sext i16 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr [2 x i8], ptr %i.h, i64 %i.bp
  %i.ch = getelementptr [2 x i8], ptr %i.cg, i64 %i.bx
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !76
  %i.cj = sext i16 %i.ci to i64                   ; 2 uses
  %i.ck = ashr i64 %i.cb, 7                       ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !57
  %i.cn = ashr i64 %i.cf, 6                       ; 2 uses
  %i.co = getelementptr inbounds [64 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = ashr i64 %i.cj, 7                       ; 2 uses
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !76 ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ct = trunc nsw i64 %i.ck to i32
  %i.cu = trunc nsw i64 %i.cn to i32
  %i.cv = trunc nsw i64 %i.cp to i32
  tail call fastcc void @fill_inverse_cmap(ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cu, i32 noundef %i.cv)
  %.pre = load i16, ptr %i.cq, align 2, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cw = phi i16 [ %.pre, %bb.g ], [ %i.cr, %bb.f ]
  %i.cx = zext i16 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  %i.cz = trunc i32 %i.cy to i16
  store i16 %i.cz, ptr %.1132, align 2, !tbaa !76
  %i.da = sext i32 %i.cy to i64                   ; 3 uses
  %i.db = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !76
  %i.dd = sext i16 %i.dc to i64
  %i.de = sub nsw i64 %i.cb, %i.dd                ; 4 uses
  %i.df = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.da
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !76
  %i.dh = sext i16 %i.dg to i64
  %i.di = sub nsw i64 %i.cf, %i.dh                ; 4 uses
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.da
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !76
  %i.dl = sext i16 %i.dk to i64
  %i.dm = sub nsw i64 %i.cj, %i.dl                ; 4 uses
  %i.dn = mul nsw i64 %i.de, 3
  %i.do = add nsw i64 %i.dn, %.0116136
  store i64 %i.do, ptr %.1127130, align 8, !tbaa !104
  %i.dp = mul nsw i64 %i.de, 5
  %i.dq = add nsw i64 %i.dp, %.0113139            ; 2 uses
  %i.dr = mul nsw i64 %i.de, 7
  %i.ds = mul nsw i64 %i.di, 3
  %i.dt = add nsw i64 %i.ds, %.0117135
  %i.du = getelementptr inbounds nuw i8, ptr %.1127130, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !104
  %i.dv = mul nsw i64 %i.di, 5
  %i.dw = add nsw i64 %i.dv, %.0114138            ; 2 uses
  %i.dx = mul nsw i64 %i.di, 7
  %i.dy = mul nsw i64 %i.dm, 3
  %i.dz = add nsw i64 %i.dy, %.0122133
  %i.ea = getelementptr inbounds nuw i8, ptr %.1127130, i64 16
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !104
  %i.eb = mul nsw i64 %i.dm, 5
  %i.ec = add nsw i64 %i.eb, %.0115137            ; 2 uses
  %i.ed = mul nsw i64 %i.dm, 7
  %i.ee = getelementptr inbounds [2 x i8], ptr %.1125131, i64 %.0120
  %i.ef = getelementptr inbounds [2 x i8], ptr %.1132, i64 %.0121
  %i.eg = add i32 %.0118134, -1                   ; 2 uses
  %.not128 = icmp eq i32 %i.eg, 0
  br i1 %.not128, label %._crit_edge, label %bb.f, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.h
  %i.eh = getelementptr i8, ptr %i.as, i64 8
  %i.ei = getelementptr i8, ptr %i.as, i64 16
  store i64 %i.dq, ptr %i.as, align 8, !tbaa !104
  store i64 %i.dw, ptr %i.eh, align 8, !tbaa !104
  store i64 %i.ec, ptr %i.ei, align 8, !tbaa !104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge149, label %.lr.ph148.split, !llvm.loop !102

._crit_edge149:                                   ; preds = %._crit_edge, %._crit_edge149.split.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pass2_no_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.g = icmp slt i32 %3, 1
  %.not29 = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.g, i1 true, i1 %.not29
  br i1 %or.cond, label %._crit_edge36.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
end_hunk_0
