inline.NumInlined: 101
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hermes_g_strtod:bb.a
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hr ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !13
  store ptr %i.ht, ptr %.1403.i, align 8, !tbaa !15
  store ptr %.1403.i, ptr %i.hs, align 8, !tbaa !13
  br label %Bfree.exit618.i

Bfree.exit618.i:                                  ; preds = %bb.ay, %bb.ax, %Bfree.exit616.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.1408.i, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !29 ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, 7
  br i1 %i.hw, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %Bfree.exit618.i
  call void @free(ptr noundef nonnull %.1408.i) #17
  br label %Bfree.exit620.i

bb.ba:                                            ; preds = %Bfree.exit618.i
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hy = sext i32 %i.hv to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.hy ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !13
  store ptr %i.ia, ptr %.1408.i, align 8, !tbaa !15
  store ptr %.1408.i, ptr %i.hz, align 8, !tbaa !13
  br label %Bfree.exit620.i

Bfree.exit620.i:                                  ; preds = %bb.ba, %bb.az
  %.not.i621.i = icmp eq ptr %.1.i, null
  br i1 %.not.i621.i, label %Bfree.exit622.i, label %bb.bb

bb.bb:                                            ; preds = %Bfree.exit620.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !29 ; 2 uses
  %i.id = icmp sgt i32 %i.ic, 7
  br i1 %i.id, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %.1.i) #17
  br label %Bfree.exit622.i

bb.bd:                                            ; preds = %bb.bb
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.if = sext i32 %i.ic to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.if ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !13
  store ptr %i.ih, ptr %.1.i, align 8, !tbaa !15
  store ptr %.1.i, ptr %i.ig, align 8, !tbaa !13
  br label %Bfree.exit622.i

Bfree.exit622.i:                                  ; preds = %bb.bd, %bb.bc, %Bfree.exit620.i, %bb.ao
  %i.ii = tail call ptr @__errno_location() #18
  store i32 34, ptr %i.ii, align 4, !tbaa !3
  br label %.loopexit751.i

bb.be:                                            ; preds = %bb.an
  %i.ij = icmp samesign ugt i32 %i.gl, 31
  br i1 %i.ij, label %.lr.ph926.preheader.i, label %._crit_edge927.i

.lr.ph926.preheader.i:                            ; preds = %bb.be
  %i.ik = lshr i32 %i.gl, 4
  br label %.lr.ph926.i

.lr.ph926.i:                                      ; preds = %bb.bg, %.lr.ph926.preheader.i
  %i.il = phi double [ %.promoted1338.i, %.lr.ph926.preheader.i ], [ %i.iv, %bb.bg ]
  %i.im = phi i32 [ %i.gv, %.lr.ph926.preheader.i ], [ %i.iw, %bb.bg ]
  %indvars.iv1056.i = phi i64 [ 0, %.lr.ph926.preheader.i ], [ %indvars.iv.next1057.i, %bb.bg ] ; 2 uses
  %.0507923.i = phi i32 [ %i.ik, %.lr.ph926.preheader.i ], [ %i.iy, %bb.bg ] ; 3 uses
  %i.in = phi double [ %.promoted1338.i, %.lr.ph926.preheader.i ], [ %i.ix, %bb.bg ] ; 2 uses
  %i.io = and i32 %.0507923.i, 1
  %.not591.i = icmp eq i32 %i.io, 0
  br i1 %.not591.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph926.i
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1056.i
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !27
  %i.ir = fmul double %i.in, %i.iq                ; 3 uses
  %i.is = bitcast double %i.ir to i64
  %i.it = lshr i64 %i.is, 32
  %i.iu = trunc nuw i64 %i.it to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph926.i
  %i.iv = phi double [ %i.il, %.lr.ph926.i ], [ %i.ir, %bb.bf ] ; 2 uses
  %i.iw = phi i32 [ %i.im, %.lr.ph926.i ], [ %i.iu, %bb.bf ] ; 2 uses
  %i.ix = phi double [ %i.in, %.lr.ph926.i ], [ %i.ir, %bb.bf ]
  %indvars.iv.next1057.i = add nuw nsw i64 %indvars.iv1056.i, 1 ; 2 uses
  %i.iy = lshr i32 %.0507923.i, 1
  %i.iz = icmp samesign ugt i32 %.0507923.i, 3
  br i1 %i.iz, label %.lr.ph926.i, label %._crit_edge927.loopexit.i, !llvm.loop !30

._crit_edge927.loopexit.i:                        ; preds = %bb.bg
  store double %i.iv, ptr %2, align 8
  br label %._crit_edge927.i

