inline.NumInlined: 68
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@SparseMatrix_from_coordinate_arrays_internal:bb.a
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph205.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph205.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph205.epil.preheader ], [ %epil.iter.next, %.lr.ph205.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.epil ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !23
  %i.er = add nsw i32 %i.eq, %i.eo                ; 2 uses
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !23
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader199, label %.lr.ph205.epil, !llvm.loop !85

.preheader199:                                    ; preds = %.lr.ph205.epil, %.preheader199.unr-lcssa
  br i1 %.not, label %._crit_edge229, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %.preheader199
  %xtraiter292 = and i64 %0, 1
  %i.es = icmp eq i64 %0, 1
  br i1 %i.es, label %.lr.ph207.epil.preheader, label %.lr.ph207.preheader.new

.lr.ph207.preheader.new:                          ; preds = %.lr.ph207.preheader
  %unroll_iter296 = and i64 %0, -2
  br label %.lr.ph207

.lr.ph205:                                        ; preds = %.lr.ph205, %.lr.ph205.preheader.new
  %i.et = phi i32 [ %.pre, %.lr.ph205.preheader.new ], [ %i.fi, %.lr.ph205 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph205.preheader.new ], [ %indvars.iv.next.3, %.lr.ph205 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph205.preheader.new ], [ %niter.next.3, %.lr.ph205 ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !23
  %i.ex = add nsw i32 %i.ew, %i.et                ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !23
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !23
  %i.fb = add nsw i32 %i.fa, %i.ex                ; 2 uses
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !23
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23
  %i.ff = add nsw i32 %i.fe, %i.fb                ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !23
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.3 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !23
  %i.fi = add nsw i32 %i.fh, %i.ff                ; 3 uses
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !23
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader199.unr-lcssa, label %.lr.ph205, !llvm.loop !86

.lr.ph207:                                        ; preds = %.lr.ph207, %.lr.ph207.preheader.new
  %.0157206 = phi i64 [ 0, %.lr.ph207.preheader.new ], [ %i.ge, %.lr.ph207 ] ; 4 uses
  %niter297 = phi i64 [ 0, %.lr.ph207.preheader.new ], [ %niter297.next.1, %.lr.ph207 ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0157206
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !23
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0157206
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !23
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !23 ; 2 uses
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !23
  %i.fr = sext i32 %i.fp to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fr
  store i32 %i.fk, ptr %i.fs, align 4, !tbaa !23
  %i.ft = or disjoint i64 %.0157206, 1            ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !23
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ft
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !23 ; 2 uses
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !23
  %i.gc = sext i32 %i.ga to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.gc
  store i32 %i.fv, ptr %i.gd, align 4, !tbaa !23
  %i.ge = add nuw i64 %.0157206, 2                ; 2 uses
  %niter297.next.1 = add nuw i64 %niter297, 2     ; 2 uses
  %niter297.ncmp.1 = icmp eq i64 %niter297.next.1, %unroll_iter296
  br i1 %niter297.ncmp.1, label %._crit_edge229.loopexit290.unr-lcssa, label %.lr.ph207, !llvm.loop !87

bb.n:                                             ; preds = %bb.b
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.gg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gf, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 492) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

._crit_edge229.loopexit.unr-lcssa:                ; preds = %.lr.ph226
  %lcmp.mod316.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod316.not, label %._crit_edge229, label %.lr.ph226.epil.preheader

.lr.ph226.epil.preheader:                         ; preds = %._crit_edge229.loopexit.unr-lcssa, %.lr.ph226.preheader
  %.0165225.epil.init = phi i64 [ 0, %.lr.ph226.preheader ], [ %i.bw, %._crit_edge229.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod317 = trunc i64 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod317)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.0165225.epil.init
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !31
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0165225.epil.init
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !23
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !23 ; 2 uses
  %i.go = sext i32 %i.gn to i64                   ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.go
  store double %i.gi, ptr %i.gp, align 8, !tbaa !31
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0165225.epil.init
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !23
  %i.gs = add nsw i32 %i.gn, 1
  store i32 %i.gs, ptr %i.gm, align 4, !tbaa !23
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.go
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !23
  br label %._crit_edge229

._crit_edge229.loopexit290.unr-lcssa:             ; preds = %.lr.ph207
  %lcmp.mod294.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod294.not, label %._crit_edge229, label %.lr.ph207.epil.preheader

.lr.ph207.epil.preheader:                         ; preds = %._crit_edge229.loopexit290.unr-lcssa, %.lr.ph207.preheader
  %.0157206.epil.init = phi i64 [ 0, %.lr.ph207.preheader ], [ %i.ge, %._crit_edge229.loopexit290.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod295)
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0157206.epil.init
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !23
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0157206.epil.init
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !23
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !23 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !23
  %i.hc = sext i32 %i.ha to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.hc
  store i32 %i.gv, ptr %i.hd, align 4, !tbaa !23
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %.lr.ph207.epil.preheader, %._crit_edge229.loopexit290.unr-lcssa, %.lr.ph216, %.lr.ph226.epil.preheader, %._crit_edge229.loopexit.unr-lcssa, %.preheader199, %.preheader196, %.preheader193
  %i.he = zext nneg i32 %1 to i64
  %i.hf = shl nuw nsw i64 %i.he, 2                ; 3 uses
  %i.hg = add nsw i32 %1, -1
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl nuw nsw i64 %i.hh, 2                ; 2 uses
  %i.hj = sub nsw i64 %i.hf, %i.hi
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.hj
  %i.hk = add nsw i64 %i.hf, -4
  %i.hl = sub nsw i64 %i.hk, %i.hi
  %scevgep239 = getelementptr i8, ptr %i.e, i64 %i.hl
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep239, i64 %i.hf, i1 false), !tbaa !23
  store i32 0, ptr %i.e, align 4, !tbaa !23
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %0, ptr %i.hm, align 8, !tbaa !20
  %.not184 = icmp eq i32 %8, 0
  br i1 %.not184, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge229
  %i.hn = tail call ptr @SparseMatrix_sum_repeat_entries(ptr noundef nonnull %i.c)
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge229, %bb.o, %bb.a
  %.0170 = phi ptr [ null, %bb.a ], [ %i.hn, %bb.o ], [ %i.c, %._crit_edge229 ]
  ret ptr %.0170
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SparseMatrix_multiply_dense(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.preheader37.us.us.preheader, label %._crit_edge44

.preheader37.us.us.preheader:                     ; preds = %bb.a
  %i.j = zext nneg i32 %3 to i64                  ; 7 uses
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 4 uses
  %i.l = zext nneg i32 %3 to i64
  %wide.trip.count61 = zext nneg i32 %i.g to i64
  %.pre = load i32, ptr %i.d, align 4, !tbaa !23
  %i.m = shl nuw nsw i64 %i.j, 3
  %scevgep72.a = getelementptr i8, ptr %1, i64 %i.k
  %i.n = getelementptr i8, ptr %2, i64 %i.k
  %min.iters.check = icmp ult i32 %3, 4
  %n.vec = and i64 %i.j, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.j
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.o = add nsw i64 %i.j, -1
  br label %.preheader37.us.us

.preheader37.us.us:                               ; preds = %.preheader37.us.us.preheader, %.loopexit.us.us
  %i.p = phi i32 [ %.pre, %.preheader37.us.us.preheader ], [ %i.t, %.loopexit.us.us ] ; 2 uses
  %indvar = phi i64 [ 0, %.preheader37.us.us.preheader ], [ %indvar.next, %.loopexit.us.us ] ; 4 uses
  %i.q = mul i64 %i.m, %indvar                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %2, i64 %i.q ; 2 uses
  %scevgep69.a = getelementptr i8, ptr %i.n, i64 %i.q ; 2 uses
  %i.r = mul i64 %i.k, %indvar
  %scevgep = getelementptr i8, ptr %2, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !31
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvar.next
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23   ; 3 uses
  %i.u = icmp slt i32 %i.p, %i.t
  br i1 %i.u, label %.preheader.lr.ph.us.us, label %.loopexit.us.us

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.v = load double, ptr %i.ad, align 8, !tbaa !31
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.w = load double, ptr %gep, align 8, !tbaa !31
  %gep67 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep66, i64 %indvars.iv ; 2 uses
  %i.x = load double, ptr %gep67, align 8, !tbaa !31
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.w, double %i.x)
  store double %i.y, ptr %gep67, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load double, ptr %i.ad, align 8, !tbaa !31
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.aa = load double, ptr %gep.1, align 8, !tbaa !31
  %gep67.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep66, i64 %indvars.iv.next ; 2 uses
  %i.ab = load double, ptr %gep67.1, align 8, !tbaa !31
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.z, double %i.aa, double %i.ab)
  store double %i.ac, ptr %gep67.1, align 8, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.j
  br i1 %exitcond.not.1, label %._crit_edge41.us.us, label %scalar.ph, !llvm.loop !88

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.us.us, %._crit_edge41.us.us
  %indvars.iv55 = phi i64 [ %i.ax, %.preheader.lr.ph.us.us ], [ %indvars.iv.next56, %._crit_edge41.us.us ] ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv55 ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv55
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = mul nsw i32 %i.af, %3
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.ah ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.ai = shl nsw i64 %i.ah, 3
  %scevgep73 = getelementptr i8, ptr %scevgep72.a, i64 %i.ai
  %bound074 = icmp ult ptr %scevgep68, %scevgep73
  %bound175 = icmp ult ptr %invariant.gep, %scevgep69.a
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx = or i1 %found.conflict, %found.conflict76
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aj = load double, ptr %i.ad, align 8, !tbaa !31, !alias.scope !89
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !31, !alias.scope !92
  %wide.load77.a = load <2 x double>, ptr %i.al, align 8, !tbaa !31, !alias.scope !92
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep66, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load78.a = load <2 x double>, ptr %i.am, align 8, !tbaa !31, !alias.scope !94, !noalias !96
  %wide.load79 = load <2 x double>, ptr %i.an, align 8, !tbaa !31, !alias.scope !94, !noalias !96
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load78.a)
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load77.a, <2 x double> %wide.load79)
  store <2 x double> %i.ao, ptr %i.am, align 8, !tbaa !31, !alias.scope !94, !noalias !96
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !31, !alias.scope !94, !noalias !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge41.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ar = load double, ptr %i.ad, align 8, !tbaa !31
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.as = load double, ptr %gep.prol, align 8, !tbaa !31
  %gep67.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep66, i64 %indvars.iv.ph ; 2 uses
  %i.at = load double, ptr %gep67.prol, align 8, !tbaa !31
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.as, double %i.at)
  store double %i.au, ptr %gep67.prol, align 8, !tbaa !31
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.av = icmp eq i64 %indvars.iv.ph, %i.o
  br i1 %i.av, label %._crit_edge41.us.us, label %scalar.ph

