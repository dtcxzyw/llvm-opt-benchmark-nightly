Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_YUV_to_YUV:bb.a
bb.al:                                            ; preds = %bb.ag
  %i.wz = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.xa = insertelement <4 x i32> %i.wz, i32 %1, i64 1
  %i.xb = insertelement <4 x i32> %i.xa, i32 %6, i64 2
  %i.xc = insertelement <4 x i32> %i.xb, i32 %11, i64 3
  %i.xd = add nsw <4 x i32> %i.xc, splat (i32 1)
  %i.xe = sdiv <4 x i32> %i.xd, splat (i32 2)     ; 5 uses
  %i.xf = extractelement <4 x i32> %i.xe, i64 0   ; 6 uses
  %i.xg = extractelement <4 x i32> %i.xe, i64 2   ; 2 uses
  %i.xh = sub nsw i32 %i.xg, %i.xf
  %i.xi = shl nsw i32 %i.xh, 1
  %i.xj = extractelement <4 x i32> %i.xe, i64 3   ; 2 uses
  %i.xk = sub nsw i32 %i.xj, %i.xf
  %i.xl = mul nsw i32 %6, %1
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr inbounds i8, ptr %5, i64 %i.xm ; 3 uses
  %i.xo = mul nsw i32 %11, %1
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr inbounds i8, ptr %10, i64 %i.xp ; 3 uses
  %i.xr = icmp eq ptr %i.xn, %i.xq
  br i1 %i.xr, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.xs = shl nsw i32 %i.xg, 1
  %i.xt = extractelement <4 x i32> %i.xe, i64 1
  %i.xu = sext i32 %i.xt to i64
  %i.xv = sext i32 %i.xs to i64
  %i.xw = mul nsw i64 %i.xv, %i.xu                ; 2 uses
  %i.xx = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.xw) #6 ; 4 uses
  %.not.i.i210.i = icmp eq ptr %i.xx, null
  br i1 %.not.i.i210.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xx, ptr readonly align 1 %i.xn, i64 %i.xw, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.058.i.i188.i = phi ptr [ %i.xx, %bb.an ], [ %i.xn, %bb.al ]
  %.0.i.i189.i = phi ptr [ %i.xx, %bb.an ], [ null, %bb.al ]
  %.off.i.i190.i = add i32 %1, 2
  %.not6271.i.i191.i = icmp ult i32 %.off.i.i190.i, 3
  br i1 %.not6271.i.i191.i, label %._crit_edge75.split.i.i208.i, label %.preheader.lr.ph.i.i192.i

.preheader.lr.ph.i.i192.i:                        ; preds = %bb.ao
  %.off76.i.i193.i = add i32 %0, 2
  %.not6364.i.i194.i = icmp ult i32 %.off76.i.i193.i, 3
  %i.xy = sext i32 %i.xi to i64
  %i.xz = sext i32 %i.xk to i64                   ; 2 uses
  br i1 %.not6364.i.i194.i, label %._crit_edge75.split.i.i208.i, label %.preheader.preheader.i.i195.i

.preheader.preheader.i.i195.i:                    ; preds = %.preheader.lr.ph.i.i192.i
  %i.ya = extractelement <4 x i32> %i.xe, i64 1   ; 2 uses
  %i.yb = mul nsw i32 %i.xj, %i.ya
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds i8, ptr %i.xq, i64 %i.yc
  %i.ye = add nsw i32 %i.xf, -1
  %xtraiter919 = and i32 %i.xf, 3                 ; 2 uses
  %lcmp.mod920.not = icmp eq i32 %xtraiter919, 0
  %i.yf = icmp ult i32 %i.ye, 3
  br label %.preheader.i.i196.i

.preheader.i.i196.i:                              ; preds = %._crit_edge.i.i206.i, %.preheader.preheader.i.i195.i
  %.in.i.i197.i = phi i32 [ %i.zm, %._crit_edge.i.i206.i ], [ %i.ya, %.preheader.preheader.i.i195.i ]
  %.174.i.i198.i = phi ptr [ %i.zp, %._crit_edge.i.i206.i ], [ %i.yd, %.preheader.preheader.i.i195.i ] ; 2 uses
  %.15173.i.i199.i = phi ptr [ %i.zo, %._crit_edge.i.i206.i ], [ %i.xq, %.preheader.preheader.i.i195.i ] ; 2 uses
  %.05372.i.i200.i = phi ptr [ %i.zn, %._crit_edge.i.i206.i ], [ %.058.i.i188.i, %.preheader.preheader.i.i195.i ] ; 2 uses
  br i1 %lcmp.mod920.not, label %.prol.loopexit918, label %.prol.preheader917

.prol.preheader917:                               ; preds = %.preheader.i.i196.i, %.prol.preheader917
  %.268.i.i201.i.prol = phi ptr [ %i.ym, %.prol.preheader917 ], [ %.174.i.i198.i, %.preheader.i.i196.i ] ; 2 uses
  %.25267.i.i202.i.prol = phi ptr [ %i.yj, %.prol.preheader917 ], [ %.15173.i.i199.i, %.preheader.i.i196.i ] ; 2 uses
  %.15466.i.i203.i.prol = phi ptr [ %i.yk, %.prol.preheader917 ], [ %.05372.i.i200.i, %.preheader.i.i196.i ] ; 3 uses
  %.05665.i.i204.i.prol = phi i32 [ %i.yg, %.prol.preheader917 ], [ %i.xf, %.preheader.i.i196.i ]
  %prol.iter921 = phi i32 [ %prol.iter921.next, %.prol.preheader917 ], [ 0, %.preheader.i.i196.i ]
  %i.yg = add nsw i32 %.05665.i.i204.i.prol, -1   ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i.prol, i64 1
  %i.yi = load i8, ptr %.15466.i.i203.i.prol, align 1
  %i.yj = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i.prol, i64 1 ; 3 uses
  store i8 %i.yi, ptr %.25267.i.i202.i.prol, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i.prol, i64 2 ; 3 uses
  %i.yl = load i8, ptr %i.yh, align 1
  %i.ym = getelementptr inbounds nuw i8, ptr %.268.i.i201.i.prol, i64 1 ; 3 uses
  store i8 %i.yl, ptr %.268.i.i201.i.prol, align 1
  %prol.iter921.next = add i32 %prol.iter921, 1   ; 2 uses
  %prol.iter921.cmp.not = icmp eq i32 %prol.iter921.next, %xtraiter919
  br i1 %prol.iter921.cmp.not, label %.prol.loopexit918, label %.prol.preheader917, !llvm.loop !179

.prol.loopexit918:                                ; preds = %.prol.preheader917, %.preheader.i.i196.i
  %.lcssa872.unr = phi ptr [ poison, %.preheader.i.i196.i ], [ %i.yj, %.prol.preheader917 ]
  %.lcssa871.unr = phi ptr [ poison, %.preheader.i.i196.i ], [ %i.yk, %.prol.preheader917 ]
  %.lcssa870.unr = phi ptr [ poison, %.preheader.i.i196.i ], [ %i.ym, %.prol.preheader917 ]
  %.268.i.i201.i.unr = phi ptr [ %.174.i.i198.i, %.preheader.i.i196.i ], [ %i.ym, %.prol.preheader917 ]
  %.25267.i.i202.i.unr = phi ptr [ %.15173.i.i199.i, %.preheader.i.i196.i ], [ %i.yj, %.prol.preheader917 ]
  %.15466.i.i203.i.unr = phi ptr [ %.05372.i.i200.i, %.preheader.i.i196.i ], [ %i.yk, %.prol.preheader917 ]
  %.05665.i.i204.i.unr = phi i32 [ %i.xf, %.preheader.i.i196.i ], [ %i.yg, %.prol.preheader917 ]
  br i1 %i.yf, label %._crit_edge.i.i206.i, label %.preheader.i.i196.i.new

.preheader.i.i196.i.new:                          ; preds = %.prol.loopexit918, %.preheader.i.i196.i.new
  %.268.i.i201.i = phi ptr [ %i.zl, %.preheader.i.i196.i.new ], [ %.268.i.i201.i.unr, %.prol.loopexit918 ] ; 5 uses
  %.25267.i.i202.i = phi ptr [ %i.zi, %.preheader.i.i196.i.new ], [ %.25267.i.i202.i.unr, %.prol.loopexit918 ] ; 5 uses
  %.15466.i.i203.i = phi ptr [ %i.zj, %.preheader.i.i196.i.new ], [ %.15466.i.i203.i.unr, %.prol.loopexit918 ] ; 9 uses
  %.05665.i.i204.i = phi i32 [ %i.zf, %.preheader.i.i196.i.new ], [ %.05665.i.i204.i.unr, %.prol.loopexit918 ]
  %i.yn = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 1
  %i.yo = load i8, ptr %.15466.i.i203.i, align 1
  %i.yp = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i, i64 1
  store i8 %i.yo, ptr %.25267.i.i202.i, align 1
  %i.yq = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 2
  %i.yr = load i8, ptr %i.yn, align 1
  %i.ys = getelementptr inbounds nuw i8, ptr %.268.i.i201.i, i64 1
  store i8 %i.yr, ptr %.268.i.i201.i, align 1
  %i.yt = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 3
  %i.yu = load i8, ptr %i.yq, align 1
  %i.yv = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i, i64 2
  store i8 %i.yu, ptr %i.yp, align 1
  %i.yw = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 4
  %i.yx = load i8, ptr %i.yt, align 1
  %i.yy = getelementptr inbounds nuw i8, ptr %.268.i.i201.i, i64 2
  store i8 %i.yx, ptr %i.ys, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 5
  %i.za = load i8, ptr %i.yw, align 1
  %i.zb = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i, i64 3
  store i8 %i.za, ptr %i.yv, align 1
  %i.zc = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 6
  %i.zd = load i8, ptr %i.yz, align 1
  %i.ze = getelementptr inbounds nuw i8, ptr %.268.i.i201.i, i64 3
  store i8 %i.zd, ptr %i.yy, align 1
  %i.zf = add nsw i32 %.05665.i.i204.i, -4        ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 7
  %i.zh = load i8, ptr %i.zc, align 1
  %i.zi = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i, i64 4 ; 2 uses
  store i8 %i.zh, ptr %i.zb, align 1
  %i.zj = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 8 ; 2 uses
  %i.zk = load i8, ptr %i.zg, align 1
  %i.zl = getelementptr inbounds nuw i8, ptr %.268.i.i201.i, i64 4 ; 2 uses
  store i8 %i.zk, ptr %i.ze, align 1
  %.not63.i.i205.i.3 = icmp eq i32 %i.zf, 0
  br i1 %.not63.i.i205.i.3, label %._crit_edge.i.i206.i, label %.preheader.i.i196.i.new, !llvm.loop !177

._crit_edge.i.i206.i:                             ; preds = %.preheader.i.i196.i.new, %.prol.loopexit918
  %.lcssa872 = phi ptr [ %.lcssa872.unr, %.prol.loopexit918 ], [ %i.zi, %.preheader.i.i196.i.new ]
  %.lcssa871 = phi ptr [ %.lcssa871.unr, %.prol.loopexit918 ], [ %i.zj, %.preheader.i.i196.i.new ]
  %.lcssa870 = phi ptr [ %.lcssa870.unr, %.prol.loopexit918 ], [ %i.zl, %.preheader.i.i196.i.new ]
  %i.zm = add nsw i32 %.in.i.i197.i, -1           ; 2 uses
  %i.zn = getelementptr inbounds i8, ptr %.lcssa871, i64 %i.xy
  %i.zo = getelementptr inbounds i8, ptr %.lcssa872, i64 %i.xz
  %i.zp = getelementptr inbounds i8, ptr %.lcssa870, i64 %i.xz
  %.not62.i.i207.i = icmp eq i32 %i.zm, 0
  br i1 %.not62.i.i207.i, label %._crit_edge75.split.i.i208.i, label %.preheader.i.i196.i, !llvm.loop !178

