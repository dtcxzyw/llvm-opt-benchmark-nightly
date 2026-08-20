inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_Z14lodepng_decodePPhPjS1_P12LodePNGStatePKhm:bb.a
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i85.i.i

_ZL22setBitOfReversedStreamPmPhh.exit.i85.i.i:    ; preds = %bb.di, %bb.dh
  %.sink.i.i86.i.i = phi i8 [ %i.xg, %bb.di ], [ %i.xc, %bb.dh ]
  store i8 %.sink.i.i86.i.i, ptr %i.ww, align 1, !tbaa !20
  %i.xh = add nuw i64 %.119.i83.i.i, 1            ; 2 uses
  %exitcond.not.i87.i.i = icmp eq i64 %i.xh, %i.wl
  br i1 %exitcond.not.i87.i.i, label %._crit_edge.i88.i.i, label %bb.dg, !llvm.loop !545

._crit_edge.i88.i.i:                              ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i85.i.i
  %i.xi = add nuw i64 %.01622.i82.i.i, %i.wi
  %i.xj = add nuw i32 %.024.i80.i.i, 1            ; 2 uses
  %exitcond27.not.i89.i.i = icmp eq i32 %i.xj, %i.vz
  br i1 %exitcond27.not.i89.i.i, label %_ZL17removePaddingBitsPhPKhmmj.exit90.i.i, label %.preheader.i79.i.i, !llvm.loop !546

_ZL17removePaddingBitsPhPKhmmj.exit90.i.i:        ; preds = %._crit_edge.i88.i.i, %bb.df, %bb.de
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i372.i = icmp eq i64 %indvars.iv.next.i.i, 7
  br i1 %.not.i372.i, label %bb.dj, label %bb.dd, !llvm.loop !547

bb.dj:                                            ; preds = %_ZL17removePaddingBitsPhPKhmmj.exit90.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  call fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.ty, i32 noundef %i.tz, i32 noundef range(i32 1, 0) %.0.i.i.i.i371.i)
  %i.xk = icmp ugt i32 %.0.i.i.i.i371.i, 7
  br i1 %i.xk, label %.preheader80.split.us.preheader.i.i.i, label %.preheader82.i.i.i

.preheader82.i.i.i:                               ; preds = %bb.dj
  %i.xl = mul i32 %.0.i.i.i.i371.i, %i.ty
  %i.xm = zext i32 %i.xl to i64
  %i.xn = zext nneg i32 %.0.i.i.i.i371.i to i64
  %exitcond.not.i94.i.i = icmp eq i32 %.0.i.i.i.i371.i, 1
  %exitcond.not.i94.i.i.1 = icmp eq i32 %.0.i.i.i.i371.i, 2
  %exitcond.not.i94.i.i.2 = icmp eq i32 %.0.i.i.i.i371.i, 3
  %exitcond.not.i94.i.i.3 = icmp eq i32 %.0.i.i.i.i371.i, 4
  %exitcond.not.i94.i.i.4 = icmp eq i32 %.0.i.i.i.i371.i, 5
  %exitcond.not.i94.i.i.5 = icmp eq i32 %.0.i.i.i.i371.i, 6
  br label %bb.dk

.preheader80.split.us.preheader.i.i.i:            ; preds = %bb.dj
  %i.xo = lshr i32 %.0.i.i.i.i371.i, 3
  %i.xp = zext nneg i32 %i.xo to i64              ; 97 uses
  %i.xq = zext i32 %i.ty to i64                   ; 17 uses
  %i.xr = load i32, ptr %i.b, align 16, !tbaa !13 ; 2 uses
  %.not105.i.i.i = icmp eq i32 %i.xr, 0
  br i1 %.not105.i.i.i, label %._crit_edge98.split.us.i.i.i, label %.preheader.lr.ph.us.i.i.i

