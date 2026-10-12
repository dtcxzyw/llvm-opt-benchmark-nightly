Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genmbcs?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL12MBCSAddTableP12NewConverterP8UCMTableP20UConverterStaticData:bb.a
  %i.wl = add i16 %.05081.i.i, 16
  %i.wm = zext i16 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.wm ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %wide.load268.1 = load <8 x i16>, ptr %i.wn, align 2, !tbaa !32
  %wide.load269.1 = load <8 x i16>, ptr %i.wo, align 2, !tbaa !32
  %i.wp = zext i16 %i.wk to i64
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.wp ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store <8 x i16> %wide.load268.1, ptr %i.wq, align 2, !tbaa !32
  store <8 x i16> %wide.load269.1, ptr %i.wr, align 2, !tbaa !32
  %i.ws = add i16 %.082.i.i, 32
  %i.wt = add i16 %.05081.i.i, 32
  %i.wu = zext i16 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.wu ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %wide.load268.2 = load <8 x i16>, ptr %i.wv, align 2, !tbaa !32
  %wide.load269.2 = load <8 x i16>, ptr %i.ww, align 2, !tbaa !32
  %i.wx = zext i16 %i.ws to i64
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.wx ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  store <8 x i16> %wide.load268.2, ptr %i.wy, align 2, !tbaa !32
  store <8 x i16> %wide.load269.2, ptr %i.wz, align 2, !tbaa !32
  %i.xa = add i16 %.082.i.i, 48
  %i.xb = add i16 %.05081.i.i, 48
  %i.xc = zext i16 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.xc ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %wide.load268.3 = load <8 x i16>, ptr %i.xd, align 2, !tbaa !32
  %wide.load269.3 = load <8 x i16>, ptr %i.xe, align 2, !tbaa !32
  %i.xf = zext i16 %i.xa to i64
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.xf ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  store <8 x i16> %wide.load268.3, ptr %i.xg, align 2, !tbaa !32
  store <8 x i16> %wide.load269.3, ptr %i.xh, align 2, !tbaa !32
  br label %.loopexit.i34.i

scalar.ph264:                                     ; preds = %scalar.ph264, %scalar.ph264.preheader
  %.280.i.i = phi i16 [ %.082.i.i, %scalar.ph264.preheader ], [ %i.xt, %scalar.ph264 ] ; 3 uses
  %.25279.i.i = phi i16 [ %.05081.i.i, %scalar.ph264.preheader ], [ %i.xp, %scalar.ph264 ] ; 3 uses
  %.25678.i.i = phi i16 [ 64, %scalar.ph264.preheader ], [ %i.xw, %scalar.ph264 ]
  %i.xi = add i16 %.25279.i.i, 1
  %i.xj = zext i16 %.25279.i.i to i64
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.xj
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !32
  %i.xm = add i16 %.280.i.i, 1
  %i.xn = zext i16 %.280.i.i to i64
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.xn
  store i16 %i.xl, ptr %i.xo, align 2, !tbaa !32
  %i.xp = add i16 %.25279.i.i, 2                  ; 2 uses
  %i.xq = zext i16 %i.xi to i64
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.xq
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !32
  %i.xt = add i16 %.280.i.i, 2                    ; 2 uses
  %i.xu = zext i16 %i.xm to i64
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.xu
  store i16 %i.xs, ptr %i.xv, align 2, !tbaa !32
  %i.xw = add nsw i16 %.25678.i.i, -2             ; 2 uses
  %.not65.i.i.1 = icmp eq i16 %i.xw, 0
  br i1 %.not65.i.i.1, label %.loopexit.i34.i, label %scalar.ph264, !llvm.loop !60

bb.cp:                                            ; preds = %bb.co
  store i16 %.05081.i.i, ptr %i.tc, align 2, !tbaa !32
  %i.xx = add i16 %.082.i.i, 64                   ; 2 uses
  br label %.loopexit.i34.i