._crit_edge75.split.i.i208.i:                     ; preds = %._crit_edge.i.i206.i, %.preheader.lr.ph.i.i192.i, %bb.ao
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i189.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ap:                                            ; preds = %bb.ag
  %i.zq = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.zr = insertelement <4 x i32> %i.zq, i32 %1, i64 1
  %i.zs = insertelement <4 x i32> %i.zr, i32 %6, i64 2
  %i.zt = insertelement <4 x i32> %i.zs, i32 %11, i64 3
  %i.zu = add nsw <4 x i32> %i.zt, splat (i32 1)
  %i.zv = sdiv <4 x i32> %i.zu, splat (i32 2)     ; 6 uses
  %i.zw = extractelement <4 x i32> %i.zv, i64 2
  %i.zx = shl nsw i32 %i.zw, 1                    ; 2 uses
  %i.zy = extractelement <4 x i32> %i.zv, i64 3
  %i.zz = shl nsw i32 %i.zy, 1                    ; 2 uses
  %i.aaa = mul nsw i32 %6, %1
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds i8, ptr %5, i64 %i.aab ; 3 uses
  %i.aad = mul nsw i32 %11, %1
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds i8, ptr %10, i64 %i.aae ; 3 uses
  %i.aag = ptrtoint ptr %i.aac to i64
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = or i64 %i.aah, %i.aag
  %i.aaj = and i64 %i.aai, 1
  %i.aak = icmp eq i64 %i.aaj, 0
  %.off82.i.i.i = add i32 %1, 2
  %.not5978.i.i.i = icmp ult i32 %.off82.i.i.i, 3 ; 2 uses
  br i1 %i.aak, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not5978.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i215.i

.preheader.lr.ph.i.i215.i:                        ; preds = %bb.aq
  %i.aal = extractelement <4 x i32> %i.zv, i64 0  ; 5 uses
  %i.aam = shl nsw i32 %i.aal, 1                  ; 2 uses
  %i.aan = sub nsw i32 %i.zz, %i.aam
  %i.aao = ashr exact i32 %i.aan, 1
  %i.aap = sub nsw i32 %i.zx, %i.aam
  %i.aaq = ashr exact i32 %i.aap, 1
  %.off83.i.i.i = add i32 %0, 2
  %.not6071.i.i.i = icmp ult i32 %.off83.i.i.i, 3
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = sext i32 %i.aao to i64
  br i1 %.not6071.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i216.i.preheader

.preheader.i.i216.i.preheader:                    ; preds = %.preheader.lr.ph.i.i215.i
  %i.aat = add nsw i32 %i.aal, -1                 ; 3 uses
  %i.aau = zext i32 %i.aat to i64
  %i.aav = add nuw nsw i64 %i.aau, 1              ; 5 uses
  %i.aaw = extractelement <4 x i32> %i.zv, i64 1
  %min.iters.check527 = icmp ult i32 %i.aat, 3
  %min.iters.check531 = icmp ult i32 %i.aat, 15
  %i.aax = and i64 %i.aav, 12
  %n.vec533 = and i64 %i.aav, 8589934576          ; 5 uses
  %i.aay = shl nuw nsw i64 %n.vec533, 1           ; 2 uses
  %i.aaz = trunc i64 %n.vec533 to i32
  %i.aba = sub i32 %i.aal, %i.aaz
  %cmp.n542 = icmp eq i64 %i.aav, %n.vec533
  %min.epilog.iters.check546.not.not = icmp eq i64 %i.aax, 0
  %n.vec549 = and i64 %i.aav, 8589934588          ; 4 uses
  %i.abb = shl nuw nsw i64 %n.vec549, 1           ; 2 uses
  %i.abc = trunc i64 %n.vec549 to i32
  %i.abd = sub i32 %i.aal, %i.abc
  %cmp.n557 = icmp eq i64 %i.aav, %n.vec549
  br label %iter.check543

iter.check543:                                    ; preds = %.preheader.i.i216.i.preheader, %._crit_edge75.i.i.i
  %.in84.i.i.i = phi i32 [ %i.acp, %._crit_edge75.i.i.i ], [ %i.aaw, %.preheader.i.i216.i.preheader ]
  %.05080.i.i.i = phi ptr [ %i.acr, %._crit_edge75.i.i.i ], [ %i.aaf, %.preheader.i.i216.i.preheader ] ; 6 uses
  %.05279.i.i.i = phi ptr [ %i.acq, %._crit_edge75.i.i.i ], [ %i.aac, %.preheader.i.i216.i.preheader ] ; 6 uses
  %.05080.i.i.i526 = ptrtoaddr ptr %.05080.i.i.i to i64
  %.05279.i.i.i525 = ptrtoaddr ptr %.05279.i.i.i to i64
  %i.abe = sub i64 %.05279.i.i.i525, %.05080.i.i.i526
  %diff.check529 = icmp ugt i64 %i.abe, -32
  %or.cond = select i1 %min.iters.check527, i1 true, i1 %diff.check529
  br i1 %or.cond, label %vec.epilog.scalar.ph545.preheader, label %vector.main.loop.iter.check530

vector.main.loop.iter.check530:                   ; preds = %iter.check543
  br i1 %min.iters.check531, label %vec.epilog.ph547, label %vector.ph532

vector.ph532:                                     ; preds = %vector.main.loop.iter.check530
  %i.abf = getelementptr i8, ptr %.05080.i.i.i, i64 %i.aay ; 2 uses
  %i.abg = getelementptr i8, ptr %.05279.i.i.i, i64 %i.aay ; 2 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.ph532, %vector.body534
  %index535 = phi i64 [ 0, %vector.ph532 ], [ %index.next540, %vector.body534 ] ; 2 uses
  %i.abh = shl i64 %index535, 1                   ; 2 uses
  %next.gep536 = getelementptr i8, ptr %.05080.i.i.i, i64 %i.abh ; 2 uses
  %next.gep537 = getelementptr i8, ptr %.05279.i.i.i, i64 %i.abh ; 2 uses
  %i.abi = getelementptr i8, ptr %next.gep537, i64 16
  %wide.load538 = load <8 x i16>, ptr %next.gep537, align 2
  %wide.load539 = load <8 x i16>, ptr %i.abi, align 2
  %i.abj = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load538)
  %i.abk = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load539)
  %i.abl = getelementptr i8, ptr %next.gep536, i64 16
  store <8 x i16> %i.abj, ptr %next.gep536, align 2
  store <8 x i16> %i.abk, ptr %i.abl, align 2
  %index.next540 = add nuw i64 %index535, 16      ; 2 uses
  %i.abm = icmp eq i64 %index.next540, %n.vec533
  br i1 %i.abm, label %middle.block541, label %vector.body534, !llvm.loop !180

middle.block541:                                  ; preds = %vector.body534
  br i1 %cmp.n542, label %._crit_edge75.i.i.i, label %vec.epilog.iter.check544

vec.epilog.iter.check544:                         ; preds = %middle.block541
  br i1 %min.epilog.iters.check546.not.not, label %vec.epilog.scalar.ph545.preheader, label %vec.epilog.ph547, !prof !223

vec.epilog.ph547:                                 ; preds = %vector.main.loop.iter.check530, %vec.epilog.iter.check544
  %vec.epilog.resume.val548 = phi i64 [ %n.vec533, %vec.epilog.iter.check544 ], [ 0, %vector.main.loop.iter.check530 ]
  %i.abn = getelementptr i8, ptr %.05080.i.i.i, i64 %i.abb ; 2 uses
  %i.abo = getelementptr i8, ptr %.05279.i.i.i, i64 %i.abb ; 2 uses
  br label %vec.epilog.vector.body550

vec.epilog.vector.body550:                        ; preds = %vec.epilog.vector.body550, %vec.epilog.ph547
  %index551 = phi i64 [ %vec.epilog.resume.val548, %vec.epilog.ph547 ], [ %index.next555, %vec.epilog.vector.body550 ] ; 2 uses
  %i.abp = shl i64 %index551, 1                   ; 2 uses
  %next.gep552 = getelementptr i8, ptr %.05080.i.i.i, i64 %i.abp
  %next.gep553 = getelementptr i8, ptr %.05279.i.i.i, i64 %i.abp
  %wide.load554 = load <4 x i16>, ptr %next.gep553, align 2
  %12 = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load554)
  store <4 x i16> %12, ptr %next.gep552, align 2
  %index.next555 = add nuw i64 %index551, 4       ; 2 uses
  %i.abq = icmp eq i64 %index.next555, %n.vec549
  br i1 %i.abq, label %vec.epilog.middle.block556, label %vec.epilog.vector.body550, !llvm.loop !181

vec.epilog.middle.block556:                       ; preds = %vec.epilog.vector.body550
  br i1 %cmp.n557, label %._crit_edge75.i.i.i, label %vec.epilog.scalar.ph545.preheader

vec.epilog.scalar.ph545.preheader:                ; preds = %iter.check543, %vec.epilog.iter.check544, %vec.epilog.middle.block556
  %.15174.i.i.i.ph = phi ptr [ %.05080.i.i.i, %iter.check543 ], [ %i.abf, %vec.epilog.iter.check544 ], [ %i.abn, %vec.epilog.middle.block556 ] ; 2 uses
  %.15373.i.i.i.ph = phi ptr [ %.05279.i.i.i, %iter.check543 ], [ %i.abg, %vec.epilog.iter.check544 ], [ %i.abo, %vec.epilog.middle.block556 ] ; 2 uses
  %.05672.i.i.i.ph = phi i32 [ %i.aal, %iter.check543 ], [ %i.aba, %vec.epilog.iter.check544 ], [ %i.abd, %vec.epilog.middle.block556 ] ; 4 uses
  %i.abr = add nsw i32 %.05672.i.i.i.ph, -1
  %xtraiter914 = and i32 %.05672.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod915.not = icmp eq i32 %xtraiter914, 0
  br i1 %lcmp.mod915.not, label %vec.epilog.scalar.ph545.prol.loopexit, label %vec.epilog.scalar.ph545.prol

vec.epilog.scalar.ph545.prol:                     ; preds = %vec.epilog.scalar.ph545.preheader, %vec.epilog.scalar.ph545.prol
  %.15174.i.i.i.prol = phi ptr [ %i.abw, %vec.epilog.scalar.ph545.prol ], [ %.15174.i.i.i.ph, %vec.epilog.scalar.ph545.preheader ] ; 2 uses
  %.15373.i.i.i.prol = phi ptr [ %i.abt, %vec.epilog.scalar.ph545.prol ], [ %.15373.i.i.i.ph, %vec.epilog.scalar.ph545.preheader ] ; 2 uses
  %.05672.i.i.i.prol = phi i32 [ %i.abs, %vec.epilog.scalar.ph545.prol ], [ %.05672.i.i.i.ph, %vec.epilog.scalar.ph545.preheader ]
  %prol.iter916 = phi i32 [ %prol.iter916.next, %vec.epilog.scalar.ph545.prol ], [ 0, %vec.epilog.scalar.ph545.preheader ]
  %i.abs = add nsw i32 %.05672.i.i.i.prol, -1     ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.15373.i.i.i.prol, i64 2 ; 3 uses
  %i.abu = load i16, ptr %.15373.i.i.i.prol, align 2
  %i.abv = tail call i16 @llvm.bswap.i16(i16 %i.abu)
  %i.abw = getelementptr inbounds nuw i8, ptr %.15174.i.i.i.prol, i64 2 ; 3 uses
  store i16 %i.abv, ptr %.15174.i.i.i.prol, align 2
  %prol.iter916.next = add i32 %prol.iter916, 1   ; 2 uses
  %prol.iter916.cmp.not = icmp eq i32 %prol.iter916.next, %xtraiter914
  br i1 %prol.iter916.cmp.not, label %vec.epilog.scalar.ph545.prol.loopexit, label %vec.epilog.scalar.ph545.prol, !llvm.loop !182

vec.epilog.scalar.ph545.prol.loopexit:            ; preds = %vec.epilog.scalar.ph545.prol, %vec.epilog.scalar.ph545.preheader
  %.lcssa875.unr = phi ptr [ poison, %vec.epilog.scalar.ph545.preheader ], [ %i.abt, %vec.epilog.scalar.ph545.prol ]
  %.lcssa874.unr = phi ptr [ poison, %vec.epilog.scalar.ph545.preheader ], [ %i.abw, %vec.epilog.scalar.ph545.prol ]
  %.15174.i.i.i.unr = phi ptr [ %.15174.i.i.i.ph, %vec.epilog.scalar.ph545.preheader ], [ %i.abw, %vec.epilog.scalar.ph545.prol ]
  %.15373.i.i.i.unr = phi ptr [ %.15373.i.i.i.ph, %vec.epilog.scalar.ph545.preheader ], [ %i.abt, %vec.epilog.scalar.ph545.prol ]
  %.05672.i.i.i.unr = phi i32 [ %.05672.i.i.i.ph, %vec.epilog.scalar.ph545.preheader ], [ %i.abs, %vec.epilog.scalar.ph545.prol ]
  %i.abx = icmp ult i32 %i.abr, 3
  br i1 %i.abx, label %._crit_edge75.i.i.i, label %vec.epilog.scalar.ph545

