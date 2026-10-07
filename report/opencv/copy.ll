Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/copy?download=true
inline.NumInlined: 329
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE:bb.a
  %i.jf = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !22
  %gep296.i.3 = getelementptr [4 x i8], ptr %invariant.gep295.i, i64 %indvars.iv.next256.i.2
  store i32 %i.jg, ptr %gep296.i.3, align 4, !tbaa !22
  %indvars.iv.next256.i.3 = add nuw nsw i64 %indvars.iv255.i, 4 ; 2 uses
  %niter324.next.3 = add i64 %niter324, 4         ; 2 uses
  %niter324.ncmp.3 = icmp eq i64 %niter324.next.3, %unroll_iter323
  br i1 %niter324.ncmp.3, label %.loopexit178.us.i.loopexit.unr-lcssa, label %.lr.ph206.us.i, !llvm.loop !208

.loopexit178.us.i.loopexit.unr-lcssa:             ; preds = %.lr.ph206.us.i
  br i1 %lcmp.mod321.not, label %.loopexit178.us.i, label %.lr.ph206.us.i.epil.preheader

.lr.ph206.us.i.epil.preheader:                    ; preds = %.loopexit178.us.i.loopexit.unr-lcssa, %.lr.ph206.us.preheader.i
  %indvars.iv255.i.epil.init = phi i64 [ 0, %.lr.ph206.us.preheader.i ], [ %indvars.iv.next256.i.3, %.loopexit178.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod322)
  br label %.lr.ph206.us.i.epil

.lr.ph206.us.i.epil:                              ; preds = %.lr.ph206.us.i.epil, %.lr.ph206.us.i.epil.preheader
  %indvars.iv255.i.epil = phi i64 [ %indvars.iv255.i.epil.init, %.lr.ph206.us.i.epil.preheader ], [ %indvars.iv.next256.i.epil, %.lr.ph206.us.i.epil ] ; 3 uses
  %epil.iter320 = phi i64 [ 0, %.lr.ph206.us.i.epil.preheader ], [ %epil.iter320.next, %.lr.ph206.us.i.epil ]
  %gep294.i.epil.a = getelementptr [4 x i8], ptr %invariant.gep293.i.a, i64 %indvars.iv255.i.epil
  %i.jh = load i32, ptr %gep294.i.epil.a, align 4, !tbaa !22
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !22
  %gep296.i.epil = getelementptr [4 x i8], ptr %invariant.gep295.i, i64 %indvars.iv255.i.epil
  store i32 %i.jk, ptr %gep296.i.epil, align 4, !tbaa !22
  %indvars.iv.next256.i.epil = add nuw nsw i64 %indvars.iv255.i.epil, 1
  %epil.iter320.next = add i64 %epil.iter320, 1   ; 2 uses
  %epil.iter320.cmp.not = icmp eq i64 %epil.iter320.next, %xtraiter319
  br i1 %epil.iter320.cmp.not, label %.loopexit178.us.i, label %.lr.ph206.us.i.epil, !llvm.loop !209

.loopexit178.us.i:                                ; preds = %.loopexit178.us.i.loopexit.unr-lcssa, %.lr.ph206.us.i.epil, %.preheader177.us.i
  %i.jl = add nuw nsw i32 %.2159209.us.i, 1       ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0210.us.i, i64 %i.cz
  %i.jn = getelementptr inbounds nuw i8, ptr %.0162207.us.i, i64 %i.ca
  %exitcond260.not.i = icmp eq i32 %i.jl, %i.cv
  br i1 %exitcond260.not.i, label %._crit_edge.i, label %.lr.ph212.split.us.i, !llvm.loop !210

.lr.ph212.split.i:                                ; preds = %.lr.ph212.split.i.preheader, %.loopexit181.i
  %.0210.i = phi ptr [ %i.ls, %.loopexit181.i ], [ %i.gx, %.lr.ph212.split.i.preheader ] ; 9 uses
  %.2159209.i = phi i32 [ %i.lr, %.loopexit181.i ], [ 0, %.lr.ph212.split.i.preheader ]
  %.0162207.i = phi ptr [ %i.lt, %.loopexit181.i ], [ %i.by, %.lr.ph212.split.i.preheader ] ; 13 uses
  %.not.i = icmp eq ptr %.0210.i, %.0162207.i
  br i1 %.not.i, label %.preheader182.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph212.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0210.i, ptr align 1 %.0162207.i, i64 %i.gz, i1 false)
  br label %.preheader182.i