.loopexit.i34.i:                                  ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %scalar.ph264, %vector.body266, %middle.block289, %vec.epilog.middle.block305, %bb.cp, %.critedge.thread.i.i, %.critedge.thread.thread.i36.i
  %.353.i.i = phi i16 [ %i.sy, %.critedge.thread.thread.i36.i ], [ %i.xx, %bb.cp ], [ %i.te, %.critedge.thread.i.i ], [ %i.wc, %vector.body266 ], [ %i.xp, %scalar.ph264 ], [ %i.ul, %vec.epilog.middle.block305 ], [ %i.tx, %middle.block289 ], [ %.lcssa315.unr, %.lr.ph.i33.i.prol.loopexit ], [ %i.vl, %.lr.ph.i33.i ] ; 2 uses
  %.3.i35.i = phi i16 [ %.082.i.i, %.critedge.thread.thread.i36.i ], [ %i.xx, %bb.cp ], [ %.082.i.i, %.critedge.thread.i.i ], [ %i.wd, %vector.body266 ], [ %i.xt, %scalar.ph264 ], [ %i.uk, %vec.epilog.middle.block305 ], [ %i.tw, %middle.block289 ], [ %.lcssa.unr, %.lr.ph.i33.i.prol.loopexit ], [ %i.vp, %.lr.ph.i33.i ] ; 2 uses
  %i.xy = zext i16 %.353.i.i to i32               ; 2 uses
  %i.xz = icmp ugt i32 %i.rr, %i.xy
  br i1 %i.xz, label %.lr.ph83.i.i, label %._crit_edge.i25.i, !llvm.loop !61

._crit_edge.i25.i:                                ; preds = %.loopexit.i34.i, %_ZL19singleCompactStage3P8MBCSData.exit.i, %_ZL19singleCompactStage3P8MBCSData.exit.thread.i
  %.0.lcssa.i26.i = phi i16 [ 64, %_ZL19singleCompactStage3P8MBCSData.exit.i ], [ 64, %_ZL19singleCompactStage3P8MBCSData.exit.thread.i ], [ %.3.i35.i, %.loopexit.i34.i ] ; 2 uses
  %i.ya = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not.i27.i = icmp ne i8 %i.ya, 0
  %.pre.i28.i = zext i16 %.0.lcssa.i26.i to i32   ; 3 uses
  %i.yb = icmp samesign ugt i32 %i.rr, %.pre.i28.i
  %or.cond.i29.i = select i1 %.not.i27.i, i1 %i.yb, i1 false
  br i1 %or.cond.i29.i, label %bb.cq, label %._crit_edge._crit_edge.i30.i

bb.cq:                                            ; preds = %._crit_edge.i25.i
  %i.yc = zext nneg i32 %i.rr to i64
  %i.yd = zext i16 %.0.lcssa.i26.i to i64
  %i.ye = sub nuw nsw i32 %i.rr, %.pre.i28.i
  %i.yf = shl nuw nsw i32 %i.ye, 1
  %i.yg = zext nneg i32 %i.yf to i64
  %i.yh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i64 noundef %i.yc, i64 noundef %i.yd, i64 noundef %i.yg) ; 0 uses
  br label %._crit_edge._crit_edge.i30.i

._crit_edge._crit_edge.i30.i:                     ; preds = %bb.cq, %._crit_edge.i25.i
  store i32 %.pre.i28.i, ptr %i.bg, align 8, !tbaa !36
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %._crit_edge._crit_edge.i30.i
  %indvars.iv96.i.i = phi i64 [ 0, %._crit_edge._crit_edge.i30.i ], [ %indvars.iv.next97.i.i.3, %bb.cr ] ; 5 uses
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv96.i.i ; 2 uses
  %i.yj = load i16, ptr %i.yi, align 2, !tbaa !32
  %i.yk = lshr i16 %i.yj, 6
  %i.yl = zext nneg i16 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.yl
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !32
  store i16 %i.yn, ptr %i.yi, align 2, !tbaa !32
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv96.i.i
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 2 uses
  %i.yq = load i16, ptr %i.yp, align 2, !tbaa !32
  %i.yr = lshr i16 %i.yq, 6
  %i.ys = zext nneg i16 %i.yr to i64
  %i.yt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ys
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !32
  store i16 %i.yu, ptr %i.yp, align 2, !tbaa !32
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv96.i.i
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 4 ; 2 uses
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !32
  %i.yy = lshr i16 %i.yx, 6
  %i.yz = zext nneg i16 %i.yy to i64
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.yz
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !32
  store i16 %i.zb, ptr %i.yw, align 2, !tbaa !32
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv96.i.i
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 6 ; 2 uses
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !32
  %i.zf = lshr i16 %i.ze, 6
  %i.zg = zext nneg i16 %i.zf to i64
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.zg
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !32
  store i16 %i.zi, ptr %i.zd, align 2, !tbaa !32
  %indvars.iv.next97.i.i.3 = add nuw nsw i64 %indvars.iv96.i.i, 4 ; 2 uses
  %exitcond99.not.i.i.3 = icmp eq i64 %indvars.iv.next97.i.i.3, 1088
  br i1 %exitcond99.not.i.i.3, label %_ZL19singleCompactStage2P8MBCSData.exit.i, label %bb.cr, !llvm.loop !62