iter.check:                                       ; preds = %._crit_edge93.us.i.i.i, %.preheader.us.i.i.i
  %indvars.iv128.i.i.i = phi i64 [ %indvars.iv.next129.i.i.i, %._crit_edge93.us.i.i.i ], [ 0, %.preheader.us.i.i.i ] ; 5 uses
  %i.xs = trunc nuw i64 %indvars.iv128.i.i.i to i32
  %i.xt = add i32 %i.ann, %i.xs
  %i.xu = zext i32 %i.xt to i64
  %i.xv = mul nuw nsw i64 %i.xu, %i.xp
  %reass.add.i.i = add nuw i64 %indvars.iv128.i.i.i, %i.ano
  %i.xw = mul i64 %reass.mul.i.i, %reass.add.i.i
  %i.xx = getelementptr i8, ptr %i.anr, i64 %i.xv ; 7 uses
  %i.xy = getelementptr i8, ptr %i.tu, i64 %i.xw  ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.xz = mul i64 %i.anu, %indvars.iv128.i.i.i
  %i.ya = add i64 %i.ank, %i.xz
  %i.yb = add i64 %i.anl, %indvars.iv128.i.i.i
  %i.yc = and i64 %i.yb, 4294967295
  %i.yd = mul nuw nsw i64 %i.yc, %i.xp
  %i.ye = add i64 %i.anv, %i.yd
  %i.yf = sub i64 %i.ye, %i.ya
  %diff.check = icmp ugt i64 %i.yf, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check203, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.yg = getelementptr i8, ptr %i.xx, i64 %index ; 2 uses
  %i.yh = getelementptr i8, ptr %i.yg, i64 16
  %wide.load = load <16 x i8>, ptr %i.yg, align 1, !tbaa !20
  %wide.load204 = load <16 x i8>, ptr %i.yh, align 1, !tbaa !20
  %i.yi = getelementptr i8, ptr %i.xy, i64 %index ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yi, i64 16
  store <16 x i8> %wide.load, ptr %i.yi, align 1, !tbaa !20
  store <16 x i8> %wide.load204, ptr %i.yj, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.yk = icmp eq i64 %index.next, %n.vec
  br i1 %i.yk, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge93.us.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !186

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index206 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next208, %vec.epilog.vector.body ] ; 3 uses
  %i.yl = getelementptr i8, ptr %i.xx, i64 %index206
  %wide.load207 = load <4 x i8>, ptr %i.yl, align 1, !tbaa !20
  %i.ym = getelementptr i8, ptr %i.xy, i64 %index206
  store <4 x i8> %wide.load207, ptr %i.ym, align 1, !tbaa !20
  %index.next208 = add nuw i64 %index206, 4       ; 2 uses
  %i.yn = icmp eq i64 %index.next208, %n.vec205
  br i1 %i.yn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !549

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n209, label %._crit_edge93.us.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv123.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec205, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod418.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv123.i.i.i.prol = phi i64 [ %indvars.iv.next124.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv123.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.yo = getelementptr i8, ptr %i.xx, i64 %indvars.iv123.i.i.i.prol
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !20
  %i.yq = getelementptr i8, ptr %i.xy, i64 %indvars.iv123.i.i.i.prol
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !20
  %indvars.iv.next124.i.i.i.prol = add nuw nsw i64 %indvars.iv123.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter417
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !550

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv123.i.i.i.unr = phi i64 [ %indvars.iv123.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next124.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.yr = sub nsw i64 %indvars.iv123.i.i.i.ph, %i.xp
  %i.ys = icmp ugt i64 %i.yr, -4
  br i1 %i.ys, label %._crit_edge93.us.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv123.i.i.i = phi i64 [ %indvars.iv.next124.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv123.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.yt = getelementptr i8, ptr %i.xx, i64 %indvars.iv123.i.i.i
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !20
  %i.yv = getelementptr i8, ptr %i.xy, i64 %indvars.iv123.i.i.i
  store i8 %i.yu, ptr %i.yv, align 1, !tbaa !20
  %indvars.iv.next124.i.i.i = add nuw nsw i64 %indvars.iv123.i.i.i, 1 ; 2 uses
  %i.yw = getelementptr i8, ptr %i.xx, i64 %indvars.iv.next124.i.i.i
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !20
  %i.yy = getelementptr i8, ptr %i.xy, i64 %indvars.iv.next124.i.i.i
  store i8 %i.yx, ptr %i.yy, align 1, !tbaa !20
  %indvars.iv.next124.i.i.i.1 = add nuw nsw i64 %indvars.iv123.i.i.i, 2 ; 2 uses
  %i.yz = getelementptr i8, ptr %i.xx, i64 %indvars.iv.next124.i.i.i.1
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !20
  %i.zb = getelementptr i8, ptr %i.xy, i64 %indvars.iv.next124.i.i.i.1
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !20
  %indvars.iv.next124.i.i.i.2 = add nuw nsw i64 %indvars.iv123.i.i.i, 3 ; 2 uses
  %i.zc = getelementptr i8, ptr %i.xx, i64 %indvars.iv.next124.i.i.i.2
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !20
  %i.ze = getelementptr i8, ptr %i.xy, i64 %indvars.iv.next124.i.i.i.2
  store i8 %i.zd, ptr %i.ze, align 1, !tbaa !20
  %indvars.iv.next124.i.i.i.3 = add nuw nsw i64 %indvars.iv123.i.i.i, 4 ; 2 uses
  %exitcond127.not.i.i.i.3 = icmp eq i64 %indvars.iv.next124.i.i.i.3, %i.xp
  br i1 %exitcond127.not.i.i.i.3, label %._crit_edge93.us.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !551

._crit_edge98.split.us.i.i.i:                     ; preds = %._crit_edge96.us.i.i.i, %.preheader.lr.ph.us.i.i.i, %.preheader80.split.us.preheader.i.i.i
  %i.zf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !13 ; 2 uses
  %.not105.1.i.i.i = icmp eq i32 %i.zg, 0
  br i1 %.not105.1.i.i.i, label %._crit_edge98.split.us.1.i.i.i, label %.preheader.lr.ph.us.1.i.i.i

.preheader.lr.ph.us.1.i.i.i:                      ; preds = %._crit_edge98.split.us.i.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !13 ; 3 uses
  %.not106.1.i.i.i = icmp eq i32 %i.zi, 0
  br i1 %.not106.1.i.i.i, label %._crit_edge98.split.us.1.i.i.i, label %.preheader.lr.ph.split.us.1.i.i.i

.preheader.lr.ph.split.us.1.i.i.i:                ; preds = %.preheader.lr.ph.us.1.i.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !8  ; 2 uses
  %i.zl = getelementptr i8, ptr %i.tw, i64 %i.zk
  %wide.trip.count136.1.i.i.i = zext i32 %i.zg to i64
  %wide.trip.count131.1.i.i.i = zext i32 %i.zi to i64 ; 2 uses
  %i.zm = shl nuw nsw i64 %i.xp, 2
  %i.zn = add i64 %i.zm, %i.tv
  %i.zo = mul nuw nsw i64 %i.xp, %i.xq
  %i.zp = shl nuw i64 %i.zo, 3
  %i.zq = shl nuw nsw i64 %i.xp, 3
  %i.zr = add i64 %i.zk, %i.tx
  %min.iters.check212 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %min.iters.check214 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.zs = and i64 %i.xp, 28
  %n.vec216 = and i64 %i.xp, 536870880            ; 4 uses
  %cmp.n223 = icmp eq i64 %n.vec216, %i.xp
  %min.epilog.iters.check228 = icmp eq i64 %i.zs, 0
  %n.vec230 = and i64 %i.xp, 536870908            ; 3 uses
  %cmp.n236 = icmp eq i64 %n.vec230, %i.xp
  %xtraiter419 = and i64 %i.xp, 3                 ; 2 uses
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  br label %.preheader.us.1.i.i.i

.preheader.us.1.i.i.i:                            ; preds = %._crit_edge96.us.1.i.i.i, %.preheader.lr.ph.split.us.1.i.i.i
  %indvars.iv133.1.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.1.i.i.i ], [ %indvars.iv.next134.1.i.i.i, %._crit_edge96.us.1.i.i.i ] ; 5 uses
  %i.zt = mul i64 %i.zp, %indvars.iv133.1.i.i.i
  %i.zu = add i64 %i.zn, %i.zt
  %i.zv = mul nuw i64 %indvars.iv133.1.i.i.i, %wide.trip.count131.1.i.i.i
  %i.zw = trunc nuw i64 %indvars.iv133.1.i.i.i to i32
  %i.zx = mul i32 %i.zi, %i.zw
  %i.zy = mul nuw i64 %indvars.iv133.1.i.i.i, %i.xq
  br label %iter.check225

iter.check225:                                    ; preds = %._crit_edge93.us.1.i.i.i, %.preheader.us.1.i.i.i
  %indvars.iv128.1.i.i.i = phi i64 [ %indvars.iv.next129.1.i.i.i, %._crit_edge93.us.1.i.i.i ], [ 0, %.preheader.us.1.i.i.i ] ; 5 uses
  %i.zz = trunc nuw i64 %indvars.iv128.1.i.i.i to i32
  %i.aaa = add i32 %i.zx, %i.zz
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = mul nuw nsw i64 %i.aab, %i.xp
  %reass.add97.i.i = add nuw i64 %indvars.iv128.1.i.i.i, %i.zy
  %reass.mul98.i.i = shl i64 %reass.add97.i.i, 3
  %i.aad = or disjoint i64 %reass.mul98.i.i, 4
  %i.aae = mul i64 %i.aad, %i.xp
  %i.aaf = getelementptr i8, ptr %i.zl, i64 %i.aac ; 7 uses
  %i.aag = getelementptr i8, ptr %i.tu, i64 %i.aae ; 7 uses
  br i1 %min.iters.check212, label %vec.epilog.scalar.ph226.preheader, label %vector.memcheck210

vector.memcheck210:                               ; preds = %iter.check225
  %i.aah = mul i64 %i.zq, %indvars.iv128.1.i.i.i
  %i.aai = add i64 %i.zu, %i.aah
  %i.aaj = add i64 %i.zv, %indvars.iv128.1.i.i.i
  %i.aak = and i64 %i.aaj, 4294967295
  %i.aal = mul nuw nsw i64 %i.aak, %i.xp
  %i.aam = add i64 %i.zr, %i.aal
  %i.aan = sub i64 %i.aam, %i.aai
  %diff.check211 = icmp ugt i64 %i.aan, -32
  br i1 %diff.check211, label %vec.epilog.scalar.ph226.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %vector.memcheck210
  br i1 %min.iters.check214, label %vec.epilog.ph229, label %vector.body217

vector.body217:                                   ; preds = %vector.main.loop.iter.check213, %vector.body217
  %index218 = phi i64 [ %index.next221, %vector.body217 ], [ 0, %vector.main.loop.iter.check213 ] ; 3 uses
  %i.aao = getelementptr i8, ptr %i.aaf, i64 %index218 ; 2 uses
  %i.aap = getelementptr i8, ptr %i.aao, i64 16
  %wide.load219 = load <16 x i8>, ptr %i.aao, align 1, !tbaa !20
  %wide.load220 = load <16 x i8>, ptr %i.aap, align 1, !tbaa !20
  %i.aaq = getelementptr i8, ptr %i.aag, i64 %index218 ; 2 uses
  %i.aar = getelementptr i8, ptr %i.aaq, i64 16
  store <16 x i8> %wide.load219, ptr %i.aaq, align 1, !tbaa !20
  store <16 x i8> %wide.load220, ptr %i.aar, align 1, !tbaa !20
  %index.next221 = add nuw i64 %index218, 32      ; 2 uses
  %i.aas = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.aas, label %middle.block222, label %vector.body217, !llvm.loop !552

middle.block222:                                  ; preds = %vector.body217
  br i1 %cmp.n223, label %._crit_edge93.us.1.i.i.i, label %vec.epilog.iter.check227

vec.epilog.iter.check227:                         ; preds = %middle.block222
  br i1 %min.epilog.iters.check228, label %vec.epilog.scalar.ph226.preheader, label %vec.epilog.ph229, !prof !186

vec.epilog.ph229:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check227
  %vec.epilog.resume.val224 = phi i64 [ %n.vec216, %vec.epilog.iter.check227 ], [ 0, %vector.main.loop.iter.check213 ]
  br label %vec.epilog.vector.body231

vec.epilog.vector.body231:                        ; preds = %vec.epilog.vector.body231, %vec.epilog.ph229
  %index232 = phi i64 [ %vec.epilog.resume.val224, %vec.epilog.ph229 ], [ %index.next234, %vec.epilog.vector.body231 ] ; 3 uses
  %i.aat = getelementptr i8, ptr %i.aaf, i64 %index232
  %wide.load233 = load <4 x i8>, ptr %i.aat, align 1, !tbaa !20
  %i.aau = getelementptr i8, ptr %i.aag, i64 %index232
  store <4 x i8> %wide.load233, ptr %i.aau, align 1, !tbaa !20
  %index.next234 = add nuw i64 %index232, 4       ; 2 uses
  %i.aav = icmp eq i64 %index.next234, %n.vec230
  br i1 %i.aav, label %vec.epilog.middle.block235, label %vec.epilog.vector.body231, !llvm.loop !553

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body231
  br i1 %cmp.n236, label %._crit_edge93.us.1.i.i.i, label %vec.epilog.scalar.ph226.preheader

vec.epilog.scalar.ph226.preheader:                ; preds = %vector.memcheck210, %iter.check225, %vec.epilog.iter.check227, %vec.epilog.middle.block235
  %indvars.iv123.1.i.i.i.ph = phi i64 [ 0, %iter.check225 ], [ 0, %vector.memcheck210 ], [ %n.vec216, %vec.epilog.iter.check227 ], [ %n.vec230, %vec.epilog.middle.block235 ] ; 3 uses
  br i1 %lcmp.mod420.not, label %vec.epilog.scalar.ph226.prol.loopexit, label %vec.epilog.scalar.ph226.prol

vec.epilog.scalar.ph226.prol:                     ; preds = %vec.epilog.scalar.ph226.preheader, %vec.epilog.scalar.ph226.prol
  %indvars.iv123.1.i.i.i.prol = phi i64 [ %indvars.iv.next124.1.i.i.i.prol, %vec.epilog.scalar.ph226.prol ], [ %indvars.iv123.1.i.i.i.ph, %vec.epilog.scalar.ph226.preheader ] ; 3 uses
  %prol.iter421 = phi i64 [ %prol.iter421.next, %vec.epilog.scalar.ph226.prol ], [ 0, %vec.epilog.scalar.ph226.preheader ]
  %i.aaw = getelementptr i8, ptr %i.aaf, i64 %indvars.iv123.1.i.i.i.prol
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !20
  %i.aay = getelementptr i8, ptr %i.aag, i64 %indvars.iv123.1.i.i.i.prol
  store i8 %i.aax, ptr %i.aay, align 1, !tbaa !20
  %indvars.iv.next124.1.i.i.i.prol = add nuw nsw i64 %indvars.iv123.1.i.i.i.prol, 1 ; 2 uses
  %prol.iter421.next = add i64 %prol.iter421, 1   ; 2 uses
  %prol.iter421.cmp.not = icmp eq i64 %prol.iter421.next, %xtraiter419
  br i1 %prol.iter421.cmp.not, label %vec.epilog.scalar.ph226.prol.loopexit, label %vec.epilog.scalar.ph226.prol, !llvm.loop !554

vec.epilog.scalar.ph226.prol.loopexit:            ; preds = %vec.epilog.scalar.ph226.prol, %vec.epilog.scalar.ph226.preheader
  %indvars.iv123.1.i.i.i.unr = phi i64 [ %indvars.iv123.1.i.i.i.ph, %vec.epilog.scalar.ph226.preheader ], [ %indvars.iv.next124.1.i.i.i.prol, %vec.epilog.scalar.ph226.prol ]
  %i.aaz = sub nsw i64 %indvars.iv123.1.i.i.i.ph, %i.xp
  %i.aba = icmp ugt i64 %i.aaz, -4
  br i1 %i.aba, label %._crit_edge93.us.1.i.i.i, label %vec.epilog.scalar.ph226

vec.epilog.scalar.ph226:                          ; preds = %vec.epilog.scalar.ph226.prol.loopexit, %vec.epilog.scalar.ph226
  %indvars.iv123.1.i.i.i = phi i64 [ %indvars.iv.next124.1.i.i.i.3, %vec.epilog.scalar.ph226 ], [ %indvars.iv123.1.i.i.i.unr, %vec.epilog.scalar.ph226.prol.loopexit ] ; 6 uses
  %i.abb = getelementptr i8, ptr %i.aaf, i64 %indvars.iv123.1.i.i.i
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !20
  %i.abd = getelementptr i8, ptr %i.aag, i64 %indvars.iv123.1.i.i.i
  store i8 %i.abc, ptr %i.abd, align 1, !tbaa !20
  %indvars.iv.next124.1.i.i.i = add nuw nsw i64 %indvars.iv123.1.i.i.i, 1 ; 2 uses
  %i.abe = getelementptr i8, ptr %i.aaf, i64 %indvars.iv.next124.1.i.i.i
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !20
  %i.abg = getelementptr i8, ptr %i.aag, i64 %indvars.iv.next124.1.i.i.i
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !20
  %indvars.iv.next124.1.i.i.i.1 = add nuw nsw i64 %indvars.iv123.1.i.i.i, 2 ; 2 uses
  %i.abh = getelementptr i8, ptr %i.aaf, i64 %indvars.iv.next124.1.i.i.i.1
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !20
  %i.abj = getelementptr i8, ptr %i.aag, i64 %indvars.iv.next124.1.i.i.i.1
  store i8 %i.abi, ptr %i.abj, align 1, !tbaa !20
  %indvars.iv.next124.1.i.i.i.2 = add nuw nsw i64 %indvars.iv123.1.i.i.i, 3 ; 2 uses
  %i.abk = getelementptr i8, ptr %i.aaf, i64 %indvars.iv.next124.1.i.i.i.2
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !20
  %i.abm = getelementptr i8, ptr %i.aag, i64 %indvars.iv.next124.1.i.i.i.2
  store i8 %i.abl, ptr %i.abm, align 1, !tbaa !20
  %indvars.iv.next124.1.i.i.i.3 = add nuw nsw i64 %indvars.iv123.1.i.i.i, 4 ; 2 uses
  %exitcond127.1.not.i.i.i.3 = icmp eq i64 %indvars.iv.next124.1.i.i.i.3, %i.xp
  br i1 %exitcond127.1.not.i.i.i.3, label %._crit_edge93.us.1.i.i.i, label %vec.epilog.scalar.ph226, !llvm.loop !555

._crit_edge93.us.1.i.i.i:                         ; preds = %vec.epilog.scalar.ph226.prol.loopexit, %vec.epilog.scalar.ph226, %vec.epilog.middle.block235, %middle.block222
  %indvars.iv.next129.1.i.i.i = add nuw nsw i64 %indvars.iv128.1.i.i.i, 1 ; 2 uses
  %exitcond132.1.not.i.i.i = icmp eq i64 %indvars.iv.next129.1.i.i.i, %wide.trip.count131.1.i.i.i
  br i1 %exitcond132.1.not.i.i.i, label %._crit_edge96.us.1.i.i.i, label %iter.check225, !llvm.loop !556

._crit_edge96.us.1.i.i.i:                         ; preds = %._crit_edge93.us.1.i.i.i
  %indvars.iv.next134.1.i.i.i = add nuw nsw i64 %indvars.iv133.1.i.i.i, 1 ; 2 uses
  %exitcond137.1.not.i.i.i = icmp eq i64 %indvars.iv.next134.1.i.i.i, %wide.trip.count136.1.i.i.i
  br i1 %exitcond137.1.not.i.i.i, label %._crit_edge98.split.us.1.i.i.i, label %.preheader.us.1.i.i.i, !llvm.loop !557

._crit_edge98.split.us.1.i.i.i:                   ; preds = %._crit_edge96.us.1.i.i.i, %.preheader.lr.ph.us.1.i.i.i, %._crit_edge98.split.us.i.i.i
  %i.abn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.abo = load i32, ptr %i.abn, align 8, !tbaa !13 ; 2 uses
  %.not105.2.i.i.i = icmp eq i32 %i.abo, 0
  br i1 %.not105.2.i.i.i, label %._crit_edge98.split.us.2.i.i.i, label %.preheader.lr.ph.us.2.i.i.i

.preheader.lr.ph.us.2.i.i.i:                      ; preds = %._crit_edge98.split.us.1.i.i.i
  %i.abp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !13 ; 3 uses
  %.not106.2.i.i.i = icmp eq i32 %i.abq, 0
  br i1 %.not106.2.i.i.i, label %._crit_edge98.split.us.2.i.i.i, label %.preheader.lr.ph.split.us.2.i.i.i

.preheader.lr.ph.split.us.2.i.i.i:                ; preds = %.preheader.lr.ph.us.2.i.i.i
  %i.abr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.abs = load i64, ptr %i.abr, align 16, !tbaa !8 ; 2 uses
  %i.abt = getelementptr i8, ptr %i.tw, i64 %i.abs
  %wide.trip.count136.2.i.i.i = zext i32 %i.abo to i64
  %wide.trip.count131.2.i.i.i = zext i32 %i.abq to i64 ; 2 uses
  %i.abu = mul nuw nsw i64 %i.xp, %i.xq
  %i.abv = shl nuw nsw i64 %i.abu, 2
  %i.abw = add i64 %i.abv, %i.tv
  %i.abx = mul nuw nsw i64 %i.xp, %i.xq
  %i.aby = shl nuw i64 %i.abx, 3
  %i.abz = shl nuw nsw i64 %i.xp, 2
  %i.aca = add i64 %i.abs, %i.tx
  %min.iters.check240 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %min.iters.check242 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.acb = and i64 %i.xp, 28
  %n.vec244 = and i64 %i.xp, 536870880            ; 4 uses
  %cmp.n251 = icmp eq i64 %n.vec244, %i.xp
  %min.epilog.iters.check256 = icmp eq i64 %i.acb, 0
  %n.vec258 = and i64 %i.xp, 536870908            ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec258, %i.xp
  %xtraiter422 = and i64 %i.xp, 3                 ; 2 uses
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br label %.preheader.us.2.i.i.i

.preheader.us.2.i.i.i:                            ; preds = %._crit_edge96.us.2.i.i.i, %.preheader.lr.ph.split.us.2.i.i.i
  %indvars.iv133.2.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.2.i.i.i ], [ %indvars.iv.next134.2.i.i.i, %._crit_edge96.us.2.i.i.i ] ; 5 uses
  %i.acc = mul i64 %i.aby, %indvars.iv133.2.i.i.i
  %i.acd = add i64 %i.abw, %i.acc
  %i.ace = mul nuw i64 %indvars.iv133.2.i.i.i, %wide.trip.count131.2.i.i.i
  %i.acf = trunc nuw i64 %indvars.iv133.2.i.i.i to i32
  %i.acg = mul i32 %i.abq, %i.acf
  %i.ach = shl nuw nsw i64 %indvars.iv133.2.i.i.i, 3
  %i.aci = or disjoint i64 %i.ach, 4
  %i.acj = mul i64 %i.aci, %i.xq
  br label %iter.check253

iter.check253:                                    ; preds = %._crit_edge93.us.2.i.i.i, %.preheader.us.2.i.i.i
  %indvars.iv128.2.i.i.i = phi i64 [ %indvars.iv.next129.2.i.i.i, %._crit_edge93.us.2.i.i.i ], [ 0, %.preheader.us.2.i.i.i ] ; 5 uses
  %i.ack = trunc nuw i64 %indvars.iv128.2.i.i.i to i32
  %i.acl = add i32 %i.acg, %i.ack
  %i.acm = zext i32 %i.acl to i64
  %i.acn = mul nuw nsw i64 %i.acm, %i.xp
  %i.aco = shl nuw nsw i64 %indvars.iv128.2.i.i.i, 2
  %i.acp = add i64 %i.aco, %i.acj
  %i.acq = mul i64 %i.acp, %i.xp
  %i.acr = getelementptr i8, ptr %i.abt, i64 %i.acn ; 7 uses
  %i.acs = getelementptr i8, ptr %i.tu, i64 %i.acq ; 7 uses
  br i1 %min.iters.check240, label %vec.epilog.scalar.ph254.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %iter.check253
  %i.act = mul i64 %i.abz, %indvars.iv128.2.i.i.i
  %i.acu = add i64 %i.acd, %i.act
  %i.acv = add i64 %i.ace, %indvars.iv128.2.i.i.i
  %i.acw = and i64 %i.acv, 4294967295
  %i.acx = mul nuw nsw i64 %i.acw, %i.xp
  %i.acy = add i64 %i.aca, %i.acx
  %i.acz = sub i64 %i.acy, %i.acu
  %diff.check239 = icmp ugt i64 %i.acz, -32
  br i1 %diff.check239, label %vec.epilog.scalar.ph254.preheader, label %vector.main.loop.iter.check241

vector.main.loop.iter.check241:                   ; preds = %vector.memcheck238
  br i1 %min.iters.check242, label %vec.epilog.ph257, label %vector.body245

vector.body245:                                   ; preds = %vector.main.loop.iter.check241, %vector.body245
  %index246 = phi i64 [ %index.next249, %vector.body245 ], [ 0, %vector.main.loop.iter.check241 ] ; 3 uses
  %i.ada = getelementptr i8, ptr %i.acr, i64 %index246 ; 2 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 16
  %wide.load247 = load <16 x i8>, ptr %i.ada, align 1, !tbaa !20
  %wide.load248 = load <16 x i8>, ptr %i.adb, align 1, !tbaa !20
  %i.adc = getelementptr i8, ptr %i.acs, i64 %index246 ; 2 uses
  %i.add = getelementptr i8, ptr %i.adc, i64 16
  store <16 x i8> %wide.load247, ptr %i.adc, align 1, !tbaa !20
  store <16 x i8> %wide.load248, ptr %i.add, align 1, !tbaa !20
  %index.next249 = add nuw i64 %index246, 32      ; 2 uses
  %i.ade = icmp eq i64 %index.next249, %n.vec244
  br i1 %i.ade, label %middle.block250, label %vector.body245, !llvm.loop !558

middle.block250:                                  ; preds = %vector.body245
  br i1 %cmp.n251, label %._crit_edge93.us.2.i.i.i, label %vec.epilog.iter.check255

vec.epilog.iter.check255:                         ; preds = %middle.block250
  br i1 %min.epilog.iters.check256, label %vec.epilog.scalar.ph254.preheader, label %vec.epilog.ph257, !prof !186

vec.epilog.ph257:                                 ; preds = %vector.main.loop.iter.check241, %vec.epilog.iter.check255
  %vec.epilog.resume.val252 = phi i64 [ %n.vec244, %vec.epilog.iter.check255 ], [ 0, %vector.main.loop.iter.check241 ]
  br label %vec.epilog.vector.body259

vec.epilog.vector.body259:                        ; preds = %vec.epilog.vector.body259, %vec.epilog.ph257
  %index260 = phi i64 [ %vec.epilog.resume.val252, %vec.epilog.ph257 ], [ %index.next262, %vec.epilog.vector.body259 ] ; 3 uses
  %i.adf = getelementptr i8, ptr %i.acr, i64 %index260
  %wide.load261 = load <4 x i8>, ptr %i.adf, align 1, !tbaa !20
  %i.adg = getelementptr i8, ptr %i.acs, i64 %index260
  store <4 x i8> %wide.load261, ptr %i.adg, align 1, !tbaa !20
  %index.next262 = add nuw i64 %index260, 4       ; 2 uses
  %i.adh = icmp eq i64 %index.next262, %n.vec258
  br i1 %i.adh, label %vec.epilog.middle.block263, label %vec.epilog.vector.body259, !llvm.loop !559

vec.epilog.middle.block263:                       ; preds = %vec.epilog.vector.body259
  br i1 %cmp.n264, label %._crit_edge93.us.2.i.i.i, label %vec.epilog.scalar.ph254.preheader

vec.epilog.scalar.ph254.preheader:                ; preds = %vector.memcheck238, %iter.check253, %vec.epilog.iter.check255, %vec.epilog.middle.block263
  %indvars.iv123.2.i.i.i.ph = phi i64 [ 0, %iter.check253 ], [ 0, %vector.memcheck238 ], [ %n.vec244, %vec.epilog.iter.check255 ], [ %n.vec258, %vec.epilog.middle.block263 ] ; 3 uses
  br i1 %lcmp.mod423.not, label %vec.epilog.scalar.ph254.prol.loopexit, label %vec.epilog.scalar.ph254.prol

vec.epilog.scalar.ph254.prol:                     ; preds = %vec.epilog.scalar.ph254.preheader, %vec.epilog.scalar.ph254.prol
  %indvars.iv123.2.i.i.i.prol = phi i64 [ %indvars.iv.next124.2.i.i.i.prol, %vec.epilog.scalar.ph254.prol ], [ %indvars.iv123.2.i.i.i.ph, %vec.epilog.scalar.ph254.preheader ] ; 3 uses
  %prol.iter424 = phi i64 [ %prol.iter424.next, %vec.epilog.scalar.ph254.prol ], [ 0, %vec.epilog.scalar.ph254.preheader ]
  %i.adi = getelementptr i8, ptr %i.acr, i64 %indvars.iv123.2.i.i.i.prol
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !20
  %i.adk = getelementptr i8, ptr %i.acs, i64 %indvars.iv123.2.i.i.i.prol
  store i8 %i.adj, ptr %i.adk, align 1, !tbaa !20
  %indvars.iv.next124.2.i.i.i.prol = add nuw nsw i64 %indvars.iv123.2.i.i.i.prol, 1 ; 2 uses
  %prol.iter424.next = add i64 %prol.iter424, 1   ; 2 uses
  %prol.iter424.cmp.not = icmp eq i64 %prol.iter424.next, %xtraiter422
  br i1 %prol.iter424.cmp.not, label %vec.epilog.scalar.ph254.prol.loopexit, label %vec.epilog.scalar.ph254.prol, !llvm.loop !560

vec.epilog.scalar.ph254.prol.loopexit:            ; preds = %vec.epilog.scalar.ph254.prol, %vec.epilog.scalar.ph254.preheader
  %indvars.iv123.2.i.i.i.unr = phi i64 [ %indvars.iv123.2.i.i.i.ph, %vec.epilog.scalar.ph254.preheader ], [ %indvars.iv.next124.2.i.i.i.prol, %vec.epilog.scalar.ph254.prol ]
  %i.adl = sub nsw i64 %indvars.iv123.2.i.i.i.ph, %i.xp
  %i.adm = icmp ugt i64 %i.adl, -4
  br i1 %i.adm, label %._crit_edge93.us.2.i.i.i, label %vec.epilog.scalar.ph254

vec.epilog.scalar.ph254:                          ; preds = %vec.epilog.scalar.ph254.prol.loopexit, %vec.epilog.scalar.ph254
  %indvars.iv123.2.i.i.i = phi i64 [ %indvars.iv.next124.2.i.i.i.3, %vec.epilog.scalar.ph254 ], [ %indvars.iv123.2.i.i.i.unr, %vec.epilog.scalar.ph254.prol.loopexit ] ; 6 uses
  %i.adn = getelementptr i8, ptr %i.acr, i64 %indvars.iv123.2.i.i.i
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !20
  %i.adp = getelementptr i8, ptr %i.acs, i64 %indvars.iv123.2.i.i.i
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !20
  %indvars.iv.next124.2.i.i.i = add nuw nsw i64 %indvars.iv123.2.i.i.i, 1 ; 2 uses
  %i.adq = getelementptr i8, ptr %i.acr, i64 %indvars.iv.next124.2.i.i.i
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !20
  %i.ads = getelementptr i8, ptr %i.acs, i64 %indvars.iv.next124.2.i.i.i
  store i8 %i.adr, ptr %i.ads, align 1, !tbaa !20
  %indvars.iv.next124.2.i.i.i.1 = add nuw nsw i64 %indvars.iv123.2.i.i.i, 2 ; 2 uses
  %i.adt = getelementptr i8, ptr %i.acr, i64 %indvars.iv.next124.2.i.i.i.1
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !20
  %i.adv = getelementptr i8, ptr %i.acs, i64 %indvars.iv.next124.2.i.i.i.1
  store i8 %i.adu, ptr %i.adv, align 1, !tbaa !20
  %indvars.iv.next124.2.i.i.i.2 = add nuw nsw i64 %indvars.iv123.2.i.i.i, 3 ; 2 uses
  %i.adw = getelementptr i8, ptr %i.acr, i64 %indvars.iv.next124.2.i.i.i.2
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !20
  %i.ady = getelementptr i8, ptr %i.acs, i64 %indvars.iv.next124.2.i.i.i.2
  store i8 %i.adx, ptr %i.ady, align 1, !tbaa !20
  %indvars.iv.next124.2.i.i.i.3 = add nuw nsw i64 %indvars.iv123.2.i.i.i, 4 ; 2 uses
  %exitcond127.2.not.i.i.i.3 = icmp eq i64 %indvars.iv.next124.2.i.i.i.3, %i.xp
  br i1 %exitcond127.2.not.i.i.i.3, label %._crit_edge93.us.2.i.i.i, label %vec.epilog.scalar.ph254, !llvm.loop !561

._crit_edge93.us.2.i.i.i:                         ; preds = %vec.epilog.scalar.ph254.prol.loopexit, %vec.epilog.scalar.ph254, %vec.epilog.middle.block263, %middle.block250
  %indvars.iv.next129.2.i.i.i = add nuw nsw i64 %indvars.iv128.2.i.i.i, 1 ; 2 uses
  %exitcond132.2.not.i.i.i = icmp eq i64 %indvars.iv.next129.2.i.i.i, %wide.trip.count131.2.i.i.i
  br i1 %exitcond132.2.not.i.i.i, label %._crit_edge96.us.2.i.i.i, label %iter.check253, !llvm.loop !556

._crit_edge96.us.2.i.i.i:                         ; preds = %._crit_edge93.us.2.i.i.i
  %indvars.iv.next134.2.i.i.i = add nuw nsw i64 %indvars.iv133.2.i.i.i, 1 ; 2 uses
  %exitcond137.2.not.i.i.i = icmp eq i64 %indvars.iv.next134.2.i.i.i, %wide.trip.count136.2.i.i.i
  br i1 %exitcond137.2.not.i.i.i, label %._crit_edge98.split.us.2.i.i.i, label %.preheader.us.2.i.i.i, !llvm.loop !557

._crit_edge98.split.us.2.i.i.i:                   ; preds = %._crit_edge96.us.2.i.i.i, %.preheader.lr.ph.us.2.i.i.i, %._crit_edge98.split.us.1.i.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !13 ; 2 uses
  %.not105.3.i.i.i = icmp eq i32 %i.aea, 0
  br i1 %.not105.3.i.i.i, label %._crit_edge98.split.us.3.i.i.i, label %.preheader.lr.ph.us.3.i.i.i

.preheader.lr.ph.us.3.i.i.i:                      ; preds = %._crit_edge98.split.us.2.i.i.i
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !13 ; 3 uses
  %.not106.3.i.i.i = icmp eq i32 %i.aec, 0
  br i1 %.not106.3.i.i.i, label %._crit_edge98.split.us.3.i.i.i, label %.preheader.lr.ph.split.us.3.i.i.i

.preheader.lr.ph.split.us.3.i.i.i:                ; preds = %.preheader.lr.ph.us.3.i.i.i
  %i.aed = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !8 ; 2 uses
  %i.aef = getelementptr i8, ptr %i.tw, i64 %i.aee
  %wide.trip.count136.3.i.i.i = zext i32 %i.aea to i64
  %wide.trip.count131.3.i.i.i = zext i32 %i.aec to i64 ; 2 uses
  %i.aeg = shl nuw nsw i64 %i.xp, 1
  %i.aeh = add i64 %i.aeg, %i.tv
  %i.aei = mul nuw nsw i64 %i.xp, %i.xq
  %i.aej = shl nuw nsw i64 %i.aei, 2
  %i.aek = shl nuw nsw i64 %i.xp, 2
  %i.ael = add i64 %i.aee, %i.tx
  %min.iters.check268 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %min.iters.check270 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.aem = and i64 %i.xp, 28
  %n.vec272 = and i64 %i.xp, 536870880            ; 4 uses
  %cmp.n279 = icmp eq i64 %n.vec272, %i.xp
  %min.epilog.iters.check284 = icmp eq i64 %i.aem, 0
  %n.vec286 = and i64 %i.xp, 536870908            ; 3 uses
  %cmp.n292 = icmp eq i64 %n.vec286, %i.xp
  %xtraiter425 = and i64 %i.xp, 3                 ; 2 uses
  %lcmp.mod426.not = icmp eq i64 %xtraiter425, 0
  br label %.preheader.us.3.i.i.i

.preheader.us.3.i.i.i:                            ; preds = %._crit_edge96.us.3.i.i.i, %.preheader.lr.ph.split.us.3.i.i.i
  %indvars.iv133.3.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.3.i.i.i ], [ %indvars.iv.next134.3.i.i.i, %._crit_edge96.us.3.i.i.i ] ; 5 uses
  %i.aen = mul i64 %i.aej, %indvars.iv133.3.i.i.i
  %i.aeo = add i64 %i.aeh, %i.aen
  %i.aep = mul nuw i64 %indvars.iv133.3.i.i.i, %wide.trip.count131.3.i.i.i
  %i.aeq = trunc nuw i64 %indvars.iv133.3.i.i.i to i32
  %i.aer = mul i32 %i.aec, %i.aeq
  %i.aes = mul nuw i64 %indvars.iv133.3.i.i.i, %i.xq
  br label %iter.check281

