inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.1408880.us
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !9
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !47
  %i.jl = call noundef float @sqrtf(float noundef %i.jk) #24 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1408880.us ; 2 uses
  store float %i.jl, ptr %i.jm, align 4, !tbaa !52
  %i.jn = trunc nuw i8 %.0379881.us to i1
  br i1 %i.jn, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.1.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us:    ; preds = %.lr.ph882.split.us.peel.next
  %i.jo = getelementptr i8, ptr %i.jm, i64 -4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !52
  %i.jq = fcmp une float %i.jl, %i.jp
  %i.jr = add nuw nsw i64 %.1408880.us, 1         ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !9
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !47
  %i.jx = call noundef float @sqrtf(float noundef %i.jw) #24 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.jr ; 2 uses
  store float %i.jx, ptr %i.jy, align 4, !tbaa !52
  br i1 %i.jq, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.1

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.1:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us
  %i.jz = getelementptr i8, ptr %i.jy, i64 -4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !52
  %i.kb = fcmp une float %i.jx, %i.ka
  %i.kc = add nuw nsw i64 %.1408880.us, 2         ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !9
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.kf
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !47
  %i.ki = call noundef float @sqrtf(float noundef %i.kh) #24 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kc ; 2 uses
  store float %i.ki, ptr %i.kj, align 4, !tbaa !52
  br i1 %i.kb, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.1.critedge: ; preds = %.lr.ph882.split.us.peel.next
  %i.kk = add nuw nsw i64 %.1408880.us, 1         ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !9
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.kn
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !47
  %i.kq = call noundef float @sqrtf(float noundef %i.kp) #24
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kk
  store float %i.kq, ptr %i.kr, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2.critedge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.1
  %i.ks = getelementptr i8, ptr %i.kj, i64 -4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !52
  %i.ku = fcmp une float %i.ki, %i.kt
  %i.kv = add nuw nsw i64 %.1408880.us, 3         ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !9
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !47
  %i.lb = call noundef float @sqrtf(float noundef %i.la) #24 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kv ; 2 uses
  store float %i.lb, ptr %i.lc, align 4, !tbaa !52
  br i1 %i.ku, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3, label %bb.aj

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.1.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us
  %i.ld = add nuw nsw i64 %.1408880.us, 2         ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !9
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !47
  %i.lj = call noundef float @sqrtf(float noundef %i.li) #24
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ld
  store float %i.lj, ptr %i.lk, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3.critedge