_ZL19singleCompactStage2P8MBCSData.exit.i:        ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.dd

bb.cs:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i16 0, ptr %i.a, align 16, !tbaa !32
  %i.zj = load i32, ptr %i.bg, align 8, !tbaa !36 ; 2 uses
  %i.zk = icmp ugt i32 %i.zj, 64
  br i1 %i.zk, label %.lr.ph83.i43.i, label %._crit_edge.i37.i

.lr.ph83.i43.i:                                   ; preds = %bb.cs
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 196664 ; 31 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit.i59.i, %.lr.ph83.i43.i
  %i.zm = phi i32 [ 64, %.lr.ph83.i43.i ], [ %i.afy, %.loopexit.i59.i ] ; 3 uses
  %.082.i44.i = phi i16 [ 64, %.lr.ph83.i43.i ], [ %.3.i61.i, %.loopexit.i59.i ] ; 27 uses
  %.05081.i45.i = phi i16 [ 64, %.lr.ph83.i43.i ], [ %.353.i60.i, %.loopexit.i59.i ] ; 16 uses
  %i.zn = add i16 %.082.i44.i, -1
  %i.zo = zext nneg i32 %i.zm to i64
  %i.zp = zext i16 %i.zn to i64                   ; 2 uses
  %invariant.gep.i46.i = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.zo ; 2 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cy, %bb.ct
  %indvars.iv.i47.i = phi i64 [ 0, %bb.ct ], [ %indvars.iv.next.i66.i.1, %bb.cy ] ; 6 uses
  %gep.i48.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i46.i, i64 %indvars.iv.i47.i
  %i.zq = load i32, ptr %gep.i48.i, align 4, !tbaa !37
  %i.zr = icmp eq i32 %i.zq, 0
  br i1 %i.zr, label %bb.cv, label %.critedge.i49.i

bb.cv:                                            ; preds = %bb.cu
  %i.zs = sub nsw i64 %i.zp, %indvars.iv.i47.i
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zl, i64 %i.zs
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !37
  %i.zv = icmp eq i32 %i.zu, 0
  br i1 %i.zv, label %bb.cw, label %.critedge.i49.i

bb.cw:                                            ; preds = %bb.cv
  %indvars.iv.next.i66.i = or disjoint i64 %indvars.iv.i47.i, 1 ; 4 uses
  %gep.i48.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i46.i, i64 %indvars.iv.next.i66.i
  %i.zw = load i32, ptr %gep.i48.i.1, align 4, !tbaa !37
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %bb.cx, label %.critedge.i49.i

bb.cx:                                            ; preds = %bb.cw
  %i.zy = sub nsw i64 %i.zp, %indvars.iv.next.i66.i
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.zl, i64 %i.zy
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !37
  %i.aab = icmp eq i32 %i.aaa, 0
  br i1 %i.aab, label %bb.cy, label %.critedge.i49.i

bb.cy:                                            ; preds = %bb.cx
  %indvars.iv.next.i66.i.1 = add nuw nsw i64 %indvars.iv.i47.i, 2 ; 2 uses
  %exitcond.not.i67.i.1 = icmp eq i64 %indvars.iv.next.i66.i.1, 64
  br i1 %exitcond.not.i67.i.1, label %.critedge.thread.thread.i68.i, label %bb.cu, !llvm.loop !63

.critedge.thread.thread.i68.i:                    ; preds = %bb.cy
  %i.aac = add i16 %.082.i44.i, -64
  %i.aad = lshr i32 %i.zm, 6
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aae
  store i16 %i.aac, ptr %i.aaf, align 2, !tbaa !32
  %i.aag = add i16 %.05081.i45.i, 64
  br label %.loopexit.i59.i

.critedge.i49.i:                                  ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %indvars.iv.i47.i.lcssa = phi i64 [ %indvars.iv.i47.i, %bb.cv ], [ %indvars.iv.i47.i, %bb.cu ], [ %indvars.iv.next.i66.i, %bb.cw ], [ %indvars.iv.next.i66.i, %bb.cx ] ; 3 uses
  %indvars33.le.i = trunc i64 %indvars.iv.i47.i.lcssa to i32 ; 3 uses
  %i.aah = trunc i64 %indvars.iv.i47.i.lcssa to i16 ; 3 uses
  %.not64.i50.i = icmp eq i32 %indvars33.le.i, 0
  %i.aai = lshr i32 %i.zm, 6
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aaj ; 3 uses
  br i1 %.not64.i50.i, label %bb.cz, label %.critedge.thread.i51.i

