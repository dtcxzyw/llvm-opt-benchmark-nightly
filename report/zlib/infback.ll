Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/infback?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@inflateBack:bb.a
  %i.hj = icmp ult i32 %.7.lcssa, %i.hi
  br i1 %i.hj, label %.lr.ph940.preheader, label %._crit_edge941

.lr.ph940.preheader:                              ; preds = %.preheader681
  %i.hk = zext nneg i32 %.7.lcssa to i64
  %i.hl = zext nneg i32 %i.hi to i64
  br label %.lr.ph940

.lr.ph932:                                        ; preds = %.lr.ph932.preheader, %bb.ao
  %indvars.iv1285 = phi i64 [ %i.hg, %.lr.ph932.preheader ], [ %indvars.iv.next1286, %bb.ao ] ; 2 uses
  %.8538930 = phi i64 [ %.7537.lcssa, %.lr.ph932.preheader ], [ %i.hv, %bb.ao ]
  %.15579929 = phi i32 [ %.13577.lcssa, %.lr.ph932.preheader ], [ %i.hp, %bb.ao ] ; 2 uses
  %i.hm = icmp eq i32 %.15579929, 0
  br i1 %i.hm, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.lr.ph932
  %i.hn = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %i.a, align 8, !tbaa !52
  br label %.loopexit687

bb.ao:                                            ; preds = %bb.am, %.lr.ph932
  %.16580 = phi i32 [ %i.hn, %bb.am ], [ %.15579929, %.lr.ph932 ]
  %i.hp = add i32 %.16580, -1                     ; 2 uses
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store ptr %i.hr, ptr %i.a, align 8, !tbaa !52
  %i.hs = load i8, ptr %i.hq, align 1, !tbaa !8
  %i.ht = zext i8 %i.hs to i64
  %i.hu = shl i64 %i.ht, %indvars.iv1285
  %i.hv = add i64 %i.hu, %.8538930                ; 2 uses
  %indvars.iv.next1286 = add nuw nsw i64 %indvars.iv1285, 8 ; 3 uses
  %i.hw = icmp samesign ult i64 %indvars.iv.next1286, %i.hh
  br i1 %i.hw, label %.lr.ph932, label %._crit_edge933.loopexit, !llvm.loop !34

._crit_edge933.loopexit:                          ; preds = %bb.ao
  %i.hx = trunc nuw nsw i64 %indvars.iv.next1286 to i32
  br label %._crit_edge933

._crit_edge933:                                   ; preds = %._crit_edge933.loopexit, %.preheader682
  %.15579.lcssa = phi i32 [ %.13577.lcssa, %.preheader682 ], [ %i.hp, %._crit_edge933.loopexit ] ; 2 uses
  %.8538.lcssa = phi i64 [ %.7537.lcssa, %.preheader682 ], [ %i.hv, %._crit_edge933.loopexit ]
  %.8.lcssa = phi i32 [ %.7.lcssa, %.preheader682 ], [ %i.hx, %._crit_edge933.loopexit ]
  %i.hy = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.hz = lshr i64 %.8538.lcssa, %i.hy            ; 3 uses
  %i.ia = sub nuw i32 %.8.lcssa, %.lcssa902       ; 2 uses
  %i.ib = load i32, ptr %i.u, align 4, !tbaa !59  ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge933
  store ptr @.str.5, ptr %i.f, align 8, !tbaa !14
  store i32 16209, ptr %i.g, align 8, !tbaa !49
  br label %.thread

bb.aq:                                            ; preds = %._crit_edge933
  %i.id = add i32 %i.ib, -1
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !61
  %i.ih = trunc i64 %i.hz to i32
  %i.ii = and i32 %i.ih, 3
  %i.ij = add nuw nsw i32 %i.ii, 3
  %i.ik = lshr i64 %i.hz, 2
  %i.il = add i32 %i.ia, -2
  br label %bb.ax

.lr.ph924:                                        ; preds = %.lr.ph924.preheader, %bb.at
  %indvars.iv1282 = phi i64 [ %i.hc, %.lr.ph924.preheader ], [ %indvars.iv.next1283, %bb.at ] ; 2 uses
  %.9539922 = phi i64 [ %.7537.lcssa, %.lr.ph924.preheader ], [ %i.iv, %bb.at ]
  %.17581921 = phi i32 [ %.13577.lcssa, %.lr.ph924.preheader ], [ %i.ip, %bb.at ] ; 2 uses
  %i.im = icmp eq i32 %.17581921, 0
  br i1 %i.im, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.lr.ph924
  %i.in = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store ptr null, ptr %i.a, align 8, !tbaa !52
  br label %.loopexit687

bb.at:                                            ; preds = %bb.ar, %.lr.ph924
  %.18582 = phi i32 [ %i.in, %bb.ar ], [ %.17581921, %.lr.ph924 ]
  %i.ip = add i32 %.18582, -1                     ; 2 uses
  %i.iq = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  store ptr %i.ir, ptr %i.a, align 8, !tbaa !52
  %i.is = load i8, ptr %i.iq, align 1, !tbaa !8
  %i.it = zext i8 %i.is to i64
  %i.iu = shl i64 %i.it, %indvars.iv1282
  %i.iv = add i64 %i.iu, %.9539922                ; 2 uses
  %indvars.iv.next1283 = add nuw nsw i64 %indvars.iv1282, 8 ; 3 uses
  %i.iw = icmp samesign ult i64 %indvars.iv.next1283, %i.hd
  br i1 %i.iw, label %.lr.ph924, label %._crit_edge925.loopexit, !llvm.loop !35

._crit_edge925.loopexit:                          ; preds = %bb.at
  %i.ix = trunc nuw nsw i64 %indvars.iv.next1283 to i32
  br label %._crit_edge925

._crit_edge925:                                   ; preds = %._crit_edge925.loopexit, %.preheader683
  %.17581.lcssa = phi i32 [ %.13577.lcssa, %.preheader683 ], [ %i.ip, %._crit_edge925.loopexit ]
  %.9539.lcssa = phi i64 [ %.7537.lcssa, %.preheader683 ], [ %i.iv, %._crit_edge925.loopexit ]
  %.9.lcssa = phi i32 [ %.7.lcssa, %.preheader683 ], [ %i.ix, %._crit_edge925.loopexit ]
  %i.iy = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.iz = lshr i64 %.9539.lcssa, %i.iy            ; 2 uses
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = and i32 %i.ja, 7
  %i.jc = add nuw nsw i32 %i.jb, 3
  %i.jd = lshr i64 %i.iz, 3
  %reass.sub = sub i32 %.9.lcssa, %.lcssa902
  %i.je = add i32 %reass.sub, -3
  br label %bb.ax