iter.check281:                                    ; preds = %._crit_edge93.us.3.i.i.i, %.preheader.us.3.i.i.i
  %indvars.iv128.3.i.i.i = phi i64 [ %indvars.iv.next129.3.i.i.i, %._crit_edge93.us.3.i.i.i ], [ 0, %.preheader.us.3.i.i.i ] ; 5 uses
  %i.aet = trunc nuw i64 %indvars.iv128.3.i.i.i to i32
  %i.aeu = add i32 %i.aer, %i.aet
  %i.aev = zext i32 %i.aeu to i64
  %i.aew = mul nuw nsw i64 %i.aev, %i.xp
  %reass.add99.i.i = add nuw i64 %indvars.iv128.3.i.i.i, %i.aes
  %reass.mul100.i.i = shl i64 %reass.add99.i.i, 2
  %i.aex = or disjoint i64 %reass.mul100.i.i, 2
  %i.aey = mul i64 %i.aex, %i.xp
  %i.aez = getelementptr i8, ptr %i.aef, i64 %i.aew ; 7 uses
  %i.afa = getelementptr i8, ptr %i.tu, i64 %i.aey ; 7 uses
  br i1 %min.iters.check268, label %vec.epilog.scalar.ph282.preheader, label %vector.memcheck266

vector.memcheck266:                               ; preds = %iter.check281
  %i.afb = mul i64 %i.aek, %indvars.iv128.3.i.i.i
  %i.afc = add i64 %i.aeo, %i.afb
  %i.afd = add i64 %i.aep, %indvars.iv128.3.i.i.i
  %i.afe = and i64 %i.afd, 4294967295
  %i.aff = mul nuw nsw i64 %i.afe, %i.xp
  %i.afg = add i64 %i.ael, %i.aff
  %i.afh = sub i64 %i.afg, %i.afc
  %diff.check267 = icmp ugt i64 %i.afh, -32
  br i1 %diff.check267, label %vec.epilog.scalar.ph282.preheader, label %vector.main.loop.iter.check269