.critedge.thread.i51.i:                           ; preds = %.critedge.i49.i
  %i.aal = sub i16 %.082.i44.i, %i.aah
  store i16 %i.aal, ptr %i.aak, align 2, !tbaa !32
  %i.aam = add i16 %.05081.i45.i, %i.aah          ; 8 uses
  %.not6673.i52.i = icmp eq i32 %indvars33.le.i, 64
  br i1 %.not6673.i52.i, label %.loopexit.i59.i, label %.lr.ph.preheader.i53.i

.lr.ph.preheader.i53.i:                           ; preds = %.critedge.thread.i51.i
  %i.aan = sub nuw nsw i16 64, %i.aah             ; 4 uses
  %i.aao = sub i32 64, %indvars33.le.i            ; 3 uses
  %min.iters.check246 = icmp ult i32 %i.aao, 16
  br i1 %min.iters.check246, label %.lr.ph.i54.i.preheader, label %vector.scevcheck242

vector.scevcheck242:                              ; preds = %.lr.ph.preheader.i53.i
  %i.aap = trunc i64 %indvars.iv.i47.i.lcssa to i16
  %i.aaq = sub i16 63, %i.aap                     ; 2 uses
  %i.aar = xor i16 %.082.i44.i, -1
  %i.aas = icmp ugt i16 %i.aaq, %i.aar
  %i.aat = xor i16 %i.aam, -1
  %i.aau = icmp ugt i16 %i.aaq, %i.aat
  %i.aav = or i1 %i.aas, %i.aau
  br i1 %i.aav, label %.lr.ph.i54.i.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %vector.scevcheck242
  %i.aaw = zext i16 %.082.i44.i to i64
  %i.aax = zext i16 %i.aam to i64
  %i.aay = sub nsw i64 %i.aaw, %i.aax
  %i.aaz = shl nsw i64 %i.aay, 2
  %i.aba = add nsw i64 %i.aaz, -1
  %diff.check244 = icmp ult i64 %i.aba, 31
  br i1 %diff.check244, label %.lr.ph.i54.i.preheader, label %vector.ph247

vector.ph247:                                     ; preds = %vector.memcheck243
  %n.vec248 = and i32 %i.aao, -8                  ; 3 uses
  %i.abb = trunc i32 %n.vec248 to i16             ; 3 uses
  %i.abc = add i16 %.082.i44.i, %i.abb            ; 2 uses
  %i.abd = add i16 %i.aam, %i.abb                 ; 2 uses
  %i.abe = sub i16 %i.aan, %i.abb
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i32 [ 0, %vector.ph247 ], [ %index.next253, %vector.body249 ] ; 2 uses
  %i.abf = trunc i32 %index250 to i16             ; 2 uses
  %i.abg = add i16 %.082.i44.i, %i.abf
  %i.abh = add i16 %i.aam, %i.abf
  %i.abi = zext i16 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.abi ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %wide.load251 = load <4 x i32>, ptr %i.abj, align 4, !tbaa !37
  %wide.load252 = load <4 x i32>, ptr %i.abk, align 4, !tbaa !37
  %i.abl = zext i16 %i.abg to i64
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  store <4 x i32> %wide.load251, ptr %i.abm, align 4, !tbaa !37
  store <4 x i32> %wide.load252, ptr %i.abn, align 4, !tbaa !37
  %index.next253 = add nuw i32 %index250, 8       ; 2 uses
  %i.abo = icmp eq i32 %index.next253, %n.vec248
  br i1 %i.abo, label %middle.block254, label %vector.body249, !llvm.loop !64

middle.block254:                                  ; preds = %vector.body249
  %cmp.n255 = icmp eq i32 %i.aao, %n.vec248
  br i1 %cmp.n255, label %.loopexit.i59.i, label %.lr.ph.i54.i.preheader

