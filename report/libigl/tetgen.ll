Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 559
begin_hunk_0_@_ZN10tetgenmesh13sremovevertexEPdPNS_4faceES2_i:bb.a
  %min.iters.check454 = icmp ult i32 %i.vp, 4
  %i.vx = sub i64 %i.vd, %i.vw
  %diff.check452 = icmp ugt i64 %i.vx, -32
  %or.cond = or i1 %min.iters.check454, %diff.check452
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph455

vector.ph455:                                     ; preds = %.lr.ph.preheader.i
  %n.vec456 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body457

vector.body457:                                   ; preds = %vector.body457, %vector.ph455
  %index458 = phi i64 [ 0, %vector.ph455 ], [ %index.next461, %vector.body457 ] ; 3 uses
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %index458 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %wide.load459 = load <2 x ptr>, ptr %i.vy, align 8, !tbaa !23
  %wide.load460 = load <2 x ptr>, ptr %i.vz, align 8, !tbaa !23
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %index458 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store <2 x ptr> %wide.load459, ptr %i.wa, align 8, !tbaa !23
  store <2 x ptr> %wide.load460, ptr %i.wb, align 8, !tbaa !23
  %index.next461 = add nuw i64 %index458, 4       ; 2 uses
  %i.wc = icmp eq i64 %index.next461, %n.vec456
  br i1 %i.wc, label %middle.block462, label %vector.body457, !llvm.loop !676

middle.block462:                                  ; preds = %vector.body457
  %cmp.n463 = icmp eq i64 %n.vec456, %wide.trip.count.i
  br i1 %cmp.n463, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block462
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec456, %middle.block462 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.i.prol
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !23
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.i.prol
  store ptr %i.we, ptr %i.wf, align 8, !tbaa !23
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !677

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.wg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.wh = icmp ugt i64 %i.wg, -4
  br i1 %i.wh, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block462, %bb.ai
  %i.wi = icmp slt i32 %i.vp, %spec.select.i
  br i1 %i.wi, label %.lr.ph42.preheader.i, label %._crit_edge.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i
  %i.wj = sext i32 %i.vp to i64
  %i.wk = shl nsw i64 %i.wj, 3
  %scevgep.i = getelementptr i8, ptr %i.vu, i64 %i.wk
  %i.wl = xor i32 %i.vp, -1
  %i.wm = add i32 %spec.select.i, %i.wl
  %i.wn = zext i32 %i.wm to i64
  %i.wo = shl nuw nsw i64 %i.wn, 3
  %i.wp = add nuw nsw i64 %i.wo, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.wp, i1 false), !tbaa !23
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.i
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !23
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.i
  store ptr %i.wr, ptr %i.ws, align 8, !tbaa !23
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next.i
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !23
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.next.i
  store ptr %i.wu, ptr %i.wv, align 8, !tbaa !23
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next.i.1
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !23
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.next.i.1
  store ptr %i.wx, ptr %i.wy, align 8, !tbaa !23
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next.i.2
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !23
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.next.i.2
  store ptr %i.xa, ptr %i.xb, align 8, !tbaa !23
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !678

._crit_edge.i:                                    ; preds = %.lr.ph42.preheader.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.vc) #40
  %i.xc = load i32, ptr %i.vo, align 8, !tbaa !107
  %i.xd = sub nsw i32 %spec.select.i, %i.xc
  %i.xe = sext i32 %i.xd to i64
  %i.xf = shl nsw i64 %i.xe, 3
  %i.xg = getelementptr inbounds nuw i8, ptr %i.uu, i64 40 ; 2 uses
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !108
  %i.xi = add i64 %i.xf, %i.xh
  store i64 %i.xi, ptr %i.xg, align 8, !tbaa !108
  store ptr %i.vu, ptr %i.vb, align 8, !tbaa !106
  store i32 %spec.select.i, ptr %i.vo, align 8, !tbaa !107
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i, %bb.ah, %._crit_edge46.i
  %i.xj = phi ptr [ %i.vc, %bb.ah ], [ %i.vu, %._crit_edge.i ], [ %i.vi, %._crit_edge46.i ]
  %i.xk = sext i32 %i.va to i64
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.xj, i64 %i.xk ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !23 ; 2 uses
  %i.xn = icmp eq ptr %i.xm, null
  %i.xo = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !102 ; 2 uses
  %i.xq = load i32, ptr %i.uu, align 8, !tbaa !103 ; 2 uses
  br i1 %i.xn, label %bb.ak, label %_ZN10tetgenmesh9arraypool8getblockEi.exit

