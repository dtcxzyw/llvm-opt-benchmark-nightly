inline.NumInlined: 7
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@densePOTRS:bb.a
  %.156.unr = phi i64 [ %.155, %.lr.ph58.preheader ], [ %.1.prol, %.lr.ph58.prol ]
  %i.bv = icmp eq i64 %indvar, 0
  br i1 %i.bv, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %i.bw = phi double [ %i.ci, %.lr.ph58 ], [ %.unr, %.lr.ph58.prol.loopexit ]
  %.156 = phi i64 [ %.1.1, %.lr.ph58 ], [ %.156.unr, %.lr.ph58.prol.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.156
  %i.by = load double, ptr %i.bx, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.156
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !20
  %i.cb = fneg double %i.by
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bw) ; 2 uses
  store double %i.cc, ptr %i.bn, align 8, !tbaa !20
  %.1 = add nuw nsw i64 %.156, 1                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !20
  %i.ch = fneg double %i.ce
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cg, double %i.cc) ; 3 uses
  store double %i.ci, ptr %i.bn, align 8, !tbaa !20
  %.1.1 = add nuw nsw i64 %.156, 2                ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %.1.1, %1
  br i1 %exitcond65.not.1, label %._crit_edge59, label %.lr.ph58, !llvm.loop !93

._crit_edge59:                                    ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.lr.ph62
  %i.cj = phi double [ %.promoted, %.lr.ph62 ], [ %.lcssa.unr, %.lr.ph58.prol.loopexit ], [ %i.ci, %.lr.ph58 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.15060
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.15060
  %i.cn = fdiv double %i.cj, %i.cl
  store double %i.cn, ptr %i.cm, align 8, !tbaa !20
  %i.co = add nsw i64 %.15060, -1
  %i.cp = icmp sgt i64 %.15060, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cp, label %.lr.ph62, label %._crit_edge63, !llvm.loop !94

._crit_edge63:                                    ; preds = %._crit_edge59, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @DenseGEQRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call i32 @denseGEQRF(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %1, ptr noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @denseGEQRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %bb.a
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = add i64 %1, -1                           ; 7 uses
  %i.d = shl i64 %1, 3
  %i.e = add i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph126, %.loopexit
  %indvars.iv = phi i64 [ %1, %.lr.ph126 ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %.087124 = phi i64 [ 0, %.lr.ph126 ], [ %i.ev, %.loopexit ] ; 19 uses
  %i.f = sub i64 %i.c, %.087124
  %i.g = sub i64 %i.c, %.087124                   ; 2 uses
  %i.h = sub i64 %i.c, %.087124                   ; 4 uses
  %i.i = sub i64 %1, %.087124
  %i.j = shl i64 %i.i, 3
  %scevgep146 = getelementptr i8, ptr %4, i64 %i.j
  %i.k = sub i64 %i.c, %.087124                   ; 3 uses
  %i.l = shl i64 %.087124, 3
  %i.m = sub i64 %i.l, %i.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.087124
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.087124 ; 12 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !20 ; 5 uses
  store double 1.000000e+00, ptr %4, align 8, !tbaa !20
  %i.s = sub nsw i64 %1, %.087124                 ; 2 uses
  %i.t = icmp slt i64 %i.s, 2                     ; 2 uses
  br i1 %i.t, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.u = sub i64 %i.e, %.087124
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.v = icmp ult i64 %i.u, 3
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08897 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 6 uses
  %.08996 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.08897
  %i.w = load double, ptr %gep, align 8, !tbaa !20 ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.08897
  store double %i.w, ptr %i.x, align 8, !tbaa !20
  %i.y = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %.08996)
  %i.z = add nuw nsw i64 %.08897, 1               ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.z
  %i.aa = load double, ptr %gep.1, align 8, !tbaa !20 ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  store double %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.y)
  %i.ad = add nuw nsw i64 %.08897, 2              ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ad
  %i.ae = load double, ptr %gep.2, align 8, !tbaa !20 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ad
  store double %i.ae, ptr %i.af, align 8, !tbaa !20
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.ac)
  %i.ah = add nuw nsw i64 %.08897, 3              ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ah
  %i.ai = load double, ptr %gep.3, align 8, !tbaa !20 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ah
  store double %i.ai, ptr %i.aj, align 8, !tbaa !20
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ag) ; 3 uses
  %i.al = add nuw nsw i64 %.08897, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !104

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.08897.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.al, %._crit_edge.unr-lcssa ]
  %.08996.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.08897.epil = phi i64 [ %i.ap, %.lr.ph.epil ], [ %.08897.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.08996.epil = phi double [ %i.ao, %.lr.ph.epil ], [ %.08996.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.08897.epil
  %i.am = load double, ptr %gep.epil, align 8, !tbaa !20 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.08897.epil
  store double %i.am, ptr %i.an, align 8, !tbaa !20
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %.08996.epil) ; 2 uses
  %i.ap = add nuw nsw i64 %.08897.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.ak, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil ] ; 4 uses
  %i.aq = fcmp une double %.lcssa, 0.000000e+00
  br i1 %i.aq, label %.lr.ph101.preheader, label %._crit_edge.thread

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %.lcssa)
  %i.as = tail call double @SUNRsqrt(double noundef %i.ar) #7 ; 2 uses
  %i.at = fcmp ugt double %i.r, 0.000000e+00
  %i.au = fsub double %i.r, %i.as
  %i.av = fneg double %.lcssa
  %i.aw = fadd double %i.r, %i.as
  %i.ax = fdiv double %i.av, %i.aw
  %i.ay = select i1 %i.at, double %i.ax, double %i.au ; 4 uses
  %i.az = fmul double %i.ay, %i.ay                ; 2 uses
  %i.ba = fmul double %i.az, 2.000000e+00
  %i.bb = fadd double %.lcssa, %i.az
  %i.bc = fdiv double %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  store double %i.bc, ptr %i.bd, align 8, !tbaa !20
  %min.iters.check162 = icmp ult i64 %i.h, 2
  br i1 %min.iters.check162, label %.lr.ph101.preheader175, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph101.preheader
  %n.vec164 = and i64 %i.h, -2                    ; 2 uses
  %i.be = or i64 %i.h, 1
  %broadcast.splatinsert165 = insertelement <2 x double> poison, double %i.ay, i64 0
  %broadcast.splat166 = shufflevector <2 x double> %broadcast.splatinsert165, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph163
  %index168 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body167 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index168
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %wide.load169 = load <2 x double>, ptr %i.bg, align 8, !tbaa !20
  %i.bh = fdiv <2 x double> %wide.load169, %broadcast.splat166
  store <2 x double> %i.bh, ptr %i.bg, align 8, !tbaa !20
  %index.next170 = add nuw i64 %index168, 2       ; 2 uses
  %i.bi = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.bi, label %middle.block171, label %vector.body167, !llvm.loop !107