.lr.ph940:                                        ; preds = %.lr.ph940.preheader, %bb.aw
  %indvars.iv1288 = phi i64 [ %i.hk, %.lr.ph940.preheader ], [ %indvars.iv.next1289, %bb.aw ] ; 2 uses
  %.10540938 = phi i64 [ %.7537.lcssa, %.lr.ph940.preheader ], [ %i.jo, %bb.aw ]
  %.19583937 = phi i32 [ %.13577.lcssa, %.lr.ph940.preheader ], [ %i.ji, %bb.aw ] ; 2 uses
  %i.jf = icmp eq i32 %.19583937, 0
  br i1 %i.jf, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %.lr.ph940
  %i.jg = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store ptr null, ptr %i.a, align 8, !tbaa !52
  br label %.loopexit687

bb.aw:                                            ; preds = %bb.au, %.lr.ph940
  %.20584 = phi i32 [ %i.jg, %bb.au ], [ %.19583937, %.lr.ph940 ]
  %i.ji = add i32 %.20584, -1                     ; 2 uses
  %i.jj = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  store ptr %i.jk, ptr %i.a, align 8, !tbaa !52
  %i.jl = load i8, ptr %i.jj, align 1, !tbaa !8
  %i.jm = zext i8 %i.jl to i64
  %i.jn = shl i64 %i.jm, %indvars.iv1288
  %i.jo = add i64 %i.jn, %.10540938               ; 2 uses
  %indvars.iv.next1289 = add nuw nsw i64 %indvars.iv1288, 8 ; 3 uses
  %i.jp = icmp samesign ult i64 %indvars.iv.next1289, %i.hl
  br i1 %i.jp, label %.lr.ph940, label %._crit_edge941.loopexit, !llvm.loop !36

._crit_edge941.loopexit:                          ; preds = %bb.aw
  %i.jq = trunc nuw nsw i64 %indvars.iv.next1289 to i32
  br label %._crit_edge941

._crit_edge941:                                   ; preds = %._crit_edge941.loopexit, %.preheader681
  %.19583.lcssa = phi i32 [ %.13577.lcssa, %.preheader681 ], [ %i.ji, %._crit_edge941.loopexit ]
  %.10540.lcssa = phi i64 [ %.7537.lcssa, %.preheader681 ], [ %i.jo, %._crit_edge941.loopexit ]
  %.10.lcssa = phi i32 [ %.7.lcssa, %.preheader681 ], [ %i.jq, %._crit_edge941.loopexit ]
  %i.jr = zext nneg i8 %.sroa.18.0.copyload.lcssa to i64
  %i.js = lshr i64 %.10540.lcssa, %i.jr           ; 2 uses
  %i.jt = trunc i64 %i.js to i32
  %i.ju = and i32 %i.jt, 127
  %i.jv = add nuw nsw i32 %i.ju, 11
  %i.jw = lshr i64 %i.js, 7
  %reass.sub1162 = sub i32 %.10.lcssa, %.lcssa902
  %i.jx = add i32 %reass.sub1162, -7
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge925, %._crit_edge941, %bb.aq
  %.21585 = phi i32 [ %.15579.lcssa, %bb.aq ], [ %.17581.lcssa, %._crit_edge925 ], [ %.19583.lcssa, %._crit_edge941 ] ; 2 uses
  %.11541 = phi i64 [ %i.ik, %bb.aq ], [ %i.jd, %._crit_edge925 ], [ %i.jw, %._crit_edge941 ] ; 2 uses
  %.11 = phi i32 [ %i.il, %bb.aq ], [ %i.je, %._crit_edge925 ], [ %i.jx, %._crit_edge941 ] ; 2 uses
  %.2 = phi i32 [ %i.ij, %bb.aq ], [ %i.jc, %._crit_edge925 ], [ %i.jv, %._crit_edge941 ] ; 12 uses
  %.0518 = phi i16 [ %i.ig, %bb.aq ], [ 0, %._crit_edge925 ], [ 0, %._crit_edge941 ] ; 7 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !59  ; 7 uses
  %i.jz = add i32 %i.jy, %.2
  %i.ka = load i32, ptr %i.r, align 4, !tbaa !56  ; 2 uses
  %i.kb = load i32, ptr %i.s, align 8, !tbaa !57
  %i.kc = add i32 %i.kb, %i.ka                    ; 2 uses
  %i.kd = icmp ugt i32 %i.jz, %i.kc
  br i1 %i.kd, label %bb.ay, label %iter.check1610

iter.check1610:                                   ; preds = %bb.ax
  %min.iters.check1598 = icmp ult i32 %.2, 4
  %i.ke = sub nsw i32 0, %.2
  %i.kf = icmp ugt i32 %i.jy, %i.ke
  %or.cond1627 = select i1 %min.iters.check1598, i1 true, i1 %i.kf
  br i1 %or.cond1627, label %.preheader.preheader, label %vector.main.loop.iter.check1599

vector.main.loop.iter.check1599:                  ; preds = %iter.check1610
  %min.iters.check1600 = icmp ult i32 %.2, 16
  br i1 %min.iters.check1600, label %vec.epilog.ph1614, label %vector.ph1601

vector.ph1601:                                    ; preds = %vector.main.loop.iter.check1599
  %i.kg = and i32 %.2, 12
  %n.vec1602 = and i32 %.2, -16                   ; 4 uses
  %i.kh = and i32 %.2, 15
  %i.ki = add i32 %i.jy, %n.vec1602               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.0518, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1603

vector.body1603:                                  ; preds = %vector.ph1601, %vector.body1603
  %index1604 = phi i32 [ 0, %vector.ph1601 ], [ %index.next1605, %vector.body1603 ] ; 2 uses
  %i.kj = add i32 %i.jy, %index1604
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.kl, align 2, !tbaa !61
  store <8 x i16> %broadcast.splat, ptr %i.km, align 2, !tbaa !61
  %index.next1605 = add nuw i32 %index1604, 16    ; 2 uses
  %i.kn = icmp eq i32 %index.next1605, %n.vec1602
  br i1 %i.kn, label %middle.block1606, label %vector.body1603, !llvm.loop !37

middle.block1606:                                 ; preds = %vector.body1603
  %cmp.n1607 = icmp eq i32 %.2, %n.vec1602
  br i1 %cmp.n1607, label %.loopexit, label %vec.epilog.iter.check1612

vec.epilog.iter.check1612:                        ; preds = %middle.block1606
  %min.epilog.iters.check1613 = icmp eq i32 %i.kg, 0
  br i1 %min.epilog.iters.check1613, label %.preheader.preheader, label %vec.epilog.ph1614, !prof !67

vec.epilog.ph1614:                                ; preds = %vector.main.loop.iter.check1599, %vec.epilog.iter.check1612
  %vec.epilog.resume.val1608 = phi i32 [ %n.vec1602, %vec.epilog.iter.check1612 ], [ 0, %vector.main.loop.iter.check1599 ]
  %n.vec1615 = and i32 %.2, -4                    ; 3 uses
  %i.ko = and i32 %.2, 3
  %i.kp = add i32 %i.jy, %n.vec1615               ; 2 uses
  %broadcast.splatinsert1616 = insertelement <4 x i16> poison, i16 %.0518, i64 0
  %broadcast.splat1617 = shufflevector <4 x i16> %broadcast.splatinsert1616, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1618