vector.main.loop.iter.check269:                   ; preds = %vector.memcheck266
  br i1 %min.iters.check270, label %vec.epilog.ph285, label %vector.body273

vector.body273:                                   ; preds = %vector.main.loop.iter.check269, %vector.body273
  %index274 = phi i64 [ %index.next277, %vector.body273 ], [ 0, %vector.main.loop.iter.check269 ] ; 3 uses
  %i.afi = getelementptr i8, ptr %i.aez, i64 %index274 ; 2 uses
  %i.afj = getelementptr i8, ptr %i.afi, i64 16
  %wide.load275 = load <16 x i8>, ptr %i.afi, align 1, !tbaa !20
  %wide.load276 = load <16 x i8>, ptr %i.afj, align 1, !tbaa !20
  %i.afk = getelementptr i8, ptr %i.afa, i64 %index274 ; 2 uses
  %i.afl = getelementptr i8, ptr %i.afk, i64 16
  store <16 x i8> %wide.load275, ptr %i.afk, align 1, !tbaa !20
  store <16 x i8> %wide.load276, ptr %i.afl, align 1, !tbaa !20
  %index.next277 = add nuw i64 %index274, 32      ; 2 uses
  %i.afm = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.afm, label %middle.block278, label %vector.body273, !llvm.loop !562

middle.block278:                                  ; preds = %vector.body273
  br i1 %cmp.n279, label %._crit_edge93.us.3.i.i.i, label %vec.epilog.iter.check283

vec.epilog.iter.check283:                         ; preds = %middle.block278
  br i1 %min.epilog.iters.check284, label %vec.epilog.scalar.ph282.preheader, label %vec.epilog.ph285, !prof !186

vec.epilog.ph285:                                 ; preds = %vector.main.loop.iter.check269, %vec.epilog.iter.check283
  %vec.epilog.resume.val280 = phi i64 [ %n.vec272, %vec.epilog.iter.check283 ], [ 0, %vector.main.loop.iter.check269 ]
  br label %vec.epilog.vector.body287

vec.epilog.vector.body287:                        ; preds = %vec.epilog.vector.body287, %vec.epilog.ph285
  %index288 = phi i64 [ %vec.epilog.resume.val280, %vec.epilog.ph285 ], [ %index.next290, %vec.epilog.vector.body287 ] ; 3 uses
  %i.afn = getelementptr i8, ptr %i.aez, i64 %index288
  %wide.load289 = load <4 x i8>, ptr %i.afn, align 1, !tbaa !20
  %i.afo = getelementptr i8, ptr %i.afa, i64 %index288
  store <4 x i8> %wide.load289, ptr %i.afo, align 1, !tbaa !20
  %index.next290 = add nuw i64 %index288, 4       ; 2 uses
  %i.afp = icmp eq i64 %index.next290, %n.vec286
  br i1 %i.afp, label %vec.epilog.middle.block291, label %vec.epilog.vector.body287, !llvm.loop !563

vec.epilog.middle.block291:                       ; preds = %vec.epilog.vector.body287
  br i1 %cmp.n292, label %._crit_edge93.us.3.i.i.i, label %vec.epilog.scalar.ph282.preheader

vec.epilog.scalar.ph282.preheader:                ; preds = %vector.memcheck266, %iter.check281, %vec.epilog.iter.check283, %vec.epilog.middle.block291
  %indvars.iv123.3.i.i.i.ph = phi i64 [ 0, %iter.check281 ], [ 0, %vector.memcheck266 ], [ %n.vec272, %vec.epilog.iter.check283 ], [ %n.vec286, %vec.epilog.middle.block291 ] ; 3 uses
  br i1 %lcmp.mod426.not, label %vec.epilog.scalar.ph282.prol.loopexit, label %vec.epilog.scalar.ph282.prol

vec.epilog.scalar.ph282.prol:                     ; preds = %vec.epilog.scalar.ph282.preheader, %vec.epilog.scalar.ph282.prol
  %indvars.iv123.3.i.i.i.prol = phi i64 [ %indvars.iv.next124.3.i.i.i.prol, %vec.epilog.scalar.ph282.prol ], [ %indvars.iv123.3.i.i.i.ph, %vec.epilog.scalar.ph282.preheader ] ; 3 uses
  %prol.iter427 = phi i64 [ %prol.iter427.next, %vec.epilog.scalar.ph282.prol ], [ 0, %vec.epilog.scalar.ph282.preheader ]
  %i.afq = getelementptr i8, ptr %i.aez, i64 %indvars.iv123.3.i.i.i.prol
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !20
  %i.afs = getelementptr i8, ptr %i.afa, i64 %indvars.iv123.3.i.i.i.prol
  store i8 %i.afr, ptr %i.afs, align 1, !tbaa !20
  %indvars.iv.next124.3.i.i.i.prol = add nuw nsw i64 %indvars.iv123.3.i.i.i.prol, 1 ; 2 uses
  %prol.iter427.next = add i64 %prol.iter427, 1   ; 2 uses
  %prol.iter427.cmp.not = icmp eq i64 %prol.iter427.next, %xtraiter425
  br i1 %prol.iter427.cmp.not, label %vec.epilog.scalar.ph282.prol.loopexit, label %vec.epilog.scalar.ph282.prol, !llvm.loop !564

vec.epilog.scalar.ph282.prol.loopexit:            ; preds = %vec.epilog.scalar.ph282.prol, %vec.epilog.scalar.ph282.preheader
  %indvars.iv123.3.i.i.i.unr = phi i64 [ %indvars.iv123.3.i.i.i.ph, %vec.epilog.scalar.ph282.preheader ], [ %indvars.iv.next124.3.i.i.i.prol, %vec.epilog.scalar.ph282.prol ]
  %i.aft = sub nsw i64 %indvars.iv123.3.i.i.i.ph, %i.xp
  %i.afu = icmp ugt i64 %i.aft, -4
  br i1 %i.afu, label %._crit_edge93.us.3.i.i.i, label %vec.epilog.scalar.ph282

vec.epilog.scalar.ph282:                          ; preds = %vec.epilog.scalar.ph282.prol.loopexit, %vec.epilog.scalar.ph282
  %indvars.iv123.3.i.i.i = phi i64 [ %indvars.iv.next124.3.i.i.i.3, %vec.epilog.scalar.ph282 ], [ %indvars.iv123.3.i.i.i.unr, %vec.epilog.scalar.ph282.prol.loopexit ] ; 6 uses
  %i.afv = getelementptr i8, ptr %i.aez, i64 %indvars.iv123.3.i.i.i
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !20
  %i.afx = getelementptr i8, ptr %i.afa, i64 %indvars.iv123.3.i.i.i
  store i8 %i.afw, ptr %i.afx, align 1, !tbaa !20
  %indvars.iv.next124.3.i.i.i = add nuw nsw i64 %indvars.iv123.3.i.i.i, 1 ; 2 uses
  %i.afy = getelementptr i8, ptr %i.aez, i64 %indvars.iv.next124.3.i.i.i
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !20
  %i.aga = getelementptr i8, ptr %i.afa, i64 %indvars.iv.next124.3.i.i.i
  store i8 %i.afz, ptr %i.aga, align 1, !tbaa !20
  %indvars.iv.next124.3.i.i.i.1 = add nuw nsw i64 %indvars.iv123.3.i.i.i, 2 ; 2 uses
  %i.agb = getelementptr i8, ptr %i.aez, i64 %indvars.iv.next124.3.i.i.i.1
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !20
  %i.agd = getelementptr i8, ptr %i.afa, i64 %indvars.iv.next124.3.i.i.i.1
  store i8 %i.agc, ptr %i.agd, align 1, !tbaa !20
  %indvars.iv.next124.3.i.i.i.2 = add nuw nsw i64 %indvars.iv123.3.i.i.i, 3 ; 2 uses
  %i.age = getelementptr i8, ptr %i.aez, i64 %indvars.iv.next124.3.i.i.i.2
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !20
  %i.agg = getelementptr i8, ptr %i.afa, i64 %indvars.iv.next124.3.i.i.i.2
  store i8 %i.agf, ptr %i.agg, align 1, !tbaa !20
  %indvars.iv.next124.3.i.i.i.3 = add nuw nsw i64 %indvars.iv123.3.i.i.i, 4 ; 2 uses
  %exitcond127.3.not.i.i.i.3 = icmp eq i64 %indvars.iv.next124.3.i.i.i.3, %i.xp
  br i1 %exitcond127.3.not.i.i.i.3, label %._crit_edge93.us.3.i.i.i, label %vec.epilog.scalar.ph282, !llvm.loop !565

._crit_edge93.us.3.i.i.i:                         ; preds = %vec.epilog.scalar.ph282.prol.loopexit, %vec.epilog.scalar.ph282, %vec.epilog.middle.block291, %middle.block278
  %indvars.iv.next129.3.i.i.i = add nuw nsw i64 %indvars.iv128.3.i.i.i, 1 ; 2 uses
  %exitcond132.3.not.i.i.i = icmp eq i64 %indvars.iv.next129.3.i.i.i, %wide.trip.count131.3.i.i.i
  br i1 %exitcond132.3.not.i.i.i, label %._crit_edge96.us.3.i.i.i, label %iter.check281, !llvm.loop !556

._crit_edge96.us.3.i.i.i:                         ; preds = %._crit_edge93.us.3.i.i.i
  %indvars.iv.next134.3.i.i.i = add nuw nsw i64 %indvars.iv133.3.i.i.i, 1 ; 2 uses
  %exitcond137.3.not.i.i.i = icmp eq i64 %indvars.iv.next134.3.i.i.i, %wide.trip.count136.3.i.i.i
  br i1 %exitcond137.3.not.i.i.i, label %._crit_edge98.split.us.3.i.i.i, label %.preheader.us.3.i.i.i, !llvm.loop !557

._crit_edge98.split.us.3.i.i.i:                   ; preds = %._crit_edge96.us.3.i.i.i, %.preheader.lr.ph.us.3.i.i.i, %._crit_edge98.split.us.2.i.i.i
  %i.agh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.agi = load i32, ptr %i.agh, align 16, !tbaa !13 ; 2 uses
  %.not105.4.i.i.i = icmp eq i32 %i.agi, 0
  br i1 %.not105.4.i.i.i, label %._crit_edge98.split.us.4.i.i.i, label %.preheader.lr.ph.us.4.i.i.i

.preheader.lr.ph.us.4.i.i.i:                      ; preds = %._crit_edge98.split.us.3.i.i.i
  %i.agj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.agk = load i32, ptr %i.agj, align 16, !tbaa !13 ; 3 uses
  %.not106.4.i.i.i = icmp eq i32 %i.agk, 0
  br i1 %.not106.4.i.i.i, label %._crit_edge98.split.us.4.i.i.i, label %.preheader.lr.ph.split.us.4.i.i.i

.preheader.lr.ph.split.us.4.i.i.i:                ; preds = %.preheader.lr.ph.us.4.i.i.i
  %i.agl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.agm = load i64, ptr %i.agl, align 16, !tbaa !8 ; 2 uses
  %i.agn = getelementptr i8, ptr %i.tw, i64 %i.agm
  %wide.trip.count136.4.i.i.i = zext i32 %i.agi to i64
  %wide.trip.count131.4.i.i.i = zext i32 %i.agk to i64 ; 2 uses
  %i.ago = mul nuw nsw i64 %i.xp, %i.xq
  %i.agp = shl nuw nsw i64 %i.ago, 1
  %i.agq = add i64 %i.agp, %i.tv
  %i.agr = mul nuw nsw i64 %i.xp, %i.xq
  %i.ags = shl nuw nsw i64 %i.agr, 2
  %i.agt = shl nuw nsw i64 %i.xp, 1
  %i.agu = add i64 %i.agm, %i.tx
  %min.iters.check296 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %min.iters.check298 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.agv = and i64 %i.xp, 28
  %n.vec300 = and i64 %i.xp, 536870880            ; 4 uses
  %cmp.n307 = icmp eq i64 %n.vec300, %i.xp
  %min.epilog.iters.check312 = icmp eq i64 %i.agv, 0
  %n.vec314 = and i64 %i.xp, 536870908            ; 3 uses
  %cmp.n320 = icmp eq i64 %n.vec314, %i.xp
  %xtraiter428 = and i64 %i.xp, 3                 ; 2 uses
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  br label %.preheader.us.4.i.i.i