middle.block171:                                  ; preds = %vector.body167
  %cmp.n172 = icmp eq i64 %i.h, %n.vec164
  br i1 %cmp.n172, label %.lr.ph118, label %.lr.ph101.preheader175

.lr.ph101.preheader175:                           ; preds = %.lr.ph101.preheader, %middle.block171
  %.199.ph = phi i64 [ 1, %.lr.ph101.preheader ], [ %i.be, %middle.block171 ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader175, %.lr.ph101
  %.199 = phi i64 [ %i.bm, %.lr.ph101 ], [ %.199.ph, %.lr.ph101.preheader175 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.199 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !20
  %i.bl = fdiv double %i.bk, %i.ay
  store double %i.bl, ptr %i.bj, align 8, !tbaa !20
  %i.bm = add nuw nsw i64 %.199, 1                ; 2 uses
  %exitcond129.not = icmp eq i64 %i.bm, %indvars.iv
  br i1 %exitcond129.not, label %.lr.ph118, label %.lr.ph101, !llvm.loop !108

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !20
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph101, %middle.block171, %._crit_edge.thread
  %5 = icmp sgt i64 %i.s, 0
  %6 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.087124
  br i1 %5, label %.lr.ph118.a, label %._crit_edge119

.lr.ph118.a:                                      ; preds = %.lr.ph118
  %xtraiter179 = and i64 %indvars.iv, 3           ; 3 uses
  %i.bo = icmp ult i64 %i.f, 3
  %unroll_iter184 = and i64 %indvars.iv, -4
  %lcmp.mod181.not = icmp eq i64 %xtraiter179, 0
  %lcmp.mod183 = icmp ne i64 %xtraiter179, 0
  %min.iters.check148 = icmp ult i64 %indvars.iv, 4
  %n.vec150 = and i64 %indvars.iv, -4             ; 3 uses
  %cmp.n159 = icmp eq i64 %indvars.iv, %n.vec150
  %xtraiter186 = and i64 %indvars.iv, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph118.a, %._crit_edge115
  %.0116 = phi i64 [ %i.dr, %._crit_edge115 ], [ %.087124, %.lr.ph118.a ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0116
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19 ; 2 uses
  %invariant.gep102 = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.087124 ; 10 uses
  br i1 %i.bo, label %.lr.ph107.epil.preheader, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.c, %.lr.ph107
  %.2105 = phi i64 [ %i.ck, %.lr.ph107 ], [ 0, %bb.c ] ; 6 uses
  %.190104 = phi double [ %i.cj, %.lr.ph107 ], [ 0.000000e+00, %bb.c ]
  %niter185 = phi i64 [ %niter185.next.3, %.lr.ph107 ], [ 0, %bb.c ]
  %gep103 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.2105
  %i.br = load double, ptr %gep103, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2105
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !20
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bt, double %.190104)
  %i.bv = or disjoint i64 %.2105, 1               ; 2 uses
  %gep103.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.bv
  %i.bw = load double, ptr %gep103.1, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !20
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bu)
  %i.ca = or disjoint i64 %.2105, 2               ; 2 uses
  %gep103.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.ca
  %i.cb = load double, ptr %gep103.2, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ca
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !20
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.bz)
  %i.cf = or disjoint i64 %.2105, 3               ; 2 uses
  %gep103.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.cf
  %i.cg = load double, ptr %gep103.3, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !20
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ci, double %i.ce) ; 3 uses
  %i.ck = add nuw nsw i64 %.2105, 4               ; 2 uses
  %niter185.next.3 = add i64 %niter185, 4         ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %.lr.ph114.unr-lcssa, label %.lr.ph107, !llvm.loop !109

