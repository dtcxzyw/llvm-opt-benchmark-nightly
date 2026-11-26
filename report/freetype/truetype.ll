Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@TT_Vary_Apply_Glyph_Deltas:bb.a
.lr.ph463.preheader.new:                          ; preds = %.lr.ph463.preheader
  %unroll_iter682 = and i64 %wide.trip.count504, 4294967294
  br label %.lr.ph463

bb.x:                                             ; preds = %bb.w
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %.thread433

.lr.ph467.preheader.unr-lcssa:                    ; preds = %.lr.ph463
  %lcmp.mod679.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %.lr.ph467.preheader, label %.lr.ph463.epil.preheader

.lr.ph463.epil.preheader:                         ; preds = %.lr.ph467.preheader.unr-lcssa, %.lr.ph463.preheader
  %indvars.iv501.epil.init = phi i64 [ 0, %.lr.ph463.preheader ], [ %indvars.iv.next502.1, %.lr.ph467.preheader.unr-lcssa ]
  %.3380462.epil.init = phi ptr [ %.2379, %.lr.ph463.preheader ], [ %i.jx, %.lr.ph467.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod681 = trunc i32 %i.is to i1
  call void @llvm.assume(i1 %lcmp.mod681)
  %i.ja = getelementptr inbounds nuw i8, ptr %.3380462.epil.init, i64 2
  %i.jb = load i8, ptr %.3380462.epil.init, align 1, !tbaa !186
  %i.jc = zext i8 %i.jb to i16
  %i.jd = shl nuw i16 %i.jc, 8
  %i.je = getelementptr inbounds nuw i8, ptr %.3380462.epil.init, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !186
  %i.jg = zext i8 %i.jf to i16
  %i.jh = or disjoint i16 %i.jd, %i.jg
  %i.ji = sext i16 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 2
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv501.epil.init
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !185
  br label %.lr.ph467.preheader

.lr.ph467.preheader:                              ; preds = %.lr.ph467.preheader.unr-lcssa, %.lr.ph463.epil.preheader
  %.lcssa670 = phi ptr [ %i.jx, %.lr.ph467.preheader.unr-lcssa ], [ %i.ja, %.lr.ph463.epil.preheader ] ; 2 uses
  %xtraiter684 = and i64 %wide.trip.count504, 1
  %i.jl = icmp eq i64 %i.iy, 0
  br i1 %i.jl, label %.lr.ph467.epil.preheader, label %.lr.ph467.preheader.new

.lr.ph467.preheader.new:                          ; preds = %.lr.ph467.preheader
  %unroll_iter688 = and i64 %wide.trip.count504, 4294967294
  br label %.lr.ph467

.lr.ph463:                                        ; preds = %.lr.ph463, %.lr.ph463.preheader.new
  %indvars.iv501 = phi i64 [ 0, %.lr.ph463.preheader.new ], [ %indvars.iv.next502.1, %.lr.ph463 ] ; 3 uses
  %.3380462 = phi ptr [ %.2379, %.lr.ph463.preheader.new ], [ %i.jx, %.lr.ph463 ] ; 5 uses
  %niter683 = phi i64 [ 0, %.lr.ph463.preheader.new ], [ %niter683.next.1, %.lr.ph463 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.3380462, i64 2
  %i.jn = load i8, ptr %.3380462, align 1, !tbaa !186
  %i.jo = zext i8 %i.jn to i16
  %i.jp = shl nuw i16 %i.jo, 8
  %i.jq = getelementptr inbounds nuw i8, ptr %.3380462, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !186
  %i.js = zext i8 %i.jr to i16
  %i.jt = or disjoint i16 %i.jp, %i.js
  %i.ju = sext i16 %i.jt to i64
  %i.jv = shl nsw i64 %i.ju, 2
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv501
  store i64 %i.jv, ptr %i.jw, align 8, !tbaa !185
  %i.jx = getelementptr inbounds nuw i8, ptr %.3380462, i64 4 ; 3 uses
  %i.jy = load i8, ptr %i.jm, align 1, !tbaa !186
  %i.jz = zext i8 %i.jy to i16
  %i.ka = shl nuw i16 %i.jz, 8
  %i.kb = getelementptr inbounds nuw i8, ptr %.3380462, i64 3
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !186
  %i.kd = zext i8 %i.kc to i16
  %i.ke = or disjoint i16 %i.ka, %i.kd
  %i.kf = sext i16 %i.ke to i64
  %i.kg = shl nsw i64 %i.kf, 2
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv501
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i64 %i.kg, ptr %i.ki, align 8, !tbaa !185
  %indvars.iv.next502.1 = add nuw nsw i64 %indvars.iv501, 2 ; 2 uses
  %niter683.next.1 = add i64 %niter683, 2         ; 2 uses
  %niter683.ncmp.1 = icmp eq i64 %niter683.next.1, %unroll_iter682
  br i1 %niter683.ncmp.1, label %.lr.ph467.preheader.unr-lcssa, label %.lr.ph463, !llvm.loop !832

.lr.ph467:                                        ; preds = %.lr.ph467, %.lr.ph467.preheader.new
  %indvars.iv506 = phi i64 [ 0, %.lr.ph467.preheader.new ], [ %indvars.iv.next507.1, %.lr.ph467 ] ; 3 uses
  %.4381466 = phi ptr [ %.lcssa670, %.lr.ph467.preheader.new ], [ %i.ku, %.lr.ph467 ] ; 5 uses
  %niter689 = phi i64 [ 0, %.lr.ph467.preheader.new ], [ %niter689.next.1, %.lr.ph467 ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.4381466, i64 2
  %i.kk = load i8, ptr %.4381466, align 1, !tbaa !186
  %i.kl = zext i8 %i.kk to i16
  %i.km = shl nuw i16 %i.kl, 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.4381466, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !186
  %i.kp = zext i8 %i.ko to i16
  %i.kq = or disjoint i16 %i.km, %i.kp
  %i.kr = sext i16 %i.kq to i64
  %i.ks = shl nsw i64 %i.kr, 2
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv506
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !185
  %i.ku = getelementptr inbounds nuw i8, ptr %.4381466, i64 4 ; 3 uses
  %i.kv = load i8, ptr %i.kj, align 1, !tbaa !186
  %i.kw = zext i8 %i.kv to i16
  %i.kx = shl nuw i16 %i.kw, 8
  %i.ky = getelementptr inbounds nuw i8, ptr %.4381466, i64 3
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !186
  %i.la = zext i8 %i.kz to i16
  %i.lb = or disjoint i16 %i.kx, %i.la
  %i.lc = sext i16 %i.lb to i64
  %i.ld = shl nsw i64 %i.lc, 2
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv506
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i64 %i.ld, ptr %i.lf, align 8, !tbaa !185
  %indvars.iv.next507.1 = add nuw nsw i64 %indvars.iv506, 2 ; 2 uses
  %niter689.next.1 = add i64 %niter689, 2         ; 2 uses
  %niter689.ncmp.1 = icmp eq i64 %niter689.next.1, %unroll_iter688
  br i1 %niter689.ncmp.1, label %.loopexit453.loopexit.unr-lcssa, label %.lr.ph467, !llvm.loop !833

.loopexit453.loopexit.unr-lcssa:                  ; preds = %.lr.ph467
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.loopexit453, label %.lr.ph467.epil.preheader

.lr.ph467.epil.preheader:                         ; preds = %.loopexit453.loopexit.unr-lcssa, %.lr.ph467.preheader
  %indvars.iv506.epil.init = phi i64 [ 0, %.lr.ph467.preheader ], [ %indvars.iv.next507.1, %.loopexit453.loopexit.unr-lcssa ]
  %.4381466.epil.init = phi ptr [ %.lcssa670, %.lr.ph467.preheader ], [ %i.ku, %.loopexit453.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod687 = trunc i32 %i.is to i1
  call void @llvm.assume(i1 %lcmp.mod687)
  %i.lg = getelementptr inbounds nuw i8, ptr %.4381466.epil.init, i64 2
  %i.lh = load i8, ptr %.4381466.epil.init, align 1, !tbaa !186
  %i.li = zext i8 %i.lh to i16
  %i.lj = shl nuw i16 %i.li, 8
  %i.lk = getelementptr inbounds nuw i8, ptr %.4381466.epil.init, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !186
  %i.lm = zext i8 %i.ll to i16
  %i.ln = or disjoint i16 %i.lj, %i.lm
  %i.lo = sext i16 %i.ln to i64
  %i.lp = shl nsw i64 %i.lo, 2
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv506.epil.init
  store i64 %i.lp, ptr %i.lq, align 8, !tbaa !185
  br label %.loopexit453

.loopexit453:                                     ; preds = %.lr.ph467.epil.preheader, %.loopexit453.loopexit.unr-lcssa, %.preheader454, %.loopexit456
  %.5 = phi ptr [ %.2379, %.loopexit456 ], [ %.2379, %.preheader454 ], [ %i.ku, %.loopexit453.loopexit.unr-lcssa ], [ %i.lg, %.lr.ph467.epil.preheader ] ; 2 uses
  %i.lr = call fastcc i64 @ft_var_apply_tuple(ptr noundef %i.p, i16 noundef zeroext %i.gp, ptr noundef %.2375, ptr noundef %i.fk, ptr noundef %i.fl) ; 3 uses
  %.not424 = icmp eq ptr %.1, null
  br i1 %.not424, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit453
  %i.ls = and i32 %i.gq, 4095
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.lt
  store i64 %i.lr, ptr %i.lu, align 8, !tbaa !185
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %.loopexit453, %bb.y
  %.6 = phi ptr [ %.5, %bb.y ], [ %.5, %.loopexit453 ], [ %i.gh, %bb.u ]
  %.1365 = phi i64 [ %i.lr, %bb.y ], [ %i.lr, %.loopexit453 ], [ %i.ib, %bb.u ] ; 6 uses
  %i.lv = icmp eq i64 %.1365, 0
  br i1 %i.lv, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lw = load ptr, ptr %i.bq, align 8, !tbaa !345
  %i.lx = load ptr, ptr %i.f, align 8, !tbaa !391 ; 2 uses
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64               ; 2 uses
  %i.ma = sub i64 %i.ly, %i.lz                    ; 2 uses
  %i.mb = load ptr, ptr %i.fo, align 8, !tbaa !384 ; 2 uses
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = sub i64 %i.mc, %i.lz
  %i.me = icmp ult i64 %.1395474, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.1395474
  %i.mg = select i1 %i.me, ptr %i.mf, ptr %i.mb
  store ptr %i.mg, ptr %i.bq, align 8, !tbaa !345
  %i.mh = and i32 %i.gq, 8192
  %.not425 = icmp eq i32 %i.mh, 0
  br i1 %.not425, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mi = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %i.f, ptr noundef %i.b) ; 2 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !152
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.mj = load i32, ptr %i.c, align 4, !tbaa !152 ; 2 uses
  store i32 %i.mj, ptr %i.b, align 4, !tbaa !152
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.mk = phi i32 [ %.pre, %bb.ab ], [ %i.mj, %bb.ac ] ; 3 uses
  %.1370 = phi ptr [ %i.mi, %bb.ab ], [ %.0369477, %bb.ac ] ; 3 uses
  %.0368 = phi ptr [ %i.mi, %bb.ab ], [ %.0371, %bb.ac ] ; 3 uses
  %i.ml = icmp eq i32 %i.mk, 0                    ; 2 uses
  %i.mm = select i1 %i.ml, i32 %i.n, i32 %i.mk    ; 2 uses
  %i.mn = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %i.f, i32 noundef %i.mm) ; 8 uses
  %i.mo = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %i.f, i32 noundef %i.mm) ; 8 uses
  %i.mp = icmp ne ptr %.0368, null
  %i.mq = icmp ne ptr %i.mo, null
  %or.cond = select i1 %i.mp, i1 %i.mq, i1 false
  %i.mr = icmp ne ptr %i.mn, null
  %or.cond3 = select i1 %or.cond, i1 %i.mr, i1 false
  br i1 %or.cond3, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.ms = icmp eq ptr %.0368, inttoptr (i64 -1 to ptr)
  br i1 %i.ms, label %vector.memcheck625, label %.preheader451

vector.memcheck625:                               ; preds = %bb.ae
  %i.mt = getelementptr i8, ptr %i.mn, i64 %i.fu  ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mo, i64 %i.fu  ; 2 uses
  %bound0626 = icmp ult ptr %i.dr, %i.mt
  %bound1627 = icmp ult ptr %i.mn, %i.fm
  %found.conflict628 = and i1 %bound0626, %bound1627
  %bound0629 = icmp ult ptr %i.dr, %i.mu
  %bound1630 = icmp ult ptr %i.mo, %i.fm
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %found.conflict628, %found.conflict631
  %bound0633 = icmp ult ptr %i.fm, %i.mt
  %bound1634 = icmp ult ptr %i.mn, %i.ds
  %found.conflict635 = and i1 %bound0633, %bound1634
  %conflict.rdx636 = or i1 %conflict.rdx632, %found.conflict635
  %bound0637 = icmp ult ptr %i.fm, %i.mu
  %bound1638 = icmp ult ptr %i.mo, %i.ds
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx640 = or i1 %conflict.rdx636, %found.conflict639
  br i1 %conflict.rdx640, label %.preheader.preheader, label %vector.ph641

vector.ph641:                                     ; preds = %vector.memcheck625
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.1365, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph641
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next649, %vector.body643 ] ; 5 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index644 ; 2 uses
  %wide.load645 = load <2 x i64>, ptr %i.mv, align 8, !tbaa !185, !alias.scope !847, !noalias !848
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %index644 ; 2 uses
  %wide.load646 = load <2 x i64>, ptr %i.mw, align 8, !tbaa !185, !alias.scope !849, !noalias !848
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %index644
  %wide.load647 = load <2 x i64>, ptr %i.mx, align 8, !tbaa !185, !alias.scope !850
  %i.my = mul <2 x i64> %wide.load647, %broadcast.splat ; 2 uses
  %i.mz = ashr <2 x i64> %i.my, splat (i64 63)
  %i.na = add <2 x i64> %i.my, splat (i64 32768)
  %i.nb = add <2 x i64> %i.na, %i.mz
  %i.nc = ashr <2 x i64> %i.nb, splat (i64 16)
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %index644
  %wide.load648 = load <2 x i64>, ptr %i.nd, align 8, !tbaa !185, !alias.scope !851
  %i.ne = mul <2 x i64> %wide.load648, %broadcast.splat ; 2 uses
  %i.nf = ashr <2 x i64> %i.ne, splat (i64 63)
  %i.ng = add <2 x i64> %i.ne, splat (i64 32768)
  %i.nh = add <2 x i64> %i.ng, %i.nf
  %i.ni = ashr <2 x i64> %i.nh, splat (i64 16)
  %i.nj = add nsw <2 x i64> %i.nc, %wide.load645
  store <2 x i64> %i.nj, ptr %i.mv, align 8, !tbaa !185, !alias.scope !847, !noalias !848
  %i.nk = add nsw <2 x i64> %i.ni, %wide.load646
  store <2 x i64> %i.nk, ptr %i.mw, align 8, !tbaa !185, !alias.scope !849, !noalias !848
  %index.next649 = add nuw i64 %index644, 2       ; 2 uses
  %i.nl = icmp eq i64 %index.next649, %n.vec642
  br i1 %i.nl, label %middle.block650, label %vector.body643, !llvm.loop !839