bb.aj:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2
  %i.ll = getelementptr i8, ptr %i.lc, i64 -4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !52
  %i.ln = fcmp une float %i.lb, %i.lm
  %i.lo = zext i1 %i.ln to i8
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.1
  %i.lp = add nuw nsw i64 %.1408880.us, 3         ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !9
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ls
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !47
  %i.lv = call noundef float @sqrtf(float noundef %i.lu) #24
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.lp
  store float %i.lv, ptr %i.lw, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3.critedge, %bb.aj, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2
  %.1380.us.3 = phi i8 [ %i.lo, %bb.aj ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.2 ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3.critedge ] ; 3 uses
  %i.lx = add nuw nsw i64 %.1408880.us, 4         ; 2 uses
  %niter1628.next.3 = add i64 %niter1628, 4       ; 2 uses
  %niter1628.ncmp.3 = icmp eq i64 %niter1628.next.3, %unroll_iter1627
  br i1 %niter1628.ncmp.3, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit.unr-lcssa, label %.lr.ph882.split.us.peel.next, !llvm.loop !63

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530:       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.preheader1619, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530
  %.1408880 = phi i64 [ %i.lz, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530 ], [ %.1408880.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.preheader1619 ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1408880
  store float 1.000000e+00, ptr %i.ly, align 4, !tbaa !52
  %i.lz = add nuw nsw i64 %.1408880, 1            ; 2 uses
  %exitcond997.not = icmp eq i64 %i.lz, %i.ij
  br i1 %exitcond997.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530, !llvm.loop !64

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit.unr-lcssa: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.3
  %lcmp.mod1624.not = icmp eq i64 %xtraiter1622, 0
  br i1 %lcmp.mod1624.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit, label %.lr.ph882.split.us.peel.next.epil.preheader

.lr.ph882.split.us.peel.next.epil.preheader:      ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit.unr-lcssa, %.lr.ph882.split.us.peel.next.preheader
  %.0379881.us.epil.init = phi i8 [ 0, %.lr.ph882.split.us.peel.next.preheader ], [ %.1380.us.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit.unr-lcssa ]
  %.1408880.us.epil.init = phi i64 [ 1, %.lr.ph882.split.us.peel.next.preheader ], [ %i.lx, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1626 = icmp ne i64 %xtraiter1622, 0
  call void @llvm.assume(i1 %lcmp.mod1626)
  br label %.lr.ph882.split.us.peel.next.epil

.lr.ph882.split.us.peel.next.epil:                ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil, %.lr.ph882.split.us.peel.next.epil.preheader
  %.0379881.us.epil = phi i8 [ %.1380.us.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil ], [ %.0379881.us.epil.init, %.lr.ph882.split.us.peel.next.epil.preheader ]
  %.1408880.us.epil = phi i64 [ %i.mm, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil ], [ %.1408880.us.epil.init, %.lr.ph882.split.us.peel.next.epil.preheader ] ; 3 uses
  %epil.iter1623 = phi i64 [ %epil.iter1623.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil ], [ 0, %.lr.ph882.split.us.peel.next.epil.preheader ]
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.1408880.us.epil
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !9
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !47
  %i.mf = call noundef float @sqrtf(float noundef %i.me) #24 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1408880.us.epil ; 2 uses
  store float %i.mf, ptr %i.mg, align 4, !tbaa !52
  %i.mh = trunc nuw i8 %.0379881.us.epil to i1
  br i1 %i.mh, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph882.split.us.peel.next.epil
  %i.mi = getelementptr i8, ptr %i.mg, i64 -4
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !52
  %i.mk = fcmp une float %i.mf, %i.mj
  %i.ml = zext i1 %i.mk to i8
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil: ; preds = %bb.ak, %.lr.ph882.split.us.peel.next.epil
  %.1380.us.epil = phi i8 [ %i.ml, %bb.ak ], [ 1, %.lr.ph882.split.us.peel.next.epil ] ; 2 uses
  %i.mm = add nuw nsw i64 %.1408880.us.epil, 1
  %epil.iter1623.next = add i64 %epil.iter1623, 1 ; 2 uses
  %epil.iter1623.cmp.not = icmp eq i64 %epil.iter1623.next, %xtraiter1622
  br i1 %epil.iter1623.cmp.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit, label %.lr.ph882.split.us.peel.next.epil, !llvm.loop !65

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit.unr-lcssa
  %.1380.us.lcssa = phi i8 [ %.1380.us.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit.unr-lcssa ], [ %.1380.us.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.epil ]
  %i.mn = trunc nuw i8 %.1380.us.lcssa to i1
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530, %middle.block, %vec.epilog.middle.block, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.peel, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.preheader
  %.0379.lcssa = phi i1 [ false, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.preheader ], [ %i.mn, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge.loopexit.loopexit ], [ false, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530.us.peel ], [ false, %middle.block ], [ false, %vec.epilog.middle.block ], [ false, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530 ] ; 2 uses
  %i.mo = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !30, !range !32, !noundef !33
  %i.mp = trunc nuw i8 %i.mo to i1
  %i.mq = trunc nuw i8 %.2383 to i1
  %or.cond = select i1 %i.mp, i1 %i.mq, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = select i1 %or.cond.not, i1 true, i1 %.0379.lcssa
  br i1 %or.cond3, label %.loopexit863, label %bb.al

bb.al:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge
  %i.mr = load i32, ptr %i.w, align 4, !tbaa !9
  %i.ms = icmp ne i32 %i.ii, %i.mr                ; 2 uses
  %i.mt = icmp slt i32 %i.ii, 1
  %.not454889 = select i1 %i.mt, i1 true, i1 %i.ms
  br i1 %.not454889, label %._crit_edge, label %.lr.ph891

.lr.ph891:                                        ; preds = %bb.al
  %i.mu = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.mv = load ptr, ptr %i.y, align 8, !tbaa !34
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph891, %bb.am
  %.2409890 = phi i64 [ 0, %.lr.ph891 ], [ %i.nb, %bb.am ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %.2409890
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !9
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.2409890
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !9
  %i.na = icmp ne i32 %i.mx, %i.mz                ; 2 uses
  %i.nb = add nuw nsw i64 %.2409890, 1            ; 2 uses
  %i.nc = icmp sge i64 %i.nb, %i.ij
  %.not454 = select i1 %i.nc, i1 true, i1 %i.na
  br i1 %.not454, label %._crit_edge, label %bb.am, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.am, %bb.al
  %.3384.in.lcssa888 = phi i1 [ %i.ms, %bb.al ], [ %i.na, %bb.am ]
  br i1 %.3384.in.lcssa888, label %.loopexit863, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.nd = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.ne = call i64 @fwrite(ptr nonnull @.str.56, i64 152, i64 1, ptr %i.nd) #27 ; 0 uses
  %i.nf = load i32, ptr %i.w, align 4, !tbaa !9   ; 5 uses
  %42 = sext i32 %i.nf to i64                     ; 5 uses
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %iter.check1312, label %.loopexit863

iter.check1312:                                   ; preds = %bb.an
  %i.nh = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %min.iters.check1295 = icmp ult i32 %i.nf, 4
  br i1 %min.iters.check1295, label %vec.epilog.scalar.ph1313.preheader, label %vector.main.loop.iter.check1296

vector.main.loop.iter.check1296:                  ; preds = %iter.check1312
  %min.iters.check1297 = icmp ult i32 %i.nf, 32
  br i1 %min.iters.check1297, label %vec.epilog.ph1316, label %vector.ph1298

vector.ph1298:                                    ; preds = %vector.main.loop.iter.check1296
  %n.vec1299 = and i64 %42, 2147483616            ; 4 uses
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1308, %vector.body1300 ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index1301 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 32
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 96
  %wide.load = load <8 x i32>, ptr %i.ni, align 4, !tbaa !9
  %wide.load1302 = load <8 x i32>, ptr %i.nj, align 4, !tbaa !9
  %wide.load1303 = load <8 x i32>, ptr %i.nk, align 4, !tbaa !9
  %wide.load1304 = load <8 x i32>, ptr %i.nl, align 4, !tbaa !9
  %i.nm = sext <8 x i32> %wide.load to <8 x i64>
  %i.nn = sext <8 x i32> %wide.load1302 to <8 x i64>
  %i.no = sext <8 x i32> %wide.load1303 to <8 x i64>
  %i.np = sext <8 x i32> %wide.load1304 to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %.0837, <8 x i64> %i.nm
  %wide.gep1305 = getelementptr inbounds [4 x i8], ptr %.0837, <8 x i64> %i.nn
  %wide.gep1306 = getelementptr inbounds [4 x i8], ptr %.0837, <8 x i64> %i.no
  %wide.gep1307 = getelementptr inbounds [4 x i8], ptr %.0837, <8 x i64> %i.np
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1305, <8 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1306, <8 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1307, <8 x i1> splat (i1 true)), !tbaa !52
  %index.next1308 = add nuw i64 %index1301, 32    ; 2 uses
  %i.nq = icmp eq i64 %index.next1308, %n.vec1299
  br i1 %i.nq, label %middle.block1309, label %vector.body1300, !llvm.loop !69

middle.block1309:                                 ; preds = %vector.body1300
  %cmp.n1310 = icmp eq i64 %n.vec1299, %42
  br i1 %cmp.n1310, label %.loopexit863, label %vec.epilog.iter.check1314

vec.epilog.iter.check1314:                        ; preds = %middle.block1309
  %43 = and i32 %i.nf, 28
  %min.epilog.iters.check1315 = icmp eq i32 %43, 0
  br i1 %min.epilog.iters.check1315, label %vec.epilog.scalar.ph1313.preheader, label %vec.epilog.ph1316, !prof !61

vec.epilog.ph1316:                                ; preds = %vector.main.loop.iter.check1296, %vec.epilog.iter.check1314
  %vec.epilog.resume.val1311 = phi i64 [ %n.vec1299, %vec.epilog.iter.check1314 ], [ 0, %vector.main.loop.iter.check1296 ]
  %n.vec1317 = and i64 %42, 2147483644            ; 3 uses
  br label %vec.epilog.vector.body1318

vec.epilog.vector.body1318:                       ; preds = %vec.epilog.vector.body1318, %vec.epilog.ph1316
  %index1319 = phi i64 [ %vec.epilog.resume.val1311, %vec.epilog.ph1316 ], [ %index.next1322, %vec.epilog.vector.body1318 ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index1319
  %wide.load1320 = load <4 x i32>, ptr %i.nr, align 4, !tbaa !9
  %i.ns = sext <4 x i32> %wide.load1320 to <4 x i64>
  %wide.gep1321 = getelementptr inbounds [4 x i8], ptr %.0837, <4 x i64> %i.ns
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> splat (float 1.000000e+00), <4 x ptr> align 4 %wide.gep1321, <4 x i1> splat (i1 true)), !tbaa !52
  %index.next1322 = add nuw i64 %index1319, 4     ; 2 uses
  %i.nt = icmp eq i64 %index.next1322, %n.vec1317
  br i1 %i.nt, label %vec.epilog.middle.block1323, label %vec.epilog.vector.body1318, !llvm.loop !70

vec.epilog.middle.block1323:                      ; preds = %vec.epilog.vector.body1318
  %cmp.n1324 = icmp eq i64 %n.vec1317, %42
  br i1 %cmp.n1324, label %.loopexit863, label %vec.epilog.scalar.ph1313.preheader

vec.epilog.scalar.ph1313.preheader:               ; preds = %iter.check1312, %vec.epilog.iter.check1314, %vec.epilog.middle.block1323
  %.3410894.ph = phi i64 [ 0, %iter.check1312 ], [ %n.vec1299, %vec.epilog.iter.check1314 ], [ %n.vec1317, %vec.epilog.middle.block1323 ]
  br label %vec.epilog.scalar.ph1313

vec.epilog.scalar.ph1313:                         ; preds = %vec.epilog.scalar.ph1313.preheader, %vec.epilog.scalar.ph1313
  %.3410894 = phi i64 [ %i.ny, %vec.epilog.scalar.ph1313 ], [ %.3410894.ph, %vec.epilog.scalar.ph1313.preheader ] ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.3410894
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !9
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %.0837, i64 %i.nw
  store float 1.000000e+00, ptr %i.nx, align 4, !tbaa !52
  %i.ny = add nuw nsw i64 %.3410894, 1            ; 2 uses
  %exitcond1000.not = icmp eq i64 %i.ny, %42
  br i1 %exitcond1000.not, label %.loopexit863, label %vec.epilog.scalar.ph1313, !llvm.loop !71

.loopexit863:                                     ; preds = %vec.epilog.scalar.ph1313, %middle.block1309, %vec.epilog.middle.block1323, %bb.an, %._crit_edge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge
  %.4385 = phi i8 [ %.2383, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit530._crit_edge ], [ 1, %._crit_edge ], [ 0, %bb.an ], [ 0, %middle.block1309 ], [ 0, %vec.epilog.middle.block1323 ], [ 0, %vec.epilog.scalar.ph1313 ]
  %i.nz = load i8, ptr @_ZZ9gmx_covariPPcE4bPBC, align 1, !tbaa !30, !range !32, !noundef !33
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.ao, label %bb.az

bb.ao:                                            ; preds = %.loopexit863
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oc = load i32, ptr %i.f, align 4, !tbaa !72
  %i.od = load i32, ptr %i.cp, align 8, !tbaa !36
  %i.oe = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.ob, i32 noundef %i.oc, i32 noundef %i.od)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.of = load i32, ptr %i.f, align 4, !tbaa !72
  %i.og = invoke noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef %i.of, ptr noundef nonnull %i.i)
          to label %bb.aq unwind label %bb.au     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %.not = icmp eq ptr %i.og, null
  br i1 %.not, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(65) @.str.50, i8 noundef zeroext 2)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 304, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.og) #26
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ap
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.ar
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn507 = phi { ptr, i32 } [ %i.oj, %bb.aw ], [ %i.oi, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.loopexit.split-lp

bb.ay:                                            ; preds = %bb.aq
  %i.ok = load i32, ptr %i.cp, align 8, !tbaa !36
  %i.ol = load ptr, ptr %i.h, align 8, !tbaa !74
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.oe, i32 noundef %i.ok, ptr noundef nonnull %i.i, ptr noundef %i.ol)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay, %.loopexit863
  %.0378 = phi ptr [ %i.oe, %bb.ay ], [ null, %.loopexit863 ] ; 3 uses
  %i.om = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !30, !range !32, !noundef !33
  %i.on = trunc nuw i8 %i.om to i1
  br i1 %i.on, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.oo = load i32, ptr %i.w, align 4, !tbaa !9
  %i.op = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.oq = load i32, ptr %i.cp, align 8, !tbaa !36
  %i.or = load ptr, ptr %i.h, align 8, !tbaa !74
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.oo, ptr noundef %i.op, i32 noundef %i.oq, ptr noundef null, ptr noundef %i.or, ptr noundef %.0837)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.os = load i32, ptr %i.l, align 4, !tbaa !9
  %i.ot = sext i32 %i.os to i64
  %i.ou = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50, i32 noundef 313, i64 noundef range(i64 -2147483648, 2147483648) %i.ot, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 25 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %bb.bb
  %i.ov = load i32, ptr %i.l, align 4, !tbaa !9
  %i.ow = sext i32 %i.ov to i64
  %i.ox = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.50, i32 noundef 314, i64 noundef range(i64 -2147483648, 2147483648) %i.ow, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit533 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit533:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit
  %i.oy = load i32, ptr %i.l, align 4, !tbaa !9   ; 4 uses
  %i.oz = mul nsw i32 %i.oy, 3                    ; 24 uses
  %i.pa = sext i32 %i.oz to i64                   ; 51 uses
  %i.pb = mul nsw i64 %i.pa, %i.pa                ; 4 uses
  %i.pc = icmp samesign ugt i64 %i.pb, 2147483647
  br i1 %i.pc, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit533
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(65) @.str.50, i8 noundef zeroext 2)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 319, ptr noundef nonnull @.str.60) #26
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn505 = phi { ptr, i32 } [ %i.pe, %bb.bg ], [ %i.pd, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.loopexit.split-lp

bb.bi:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit533
  %i.pf = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.50, i32 noundef 321, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.pb, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit535 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 45 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit535:       ; preds = %bb.bi
  %i.pg = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.ph = call i64 @fwrite(ptr nonnull @.str.62, i64 38, i64 1, ptr %i.pg) #27 ; 0 uses
  %i.pi = load ptr, ptr %i.z, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef zeroext 2)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit535
  %i.pj = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.pi, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i)
          to label %bb.bk unwind label %bb.bo     ; 7 uses