vec.epilog.vector.body1618:                       ; preds = %vec.epilog.vector.body1618, %vec.epilog.ph1614
  %index1619 = phi i32 [ %vec.epilog.resume.val1608, %vec.epilog.ph1614 ], [ %index.next1620, %vec.epilog.vector.body1618 ] ; 2 uses
  %i.kq = add i32 %i.jy, %index1619
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.kr
  store <4 x i16> %broadcast.splat1617, ptr %i.ks, align 2, !tbaa !61
  %index.next1620 = add nuw i32 %index1619, 4     ; 2 uses
  %i.kt = icmp eq i32 %index.next1620, %n.vec1615
  br i1 %i.kt, label %vec.epilog.middle.block1621, label %vec.epilog.vector.body1618, !llvm.loop !38

vec.epilog.middle.block1621:                      ; preds = %vec.epilog.vector.body1618
  %cmp.n1622 = icmp eq i32 %.2, %n.vec1615
  br i1 %cmp.n1622, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check1610, %vec.epilog.iter.check1612, %vec.epilog.middle.block1621
  %.3946.ph = phi i32 [ %.2, %iter.check1610 ], [ %i.kh, %vec.epilog.iter.check1612 ], [ %i.ko, %vec.epilog.middle.block1621 ] ; 4 uses
  %.ph = phi i32 [ %i.jy, %iter.check1610 ], [ %i.ki, %vec.epilog.iter.check1612 ], [ %i.kp, %vec.epilog.middle.block1621 ] ; 2 uses
  %i.ku = add nsw i32 %.3946.ph, -1
  %xtraiter = and i32 %.3946.ph, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.3946.prol = phi i32 [ %i.kw, %.preheader.prol ], [ %.3946.ph, %.preheader.preheader ]
  %i.kv = phi i32 [ %i.kx, %.preheader.prol ], [ %.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.kw = add i32 %.3946.prol, -1                 ; 2 uses
  %i.kx = add i32 %i.kv, 1                        ; 3 uses
  %i.ky = zext i32 %i.kv to i64
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.ky
  store i16 %.0518, ptr %i.kz, align 2, !tbaa !61
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !39

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa1646.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.kx, %.preheader.prol ]
  %.3946.unr = phi i32 [ %.3946.ph, %.preheader.preheader ], [ %i.kw, %.preheader.prol ]
  %.unr = phi i32 [ %.ph, %.preheader.preheader ], [ %i.kx, %.preheader.prol ]
  %i.la = icmp ult i32 %i.ku, 3
  br i1 %i.la, label %.loopexit, label %.preheader

bb.ay:                                            ; preds = %bb.ax
  store ptr @.str.5, ptr %i.f, align 8, !tbaa !14
  store i32 16209, ptr %i.g, align 8, !tbaa !49
  br label %.thread

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.3946 = phi i32 [ %i.ll, %.preheader ], [ %.3946.unr, %.preheader.prol.loopexit ]
  %i.lb = phi i32 [ %i.lm, %.preheader ], [ %.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.lc = add i32 %i.lb, 1
  %i.ld = zext i32 %i.lb to i64
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.ld
  store i16 %.0518, ptr %i.le, align 2, !tbaa !61
  %i.lf = add i32 %i.lb, 2
  %i.lg = zext i32 %i.lc to i64
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.lg
  store i16 %.0518, ptr %i.lh, align 2, !tbaa !61
  %i.li = add i32 %i.lb, 3
  %i.lj = zext i32 %i.lf to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.lj
  store i16 %.0518, ptr %i.lk, align 2, !tbaa !61
  %i.ll = add i32 %.3946, -4                      ; 2 uses
  %i.lm = add i32 %i.lb, 4                        ; 2 uses
  %i.ln = zext i32 %i.li to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.ln
  store i16 %.0518, ptr %i.lo, align 2, !tbaa !61
  %.not648.3 = icmp eq i32 %i.ll, 0
  br i1 %.not648.3, label %.loopexit, label %.preheader, !llvm.loop !40

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %vec.epilog.middle.block1621, %middle.block1606
  %.lcssa1501 = phi i32 [ %i.kp, %vec.epilog.middle.block1621 ], [ %i.ki, %middle.block1606 ], [ %.lcssa1646.unr, %.preheader.prol.loopexit ], [ %i.lm, %.preheader ] ; 2 uses
  store i32 %.lcssa1501, ptr %i.u, align 4, !tbaa !59
  br label %bb.az

bb.az:                                            ; preds = %.loopexit, %bb.ak
  %.pre-phi = phi i32 [ %i.kc, %.loopexit ], [ %.pre1337, %bb.ak ]
  %i.lp = phi i32 [ %i.ka, %.loopexit ], [ %.pre1310, %bb.ak ]
  %i.lq = phi i32 [ %.lcssa1501, %.loopexit ], [ %i.gx, %bb.ak ]
  %.22586 = phi i32 [ %.21585, %.loopexit ], [ %.13577.lcssa, %bb.ak ] ; 2 uses
  %.12542 = phi i64 [ %.11541, %.loopexit ], [ %i.gu, %bb.ak ] ; 2 uses
  %.12 = phi i32 [ %.11, %.loopexit ], [ %i.gv, %bb.ak ] ; 2 uses
  %i.lr = icmp ult i32 %i.lq, %.pre-phi
  br i1 %i.lr, label %.preheader684, label %._crit_edge950, !llvm.loop !41

._crit_edge950:                                   ; preds = %bb.az, %bb.ag
  %i.ls = phi i32 [ %i.fk, %bb.ag ], [ %i.lp, %bb.az ]
  %.12576.lcssa = phi i32 [ %.10574.lcssa, %bb.ag ], [ %.22586, %bb.az ] ; 5 uses
  %.6536.lcssa = phi i64 [ %i.fb, %bb.ag ], [ %.12542, %bb.az ] ; 5 uses
  %.6529.lcssa = phi i32 [ %i.fc, %bb.ag ], [ %.12, %bb.az ] ; 5 uses
  %.pr676 = load i32, ptr %i.g, align 8, !tbaa !49
  %i.lt = icmp eq i32 %.pr676, 16209
  br i1 %i.lt, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge950
  %i.lu = load i16, ptr %i.ab, align 8, !tbaa !61
  %i.lv = icmp eq i16 %i.lu, 0
  br i1 %i.lv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr @.str.6, ptr %i.f, align 8, !tbaa !14
  store i32 16209, ptr %i.g, align 8, !tbaa !49
  br label %.thread

bb.bc:                                            ; preds = %bb.ba
  store ptr %i.w, ptr %i.x, align 8, !tbaa !62
  store ptr %i.w, ptr %i.y, align 8, !tbaa !63
  store i32 9, ptr %i.z, align 8, !tbaa !64
  %i.lw = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %i.v, i32 noundef %i.ls, ptr noundef nonnull %i.x, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #4
  %.not649 = icmp eq i32 %i.lw, 0
  br i1 %.not649, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr @.str.7, ptr %i.f, align 8, !tbaa !14
  store i32 16209, ptr %i.g, align 8, !tbaa !49
  br label %.thread

bb.be:                                            ; preds = %bb.bc
  %i.lx = load ptr, ptr %i.x, align 8, !tbaa !62
  store ptr %i.lx, ptr %i.ac, align 8, !tbaa !69
  store i32 6, ptr %i.ad, align 4, !tbaa !70
  %i.ly = load i32, ptr %i.r, align 4, !tbaa !56
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.lz
  %i.mb = load i32, ptr %i.s, align 8, !tbaa !57
  %i.mc = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %i.ma, i32 noundef %i.mb, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.aa) #4
  %.not650 = icmp eq i32 %i.mc, 0
  br i1 %.not650, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr @.str.8, ptr %i.f, align 8, !tbaa !14
  store i32 16209, ptr %i.g, align 8, !tbaa !49
  br label %.thread