vec.epilog.scalar.ph545:                          ; preds = %vec.epilog.scalar.ph545.prol.loopexit, %vec.epilog.scalar.ph545
  %.15174.i.i.i = phi ptr [ %i.aco, %vec.epilog.scalar.ph545 ], [ %.15174.i.i.i.unr, %vec.epilog.scalar.ph545.prol.loopexit ] ; 5 uses
  %.15373.i.i.i = phi ptr [ %i.acl, %vec.epilog.scalar.ph545 ], [ %.15373.i.i.i.unr, %vec.epilog.scalar.ph545.prol.loopexit ] ; 5 uses
  %.05672.i.i.i = phi i32 [ %i.ack, %vec.epilog.scalar.ph545 ], [ %.05672.i.i.i.unr, %vec.epilog.scalar.ph545.prol.loopexit ]
  %i.aby = getelementptr inbounds nuw i8, ptr %.15373.i.i.i, i64 2
  %i.abz = load i16, ptr %.15373.i.i.i, align 2
  %i.aca = tail call i16 @llvm.bswap.i16(i16 %i.abz)
  %i.acb = getelementptr inbounds nuw i8, ptr %.15174.i.i.i, i64 2
  store i16 %i.aca, ptr %.15174.i.i.i, align 2
  %i.acc = getelementptr inbounds nuw i8, ptr %.15373.i.i.i, i64 4
  %i.acd = load i16, ptr %i.aby, align 2
  %i.ace = tail call i16 @llvm.bswap.i16(i16 %i.acd)
  %i.acf = getelementptr inbounds nuw i8, ptr %.15174.i.i.i, i64 4
  store i16 %i.ace, ptr %i.acb, align 2
  %i.acg = getelementptr inbounds nuw i8, ptr %.15373.i.i.i, i64 6
  %i.ach = load i16, ptr %i.acc, align 2
  %i.aci = tail call i16 @llvm.bswap.i16(i16 %i.ach)
  %i.acj = getelementptr inbounds nuw i8, ptr %.15174.i.i.i, i64 6
  store i16 %i.aci, ptr %i.acf, align 2
  %i.ack = add nsw i32 %.05672.i.i.i, -4          ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.15373.i.i.i, i64 8 ; 2 uses
  %i.acm = load i16, ptr %i.acg, align 2
  %i.acn = tail call i16 @llvm.bswap.i16(i16 %i.acm)
  %i.aco = getelementptr inbounds nuw i8, ptr %.15174.i.i.i, i64 8 ; 2 uses
  store i16 %i.acn, ptr %i.acj, align 2
  %.not60.i.i.i.3 = icmp eq i32 %i.ack, 0
  br i1 %.not60.i.i.i.3, label %._crit_edge75.i.i.i, label %vec.epilog.scalar.ph545, !llvm.loop !183

._crit_edge75.i.i.i:                              ; preds = %vec.epilog.scalar.ph545.prol.loopexit, %vec.epilog.scalar.ph545, %vec.epilog.middle.block556, %middle.block541
  %.lcssa492 = phi ptr [ %i.abo, %vec.epilog.middle.block556 ], [ %i.abg, %middle.block541 ], [ %.lcssa875.unr, %vec.epilog.scalar.ph545.prol.loopexit ], [ %i.acl, %vec.epilog.scalar.ph545 ]
  %.lcssa491 = phi ptr [ %i.abn, %vec.epilog.middle.block556 ], [ %i.abf, %middle.block541 ], [ %.lcssa874.unr, %vec.epilog.scalar.ph545.prol.loopexit ], [ %i.aco, %vec.epilog.scalar.ph545 ]
  %i.acp = add nsw i32 %.in84.i.i.i, -1           ; 2 uses
  %i.acq = getelementptr inbounds [2 x i8], ptr %.lcssa492, i64 %i.aar
  %i.acr = getelementptr inbounds [2 x i8], ptr %.lcssa491, i64 %i.aas
  %.not59.i.i.i = icmp eq i32 %i.acp, 0
  br i1 %.not59.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %iter.check543, !llvm.loop !184

bb.ar:                                            ; preds = %bb.ap
  br i1 %.not5978.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.lr.ph.i.i.i

.preheader61.lr.ph.i.i.i:                         ; preds = %bb.ar
  %i.acs = extractelement <4 x i32> %i.zv, i64 0  ; 5 uses
  %i.act = shl nsw i32 %i.acs, 1                  ; 2 uses
  %i.acu = sub nsw i32 %i.zz, %i.act
  %i.acv = sub nsw i32 %i.zx, %i.act
  %.off81.i.i.i = add i32 %0, 2
  %.not5863.i.i.i = icmp ult i32 %.off81.i.i.i, 3
  %i.acw = sext i32 %i.acv to i64
  %i.acx = sext i32 %i.acu to i64
  br i1 %.not5863.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.i.i.i.preheader

.preheader61.i.i.i.preheader:                     ; preds = %.preheader61.lr.ph.i.i.i
  %i.acy = extractelement <4 x i32> %i.zv, i64 1
  %i.acz = add nsw i32 %i.acs, -1
  %xtraiter911 = and i32 %i.acs, 3                ; 2 uses
  %lcmp.mod912.not = icmp eq i32 %xtraiter911, 0
  %i.ada = icmp ult i32 %i.acz, 3
  br label %.preheader61.i.i.i

.preheader61.i.i.i:                               ; preds = %.preheader61.i.i.i.preheader, %._crit_edge.i.i213.i
  %.in.i.i212.i = phi i32 [ %i.aeh, %._crit_edge.i.i213.i ], [ %i.acy, %.preheader61.i.i.i.preheader ]
  %.070.i.i.i = phi ptr [ %i.aej, %._crit_edge.i.i213.i ], [ %i.aaf, %.preheader61.i.i.i.preheader ] ; 2 uses
  %.04869.i.i.i = phi ptr [ %i.aei, %._crit_edge.i.i213.i ], [ %i.aac, %.preheader61.i.i.i.preheader ] ; 2 uses
  br i1 %lcmp.mod912.not, label %.prol.loopexit910, label %.prol.preheader909

.prol.preheader909:                               ; preds = %.preheader61.i.i.i, %.prol.preheader909
  %.166.i.i.i.prol = phi ptr [ %i.adh, %.prol.preheader909 ], [ %.070.i.i.i, %.preheader61.i.i.i ] ; 3 uses
  %.14965.i.i.i.prol = phi ptr [ %i.ade, %.prol.preheader909 ], [ %.04869.i.i.i, %.preheader61.i.i.i ] ; 3 uses
  %.15764.i.i.i.prol = phi i32 [ %i.adb, %.prol.preheader909 ], [ %i.acs, %.preheader61.i.i.i ]
  %prol.iter913 = phi i32 [ %prol.iter913.next, %.prol.preheader909 ], [ 0, %.preheader61.i.i.i ]
  %i.adb = add nsw i32 %.15764.i.i.i.prol, -1     ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.14965.i.i.i.prol, i64 1
  %i.add = load i8, ptr %.14965.i.i.i.prol, align 1
  %i.ade = getelementptr inbounds nuw i8, ptr %.14965.i.i.i.prol, i64 2 ; 3 uses
  %i.adf = load i8, ptr %i.adc, align 1
  %i.adg = getelementptr inbounds nuw i8, ptr %.166.i.i.i.prol, i64 1
  store i8 %i.adf, ptr %.166.i.i.i.prol, align 1
  %i.adh = getelementptr inbounds nuw i8, ptr %.166.i.i.i.prol, i64 2 ; 3 uses
  store i8 %i.add, ptr %i.adg, align 1
  %prol.iter913.next = add i32 %prol.iter913, 1   ; 2 uses
  %prol.iter913.cmp.not = icmp eq i32 %prol.iter913.next, %xtraiter911
  br i1 %prol.iter913.cmp.not, label %.prol.loopexit910, label %.prol.preheader909, !llvm.loop !185

.prol.loopexit910:                                ; preds = %.prol.preheader909, %.preheader61.i.i.i
  %.lcssa878.unr = phi ptr [ poison, %.preheader61.i.i.i ], [ %i.ade, %.prol.preheader909 ]
  %.lcssa877.unr = phi ptr [ poison, %.preheader61.i.i.i ], [ %i.adh, %.prol.preheader909 ]
  %.166.i.i.i.unr = phi ptr [ %.070.i.i.i, %.preheader61.i.i.i ], [ %i.adh, %.prol.preheader909 ]
  %.14965.i.i.i.unr = phi ptr [ %.04869.i.i.i, %.preheader61.i.i.i ], [ %i.ade, %.prol.preheader909 ]
  %.15764.i.i.i.unr = phi i32 [ %i.acs, %.preheader61.i.i.i ], [ %i.adb, %.prol.preheader909 ]
  br i1 %i.ada, label %._crit_edge.i.i213.i, label %.preheader61.i.i.i.new

.preheader61.i.i.i.new:                           ; preds = %.prol.loopexit910, %.preheader61.i.i.i.new
  %.166.i.i.i = phi ptr [ %i.aeg, %.preheader61.i.i.i.new ], [ %.166.i.i.i.unr, %.prol.loopexit910 ] ; 9 uses
  %.14965.i.i.i = phi ptr [ %i.aed, %.preheader61.i.i.i.new ], [ %.14965.i.i.i.unr, %.prol.loopexit910 ] ; 9 uses
  %.15764.i.i.i = phi i32 [ %i.aea, %.preheader61.i.i.i.new ], [ %.15764.i.i.i.unr, %.prol.loopexit910 ]
  %i.adi = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 1
  %i.adj = load i8, ptr %.14965.i.i.i, align 1
  %i.adk = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 2
  %i.adl = load i8, ptr %i.adi, align 1
  %i.adm = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 1
  store i8 %i.adl, ptr %.166.i.i.i, align 1
  %i.adn = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 2
  store i8 %i.adj, ptr %i.adm, align 1
  %i.ado = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 3
  %i.adp = load i8, ptr %i.adk, align 1
  %i.adq = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 4
  %i.adr = load i8, ptr %i.ado, align 1
  %i.ads = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 3
  store i8 %i.adr, ptr %i.adn, align 1
  %i.adt = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 4
  store i8 %i.adp, ptr %i.ads, align 1
  %i.adu = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 5
  %i.adv = load i8, ptr %i.adq, align 1
  %i.adw = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 6
  %i.adx = load i8, ptr %i.adu, align 1
  %i.ady = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 5
  store i8 %i.adx, ptr %i.adt, align 1
  %i.adz = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 6
  store i8 %i.adv, ptr %i.ady, align 1
  %i.aea = add nsw i32 %.15764.i.i.i, -4          ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 7
  %i.aec = load i8, ptr %i.adw, align 1
  %i.aed = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 8 ; 2 uses
  %i.aee = load i8, ptr %i.aeb, align 1
  %i.aef = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 7
  store i8 %i.aee, ptr %i.adz, align 1
  %i.aeg = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 8 ; 2 uses
  store i8 %i.aec, ptr %i.aef, align 1
  %.not58.i.i.i.3 = icmp eq i32 %i.aea, 0
  br i1 %.not58.i.i.i.3, label %._crit_edge.i.i213.i, label %.preheader61.i.i.i.new, !llvm.loop !186

._crit_edge.i.i213.i:                             ; preds = %.preheader61.i.i.i.new, %.prol.loopexit910
  %.lcssa878 = phi ptr [ %.lcssa878.unr, %.prol.loopexit910 ], [ %i.aed, %.preheader61.i.i.i.new ]
  %.lcssa877 = phi ptr [ %.lcssa877.unr, %.prol.loopexit910 ], [ %i.aeg, %.preheader61.i.i.i.new ]
  %i.aeh = add nsw i32 %.in.i.i212.i, -1          ; 2 uses
  %i.aei = getelementptr inbounds i8, ptr %.lcssa878, i64 %i.acw
  %i.aej = getelementptr inbounds i8, ptr %.lcssa877, i64 %i.acx
  %.not.i.i214.i = icmp eq i32 %i.aeh, 0
  br i1 %.not.i.i214.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.i.i.i, !llvm.loop !187

bb.as:                                            ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 842094169, label %bb.at
    i32 1448433993, label %bb.ax
    i32 842094158, label %bb.bb
  ]

