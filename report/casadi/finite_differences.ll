Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/finite_differences?download=true
inline.NumInlined: 1428
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZdlPvm

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi10FiniteDiff4evalEPPKdPPdPxS4_Pv(ptr noundef nonnull align 8 dereferenceable(1400) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK6casadi16FunctionInternal5setupEPvPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 11 uses
  %i.b = tail call noundef i64 @_ZNK6casadi8Function4n_inEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = tail call noundef i64 @_ZNK6casadi8Function5n_outEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 928
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(1400) %0) ; 8 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.i = icmp sgt i64 %i.c, 0                     ; 3 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %bb.a
  %.0148.lcssa = phi ptr [ %4, %bb.a ], [ %i.bk, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ] ; 6 uses
  %.0147.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.r, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ] ; 2 uses
  %.0148.lcssa346 = ptrtoaddr ptr %.0148.lcssa to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.0147.lcssa, i64 %i.b ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.g ; 4 uses
  %.1149218 = getelementptr inbounds [8 x i8], ptr %.0148.lcssa, i64 %i.m ; 3 uses
  %i.o = icmp sgt i64 %i.g, 0                     ; 2 uses
  br i1 %i.o, label %.lr.ph222.preheader, label %.preheader211

.lr.ph222.preheader:                              ; preds = %._crit_edge
  %xtraiter459 = and i64 %i.g, 7                  ; 3 uses
  %i.p = icmp ult i64 %i.g, 8
  br i1 %i.p, label %.lr.ph222.epil.preheader, label %.lr.ph222.preheader.new

.lr.ph222.preheader.new:                          ; preds = %.lr.ph222.preheader
  %unroll_iter = and i64 %i.g, 9223372036854775800
  br label %.lr.ph222

.lr.ph:                                           ; preds = %bb.a, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %.0146216 = phi i64 [ %i.bl, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ 0, %bb.a ] ; 2 uses
  %.0147215 = phi ptr [ %i.r, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ %i.h, %bb.a ] ; 2 uses
  %.0148214 = phi ptr [ %i.bk, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ %4, %bb.a ] ; 7 uses
  %.0148214340 = ptrtoaddr ptr %.0148214 to i64
  %i.q = tail call noundef i64 @_ZNK6casadi8Function7nnz_outEx(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.0146216) ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0147215, i64 8 ; 2 uses
  %i.s = load ptr, ptr %.0147215, align 8, !tbaa !127 ; 5 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %.not.i = icmp eq ptr %.0148214, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not15.i = icmp eq ptr %i.s, null
  %i.u = icmp sgt i64 %i.q, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.b
  br i1 %i.u, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.q, 4
  %i.v = sub i64 %i.t, %.0148214340
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond440 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond440, label %.lr.ph.i.preheader456, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.q, 9223372036854775804      ; 4 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %.0148214, i64 %i.w
  %i.y = getelementptr i8, ptr %i.s, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.0148214, i64 %i.z ; 2 uses
  %next.gep341 = getelementptr i8, ptr %i.s, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep341, i64 16
  %wide.load = load <2 x double>, ptr %next.gep341, align 8, !tbaa !99
  %wide.load342 = load <2 x double>, ptr %i.aa, align 8, !tbaa !99
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !99
  store <2 x double> %wide.load342, ptr %i.ab, align 8, !tbaa !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader456

.lr.ph.i.preheader456:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %.0148214, %.lr.ph.i.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.s, %.lr.ph.i.preheader ], [ %i.y, %middle.block ] ; 2 uses
  %i.ad = sub nsw i64 %i.q, %.020.i.ph
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader456, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.ah, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader456 ]
  %.01019.i.prol = phi ptr [ %i.ag, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader456 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.ae, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader456 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader456 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.af = load double, ptr %.01218.i.prol, align 8, !tbaa !99
  %i.ag = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.af, ptr %.01019.i.prol, align 8, !tbaa !99
  %i.ah = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !227

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader456
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader456 ], [ %i.ah, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader456 ], [ %i.ag, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader456 ], [ %i.ae, %.lr.ph.i.prol ]
  %i.ai = sub nsw i64 %.020.i.ph, %i.q
  %i.aj = icmp ugt i64 %i.ai, -8
  br i1 %i.aj, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.u, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.ak = shl nuw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0148214, i8 0, i64 %i.ak, i1 false), !tbaa !99
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.am = load double, ptr %.01218.i, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.am, ptr %.01019.i, align 8, !tbaa !99
  %i.ao = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.ap = load double, ptr %i.al, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.ap, ptr %i.an, align 8, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.as = load double, ptr %i.ao, align 8, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.as, ptr %i.aq, align 8, !tbaa !99
  %i.au = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.av = load double, ptr %i.ar, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.av, ptr %i.at, align 8, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.ay = load double, ptr %i.au, align 8, !tbaa !99
  %i.az = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.ay, ptr %i.aw, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !99
  %i.bc = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.bb, ptr %i.az, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.be = load double, ptr %i.ba, align 8, !tbaa !99
  %i.bf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.be, ptr %i.bc, align 8, !tbaa !99
  %i.bg = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bh = load double, ptr %i.bd, align 8, !tbaa !99
  %i.bi = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bh, ptr %i.bf, align 8, !tbaa !99
  %i.bj = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bj, %i.q
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !228

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.lr.ph, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.bk = getelementptr [8 x i8], ptr %.0148214, i64 %i.q ; 2 uses
  %i.bl = add nuw nsw i64 %.0146216, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !229