bb.bk:                                            ; preds = %bb.bj
  %i.pk = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i536 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i.i536, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i537, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, ptr noundef nonnull %i.pl) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i537

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i537: ; preds = %bb.bl, %bb.bk
  %i.pm = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i538: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i537
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !29
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit540

_ZNSt10filesystem7__cxx114pathD2Ev.exit540:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i537, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i538
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.pr = load i32, ptr %i.cp, align 8, !tbaa !36 ; 2 uses
  %.not457 = icmp eq i32 %i.pj, %i.pr
  br i1 %.not457, label %._crit_edge.i.i541, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit540
  %i.ps = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.pt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ps, ptr noundef nonnull @.str.63, i32 noundef %i.pr, i32 noundef %i.pj) #28 ; 0 uses
  br label %._crit_edge.i.i541

bb.bn:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit535
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  %i.pv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #24
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn455 = phi { ptr, i32 } [ %i.pv, %bb.bo ], [ %i.pu, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.loopexit.split-lp

._crit_edge.i.i541:                               ; preds = %bb.bm, %_ZNSt10filesystem7__cxx114pathD2Ev.exit540
  %i.pw = load ptr, ptr %i.y, align 8, !tbaa !34  ; 2 uses
  %i.px = load i32, ptr %i.w, align 4, !tbaa !9
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.py
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.qa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.qa, ptr %12, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.qa, ptr noundef nonnull align 1 dereferenceable(7) @.str.49, i64 7, i1 false)
  %i.qb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 7, ptr %i.qb, align 8, !tbaa !45
  %i.qc = getelementptr inbounds nuw i8, ptr %12, i64 23
  store i8 0, ptr %i.qc, align 1, !tbaa !29
  invoke fastcc void @_ZN3gmx12_GLOBAL__N_128throwErrorIfIndexOutOfBoundsENS_8ArrayRefIKiEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.pw, ptr %i.pz, i32 noundef %i.pj, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bq unwind label %bb.by

bb.bq:                                            ; preds = %._crit_edge.i.i541
  %i.qd = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.qa
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %bb.bq
  %i.qf = load i64, ptr %i.qa, align 8, !tbaa !29
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.qh = load ptr, ptr %i.x, align 8, !tbaa !34  ; 2 uses
  %i.qi = load i32, ptr %i.l, align 4, !tbaa !9
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.qj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ql = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.ql, ptr %13, align 8, !tbaa !44
  store i64 8316305152262893153, ptr %i.ql, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 8, ptr %i.qm, align 8, !tbaa !45
  %i.qn = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 0, ptr %i.qn, align 8, !tbaa !29
  invoke fastcc void @_ZN3gmx12_GLOBAL__N_128throwErrorIfIndexOutOfBoundsENS_8ArrayRefIKiEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.qh, ptr %i.qk, i32 noundef %i.pj, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
  %i.qo = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.ql
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552: ; preds = %bb.br
  %i.qq = load i64, ptr %i.ql, align 8, !tbaa !29
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554
  %.0437 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554 ], [ %i.qs, %bb.ck ] ; 2 uses
  %i.qs = add nuw nsw i32 %.0437, 1               ; 2 uses
  %i.qt = load i8, ptr @_ZZ9gmx_covariPPcE4bPBC, align 1, !tbaa !30, !range !32, !noundef !33
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.bt, label %bb.cf

bb.bt:                                            ; preds = %bb.bs
  %i.qv = load i32, ptr %i.f, align 4, !tbaa !72
  %i.qw = invoke noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef %i.qv, ptr noundef nonnull %i.i)
          to label %bb.bu unwind label %bb.ca     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %.not462 = icmp eq ptr %i.qw, null
  br i1 %.not462, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(65) @.str.50, i8 noundef zeroext 2)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 345, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.qw) #26
          to label %bb.bx unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  unreachable

bb.by:                                            ; preds = %._crit_edge.i.i541
  %i.qx = landingpad { ptr, i32 }
          cleanup
  %i.qy = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.qa
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i555

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i555: ; preds = %bb.by
  %i.ra = load i64, ptr %i.qa, align 8, !tbaa !29
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i555
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.loopexit.split-lp

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
  %i.rc = landingpad { ptr, i32 }
          cleanup
  %i.rd = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.ql
  br i1 %i.re, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i558

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i558: ; preds = %bb.bz
  %i.rf = load i64, ptr %i.ql, align 8, !tbaa !29
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i558
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bt
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bv
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bw
  %i.rj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #24
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn502 = phi { ptr, i32 } [ %i.rj, %bb.cc ], [ %i.ri, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.loopexit.split-lp

bb.ce:                                            ; preds = %bb.bu
  %i.rk = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %.0378, i32 noundef %i.pj, ptr noundef nonnull %i.i, ptr noundef %i.rk)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cf:                                            ; preds = %bb.ce, %bb.bs
  %i.rl = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !30, !range !32, !noundef !33
  %i.rm = trunc nuw i8 %i.rl to i1
  br i1 %i.rm, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.rn = load i32, ptr %i.w, align 4, !tbaa !9
  %i.ro = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.rp = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.rn, ptr noundef %i.ro, i32 noundef %i.pj, ptr noundef null, ptr noundef %i.rp, ptr noundef %.0837)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ch:                                            ; preds = %bb.cg
  %i.rq = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.rr = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.pj, ptr noundef %.0837, ptr noundef %i.rq, ptr noundef %i.rr)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %i.rs = load i32, ptr %i.l, align 4, !tbaa !9   ; 5 uses
  %i.rt = icmp sgt i32 %i.rs, 0
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !74  ; 4 uses
  br i1 %i.rt, label %.lr.ph899, label %._crit_edge900

.lr.ph899:                                        ; preds = %bb.ci
  %i.ru = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %i.rv = icmp eq i32 %i.rs, 1
  br i1 %i.rv, label %.epil.preheader, label %.lr.ph899.new