.lr.ph.i54.i.preheader:                           ; preds = %vector.memcheck243, %vector.scevcheck242, %.lr.ph.preheader.i53.i, %middle.block254
  %.176.i55.i.ph = phi i16 [ %.082.i44.i, %vector.memcheck243 ], [ %.082.i44.i, %vector.scevcheck242 ], [ %.082.i44.i, %.lr.ph.preheader.i53.i ], [ %i.abc, %middle.block254 ] ; 3 uses
  %.15175.i56.i.ph = phi i16 [ %i.aam, %vector.memcheck243 ], [ %i.aam, %vector.scevcheck242 ], [ %i.aam, %.lr.ph.preheader.i53.i ], [ %i.abd, %middle.block254 ] ; 3 uses
  %.15574.i57.i.ph = phi i16 [ %i.aan, %vector.memcheck243 ], [ %i.aan, %vector.scevcheck242 ], [ %i.aan, %.lr.ph.preheader.i53.i ], [ %i.abe, %middle.block254 ] ; 4 uses
  %xtraiter = and i16 %.15574.i57.i.ph, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i54.i.prol.loopexit, label %.lr.ph.i54.i.prol

.lr.ph.i54.i.prol:                                ; preds = %.lr.ph.i54.i.preheader
  %i.abp = add i16 %.15175.i56.i.ph, 1            ; 2 uses
  %i.abq = zext i16 %.15175.i56.i.ph to i64
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.abq
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !37
  %i.abt = add i16 %.176.i55.i.ph, 1              ; 2 uses
  %i.abu = zext i16 %.176.i55.i.ph to i64
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.abu
  store i32 %i.abs, ptr %i.abv, align 4, !tbaa !37
  %i.abw = add nsw i16 %.15574.i57.i.ph, -1
  br label %.lr.ph.i54.i.prol.loopexit

.lr.ph.i54.i.prol.loopexit:                       ; preds = %.lr.ph.i54.i.prol, %.lr.ph.i54.i.preheader
  %.lcssa324.unr = phi i16 [ poison, %.lr.ph.i54.i.preheader ], [ %i.abp, %.lr.ph.i54.i.prol ]
  %.lcssa323.unr = phi i16 [ poison, %.lr.ph.i54.i.preheader ], [ %i.abt, %.lr.ph.i54.i.prol ]
  %.176.i55.i.unr = phi i16 [ %.176.i55.i.ph, %.lr.ph.i54.i.preheader ], [ %i.abt, %.lr.ph.i54.i.prol ]
  %.15175.i56.i.unr = phi i16 [ %.15175.i56.i.ph, %.lr.ph.i54.i.preheader ], [ %i.abp, %.lr.ph.i54.i.prol ]
  %.15574.i57.i.unr = phi i16 [ %.15574.i57.i.ph, %.lr.ph.i54.i.preheader ], [ %i.abw, %.lr.ph.i54.i.prol ]
  %i.abx = icmp eq i16 %.15574.i57.i.ph, 1
  br i1 %i.abx, label %.loopexit.i59.i, label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %.lr.ph.i54.i.prol.loopexit, %.lr.ph.i54.i
  %.176.i55.i = phi i16 [ %i.acj, %.lr.ph.i54.i ], [ %.176.i55.i.unr, %.lr.ph.i54.i.prol.loopexit ] ; 3 uses
  %.15175.i56.i = phi i16 [ %i.acf, %.lr.ph.i54.i ], [ %.15175.i56.i.unr, %.lr.ph.i54.i.prol.loopexit ] ; 3 uses
  %.15574.i57.i = phi i16 [ %i.acm, %.lr.ph.i54.i ], [ %.15574.i57.i.unr, %.lr.ph.i54.i.prol.loopexit ]
  %i.aby = add i16 %.15175.i56.i, 1
  %i.abz = zext i16 %.15175.i56.i to i64
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !37
  %i.acc = add i16 %.176.i55.i, 1
  %i.acd = zext i16 %.176.i55.i to i64
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.acd
  store i32 %i.acb, ptr %i.ace, align 4, !tbaa !37
  %i.acf = add i16 %.15175.i56.i, 2               ; 2 uses
  %i.acg = zext i16 %i.aby to i64
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !37
  %i.acj = add i16 %.176.i55.i, 2                 ; 2 uses
  %i.ack = zext i16 %i.acc to i64
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.ack
  store i32 %i.aci, ptr %i.acl, align 4, !tbaa !37
  %i.acm = add nsw i16 %.15574.i57.i, -2          ; 2 uses
  %.not66.i58.i.1 = icmp eq i16 %i.acm, 0
  br i1 %.not66.i58.i.1, label %.loopexit.i59.i, label %.lr.ph.i54.i, !llvm.loop !65