bb.ak:                                            ; preds = %bb.aj
  %i.xr = mul nsw i32 %i.xq, %i.xp
  %i.xs = sext i32 %i.xr to i64                   ; 2 uses
  %i.xt = tail call noalias ptr @malloc(i64 noundef %i.xs) #45 ; 2 uses
  store ptr %i.xt, ptr %i.xl, align 8, !tbaa !23
  %i.xu = getelementptr inbounds nuw i8, ptr %i.uu, i64 40 ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !108
  %i.xw = add i64 %i.xv, %i.xs
  store i64 %i.xw, ptr %i.xu, align 8, !tbaa !108
  br label %_ZN10tetgenmesh9arraypool8getblockEi.exit

_ZN10tetgenmesh9arraypool8getblockEi.exit:        ; preds = %bb.aj, %bb.ak
  %.033.i = phi ptr [ %i.xt, %bb.ak ], [ %i.xm, %bb.aj ]
  %i.xx = load i64, ptr %i.uv, align 8, !tbaa !98 ; 2 uses
  %i.xy = add nsw i32 %i.xp, -1
  %i.xz = sext i32 %i.xy to i64
  %i.ya = and i64 %i.xx, %i.xz
  %i.yb = sext i32 %i.xq to i64
  %i.yc = mul nsw i64 %i.ya, %i.yb
  %i.yd = getelementptr inbounds i8, ptr %.033.i, i64 %i.yc ; 2 uses
  %i.ye = add nsw i64 %i.xx, 1
  store i64 %i.ye, ptr %i.uv, align 8, !tbaa !98
  store ptr %.sroa.0256.1, ptr %i.yd, align 8, !tbaa !316
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  store i32 %.sroa.14.1, ptr %i.yf, align 8, !tbaa !317
  %i.yg = sext i32 %.sroa.14.1 to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !33
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !33
  %i.ym = ashr i32 %i.yl, 1
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr inbounds [8 x i8], ptr %.sroa.0256.1, i64 %i.yn
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !306
  %i.yq = ptrtoint ptr %i.yp to i64               ; 3 uses
  %i.yr = and i64 %i.yq, -8
  %i.ys = inttoptr i64 %i.yr to ptr               ; 3 uses
  %i.yt = load ptr, ptr %i.to, align 8, !tbaa !316
  %i.yu = icmp eq ptr %i.yt, %i.ys
  br i1 %i.yu, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN10tetgenmesh9arraypool8getblockEi.exit
  %i.yv = trunc i64 %i.yq to i32
  %i.yw = and i32 %i.yv, 7
  %i.yx = and i64 %i.yq, 7
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.yx
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !33
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.ys, i64 %i.za
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !306
  %.not98 = icmp ne ptr %i.zc, %1
  %i.zd = zext i1 %.not98 to i32
  %spec.select272 = xor i32 %i.yw, %i.zd
  br label %bb.af, !llvm.loop !679

bb.am:                                            ; preds = %_ZN10tetgenmesh9arraypool8getblockEi.exit
  %i.ze = load ptr, ptr %i.sr, align 8, !tbaa !356 ; 7 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !98 ; 2 uses
  %i.zh = icmp eq i64 %i.zg, 3
  br i1 %i.zh, label %.preheader275, label %.preheader