.lr.ph899.new:                                    ; preds = %.lr.ph899
  %44 = and i32 %i.rs, 2147483646
  %unroll_iter1633 = zext nneg i32 %44 to i64
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph899.new
  %.4411897 = phi i64 [ 0, %.lr.ph899.new ], [ %i.sx, %bb.cj ] ; 4 uses
  %niter1634 = phi i64 [ 0, %.lr.ph899.new ], [ %niter1634.next.1, %bb.cj ]
  %i.rw = getelementptr inbounds nuw [12 x i8], ptr %i.ox, i64 %.4411897 ; 3 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.4411897
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !9
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.rz ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rw, i64 8 ; 2 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !52
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.se = load float, ptr %i.sd, align 4, !tbaa !52
  %i.sf = fadd float %i.sc, %i.se
  %i.sg = load <2 x float>, ptr %i.rw, align 4, !tbaa !52
  %i.sh = load <2 x float>, ptr %i.sa, align 4, !tbaa !52
  %i.si = fadd <2 x float> %i.sg, %i.sh
  store <2 x float> %i.si, ptr %i.rw, align 4, !tbaa !52
  store float %i.sf, ptr %i.sb, align 4, !tbaa !52
  %i.sj = or disjoint i64 %.4411897, 1            ; 2 uses
  %i.sk = getelementptr inbounds nuw [12 x i8], ptr %i.ox, i64 %i.sj ; 3 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.sj
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !9
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.sn ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 2 uses
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !52
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !52
  %i.st = fadd float %i.sq, %i.ss
  %i.su = load <2 x float>, ptr %i.sk, align 4, !tbaa !52
  %i.sv = load <2 x float>, ptr %i.so, align 4, !tbaa !52
  %i.sw = fadd <2 x float> %i.su, %i.sv
  store <2 x float> %i.sw, ptr %i.sk, align 4, !tbaa !52
  store float %i.st, ptr %i.sp, align 4, !tbaa !52
  %i.sx = add nuw nsw i64 %.4411897, 2            ; 2 uses
  %niter1634.next.1 = add i64 %niter1634, 2       ; 2 uses
  %niter1634.ncmp.1 = icmp eq i64 %niter1634.next.1, %unroll_iter1633
  br i1 %niter1634.ncmp.1, label %._crit_edge900.loopexit.unr-lcssa, label %bb.cj, !llvm.loop !78

._crit_edge900.loopexit.unr-lcssa:                ; preds = %bb.cj
  %45 = and i32 %i.rs, 1
  %lcmp.mod1631.not = icmp eq i32 %45, 0
  br i1 %lcmp.mod1631.not, label %._crit_edge900, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge900.loopexit.unr-lcssa, %.lr.ph899
  %.4411897.epil.init = phi i64 [ 0, %.lr.ph899 ], [ %i.sx, %._crit_edge900.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1632 = trunc i32 %i.rs to i1
  call void @llvm.assume(i1 %lcmp.mod1632)
  %i.sy = getelementptr inbounds nuw [12 x i8], ptr %i.ox, i64 %.4411897.epil.init ; 3 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.4411897.epil.init
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !9
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.tb ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 8 ; 2 uses
  %i.te = load float, ptr %i.td, align 4, !tbaa !52
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !52
  %i.th = fadd float %i.te, %i.tg
  %i.ti = load <2 x float>, ptr %i.sy, align 4, !tbaa !52
  %i.tj = load <2 x float>, ptr %i.tc, align 4, !tbaa !52
  %i.tk = fadd <2 x float> %i.ti, %i.tj
  store <2 x float> %i.tk, ptr %i.sy, align 4, !tbaa !52
  store float %i.th, ptr %i.td, align 4, !tbaa !52
  br label %._crit_edge900

._crit_edge900:                                   ; preds = %.epil.preheader, %._crit_edge900.loopexit.unr-lcssa, %bb.ci
  %i.tl = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.tm = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.tn = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.tl, ptr noundef %i.tm, ptr noundef nonnull %i.k, ptr noundef %.pre, ptr noundef nonnull %i.i)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ck:                                            ; preds = %._crit_edge900
  br i1 %i.tn, label %bb.bs, label %bb.cl, !llvm.loop !81

bb.cl:                                            ; preds = %bb.ck
  %i.to = load ptr, ptr %i.e, align 8, !tbaa !79
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.to)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl
  %i.tp = uitofp nneg i32 %i.qs to double
  %i.tq = fdiv nnan double 1.000000e+00, %i.tp
  %i.tr = fptrunc nnan double %i.tq to float      ; 9 uses
  %i.ts = load i32, ptr %i.l, align 4, !tbaa !9   ; 5 uses
  %i.tt = icmp sgt i32 %i.ts, 0
  br i1 %i.tt, label %.preheader859.lr.ph, label %._crit_edge903

.preheader859.lr.ph:                              ; preds = %bb.cm
  %i.tu = load ptr, ptr %i.g, align 8, !tbaa !74  ; 3 uses
  %i.tv = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %i.tw = icmp eq i32 %i.ts, 1
  br i1 %i.tw, label %.preheader859.epil.preheader, label %.preheader859.lr.ph.new

.preheader859.lr.ph.new:                          ; preds = %.preheader859.lr.ph
  %46 = and i32 %i.ts, 2147483646
  %unroll_iter1639 = zext nneg i32 %46 to i64
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859, %.preheader859.lr.ph.new
  %.5412902 = phi i64 [ 0, %.preheader859.lr.ph.new ], [ %i.vc, %.preheader859 ] ; 4 uses
  %niter1640 = phi i64 [ 0, %.preheader859.lr.ph.new ], [ %niter1640.next.1, %.preheader859 ]
  %i.tx = getelementptr inbounds nuw [12 x i8], ptr %i.ox, i64 %.5412902 ; 4 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.5412902
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !9
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [12 x i8], ptr %i.tu, i64 %i.ua ; 3 uses
  %i.uc = load float, ptr %i.tx, align 4, !tbaa !52
  %i.ud = fmul float %i.uc, %i.tr                 ; 2 uses
  store float %i.ud, ptr %i.tx, align 4, !tbaa !52
  store float %i.ud, ptr %i.ub, align 4, !tbaa !52
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 4 ; 2 uses
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !52
  %i.ug = fmul float %i.uf, %i.tr                 ; 2 uses
  store float %i.ug, ptr %i.ue, align 4, !tbaa !52
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  store float %i.ug, ptr %i.uh, align 4, !tbaa !52
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tx, i64 8 ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !52
  %i.uk = fmul float %i.uj, %i.tr                 ; 2 uses
  store float %i.uk, ptr %i.ui, align 4, !tbaa !52
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store float %i.uk, ptr %i.ul, align 4, !tbaa !52
  %i.um = or disjoint i64 %.5412902, 1            ; 2 uses
  %i.un = getelementptr inbounds nuw [12 x i8], ptr %i.ox, i64 %i.um ; 4 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.um
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !9
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [12 x i8], ptr %i.tu, i64 %i.uq ; 3 uses
  %i.us = load float, ptr %i.un, align 4, !tbaa !52
  %i.ut = fmul float %i.us, %i.tr                 ; 2 uses
  store float %i.ut, ptr %i.un, align 4, !tbaa !52
  store float %i.ut, ptr %i.ur, align 4, !tbaa !52
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 4 ; 2 uses
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !52
  %i.uw = fmul float %i.uv, %i.tr                 ; 2 uses
  store float %i.uw, ptr %i.uu, align 4, !tbaa !52
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  store float %i.uw, ptr %i.ux, align 4, !tbaa !52
  %i.uy = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 2 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !52
  %i.va = fmul float %i.uz, %i.tr                 ; 2 uses
  store float %i.va, ptr %i.uy, align 4, !tbaa !52
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store float %i.va, ptr %i.vb, align 4, !tbaa !52
  %i.vc = add nuw nsw i64 %.5412902, 2            ; 2 uses
  %niter1640.next.1 = add i64 %niter1640, 2       ; 2 uses
  %niter1640.ncmp.1 = icmp eq i64 %niter1640.next.1, %unroll_iter1639
  br i1 %niter1640.ncmp.1, label %._crit_edge903.loopexit.unr-lcssa, label %.preheader859, !llvm.loop !82

._crit_edge903.loopexit.unr-lcssa:                ; preds = %.preheader859
  %47 = and i32 %i.ts, 1
  %lcmp.mod1637.not = icmp eq i32 %47, 0
  br i1 %lcmp.mod1637.not, label %._crit_edge903, label %.preheader859.epil.preheader