.preheader182.i:                                  ; preds = %bb.az, %.lr.ph212.split.i
  br i1 %i.ha, label %.lr.ph.i.preheader, label %.preheader180.i

.lr.ph.i.preheader:                               ; preds = %.preheader182.i
  br i1 %i.he, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader180.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader180.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader180.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv239.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next240.i.3, %.preheader180.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod306)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv239.i.epil = phi i64 [ %indvars.iv.next240.i.epil, %.lr.ph.i.epil ], [ %indvars.iv239.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv239.i.epil
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !22
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !14
  %i.jt = sub nsw i64 %indvars.iv239.i.epil, %i.hc
  %i.ju = getelementptr inbounds i8, ptr %.0210.i, i64 %i.jt
  store i8 %i.js, ptr %i.ju, align 1, !tbaa !14
  %indvars.iv.next240.i.epil = add nuw nsw i64 %indvars.iv239.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader180.i, label %.lr.ph.i.epil, !llvm.loop !211

.preheader180.i:                                  ; preds = %.preheader180.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader182.i
  br i1 %i.hb, label %.lr.ph202.preheader.i, label %.loopexit181.i

.lr.ph202.preheader.i:                            ; preds = %.preheader180.i
  %invariant.gep291.i = getelementptr i8, ptr %.0210.i, i64 %i.hd ; 5 uses
  br i1 %i.hf, label %.lr.ph202.i.epil.preheader, label %.lr.ph202.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv239.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !22
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !14
  %i.ka = sub nsw i64 %indvars.iv239.i, %i.hc
  %i.kb = getelementptr inbounds i8, ptr %.0210.i, i64 %i.ka
  store i8 %i.jz, ptr %i.kb, align 1, !tbaa !14
  %indvars.iv.next240.i = or disjoint i64 %indvars.iv239.i, 1 ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next240.i
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !22
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !14
  %i.kh = sub nsw i64 %indvars.iv.next240.i, %i.hc
  %i.ki = getelementptr inbounds i8, ptr %.0210.i, i64 %i.kh
  store i8 %i.kg, ptr %i.ki, align 1, !tbaa !14
  %indvars.iv.next240.i.1 = or disjoint i64 %indvars.iv239.i, 2 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next240.i.1
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !22
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !14
  %i.ko = sub nsw i64 %indvars.iv.next240.i.1, %i.hc
  %i.kp = getelementptr inbounds i8, ptr %.0210.i, i64 %i.ko
  store i8 %i.kn, ptr %i.kp, align 1, !tbaa !14
  %indvars.iv.next240.i.2 = or disjoint i64 %indvars.iv239.i, 3 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next240.i.2
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !22
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !14
  %i.kv = sub nsw i64 %indvars.iv.next240.i.2, %i.hc
  %i.kw = getelementptr inbounds i8, ptr %.0210.i, i64 %i.kv
  store i8 %i.ku, ptr %i.kw, align 1, !tbaa !14
  %indvars.iv.next240.i.3 = add nuw nsw i64 %indvars.iv239.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader180.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !212

.lr.ph202.i:                                      ; preds = %.lr.ph202.preheader.i, %.lr.ph202.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i.3, %.lr.ph202.i ], [ 0, %.lr.ph202.preheader.i ] ; 6 uses
  %niter312 = phi i64 [ %niter312.next.3, %.lr.ph202.i ], [ 0, %.lr.ph202.preheader.i ]
  %gep290.i = getelementptr [4 x i8], ptr %invariant.gep293.i.a, i64 %indvars.iv244.i
  %i.kx = load i32, ptr %gep290.i, align 4, !tbaa !22
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !14
  %gep292.i = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv244.i
  store i8 %i.la, ptr %gep292.i, align 1, !tbaa !14
  %indvars.iv.next245.i = or disjoint i64 %indvars.iv244.i, 1 ; 2 uses
  %gep290.i.1 = getelementptr [4 x i8], ptr %invariant.gep293.i.a, i64 %indvars.iv.next245.i
  %i.lb = load i32, ptr %gep290.i.1, align 4, !tbaa !22
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !14
  %gep292.i.1 = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv.next245.i
  store i8 %i.le, ptr %gep292.i.1, align 1, !tbaa !14
  %indvars.iv.next245.i.1 = or disjoint i64 %indvars.iv244.i, 2 ; 2 uses
  %gep290.i.2 = getelementptr [4 x i8], ptr %invariant.gep293.i.a, i64 %indvars.iv.next245.i.1
  %i.lf = load i32, ptr %gep290.i.2, align 4, !tbaa !22
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !14
  %gep292.i.2 = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv.next245.i.1
  store i8 %i.li, ptr %gep292.i.2, align 1, !tbaa !14
  %indvars.iv.next245.i.2 = or disjoint i64 %indvars.iv244.i, 3 ; 2 uses
  %gep290.i.3 = getelementptr [4 x i8], ptr %invariant.gep293.i.a, i64 %indvars.iv.next245.i.2
  %i.lj = load i32, ptr %gep290.i.3, align 4, !tbaa !22
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !14
  %gep292.i.3 = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv.next245.i.2
  store i8 %i.lm, ptr %gep292.i.3, align 1, !tbaa !14
  %indvars.iv.next245.i.3 = add nuw nsw i64 %indvars.iv244.i, 4 ; 2 uses
  %niter312.next.3 = add i64 %niter312, 4         ; 2 uses
  %niter312.ncmp.3 = icmp eq i64 %niter312.next.3, %unroll_iter311
  br i1 %niter312.ncmp.3, label %.loopexit181.i.loopexit.unr-lcssa, label %.lr.ph202.i, !llvm.loop !213