.preheader275:                                    ; preds = %bb.am
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !106 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zl = load i32, ptr %i.zk, align 8, !tbaa !105 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ze, i64 12
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !122 ; 2 uses
  %i.zo = load i32, ptr %i.ze, align 8, !tbaa !103 ; 2 uses
  %i.zp = load ptr, ptr %i.zj, align 8, !tbaa !23 ; 2 uses
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !316
  store ptr %i.zq, ptr %5, align 16, !tbaa !316
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !317
  store i32 %i.zs, ptr %i.a, align 8, !tbaa !317
  %i.zt = icmp eq i32 %i.zl, 0
  %i.zu = zext i1 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %i.zu
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !23
  %i.zx = trunc i32 %i.zn to i1
  %6 = sext i32 %i.zo to i64
  %7 = select i1 %i.zx, i64 %6, i64 0
  %i.zy = getelementptr inbounds i8, ptr %i.zw, i64 %7 ; 2 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !316
  store ptr %i.zz, ptr %.ptr.1, align 16, !tbaa !316
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !317
  store i32 %i.aab, ptr %i.b, align 8, !tbaa !317
  %i.aac = lshr i32 2, %i.zl
  %i.aad = zext nneg i32 %i.aac to i64
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %i.aad
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !23
  %i.aag = and i32 %i.zn, 2
  %i.aah = mul nsw i32 %i.aag, %i.zo
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds i8, ptr %i.aaf, i64 %i.aai ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !316
  store ptr %i.aak, ptr %.ptr.2, align 16, !tbaa !316
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !317
  store i32 %i.aam, ptr %i.c, align 8, !tbaa !317
  call void @_ZN10tetgenmesh6flip31EPNS_4faceEi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %5, i32 noundef %4)
  %i.aan = load ptr, ptr %i.sw, align 8, !tbaa !351 ; 2 uses
  %i.aao = load ptr, ptr %5, align 16, !tbaa !316 ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  store ptr null, ptr %i.aap, align 8, !tbaa !306
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 24 ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !285
  store ptr %i.aar, ptr %i.aao, align 8, !tbaa !125
  store ptr %i.aao, ptr %i.aaq, align 8, !tbaa !285
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aan, i64 64 ; 2 uses
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !288
  %i.aau = add nsw i64 %i.aat, -1
  store i64 %i.aau, ptr %i.aas, align 8, !tbaa !288
  %i.aav = load ptr, ptr %i.sw, align 8, !tbaa !351 ; 2 uses
  %i.aaw = load ptr, ptr %.ptr.1, align 16, !tbaa !316 ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 24
  store ptr null, ptr %i.aax, align 8, !tbaa !306
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 24 ; 2 uses
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !285
  store ptr %i.aaz, ptr %i.aaw, align 8, !tbaa !125
  store ptr %i.aaw, ptr %i.aay, align 8, !tbaa !285
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aav, i64 64 ; 2 uses
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !288
  %i.abc = add nsw i64 %i.abb, -1
  store i64 %i.abc, ptr %i.aba, align 8, !tbaa !288
  %i.abd = load ptr, ptr %i.sw, align 8, !tbaa !351 ; 2 uses
  %i.abe = load ptr, ptr %.ptr.2, align 16, !tbaa !316 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 24
  store ptr null, ptr %i.abf, align 8, !tbaa !306
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 24 ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !285
  store ptr %i.abh, ptr %i.abe, align 8, !tbaa !125
  store ptr %i.abe, ptr %i.abg, align 8, !tbaa !285
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abd, i64 64 ; 2 uses
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !288
  %i.abk = add nsw i64 %i.abj, -1
  store i64 %i.abk, ptr %i.abi, align 8, !tbaa !288
  %i.abl = load ptr, ptr %i.sr, align 8, !tbaa !356
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 32
  store i64 0, ptr %i.abm, align 8, !tbaa !98
  %i.abn = load ptr, ptr %i.sv, align 8, !tbaa !357 ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 32 ; 3 uses
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !98
  %i.abq = trunc i64 %i.abp to i32
  %i.abr = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.abn, i32 noundef %i.abq)
  %i.abs = load i64, ptr %i.abo, align 8, !tbaa !98 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !102
  %i.abv = add nsw i32 %i.abu, -1
  %i.abw = sext i32 %i.abv to i64
  %i.abx = and i64 %i.abs, %i.abw
  %i.aby = load i32, ptr %i.abn, align 8, !tbaa !103
  %i.abz = sext i32 %i.aby to i64
  %i.aca = mul nsw i64 %i.abx, %i.abz
  %i.acb = getelementptr inbounds i8, ptr %i.abr, i64 %i.aca ; 2 uses
  %i.acc = add nsw i64 %i.abs, 1
  store i64 %i.acc, ptr %i.abo, align 8, !tbaa !98
  %i.acd = load ptr, ptr %.ptr.3, align 16, !tbaa !316
  store ptr %i.acd, ptr %i.acb, align 8, !tbaa !316
  %i.ace = load i32, ptr %i.sx, align 8, !tbaa !317
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  store i32 %i.ace, ptr %i.acf, align 8, !tbaa !317
  %.pre377 = load ptr, ptr %i.sm, align 8, !tbaa !358
  br label %bb.bg

.preheader:                                       ; preds = %bb.am
  %i.acg = icmp sgt i64 %i.zg, 0
  br i1 %i.acg, label %.lr.ph306, label %.loopexit