.preheader859.epil.preheader:                     ; preds = %._crit_edge903.loopexit.unr-lcssa, %.preheader859.lr.ph
  %.5412902.epil.init = phi i64 [ 0, %.preheader859.lr.ph ], [ %i.vc, %._crit_edge903.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1638 = trunc i32 %i.ts to i1
  call void @llvm.assume(i1 %lcmp.mod1638)
  %i.vd = getelementptr inbounds nuw [12 x i8], ptr %i.ox, i64 %.5412902.epil.init ; 4 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.5412902.epil.init
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !9
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [12 x i8], ptr %i.tu, i64 %i.vg ; 3 uses
  %i.vi = load float, ptr %i.vd, align 4, !tbaa !52
  %i.vj = fmul float %i.vi, %i.tr                 ; 2 uses
  store float %i.vj, ptr %i.vd, align 4, !tbaa !52
  store float %i.vj, ptr %i.vh, align 4, !tbaa !52
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vd, i64 4 ; 2 uses
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !52
  %i.vm = fmul float %i.vl, %i.tr                 ; 2 uses
  store float %i.vm, ptr %i.vk, align 4, !tbaa !52
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  store float %i.vm, ptr %i.vn, align 4, !tbaa !52
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 2 uses
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !52
  %i.vq = fmul float %i.vp, %i.tr                 ; 2 uses
  store float %i.vq, ptr %i.vo, align 4, !tbaa !52
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store float %i.vq, ptr %i.vr, align 4, !tbaa !52
  br label %._crit_edge903

._crit_edge903:                                   ; preds = %.preheader859.epil.preheader, %._crit_edge903.loopexit.unr-lcssa, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #24
  %i.vs = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.41, i32 noundef 10, ptr noundef nonnull %4)
          to label %bb.cn unwind label %bb.cw

bb.cn:                                            ; preds = %._crit_edge903
  store ptr %i.vs, ptr %i.aa, align 8, !tbaa !23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i8 noundef zeroext 2)
          to label %bb.co unwind label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.vt = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.vu = load i32, ptr %i.l, align 4, !tbaa !9
  %i.vv = load ptr, ptr %i.x, align 8, !tbaa !34
  invoke void @_Z22write_sto_conf_indexedRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_iPi(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.cp, ptr noundef %i.vt, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.j, i32 noundef %i.vu, ptr noundef %i.vv)
          to label %bb.cp unwind label %bb.cx

bb.cp:                                            ; preds = %bb.co
  %i.vw = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i561 = icmp eq ptr %i.vx, null
  br i1 %.not.i.i.i561, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i562, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.vw, ptr noundef nonnull %i.vx) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i562

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i562: ; preds = %bb.cq, %bb.cp
  %i.vy = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.wa = icmp eq ptr %i.vy, %i.vz
  br i1 %i.wa, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit565, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i563: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i562
  %i.wb = load i64, ptr %i.vz, align 8, !tbaa !29
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wc) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit565

_ZNSt10filesystem7__cxx114pathD2Ev.exit565:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i562, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.wd = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.50, i32 noundef 372, ptr noundef %i.wd)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit:        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit565
  %i.we = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.wf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.we, ptr noundef nonnull @.str.66, i32 noundef %i.oz, i32 noundef %i.oz) #28 ; 0 uses
  %i.wg = load ptr, ptr %i.z, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef zeroext 2)
          to label %bb.cr unwind label %bb.cz

bb.cr:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit
  %i.wh = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.wg, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i)
          to label %bb.cs unwind label %bb.da     ; 3 uses

bb.cs:                                            ; preds = %bb.cr
  %i.wi = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i567 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.i567, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i568, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.wi, ptr noundef nonnull %i.wj) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i568

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i568: ; preds = %bb.ct, %bb.cs
  %i.wk = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.wm = icmp eq ptr %i.wk, %i.wl
  br i1 %i.wm, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit571, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i569: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i568
  %i.wn = load i64, ptr %i.wl, align 8, !tbaa !29
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wk, i64 noundef %i.wo) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit571

_ZNSt10filesystem7__cxx114pathD2Ev.exit571:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i568, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i569
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.wp = load float, ptr %i.k, align 4, !tbaa !52
  %i.wq = shl nsw i64 %i.pa, 3                    ; 4 uses
  %i.wr = mul nsw i64 %i.pa, 12
  %i.ws = add nsw i64 %i.wr, 12                   ; 6 uses
  %i.wt = shl nsw i64 %i.pa, 2                    ; 4 uses
  %i.wu = getelementptr i8, ptr %i.pf, i64 %i.wt
  %i.wv = getelementptr i8, ptr %i.pf, i64 %i.wt
  %i.ww = getelementptr i8, ptr %i.wv, i64 12
  %i.wx = getelementptr i8, ptr %i.pf, i64 %i.wq
  %i.wy = getelementptr i8, ptr %i.pf, i64 %i.wq
  %i.wz = getelementptr i8, ptr %i.wy, i64 12
  br label %bb.cu

bb.cu:                                            ; preds = %bb.dj, %_ZNSt10filesystem7__cxx114pathD2Ev.exit571
  %.0436 = phi i32 [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit571 ], [ %i.xa, %bb.dj ] ; 4 uses
  %i.xa = add nuw nsw i32 %.0436, 1               ; 4 uses
  %i.xb = load float, ptr %i.k, align 4, !tbaa !52
  %i.xc = load i8, ptr @_ZZ9gmx_covariPPcE4bPBC, align 1, !tbaa !30, !range !32, !noundef !33
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %bb.cv, label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  %i.xe = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %.0378, i32 noundef %i.wh, ptr noundef nonnull %i.i, ptr noundef %i.xe)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cw:                                            ; preds = %bb.cn, %._crit_edge903
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.co
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #24
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pn463 = phi { ptr, i32 } [ %i.xg, %bb.cx ], [ %i.xf, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.loopexit.split-lp

bb.cz:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.cr
  %i.xi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #24
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn465 = phi { ptr, i32 } [ %i.xi, %bb.da ], [ %i.xh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %.loopexit.split-lp

bb.dc:                                            ; preds = %bb.cv, %bb.cu
  %i.xj = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !30, !range !32, !noundef !33
  %i.xk = trunc nuw i8 %i.xj to i1
  br i1 %i.xk, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.xl = load i32, ptr %i.w, align 4, !tbaa !9
  %i.xm = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.xn = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.xl, ptr noundef %i.xm, i32 noundef %i.wh, ptr noundef null, ptr noundef %i.xn, ptr noundef %.0837)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.de:                                            ; preds = %bb.dd
  %i.xo = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.xp = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.wh, ptr noundef %.0837, ptr noundef %i.xo, ptr noundef %i.xp)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.df:                                            ; preds = %bb.de, %bb.dc
  %i.xq = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.xr = trunc nuw i8 %i.xq to i1
  %i.xs = load i32, ptr %i.l, align 4, !tbaa !9   ; 8 uses
  %i.xt = sext i32 %i.xs to i64                   ; 11 uses
  %i.xu = icmp sgt i32 %i.xs, 0                   ; 2 uses
  br i1 %i.xr, label %.preheader853, label %.preheader855

.preheader855:                                    ; preds = %bb.df
  br i1 %i.xu, label %.lr.ph905, label %._crit_edge913