.loopexit.us.us:                                  ; preds = %._crit_edge41.us.us, %.preheader37.us.us
  %exitcond62.not = icmp eq i64 %indvar.next, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge44, label %.preheader37.us.us, !llvm.loop !98

._crit_edge41.us.us:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %.loopexit.us.us, label %.preheader.us.us, !llvm.loop !99

.preheader.lr.ph.us.us:                           ; preds = %.preheader37.us.us
  %i.aw = mul nuw nsw i64 %indvar, %i.l
  %i.ax = sext i32 %i.p to i64                    ; 2 uses
  %wide.trip.count58 = sext i32 %i.t to i64       ; 2 uses
  %invariant.gep66 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aw ; 4 uses
  %i.ay = shl nsw i64 %i.ax, 3
  %scevgep70.a = getelementptr i8, ptr %i.b, i64 %i.ay
  %i.az = shl nsw i64 %wide.trip.count58, 3
  %scevgep71 = getelementptr i8, ptr %i.b, i64 %i.az
  %bound0 = icmp ult ptr %scevgep68, %scevgep71
  %bound1 = icmp ult ptr %scevgep70.a, %scevgep69.a
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us.us

._crit_edge44:                                    ; preds = %.loopexit.us.us, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree nounwind uwtable
define void @SparseMatrix_multiply_vector(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 6 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !16     ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !100    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  switch i32 %i.h, label %bb.n [
    i32 1, label %bb.b
    i32 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 3 uses
  %.not54 = icmp eq ptr %i.f, null
  br i1 %.not54, label %bb.c, label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %i.e to i64                     ; 4 uses
  %.not63 = icmp eq i32 %i.e, 0
  br i1 %.not63, label %.loopexit64.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %mul.ov.i = icmp slt i32 %i.e, 0
  br i1 %mul.ov.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.3, i64 noundef %i.k, i64 noundef 8) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 8) #21 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.lr.ph75.preheader

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.q = shl nuw nsw i64 %i.k, 3
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.4, i64 noundef %i.q) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %bb.b
  %i.s = icmp sgt i32 %i.e, 0
  br i1 %i.s, label %.lr.ph75.preheader, label %.loopexit64