.loopexit181.i.loopexit.unr-lcssa:                ; preds = %.lr.ph202.i
  br i1 %lcmp.mod309.not, label %.loopexit181.i, label %.lr.ph202.i.epil.preheader

.lr.ph202.i.epil.preheader:                       ; preds = %.loopexit181.i.loopexit.unr-lcssa, %.lr.ph202.preheader.i
  %indvars.iv244.i.epil.init = phi i64 [ 0, %.lr.ph202.preheader.i ], [ %indvars.iv.next245.i.3, %.loopexit181.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod310)
  br label %.lr.ph202.i.epil

.lr.ph202.i.epil:                                 ; preds = %.lr.ph202.i.epil, %.lr.ph202.i.epil.preheader
  %indvars.iv244.i.epil = phi i64 [ %indvars.iv244.i.epil.init, %.lr.ph202.i.epil.preheader ], [ %indvars.iv.next245.i.epil, %.lr.ph202.i.epil ] ; 3 uses
  %epil.iter308 = phi i64 [ 0, %.lr.ph202.i.epil.preheader ], [ %epil.iter308.next, %.lr.ph202.i.epil ]
  %gep290.i.epil = getelementptr [4 x i8], ptr %invariant.gep293.i.a, i64 %indvars.iv244.i.epil
  %i.ln = load i32, ptr %gep290.i.epil, align 4, !tbaa !22
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !14
  %gep292.i.epil = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv244.i.epil
  store i8 %i.lq, ptr %gep292.i.epil, align 1, !tbaa !14
  %indvars.iv.next245.i.epil = add nuw nsw i64 %indvars.iv244.i.epil, 1
  %epil.iter308.next = add i64 %epil.iter308, 1   ; 2 uses
  %epil.iter308.cmp.not = icmp eq i64 %epil.iter308.next, %xtraiter307
  br i1 %epil.iter308.cmp.not, label %.loopexit181.i, label %.lr.ph202.i.epil, !llvm.loop !214

.loopexit181.i:                                   ; preds = %.loopexit181.i.loopexit.unr-lcssa, %.lr.ph202.i.epil, %.preheader180.i
  %i.lr = add nuw nsw i32 %.2159209.i, 1          ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0210.i, i64 %i.cz
  %i.lt = getelementptr inbounds nuw i8, ptr %.0162207.i, i64 %i.ca
  %exitcond249.not.i = icmp eq i32 %i.lr, %i.cv
  br i1 %exitcond249.not.i, label %._crit_edge.i, label %.lr.ph212.split.i, !llvm.loop !210