middle.block650:                                  ; preds = %vector.body643
  br i1 %cmp.n651, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck625, %middle.block650
  %indvars.iv526.ph = phi i64 [ 0, %vector.memcheck625 ], [ %n.vec642, %middle.block650 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv526 = phi i64 [ %indvars.iv.next527, %.preheader ], [ %indvars.iv526.ph, %.preheader.preheader ] ; 5 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv526 ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !185
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv526 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !185
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv526
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !185
  %i.ns = mul i64 %i.nr, %.1365                   ; 2 uses
  %i.nt = ashr i64 %i.ns, 63
  %i.nu = add i64 %i.ns, 32768
  %i.nv = add i64 %i.nu, %i.nt
  %i.nw = ashr i64 %i.nv, 16
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv526
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !185
  %i.nz = mul i64 %i.ny, %.1365                   ; 2 uses
  %i.oa = ashr i64 %i.nz, 63
  %i.ob = add i64 %i.nz, 32768
  %i.oc = add i64 %i.ob, %i.oa
  %i.od = ashr i64 %i.oc, 16
  %i.oe = add nsw i64 %i.nw, %i.nn
  store i64 %i.oe, ptr %i.nm, align 8, !tbaa !185
  %i.of = add nsw i64 %i.od, %i.np
  store i64 %i.of, ptr %i.no, align 8, !tbaa !185
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond530.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count
  br i1 %exitcond530.not, label %.loopexit, label %.preheader, !llvm.loop !840

.preheader450.unr-lcssa:                          ; preds = %.preheader451
  br i1 %lcmp.mod691.not, label %.preheader450, label %.preheader451.epil.preheader

.preheader451.epil.preheader:                     ; preds = %.preheader450.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod692)
  %i.og = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv.next512.1
  store i8 0, ptr %i.og, align 1, !tbaa !186
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %indvars.iv.next512.1
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv.next512.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oh, ptr noundef nonnull align 8 dereferenceable(16) %i.oi, i64 16, i1 false), !tbaa.struct !299
  br label %.preheader450