bb.bg:                                            ; preds = %bb.be
  store i32 16200, ptr %i.g, align 8, !tbaa !49
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.e
  %.24588 = phi i32 [ %.12576.lcssa, %bb.bg ], [ %.0564, %bb.e ] ; 4 uses
  %.14544 = phi i64 [ %.6536.lcssa, %bb.bg ], [ %.0530, %bb.e ] ; 4 uses
  %.14 = phi i32 [ %.6529.lcssa, %bb.bg ], [ %.0523, %bb.e ] ; 4 uses
  %i.md = icmp ugt i32 %.24588, 5
  %i.me = icmp ugt i32 %.0556, 257
  %or.cond = select i1 %i.md, i1 %i.me, i1 false
  br i1 %or.cond, label %bb.bi, label %.preheader694

.preheader694:                                    ; preds = %bb.bh
  %i.mf = load ptr, ptr %i.y, align 8, !tbaa !63  ; 3 uses
  %i.mg = trunc i64 %.14544 to i32
  %i.mh = load i32, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %notmask651954 = shl nsw i32 -1, %i.mh
  %i.mi = xor i32 %notmask651954, -1
  %i.mj = and i32 %i.mi, %i.mg
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.mk ; 2 uses
  %.sroa.18.0..sroa_idx38955 = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %.sroa.18.0.copyload39956 = load i8, ptr %.sroa.18.0..sroa_idx38955, align 1, !tbaa !8 ; 2 uses
  %i.mm = zext i8 %.sroa.18.0.copyload39956 to i32 ; 2 uses
  %.not652959 = icmp ult i32 %.14, %i.mm
  br i1 %.not652959, label %.lr.ph963.preheader, label %._crit_edge964

.lr.ph963.preheader:                              ; preds = %.preheader694
  %i.mn = zext nneg i32 %.14 to i64
  br label %.lr.ph963

bb.bi:                                            ; preds = %bb.bh
  store ptr %.0590, ptr %i.ah, align 8, !tbaa !71
  store i32 %.0556, ptr %i.ai, align 8, !tbaa !72
  %i.mo = load ptr, ptr %i.a, align 8, !tbaa !52
  store ptr %i.mo, ptr %0, align 8, !tbaa !51
  store i32 %.24588, ptr %i.aj, align 8, !tbaa !53
end_hunk_0
begin_hunk_1_@inflateBack:bb.a
  %i.te = add i64 %i.td, %.215511017              ; 3 uses
  %indvars.iv.next1301 = add nuw nsw i64 %indvars.iv1300, 8 ; 3 uses
  %i.tf = trunc i64 %i.te to i32
  %i.tg = and i32 %i.tf, %i.sj
  %i.th = lshr i32 %i.tg, %.lcssa767
  %i.ti = add nuw i32 %i.th, %i.sh
  %i.tj = zext i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.tj ; 2 uses
  %.sroa.18.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.tk, i64 1
  %.sroa.18.0.copyload45 = load i8, ptr %.sroa.18.0..sroa_idx44, align 1, !tbaa !8 ; 2 uses
  %i.tl = zext i8 %.sroa.18.0.copyload45 to i32
  %i.tm = add nuw nsw i32 %.lcssa767, %i.tl
  %i.tn = zext nneg i32 %i.tm to i64
  %.not663 = icmp samesign ult i64 %indvars.iv.next1301, %i.tn
  br i1 %.not663, label %.lr.ph1019, label %._crit_edge1020.loopexit

._crit_edge1020.loopexit:                         ; preds = %bb.cj
  %i.to = trunc nuw nsw i64 %indvars.iv.next1301 to i32
  br label %._crit_edge1020

._crit_edge1020:                                  ; preds = %._crit_edge1020.loopexit, %.preheader691
  %.35.lcssa = phi i32 [ %.33.lcssa, %.preheader691 ], [ %i.sy, %._crit_edge1020.loopexit ]
  %.21551.lcssa = phi i64 [ %.20550.lcssa, %.preheader691 ], [ %i.te, %._crit_edge1020.loopexit ]
  %.21.lcssa = phi i32 [ %.20.lcssa, %.preheader691 ], [ %i.to, %._crit_edge1020.loopexit ]
  %.lcssa779 = phi ptr [ %i.sp, %.preheader691 ], [ %i.tk, %._crit_edge1020.loopexit ] ; 2 uses
  %.sroa.18.0.copyload45.lcssa = phi i8 [ %.sroa.18.0.copyload451014, %.preheader691 ], [ %.sroa.18.0.copyload45, %._crit_edge1020.loopexit ]
  %.sroa.40.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %.lcssa779, i64 2
  %.sroa.40.0.copyload72 = load i16, ptr %.sroa.40.0..sroa_idx71, align 2, !tbaa !61
  %.sroa.025.0.copyload37 = load i8, ptr %.lcssa779, align 2, !tbaa !8
  %i.tp = zext nneg i8 %.sroa.18.0.copyload43.lcssa to i64
  %i.tq = lshr i64 %.21551.lcssa, %i.tp
  %i.tr = sub nuw i32 %.21.lcssa, %.lcssa767
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge1005, %._crit_edge1020
  %.37 = phi i32 [ %.35.lcssa, %._crit_edge1020 ], [ %.33.lcssa, %._crit_edge1005 ] ; 4 uses
  %.22552 = phi i64 [ %i.tq, %._crit_edge1020 ], [ %.20550.lcssa, %._crit_edge1005 ]
  %.22 = phi i32 [ %i.tr, %._crit_edge1020 ], [ %.20.lcssa, %._crit_edge1005 ]
  %.sroa.40.1 = phi i16 [ %.sroa.40.0.copyload72, %._crit_edge1020 ], [ %.sroa.40.0.copyload70.lcssa, %._crit_edge1005 ]
  %.sroa.18.1 = phi i8 [ %.sroa.18.0.copyload45.lcssa, %._crit_edge1020 ], [ %.sroa.18.0.copyload43.lcssa, %._crit_edge1005 ] ; 2 uses
  %.sroa.025.1 = phi i8 [ %.sroa.025.0.copyload37, %._crit_edge1020 ], [ %.sroa.025.0.copyload36, %._crit_edge1005 ]
  %i.ts = zext i8 %.sroa.18.1 to i32
  %i.tt = zext nneg i8 %.sroa.18.1 to i64
  %i.tu = lshr i64 %.22552, %i.tt                 ; 4 uses
  %i.tv = sub i32 %.22, %i.ts                     ; 5 uses
  %i.tw = zext i8 %.sroa.025.1 to i32             ; 2 uses
  %i.tx = and i32 %i.tw, 64
  %.not664 = icmp eq i32 %i.tx, 0
  br i1 %.not664, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store ptr @.str.10, ptr %i.f, align 8, !tbaa !14
  store i32 16209, ptr %i.g, align 8, !tbaa !49
  br label %.thread