.preheader211.loopexit.unr-lcssa:                 ; preds = %.lr.ph222
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.preheader211, label %.lr.ph222.epil.preheader

.lr.ph222.epil.preheader:                         ; preds = %.preheader211.loopexit.unr-lcssa, %.lr.ph222.preheader
  %.1149220.epil.init = phi ptr [ %.1149218, %.lr.ph222.preheader ], [ %.1149.7, %.preheader211.loopexit.unr-lcssa ]
  %.0139219.epil.init = phi i64 [ 0, %.lr.ph222.preheader ], [ %i.ce, %.preheader211.loopexit.unr-lcssa ]
  %lcmp.mod463 = icmp ne i64 %xtraiter459, 0
  tail call void @llvm.assume(i1 %lcmp.mod463)
  br label %.lr.ph222.epil

.lr.ph222.epil:                                   ; preds = %.lr.ph222.epil, %.lr.ph222.epil.preheader
  %.1149220.epil = phi ptr [ %.1149.epil, %.lr.ph222.epil ], [ %.1149220.epil.init, %.lr.ph222.epil.preheader ] ; 3 uses
  %.0139219.epil = phi i64 [ %i.bn, %.lr.ph222.epil ], [ %.0139219.epil.init, %.lr.ph222.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph222.epil ], [ 0, %.lr.ph222.epil.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219.epil
  store ptr %.1149220.epil, ptr %i.bm, align 8, !tbaa !127
  %i.bn = add nuw nsw i64 %.0139219.epil, 1
  %.1149.epil = getelementptr inbounds [8 x i8], ptr %.1149220.epil, i64 %i.m ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter459
  br i1 %epil.iter.cmp.not, label %.preheader211, label %.lr.ph222.epil, !llvm.loop !230

.preheader211:                                    ; preds = %.preheader211.loopexit.unr-lcssa, %.lr.ph222.epil, %._crit_edge
  %.0148.pn.lcssa = phi ptr [ %.0148.lcssa, %._crit_edge ], [ %.1149.6, %.preheader211.loopexit.unr-lcssa ], [ %.1149220.epil, %.lr.ph222.epil ]
  %.1149.lcssa = phi ptr [ %.1149218, %._crit_edge ], [ %.1149.7, %.preheader211.loopexit.unr-lcssa ], [ %.1149.epil, %.lr.ph222.epil ] ; 5 uses
  %.1149.lcssa404 = ptrtoaddr ptr %.1149.lcssa to i64
  %i.bo = icmp sgt i64 %i.b, 0                    ; 2 uses
  br i1 %i.bo, label %.lr.ph227, label %.preheader210

.lr.ph222:                                        ; preds = %.lr.ph222, %.lr.ph222.preheader.new
  %.1149220 = phi ptr [ %.1149218, %.lr.ph222.preheader.new ], [ %.1149.7, %.lr.ph222 ] ; 2 uses
  %.0139219 = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %i.ce, %.lr.ph222 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %niter.next.7, %.lr.ph222 ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219
  store ptr %.1149220, ptr %i.bp, align 8, !tbaa !127
  %.1149 = getelementptr inbounds [8 x i8], ptr %.1149220, i64 %i.m ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.1149, ptr %i.br, align 8, !tbaa !127
  %.1149.1 = getelementptr inbounds [8 x i8], ptr %.1149, i64 %i.m ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %.1149.1, ptr %i.bt, align 8, !tbaa !127
  %.1149.2 = getelementptr inbounds [8 x i8], ptr %.1149.1, i64 %i.m ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %.1149.2, ptr %i.bv, align 8, !tbaa !127
  %.1149.3 = getelementptr inbounds [8 x i8], ptr %.1149.2, i64 %i.m ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %.1149.3, ptr %i.bx, align 8, !tbaa !127
  %.1149.4 = getelementptr inbounds [8 x i8], ptr %.1149.3, i64 %i.m ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store ptr %.1149.4, ptr %i.bz, align 8, !tbaa !127
  %.1149.5 = getelementptr inbounds [8 x i8], ptr %.1149.4, i64 %i.m ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store ptr %.1149.5, ptr %i.cb, align 8, !tbaa !127
  %.1149.6 = getelementptr inbounds [8 x i8], ptr %.1149.5, i64 %i.m ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0139219
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store ptr %.1149.6, ptr %i.cd, align 8, !tbaa !127
  %i.ce = add nuw nsw i64 %.0139219, 8            ; 2 uses
  %.1149.7 = getelementptr inbounds [8 x i8], ptr %.1149.6, i64 %i.m ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader211.loopexit.unr-lcssa, label %.lr.ph222, !llvm.loop !231

.preheader210:                                    ; preds = %.lr.ph227, %.preheader211
  %.2150.lcssa = phi ptr [ %.1149.lcssa, %.preheader211 ], [ %i.ch, %.lr.ph227 ]
  %.2150.lcssa.fr = freeze ptr %.2150.lcssa       ; 10 uses
  %.2150.lcssa.fr365 = ptrtoaddr ptr %.2150.lcssa.fr to i64 ; 2 uses
  br i1 %i.i, label %.lr.ph231, label %.preheader208

.lr.ph227:                                        ; preds = %.preheader211, %.lr.ph227
  %.0138226 = phi i64 [ %i.ci, %.lr.ph227 ], [ 0, %.preheader211 ] ; 3 uses
  %.2150225 = phi ptr [ %i.ch, %.lr.ph227 ], [ %.1149.lcssa, %.preheader211 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0138226
  store ptr %.2150225, ptr %i.cf, align 8, !tbaa !127
  %i.cg = tail call noundef i64 @_ZNK6casadi8Function6nnz_inEx(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.0138226)
  %i.ch = getelementptr inbounds [8 x i8], ptr %.2150225, i64 %i.cg ; 2 uses
  %i.ci = add nuw nsw i64 %.0138226, 1            ; 2 uses
  %exitcond279.not = icmp eq i64 %i.ci, %i.b
  br i1 %exitcond279.not, label %.preheader210, label %.lr.ph227, !llvm.loop !232

.preheader208:                                    ; preds = %.lr.ph231, %.preheader210
  %.3151.lcssa = phi ptr [ %.2150.lcssa.fr, %.preheader210 ], [ %i.ct, %.lr.ph231 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !84
  %.not160257 = icmp sgt i64 %i.ck, 0
  br i1 %.not160257, label %.lr.ph261, label %.critedge

.lr.ph261:                                        ; preds = %.preheader208
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.cn = icmp ne ptr %.0148.pn.lcssa, null       ; 2 uses
  %.not15.i177 = icmp eq ptr %.2150.lcssa.fr, null ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.not15.i188 = icmp eq ptr %.0148.lcssa, null
  br label %bb.c

.lr.ph231:                                        ; preds = %.preheader210, %.lr.ph231
  %.0137230 = phi i64 [ %i.cu, %.lr.ph231 ], [ 0, %.preheader210 ] ; 3 uses
  %.3151229 = phi ptr [ %i.ct, %.lr.ph231 ], [ %.2150.lcssa.fr, %.preheader210 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0137230
  store ptr %.3151229, ptr %i.cr, align 8, !tbaa !127
  %i.cs = tail call noundef i64 @_ZNK6casadi8Function7nnz_outEx(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.0137230)
  %i.ct = getelementptr inbounds [8 x i8], ptr %.3151229, i64 %i.cs ; 2 uses
  %i.cu = add nuw nsw i64 %.0137230, 1            ; 2 uses
  %exitcond280.not = icmp eq i64 %i.cu, %i.c
  br i1 %exitcond280.not, label %.preheader208, label %.lr.ph231, !llvm.loop !233

bb.c:                                             ; preds = %.lr.ph261, %._crit_edge256
  %.0136258 = phi i64 [ 0, %.lr.ph261 ], [ %i.nx, %._crit_edge256 ] ; 6 uses
  %i.cv = shl i64 %.0136258, 3
  %i.cw = add i64 %i.cv, 8
  %i.cx = shl i64 %.0136258, 3
  %i.cy = load i64, ptr %i.cm, align 8, !tbaa !102
  %.not249 = icmp slt i64 %i.cy, 0
  br i1 %.not249, label %.thread, label %.preheader207.preheader

.preheader207.preheader:                          ; preds = %bb.c
  %i.cz = load double, ptr %i.cl, align 8, !tbaa !100
  br label %.preheader207

.preheader207:                                    ; preds = %.preheader207.preheader, %bb.n
  %.0131252 = phi i64 [ %i.lm, %bb.n ], [ 0, %.preheader207.preheader ] ; 3 uses
  %.0132250 = phi double [ %i.ll, %bb.n ], [ %i.cz, %.preheader207.preheader ] ; 4 uses
  br i1 %i.o, label %.preheader.lr.ph, label %.critedge.thread

.preheader.lr.ph:                                 ; preds = %.preheader207
  br i1 %i.bo, label %.preheader.us, label %.preheader.lr.ph.split

.preheader.us:                                    ; preds = %.preheader.lr.ph, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit186.us
  %.0130238.us = phi i64 [ %i.is, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit186.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us
  %.0128234.us = phi i64 [ 0, %.preheader.us ], [ %i.gx, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us ] ; 4 uses
  %.0129233.us = phi i64 [ 0, %.preheader.us ], [ %i.gw, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us ] ; 4 uses
  %i.da = tail call noundef i64 @_ZNK6casadi8Function6nnz_inEx(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.0128234.us) ; 19 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0128234.us
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !127 ; 6 uses
  %i.dd = ptrtoaddr ptr %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %.1149.lcssa, i64 %.0129233.us ; 10 uses
  br i1 %i.cn, label %bb.e, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us

bb.e:                                             ; preds = %bb.d
  %.not15.i164.us = icmp eq ptr %i.dc, null
  %i.df = icmp sgt i64 %i.da, 0                   ; 2 uses
  br i1 %.not15.i164.us, label %.preheader.i171.us, label %.preheader16.i165.us

.preheader16.i165.us:                             ; preds = %bb.e
  br i1 %i.df, label %.lr.ph.i166.us.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us

.lr.ph.i166.us.preheader:                         ; preds = %.preheader16.i165.us
  %min.iters.check407 = icmp ult i64 %i.da, 6
  br i1 %min.iters.check407, label %.lr.ph.i166.us.preheader444, label %vector.memcheck403

vector.memcheck403:                               ; preds = %.lr.ph.i166.us.preheader
  %i.dg = shl i64 %.0129233.us, 3
  %i.dh = add i64 %i.dg, %.1149.lcssa404
  %i.di = sub i64 %i.dd, %i.dh
  %diff.check405 = icmp ugt i64 %i.di, -32
  br i1 %diff.check405, label %.lr.ph.i166.us.preheader444, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck403
  %n.vec409 = and i64 %i.da, 9223372036854775804  ; 4 uses
  %i.dj = shl i64 %n.vec409, 3                    ; 2 uses
  %i.dk = getelementptr i8, ptr %i.de, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dc, i64 %i.dj
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.dm = shl i64 %index411, 3                    ; 2 uses
  %next.gep412 = getelementptr i8, ptr %i.de, i64 %i.dm ; 2 uses
  %next.gep413 = getelementptr i8, ptr %i.dc, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep413, i64 16
  %wide.load414 = load <2 x double>, ptr %next.gep413, align 8, !tbaa !99
  %wide.load415 = load <2 x double>, ptr %i.dn, align 8, !tbaa !99
  %i.do = getelementptr i8, ptr %next.gep412, i64 16
  store <2 x double> %wide.load414, ptr %next.gep412, align 8, !tbaa !99
  store <2 x double> %wide.load415, ptr %i.do, align 8, !tbaa !99
  %index.next416 = add nuw i64 %index411, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.dp, label %middle.block417, label %vector.body410, !llvm.loop !234

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.da, %n.vec409
  br i1 %cmp.n418, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us, label %.lr.ph.i166.us.preheader444

.lr.ph.i166.us.preheader444:                      ; preds = %vector.memcheck403, %.lr.ph.i166.us.preheader, %middle.block417
  %.020.i167.us.ph = phi i64 [ 0, %vector.memcheck403 ], [ 0, %.lr.ph.i166.us.preheader ], [ %n.vec409, %middle.block417 ] ; 4 uses
  %.01019.i168.us.ph = phi ptr [ %i.de, %vector.memcheck403 ], [ %i.de, %.lr.ph.i166.us.preheader ], [ %i.dk, %middle.block417 ] ; 2 uses
  %.01218.i169.us.ph = phi ptr [ %i.dc, %vector.memcheck403 ], [ %i.dc, %.lr.ph.i166.us.preheader ], [ %i.dl, %middle.block417 ] ; 2 uses
  %i.dq = sub nsw i64 %i.da, %.020.i167.us.ph
  %xtraiter467 = and i64 %i.dq, 7                 ; 2 uses
  %lcmp.mod468.not = icmp eq i64 %xtraiter467, 0
  br i1 %lcmp.mod468.not, label %.lr.ph.i166.us.prol.loopexit, label %.lr.ph.i166.us.prol

.lr.ph.i166.us.prol:                              ; preds = %.lr.ph.i166.us.preheader444, %.lr.ph.i166.us.prol
  %.020.i167.us.prol = phi i64 [ %i.du, %.lr.ph.i166.us.prol ], [ %.020.i167.us.ph, %.lr.ph.i166.us.preheader444 ]
  %.01019.i168.us.prol = phi ptr [ %i.dt, %.lr.ph.i166.us.prol ], [ %.01019.i168.us.ph, %.lr.ph.i166.us.preheader444 ] ; 2 uses
  %.01218.i169.us.prol = phi ptr [ %i.dr, %.lr.ph.i166.us.prol ], [ %.01218.i169.us.ph, %.lr.ph.i166.us.preheader444 ] ; 2 uses
  %prol.iter469 = phi i64 [ %prol.iter469.next, %.lr.ph.i166.us.prol ], [ 0, %.lr.ph.i166.us.preheader444 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.01218.i169.us.prol, i64 8 ; 2 uses
  %i.ds = load double, ptr %.01218.i169.us.prol, align 8, !tbaa !99
  %i.dt = getelementptr inbounds nuw i8, ptr %.01019.i168.us.prol, i64 8 ; 2 uses
  store double %i.ds, ptr %.01019.i168.us.prol, align 8, !tbaa !99
  %i.du = add nuw nsw i64 %.020.i167.us.prol, 1   ; 2 uses
  %prol.iter469.next = add i64 %prol.iter469, 1   ; 2 uses
  %prol.iter469.cmp.not = icmp eq i64 %prol.iter469.next, %xtraiter467
  br i1 %prol.iter469.cmp.not, label %.lr.ph.i166.us.prol.loopexit, label %.lr.ph.i166.us.prol, !llvm.loop !235

.lr.ph.i166.us.prol.loopexit:                     ; preds = %.lr.ph.i166.us.prol, %.lr.ph.i166.us.preheader444
  %.020.i167.us.unr = phi i64 [ %.020.i167.us.ph, %.lr.ph.i166.us.preheader444 ], [ %i.du, %.lr.ph.i166.us.prol ]
  %.01019.i168.us.unr = phi ptr [ %.01019.i168.us.ph, %.lr.ph.i166.us.preheader444 ], [ %i.dt, %.lr.ph.i166.us.prol ]
  %.01218.i169.us.unr = phi ptr [ %.01218.i169.us.ph, %.lr.ph.i166.us.preheader444 ], [ %i.dr, %.lr.ph.i166.us.prol ]
  %i.dv = sub nsw i64 %.020.i167.us.ph, %i.da
  %i.dw = icmp ugt i64 %i.dv, -8
  br i1 %i.dw, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us, label %.lr.ph.i166.us

.lr.ph.i166.us:                                   ; preds = %.lr.ph.i166.us.prol.loopexit, %.lr.ph.i166.us
  %.020.i167.us = phi i64 [ %i.ev, %.lr.ph.i166.us ], [ %.020.i167.us.unr, %.lr.ph.i166.us.prol.loopexit ]
  %.01019.i168.us = phi ptr [ %i.eu, %.lr.ph.i166.us ], [ %.01019.i168.us.unr, %.lr.ph.i166.us.prol.loopexit ] ; 9 uses
  %.01218.i169.us = phi ptr [ %i.es, %.lr.ph.i166.us ], [ %.01218.i169.us.unr, %.lr.ph.i166.us.prol.loopexit ] ; 9 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.01218.i169.us, i64 8
  %i.dy = load double, ptr %.01218.i169.us, align 8, !tbaa !99
  %i.dz = getelementptr inbounds nuw i8, ptr %.01019.i168.us, i64 8
  store double %i.dy, ptr %.01019.i168.us, align 8, !tbaa !99
  %i.ea = getelementptr inbounds nuw i8, ptr %.01218.i169.us, i64 16
  %i.eb = load double, ptr %i.dx, align 8, !tbaa !99
  %i.ec = getelementptr inbounds nuw i8, ptr %.01019.i168.us, i64 16
  store double %i.eb, ptr %i.dz, align 8, !tbaa !99
  %i.ed = getelementptr inbounds nuw i8, ptr %.01218.i169.us, i64 24
  %i.ee = load double, ptr %i.ea, align 8, !tbaa !99
  %i.ef = getelementptr inbounds nuw i8, ptr %.01019.i168.us, i64 24
  store double %i.ee, ptr %i.ec, align 8, !tbaa !99
  %i.eg = getelementptr inbounds nuw i8, ptr %.01218.i169.us, i64 32
  %i.eh = load double, ptr %i.ed, align 8, !tbaa !99
  %i.ei = getelementptr inbounds nuw i8, ptr %.01019.i168.us, i64 32
  store double %i.eh, ptr %i.ef, align 8, !tbaa !99
  %i.ej = getelementptr inbounds nuw i8, ptr %.01218.i169.us, i64 40
  %i.ek = load double, ptr %i.eg, align 8, !tbaa !99
  %i.el = getelementptr inbounds nuw i8, ptr %.01019.i168.us, i64 40
  store double %i.ek, ptr %i.ei, align 8, !tbaa !99
  %i.em = getelementptr inbounds nuw i8, ptr %.01218.i169.us, i64 48
  %i.en = load double, ptr %i.ej, align 8, !tbaa !99
  %i.eo = getelementptr inbounds nuw i8, ptr %.01019.i168.us, i64 48
  store double %i.en, ptr %i.el, align 8, !tbaa !99
  %i.ep = getelementptr inbounds nuw i8, ptr %.01218.i169.us, i64 56
  %i.eq = load double, ptr %i.em, align 8, !tbaa !99
  %i.er = getelementptr inbounds nuw i8, ptr %.01019.i168.us, i64 56
  store double %i.eq, ptr %i.eo, align 8, !tbaa !99
  %i.es = getelementptr inbounds nuw i8, ptr %.01218.i169.us, i64 64
  %i.et = load double, ptr %i.ep, align 8, !tbaa !99
  %i.eu = getelementptr inbounds nuw i8, ptr %.01019.i168.us, i64 64
  store double %i.et, ptr %i.er, align 8, !tbaa !99
  %i.ev = add nuw nsw i64 %.020.i167.us, 8        ; 2 uses
  %exitcond.not.i170.us.7 = icmp eq i64 %i.ev, %i.da
  br i1 %exitcond.not.i170.us.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us, label %.lr.ph.i166.us, !llvm.loop !236

.preheader.i171.us:                               ; preds = %bb.e
  br i1 %i.df, label %.lr.ph23.preheader.i172.us, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us

.lr.ph23.preheader.i172.us:                       ; preds = %.preheader.i171.us
  %i.ew = shl nuw i64 %i.da, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.de, i8 0, i64 %i.ew, i1 false), !tbaa !99
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us: ; preds = %.lr.ph.i166.us.prol.loopexit, %.lr.ph.i166.us, %middle.block417, %.lr.ph23.preheader.i172.us, %.preheader.i171.us, %.preheader16.i165.us, %bb.d
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.0147.lcssa, i64 %.0128234.us ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !127
  %.not162.us = icmp eq ptr %i.ey, null
  br i1 %.not162.us, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us, label %bb.f

bb.f:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us
  %i.ez = load ptr, ptr %0, align 8, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 944
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = tail call noundef double %i.fb(ptr noundef nonnull align 8 dereferenceable(1400) %0, i64 noundef %.0130238.us, double noundef %.0132250) ; 6 uses
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !127 ; 3 uses
  %i.fe = icmp ne ptr %i.fd, null
  %6 = icmp sgt i64 %i.da, 0
  %7 = and i1 %i.fe, %6
  %or.cond15.i.us = and i1 %7, %i.cn
  br i1 %or.cond15.i.us, label %.lr.ph.i174.us.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us

.lr.ph.i174.us.preheader:                         ; preds = %bb.f
  %i.ff = mul i64 %i.da, %.0136258
  %i.fg = getelementptr [8 x i8], ptr %i.fd, i64 %i.ff ; 5 uses
  %min.iters.check386 = icmp ult i64 %i.da, 6
  br i1 %min.iters.check386, label %.lr.ph.i174.us.preheader443, label %vector.memcheck383

vector.memcheck383:                               ; preds = %.lr.ph.i174.us.preheader
  %i.fh = add i64 %i.da, %.0129233.us
  %i.fi = shl i64 %i.fh, 3
  %scevgep = getelementptr i8, ptr %.1149.lcssa, i64 %i.fi
  %i.fj = mul i64 %i.cw, %i.da
  %scevgep384 = getelementptr i8, ptr %i.fd, i64 %i.fj
  %bound0 = icmp ult ptr %i.de, %scevgep384
  %bound1 = icmp ult ptr %i.fg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i174.us.preheader443, label %vector.ph387

vector.ph387:                                     ; preds = %vector.memcheck383
  %n.vec388 = and i64 %i.da, 9223372036854775804  ; 4 uses
  %i.fk = shl i64 %n.vec388, 3                    ; 2 uses
  %i.fl = getelementptr i8, ptr %i.de, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fg, i64 %i.fk
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body389

vector.body389:                                   ; preds = %vector.body389, %vector.ph387
  %index390 = phi i64 [ 0, %vector.ph387 ], [ %index.next397, %vector.body389 ] ; 2 uses
  %i.fn = shl i64 %index390, 3                    ; 2 uses
  %next.gep391 = getelementptr i8, ptr %i.de, i64 %i.fn ; 3 uses
  %next.gep392 = getelementptr i8, ptr %i.fg, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep392, i64 16
  %wide.load393 = load <2 x double>, ptr %next.gep392, align 8, !tbaa !99, !alias.scope !258
  %wide.load394 = load <2 x double>, ptr %i.fo, align 8, !tbaa !99, !alias.scope !258
  %i.fp = getelementptr i8, ptr %next.gep391, i64 16 ; 2 uses
  %wide.load395 = load <2 x double>, ptr %next.gep391, align 8, !tbaa !99, !alias.scope !259, !noalias !258
  %wide.load396 = load <2 x double>, ptr %i.fp, align 8, !tbaa !99, !alias.scope !259, !noalias !258
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load393, <2 x double> %wide.load395)
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load394, <2 x double> %wide.load396)
  store <2 x double> %i.fq, ptr %next.gep391, align 8, !tbaa !99, !alias.scope !259, !noalias !258
  store <2 x double> %i.fr, ptr %i.fp, align 8, !tbaa !99, !alias.scope !259, !noalias !258
  %index.next397 = add nuw i64 %index390, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next397, %n.vec388
  br i1 %i.fs, label %middle.block398, label %vector.body389, !llvm.loop !240

middle.block398:                                  ; preds = %vector.body389
  %cmp.n399 = icmp eq i64 %i.da, %n.vec388
  br i1 %cmp.n399, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us, label %.lr.ph.i174.us.preheader443

.lr.ph.i174.us.preheader443:                      ; preds = %vector.memcheck383, %.lr.ph.i174.us.preheader, %middle.block398
  %.014.i.us.ph = phi i64 [ 0, %vector.memcheck383 ], [ 0, %.lr.ph.i174.us.preheader ], [ %n.vec388, %middle.block398 ] ; 3 uses
  %.0813.i.us.ph = phi ptr [ %i.de, %vector.memcheck383 ], [ %i.de, %.lr.ph.i174.us.preheader ], [ %i.fl, %middle.block398 ] ; 2 uses
  %.0912.i.us.ph = phi ptr [ %i.fg, %vector.memcheck383 ], [ %i.fg, %.lr.ph.i174.us.preheader ], [ %i.fm, %middle.block398 ] ; 2 uses
  %xtraiter470 = and i64 %i.da, 3                 ; 2 uses
  %lcmp.mod471.not = icmp eq i64 %xtraiter470, 0
  br i1 %lcmp.mod471.not, label %.lr.ph.i174.us.prol.loopexit, label %.lr.ph.i174.us.prol

.lr.ph.i174.us.prol:                              ; preds = %.lr.ph.i174.us.preheader443, %.lr.ph.i174.us.prol
  %.014.i.us.prol = phi i64 [ %i.fy, %.lr.ph.i174.us.prol ], [ %.014.i.us.ph, %.lr.ph.i174.us.preheader443 ]
  %.0813.i.us.prol = phi ptr [ %i.fv, %.lr.ph.i174.us.prol ], [ %.0813.i.us.ph, %.lr.ph.i174.us.preheader443 ] ; 3 uses
  %.0912.i.us.prol = phi ptr [ %i.ft, %.lr.ph.i174.us.prol ], [ %.0912.i.us.ph, %.lr.ph.i174.us.preheader443 ] ; 2 uses
  %prol.iter472 = phi i64 [ %prol.iter472.next, %.lr.ph.i174.us.prol ], [ 0, %.lr.ph.i174.us.preheader443 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.0912.i.us.prol, i64 8 ; 2 uses
  %i.fu = load double, ptr %.0912.i.us.prol, align 8, !tbaa !99
  %i.fv = getelementptr inbounds nuw i8, ptr %.0813.i.us.prol, i64 8 ; 2 uses
  %i.fw = load double, ptr %.0813.i.us.prol, align 8, !tbaa !99
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fu, double %i.fw)
  store double %i.fx, ptr %.0813.i.us.prol, align 8, !tbaa !99
  %i.fy = add nuw nsw i64 %.014.i.us.prol, 1      ; 2 uses
  %prol.iter472.next = add i64 %prol.iter472, 1   ; 2 uses
  %prol.iter472.cmp.not = icmp eq i64 %prol.iter472.next, %xtraiter470
  br i1 %prol.iter472.cmp.not, label %.lr.ph.i174.us.prol.loopexit, label %.lr.ph.i174.us.prol, !llvm.loop !241

.lr.ph.i174.us.prol.loopexit:                     ; preds = %.lr.ph.i174.us.prol, %.lr.ph.i174.us.preheader443
  %.014.i.us.unr = phi i64 [ %.014.i.us.ph, %.lr.ph.i174.us.preheader443 ], [ %i.fy, %.lr.ph.i174.us.prol ]
  %.0813.i.us.unr = phi ptr [ %.0813.i.us.ph, %.lr.ph.i174.us.preheader443 ], [ %i.fv, %.lr.ph.i174.us.prol ]
  %.0912.i.us.unr = phi ptr [ %.0912.i.us.ph, %.lr.ph.i174.us.preheader443 ], [ %i.ft, %.lr.ph.i174.us.prol ]
  %i.fz = sub nsw i64 %.014.i.us.ph, %i.da
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us, label %.lr.ph.i174.us

.lr.ph.i174.us:                                   ; preds = %.lr.ph.i174.us.prol.loopexit, %.lr.ph.i174.us
  %.014.i.us = phi i64 [ %i.gv, %.lr.ph.i174.us ], [ %.014.i.us.unr, %.lr.ph.i174.us.prol.loopexit ]
  %.0813.i.us = phi ptr [ %i.gs, %.lr.ph.i174.us ], [ %.0813.i.us.unr, %.lr.ph.i174.us.prol.loopexit ] ; 6 uses
  %.0912.i.us = phi ptr [ %i.gq, %.lr.ph.i174.us ], [ %.0912.i.us.unr, %.lr.ph.i174.us.prol.loopexit ] ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0912.i.us, i64 8
  %i.gc = load double, ptr %.0912.i.us, align 8, !tbaa !99
  %i.gd = getelementptr inbounds nuw i8, ptr %.0813.i.us, i64 8 ; 2 uses
  %i.ge = load double, ptr %.0813.i.us, align 8, !tbaa !99
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.gc, double %i.ge)
  store double %i.gf, ptr %.0813.i.us, align 8, !tbaa !99
  %i.gg = getelementptr inbounds nuw i8, ptr %.0912.i.us, i64 16
  %i.gh = load double, ptr %i.gb, align 8, !tbaa !99
  %i.gi = getelementptr inbounds nuw i8, ptr %.0813.i.us, i64 16 ; 2 uses
  %i.gj = load double, ptr %i.gd, align 8, !tbaa !99
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.gh, double %i.gj)
  store double %i.gk, ptr %i.gd, align 8, !tbaa !99
  %i.gl = getelementptr inbounds nuw i8, ptr %.0912.i.us, i64 24
  %i.gm = load double, ptr %i.gg, align 8, !tbaa !99
  %i.gn = getelementptr inbounds nuw i8, ptr %.0813.i.us, i64 24 ; 2 uses
  %i.go = load double, ptr %i.gi, align 8, !tbaa !99
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.gm, double %i.go)
  store double %i.gp, ptr %i.gi, align 8, !tbaa !99
  %i.gq = getelementptr inbounds nuw i8, ptr %.0912.i.us, i64 32
  %i.gr = load double, ptr %i.gl, align 8, !tbaa !99
  %i.gs = getelementptr inbounds nuw i8, ptr %.0813.i.us, i64 32
  %i.gt = load double, ptr %i.gn, align 8, !tbaa !99
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.gr, double %i.gt)
  store double %i.gu, ptr %i.gn, align 8, !tbaa !99
  %i.gv = add nuw nsw i64 %.014.i.us, 4           ; 2 uses
  %exitcond.not.i175.us.3 = icmp eq i64 %i.gv, %i.da
  br i1 %exitcond.not.i175.us.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us, label %.lr.ph.i174.us, !llvm.loop !242

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us: ; preds = %.lr.ph.i174.us.prol.loopexit, %.lr.ph.i174.us, %middle.block398, %bb.f, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit173.us
  %i.gw = add nsw i64 %i.da, %.0129233.us
  %i.gx = add nuw nsw i64 %.0128234.us, 1         ; 2 uses
  %exitcond283.not = icmp eq i64 %i.gx, %i.b
  br i1 %exitcond283.not, label %._crit_edge236.us, label %bb.d, !llvm.loop !243