bb.at:                                            ; preds = %bb.as
  %i.aek = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.ael = insertelement <4 x i32> %i.aek, i32 %1, i64 1
  %i.aem = insertelement <4 x i32> %i.ael, i32 %6, i64 2
  %i.aen = insertelement <4 x i32> %i.aem, i32 %11, i64 3
  %i.aeo = add nsw <4 x i32> %i.aen, splat (i32 1)
  %i.aep = sdiv <4 x i32> %i.aeo, splat (i32 2)   ; 5 uses
  %i.aeq = extractelement <4 x i32> %i.aep, i64 0 ; 6 uses
  %i.aer = extractelement <4 x i32> %i.aep, i64 2 ; 2 uses
  %i.aes = sub nsw i32 %i.aer, %i.aeq
  %i.aet = shl nsw i32 %i.aes, 1
  %i.aeu = extractelement <4 x i32> %i.aep, i64 3 ; 2 uses
  %i.aev = sub nsw i32 %i.aeu, %i.aeq
  %i.aew = mul nsw i32 %6, %1
end_hunk_0
begin_hunk_1_@SDL_ConvertPixels_YUV_to_YUV:bb.a
bb.ax:                                            ; preds = %bb.as
  %i.ahb = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.ahc = insertelement <4 x i32> %i.ahb, i32 %1, i64 1
  %i.ahd = insertelement <4 x i32> %i.ahc, i32 %6, i64 2
  %i.ahe = insertelement <4 x i32> %i.ahd, i32 %11, i64 3
  %i.ahf = add nsw <4 x i32> %i.ahe, splat (i32 1)
  %i.ahg = sdiv <4 x i32> %i.ahf, splat (i32 2)   ; 5 uses
  %i.ahh = extractelement <4 x i32> %i.ahg, i64 0 ; 6 uses
  %i.ahi = extractelement <4 x i32> %i.ahg, i64 2 ; 2 uses
  %i.ahj = sub nsw i32 %i.ahi, %i.ahh
  %i.ahk = shl nsw i32 %i.ahj, 1
  %i.ahl = extractelement <4 x i32> %i.ahg, i64 3 ; 2 uses
  %i.ahm = sub nsw i32 %i.ahl, %i.ahh
  %i.ahn = mul nsw i32 %6, %1
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds i8, ptr %5, i64 %i.aho ; 3 uses
  %i.ahq = mul nsw i32 %11, %1
  %i.ahr = sext i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds i8, ptr %10, i64 %i.ahr ; 3 uses
  %i.aht = icmp eq ptr %i.ahp, %i.ahs
  br i1 %i.aht, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ahu = shl nsw i32 %i.ahi, 1
  %i.ahv = extractelement <4 x i32> %i.ahg, i64 1
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = sext i32 %i.ahu to i64
  %i.ahy = mul nsw i64 %i.ahx, %i.ahw             ; 2 uses
  %i.ahz = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ahy) #6 ; 4 uses
  %.not.i.i263.i = icmp eq ptr %i.ahz, null
  br i1 %.not.i.i263.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ahz, ptr readonly align 1 %i.ahp, i64 %i.ahy, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.058.i.i241.i = phi ptr [ %i.ahz, %bb.az ], [ %i.ahp, %bb.ax ]
  %.0.i.i242.i = phi ptr [ %i.ahz, %bb.az ], [ null, %bb.ax ]
  %.off.i.i243.i = add i32 %1, 2
  %.not6271.i.i244.i = icmp ult i32 %.off.i.i243.i, 3
  br i1 %.not6271.i.i244.i, label %._crit_edge75.split.i.i261.i, label %.preheader.lr.ph.i.i245.i

.preheader.lr.ph.i.i245.i:                        ; preds = %bb.ba
  %.off76.i.i246.i = add i32 %0, 2
  %.not6364.i.i247.i = icmp ult i32 %.off76.i.i246.i, 3
  %i.aia = sext i32 %i.ahk to i64
  %i.aib = sext i32 %i.ahm to i64                 ; 2 uses
  br i1 %.not6364.i.i247.i, label %._crit_edge75.split.i.i261.i, label %.preheader.preheader.i.i248.i

.preheader.preheader.i.i248.i:                    ; preds = %.preheader.lr.ph.i.i245.i
  %i.aic = extractelement <4 x i32> %i.ahg, i64 1 ; 2 uses
  %i.aid = mul nsw i32 %i.ahl, %i.aic
  %i.aie = sext i32 %i.aid to i64
  %i.aif = getelementptr inbounds i8, ptr %i.ahs, i64 %i.aie
  %i.aig = add nsw i32 %i.ahh, -1
  %xtraiter901 = and i32 %i.ahh, 3                ; 2 uses
  %lcmp.mod902.not = icmp eq i32 %xtraiter901, 0
  %i.aih = icmp ult i32 %i.aig, 3
  br label %.preheader.i.i249.i

.preheader.i.i249.i:                              ; preds = %._crit_edge.i.i259.i, %.preheader.preheader.i.i248.i
  %.in.i.i250.i = phi i32 [ %i.ajo, %._crit_edge.i.i259.i ], [ %i.aic, %.preheader.preheader.i.i248.i ]
  %.174.i.i251.i = phi ptr [ %i.ajr, %._crit_edge.i.i259.i ], [ %i.ahs, %.preheader.preheader.i.i248.i ] ; 2 uses
  %.15173.i.i252.i = phi ptr [ %i.ajq, %._crit_edge.i.i259.i ], [ %i.aif, %.preheader.preheader.i.i248.i ] ; 2 uses
  %.05372.i.i253.i = phi ptr [ %i.ajp, %._crit_edge.i.i259.i ], [ %.058.i.i241.i, %.preheader.preheader.i.i248.i ] ; 2 uses
  br i1 %lcmp.mod902.not, label %.prol.loopexit900, label %.prol.preheader899

.prol.preheader899:                               ; preds = %.preheader.i.i249.i, %.prol.preheader899
  %.268.i.i254.i.prol = phi ptr [ %i.aio, %.prol.preheader899 ], [ %.174.i.i251.i, %.preheader.i.i249.i ] ; 2 uses
  %.25267.i.i255.i.prol = phi ptr [ %i.ail, %.prol.preheader899 ], [ %.15173.i.i252.i, %.preheader.i.i249.i ] ; 2 uses
  %.15466.i.i256.i.prol = phi ptr [ %i.aim, %.prol.preheader899 ], [ %.05372.i.i253.i, %.preheader.i.i249.i ] ; 3 uses
  %.05665.i.i257.i.prol = phi i32 [ %i.aii, %.prol.preheader899 ], [ %i.ahh, %.preheader.i.i249.i ]
  %prol.iter903 = phi i32 [ %prol.iter903.next, %.prol.preheader899 ], [ 0, %.preheader.i.i249.i ]
  %i.aii = add nsw i32 %.05665.i.i257.i.prol, -1  ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i.prol, i64 1
  %i.aik = load i8, ptr %.15466.i.i256.i.prol, align 1
  %i.ail = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i.prol, i64 1 ; 3 uses
  store i8 %i.aik, ptr %.25267.i.i255.i.prol, align 1
  %i.aim = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i.prol, i64 2 ; 3 uses
  %i.ain = load i8, ptr %i.aij, align 1
  %i.aio = getelementptr inbounds nuw i8, ptr %.268.i.i254.i.prol, i64 1 ; 3 uses
  store i8 %i.ain, ptr %.268.i.i254.i.prol, align 1
  %prol.iter903.next = add i32 %prol.iter903, 1   ; 2 uses
  %prol.iter903.cmp.not = icmp eq i32 %prol.iter903.next, %xtraiter901
  br i1 %prol.iter903.cmp.not, label %.prol.loopexit900, label %.prol.preheader899, !llvm.loop !189

.prol.loopexit900:                                ; preds = %.prol.preheader899, %.preheader.i.i249.i
  %.lcssa884.unr = phi ptr [ poison, %.preheader.i.i249.i ], [ %i.ail, %.prol.preheader899 ]
  %.lcssa883.unr = phi ptr [ poison, %.preheader.i.i249.i ], [ %i.aim, %.prol.preheader899 ]
  %.lcssa882.unr = phi ptr [ poison, %.preheader.i.i249.i ], [ %i.aio, %.prol.preheader899 ]
  %.268.i.i254.i.unr = phi ptr [ %.174.i.i251.i, %.preheader.i.i249.i ], [ %i.aio, %.prol.preheader899 ]
  %.25267.i.i255.i.unr = phi ptr [ %.15173.i.i252.i, %.preheader.i.i249.i ], [ %i.ail, %.prol.preheader899 ]
  %.15466.i.i256.i.unr = phi ptr [ %.05372.i.i253.i, %.preheader.i.i249.i ], [ %i.aim, %.prol.preheader899 ]
  %.05665.i.i257.i.unr = phi i32 [ %i.ahh, %.preheader.i.i249.i ], [ %i.aii, %.prol.preheader899 ]
  br i1 %i.aih, label %._crit_edge.i.i259.i, label %.preheader.i.i249.i.new

.preheader.i.i249.i.new:                          ; preds = %.prol.loopexit900, %.preheader.i.i249.i.new
  %.268.i.i254.i = phi ptr [ %i.ajn, %.preheader.i.i249.i.new ], [ %.268.i.i254.i.unr, %.prol.loopexit900 ] ; 5 uses
  %.25267.i.i255.i = phi ptr [ %i.ajk, %.preheader.i.i249.i.new ], [ %.25267.i.i255.i.unr, %.prol.loopexit900 ] ; 5 uses
  %.15466.i.i256.i = phi ptr [ %i.ajl, %.preheader.i.i249.i.new ], [ %.15466.i.i256.i.unr, %.prol.loopexit900 ] ; 9 uses
  %.05665.i.i257.i = phi i32 [ %i.ajh, %.preheader.i.i249.i.new ], [ %.05665.i.i257.i.unr, %.prol.loopexit900 ]
  %i.aip = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 1
  %i.aiq = load i8, ptr %.15466.i.i256.i, align 1
  %i.air = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i, i64 1
  store i8 %i.aiq, ptr %.25267.i.i255.i, align 1
  %i.ais = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 2
  %i.ait = load i8, ptr %i.aip, align 1
  %i.aiu = getelementptr inbounds nuw i8, ptr %.268.i.i254.i, i64 1
  store i8 %i.ait, ptr %.268.i.i254.i, align 1
  %i.aiv = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 3
  %i.aiw = load i8, ptr %i.ais, align 1
  %i.aix = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i, i64 2
  store i8 %i.aiw, ptr %i.air, align 1
  %i.aiy = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 4
  %i.aiz = load i8, ptr %i.aiv, align 1
  %i.aja = getelementptr inbounds nuw i8, ptr %.268.i.i254.i, i64 2
  store i8 %i.aiz, ptr %i.aiu, align 1
  %i.ajb = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 5
  %i.ajc = load i8, ptr %i.aiy, align 1
  %i.ajd = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i, i64 3
  store i8 %i.ajc, ptr %i.aix, align 1
  %i.aje = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 6
  %i.ajf = load i8, ptr %i.ajb, align 1
  %i.ajg = getelementptr inbounds nuw i8, ptr %.268.i.i254.i, i64 3
  store i8 %i.ajf, ptr %i.aja, align 1
  %i.ajh = add nsw i32 %.05665.i.i257.i, -4       ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 7
  %i.ajj = load i8, ptr %i.aje, align 1
  %i.ajk = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i, i64 4 ; 2 uses
  store i8 %i.ajj, ptr %i.ajd, align 1
  %i.ajl = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 8 ; 2 uses
  %i.ajm = load i8, ptr %i.aji, align 1
  %i.ajn = getelementptr inbounds nuw i8, ptr %.268.i.i254.i, i64 4 ; 2 uses
  store i8 %i.ajm, ptr %i.ajg, align 1
  %.not63.i.i258.i.3 = icmp eq i32 %i.ajh, 0
  br i1 %.not63.i.i258.i.3, label %._crit_edge.i.i259.i, label %.preheader.i.i249.i.new, !llvm.loop !177

