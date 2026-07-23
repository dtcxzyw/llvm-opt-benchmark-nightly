inline.NumInlined: 101
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hermes_g_strtod:bb.a
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ho ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !13
  store ptr %i.hq, ptr %.1403.i, align 8, !tbaa !15
  store ptr %.1403.i, ptr %i.hp, align 8, !tbaa !13
  br label %Bfree.exit618.i

Bfree.exit618.i:                                  ; preds = %bb.ay, %bb.ax, %Bfree.exit616.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.1408.i, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !29 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 7
  br i1 %i.ht, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %Bfree.exit618.i
  call void @free(ptr noundef nonnull %.1408.i) #17
  br label %Bfree.exit620.i

bb.ba:                                            ; preds = %Bfree.exit618.i
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hv = sext i32 %i.hs to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !13
  store ptr %i.hx, ptr %.1408.i, align 8, !tbaa !15
  store ptr %.1408.i, ptr %i.hw, align 8, !tbaa !13
  br label %Bfree.exit620.i

Bfree.exit620.i:                                  ; preds = %bb.ba, %bb.az
  %.not.i621.i = icmp eq ptr %.1.i, null
  br i1 %.not.i621.i, label %Bfree.exit622.i, label %bb.bb

bb.bb:                                            ; preds = %Bfree.exit620.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !29 ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, 7
  br i1 %i.ia, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %.1.i) #17
  br label %Bfree.exit622.i

bb.bd:                                            ; preds = %bb.bb
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ic = sext i32 %i.hz to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !13
  store ptr %i.ie, ptr %.1.i, align 8, !tbaa !15
  store ptr %.1.i, ptr %i.id, align 8, !tbaa !13
  br label %Bfree.exit622.i

Bfree.exit622.i:                                  ; preds = %bb.bd, %bb.bc, %Bfree.exit620.i, %bb.ao
  %i.if = tail call ptr @__errno_location() #18
  store i32 34, ptr %i.if, align 4, !tbaa !3
  br label %.loopexit751.i

bb.be:                                            ; preds = %bb.an
  %i.ig = icmp samesign ugt i32 %i.gi, 31
  br i1 %i.ig, label %.lr.ph926.preheader.i, label %._crit_edge927.i

.lr.ph926.preheader.i:                            ; preds = %bb.be
  %i.ih = lshr i32 %i.gi, 4
  br label %.lr.ph926.i

.lr.ph926.i:                                      ; preds = %bb.bg, %.lr.ph926.preheader.i
  %i.ii = phi double [ %.promoted1342.i, %.lr.ph926.preheader.i ], [ %i.is, %bb.bg ]
  %i.ij = phi i32 [ %i.gs, %.lr.ph926.preheader.i ], [ %i.it, %bb.bg ]
  %indvars.iv1057.i = phi i64 [ 0, %.lr.ph926.preheader.i ], [ %indvars.iv.next1058.i, %bb.bg ] ; 2 uses
  %.0507923.i = phi i32 [ %i.ih, %.lr.ph926.preheader.i ], [ %i.iv, %bb.bg ] ; 3 uses
  %i.ik = phi double [ %.promoted1342.i, %.lr.ph926.preheader.i ], [ %i.iu, %bb.bg ] ; 2 uses
  %i.il = and i32 %.0507923.i, 1
  %.not591.i = icmp eq i32 %i.il, 0
  br i1 %.not591.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph926.i
  %i.im = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1057.i
  %i.in = load double, ptr %i.im, align 8, !tbaa !27
  %i.io = fmul double %i.ik, %i.in                ; 3 uses
  %i.ip = bitcast double %i.io to i64
  %i.iq = lshr i64 %i.ip, 32
  %i.ir = trunc nuw i64 %i.iq to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph926.i
  %i.is = phi double [ %i.ii, %.lr.ph926.i ], [ %i.io, %bb.bf ] ; 2 uses
  %i.it = phi i32 [ %i.ij, %.lr.ph926.i ], [ %i.ir, %bb.bf ] ; 2 uses
  %i.iu = phi double [ %i.ik, %.lr.ph926.i ], [ %i.io, %bb.bf ]
  %indvars.iv.next1058.i = add nuw nsw i64 %indvars.iv1057.i, 1 ; 2 uses
  %i.iv = lshr i32 %.0507923.i, 1
  %i.iw = icmp samesign ugt i32 %.0507923.i, 3
  br i1 %i.iw, label %.lr.ph926.i, label %._crit_edge927.loopexit.i, !llvm.loop !30

._crit_edge927.loopexit.i:                        ; preds = %bb.bg
  store double %i.is, ptr %2, align 8
  br label %._crit_edge927.i