.preheader.us.4.i.i.i:                            ; preds = %._crit_edge96.us.4.i.i.i, %.preheader.lr.ph.split.us.4.i.i.i
  %indvars.iv133.4.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.4.i.i.i ], [ %indvars.iv.next134.4.i.i.i, %._crit_edge96.us.4.i.i.i ] ; 5 uses
  %i.agw = mul i64 %i.ags, %indvars.iv133.4.i.i.i
  %i.agx = add i64 %i.agq, %i.agw
  %i.agy = mul nuw i64 %indvars.iv133.4.i.i.i, %wide.trip.count131.4.i.i.i
  %i.agz = trunc nuw i64 %indvars.iv133.4.i.i.i to i32
  %i.aha = mul i32 %i.agk, %i.agz
  %i.ahb = shl nuw nsw i64 %indvars.iv133.4.i.i.i, 2
  %i.ahc = or disjoint i64 %i.ahb, 2
  %i.ahd = mul i64 %i.ahc, %i.xq
  br label %iter.check309

iter.check309:                                    ; preds = %._crit_edge93.us.4.i.i.i, %.preheader.us.4.i.i.i
  %indvars.iv128.4.i.i.i = phi i64 [ %indvars.iv.next129.4.i.i.i, %._crit_edge93.us.4.i.i.i ], [ 0, %.preheader.us.4.i.i.i ] ; 5 uses
  %i.ahe = trunc nuw i64 %indvars.iv128.4.i.i.i to i32
  %i.ahf = add i32 %i.aha, %i.ahe
  %i.ahg = zext i32 %i.ahf to i64
  %i.ahh = mul nuw nsw i64 %i.ahg, %i.xp
  %i.ahi = shl nuw nsw i64 %indvars.iv128.4.i.i.i, 1
  %i.ahj = add i64 %i.ahi, %i.ahd
  %i.ahk = mul i64 %i.ahj, %i.xp
  %i.ahl = getelementptr i8, ptr %i.agn, i64 %i.ahh ; 7 uses
  %i.ahm = getelementptr i8, ptr %i.tu, i64 %i.ahk ; 7 uses
  br i1 %min.iters.check296, label %vec.epilog.scalar.ph310.preheader, label %vector.memcheck294

vector.memcheck294:                               ; preds = %iter.check309
  %i.ahn = mul i64 %i.agt, %indvars.iv128.4.i.i.i
  %i.aho = add i64 %i.agx, %i.ahn
  %i.ahp = add i64 %i.agy, %indvars.iv128.4.i.i.i
  %i.ahq = and i64 %i.ahp, 4294967295
  %i.ahr = mul nuw nsw i64 %i.ahq, %i.xp
  %i.ahs = add i64 %i.agu, %i.ahr
  %i.aht = sub i64 %i.ahs, %i.aho
  %diff.check295 = icmp ugt i64 %i.aht, -32
  br i1 %diff.check295, label %vec.epilog.scalar.ph310.preheader, label %vector.main.loop.iter.check297

vector.main.loop.iter.check297:                   ; preds = %vector.memcheck294
  br i1 %min.iters.check298, label %vec.epilog.ph313, label %vector.body301

vector.body301:                                   ; preds = %vector.main.loop.iter.check297, %vector.body301
  %index302 = phi i64 [ %index.next305, %vector.body301 ], [ 0, %vector.main.loop.iter.check297 ] ; 3 uses
  %i.ahu = getelementptr i8, ptr %i.ahl, i64 %index302 ; 2 uses
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 16
  %wide.load303 = load <16 x i8>, ptr %i.ahu, align 1, !tbaa !20
  %wide.load304 = load <16 x i8>, ptr %i.ahv, align 1, !tbaa !20
  %i.ahw = getelementptr i8, ptr %i.ahm, i64 %index302 ; 2 uses
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 16
  store <16 x i8> %wide.load303, ptr %i.ahw, align 1, !tbaa !20
  store <16 x i8> %wide.load304, ptr %i.ahx, align 1, !tbaa !20
  %index.next305 = add nuw i64 %index302, 32      ; 2 uses
  %i.ahy = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.ahy, label %middle.block306, label %vector.body301, !llvm.loop !566

middle.block306:                                  ; preds = %vector.body301
  br i1 %cmp.n307, label %._crit_edge93.us.4.i.i.i, label %vec.epilog.iter.check311

vec.epilog.iter.check311:                         ; preds = %middle.block306
  br i1 %min.epilog.iters.check312, label %vec.epilog.scalar.ph310.preheader, label %vec.epilog.ph313, !prof !186

vec.epilog.ph313:                                 ; preds = %vector.main.loop.iter.check297, %vec.epilog.iter.check311
  %vec.epilog.resume.val308 = phi i64 [ %n.vec300, %vec.epilog.iter.check311 ], [ 0, %vector.main.loop.iter.check297 ]
  br label %vec.epilog.vector.body315

vec.epilog.vector.body315:                        ; preds = %vec.epilog.vector.body315, %vec.epilog.ph313
  %index316 = phi i64 [ %vec.epilog.resume.val308, %vec.epilog.ph313 ], [ %index.next318, %vec.epilog.vector.body315 ] ; 3 uses
  %i.ahz = getelementptr i8, ptr %i.ahl, i64 %index316
  %wide.load317 = load <4 x i8>, ptr %i.ahz, align 1, !tbaa !20
  %i.aia = getelementptr i8, ptr %i.ahm, i64 %index316
  store <4 x i8> %wide.load317, ptr %i.aia, align 1, !tbaa !20
  %index.next318 = add nuw i64 %index316, 4       ; 2 uses
  %i.aib = icmp eq i64 %index.next318, %n.vec314
  br i1 %i.aib, label %vec.epilog.middle.block319, label %vec.epilog.vector.body315, !llvm.loop !567

vec.epilog.middle.block319:                       ; preds = %vec.epilog.vector.body315
  br i1 %cmp.n320, label %._crit_edge93.us.4.i.i.i, label %vec.epilog.scalar.ph310.preheader

vec.epilog.scalar.ph310.preheader:                ; preds = %vector.memcheck294, %iter.check309, %vec.epilog.iter.check311, %vec.epilog.middle.block319
  %indvars.iv123.4.i.i.i.ph = phi i64 [ 0, %iter.check309 ], [ 0, %vector.memcheck294 ], [ %n.vec300, %vec.epilog.iter.check311 ], [ %n.vec314, %vec.epilog.middle.block319 ] ; 3 uses
  br i1 %lcmp.mod429.not, label %vec.epilog.scalar.ph310.prol.loopexit, label %vec.epilog.scalar.ph310.prol

vec.epilog.scalar.ph310.prol:                     ; preds = %vec.epilog.scalar.ph310.preheader, %vec.epilog.scalar.ph310.prol
  %indvars.iv123.4.i.i.i.prol = phi i64 [ %indvars.iv.next124.4.i.i.i.prol, %vec.epilog.scalar.ph310.prol ], [ %indvars.iv123.4.i.i.i.ph, %vec.epilog.scalar.ph310.preheader ] ; 3 uses
  %prol.iter430 = phi i64 [ %prol.iter430.next, %vec.epilog.scalar.ph310.prol ], [ 0, %vec.epilog.scalar.ph310.preheader ]
  %i.aic = getelementptr i8, ptr %i.ahl, i64 %indvars.iv123.4.i.i.i.prol
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !20
  %i.aie = getelementptr i8, ptr %i.ahm, i64 %indvars.iv123.4.i.i.i.prol
  store i8 %i.aid, ptr %i.aie, align 1, !tbaa !20
  %indvars.iv.next124.4.i.i.i.prol = add nuw nsw i64 %indvars.iv123.4.i.i.i.prol, 1 ; 2 uses
  %prol.iter430.next = add i64 %prol.iter430, 1   ; 2 uses
  %prol.iter430.cmp.not = icmp eq i64 %prol.iter430.next, %xtraiter428
  br i1 %prol.iter430.cmp.not, label %vec.epilog.scalar.ph310.prol.loopexit, label %vec.epilog.scalar.ph310.prol, !llvm.loop !568

vec.epilog.scalar.ph310.prol.loopexit:            ; preds = %vec.epilog.scalar.ph310.prol, %vec.epilog.scalar.ph310.preheader
  %indvars.iv123.4.i.i.i.unr = phi i64 [ %indvars.iv123.4.i.i.i.ph, %vec.epilog.scalar.ph310.preheader ], [ %indvars.iv.next124.4.i.i.i.prol, %vec.epilog.scalar.ph310.prol ]
  %i.aif = sub nsw i64 %indvars.iv123.4.i.i.i.ph, %i.xp
  %i.aig = icmp ugt i64 %i.aif, -4
  br i1 %i.aig, label %._crit_edge93.us.4.i.i.i, label %vec.epilog.scalar.ph310

vec.epilog.scalar.ph310:                          ; preds = %vec.epilog.scalar.ph310.prol.loopexit, %vec.epilog.scalar.ph310
  %indvars.iv123.4.i.i.i = phi i64 [ %indvars.iv.next124.4.i.i.i.3, %vec.epilog.scalar.ph310 ], [ %indvars.iv123.4.i.i.i.unr, %vec.epilog.scalar.ph310.prol.loopexit ] ; 6 uses
  %i.aih = getelementptr i8, ptr %i.ahl, i64 %indvars.iv123.4.i.i.i
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !20
  %i.aij = getelementptr i8, ptr %i.ahm, i64 %indvars.iv123.4.i.i.i
  store i8 %i.aii, ptr %i.aij, align 1, !tbaa !20
  %indvars.iv.next124.4.i.i.i = add nuw nsw i64 %indvars.iv123.4.i.i.i, 1 ; 2 uses
  %i.aik = getelementptr i8, ptr %i.ahl, i64 %indvars.iv.next124.4.i.i.i
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !20
  %i.aim = getelementptr i8, ptr %i.ahm, i64 %indvars.iv.next124.4.i.i.i
  store i8 %i.ail, ptr %i.aim, align 1, !tbaa !20
  %indvars.iv.next124.4.i.i.i.1 = add nuw nsw i64 %indvars.iv123.4.i.i.i, 2 ; 2 uses
  %i.ain = getelementptr i8, ptr %i.ahl, i64 %indvars.iv.next124.4.i.i.i.1
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !20
  %i.aip = getelementptr i8, ptr %i.ahm, i64 %indvars.iv.next124.4.i.i.i.1
  store i8 %i.aio, ptr %i.aip, align 1, !tbaa !20
  %indvars.iv.next124.4.i.i.i.2 = add nuw nsw i64 %indvars.iv123.4.i.i.i, 3 ; 2 uses
  %i.aiq = getelementptr i8, ptr %i.ahl, i64 %indvars.iv.next124.4.i.i.i.2
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !20
  %i.ais = getelementptr i8, ptr %i.ahm, i64 %indvars.iv.next124.4.i.i.i.2
  store i8 %i.air, ptr %i.ais, align 1, !tbaa !20
  %indvars.iv.next124.4.i.i.i.3 = add nuw nsw i64 %indvars.iv123.4.i.i.i, 4 ; 2 uses
  %exitcond127.4.not.i.i.i.3 = icmp eq i64 %indvars.iv.next124.4.i.i.i.3, %i.xp
  br i1 %exitcond127.4.not.i.i.i.3, label %._crit_edge93.us.4.i.i.i, label %vec.epilog.scalar.ph310, !llvm.loop !569

._crit_edge93.us.4.i.i.i:                         ; preds = %vec.epilog.scalar.ph310.prol.loopexit, %vec.epilog.scalar.ph310, %vec.epilog.middle.block319, %middle.block306
  %indvars.iv.next129.4.i.i.i = add nuw nsw i64 %indvars.iv128.4.i.i.i, 1 ; 2 uses
  %exitcond132.4.not.i.i.i = icmp eq i64 %indvars.iv.next129.4.i.i.i, %wide.trip.count131.4.i.i.i
  br i1 %exitcond132.4.not.i.i.i, label %._crit_edge96.us.4.i.i.i, label %iter.check309, !llvm.loop !556

._crit_edge96.us.4.i.i.i:                         ; preds = %._crit_edge93.us.4.i.i.i
  %indvars.iv.next134.4.i.i.i = add nuw nsw i64 %indvars.iv133.4.i.i.i, 1 ; 2 uses
  %exitcond137.4.not.i.i.i = icmp eq i64 %indvars.iv.next134.4.i.i.i, %wide.trip.count136.4.i.i.i
  br i1 %exitcond137.4.not.i.i.i, label %._crit_edge98.split.us.4.i.i.i, label %.preheader.us.4.i.i.i, !llvm.loop !557

._crit_edge98.split.us.4.i.i.i:                   ; preds = %._crit_edge96.us.4.i.i.i, %.preheader.lr.ph.us.4.i.i.i, %._crit_edge98.split.us.3.i.i.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !13 ; 2 uses
  %.not105.5.i.i.i = icmp eq i32 %i.aiu, 0
  br i1 %.not105.5.i.i.i, label %._crit_edge98.split.us.5.i.i.i, label %.preheader.lr.ph.us.5.i.i.i

