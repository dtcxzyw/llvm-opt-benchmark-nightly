Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sfmDec?download=true
inline.NumInlined: 751
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@Abc_TtExpand:bb.a
  store <2 x i64> %i.ec, ptr %i.dw, align 8, !tbaa !80, !alias.scope !221
  %index.next63 = add nuw i64 %index60, 2         ; 2 uses
  %i.ed = icmp eq i64 %index.next63, %n.vec52
  br i1 %i.ed, label %._crit_edge.us.i, label %vector.body59, !llvm.loop !210

scalar.ph49:                                      ; preds = %scalar.ph49.preheader, %scalar.ph49
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %scalar.ph49 ], [ 0, %scalar.ph49.preheader ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i, i64 %indvars.iv149.i ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !80 ; 2 uses
  %i.eg = and i64 %i.ef, %i.dh
  %i.eh = lshr i64 %i.eg, %i.dd
  %gep170.i = getelementptr [8 x i8], ptr %invariant.gep169.i, i64 %indvars.iv149.i ; 2 uses
  %i.ei = load i64, ptr %gep170.i, align 8, !tbaa !80 ; 2 uses
  %i.ej = shl i64 %i.ei, %i.dd
  %i.ek = and i64 %i.ej, %i.dh
  %i.el = and i64 %i.ef, %i.di
  %i.em = or i64 %i.ek, %i.el
  store i64 %i.em, ptr %i.ee, align 8, !tbaa !80
  %i.en = and i64 %i.ei, %i.dh
  %i.eo = or i64 %i.en, %i.eh
  store i64 %i.eo, ptr %gep170.i, align 8, !tbaa !80
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next150.i, %wide.trip.count153.i
  br i1 %exitcond154.not.i, label %._crit_edge.us.i, label %scalar.ph49, !llvm.loop !211

._crit_edge.us.i:                                 ; preds = %vector.body59, %scalar.ph49
  %i.ep = getelementptr inbounds [8 x i8], ptr %.0128.us.i, i64 %i.df ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.eq, label %.preheader.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !212

bb.j:                                             ; preds = %bb.h
  %i.er = add nsw i32 %.020, -6                   ; 3 uses
  %i.es = shl nuw i32 1, %i.er                    ; 4 uses
  %i.et = add nsw i32 %.015.in19, -7              ; 3 uses
  %i.eu = shl nuw i32 1, %i.et                    ; 2 uses
  br i1 %.not.i, label %Abc_TtSwapVars.exit, label %.preheader120.lr.ph.i

.preheader120.lr.ph.i:                            ; preds = %bb.j
  %.not130.i = icmp eq i32 %i.et, 31
  %i.ev = shl i32 2, %i.et
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %.not131.i = icmp eq i32 %i.er, 31
  %or.cond.i = select i1 %.not130.i, i1 true, i1 %.not131.i
  br i1 %or.cond.i, label %Abc_TtSwapVars.exit, label %.preheader120.us.us.preheader.i

.preheader120.us.us.preheader.i:                  ; preds = %.preheader120.lr.ph.i
  %i.ex = shl i32 2, %i.er                        ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.es, i32 1) ; 2 uses
  %i.ey = sext i32 %i.ex to i64                   ; 5 uses
  %i.ez = sext i32 %i.es to i64                   ; 2 uses
  %i.fa = sext i32 %i.eu to i64                   ; 4 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.fb = shl nsw i64 %i.ew, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %smax = tail call i64 @llvm.smax.i64(i64 %i.fa, i64 %i.ey)
  %i.fc = icmp slt i32 %i.ex, %i.eu
  %umin = zext i1 %i.fc to i64                    ; 2 uses
  %i.fd = or disjoint i64 %umin, %i.ey
  %i.fe = sub i64 %smax, %i.fd
  %min.iters.check77 = icmp slt i32 %i.es, 4
  %invariant.op = add i64 %i.ez, %wide.trip.count.i
  %invariant.op101 = add i64 %i.fa, %wide.trip.count.i
  %stride.check = icmp slt i32 %i.ex, 0
  %n.vec83 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ff = icmp slt i32 %i.es, 2
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod100 = trunc i32 %smax.i to i1
  br label %.preheader120.us.us.i

.preheader120.us.us.i:                            ; preds = %._crit_edge124.us.us.i, %.preheader120.us.us.preheader.i
  %indvar74 = phi i64 [ %indvar.next75, %._crit_edge124.us.us.i ], [ 0, %.preheader120.us.us.preheader.i ] ; 2 uses
  %.1125.us.us.i = phi ptr [ %i.gf, %._crit_edge124.us.us.i ], [ %0, %.preheader120.us.us.preheader.i ] ; 3 uses
  %i.fg = mul i64 %i.fb, %indvar74                ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.1125.us.us.i, i64 %i.ez ; 2 uses
  %invariant.gep167.i = getelementptr [8 x i8], ptr %.1125.us.us.i, i64 %i.fa ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.fg
  %invariant.gep103 = getelementptr i8, ptr %0, i64 %i.fg
  br label %.preheader119.us.us.i

.preheader119.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader120.us.us.i
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %._crit_edge.us.us.i ], [ 0, %.preheader120.us.us.i ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv146.i ; 4 uses
  %gep168.i = getelementptr [8 x i8], ptr %invariant.gep167.i, i64 %indvars.iv146.i ; 4 uses
  br i1 %min.iters.check77, label %scalar.ph76.preheader, label %vector.memcheck78

scalar.ph76.preheader:                            ; preds = %vector.memcheck78, %.preheader119.us.us.i
  br i1 %i.ff, label %scalar.ph76.epil.preheader, label %scalar.ph76

vector.memcheck78:                                ; preds = %.preheader119.us.us.i
  %i.fh = udiv i64 %i.fe, %umax
  %i.fi = add i64 %i.fh, %umin
  %i.fj = mul i64 %i.fi, %i.ey                    ; 2 uses
  %.reass = add i64 %i.fj, %invariant.op
  %i.fk = shl i64 %.reass, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fk
  %.reass102 = add i64 %i.fj, %invariant.op101
  %i.fl = shl i64 %.reass102, 3
  %gep104 = getelementptr i8, ptr %invariant.gep103, i64 %i.fl
  %bound079 = icmp ult ptr %invariant.gep.i, %gep104
  %bound180 = icmp ult ptr %invariant.gep167.i, %gep
  %found.conflict81 = and i1 %bound079, %bound180
  %i.fm = or i1 %found.conflict81, %stride.check
  br i1 %i.fm, label %scalar.ph76.preheader, label %vector.body84

vector.body84:                                    ; preds = %vector.memcheck78, %vector.body84
  %index85 = phi i64 [ %index.next90, %vector.body84 ], [ 0, %vector.memcheck78 ] ; 3 uses
  %i.fn = getelementptr [8 x i8], ptr %gep.i, i64 %index85 ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16     ; 2 uses
  %wide.load86 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !80, !alias.scope !222, !noalias !223
  %wide.load87 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !80, !alias.scope !222, !noalias !223
  %i.fp = getelementptr [8 x i8], ptr %gep168.i, i64 %index85 ; 3 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 16     ; 2 uses
  %wide.load88 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !80, !alias.scope !223
  %wide.load89 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !80, !alias.scope !223
  store <2 x i64> %wide.load88, ptr %i.fn, align 8, !tbaa !80, !alias.scope !222, !noalias !223
  store <2 x i64> %wide.load89, ptr %i.fo, align 8, !tbaa !80, !alias.scope !222, !noalias !223
  store <2 x i64> %wide.load86, ptr %i.fp, align 8, !tbaa !80, !alias.scope !223
  store <2 x i64> %wide.load87, ptr %i.fq, align 8, !tbaa !80, !alias.scope !223
  %index.next90 = add nuw i64 %index85, 4         ; 2 uses
  %i.fr = icmp eq i64 %index.next90, %n.vec83
  br i1 %i.fr, label %._crit_edge.us.us.i, label %vector.body84, !llvm.loop !216

scalar.ph76:                                      ; preds = %scalar.ph76.preheader, %scalar.ph76
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph76 ], [ 0, %scalar.ph76.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph76 ], [ 0, %scalar.ph76.preheader ]
  %i.fs = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !80
  %i.fu = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !80
  store i64 %i.fv, ptr %i.fs, align 8, !tbaa !80
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !80
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !80
  %i.fy = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !80
  store i64 %i.fz, ptr %i.fw, align 8, !tbaa !80
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !80
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.loopexit.unr-lcssa, label %scalar.ph76, !llvm.loop !217

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph76
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %scalar.ph76.epil.preheader

scalar.ph76.epil.preheader:                       ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph76.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph76.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.ga = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !80
  %i.gc = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !80
  store i64 %i.gd, ptr %i.ga, align 8, !tbaa !80
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !80
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body84, %scalar.ph76.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, %i.ey ; 2 uses
  %i.ge = icmp slt i64 %indvars.iv.next147.i, %i.fa
  br i1 %i.ge, label %.preheader119.us.us.i, label %._crit_edge124.us.us.i, !llvm.loop !218

._crit_edge124.us.us.i:                           ; preds = %._crit_edge.us.us.i
  %i.gf = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i, i64 %i.ew ; 2 uses
  %i.gg = icmp ult ptr %i.gf, %i.i
  %indvar.next75 = add i64 %indvar74, 1
  br i1 %i.gg, label %.preheader120.us.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !219