bb.cm:                                            ; preds = %bb.ck
  %i.ty = zext i16 %.sroa.40.1 to i32             ; 3 uses
  store i32 %i.ty, ptr %i.ag, align 8, !tbaa !76
  %i.tz = and i32 %i.tw, 15                       ; 5 uses
  store i32 %i.tz, ptr %i.af, align 4, !tbaa !75
  %.not665 = icmp eq i32 %i.tz, 0
  br i1 %.not665, label %bb.cq, label %.preheader690

.preheader690:                                    ; preds = %bb.cm
  %i.ua = icmp ult i32 %i.tv, %i.tz
  br i1 %i.ua, label %.lr.ph1029, label %._crit_edge1030

.lr.ph1029:                                       ; preds = %.preheader690, %bb.cp
  %i.ub = phi i32 [ %i.uf, %bb.cp ], [ %i.tz, %.preheader690 ]
  %.231028 = phi i32 [ %i.uo, %bb.cp ], [ %i.tv, %.preheader690 ] ; 2 uses
  %.235531027 = phi i64 [ %i.un, %bb.cp ], [ %i.tu, %.preheader690 ]
  %.381026 = phi i32 [ %i.ug, %bb.cp ], [ %.37, %.preheader690 ] ; 2 uses
  %i.uc = icmp eq i32 %.381026, 0
  br i1 %i.uc, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %.lr.ph1029
  %i.ud = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.co, label %._crit_edge1325

._crit_edge1325:                                  ; preds = %bb.cn
  %.pre1326 = load i32, ptr %i.af, align 4, !tbaa !75
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store ptr null, ptr %i.a, align 8, !tbaa !52
  br label %.loopexit687

bb.cp:                                            ; preds = %._crit_edge1325, %.lr.ph1029
  %i.uf = phi i32 [ %.pre1326, %._crit_edge1325 ], [ %i.ub, %.lr.ph1029 ] ; 3 uses
  %.39 = phi i32 [ %i.ud, %._crit_edge1325 ], [ %.381026, %.lr.ph1029 ]
  %i.ug = add i32 %.39, -1                        ; 2 uses
  %i.uh = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 1
  store ptr %i.ui, ptr %i.a, align 8, !tbaa !52
  %i.uj = load i8, ptr %i.uh, align 1, !tbaa !8
  %i.uk = zext i8 %i.uj to i64
  %i.ul = zext nneg i32 %.231028 to i64
  %i.um = shl i64 %i.uk, %i.ul
  %i.un = add i64 %i.um, %.235531027              ; 2 uses
  %i.uo = add i32 %.231028, 8                     ; 3 uses
  %i.up = icmp ult i32 %i.uo, %i.uf
  br i1 %i.up, label %.lr.ph1029, label %._crit_edge1030.loopexit, !llvm.loop !43

._crit_edge1030.loopexit:                         ; preds = %bb.cp
  %.pre1327 = load i32, ptr %i.ag, align 8, !tbaa !76
  br label %._crit_edge1030

._crit_edge1030:                                  ; preds = %._crit_edge1030.loopexit, %.preheader690
  %i.uq = phi i32 [ %i.ty, %.preheader690 ], [ %.pre1327, %._crit_edge1030.loopexit ]
  %.38.lcssa = phi i32 [ %.37, %.preheader690 ], [ %i.ug, %._crit_edge1030.loopexit ]
  %.23553.lcssa = phi i64 [ %i.tu, %.preheader690 ], [ %i.un, %._crit_edge1030.loopexit ] ; 2 uses
  %.23.lcssa = phi i32 [ %i.tv, %.preheader690 ], [ %i.uo, %._crit_edge1030.loopexit ]
  %.lcssa784 = phi i32 [ %i.tz, %.preheader690 ], [ %i.uf, %._crit_edge1030.loopexit ] ; 3 uses
  %i.ur = trunc i64 %.23553.lcssa to i32
  %notmask666 = shl nsw i32 -1, %.lcssa784
  %i.us = xor i32 %notmask666, -1
  %i.ut = and i32 %i.us, %i.ur
  %i.uu = add i32 %i.uq, %i.ut                    ; 2 uses
  store i32 %i.uu, ptr %i.ag, align 8, !tbaa !76
  %i.uv = zext nneg i32 %.lcssa784 to i64
  %i.uw = lshr i64 %.23553.lcssa, %i.uv
  %i.ux = sub nuw i32 %.23.lcssa, %.lcssa784
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge1030, %bb.cm
  %i.uy = phi i32 [ %i.uu, %._crit_edge1030 ], [ %i.ty, %bb.cm ]
  %.40 = phi i32 [ %.38.lcssa, %._crit_edge1030 ], [ %.37, %bb.cm ] ; 3 uses
  %.24554 = phi i64 [ %i.uw, %._crit_edge1030 ], [ %i.tu, %bb.cm ] ; 2 uses
  %.24 = phi i32 [ %i.ux, %._crit_edge1030 ], [ %i.tv, %bb.cm ] ; 2 uses
  %i.uz = load i32, ptr %i.p, align 4, !tbaa !21  ; 2 uses
  %i.va = load i32, ptr %i.i, align 8, !tbaa !23
  %i.vb = icmp ult i32 %i.va, %i.uz
  %i.vc = select i1 %i.vb, i32 %.0556, i32 0
  %i.vd = sub i32 %i.uz, %i.vc
  %i.ve = icmp ugt i32 %i.uy, %i.vd
  br i1 %i.ve, label %bb.cr, label %.preheader688

bb.cr:                                            ; preds = %bb.cq
  store ptr @.str.11, ptr %i.f, align 8, !tbaa !14
  store i32 16209, ptr %i.g, align 8, !tbaa !49
  br label %.thread

.preheader688:                                    ; preds = %bb.cq, %.loopexit1625
  %.4594 = phi ptr [ %.lcssa1531, %.loopexit1625 ], [ %.0590, %bb.cq ]
  %.4560 = phi i32 [ %i.xn, %.loopexit1625 ], [ %.0556, %bb.cq ] ; 2 uses
  %i.vf = icmp eq i32 %.4560, 0
  %.pre1330 = load i32, ptr %i.p, align 4, !tbaa !21 ; 5 uses
  br i1 %i.vf, label %bb.cs, label %iter.check