._crit_edge927.i:                                 ; preds = %._crit_edge927.loopexit.i, %bb.be
  %i.ix = phi i32 [ %i.gs, %bb.be ], [ %i.it, %._crit_edge927.loopexit.i ]
  %.0492.lcssa.i = phi i64 [ 0, %bb.be ], [ %indvars.iv.next1058.i, %._crit_edge927.loopexit.i ]
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.iz = add i32 %i.ix, -55574528
  store i32 %i.iz, ptr %i.iy, align 4, !tbaa !19
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %.0492.lcssa.i
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !27
  %i.jc = load double, ptr %2, align 8, !tbaa !19
  %i.jd = fmul double %i.jb, %i.jc                ; 2 uses
  store double %i.jd, ptr %2, align 8, !tbaa !19
  %i.je = bitcast double %i.jd to i64
  %i.jf = lshr i64 %i.je, 32
  %i.jg = trunc nuw i64 %i.jf to i32              ; 2 uses
  %i.jh = and i32 %i.jg, 2146435072               ; 2 uses
  %i.ji = icmp samesign ugt i32 %i.jh, 2090860544
  br i1 %i.ji, label %.loopexit.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge927.i
  %i.jj = icmp samesign ugt i32 %i.jh, 2089811968
  br i1 %i.jj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 2146435071, ptr %i.iy, align 4, !tbaa !19
  store i32 -1, ptr %2, align 8, !tbaa !19
  br label %bb.cb

bb.bj:                                            ; preds = %bb.bh
  %i.jk = add i32 %i.jg, 55574528
  store i32 %i.jk, ptr %i.iy, align 4, !tbaa !19
  br label %bb.cb

bb.bk:                                            ; preds = %bb.aj
  %i.jl = icmp slt i32 %i.gi, 0
  br i1 %i.jl, label %bb.bl, label %bb.cb