Abc_TtSwapVars.exit:                              ; preds = %._crit_edge124.us.us.i, %._crit_edge.us.i, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %.preheader120.lr.ph.i, %bb.j, %.preheader.lr.ph.i, %bb.i, %bb.g, %bb.e
  %i.gh = add nsw i32 %.020, -1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.split, %Abc_TtSwapVars.exit
  %.1 = phi i32 [ %.020, %.lr.ph.split ], [ %i.gh, %Abc_TtSwapVars.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gi = icmp sgt i64 %indvars.iv, 0
  %i.gj = icmp sgt i32 %.1, -1
  %i.gk = select i1 %i.gi, i1 %i.gj, i1 false
  %i.gl = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.gk, label %.lr.ph.split, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.k, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Sfm_DecPeformDec_rec(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.timespec, align 8          ; 9 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %16 = alloca %struct.timespec, align 8          ; 9 uses
  %.sroa.0 = alloca i32, align 8                  ; 6 uses
  %.sroa.6 = alloca i32, align 4                  ; 6 uses
  %i.a = alloca [2 x [4 x i64]], align 16         ; 5 uses
  %i.b = alloca [2 x [8 x i64]], align 16         ; 12 uses
  %i.c = alloca [2 x [16 x i32]], align 16        ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 4, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.h = sext i32 %4 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load i32, ptr %i.m, align 8, !tbaa !96
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load i32, ptr %i.p, align 8, !tbaa !97
  %i.r = getelementptr i8, ptr %0, i64 228
  %.val402 = load i32, ptr %i.r, align 4, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.t = load i32, ptr %i.s, align 4, !tbaa !111
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i32, ptr %i.u, align 8, !tbaa !112
  %i.w = sitofp i32 %i.v to float
  %i.x = fdiv float %i.w, 1.000000e+03
  %i.y = fpext float %i.x to double
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.q, i32 noundef %.val402, i32 noundef %i.t, double noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.ab, i32 noundef %i.ad) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not378 = icmp eq i32 %4, 0
  br i1 %.not378, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  %i.ag = icmp sgt i32 %4, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23 ; 2 uses
  %i.aj = and i32 %i.ai, 1
  %.not399 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not399, ptr @.str.9, ptr @.str.8
  %i.al = ashr i32 %i.ai, 1
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %i.ak, i32 noundef %i.al) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !224

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %putchar379 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.h ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 9 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 4      ; 5 uses
  %i.au = sext i32 %i.f to i64                    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1172 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 8 uses
  %i.bb = load i32, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.preheader.i, label %.loopexit517

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.bb to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit517, label %.lr.ph.i, !llvm.loop !225

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !80
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %bb.e, label %Abc_TtIsConst0.exit