.lr.ph306:                                        ; preds = %.preheader, %bb.av
  %i.ach = phi ptr [ %i.aiz, %bb.av ], [ %i.ze, %.preheader ] ; 6 uses
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %bb.av ], [ 0, %.preheader ] ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !106
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acl = load i32, ptr %i.ack, align 8, !tbaa !105
  %i.acm = trunc nuw nsw i64 %indvars.iv345 to i32 ; 2 uses
  %i.acn = lshr i32 %i.acm, %i.acl
  %i.aco = zext nneg i32 %i.acn to i64
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.aco
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !23
  %i.acr = getelementptr inbounds nuw i8, ptr %i.ach, i64 12
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !122
  %i.act = and i32 %i.acs, %i.acm
  %i.acu = load i32, ptr %i.ach, align 8, !tbaa !103
  %i.acv = mul nsw i32 %i.act, %i.acu
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds i8, ptr %i.acq, i64 %i.acw ; 2 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !316 ; 7 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !317 ; 3 uses
  %i.adb = ashr i32 %i.ada, 1
  %i.adc = sext i32 %i.adb to i64
  %i.add = getelementptr inbounds [8 x i8], ptr %i.acy, i64 %i.adc
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !306
  %i.adf = ptrtoint ptr %i.ade to i64             ; 3 uses
  %i.adg = trunc i64 %i.adf to i32
  %i.adh = and i32 %i.adg, 7
  %i.adi = and i64 %i.adf, -8
  %i.adj = inttoptr i64 %i.adi to ptr             ; 4 uses
  %i.adk = sext i32 %i.ada to i64                 ; 3 uses
  %i.adl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.adk
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !33
  %i.adn = sext i32 %i.adm to i64
  %i.ado = getelementptr inbounds [8 x i8], ptr %i.acy, i64 %i.adn
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !306 ; 3 uses
  %i.adq = and i64 %i.adf, 7
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.adq
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !33
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.adj, i64 %i.adt
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !306
  %.not99 = icmp ne ptr %i.adp, %i.adv
  %i.adw = zext i1 %.not99 to i32
  %spec.select324 = xor i32 %i.adh, %i.adw        ; 3 uses
  %i.adx = load i32, ptr %i.st, align 8, !tbaa !338
  %i.ady = sext i32 %i.adx to i64                 ; 2 uses
  %i.adz = getelementptr [4 x i8], ptr %i.acy, i64 %i.ady
  %i.aea = getelementptr i8, ptr %i.adz, i64 4
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !33
  %i.aec = and i32 %i.aeb, 2
  %.not273 = icmp eq i32 %i.aec, 0
  br i1 %.not273, label %bb.an, label %bb.av

bb.an:                                            ; preds = %.lr.ph306
  %i.aed = getelementptr [4 x i8], ptr %i.adj, i64 %i.ady
  %i.aee = getelementptr i8, ptr %i.aed, i64 4
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !33
  %i.aeg = and i32 %i.aef, 2
  %.not274 = icmp eq i32 %i.aeg, 0
  br i1 %.not274, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.aeh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.adk
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !33
  %i.aej = sext i32 %i.aei to i64
  %i.aek = getelementptr inbounds [8 x i8], ptr %i.acy, i64 %i.aej
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !306 ; 2 uses
  %i.aem = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.adk
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !33
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = getelementptr inbounds [8 x i8], ptr %i.acy, i64 %i.aeo
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !306 ; 3 uses
  %i.aer = zext nneg i32 %spec.select324 to i64
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.aer
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !33
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds [8 x i8], ptr %i.adj, i64 %i.aeu
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !306 ; 3 uses
  tail call void @_ZN10tetgenmesh20calculateabovepoint4EPdS0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.adp, ptr noundef %i.ael, ptr noundef %i.aeq, ptr noundef %i.aew)
  %i.aex = load ptr, ptr %i.su, align 8, !tbaa !349
  %i.aey = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.aeq, ptr noundef %i.aew, ptr noundef %i.aex, ptr noundef %i.adp)
  %i.aez = load ptr, ptr %i.su, align 8, !tbaa !349
  %i.afa = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.aeq, ptr noundef %i.aew, ptr noundef %i.aez, ptr noundef %i.ael)
  %i.afb = fmul double %i.aey, %i.afa
  %i.afc = fcmp olt double %i.afb, 0.000000e+00
  br i1 %i.afc, label %bb.ap, label %._crit_edge367