bb.cs:                                            ; preds = %.preheader688
  %i.vg = load ptr, ptr %i.n, align 8, !tbaa !22  ; 2 uses
  store i32 %.pre1330, ptr %i.i, align 8, !tbaa !23
  %i.vh = call i32 %3(ptr noundef %4, ptr noundef %i.vg, i32 noundef %.pre1330) #4
  %.not667 = icmp eq i32 %i.vh, 0
  br i1 %.not667, label %._crit_edge1328, label %.loopexit687

._crit_edge1328:                                  ; preds = %bb.cs
  %.pre1329 = load i32, ptr %i.p, align 4, !tbaa !21
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge1328, %.preheader688
  %i.vi = phi i32 [ %.pre1329, %._crit_edge1328 ], [ %.pre1330, %.preheader688 ]
  %.5595 = phi ptr [ %i.vg, %._crit_edge1328 ], [ %.4594, %.preheader688 ] ; 6 uses
  %.5561 = phi i32 [ %.pre1330, %._crit_edge1328 ], [ %.4560, %.preheader688 ] ; 3 uses
  %i.vj = load i32, ptr %i.ag, align 8, !tbaa !76 ; 2 uses
  %i.vk = sub i32 %i.vi, %i.vj                    ; 3 uses
  %i.vl = icmp ult i32 %i.vk, %.5561              ; 2 uses
  %i.vm = zext i32 %i.vk to i64
  %i.vn = zext i32 %i.vj to i64
  %i.vo = sub nsw i64 0, %i.vn
  %i.vp = select i1 %i.vl, i32 %i.vk, i32 0
  %.4 = sub i32 %.5561, %i.vp
  %.pn = select i1 %i.vl, i64 %i.vm, i64 %i.vo    ; 2 uses
  %.0519 = getelementptr inbounds i8, ptr %.5595, i64 %.pn ; 5 uses
  %i.vq = load i32, ptr %i.ae, align 4, !tbaa !55 ; 2 uses
  %.5 = call i32 @llvm.umin.i32(i32 %.4, i32 %i.vq) ; 6 uses
  %i.vr = sub i32 %i.vq, %.5
  store i32 %i.vr, ptr %i.ae, align 4, !tbaa !55
  %i.vs = add i32 %.5, -1                         ; 3 uses
  %i.vt = zext i32 %i.vs to i64
  %i.vu = add nuw nsw i64 %i.vt, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.vs, 3
  %diff.check = icmp ugt i64 %.pn, -32
  %or.cond1628 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1628, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1583 = icmp ult i32 %i.vs, 31
  br i1 %min.iters.check1583, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.vv = and i64 %i.vu, 28
  %n.vec = and i64 %i.vu, 8589934560              ; 6 uses
  %i.vw = getelementptr i8, ptr %.5595, i64 %n.vec ; 2 uses
  %i.vx = trunc i64 %n.vec to i32
  %i.vy = sub i32 %.5, %i.vx
  %i.vz = getelementptr i8, ptr %.0519, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.5595, i64 %index ; 2 uses
  %next.gep1584 = getelementptr i8, ptr %.0519, i64 %index ; 2 uses
  %i.wa = getelementptr i8, ptr %next.gep1584, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1584, align 1, !tbaa !8
  %wide.load1585 = load <16 x i8>, ptr %i.wa, align 1, !tbaa !8
  %i.wb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %wide.load1585, ptr %i.wb, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.wc = icmp eq i64 %index.next, %n.vec
  br i1 %i.wc, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vu, %n.vec
  br i1 %cmp.n, label %.loopexit1625, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.vv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1588 = and i64 %i.vu, 8589934588          ; 5 uses
  %i.wd = getelementptr i8, ptr %.5595, i64 %n.vec1588 ; 2 uses
  %i.we = trunc i64 %n.vec1588 to i32
  %i.wf = sub i32 %.5, %i.we
  %i.wg = getelementptr i8, ptr %.0519, i64 %n.vec1588
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1589 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1593, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1590 = getelementptr i8, ptr %.5595, i64 %index1589
  %next.gep1591 = getelementptr i8, ptr %.0519, i64 %index1589
  %wide.load1592 = load <4 x i8>, ptr %next.gep1591, align 1, !tbaa !8
  store <4 x i8> %wide.load1592, ptr %next.gep1590, align 1, !tbaa !8
  %index.next1593 = add nuw i64 %index1589, 4     ; 2 uses
  %i.wh = icmp eq i64 %index.next1593, %n.vec1588
  br i1 %i.wh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1594 = icmp eq i64 %i.vu, %n.vec1588
  br i1 %cmp.n1594, label %.loopexit1625, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.6596.ph = phi ptr [ %.5595, %iter.check ], [ %i.vw, %vec.epilog.iter.check ], [ %i.wd, %vec.epilog.middle.block ] ; 2 uses
  %.6.ph = phi i32 [ %.5, %iter.check ], [ %i.vy, %vec.epilog.iter.check ], [ %i.wf, %vec.epilog.middle.block ] ; 4 uses
  %.1520.ph = phi ptr [ %.0519, %iter.check ], [ %i.vz, %vec.epilog.iter.check ], [ %i.wg, %vec.epilog.middle.block ] ; 2 uses
  %i.wi = add i32 %.6.ph, -1
  %xtraiter1728 = and i32 %.6.ph, 7               ; 2 uses
  %lcmp.mod1729.not = icmp eq i32 %xtraiter1728, 0
  br i1 %lcmp.mod1729.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.6596.prol = phi ptr [ %i.wl, %vec.epilog.scalar.ph.prol ], [ %.6596.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.6.prol = phi i32 [ %i.wm, %vec.epilog.scalar.ph.prol ], [ %.6.ph, %vec.epilog.scalar.ph.preheader ]
  %.1520.prol = phi ptr [ %i.wj, %vec.epilog.scalar.ph.prol ], [ %.1520.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter1730 = phi i32 [ %prol.iter1730.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.wj = getelementptr inbounds nuw i8, ptr %.1520.prol, i64 1 ; 2 uses
  %i.wk = load i8, ptr %.1520.prol, align 1, !tbaa !8
  %i.wl = getelementptr inbounds nuw i8, ptr %.6596.prol, i64 1 ; 3 uses
  store i8 %i.wk, ptr %.6596.prol, align 1, !tbaa !8
  %i.wm = add i32 %.6.prol, -1                    ; 2 uses
  %prol.iter1730.next = add i32 %prol.iter1730, 1 ; 2 uses
  %prol.iter1730.cmp.not = icmp eq i32 %prol.iter1730.next, %xtraiter1728
  br i1 %prol.iter1730.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !46

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa1676.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.wl, %vec.epilog.scalar.ph.prol ]
  %.6596.unr = phi ptr [ %.6596.ph, %vec.epilog.scalar.ph.preheader ], [ %i.wl, %vec.epilog.scalar.ph.prol ]
  %.6.unr = phi i32 [ %.6.ph, %vec.epilog.scalar.ph.preheader ], [ %i.wm, %vec.epilog.scalar.ph.prol ]
  %.1520.unr = phi ptr [ %.1520.ph, %vec.epilog.scalar.ph.preheader ], [ %i.wj, %vec.epilog.scalar.ph.prol ]
  %i.wn = icmp ult i32 %i.wi, 7
  br i1 %i.wn, label %.loopexit1625, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.6596 = phi ptr [ %i.xl, %vec.epilog.scalar.ph ], [ %.6596.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.6 = phi i32 [ %i.xm, %vec.epilog.scalar.ph ], [ %.6.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.1520 = phi ptr [ %i.xj, %vec.epilog.scalar.ph ], [ %.1520.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.1520, i64 1
  %i.wp = load i8, ptr %.1520, align 1, !tbaa !8
  %i.wq = getelementptr inbounds nuw i8, ptr %.6596, i64 1
  store i8 %i.wp, ptr %.6596, align 1, !tbaa !8
  %i.wr = getelementptr inbounds nuw i8, ptr %.1520, i64 2
  %i.ws = load i8, ptr %i.wo, align 1, !tbaa !8
  %i.wt = getelementptr inbounds nuw i8, ptr %.6596, i64 2
  store i8 %i.ws, ptr %i.wq, align 1, !tbaa !8
  %i.wu = getelementptr inbounds nuw i8, ptr %.1520, i64 3
  %i.wv = load i8, ptr %i.wr, align 1, !tbaa !8
  %i.ww = getelementptr inbounds nuw i8, ptr %.6596, i64 3
  store i8 %i.wv, ptr %i.wt, align 1, !tbaa !8
  %i.wx = getelementptr inbounds nuw i8, ptr %.1520, i64 4
  %i.wy = load i8, ptr %i.wu, align 1, !tbaa !8
  %i.wz = getelementptr inbounds nuw i8, ptr %.6596, i64 4
  store i8 %i.wy, ptr %i.ww, align 1, !tbaa !8
  %i.xa = getelementptr inbounds nuw i8, ptr %.1520, i64 5
  %i.xb = load i8, ptr %i.wx, align 1, !tbaa !8
  %i.xc = getelementptr inbounds nuw i8, ptr %.6596, i64 5
  store i8 %i.xb, ptr %i.wz, align 1, !tbaa !8
  %i.xd = getelementptr inbounds nuw i8, ptr %.1520, i64 6
  %i.xe = load i8, ptr %i.xa, align 1, !tbaa !8
  %i.xf = getelementptr inbounds nuw i8, ptr %.6596, i64 6
  store i8 %i.xe, ptr %i.xc, align 1, !tbaa !8
  %i.xg = getelementptr inbounds nuw i8, ptr %.1520, i64 7
  %i.xh = load i8, ptr %i.xd, align 1, !tbaa !8
  %i.xi = getelementptr inbounds nuw i8, ptr %.6596, i64 7
  store i8 %i.xh, ptr %i.xf, align 1, !tbaa !8
  %i.xj = getelementptr inbounds nuw i8, ptr %.1520, i64 8
  %i.xk = load i8, ptr %i.xg, align 1, !tbaa !8
  %i.xl = getelementptr inbounds nuw i8, ptr %.6596, i64 8 ; 2 uses
  store i8 %i.xk, ptr %i.xi, align 1, !tbaa !8
  %i.xm = add i32 %.6, -8                         ; 2 uses
  %.not668.7 = icmp eq i32 %i.xm, 0
  br i1 %.not668.7, label %.loopexit1625, label %vec.epilog.scalar.ph, !llvm.loop !47

.loopexit1625:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa1531 = phi ptr [ %i.wd, %vec.epilog.middle.block ], [ %i.vw, %middle.block ], [ %.lcssa1676.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.xl, %vec.epilog.scalar.ph ] ; 2 uses
  %i.xn = sub i32 %.5561, %.5                     ; 2 uses
  %i.xo = load i32, ptr %i.ae, align 4, !tbaa !55
  %.not669 = icmp eq i32 %i.xo, 0
  br i1 %.not669, label %.thread, label %.preheader688, !llvm.loop !48

.thread:                                          ; preds = %.loopexit1625, %bb.ap, %bb.ay, %._crit_edge950, %bb.cr, %bb.cl, %bb.by, %bb.bw, %bb.bu, %bb.bk, %bb.bf, %bb.bd, %bb.bb, %bb.af, %bb.ab, %._crit_edge1051, %bb.r, %bb.m, %bb.g
  %.7597 = phi ptr [ %.0590, %bb.g ], [ %.0590, %bb.m ], [ %.0590, %bb.r ], [ %.1591.lcssa, %._crit_edge1051 ], [ %.0590, %bb.ab ], [ %.0590, %bb.af ], [ %.0590, %._crit_edge950 ], [ %.0590, %bb.bb ], [ %.0590, %bb.bd ], [ %.0590, %bb.bf ], [ %i.mt, %bb.bk ], [ %i.pw, %bb.bu ], [ %.0590, %bb.bw ], [ %.0590, %bb.by ], [ %.0590, %bb.cl ], [ %.0590, %bb.cr ], [ %.0590, %bb.ap ], [ %.0590, %bb.ay ], [ %.lcssa1531, %.loopexit1625 ]
  %.41 = phi i32 [ %.0564, %bb.g ], [ %.1565.lcssa, %bb.m ], [ %.3567.lcssa, %bb.r ], [ %.5569.lcssa, %._crit_edge1051 ], [ %.7571.lcssa, %bb.ab ], [ %.10574.lcssa, %bb.af ], [ %.12576.lcssa, %._crit_edge950 ], [ %.12576.lcssa, %bb.bb ], [ %.12576.lcssa, %bb.bd ], [ %.12576.lcssa, %bb.bf ], [ %i.mw, %bb.bk ], [ %.29, %bb.bu ], [ %.29, %bb.bw ], [ %.29, %bb.by ], [ %.37, %bb.cl ], [ %.40, %bb.cr ], [ %.15579.lcssa, %bb.ap ], [ %.21585, %bb.ay ], [ %.40, %.loopexit1625 ]
  %.6562 = phi i32 [ %.0556, %bb.g ], [ %.0556, %bb.m ], [ %.0556, %bb.r ], [ %.1557.lcssa, %._crit_edge1051 ], [ %.0556, %bb.ab ], [ %.0556, %bb.af ], [ %.0556, %._crit_edge950 ], [ %.0556, %bb.bb ], [ %.0556, %bb.bd ], [ %.0556, %bb.bf ], [ %i.mu, %bb.bk ], [ %i.px, %bb.bu ], [ %.0556, %bb.bw ], [ %.0556, %bb.by ], [ %.0556, %bb.cl ], [ %.0556, %bb.cr ], [ %.0556, %bb.ap ], [ %.0556, %bb.ay ], [ %i.xn, %.loopexit1625 ]
  %.25555 = phi i64 [ %i.av, %bb.g ], [ %i.bl, %bb.m ], [ %.2532.lcssa, %bb.r ], [ 0, %._crit_edge1051 ], [ %i.dw, %bb.ab ], [ %i.fb, %bb.af ], [ %.6536.lcssa, %._crit_edge950 ], [ %.6536.lcssa, %bb.bb ], [ %.6536.lcssa, %bb.bd ], [ %.6536.lcssa, %bb.bf ], [ %i.mx, %bb.bk ], [ %i.pl, %bb.bu ], [ %i.pl, %bb.bw ], [ %i.pl, %bb.by ], [ %i.tu, %bb.cl ], [ %.24554, %bb.cr ], [ %i.hz, %bb.ap ], [ %.11541, %bb.ay ], [ %.24554, %.loopexit1625 ]
  %.25 = phi i32 [ %i.aw, %bb.g ], [ %i.bm, %bb.m ], [ %.2525.lcssa, %bb.r ], [ 0, %._crit_edge1051 ], [ %i.dx, %bb.ab ], [ %i.fc, %bb.af ], [ %.6529.lcssa, %._crit_edge950 ], [ %.6529.lcssa, %bb.bb ], [ %.6529.lcssa, %bb.bd ], [ %.6529.lcssa, %bb.bf ], [ %i.my, %bb.bk ], [ %i.pm, %bb.bu ], [ %i.pm, %bb.bw ], [ %i.pm, %bb.by ], [ %i.tv, %bb.cl ], [ %.24, %bb.cr ], [ %i.ia, %bb.ap ], [ %.11, %bb.ay ], [ %.24, %.loopexit1625 ]
  %.pre = load i32, ptr %i.g, align 8, !tbaa !49
  br label %bb.e

.loopexit687.loopexit1485:                        ; preds = %bb.e
  br label %.loopexit687

.loopexit687.loopexit1630:                        ; preds = %bb.e
  br label %.loopexit687

.loopexit687:                                     ; preds = %bb.bt, %bb.cs, %bb.w, %bb.e, %.loopexit687.loopexit1630, %.loopexit687.loopexit1485, %bb.co, %bb.ci, %bb.cf, %bb.cb, %bb.bp, %bb.bm, %bb.av, %bb.as, %bb.an, %bb.ai, %.split, %bb.z, %bb.u, %bb.p, %.split1064
  %.42 = phi i32 [ %.0564, %.loopexit687.loopexit1485 ], [ 0, %.split1064 ], [ 0, %bb.p ], [ 0, %bb.u ], [ %.40, %bb.cs ], [ 0, %bb.z ], [ 0, %.split ], [ 0, %bb.an ], [ %.0564, %bb.e ], [ 0, %bb.cb ], [ 0, %bb.co ], [ %.6570, %bb.w ], [ 0, %bb.ci ], [ 0, %bb.cf ], [ 0, %bb.bp ], [ 0, %bb.bm ], [ 0, %bb.as ], [ 0, %bb.av ], [ 0, %bb.ai ], [ %.29, %bb.bt ], [ %.0564, %.loopexit687.loopexit1630 ]
  %.7563 = phi i32 [ %.0556, %.loopexit687.loopexit1485 ], [ %.0556, %.split1064 ], [ %.0556, %bb.p ], [ %.15571048, %bb.u ], [ %.pre1330, %bb.cs ], [ %.0556, %bb.z ], [ %.0556, %.split ], [ %.0556, %bb.an ], [ %.0556, %bb.e ], [ %.0556, %bb.cb ], [ %.0556, %bb.co ], [ %i.cq, %bb.w ], [ %.0556, %bb.ci ], [ %.0556, %bb.cf ], [ %.0556, %bb.bp ], [ %.0556, %bb.bm ], [ %.0556, %bb.as ], [ %.0556, %bb.av ], [ %.0556, %bb.ai ], [ %i.ps, %bb.bt ], [ %.0556, %.loopexit687.loopexit1630 ] ; 2 uses
  %i.xp = phi i1 [ true, %.loopexit687.loopexit1485 ], [ false, %.split1064 ], [ false, %bb.p ], [ false, %bb.u ], [ false, %bb.cs ], [ false, %bb.z ], [ false, %.split ], [ false, %bb.an ], [ false, %bb.e ], [ false, %bb.cb ], [ false, %bb.co ], [ false, %bb.w ], [ false, %bb.ci ], [ false, %bb.cf ], [ false, %bb.bp ], [ false, %bb.bm ], [ false, %bb.as ], [ false, %bb.av ], [ false, %bb.ai ], [ false, %bb.bt ], [ false, %.loopexit687.loopexit1630 ]
  %.0 = phi i32 [ 1, %.loopexit687.loopexit1485 ], [ -5, %.split1064 ], [ -5, %bb.p ], [ -5, %bb.u ], [ -5, %bb.cs ], [ -5, %bb.z ], [ -5, %.split ], [ -5, %bb.an ], [ -2, %bb.e ], [ -5, %bb.cb ], [ -5, %bb.co ], [ -5, %bb.w ], [ -5, %bb.ci ], [ -5, %bb.cf ], [ -5, %bb.bp ], [ -5, %bb.bm ], [ -5, %bb.as ], [ -5, %bb.av ], [ -5, %bb.ai ], [ -5, %bb.bt ], [ -3, %.loopexit687.loopexit1630 ] ; 2 uses
  %i.xq = load i32, ptr %i.p, align 4, !tbaa !21  ; 2 uses
  %i.xr = icmp ult i32 %.7563, %i.xq
  br i1 %i.xr, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.loopexit687
  %i.xs = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.xt = sub nuw i32 %i.xq, %.7563
  %i.xu = call i32 %3(ptr noundef %4, ptr noundef %i.xs, i32 noundef %i.xt) #4
  %i.xv = icmp ne i32 %i.xu, 0
  %or.cond3 = and i1 %i.xp, %i.xv
  %spec.store.select = select i1 %or.cond3, i32 -5, i32 %.0
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.loopexit687
  %.1 = phi i32 [ %spec.store.select, %bb.ct ], [ %.0, %.loopexit687 ]
  %i.xw = load ptr, ptr %i.a, align 8, !tbaa !52
  store ptr %i.xw, ptr %0, align 8, !tbaa !51
  store i32 %.42, ptr %i.aj, align 8, !tbaa !53
  br label %bb.cv

bb.cv:                                            ; preds = %bb.a, %bb.b, %bb.cu
  %.0598 = phi i32 [ %.1, %bb.cu ], [ -2, %bb.b ], [ -2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0598
}

declare hidden void @inflate_fixed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @inflateBackEnd(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  tail call void %i.f(ptr noundef %i.i, ptr noundef nonnull %i.c) #4
  store ptr null, ptr %i.b, align 8, !tbaa !17
end_hunk_1
