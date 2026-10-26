Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/dtoa?download=true
inline.NumInlined: 101
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hermes_g_strtod:bb.a
  %i.ir = add i32 %i.in, 55574528
  store i32 %i.ir, ptr %i.ic, align 4, !tbaa !19
  br label %bb.cb

bb.bk:                                            ; preds = %bb.aj
  %i.is = icmp slt i32 %i.fy, 0
  br i1 %i.is, label %bb.bl, label %bb.cb

bb.bl:                                            ; preds = %bb.bk
  %i.it = sub nsw i32 0, %i.fy                    ; 4 uses
  %i.iu = and i32 %i.it, 15                       ; 2 uses
  %.not560.i = icmp eq i32 %i.iu, 0
  br i1 %.not560.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !21
  %i.iy = fdiv double %i.fw, %i.ix                ; 2 uses
  store double %i.iy, ptr %2, align 8, !tbaa !19
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.promoted.i = phi double [ %i.iy, %bb.bm ], [ %i.fw, %bb.bl ]
  %i.iz = lshr i32 %i.it, 4                       ; 2 uses
  %.not561.i = icmp eq i32 %i.iz, 0
  br i1 %.not561.i, label %bb.cb, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ja = icmp samesign ugt i32 %i.it, 511
  br i1 %i.ja, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bo, %bb.bq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bq ], [ 0, %bb.bo ] ; 2 uses
  %.1502920.i = phi i32 [ %i.jh, %bb.bq ], [ %i.iz, %bb.bo ] ; 2 uses
  %i.jb = phi double [ %i.jg, %bb.bq ], [ %.promoted.i, %bb.bo ] ; 2 uses
  %i.jc = and i32 %.1502920.i, 1
  %.not565.i = icmp eq i32 %i.jc, 0
  br i1 %.not565.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.preheader
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv.i
  %i.je = load double, ptr %i.jd, align 8, !tbaa !21
  %i.jf = fmul double %i.jb, %i.je
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.preheader
  %i.jg = phi double [ %i.jb, %.preheader ], [ %i.jf, %bb.bp ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.jh = lshr i32 %.1502920.i, 1                 ; 2 uses
  %.not563.i = icmp eq i32 %i.jh, 0
  br i1 %.not563.i, label %bb.br, label %.preheader, !llvm.loop !38

bb.br:                                            ; preds = %bb.bq
  %.not562.i = icmp samesign ult i32 %i.it, 256   ; 2 uses
  %spec.select731.i = select i1 %.not562.i, i32 0, i32 106
  store double %i.jg, ptr %2, align 8
  %i.ji = bitcast double %i.jg to i64             ; 2 uses
  %i.jj = lshr i64 %i.ji, 32
  %i.jk = trunc nuw i64 %i.jj to i32              ; 2 uses
  %i.jl = trunc i64 %i.ji to i32
  br i1 %.not562.i, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.jn = lshr i32 %i.jk, 20
  %i.jo = and i32 %i.jn, 2047                     ; 6 uses
  %i.jp = sub nuw nsw i32 107, %i.jo
  %i.jq = icmp samesign ult i32 %i.jo, 107
  br i1 %i.jq, label %bb.bt, label %thread-pre-split.i

bb.bt:                                            ; preds = %bb.bs
  %i.jr = icmp samesign ult i32 %i.jo, 76
  br i1 %i.jr, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.js = icmp samesign ult i32 %i.jo, 53
  br i1 %i.js, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %2, align 8, !tbaa !19
  %i.jt = icmp samesign ult i32 %i.jo, 55
  br i1 %i.jt, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 57671680, ptr %i.jm, align 4, !tbaa !19
  br label %thread-pre-split.i

bb.bx:                                            ; preds = %bb.bv
  %i.ju = sub nuw nsw i32 75, %i.jo
  %i.jv = shl nsw i32 -1, %i.ju
  %i.jw = and i32 %i.jv, %i.jk
  store i32 %i.jw, ptr %i.jm, align 4, !tbaa !19
  br label %thread-pre-split.i

bb.by:                                            ; preds = %bb.bt
  %i.jx = shl nsw i32 -1, %i.jp
  %i.jy = and i32 %i.jx, %i.jl
  store i32 %i.jy, ptr %2, align 8, !tbaa !19
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bs
  %.pr.i = load double, ptr %2, align 8, !tbaa !19
  br label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split.i, %bb.br
  %i.jz = phi double [ %.pr.i, %thread-pre-split.i ], [ %i.jg, %bb.br ]
  %i.ka = fcmp une double %i.jz, 0.000000e+00
  br i1 %i.ka, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.iw, %bb.fd, %sulp.exit653.i, %.loopexit, %bb.bz, %bb.bu, %bb.bo
  %.2417.i = phi ptr [ %.4419.i, %bb.iw ], [ %.4419.i, %.loopexit ], [ undef, %bb.bz ], [ %.4419.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4419.i, %sulp.exit653.i ]
  %.2412.i = phi ptr [ %.4414.i, %bb.iw ], [ %.4414.i, %.loopexit ], [ undef, %bb.bz ], [ %.4414.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4414.i, %sulp.exit653.i ]
  %.2409.i = phi ptr [ null, %bb.iw ], [ %.231.lcssa.i.i, %.loopexit ], [ null, %bb.bz ], [ %.231.lcssa.i.i, %bb.fd ], [ null, %bb.bo ], [ null, %bb.bu ], [ %.231.lcssa.i.i, %sulp.exit653.i ]
  %.2404.i = phi ptr [ %.4406.i, %bb.iw ], [ %.4406.i, %.loopexit ], [ undef, %bb.bz ], [ %.4406.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4406.i, %sulp.exit653.i ]
  %.2.i = phi ptr [ %.5.i, %bb.iw ], [ %i.tj, %.loopexit ], [ undef, %bb.bz ], [ %i.tj, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %i.tj, %sulp.exit653.i ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.ao

bb.cb:                                            ; preds = %bb.bz, %bb.bn, %bb.bk, %bb.bj, %bb.bi, %bb.am
  %.sroa.44710.1.i = phi i32 [ 0, %bb.am ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bn ], [ %spec.select731.i, %bb.bz ], [ 0, %bb.bk ] ; 5 uses
  %i.kb = sub nsw i32 %.5484.i, %.4465.i          ; 6 uses
  %i.kc = icmp sgt i32 %.5484.i, 40
  br i1 %i.kc, label %bb.cc, label %.loopexit744.i

bb.cc:                                            ; preds = %bb.cb
  %i.kd = icmp slt i32 %spec.select597.i, 18
  %i.ke = add nsw i32 %.sroa.12.0.i, 18
  %.2488.i = select i1 %i.kd, i32 %i.ke, i32 18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.1494.i = phi i32 [ 18, %bb.cc ], [ %i.ki, %bb.cd ] ; 12 uses
  %.3489.i = phi i32 [ %.2488.i, %bb.cc ], [ %.4490.i, %bb.cd ] ; 3 uses
  %.not568.i = icmp sgt i32 %.3489.i, %.sroa.6.2.i
  %spec.select598.i = call i32 @llvm.smin.i32(i32 %.3489.i, i32 %.sroa.0.2.i)
  %.4490.in.i = select i1 %.not568.i, i32 %.3489.i, i32 %spec.select598.i
  %.4490.i = add nsw i32 %.4490.in.i, -1          ; 2 uses
  %i.kf = sext i32 %.4490.i to i64
  %i.kg = getelementptr inbounds i8, ptr %.2445.i, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !19
  %.not570.i = icmp eq i8 %i.kh, 48
  %i.ki = add nsw i32 %.1494.i, -1
  br i1 %.not570.i, label %bb.cd, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kj = sub nsw i32 %.5484.i, %.1494.i
  %i.kk = add nsw i32 %i.kj, %i.el                ; 4 uses
  %spec.select599.i = call i32 @llvm.smin.i32(i32 %spec.select597.i, i32 %.1494.i) ; 9 uses
  %i.kl = icmp slt i32 %.1494.i, 9
  br i1 %i.kl, label %.preheader745.i, label %.loopexit744.i

.preheader745.i:                                  ; preds = %bb.ce
  %i.km = icmp sgt i32 %spec.select599.i, 0
  br i1 %i.km, label %.lr.ph933.preheader.i, label %.preheader.i

.lr.ph933.preheader.i:                            ; preds = %.preheader745.i
  %wide.trip.count.i = zext nneg i32 %spec.select599.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.kn = icmp ult i32 %spec.select599.i, 4
  br i1 %i.kn, label %.lr.ph933.i.epil.preheader, label %.lr.ph933.preheader.i.new

.lr.ph933.preheader.i.new:                        ; preds = %.lr.ph933.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph933.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph933.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph933.i.epil.preheader

.lr.ph933.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph933.preheader.i
  %indvars.iv1063.i.epil.init = phi i64 [ 0, %.lr.ph933.preheader.i ], [ %indvars.iv.next1064.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.9932.i.epil.init = phi i32 [ 0, %.lr.ph933.preheader.i ], [ %i.mg, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod657 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod657)
  br label %.lr.ph933.i.epil

.lr.ph933.i.epil:                                 ; preds = %.lr.ph933.i.epil, %.lr.ph933.i.epil.preheader
  %indvars.iv1063.i.epil = phi i64 [ %indvars.iv1063.i.epil.init, %.lr.ph933.i.epil.preheader ], [ %indvars.iv.next1064.i.epil, %.lr.ph933.i.epil ] ; 2 uses
  %.9932.i.epil = phi i32 [ %.9932.i.epil.init, %.lr.ph933.i.epil.preheader ], [ %i.kt, %.lr.ph933.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph933.i.epil.preheader ], [ %epil.iter.next, %.lr.ph933.i.epil ]
  %i.ko = mul i32 %.9932.i.epil, 10
  %i.kp = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i.epil
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !19
  %i.kr = sext i8 %i.kq to i32
  %i.ks = add i32 %i.ko, -48
  %i.kt = add i32 %i.ks, %i.kr                    ; 2 uses
  %indvars.iv.next1064.i.epil = add nuw nsw i64 %indvars.iv1063.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph933.i.epil, !llvm.loop !39

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph933.i.epil, %.preheader745.i
  %.2495.lcssa.i = phi i32 [ 0, %.preheader745.i ], [ %spec.select599.i, %.lr.ph933.i.epil ], [ %spec.select599.i, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa.i = phi i32 [ 0, %.preheader745.i ], [ %i.mg, %.preheader.i.loopexit.unr-lcssa ], [ %i.kt, %.lr.ph933.i.epil ] ; 3 uses
  %i.ku = icmp slt i32 %.2495.lcssa.i, %.1494.i
  br i1 %i.ku, label %.lr.ph939.preheader.i, label %._crit_edge.thread.i.i.thread

.lr.ph939.preheader.i:                            ; preds = %.preheader.i
  %i.kv = sext i32 %.sroa.6.2.i to i64            ; 2 uses
  %i.kw = sub nsw i32 %.1494.i, %.2495.lcssa.i
  %xtraiter658 = and i32 %i.kw, 3                 ; 2 uses
  %lcmp.mod659.not = icmp eq i32 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %.lr.ph939.i.prol.loopexit, label %.lr.ph939.i.prol

.lr.ph939.i.prol:                                 ; preds = %.lr.ph939.preheader.i, %.lr.ph939.i.prol
  %indvars.iv1068.i.prol = phi i64 [ %indvars.iv.next1069.i.prol, %.lr.ph939.i.prol ], [ %i.kv, %.lr.ph939.preheader.i ] ; 2 uses
  %.10938.i.prol = phi i32 [ %i.lc, %.lr.ph939.i.prol ], [ %.9.lcssa.i, %.lr.ph939.preheader.i ]
  %.3496936.i.prol = phi i32 [ %i.ld, %.lr.ph939.i.prol ], [ %.2495.lcssa.i, %.lr.ph939.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph939.i.prol ], [ 0, %.lr.ph939.preheader.i ]
  %i.kx = mul i32 %.10938.i.prol, 10
  %indvars.iv.next1069.i.prol = add nsw i64 %indvars.iv1068.i.prol, 1 ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %.2445.i, i64 %indvars.iv1068.i.prol
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !19
  %i.la = sext i8 %i.kz to i32
  %i.lb = add i32 %i.kx, -48
  %i.lc = add i32 %i.lb, %i.la                    ; 3 uses
  %i.ld = add nuw nsw i32 %.3496936.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter658
  br i1 %prol.iter.cmp.not, label %.lr.ph939.i.prol.loopexit, label %.lr.ph939.i.prol, !llvm.loop !40

.lr.ph939.i.prol.loopexit:                        ; preds = %.lr.ph939.i.prol, %.lr.ph939.preheader.i
  %.lcssa627.unr = phi i32 [ poison, %.lr.ph939.preheader.i ], [ %i.lc, %.lr.ph939.i.prol ]
  %indvars.iv1068.i.unr = phi i64 [ %i.kv, %.lr.ph939.preheader.i ], [ %indvars.iv.next1069.i.prol, %.lr.ph939.i.prol ]
  %.10938.i.unr = phi i32 [ %.9.lcssa.i, %.lr.ph939.preheader.i ], [ %i.lc, %.lr.ph939.i.prol ]
  %.3496936.i.unr = phi i32 [ %.2495.lcssa.i, %.lr.ph939.preheader.i ], [ %i.ld, %.lr.ph939.i.prol ]
  %i.le = sub i32 %.2495.lcssa.i, %.1494.i
  %i.lf = icmp ugt i32 %i.le, -4
  br i1 %i.lf, label %._crit_edge.thread.i.i.thread, label %.lr.ph939.i

.lr.ph933.i:                                      ; preds = %.lr.ph933.i, %.lr.ph933.preheader.i.new
  %indvars.iv1063.i = phi i64 [ 0, %.lr.ph933.preheader.i.new ], [ %indvars.iv.next1064.i.3, %.lr.ph933.i ] ; 5 uses
  %.9932.i = phi i32 [ 0, %.lr.ph933.preheader.i.new ], [ %i.mg, %.lr.ph933.i ]
  %niter = phi i64 [ 0, %.lr.ph933.preheader.i.new ], [ %niter.next.3, %.lr.ph933.i ]
  %i.lg = mul i32 %.9932.i, 10
  %i.lh = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !19
  %i.lj = sext i8 %i.li to i32
  %i.lk = add i32 %i.lg, -48
  %i.ll = add i32 %i.lk, %i.lj
  %i.lm = mul i32 %i.ll, 10
  %i.ln = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !19
  %i.lq = sext i8 %i.lp to i32
  %i.lr = add i32 %i.lm, -48
  %i.ls = add i32 %i.lr, %i.lq
  %i.lt = mul i32 %i.ls, 10
  %i.lu = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !19
  %i.lx = sext i8 %i.lw to i32
  %i.ly = add i32 %i.lt, -48
  %i.lz = add i32 %i.ly, %i.lx
  %i.ma = mul i32 %i.lz, 10
  %i.mb = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 3
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !19
  %i.me = sext i8 %i.md to i32
  %i.mf = add i32 %i.ma, -48
  %i.mg = add i32 %i.mf, %i.me                    ; 3 uses
  %indvars.iv.next1064.i.3 = add nuw nsw i64 %indvars.iv1063.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph933.i, !llvm.loop !41

.lr.ph939.i:                                      ; preds = %.lr.ph939.i.prol.loopexit, %.lr.ph939.i
  %indvars.iv1068.i = phi i64 [ %indvars.iv.next1069.i.3, %.lr.ph939.i ], [ %indvars.iv1068.i.unr, %.lr.ph939.i.prol.loopexit ] ; 5 uses
  %.10938.i = phi i32 [ %i.nh, %.lr.ph939.i ], [ %.10938.i.unr, %.lr.ph939.i.prol.loopexit ]
  %.3496936.i = phi i32 [ %i.ni, %.lr.ph939.i ], [ %.3496936.i.unr, %.lr.ph939.i.prol.loopexit ]
  %i.mh = mul i32 %.10938.i, 10
  %i.mi = getelementptr inbounds i8, ptr %.2445.i, i64 %indvars.iv1068.i
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !19
  %i.mk = sext i8 %i.mj to i32
  %i.ml = add i32 %i.mh, -48
  %i.mm = add i32 %i.ml, %i.mk
  %i.mn = mul i32 %i.mm, 10
  %i.mo = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1068.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 1
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !19
  %i.mr = sext i8 %i.mq to i32
  %i.ms = add i32 %i.mn, -48
  %i.mt = add i32 %i.ms, %i.mr
  %i.mu = mul i32 %i.mt, 10
  %i.mv = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1068.i
  %i.mw = getelementptr i8, ptr %i.mv, i64 2
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !19
  %i.my = sext i8 %i.mx to i32
  %i.mz = add i32 %i.mu, -48
  %i.na = add i32 %i.mz, %i.my
  %i.nb = mul i32 %i.na, 10
  %indvars.iv.next1069.i.3 = add nsw i64 %indvars.iv1068.i, 4
  %i.nc = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1068.i
  %i.nd = getelementptr i8, ptr %i.nc, i64 3
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !19
  %i.nf = sext i8 %i.ne to i32
  %i.ng = add i32 %i.nb, -48
  %i.nh = add i32 %i.ng, %i.nf                    ; 2 uses
  %i.ni = add nuw nsw i32 %.3496936.i, 4          ; 2 uses
  %exitcond1072.not.i.3 = icmp eq i32 %i.ni, %.1494.i
  br i1 %exitcond1072.not.i.3, label %._crit_edge.thread.i.i.thread, label %.lr.ph939.i, !llvm.loop !42

.loopexit744.i:                                   ; preds = %bb.ce, %bb.cb
  %.2505.i = phi i32 [ %i.el, %bb.cb ], [ %i.kk, %bb.ce ] ; 4 uses
  %.6485.i = phi i32 [ %.5484.i, %bb.cb ], [ %.1494.i, %bb.ce ] ; 6 uses
  %.2478.i = phi i32 [ %spec.select597.i, %bb.cb ], [ %spec.select599.i, %bb.ce ] ; 4 uses
  %i.nj = add nuw nsw i32 %.6485.i, 8
  %i.nk = sdiv i32 %i.nj, 9
  %i.nl = icmp sgt i32 %.6485.i, 9
  br i1 %i.nl, label %.lr.ph.i.i, label %._crit_edge.thread.i.i.thread

.lr.ph.i.i:                                       ; preds = %.loopexit744.i, %.lr.ph.i.i
  %.040.i.i = phi i32 [ %i.nm, %.lr.ph.i.i ], [ 1, %.loopexit744.i ]
  %.02739.i.i = phi i32 [ %i.nn, %.lr.ph.i.i ], [ 0, %.loopexit744.i ] ; 3 uses
  %i.nm = shl i32 %.040.i.i, 1                    ; 2 uses
  %i.nn = add nuw nsw i32 %.02739.i.i, 1          ; 5 uses
  %i.no = icmp sgt i32 %i.nk, %i.nm
  br i1 %i.no, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !43

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.np = icmp samesign ult i32 %.02739.i.i, 7
  br i1 %i.np, label %._crit_edge.thread.i.i, label %bb.cg

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert284 = zext nneg i32 %i.nn to i64
  %.phi.trans.insert285 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert284
  %.pre = load ptr, ptr %.phi.trans.insert285, align 8, !tbaa !15 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i.thread, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.thread.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nr = zext nneg i32 %i.nn to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = load ptr, ptr %.pre, align 8, !tbaa !17
  store ptr %i.nt, ptr %i.ns, align 8, !tbaa !15
  br label %Balloc.exit.i.i

bb.cg:                                            ; preds = %._crit_edge.i.i
  %i.nu = shl nuw i32 2, %.02739.i.i              ; 2 uses
  %i.nv = add nsw i32 %i.nu, -1
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = shl nuw nsw i64 %i.nw, 2
  %i.ny = add nuw nsw i64 %i.nx, 36
  %i.nz = call noalias ptr @malloc(i64 noundef %i.ny) #19
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.oa, align 4, !tbaa !13
  br label %bb.ch

._crit_edge.thread.i.i.thread:                    ; preds = %.lr.ph939.i.prol.loopexit, %.lr.ph939.i, %.preheader.i, %.loopexit744.i, %._crit_edge.thread.i.i
  %.027.lcssa58.i.i372 = phi i32 [ %i.nn, %._crit_edge.thread.i.i ], [ 0, %.loopexit744.i ], [ 0, %.preheader.i ], [ 0, %.lr.ph939.i ], [ 0, %.lr.ph939.i.prol.loopexit ] ; 2 uses
  %.25051209.i371 = phi i32 [ %.2505.i, %._crit_edge.thread.i.i ], [ %.2505.i, %.loopexit744.i ], [ %i.kk, %.preheader.i ], [ %i.kk, %.lr.ph939.i ], [ %i.kk, %.lr.ph939.i.prol.loopexit ]
  %.64851213.i370 = phi i32 [ %.6485.i, %._crit_edge.thread.i.i ], [ %.6485.i, %.loopexit744.i ], [ %.1494.i, %.preheader.i ], [ %.1494.i, %.lr.ph939.i ], [ %.1494.i, %.lr.ph939.i.prol.loopexit ]
  %.24781217.i369 = phi i32 [ %.2478.i, %._crit_edge.thread.i.i ], [ %.2478.i, %.loopexit744.i ], [ %spec.select599.i, %.preheader.i ], [ %spec.select599.i, %.lr.ph939.i ], [ %spec.select599.i, %.lr.ph939.i.prol.loopexit ]
  %.111221.i368 = phi i32 [ %.8434.i, %._crit_edge.thread.i.i ], [ %.8434.i, %.loopexit744.i ], [ %.9.lcssa.i, %.preheader.i ], [ %.lcssa627.unr, %.lr.ph939.i.prol.loopexit ], [ %i.nh, %.lr.ph939.i ]
  %i.ob = shl nuw nsw i32 1, %.027.lcssa58.i.i372 ; 2 uses
  %i.oc = add nsw i32 %i.ob, -1
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = shl nuw nsw i64 %i.od, 2
  %i.of = add nuw nsw i64 %i.oe, 36
  %i.og = lshr i64 %i.of, 3
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.og
  store ptr %i.oh, ptr %i.h, align 8, !tbaa !12
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge.thread.i.i.thread
  %.111219.i = phi i32 [ %.111221.i368, %._crit_edge.thread.i.i.thread ], [ %.8434.i, %bb.cg ]
  %.24781215.i = phi i32 [ %.24781217.i369, %._crit_edge.thread.i.i.thread ], [ %.2478.i, %bb.cg ]
  %.64851211.i = phi i32 [ %.64851213.i370, %._crit_edge.thread.i.i.thread ], [ %.6485.i, %bb.cg ]
  %.25051207.i = phi i32 [ %.25051209.i371, %._crit_edge.thread.i.i.thread ], [ %.2505.i, %bb.cg ]
  %.027.lcssa56.i.i = phi i32 [ %.027.lcssa58.i.i372, %._crit_edge.thread.i.i.thread ], [ %i.nn, %bb.cg ]
  %i.oi = phi i32 [ %i.ob, %._crit_edge.thread.i.i.thread ], [ %i.nu, %bb.cg ]
  %.0.i.i.i = phi ptr [ %i.g, %._crit_edge.thread.i.i.thread ], [ %i.nz, %bb.cg ] ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %.027.lcssa56.i.i, ptr %i.oj, align 8, !tbaa !22
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 %i.oi, ptr %i.ok, align 4, !tbaa !24
  br label %Balloc.exit.i.i

Balloc.exit.i.i:                                  ; preds = %bb.ch, %bb.cf
  %.111218.i = phi i32 [ %.8434.i, %bb.cf ], [ %.111219.i, %bb.ch ]
  %.24781214.i = phi i32 [ %.2478.i, %bb.cf ], [ %.24781215.i, %bb.ch ] ; 3 uses
  %.64851210.i = phi i32 [ %.6485.i, %bb.cf ], [ %.64851211.i, %bb.ch ] ; 4 uses
  %.25051206.i = phi i32 [ %.2505.i, %bb.cf ], [ %.25051207.i, %bb.ch ] ; 3 uses
  %.1.i.i.i = phi ptr [ %.pre, %bb.cf ], [ %.0.i.i.i, %bb.ch ] ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 20
  %i.om = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  store i32 0, ptr %i.om, align 8, !tbaa !25
  %i.on = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 24
  store i32 %.111218.i, ptr %i.on, align 8, !tbaa !7
  store i32 1, ptr %i.ol, align 4, !tbaa !26
  %i.oo = icmp sgt i32 %.24781214.i, 9
  br i1 %i.oo, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %Balloc.exit.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %.2445.i, i64 9
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %bb.ci
end_hunk_0
begin_hunk_1_@g_dtoa:bb.a
  %i.ip = fsub double %i.hh, %i.io
  store double %i.ip, ptr %7, align 8, !tbaa !19
  %i.iq = trunc i32 %i.in to i8
  %i.ir = add i8 %i.iq, 48
  store i8 %i.ir, ptr %.ptr754.ptr, align 4, !tbaa !19
  %i.is = load double, ptr %7, align 8, !tbaa !19 ; 2 uses
  %i.it = fsub double 1.000000e+00, %i.is
  %i.iu = fcmp olt double %i.it, %.sroa.075.0
  br i1 %i.iu, label %.loopexit768, label %.lr.ph886.preheader

.lr.ph886.preheader:                              ; preds = %bb.bl
  %i.iv = add nuw i32 %.1481, 4
  %wide.trip.count = zext i32 %i.iv to i64
  br label %.lr.ph886

.lr.ph886:                                        ; preds = %.lr.ph886.preheader, %bb.bn
  %i.iw = phi double [ %i.jf, %bb.bn ], [ %i.is, %.lr.ph886.preheader ] ; 2 uses
  %.0.add884 = phi i64 [ %.0.add, %bb.bn ], [ 5, %.lr.ph886.preheader ] ; 4 uses
  %.sroa.075.1883 = phi double [ %i.iy, %bb.bn ], [ %.sroa.075.0, %.lr.ph886.preheader ] ; 2 uses
  %i.ix = fcmp olt double %i.iw, %.sroa.075.1883
  br i1 %i.ix, label %Bfree.exit695.loopexit769, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph886
  %exitcond.not = icmp eq i64 %.0.add884, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit770, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iy = fmul double %.sroa.075.1883, 1.000000e+01 ; 2 uses
  %i.iz = fmul double %i.iw, 1.000000e+01         ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.0.add884
  %i.ja = fptosi double %i.iz to i32              ; 2 uses
  %i.jb = sitofp i32 %i.ja to double
  %i.jc = fsub double %i.iz, %i.jb
  store double %i.jc, ptr %7, align 8, !tbaa !19
  %i.jd = trunc i32 %i.ja to i8
  %i.je = add i8 %i.jd, 48
  %.0.add = add nuw nsw i64 %.0.add884, 1         ; 2 uses
  store i8 %i.je, ptr %.0.ptr, align 1, !tbaa !19
  %i.jf = load double, ptr %7, align 8, !tbaa !19 ; 2 uses
  %i.jg = fsub double 1.000000e+00, %i.jf
  %i.jh = fcmp olt double %i.jg, %i.iy
  br i1 %i.jh, label %.loopexit768, label %.lr.ph886

bb.bo:                                            ; preds = %bb.bg
  %i.ji = fmul double %i.hv, %i.hm                ; 2 uses
  %i.jj = fptosi double %i.hh to i32              ; 2 uses
  %i.jk = sitofp i32 %i.jj to double
  %i.jl = fsub double %i.hh, %i.jk                ; 2 uses
  store double %i.jl, ptr %7, align 8, !tbaa !19
  %i.jm = fcmp oeq double %i.jl, 0.000000e+00
  %i.jn = trunc i32 %i.jj to i8
  %i.jo = add i8 %i.jn, 48
  store i8 %i.jo, ptr %.ptr754.ptr, align 4, !tbaa !19
  %i.jp = icmp eq i32 %.1481, 1
  %i.jq = or i1 %i.jm, %i.jp
  br i1 %i.jq, label %._crit_edge896, label %.lr.ph895

._crit_edge896:                                   ; preds = %.lr.ph895, %bb.bo
  %.1.add.lcssa888 = phi i64 [ 5, %bb.bo ], [ %.1.add, %.lr.ph895 ] ; 2 uses
  %i.jr = load double, ptr %7, align 8, !tbaa !19 ; 2 uses
  %i.js = fadd double %i.ji, 5.000000e-01
  %i.jt = fcmp ogt double %i.jr, %i.js
  br i1 %i.jt, label %.loopexit768, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge896
  %i.ju = fsub double 5.000000e-01, %i.ji
  %i.jv = fcmp olt double %i.jr, %i.ju
  br i1 %i.jv, label %.preheader766.preheader, label %.loopexit770

.preheader766.preheader:                          ; preds = %bb.bp
  %.ptr757.le = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.1.add.lcssa888
  br label %.preheader766

.preheader766:                                    ; preds = %.preheader766.preheader, %.preheader766
  %.2 = phi ptr [ %i.jw, %.preheader766 ], [ %.ptr757.le, %.preheader766.preheader ] ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !19
  %i.jy = icmp eq i8 %i.jx, 48
  br i1 %i.jy, label %.preheader766, label %Bfree.exit695, !llvm.loop !51

.lr.ph895:                                        ; preds = %bb.bo, %.lr.ph895
  %.1.add893 = phi i64 [ %.1.add, %.lr.ph895 ], [ 5, %bb.bo ] ; 2 uses
  %spec.select584892 = phi i32 [ %spec.select584, %.lr.ph895 ], [ %.1481, %bb.bo ]
  %.6499891 = phi i32 [ %i.jz, %.lr.ph895 ], [ 1, %bb.bo ]
  %i.jz = add nuw nsw i32 %.6499891, 1            ; 3 uses
  %i.ka = load double, ptr %7, align 8, !tbaa !19
  %i.kb = fmul double %i.ka, 1.000000e+01         ; 2 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.1.add893
  %i.kc = fptosi double %i.kb to i32              ; 2 uses
  %i.kd = sitofp i32 %i.kc to double
  %i.ke = fsub double %i.kb, %i.kd                ; 2 uses
  store double %i.ke, ptr %7, align 8, !tbaa !19
  %i.kf = fcmp une double %i.ke, 0.000000e+00
  %spec.select584 = select i1 %i.kf, i32 %spec.select584892, i32 %i.jz ; 2 uses
  %i.kg = trunc i32 %i.kc to i8
  %i.kh = add i8 %i.kg, 48
  %.1.add = add nuw nsw i64 %.1.add893, 1         ; 2 uses
  store i8 %i.kh, ptr %.1.ptr, align 1, !tbaa !19
  %i.ki = icmp eq i32 %i.jz, %spec.select584
  br i1 %i.ki, label %._crit_edge896, label %.lr.ph895

.loopexit770:                                     ; preds = %bb.bm, %bb.bp, %bb.bf, %bb.bb
  store double %i.ft, ptr %7, align 8, !tbaa !19
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit770, %rv_alloc.exit
  %i.kj = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, -1
  %i.kl = icmp slt i32 %.2465, 15
  %or.cond16 = and i1 %i.kl, %i.kk
  br i1 %or.cond16, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.km = sext i32 %.2465 to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr @tens, i64 %i.km
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !21 ; 7 uses
  %i.kp = icmp slt i32 %.0514704, 0
  %i.kq = icmp slt i32 %.0480708, 1
  %or.cond18 = and i1 %i.kq, %i.kp
  br i1 %or.cond18, label %bb.bs, label %.preheader

.preheader:                                       ; preds = %bb.br
  %i.kr = load double, ptr %7, align 8, !tbaa !19 ; 2 uses
  %i.ks = fdiv double %i.kr, %i.ko
  %i.kt = fptosi double %i.ks to i32              ; 3 uses
  %i.ku = sitofp i32 %i.kt to double
  %i.kv = fneg double %i.ku
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.kv, double %i.ko, double %i.kr)
  store double %i.kw, ptr %7, align 8, !tbaa !19
  %i.kx = trunc i32 %i.kt to i8
  %i.ky = add i8 %i.kx, 48
  store i8 %i.ky, ptr %.ptr754.ptr, align 4, !tbaa !19
  %i.kz = load double, ptr %7, align 8, !tbaa !19 ; 3 uses
  %i.la = fcmp une double %i.kz, 0.000000e+00
  br i1 %i.la, label %.lr.ph908.preheader, label %Bfree.exit695.loopexit

.lr.ph908.preheader:                              ; preds = %.preheader
  %i.lb = icmp eq i32 %.0480708, 1
  br i1 %i.lb, label %.lr.ph908._crit_edge, label %.lr.ph1257

bb.bs:                                            ; preds = %bb.br
  %i.lc = icmp slt i32 %.0480708, 0
  br i1 %i.lc, label %cmp.exit641.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ld = load double, ptr %7, align 8, !tbaa !19
  %i.le = fmul double %i.ko, 5.000000e+00
  %i.lf = fcmp ugt double %i.ld, %i.le
  br i1 %i.lf, label %cmp.exit641.thread728, label %cmp.exit641.thread

.lr.ph908:                                        ; preds = %.lr.ph1257
  %i.lg = add nuw nsw i32 %.75009061256, 1        ; 2 uses
  %i.lh = icmp eq i32 %i.lg, %.0480708
  br i1 %i.lh, label %.lr.ph908._crit_edge, label %.lr.ph1257

.lr.ph908._crit_edge:                             ; preds = %.lr.ph908, %.lr.ph908.preheader
  %.lcssa1179 = phi double [ %i.kz, %.lr.ph908.preheader ], [ %i.mb, %.lr.ph908 ]
  %.4.add907.lcssa = phi i64 [ 5, %.lr.ph908.preheader ], [ %.4.add, %.lr.ph908 ] ; 3 uses
  %.lcssa1176 = phi i32 [ %i.kt, %.lr.ph908.preheader ], [ %i.lv, %.lr.ph908 ]
  %i.li = fmul double %.lcssa1179, 2.000000e+00   ; 3 uses
  store double %i.li, ptr %7, align 8, !tbaa !19
  %i.lj = fcmp ogt double %i.li, %i.ko
  br i1 %i.lj, label %.loopexit768, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph908._crit_edge
  %.ptr759.le = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.4.add907.lcssa
  %i.lk = fcmp une double %i.li, %i.ko
  %i.ll = and i32 %.lcssa1176, 1
  %.not573 = icmp eq i32 %i.ll, 0
  %or.cond585 = select i1 %i.lk, i1 true, i1 %.not573
  br i1 %or.cond585, label %Bfree.exit695, label %.loopexit768

.loopexit768:                                     ; preds = %bb.bn, %bb.bl, %bb.bu, %.lr.ph908._crit_edge, %._crit_edge896
  %.5468 = phi i32 [ %.2465, %.lr.ph908._crit_edge ], [ %.2465, %bb.bu ], [ %.3466, %._crit_edge896 ], [ %.3466, %bb.bl ], [ %.3466, %bb.bn ] ; 2 uses
  %.5.idx = phi i64 [ %.4.add907.lcssa, %.lr.ph908._crit_edge ], [ %.4.add907.lcssa, %bb.bu ], [ %.1.add.lcssa888, %._crit_edge896 ], [ 5, %bb.bl ], [ %.0.add, %bb.bn ]
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.loopexit768
  %.6.idx = phi i64 [ %.5.idx, %.loopexit768 ], [ %.6.add, %bb.bw ] ; 2 uses
  %.6.add = add nsw i64 %.6.idx, -1               ; 4 uses
  %.ptr756 = getelementptr inbounds i8, ptr %.1.i.i, i64 %.6.add
  %i.lm = load i8, ptr %.ptr756, align 1, !tbaa !19 ; 2 uses
  %i.ln = icmp eq i8 %i.lm, 57
  br i1 %i.ln, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.lo = icmp eq i64 %.6.add, 4
  br i1 %i.lo, label %bb.bx, label %bb.bv, !llvm.loop !52

bb.bx:                                            ; preds = %bb.bw
  %i.lp = add nsw i32 %.5468, 1
  store i8 48, ptr %.ptr754.ptr, align 4, !tbaa !19
  br label %bb.by

.loopexit:                                        ; preds = %bb.bv
  %.ptr756.le = getelementptr inbounds i8, ptr %.1.i.i, i64 %.6.add
  %i.lq = add i8 %i.lm, 1
  br label %bb.by

bb.by:                                            ; preds = %.loopexit, %bb.bx
  %.6.idx1263 = phi i64 [ 5, %bb.bx ], [ %.6.idx, %.loopexit ]
  %i.lr = phi i8 [ 49, %bb.bx ], [ %i.lq, %.loopexit ]
  %.ptr756774 = phi ptr [ %.ptr754.ptr, %bb.bx ], [ %.ptr756.le, %.loopexit ]
  %.6469 = phi i32 [ %i.lp, %bb.bx ], [ %.5468, %.loopexit ]
  %.6.ptr776 = getelementptr inbounds i8, ptr %.1.i.i, i64 %.6.idx1263
  store i8 %i.lr, ptr %.ptr756774, align 1, !tbaa !19
  br label %Bfree.exit695

.lr.ph1257:                                       ; preds = %.lr.ph908.preheader, %.lr.ph908
  %.75009061256 = phi i32 [ %i.lg, %.lr.ph908 ], [ 1, %.lr.ph908.preheader ]
  %.4.add9071255 = phi i64 [ %.4.add, %.lr.ph908 ], [ 5, %.lr.ph908.preheader ] ; 2 uses
  %i.ls = phi double [ %i.mb, %.lr.ph908 ], [ %i.kz, %.lr.ph908.preheader ]
  %i.lt = fmul double %i.ls, 1.000000e+01         ; 2 uses
  %.4.ptr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.4.add9071255
  %i.lu = fdiv double %i.lt, %i.ko
  %i.lv = fptosi double %i.lu to i32              ; 3 uses
  %i.lw = sitofp i32 %i.lv to double
  %i.lx = fneg double %i.lw
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.lx, double %i.ko, double %i.lt)
  store double %i.ly, ptr %7, align 8, !tbaa !19
  %i.lz = trunc i32 %i.lv to i8
  %i.ma = add i8 %i.lz, 48
  %.4.add = add nuw nsw i64 %.4.add9071255, 1     ; 3 uses
  store i8 %i.ma, ptr %.4.ptr, align 1, !tbaa !19
  %i.mb = load double, ptr %7, align 8, !tbaa !19 ; 3 uses
  %i.mc = fcmp une double %i.mb, 0.000000e+00
  br i1 %i.mc, label %.lr.ph908, label %Bfree.exit695.loopexit

bb.bz:                                            ; preds = %bb.bq
  %i.md = icmp eq i32 %.2461718, 0                ; 5 uses
  br i1 %i.md, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.me = add nsw i32 %i.kj, 1075
  %i.mf = load i32, ptr %i.a, align 4
  %i.mg = sub nsw i32 54, %i.mf
  %i.mh = select i1 %.not546.not, i32 %i.me, i32 %i.mg ; 2 uses
  %i.mi = add nsw i32 %i.mh, %.1508
  %i.mj = add nsw i32 %i.mh, %.1454
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !15 ; 3 uses
  %.not.i.i618 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i618, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !17
  store ptr %i.mm, ptr %i.mk, align 8, !tbaa !15
  br label %i2b.exit

bb.cc:                                            ; preds = %bb.ca
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !12 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = ashr exact i64 %i.ms, 3
  %i.mu = add nsw i64 %i.mt, 5
  %i.mv = load i32, ptr %0, align 8, !tbaa !11
  %i.mw = sext i32 %i.mv to i64
  %.not26.i.i620 = icmp sgt i64 %i.mu, %i.mw
  br i1 %.not26.i.i620, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  store ptr %i.mx, ptr %i.mn, align 8, !tbaa !12
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.my = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.mz, align 4, !tbaa !13
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0.i.i621 = phi ptr [ %i.mo, %bb.cd ], [ %i.my, %bb.ce ] ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i.i621, i64 8
  store i32 1, ptr %i.na, align 8, !tbaa !22
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.i.i621, i64 12
  store i32 2, ptr %i.nb, align 4, !tbaa !24
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.cb, %bb.cf
  %.1.i.i619 = phi ptr [ %i.ml, %bb.cb ], [ %.0.i.i621, %bb.cf ] ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.1.i.i619, i64 20
  %i.nd = getelementptr inbounds nuw i8, ptr %.1.i.i619, i64 16
  store i32 0, ptr %i.nd, align 8, !tbaa !25
  %i.ne = getelementptr inbounds nuw i8, ptr %.1.i.i619, i64 24
  store i32 1, ptr %i.ne, align 8, !tbaa !7
  store i32 1, ptr %i.nc, align 4, !tbaa !26
  br label %bb.cg

bb.cg:                                            ; preds = %i2b.exit, %bb.bz
  %.2509 = phi i32 [ %i.mi, %i2b.exit ], [ %.1508, %bb.bz ] ; 2 uses
  %.2455 = phi i32 [ %i.mj, %i2b.exit ], [ %.1454, %bb.bz ] ; 4 uses
  %.0414 = phi ptr [ %.1.i.i619, %i2b.exit ], [ null, %bb.bz ] ; 3 uses
  %i.nf = icmp sgt i32 %.1508, 0
  %i.ng = icmp sgt i32 %.2455, 0
  %or.cond20 = select i1 %i.nf, i1 %i.ng, i1 false
  br i1 %or.cond20, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.nh = tail call i32 @llvm.umin.i32(i32 %.1508, i32 %.2455) ; 3 uses
  %i.ni = sub nsw i32 %.2509, %i.nh
  %i.nj = sub nsw i32 %.1508, %i.nh
  %i.nk = sub nsw i32 %.2455, %i.nh
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.3510 = phi i32 [ %i.ni, %bb.ch ], [ %.2509, %bb.cg ] ; 3 uses
  %.0458 = phi i32 [ %i.nj, %bb.ch ], [ %.1508, %bb.cg ]
  %.3456 = phi i32 [ %i.nk, %bb.ch ], [ %.2455, %bb.cg ] ; 3 uses
  %.not557 = icmp eq i32 %.0506, 0
  br i1 %.not557, label %Bfree.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.md, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nl = tail call fastcc ptr @pow5mult(ptr noundef %0, ptr noundef %.0414, i32 noundef %.0506) ; 4 uses
  %i.nm = tail call fastcc ptr @mult(ptr noundef %0, ptr noundef %i.nl, ptr noundef %i.cb) ; 3 uses
  %.not.i622 = icmp eq ptr %i.cb, null
  br i1 %.not.i622, label %Bfree.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nn = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !22 ; 2 uses
  %i.np = icmp sgt i32 %i.no, 7
  br i1 %i.np, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  tail call void @free(ptr noundef nonnull %i.cb) #17
  br label %Bfree.exit

bb.cn:                                            ; preds = %bb.cl
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nr = sext i32 %i.no to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.nr ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !15
  store ptr %i.nt, ptr %i.cb, align 8, !tbaa !17
  store ptr %i.cb, ptr %i.ns, align 8, !tbaa !15
  br label %Bfree.exit

bb.co:                                            ; preds = %bb.cj
  %i.nu = tail call fastcc ptr @pow5mult(ptr noundef %0, ptr noundef %i.cb, i32 noundef %.0506)
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.cn, %bb.cm, %bb.ck, %bb.co, %bb.ci
  %.1436 = phi ptr [ %i.cb, %bb.ci ], [ %i.nu, %bb.co ], [ %i.nm, %bb.ck ], [ %i.nm, %bb.cm ], [ %i.nm, %bb.cn ] ; 2 uses
  %.2416 = phi ptr [ %.0414, %bb.ci ], [ %.0414, %bb.co ], [ %i.nl, %bb.ck ], [ %i.nl, %bb.cm ], [ %i.nl, %bb.cn ] ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !15 ; 3 uses
  %.not.i.i623 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i623, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %Bfree.exit
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !17
  store ptr %i.nx, ptr %i.nv, align 8, !tbaa !15
  br label %i2b.exit627

bb.cq:                                            ; preds = %Bfree.exit
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !12 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = ashr exact i64 %i.od, 3
  %i.of = add nsw i64 %i.oe, 5
  %i.og = load i32, ptr %0, align 8, !tbaa !11
  %i.oh = sext i32 %i.og to i64
  %.not26.i.i625 = icmp sgt i64 %i.of, %i.oh
  br i1 %.not26.i.i625, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nz, i64 40
  store ptr %i.oi, ptr %i.ny, align 8, !tbaa !12
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.oj = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ok, align 4, !tbaa !13
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.0.i.i626 = phi ptr [ %i.nz, %bb.cr ], [ %i.oj, %bb.cs ] ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i.i626, i64 8
  store i32 1, ptr %i.ol, align 8, !tbaa !22
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i.i626, i64 12
  store i32 2, ptr %i.om, align 4, !tbaa !24
  br label %i2b.exit627

i2b.exit627:                                      ; preds = %bb.cp, %bb.ct
  %.1.i.i624 = phi ptr [ %i.nw, %bb.cp ], [ %.0.i.i626, %bb.ct ] ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.1.i.i624, i64 20
  %i.oo = getelementptr inbounds nuw i8, ptr %.1.i.i624, i64 16
  store i32 0, ptr %i.oo, align 8, !tbaa !25
  %i.op = getelementptr inbounds nuw i8, ptr %.1.i.i624, i64 24
  store i32 1, ptr %i.op, align 8, !tbaa !7
  store i32 1, ptr %i.on, align 4, !tbaa !26
  %i.oq = icmp sgt i32 %.0452, 0
  br i1 %i.oq, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %i2b.exit627
end_hunk_1
begin_hunk_2_@pow5mult:bb.a
bb.o:                                             ; preds = %bb.n
  %i.v = tail call fastcc ptr @mult(ptr noundef nonnull @cache, ptr noundef nonnull %.2, ptr noundef nonnull %.2) ; 3 uses
  store ptr %i.v, ptr %.2, align 8, !tbaa !17
  store ptr null, ptr %i.v, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.u, %bb.n ], [ %i.v, %bb.o ]
  tail call void @FREE_DTOA_LOCK(i32 noundef 1) #17
  br label %.backedge

.backedge:                                        ; preds = %bb.p, %bb.m
  %.2.be = phi ptr [ %.0, %bb.p ], [ %i.t, %bb.m ]
  br label %bb.h

.loopexit:                                        ; preds = %Bfree.exit, %bb.c
  %.029 = phi ptr [ %.026, %bb.c ], [ %.228, %Bfree.exit ]
  ret ptr %.029
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @mult(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26
  %i.e = icmp slt i32 %i.b, %i.d                  ; 2 uses
  %spec.select = select i1 %i.e, ptr %2, ptr %1   ; 4 uses
  %spec.select66 = select i1 %i.e, ptr %1, ptr %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select66, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %i.o = icmp sgt i32 %i.l, %i.n
  %i.p = zext i1 %i.o to i32
  %.060 = add nsw i32 %i.g, %i.p                  ; 5 uses
  %i.q = icmp slt i32 %.060, 8
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = sext i32 %.060 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  store ptr %i.v, ptr %i.t, align 8, !tbaa !15
  br label %Balloc.exit

bb.d:                                             ; preds = %bb.a
  %i.w = shl nuw i32 1, %.060                     ; 2 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i32 1, %.060                ; 3 uses
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 36               ; 2 uses
  %i.ag = lshr i64 %i.af, 3                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = add nsw i64 %i.an, %i.ag
  %i.ap = load i32, ptr %0, align 8, !tbaa !11
  %i.aq = sext i32 %i.ap to i64
  %.not26.i = icmp sgt i64 %i.ao, %i.aq
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !12
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.as = phi i64 [ %i.af, %bb.e ], [ %i.aa, %bb.d ]
  %i.at = phi i32 [ %i.ab, %bb.e ], [ %i.w, %bb.d ]
  %i.au = and i64 %i.as, 34359738360
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.aw, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = phi i32 [ %i.ab, %bb.f ], [ %i.at, %bb.g ]
  %.0.i = phi ptr [ %i.ai, %bb.f ], [ %i.av, %bb.g ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %.060, ptr %i.ay, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !24
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.h
  %.1.i = phi ptr [ %i.u, %bb.c ], [ %.0.i, %bb.h ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i, i64 20 ; 2 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !25
  %i.bc = getelementptr i8, ptr %.1.i, i64 24     ; 3 uses
  %i.bd = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %.idx
  %i.bf = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.bf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Balloc.exit
  %.1.i81 = ptrtoaddr ptr %.1.i to i64            ; 3 uses
  %i.bg = add i64 %.idx, %.1.i81
  %i.bh = add i64 %i.bg, 24
  %i.bi = add i64 %.1.i81, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bi)
  %i.bj = add i64 %umax, -25
  %i.bk = sub i64 %i.bj, %.1.i81
  %i.bl = and i64 %i.bk, -4
  %i.bm = add i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.bm, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %Balloc.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select, i64 24 ; 2 uses
  %i.bo = sext i32 %i.i to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %spec.select66, i64 24 ; 2 uses
  %i.br = sext i32 %i.k to i64
  %.idx79 = shl nsw i64 %i.br, 2
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %.idx79
  %i.bt = icmp sgt i32 %i.k, 0
  br i1 %i.bt, label %.lr.ph73, label %.preheader

.preheader:                                       ; preds = %bb.k, %._crit_edge
  br i1 %i.bf, label %.lr.ph76, label %.critedge

.lr.ph73:                                         ; preds = %._crit_edge, %bb.k
  %.05471 = phi ptr [ %i.ck, %bb.k ], [ %i.bc, %._crit_edge ] ; 2 uses
  %.05670 = phi ptr [ %i.bu, %bb.k ], [ %i.bq, %._crit_edge ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05670, i64 4 ; 2 uses
  %i.bv = load i32, ptr %.05670, align 4, !tbaa !7 ; 2 uses
  %.not65 = icmp eq i32 %i.bv, 0
  br i1 %.not65, label %bb.k, label %.preheader67

.preheader67:                                     ; preds = %.lr.ph73
  %i.bw = zext i32 %i.bv to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader67, %bb.i
  %.158 = phi ptr [ %i.bx, %bb.i ], [ %i.bn, %.preheader67 ] ; 2 uses
  %.055 = phi ptr [ %i.ch, %bb.i ], [ %.05471, %.preheader67 ] ; 3 uses
  %.0 = phi i64 [ %i.cf, %bb.i ], [ 0, %.preheader67 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.158, i64 4 ; 2 uses
  %i.by = load i32, ptr %.158, align 4, !tbaa !7
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bw
  %i.cb = load i32, ptr %.055, align 4, !tbaa !7
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %.0, %i.cc
  %i.ce = add nuw i64 %i.cd, %i.ca                ; 2 uses
  %i.cf = lshr i64 %i.ce, 32                      ; 2 uses
  %i.cg = trunc i64 %i.ce to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %.055, i64 4 ; 2 uses
  store i32 %i.cg, ptr %.055, align 4, !tbaa !7
  %i.ci = icmp ult ptr %i.bx, %i.bp
  br i1 %i.ci, label %bb.i, label %bb.j, !llvm.loop !55

bb.j:                                             ; preds = %bb.i
  %i.cj = trunc nuw i64 %i.cf to i32
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph73, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.05471, i64 4
  %i.cl = icmp ult ptr %i.bu, %i.bs
  br i1 %i.cl, label %.lr.ph73, label %.preheader, !llvm.loop !56

.lr.ph76:                                         ; preds = %.preheader, %bb.l
  %.175 = phi ptr [ %i.cm, %bb.l ], [ %i.be, %.preheader ]
  %.05974 = phi i32 [ %i.co, %bb.l ], [ %i.l, %.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.175, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph76
  %i.co = add nsw i32 %.05974, -1
  %3 = icmp samesign ugt i32 %.05974, 1
  br i1 %3, label %.lr.ph76, label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %.lr.ph76, %bb.l, %.preheader
  %.059.lcssa = phi i32 [ %i.l, %.preheader ], [ 0, %bb.l ], [ %.05974, %.lr.ph76 ]
  store i32 %.059.lcssa, ptr %i.ba, align 4, !tbaa !26
  ret ptr %.1.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @lshift(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -2147483593, -2147483648) %2) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ashr i32 %2, 5                           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = add nsw i32 %i.f, %i.b                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %.not53 = icmp slt i32 %i.g, %i.i
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04455 = phi i32 [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %.04554 = phi i32 [ %i.k, %.lr.ph ], [ %i.i, %bb.a ]
  %i.j = add nsw i32 %.04455, 1                   ; 2 uses
  %i.k = shl i32 %.04554, 1                       ; 2 uses
  %.not = icmp slt i32 %i.g, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.044.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.j, %.lr.ph ] ; 5 uses
  %i.l = icmp slt i32 %.044.lcssa, 8
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = sext i32 %.044.lcssa to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  store ptr %i.q, ptr %i.o, align 8, !tbaa !15
  br label %Balloc.exit

bb.d:                                             ; preds = %._crit_edge
  %i.r = shl nuw i32 1, %.044.lcssa               ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.w = shl nuw nsw i32 1, %.044.lcssa           ; 3 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 36                ; 2 uses
  %i.ab = lshr i64 %i.aa, 3                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ab
  %i.ak = load i32, ptr %0, align 8, !tbaa !11
  %i.al = sext i32 %i.ak to i64
  %.not26.i = icmp sgt i64 %i.aj, %i.al
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !12
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.an = phi i64 [ %i.aa, %bb.e ], [ %i.v, %bb.d ]
  %i.ao = phi i32 [ %i.w, %bb.e ], [ %i.r, %bb.d ]
  %i.ap = and i64 %i.an, 34359738360
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ar, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i32 [ %i.w, %bb.f ], [ %i.ao, %bb.g ]
  %.0.i = phi ptr [ %i.ad, %bb.f ], [ %i.aq, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %.044.lcssa, ptr %i.at, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %i.as, ptr %i.au, align 4, !tbaa !24
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.h
  %.1.i = phi ptr [ %i.p, %bb.c ], [ %.0.i, %bb.h ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i, i64 20 ; 2 uses
  store i32 0, ptr %i.av, align 4, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !25
  %i.ax = getelementptr i8, ptr %.1.i, i64 24     ; 2 uses
  %i.ay = icmp sgt i32 %i.b, 0
  br i1 %i.ay, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %Balloc.exit
  %i.az = zext nneg i32 %i.b to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.ba, i1 false), !tbaa !7
  %i.bb = add nsw i32 %i.b, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = getelementptr i8, ptr %.1.i, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.be, i64 28
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %.lr.ph58.preheader, %Balloc.exit
  %.040.lcssa = phi ptr [ %i.ax, %Balloc.exit ], [ %scevgep, %.lr.ph58.preheader ] ; 6 uses
  %.040.lcssa75 = ptrtoaddr ptr %.040.lcssa to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !26
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bh ; 2 uses
  %i.bj = and i32 %2, 31                          ; 3 uses
  %.not49 = icmp eq i32 %i.bj, 0
  br i1 %.not49, label %.preheader.preheader, label %bb.i

.preheader.preheader:                             ; preds = %._crit_edge59
  %i.bk = shl nsw i64 %i.bh, 2
  %i.bl = add i64 %i.bk, %i.a
  %i.bm = add i64 %i.bl, 24
  %i.bn = add i64 %i.a, 28
  %i.bo = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bn)
  %i.bp = add i64 %i.bo, -25
  %i.bq = sub i64 %i.bp, %i.a                     ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 60
  br i1 %min.iters.check, label %.preheader.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.bt = sub i64 %.040.lcssa75, %i.a
  %i.bu = add i64 %i.bt, -25
  %diff.check = icmp ult i64 %i.bu, 31
  br i1 %diff.check, label %.preheader.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bv = shl i64 %n.vec, 2                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bf, i64 %i.bv
  %i.bx = getelementptr i8, ptr %.040.lcssa, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.by ; 2 uses
  %next.gep76 = getelementptr i8, ptr %.040.lcssa, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load77 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !7
  %i.ca = getelementptr i8, ptr %next.gep76, i64 16
  store <4 x i32> %wide.load, ptr %next.gep76, align 4, !tbaa !7
  store <4 x i32> %wide.load77, ptr %i.ca, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader79

.preheader.preheader79:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.142.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.preheader.preheader ], [ %i.bw, %middle.block ]
  %.2.ph = phi ptr [ %.040.lcssa, %vector.memcheck ], [ %.040.lcssa, %.preheader.preheader ], [ %i.bx, %middle.block ]
  br label %.preheader

bb.i:                                             ; preds = %._crit_edge59
  %i.cc = sub nuw nsw i32 32, %i.bj
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.041 = phi ptr [ %i.bf, %bb.i ], [ %i.ch, %bb.j ] ; 3 uses
  %.1 = phi ptr [ %.040.lcssa, %bb.i ], [ %i.cg, %bb.j ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.i ], [ %i.cj, %bb.j ]
  %i.cd = load i32, ptr %.041, align 4, !tbaa !7
  %i.ce = shl i32 %i.cd, %i.bj
  %i.cf = or i32 %i.ce, %.0
  %i.cg = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  store i32 %i.cf, ptr %.1, align 4, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.041, i64 4 ; 2 uses
  %i.ci = load i32, ptr %.041, align 4, !tbaa !7
  %i.cj = lshr i32 %i.ci, %i.cc                   ; 3 uses
  %i.ck = icmp ult ptr %i.ch, %i.bi
  br i1 %i.ck, label %bb.j, label %bb.k, !llvm.loop !60
end_hunk_2
begin_hunk_3_@dtoa_fixedpoint:bb.a

bb.bk:                                            ; preds = %._crit_edge824
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge824, %bb.bk, %bb.bh
  %.sroa.071.0 = phi double [ %.sroa.0.1, %bb.bk ], [ %i.hx, %._crit_edge824 ], [ %i.hx, %bb.bh ] ; 2 uses
  %i.in = fptosi double %i.hh to i32              ; 2 uses
  %i.io = sitofp i32 %i.in to double
  %i.ip = fsub double %i.hh, %i.io
  store double %i.ip, ptr %7, align 8, !tbaa !19
  %i.iq = trunc i32 %i.in to i8
  %i.ir = add i8 %i.iq, 48
  store i8 %i.ir, ptr %.ptr715.ptr, align 4, !tbaa !19
  %i.is = load double, ptr %7, align 8, !tbaa !19 ; 2 uses
  %i.it = fsub double 1.000000e+00, %i.is
  %i.iu = fcmp olt double %i.it, %.sroa.071.0
  br i1 %i.iu, label %.loopexit730, label %.lr.ph832.preheader

.lr.ph832.preheader:                              ; preds = %bb.bl
  %i.iv = add nuw i32 %.1466, 4
  %wide.trip.count = zext i32 %i.iv to i64
  br label %.lr.ph832

.lr.ph832:                                        ; preds = %.lr.ph832.preheader, %bb.bn
  %i.iw = phi double [ %i.jf, %bb.bn ], [ %i.is, %.lr.ph832.preheader ] ; 2 uses
  %.0.add830 = phi i64 [ %.0.add, %bb.bn ], [ 5, %.lr.ph832.preheader ] ; 4 uses
  %.sroa.071.1829 = phi double [ %i.iy, %bb.bn ], [ %.sroa.071.0, %.lr.ph832.preheader ] ; 2 uses
  %i.ix = fcmp olt double %i.iw, %.sroa.071.1829
  br i1 %i.ix, label %Bfree.exit664.loopexit731, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph832
  %exitcond.not = icmp eq i64 %.0.add830, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit732, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iy = fmul double %.sroa.071.1829, 1.000000e+01 ; 2 uses
  %i.iz = fmul double %i.iw, 1.000000e+01         ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.0.add830
  %i.ja = fptosi double %i.iz to i32              ; 2 uses
  %i.jb = sitofp i32 %i.ja to double
  %i.jc = fsub double %i.iz, %i.jb
  store double %i.jc, ptr %7, align 8, !tbaa !19
  %i.jd = trunc i32 %i.ja to i8
  %i.je = add i8 %i.jd, 48
  %.0.add = add nuw nsw i64 %.0.add830, 1         ; 2 uses
  store i8 %i.je, ptr %.0.ptr, align 1, !tbaa !19
  %i.jf = load double, ptr %7, align 8, !tbaa !19 ; 2 uses
  %i.jg = fsub double 1.000000e+00, %i.jf
  %i.jh = fcmp olt double %i.jg, %i.iy
  br i1 %i.jh, label %.loopexit730, label %.lr.ph832

bb.bo:                                            ; preds = %bb.bg
  %i.ji = fmul double %i.hv, %i.hm                ; 2 uses
  %i.jj = fptosi double %i.hh to i32              ; 2 uses
  %i.jk = sitofp i32 %i.jj to double
  %i.jl = fsub double %i.hh, %i.jk                ; 2 uses
  store double %i.jl, ptr %7, align 8, !tbaa !19
  %i.jm = fcmp oeq double %i.jl, 0.000000e+00
  %i.jn = trunc i32 %i.jj to i8
  %i.jo = add i8 %i.jn, 48
  store i8 %i.jo, ptr %.ptr715.ptr, align 4, !tbaa !19
  %i.jp = icmp eq i32 %.1466, 1
  %i.jq = or i1 %i.jm, %i.jp
  br i1 %i.jq, label %._crit_edge842, label %.lr.ph841

._crit_edge842:                                   ; preds = %.lr.ph841, %bb.bo
  %.1.add.lcssa834 = phi i64 [ 5, %bb.bo ], [ %.1.add, %.lr.ph841 ] ; 2 uses
  %i.jr = load double, ptr %7, align 8, !tbaa !19 ; 2 uses
  %i.js = fadd double %i.ji, 5.000000e-01
  %i.jt = fcmp ogt double %i.jr, %i.js
  br i1 %i.jt, label %.loopexit730, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge842
  %i.ju = fsub double 5.000000e-01, %i.ji
  %i.jv = fcmp olt double %i.jr, %i.ju
  br i1 %i.jv, label %.preheader728.preheader, label %.loopexit732

.preheader728.preheader:                          ; preds = %bb.bp
  %.ptr718.le = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.1.add.lcssa834
  br label %.preheader728

.preheader728:                                    ; preds = %.preheader728.preheader, %.preheader728
  %.2 = phi ptr [ %i.jw, %.preheader728 ], [ %.ptr718.le, %.preheader728.preheader ] ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !19
  %i.jy = icmp eq i8 %i.jx, 48
  br i1 %i.jy, label %.preheader728, label %Bfree.exit664, !llvm.loop !76

.lr.ph841:                                        ; preds = %bb.bo, %.lr.ph841
  %.1.add839 = phi i64 [ %.1.add, %.lr.ph841 ], [ 5, %bb.bo ] ; 2 uses
  %spec.select557838 = phi i32 [ %spec.select557, %.lr.ph841 ], [ %.1466, %bb.bo ]
  %.6484837 = phi i32 [ %i.jz, %.lr.ph841 ], [ 1, %bb.bo ]
  %i.jz = add nuw nsw i32 %.6484837, 1            ; 3 uses
  %i.ka = load double, ptr %7, align 8, !tbaa !19
  %i.kb = fmul double %i.ka, 1.000000e+01         ; 2 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.1.add839
  %i.kc = fptosi double %i.kb to i32              ; 2 uses
  %i.kd = sitofp i32 %i.kc to double
  %i.ke = fsub double %i.kb, %i.kd                ; 2 uses
  store double %i.ke, ptr %7, align 8, !tbaa !19
  %i.kf = fcmp une double %i.ke, 0.000000e+00
  %spec.select557 = select i1 %i.kf, i32 %spec.select557838, i32 %i.jz ; 2 uses
  %i.kg = trunc i32 %i.kc to i8
  %i.kh = add i8 %i.kg, 48
  %.1.add = add nuw nsw i64 %.1.add839, 1         ; 2 uses
  store i8 %i.kh, ptr %.1.ptr, align 1, !tbaa !19
  %i.ki = icmp eq i32 %i.jz, %spec.select557
  br i1 %i.ki, label %._crit_edge842, label %.lr.ph841

.loopexit732:                                     ; preds = %bb.bm, %bb.bp, %bb.bf, %bb.bb
  store double %i.ft, ptr %7, align 8, !tbaa !19
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit732, %rv_alloc.exit
  %i.kj = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, -1
  %i.kl = icmp slt i32 %.2450, 15
  %or.cond16 = and i1 %i.kl, %i.kk
  br i1 %or.cond16, label %bb.br, label %bb.by

bb.br:                                            ; preds = %bb.bq
  %i.km = sext i32 %.2450 to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr @tens, i64 %i.km
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !21 ; 6 uses
  %i.kp = icmp slt i32 %.0497673, 0
  %i.kq = icmp slt i32 %.0465677, 1
  %or.cond18 = and i1 %i.kq, %i.kp
  br i1 %or.cond18, label %bb.bs, label %.preheader

.preheader:                                       ; preds = %bb.br
  %i.kr = load double, ptr %7, align 8, !tbaa !19 ; 2 uses
  %i.ks = fdiv double %i.kr, %i.ko
  %i.kt = fptosi double %i.ks to i32              ; 2 uses
  %i.ku = sitofp i32 %i.kt to double
  %i.kv = fneg double %i.ku
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.kv, double %i.ko, double %i.kr)
  store double %i.kw, ptr %7, align 8, !tbaa !19
  %i.kx = trunc i32 %i.kt to i8
  %i.ky = add i8 %i.kx, 48
  store i8 %i.ky, ptr %.ptr715.ptr, align 4, !tbaa !19
  %i.kz = load double, ptr %7, align 8, !tbaa !19 ; 3 uses
  %i.la = fcmp une double %i.kz, 0.000000e+00
  br i1 %i.la, label %.lr.ph854.preheader, label %Bfree.exit664.loopexit

.lr.ph854.preheader:                              ; preds = %.preheader
  %i.lb = icmp eq i32 %.0465677, 1
  br i1 %i.lb, label %.lr.ph854._crit_edge, label %.lr.ph1154

bb.bs:                                            ; preds = %bb.br
  %i.lc = icmp slt i32 %.0465677, 0
  br i1 %i.lc, label %cmp.exit610.thread697, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ld = load double, ptr %7, align 8, !tbaa !19
  %i.le = fmul double %i.ko, 5.000000e+00
  %i.lf = fcmp ugt double %i.ld, %i.le
  br i1 %i.lf, label %cmp.exit610.thread, label %cmp.exit610.thread697

.lr.ph854:                                        ; preds = %.lr.ph1154
  %i.lg = add nuw nsw i32 %.74858521153, 1        ; 2 uses
  %i.lh = icmp eq i32 %i.lg, %.0465677
  br i1 %i.lh, label %.lr.ph854._crit_edge, label %.lr.ph1154

.lr.ph854._crit_edge:                             ; preds = %.lr.ph854, %.lr.ph854.preheader
  %.lcssa1090 = phi double [ %i.kz, %.lr.ph854.preheader ], [ %i.lz, %.lr.ph854 ]
  %.4.add853.lcssa = phi i64 [ 5, %.lr.ph854.preheader ], [ %.4.add, %.lr.ph854 ] ; 2 uses
  %.ptr720.le = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.4.add853.lcssa
  %i.li = fmul double %.lcssa1090, 2.000000e+00   ; 2 uses
  store double %i.li, ptr %7, align 8, !tbaa !19
  %i.lj = fcmp ult double %i.li, %i.ko
  br i1 %i.lj, label %Bfree.exit664, label %.loopexit730

.loopexit730:                                     ; preds = %bb.bn, %bb.bl, %.lr.ph854._crit_edge, %._crit_edge842
  %.5453 = phi i32 [ %.2450, %.lr.ph854._crit_edge ], [ %.3451, %._crit_edge842 ], [ %.3451, %bb.bl ], [ %.3451, %bb.bn ] ; 2 uses
  %.5.idx = phi i64 [ %.4.add853.lcssa, %.lr.ph854._crit_edge ], [ %.1.add.lcssa834, %._crit_edge842 ], [ 5, %bb.bl ], [ %.0.add, %bb.bn ]
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %.loopexit730
  %.6.idx = phi i64 [ %.5.idx, %.loopexit730 ], [ %.6.add, %bb.bv ] ; 2 uses
  %.6.add = add nsw i64 %.6.idx, -1               ; 4 uses
  %.ptr717 = getelementptr inbounds i8, ptr %.1.i.i, i64 %.6.add
  %i.lk = load i8, ptr %.ptr717, align 1, !tbaa !19 ; 2 uses
  %i.ll = icmp eq i8 %i.lk, 57
  br i1 %i.ll, label %bb.bv, label %.loopexit

bb.bv:                                            ; preds = %bb.bu
  %i.lm = icmp eq i64 %.6.add, 4
  br i1 %i.lm, label %bb.bw, label %bb.bu, !llvm.loop !77

bb.bw:                                            ; preds = %bb.bv
  %i.ln = add nsw i32 %.5453, 1
  store i8 48, ptr %.ptr715.ptr, align 4, !tbaa !19
  br label %bb.bx

.loopexit:                                        ; preds = %bb.bu
  %.ptr717.le = getelementptr inbounds i8, ptr %.1.i.i, i64 %.6.add
  %i.lo = add i8 %i.lk, 1
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit, %bb.bw
  %.6.idx1159 = phi i64 [ 5, %bb.bw ], [ %.6.idx, %.loopexit ]
  %i.lp = phi i8 [ 49, %bb.bw ], [ %i.lo, %.loopexit ]
  %.ptr717736 = phi ptr [ %.ptr715.ptr, %bb.bw ], [ %.ptr717.le, %.loopexit ]
  %.6454 = phi i32 [ %i.ln, %bb.bw ], [ %.5453, %.loopexit ]
  %.6.ptr738 = getelementptr inbounds i8, ptr %.1.i.i, i64 %.6.idx1159
  store i8 %i.lp, ptr %.ptr717736, align 1, !tbaa !19
  br label %Bfree.exit664

.lr.ph1154:                                       ; preds = %.lr.ph854.preheader, %.lr.ph854
  %.74858521153 = phi i32 [ %i.lg, %.lr.ph854 ], [ 1, %.lr.ph854.preheader ]
  %.4.add8531152 = phi i64 [ %.4.add, %.lr.ph854 ], [ 5, %.lr.ph854.preheader ] ; 2 uses
  %i.lq = phi double [ %i.lz, %.lr.ph854 ], [ %i.kz, %.lr.ph854.preheader ]
  %i.lr = fmul double %i.lq, 1.000000e+01         ; 2 uses
  %.4.ptr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.4.add8531152
  %i.ls = fdiv double %i.lr, %i.ko
  %i.lt = fptosi double %i.ls to i32              ; 2 uses
  %i.lu = sitofp i32 %i.lt to double
  %i.lv = fneg double %i.lu
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.lv, double %i.ko, double %i.lr)
  store double %i.lw, ptr %7, align 8, !tbaa !19
  %i.lx = trunc i32 %i.lt to i8
  %i.ly = add i8 %i.lx, 48
  %.4.add = add nuw nsw i64 %.4.add8531152, 1     ; 3 uses
  store i8 %i.ly, ptr %.4.ptr, align 1, !tbaa !19
  %i.lz = load double, ptr %7, align 8, !tbaa !19 ; 3 uses
  %i.ma = fcmp une double %i.lz, 0.000000e+00
  br i1 %i.ma, label %.lr.ph854, label %Bfree.exit664.loopexit

bb.by:                                            ; preds = %bb.bq
  %i.mb = icmp eq i32 %.2446687, 0                ; 5 uses
  br i1 %i.mb, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mc = add nsw i32 %i.kj, 1075
  %i.md = load i32, ptr %i.a, align 4
  %i.me = sub nsw i32 54, %i.md
  %i.mf = select i1 %.not524.not, i32 %i.mc, i32 %i.me ; 2 uses
  %i.mg = add nsw i32 %i.mf, %.1491
  %i.mh = add nsw i32 %i.mf, %.1439
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !15 ; 3 uses
  %.not.i.i587 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i587, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !17
  store ptr %i.mk, ptr %i.mi, align 8, !tbaa !15
  br label %i2b.exit

bb.cb:                                            ; preds = %bb.bz
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !12 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = ashr exact i64 %i.mq, 3
  %i.ms = add nsw i64 %i.mr, 5
  %i.mt = load i32, ptr %0, align 8, !tbaa !11
  %i.mu = sext i32 %i.mt to i64
  %.not26.i.i589 = icmp sgt i64 %i.ms, %i.mu
  br i1 %.not26.i.i589, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  store ptr %i.mv, ptr %i.ml, align 8, !tbaa !12
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.mw = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.mx, align 4, !tbaa !13
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.0.i.i590 = phi ptr [ %i.mm, %bb.cc ], [ %i.mw, %bb.cd ] ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.0.i.i590, i64 8
  store i32 1, ptr %i.my, align 8, !tbaa !22
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i.i590, i64 12
  store i32 2, ptr %i.mz, align 4, !tbaa !24
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.ca, %bb.ce
  %.1.i.i588 = phi ptr [ %i.mj, %bb.ca ], [ %.0.i.i590, %bb.ce ] ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.1.i.i588, i64 20
  %i.nb = getelementptr inbounds nuw i8, ptr %.1.i.i588, i64 16
  store i32 0, ptr %i.nb, align 8, !tbaa !25
  %i.nc = getelementptr inbounds nuw i8, ptr %.1.i.i588, i64 24
  store i32 1, ptr %i.nc, align 8, !tbaa !7
  store i32 1, ptr %i.na, align 4, !tbaa !26
  br label %bb.cf

bb.cf:                                            ; preds = %i2b.exit, %bb.by
  %.2492 = phi i32 [ %i.mg, %i2b.exit ], [ %.1491, %bb.by ] ; 2 uses
  %.2440 = phi i32 [ %i.mh, %i2b.exit ], [ %.1439, %bb.by ] ; 4 uses
  %.0399 = phi ptr [ %.1.i.i588, %i2b.exit ], [ null, %bb.by ] ; 3 uses
  %i.nd = icmp sgt i32 %.1491, 0
  %i.ne = icmp sgt i32 %.2440, 0
  %or.cond20 = select i1 %i.nd, i1 %i.ne, i1 false
  br i1 %or.cond20, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nf = tail call i32 @llvm.umin.i32(i32 %.1491, i32 %.2440) ; 3 uses
  %i.ng = sub nsw i32 %.2492, %i.nf
  %i.nh = sub nsw i32 %.1491, %i.nf
  %i.ni = sub nsw i32 %.2440, %i.nf
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.3493 = phi i32 [ %i.ng, %bb.cg ], [ %.2492, %bb.cf ] ; 3 uses
  %.0443 = phi i32 [ %i.nh, %bb.cg ], [ %.1491, %bb.cf ]
  %.3441 = phi i32 [ %i.ni, %bb.cg ], [ %.2440, %bb.cf ] ; 3 uses
  %.not535 = icmp eq i32 %.0489, 0
  br i1 %.not535, label %Bfree.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.mb, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nj = tail call fastcc ptr @pow5mult(ptr noundef %0, ptr noundef %.0399, i32 noundef %.0489) ; 4 uses
  %i.nk = tail call fastcc ptr @mult(ptr noundef %0, ptr noundef %i.nj, ptr noundef %i.cb) ; 3 uses
  %.not.i591 = icmp eq ptr %i.cb, null
  br i1 %.not.i591, label %Bfree.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !22 ; 2 uses
  %i.nn = icmp sgt i32 %i.nm, 7
  br i1 %i.nn, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  tail call void @free(ptr noundef nonnull %i.cb) #17
  br label %Bfree.exit

bb.cm:                                            ; preds = %bb.ck
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.np = sext i32 %i.nm to i64
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.np ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !15
  store ptr %i.nr, ptr %i.cb, align 8, !tbaa !17
  store ptr %i.cb, ptr %i.nq, align 8, !tbaa !15
  br label %Bfree.exit

bb.cn:                                            ; preds = %bb.ci
  %i.ns = tail call fastcc ptr @pow5mult(ptr noundef %0, ptr noundef %i.cb, i32 noundef %.0489)
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.cm, %bb.cl, %bb.cj, %bb.cn, %bb.ch
  %.1421 = phi ptr [ %i.cb, %bb.ch ], [ %i.ns, %bb.cn ], [ %i.nk, %bb.cj ], [ %i.nk, %bb.cl ], [ %i.nk, %bb.cm ] ; 2 uses
  %.2401 = phi ptr [ %.0399, %bb.ch ], [ %.0399, %bb.cn ], [ %i.nj, %bb.cj ], [ %i.nj, %bb.cl ], [ %i.nj, %bb.cm ] ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !15 ; 3 uses
  %.not.i.i592 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i592, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %Bfree.exit
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !17
  store ptr %i.nv, ptr %i.nt, align 8, !tbaa !15
  br label %i2b.exit596

bb.cp:                                            ; preds = %Bfree.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !12 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = ashr exact i64 %i.ob, 3
  %i.od = add nsw i64 %i.oc, 5
  %i.oe = load i32, ptr %0, align 8, !tbaa !11
  %i.of = sext i32 %i.oe to i64
  %.not26.i.i594 = icmp sgt i64 %i.od, %i.of
  br i1 %.not26.i.i594, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  store ptr %i.og, ptr %i.nw, align 8, !tbaa !12
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.oh = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.oi, align 4, !tbaa !13
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0.i.i595 = phi ptr [ %i.nx, %bb.cq ], [ %i.oh, %bb.cr ] ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.i.i595, i64 8
  store i32 1, ptr %i.oj, align 8, !tbaa !22
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i.i595, i64 12
  store i32 2, ptr %i.ok, align 4, !tbaa !24
  br label %i2b.exit596

i2b.exit596:                                      ; preds = %bb.co, %bb.cs
  %.1.i.i593 = phi ptr [ %i.nu, %bb.co ], [ %.0.i.i595, %bb.cs ] ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.1.i.i593, i64 20
  %i.om = getelementptr inbounds nuw i8, ptr %.1.i.i593, i64 16
  store i32 0, ptr %i.om, align 8, !tbaa !25
  %i.on = getelementptr inbounds nuw i8, ptr %.1.i.i593, i64 24
  store i32 1, ptr %i.on, align 8, !tbaa !7
  store i32 1, ptr %i.ol, align 4, !tbaa !26
  %i.oo = icmp sgt i32 %.0437, 0
  br i1 %i.oo, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %i2b.exit596
end_hunk_3