.preheader450:                                    ; preds = %.preheader450.unr-lcssa, %.preheader451.epil.preheader
  br i1 %i.ml, label %._crit_edge, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %.preheader450
  %wide.trip.count519 = zext i32 %i.mk to i64
  br label %.lr.ph471

.preheader451:                                    ; preds = %bb.ae, %.preheader451
  %indvars.iv511 = phi i64 [ %indvars.iv.next512.1, %.preheader451 ], [ 0, %bb.ae ] ; 5 uses
  %niter694 = phi i64 [ %niter694.next.1, %.preheader451 ], [ 0, %bb.ae ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv511
  store i8 0, ptr %i.oj, align 1, !tbaa !186
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %indvars.iv511
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ok, ptr noundef nonnull align 8 dereferenceable(16) %i.ol, i64 16, i1 false), !tbaa.struct !299
  %indvars.iv.next512 = or disjoint i64 %indvars.iv511, 1 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv.next512
  store i8 0, ptr %i.om, align 1, !tbaa !186
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %indvars.iv.next512
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv.next512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(16) %i.oo, i64 16, i1 false), !tbaa.struct !299
  %indvars.iv.next512.1 = add nuw nsw i64 %indvars.iv511, 2 ; 4 uses
  %niter694.next.1 = add nuw nsw i64 %niter694, 2 ; 2 uses
  %niter694.ncmp.1 = icmp eq i64 %niter694.next.1, %unroll_iter693
  br i1 %niter694.ncmp.1, label %.preheader450.unr-lcssa, label %.preheader451, !llvm.loop !841

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %bb.ag
  %indvars.iv516 = phi i64 [ 0, %.lr.ph471.preheader ], [ %indvars.iv.next517, %bb.ag ] ; 4 uses
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %.0368, i64 %indvars.iv516
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !128 ; 2 uses
  %i.or = zext i16 %i.oq to i32
  %.not426 = icmp samesign ugt i32 %i.n, %i.or
  br i1 %.not426, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph471
  %i.os = zext i16 %i.oq to i64                   ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.os
  store i8 1, ptr %i.ot, align 1, !tbaa !186
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv516
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !185
  %i.ow = mul i64 %i.ov, %.1365                   ; 2 uses
  %i.ox = ashr i64 %i.ow, 63
  %i.oy = add i64 %i.ow, 32768
  %i.oz = add i64 %i.oy, %i.ox
  %i.pa = ashr i64 %i.oz, 16
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.os ; 3 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !230
  %i.pd = add nsw i64 %i.pa, %i.pc
  store i64 %i.pd, ptr %i.pb, align 8, !tbaa !230
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv516
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !185
  %i.pg = mul i64 %i.pf, %.1365                   ; 2 uses
  %i.ph = ashr i64 %i.pg, 63
  %i.pi = add i64 %i.pg, 32768
  %i.pj = add i64 %i.pi, %i.ph
  %i.pk = ashr i64 %i.pj, 16
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !257
  %i.pn = add nsw i64 %i.pk, %i.pm
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !257
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph471, %bb.af
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %exitcond520.not = icmp eq i64 %indvars.iv.next517, %wide.trip.count519
  br i1 %exitcond520.not, label %._crit_edge, label %.lr.ph471, !llvm.loop !842

