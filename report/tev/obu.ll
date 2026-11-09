Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/obu?download=true
inline.NumInlined: 40
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@parse_frame_hdr:bb.a
  %.not1049.6 = icmp eq i32 %i.xj, %i.xh
  br i1 %.not1049.6, label %.thread1240, label %.thread

.thread1240:                                      ; preds = %bb.do, %bb.dm
  %i.xk = load i8, ptr %i.bu, align 2, !tbaa !251
  %.not1050 = icmp eq i8 %i.xk, 0
  br i1 %.not1050, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.thread1240
  %i.xl = getelementptr inbounds nuw i8, ptr %i.e, i64 270
  %i.xm = load i8, ptr %i.xl, align 2, !tbaa !113
  %i.xn = icmp ne i8 %i.xm, 0
  %i.xo = zext i1 %i.xn to i32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.thread1240
  %i.xp = phi i32 [ 0, %.thread1240 ], [ %i.xo, %bb.dp ]
  %i.xq = tail call fastcc i32 @read_frame_size(ptr noundef %0, ptr noundef %1, i32 noundef %i.xp)
  %i.xr = icmp slt i32 %i.xq, 0
  br i1 %i.xr, label %.thread, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.e, i64 269
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !254
  %.not1051 = icmp eq i8 %i.xt, 0
  br i1 %.not1051, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.xu = tail call i32 @dav1d_get_bit(ptr noundef nonnull %1) #12
  %i.xv = trunc i32 %i.xu to i8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  store i8 %i.xv, ptr %i.xw, align 4, !tbaa !261
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.xx = tail call i32 @dav1d_get_bit(ptr noundef nonnull %1) #12
  %.not1052 = icmp eq i32 %i.xx, 0
  br i1 %.not1052, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.xy = tail call i32 @dav1d_get_bits(ptr noundef nonnull %1, i32 noundef 2) #12
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du
  %i.xz = phi i32 [ %i.xy, %bb.du ], [ 4, %bb.dt ]
  %i.ya = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  store i32 %i.xz, ptr %i.ya, align 8, !tbaa !262
  %i.yb = tail call i32 @dav1d_get_bit(ptr noundef nonnull %1) #12
  %i.yc = trunc i32 %i.yb to i8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  store i8 %i.yc, ptr %i.yd, align 4, !tbaa !263
  %i.ye = load i8, ptr %i.bu, align 2, !tbaa !251
  %.not1053 = icmp eq i8 %i.ye, 0
  br i1 %.not1053, label %bb.dw, label %.thread1245

bb.dw:                                            ; preds = %bb.dv
  %i.yf = getelementptr inbounds nuw i8, ptr %i.c, i64 401
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !41
  %.not1054 = icmp eq i8 %i.yg, 0
  br i1 %.not1054, label %.thread1245, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.yh = load i8, ptr %i.dd, align 1, !tbaa !40
  %.not1055 = icmp eq i8 %i.yh, 0
  br i1 %.not1055, label %.thread1245, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.yi = load i32, ptr %i.bn, align 8, !tbaa !109
  %i.yj = and i32 %i.yi, 1
  %.not1056 = icmp eq i32 %i.yj, 0
  br i1 %.not1056, label %.thread1245, label %.thread1245.sink.split

.thread1245.sink.split:                           ; preds = %bb.dy, %bb.bc
  %.sink1720 = phi i64 [ 419, %bb.bc ], [ 437, %bb.dy ]
  %i.yk = tail call i32 @dav1d_get_bit(ptr noundef nonnull %1) #12
  %i.yl = trunc i32 %i.yk to i8
  %i.ym = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink1720
  store i8 %i.yl, ptr %i.ym, align 1, !tbaa !51
  br label %.thread1245