end_hunk_0
begin_hunk_1_@_Z9gmx_covariPPc:bb.a
  call void @llvm.assume(i1 %lcmp.mod1698)
  br label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil:   ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil.preheader
  %.0392965.epil = phi float [ %i.bhr, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil ], [ %.0392965.epil.init, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil.preheader ]
  %.20427964.epil = phi i64 [ %i.bhs, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil ], [ %.20427964.epil.init, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil.preheader ] ; 2 uses
  %epil.iter1695 = phi i64 [ %epil.iter1695.next, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil ], [ 0, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil.preheader ]
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bfz, i64 %.20427964.epil
  %i.bhq = load float, ptr %i.bhp, align 4, !tbaa !52
  %i.bhr = fadd float %.0392965.epil, %i.bhq      ; 2 uses
  %i.bhs = add nuw nsw i64 %.20427964.epil, 1
  %epil.iter1695.next = add i64 %epil.iter1695, 1 ; 2 uses
  %epil.iter1695.cmp.not = icmp eq i64 %epil.iter1695.next, %xtraiter1694
  br i1 %epil.iter1695.cmp.not, label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691._crit_edge, label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil, !llvm.loop !164

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691._crit_edge: ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691._crit_edge.loopexit.unr-lcssa, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.preheader
  %.0392.lcssa = phi float [ 0.000000e+00, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.preheader ], [ %i.bhl, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691._crit_edge.loopexit.unr-lcssa ], [ %i.bhr, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691.epil ] ; 2 uses
  %i.bht = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.bhu = fpext float %.0392.lcssa to double     ; 2 uses
  %i.bhv = load i8, ptr @_ZZ9gmx_covariPPcE2bM, align 1, !tbaa !30, !range !32, !noundef !33
  %i.bhw = trunc nuw i8 %i.bhv to i1
  %i.bhx = select i1 %i.bhw, ptr @.str.70, ptr @.str.71
  %i.bhy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bht, ptr noundef nonnull @.str.85, double noundef %i.bhu, ptr noundef nonnull %i.bhx) #28 ; 0 uses
  %i.bhz = fsub float %.0393.lcssa, %.0392.lcssa
  %i.bia = call noundef float @llvm.fabs.f32(float %i.bhz)
  %i.bib = fpext float %i.bia to double
  %i.bic = fmul double %i.atw, 1.000000e-02
  %i.bid = fcmp olt double %i.bic, %i.bib
  br i1 %i.bid, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691._crit_edge
  %i.bie = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.bif = call i64 @fwrite(ptr nonnull @.str.86, i64 74, i64 1, ptr %i.bie) #27 ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit691._crit_edge
  %i.big = load i32, ptr @_ZZ9gmx_covariPPcE3end, align 4, !tbaa !9
  %i.bih = icmp eq i32 %i.big, -1
  br i1 %i.bih, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %i.bii = icmp slt i32 %.0436, %i.oz
  br i1 %i.bii, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 %.0436, ptr @_ZZ9gmx_covariPPcE3end, align 4, !tbaa !9
  %i.bij = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.bik = call i64 @fwrite(ptr nonnull @.str.87, i64 67, i64 1, ptr %i.bij) #27 ; 0 uses
  %i.bil = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.bim = call i64 @fwrite(ptr nonnull @.str.88, i64 61, i64 1, ptr %i.bil) #27 ; 0 uses
  %i.bin = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.bio = load i32, ptr @_ZZ9gmx_covariPPcE3end, align 4, !tbaa !9
  %i.bip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bin, ptr noundef nonnull @.str.89, i32 noundef %i.bio, i32 noundef %i.oz) #28 ; 0 uses
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  store i32 %i.oz, ptr @_ZZ9gmx_covariPPcE3end, align 4, !tbaa !9
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.ff
  %i.biq = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.bir = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.bis = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.biq, ptr noundef nonnull @.str.90, ptr noundef %i.bir) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  %i.bit = load i8, ptr @_ZZ9gmx_covariPPcE2bM, align 1, !tbaa !30, !range !32, !noundef !33
  %i.biu = trunc nuw i8 %i.bit to i1
  %i.biv = select i1 %i.biu, ptr @.str.70, ptr @.str.71
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.biv)
          to label %bb.fk unwind label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef zeroext 2)
          to label %.noexc.i693 unwind label %bb.fo

.noexc.i693:                                      ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  %i.biw = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.biw, ptr %36, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 17, ptr %i.b, align 8, !tbaa !165
  %i.bix = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc694 unwind label %bb.fp ; 2 uses

.noexc694:                                        ; preds = %.noexc.i693
  store ptr %i.bix, ptr %36, align 8, !tbaa !26
  %i.biy = load i64, ptr %i.b, align 8, !tbaa !165 ; 3 uses
  store i64 %i.biy, ptr %i.biw, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bix, ptr noundef nonnull align 1 dereferenceable(17) @.str.93, i64 17, i1 false)
  %i.biz = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.biy, ptr %i.biz, align 8, !tbaa !45
  %i.bja = load ptr, ptr %36, align 8, !tbaa !26
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 %i.biy
  store i8 0, ptr %i.bjb, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bjc = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.bjd = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull @.str.92, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.bjc)
          to label %bb.fl unwind label %bb.fq     ; 2 uses

bb.fl:                                            ; preds = %.noexc694
  %i.bje = load ptr, ptr %36, align 8, !tbaa !26  ; 2 uses
  %i.bjf = icmp eq ptr %i.bje, %i.biw
  br i1 %i.bjf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696: ; preds = %bb.fl
  %i.bjg = load i64, ptr %i.biw, align 8, !tbaa !29
  %i.bjh = add i64 %i.bjg, 1
  call void @_ZdlPvm(ptr noundef %i.bje, i64 noundef %i.bjh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %i.bji = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 2 uses
  %i.bjj = load ptr, ptr %i.bji, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i699 = icmp eq ptr %i.bjj, null
  br i1 %.not.i.i.i699, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i700, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bji, ptr noundef nonnull %i.bjj) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i700

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i700: ; preds = %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698
  %i.bjk = load ptr, ptr %35, align 8, !tbaa !26  ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.bjm = icmp eq ptr %i.bjk, %i.bjl
  br i1 %i.bjm, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit703, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i701

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i701: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i700
  %i.bjn = load i64, ptr %i.bjl, align 8, !tbaa !29
  %i.bjo = add i64 %i.bjn, 1
  call void @_ZdlPvm(ptr noundef %i.bjk, i64 noundef %i.bjo) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit703

_ZNSt10filesystem7__cxx114pathD2Ev.exit703:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i700, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i701
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %invariant.gep968 = getelementptr [4 x i8], ptr %i.bfz, i64 %i.pa
  %i.bjp = load i32, ptr @_ZZ9gmx_covariPPcE3end, align 4, !tbaa !9
  %i.bjq = icmp sgt i32 %i.bjp, 0
  br i1 %i.bjq, label %.lr.ph971, label %._crit_edge972

.lr.ph971:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit703, %.lr.ph971
  %.21428970 = phi i64 [ %i.bjr, %.lr.ph971 ], [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit703 ] ; 2 uses
  %i.bjr = add nuw nsw i64 %.21428970, 1          ; 3 uses
  %i.bjs = trunc i64 %i.bjr to i32
  %i.bjt = xor i64 %.21428970, -1
  %gep969 = getelementptr [4 x i8], ptr %invariant.gep968, i64 %i.bjt
  %i.bju = load float, ptr %gep969, align 4, !tbaa !52
  %i.bjv = fpext float %i.bju to double
  %i.bjw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bjd, ptr noundef nonnull @.str.94, i32 noundef %i.bjs, double noundef %i.bjv) #24 ; 0 uses
  %i.bjx = load i32, ptr @_ZZ9gmx_covariPPcE3end, align 4, !tbaa !9
  %i.bjy = sext i32 %i.bjx to i64
  %i.bjz = icmp slt i64 %i.bjr, %i.bjy
  br i1 %i.bjz, label %.lr.ph971, label %._crit_edge972, !llvm.loop !166

bb.fn:                                            ; preds = %bb.fj
  %i.bka = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734

bb.fo:                                            ; preds = %bb.fk
  %i.bkb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fp:                                            ; preds = %.noexc.i693
  %i.bkc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706