.lr.ph114.unr-lcssa:                              ; preds = %.lr.ph107
  br i1 %lcmp.mod181.not, label %.lr.ph114, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.lr.ph114.unr-lcssa, %bb.c
  %.2105.epil.init = phi i64 [ 0, %bb.c ], [ %i.ck, %.lr.ph114.unr-lcssa ]
  %.190104.epil.init = phi double [ 0.000000e+00, %bb.c ], [ %i.cj, %.lr.ph114.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph107.epil

.lr.ph107.epil:                                   ; preds = %.lr.ph107.epil, %.lr.ph107.epil.preheader
  %.2105.epil = phi i64 [ %i.cp, %.lr.ph107.epil ], [ %.2105.epil.init, %.lr.ph107.epil.preheader ] ; 3 uses
  %.190104.epil = phi double [ %i.co, %.lr.ph107.epil ], [ %.190104.epil.init, %.lr.ph107.epil.preheader ]
  %epil.iter180 = phi i64 [ %epil.iter180.next, %.lr.ph107.epil ], [ 0, %.lr.ph107.epil.preheader ]
  %gep103.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.2105.epil
  %i.cl = load double, ptr %gep103.epil, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2105.epil
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !20
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cn, double %.190104.epil) ; 2 uses
  %i.cp = add nuw nsw i64 %.2105.epil, 1
  %epil.iter180.next = add i64 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i64 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %.lr.ph114, label %.lr.ph107.epil, !llvm.loop !110

.lr.ph114:                                        ; preds = %.lr.ph107.epil, %.lr.ph114.unr-lcssa
  %.lcssa176 = phi double [ %i.cj, %.lr.ph114.unr-lcssa ], [ %i.co, %.lr.ph107.epil ]
  %i.cq = load double, ptr %6, align 8, !tbaa !20
  %i.cr = fneg double %i.cq
  %i.cs = fmul double %.lcssa176, %i.cr           ; 4 uses
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph114
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.d
  %bound0 = icmp ult ptr %invariant.gep102, %scevgep146
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph147.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck145
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body151 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index152 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load153 = load <2 x double>, ptr %i.ct, align 8, !tbaa !20, !alias.scope !111
  %wide.load154 = load <2 x double>, ptr %i.cu, align 8, !tbaa !20, !alias.scope !111
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %index152 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load155 = load <2 x double>, ptr %i.cv, align 8, !tbaa !20, !alias.scope !114, !noalias !111
  %wide.load156 = load <2 x double>, ptr %i.cw, align 8, !tbaa !20, !alias.scope !114, !noalias !111
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load153, <2 x double> %wide.load155)
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load154, <2 x double> %wide.load156)
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !20, !alias.scope !114, !noalias !111
  store <2 x double> %i.cy, ptr %i.cw, align 8, !tbaa !20, !alias.scope !114, !noalias !111
  %index.next157 = add nuw i64 %index152, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.cz, label %middle.block158, label %vector.body151, !llvm.loop !116