._crit_edge367:                                   ; preds = %bb.ao
  %.pre368 = load ptr, ptr %i.sr, align 8, !tbaa !356
  br label %bb.av

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.ada, ptr %i.a, align 8, !tbaa !317
  store i32 %spec.select324, ptr %i.ss, align 8, !tbaa !317
  store ptr %i.adj, ptr %.ptr.1, align 16, !tbaa !316
  store ptr %i.acy, ptr %5, align 16
  call void @_ZN10tetgenmesh6flip22EPNS_4faceEii(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %5, i32 noundef %4, i32 noundef 0)
  %i.afd = load ptr, ptr %.ptr.1, align 16, !tbaa !316
  store ptr %i.afd, ptr %i.to, align 8, !tbaa !316
  %i.afe = load i32, ptr %i.ss, align 8, !tbaa !317
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !33
  %i.afi = sext i32 %i.afh to i64
  %i.afj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.afi
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !33
  store i32 %i.afk, ptr %i.tp, align 8, !tbaa !317
  %i.afl = load ptr, ptr %i.sv, align 8, !tbaa !357 ; 10 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 32 ; 3 uses
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !98
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh11scarveholesEiPd:bb.a
  store i32 %spec.select.i47, ptr %i.nf, align 8, !tbaa !107
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i49, %bb.ac, %._crit_edge46.i59
  %i.pa = phi ptr [ %i.mt, %bb.ac ], [ %i.nl, %._crit_edge.i49 ], [ %i.mz, %._crit_edge46.i59 ]
  %i.pb = sext i32 %i.mr to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %i.pb ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !23 ; 2 uses
  %i.pe = icmp eq ptr %i.pd, null
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !102 ; 2 uses
  %i.ph = load i32, ptr %i.ml, align 8, !tbaa !103 ; 2 uses
  br i1 %i.pe, label %bb.af, label %_ZN10tetgenmesh9arraypool8getblockEi.exit61

bb.af:                                            ; preds = %bb.ae
  %i.pi = mul nsw i32 %i.ph, %i.pg
  %i.pj = sext i32 %i.pi to i64                   ; 2 uses
  %i.pk = tail call noalias ptr @malloc(i64 noundef %i.pj) #45 ; 2 uses
  store ptr %i.pk, ptr %i.pc, align 8, !tbaa !23
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ml, i64 40 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !108
  %i.pn = add i64 %i.pm, %i.pj
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !108
  br label %_ZN10tetgenmesh9arraypool8getblockEi.exit61

_ZN10tetgenmesh9arraypool8getblockEi.exit61:      ; preds = %bb.ae, %bb.af
  %.033.i50 = phi ptr [ %i.pk, %bb.af ], [ %i.pd, %bb.ae ]
  %i.po = load i64, ptr %i.mm, align 8, !tbaa !98 ; 2 uses
  %i.pp = add nsw i32 %i.pg, -1
  %i.pq = sext i32 %i.pp to i64
  %i.pr = and i64 %i.po, %i.pq
  %i.ps = sext i32 %i.ph to i64
  %i.pt = mul nsw i64 %i.pr, %i.ps
  %i.pu = getelementptr inbounds i8, ptr %.033.i50, i64 %i.pt ; 2 uses
  %i.pv = add nsw i64 %i.po, 1
  store i64 %i.pv, ptr %i.mm, align 8, !tbaa !98
  store ptr %i.mb, ptr %i.pu, align 8, !tbaa !316
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  store i32 %i.lz, ptr %i.pw, align 8, !tbaa !317
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.px = lshr i32 %i.lz, 1
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.py
  store ptr null, ptr %i.pz, align 8, !tbaa !306
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN10tetgenmesh9arraypool8getblockEi.exit61, %bb.z, %bb.x
  %i.qa = sext i32 %i.ls to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !33 ; 2 uses
  %i.qd = add nuw nsw i32 %.193, 1                ; 2 uses
  %exitcond115.not = icmp eq i32 %i.qd, 3
  br i1 %exitcond115.not, label %bb.ai, label %bb.x, !llvm.loop !702

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.qe = load ptr, ptr %i.jk, align 8, !tbaa !357 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !98
  %i.qh = icmp sgt i64 %i.qg, %indvars.iv.next117
  br i1 %i.qh, label %.lr.ph99, label %.preheader, !llvm.loop !703