._crit_edge:                                      ; preds = %bb.ag, %.preheader450
  call fastcc void @tt_interpolate_deltas(ptr noundef %1, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.fi)
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %._crit_edge
  %index657 = phi i64 [ 0, %._crit_edge ], [ %index.next664, %vector.body656 ] ; 5 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index657 ; 2 uses
  %wide.load658 = load <2 x i64>, ptr %i.po, align 8, !tbaa !185
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %index657 ; 2 uses
  %wide.load659 = load <2 x i64>, ptr %i.pp, align 8, !tbaa !185
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %index657
  %wide.vec = load <4 x i64>, ptr %i.pq, align 8, !tbaa !185 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec660 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %index657
  %wide.vec661 = load <4 x i64>, ptr %i.pr, align 8, !tbaa !185 ; 2 uses
  %strided.vec662 = shufflevector <4 x i64> %wide.vec661, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec663 = shufflevector <4 x i64> %wide.vec661, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ps = add <2 x i64> %strided.vec, %wide.load658
  %i.pt = sub <2 x i64> %i.ps, %strided.vec662
  store <2 x i64> %i.pt, ptr %i.po, align 8, !tbaa !185
  %i.pu = add <2 x i64> %strided.vec660, %wide.load659
  %i.pv = sub <2 x i64> %i.pu, %strided.vec663
  store <2 x i64> %i.pv, ptr %i.pp, align 8, !tbaa !185
  %index.next664 = add nuw i64 %index657, 2       ; 2 uses
  %i.pw = icmp eq i64 %index.next664, %n.vec655
  br i1 %i.pw, label %middle.block665, label %vector.body656, !llvm.loop !843

middle.block665:                                  ; preds = %vector.body656
  br i1 %cmp.n666, label %.loopexit, label %scalar.ph653

scalar.ph653:                                     ; preds = %middle.block665, %scalar.ph653
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %scalar.ph653 ], [ %n.vec655, %middle.block665 ] ; 5 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv521 ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !185
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv521 ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !185
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %indvars.iv521 ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !230
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv521 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !230
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !257
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !257
  %i.qj = add i64 %i.qc, %i.py
  %i.qk = sub i64 %i.qj, %i.qe
  store i64 %i.qk, ptr %i.px, align 8, !tbaa !185
  %i.ql = add i64 %i.qg, %i.qa
end_hunk_0