.thread1245:                                      ; preds = %.thread1245.sink.split, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.bb, %bb.bc
  %i.yn = load i8, ptr %i.f, align 1, !tbaa !19
  %.not1057 = icmp eq i8 %i.yn, 0
  br i1 %.not1057, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %.thread1245
  %i.yo = load i8, ptr %i.bx, align 1, !tbaa !252
  %.not1058 = icmp eq i8 %i.yo, 0
  br i1 %.not1058, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.yp = tail call i32 @dav1d_get_bit(ptr noundef nonnull %1) #12
  %.not1059 = icmp eq i32 %i.yp, 0
  %i.yq = zext i1 %.not1059 to i8
  %i.yr = getelementptr inbounds nuw i8, ptr %i.e, i64 438
  store i8 %i.yq, ptr %i.yr, align 2, !tbaa !264
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %.thread1245
  %i.ys = tail call i32 @dav1d_get_bit(ptr noundef nonnull %1) #12
  %i.yt = trunc i32 %i.ys to i8                   ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  store i8 %i.yt, ptr %i.yu, align 8, !tbaa !265
  %i.yv = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 3 uses
  %i.yw = load i8, ptr %i.yv, align 4, !tbaa !36
  %i.yx = zext i8 %i.yw to i32                    ; 3 uses
  %i.yy = shl i32 64, %i.yx
  %i.yz = add nsw i32 %i.yy, -1                   ; 2 uses
  %i.za = add nuw nsw i32 %i.yx, 6                ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.e, i64 236
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !101
  %i.zd = add nsw i32 %i.yz, %i.zc
  %i.ze = ashr i32 %i.zd, %i.za                   ; 12 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.e, i64 244
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !102
  %i.zh = lshr i32 64, %i.yx                      ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %bb.eb
  %.0.i1196 = phi i32 [ 0, %bb.eb ], [ %i.zk, %bb.ec ] ; 4 uses
  %i.zi = shl i32 %i.zh, %.0.i1196
  %i.zj = icmp slt i32 %i.zi, %i.ze
  %i.zk = add nuw nsw i32 %.0.i1196, 1
  br i1 %i.zj, label %bb.ec, label %tile_log2.exit

tile_log2.exit:                                   ; preds = %bb.ec
  %i.zl = trunc i32 %.0.i1196 to i8               ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.e, i64 442
  store i8 %i.zl, ptr %i.zm, align 2, !tbaa !266
  %i.zn = tail call noundef i32 @llvm.smin.i32(i32 %i.ze, i32 64)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %tile_log2.exit
  %.0.i1197 = phi i32 [ 0, %tile_log2.exit ], [ %i.zq, %bb.ed ] ; 3 uses
  %i.zo = shl nuw i32 1, %.0.i1197
  %i.zp = icmp slt i32 %i.zo, %i.zn
  %i.zq = add nuw nsw i32 %.0.i1197, 1
  br i1 %i.zp, label %bb.ed, label %tile_log2.exit1198

tile_log2.exit1198:                               ; preds = %bb.ed
  %i.zr = add nsw i32 %i.yz, %i.zg
  %i.zs = ashr i32 %i.zr, %i.za                   ; 11 uses
  %i.zt = trunc i32 %.0.i1197 to i8               ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.e, i64 443 ; 2 uses
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !267
  %i.zv = tail call noundef i32 @llvm.smin.i32(i32 %i.zs, i32 64)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %tile_log2.exit1198
  %.0.i1199 = phi i32 [ 0, %tile_log2.exit1198 ], [ %i.zy, %bb.ee ] ; 3 uses
  %i.zw = shl nuw i32 1, %.0.i1199
  %i.zx = icmp slt i32 %i.zw, %i.zv
  %i.zy = add nuw nsw i32 %.0.i1199, 1
  br i1 %i.zx, label %bb.ee, label %tile_log2.exit1200

tile_log2.exit1200:                               ; preds = %bb.ee
  %i.zz = shl nuw nsw i32 %i.za, 1
  %i.aaa = lshr i32 9437184, %i.zz
  %i.aab = trunc i32 %.0.i1199 to i8
  %i.aac = getelementptr inbounds nuw i8, ptr %i.e, i64 447 ; 3 uses
  store i8 %i.aab, ptr %i.aac, align 1, !tbaa !268
  %i.aad = mul nsw i32 %i.ze, %i.zs               ; 2 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %tile_log2.exit1200
  %.0.i1201 = phi i32 [ 0, %tile_log2.exit1200 ], [ %i.aag, %bb.ef ] ; 3 uses
  %i.aae = shl i32 %i.aaa, %.0.i1201
  %i.aaf = icmp slt i32 %i.aae, %i.aad
  %i.aag = add nuw nsw i32 %.0.i1201, 1
  br i1 %i.aaf, label %bb.ef, label %tile_log2.exit1202