bb.g:                                             ; preds = %._crit_edge236.us
  %i.gy = load i64, ptr %i.l, align 8, !tbaa !105 ; 8 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0130238.us
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !127 ; 6 uses
  %i.hb = ptrtoaddr ptr %i.ha to i64
  %.not.i176.us = icmp eq ptr %i.ha, null
  br i1 %.not.i176.us, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit186.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hc = icmp sgt i64 %i.gy, 0                   ; 2 uses
  br i1 %.not15.i177, label %.preheader.i184.us, label %.preheader16.i178.us

.preheader16.i178.us:                             ; preds = %bb.h
  br i1 %i.hc, label %.lr.ph.i179.us.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit186.us

.lr.ph.i179.us.preheader:                         ; preds = %.preheader16.i178.us
  %min.iters.check368 = icmp ult i64 %i.gy, 4
  %i.hd = sub i64 %.2150.lcssa.fr365, %i.hb
  %diff.check366 = icmp ugt i64 %i.hd, -32
  %or.cond441 = or i1 %min.iters.check368, %diff.check366
  br i1 %or.cond441, label %.lr.ph.i179.us.preheader445, label %vector.ph369

vector.ph369:                                     ; preds = %.lr.ph.i179.us.preheader
  %n.vec370 = and i64 %i.gy, 9223372036854775804  ; 4 uses
  %i.he = shl i64 %n.vec370, 3                    ; 2 uses
  %i.hf = getelementptr i8, ptr %i.ha, i64 %i.he
  %i.hg = getelementptr i8, ptr %.2150.lcssa.fr, i64 %i.he
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.hh = shl i64 %index372, 3                    ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.ha, i64 %i.hh ; 2 uses
  %next.gep374 = getelementptr i8, ptr %.2150.lcssa.fr, i64 %i.hh ; 2 uses
  %i.hi = getelementptr i8, ptr %next.gep374, i64 16
  %wide.load375 = load <2 x double>, ptr %next.gep374, align 8, !tbaa !99
  %wide.load376 = load <2 x double>, ptr %i.hi, align 8, !tbaa !99
  %i.hj = getelementptr i8, ptr %next.gep373, i64 16
  store <2 x double> %wide.load375, ptr %next.gep373, align 8, !tbaa !99
  store <2 x double> %wide.load376, ptr %i.hj, align 8, !tbaa !99
  %index.next377 = add nuw i64 %index372, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next377, %n.vec370
  br i1 %i.hk, label %middle.block378, label %vector.body371, !llvm.loop !244

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.gy, %n.vec370
  br i1 %cmp.n379, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit186.us, label %.lr.ph.i179.us.preheader445