.lr.ph75.preheader:                               ; preds = %bb.f, %gv_calloc.exit
  %.0106 = phi ptr [ %i.f, %gv_calloc.exit ], [ %i.n, %bb.f ] ; 2 uses
  %wide.trip.count91 = zext nneg i32 %i.e to i64
  %.pre93 = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph75

.loopexit:                                        ; preds = %.prol.loopexit117, %.lr.ph72.new, %.lr.ph75
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %.loopexit64, label %.lr.ph75, !llvm.loop !102

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %.loopexit
  %i.t = phi i32 [ %.pre93, %.lr.ph75.preheader ], [ %i.w, %.loopexit ] ; 2 uses
  %indvars.iv88 = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next89, %.loopexit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0106, i64 %indvars.iv88 ; 4 uses
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !31
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next89
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23   ; 3 uses
  %i.x = icmp slt i32 %i.t, %i.w
  br i1 %i.x, label %.lr.ph72, label %.loopexit

.lr.ph72:                                         ; preds = %.lr.ph75
  %i.y = sext i32 %i.t to i64                     ; 6 uses
  %wide.trip.count86 = sext i32 %i.w to i64       ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count86, %i.y
  %xtraiter118 = and i64 %i.z, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.prol.loopexit117, label %.prol.loopexit117.unr-lcssa