bb.bl:                                            ; preds = %bb.bk
  %i.jm = sub nsw i32 0, %i.gi                    ; 4 uses
  %i.jn = and i32 %i.jm, 15                       ; 2 uses
  %.not560.i = icmp eq i32 %i.jn, 0
  br i1 %.not560.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.jo
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !27
  %i.jr = fdiv double %i.gg, %i.jq                ; 3 uses
  store double %i.jr, ptr %2, align 8, !tbaa !19
  %i.js = bitcast double %i.jr to i64             ; 2 uses
  %i.jt = lshr i64 %i.js, 32
  %i.ju = trunc nuw i64 %i.jt to i32
  %i.jv = trunc i64 %i.js to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.jw = phi i32 [ %i.jv, %bb.bm ], [ %i.gf, %bb.bl ]
  %i.jx = phi i32 [ %i.ju, %bb.bm ], [ %i.ge, %bb.bl ]
  %.promoted1340.i = phi double [ %i.jr, %bb.bm ], [ %i.gg, %bb.bl ] ; 2 uses
  %i.jy = lshr i32 %i.jm, 4                       ; 2 uses
  %.not561.i = icmp eq i32 %i.jy, 0
  br i1 %.not561.i, label %bb.cb, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jz = icmp samesign ugt i32 %i.jm, 511
  br i1 %i.jz, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bo, %bb.bq
  %i.ka = phi double [ %i.km, %bb.bq ], [ %.promoted1340.i, %bb.bo ]
  %i.kb = phi i32 [ %i.kn, %bb.bq ], [ %i.jw, %bb.bo ]
  %i.kc = phi i32 [ %i.ko, %bb.bq ], [ %i.jx, %bb.bo ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bq ], [ 0, %bb.bo ] ; 2 uses
  %.1508920.i = phi i32 [ %i.kq, %bb.bq ], [ %i.jy, %bb.bo ] ; 2 uses
  %i.kd = phi double [ %i.kp, %bb.bq ], [ %.promoted1340.i, %bb.bo ] ; 2 uses
  %i.ke = and i32 %.1508920.i, 1
  %.not565.i = icmp eq i32 %i.ke, 0
  br i1 %.not565.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.preheader
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv.i
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !27
  %i.kh = fmul double %i.kd, %i.kg                ; 3 uses
  %i.ki = bitcast double %i.kh to i64             ; 2 uses
  %i.kj = lshr i64 %i.ki, 32
  %i.kk = trunc nuw i64 %i.kj to i32
  %i.kl = trunc i64 %i.ki to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.preheader
  %i.km = phi double [ %i.ka, %.preheader ], [ %i.kh, %bb.bp ] ; 3 uses
  %i.kn = phi i32 [ %i.kb, %.preheader ], [ %i.kl, %bb.bp ] ; 2 uses
  %i.ko = phi i32 [ %i.kc, %.preheader ], [ %i.kk, %bb.bp ] ; 3 uses
  %i.kp = phi double [ %i.kd, %.preheader ], [ %i.kh, %bb.bp ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.kq = lshr i32 %.1508920.i, 1                 ; 2 uses
  %.not563.i = icmp eq i32 %i.kq, 0
  br i1 %.not563.i, label %bb.br, label %.preheader, !llvm.loop !31

bb.br:                                            ; preds = %bb.bq
  store double %i.km, ptr %2, align 8
  %.not562.i = icmp samesign ult i32 %i.jm, 256   ; 2 uses
  %spec.select732.i = select i1 %.not562.i, i32 0, i32 106
  br i1 %.not562.i, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ks = lshr i32 %i.ko, 20
  %i.kt = and i32 %i.ks, 2047                     ; 6 uses
  %i.ku = sub nsw i32 107, %i.kt
  %i.kv = icmp samesign ult i32 %i.kt, 107
  br i1 %i.kv, label %bb.bt, label %thread-pre-split

bb.bt:                                            ; preds = %bb.bs
  %i.kw = icmp samesign ult i32 %i.kt, 76
  br i1 %i.kw, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.kx = icmp samesign ult i32 %i.kt, 53
  br i1 %i.kx, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %2, align 8, !tbaa !19
  %i.ky = icmp samesign ult i32 %i.kt, 55
  br i1 %i.ky, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 57671680, ptr %i.kr, align 4, !tbaa !19
  br label %thread-pre-split

bb.bx:                                            ; preds = %bb.bv
  %i.kz = sub nuw nsw i32 75, %i.kt
  %i.la = shl nsw i32 -1, %i.kz
  %i.lb = and i32 %i.la, %i.ko
  store i32 %i.lb, ptr %i.kr, align 4, !tbaa !19
  br label %thread-pre-split

bb.by:                                            ; preds = %bb.bt
  %i.lc = shl nsw i32 -1, %i.ku
  %i.ld = and i32 %i.lc, %i.kn
  store i32 %i.ld, ptr %2, align 8, !tbaa !19
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bs, %bb.bw, %bb.bx, %bb.by
  %.pr = load double, ptr %2, align 8, !tbaa !19
  br label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split, %bb.br
  %i.le = phi double [ %.pr, %thread-pre-split ], [ %i.km, %bb.br ]
  %i.lf = fcmp une double %i.le, 0.000000e+00
  br i1 %i.lf, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.iw, %bb.fd, %sulp.exit653.i, %.loopexit, %bb.bz, %bb.bu, %bb.bo
  %.2419.i = phi ptr [ %.4421.i, %bb.iw ], [ %.4421.i, %.loopexit ], [ undef, %bb.bz ], [ %.4421.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4421.i, %sulp.exit653.i ]
  %.2412.i = phi ptr [ %.4414.i, %bb.iw ], [ %.4414.i, %.loopexit ], [ undef, %bb.bz ], [ %.4414.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4414.i, %sulp.exit653.i ]
  %.2409.i = phi ptr [ null, %bb.iw ], [ %.234.lcssa.i.i, %.loopexit ], [ null, %bb.bz ], [ %.234.lcssa.i.i, %bb.fd ], [ null, %bb.bo ], [ null, %bb.bu ], [ %.234.lcssa.i.i, %sulp.exit653.i ]
  %.2404.i = phi ptr [ %.4406.i, %bb.iw ], [ %.4406.i, %.loopexit ], [ undef, %bb.bz ], [ %.4406.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4406.i, %sulp.exit653.i ]
  %.2.i = phi ptr [ %.5.i, %bb.iw ], [ %i.uo, %.loopexit ], [ undef, %bb.bz ], [ %i.uo, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %i.uo, %sulp.exit653.i ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.ao

bb.cb:                                            ; preds = %bb.bz, %bb.bn, %bb.bk, %bb.bj, %bb.bi, %bb.am
  %.sroa.44711.1.i = phi i32 [ 0, %bb.am ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bn ], [ %spec.select732.i, %bb.bz ], [ 0, %bb.bk ] ; 6 uses
  %i.lg = sub nsw i32 %.5489.i, %.4470.i          ; 6 uses
  %i.lh = icmp sgt i32 %.5489.i, 40
  br i1 %i.lh, label %bb.cc, label %.loopexit745.i

bb.cc:                                            ; preds = %bb.cb
  %i.li = icmp slt i32 %spec.select597.i, 18
  %i.lj = add nsw i32 %.sroa.12.0.i, 18
  %.2494.i = select i1 %i.li, i32 %i.lj, i32 18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.1500.i = phi i32 [ 18, %bb.cc ], [ %i.ln, %bb.cd ] ; 12 uses
  %.3495.i = phi i32 [ %.2494.i, %bb.cc ], [ %.4496.i, %bb.cd ] ; 3 uses
  %.not568.i = icmp sgt i32 %.3495.i, %.sroa.6.2.i
  %spec.select598.i = call i32 @llvm.smin.i32(i32 %.3495.i, i32 %.sroa.0.2.i)
  %.4496.in.i = select i1 %.not568.i, i32 %.3495.i, i32 %spec.select598.i
  %.4496.i = add nsw i32 %.4496.in.i, -1          ; 2 uses
  %i.lk = sext i32 %.4496.i to i64
  %i.ll = getelementptr inbounds i8, ptr %.2450.i, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !19
  %.not570.i = icmp eq i8 %i.lm, 48
  %i.ln = add nsw i32 %.1500.i, -1
  br i1 %.not570.i, label %bb.cd, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lo = sub nsw i32 %.5489.i, %.1500.i
  %i.lp = add nsw i32 %i.lo, %i.ej                ; 4 uses
  %spec.select599.i = call i32 @llvm.smin.i32(i32 %spec.select597.i, i32 %.1500.i) ; 9 uses
  %i.lq = icmp slt i32 %.1500.i, 9
  br i1 %i.lq, label %.preheader746.i, label %.loopexit745.i

.preheader746.i:                                  ; preds = %bb.ce
  %i.lr = icmp sgt i32 %spec.select599.i, 0
  br i1 %i.lr, label %.lr.ph931.preheader.i, label %.preheader.i

.lr.ph931.preheader.i:                            ; preds = %.preheader746.i
  %wide.trip.count.i = zext nneg i32 %spec.select599.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ls = icmp ult i32 %spec.select599.i, 4
  br i1 %i.ls, label %.lr.ph931.i.epil.preheader, label %.lr.ph931.preheader.i.new

.lr.ph931.preheader.i.new:                        ; preds = %.lr.ph931.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph931.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph931.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph931.i.epil.preheader

.lr.ph931.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph931.preheader.i
  %indvars.iv1060.i.epil.init = phi i64 [ 0, %.lr.ph931.preheader.i ], [ %indvars.iv.next1061.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.9930.i.epil.init = phi i32 [ 0, %.lr.ph931.preheader.i ], [ %i.nl, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod674 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod674)
  br label %.lr.ph931.i.epil

.lr.ph931.i.epil:                                 ; preds = %.lr.ph931.i.epil, %.lr.ph931.i.epil.preheader
  %indvars.iv1060.i.epil = phi i64 [ %indvars.iv1060.i.epil.init, %.lr.ph931.i.epil.preheader ], [ %indvars.iv.next1061.i.epil, %.lr.ph931.i.epil ] ; 2 uses
  %.9930.i.epil = phi i32 [ %.9930.i.epil.init, %.lr.ph931.i.epil.preheader ], [ %i.ly, %.lr.ph931.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph931.i.epil.preheader ], [ %epil.iter.next, %.lr.ph931.i.epil ]
  %i.lt = mul i32 %.9930.i.epil, 10
  %i.lu = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i.epil
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !19
  %i.lw = sext i8 %i.lv to i32
  %i.lx = add i32 %i.lt, -48
  %i.ly = add i32 %i.lx, %i.lw                    ; 2 uses
  %indvars.iv.next1061.i.epil = add nuw nsw i64 %indvars.iv1060.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph931.i.epil, !llvm.loop !32

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph931.i.epil, %.preheader746.i
  %.2501.lcssa.i = phi i32 [ 0, %.preheader746.i ], [ %spec.select599.i, %.lr.ph931.i.epil ], [ %spec.select599.i, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa.i = phi i32 [ 0, %.preheader746.i ], [ %i.nl, %.preheader.i.loopexit.unr-lcssa ], [ %i.ly, %.lr.ph931.i.epil ] ; 3 uses
  %i.lz = icmp slt i32 %.2501.lcssa.i, %.1500.i
  br i1 %i.lz, label %.lr.ph937.preheader.i, label %._crit_edge.thread.i.i.thread

.lr.ph937.preheader.i:                            ; preds = %.preheader.i
  %i.ma = sext i32 %.sroa.6.2.i to i64            ; 2 uses
  %i.mb = sub i32 %.1500.i, %.2501.lcssa.i
  %xtraiter675 = and i32 %i.mb, 3                 ; 2 uses
  %lcmp.mod676.not = icmp eq i32 %xtraiter675, 0
  br i1 %lcmp.mod676.not, label %.lr.ph937.i.prol.loopexit, label %.lr.ph937.i.prol

.lr.ph937.i.prol:                                 ; preds = %.lr.ph937.preheader.i, %.lr.ph937.i.prol
  %indvars.iv1065.i.prol = phi i64 [ %indvars.iv.next1066.i.prol, %.lr.ph937.i.prol ], [ %i.ma, %.lr.ph937.preheader.i ] ; 2 uses
  %.10936.i.prol = phi i32 [ %i.mh, %.lr.ph937.i.prol ], [ %.9.lcssa.i, %.lr.ph937.preheader.i ]
  %.3502934.i.prol = phi i32 [ %i.mi, %.lr.ph937.i.prol ], [ %.2501.lcssa.i, %.lr.ph937.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph937.i.prol ], [ 0, %.lr.ph937.preheader.i ]
  %i.mc = mul i32 %.10936.i.prol, 10
  %indvars.iv.next1066.i.prol = add nsw i64 %indvars.iv1065.i.prol, 1 ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %.2450.i, i64 %indvars.iv1065.i.prol
  %i.me = load i8, ptr %i.md, align 1, !tbaa !19
  %i.mf = sext i8 %i.me to i32
  %i.mg = add i32 %i.mc, -48
  %i.mh = add i32 %i.mg, %i.mf                    ; 3 uses
  %i.mi = add nuw nsw i32 %.3502934.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter675
  br i1 %prol.iter.cmp.not, label %.lr.ph937.i.prol.loopexit, label %.lr.ph937.i.prol, !llvm.loop !34

.lr.ph937.i.prol.loopexit:                        ; preds = %.lr.ph937.i.prol, %.lr.ph937.preheader.i
  %.lcssa641.unr = phi i32 [ poison, %.lr.ph937.preheader.i ], [ %i.mh, %.lr.ph937.i.prol ]
  %indvars.iv1065.i.unr = phi i64 [ %i.ma, %.lr.ph937.preheader.i ], [ %indvars.iv.next1066.i.prol, %.lr.ph937.i.prol ]
  %.10936.i.unr = phi i32 [ %.9.lcssa.i, %.lr.ph937.preheader.i ], [ %i.mh, %.lr.ph937.i.prol ]
  %.3502934.i.unr = phi i32 [ %.2501.lcssa.i, %.lr.ph937.preheader.i ], [ %i.mi, %.lr.ph937.i.prol ]
  %i.mj = sub i32 %.2501.lcssa.i, %.1500.i
  %i.mk = icmp ugt i32 %i.mj, -4
  br i1 %i.mk, label %._crit_edge.thread.i.i.thread, label %.lr.ph937.i

.lr.ph931.i:                                      ; preds = %.lr.ph931.i, %.lr.ph931.preheader.i.new
  %indvars.iv1060.i = phi i64 [ 0, %.lr.ph931.preheader.i.new ], [ %indvars.iv.next1061.i.3, %.lr.ph931.i ] ; 5 uses
  %.9930.i = phi i32 [ 0, %.lr.ph931.preheader.i.new ], [ %i.nl, %.lr.ph931.i ]
  %niter = phi i64 [ 0, %.lr.ph931.preheader.i.new ], [ %niter.next.3, %.lr.ph931.i ]
  %i.ml = mul i32 %.9930.i, 10
  %i.mm = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !19
  %i.mo = sext i8 %i.mn to i32
  %i.mp = add i32 %i.ml, -48
  %i.mq = add i32 %i.mp, %i.mo
  %i.mr = mul i32 %i.mq, 10
  %i.ms = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 1
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !19
  %i.mv = sext i8 %i.mu to i32
  %i.mw = add i32 %i.mr, -48
  %i.mx = add i32 %i.mw, %i.mv
  %i.my = mul i32 %i.mx, 10
  %i.mz = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !19
  %i.nc = sext i8 %i.nb to i32
  %i.nd = add i32 %i.my, -48
  %i.ne = add i32 %i.nd, %i.nc
  %i.nf = mul i32 %i.ne, 10
  %i.ng = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 3
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !19
  %i.nj = sext i8 %i.ni to i32
  %i.nk = add i32 %i.nf, -48
  %i.nl = add i32 %i.nk, %i.nj                    ; 3 uses
  %indvars.iv.next1061.i.3 = add nuw nsw i64 %indvars.iv1060.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph931.i, !llvm.loop !35

.lr.ph937.i:                                      ; preds = %.lr.ph937.i.prol.loopexit, %.lr.ph937.i
  %indvars.iv1065.i = phi i64 [ %indvars.iv.next1066.i.3, %.lr.ph937.i ], [ %indvars.iv1065.i.unr, %.lr.ph937.i.prol.loopexit ] ; 5 uses
  %.10936.i = phi i32 [ %i.om, %.lr.ph937.i ], [ %.10936.i.unr, %.lr.ph937.i.prol.loopexit ]
  %.3502934.i = phi i32 [ %i.on, %.lr.ph937.i ], [ %.3502934.i.unr, %.lr.ph937.i.prol.loopexit ]
  %i.nm = mul i32 %.10936.i, 10
  %i.nn = getelementptr inbounds i8, ptr %.2450.i, i64 %indvars.iv1065.i
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !19
  %i.np = sext i8 %i.no to i32
  %i.nq = add i32 %i.nm, -48
  %i.nr = add i32 %i.nq, %i.np
  %i.ns = mul i32 %i.nr, 10
  %i.nt = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1065.i
  %i.nu = getelementptr i8, ptr %i.nt, i64 1
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !19
  %i.nw = sext i8 %i.nv to i32
  %i.nx = add i32 %i.ns, -48
  %i.ny = add i32 %i.nx, %i.nw
  %i.nz = mul i32 %i.ny, 10
  %i.oa = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1065.i
  %i.ob = getelementptr i8, ptr %i.oa, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !19
  %i.od = sext i8 %i.oc to i32
  %i.oe = add i32 %i.nz, -48
  %i.of = add i32 %i.oe, %i.od
  %i.og = mul i32 %i.of, 10
  %indvars.iv.next1066.i.3 = add nsw i64 %indvars.iv1065.i, 4
  %i.oh = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1065.i
  %i.oi = getelementptr i8, ptr %i.oh, i64 3
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !19
  %i.ok = sext i8 %i.oj to i32
  %i.ol = add i32 %i.og, -48
  %i.om = add i32 %i.ol, %i.ok                    ; 2 uses
  %i.on = add nuw nsw i32 %.3502934.i, 4          ; 2 uses
  %exitcond1069.not.i.3 = icmp eq i32 %i.on, %.1500.i
  br i1 %exitcond1069.not.i.3, label %._crit_edge.thread.i.i.thread, label %.lr.ph937.i, !llvm.loop !36

.loopexit745.i:                                   ; preds = %bb.ce, %bb.cb
  %.2511.i = phi i32 [ %i.ej, %bb.cb ], [ %i.lp, %bb.ce ] ; 4 uses
  %.6490.i = phi i32 [ %.5489.i, %bb.cb ], [ %.1500.i, %bb.ce ] ; 6 uses
  %.2483.i = phi i32 [ %spec.select597.i, %bb.cb ], [ %spec.select599.i, %bb.ce ] ; 4 uses
  %i.oo = add nsw i32 %.6490.i, 8
  %4 = sdiv i32 %i.oo, 9
  %i.op = icmp sgt i32 %.6490.i, 9
  br i1 %i.op, label %.lr.ph.i.i, label %._crit_edge.thread.i.i.thread

.lr.ph.i.i:                                       ; preds = %.loopexit745.i, %.lr.ph.i.i
  %.040.i.i = phi i32 [ %i.oq, %.lr.ph.i.i ], [ 1, %.loopexit745.i ]
  %.02839.i.i = phi i32 [ %i.or, %.lr.ph.i.i ], [ 0, %.loopexit745.i ] ; 3 uses
  %i.oq = shl i32 %.040.i.i, 1                    ; 2 uses
  %i.or = add nuw nsw i32 %.02839.i.i, 1          ; 5 uses
  %i.os = icmp sgt i32 %4, %i.oq
  br i1 %i.os, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !37

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ot = icmp samesign ult i32 %.02839.i.i, 7
  br i1 %i.ot, label %._crit_edge.thread.i.i, label %bb.cg

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert292 = zext nneg i32 %i.or to i64
  %.phi.trans.insert293 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert292
  %.pre = load ptr, ptr %.phi.trans.insert293, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i.thread, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.thread.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ov = zext nneg i32 %i.or to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ov
  %i.ox = load ptr, ptr %.pre, align 8, !tbaa !15
  store ptr %i.ox, ptr %i.ow, align 8, !tbaa !13
  br label %Balloc.exit.i.i

bb.cg:                                            ; preds = %._crit_edge.i.i
  %i.oy = shl nuw i32 2, %.02839.i.i              ; 2 uses
  %i.oz = add nsw i32 %i.oy, -1
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = shl nuw nsw i64 %i.pa, 2
  %i.pc = add nuw nsw i64 %i.pb, 36
  %i.pd = call noalias ptr @malloc(i64 noundef %i.pc) #19
  %i.pe = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.pe, align 4, !tbaa !12
  br label %bb.ch

._crit_edge.thread.i.i.thread:                    ; preds = %.lr.ph937.i.prol.loopexit, %.lr.ph937.i, %.preheader.i, %.loopexit745.i, %._crit_edge.thread.i.i
  %.028.lcssa58.i.i380 = phi i32 [ %i.or, %._crit_edge.thread.i.i ], [ 0, %.loopexit745.i ], [ 0, %.preheader.i ], [ 0, %.lr.ph937.i ], [ 0, %.lr.ph937.i.prol.loopexit ] ; 2 uses
  %.25111201.i379 = phi i32 [ %.2511.i, %._crit_edge.thread.i.i ], [ %.2511.i, %.loopexit745.i ], [ %i.lp, %.preheader.i ], [ %i.lp, %.lr.ph937.i ], [ %i.lp, %.lr.ph937.i.prol.loopexit ]
  %.64901205.i378 = phi i32 [ %.6490.i, %._crit_edge.thread.i.i ], [ %.6490.i, %.loopexit745.i ], [ %.1500.i, %.preheader.i ], [ %.1500.i, %.lr.ph937.i ], [ %.1500.i, %.lr.ph937.i.prol.loopexit ]
  %.24831209.i377 = phi i32 [ %.2483.i, %._crit_edge.thread.i.i ], [ %.2483.i, %.loopexit745.i ], [ %spec.select599.i, %.preheader.i ], [ %spec.select599.i, %.lr.ph937.i ], [ %spec.select599.i, %.lr.ph937.i.prol.loopexit ]
  %.111213.i376 = phi i32 [ %.8436.i, %._crit_edge.thread.i.i ], [ %.8436.i, %.loopexit745.i ], [ %.9.lcssa.i, %.preheader.i ], [ %.lcssa641.unr, %.lr.ph937.i.prol.loopexit ], [ %i.om, %.lr.ph937.i ]
  %i.pf = shl nuw nsw i32 1, %.028.lcssa58.i.i380 ; 2 uses
  %i.pg = add nsw i32 %i.pf, -1
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl nuw nsw i64 %i.ph, 2
  %i.pj = add nuw nsw i64 %i.pi, 36
  %i.pk = lshr i64 %i.pj, 3
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.pk
  store ptr %i.pl, ptr %i.h, align 8, !tbaa !11
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge.thread.i.i.thread
  %.111211.i = phi i32 [ %.111213.i376, %._crit_edge.thread.i.i.thread ], [ %.8436.i, %bb.cg ]
  %.24831207.i = phi i32 [ %.24831209.i377, %._crit_edge.thread.i.i.thread ], [ %.2483.i, %bb.cg ]
  %.64901203.i = phi i32 [ %.64901205.i378, %._crit_edge.thread.i.i.thread ], [ %.6490.i, %bb.cg ]
  %.25111199.i = phi i32 [ %.25111201.i379, %._crit_edge.thread.i.i.thread ], [ %.2511.i, %bb.cg ]
  %.028.lcssa56.i.i = phi i32 [ %.028.lcssa58.i.i380, %._crit_edge.thread.i.i.thread ], [ %i.or, %bb.cg ]
  %i.pm = phi i32 [ %i.pf, %._crit_edge.thread.i.i.thread ], [ %i.oy, %bb.cg ]
  %.0.i.i.i = phi ptr [ %i.g, %._crit_edge.thread.i.i.thread ], [ %i.pd, %bb.cg ] ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %.028.lcssa56.i.i, ptr %i.pn, align 8, !tbaa !29
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 %i.pm, ptr %i.po, align 4, !tbaa !38
  br label %Balloc.exit.i.i

Balloc.exit.i.i:                                  ; preds = %bb.ch, %bb.cf
  %.111210.i = phi i32 [ %.8436.i, %bb.cf ], [ %.111211.i, %bb.ch ]
  %.24831206.i = phi i32 [ %.2483.i, %bb.cf ], [ %.24831207.i, %bb.ch ] ; 3 uses
  %.64901202.i = phi i32 [ %.6490.i, %bb.cf ], [ %.64901203.i, %bb.ch ] ; 4 uses
  %.25111198.i = phi i32 [ %.2511.i, %bb.cf ], [ %.25111199.i, %bb.ch ] ; 3 uses
  %.1.i.i.i = phi ptr [ %.pre, %bb.cf ], [ %.0.i.i.i, %bb.ch ] ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 20
  %i.pq = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  store i32 0, ptr %i.pq, align 8, !tbaa !39
  %i.pr = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 24
  store i32 %.111210.i, ptr %i.pr, align 8, !tbaa !3
  store i32 1, ptr %i.pp, align 4, !tbaa !40
  %i.ps = icmp sgt i32 %.24831206.i, 9
  br i1 %i.ps, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %Balloc.exit.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.2450.i, i64 9
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %bb.ci
  %.032.i.i = phi ptr [ %.1.i.i.i, %bb.ci ], [ %i.py, %bb.cj ]
  %.029.i.i = phi i32 [ 9, %bb.ci ], [ %i.pz, %bb.cj ]
  %.027.i.i = phi ptr [ %i.pt, %bb.ci ], [ %i.pu, %bb.cj ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 1 ; 2 uses
  %i.pv = load i8, ptr %.027.i.i, align 1, !tbaa !19
  %i.pw = sext i8 %i.pv to i32
  %i.px = add nsw i32 %i.pw, -48
  %i.py = call fastcc ptr @multadd(ptr noundef nonnull %3, ptr noundef %.032.i.i, i32 noundef 10, i32 noundef %i.px) ; 2 uses
  %i.pz = add nuw nsw i32 %.029.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.pz, %.24831206.i
  br i1 %exitcond.not.i.i, label %bb.ck, label %bb.cj, !llvm.loop !41

bb.ck:                                            ; preds = %bb.cj
  %i.qa = sext i32 %.sroa.12.0.i to i64
  %i.qb = getelementptr inbounds i8, ptr %i.pu, i64 %i.qa
  br label %bb.cm

bb.cl:                                            ; preds = %Balloc.exit.i.i
  %i.qc = sext i32 %.sroa.12.0.i to i64
  %i.qd = getelementptr i8, ptr %.2450.i, i64 %i.qc
  %i.qe = getelementptr i8, ptr %i.qd, i64 9
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.133.i.i = phi ptr [ %i.py, %bb.ck ], [ %.1.i.i.i, %bb.cl ] ; 2 uses
  %.130.i.i = phi i32 [ %.24831206.i, %bb.ck ], [ 9, %bb.cl ] ; 2 uses
  %.1.i.i = phi ptr [ %i.qb, %bb.ck ], [ %i.qe, %bb.cl ]
  %i.qf = icmp slt i32 %.130.i.i, %.64901202.i
  br i1 %i.qf, label %.lr.ph45.i.i, label %s2b.exit.i

.lr.ph45.i.i:                                     ; preds = %bb.cm, %.lr.ph45.i.i
  %.243.i.i = phi ptr [ %i.qg, %.lr.ph45.i.i ], [ %.1.i.i, %bb.cm ] ; 2 uses
  %.23142.i.i = phi i32 [ %i.ql, %.lr.ph45.i.i ], [ %.130.i.i, %bb.cm ]
  %.23441.i.i = phi ptr [ %i.qk, %.lr.ph45.i.i ], [ %.133.i.i, %bb.cm ]
  %i.qg = getelementptr inbounds nuw i8, ptr %.243.i.i, i64 1
  %i.qh = load i8, ptr %.243.i.i, align 1, !tbaa !19
  %i.qi = sext i8 %i.qh to i32
  %i.qj = add nsw i32 %i.qi, -48
  %i.qk = call fastcc ptr @multadd(ptr noundef nonnull %3, ptr noundef %.23441.i.i, i32 noundef 10, i32 noundef %i.qj) ; 2 uses
  %i.ql = add nuw i32 %.23142.i.i, 1              ; 2 uses
  %exitcond52.not.i.i = icmp eq i32 %i.ql, %.64901202.i
  br i1 %exitcond52.not.i.i, label %s2b.exit.i, label %.lr.ph45.i.i, !llvm.loop !42

s2b.exit.i:                                       ; preds = %.lr.ph45.i.i, %bb.cm
  %.234.lcssa.i.i = phi ptr [ %.133.i.i, %bb.cm ], [ %i.qk, %.lr.ph45.i.i ] ; 12 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.234.lcssa.i.i, i64 8 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.234.lcssa.i.i, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %.234.lcssa.i.i, i64 20
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.qq = icmp sgt i32 %.25111198.i, -1           ; 2 uses
  %i.qr = sub nsw i32 0, %.25111198.i
  %.0519.i = select i1 %i.qq, i32 %.25111198.i, i32 0 ; 3 uses
  %.0437.i = select i1 %i.qq, i32 0, i32 %i.qr    ; 3 uses
  %.1521.i = add i32 %.0519.i, %.sroa.44711.1.i
  %.not571.i = icmp eq i32 %.0437.i, 0
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  %i.qt = ptrtoint ptr %i.g to i64                ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.qv = icmp sgt i32 %.0519.i, 0
  %i.qw = icmp sgt i32 %i.lg, %.64901202.i        ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 15 uses
  %i.qy = icmp ne i32 %.sroa.44711.1.i, 0
  %i.qz = icmp eq i32 %i.lg, %.64901202.i
  %i.ra = icmp eq i32 %.sroa.44711.1.i, 0         ; 8 uses
  %or.cond44.not736.i = and i1 %i.ra, %i.qz
  br label %Bfree.exit669.i

Bfree.exit669.i:                                  ; preds = %Bfree.exit669.i.backedge, %s2b.exit.i
  %i.rb = load i32, ptr %i.qm, align 8, !tbaa !29 ; 5 uses
  %i.rc = icmp slt i32 %i.rb, 8
  br i1 %i.rc, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %Bfree.exit669.i
  %i.rd = sext i32 %i.rb to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.rd ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !13 ; 3 uses
  %.not.i624.i = icmp eq ptr %i.rf, null
  br i1 %.not.i624.i, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !15
  store ptr %i.rg, ptr %i.re, align 8, !tbaa !13
  br label %Balloc.exit.i

bb.cp:                                            ; preds = %Bfree.exit669.i
  %i.rh = shl nuw i32 1, %i.rb                    ; 2 uses
  %i.ri = add nsw i32 %i.rh, -1
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = shl nuw nsw i64 %i.rj, 2
  %i.rl = add nuw nsw i64 %i.rk, 36
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cn
  %i.rm = shl nuw nsw i32 1, %i.rb                ; 3 uses
  %i.rn = add nsw i32 %i.rm, -1
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = shl nuw nsw i64 %i.ro, 2
  %i.rq = add nuw nsw i64 %i.rp, 36               ; 2 uses
  %i.rr = lshr i64 %i.rq, 3                       ; 2 uses
  %i.rs = load ptr, ptr %i.h, align 8, !tbaa !11  ; 3 uses
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = sub i64 %i.rt, %i.qt
  %i.rv = ashr exact i64 %i.ru, 3
  %i.rw = add nsw i64 %i.rv, %i.rr
  %i.rx = load i32, ptr %3, align 8, !tbaa !7
  %i.ry = sext i32 %i.rx to i64
  %.not26.i.i = icmp sgt i64 %i.rw, %i.ry
  br i1 %.not26.i.i, label %bb.cs, label %bb.cr
end_hunk_0