tile_log2.exit1202:                               ; preds = %bb.ef
  %i.aah = and i32 %.0.i1196, 255
  %i.aai = tail call noundef i32 @llvm.smax.i32(i32 %.0.i1201, i32 %i.aah) ; 3 uses
  %.not1060 = icmp eq i8 %i.yt, 0
  br i1 %.not1060, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %tile_log2.exit1202
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.e, i64 444 ; 3 uses
  store i8 %i.zl, ptr %i.aaj, align 4, !tbaa !115
  %i.aak = icmp ugt i8 %i.zt, %i.zl
  br i1 %i.aak, label %.lr.ph1359, label %.critedge

.lr.ph1359:                                       ; preds = %bb.eg, %bb.eh
  %i.aal = tail call i32 @dav1d_get_bit(ptr noundef nonnull %1) #12
  %.not1064 = icmp eq i32 %i.aal, 0
  %.pre1537.pre = load i8, ptr %i.aaj, align 4, !tbaa !115 ; 2 uses
  br i1 %.not1064, label %.critedge, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1359
  %i.aam = add i8 %.pre1537.pre, 1                ; 3 uses
  store i8 %i.aam, ptr %i.aaj, align 4, !tbaa !115
  %i.aan = load i8, ptr %i.zu, align 1, !tbaa !267
  %i.aao = icmp ult i8 %i.aam, %i.aan
  br i1 %i.aao, label %.lr.ph1359, label %.critedge