._crit_edge927.i:                                 ; preds = %._crit_edge927.loopexit.i, %bb.be
  %i.ja = phi i32 [ %i.gv, %bb.be ], [ %i.iw, %._crit_edge927.loopexit.i ]
  %.0492.lcssa.i = phi i64 [ 0, %bb.be ], [ %indvars.iv.next1057.i, %._crit_edge927.loopexit.i ]
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.jc = add i32 %i.ja, -55574528
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !19
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %.0492.lcssa.i
  %i.je = load double, ptr %i.jd, align 8, !tbaa !27
  %i.jf = load double, ptr %2, align 8, !tbaa !19
  %i.jg = fmul double %i.je, %i.jf                ; 2 uses
  store double %i.jg, ptr %2, align 8, !tbaa !19
  %i.jh = bitcast double %i.jg to i64
  %i.ji = lshr i64 %i.jh, 32
  %i.jj = trunc nuw i64 %i.ji to i32              ; 2 uses
  %i.jk = and i32 %i.jj, 2146435072               ; 2 uses
  %i.jl = icmp samesign ugt i32 %i.jk, 2090860544
  br i1 %i.jl, label %.loopexit.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge927.i
  %i.jm = icmp samesign ugt i32 %i.jk, 2089811968
  br i1 %i.jm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 2146435071, ptr %i.jb, align 4, !tbaa !19
  store i32 -1, ptr %2, align 8, !tbaa !19
  br label %bb.cb

bb.bj:                                            ; preds = %bb.bh
  %i.jn = add i32 %i.jj, 55574528
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !19
  br label %bb.cb

bb.bk:                                            ; preds = %bb.aj
  %i.jo = icmp slt i32 %i.gl, 0
  br i1 %i.jo, label %bb.bl, label %bb.cb