.preheader.lr.ph.us.5.i.i.i:                      ; preds = %._crit_edge98.split.us.4.i.i.i
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !13 ; 3 uses
  %.not106.5.i.i.i = icmp eq i32 %i.aiw, 0
  br i1 %.not106.5.i.i.i, label %._crit_edge98.split.us.5.i.i.i, label %.preheader.lr.ph.split.us.5.i.i.i

.preheader.lr.ph.split.us.5.i.i.i:                ; preds = %.preheader.lr.ph.us.5.i.i.i
  %i.aix = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !8 ; 2 uses
  %i.aiz = getelementptr i8, ptr %i.tw, i64 %i.aiy
  %wide.trip.count136.5.i.i.i = zext i32 %i.aiu to i64
  %wide.trip.count131.5.i.i.i = zext i32 %i.aiw to i64 ; 2 uses
  %i.aja = add i64 %i.tv, %i.xp
  %i.ajb = mul nuw nsw i64 %i.xp, %i.xq
  %i.ajc = shl nuw nsw i64 %i.ajb, 1
  %i.ajd = shl nuw nsw i64 %i.xp, 1
  %i.aje = add i64 %i.aiy, %i.tx
  %min.iters.check324 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %min.iters.check326 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.ajf = and i64 %i.xp, 28
  %n.vec328 = and i64 %i.xp, 536870880            ; 4 uses
  %cmp.n335 = icmp eq i64 %n.vec328, %i.xp
  %min.epilog.iters.check340 = icmp eq i64 %i.ajf, 0
  %n.vec342 = and i64 %i.xp, 536870908            ; 3 uses
  %cmp.n348 = icmp eq i64 %n.vec342, %i.xp
  %xtraiter431 = and i64 %i.xp, 3                 ; 2 uses
  %lcmp.mod432.not = icmp eq i64 %xtraiter431, 0
  br label %.preheader.us.5.i.i.i

.preheader.us.5.i.i.i:                            ; preds = %._crit_edge96.us.5.i.i.i, %.preheader.lr.ph.split.us.5.i.i.i
  %indvars.iv133.5.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.5.i.i.i ], [ %indvars.iv.next134.5.i.i.i, %._crit_edge96.us.5.i.i.i ] ; 5 uses
  %i.ajg = mul i64 %i.ajc, %indvars.iv133.5.i.i.i
  %i.ajh = add i64 %i.aja, %i.ajg
  %i.aji = mul nuw i64 %indvars.iv133.5.i.i.i, %wide.trip.count131.5.i.i.i
  %i.ajj = trunc nuw i64 %indvars.iv133.5.i.i.i to i32
  %i.ajk = mul i32 %i.aiw, %i.ajj
  %i.ajl = mul nuw i64 %indvars.iv133.5.i.i.i, %i.xq
  br label %iter.check337

iter.check337:                                    ; preds = %._crit_edge93.us.5.i.i.i, %.preheader.us.5.i.i.i
  %indvars.iv128.5.i.i.i = phi i64 [ %indvars.iv.next129.5.i.i.i, %._crit_edge93.us.5.i.i.i ], [ 0, %.preheader.us.5.i.i.i ] ; 5 uses
  %i.ajm = trunc nuw i64 %indvars.iv128.5.i.i.i to i32
  %i.ajn = add i32 %i.ajk, %i.ajm
  %i.ajo = zext i32 %i.ajn to i64
  %i.ajp = mul nuw nsw i64 %i.ajo, %i.xp
  %reass.add101.i.i = add nuw i64 %indvars.iv128.5.i.i.i, %i.ajl
  %reass.mul102.i.i = shl i64 %reass.add101.i.i, 1
  %i.ajq = or disjoint i64 %reass.mul102.i.i, 1
  %i.ajr = mul i64 %i.ajq, %i.xp
  %i.ajs = getelementptr i8, ptr %i.aiz, i64 %i.ajp ; 7 uses
  %i.ajt = getelementptr i8, ptr %i.tu, i64 %i.ajr ; 7 uses
  br i1 %min.iters.check324, label %vec.epilog.scalar.ph338.preheader, label %vector.memcheck322

vector.memcheck322:                               ; preds = %iter.check337
  %i.aju = mul i64 %i.ajd, %indvars.iv128.5.i.i.i
  %i.ajv = add i64 %i.ajh, %i.aju
  %i.ajw = add i64 %i.aji, %indvars.iv128.5.i.i.i
  %i.ajx = and i64 %i.ajw, 4294967295
  %i.ajy = mul nuw nsw i64 %i.ajx, %i.xp
  %i.ajz = add i64 %i.aje, %i.ajy
  %i.aka = sub i64 %i.ajz, %i.ajv
  %diff.check323 = icmp ugt i64 %i.aka, -32
  br i1 %diff.check323, label %vec.epilog.scalar.ph338.preheader, label %vector.main.loop.iter.check325

vector.main.loop.iter.check325:                   ; preds = %vector.memcheck322
  br i1 %min.iters.check326, label %vec.epilog.ph341, label %vector.body329

vector.body329:                                   ; preds = %vector.main.loop.iter.check325, %vector.body329
  %index330 = phi i64 [ %index.next333, %vector.body329 ], [ 0, %vector.main.loop.iter.check325 ] ; 3 uses
  %i.akb = getelementptr i8, ptr %i.ajs, i64 %index330 ; 2 uses
  %i.akc = getelementptr i8, ptr %i.akb, i64 16
  %wide.load331 = load <16 x i8>, ptr %i.akb, align 1, !tbaa !20
  %wide.load332 = load <16 x i8>, ptr %i.akc, align 1, !tbaa !20
  %i.akd = getelementptr i8, ptr %i.ajt, i64 %index330 ; 2 uses
  %i.ake = getelementptr i8, ptr %i.akd, i64 16
  store <16 x i8> %wide.load331, ptr %i.akd, align 1, !tbaa !20
  store <16 x i8> %wide.load332, ptr %i.ake, align 1, !tbaa !20
  %index.next333 = add nuw i64 %index330, 32      ; 2 uses
  %i.akf = icmp eq i64 %index.next333, %n.vec328
  br i1 %i.akf, label %middle.block334, label %vector.body329, !llvm.loop !570

middle.block334:                                  ; preds = %vector.body329
  br i1 %cmp.n335, label %._crit_edge93.us.5.i.i.i, label %vec.epilog.iter.check339

vec.epilog.iter.check339:                         ; preds = %middle.block334
  br i1 %min.epilog.iters.check340, label %vec.epilog.scalar.ph338.preheader, label %vec.epilog.ph341, !prof !186

vec.epilog.ph341:                                 ; preds = %vector.main.loop.iter.check325, %vec.epilog.iter.check339
  %vec.epilog.resume.val336 = phi i64 [ %n.vec328, %vec.epilog.iter.check339 ], [ 0, %vector.main.loop.iter.check325 ]
  br label %vec.epilog.vector.body343

vec.epilog.vector.body343:                        ; preds = %vec.epilog.vector.body343, %vec.epilog.ph341
  %index344 = phi i64 [ %vec.epilog.resume.val336, %vec.epilog.ph341 ], [ %index.next346, %vec.epilog.vector.body343 ] ; 3 uses
  %i.akg = getelementptr i8, ptr %i.ajs, i64 %index344
  %wide.load345 = load <4 x i8>, ptr %i.akg, align 1, !tbaa !20
  %i.akh = getelementptr i8, ptr %i.ajt, i64 %index344
  store <4 x i8> %wide.load345, ptr %i.akh, align 1, !tbaa !20
  %index.next346 = add nuw i64 %index344, 4       ; 2 uses
  %i.aki = icmp eq i64 %index.next346, %n.vec342
  br i1 %i.aki, label %vec.epilog.middle.block347, label %vec.epilog.vector.body343, !llvm.loop !571

vec.epilog.middle.block347:                       ; preds = %vec.epilog.vector.body343
  br i1 %cmp.n348, label %._crit_edge93.us.5.i.i.i, label %vec.epilog.scalar.ph338.preheader

vec.epilog.scalar.ph338.preheader:                ; preds = %vector.memcheck322, %iter.check337, %vec.epilog.iter.check339, %vec.epilog.middle.block347
  %indvars.iv123.5.i.i.i.ph = phi i64 [ 0, %iter.check337 ], [ 0, %vector.memcheck322 ], [ %n.vec328, %vec.epilog.iter.check339 ], [ %n.vec342, %vec.epilog.middle.block347 ] ; 3 uses
  br i1 %lcmp.mod432.not, label %vec.epilog.scalar.ph338.prol.loopexit, label %vec.epilog.scalar.ph338.prol

vec.epilog.scalar.ph338.prol:                     ; preds = %vec.epilog.scalar.ph338.preheader, %vec.epilog.scalar.ph338.prol
  %indvars.iv123.5.i.i.i.prol = phi i64 [ %indvars.iv.next124.5.i.i.i.prol, %vec.epilog.scalar.ph338.prol ], [ %indvars.iv123.5.i.i.i.ph, %vec.epilog.scalar.ph338.preheader ] ; 3 uses
  %prol.iter433 = phi i64 [ %prol.iter433.next, %vec.epilog.scalar.ph338.prol ], [ 0, %vec.epilog.scalar.ph338.preheader ]
  %i.akj = getelementptr i8, ptr %i.ajs, i64 %indvars.iv123.5.i.i.i.prol
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !20
  %i.akl = getelementptr i8, ptr %i.ajt, i64 %indvars.iv123.5.i.i.i.prol
  store i8 %i.akk, ptr %i.akl, align 1, !tbaa !20
  %indvars.iv.next124.5.i.i.i.prol = add nuw nsw i64 %indvars.iv123.5.i.i.i.prol, 1 ; 2 uses
  %prol.iter433.next = add i64 %prol.iter433, 1   ; 2 uses
  %prol.iter433.cmp.not = icmp eq i64 %prol.iter433.next, %xtraiter431
  br i1 %prol.iter433.cmp.not, label %vec.epilog.scalar.ph338.prol.loopexit, label %vec.epilog.scalar.ph338.prol, !llvm.loop !572

vec.epilog.scalar.ph338.prol.loopexit:            ; preds = %vec.epilog.scalar.ph338.prol, %vec.epilog.scalar.ph338.preheader
  %indvars.iv123.5.i.i.i.unr = phi i64 [ %indvars.iv123.5.i.i.i.ph, %vec.epilog.scalar.ph338.preheader ], [ %indvars.iv.next124.5.i.i.i.prol, %vec.epilog.scalar.ph338.prol ]
  %i.akm = sub nsw i64 %indvars.iv123.5.i.i.i.ph, %i.xp
  %i.akn = icmp ugt i64 %i.akm, -4
  br i1 %i.akn, label %._crit_edge93.us.5.i.i.i, label %vec.epilog.scalar.ph338

vec.epilog.scalar.ph338:                          ; preds = %vec.epilog.scalar.ph338.prol.loopexit, %vec.epilog.scalar.ph338
  %indvars.iv123.5.i.i.i = phi i64 [ %indvars.iv.next124.5.i.i.i.3, %vec.epilog.scalar.ph338 ], [ %indvars.iv123.5.i.i.i.unr, %vec.epilog.scalar.ph338.prol.loopexit ] ; 6 uses
  %i.ako = getelementptr i8, ptr %i.ajs, i64 %indvars.iv123.5.i.i.i
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !20
  %i.akq = getelementptr i8, ptr %i.ajt, i64 %indvars.iv123.5.i.i.i
  store i8 %i.akp, ptr %i.akq, align 1, !tbaa !20
  %indvars.iv.next124.5.i.i.i = add nuw nsw i64 %indvars.iv123.5.i.i.i, 1 ; 2 uses
  %i.akr = getelementptr i8, ptr %i.ajs, i64 %indvars.iv.next124.5.i.i.i
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !20
  %i.akt = getelementptr i8, ptr %i.ajt, i64 %indvars.iv.next124.5.i.i.i
  store i8 %i.aks, ptr %i.akt, align 1, !tbaa !20
  %indvars.iv.next124.5.i.i.i.1 = add nuw nsw i64 %indvars.iv123.5.i.i.i, 2 ; 2 uses
  %i.aku = getelementptr i8, ptr %i.ajs, i64 %indvars.iv.next124.5.i.i.i.1
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !20
  %i.akw = getelementptr i8, ptr %i.ajt, i64 %indvars.iv.next124.5.i.i.i.1
  store i8 %i.akv, ptr %i.akw, align 1, !tbaa !20
  %indvars.iv.next124.5.i.i.i.2 = add nuw nsw i64 %indvars.iv123.5.i.i.i, 3 ; 2 uses
  %i.akx = getelementptr i8, ptr %i.ajs, i64 %indvars.iv.next124.5.i.i.i.2
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !20
  %i.akz = getelementptr i8, ptr %i.ajt, i64 %indvars.iv.next124.5.i.i.i.2
  store i8 %i.aky, ptr %i.akz, align 1, !tbaa !20
  %indvars.iv.next124.5.i.i.i.3 = add nuw nsw i64 %indvars.iv123.5.i.i.i, 4 ; 2 uses
  %exitcond127.5.not.i.i.i.3 = icmp eq i64 %indvars.iv.next124.5.i.i.i.3, %i.xp
  br i1 %exitcond127.5.not.i.i.i.3, label %._crit_edge93.us.5.i.i.i, label %vec.epilog.scalar.ph338, !llvm.loop !573

._crit_edge93.us.5.i.i.i:                         ; preds = %vec.epilog.scalar.ph338.prol.loopexit, %vec.epilog.scalar.ph338, %vec.epilog.middle.block347, %middle.block334
  %indvars.iv.next129.5.i.i.i = add nuw nsw i64 %indvars.iv128.5.i.i.i, 1 ; 2 uses
  %exitcond132.5.not.i.i.i = icmp eq i64 %indvars.iv.next129.5.i.i.i, %wide.trip.count131.5.i.i.i
  br i1 %exitcond132.5.not.i.i.i, label %._crit_edge96.us.5.i.i.i, label %iter.check337, !llvm.loop !556