.prol.loopexit117.unr-lcssa:                      ; preds = %.lr.ph72
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.y
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !31
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ag, double 0.000000e+00) ; 2 uses
  store double %i.ah, ptr %i.u, align 8, !tbaa !31
  %indvars.iv.next84.prol = add nsw i64 %i.y, 1
  br label %.prol.loopexit117

.prol.loopexit117:                                ; preds = %.prol.loopexit117.unr-lcssa, %.lr.ph72
  %indvars.iv83.unr = phi i64 [ %i.y, %.lr.ph72 ], [ %indvars.iv.next84.prol, %.prol.loopexit117.unr-lcssa ]
  %.unr120 = phi double [ 0.000000e+00, %.lr.ph72 ], [ %i.ah, %.prol.loopexit117.unr-lcssa ]
  %i.ai = add nsw i64 %wide.trip.count86, -1
  %i.aj = icmp eq i64 %i.ai, %i.y
  br i1 %i.aj, label %.loopexit, label %.lr.ph72.new

.lr.ph72.new:                                     ; preds = %.prol.loopexit117, %.lr.ph72.new
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %.lr.ph72.new ], [ %indvars.iv83.unr, %.prol.loopexit117 ] ; 4 uses
  %i.ak = phi double [ %i.ba, %.lr.ph72.new ], [ %.unr120, %.prol.loopexit117 ]
  %i.al = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv83
  %i.am = load double, ptr %i.al, align 8, !tbaa !31
  %i.an = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv83
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !31
  %i.as = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ar, double %i.ak) ; 2 uses
  store double %i.as, ptr %i.u, align 8, !tbaa !31
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv.next84
  %i.au = load double, ptr %i.at, align 8, !tbaa !31
  %i.av = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next84
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !31
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.au, double %i.az, double %i.as) ; 2 uses
  store double %i.ba, ptr %i.u, align 8, !tbaa !31
  %indvars.iv.next84.1 = add nsw i64 %indvars.iv83, 2 ; 2 uses
  %exitcond87.not.1 = icmp eq i64 %indvars.iv.next84.1, %wide.trip.count86
  br i1 %exitcond87.not.1, label %.loopexit, label %.lr.ph72.new, !llvm.loop !103

bb.h:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %gv_calloc.exit58

bb.i:                                             ; preds = %bb.h
  %i.bd = sext i32 %i.e to i64                    ; 4 uses
  %.not62 = icmp eq i32 %i.e, 0
  br i1 %.not62, label %.loopexit64.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %mul.ov.i57 = icmp slt i32 %i.e, 0
  br i1 %mul.ov.i57, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.3, i64 noundef %i.bd, i64 noundef 8) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bg = tail call noalias ptr @calloc(i64 noundef %i.bd, i64 noundef 8) #21 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.m, label %.lr.ph70.preheader

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bj = shl nuw nsw i64 %i.bd, 3
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.4, i64 noundef %i.bj) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit58:                                 ; preds = %bb.h
  %i.bl = icmp sgt i32 %i.e, 0
  br i1 %i.bl, label %.lr.ph70.preheader, label %.loopexit64

.lr.ph70.preheader:                               ; preds = %bb.l, %gv_calloc.exit58
  %.1110 = phi ptr [ %i.f, %gv_calloc.exit58 ], [ %i.bg, %bb.l ] ; 2 uses
  %wide.trip.count81 = zext nneg i32 %i.e to i64
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %.lr.ph70

.loopexit65:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph70
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit64, label %.lr.ph70, !llvm.loop !104

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.loopexit65
  %i.bm = phi i32 [ %.pre, %.lr.ph70.preheader ], [ %i.bp, %.loopexit65 ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next79, %.loopexit65 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.1110, i64 %indvars.iv78 ; 4 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !31
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next79
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !23 ; 3 uses
  %i.bq = icmp slt i32 %i.bm, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.loopexit65

.lr.ph:                                           ; preds = %.lr.ph70
  %i.br = sext i32 %i.bm to i64                   ; 6 uses
  %wide.trip.count = sext i32 %i.bp to i64        ; 3 uses
end_hunk_0