bb.fq:                                            ; preds = %.noexc694
  %i.bkd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bke = load ptr, ptr %36, align 8, !tbaa !26  ; 2 uses
  %i.bkf = icmp eq ptr %i.bke, %i.biw
  br i1 %i.bkf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704: ; preds = %bb.fq
  %i.bkg = load i64, ptr %i.biw, align 8, !tbaa !29
  %i.bkh = add i64 %i.bkg, 1
  call void @_ZdlPvm(ptr noundef %i.bke, i64 noundef %i.bkh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704, %bb.fp
  %.pn486 = phi { ptr, i32 } [ %i.bkc, %bb.fp ], [ %i.bkd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i704 ], [ %i.bkd, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %35) #24
  br label %bb.fr

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706, %bb.fo
  %.pn486.pn = phi { ptr, i32 } [ %.pn486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706 ], [ %i.bkb, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %bb.hh

._crit_edge972:                                   ; preds = %.lr.ph971, %_ZNSt10filesystem7__cxx114pathD2Ev.exit703
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.bjd)
          to label %bb.fs unwind label %bb.fv

bb.fs:                                            ; preds = %._crit_edge972
  %i.bki = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !30, !range !32, !noundef !33
  %i.bkj = trunc nuw i8 %i.bki to i1
  %.pre1051 = load i32, ptr %i.l, align 4, !tbaa !9 ; 7 uses
  br i1 %i.bkj, label %bb.ft, label %.loopexit

bb.ft:                                            ; preds = %bb.fs
  %i.bkk = load i32, ptr %i.w, align 4, !tbaa !9
  %i.bkl = icmp eq i32 %i.bkk, %.pre1051
  br i1 %i.bkl, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ft
  %48 = sext i32 %.pre1051 to i64                 ; 2 uses
  %i.bkm = icmp sgt i32 %.pre1051, 0
  br i1 %i.bkm, label %.lr.ph974, label %.loopexit

.lr.ph974:                                        ; preds = %.preheader
  %i.bkn = load ptr, ptr %i.h, align 8, !tbaa !74 ; 5 uses
  %i.bko = load ptr, ptr %i.y, align 8, !tbaa !34 ; 5 uses
  %xtraiter1702 = and i64 %48, 3
  %i.bkp = icmp ult i32 %.pre1051, 4
  br i1 %i.bkp, label %.epil.preheader1701, label %.lr.ph974.new

.lr.ph974.new:                                    ; preds = %.lr.ph974
  %unroll_iter1706 = and i64 %48, 2147483644
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fu, %.lr.ph974.new
  %.22429973 = phi i64 [ 0, %.lr.ph974.new ], [ %i.bmp, %bb.fu ] ; 6 uses
  %niter1707 = phi i64 [ 0, %.lr.ph974.new ], [ %niter1707.next.3, %bb.fu ]
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %i.bko, i64 %.22429973
  %i.bkr = load i32, ptr %i.bkq, align 4, !tbaa !9
  %i.bks = sext i32 %i.bkr to i64
  %i.bkt = getelementptr inbounds [12 x i8], ptr %i.bkn, i64 %i.bks ; 3 uses
  %i.bku = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %.22429973 ; 3 uses
  %i.bkv = load float, ptr %i.bkt, align 4, !tbaa !52
  store float %i.bkv, ptr %i.bku, align 4, !tbaa !52
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkt, i64 4
  %i.bkx = load float, ptr %i.bkw, align 4, !tbaa !52
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bku, i64 4
  store float %i.bkx, ptr %i.bky, align 4, !tbaa !52
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkt, i64 8
  %i.bla = load float, ptr %i.bkz, align 4, !tbaa !52
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  store float %i.bla, ptr %i.blb, align 4, !tbaa !52
  %i.blc = or disjoint i64 %.22429973, 1          ; 2 uses
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %i.bko, i64 %i.blc
  %i.ble = load i32, ptr %i.bld, align 4, !tbaa !9
  %i.blf = sext i32 %i.ble to i64
  %i.blg = getelementptr inbounds [12 x i8], ptr %i.bkn, i64 %i.blf ; 3 uses
  %i.blh = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %i.blc ; 3 uses
  %i.bli = load float, ptr %i.blg, align 4, !tbaa !52
  store float %i.bli, ptr %i.blh, align 4, !tbaa !52
  %i.blj = getelementptr inbounds nuw i8, ptr %i.blg, i64 4
  %i.blk = load float, ptr %i.blj, align 4, !tbaa !52
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blh, i64 4
  store float %i.blk, ptr %i.bll, align 4, !tbaa !52
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blg, i64 8
  %i.bln = load float, ptr %i.blm, align 4, !tbaa !52
  %i.blo = getelementptr inbounds nuw i8, ptr %i.blh, i64 8
  store float %i.bln, ptr %i.blo, align 4, !tbaa !52
  %i.blp = or disjoint i64 %.22429973, 2          ; 2 uses
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr %i.bko, i64 %i.blp
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !9
  %i.bls = sext i32 %i.blr to i64
  %i.blt = getelementptr inbounds [12 x i8], ptr %i.bkn, i64 %i.bls ; 3 uses
  %i.blu = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %i.blp ; 3 uses
  %i.blv = load float, ptr %i.blt, align 4, !tbaa !52
  store float %i.blv, ptr %i.blu, align 4, !tbaa !52
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blt, i64 4
  %i.blx = load float, ptr %i.blw, align 4, !tbaa !52
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blu, i64 4
  store float %i.blx, ptr %i.bly, align 4, !tbaa !52
  %i.blz = getelementptr inbounds nuw i8, ptr %i.blt, i64 8
  %i.bma = load float, ptr %i.blz, align 4, !tbaa !52
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blu, i64 8
  store float %i.bma, ptr %i.bmb, align 4, !tbaa !52
  %i.bmc = or disjoint i64 %.22429973, 3          ; 2 uses
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %i.bko, i64 %i.bmc
  %i.bme = load i32, ptr %i.bmd, align 4, !tbaa !9
  %i.bmf = sext i32 %i.bme to i64
  %i.bmg = getelementptr inbounds [12 x i8], ptr %i.bkn, i64 %i.bmf ; 3 uses
  %i.bmh = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %i.bmc ; 3 uses
  %i.bmi = load float, ptr %i.bmg, align 4, !tbaa !52
  store float %i.bmi, ptr %i.bmh, align 4, !tbaa !52
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmg, i64 4
  %i.bmk = load float, ptr %i.bmj, align 4, !tbaa !52
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmh, i64 4
  store float %i.bmk, ptr %i.bml, align 4, !tbaa !52
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmg, i64 8
  %i.bmn = load float, ptr %i.bmm, align 4, !tbaa !52
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmh, i64 8
  store float %i.bmn, ptr %i.bmo, align 4, !tbaa !52
  %i.bmp = add nuw nsw i64 %.22429973, 4          ; 2 uses
  %niter1707.next.3 = add i64 %niter1707, 4       ; 2 uses
  %niter1707.ncmp.3 = icmp eq i64 %niter1707.next.3, %unroll_iter1706
  br i1 %niter1707.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.fu, !llvm.loop !167

bb.fv:                                            ; preds = %.loopexit, %._crit_edge972
  %i.bmq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.fu
  %49 = and i32 %.pre1051, 3
  %lcmp.mod1704.not = icmp eq i32 %49, 0
  br i1 %lcmp.mod1704.not, label %.loopexit, label %.epil.preheader1701

.epil.preheader1701:                              ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph974
  %.22429973.epil.init = phi i64 [ 0, %.lr.ph974 ], [ %i.bmp, %.loopexit.loopexit.unr-lcssa ]
  %50 = and i32 %.pre1051, 3
  %lcmp.mod1705 = icmp ne i32 %50, 0
  call void @llvm.assume(i1 %lcmp.mod1705)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fw, %.epil.preheader1701
  %.22429973.epil = phi i64 [ %.22429973.epil.init, %.epil.preheader1701 ], [ %i.bnd, %bb.fw ] ; 3 uses
  %epil.iter1703 = phi i64 [ 0, %.epil.preheader1701 ], [ %epil.iter1703.next, %bb.fw ]
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %i.bko, i64 %.22429973.epil
  %i.bms = load i32, ptr %i.bmr, align 4, !tbaa !9
  %i.bmt = sext i32 %i.bms to i64
  %i.bmu = getelementptr inbounds [12 x i8], ptr %i.bkn, i64 %i.bmt ; 3 uses
  %i.bmv = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %.22429973.epil ; 3 uses
  %i.bmw = load float, ptr %i.bmu, align 4, !tbaa !52
  store float %i.bmw, ptr %i.bmv, align 4, !tbaa !52
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmu, i64 4
  %i.bmy = load float, ptr %i.bmx, align 4, !tbaa !52
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmv, i64 4
  store float %i.bmy, ptr %i.bmz, align 4, !tbaa !52
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmu, i64 8
  %i.bnb = load float, ptr %i.bna, align 4, !tbaa !52
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmv, i64 8
  store float %i.bnb, ptr %i.bnc, align 4, !tbaa !52
  %i.bnd = add nuw nsw i64 %.22429973.epil, 1
  %epil.iter1703.next = add i64 %epil.iter1703, 1 ; 2 uses
  %epil.iter1703.cmp.not = icmp eq i64 %epil.iter1703.next, %xtraiter1702
  br i1 %epil.iter1703.cmp.not, label %.loopexit, label %bb.fw, !llvm.loop !168

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.fw, %.preheader, %bb.fs, %bb.ft
  %i.bne = phi i1 [ false, %bb.fs ], [ false, %bb.ft ], [ true, %.preheader ], [ true, %bb.fw ], [ true, %.loopexit.loopexit.unr-lcssa ]
  %.0394 = phi i32 [ 2, %bb.fs ], [ 0, %bb.ft ], [ 1, %.preheader ], [ 1, %bb.fw ], [ 1, %.loopexit.loopexit.unr-lcssa ]
  %i.bnf = load i32, ptr @_ZZ9gmx_covariPPcE3end, align 4, !tbaa !9
  %i.bng = trunc nuw i8 %.4385 to i1              ; 2 uses
  %i.bnh = load i8, ptr @_ZZ9gmx_covariPPcE2bM, align 1, !tbaa !30, !range !32, !noundef !33
  %i.bni = trunc nuw i8 %i.bnh to i1
  invoke void @_Z18write_eigenvectorsPKciPKfbiiiPA3_S1_bS4_bS2_(ptr noundef %i.cb, i32 noundef %.pre1051, ptr noundef %i.pf, i1 noundef zeroext true, i32 noundef 1, i32 noundef %i.bnf, i32 noundef %.0394, ptr noundef %i.ou, i1 noundef zeroext %i.bng, ptr noundef %.01249, i1 noundef zeroext %i.bni, ptr noundef %i.bfz)
          to label %bb.fx unwind label %bb.fv

bb.fx:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext 2)
          to label %bb.fy unwind label %bb.gl