._crit_edge96.us.5.i.i.i:                         ; preds = %._crit_edge93.us.5.i.i.i
  %indvars.iv.next134.5.i.i.i = add nuw nsw i64 %indvars.iv133.5.i.i.i, 1 ; 2 uses
  %exitcond137.5.not.i.i.i = icmp eq i64 %indvars.iv.next134.5.i.i.i, %wide.trip.count136.5.i.i.i
  br i1 %exitcond137.5.not.i.i.i, label %._crit_edge98.split.us.5.i.i.i, label %.preheader.us.5.i.i.i, !llvm.loop !557

._crit_edge98.split.us.5.i.i.i:                   ; preds = %._crit_edge96.us.5.i.i.i, %.preheader.lr.ph.us.5.i.i.i, %._crit_edge98.split.us.4.i.i.i
  %i.ala = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !13 ; 2 uses
  %.not105.6.i.i.i = icmp eq i32 %i.alb, 0
  br i1 %.not105.6.i.i.i, label %.loopexit.i.i, label %.preheader.lr.ph.us.6.i.i.i

.preheader.lr.ph.us.6.i.i.i:                      ; preds = %._crit_edge98.split.us.5.i.i.i
  %i.alc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !13 ; 3 uses
  %.not106.6.i.i.i = icmp eq i32 %i.ald, 0
  br i1 %.not106.6.i.i.i, label %.loopexit.i.i, label %.preheader.lr.ph.split.us.6.i.i.i

.preheader.lr.ph.split.us.6.i.i.i:                ; preds = %.preheader.lr.ph.us.6.i.i.i
  %i.ale = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.alf = load i64, ptr %i.ale, align 16, !tbaa !8 ; 2 uses
  %i.alg = getelementptr i8, ptr %i.tw, i64 %i.alf
  %wide.trip.count136.6.i.i.i = zext i32 %i.alb to i64
  %wide.trip.count131.6.i.i.i = zext i32 %i.ald to i64 ; 2 uses
  %i.alh = mul nuw nsw i64 %i.xp, %i.xq
  %i.ali = add i64 %i.alh, %i.tv
  %i.alj = mul nuw nsw i64 %i.xp, %i.xq
  %i.alk = shl nuw nsw i64 %i.alj, 1
  %i.all = add i64 %i.alf, %i.tx
  %min.iters.check352 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %min.iters.check354 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.alm = and i64 %i.xp, 28
  %n.vec356 = and i64 %i.xp, 536870880            ; 4 uses
  %cmp.n363 = icmp eq i64 %n.vec356, %i.xp
  %min.epilog.iters.check368 = icmp eq i64 %i.alm, 0
  %n.vec370 = and i64 %i.xp, 536870908            ; 3 uses
  %cmp.n376 = icmp eq i64 %n.vec370, %i.xp
  %xtraiter434 = and i64 %i.xp, 3                 ; 2 uses
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  br label %.preheader.us.6.i.i.i

.preheader.us.6.i.i.i:                            ; preds = %._crit_edge96.us.6.i.i.i, %.preheader.lr.ph.split.us.6.i.i.i
  %indvars.iv133.6.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.6.i.i.i ], [ %indvars.iv.next134.6.i.i.i, %._crit_edge96.us.6.i.i.i ] ; 5 uses
  %i.aln = mul i64 %i.alk, %indvars.iv133.6.i.i.i
  %i.alo = add i64 %i.ali, %i.aln
  %i.alp = mul nuw i64 %indvars.iv133.6.i.i.i, %wide.trip.count131.6.i.i.i
  %i.alq = trunc nuw i64 %indvars.iv133.6.i.i.i to i32
  %i.alr = mul i32 %i.ald, %i.alq
  %i.als = shl nuw nsw i64 %indvars.iv133.6.i.i.i, 1
  %i.alt = or disjoint i64 %i.als, 1
  %i.alu = mul i64 %i.alt, %i.xq
  br label %iter.check365

iter.check365:                                    ; preds = %._crit_edge93.us.6.i.i.i, %.preheader.us.6.i.i.i
  %indvars.iv128.6.i.i.i = phi i64 [ %indvars.iv.next129.6.i.i.i, %._crit_edge93.us.6.i.i.i ], [ 0, %.preheader.us.6.i.i.i ] ; 5 uses
  %i.alv = trunc nuw i64 %indvars.iv128.6.i.i.i to i32
  %i.alw = add i32 %i.alr, %i.alv
  %i.alx = zext i32 %i.alw to i64
  %i.aly = mul nuw nsw i64 %i.alx, %i.xp
  %i.alz = add i64 %indvars.iv128.6.i.i.i, %i.alu
  %i.ama = mul i64 %i.alz, %i.xp
  %i.amb = getelementptr i8, ptr %i.alg, i64 %i.aly ; 7 uses
  %i.amc = getelementptr i8, ptr %i.tu, i64 %i.ama ; 7 uses
  br i1 %min.iters.check352, label %vec.epilog.scalar.ph366.preheader, label %vector.memcheck350

vector.memcheck350:                               ; preds = %iter.check365
  %i.amd = mul nuw nsw i64 %indvars.iv128.6.i.i.i, %i.xp
  %i.ame = add i64 %i.alo, %i.amd
  %i.amf = add i64 %i.alp, %indvars.iv128.6.i.i.i
  %i.amg = and i64 %i.amf, 4294967295
  %i.amh = mul nuw nsw i64 %i.amg, %i.xp
  %i.ami = add i64 %i.all, %i.amh
  %i.amj = sub i64 %i.ami, %i.ame
  %diff.check351 = icmp ugt i64 %i.amj, -32
  br i1 %diff.check351, label %vec.epilog.scalar.ph366.preheader, label %vector.main.loop.iter.check353

vector.main.loop.iter.check353:                   ; preds = %vector.memcheck350
  br i1 %min.iters.check354, label %vec.epilog.ph369, label %vector.body357

vector.body357:                                   ; preds = %vector.main.loop.iter.check353, %vector.body357
  %index358 = phi i64 [ %index.next361, %vector.body357 ], [ 0, %vector.main.loop.iter.check353 ] ; 3 uses
  %i.amk = getelementptr i8, ptr %i.amb, i64 %index358 ; 2 uses
  %i.aml = getelementptr i8, ptr %i.amk, i64 16
  %wide.load359 = load <16 x i8>, ptr %i.amk, align 1, !tbaa !20
  %wide.load360 = load <16 x i8>, ptr %i.aml, align 1, !tbaa !20
  %i.amm = getelementptr i8, ptr %i.amc, i64 %index358 ; 2 uses
  %i.amn = getelementptr i8, ptr %i.amm, i64 16
  store <16 x i8> %wide.load359, ptr %i.amm, align 1, !tbaa !20
  store <16 x i8> %wide.load360, ptr %i.amn, align 1, !tbaa !20
  %index.next361 = add nuw i64 %index358, 32      ; 2 uses
  %i.amo = icmp eq i64 %index.next361, %n.vec356
  br i1 %i.amo, label %middle.block362, label %vector.body357, !llvm.loop !574

middle.block362:                                  ; preds = %vector.body357
  br i1 %cmp.n363, label %._crit_edge93.us.6.i.i.i, label %vec.epilog.iter.check367

vec.epilog.iter.check367:                         ; preds = %middle.block362
  br i1 %min.epilog.iters.check368, label %vec.epilog.scalar.ph366.preheader, label %vec.epilog.ph369, !prof !186

vec.epilog.ph369:                                 ; preds = %vector.main.loop.iter.check353, %vec.epilog.iter.check367
  %vec.epilog.resume.val364 = phi i64 [ %n.vec356, %vec.epilog.iter.check367 ], [ 0, %vector.main.loop.iter.check353 ]
  br label %vec.epilog.vector.body371

vec.epilog.vector.body371:                        ; preds = %vec.epilog.vector.body371, %vec.epilog.ph369
  %index372 = phi i64 [ %vec.epilog.resume.val364, %vec.epilog.ph369 ], [ %index.next374, %vec.epilog.vector.body371 ] ; 3 uses
  %i.amp = getelementptr i8, ptr %i.amb, i64 %index372
  %wide.load373 = load <4 x i8>, ptr %i.amp, align 1, !tbaa !20
  %i.amq = getelementptr i8, ptr %i.amc, i64 %index372
  store <4 x i8> %wide.load373, ptr %i.amq, align 1, !tbaa !20
  %index.next374 = add nuw i64 %index372, 4       ; 2 uses
  %i.amr = icmp eq i64 %index.next374, %n.vec370
  br i1 %i.amr, label %vec.epilog.middle.block375, label %vec.epilog.vector.body371, !llvm.loop !575

vec.epilog.middle.block375:                       ; preds = %vec.epilog.vector.body371
  br i1 %cmp.n376, label %._crit_edge93.us.6.i.i.i, label %vec.epilog.scalar.ph366.preheader

vec.epilog.scalar.ph366.preheader:                ; preds = %vector.memcheck350, %iter.check365, %vec.epilog.iter.check367, %vec.epilog.middle.block375
  %indvars.iv123.6.i.i.i.ph = phi i64 [ 0, %iter.check365 ], [ 0, %vector.memcheck350 ], [ %n.vec356, %vec.epilog.iter.check367 ], [ %n.vec370, %vec.epilog.middle.block375 ] ; 3 uses
  br i1 %lcmp.mod435.not, label %vec.epilog.scalar.ph366.prol.loopexit, label %vec.epilog.scalar.ph366.prol

vec.epilog.scalar.ph366.prol:                     ; preds = %vec.epilog.scalar.ph366.preheader, %vec.epilog.scalar.ph366.prol
  %indvars.iv123.6.i.i.i.prol = phi i64 [ %indvars.iv.next124.6.i.i.i.prol, %vec.epilog.scalar.ph366.prol ], [ %indvars.iv123.6.i.i.i.ph, %vec.epilog.scalar.ph366.preheader ] ; 3 uses
  %prol.iter436 = phi i64 [ %prol.iter436.next, %vec.epilog.scalar.ph366.prol ], [ 0, %vec.epilog.scalar.ph366.preheader ]
  %i.ams = getelementptr i8, ptr %i.amb, i64 %indvars.iv123.6.i.i.i.prol
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !20
  %i.amu = getelementptr i8, ptr %i.amc, i64 %indvars.iv123.6.i.i.i.prol
  store i8 %i.amt, ptr %i.amu, align 1, !tbaa !20
  %indvars.iv.next124.6.i.i.i.prol = add nuw nsw i64 %indvars.iv123.6.i.i.i.prol, 1 ; 2 uses
  %prol.iter436.next = add i64 %prol.iter436, 1   ; 2 uses
  %prol.iter436.cmp.not = icmp eq i64 %prol.iter436.next, %xtraiter434
  br i1 %prol.iter436.cmp.not, label %vec.epilog.scalar.ph366.prol.loopexit, label %vec.epilog.scalar.ph366.prol, !llvm.loop !576

vec.epilog.scalar.ph366.prol.loopexit:            ; preds = %vec.epilog.scalar.ph366.prol, %vec.epilog.scalar.ph366.preheader
  %indvars.iv123.6.i.i.i.unr = phi i64 [ %indvars.iv123.6.i.i.i.ph, %vec.epilog.scalar.ph366.preheader ], [ %indvars.iv.next124.6.i.i.i.prol, %vec.epilog.scalar.ph366.prol ]
  %i.amv = sub nsw i64 %indvars.iv123.6.i.i.i.ph, %i.xp
  %i.amw = icmp ugt i64 %i.amv, -4
  br i1 %i.amw, label %._crit_edge93.us.6.i.i.i, label %vec.epilog.scalar.ph366

vec.epilog.scalar.ph366:                          ; preds = %vec.epilog.scalar.ph366.prol.loopexit, %vec.epilog.scalar.ph366
  %indvars.iv123.6.i.i.i = phi i64 [ %indvars.iv.next124.6.i.i.i.3, %vec.epilog.scalar.ph366 ], [ %indvars.iv123.6.i.i.i.unr, %vec.epilog.scalar.ph366.prol.loopexit ] ; 6 uses
  %i.amx = getelementptr i8, ptr %i.amb, i64 %indvars.iv123.6.i.i.i
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !20
  %i.amz = getelementptr i8, ptr %i.amc, i64 %indvars.iv123.6.i.i.i
  store i8 %i.amy, ptr %i.amz, align 1, !tbaa !20
  %indvars.iv.next124.6.i.i.i = add nuw nsw i64 %indvars.iv123.6.i.i.i, 1 ; 2 uses
  %i.ana = getelementptr i8, ptr %i.amb, i64 %indvars.iv.next124.6.i.i.i
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !20
  %i.anc = getelementptr i8, ptr %i.amc, i64 %indvars.iv.next124.6.i.i.i
  store i8 %i.anb, ptr %i.anc, align 1, !tbaa !20
  %indvars.iv.next124.6.i.i.i.1 = add nuw nsw i64 %indvars.iv123.6.i.i.i, 2 ; 2 uses
  %i.and = getelementptr i8, ptr %i.amb, i64 %indvars.iv.next124.6.i.i.i.1
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !20
  %i.anf = getelementptr i8, ptr %i.amc, i64 %indvars.iv.next124.6.i.i.i.1
  store i8 %i.ane, ptr %i.anf, align 1, !tbaa !20
  %indvars.iv.next124.6.i.i.i.2 = add nuw nsw i64 %indvars.iv123.6.i.i.i, 3 ; 2 uses
  %i.ang = getelementptr i8, ptr %i.amb, i64 %indvars.iv.next124.6.i.i.i.2
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !20
  %i.ani = getelementptr i8, ptr %i.amc, i64 %indvars.iv.next124.6.i.i.i.2
  store i8 %i.anh, ptr %i.ani, align 1, !tbaa !20
  %indvars.iv.next124.6.i.i.i.3 = add nuw nsw i64 %indvars.iv123.6.i.i.i, 4 ; 2 uses
  %exitcond127.6.not.i.i.i.3 = icmp eq i64 %indvars.iv.next124.6.i.i.i.3, %i.xp
  br i1 %exitcond127.6.not.i.i.i.3, label %._crit_edge93.us.6.i.i.i, label %vec.epilog.scalar.ph366, !llvm.loop !577