._crit_edge.i:                                    ; preds = %.loopexit181.i, %.loopexit178.us.i, %._crit_edge195.i
  %.pre-phi.i = phi i32 [ 2, %.loopexit178.us.i ], [ %i.gr, %._crit_edge195.i ], [ 0, %.loopexit181.i ]
  %i.lu = shl i32 %i.gm, %.pre-phi.i              ; 2 uses
  %i.lv = icmp sgt i32 %.0, 0
  br i1 %i.lv, label %.lr.ph215.i, label %.preheader.i

.lr.ph215.i:                                      ; preds = %._crit_edge.i
  %i.lw = sext i32 %i.lu to i64
  %wide.trip.count264.i = zext nneg i32 %.0 to i64
  br label %bb.ba

.preheader.i:                                     ; preds = %bb.bb, %._crit_edge.i
  %i.lx = icmp sgt i32 %i.fb, 0
  br i1 %i.lx, label %.lr.ph217.i, label %._crit_edge218.i

.lr.ph217.i:                                      ; preds = %.preheader.i
  %i.ly = sext i32 %i.lu to i64
  %i.lz = sext i32 %i.cv to i64
  %wide.trip.count269.i = zext nneg i32 %i.fb to i64
  br label %bb.bc

bb.ba:                                            ; preds = %bb.bb, %.lr.ph215.i
  %indvars.iv261.i = phi i64 [ 0, %.lr.ph215.i ], [ %indvars.iv.next262.i, %bb.bb ] ; 3 uses
  %i.ma = trunc i64 %indvars.iv261.i to i32
  %i.mb = sub i32 %i.ma, %.0
  %i.mc = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.mb, i32 noundef %i.cv, i32 noundef range(i32 1, -16) %i.bw)
          to label %bb.bb unwind label %.loopexit.split-lp.i

bb.bb:                                            ; preds = %bb.ba
  %i.md = mul i64 %indvars.iv261.i, %i.cz
  %i.me = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.md
  %i.mf = add nsw i32 %i.mc, %.0
  %i.mg = sext i32 %i.mf to i64
  %i.mh = mul i64 %i.cz, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.mh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.me, ptr align 1 %i.mi, i64 %i.lw, i1 false)
  %indvars.iv.next262.i = add nuw nsw i64 %indvars.iv261.i, 1 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %indvars.iv.next262.i, %wide.trip.count264.i
  br i1 %exitcond265.not.i, label %.preheader.i, label %bb.ba, !llvm.loop !215

.loopexit.i:                                      ; preds = %bb.bc
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184.i

.loopexit.split-lp.i:                             ; preds = %bb.ba
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184.i

bb.bc:                                            ; preds = %bb.bd, %.lr.ph217.i
  %indvars.iv266.i = phi i64 [ 0, %.lr.ph217.i ], [ %indvars.iv.next267.i, %bb.bd ] ; 2 uses
  %i.mj = add nsw i64 %indvars.iv266.i, %i.lz     ; 2 uses
  %i.mk = trunc nsw i64 %i.mj to i32
  %i.ml = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.mk, i32 noundef %i.cv, i32 noundef range(i32 1, -16) %i.bw)
          to label %bb.bd unwind label %.loopexit.i

bb.bd:                                            ; preds = %bb.bc
  %i.mm = mul i64 %i.mj, %i.cz
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.mm
  %i.mo = sext i32 %i.ml to i64
  %i.mp = mul i64 %i.cz, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.mp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mn, ptr align 1 %i.mq, i64 %i.ly, i1 false)
  %indvars.iv.next267.i = add nuw nsw i64 %indvars.iv266.i, 1 ; 2 uses
  %exitcond270.not.i = icmp eq i64 %indvars.iv.next267.i, %wide.trip.count269.i
  br i1 %exitcond270.not.i, label %._crit_edge218.i, label %bb.bc, !llvm.loop !216