.lr.ph.i179.us.preheader445:                      ; preds = %.lr.ph.i179.us.preheader, %middle.block378
  %.020.i180.us.ph = phi i64 [ 0, %.lr.ph.i179.us.preheader ], [ %n.vec370, %middle.block378 ] ; 4 uses
  %.01019.i181.us.ph = phi ptr [ %i.ha, %.lr.ph.i179.us.preheader ], [ %i.hf, %middle.block378 ] ; 2 uses
  %.01218.i182.us.ph = phi ptr [ %.2150.lcssa.fr, %.lr.ph.i179.us.preheader ], [ %i.hg, %middle.block378 ] ; 2 uses
  %i.hl = sub nsw i64 %i.gy, %.020.i180.us.ph
  %xtraiter473 = and i64 %i.hl, 7                 ; 2 uses
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %.lr.ph.i179.us.prol.loopexit, label %.lr.ph.i179.us.prol

.lr.ph.i179.us.prol:                              ; preds = %.lr.ph.i179.us.preheader445, %.lr.ph.i179.us.prol
  %.020.i180.us.prol = phi i64 [ %i.hp, %.lr.ph.i179.us.prol ], [ %.020.i180.us.ph, %.lr.ph.i179.us.preheader445 ]
  %.01019.i181.us.prol = phi ptr [ %i.ho, %.lr.ph.i179.us.prol ], [ %.01019.i181.us.ph, %.lr.ph.i179.us.preheader445 ] ; 2 uses
  %.01218.i182.us.prol = phi ptr [ %i.hm, %.lr.ph.i179.us.prol ], [ %.01218.i182.us.ph, %.lr.ph.i179.us.preheader445 ] ; 2 uses
  %prol.iter475 = phi i64 [ %prol.iter475.next, %.lr.ph.i179.us.prol ], [ 0, %.lr.ph.i179.us.preheader445 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.01218.i182.us.prol, i64 8 ; 2 uses
  %i.hn = load double, ptr %.01218.i182.us.prol, align 8, !tbaa !99
  %i.ho = getelementptr inbounds nuw i8, ptr %.01019.i181.us.prol, i64 8 ; 2 uses
  store double %i.hn, ptr %.01019.i181.us.prol, align 8, !tbaa !99
  %i.hp = add nuw nsw i64 %.020.i180.us.prol, 1   ; 2 uses
  %prol.iter475.next = add i64 %prol.iter475, 1   ; 2 uses
  %prol.iter475.cmp.not = icmp eq i64 %prol.iter475.next, %xtraiter473
  br i1 %prol.iter475.cmp.not, label %.lr.ph.i179.us.prol.loopexit, label %.lr.ph.i179.us.prol, !llvm.loop !245

.lr.ph.i179.us.prol.loopexit:                     ; preds = %.lr.ph.i179.us.prol, %.lr.ph.i179.us.preheader445
  %.020.i180.us.unr = phi i64 [ %.020.i180.us.ph, %.lr.ph.i179.us.preheader445 ], [ %i.hp, %.lr.ph.i179.us.prol ]
  %.01019.i181.us.unr = phi ptr [ %.01019.i181.us.ph, %.lr.ph.i179.us.preheader445 ], [ %i.ho, %.lr.ph.i179.us.prol ]
  %.01218.i182.us.unr = phi ptr [ %.01218.i182.us.ph, %.lr.ph.i179.us.preheader445 ], [ %i.hm, %.lr.ph.i179.us.prol ]
  %i.hq = sub nsw i64 %.020.i180.us.ph, %i.gy
  %i.hr = icmp ugt i64 %i.hq, -8
  br i1 %i.hr, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit186.us, label %.lr.ph.i179.us

end_hunk_0