._crit_edge93.us.6.i.i.i:                         ; preds = %vec.epilog.scalar.ph366.prol.loopexit, %vec.epilog.scalar.ph366, %vec.epilog.middle.block375, %middle.block362
  %indvars.iv.next129.6.i.i.i = add nuw nsw i64 %indvars.iv128.6.i.i.i, 1 ; 2 uses
  %exitcond132.6.not.i.i.i = icmp eq i64 %indvars.iv.next129.6.i.i.i, %wide.trip.count131.6.i.i.i
  br i1 %exitcond132.6.not.i.i.i, label %._crit_edge96.us.6.i.i.i, label %iter.check365, !llvm.loop !556

._crit_edge96.us.6.i.i.i:                         ; preds = %._crit_edge93.us.6.i.i.i
  %indvars.iv.next134.6.i.i.i = add nuw nsw i64 %indvars.iv133.6.i.i.i, 1 ; 2 uses
  %exitcond137.6.not.i.i.i = icmp eq i64 %indvars.iv.next134.6.i.i.i, %wide.trip.count136.6.i.i.i
  br i1 %exitcond137.6.not.i.i.i, label %.loopexit.i.i, label %.preheader.us.6.i.i.i, !llvm.loop !557

.preheader.us.i.i.i:                              ; preds = %.preheader.lr.ph.split.us.i.i.i, %._crit_edge96.us.i.i.i
  %indvars.iv133.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.i.i.i ], [ %indvars.iv.next134.i.i.i, %._crit_edge96.us.i.i.i ] ; 5 uses
  %i.anj = mul i64 %i.ant, %indvars.iv133.i.i.i
  %i.ank = add i64 %i.anj, %i.tv
  %i.anl = mul nuw i64 %indvars.iv133.i.i.i, %wide.trip.count131.i.i.i
  %i.anm = trunc nuw i64 %indvars.iv133.i.i.i to i32
  %i.ann = mul i32 %i.anp, %i.anm
  %i.ano = mul nuw i64 %indvars.iv133.i.i.i, %i.xq
  br label %iter.check

._crit_edge93.us.i.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next129.i.i.i = add nuw nsw i64 %indvars.iv128.i.i.i, 1 ; 2 uses
  %exitcond132.not.i.i.i = icmp eq i64 %indvars.iv.next129.i.i.i, %wide.trip.count131.i.i.i
  br i1 %exitcond132.not.i.i.i, label %._crit_edge96.us.i.i.i, label %iter.check, !llvm.loop !556

._crit_edge96.us.i.i.i:                           ; preds = %._crit_edge93.us.i.i.i
  %indvars.iv.next134.i.i.i = add nuw nsw i64 %indvars.iv133.i.i.i, 1 ; 2 uses
  %exitcond137.not.i.i.i = icmp eq i64 %indvars.iv.next134.i.i.i, %wide.trip.count136.i.i.i
  br i1 %exitcond137.not.i.i.i, label %._crit_edge98.split.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !557

.preheader.lr.ph.us.i.i.i:                        ; preds = %.preheader80.split.us.preheader.i.i.i
  %i.anp = load i32, ptr %i.a, align 16, !tbaa !13 ; 3 uses
  %.not106.i.i.i = icmp eq i32 %i.anp, 0
  br i1 %.not106.i.i.i, label %._crit_edge98.split.us.i.i.i, label %.preheader.lr.ph.split.us.i.i.i

.preheader.lr.ph.split.us.i.i.i:                  ; preds = %.preheader.lr.ph.us.i.i.i
  %i.anq = load i64, ptr %i.e, align 16, !tbaa !8 ; 2 uses
  %i.anr = getelementptr i8, ptr %i.tw, i64 %i.anq
  %wide.trip.count136.i.i.i = zext i32 %i.xr to i64
  %wide.trip.count131.i.i.i = zext i32 %i.anp to i64 ; 2 uses
  %reass.mul.i.i = shl nuw nsw i64 %i.xp, 3
  %i.ans = mul nuw nsw i64 %i.xp, %i.xq
  %i.ant = shl nuw i64 %i.ans, 3
  %i.anu = shl nuw nsw i64 %i.xp, 3
  %i.anv = add i64 %i.anq, %i.tx
  %min.iters.check = icmp ult i32 %.0.i.i.i.i371.i, 32
  %min.iters.check203 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.anw = and i64 %i.xp, 28
  %n.vec = and i64 %i.xp, 536870880               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.xp
  %min.epilog.iters.check = icmp eq i64 %i.anw, 0
  %n.vec205 = and i64 %i.xp, 536870908            ; 3 uses
  %cmp.n209 = icmp eq i64 %n.vec205, %i.xp
  %xtraiter417 = and i64 %i.xp, 3                 ; 2 uses
  %lcmp.mod418.not = icmp eq i64 %xtraiter417, 0
  br label %.preheader.us.i.i.i

bb.dk:                                            ; preds = %._crit_edge89.split.i.i.i, %.preheader82.i.i.i
  %indvars.iv116.i.i.i = phi i64 [ 0, %.preheader82.i.i.i ], [ %indvars.iv.next117.i.i.i, %._crit_edge89.split.i.i.i ] ; 8 uses
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv116.i.i.i
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !13 ; 3 uses
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116.i.i.i
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !13 ; 2 uses
  %.not101.i.i.i = icmp eq i32 %i.aoa, 0
  %.not102.i.i.i = icmp eq i32 %i.any, 0
  %or.cond.i91.i.i = select i1 %.not101.i.i.i, i1 true, i1 %.not102.i.i.i
  br i1 %or.cond.i91.i.i, label %._crit_edge89.split.i.i.i, label %.preheader81.lr.ph.split.i.i.i

.preheader81.lr.ph.split.i.i.i:                   ; preds = %bb.dk
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DX, i64 %indvars.iv116.i.i.i
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IX, i64 %indvars.iv116.i.i.i
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DY, i64 %indvars.iv116.i.i.i
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IY, i64 %indvars.iv116.i.i.i
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv116.i.i.i
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !8
  %i.aoh = shl i64 %i.aog, 3
  %i.aoi = load i32, ptr %i.aoe, align 4, !tbaa !13
  %i.aoj = zext i32 %i.aoi to i64
  %i.aok = load i32, ptr %i.aod, align 4, !tbaa !13
  %i.aol = zext i32 %i.aok to i64
  %i.aom = load i32, ptr %i.aoc, align 4, !tbaa !13
  %i.aon = zext i32 %i.aom to i64
  %i.aoo = load i32, ptr %i.aob, align 4, !tbaa !13
  %i.aop = zext i32 %i.aoo to i64
  %wide.trip.count114.i.i.i = zext i32 %i.aoa to i64
  %wide.trip.count.i.i.i = zext i32 %i.any to i64
  br label %.preheader81.i.i.i

.preheader81.i.i.i:                               ; preds = %._crit_edge.i95.i.i, %.preheader81.lr.ph.split.i.i.i
  %indvars.iv111.i.i.i = phi i64 [ 0, %.preheader81.lr.ph.split.i.i.i ], [ %indvars.iv.next112.i.i.i, %._crit_edge.i95.i.i ] ; 3 uses
  %i.aoq = trunc nuw i64 %indvars.iv111.i.i.i to i32
  %i.aor = mul i32 %i.any, %i.aoq
  %i.aos = mul nuw i64 %indvars.iv111.i.i.i, %i.aol
  %i.aot = add nuw i64 %i.aos, %i.aoj
  %i.aou = mul i64 %i.aot, %i.xm
  br label %bb.dl

bb.dl:                                            ; preds = %bb.eg, %.preheader81.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader81.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.eg ] ; 3 uses
  %i.aov = trunc nuw i64 %indvars.iv.i.i.i to i32
  %reass.add.i.i.i = add i32 %i.aor, %i.aov
  %reass.mul.i.i.i = mul i32 %reass.add.i.i.i, %.0.i.i.i.i371.i ; 2 uses
  %i.aow = zext i32 %reass.mul.i.i.i to i64
  %i.aox = add i64 %i.aoh, %i.aow                 ; 7 uses
  %i.aoy = mul nuw i64 %indvars.iv.i.i.i, %i.aop
  %i.aoz = add nuw i64 %i.aoy, %i.aon
  %i.apa = mul i64 %i.aoz, %i.xn
  %i.apb = add i64 %i.apa, %i.aou                 ; 9 uses
  %i.apc = lshr i64 %i.aox, 3
  %i.apd = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.apc
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !20
  %i.apf = trunc i32 %reass.mul.i.i.i to i8
  %i.apg = and i8 %i.apf, 7
  %i.aph = add i64 %i.aox, 1                      ; 2 uses
  %i.api = lshr exact i8 -128, %i.apg
  %i.apj = and i8 %i.api, %i.ape
  %i.apk = icmp eq i8 %i.apj, 0
  %i.apl = lshr i64 %i.apb, 3
  %i.apm = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.apl ; 2 uses
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !20 ; 2 uses
  br i1 %i.apk, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.apo = trunc i64 %i.apb to i16
  %i.app = and i16 %i.apo, 7
  %i.apq = ashr i16 -129, %i.app
  %i.apr = trunc i16 %i.apq to i8
  %i.aps = and i8 %i.apn, %i.apr
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.apt = trunc i64 %i.apb to i8
  %i.apu = and i8 %i.apt, 7
  %i.apv = lshr exact i8 -128, %i.apu
  %i.apw = or i8 %i.apv, %i.apn
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i

_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i:    ; preds = %bb.dn, %bb.dm
  %.sink.i.i93.i.i = phi i8 [ %i.apw, %bb.dn ], [ %i.aps, %bb.dm ]
  store i8 %.sink.i.i93.i.i, ptr %i.apm, align 1, !tbaa !20
  %i.apx = add i64 %i.apb, 1                      ; 3 uses
  br i1 %exitcond.not.i94.i.i, label %bb.eg, label %bb.do

bb.do:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i
  %i.apy = lshr i64 %i.aph, 3
  %i.apz = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.apy
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !20
  %i.aqb = trunc i64 %i.aph to i8
  %i.aqc = and i8 %i.aqb, 7
  %i.aqd = add i64 %i.aox, 2                      ; 2 uses
  %i.aqe = lshr exact i8 -128, %i.aqc
  %i.aqf = and i8 %i.aqe, %i.aqa
  %i.aqg = icmp eq i8 %i.aqf, 0
  %i.aqh = lshr i64 %i.apx, 3
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.aqh ; 2 uses
  %i.aqj = load i8, ptr %i.aqi, align 1, !tbaa !20 ; 2 uses
  br i1 %i.aqg, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aqk = trunc i64 %i.apx to i8
  %i.aql = and i8 %i.aqk, 7
  %i.aqm = lshr exact i8 -128, %i.aql
  %i.aqn = or i8 %i.aqm, %i.aqj
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1

bb.dq:                                            ; preds = %bb.do
  %i.aqo = trunc i64 %i.apx to i16
  %i.aqp = and i16 %i.aqo, 7
  %i.aqq = ashr i16 -129, %i.aqp
  %i.aqr = trunc i16 %i.aqq to i8
  %i.aqs = and i8 %i.aqj, %i.aqr
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1

_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1:  ; preds = %bb.dq, %bb.dp
  %.sink.i.i93.i.i.1 = phi i8 [ %i.aqn, %bb.dp ], [ %i.aqs, %bb.dq ]
  store i8 %.sink.i.i93.i.i.1, ptr %i.aqi, align 1, !tbaa !20
  %i.aqt = add i64 %i.apb, 2                      ; 3 uses
  br i1 %exitcond.not.i94.i.i.1, label %bb.eg, label %bb.dr

bb.dr:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1
  %i.aqu = lshr i64 %i.aqd, 3
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.aqu
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !20
  %i.aqx = trunc i64 %i.aqd to i8
  %i.aqy = and i8 %i.aqx, 7
  %i.aqz = add i64 %i.aox, 3                      ; 2 uses
  %i.ara = lshr exact i8 -128, %i.aqy
  %i.arb = and i8 %i.ara, %i.aqw
  %i.arc = icmp eq i8 %i.arb, 0
  %i.ard = lshr i64 %i.aqt, 3
  %i.are = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.ard ; 2 uses
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !20 ; 2 uses
  br i1 %i.arc, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.arg = trunc i64 %i.aqt to i8
  %i.arh = and i8 %i.arg, 7
  %i.ari = lshr exact i8 -128, %i.arh
  %i.arj = or i8 %i.ari, %i.arf
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.2

bb.dt:                                            ; preds = %bb.dr
  %i.ark = trunc i64 %i.aqt to i16
  %i.arl = and i16 %i.ark, 7
  %i.arm = ashr i16 -129, %i.arl
  %i.arn = trunc i16 %i.arm to i8
  %i.aro = and i8 %i.arf, %i.arn
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.2

_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.2:  ; preds = %bb.dt, %bb.ds
  %.sink.i.i93.i.i.2 = phi i8 [ %i.arj, %bb.ds ], [ %i.aro, %bb.dt ]
  store i8 %.sink.i.i93.i.i.2, ptr %i.are, align 1, !tbaa !20
  %i.arp = add i64 %i.apb, 3                      ; 3 uses
  br i1 %exitcond.not.i94.i.i.2, label %bb.eg, label %bb.du

end_hunk_0