._crit_edge218.i:                                 ; preds = %bb.bd, %.preheader.i
  %i.mr = load ptr, ptr %13, align 8, !tbaa !233  ; 3 uses
  %.not.i.i172.i = icmp eq ptr %i.mr, %i.es
  %i.ms = icmp eq ptr %i.mr, null
  %or.cond.i.i = or i1 %.not.i.i172.i, %i.ms
  br i1 %or.cond.i.i, label %_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge218.i
  call void @_ZdaPv(ptr noundef nonnull %i.mr) #21
  br label %_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit

.loopexit184.i:                                   ; preds = %.loopexit.split-lp.i, %.loopexit.i, %.loopexit.split-lp185.split.i, %.loopexit184.split.i, %.loopexit184.split.us.i, %.loopexit.split-lp185.split.us.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp187.us.i, %.loopexit.split-lp185.split.us.i ], [ %lpad.loopexit186.us.i, %.loopexit184.split.us.i ], [ %lpad.loopexit186.i, %.loopexit184.split.i ], [ %lpad.loopexit.split-lp187.i, %.loopexit.split-lp185.split.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.mt = load ptr, ptr %13, align 8, !tbaa !233  ; 3 uses
  %.not.i.i173.i = icmp eq ptr %i.mt, %i.es
  %i.mu = icmp eq ptr %i.mt, null
  %or.cond.i174.i = or i1 %.not.i.i173.i, %i.mu
  br i1 %or.cond.i174.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit175.i, label %bb.bf

bb.bf:                                            ; preds = %.loopexit184.i
  call void @_ZdaPv(ptr noundef nonnull %i.mt) #21
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit175.i

_ZN2cv10AutoBufferIiLm264EED2Ev.exit175.i:        ; preds = %bb.bf, %.loopexit184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.body

_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit: ; preds = %._crit_edge218.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.cn

_ZN2cv10AutoBufferIdLm136EEC2Em.exit:             ; preds = %bb.af
  %i.mv = load i32, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.mw = lshr i32 %i.mv, 5
  %i.mx = and i32 %i.mw, 127                      ; 2 uses
  %i.my = add nuw nsw i32 %i.mx, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.na, ptr %26, align 8, !tbaa !237
  %i.nb = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.mz, ptr %i.nb, align 8, !tbaa !238
  %i.nc = icmp samesign ugt i32 %i.mx, 3
  br i1 %i.nc, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %i.nd = load double, ptr %7, align 8, !tbaa !16 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !16
  %i.ng = fcmp oeq double %i.nd, %i.nf
  br i1 %i.ng, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !16
  %i.nj = fcmp oeq double %i.nd, %i.ni
  br i1 %i.nj, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.nk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !16
  %i.nm = fcmp oeq double %i.nd, %i.nl
  br i1 %i.nm, label %bb.bp, label %bb.bk

bb.bj:                                            ; preds = %bb.cf, %bb.by, %bb.br, %bb.bp
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body113

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE, ptr noundef nonnull @.str.1, i32 noundef 1278) #20
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.bo:                                            ; preds = %bb.bl
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nq = load ptr, ptr %27, align 8, !tbaa !13   ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.bo
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !14
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.bn
  %.pn61 = phi { ptr, i32 } [ %i.no, %bb.bn ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.np, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.body113

bb.bp:                                            ; preds = %bb.bi, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %.044 = phi i32 [ %i.my, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit ], [ 1, %bb.bi ]
  %i.nv = shl nuw nsw i32 %.044, 5
  %i.nw = or i32 %i.mv, -32
  %i.nx = add nsw i32 %i.nw, %i.nv
  invoke void @_ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.na, i32 noundef %i.nx, i32 noundef %i.my)
          to label %bb.bq unwind label %bb.bj

bb.bq:                                            ; preds = %bb.bp
  %i.ny = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !34
  %i.oa = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !23
  %i.oc = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !54 ; 6 uses
  %i.oe = icmp slt i32 %i.od, 3
  br i1 %i.oe, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc112 unwind label %bb.bj

.noexc112:                                        ; preds = %bb.br
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #20
          to label %bb.bs unwind label %bb.bt

end_hunk_0