._crit_edge.i.i259.i:                             ; preds = %.preheader.i.i249.i.new, %.prol.loopexit900
  %.lcssa884 = phi ptr [ %.lcssa884.unr, %.prol.loopexit900 ], [ %i.ajk, %.preheader.i.i249.i.new ]
  %.lcssa883 = phi ptr [ %.lcssa883.unr, %.prol.loopexit900 ], [ %i.ajl, %.preheader.i.i249.i.new ]
  %.lcssa882 = phi ptr [ %.lcssa882.unr, %.prol.loopexit900 ], [ %i.ajn, %.preheader.i.i249.i.new ]
  %i.ajo = add nsw i32 %.in.i.i250.i, -1          ; 2 uses
  %i.ajp = getelementptr inbounds i8, ptr %.lcssa883, i64 %i.aia
  %i.ajq = getelementptr inbounds i8, ptr %.lcssa884, i64 %i.aib
  %i.ajr = getelementptr inbounds i8, ptr %.lcssa882, i64 %i.aib
  %.not62.i.i260.i = icmp eq i32 %i.ajo, 0
  br i1 %.not62.i.i260.i, label %._crit_edge75.split.i.i261.i, label %.preheader.i.i249.i, !llvm.loop !178

._crit_edge75.split.i.i261.i:                     ; preds = %._crit_edge.i.i259.i, %.preheader.lr.ph.i.i245.i, %bb.ba
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i242.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.bb:                                            ; preds = %bb.as
  %i.ajs = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.ajt = insertelement <4 x i32> %i.ajs, i32 %1, i64 1
  %i.aju = insertelement <4 x i32> %i.ajt, i32 %6, i64 2
  %i.ajv = insertelement <4 x i32> %i.aju, i32 %11, i64 3
  %i.ajw = add nsw <4 x i32> %i.ajv, splat (i32 1)
  %i.ajx = sdiv <4 x i32> %i.ajw, splat (i32 2)   ; 6 uses
  %i.ajy = extractelement <4 x i32> %i.ajx, i64 2
  %i.ajz = shl nsw i32 %i.ajy, 1                  ; 2 uses
  %i.aka = extractelement <4 x i32> %i.ajx, i64 3
  %i.akb = shl nsw i32 %i.aka, 1                  ; 2 uses
  %i.akc = mul nsw i32 %6, %1
  %i.akd = sext i32 %i.akc to i64
  %i.ake = getelementptr inbounds i8, ptr %5, i64 %i.akd ; 3 uses
  %i.akf = mul nsw i32 %11, %1
  %i.akg = sext i32 %i.akf to i64
  %i.akh = getelementptr inbounds i8, ptr %10, i64 %i.akg ; 3 uses
  %i.aki = ptrtoint ptr %i.ake to i64
  %i.akj = ptrtoint ptr %i.akh to i64
  %i.akk = or i64 %i.akj, %i.aki
  %i.akl = and i64 %i.akk, 1
  %i.akm = icmp eq i64 %i.akl, 0
  %.off82.i.i265.i = add i32 %1, 2
  %.not5978.i.i266.i = icmp ult i32 %.off82.i.i265.i, 3 ; 2 uses
  br i1 %i.akm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not5978.i.i266.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i280.i

.preheader.lr.ph.i.i280.i:                        ; preds = %bb.bc
  %i.akn = extractelement <4 x i32> %i.ajx, i64 0 ; 5 uses
  %i.ako = shl nsw i32 %i.akn, 1                  ; 2 uses
  %i.akp = sub nsw i32 %i.akb, %i.ako
  %i.akq = ashr exact i32 %i.akp, 1
  %i.akr = sub nsw i32 %i.ajz, %i.ako
  %i.aks = ashr exact i32 %i.akr, 1
  %.off83.i.i281.i = add i32 %0, 2
  %.not6071.i.i282.i = icmp ult i32 %.off83.i.i281.i, 3
  %i.akt = sext i32 %i.aks to i64
  %i.aku = sext i32 %i.akq to i64
  br i1 %.not6071.i.i282.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i283.i.preheader

.preheader.i.i283.i.preheader:                    ; preds = %.preheader.lr.ph.i.i280.i
  %i.akv = add nsw i32 %i.akn, -1                 ; 3 uses
  %i.akw = zext i32 %i.akv to i64
  %i.akx = add nuw nsw i64 %i.akw, 1              ; 5 uses
  %i.aky = extractelement <4 x i32> %i.ajx, i64 1
  %min.iters.check = icmp ult i32 %i.akv, 3
  %min.iters.check509 = icmp ult i32 %i.akv, 15
  %i.akz = and i64 %i.akx, 12
  %n.vec = and i64 %i.akx, 8589934576             ; 5 uses
  %i.ala = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.alb = trunc i64 %n.vec to i32
  %i.alc = sub i32 %i.akn, %i.alb
  %cmp.n = icmp eq i64 %i.akx, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %i.akz, 0
  %n.vec512 = and i64 %i.akx, 8589934588          ; 4 uses
  %i.ald = shl nuw nsw i64 %n.vec512, 1           ; 2 uses
  %i.ale = trunc i64 %n.vec512 to i32
  %i.alf = sub i32 %i.akn, %i.ale
  %cmp.n518 = icmp eq i64 %i.akx, %n.vec512
  br label %iter.check