.critedge:                                        ; preds = %.lr.ph1359, %bb.eh, %bb.eg
  %i.aap = phi i8 [ %i.zl, %bb.eg ], [ %.pre1537.pre, %.lr.ph1359 ], [ %i.aam, %bb.eh ]
  %i.aaq = add nsw i32 %i.ze, -1
  %i.aar = zext i8 %i.aap to i32                  ; 2 uses
  %i.aas = lshr i32 %i.aaq, %i.aar                ; 4 uses
  %i.aat = add i32 %i.aas, 1                      ; 10 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.e, i64 445
  %i.aav = icmp sgt i32 %i.ze, 0
  br i1 %i.aav, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.critedge
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.e, i64 450 ; 3 uses
  %smax1746 = tail call i32 @llvm.smax.i32(i32 %i.ze, i32 %i.aat)
  %i.aax = xor i32 %i.aas, -1
  %i.aay = add i32 %smax1746, %i.aax              ; 2 uses
  %i.aaz = icmp ne i32 %i.aay, 0
  %umin1747 = zext i1 %i.aaz to i32               ; 2 uses
  %i.aba = sub i32 %i.aay, %umin1747
  %umax1748 = tail call i32 @llvm.umax.i32(i32 %i.aat, i32 1)
  %i.abb = udiv i32 %i.aba, %umax1748
  %i.abc = add i32 %i.abb, %umin1747
  %i.abd = add i32 %i.abc, 1                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.abd, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %ident.check = icmp ugt i32 %i.aas, 2147483646
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ze, i32 %i.aat)
  %i.abe = xor i32 %i.aas, -1
  %i.abf = add i32 %smax, %i.abe                  ; 2 uses
  %i.abg = icmp ne i32 %i.abf, 0
  %umin = zext i1 %i.abg to i32                   ; 2 uses
  %i.abh = sub i32 %i.abf, %umin
  %umax = tail call i32 @llvm.umax.i32(i32 %i.aat, i32 1)
  %i.abi = udiv i32 %i.abh, %umax
  %i.abj = add i32 %i.abi, %umin
  %i.abk = icmp ugt i32 %i.abj, 255
  %i.abl = or i1 %ident.check, %i.abk
  br i1 %i.abl, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check1749 = icmp ult i32 %i.abd, 16
  br i1 %min.iters.check1749, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abm = and i32 %i.abd, 12
  %n.vec = and i32 %i.abd, -16                    ; 5 uses
  %i.abn = mul i32 %n.vec, %i.aat                 ; 2 uses
  %i.abo = trunc i32 %n.vec to i8                 ; 2 uses
  %i.abp = trunc i32 %i.aat to i16
  %.scalar = shl i16 %i.abp, 3
  %i.abq = insertelement <8 x i16> poison, i16 %.scalar, i64 0
  %i.abr = shufflevector <8 x i16> %i.abq, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.abs = trunc i32 %i.aat to i16
  %broadcast.splatinsert1750 = insertelement <8 x i16> poison, i16 %i.abs, i64 0
  %broadcast.splat1751 = shufflevector <8 x i16> %broadcast.splatinsert1750, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.abt = mul <8 x i16> %broadcast.splat1751, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %invariant.op = add <8 x i16> %i.abr, %i.abr
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %i.abt, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, %i.abr
  %i.abu = and i32 %index, 240
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [2 x i8], ptr %i.aaw, i64 %i.abv ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  store <8 x i16> %vec.ind, ptr %i.abw, align 2, !tbaa !107
  store <8 x i16> %step.add, ptr %i.abx, align 2, !tbaa !107
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %vec.ind.next.reass = add <8 x i16> %vec.ind, %invariant.op
  %i.aby = icmp eq i32 %index.next, %n.vec
  br i1 %i.aby, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.abd, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.abm, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !271

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.abn, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1752 = and i32 %i.abd, -4                 ; 4 uses
  %i.abz = mul i32 %n.vec1752, %i.aat
  %i.aca = trunc i32 %n.vec1752 to i8             ; 2 uses
  %i.acb = trunc i32 %i.aat to i16                ; 2 uses
  %i.acc = trunc i32 %bc.resume.val to i16
  %broadcast.splatinsert1753 = insertelement <4 x i16> poison, i16 %i.acc, i64 0
  %broadcast.splat1754 = shufflevector <4 x i16> %broadcast.splatinsert1753, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1755 = insertelement <4 x i16> poison, i16 %i.acb, i64 0
  %broadcast.splat1756 = shufflevector <4 x i16> %broadcast.splatinsert1755, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.acd = mul <4 x i16> %broadcast.splat1756, <i16 0, i16 1, i16 2, i16 3>
  %induction = add <4 x i16> %broadcast.splat1754, %i.acd
  %i.ace = shl i16 %i.acb, 2
  %broadcast.splatinsert1757 = insertelement <4 x i16> poison, i16 %i.ace, i64 0
  %broadcast.splat1758 = shufflevector <4 x i16> %broadcast.splatinsert1757, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1759 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1761, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1760 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next1762, %vec.epilog.vector.body ] ; 2 uses
  %i.acf = and i32 %index1759, 252
  %i.acg = zext nneg i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %i.aaw, i64 %i.acg
  store <4 x i16> %vec.ind1760, ptr %i.ach, align 2, !tbaa !107
  %index.next1761 = add nuw i32 %index1759, 4     ; 2 uses
  %vec.ind.next1762 = add <4 x i16> %vec.ind1760, %broadcast.splat1758
  %i.aci = icmp eq i32 %index.next1761, %n.vec1752
  br i1 %i.aci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1763 = icmp eq i32 %i.abd, %n.vec1752
  br i1 %cmp.n1763, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09621362.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.abn, %vec.epilog.iter.check ], [ %i.abz, %vec.epilog.middle.block ]
  %storemerge10651361.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.abo, %vec.epilog.iter.check ], [ %i.aca, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.critedge
  %storemerge1065.lcssa = phi i8 [ 0, %.critedge ], [ %i.aca, %vec.epilog.middle.block ], [ %i.abo, %middle.block ], [ %i.acu, %vec.epilog.scalar.ph ]
  store i8 %storemerge1065.lcssa, ptr %i.aau, align 1, !tbaa !110
  %i.acj = sub nsw i32 %i.aai, %i.aar
  %i.ack = tail call noundef i32 @llvm.smax.i32(i32 %i.acj, i32 0)
  %i.acl = trunc i32 %i.ack to i8                 ; 4 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.e, i64 446
  store i8 %i.acl, ptr %i.acm, align 2, !tbaa !272
  %i.acn = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 3 uses
  store i8 %i.acl, ptr %i.acn, align 8, !tbaa !116
  %i.aco = load i8, ptr %i.aac, align 1, !tbaa !268
  %i.acp = icmp ugt i8 %i.aco, %i.acl
  br i1 %i.acp, label %.lr.ph1365, label %.critedge15

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.09621362 = phi i32 [ %i.act, %vec.epilog.scalar.ph ], [ %.09621362.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %storemerge10651361 = phi i8 [ %i.acu, %vec.epilog.scalar.ph ], [ %storemerge10651361.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.acq = trunc i32 %.09621362 to i16
  %i.acr = zext i8 %storemerge10651361 to i64
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.aaw, i64 %i.acr
  store i16 %i.acq, ptr %i.acs, align 2, !tbaa !107
  %i.act = add nsw i32 %i.aat, %.09621362         ; 2 uses
  %i.acu = add i8 %storemerge10651361, 1          ; 2 uses
  %i.acv = icmp slt i32 %i.act, %i.ze
  br i1 %i.acv, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !241

.lr.ph1365:                                       ; preds = %._crit_edge, %bb.ei
  %i.acw = tail call i32 @dav1d_get_bit(ptr noundef nonnull %1) #12
  %.not1067 = icmp eq i32 %i.acw, 0
  %.pre1538.pre = load i8, ptr %i.acn, align 8, !tbaa !116 ; 2 uses
  br i1 %.not1067, label %.critedge15, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph1365
  %i.acx = add i8 %.pre1538.pre, 1                ; 3 uses
  store i8 %i.acx, ptr %i.acn, align 8, !tbaa !116
  %i.acy = load i8, ptr %i.aac, align 1, !tbaa !268
  %i.acz = icmp ult i8 %i.acx, %i.acy
  br i1 %i.acz, label %.lr.ph1365, label %.critedge15

.critedge15:                                      ; preds = %.lr.ph1365, %bb.ei, %._crit_edge
  %i.ada = phi i8 [ %i.acl, %._crit_edge ], [ %.pre1538.pre, %.lr.ph1365 ], [ %i.acx, %bb.ei ] ; 2 uses
  %i.adb = add nsw i32 %i.zs, -1
  %i.adc = zext nneg i8 %i.ada to i32
  %i.add = lshr i32 %i.adb, %i.adc                ; 4 uses
  %i.ade = add i32 %i.add, 1                      ; 10 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.e, i64 449
  %i.adg = icmp sgt i32 %i.zs, 0
  br i1 %i.adg, label %iter.check1791, label %.loopexit1324

iter.check1791:                                   ; preds = %.critedge15
  %i.adh = getelementptr inbounds nuw i8, ptr %i.e, i64 580 ; 3 uses
  %smax1771 = tail call i32 @llvm.smax.i32(i32 %i.zs, i32 %i.ade)
  %i.adi = xor i32 %i.add, -1
  %i.adj = add i32 %smax1771, %i.adi              ; 2 uses
  %i.adk = icmp ne i32 %i.adj, 0
  %umin1772 = zext i1 %i.adk to i32               ; 2 uses
  %i.adl = sub i32 %i.adj, %umin1772
  %umax1773 = tail call i32 @llvm.umax.i32(i32 %i.ade, i32 1)
  %i.adm = udiv i32 %i.adl, %umax1773
  %i.adn = add i32 %i.adm, %umin1772
  %i.ado = add i32 %i.adn, 1                      ; 7 uses
  %min.iters.check1774 = icmp ult i32 %i.ado, 4
  br i1 %min.iters.check1774, label %vec.epilog.scalar.ph1793.preheader, label %vector.scevcheck1766

vector.scevcheck1766:                             ; preds = %iter.check1791
  %ident.check1767 = icmp ugt i32 %i.add, 2147483646
  %smax1768 = tail call i32 @llvm.smax.i32(i32 %i.zs, i32 %i.ade)
  %i.adp = xor i32 %i.add, -1
  %i.adq = add i32 %smax1768, %i.adp              ; 2 uses
  %i.adr = icmp ne i32 %i.adq, 0
  %umin1769 = zext i1 %i.adr to i32               ; 2 uses
  %i.ads = sub i32 %i.adq, %umin1769
  %umax1770 = tail call i32 @llvm.umax.i32(i32 %i.ade, i32 1)
  %i.adt = udiv i32 %i.ads, %umax1770
  %i.adu = add i32 %i.adt, %umin1769
  %i.adv = icmp ugt i32 %i.adu, 255
  %i.adw = or i1 %ident.check1767, %i.adv
  br i1 %i.adw, label %vec.epilog.scalar.ph1793.preheader, label %vector.main.loop.iter.check1775

vector.main.loop.iter.check1775:                  ; preds = %vector.scevcheck1766
  %min.iters.check1776 = icmp ult i32 %i.ado, 16
  br i1 %min.iters.check1776, label %vec.epilog.ph1795, label %vector.ph1777

vector.ph1777:                                    ; preds = %vector.main.loop.iter.check1775
  %i.adx = and i32 %i.ado, 12
  %n.vec1778 = and i32 %i.ado, -16                ; 5 uses
  %i.ady = mul i32 %n.vec1778, %i.ade             ; 2 uses
  %i.adz = trunc i32 %n.vec1778 to i8             ; 2 uses
  %i.aea = trunc i32 %i.ade to i16
  %.scalar1815 = shl i16 %i.aea, 3
  %i.aeb = insertelement <8 x i16> poison, i16 %.scalar1815, i64 0
  %i.aec = shufflevector <8 x i16> %i.aeb, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aed = trunc i32 %i.ade to i16
  %broadcast.splatinsert1781 = insertelement <8 x i16> poison, i16 %i.aed, i64 0
  %broadcast.splat1782 = shufflevector <8 x i16> %broadcast.splatinsert1781, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aee = mul <8 x i16> %broadcast.splat1782, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %invariant.op1831 = add <8 x i16> %i.aec, %i.aec
  br label %vector.body1783

vector.body1783:                                  ; preds = %vector.ph1777, %vector.body1783
  %index1784 = phi i32 [ 0, %vector.ph1777 ], [ %index.next1787, %vector.body1783 ] ; 2 uses
  %vec.ind1785 = phi <8 x i16> [ %i.aee, %vector.ph1777 ], [ %vec.ind.next1788.reass, %vector.body1783 ] ; 3 uses
  %step.add1786 = add <8 x i16> %vec.ind1785, %i.aec
  %i.aef = and i32 %index1784, 240
  %i.aeg = zext nneg i32 %i.aef to i64
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %i.adh, i64 %i.aeg ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16
  store <8 x i16> %vec.ind1785, ptr %i.aeh, align 2, !tbaa !107
  store <8 x i16> %step.add1786, ptr %i.aei, align 2, !tbaa !107
  %index.next1787 = add nuw i32 %index1784, 16    ; 2 uses
  %vec.ind.next1788.reass = add <8 x i16> %vec.ind1785, %invariant.op1831
  %i.aej = icmp eq i32 %index.next1787, %n.vec1778
  br i1 %i.aej, label %middle.block1789, label %vector.body1783, !llvm.loop !242

middle.block1789:                                 ; preds = %vector.body1783
  %cmp.n1790 = icmp eq i32 %i.ado, %n.vec1778
  br i1 %cmp.n1790, label %.loopexit1324, label %vec.epilog.iter.check1792

vec.epilog.iter.check1792:                        ; preds = %middle.block1789
  %min.epilog.iters.check1794 = icmp eq i32 %i.adx, 0
  br i1 %min.epilog.iters.check1794, label %vec.epilog.scalar.ph1793.preheader, label %vec.epilog.ph1795, !prof !271

vec.epilog.ph1795:                                ; preds = %vector.main.loop.iter.check1775, %vec.epilog.iter.check1792
  %vec.epilog.resume.val1796 = phi i32 [ %n.vec1778, %vec.epilog.iter.check1792 ], [ 0, %vector.main.loop.iter.check1775 ]
  %bc.resume.val1797 = phi i32 [ %i.ady, %vec.epilog.iter.check1792 ], [ 0, %vector.main.loop.iter.check1775 ]
  %n.vec1798 = and i32 %i.ado, -4                 ; 4 uses
  %i.aek = mul i32 %n.vec1798, %i.ade
  %i.ael = trunc i32 %n.vec1798 to i8             ; 2 uses
  %i.aem = trunc i32 %i.ade to i16                ; 2 uses
  %i.aen = trunc i32 %bc.resume.val1797 to i16
  %broadcast.splatinsert1799 = insertelement <4 x i16> poison, i16 %i.aen, i64 0
  %broadcast.splat1800 = shufflevector <4 x i16> %broadcast.splatinsert1799, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1801 = insertelement <4 x i16> poison, i16 %i.aem, i64 0
  %broadcast.splat1802 = shufflevector <4 x i16> %broadcast.splatinsert1801, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.aeo = mul <4 x i16> %broadcast.splat1802, <i16 0, i16 1, i16 2, i16 3>
  %induction1803 = add <4 x i16> %broadcast.splat1800, %i.aeo
  %i.aep = shl i16 %i.aem, 2
  %broadcast.splatinsert1804 = insertelement <4 x i16> poison, i16 %i.aep, i64 0
  %broadcast.splat1805 = shufflevector <4 x i16> %broadcast.splatinsert1804, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1806

vec.epilog.vector.body1806:                       ; preds = %vec.epilog.vector.body1806, %vec.epilog.ph1795
  %index1807 = phi i32 [ %vec.epilog.resume.val1796, %vec.epilog.ph1795 ], [ %index.next1809, %vec.epilog.vector.body1806 ] ; 2 uses
  %vec.ind1808 = phi <4 x i16> [ %induction1803, %vec.epilog.ph1795 ], [ %vec.ind.next1810, %vec.epilog.vector.body1806 ] ; 2 uses
  %i.aeq = and i32 %index1807, 252
  %i.aer = zext nneg i32 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %i.adh, i64 %i.aer
  store <4 x i16> %vec.ind1808, ptr %i.aes, align 2, !tbaa !107
  %index.next1809 = add nuw i32 %index1807, 4     ; 2 uses
  %vec.ind.next1810 = add <4 x i16> %vec.ind1808, %broadcast.splat1805
  %i.aet = icmp eq i32 %index.next1809, %n.vec1798
  br i1 %i.aet, label %vec.epilog.middle.block1811, label %vec.epilog.vector.body1806, !llvm.loop !243

vec.epilog.middle.block1811:                      ; preds = %vec.epilog.vector.body1806
  %cmp.n1812 = icmp eq i32 %i.ado, %n.vec1798
  br i1 %cmp.n1812, label %.loopexit1324, label %vec.epilog.scalar.ph1793.preheader

vec.epilog.scalar.ph1793.preheader:               ; preds = %iter.check1791, %vector.scevcheck1766, %vec.epilog.iter.check1792, %vec.epilog.middle.block1811
  %.09611368.ph = phi i32 [ 0, %iter.check1791 ], [ 0, %vector.scevcheck1766 ], [ %i.ady, %vec.epilog.iter.check1792 ], [ %i.aek, %vec.epilog.middle.block1811 ]
  %storemerge10681367.ph = phi i8 [ 0, %iter.check1791 ], [ 0, %vector.scevcheck1766 ], [ %i.adz, %vec.epilog.iter.check1792 ], [ %i.ael, %vec.epilog.middle.block1811 ]
  br label %vec.epilog.scalar.ph1793

vec.epilog.scalar.ph1793:                         ; preds = %vec.epilog.scalar.ph1793.preheader, %vec.epilog.scalar.ph1793
  %.09611368 = phi i32 [ %i.aex, %vec.epilog.scalar.ph1793 ], [ %.09611368.ph, %vec.epilog.scalar.ph1793.preheader ] ; 2 uses
  %storemerge10681367 = phi i8 [ %i.aey, %vec.epilog.scalar.ph1793 ], [ %storemerge10681367.ph, %vec.epilog.scalar.ph1793.preheader ] ; 2 uses
  %i.aeu = trunc i32 %.09611368 to i16
  %i.aev = zext i8 %storemerge10681367 to i64
  %i.aew = getelementptr inbounds nuw [2 x i8], ptr %i.adh, i64 %i.aev
  store i16 %i.aeu, ptr %i.aew, align 2, !tbaa !107
  %i.aex = add nsw i32 %i.ade, %.09611368         ; 2 uses
  %i.aey = add i8 %storemerge10681367, 1          ; 2 uses
  %i.aez = icmp slt i32 %i.aex, %i.zs
  br i1 %i.aez, label %vec.epilog.scalar.ph1793, label %.loopexit1324, !llvm.loop !244

bb.ej:                                            ; preds = %tile_log2.exit1202
  %i.afa = getelementptr inbounds nuw i8, ptr %i.e, i64 445 ; 3 uses
  store i8 0, ptr %i.afa, align 1, !tbaa !110
  %i.afb = icmp sgt i32 %i.ze, 0
  br i1 %i.afb, label %.lr.ph1374, label %.critedge17

.lr.ph1374:                                       ; preds = %bb.ej
  %i.afc = getelementptr inbounds nuw i8, ptr %i.e, i64 450
  br label %bb.el

.critedge17.loopexit:                             ; preds = %bb.en
  %i.afd = zext i8 %i.agd to i32
  br label %.critedge17

.critedge17:                                      ; preds = %.critedge17.loopexit, %bb.ej
  %storemerge.lcssa = phi i32 [ 0, %bb.ej ], [ %i.afd, %.critedge17.loopexit ]
  %.0960.lcssa = phi i32 [ 0, %bb.ej ], [ %i.agc, %.critedge17.loopexit ]
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.critedge17
  %.0.i1203 = phi i32 [ 0, %.critedge17 ], [ %i.afg, %bb.ek ] ; 3 uses
  %i.afe = shl nuw i32 1, %.0.i1203
  %i.aff = icmp slt i32 %i.afe, %storemerge.lcssa
  %i.afg = add nuw nsw i32 %.0.i1203, 1
  br i1 %i.aff, label %bb.ek, label %tile_log2.exit1204

tile_log2.exit1204:                               ; preds = %bb.ek
  %i.afh = trunc i32 %.0.i1203 to i8
  %i.afi = getelementptr inbounds nuw i8, ptr %i.e, i64 444
  store i8 %i.afh, ptr %i.afi, align 4, !tbaa !115
  %.not1061 = icmp eq i32 %i.aai, 0
  %i.afj = add nuw nsw i32 %i.aai, 1
  %i.afk = select i1 %.not1061, i32 0, i32 %i.afj
  %.0959 = ashr i32 %i.aad, %i.afk
  %i.afl = sdiv i32 %.0959, %.0960.lcssa
  %i.afm = tail call noundef i32 @llvm.smax.i32(i32 %i.afl, i32 1)
  %i.afn = getelementptr inbounds nuw i8, ptr %i.e, i64 449 ; 3 uses
  store i8 0, ptr %i.afn, align 1, !tbaa !111
  %i.afo = icmp sgt i32 %i.zs, 0
  br i1 %i.afo, label %.lr.ph1378, label %.critedge19

.lr.ph1378:                                       ; preds = %tile_log2.exit1204
  %i.afp = getelementptr inbounds nuw i8, ptr %i.e, i64 580
  br label %bb.ep

bb.el:                                            ; preds = %.lr.ph1374, %bb.en
  %i.afq = phi i8 [ 0, %.lr.ph1374 ], [ %i.agd, %bb.en ]
  %.09581372 = phi i32 [ 0, %.lr.ph1374 ], [ %i.agb, %bb.en ] ; 3 uses
  %.09601371 = phi i32 [ 0, %.lr.ph1374 ], [ %i.agc, %bb.en ]
  %i.afr = sub nsw i32 %i.ze, %.09581372
  %i.afs = tail call noundef i32 @llvm.smin.i32(i32 %i.afr, i32 %i.zh) ; 2 uses
  %i.aft = icmp samesign ugt i32 %i.afs, 1
  br i1 %i.aft, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.afu = tail call i32 @dav1d_get_uniform(ptr noundef nonnull %1, i32 noundef %i.afs) #12
  %i.afv = add i32 %i.afu, 1
  %.pre1539 = load i8, ptr %i.afa, align 1, !tbaa !110
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %i.afw = phi i8 [ %.pre1539, %bb.em ], [ %i.afq, %bb.el ] ; 2 uses
  %i.afx = phi i32 [ %i.afv, %bb.em ], [ 1, %bb.el ] ; 2 uses
  %i.afy = trunc i32 %.09581372 to i16
  %i.afz = zext i8 %i.afw to i64
  %i.aga = getelementptr inbounds nuw [2 x i8], ptr %i.afc, i64 %i.afz
  store i16 %i.afy, ptr %i.aga, align 2, !tbaa !107
  %i.agb = add nsw i32 %i.afx, %.09581372         ; 2 uses
  %i.agc = tail call noundef i32 @llvm.smax.i32(i32 %.09601371, i32 %i.afx) ; 2 uses
  %i.agd = add i8 %i.afw, 1                       ; 4 uses
  store i8 %i.agd, ptr %i.afa, align 1, !tbaa !110
  %i.age = icmp slt i32 %i.agb, %i.ze
  %i.agf = icmp ult i8 %i.agd, 64
  %or.cond1305 = and i1 %i.agf, %i.age
  br i1 %or.cond1305, label %bb.el, label %.critedge17.loopexit

.critedge19:                                      ; preds = %bb.er, %tile_log2.exit1204
  %storemerge1062.lcssa = phi i8 [ 0, %tile_log2.exit1204 ], [ %i.agy, %bb.er ] ; 2 uses
  %i.agg = zext i8 %storemerge1062.lcssa to i32
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %.critedge19
  %.0.i1205 = phi i32 [ 0, %.critedge19 ], [ %i.agj, %bb.eo ] ; 3 uses
  %i.agh = shl nuw i32 1, %.0.i1205
  %i.agi = icmp slt i32 %i.agh, %i.agg
  %i.agj = add nuw nsw i32 %.0.i1205, 1
  br i1 %i.agi, label %bb.eo, label %tile_log2.exit1206

tile_log2.exit1206:                               ; preds = %bb.eo
  %i.agk = trunc i32 %.0.i1205 to i8              ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  store i8 %i.agk, ptr %i.agl, align 8, !tbaa !116
  br label %bb.es

end_hunk_0