bb.aj:                                            ; preds = %.lr.ph105, %bb.am
  %i.qi = phi ptr [ %i.kv, %.lr.ph105 ], [ %i.ro, %bb.am ] ; 5 uses
  %indvars.iv119 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next120, %bb.am ] ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !106
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !105
  %i.qn = trunc nuw nsw i64 %indvars.iv119 to i32 ; 2 uses
  %i.qo = lshr i32 %i.qn, %i.qm
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qp
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !23
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !122
  %i.qu = and i32 %i.qt, %i.qn
  %i.qv = load i32, ptr %i.qi, align 8, !tbaa !103
  %i.qw = mul nsw i32 %i.qu, %i.qv
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds i8, ptr %i.qr, i64 %i.qx
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !316 ; 4 uses
  %i.ra = load i32, ptr %i.d, align 8, !tbaa !338
  %i.rb = sext i32 %i.ra to i64
  %i.rc = getelementptr [4 x i8], ptr %i.qz, i64 %i.rb
  %i.rd = getelementptr i8, ptr %i.rc, i64 4      ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !33 ; 2 uses
  %i.rf = trunc i32 %i.re to i1
  br i1 %i.rf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.rg = load ptr, ptr %i.kz, align 8, !tbaa !351 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  store ptr null, ptr %i.rh, align 8, !tbaa !306
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 24 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !285
  store ptr %i.rj, ptr %i.qz, align 8, !tbaa !125
  store ptr %i.qz, ptr %i.ri, align 8, !tbaa !285
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 64 ; 2 uses
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !288
  %i.rm = add nsw i64 %i.rl, -1
  store i64 %i.rm, ptr %i.rk, align 8, !tbaa !288
  %.pre131 = load ptr, ptr %i.k, align 8, !tbaa !356
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.rn = and i32 %i.re, -4
  store i32 %i.rn, ptr %i.rd, align 4, !tbaa !33
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ro = phi ptr [ %.pre131, %bb.ak ], [ %i.qi, %bb.al ] ; 3 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !98
  %i.rr = icmp sgt i64 %i.rq, %indvars.iv.next120
  br i1 %i.rr, label %bb.aj, label %._crit_edge.loopexit, !llvm.loop !704

._crit_edge.loopexit:                             ; preds = %bb.am
  %.pre132 = load ptr, ptr %i.jk, align 8, !tbaa !357
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.rs = phi ptr [ %i.ku, %.preheader ], [ %.pre132, %._crit_edge.loopexit ]
  %.lcssa103 = phi ptr [ %i.kv, %.preheader ], [ %i.ro, %._crit_edge.loopexit ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.lcssa103, i64 32
  store i64 0, ptr %i.rt, align 8, !tbaa !98
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  store i64 0, ptr %i.ru, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN10tetgenmesh11triangulateEiPNS_9arraypoolES1_iPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.tetgenmesh::face", align 8  ; 14 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr null, ptr %6, align 8, !tbaa !316
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.d, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !292
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.h = load i32, ptr %i.g, align 4, !tbaa !258
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !98
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.295, i32 noundef %1, i64 noundef %i.k, i64 noundef %i.m) ; 0 uses
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.296, i32 noundef %4) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.95) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  %i.s = icmp slt i64 %i.r, 2
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i64 %i.r, label %bb.q [
    i64 2, label %bb.g
    i64 3, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !131  ; 5 uses
  %i.z = load i32, ptr %i.v, align 8, !tbaa !105
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.ae = load i32, ptr %i.x, align 4, !tbaa !122
  %i.af = load i32, ptr %2, align 8, !tbaa !103
  %i.ag = trunc i32 %i.ae to i1
  %7 = sext i32 %i.af to i64
  %8 = select i1 %i.ag, i64 %7, i64 0
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !131 ; 5 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !30
  %i.ak = load double, ptr %i.y, align 8, !tbaa !30
  %i.al = fsub double %i.aj, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !30
  %i.aq = fsub double %i.an, %i.ap                ; 2 uses
  %i.ar = fmul double %i.aq, %i.aq
  %i.as = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !30
  %i.ax = fsub double %i.au, %i.aw                ; 2 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.as)
  %i.az = fcmp ogt double %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !352
  %i.bc = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bb) ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 68708
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, i8 0, i64 88, i1 false)
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !336
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 68692
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !337
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bh
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 68688 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !338
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bl
  store i32 0, ptr %i.bm, align 4, !tbaa !33
  %i.bn = load i32, ptr %i.bj, align 8, !tbaa !338
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  store i32 0, ptr %i.bq, align 4, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 68720
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !339
  %.not19.i = icmp eq i32 %i.bs, 0
  br i1 %.not19.i, label %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load i32, ptr %i.bj, align 8, !tbaa !338
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %i.bc, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  store i32 0, ptr %i.bw, align 4, !tbaa !33
  br label %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit

_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit: ; preds = %bb.j, %bb.k
  %i.bx = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !33
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.by
  store ptr %i.y, ptr %i.bz, align 8, !tbaa !306
  %i.ca = load i32, ptr @_ZN10tetgenmesh10sdestpivotE, align 16, !tbaa !33
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.cb
  store ptr %i.ai, ptr %i.cc, align 8, !tbaa !306
  %i.cd = load i32, ptr @_ZN10tetgenmesh10sapexpivotE, align 16, !tbaa !33
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ce
  store ptr null, ptr %i.cf, align 8, !tbaa !306
  %i.cg = load i32, ptr %i.bj, align 8, !tbaa !338
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ch
  store i32 -1, ptr %i.ci, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit, %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !312
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.y, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !33 ; 2 uses
  %.mask = and i32 %i.co, -256
  %i.cp = icmp eq i32 %.mask, 1024
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = and i32 %i.co, 255
  %i.cr = or disjoint i32 %i.cq, 768
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !33
  %.pre = load i32, ptr %i.cj, align 8, !tbaa !312
  %.pre334 = sext i32 %.pre to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi335 = phi i64 [ %.pre334, %bb.m ], [ %i.cl, %bb.l ]
  %i.cs = getelementptr [4 x i8], ptr %i.ai, i64 %.pre-phi335
  %i.ct = getelementptr i8, ptr %i.cs, i64 4      ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !33 ; 2 uses
  %.mask210 = and i32 %i.cu, -256
  %i.cv = icmp eq i32 %.mask210, 1024
  br i1 %i.cv, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cw = and i32 %i.cu, 255
  %i.cx = or disjoint i32 %i.cw, 768
  store i32 %i.cx, ptr %i.ct, align 4, !tbaa !33
  br label %.loopexit

bb.p:                                             ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !106 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !131
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !131
  %i.de = load i32, ptr %i.da, align 8, !tbaa !105 ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !23
  %i.dj = load i32, ptr %i.dc, align 4, !tbaa !122 ; 2 uses
  %i.dk = load i32, ptr %2, align 8, !tbaa !103   ; 2 uses
  %i.dl = trunc i32 %i.dj to i1
  %9 = sext i32 %i.dk to i64
  %10 = select i1 %i.dl, i64 %9, i64 0
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %10
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !131
  store ptr %i.dn, ptr %i.b, align 8, !tbaa !131
  %i.do = lshr i32 2, %i.de
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !23
  %i.ds = and i32 %i.dj, 2
  %i.dt = mul nsw i32 %i.ds, %i.dk
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !131
  store ptr %i.dw, ptr %i.c, align 8, !tbaa !131
  br label %bb.t

bb.q:                                             ; preds = %bb.f
  %i.dx = call noundef zeroext i1 @_ZN10tetgenmesh19calculateabovepointEPNS_9arraypoolEPPdS3_S3_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br i1 %i.dx, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !292
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 148
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !256
  %.not = icmp eq i32 %i.ea, 0
  br i1 %.not, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.298, i32 noundef %1) ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !351
  %i.ee = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ed) ; 23 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 68708 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ee, i8 0, i64 88, i1 false)
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !336
  %.not.i151 = icmp eq i32 %i.eg, 0
  br i1 %.not.i151, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 68692
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !337
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ej
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 68688 ; 17 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !338
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.en
  store i32 0, ptr %i.eo, align 4, !tbaa !33
  %i.ep = load i32, ptr %i.el, align 8, !tbaa !338
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr [4 x i8], ptr %i.ee, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 4
  store i32 0, ptr %i.es, align 4, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 68720 ; 4 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !339
  %.not19.i152 = icmp eq i32 %i.eu, 0
  br i1 %.not19.i152, label %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit153, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = load i32, ptr %i.el, align 8, !tbaa !338
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr [4 x i8], ptr %i.ee, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  store i32 0, ptr %i.ey, align 4, !tbaa !33
  br label %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit153