middle.block158:                                  ; preds = %vector.body151
  br i1 %cmp.n159, label %._crit_edge115, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %vector.memcheck145, %.lr.ph114, %middle.block158
  %.3112.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %.lr.ph114 ], [ %n.vec150, %middle.block158 ] ; 5 uses
  %i.da = add i64 %.087124, %.3112.ph
  br i1 %lcmp.mod187.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol

scalar.ph147.prol:                                ; preds = %scalar.ph147.preheader
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3112.ph
  %i.dc = load double, ptr %i.db, align 8, !tbaa !20
  %gep111.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.3112.ph ; 2 uses
  %i.dd = load double, ptr %gep111.prol, align 8, !tbaa !20
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dc, double %i.dd)
  store double %i.de, ptr %gep111.prol, align 8, !tbaa !20
  %i.df = or disjoint i64 %.3112.ph, 1
  br label %scalar.ph147.prol.loopexit

scalar.ph147.prol.loopexit:                       ; preds = %scalar.ph147.prol, %scalar.ph147.preheader
  %.3112.unr = phi i64 [ %.3112.ph, %scalar.ph147.preheader ], [ %i.df, %scalar.ph147.prol ]
  %i.dg = icmp eq i64 %i.c, %i.da
  br i1 %i.dg, label %._crit_edge115, label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147
  %.3112 = phi i64 [ %i.dq, %scalar.ph147 ], [ %.3112.unr, %scalar.ph147.prol.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.3112
  %i.di = load double, ptr %i.dh, align 8, !tbaa !20
  %gep111 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %.3112 ; 2 uses
  %i.dj = load double, ptr %gep111, align 8, !tbaa !20
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.di, double %i.dj)
  store double %i.dk, ptr %gep111, align 8, !tbaa !20
  %i.dl = add nuw nsw i64 %.3112, 1               ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !20
  %gep111.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep102, i64 %i.dl ; 2 uses
  %i.do = load double, ptr %gep111.1, align 8, !tbaa !20
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dn, double %i.do)
  store double %i.dp, ptr %gep111.1, align 8, !tbaa !20
  %i.dq = add nuw nsw i64 %.3112, 2               ; 2 uses
  %exitcond131.not.1 = icmp eq i64 %i.dq, %indvars.iv
  br i1 %exitcond131.not.1, label %._crit_edge115, label %scalar.ph147, !llvm.loop !117

._crit_edge115:                                   ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147, %middle.block158
  %i.dr = add nuw nsw i64 %.0116, 1               ; 2 uses
  %exitcond132.not = icmp eq i64 %i.dr, %2
  br i1 %exitcond132.not, label %._crit_edge119, label %bb.c, !llvm.loop !118

._crit_edge119:                                   ; preds = %._crit_edge115, %.lr.ph118
  %i.ds = icmp sge i64 %.087124, %i.c
  %brmerge = or i1 %i.ds, %i.t
  br i1 %brmerge, label %.loopexit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %._crit_edge119
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph123.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123.preheader
  %i.dt = add i64 %i.m, %i.p
  %i.du = add i64 %i.dt, -1
  %diff.check = icmp ult i64 %i.du, 31
  br i1 %diff.check, label %.lr.ph123.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.dv = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = or disjoint i64 %index, 1               ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load = load <2 x double>, ptr %i.dx, align 8, !tbaa !20
  %wide.load144 = load <2 x double>, ptr %i.dy, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x double> %wide.load, ptr %i.dz, align 8, !tbaa !20
  store <2 x double> %wide.load144, ptr %i.ea, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph123.preheader174

.lr.ph123.preheader174:                           ; preds = %vector.memcheck, %.lr.ph123.preheader, %middle.block
  %.4122.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph123.preheader ], [ %i.dv, %middle.block ] ; 4 uses
  %i.ec = sub i64 %indvars.iv, %.4122.ph
  %i.ed = add i64 %.087124, %.4122.ph
  %i.ee = sub i64 %i.c, %i.ed
  %xtraiter188 = and i64 %i.ec, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol

.lr.ph123.prol:                                   ; preds = %.lr.ph123.preheader174, %.lr.ph123.prol
  %.4122.prol = phi i64 [ %i.eh, %.lr.ph123.prol ], [ %.4122.ph, %.lr.ph123.preheader174 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.prol ], [ 0, %.lr.ph123.preheader174 ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4122.prol
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !20
  %gep121.prol = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.4122.prol
  store double %i.eg, ptr %gep121.prol, align 8, !tbaa !20
  %i.eh = add nuw nsw i64 %.4122.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter188
  br i1 %prol.iter.cmp.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol, !llvm.loop !120

.lr.ph123.prol.loopexit:                          ; preds = %.lr.ph123.prol, %.lr.ph123.preheader174
  %.4122.unr = phi i64 [ %.4122.ph, %.lr.ph123.preheader174 ], [ %i.eh, %.lr.ph123.prol ]
  %i.ei = icmp ult i64 %i.ee, 3
  br i1 %i.ei, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123
  %.4122 = phi i64 [ %i.eu, %.lr.ph123 ], [ %.4122.unr, %.lr.ph123.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.4122
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !20
  %gep121 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.4122
  store double %i.ek, ptr %gep121, align 8, !tbaa !20
  %i.el = add nuw nsw i64 %.4122, 1               ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !20
  %gep121.1 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.el
  store double %i.en, ptr %gep121.1, align 8, !tbaa !20
  %i.eo = add nuw nsw i64 %.4122, 2               ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !20
  %gep121.2 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.eo
  store double %i.eq, ptr %gep121.2, align 8, !tbaa !20
  %i.er = add nuw nsw i64 %.4122, 3               ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !20
  %gep121.3 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.er
  store double %i.et, ptr %gep121.3, align 8, !tbaa !20
  %i.eu = add nuw nsw i64 %.4122, 4               ; 2 uses
  %exitcond134.not.3 = icmp eq i64 %i.eu, %indvars.iv
  br i1 %exitcond134.not.3, label %.loopexit, label %.lr.ph123, !llvm.loop !121

.loopexit:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123, %middle.block, %._crit_edge119
  %i.ev = add nuw nsw i64 %.087124, 1             ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond135.not = icmp eq i64 %i.ev, %2
  br i1 %exitcond135.not, label %._crit_edge127, label %bb.b, !llvm.loop !122

._crit_edge127:                                   ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @DenseORMQR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 15 uses
  %i.g = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %2 to i64
  %min.iters.check = icmp ult i64 %i.f, 8
  %i.j = sub i64 %i.i, %i.h
  %diff.check = icmp ugt i64 %i.j, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !20
  %wide.load9 = load <2 x double>, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !20
  store <2 x double> %wide.load9, ptr %i.n, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader53.i, label %.lr.ph.i.preheader27

.lr.ph.i.preheader27:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.04854.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader27, %.lr.ph.i.prol
  %.04854.i.prol = phi i64 [ %i.s, %.lr.ph.i.prol ], [ %.04854.i.ph, %.lr.ph.i.preheader27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader27 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i.prol
  %i.q = load double, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i.prol
  store double %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = add nuw nsw i64 %.04854.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !124

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader27
  %.04854.i.unr = phi i64 [ %.04854.i.ph, %.lr.ph.i.preheader27 ], [ %i.s, %.lr.ph.i.prol ]
  %i.t = sub nsw i64 %.04854.i.ph, %i.f
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.preheader53.i, label %.lr.ph.i

.preheader53.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %i.v = icmp slt i64 %i.f, %i.d
  br i1 %i.v, label %.lr.ph56.preheader.i, label %.preheader.i

.lr.ph56.preheader.i:                             ; preds = %.preheader53.i
  %i.w = shl i64 %i.f, 3
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.w
  %i.x = sub i64 %i.d, %i.f
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.y, i1 false), !tbaa !20
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.04854.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.04854.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04854.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04854.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = add nuw nsw i64 %.04854.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  store double %i.ae, ptr %i.af, align 8, !tbaa !20
  %i.ag = add nuw nsw i64 %.04854.i, 2            ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag
  store double %i.ai, ptr %i.aj, align 8, !tbaa !20
  %i.ak = add nuw nsw i64 %.04854.i, 3            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !20
  %i.ao = add nuw nsw i64 %.04854.i, 4            ; 2 uses
end_hunk_0