iter.check:                                       ; preds = %.preheader.i.i283.i.preheader, %._crit_edge75.i.i291.i
  %.in84.i.i284.i = phi i32 [ %i.amr, %._crit_edge75.i.i291.i ], [ %i.aky, %.preheader.i.i283.i.preheader ]
  %.05080.i.i285.i = phi ptr [ %i.amt, %._crit_edge75.i.i291.i ], [ %i.akh, %.preheader.i.i283.i.preheader ] ; 6 uses
  %.05279.i.i286.i = phi ptr [ %i.ams, %._crit_edge75.i.i291.i ], [ %i.ake, %.preheader.i.i283.i.preheader ] ; 6 uses
  %.05080.i.i285.i508 = ptrtoaddr ptr %.05080.i.i285.i to i64
  %.05279.i.i286.i507 = ptrtoaddr ptr %.05279.i.i286.i to i64
  %i.alg = sub i64 %.05279.i.i286.i507, %.05080.i.i285.i508
  %diff.check = icmp ugt i64 %i.alg, -32
  %or.cond792 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond792, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check509, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.alh = getelementptr i8, ptr %.05080.i.i285.i, i64 %i.ala ; 2 uses
  %i.ali = getelementptr i8, ptr %.05279.i.i286.i, i64 %i.ala ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.alj = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.05080.i.i285.i, i64 %i.alj ; 2 uses
  %next.gep510 = getelementptr i8, ptr %.05279.i.i286.i, i64 %i.alj ; 2 uses
  %i.alk = getelementptr i8, ptr %next.gep510, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep510, align 2
  %wide.load511 = load <8 x i16>, ptr %i.alk, align 2
  %i.all = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.alm = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load511)
  %i.aln = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.all, ptr %next.gep, align 2
  store <8 x i16> %i.alm, ptr %i.aln, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.alo = icmp eq i64 %index.next, %n.vec
  br i1 %i.alo, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge75.i.i291.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.alp = getelementptr i8, ptr %.05080.i.i285.i, i64 %i.ald ; 2 uses
  %i.alq = getelementptr i8, ptr %.05279.i.i286.i, i64 %i.ald ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index513 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next517, %vec.epilog.vector.body ] ; 2 uses
  %i.alr = shl i64 %index513, 1                   ; 2 uses
  %next.gep514 = getelementptr i8, ptr %.05080.i.i285.i, i64 %i.alr
  %next.gep515 = getelementptr i8, ptr %.05279.i.i286.i, i64 %i.alr
  %wide.load516 = load <4 x i16>, ptr %next.gep515, align 2
  %13 = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load516)
  store <4 x i16> %13, ptr %next.gep514, align 2
  %index.next517 = add nuw i64 %index513, 4       ; 2 uses
  %i.als = icmp eq i64 %index.next517, %n.vec512
  br i1 %i.als, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !191

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n518, label %._crit_edge75.i.i291.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.15174.i.i287.i.ph = phi ptr [ %.05080.i.i285.i, %iter.check ], [ %i.alh, %vec.epilog.iter.check ], [ %i.alp, %vec.epilog.middle.block ] ; 2 uses
  %.15373.i.i288.i.ph = phi ptr [ %.05279.i.i286.i, %iter.check ], [ %i.ali, %vec.epilog.iter.check ], [ %i.alq, %vec.epilog.middle.block ] ; 2 uses
  %.05672.i.i289.i.ph = phi i32 [ %i.akn, %iter.check ], [ %i.alc, %vec.epilog.iter.check ], [ %i.alf, %vec.epilog.middle.block ] ; 4 uses
  %i.alt = add nsw i32 %.05672.i.i289.i.ph, -1
  %xtraiter896 = and i32 %.05672.i.i289.i.ph, 3   ; 2 uses
  %lcmp.mod897.not = icmp eq i32 %xtraiter896, 0
  br i1 %lcmp.mod897.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.15174.i.i287.i.prol = phi ptr [ %i.aly, %vec.epilog.scalar.ph.prol ], [ %.15174.i.i287.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.15373.i.i288.i.prol = phi ptr [ %i.alv, %vec.epilog.scalar.ph.prol ], [ %.15373.i.i288.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05672.i.i289.i.prol = phi i32 [ %i.alu, %vec.epilog.scalar.ph.prol ], [ %.05672.i.i289.i.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter898 = phi i32 [ %prol.iter898.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.alu = add nsw i32 %.05672.i.i289.i.prol, -1  ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i.prol, i64 2 ; 3 uses
  %i.alw = load i16, ptr %.15373.i.i288.i.prol, align 2
  %i.alx = tail call i16 @llvm.bswap.i16(i16 %i.alw)
  %i.aly = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i.prol, i64 2 ; 3 uses
  store i16 %i.alx, ptr %.15174.i.i287.i.prol, align 2
  %prol.iter898.next = add i32 %prol.iter898, 1   ; 2 uses
  %prol.iter898.cmp.not = icmp eq i32 %prol.iter898.next, %xtraiter896
  br i1 %prol.iter898.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !192

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa887.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.alv, %vec.epilog.scalar.ph.prol ]
  %.lcssa886.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.aly, %vec.epilog.scalar.ph.prol ]
  %.15174.i.i287.i.unr = phi ptr [ %.15174.i.i287.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aly, %vec.epilog.scalar.ph.prol ]
  %.15373.i.i288.i.unr = phi ptr [ %.15373.i.i288.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.alv, %vec.epilog.scalar.ph.prol ]
  %.05672.i.i289.i.unr = phi i32 [ %.05672.i.i289.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.alu, %vec.epilog.scalar.ph.prol ]
  %i.alz = icmp ult i32 %i.alt, 3
  br i1 %i.alz, label %._crit_edge75.i.i291.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15174.i.i287.i = phi ptr [ %i.amq, %vec.epilog.scalar.ph ], [ %.15174.i.i287.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.15373.i.i288.i = phi ptr [ %i.amn, %vec.epilog.scalar.ph ], [ %.15373.i.i288.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.05672.i.i289.i = phi i32 [ %i.amm, %vec.epilog.scalar.ph ], [ %.05672.i.i289.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ama = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i, i64 2
  %i.amb = load i16, ptr %.15373.i.i288.i, align 2
  %i.amc = tail call i16 @llvm.bswap.i16(i16 %i.amb)
  %i.amd = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i, i64 2
  store i16 %i.amc, ptr %.15174.i.i287.i, align 2
  %i.ame = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i, i64 4
  %i.amf = load i16, ptr %i.ama, align 2
  %i.amg = tail call i16 @llvm.bswap.i16(i16 %i.amf)
  %i.amh = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i, i64 4
  store i16 %i.amg, ptr %i.amd, align 2
  %i.ami = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i, i64 6
  %i.amj = load i16, ptr %i.ame, align 2
  %i.amk = tail call i16 @llvm.bswap.i16(i16 %i.amj)
  %i.aml = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i, i64 6
  store i16 %i.amk, ptr %i.amh, align 2
  %i.amm = add nsw i32 %.05672.i.i289.i, -4       ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i, i64 8 ; 2 uses
  %i.amo = load i16, ptr %i.ami, align 2
  %i.amp = tail call i16 @llvm.bswap.i16(i16 %i.amo)
  %i.amq = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i, i64 8 ; 2 uses
  store i16 %i.amp, ptr %i.aml, align 2
  %.not60.i.i290.i.3 = icmp eq i32 %i.amm, 0
  br i1 %.not60.i.i290.i.3, label %._crit_edge75.i.i291.i, label %vec.epilog.scalar.ph, !llvm.loop !193

._crit_edge75.i.i291.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa502 = phi ptr [ %i.alq, %vec.epilog.middle.block ], [ %i.ali, %middle.block ], [ %.lcssa887.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.amn, %vec.epilog.scalar.ph ]
  %.lcssa501 = phi ptr [ %i.alp, %vec.epilog.middle.block ], [ %i.alh, %middle.block ], [ %.lcssa886.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.amq, %vec.epilog.scalar.ph ]
  %i.amr = add nsw i32 %.in84.i.i284.i, -1        ; 2 uses
  %i.ams = getelementptr inbounds [2 x i8], ptr %.lcssa502, i64 %i.akt
  %i.amt = getelementptr inbounds [2 x i8], ptr %.lcssa501, i64 %i.aku
  %.not59.i.i292.i = icmp eq i32 %i.amr, 0
  br i1 %.not59.i.i292.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %iter.check, !llvm.loop !184

bb.bd:                                            ; preds = %bb.bb
  br i1 %.not5978.i.i266.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.lr.ph.i.i267.i

.preheader61.lr.ph.i.i267.i:                      ; preds = %bb.bd
  %i.amu = extractelement <4 x i32> %i.ajx, i64 0 ; 5 uses
  %i.amv = shl nsw i32 %i.amu, 1                  ; 2 uses
  %i.amw = sub nsw i32 %i.akb, %i.amv
  %i.amx = sub nsw i32 %i.ajz, %i.amv
  %.off81.i.i268.i = add i32 %0, 2
  %.not5863.i.i269.i = icmp ult i32 %.off81.i.i268.i, 3
  %i.amy = sext i32 %i.amx to i64
  %i.amz = sext i32 %i.amw to i64
  br i1 %.not5863.i.i269.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.i.i270.i.preheader

.preheader61.i.i270.i.preheader:                  ; preds = %.preheader61.lr.ph.i.i267.i
  %i.ana = extractelement <4 x i32> %i.ajx, i64 1
  %i.anb = add nsw i32 %i.amu, -1
  %xtraiter893 = and i32 %i.amu, 3                ; 2 uses
  %lcmp.mod894.not = icmp eq i32 %xtraiter893, 0
  %i.anc = icmp ult i32 %i.anb, 3
  br label %.preheader61.i.i270.i

.preheader61.i.i270.i:                            ; preds = %.preheader61.i.i270.i.preheader, %._crit_edge.i.i278.i
  %.in.i.i271.i = phi i32 [ %i.aoj, %._crit_edge.i.i278.i ], [ %i.ana, %.preheader61.i.i270.i.preheader ]
  %.070.i.i272.i = phi ptr [ %i.aol, %._crit_edge.i.i278.i ], [ %i.akh, %.preheader61.i.i270.i.preheader ] ; 2 uses
  %.04869.i.i273.i = phi ptr [ %i.aok, %._crit_edge.i.i278.i ], [ %i.ake, %.preheader61.i.i270.i.preheader ] ; 2 uses
  br i1 %lcmp.mod894.not, label %.prol.loopexit892, label %.prol.preheader891

.prol.preheader891:                               ; preds = %.preheader61.i.i270.i, %.prol.preheader891
  %.166.i.i274.i.prol = phi ptr [ %i.anj, %.prol.preheader891 ], [ %.070.i.i272.i, %.preheader61.i.i270.i ] ; 3 uses
  %.14965.i.i275.i.prol = phi ptr [ %i.ang, %.prol.preheader891 ], [ %.04869.i.i273.i, %.preheader61.i.i270.i ] ; 3 uses
  %.15764.i.i276.i.prol = phi i32 [ %i.and, %.prol.preheader891 ], [ %i.amu, %.preheader61.i.i270.i ]
  %prol.iter895 = phi i32 [ %prol.iter895.next, %.prol.preheader891 ], [ 0, %.preheader61.i.i270.i ]
  %i.and = add nsw i32 %.15764.i.i276.i.prol, -1  ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i.prol, i64 1
  %i.anf = load i8, ptr %.14965.i.i275.i.prol, align 1
  %i.ang = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i.prol, i64 2 ; 3 uses
  %i.anh = load i8, ptr %i.ane, align 1
  %i.ani = getelementptr inbounds nuw i8, ptr %.166.i.i274.i.prol, i64 1
  store i8 %i.anh, ptr %.166.i.i274.i.prol, align 1
  %i.anj = getelementptr inbounds nuw i8, ptr %.166.i.i274.i.prol, i64 2 ; 3 uses
  store i8 %i.anf, ptr %i.ani, align 1
  %prol.iter895.next = add i32 %prol.iter895, 1   ; 2 uses
  %prol.iter895.cmp.not = icmp eq i32 %prol.iter895.next, %xtraiter893
  br i1 %prol.iter895.cmp.not, label %.prol.loopexit892, label %.prol.preheader891, !llvm.loop !194

.prol.loopexit892:                                ; preds = %.prol.preheader891, %.preheader61.i.i270.i
  %.lcssa890.unr = phi ptr [ poison, %.preheader61.i.i270.i ], [ %i.ang, %.prol.preheader891 ]
  %.lcssa889.unr = phi ptr [ poison, %.preheader61.i.i270.i ], [ %i.anj, %.prol.preheader891 ]
  %.166.i.i274.i.unr = phi ptr [ %.070.i.i272.i, %.preheader61.i.i270.i ], [ %i.anj, %.prol.preheader891 ]
  %.14965.i.i275.i.unr = phi ptr [ %.04869.i.i273.i, %.preheader61.i.i270.i ], [ %i.ang, %.prol.preheader891 ]
  %.15764.i.i276.i.unr = phi i32 [ %i.amu, %.preheader61.i.i270.i ], [ %i.and, %.prol.preheader891 ]
  br i1 %i.anc, label %._crit_edge.i.i278.i, label %.preheader61.i.i270.i.new

.preheader61.i.i270.i.new:                        ; preds = %.prol.loopexit892, %.preheader61.i.i270.i.new
  %.166.i.i274.i = phi ptr [ %i.aoi, %.preheader61.i.i270.i.new ], [ %.166.i.i274.i.unr, %.prol.loopexit892 ] ; 9 uses
  %.14965.i.i275.i = phi ptr [ %i.aof, %.preheader61.i.i270.i.new ], [ %.14965.i.i275.i.unr, %.prol.loopexit892 ] ; 9 uses
  %.15764.i.i276.i = phi i32 [ %i.aoc, %.preheader61.i.i270.i.new ], [ %.15764.i.i276.i.unr, %.prol.loopexit892 ]
  %i.ank = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 1
  %i.anl = load i8, ptr %.14965.i.i275.i, align 1
  %i.anm = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 2
  %i.ann = load i8, ptr %i.ank, align 1
  %i.ano = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 1
  store i8 %i.ann, ptr %.166.i.i274.i, align 1
  %i.anp = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 2
  store i8 %i.anl, ptr %i.ano, align 1
  %i.anq = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 3
  %i.anr = load i8, ptr %i.anm, align 1
  %i.ans = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 4
  %i.ant = load i8, ptr %i.anq, align 1
  %i.anu = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 3
  store i8 %i.ant, ptr %i.anp, align 1
  %i.anv = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 4
  store i8 %i.anr, ptr %i.anu, align 1
  %i.anw = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 5
  %i.anx = load i8, ptr %i.ans, align 1
  %i.any = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 6
  %i.anz = load i8, ptr %i.anw, align 1
  %i.aoa = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 5
  store i8 %i.anz, ptr %i.anv, align 1
  %i.aob = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 6
  store i8 %i.anx, ptr %i.aoa, align 1
  %i.aoc = add nsw i32 %.15764.i.i276.i, -4       ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 7
  %i.aoe = load i8, ptr %i.any, align 1
  %i.aof = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 8 ; 2 uses
  %i.aog = load i8, ptr %i.aod, align 1
  %i.aoh = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 7
  store i8 %i.aog, ptr %i.aob, align 1
  %i.aoi = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 8 ; 2 uses
  store i8 %i.aoe, ptr %i.aoh, align 1
  %.not58.i.i277.i.3 = icmp eq i32 %i.aoc, 0
  br i1 %.not58.i.i277.i.3, label %._crit_edge.i.i278.i, label %.preheader61.i.i270.i.new, !llvm.loop !186

._crit_edge.i.i278.i:                             ; preds = %.preheader61.i.i270.i.new, %.prol.loopexit892
  %.lcssa890 = phi ptr [ %.lcssa890.unr, %.prol.loopexit892 ], [ %i.aof, %.preheader61.i.i270.i.new ]
  %.lcssa889 = phi ptr [ %.lcssa889.unr, %.prol.loopexit892 ], [ %i.aoi, %.preheader61.i.i270.i.new ]
  %i.aoj = add nsw i32 %.in.i.i271.i, -1          ; 2 uses
  %i.aok = getelementptr inbounds i8, ptr %.lcssa890, i64 %i.amy
  %i.aol = getelementptr inbounds i8, ptr %.lcssa889, i64 %i.amz
  %.not.i.i279.i = icmp eq i32 %i.aoj, 0
  br i1 %.not.i.i279.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.i.i270.i, !llvm.loop !187

bb.be:                                            ; preds = %bb.as, %bb.ag, %bb.w, %bb.m, %.loopexit.i
  %i.aom = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %2) #6
  %i.aon = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %7) #6
  %i.aoo = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.17, ptr noundef %i.aom, ptr noundef %i.aon) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

IsPlanar2x2Format.exit:                           ; preds = %bb.k
  switch i32 %2, label %IsPacked4Format.exit74 [
    i32 808530000, label %bb.br
    i32 844715353, label %bb.bf
    i32 1431918169, label %bb.bf
    i32 1448433993, label %bb.br
    i32 842094169, label %bb.br
    i32 842094158, label %bb.br
    i32 825382478, label %bb.br
  ]

bb.bf:                                            ; preds = %bb.j, %bb.j, %bb.j, %IsPlanar2x2Format.exit, %IsPlanar2x2Format.exit
  switch i32 %7, label %IsPacked4Format.exit [
    i32 1498831189, label %bb.bg
    i32 844715353, label %bb.bg
end_hunk_1
begin_hunk_2_@SDL_ConvertPixels_YUV_to_YUV:bb.a
  %.epil.init992 = phi ptr [ %.promoted116.i, %.lr.ph127.i.preheader ], [ %i.bkk, %._crit_edge128.loopexit.i.unr-lcssa ] ; 3 uses
  %.epil.init994 = phi ptr [ %.promoted118.i, %.lr.ph127.i.preheader ], [ %i.bko, %._crit_edge128.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init996 = phi ptr [ %.promoted120.i, %.lr.ph127.i.preheader ], [ %i.bkq, %._crit_edge128.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init998 = phi ptr [ %.promoted122.i, %.lr.ph127.i.preheader ], [ %i.bkp, %._crit_edge128.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init1000 = phi ptr [ %.promoted124.i, %.lr.ph127.i.preheader ], [ %i.bkr, %._crit_edge128.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1008 = trunc i32 %i.bjm to i1
  tail call void @llvm.assume(i1 %lcmp.mod1008)
  %i.bkt = load i8, ptr %.epil.init990, align 1
  %i.bku = getelementptr inbounds nuw i8, ptr %.epil.init992, i64 1
  store i8 %i.bkt, ptr %.epil.init992, align 1
  %i.bkv = getelementptr inbounds nuw i8, ptr %.epil.init990, i64 2
  %i.bkw = load i8, ptr %i.bkv, align 1
  %i.bkx = getelementptr inbounds nuw i8, ptr %.epil.init992, i64 2
  store i8 %i.bkw, ptr %i.bku, align 1
  %i.bky = getelementptr inbounds nuw i8, ptr %.epil.init990, i64 4
  %i.bkz = load i8, ptr %.epil.init994, align 1
  store i8 %i.bkz, ptr %.epil.init996, align 1
  %i.bla = load i8, ptr %.epil.init998, align 1
  store i8 %i.bla, ptr %.epil.init1000, align 1
  %i.blb = getelementptr inbounds nuw i8, ptr %.epil.init994, i64 4
  %i.blc = getelementptr inbounds nuw i8, ptr %.epil.init998, i64 4
  %i.bld = getelementptr inbounds nuw i8, ptr %.epil.init996, i64 %.0.i76
  %i.ble = getelementptr inbounds nuw i8, ptr %.epil.init1000, i64 %.0.i76
  br label %._crit_edge128.loopexit.i

._crit_edge128.loopexit.i:                        ; preds = %._crit_edge128.loopexit.i.unr-lcssa, %.lr.ph127.i.epil.preheader
  %.lcssa812 = phi ptr [ %i.bkk, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bkx, %.lr.ph127.i.epil.preheader ]
  %.lcssa811 = phi ptr [ %i.bkl, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bky, %.lr.ph127.i.epil.preheader ]
  %.lcssa810 = phi ptr [ %i.bko, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.blb, %.lr.ph127.i.epil.preheader ]
  %.lcssa809 = phi ptr [ %i.bkp, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.blc, %.lr.ph127.i.epil.preheader ]
  %.lcssa808 = phi ptr [ %i.bkq, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bld, %.lr.ph127.i.epil.preheader ]
  %.lcssa807 = phi ptr [ %i.bkr, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.ble, %.lr.ph127.i.epil.preheader ]
  %i.blf = and i32 %0, 2147483646
  br label %._crit_edge128.i

._crit_edge128.i:                                 ; preds = %._crit_edge128.loopexit.i, %.preheader.i78
  %.lcssa125.i = phi ptr [ %.promoted124.i, %.preheader.i78 ], [ %.lcssa807, %._crit_edge128.loopexit.i ]
  %.lcssa123.i = phi ptr [ %.promoted122.i, %.preheader.i78 ], [ %.lcssa809, %._crit_edge128.loopexit.i ]
  %.lcssa121.i = phi ptr [ %.promoted120.i, %.preheader.i78 ], [ %.lcssa808, %._crit_edge128.loopexit.i ]
  %.lcssa119.i = phi ptr [ %.promoted118.i, %.preheader.i78 ], [ %.lcssa810, %._crit_edge128.loopexit.i ]
  %i.blg = phi ptr [ %.promoted116.i, %.preheader.i78 ], [ %.lcssa812, %._crit_edge128.loopexit.i ] ; 2 uses
  %i.blh = phi ptr [ %.promoted.i77, %.preheader.i78 ], [ %.lcssa811, %._crit_edge128.loopexit.i ] ; 2 uses
  %.187.lcssa.i = phi i32 [ 0, %.preheader.i78 ], [ %i.blf, %._crit_edge128.loopexit.i ]
  store ptr %i.blh, ptr %i.a, align 8
  store ptr %i.blg, ptr %i.f, align 8
  store ptr %.lcssa119.i, ptr %i.b, align 8
  store ptr %.lcssa121.i, ptr %i.g, align 8
  store ptr %.lcssa123.i, ptr %i.c, align 8
  store ptr %.lcssa125.i, ptr %i.h, align 8
  %i.bli = icmp eq i32 %.187.lcssa.i, %i.bji
  br i1 %i.bli, label %bb.cm, label %SDL_ConvertPixels_Packed4_to_Planar2x2.exit

bb.cm:                                            ; preds = %._crit_edge128.i
  %i.blj = load i8, ptr %i.blh, align 1
  store i8 %i.blj, ptr %i.blg, align 1
  %i.blk = load ptr, ptr %i.b, align 8
  %i.bll = load i8, ptr %i.blk, align 1
  %i.blm = load ptr, ptr %i.g, align 8
  store i8 %i.bll, ptr %i.blm, align 1
  %i.bln = load ptr, ptr %i.c, align 8
  %i.blo = load i8, ptr %i.bln, align 1
  %i.blp = load ptr, ptr %i.h, align 8
  store i8 %i.blo, ptr %i.blp, align 1
  br label %SDL_ConvertPixels_Packed4_to_Planar2x2.exit

SDL_ConvertPixels_Packed4_to_Planar2x2.exit:      ; preds = %bb.ce, %bb.cf, %bb.cg, %._crit_edge112.i, %._crit_edge128.i, %bb.cm
  %.088.i = phi i1 [ %i.bdx, %bb.ce ], [ false, %bb.cg ], [ false, %bb.cf ], [ true, %._crit_edge128.i ], [ true, %bb.cm ], [ true, %._crit_edge112.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

IsPacked4Format.exit74:                           ; preds = %bb.j, %IsPlanar2x2Format.exit, %IsPacked4Format.exit, %bb.cc, %IsPlanar2x2Format.exit70
  %i.blq = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %2) #6
  %i.blr = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %7) #6
  %i.bls = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10, ptr noundef %i.blq, ptr noundef %i.blr) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

SDL_ConvertPixels_YUV_to_YUV_Copy.exit:           ; preds = %._crit_edge.i.i278.i, %._crit_edge75.i.i291.i, %._crit_edge.i.i213.i, %._crit_edge75.i.i.i, %._crit_edge.i.i110.i, %._crit_edge.i.i96.i, %._crit_edge.i.i82.i, %._crit_edge.i.i68.i, %._crit_edge.i.i54.i, %._crit_edge.i.i.i68, %.prol.loopexit1012, %.lr.ph.i.new, %.prol.loopexit1022, %.lr.ph103.i.new, %.prol.loopexit1027, %.lr.ph109.i.new, %.prol.loopexit1032, %.lr.ph115.i.new, %bb.bq, %.preheader.lr.ph.i.i99.i, %bb.bp, %.preheader.lr.ph.i.i85.i, %bb.bo, %.preheader.lr.ph.i.i71.i, %bb.bm, %.preheader.lr.ph.i.i57.i, %bb.bl, %.preheader.lr.ph.i.i43.i, %bb.bj, %.preheader.lr.ph.i.i.i64, %bb.bi, %bb.be, %.preheader61.lr.ph.i.i267.i, %bb.bd, %.preheader.lr.ph.i.i280.i, %bb.bc, %._crit_edge75.split.i.i261.i, %bb.ay, %._crit_edge75.split.i.i237.i, %bb.au, %.preheader61.lr.ph.i.i.i, %bb.ar, %.preheader.lr.ph.i.i215.i, %bb.aq, %._crit_edge75.split.i.i208.i, %bb.am, %._crit_edge75.split.i.i185.i, %bb.ai, %._crit_edge75.split.i.i166.i, %bb.ad, %._crit_edge75.split.i.i142.i, %bb.z, %bb.x, %._crit_edge75.split.i.i118.i, %bb.t, %._crit_edge75.split.i.i.i, %bb.p, %bb.n, %IsPacked4Format.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %._crit_edge.i, %bb.d, %IsPacked4Format.exit74, %SDL_ConvertPixels_Packed4_to_Planar2x2.exit, %SDL_ConvertPixels_Planar2x2_to_Packed4.exit, %bb.b
  %.0 = phi i1 [ %i.u, %bb.b ], [ %i.bls, %IsPacked4Format.exit74 ], [ true, %bb.d ], [ true, %._crit_edge.i.i68.i ], [ true, %.prol.loopexit1012 ], [ %.090.i, %SDL_ConvertPixels_Planar2x2_to_Packed4.exit ], [ %.088.i, %SDL_ConvertPixels_Packed4_to_Planar2x2.exit ], [ %i.eu, %IsPacked4Format.exit.i ], [ true, %bb.g ], [ true, %._crit_edge.i ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.i ], [ true, %._crit_edge75.i.i291.i ], [ true, %._crit_edge.i.i.i68 ], [ true, %._crit_edge.i.i54.i ], [ %i.aoo, %bb.be ], [ %i.fm, %bb.n ], [ false, %bb.ay ], [ false, %bb.p ], [ %i.mx, %bb.x ], [ false, %bb.t ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %bb.ai ], [ false, %bb.am ], [ true, %.prol.loopexit1027 ], [ false, %bb.au ], [ true, %._crit_edge75.split.i.i.i ], [ true, %._crit_edge75.split.i.i118.i ], [ true, %._crit_edge75.split.i.i142.i ], [ true, %._crit_edge75.split.i.i166.i ], [ true, %._crit_edge75.split.i.i185.i ], [ true, %._crit_edge75.split.i.i208.i ], [ true, %bb.aq ], [ true, %.preheader.lr.ph.i.i215.i ], [ true, %.prol.loopexit1032 ], [ true, %bb.ar ], [ true, %.preheader61.lr.ph.i.i.i ], [ true, %._crit_edge75.split.i.i237.i ], [ true, %._crit_edge75.split.i.i261.i ], [ true, %bb.bc ], [ true, %.preheader.lr.ph.i.i280.i ], [ true, %.prol.loopexit1022 ], [ true, %bb.bd ], [ true, %.preheader61.lr.ph.i.i267.i ], [ %i.awn, %bb.bq ], [ true, %._crit_edge75.i.i.i ], [ true, %._crit_edge.i.i213.i ], [ true, %._crit_edge.i.i82.i ], [ true, %._crit_edge.i.i96.i ], [ true, %._crit_edge.i.i110.i ], [ true, %bb.bi ], [ true, %.preheader.lr.ph.i.i.i64 ], [ true, %bb.bj ], [ true, %.preheader.lr.ph.i.i43.i ], [ true, %bb.bl ], [ true, %.preheader.lr.ph.i.i57.i ], [ true, %bb.bm ], [ true, %.preheader.lr.ph.i.i71.i ], [ true, %bb.bo ], [ true, %.preheader.lr.ph.i.i85.i ], [ true, %bb.bp ], [ true, %.preheader.lr.ph.i.i99.i ], [ true, %.lr.ph115.i.new ], [ true, %.lr.ph109.i.new ], [ true, %.lr.ph103.i.new ], [ true, %.lr.ph.i.new ], [ true, %._crit_edge.i.i278.i ]
  ret i1 %.0
}

declare ptr @SDL_GetPixelFormatName_REAL(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

declare void @yuv420_rgb565_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_rgb24_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_rgba_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_bgra_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_argb_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_abgr_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_rgb565_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_rgb24_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_rgba_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_bgra_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_argb_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_abgr_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_rgb565_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_rgb24_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_rgba_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_bgra_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_argb_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_abgr_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvp010_xbgr2101010_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_ConvertPixels_SwapUVPlanes(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, ptr nofree noundef captures(address) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sdiv i32 %i.a, 2                         ; 3 uses
  %i.c = add nsw i32 %1, 1
  %i.d = sdiv i32 %i.c, 2                         ; 4 uses
  %i.e = mul nsw i32 %3, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f ; 3 uses
  %i.h = mul nsw i32 %5, %1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %4, i64 %i.i ; 7 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %5, 1
  %i.m = sdiv i32 %i.l, 2                         ; 2 uses
  %i.n = sext i32 %i.b to i64                     ; 10 uses
  %i.o = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.n) #6 ; 8 uses
  %.not.not = icmp eq ptr %i.o, null
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp sgt i32 %1, 0
  br i1 %i.p, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %bb.c
  %i.q = mul nsw i32 %i.m, %i.d
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 %i.r ; 2 uses
  %i.t = sext i32 %i.m to i64                     ; 4 uses
  %smax89 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1) ; 3 uses
  %xtraiter105 = and i32 %smax89, 1
  %i.u = icmp slt i32 %1, 3
  br i1 %i.u, label %.epil.preheader104, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter109 = and i32 %smax89, 1073741822
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph86.new
  %.06585 = phi ptr [ %i.s, %.lr.ph86.new ], [ %i.y, %bb.d ] ; 3 uses
  %.06684 = phi ptr [ %i.j, %.lr.ph86.new ], [ %i.x, %bb.d ] ; 3 uses
  %niter110 = phi i32 [ 0, %.lr.ph86.new ], [ %niter110.next.1, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %.06684, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06684, ptr align 1 %.06585, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06585, ptr nonnull align 1 %i.o, i64 %i.n, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.06684, i64 %i.t ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.06585, i64 %i.t ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.v, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.w, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.o, i64 %i.n, i1 false)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.t ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.t ; 2 uses
  %niter110.next.1 = add i32 %niter110, 2         ; 2 uses
  %niter110.ncmp.1 = icmp eq i32 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !236

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %._crit_edge, label %.epil.preheader104

.epil.preheader104:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph86
  %.06585.epil.init = phi ptr [ %i.s, %.lr.ph86 ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06684.epil.init = phi ptr [ %i.j, %.lr.ph86 ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod108 = trunc i32 %smax89 to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %.06684.epil.init, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06684.epil.init, ptr align 1 %.06585.epil.init, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06585.epil.init, ptr nonnull align 1 %i.o, i64 %i.n, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader104, %._crit_edge.loopexit.unr-lcssa, %bb.c
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.o) #6
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.z = add nsw i32 %3, 1
  %i.aa = sdiv i32 %i.z, 2                        ; 2 uses
  %i.ab = add nsw i32 %5, 1
  %i.ac = sdiv i32 %i.ab, 2                       ; 3 uses
  %i.ad = icmp sgt i32 %1, 0
  br i1 %i.ad, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %i.ae = mul nsw i32 %i.ac, %i.d
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.j, i64 %i.af ; 2 uses
  %i.ah = sext i32 %i.b to i64                    ; 5 uses
  %i.ai = sext i32 %i.aa to i64                   ; 5 uses
  %i.aj = sext i32 %i.ac to i64                   ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1) ; 4 uses
  %xtraiter = and i32 %smax, 3                    ; 3 uses
  %i.ak = icmp slt i32 %1, 7
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %smax, 1073741820
  br label %bb.g

.lr.ph82.unr-lcssa:                               ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph82.unr-lcssa, %.lr.ph
  %.078.epil.init = phi ptr [ %i.ag, %.lr.ph ], [ %i.ay, %.lr.ph82.unr-lcssa ]
  %.06277.epil.init = phi ptr [ %i.g, %.lr.ph ], [ %i.ax, %.lr.ph82.unr-lcssa ]
  %lcmp.mod96 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.078.epil = phi ptr [ %.078.epil.init, %.epil.preheader ], [ %i.am, %bb.f ] ; 2 uses
  %.06277.epil = phi ptr [ %.06277.epil.init, %.epil.preheader ], [ %i.al, %bb.f ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.epil, ptr align 1 %.06277.epil, i64 %i.ah, i1 false)
  %i.al = getelementptr inbounds i8, ptr %.06277.epil, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.078.epil, i64 %i.aj
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph82, label %bb.f, !llvm.loop !237

.lr.ph82:                                         ; preds = %bb.f, %.lr.ph82.unr-lcssa
  %.lcssa = phi ptr [ %i.ax, %.lr.ph82.unr-lcssa ], [ %i.al, %bb.f ] ; 2 uses
  %i.an = sext i32 %i.b to i64                    ; 5 uses
  %i.ao = sext i32 %i.aa to i64                   ; 5 uses
  %i.ap = sext i32 %i.ac to i64                   ; 5 uses
  %xtraiter98 = and i32 %smax, 3                  ; 3 uses
  %i.aq = icmp slt i32 %1, 7
  br i1 %i.aq, label %.epil.preheader97, label %.lr.ph82.new

.lr.ph82.new:                                     ; preds = %.lr.ph82
  %unroll_iter102 = and i32 %smax, 1073741820
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.078 = phi ptr [ %i.ag, %.lr.ph.new ], [ %i.ay, %bb.g ] ; 2 uses
  %.06277 = phi ptr [ %i.g, %.lr.ph.new ], [ %i.ax, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078, ptr align 1 %.06277, i64 %i.ah, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %.06277, i64 %i.ai ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.078, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.ar, i64 %i.ah, i1 false)
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.ai ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.at, i64 %i.ah, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.ai ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.av, i64 %i.ah, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.ai ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.aj ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph82.unr-lcssa, label %bb.g, !llvm.loop !238

bb.h:                                             ; preds = %bb.h, %.lr.ph82.new
  %.181 = phi ptr [ %i.j, %.lr.ph82.new ], [ %i.bg, %bb.h ] ; 2 uses
  %.16380 = phi ptr [ %.lcssa, %.lr.ph82.new ], [ %i.bf, %bb.h ] ; 2 uses
  %niter103 = phi i32 [ 0, %.lr.ph82.new ], [ %niter103.next.3, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.181, ptr align 1 %.16380, i64 %i.an, i1 false)
  %i.az = getelementptr inbounds i8, ptr %.16380, i64 %i.ao ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.181, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.az, i64 %i.an, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ao ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bb, i64 %i.an, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.ao ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bd, i64 %i.an, i1 false)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.ao ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.ap ; 2 uses
  %niter103.next.3 = add i32 %niter103, 4         ; 2 uses
  %niter103.ncmp.3 = icmp eq i32 %niter103.next.3, %unroll_iter102
  br i1 %niter103.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !239

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %.critedge, label %.epil.preheader97

.epil.preheader97:                                ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph82
  %.181.epil.init = phi ptr [ %i.j, %.lr.ph82 ], [ %i.bg, %.critedge.loopexit.unr-lcssa ]
  %.16380.epil.init = phi ptr [ %.lcssa, %.lr.ph82 ], [ %i.bf, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader97
  %.181.epil = phi ptr [ %.181.epil.init, %.epil.preheader97 ], [ %i.bi, %bb.i ] ; 2 uses
  %.16380.epil = phi ptr [ %.16380.epil.init, %.epil.preheader97 ], [ %i.bh, %bb.i ] ; 2 uses
  %epil.iter99 = phi i32 [ 0, %.epil.preheader97 ], [ %epil.iter99.next, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.181.epil, ptr align 1 %.16380.epil, i64 %i.an, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.16380.epil, i64 %i.ao
  %i.bi = getelementptr inbounds i8, ptr %.181.epil, i64 %i.ap
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %.critedge, label %bb.i, !llvm.loop !240

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.i, %bb.e, %._crit_edge, %bb.b
  %.170 = phi i1 [ false, %bb.b ], [ true, %._crit_edge ], [ true, %bb.e ], [ true, %bb.i ], [ true, %.critedge.loopexit.unr-lcssa ]
  ret i1 %.170
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, i1 false, !"LVerDomain"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !3, !4, !5}
!11 = distinct !{!11, !3, !4}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !3, !4, !5}
!19 = distinct !{!19, !3, !4}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !3, !4, !5}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !3, !4}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !3, !4, !5}
!34 = distinct !{!34, !3, !4}
!35 = distinct !{!35, !3}
!36 = distinct !{!36, i1 false, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !3, !4, !5}
!40 = distinct !{!40, !3, !4}
!41 = distinct !{!41, i1 false, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !3, !4, !5}
!46 = distinct !{!46, !3, !4}
!47 = distinct !{!47, !3}
!48 = distinct !{!48, i1 false, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !3, !4, !5}
!52 = distinct !{!52, !3, !4}
!53 = distinct !{!53, i1 false, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !3, !4, !5}
!57 = distinct !{!57, !3, !4}
!58 = distinct !{!58, !3}
!59 = distinct !{!59, i1 false, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !3, !4, !5}
!63 = distinct !{!63, !3, !4}
!64 = distinct !{!64, !3}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !3, !4, !5}
!69 = distinct !{!69, !3, !4}
!70 = distinct !{!70, !3}
!71 = !{!8}
!72 = !{!9}
!73 = !{!14}
!74 = !{!15}
!75 = !{!16}
!76 = !{!17, !15, !14}
!77 = !{!17}
!78 = !{!15, !14}
!79 = !{!22}
!80 = !{!23}
!81 = !{!25, !24, !22}
!82 = !{!24}
!83 = !{!27}
!84 = !{!23, !25, !24, !22}
!85 = !{!25}
!86 = !{!24, !22}
!87 = !{!30}
!88 = !{!31}
!89 = !{!32}
!90 = !{!31, !30}
!91 = !{!37}
!92 = !{!38}
!93 = !{!42}
!94 = !{!43}
!95 = !{!44}
!96 = !{!43, !42}
!97 = !{!49}
!98 = !{!50}
!99 = !{!54}
!100 = !{!55}
!101 = !{!60}
!102 = !{!61}
!103 = !{!66}
!104 = !{!67}
!105 = distinct !{!105, i1 false, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !3, !4, !5}
!109 = distinct !{!109, !3, !4}
!110 = distinct !{!110, !3}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !111}
!115 = distinct !{!115, !3, !4, !5}
!116 = distinct !{!116, !3, !4}
!117 = distinct !{!117, !3}
!118 = distinct !{!118, i1 false, !"LVerDomain"}
!119 = distinct !{!119, !118}
!120 = distinct !{!120, !118}
!121 = distinct !{!121, !3, !4, !5}
!122 = distinct !{!122, !3, !4}
!123 = !{!106}
!124 = !{!107}
!125 = !{!112}
!126 = !{!113}
!127 = !{!114}
!128 = !{!113, !112}
!129 = !{!119}
!130 = !{!120}
!131 = distinct !{!131, !6}
!132 = distinct !{!132, !3}
!133 = distinct !{!133, !6}
!134 = distinct !{!134, !3}
!135 = distinct !{!135, !6}
!136 = distinct !{!136, !3}
!137 = distinct !{!137, !6}
!138 = distinct !{!138, !3}
!139 = distinct !{!139, !6}
!140 = distinct !{!140, !3}
!141 = distinct !{!141, !6}
!142 = distinct !{!142, !3}
!143 = distinct !{!143, i1 false, !"LVerDomain"}
!144 = distinct !{!144, !143}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !143}
!147 = distinct !{!147, !3, !4, !5}
!148 = distinct !{!148, !3, !4, !5}
!149 = distinct !{!149, !6}
!150 = distinct !{!150, !3, !4}
!151 = distinct !{!151, !3}
!152 = distinct !{!152, i1 false, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !152}
!156 = distinct !{!156, !3, !4, !5}
!157 = distinct !{!157, !3, !4, !5}
!158 = distinct !{!158, !6}
!159 = distinct !{!159, !3, !4}
!160 = distinct !{!160, i1 false, !"LVerDomain"}
!161 = distinct !{!161, !160}
!162 = distinct !{!162, !160}
!163 = distinct !{!163, !160}
!164 = distinct !{!164, !3, !4, !5}
!165 = distinct !{!165, !3, !4, !5}
!166 = distinct !{!166, !6}
!167 = distinct !{!167, !3, !4}
!168 = distinct !{!168, i1 false, !"LVerDomain"}
!169 = distinct !{!169, !168}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !168}
!172 = distinct !{!172, !3, !4, !5}
!173 = distinct !{!173, !3, !4, !5}
!174 = distinct !{!174, !6}
!175 = distinct !{!175, !3, !4}
!176 = distinct !{!176, !6}
!177 = distinct !{!177, !3}
!178 = distinct !{!178, !3}
!179 = distinct !{!179, !6}
!180 = distinct !{!180, !3, !4, !5}
!181 = distinct !{!181, !3, !4, !5}
!182 = distinct !{!182, !6}
!183 = distinct !{!183, !3, !4}
!184 = distinct !{!184, !3}
!185 = distinct !{!185, !6}
!186 = distinct !{!186, !3}
!187 = distinct !{!187, !3}
!188 = distinct !{!188, !6}
!189 = distinct !{!189, !6}
!190 = distinct !{!190, !3, !4, !5}
!191 = distinct !{!191, !3, !4, !5}
!192 = distinct !{!192, !6}
!193 = distinct !{!193, !3, !4}
!194 = distinct !{!194, !6}
!195 = distinct !{!195, !6}
!196 = distinct !{!196, !3}
!197 = distinct !{!197, !3}
!198 = distinct !{!198, !6}
!199 = distinct !{!199, !3}
!200 = distinct !{!200, !3}
!201 = distinct !{!201, !6}
!202 = distinct !{!202, !3}
!203 = distinct !{!203, !3}
!204 = distinct !{!204, !6}
!205 = distinct !{!205, !3}
!206 = distinct !{!206, !3}
!207 = distinct !{!207, !6}
!208 = distinct !{!208, !3}
!209 = distinct !{!209, !3}
!210 = distinct !{!210, !6}
!211 = distinct !{!211, !3}
!212 = distinct !{!212, !3}
!213 = distinct !{!213, !3}
!214 = distinct !{!214, !3}
!215 = distinct !{!215, !3}
!216 = distinct !{!216, !3}
!217 = distinct !{!217, !3}
!218 = distinct !{!218, !3}
!219 = !{!144}
!220 = !{!145}
!221 = !{!146}
!222 = !{!145, !144}
!223 = !{!"branch_weights", i32 4, i32 12}
!224 = !{!153}
!225 = !{!154}
!226 = !{!155}
!227 = !{!154, !153}
!228 = !{!161}
!229 = !{!162}
!230 = !{!163}
!231 = !{!162, !161}
!232 = !{!169}
!233 = !{!170}
!234 = !{!171}
!235 = !{!170, !169}
!236 = distinct !{!236, !3}
!237 = distinct !{!237, !6}
!238 = distinct !{!238, !3}
!239 = distinct !{!239, !3}
!240 = distinct !{!240, !6}
end_hunk_2