bb.fy:                                            ; preds = %bb.fx
  %i.bnj = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %37, ptr noundef nonnull @.str.72)
          to label %bb.fz unwind label %bb.gm     ; 20 uses

bb.fz:                                            ; preds = %bb.fy
  %i.bnk = getelementptr inbounds nuw i8, ptr %37, i64 32 ; 2 uses
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i707 = icmp eq ptr %i.bnl, null
  br i1 %.not.i.i.i707, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i708, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bnk, ptr noundef nonnull %i.bnl) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i708

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i708: ; preds = %bb.ga, %bb.fz
  %i.bnm = load ptr, ptr %37, align 8, !tbaa !26  ; 2 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.bno = icmp eq ptr %i.bnm, %i.bnn
  br i1 %i.bno, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit711, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i709

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i709: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i708
  %i.bnp = load i64, ptr %i.bnn, align 8, !tbaa !29
  %i.bnq = add i64 %i.bnp, 1
  call void @_ZdlPvm(ptr noundef %i.bnm, i64 noundef %i.bnq) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit711

_ZNSt10filesystem7__cxx114pathD2Ev.exit711:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i708, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i709
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  invoke void @_Z23gmx_format_current_timeB5cxx11v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38)
          to label %bb.gb unwind label %bb.go

bb.gb:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit711
  %i.bnr = load ptr, ptr %38, align 8, !tbaa !26
  %i.bns = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bnj, ptr noundef nonnull @.str.95, ptr noundef %i.bnr) #24 ; 0 uses
  %i.bnt = load ptr, ptr %38, align 8, !tbaa !26  ; 2 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.bnv = icmp eq ptr %i.bnt, %i.bnu
  br i1 %i.bnv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712: ; preds = %bb.gb
  %i.bnw = load i64, ptr %i.bnu, align 8, !tbaa !29
  %i.bnx = add i64 %i.bnw, 1
  call void @_ZdlPvm(ptr noundef %i.bnt, i64 noundef %i.bnx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.bny = load ptr, ptr %1, align 8, !tbaa !23
  %i.bnz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bnj, ptr noundef nonnull @.str.96, ptr noundef %i.bny) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  invoke void @_Z10gmx_getcwdB5cxx11v(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %39)
          to label %bb.gc unwind label %bb.gp

bb.gc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.boa = load ptr, ptr %39, align 8, !tbaa !26, !noalias !175 ; 3 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.boc = load i64, ptr %i.bob, align 8, !tbaa !45, !noalias !175 ; 5 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 5 uses
  store ptr %i.bod, ptr %40, align 8, !tbaa !44, !alias.scope !175
  %i.boe = icmp eq ptr %i.boa, null
  %i.bof = icmp ne i64 %i.boc, 0
  %or.cond.i.i.i = and i1 %i.boe, %i.bof
  br i1 %or.cond.i.i.i, label %.noexc.i715, label %bb.gd

.noexc.i715:                                      ; preds = %bb.gc
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.116) #26
          to label %.noexc716 unwind label %bb.gq

.noexc716:                                        ; preds = %.noexc.i715
  unreachable

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !175
  store i64 %i.boc, ptr %i.a, align 8, !tbaa !165, !noalias !175
  %i.bog = icmp ugt i64 %i.boc, 15
  br i1 %i.bog, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.gd
  %i.boh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc717 unwind label %bb.gq ; 2 uses

.noexc717:                                        ; preds = %.noexc.i.i.i
  store ptr %i.boh, ptr %40, align 8, !tbaa !26, !alias.scope !175
  %i.boi = load i64, ptr %i.a, align 8, !tbaa !165, !noalias !175
  store i64 %i.boi, ptr %i.bod, align 8, !tbaa !29, !alias.scope !175
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc717, %bb.gd
  %i.boj = phi ptr [ %i.boh, %.noexc717 ], [ %i.bod, %bb.gd ] ; 2 uses
  switch i64 %i.boc, label %bb.gf [
    i64 1, label %bb.ge
    i64 0, label %bb.gg
  ]

bb.ge:                                            ; preds = %._crit_edge.i.i.i.i
  %i.bok = load i8, ptr %i.boa, align 1, !tbaa !29
  store i8 %i.bok, ptr %i.boj, align 1, !tbaa !29
  br label %bb.gg

bb.gf:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.boj, ptr align 1 %i.boa, i64 %i.boc, i1 false)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %._crit_edge.i.i.i.i
  %i.bol = load i64, ptr %i.a, align 8, !tbaa !165, !noalias !175 ; 2 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.bol, ptr %i.bom, align 8, !tbaa !45, !alias.scope !175
  %i.bon = load ptr, ptr %40, align 8, !tbaa !26, !alias.scope !175
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bol
  store i8 0, ptr %i.boo, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !175
  %i.bop = load ptr, ptr %40, align 8, !tbaa !26
  %i.boq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bnj, ptr noundef nonnull @.str.97, ptr noundef %i.bop) #24 ; 0 uses
  %i.bor = load ptr, ptr %40, align 8, !tbaa !26  ; 2 uses
  %i.bos = icmp eq ptr %i.bor, %i.bod
  br i1 %i.bos, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718: ; preds = %bb.gg
  %i.bot = load i64, ptr %i.bod, align 8, !tbaa !29
  %i.bou = add i64 %i.bot, 1
  call void @_ZdlPvm(ptr noundef %i.bor, i64 noundef %i.bou) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  %i.bov = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.bow = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.box = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.bow, float noundef %i.wp)
          to label %bb.gh unwind label %bb.gr

bb.gh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720
  %i.boy = fpext float %i.box to double
  %i.boz = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.bpa = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.boz, float noundef %i.xb)
          to label %bb.gi unwind label %bb.gr

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.bpb = load ptr, ptr %i.z, align 8, !tbaa !76
  invoke void @_Z24output_env_get_time_unitB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef %i.bpb)
          to label %bb.gj unwind label %bb.gs

bb.gj:                                            ; preds = %bb.gi
  %i.bpc = fpext float %i.bpa to double
  %i.bpd = load ptr, ptr %41, align 8, !tbaa !26
  %i.bpe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bnj, ptr noundef nonnull @.str.98, i32 noundef %i.xa, ptr noundef %i.bov, double noundef %i.boy, double noundef %i.bpc, ptr noundef %i.bpd) #24 ; 0 uses
  %i.bpf = load ptr, ptr %41, align 8, !tbaa !26  ; 2 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.bph = icmp eq ptr %i.bpf, %i.bpg
  br i1 %i.bph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721: ; preds = %bb.gj
  %i.bpi = load i64, ptr %i.bpg, align 8, !tbaa !29
  %i.bpj = add i64 %i.bpi, 1
  call void @_ZdlPvm(ptr noundef %i.bpf, i64 noundef %i.bpj) #25
end_hunk_1