_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit153: ; preds = %bb.v, %bb.w
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !131 ; 4 uses
  %i.fa = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !33
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.fb
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !306
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !131 ; 4 uses
  %i.fe = load i32, ptr @_ZN10tetgenmesh10sdestpivotE, align 16, !tbaa !33
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ff
  store ptr %i.fd, ptr %i.fg, align 8, !tbaa !306
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !131 ; 4 uses
  %i.fi = load i32, ptr @_ZN10tetgenmesh10sapexpivotE, align 16, !tbaa !33
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.fj
  store ptr %i.fh, ptr %i.fk, align 8, !tbaa !306
  %i.fl = load i32, ptr %i.el, align 8, !tbaa !338
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.fm
  store i32 %1, ptr %i.fn, align 4, !tbaa !33
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 68608 ; 3 uses
  store ptr %i.ee, ptr %i.fo, align 8, !tbaa !316
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 68616 ; 3 uses
  store i32 0, ptr %i.fp, align 8, !tbaa !317
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 11 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !312
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr [4 x i8], ptr %i.ez, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 4      ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !33 ; 2 uses
  %.mask211 = and i32 %i.fv, -256
  %i.fw = icmp eq i32 %.mask211, 1024
  br i1 %i.fw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit153
  %i.fx = and i32 %i.fv, 255
  %i.fy = or disjoint i32 %i.fx, 768
  store i32 %i.fy, ptr %i.fu, align 4, !tbaa !33
  %.pre318 = load i32, ptr %i.fq, align 8, !tbaa !312
  %.pre331 = sext i32 %.pre318 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit153
  %.pre-phi = phi i64 [ %.pre331, %bb.x ], [ %i.fs, %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit153 ] ; 2 uses
  %i.fz = getelementptr [4 x i8], ptr %i.fd, i64 %.pre-phi
  %i.ga = getelementptr i8, ptr %i.fz, i64 4      ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !33 ; 2 uses
  %.mask212 = and i32 %i.gb, -256
  %i.gc = icmp eq i32 %.mask212, 1024
  br i1 %i.gc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gd = and i32 %i.gb, 255
  %i.ge = or disjoint i32 %i.gd, 768
  store i32 %i.ge, ptr %i.ga, align 4, !tbaa !33
  %.pre319 = load i32, ptr %i.fq, align 8, !tbaa !312
  %.pre332 = sext i32 %.pre319 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre-phi333 = phi i64 [ %.pre332, %bb.z ], [ %.pre-phi, %bb.y ]
  %i.gf = getelementptr [4 x i8], ptr %i.fh, i64 %.pre-phi333
  %i.gg = getelementptr i8, ptr %i.gf, i64 4      ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !33 ; 2 uses
  %.mask213 = and i32 %i.gh, -256
  %i.gi = icmp eq i32 %.mask213, 1024
  br i1 %i.gi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gj = and i32 %i.gh, 255
  %i.gk = or disjoint i32 %i.gj, 768
  store i32 %i.gk, ptr %i.gg, align 4, !tbaa !33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gl = load ptr, ptr %i.e, align 8, !tbaa !292
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !182
  %.not136 = icmp eq i32 %i.gn, 0
  br i1 %.not136, label %.loopexit222, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.go = load ptr, ptr %0, align 8, !tbaa !308   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 224
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !54 ; 3 uses
  %.not137 = icmp eq ptr %i.gq, null
  br i1 %.not137, label %.loopexit222, label %.preheader221

.preheader221:                                    ; preds = %bb.ad
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 232
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !53 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph.preheader, label %.loopexit222

.lr.ph.preheader:                                 ; preds = %.preheader221
  %wide.trip.count = zext nneg i32 %i.gs to i64
  br label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit222, label %.lr.ph, !llvm.loop !705

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4          ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !30
  %i.gw = fptosi double %i.gv to i32
  %i.gx = icmp eq i32 %1, %i.gw
  br i1 %i.gx, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !30
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 68692
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !337
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.hd
  store double %i.ha, ptr %i.he, align 8, !tbaa !30
  br label %.loopexit222

.loopexit222:                                     ; preds = %bb.ae, %.preheader221, %bb.af, %bb.ad, %bb.ac
  %i.hf = load i64, ptr %i.q, align 8, !tbaa !98
  %i.hg = icmp eq i64 %i.hf, 3
  br i1 %i.hg, label %.preheader, label %bb.ap

end_hunk_1