bb.bl:                                            ; preds = %bb.bk
  %i.jp = sub nsw i32 0, %i.gl                    ; 4 uses
  %i.jq = and i32 %i.jp, 15                       ; 2 uses
  %.not560.i = icmp eq i32 %i.jq, 0
  br i1 %.not560.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.jr
  %i.jt = load double, ptr %i.js, align 8, !tbaa !27
  %i.ju = fdiv double %i.gj, %i.jt                ; 3 uses
  store double %i.ju, ptr %2, align 8, !tbaa !19
  %i.jv = bitcast double %i.ju to i64             ; 2 uses
  %i.jw = lshr i64 %i.jv, 32
  %i.jx = trunc nuw i64 %i.jw to i32
  %i.jy = trunc i64 %i.jv to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.jz = phi i32 [ %i.jy, %bb.bm ], [ %i.gi, %bb.bl ]
  %i.ka = phi i32 [ %i.jx, %bb.bm ], [ %i.gh, %bb.bl ]
  %.promoted1336.i = phi double [ %i.ju, %bb.bm ], [ %i.gj, %bb.bl ] ; 2 uses
  %i.kb = lshr i32 %i.jp, 4                       ; 2 uses
  %.not561.i = icmp eq i32 %i.kb, 0
  br i1 %.not561.i, label %bb.cb, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kc = icmp samesign ugt i32 %i.jp, 511
  br i1 %i.kc, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bo, %bb.bq
  %i.kd = phi double [ %i.kp, %bb.bq ], [ %.promoted1336.i, %bb.bo ]
  %i.ke = phi i32 [ %i.kq, %bb.bq ], [ %i.jz, %bb.bo ]
  %i.kf = phi i32 [ %i.kr, %bb.bq ], [ %i.ka, %bb.bo ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bq ], [ 0, %bb.bo ] ; 2 uses
  %.1508920.i = phi i32 [ %i.kt, %bb.bq ], [ %i.kb, %bb.bo ] ; 2 uses
  %i.kg = phi double [ %i.ks, %bb.bq ], [ %.promoted1336.i, %bb.bo ] ; 2 uses
  %i.kh = and i32 %.1508920.i, 1
  %.not565.i = icmp eq i32 %i.kh, 0
  br i1 %.not565.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.preheader
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv.i
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !27
  %i.kk = fmul double %i.kg, %i.kj                ; 3 uses
  %i.kl = bitcast double %i.kk to i64             ; 2 uses
  %i.km = lshr i64 %i.kl, 32
  %i.kn = trunc nuw i64 %i.km to i32
  %i.ko = trunc i64 %i.kl to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.preheader
  %i.kp = phi double [ %i.kd, %.preheader ], [ %i.kk, %bb.bp ] ; 3 uses
  %i.kq = phi i32 [ %i.ke, %.preheader ], [ %i.ko, %bb.bp ] ; 2 uses
  %i.kr = phi i32 [ %i.kf, %.preheader ], [ %i.kn, %bb.bp ] ; 3 uses
  %i.ks = phi double [ %i.kg, %.preheader ], [ %i.kk, %bb.bp ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.kt = lshr i32 %.1508920.i, 1                 ; 2 uses
  %.not563.i = icmp eq i32 %i.kt, 0
  br i1 %.not563.i, label %bb.br, label %.preheader, !llvm.loop !31

bb.br:                                            ; preds = %bb.bq
  store double %i.kp, ptr %2, align 8
  %.not562.i = icmp samesign ult i32 %i.jp, 256   ; 2 uses
  %spec.select732.i = select i1 %.not562.i, i32 0, i32 106
  br i1 %.not562.i, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.kv = lshr i32 %i.kr, 20
  %i.kw = and i32 %i.kv, 2047                     ; 6 uses
  %i.kx = sub nuw nsw i32 107, %i.kw
  %i.ky = icmp samesign ult i32 %i.kw, 107
  br i1 %i.ky, label %bb.bt, label %thread-pre-split

bb.bt:                                            ; preds = %bb.bs
  %i.kz = icmp samesign ult i32 %i.kw, 76
  br i1 %i.kz, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.la = icmp samesign ult i32 %i.kw, 53
  br i1 %i.la, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %2, align 8, !tbaa !19
  %i.lb = icmp samesign ult i32 %i.kw, 55
  br i1 %i.lb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 57671680, ptr %i.ku, align 4, !tbaa !19
  br label %thread-pre-split

bb.bx:                                            ; preds = %bb.bv
  %i.lc = sub nuw nsw i32 75, %i.kw
  %i.ld = shl nsw i32 -1, %i.lc
  %i.le = and i32 %i.ld, %i.kr
  store i32 %i.le, ptr %i.ku, align 4, !tbaa !19
  br label %thread-pre-split

bb.by:                                            ; preds = %bb.bt
  %i.lf = shl nsw i32 -1, %i.kx
  %i.lg = and i32 %i.lf, %i.kq
  store i32 %i.lg, ptr %2, align 8, !tbaa !19
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bs, %bb.bw, %bb.bx, %bb.by
  %.pr = load double, ptr %2, align 8, !tbaa !19
  br label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split, %bb.br
  %i.lh = phi double [ %.pr, %thread-pre-split ], [ %i.kp, %bb.br ]
  %i.li = fcmp une double %i.lh, 0.000000e+00
  br i1 %i.li, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.iw, %bb.fd, %sulp.exit653.i, %.loopexit, %bb.bz, %bb.bu, %bb.bo
  %.2419.i = phi ptr [ %.4421.i, %bb.iw ], [ %.4421.i, %.loopexit ], [ undef, %bb.bz ], [ %.4421.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4421.i, %sulp.exit653.i ]
  %.2412.i = phi ptr [ %.4414.i, %bb.iw ], [ %.4414.i, %.loopexit ], [ undef, %bb.bz ], [ %.4414.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4414.i, %sulp.exit653.i ]
  %.2409.i = phi ptr [ null, %bb.iw ], [ %.234.lcssa.i.i, %.loopexit ], [ null, %bb.bz ], [ %.234.lcssa.i.i, %bb.fd ], [ null, %bb.bo ], [ null, %bb.bu ], [ %.234.lcssa.i.i, %sulp.exit653.i ]
  %.2404.i = phi ptr [ %.4406.i, %bb.iw ], [ %.4406.i, %.loopexit ], [ undef, %bb.bz ], [ %.4406.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4406.i, %sulp.exit653.i ]
  %.2.i = phi ptr [ %.5.i, %bb.iw ], [ %i.us, %.loopexit ], [ undef, %bb.bz ], [ %i.us, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %i.us, %sulp.exit653.i ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.ao

bb.cb:                                            ; preds = %bb.bz, %bb.bn, %bb.bk, %bb.bj, %bb.bi, %bb.am
  %.sroa.44711.1.i = phi i32 [ 0, %bb.am ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bn ], [ %spec.select732.i, %bb.bz ], [ 0, %bb.bk ] ; 6 uses
  %i.lj = sub nsw i32 %.5489.i, %.4470.i          ; 6 uses
  %i.lk = icmp sgt i32 %.5489.i, 40
  br i1 %i.lk, label %bb.cc, label %.loopexit745.i

bb.cc:                                            ; preds = %bb.cb
  %i.ll = icmp slt i32 %spec.select597.i, 18
  %i.lm = add nsw i32 %.sroa.12.0.i, 18
  %.2494.i = select i1 %i.ll, i32 %i.lm, i32 18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.1500.i = phi i32 [ 18, %bb.cc ], [ %i.lq, %bb.cd ] ; 12 uses
  %.3495.i = phi i32 [ %.2494.i, %bb.cc ], [ %.4496.i, %bb.cd ] ; 3 uses
  %.not568.i = icmp sgt i32 %.3495.i, %.sroa.6.2.i
  %spec.select598.i = call i32 @llvm.smin.i32(i32 %.3495.i, i32 %.sroa.0.2.i)
  %.4496.in.i = select i1 %.not568.i, i32 %.3495.i, i32 %spec.select598.i
  %.4496.i = add nsw i32 %.4496.in.i, -1          ; 2 uses
  %i.ln = sext i32 %.4496.i to i64
  %i.lo = getelementptr inbounds i8, ptr %.2450.i, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !19
  %.not570.i = icmp eq i8 %i.lp, 48
  %i.lq = add nsw i32 %.1500.i, -1
  br i1 %.not570.i, label %bb.cd, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lr = sub nsw i32 %.5489.i, %.1500.i
  %i.ls = add nsw i32 %i.lr, %i.em                ; 4 uses
  %spec.select599.i = call i32 @llvm.smin.i32(i32 %spec.select597.i, i32 %.1500.i) ; 9 uses
  %i.lt = icmp slt i32 %.1500.i, 9
  br i1 %i.lt, label %.preheader746.i, label %.loopexit745.i

.preheader746.i:                                  ; preds = %bb.ce
  %i.lu = icmp sgt i32 %spec.select599.i, 0
  br i1 %i.lu, label %.lr.ph931.preheader.i, label %.preheader.i

.lr.ph931.preheader.i:                            ; preds = %.preheader746.i
  %wide.trip.count.i = zext nneg i32 %spec.select599.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.lv = icmp ult i32 %spec.select599.i, 4
  br i1 %i.lv, label %.lr.ph931.i.epil.preheader, label %.lr.ph931.preheader.i.new

.lr.ph931.preheader.i.new:                        ; preds = %.lr.ph931.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph931.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph931.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph931.i.epil.preheader

.lr.ph931.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph931.preheader.i
  %indvars.iv1059.i.epil.init = phi i64 [ 0, %.lr.ph931.preheader.i ], [ %indvars.iv.next1060.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.9930.i.epil.init = phi i32 [ 0, %.lr.ph931.preheader.i ], [ %i.no, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod674 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod674)
  br label %.lr.ph931.i.epil

.lr.ph931.i.epil:                                 ; preds = %.lr.ph931.i.epil, %.lr.ph931.i.epil.preheader
  %indvars.iv1059.i.epil = phi i64 [ %indvars.iv1059.i.epil.init, %.lr.ph931.i.epil.preheader ], [ %indvars.iv.next1060.i.epil, %.lr.ph931.i.epil ] ; 2 uses
  %.9930.i.epil = phi i32 [ %.9930.i.epil.init, %.lr.ph931.i.epil.preheader ], [ %i.mb, %.lr.ph931.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph931.i.epil.preheader ], [ %epil.iter.next, %.lr.ph931.i.epil ]
  %i.lw = mul i32 %.9930.i.epil, 10
  %i.lx = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1059.i.epil
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !19
  %i.lz = sext i8 %i.ly to i32
  %i.ma = add i32 %i.lw, -48
  %i.mb = add i32 %i.ma, %i.lz                    ; 2 uses
  %indvars.iv.next1060.i.epil = add nuw nsw i64 %indvars.iv1059.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph931.i.epil, !llvm.loop !32

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph931.i.epil, %.preheader746.i
  %.2501.lcssa.i = phi i32 [ 0, %.preheader746.i ], [ %spec.select599.i, %.lr.ph931.i.epil ], [ %spec.select599.i, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa.i = phi i32 [ 0, %.preheader746.i ], [ %i.no, %.preheader.i.loopexit.unr-lcssa ], [ %i.mb, %.lr.ph931.i.epil ] ; 3 uses
  %i.mc = icmp slt i32 %.2501.lcssa.i, %.1500.i
  br i1 %i.mc, label %.lr.ph937.preheader.i, label %._crit_edge.thread.i.i.thread

.lr.ph937.preheader.i:                            ; preds = %.preheader.i
  %i.md = sext i32 %.sroa.6.2.i to i64            ; 2 uses
  %i.me = sub i32 %.1500.i, %.2501.lcssa.i
  %xtraiter675 = and i32 %i.me, 3                 ; 2 uses
  %lcmp.mod676.not = icmp eq i32 %xtraiter675, 0
  br i1 %lcmp.mod676.not, label %.lr.ph937.i.prol.loopexit, label %.lr.ph937.i.prol

.lr.ph937.i.prol:                                 ; preds = %.lr.ph937.preheader.i, %.lr.ph937.i.prol
  %indvars.iv1064.i.prol = phi i64 [ %indvars.iv.next1065.i.prol, %.lr.ph937.i.prol ], [ %i.md, %.lr.ph937.preheader.i ] ; 2 uses
  %.10936.i.prol = phi i32 [ %i.mk, %.lr.ph937.i.prol ], [ %.9.lcssa.i, %.lr.ph937.preheader.i ]
  %.3502934.i.prol = phi i32 [ %i.ml, %.lr.ph937.i.prol ], [ %.2501.lcssa.i, %.lr.ph937.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph937.i.prol ], [ 0, %.lr.ph937.preheader.i ]
  %i.mf = mul i32 %.10936.i.prol, 10
  %indvars.iv.next1065.i.prol = add nsw i64 %indvars.iv1064.i.prol, 1 ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %.2450.i, i64 %indvars.iv1064.i.prol
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !19
  %i.mi = sext i8 %i.mh to i32
  %i.mj = add i32 %i.mf, -48
  %i.mk = add i32 %i.mj, %i.mi                    ; 3 uses
  %i.ml = add nuw nsw i32 %.3502934.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter675
  br i1 %prol.iter.cmp.not, label %.lr.ph937.i.prol.loopexit, label %.lr.ph937.i.prol, !llvm.loop !34

.lr.ph937.i.prol.loopexit:                        ; preds = %.lr.ph937.i.prol, %.lr.ph937.preheader.i
  %.lcssa641.unr = phi i32 [ poison, %.lr.ph937.preheader.i ], [ %i.mk, %.lr.ph937.i.prol ]
  %indvars.iv1064.i.unr = phi i64 [ %i.md, %.lr.ph937.preheader.i ], [ %indvars.iv.next1065.i.prol, %.lr.ph937.i.prol ]
  %.10936.i.unr = phi i32 [ %.9.lcssa.i, %.lr.ph937.preheader.i ], [ %i.mk, %.lr.ph937.i.prol ]
  %.3502934.i.unr = phi i32 [ %.2501.lcssa.i, %.lr.ph937.preheader.i ], [ %i.ml, %.lr.ph937.i.prol ]
  %i.mm = sub i32 %.2501.lcssa.i, %.1500.i
  %i.mn = icmp ugt i32 %i.mm, -4
  br i1 %i.mn, label %._crit_edge.thread.i.i.thread, label %.lr.ph937.i

.lr.ph931.i:                                      ; preds = %.lr.ph931.i, %.lr.ph931.preheader.i.new
  %indvars.iv1059.i = phi i64 [ 0, %.lr.ph931.preheader.i.new ], [ %indvars.iv.next1060.i.3, %.lr.ph931.i ] ; 5 uses
  %.9930.i = phi i32 [ 0, %.lr.ph931.preheader.i.new ], [ %i.no, %.lr.ph931.i ]
  %niter = phi i64 [ 0, %.lr.ph931.preheader.i.new ], [ %niter.next.3, %.lr.ph931.i ]
  %i.mo = mul i32 %.9930.i, 10
  %i.mp = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1059.i
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !19
  %i.mr = sext i8 %i.mq to i32
  %i.ms = add i32 %i.mo, -48
  %i.mt = add i32 %i.ms, %i.mr
  %i.mu = mul i32 %i.mt, 10
  %i.mv = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1059.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !19
  %i.my = sext i8 %i.mx to i32
  %i.mz = add i32 %i.mu, -48
  %i.na = add i32 %i.mz, %i.my
  %i.nb = mul i32 %i.na, 10
  %i.nc = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1059.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !19
  %i.nf = sext i8 %i.ne to i32
  %i.ng = add i32 %i.nb, -48
  %i.nh = add i32 %i.ng, %i.nf
  %i.ni = mul i32 %i.nh, 10
  %i.nj = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1059.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !19
  %i.nm = sext i8 %i.nl to i32
  %i.nn = add i32 %i.ni, -48
  %i.no = add i32 %i.nn, %i.nm                    ; 3 uses
  %indvars.iv.next1060.i.3 = add nuw nsw i64 %indvars.iv1059.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph931.i, !llvm.loop !35

.lr.ph937.i:                                      ; preds = %.lr.ph937.i.prol.loopexit, %.lr.ph937.i
  %indvars.iv1064.i = phi i64 [ %indvars.iv.next1065.i.3, %.lr.ph937.i ], [ %indvars.iv1064.i.unr, %.lr.ph937.i.prol.loopexit ] ; 5 uses
  %.10936.i = phi i32 [ %i.op, %.lr.ph937.i ], [ %.10936.i.unr, %.lr.ph937.i.prol.loopexit ]
  %.3502934.i = phi i32 [ %i.oq, %.lr.ph937.i ], [ %.3502934.i.unr, %.lr.ph937.i.prol.loopexit ]
  %i.np = mul i32 %.10936.i, 10
  %i.nq = getelementptr inbounds i8, ptr %.2450.i, i64 %indvars.iv1064.i
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !19
  %i.ns = sext i8 %i.nr to i32
  %i.nt = add i32 %i.np, -48
  %i.nu = add i32 %i.nt, %i.ns
  %i.nv = mul i32 %i.nu, 10
  %i.nw = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1064.i
  %i.nx = getelementptr i8, ptr %i.nw, i64 1
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !19
  %i.nz = sext i8 %i.ny to i32
  %i.oa = add i32 %i.nv, -48
  %i.ob = add i32 %i.oa, %i.nz
  %i.oc = mul i32 %i.ob, 10
  %i.od = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1064.i
  %i.oe = getelementptr i8, ptr %i.od, i64 2
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !19
  %i.og = sext i8 %i.of to i32
  %i.oh = add i32 %i.oc, -48
  %i.oi = add i32 %i.oh, %i.og
  %i.oj = mul i32 %i.oi, 10
  %indvars.iv.next1065.i.3 = add nsw i64 %indvars.iv1064.i, 4
  %i.ok = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1064.i
  %i.ol = getelementptr i8, ptr %i.ok, i64 3
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !19
  %i.on = sext i8 %i.om to i32
  %i.oo = add i32 %i.oj, -48
  %i.op = add i32 %i.oo, %i.on                    ; 2 uses
  %i.oq = add nuw nsw i32 %.3502934.i, 4          ; 2 uses
  %exitcond1068.not.i.3 = icmp eq i32 %i.oq, %.1500.i
  br i1 %exitcond1068.not.i.3, label %._crit_edge.thread.i.i.thread, label %.lr.ph937.i, !llvm.loop !36

.loopexit745.i:                                   ; preds = %bb.ce, %bb.cb
  %.2511.i = phi i32 [ %i.em, %bb.cb ], [ %i.ls, %bb.ce ] ; 4 uses
  %.6490.i = phi i32 [ %.5489.i, %bb.cb ], [ %.1500.i, %bb.ce ] ; 6 uses
  %.2483.i = phi i32 [ %spec.select597.i, %bb.cb ], [ %spec.select599.i, %bb.ce ] ; 4 uses
  %i.or = add nuw nsw i32 %.6490.i, 8
  %i.os = sdiv i32 %i.or, 9
  %i.ot = icmp sgt i32 %.6490.i, 9
  br i1 %i.ot, label %.lr.ph.i.i, label %._crit_edge.thread.i.i.thread

.lr.ph.i.i:                                       ; preds = %.loopexit745.i, %.lr.ph.i.i
  %.040.i.i = phi i32 [ %i.ou, %.lr.ph.i.i ], [ 1, %.loopexit745.i ]
  %.02839.i.i = phi i32 [ %i.ov, %.lr.ph.i.i ], [ 0, %.loopexit745.i ] ; 3 uses
  %i.ou = shl i32 %.040.i.i, 1                    ; 2 uses
  %i.ov = add nuw nsw i32 %.02839.i.i, 1          ; 5 uses
  %i.ow = icmp sgt i32 %i.os, %i.ou
  br i1 %i.ow, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !37

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ox = icmp samesign ult i32 %.02839.i.i, 7
  br i1 %i.ox, label %._crit_edge.thread.i.i, label %bb.cg

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert292 = zext nneg i32 %i.ov to i64
  %.phi.trans.insert293 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert292
  %.pre = load ptr, ptr %.phi.trans.insert293, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i.thread, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.thread.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oz = zext nneg i32 %i.ov to i64
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %i.oz
  %i.pb = load ptr, ptr %.pre, align 8, !tbaa !15
  store ptr %i.pb, ptr %i.pa, align 8, !tbaa !13
  br label %Balloc.exit.i.i

bb.cg:                                            ; preds = %._crit_edge.i.i
  %i.pc = shl nuw i32 2, %.02839.i.i              ; 2 uses
  %i.pd = add nsw i32 %i.pc, -1
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = shl nuw nsw i64 %i.pe, 2
  %i.pg = add nuw nsw i64 %i.pf, 36
  %i.ph = call noalias ptr @malloc(i64 noundef %i.pg) #19
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.pi, align 4, !tbaa !12
  br label %bb.ch

._crit_edge.thread.i.i.thread:                    ; preds = %.lr.ph937.i.prol.loopexit, %.lr.ph937.i, %.preheader.i, %.loopexit745.i, %._crit_edge.thread.i.i
  %.028.lcssa58.i.i380 = phi i32 [ %i.ov, %._crit_edge.thread.i.i ], [ 0, %.loopexit745.i ], [ 0, %.preheader.i ], [ 0, %.lr.ph937.i ], [ 0, %.lr.ph937.i.prol.loopexit ] ; 2 uses
  %.25111197.i379 = phi i32 [ %.2511.i, %._crit_edge.thread.i.i ], [ %.2511.i, %.loopexit745.i ], [ %i.ls, %.preheader.i ], [ %i.ls, %.lr.ph937.i ], [ %i.ls, %.lr.ph937.i.prol.loopexit ]
  %.64901201.i378 = phi i32 [ %.6490.i, %._crit_edge.thread.i.i ], [ %.6490.i, %.loopexit745.i ], [ %.1500.i, %.preheader.i ], [ %.1500.i, %.lr.ph937.i ], [ %.1500.i, %.lr.ph937.i.prol.loopexit ]
  %.24831205.i377 = phi i32 [ %.2483.i, %._crit_edge.thread.i.i ], [ %.2483.i, %.loopexit745.i ], [ %spec.select599.i, %.preheader.i ], [ %spec.select599.i, %.lr.ph937.i ], [ %spec.select599.i, %.lr.ph937.i.prol.loopexit ]
  %.111209.i376 = phi i32 [ %.8436.i, %._crit_edge.thread.i.i ], [ %.8436.i, %.loopexit745.i ], [ %.9.lcssa.i, %.preheader.i ], [ %.lcssa641.unr, %.lr.ph937.i.prol.loopexit ], [ %i.op, %.lr.ph937.i ]
  %i.pj = shl nuw nsw i32 1, %.028.lcssa58.i.i380 ; 2 uses
  %i.pk = add nsw i32 %i.pj, -1
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = shl nuw nsw i64 %i.pl, 2
  %i.pn = add nuw nsw i64 %i.pm, 36
  %i.po = lshr i64 %i.pn, 3
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.po
  store ptr %i.pp, ptr %i.h, align 8, !tbaa !11
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge.thread.i.i.thread
  %.111207.i = phi i32 [ %.111209.i376, %._crit_edge.thread.i.i.thread ], [ %.8436.i, %bb.cg ]
  %.24831203.i = phi i32 [ %.24831205.i377, %._crit_edge.thread.i.i.thread ], [ %.2483.i, %bb.cg ]
  %.64901199.i = phi i32 [ %.64901201.i378, %._crit_edge.thread.i.i.thread ], [ %.6490.i, %bb.cg ]
  %.25111195.i = phi i32 [ %.25111197.i379, %._crit_edge.thread.i.i.thread ], [ %.2511.i, %bb.cg ]
  %.028.lcssa56.i.i = phi i32 [ %.028.lcssa58.i.i380, %._crit_edge.thread.i.i.thread ], [ %i.ov, %bb.cg ]
  %i.pq = phi i32 [ %i.pj, %._crit_edge.thread.i.i.thread ], [ %i.pc, %bb.cg ]
  %.0.i.i.i = phi ptr [ %i.g, %._crit_edge.thread.i.i.thread ], [ %i.ph, %bb.cg ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %.028.lcssa56.i.i, ptr %i.pr, align 8, !tbaa !29
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 %i.pq, ptr %i.ps, align 4, !tbaa !38
  br label %Balloc.exit.i.i

Balloc.exit.i.i:                                  ; preds = %bb.ch, %bb.cf
  %.111206.i = phi i32 [ %.8436.i, %bb.cf ], [ %.111207.i, %bb.ch ]
  %.24831202.i = phi i32 [ %.2483.i, %bb.cf ], [ %.24831203.i, %bb.ch ] ; 3 uses
  %.64901198.i = phi i32 [ %.6490.i, %bb.cf ], [ %.64901199.i, %bb.ch ] ; 4 uses
  %.25111194.i = phi i32 [ %.2511.i, %bb.cf ], [ %.25111195.i, %bb.ch ] ; 3 uses
  %.1.i.i.i = phi ptr [ %.pre, %bb.cf ], [ %.0.i.i.i, %bb.ch ] ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 20
  %i.pu = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  store i32 0, ptr %i.pu, align 8, !tbaa !39
  %i.pv = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 24
  store i32 %.111206.i, ptr %i.pv, align 8, !tbaa !3
  store i32 1, ptr %i.pt, align 4, !tbaa !40
  %i.pw = icmp sgt i32 %.24831202.i, 9
  br i1 %i.pw, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %Balloc.exit.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %.2450.i, i64 9
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %bb.ci
  %.032.i.i = phi ptr [ %.1.i.i.i, %bb.ci ], [ %i.qc, %bb.cj ]
  %.029.i.i = phi i32 [ 9, %bb.ci ], [ %i.qd, %bb.cj ]
  %.027.i.i = phi ptr [ %i.px, %bb.ci ], [ %i.py, %bb.cj ] ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 1 ; 2 uses
  %i.pz = load i8, ptr %.027.i.i, align 1, !tbaa !19
  %i.qa = sext i8 %i.pz to i32
  %i.qb = add nsw i32 %i.qa, -48
  %i.qc = call fastcc ptr @multadd(ptr noundef nonnull %3, ptr noundef %.032.i.i, i32 noundef 10, i32 noundef %i.qb) ; 2 uses
  %i.qd = add nuw nsw i32 %.029.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.qd, %.24831202.i
  br i1 %exitcond.not.i.i, label %bb.ck, label %bb.cj, !llvm.loop !41

bb.ck:                                            ; preds = %bb.cj
  %i.qe = sext i32 %.sroa.12.0.i to i64
  %i.qf = getelementptr inbounds i8, ptr %i.py, i64 %i.qe
  br label %bb.cm

bb.cl:                                            ; preds = %Balloc.exit.i.i
  %i.qg = sext i32 %.sroa.12.0.i to i64
  %i.qh = getelementptr i8, ptr %.2450.i, i64 %i.qg
  %i.qi = getelementptr i8, ptr %i.qh, i64 9
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.133.i.i = phi ptr [ %i.qc, %bb.ck ], [ %.1.i.i.i, %bb.cl ] ; 2 uses
  %.130.i.i = phi i32 [ %.24831202.i, %bb.ck ], [ 9, %bb.cl ] ; 2 uses
  %.1.i.i = phi ptr [ %i.qf, %bb.ck ], [ %i.qi, %bb.cl ]
  %i.qj = icmp slt i32 %.130.i.i, %.64901198.i
  br i1 %i.qj, label %.lr.ph45.i.i, label %s2b.exit.i

.lr.ph45.i.i:                                     ; preds = %bb.cm, %.lr.ph45.i.i
  %.243.i.i = phi ptr [ %i.qk, %.lr.ph45.i.i ], [ %.1.i.i, %bb.cm ] ; 2 uses
  %.23142.i.i = phi i32 [ %i.qp, %.lr.ph45.i.i ], [ %.130.i.i, %bb.cm ]
  %.23441.i.i = phi ptr [ %i.qo, %.lr.ph45.i.i ], [ %.133.i.i, %bb.cm ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.243.i.i, i64 1
  %i.ql = load i8, ptr %.243.i.i, align 1, !tbaa !19
  %i.qm = sext i8 %i.ql to i32
  %i.qn = add nsw i32 %i.qm, -48
  %i.qo = call fastcc ptr @multadd(ptr noundef nonnull %3, ptr noundef %.23441.i.i, i32 noundef 10, i32 noundef %i.qn) ; 2 uses
  %i.qp = add nuw i32 %.23142.i.i, 1              ; 2 uses
  %exitcond52.not.i.i = icmp eq i32 %i.qp, %.64901198.i
  br i1 %exitcond52.not.i.i, label %s2b.exit.i, label %.lr.ph45.i.i, !llvm.loop !42

s2b.exit.i:                                       ; preds = %.lr.ph45.i.i, %bb.cm
  %.234.lcssa.i.i = phi ptr [ %.133.i.i, %bb.cm ], [ %i.qo, %.lr.ph45.i.i ] ; 12 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.234.lcssa.i.i, i64 8 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.234.lcssa.i.i, i64 16
  %i.qs = getelementptr inbounds nuw i8, ptr %.234.lcssa.i.i, i64 20
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.qu = icmp sgt i32 %.25111194.i, -1           ; 2 uses
  %i.qv = sub nsw i32 0, %.25111194.i
  %.0519.i = select i1 %i.qu, i32 %.25111194.i, i32 0 ; 3 uses
  %.0437.i = select i1 %i.qu, i32 0, i32 %i.qv    ; 3 uses
  %.1521.i = add i32 %.0519.i, %.sroa.44711.1.i
  %.not571.i = icmp eq i32 %.0437.i, 0
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  %i.qx = ptrtoint ptr %i.g to i64                ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.qz = icmp sgt i32 %.0519.i, 0
  %i.ra = icmp sgt i32 %i.lj, %.64901198.i        ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 15 uses
  %i.rc = icmp ne i32 %.sroa.44711.1.i, 0
  %i.rd = icmp eq i32 %i.lj, %.64901198.i
  %i.re = icmp eq i32 %.sroa.44711.1.i, 0         ; 8 uses
  %or.cond44.not736.i = and i1 %i.re, %i.rd
  br label %Bfree.exit669.i

Bfree.exit669.i:                                  ; preds = %Bfree.exit669.i.backedge, %s2b.exit.i
  %i.rf = load i32, ptr %i.qq, align 8, !tbaa !29 ; 5 uses
  %i.rg = icmp slt i32 %i.rf, 8
  br i1 %i.rg, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %Bfree.exit669.i
  %i.rh = sext i32 %i.rf to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.qw, i64 %i.rh ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !13 ; 3 uses
  %.not.i624.i = icmp eq ptr %i.rj, null
  br i1 %.not.i624.i, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !15
  store ptr %i.rk, ptr %i.ri, align 8, !tbaa !13
  br label %Balloc.exit.i

bb.cp:                                            ; preds = %Bfree.exit669.i
  %i.rl = shl nuw i32 1, %i.rf                    ; 2 uses
  %i.rm = add nsw i32 %i.rl, -1
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = shl nuw nsw i64 %i.rn, 2
  %i.rp = add nuw nsw i64 %i.ro, 36
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cn
  %i.rq = shl nuw nsw i32 1, %i.rf                ; 3 uses
  %i.rr = add nsw i32 %i.rq, -1
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = shl nuw nsw i64 %i.rs, 2
  %i.ru = add nuw nsw i64 %i.rt, 36               ; 2 uses
  %i.rv = lshr i64 %i.ru, 3                       ; 2 uses
  %i.rw = load ptr, ptr %i.h, align 8, !tbaa !11  ; 3 uses
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = sub i64 %i.rx, %i.qx
  %i.rz = ashr exact i64 %i.ry, 3
  %i.sa = add nsw i64 %i.rz, %i.rv
  %i.sb = load i32, ptr %3, align 8, !tbaa !7
  %i.sc = sext i32 %i.sb to i64
  %.not26.i.i = icmp sgt i64 %i.sa, %i.sc
end_hunk_0
