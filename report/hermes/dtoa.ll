inline.NumInlined: 101
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hermes_g_strtod:bb.a
  %i.gk = and i32 %i.gi, 15                       ; 2 uses
  %.not566.i = icmp eq i32 %i.gk, 0
  br i1 %.not566.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.gl
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !27
  %i.go = fmul double %i.gg, %i.gn                ; 3 uses
  store double %i.go, ptr %2, align 8, !tbaa !19
  %i.gp = bitcast double %i.go to i64
  %i.gq = lshr i64 %i.gp, 32
  %i.gr = trunc nuw i64 %i.gq to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gs = phi i32 [ %i.gr, %bb.al ], [ %i.ge, %bb.ak ] ; 2 uses
  %.promoted1342.i = phi double [ %i.go, %bb.al ], [ %i.gg, %bb.ak ] ; 2 uses
  %i.gt = and i32 %i.gi, 2147483632               ; 2 uses
  %.not567.i = icmp eq i32 %i.gt, 0
  br i1 %.not567.i, label %bb.cb, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = icmp samesign ugt i32 %i.gt, 308
  br i1 %i.gu, label %.loopexit.i, label %bb.be

.loopexit.i:                                      ; preds = %bb.fi, %bigcomp.exit.i, %bb.ej, %._crit_edge927.i, %bb.an
  %.0417.i = phi ptr [ undef, %bb.an ], [ undef, %._crit_edge927.i ], [ %.4421.i, %bigcomp.exit.i ], [ %.4421.i, %bb.ej ], [ %.4421.i, %bb.fi ]
  %.0410.i = phi ptr [ undef, %bb.an ], [ undef, %._crit_edge927.i ], [ %.4414.i, %bigcomp.exit.i ], [ %.4414.i, %bb.ej ], [ %.4414.i, %bb.fi ]
  %.0407.i = phi ptr [ null, %bb.an ], [ null, %._crit_edge927.i ], [ null, %bigcomp.exit.i ], [ %.234.lcssa.i.i, %bb.ej ], [ %.234.lcssa.i.i, %bb.fi ]
  %.0402.i = phi ptr [ undef, %bb.an ], [ undef, %._crit_edge927.i ], [ %.4406.i, %bigcomp.exit.i ], [ %.4406.i, %bb.ej ], [ %.4406.i, %bb.fi ]
  %.0401.i = phi ptr [ undef, %bb.an ], [ undef, %._crit_edge927.i ], [ %.5.i, %bigcomp.exit.i ], [ %i.up, %bb.ej ], [ %i.up, %bb.fi ]
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2146435072, ptr %i.gv, align 4, !tbaa !19
  store i32 0, ptr %2, align 8, !tbaa !19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ca, %.loopexit.i
  %.1418.i = phi ptr [ %.0417.i, %.loopexit.i ], [ %.2419.i, %bb.ca ] ; 5 uses
  %.1411.i = phi ptr [ %.0410.i, %.loopexit.i ], [ %.2412.i, %bb.ca ] ; 5 uses
  %.1408.i = phi ptr [ %.0407.i, %.loopexit.i ], [ %.2409.i, %bb.ca ] ; 5 uses
  %.1403.i = phi ptr [ %.0402.i, %.loopexit.i ], [ %.2404.i, %bb.ca ] ; 5 uses
  %.1.i = phi ptr [ %.0401.i, %.loopexit.i ], [ %.2.i, %bb.ca ] ; 5 uses
  %.not592.i = icmp eq ptr %.1408.i, null
  br i1 %.not592.i, label %Bfree.exit622.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i = icmp eq ptr %.1418.i, null
  br i1 %.not.i.i, label %Bfree.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gw = getelementptr inbounds nuw i8, ptr %.1418.i, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !29 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, 7
  br i1 %i.gy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %.1418.i) #17
  br label %Bfree.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ha = sext i32 %i.gx to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ha ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !13
  store ptr %i.hc, ptr %.1418.i, align 8, !tbaa !15
  store ptr %.1418.i, ptr %i.hb, align 8, !tbaa !13
  br label %Bfree.exit.i

Bfree.exit.i:                                     ; preds = %bb.as, %bb.ar, %bb.ap
  %.not.i615.i = icmp eq ptr %.1411.i, null
  br i1 %.not.i615.i, label %Bfree.exit616.i, label %bb.at

bb.at:                                            ; preds = %Bfree.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.1411.i, i64 8
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !29 ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 7
  br i1 %i.hf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %.1411.i) #17
  br label %Bfree.exit616.i

bb.av:                                            ; preds = %bb.at
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hh = sext i32 %i.he to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.hh ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !13
  store ptr %i.hj, ptr %.1411.i, align 8, !tbaa !15
  store ptr %.1411.i, ptr %i.hi, align 8, !tbaa !13
  br label %Bfree.exit616.i

Bfree.exit616.i:                                  ; preds = %bb.av, %bb.au, %Bfree.exit.i
  %.not.i617.i = icmp eq ptr %.1403.i, null
  br i1 %.not.i617.i, label %Bfree.exit618.i, label %bb.aw

bb.aw:                                            ; preds = %Bfree.exit616.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.1403.i, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !29 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 7
  br i1 %i.hm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %.1403.i) #17
  br label %Bfree.exit618.i

bb.ay:                                            ; preds = %bb.aw
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ho = sext i32 %i.hl to i64
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
  %4 = and i64 %indvars.iv.next1058.i, 4294967295
  br label %._crit_edge927.i

._crit_edge927.i:                                 ; preds = %._crit_edge927.loopexit.i, %bb.be
  %i.ix = phi i32 [ %i.gs, %bb.be ], [ %i.it, %._crit_edge927.loopexit.i ]
  %.0492.lcssa.i = phi i64 [ 0, %bb.be ], [ %4, %._crit_edge927.loopexit.i ]
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
  %.2.i = phi ptr [ %.5.i, %bb.iw ], [ %i.up, %.loopexit ], [ undef, %bb.bz ], [ %i.up, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %i.up, %sulp.exit653.i ]
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
end_hunk_0