bb.cz:                                            ; preds = %.critedge.i49.i
  %i.acn = icmp ult i16 %.082.i44.i, %.05081.i45.i
  br i1 %i.acn, label %vector.scevcheck, label %bb.da

vector.scevcheck:                                 ; preds = %bb.cz
  store i16 %.082.i44.i, ptr %i.aak, align 2, !tbaa !32
  %i.aco = icmp ugt i16 %.082.i44.i, -64
  %i.acp = icmp ugt i16 %.05081.i45.i, -64
  %i.acq = or i1 %i.aco, %i.acp
  br i1 %i.acq, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck
  br label %scalar.ph

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.acr = zext i16 %.082.i44.i to i64
  %i.acs = zext i16 %.05081.i45.i to i64
  %i.act = sub nsw i64 %i.acr, %i.acs
  %i.acu = shl nsw i64 %i.act, 2
  %i.acv = add nsw i64 %i.acu, -1
  %diff.check = icmp ult i64 %i.acv, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body234

vector.body234:                                   ; preds = %vector.memcheck
  %i.acw = add i16 %.05081.i45.i, 64
  %i.acx = add i16 %.082.i44.i, 64
  %i.acy = zext i16 %.05081.i45.i to i64
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.acy ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %wide.load = load <4 x i32>, ptr %i.acz, align 4, !tbaa !37
  %wide.load236 = load <4 x i32>, ptr %i.ada, align 4, !tbaa !37
  %i.adb = zext i16 %.082.i44.i to i64
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adb ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store <4 x i32> %wide.load, ptr %i.adc, align 4, !tbaa !37
  store <4 x i32> %wide.load236, ptr %i.add, align 4, !tbaa !37
  %i.ade = add i16 %.082.i44.i, 8
  %i.adf = add i16 %.05081.i45.i, 8
  %i.adg = zext i16 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adg ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.adh, align 4, !tbaa !37
  %wide.load236.1 = load <4 x i32>, ptr %i.adi, align 4, !tbaa !37
  %i.adj = zext i16 %i.ade to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adj ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  store <4 x i32> %wide.load.1, ptr %i.adk, align 4, !tbaa !37
  store <4 x i32> %wide.load236.1, ptr %i.adl, align 4, !tbaa !37
  %i.adm = add i16 %.082.i44.i, 16
  %i.adn = add i16 %.05081.i45.i, 16
  %i.ado = zext i16 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.ado ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.adp, align 4, !tbaa !37
  %wide.load236.2 = load <4 x i32>, ptr %i.adq, align 4, !tbaa !37
  %i.adr = zext i16 %i.adm to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adr ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  store <4 x i32> %wide.load.2, ptr %i.ads, align 4, !tbaa !37
  store <4 x i32> %wide.load236.2, ptr %i.adt, align 4, !tbaa !37
  %i.adu = add i16 %.082.i44.i, 24
  %i.adv = add i16 %.05081.i45.i, 24
  %i.adw = zext i16 %i.adv to i64
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adw ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %wide.load.3 = load <4 x i32>, ptr %i.adx, align 4, !tbaa !37
  %wide.load236.3 = load <4 x i32>, ptr %i.ady, align 4, !tbaa !37
  %i.adz = zext i16 %i.adu to i64
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adz ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  store <4 x i32> %wide.load.3, ptr %i.aea, align 4, !tbaa !37
  store <4 x i32> %wide.load236.3, ptr %i.aeb, align 4, !tbaa !37
  %i.aec = add i16 %.082.i44.i, 32
  %i.aed = add i16 %.05081.i45.i, 32
  %i.aee = zext i16 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  %wide.load.4 = load <4 x i32>, ptr %i.aef, align 4, !tbaa !37
  %wide.load236.4 = load <4 x i32>, ptr %i.aeg, align 4, !tbaa !37
  %i.aeh = zext i16 %i.aec to i64
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aeh ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  store <4 x i32> %wide.load.4, ptr %i.aei, align 4, !tbaa !37
  store <4 x i32> %wide.load236.4, ptr %i.aej, align 4, !tbaa !37
  %i.aek = add i16 %.082.i44.i, 40
  %i.ael = add i16 %.05081.i45.i, 40
  %i.aem = zext i16 %i.ael to i64
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aem ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %wide.load.5 = load <4 x i32>, ptr %i.aen, align 4, !tbaa !37
  %wide.load236.5 = load <4 x i32>, ptr %i.aeo, align 4, !tbaa !37
  %i.aep = zext i16 %i.aek to i64
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aep ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
end_hunk_0