.loopexit517:                                     ; preds = %bb.e, %bb.d
  %i.bf = load i32, ptr %i.ao, align 8, !tbaa !113
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ao, align 8, !tbaa !113
  %i.bh = load i32, ptr %i.ap, align 8, !tbaa !96
  %i.bi = shl nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.aq, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.bj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %16) #27
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %Abc_Clock.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit517
  %i.bl = load i64, ptr %16, align 8, !tbaa !30
  %.neg586 = mul i64 %i.bl, -1000000
  %i.bm = load i64, ptr %i.ar, align 8, !tbaa !31
  %.neg = sdiv i64 %i.bm, -1000
  %.neg587 = add i64 %.neg, %.neg586
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %.loopexit517, %bb.f
  %.0.i.neg588 = phi i64 [ %.neg587, %bb.f ], [ 1, %.loopexit517 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.bn = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.bo = call i32 @sat_solver_solve(ptr noundef %i.bn, ptr noundef nonnull %3, ptr noundef nonnull %i.at, i64 noundef %i.au, i64 noundef 0, i64 noundef 0, i64 noundef 0) #27
  switch i32 %i.bo, label %bb.k [
    i32 0, label %bb.g
    i32 -1, label %bb.h
  ]

bb.g:                                             ; preds = %Abc_Clock.exit.1, %Abc_Clock.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !114
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !114
  br label %bb.dc

bb.h:                                             ; preds = %Abc_Clock.exit.1, %Abc_Clock.exit
  %.0355536.lcssa616.wide = phi i32 [ 0, %Abc_Clock.exit ], [ 1, %Abc_Clock.exit.1 ] ; 2 uses
  %.0.i.neg588.lcssa615 = phi i64 [ %.0.i.neg588, %Abc_Clock.exit ], [ %.0.i.neg588.1, %Abc_Clock.exit.1 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !115
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.bv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #27
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %Abc_Clock.exit411, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i64, ptr %15, align 8, !tbaa !30
  %i.by = mul nsw i64 %i.bx, 1000000
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !31
  %i.cb = sdiv i64 %i.ca, 1000
  %i.cc = add nsw i64 %i.cb, %i.by
  br label %Abc_Clock.exit411

Abc_Clock.exit411:                                ; preds = %bb.h, %bb.i
  %.0.i410 = phi i64 [ %i.cc, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.cd = add i64 %.0.i410, %.0.i.neg588.lcssa615
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !116
  %i.cg = add nsw i64 %i.cd, %i.cf
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !116
  %i.ch = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !56 ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 7
  %i.cl = add nsw i32 %i.cj, -6
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = select i1 %i.ck, i32 1, i32 %i.cm       ; 5 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i412, label %Abc_TtConst.exit

.lr.ph.i412:                                      ; preds = %Abc_Clock.exit411
  %sext.i = sub nsw i32 0, %.0355536.lcssa616.wide
  %i.cp = sext i32 %sext.i to i64                 ; 4 uses
  %min.iters.check = icmp ult i32 %i.cn, 4
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i412
  %i.cq = and i32 %i.cn, 2147483644
  %n.vec = zext nneg i32 %i.cq to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.cr, align 8, !tbaa !80
  store <2 x i64> %broadcast.splat, ptr %i.cs, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %Abc_TtConst.exit, label %vector.body, !llvm.loop !226

end_hunk_0
begin_hunk_1_@Sfm_DecPeformDec_rec:bb.a
  store i32 %i.fh, ptr %i.aq, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.fi = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %16) #27
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %Abc_Clock.exit.1, label %bb.u

bb.u:                                             ; preds = %.loopexit517.1
  %i.fk = load i64, ptr %16, align 8, !tbaa !30
  %.neg586.1 = mul i64 %i.fk, -1000000
  %i.fl = load i64, ptr %i.ar, align 8, !tbaa !31
  %.neg.1 = sdiv i64 %i.fl, -1000
  %.neg587.1 = add i64 %.neg.1, %.neg586.1
  br label %Abc_Clock.exit.1

Abc_Clock.exit.1:                                 ; preds = %bb.u, %.loopexit517.1
  %.0.i.neg588.1 = phi i64 [ %.neg587.1, %bb.u ], [ 1, %.loopexit517.1 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.fm = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.fn = call i32 @sat_solver_solve(ptr noundef %i.fm, ptr noundef nonnull %3, ptr noundef nonnull %i.at, i64 noundef %i.au, i64 noundef 0, i64 noundef 0, i64 noundef 0) #27
  switch i32 %i.fn, label %bb.v [
    i32 0, label %bb.g
    i32 -1, label %bb.h
  ]

bb.v:                                             ; preds = %Abc_Clock.exit.1
  %i.fo = load i32, ptr %i.av, align 4, !tbaa !117
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.av, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.fq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %14) #27
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %Abc_Clock.exit418.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fs = load i64, ptr %14, align 8, !tbaa !30
  %i.ft = mul nsw i64 %i.fs, 1000000
  %i.fu = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.fv = sdiv i64 %i.fu, 1000
  %i.fw = add nsw i64 %i.fv, %i.ft
  br label %Abc_Clock.exit418.1

Abc_Clock.exit418.1:                              ; preds = %bb.w, %bb.v
  %.0.i417.1 = phi i64 [ %i.fw, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.fx = add i64 %.0.i417.1, %.0.i.neg588.1
  %i.fy = load i64, ptr %i.ax, align 8, !tbaa !118
  %i.fz = add nsw i64 %i.fx, %i.fy
  store i64 %i.fz, ptr %i.ax, align 8, !tbaa !118
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !23 ; 6 uses
  %i.gc = icmp eq i32 %i.gb, 512
  br i1 %i.gc, label %bb.ad, label %.preheader516.1

.preheader516.1:                                  ; preds = %Abc_Clock.exit418.1
  %i.gd = load i32, ptr %i.az, align 8, !tbaa !97 ; 4 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph534.1, label %.preheader516.1.._crit_edge535.1_crit_edge

.preheader516.1.._crit_edge535.1_crit_edge:       ; preds = %.preheader516.1
  %.pre735.a = ashr i32 %i.gb, 6                  ; 2 uses
  %.pre737 = and i32 %i.gb, 63
  %.pre739 = zext nneg i32 %.pre737 to i64
  %.pre741 = shl nuw i64 1, %.pre739
  %.pre743 = sext i32 %.pre735.a to i64
  br label %._crit_edge535.1

.lr.ph534.1:                                      ; preds = %.preheader516.1
  %i.gf = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.gg = getelementptr i8, ptr %i.gf, i64 328
  %.val407.1 = load ptr, ptr %i.gg, align 8, !tbaa !262 ; 3 uses
  %i.gh = getelementptr i8, ptr %0, i64 464       ; 3 uses
  %i.gi = and i32 %i.gb, 63
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj                    ; 6 uses
  %i.gl = ashr i32 %i.gb, 6                       ; 4 uses
  %i.gm = sext i32 %i.gl to i64                   ; 6 uses
  %wide.trip.count622.1 = zext nneg i32 %i.gd to i64 ; 2 uses
  %xtraiter986 = and i64 %wide.trip.count622.1, 1
  %i.gn = icmp eq i32 %i.gd, 1
  br i1 %i.gn, label %.epil.preheader985, label %.lr.ph534.1.new

.lr.ph534.1.new:                                  ; preds = %.lr.ph534.1
  %unroll_iter989 = and i64 %wide.trip.count622.1, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %.lr.ph534.1.new
  %indvars.iv619.1 = phi i64 [ 0, %.lr.ph534.1.new ], [ %indvars.iv.next620.1.1, %bb.ab ] ; 4 uses
  %niter990 = phi i64 [ 0, %.lr.ph534.1.new ], [ %niter990.next.1, %bb.ab ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.val407.1, i64 %indvars.iv619.1
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !23
  %.not506.1 = icmp eq i32 %i.gp, 1
  br i1 %.not506.1, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.val.i.1 = load ptr, ptr %i.gh, align 8, !tbaa !90
  %.idx805 = shl nuw nsw i64 %indvars.iv619.1, 6
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.1, i64 %.idx805
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gm ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !80
  %i.gt = or i64 %i.gs, %i.gk
  store i64 %i.gt, ptr %i.gr, align 8, !tbaa !80
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %indvars.iv.next620.1 = or disjoint i64 %indvars.iv619.1, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.val407.1, i64 %indvars.iv.next620.1
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !23
  %.not506.1.1 = icmp eq i32 %i.gv, 1
  br i1 %.not506.1.1, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.val.i.1.1 = load ptr, ptr %i.gh, align 8, !tbaa !90
  %.idx805.1 = shl nuw nsw i64 %indvars.iv.next620.1, 6
  %i.gw = getelementptr inbounds nuw i8, ptr %.val.i.1.1, i64 %.idx805.1
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gm ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !80
  %i.gz = or i64 %i.gy, %i.gk
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !80
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next620.1.1 = add nuw nsw i64 %indvars.iv619.1, 2 ; 2 uses
  %niter990.next.1 = add i64 %niter990, 2         ; 2 uses
  %niter990.ncmp.1 = icmp eq i64 %niter990.next.1, %unroll_iter989
  br i1 %niter990.ncmp.1, label %._crit_edge535.1.loopexit.unr-lcssa, label %bb.x, !llvm.loop !227

._crit_edge535.1.loopexit.unr-lcssa:              ; preds = %bb.ab
  %lcmp.mod987.not = icmp eq i64 %xtraiter986, 0
  br i1 %lcmp.mod987.not, label %._crit_edge535.1, label %.epil.preheader985

.epil.preheader985:                               ; preds = %._crit_edge535.1.loopexit.unr-lcssa, %.lr.ph534.1
  %indvars.iv619.1.epil.init = phi i64 [ 0, %.lr.ph534.1 ], [ %indvars.iv.next620.1.1, %._crit_edge535.1.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod988 = trunc i32 %i.gd to i1
  call void @llvm.assume(i1 %lcmp.mod988)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val407.1, i64 %indvars.iv619.1.epil.init
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !23
  %.not506.1.epil = icmp eq i32 %i.hb, 1
  br i1 %.not506.1.epil, label %bb.ac, label %._crit_edge535.1

bb.ac:                                            ; preds = %.epil.preheader985
  %.val.i.1.epil = load ptr, ptr %i.gh, align 8, !tbaa !90
  %.idx805.epil = shl nuw nsw i64 %indvars.iv619.1.epil.init, 6
  %i.hc = getelementptr inbounds nuw i8, ptr %.val.i.1.epil, i64 %.idx805.epil
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.gm ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !80
  %i.hf = or i64 %i.he, %i.gk
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !80
  br label %._crit_edge535.1

._crit_edge535.1:                                 ; preds = %._crit_edge535.1.loopexit.unr-lcssa, %bb.ac, %.epil.preheader985, %.preheader516.1.._crit_edge535.1_crit_edge
  %.pre-phi744.a = phi i64 [ %.pre743, %.preheader516.1.._crit_edge535.1_crit_edge ], [ %i.gm, %.epil.preheader985 ], [ %i.gm, %bb.ac ], [ %i.gm, %._crit_edge535.1.loopexit.unr-lcssa ]
  %.pre-phi742 = phi i64 [ %.pre741, %.preheader516.1.._crit_edge535.1_crit_edge ], [ %i.gk, %.epil.preheader985 ], [ %i.gk, %bb.ac ], [ %i.gk, %._crit_edge535.1.loopexit.unr-lcssa ]
  %.pre-phi736.a = phi i32 [ %.pre735.a, %.preheader516.1.._crit_edge535.1_crit_edge ], [ %i.gl, %.epil.preheader985 ], [ %i.gl, %bb.ac ], [ %i.gl, %._crit_edge535.1.loopexit.unr-lcssa ]
  %i.hg = add nsw i32 %.pre-phi736.a, 1
  store i32 %i.hg, ptr %i.ey, align 4, !tbaa !23
  %i.hh = add nsw i32 %i.gb, 1
  store i32 %i.hh, ptr %i.ga, align 4, !tbaa !23
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.pre-phi744.a ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !80
  %i.hk = or i64 %i.hj, %.pre-phi742
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !80
  br label %Abc_TtIsConst0.exit.1

bb.ad:                                            ; preds = %Abc_Clock.exit418.1
  %i.hl = load i32, ptr %i.ba, align 4, !tbaa !120
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.ba, align 4, !tbaa !120
  br label %Abc_TtIsConst0.exit.1

Abc_TtIsConst0.exit.1:                            ; preds = %.lr.ph.i.1, %bb.ad, %._crit_edge535.1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !81 ; 2 uses
  %.not380 = icmp eq i32 %i.ho, -1
  br i1 %.not380, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %Abc_TtIsConst0.exit.1
  store i32 -1, ptr %i.hn, align 4, !tbaa !81
  br label %bb.cq

bb.af:                                            ; preds = %Abc_TtIsConst0.exit.1
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  store i32 0, ptr %i.hq, align 4, !tbaa !88
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 3 uses
  store i32 0, ptr %i.hr, align 4, !tbaa !88
  %i.hs = load i32, ptr %i.az, align 8, !tbaa !97
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph543, label %._crit_edge544

.lr.ph543:                                        ; preds = %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph543, %bb.bm
  %indvars.iv635 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next636, %bb.bm ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i32 -1, ptr %.sroa.0, align 8
  store i32 -1, ptr %.sroa.6, align 4
  %i.ia = shl nuw nsw i64 %indvars.iv635, 2
  %.idx806 = shl nuw nsw i64 %indvars.iv635, 6
  %indvars.iv635.tr = trunc nuw i64 %indvars.iv635 to i32
  %i.ib = shl nuw i32 %indvars.iv635.tr, 1
  %i.ic = lshr i64 %indvars.iv635, 4
  %i.id = and i64 %i.ic, 67108863
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.id ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.bg
  %i.if = phi i1 [ true, %bb.ag ], [ false, %bb.bg ]
  %indvars.iv632.sroa.phi = phi ptr [ %.sroa.0, %bb.ag ], [ %.sroa.6, %bb.bg ]
  %indvars.iv632 = phi i64 [ 0, %bb.ag ], [ 1, %bb.bg ] ; 7 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv632
  %i.ih = getelementptr i8, ptr %i.ig, i64 448    ; 4 uses
  %.val.i419 = load ptr, ptr %i.ih, align 8, !tbaa !90
  %i.ii = getelementptr inbounds nuw i8, ptr %.val.i419, i64 %.idx806 ; 2 uses
  %i.ij = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %indvars.iv632 ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv632 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !23 ; 2 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.lr.ph.preheader.i420, label %Abc_TtIntersect.exit427.thread

.lr.ph.preheader.i420:                            ; preds = %bb.ah
  %wide.trip.count.i421 = zext nneg i32 %i.il to i64 ; 2 uses
  br label %.lr.ph.i422

.lr.ph.i422:                                      ; preds = %.lr.ph.i422, %.lr.ph.preheader.i420
  %indvars.iv.i423 = phi i64 [ 0, %.lr.ph.preheader.i420 ], [ %indvars.iv.next.i424, %.lr.ph.i422 ] ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.i423
  %i.io = load i64, ptr %i.in, align 8, !tbaa !80
  %i.ip = xor i64 %i.io, -1
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i423
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !80
  %i.is = and i64 %i.ir, %i.ip
  %.not17.i.not = icmp eq i64 %i.is, 0            ; 2 uses
  %indvars.iv.next.i424 = add nuw nsw i64 %indvars.iv.i423, 1 ; 2 uses
  %exitcond.not.i425 = icmp ne i64 %indvars.iv.next.i424, %wide.trip.count.i421
  %or.cond.not = select i1 %.not17.i.not, i1 %exitcond.not.i425, i1 false
  br i1 %or.cond.not, label %.lr.ph.i422, label %.lr.ph25.i, !llvm.loop !228

bb.ai:                                            ; preds = %.lr.ph25.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count.i421
  br i1 %exitcond36.not.i, label %Abc_TtIntersect.exit427.thread, label %.lr.ph25.i, !llvm.loop !229

.lr.ph25.i:                                       ; preds = %.lr.ph.i422, %bb.ai
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %bb.ai ], [ 0, %.lr.ph.i422 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv32.i
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !80
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv32.i
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !80
  %i.ix = and i64 %i.iw, %i.iu
  %.not16.i = icmp eq i64 %i.ix, 0
  br i1 %.not16.i, label %bb.ai, label %Abc_TtIntersect.exit427

Abc_TtIntersect.exit427:                          ; preds = %.lr.ph25.i
  br i1 %.not17.i.not, label %Abc_TtIntersect.exit427.thread, label %bb.bg

Abc_TtIntersect.exit427.thread:                   ; preds = %bb.ai, %bb.ah, %Abc_TtIntersect.exit427
  %.015.i426490 = phi i32 [ 1, %Abc_TtIntersect.exit427 ], [ 0, %bb.ah ], [ 0, %bb.ai ] ; 2 uses
  %i.iy = load i32, ptr %i.ap, align 8, !tbaa !96
  %i.iz = shl nsw i32 %i.iy, 1
  %i.ja = trunc nuw nsw i64 %indvars.iv632 to i32
  %i.jb = or disjoint i32 %i.iz, %i.ja
  store i32 %i.jb, ptr %i.aq, align 4, !tbaa !23
  %i.jc = or disjoint i32 %.015.i426490, %i.ib
  store i32 %i.jc, ptr %i.at, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.jd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %13) #27
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %Abc_Clock.exit429, label %bb.aj

bb.aj:                                            ; preds = %Abc_TtIntersect.exit427.thread
  %i.jf = load i64, ptr %13, align 8, !tbaa !30
  %.neg590 = mul i64 %i.jf, -1000000
  %i.jg = load i64, ptr %i.hu, align 8, !tbaa !31
  %.neg589 = sdiv i64 %i.jg, -1000
  %.neg591 = add i64 %.neg589, %.neg590
  br label %Abc_Clock.exit429

Abc_Clock.exit429:                                ; preds = %Abc_TtIntersect.exit427.thread, %bb.aj
  %.0.i428.neg592 = phi i64 [ %.neg591, %bb.aj ], [ 1, %Abc_TtIntersect.exit427.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.jh = shl nuw nsw i64 %indvars.iv632, 1
  %i.ji = or disjoint i64 %i.jh, %i.ia
  %i.jj = trunc nuw i64 %i.ji to i32
  %i.jk = load i64, ptr %i.ie, align 8, !tbaa !80
  %.masked = and i32 %i.jj, 62
  %i.jl = or disjoint i32 %.015.i426490, %.masked
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = shl nuw i64 1, %i.jm                    ; 2 uses
  %i.jo = and i64 %i.jk, %i.jn
  %.not392 = icmp eq i64 %i.jo, 0
  br i1 %.not392, label %bb.ak, label %.thread

.thread:                                          ; preds = %Abc_Clock.exit429
  %i.jp = load i32, ptr %i.hv, align 8, !tbaa !115
  br label %bb.al

bb.ak:                                            ; preds = %Abc_Clock.exit429
  %i.jq = load i32, ptr %i.ao, align 8, !tbaa !113
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.ao, align 8, !tbaa !113
  %i.js = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.jt = call i32 @sat_solver_solve(ptr noundef %i.js, ptr noundef nonnull %3, ptr noundef nonnull %i.hw, i64 noundef %i.au, i64 noundef 0, i64 noundef 0, i64 noundef 0) #27
  switch i32 %i.jt, label %bb.aw [
    i32 0, label %bb.bf
    i32 -1, label %._crit_edge711
  ]

._crit_edge711:                                   ; preds = %bb.ak
  %.pre = load i32, ptr %i.hv, align 8, !tbaa !115
  %i.ju = add nsw i32 %.pre, 1
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge711, %.thread
  %i.jv = phi i32 [ %i.ju, %._crit_edge711 ], [ %i.jp, %.thread ]
  store i32 %i.jv, ptr %i.hv, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.jw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #27
  %i.jx = icmp slt i32 %i.jw, 0
  br i1 %i.jx, label %Abc_Clock.exit431, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jy = load i64, ptr %12, align 8, !tbaa !30
  %i.jz = mul nsw i64 %i.jy, 1000000
  %i.ka = load i64, ptr %i.hx, align 8, !tbaa !31
  %i.kb = sdiv i64 %i.ka, 1000
  %i.kc = add nsw i64 %i.kb, %i.jz
  br label %Abc_Clock.exit431

Abc_Clock.exit431:                                ; preds = %bb.al, %bb.am
  %.0.i430 = phi i64 [ %i.kc, %bb.am ], [ -1, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.kd = add i64 %.0.i430, %.0.i428.neg592
  %i.ke = load i64, ptr %i.hy, align 8, !tbaa !116
  %i.kf = add nsw i64 %i.kd, %i.ke
  store i64 %i.kf, ptr %i.hy, align 8, !tbaa !116
  %i.kg = load i32, ptr %i.at, align 4, !tbaa !23
  %i.kh = xor i32 %i.kg, 1                        ; 2 uses
  store i32 %i.kh, ptr %indvars.iv632.sroa.phi, align 4, !tbaa !23
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %indvars.iv632 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4 ; 3 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !88 ; 7 uses
  %i.kl = load i32, ptr %i.ki, align 8, !tbaa !89
  %i.km = icmp eq i32 %i.kk, %i.kl
  br i1 %i.km, label %bb.an, label %Vec_IntPush.exit

bb.an:                                            ; preds = %Abc_Clock.exit431
  %i.kn = icmp slt i32 %i.kk, 16
  br i1 %i.kn, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !87 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.kp, null
  br i1 %.not9.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kq = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kp, i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.kr = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.aq, %bb.ap
  %i.ks = phi ptr [ %i.kq, %bb.ap ], [ %i.kr, %bb.aq ]
  store ptr %i.ks, ptr %i.ko, align 8, !tbaa !87
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ar:                                            ; preds = %bb.an
  %i.kt = icmp samesign ult i32 %i.kk, 1073741823
  %i.ku = shl nuw nsw i32 %i.kk, 1
  %spec.select.i = select i1 %i.kt, i32 %i.ku, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.kk, %spec.select.i
  br i1 %.not.i9.i, label %bb.as, label %Vec_IntPush.exit

bb.as:                                            ; preds = %bb.ar
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !87 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.kw, null
  %i.kx = zext nneg i32 %spec.select.i to i64
  %i.ky = shl nuw nsw i64 %i.kx, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kz = call ptr @realloc(ptr noundef nonnull %i.kw, i64 noundef %i.ky) #28
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.la = call noalias ptr @malloc(i64 noundef %i.ky) #29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.lb = phi ptr [ %i.kz, %bb.at ], [ %i.la, %bb.au ]
  store ptr %i.lb, ptr %i.kv, align 8, !tbaa !87
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.av, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.av ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ki, align 8, !tbaa !89
  %.pre712 = load i32, ptr %i.kj, align 4, !tbaa !88
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Abc_Clock.exit431, %bb.ar, %Vec_IntGrow.exit11.sink.split.i
  %i.lc = phi i32 [ %i.kk, %Abc_Clock.exit431 ], [ %i.kk, %bb.ar ], [ %.pre712, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !87
  %i.lf = add nsw i32 %i.lc, 1
  store i32 %i.lf, ptr %i.kj, align 4, !tbaa !88
  %i.lg = sext i32 %i.lc to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lg
  store i32 %i.kh, ptr %i.lh, align 4, !tbaa !23
  %i.li = load i64, ptr %i.ie, align 8, !tbaa !80
  %i.lj = or i64 %i.li, %i.jn
  store i64 %i.lj, ptr %i.ie, align 8, !tbaa !80
  br label %bb.bg

bb.aw:                                            ; preds = %bb.ak
  %i.lk = load i32, ptr %i.av, align 4, !tbaa !117
  %i.ll = add nsw i32 %i.lk, 1
  store i32 %i.ll, ptr %i.av, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.lm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #27
  %i.ln = icmp slt i32 %i.lm, 0
  br i1 %i.ln, label %Abc_Clock.exit433, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lo = load i64, ptr %11, align 8, !tbaa !30
  %i.lp = mul nsw i64 %i.lo, 1000000
  %i.lq = load i64, ptr %i.hz, align 8, !tbaa !31
  %i.lr = sdiv i64 %i.lq, 1000
  %i.ls = add nsw i64 %i.lr, %i.lp
  br label %Abc_Clock.exit433

Abc_Clock.exit433:                                ; preds = %bb.aw, %bb.ax
  %.0.i432 = phi i64 [ %i.ls, %bb.ax ], [ -1, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.lt = add i64 %.0.i432, %.0.i428.neg592
  %i.lu = load i64, ptr %i.ax, align 8, !tbaa !118
  %i.lv = add nsw i64 %i.lt, %i.lu
  store i64 %i.lv, ptr %i.ax, align 8, !tbaa !118
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv632 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !23 ; 6 uses
  %i.ly = icmp eq i32 %i.lx, 512
  br i1 %i.ly, label %bb.ay, label %.preheader515

.preheader515:                                    ; preds = %Abc_Clock.exit433
  %i.lz = load i32, ptr %i.az, align 8, !tbaa !97 ; 4 uses
  %i.ma = icmp sgt i32 %i.lz, 0
  br i1 %i.ma, label %.lr.ph538, label %.preheader515.._crit_edge539_crit_edge

.preheader515.._crit_edge539_crit_edge:           ; preds = %.preheader515
  %.pre725.a = ashr i32 %i.lx, 6                  ; 2 uses
  %.pre727 = and i32 %i.lx, 63
  %.pre729 = zext nneg i32 %.pre727 to i64
  %.pre731 = shl nuw i64 1, %.pre729
  %.pre733 = sext i32 %.pre725.a to i64
  br label %._crit_edge539

.lr.ph538:                                        ; preds = %.preheader515
  %i.mb = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.mc = getelementptr i8, ptr %i.mb, i64 328
  %.val406 = load ptr, ptr %i.mc, align 8, !tbaa !262 ; 3 uses
  %i.md = and i32 %i.lx, 63
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = shl nuw i64 1, %i.me                    ; 6 uses
  %i.mg = ashr i32 %i.lx, 6                       ; 4 uses
  %i.mh = sext i32 %i.mg to i64                   ; 6 uses
  %wide.trip.count630 = zext nneg i32 %i.lz to i64 ; 2 uses
  %xtraiter992 = and i64 %wide.trip.count630, 1
  %i.mi = icmp eq i32 %i.lz, 1
  br i1 %i.mi, label %.epil.preheader991, label %.lr.ph538.new

.lr.ph538.new:                                    ; preds = %.lr.ph538
  %unroll_iter995 = and i64 %wide.trip.count630, 2147483646
  br label %bb.az

bb.ay:                                            ; preds = %Abc_Clock.exit433
  %i.mj = load i32, ptr %i.ba, align 4, !tbaa !120
  %i.mk = add nsw i32 %i.mj, 1
  store i32 %i.mk, ptr %i.ba, align 4, !tbaa !120
  br label %bb.bg

bb.az:                                            ; preds = %bb.bd, %.lr.ph538.new
  %indvars.iv627 = phi i64 [ 0, %.lr.ph538.new ], [ %indvars.iv.next628.1, %bb.bd ] ; 4 uses
  %niter996 = phi i64 [ 0, %.lr.ph538.new ], [ %niter996.next.1, %bb.bd ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.val406, i64 %indvars.iv627
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !23
  %.not505 = icmp eq i32 %i.mm, 1
  br i1 %.not505, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.val.i434 = load ptr, ptr %i.ih, align 8, !tbaa !90
  %.idx807 = shl nuw nsw i64 %indvars.iv627, 6
  %i.mn = getelementptr inbounds nuw i8, ptr %.val.i434, i64 %.idx807
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.mh ; 2 uses
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !80
  %i.mq = or i64 %i.mp, %i.mf
  store i64 %i.mq, ptr %i.mo, align 8, !tbaa !80
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %indvars.iv.next628 = or disjoint i64 %indvars.iv627, 1 ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.val406, i64 %indvars.iv.next628
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !23
  %.not505.1 = icmp eq i32 %i.ms, 1
  br i1 %.not505.1, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.val.i434.1 = load ptr, ptr %i.ih, align 8, !tbaa !90
  %.idx807.1 = shl nuw nsw i64 %indvars.iv.next628, 6
  %i.mt = getelementptr inbounds nuw i8, ptr %.val.i434.1, i64 %.idx807.1
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %i.mh ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !80
  %i.mw = or i64 %i.mv, %i.mf
  store i64 %i.mw, ptr %i.mu, align 8, !tbaa !80
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %indvars.iv.next628.1 = add nuw nsw i64 %indvars.iv627, 2 ; 2 uses
  %niter996.next.1 = add i64 %niter996, 2         ; 2 uses
  %niter996.ncmp.1 = icmp eq i64 %niter996.next.1, %unroll_iter995
  br i1 %niter996.ncmp.1, label %._crit_edge539.loopexit.unr-lcssa, label %bb.az, !llvm.loop !230

._crit_edge539.loopexit.unr-lcssa:                ; preds = %bb.bd
  %lcmp.mod993.not = icmp eq i64 %xtraiter992, 0
  br i1 %lcmp.mod993.not, label %._crit_edge539, label %.epil.preheader991

.epil.preheader991:                               ; preds = %._crit_edge539.loopexit.unr-lcssa, %.lr.ph538
  %indvars.iv627.epil.init = phi i64 [ 0, %.lr.ph538 ], [ %indvars.iv.next628.1, %._crit_edge539.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod994 = trunc i32 %i.lz to i1
  call void @llvm.assume(i1 %lcmp.mod994)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.val406, i64 %indvars.iv627.epil.init
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !23
  %.not505.epil = icmp eq i32 %i.my, 1
  br i1 %.not505.epil, label %bb.be, label %._crit_edge539

bb.be:                                            ; preds = %.epil.preheader991
  %.val.i434.epil = load ptr, ptr %i.ih, align 8, !tbaa !90
  %.idx807.epil = shl nuw nsw i64 %indvars.iv627.epil.init, 6
  %i.mz = getelementptr inbounds nuw i8, ptr %.val.i434.epil, i64 %.idx807.epil
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.mh ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !80
  %i.nc = or i64 %i.nb, %i.mf
  store i64 %i.nc, ptr %i.na, align 8, !tbaa !80
  br label %._crit_edge539

._crit_edge539:                                   ; preds = %._crit_edge539.loopexit.unr-lcssa, %bb.be, %.epil.preheader991, %.preheader515.._crit_edge539_crit_edge
  %.pre-phi734.a = phi i64 [ %.pre733, %.preheader515.._crit_edge539_crit_edge ], [ %i.mh, %.epil.preheader991 ], [ %i.mh, %bb.be ], [ %i.mh, %._crit_edge539.loopexit.unr-lcssa ]
  %.pre-phi732 = phi i64 [ %.pre731, %.preheader515.._crit_edge539_crit_edge ], [ %i.mf, %.epil.preheader991 ], [ %i.mf, %bb.be ], [ %i.mf, %._crit_edge539.loopexit.unr-lcssa ]
  %.pre-phi726.a = phi i32 [ %.pre725.a, %.preheader515.._crit_edge539_crit_edge ], [ %i.mg, %.epil.preheader991 ], [ %i.mg, %bb.be ], [ %i.mg, %._crit_edge539.loopexit.unr-lcssa ]
  %i.nd = add nsw i32 %.pre-phi726.a, 1
  store i32 %i.nd, ptr %i.ik, align 4, !tbaa !23
  %i.ne = add nsw i32 %i.lx, 1
  store i32 %i.ne, ptr %i.lw, align 4, !tbaa !23
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %.pre-phi734.a ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !80
  %i.nh = or i64 %i.ng, %.pre-phi732
  store i64 %i.nh, ptr %i.nf, align 8, !tbaa !80
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ak
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !114
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.ni, align 8, !tbaa !114
  br label %.thread497

bb.bg:                                            ; preds = %._crit_edge539, %Vec_IntPush.exit, %bb.ay, %Abc_TtIntersect.exit427
  br i1 %i.if, label %bb.ah, label %bb.bh, !llvm.loop !231

bb.bh:                                            ; preds = %bb.bg
  %.sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 8, !tbaa !23 ; 4 uses
  %i.nl = icmp eq i32 %.sroa.0.0..sroa.0.0., -1
  %.sroa.6.0..sroa.6.4. = load i32, ptr %.sroa.6, align 4 ; 2 uses
  %i.nm = icmp eq i32 %.sroa.6.0..sroa.6.4., -1
  %or.cond5 = select i1 %i.nl, i1 true, i1 %i.nm
  br i1 %or.cond5, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nn = icmp eq i32 %.sroa.0.0..sroa.0.0., %.sroa.6.0..sroa.6.4.
  br i1 %i.nn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.no = load i32, ptr %i.hq, align 4, !tbaa !88
  %i.np = add nsw i32 %i.no, -1
  store i32 %i.np, ptr %i.hq, align 4, !tbaa !88
  %i.nq = load i32, ptr %i.hr, align 4, !tbaa !88
  %i.nr = add nsw i32 %i.nq, -1
  store i32 %i.nr, ptr %i.hr, align 4, !tbaa !88
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %i.ns = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !56 ; 2 uses
  %i.nv = icmp slt i32 %i.nu, 7
  %i.nw = add nsw i32 %i.nu, -6
  %i.nx = shl nuw i32 1, %i.nw
  %i.ny = select i1 %i.nv, i32 1, i32 %i.nx       ; 5 uses
  %i.nz = and i32 %.sroa.0.0..sroa.0.0., 1        ; 2 uses
  %i.oa = icmp sgt i32 %i.ny, 0
  br i1 %i.oa, label %.lr.ph.i435, label %Abc_TtUnit.exit

.lr.ph.i435:                                      ; preds = %bb.bk
  %.not.i436 = icmp eq i32 %i.nz, 0
  %i.ob = select i1 %.not.i436, i64 -6148914691236517206, i64 6148914691236517205 ; 4 uses
  %min.iters.check846 = icmp ult i32 %i.ny, 4
  br i1 %min.iters.check846, label %scalar.ph845, label %vector.ph847

vector.ph847:                                     ; preds = %.lr.ph.i435
  %i.oc = and i32 %i.ny, 2147483644
  %n.vec848 = zext nneg i32 %i.oc to i64
  %broadcast.splatinsert849 = insertelement <2 x i64> poison, i64 %i.ob, i64 0
  %broadcast.splat850 = shufflevector <2 x i64> %broadcast.splatinsert849, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body851

vector.body851:                                   ; preds = %vector.body851, %vector.ph847
  %index852 = phi i64 [ 0, %vector.ph847 ], [ %index.next853, %vector.body851 ] ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index852 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  store <2 x i64> %broadcast.splat850, ptr %i.od, align 8, !tbaa !80
  store <2 x i64> %broadcast.splat850, ptr %i.oe, align 8, !tbaa !80
  %index.next853 = add nuw i64 %index852, 4       ; 2 uses
  %i.of = icmp eq i64 %index.next853, %n.vec848
  br i1 %i.of, label %Abc_TtUnit.exit, label %vector.body851, !llvm.loop !232

scalar.ph845:                                     ; preds = %.lr.ph.i435
  store i64 %i.ob, ptr %1, align 8, !tbaa !80
  %exitcond.not.i440 = icmp eq i32 %i.ny, 1
  br i1 %exitcond.not.i440, label %Abc_TtUnit.exit, label %scalar.ph845.1

scalar.ph845.1:                                   ; preds = %scalar.ph845
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ob, ptr %i.og, align 8, !tbaa !80
  %exitcond.not.i440.1 = icmp eq i32 %i.ny, 2
  br i1 %exitcond.not.i440.1, label %Abc_TtUnit.exit, label %scalar.ph845.2

scalar.ph845.2:                                   ; preds = %scalar.ph845.1
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ob, ptr %i.oh, align 8, !tbaa !80
  br label %Abc_TtUnit.exit

Abc_TtUnit.exit:                                  ; preds = %vector.body851, %scalar.ph845, %scalar.ph845.1, %scalar.ph845.2, %bb.bk
  %i.oi = ashr i32 %.sroa.0.0..sroa.0.0., 1       ; 2 uses
  store i32 %i.oi, ptr %2, align 4, !tbaa !23
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ns, i64 120
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !27
  %.not390 = icmp eq i32 %i.ok, 0
  br i1 %.not390, label %.thread497, label %bb.bl

bb.bl:                                            ; preds = %Abc_TtUnit.exit
  %.not391 = icmp eq i32 %i.nz, 0
  %i.ol = select i1 %.not391, ptr @.str.9, ptr @.str.8
  %i.om = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %i.ol, i32 noundef %i.oi) ; 0 uses
  br label %.thread497

.thread497:                                       ; preds = %bb.bf, %bb.bl, %Abc_TtUnit.exit
  %.3362.ph = phi i32 [ 1, %Abc_TtUnit.exit ], [ 1, %bb.bl ], [ -2, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.dc

bb.bm:                                            ; preds = %bb.bj, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %i.on = load i32, ptr %i.az, align 8, !tbaa !97
  %i.oo = sext i32 %i.on to i64
  %i.op = icmp slt i64 %indvars.iv.next636, %i.oo
  br i1 %i.op, label %bb.ag, label %._crit_edge544, !llvm.loop !233

._crit_edge544:                                   ; preds = %bb.bm, %bb.af
  %i.oq = load ptr, ptr %0, align 8, !tbaa !50    ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load i32, ptr %i.or, align 4, !tbaa !56
  %i.ot = add nsw i32 %i.os, -2
  %i.ou = icmp sgt i32 %7, %i.ot
  br i1 %i.ou, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %._crit_edge544
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 120
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !27
  %.not389 = icmp eq i32 %i.ow, 0
  br i1 %.not389, label %bb.dc, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.dc

bb.bp:                                            ; preds = %._crit_edge544
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 84
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !263
  %.not381 = icmp eq i32 %i.oy, 0
  br i1 %.not381, label %.loopexit514, label %.preheader513

.preheader513:                                    ; preds = %bb.bp
  %i.oz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pe = sext i32 %4 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.pe
  br label %bb.bq

bb.bq:                                            ; preds = %.preheader513, %.thread501
  %.not384.le = phi i1 [ true, %.preheader513 ], [ false, %.thread501 ] ; 2 uses
  %indvars.iv646 = phi i64 [ 0, %.preheader513 ], [ 1, %.thread501 ] ; 6 uses
  %i.pf = xor i64 %indvars.iv646, 1
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.pf ; 3 uses
  %i.ph = getelementptr i8, ptr %i.pg, i64 4      ; 5 uses
  %.val401 = load i32, ptr %i.ph, align 4, !tbaa !88
  %i.pi = icmp slt i32 %.val401, 2
  br i1 %i.pi, label %.thread501, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pj = trunc nuw nsw i64 %indvars.iv646 to i32
  %i.pk = load i32, ptr %i.ao, align 8, !tbaa !113
  %i.pl = add nsw i32 %i.pk, 1
  store i32 %i.pl, ptr %i.ao, align 8, !tbaa !113
  %i.pm = load i32, ptr %i.ap, align 8, !tbaa !96
  %i.pn = shl nsw i32 %i.pm, 1
  %i.po = or disjoint i32 %i.pn, %i.pj
  store i32 %i.po, ptr %i.aq, align 4, !tbaa !23
  %.val400545 = load i32, ptr %i.ph, align 4, !tbaa !88
  %i.pp = icmp sgt i32 %.val400545, 0
  br i1 %i.pp, label %.lr.ph548, label %.critedge

.lr.ph548:                                        ; preds = %bb.br
  %i.pq = getelementptr i8, ptr %i.pg, i64 8
  %.val404 = load ptr, ptr %i.pq, align 8, !tbaa !87
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph548, %bb.bs
  %indvars.iv638 = phi i64 [ 0, %.lr.ph548 ], [ %indvars.iv.next639, %bb.bs ] ; 3 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.val404, i64 %indvars.iv638
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !23
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv638
  %i.pt = getelementptr i8, ptr %gep, i64 4
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !23
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1 ; 3 uses
  %.val400 = load i32, ptr %i.ph, align 4, !tbaa !88
  %i.pu = sext i32 %.val400 to i64
  %i.pv = icmp slt i64 %indvars.iv.next639, %i.pu
  br i1 %i.pv, label %bb.bs, label %.critedge, !llvm.loop !234

.critedge:                                        ; preds = %bb.bs, %bb.br
  %.3353.lcssa = phi i64 [ 0, %bb.br ], [ %indvars.iv.next639, %bb.bs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.pw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #27
  %i.px = icmp slt i32 %i.pw, 0
  br i1 %i.px, label %Abc_Clock.exit442, label %bb.bt

bb.bt:                                            ; preds = %.critedge
  %i.py = load i64, ptr %10, align 8, !tbaa !30
  %.neg594 = mul i64 %i.py, -1000000
  %i.pz = load i64, ptr %i.oz, align 8, !tbaa !31
  %.neg593 = sdiv i64 %i.pz, -1000
  %.neg595 = add i64 %.neg593, %.neg594
  br label %Abc_Clock.exit442

Abc_Clock.exit442:                                ; preds = %.critedge, %bb.bt
  %.0.i441.neg596 = phi i64 [ %.neg595, %bb.bt ], [ 1, %.critedge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.qa = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.3353.lcssa
  %i.qc = call i32 @sat_solver_solve(ptr noundef %i.qa, ptr noundef nonnull %3, ptr noundef nonnull %i.qb, i64 noundef %i.au, i64 noundef 0, i64 noundef 0, i64 noundef 0) #27
  switch i32 %i.qc, label %bb.cd [
    i32 0, label %bb.bu
    i32 -1, label %bb.bv
  ]

bb.bu:                                            ; preds = %Abc_Clock.exit442
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !114
  %i.qf = add nsw i32 %i.qe, 1
  store i32 %i.qf, ptr %i.qd, align 8, !tbaa !114
  br label %bb.dc

bb.bv:                                            ; preds = %Abc_Clock.exit442
  %i.qg = load ptr, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qg, i64 340
  %.val408 = load i32, ptr %i.qh, align 4, !tbaa !264 ; 3 uses
  %i.qi = getelementptr i8, ptr %i.qg, i64 344
  %.val409 = load ptr, ptr %i.qi, align 8, !tbaa !265
  %i.qj = load i32, ptr %i.pa, align 8, !tbaa !115
  %i.qk = add nsw i32 %i.qj, 1
  store i32 %i.qk, ptr %i.pa, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ql = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #27
  %i.qm = icmp slt i32 %i.ql, 0
  br i1 %i.qm, label %Abc_Clock.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qn = load i64, ptr %9, align 8, !tbaa !30
  %i.qo = mul nsw i64 %i.qn, 1000000
  %i.qp = load i64, ptr %i.pb, align 8, !tbaa !31
  %i.qq = sdiv i64 %i.qp, 1000
  %i.qr = add nsw i64 %i.qq, %i.qo
  br label %Abc_Clock.exit444

Abc_Clock.exit444:                                ; preds = %bb.bv, %bb.bw
  %.0.i443 = phi i64 [ %i.qr, %bb.bw ], [ -1, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.qs = add i64 %.0.i443, %.0.i441.neg596
  %i.qt = load i64, ptr %i.pc, align 8, !tbaa !116
  %i.qu = add nsw i64 %i.qs, %i.qt
  store i64 %i.qu, ptr %i.pc, align 8, !tbaa !116
  %i.qv = add nsw i32 %.val408, %7
  %i.qw = icmp sgt i32 %i.qv, 6
  br i1 %i.qw, label %.thread501, label %.preheader511

.preheader511:                                    ; preds = %Abc_Clock.exit444
  %i.qx = icmp sgt i32 %.val408, 0
  br i1 %i.qx, label %.lr.ph556, label %._crit_edge557

.lr.ph556:                                        ; preds = %.preheader511
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.qz = load i32, ptr %i.ph, align 4, !tbaa !88 ; 2 uses
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %.lr.ph556.split.preheader, label %._crit_edge557

.lr.ph556.split.preheader:                        ; preds = %.lr.ph556
  %wide.trip.count653 = zext nneg i32 %.val408 to i64
  br label %.lr.ph556.split

.lr.ph556.split:                                  ; preds = %.lr.ph556.split.preheader, %Vec_IntFind.exit.thread
  %i.rb = phi i32 [ %i.qz, %.lr.ph556.split.preheader ], [ %i.rn, %Vec_IntFind.exit.thread ] ; 4 uses
  %indvars.iv649 = phi i64 [ 0, %.lr.ph556.split.preheader ], [ %indvars.iv.next650, %Vec_IntFind.exit.thread ] ; 2 uses
  %.1348555 = phi i32 [ 0, %.lr.ph556.split.preheader ], [ %.2349, %Vec_IntFind.exit.thread ] ; 4 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.val409, i64 %indvars.iv649
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !23
  %i.re = xor i32 %i.rd, 1                        ; 2 uses
  %i.rf = icmp sgt i32 %i.rb, 0
  br i1 %i.rf, label %.lr.ph.i445, label %Vec_IntFind.exit.thread

.lr.ph.i445:                                      ; preds = %.lr.ph556.split
  %i.rg = load ptr, ptr %i.qy, align 8, !tbaa !87
  %wide.trip.count.i446 = zext nneg i32 %i.rb to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %.lr.ph.i445
  %indvars.iv.i447 = phi i64 [ 0, %.lr.ph.i445 ], [ %indvars.iv.next.i448, %bb.by ] ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.i447
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !23
  %i.rj = icmp eq i32 %i.ri, %i.re
  br i1 %i.rj, label %Vec_IntFind.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %indvars.iv.next.i448 = add nuw nsw i64 %indvars.iv.i447, 1 ; 2 uses
  %exitcond.not.i449 = icmp eq i64 %indvars.iv.next.i448, %wide.trip.count.i446
  br i1 %exitcond.not.i449, label %Vec_IntFind.exit.thread, label %bb.bx, !llvm.loop !3

Vec_IntFind.exit:                                 ; preds = %bb.bx
  %i.rk = add nsw i32 %.1348555, 1
  %i.rl = sext i32 %.1348555 to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.rl
  store i32 %i.re, ptr %i.rm, align 4, !tbaa !23
  %.pre713 = load i32, ptr %i.ph, align 4, !tbaa !88
  br label %Vec_IntFind.exit.thread

Vec_IntFind.exit.thread:                          ; preds = %bb.by, %.lr.ph556.split, %Vec_IntFind.exit
  %i.rn = phi i32 [ %.pre713, %Vec_IntFind.exit ], [ %i.rb, %.lr.ph556.split ], [ %i.rb, %bb.by ]
  %.2349 = phi i32 [ %i.rk, %Vec_IntFind.exit ], [ %.1348555, %.lr.ph556.split ], [ %.1348555, %bb.by ] ; 2 uses
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@Sfm_DecPeformDec_rec:bb.a
  %i.abo = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.abq = add i32 %i.ach, %i.aev
  %i.abr = call i32 @Sfm_DecPeformDec_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.abo, ptr noundef nonnull %i.abp, ptr noundef nonnull %3, i32 noundef %i.acd, ptr noundef nonnull %i.b, i32 noundef %.1369, i32 noundef %i.abq) ; 2 uses
  %i.abs = icmp eq i32 %i.abr, -2
  br i1 %i.abs, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %.split.us.1
  %i.abt = call i32 @Sfm_DecCombineDec(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.abo, ptr noundef nonnull %i.c, ptr noundef nonnull %i.abp, i32 noundef %i.aev, i32 noundef %i.abr, ptr noundef %1, ptr noundef %2, i32 noundef %.4)
  br label %.loopexit

.preheader18.i.preheader:                         ; preds = %Vec_IntGrow.exit11.sink.split.i468, %bb.cw, %bb.cr
  %i.abu = phi i32 [ %i.yq, %bb.cr ], [ %i.yq, %bb.cw ], [ %.pre715, %Vec_IntGrow.exit11.sink.split.i468 ] ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !87
  %i.abx = add nsw i32 %i.abu, 1
  store i32 %i.abx, ptr %i.yp, align 4, !tbaa !88
  %i.aby = sext i32 %i.abu to i64
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %i.aby
  store i32 %.4, ptr %i.abz, align 4, !tbaa !23
  %i.aca = shl nuw nsw i32 %.4, 3
  %i.acb = zext nneg i32 %i.aca to i64            ; 4 uses
  %i.acc = shl nuw nsw i32 %.4, 1                 ; 2 uses
  %i.acd = add nsw i32 %4, 1                      ; 3 uses
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ace ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ach = add i32 %7, 1                          ; 2 uses
  %i.aci = getelementptr i8, ptr %0, i64 448
  %.val.i473 = load ptr, ptr %i.aci, align 8, !tbaa !90
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %.val.i473, i64 %i.acb ; 2 uses
  %i.ack = load i32, ptr %i.an, align 8, !tbaa !23 ; 6 uses
  %i.acl = icmp sgt i32 %i.ack, 0
  br i1 %i.acl, label %.lr.ph.preheader.i475, label %.lr.ph582.preheader

.lr.ph.preheader.i475:                            ; preds = %.preheader18.i.preheader
  %wide.trip.count.i476 = zext nneg i32 %i.ack to i64 ; 3 uses
  %min.iters.check902 = icmp ult i32 %i.ack, 4
  br i1 %min.iters.check902, label %.lr.ph.i477.preheader, label %vector.ph903

vector.ph903:                                     ; preds = %.lr.ph.preheader.i475
  %n.vec904 = and i64 %wide.trip.count.i476, 2147483644 ; 3 uses
  br label %vector.body905

vector.body905:                                   ; preds = %vector.body905, %vector.ph903
  %index906 = phi i64 [ 0, %vector.ph903 ], [ %index.next911, %vector.body905 ] ; 4 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index906 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %wide.load907.a = load <2 x i64>, ptr %i.acm, align 8, !tbaa !80
  %wide.load908.a = load <2 x i64>, ptr %i.acn, align 8, !tbaa !80
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %index906 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %wide.load909.a = load <2 x i64>, ptr %i.aco, align 8, !tbaa !80
  %wide.load910 = load <2 x i64>, ptr %i.acp, align 8, !tbaa !80
  %i.acq = xor <2 x i64> %wide.load909.a, splat (i64 -1)
  %i.acr = xor <2 x i64> %wide.load910, splat (i64 -1)
  %i.acs = and <2 x i64> %wide.load907.a, %i.acq
  %i.act = and <2 x i64> %wide.load908.a, %i.acr
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index906 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  store <2 x i64> %i.acs, ptr %i.acu, align 16, !tbaa !80
  store <2 x i64> %i.act, ptr %i.acv, align 16, !tbaa !80
  %index.next911 = add nuw i64 %index906, 4       ; 2 uses
  %i.acw = icmp eq i64 %index.next911, %n.vec904
  br i1 %i.acw, label %middle.block912, label %vector.body905, !llvm.loop !250

middle.block912:                                  ; preds = %vector.body905
  %cmp.n913 = icmp eq i64 %n.vec904, %wide.trip.count.i476
  br i1 %cmp.n913, label %Abc_TtAndSharp.exit, label %.lr.ph.i477.preheader

.lr.ph.i477.preheader:                            ; preds = %.lr.ph.preheader.i475, %middle.block912
  %indvars.iv.i478.ph = phi i64 [ 0, %.lr.ph.preheader.i475 ], [ %n.vec904, %middle.block912 ]
  br label %.lr.ph.i477

.lr.ph.i477:                                      ; preds = %.lr.ph.i477.preheader, %.lr.ph.i477
  %indvars.iv.i478 = phi i64 [ %indvars.iv.next.i479, %.lr.ph.i477 ], [ %indvars.iv.i478.ph, %.lr.ph.i477.preheader ] ; 4 uses
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i478
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !80
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %indvars.iv.i478
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !80
  %i.adb = xor i64 %i.ada, -1
  %i.adc = and i64 %i.acy, %i.adb
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i478
  store i64 %i.adc, ptr %i.add, align 8, !tbaa !80
  %indvars.iv.next.i479 = add nuw nsw i64 %indvars.iv.i478, 1 ; 2 uses
  %exitcond.not.i480 = icmp eq i64 %indvars.iv.next.i479, %wide.trip.count.i476
  br i1 %exitcond.not.i480, label %Abc_TtAndSharp.exit, label %.lr.ph.i477, !llvm.loop !251

Abc_TtAndSharp.exit:                              ; preds = %.lr.ph.i477, %middle.block912
  %i.ade = icmp samesign ult i32 %i.ack, 8
  br i1 %i.ade, label %.lr.ph582.preheader, label %._crit_edge583

.lr.ph582.preheader:                              ; preds = %.preheader18.i.preheader, %Abc_TtAndSharp.exit
  %i.adf = sext i32 %i.ack to i64
  %i.adg = shl nsw i64 %i.adf, 3
  %scevgep674 = getelementptr i8, ptr %i.b, i64 %i.adg
  %i.adh = sub i32 7, %i.ack
  %i.adi = zext i32 %i.adh to i64
  %i.adj = shl nuw nsw i64 %i.adi, 3
  %i.adk = add nuw nsw i64 %i.adj, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep674, i8 0, i64 %i.adk, i1 false), !tbaa !80
  br label %._crit_edge583

._crit_edge583:                                   ; preds = %.lr.ph582.preheader, %Abc_TtAndSharp.exit
  %i.adl = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.adm = getelementptr i8, ptr %0, i64 464
  %.val.i473.1 = load ptr, ptr %i.adm, align 8, !tbaa !90
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %.val.i473.1, i64 %i.acb ; 2 uses
  %i.ado = load i32, ptr %i.ey, align 4, !tbaa !23 ; 6 uses
  %i.adp = icmp sgt i32 %i.ado, 0
  br i1 %i.adp, label %.lr.ph.preheader.i475.1, label %.lr.ph582.preheader.1

.lr.ph.preheader.i475.1:                          ; preds = %._crit_edge583
  %wide.trip.count.i476.1 = zext nneg i32 %i.ado to i64 ; 3 uses
  %min.iters.check916 = icmp ult i32 %i.ado, 4
  br i1 %min.iters.check916, label %.lr.ph.i477.1.preheader, label %vector.ph917

vector.ph917:                                     ; preds = %.lr.ph.preheader.i475.1
  %n.vec918 = and i64 %wide.trip.count.i476.1, 2147483644 ; 3 uses
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph917
  %index920 = phi i64 [ 0, %vector.ph917 ], [ %index.next925, %vector.body919 ] ; 4 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index920 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %wide.load921.a = load <2 x i64>, ptr %i.adq, align 8, !tbaa !80
  %wide.load922.a = load <2 x i64>, ptr %i.adr, align 8, !tbaa !80
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %index920 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %wide.load923.a = load <2 x i64>, ptr %i.ads, align 8, !tbaa !80
  %wide.load924 = load <2 x i64>, ptr %i.adt, align 8, !tbaa !80
  %i.adu = xor <2 x i64> %wide.load923.a, splat (i64 -1)
  %i.adv = xor <2 x i64> %wide.load924, splat (i64 -1)
  %i.adw = and <2 x i64> %wide.load921.a, %i.adu
  %i.adx = and <2 x i64> %wide.load922.a, %i.adv
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %index920 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  store <2 x i64> %i.adw, ptr %i.ady, align 16, !tbaa !80
  store <2 x i64> %i.adx, ptr %i.adz, align 16, !tbaa !80
  %index.next925 = add nuw i64 %index920, 4       ; 2 uses
  %i.aea = icmp eq i64 %index.next925, %n.vec918
  br i1 %i.aea, label %middle.block926, label %vector.body919, !llvm.loop !252

middle.block926:                                  ; preds = %vector.body919
  %cmp.n927 = icmp eq i64 %n.vec918, %wide.trip.count.i476.1
  br i1 %cmp.n927, label %Abc_TtAndSharp.exit.1, label %.lr.ph.i477.1.preheader

.lr.ph.i477.1.preheader:                          ; preds = %.lr.ph.preheader.i475.1, %middle.block926
  %indvars.iv.i478.1.ph = phi i64 [ 0, %.lr.ph.preheader.i475.1 ], [ %n.vec918, %middle.block926 ]
  br label %.lr.ph.i477.1

.lr.ph.i477.1:                                    ; preds = %.lr.ph.i477.1.preheader, %.lr.ph.i477.1
  %indvars.iv.i478.1 = phi i64 [ %indvars.iv.next.i479.1, %.lr.ph.i477.1 ], [ %indvars.iv.i478.1.ph, %.lr.ph.i477.1.preheader ] ; 4 uses
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i478.1
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !80
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv.i478.1
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !80
  %i.aef = xor i64 %i.aee, -1
  %i.aeg = and i64 %i.aec, %i.aef
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %indvars.iv.i478.1
  store i64 %i.aeg, ptr %i.aeh, align 8, !tbaa !80
  %indvars.iv.next.i479.1 = add nuw nsw i64 %indvars.iv.i478.1, 1 ; 2 uses
  %exitcond.not.i480.1 = icmp eq i64 %indvars.iv.next.i479.1, %wide.trip.count.i476.1
  br i1 %exitcond.not.i480.1, label %Abc_TtAndSharp.exit.1, label %.lr.ph.i477.1, !llvm.loop !253

Abc_TtAndSharp.exit.1:                            ; preds = %.lr.ph.i477.1, %middle.block926
  %i.aei = icmp samesign ult i32 %i.ado, 8
  br i1 %i.aei, label %.lr.ph582.preheader.1, label %.split.us

.lr.ph582.preheader.1:                            ; preds = %._crit_edge583, %Abc_TtAndSharp.exit.1
  %i.aej = sext i32 %i.ado to i64
  %i.aek = shl nsw i64 %i.aej, 3
  %scevgep674.1 = getelementptr i8, ptr %i.adl, i64 %i.aek
  %i.ael = sub i32 7, %i.ado
  %i.aem = zext i32 %i.ael to i64
  %i.aen = shl nuw nsw i64 %i.aem, 3
  %i.aeo = add nuw nsw i64 %i.aen, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep674.1, i8 0, i64 %i.aeo, i1 false), !tbaa !80
  br label %.split.us

.split.us:                                        ; preds = %Abc_TtAndSharp.exit.1, %.lr.ph582.preheader.1
  %i.aep = or disjoint i32 %i.acc, 1
  store i32 %i.aep, ptr %i.aq, align 4, !tbaa !23
  %i.aeq = load ptr, ptr %i.acf, align 8, !tbaa !79
  %i.aer = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.aes = load i32, ptr %i.acg, align 8, !tbaa !122
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = shl nsw i64 %i.aet, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aeq, ptr align 8 %i.aer, i64 %i.aeu, i1 false)
  %i.aev = call i32 @Sfm_DecPeformDec_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %3, i32 noundef %i.acd, ptr noundef nonnull %i.b, i32 noundef %.1369, i32 noundef %i.ach) ; 3 uses
  %i.aew = icmp eq i32 %i.aev, -2
  br i1 %i.aew, label %.loopexit, label %.preheader.i481.us.preheader.1

.loopexit:                                        ; preds = %.split.us, %.split.us.1, %bb.db
  %.7366 = phi i32 [ %i.abt, %bb.db ], [ -2, %.split.us.1 ], [ -2, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cc, %Abc_TtStretch6.exit, %.thread497, %bb.cq, %bb.bn, %bb.bo, %Abc_TtConst.exit, %bb.j, %.loopexit, %bb.bu, %bb.g
  %.8367 = phi i32 [ -2, %bb.g ], [ -2, %bb.cq ], [ %.7366, %.loopexit ], [ -2, %bb.bn ], [ %.3362.ph, %.thread497 ], [ 0, %Abc_TtConst.exit ], [ -2, %bb.bu ], [ 0, %bb.j ], [ -2, %bb.bo ], [ %.1348.lcssa, %Abc_TtStretch6.exit ], [ %.1348.lcssa, %bb.cc ]
  ret i32 %.8367
}

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @Sfm_DecPeformDec2(ptr noundef initializes((276, 280)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x [4 x i64]], align 16         ; 4 uses
  %i.b = alloca [2 x [8 x i64]], align 16         ; 20 uses
  %i.c = alloca [4 x [16 x i32]], align 16        ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 4 uses
  %i.e = alloca [1000 x i32], align 16            ; 3 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.g = load ptr, ptr %0, align 8, !tbaa !50     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.i = load i32, ptr %i.h, align 4, !tbaa !123
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !124
  %i.l = tail call noundef i32 @llvm.smax.i32(i32 %i.k, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %.not150 = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  br i1 %.not150, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.r = phi i32 [ %i.l, %.thread ], [ %i.q, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load i32, ptr %i.s, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !111
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.t, i32 noundef %i.v) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i32 [ %i.r, %bb.c ], [ %i.q, %bb.b ]
  %i.y = phi i1 [ true, %bb.c ], [ false, %bb.b ] ; 4 uses
  tail call fastcc void @Sfm_ObjSetupSimInfo(ptr noundef %1)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  store i32 0, ptr %i.z, align 4, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ax = getelementptr i8, ptr %0, i64 932       ; 4 uses
  %i.ay = getelementptr i8, ptr %0, i64 936       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.bo
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.bo ] ; 7 uses
  %.0159 = phi i32 [ -1, %bb.d ], [ %.1, %bb.bo ] ; 6 uses
  %.096158 = phi i32 [ -1, %bb.d ], [ %.197, %bb.bo ] ; 7 uses
  %.098157 = phi i32 [ -1, %bb.d ], [ %.199, %bb.bo ] ; 6 uses
  %.0100156 = phi i32 [ 0, %bb.d ], [ %i.ba, %bb.bo ] ; 3 uses
  %.val112 = load i32, ptr %i.z, align 4, !tbaa !88 ; 2 uses
  %i.az = icmp sgt i32 %.val112, %.0100156
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %.0100156, ptr %i.z, align 4, !tbaa !88
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.val = phi i32 [ %.0100156, %bb.f ], [ %.val112, %bb.e ]
  %i.ba = add nsw i32 %.val, 1
  %i.bb = load i32, ptr %i.aa, align 8, !tbaa !23 ; 24 uses
  %.not.i = icmp slt i32 %i.bb, 64
  br i1 %.not.i, label %.thread20.sink.split.i, label %bb.h

.thread20.sink.split.i:                           ; preds = %bb.g
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = sub nuw nsw i32 64, %i.bb
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = lshr i64 -1, %i.be
  %.sink.i = select i1 %i.bc, i64 %i.bf, i64 0
  store i64 %.sink.i, ptr %i.b, align 16, !tbaa !80
  br label %.thread24.sink.split.i

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.b, align 16, !tbaa !80
  %.not.1.i = icmp samesign ult i32 %i.bb, 128
  br i1 %.not.1.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not65.i = icmp eq i32 %i.bb, 64
  br i1 %.not65.i, label %.thread24.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = sub nuw nsw i32 128, %i.bb
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 -1, %i.bh
  br label %.thread24.sink.split.i

bb.k:                                             ; preds = %bb.h
  store i64 -1, ptr %i.af, align 8, !tbaa !80
  %.not.2.i = icmp samesign ult i32 %i.bb, 192
  br i1 %.not.2.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not64.i = icmp eq i32 %i.bb, 128
  br i1 %.not64.i, label %.thread28.sink.split.i, label %bb.m

.thread24.sink.split.i:                           ; preds = %bb.j, %bb.i, %.thread20.sink.split.i
  %.sink45.i = phi i64 [ %i.bi, %bb.j ], [ 0, %.thread20.sink.split.i ], [ 0, %bb.i ]
  store i64 %.sink45.i, ptr %i.af, align 8, !tbaa !80
  br label %.thread28.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.bj = sub nuw nsw i32 192, %i.bb
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 -1, %i.bk
  br label %.thread28.sink.split.i

bb.n:                                             ; preds = %bb.k
  store i64 -1, ptr %i.ag, align 16, !tbaa !80
  %.not.3.i = icmp samesign ult i32 %i.bb, 256
  br i1 %.not.3.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.not63.i = icmp eq i32 %i.bb, 192
  br i1 %.not63.i, label %.thread32.sink.split.i, label %bb.p

.thread28.sink.split.i:                           ; preds = %bb.m, %.thread24.sink.split.i, %bb.l
  %.sink47.i = phi i64 [ %i.bl, %bb.m ], [ 0, %.thread24.sink.split.i ], [ 0, %bb.l ]
  store i64 %.sink47.i, ptr %i.ag, align 16, !tbaa !80
  br label %.thread32.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.bm = sub nuw nsw i32 256, %i.bb
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn
  br label %.thread32.sink.split.i

bb.q:                                             ; preds = %bb.n
  store i64 -1, ptr %i.ah, align 8, !tbaa !80
  %.not.4.i = icmp samesign ult i32 %i.bb, 320
  br i1 %.not.4.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not62.i = icmp eq i32 %i.bb, 256
  br i1 %.not62.i, label %.thread36.sink.split.i, label %bb.s

.thread32.sink.split.i:                           ; preds = %bb.p, %.thread28.sink.split.i, %bb.o
  %.sink49.i = phi i64 [ %i.bo, %bb.p ], [ 0, %.thread28.sink.split.i ], [ 0, %bb.o ]
  store i64 %.sink49.i, ptr %i.ah, align 8, !tbaa !80
  br label %.thread36.sink.split.i

bb.s:                                             ; preds = %bb.r
  %i.bp = sub nuw nsw i32 320, %i.bb
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = lshr i64 -1, %i.bq
  br label %.thread36.sink.split.i

bb.t:                                             ; preds = %bb.q
  store i64 -1, ptr %i.ai, align 16, !tbaa !80
  %.not.5.i = icmp samesign ult i32 %i.bb, 384
  br i1 %.not.5.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.not61.i = icmp eq i32 %i.bb, 320
  br i1 %.not61.i, label %.thread40.sink.split.i, label %bb.v

.thread36.sink.split.i:                           ; preds = %bb.s, %.thread32.sink.split.i, %bb.r
end_hunk_2
