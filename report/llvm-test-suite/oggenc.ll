Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@dradbg:bb.a
  %found.conflict1259 = and i1 %bound01257, %bound11258
  %conflict.rdx1260 = or i1 %conflict.rdx, %found.conflict1259
  %bound01261 = icmp ult ptr %scevgep1238, %scevgep1245
  %bound11262 = icmp ult ptr %umin1243, %scevgep1240
  %found.conflict1263 = and i1 %bound01261, %bound11262
  %conflict.rdx1264 = or i1 %conflict.rdx1260, %found.conflict1263
  %bound01265 = icmp ult ptr %scevgep1238, %scevgep1250
  %bound11266 = icmp ult ptr %umin1248, %scevgep1240
  %found.conflict1267 = and i1 %bound01265, %bound11266
  %conflict.rdx1268 = or i1 %conflict.rdx1264, %found.conflict1267
  br i1 %conflict.rdx1268, label %scalar.ph1269.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %vector.memcheck1234
  %i.gt = add nsw i64 %n.vec1272, %i.gd
  %i.gu = add nsw i64 %n.vec1272, %i.gc
  %i.gv = add i64 %indvars.iv917, %i.fj
  %invariant.gep1812.a = getelementptr [4 x i8], ptr %7, i64 %i.gd
  %invariant.gep1814.a = getelementptr [4 x i8], ptr %7, i64 %i.gc
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1273 ] ; 4 uses
  %i.gw = mul i64 %index1274, %i.ez
  %i.gx = add i64 %indvars.iv917, %i.gw           ; 4 uses
  %i.gy = getelementptr [4 x i8], ptr %4, i64 %i.gx ; 2 uses
  %gep1807.a = getelementptr [4 x i8], ptr %invariant.gep1806.a, i64 %i.gx ; 2 uses
  %gep1809.a = getelementptr [4 x i8], ptr %invariant.gep1808.a, i64 %i.gx ; 2 uses
  %gep1811.a = getelementptr [4 x i8], ptr %invariant.gep1810.a, i64 %i.gx ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 -4
  %i.ha = getelementptr i8, ptr %gep1807.a, i64 -4
  %i.hb = getelementptr i8, ptr %gep1809.a, i64 -4
  %i.hc = getelementptr i8, ptr %gep1811.a, i64 -4
  %i.hd = load float, ptr %i.gz, align 4, !alias.scope !1224
  %i.he = load float, ptr %i.ha, align 4, !alias.scope !1224
  %i.hf = load float, ptr %i.hb, align 4, !alias.scope !1224
  %i.hg = load float, ptr %i.hc, align 4, !alias.scope !1224
  %i.hh = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 1
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 2
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 3 ; 2 uses
  %i.hl = fadd <4 x float> %i.hk, %i.hk
  %gep1813.a = getelementptr [4 x i8], ptr %invariant.gep1812.a, i64 %index1274
  store <4 x float> %i.hl, ptr %gep1813.a, align 4, !alias.scope !1225, !noalias !1226
  %i.hm = load float, ptr %i.gy, align 4, !alias.scope !1227
  %i.hn = load float, ptr %gep1807.a, align 4, !alias.scope !1227
  %i.ho = load float, ptr %gep1809.a, align 4, !alias.scope !1227
  %i.hp = load float, ptr %gep1811.a, align 4, !alias.scope !1227
  %i.hq = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 3 ; 2 uses
  %i.hu = fadd <4 x float> %i.ht, %i.ht
  %gep1815.a = getelementptr [4 x i8], ptr %invariant.gep1814.a, i64 %index1274
  store <4 x float> %i.hu, ptr %gep1815.a, align 4, !alias.scope !1228, !noalias !1229
  %index.next1275 = add nuw i64 %index1274, 4     ; 2 uses
  %i.hv = icmp eq i64 %index.next1275, %n.vec1272
  br i1 %i.hv, label %middle.block1276, label %vector.body1273, !llvm.loop !1158

middle.block1276:                                 ; preds = %vector.body1273
  br i1 %cmp.n1277, label %._crit_edge688, label %scalar.ph1269.preheader

scalar.ph1269.preheader:                          ; preds = %vector.memcheck1234, %vector.scevcheck1227, %.lr.ph, %middle.block1276
  %indvars.iv927.ph = phi i64 [ %i.gd, %vector.memcheck1234 ], [ %i.gd, %vector.scevcheck1227 ], [ %i.gd, %.lr.ph ], [ %i.gt, %middle.block1276 ] ; 3 uses
  %indvars.iv923.ph = phi i64 [ %i.gc, %vector.memcheck1234 ], [ %i.gc, %vector.scevcheck1227 ], [ %i.gc, %.lr.ph ], [ %i.gu, %middle.block1276 ] ; 3 uses
  %indvars.iv919.ph = phi i64 [ %indvars.iv917, %vector.memcheck1234 ], [ %indvars.iv917, %vector.scevcheck1227 ], [ %indvars.iv917, %.lr.ph ], [ %i.gv, %middle.block1276 ] ; 3 uses
  %.2606683.ph = phi i32 [ 0, %vector.memcheck1234 ], [ 0, %vector.scevcheck1227 ], [ 0, %.lr.ph ], [ %i.fk, %middle.block1276 ] ; 4 uses
  %i.hw = sub i32 %2, %.2606683.ph
  %.neg = add i32 %.2606683.ph, 1
  %xtraiter1780 = and i32 %i.hw, 1
  %lcmp.mod1781.not = icmp eq i32 %xtraiter1780, 0
  br i1 %lcmp.mod1781.not, label %scalar.ph1269.prol.loopexit, label %scalar.ph1269.prol

scalar.ph1269.prol:                               ; preds = %scalar.ph1269.preheader
  %i.hx = getelementptr [4 x i8], ptr %4, i64 %indvars.iv919.ph ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 -4
  %i.hz = load float, ptr %i.hy, align 4          ; 2 uses
  %i.ia = fadd float %i.hz, %i.hz
  %i.ib = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv927.ph
  store float %i.ia, ptr %i.ib, align 4
  %i.ic = load float, ptr %i.hx, align 4          ; 2 uses
  %i.id = fadd float %i.ic, %i.ic
  %i.ie = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv923.ph
  store float %i.id, ptr %i.ie, align 4
  %indvars.iv.next928.prol = add nsw i64 %indvars.iv927.ph, %i.ek
  %indvars.iv.next924.prol = add nsw i64 %indvars.iv923.ph, %i.ek
  %indvars.iv.next920.prol = add nsw i64 %indvars.iv919.ph, %i.eh
  %i.if = add nuw nsw i32 %.2606683.ph, 1
  br label %scalar.ph1269.prol.loopexit

scalar.ph1269.prol.loopexit:                      ; preds = %scalar.ph1269.prol, %scalar.ph1269.preheader
  %indvars.iv927.unr = phi i64 [ %indvars.iv927.ph, %scalar.ph1269.preheader ], [ %indvars.iv.next928.prol, %scalar.ph1269.prol ]
  %indvars.iv923.unr = phi i64 [ %indvars.iv923.ph, %scalar.ph1269.preheader ], [ %indvars.iv.next924.prol, %scalar.ph1269.prol ]
  %indvars.iv919.unr = phi i64 [ %indvars.iv919.ph, %scalar.ph1269.preheader ], [ %indvars.iv.next920.prol, %scalar.ph1269.prol ]
  %.2606683.unr = phi i32 [ %.2606683.ph, %scalar.ph1269.preheader ], [ %i.if, %scalar.ph1269.prol ]
  %i.ig = icmp eq i32 %2, %.neg
  br i1 %i.ig, label %._crit_edge688, label %scalar.ph1269

scalar.ph1269:                                    ; preds = %scalar.ph1269.prol.loopexit, %scalar.ph1269
  %indvars.iv927 = phi i64 [ %indvars.iv.next928.1, %scalar.ph1269 ], [ %indvars.iv927.unr, %scalar.ph1269.prol.loopexit ] ; 2 uses
  %indvars.iv923 = phi i64 [ %indvars.iv.next924.1, %scalar.ph1269 ], [ %indvars.iv923.unr, %scalar.ph1269.prol.loopexit ] ; 2 uses
  %indvars.iv919 = phi i64 [ %indvars.iv.next920.1, %scalar.ph1269 ], [ %indvars.iv919.unr, %scalar.ph1269.prol.loopexit ] ; 2 uses
  %.2606683 = phi i32 [ %i.ix, %scalar.ph1269 ], [ %.2606683.unr, %scalar.ph1269.prol.loopexit ]
  %i.ih = getelementptr [4 x i8], ptr %4, i64 %indvars.iv919 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 -4
  %i.ij = load float, ptr %i.ii, align 4          ; 2 uses
  %i.ik = fadd float %i.ij, %i.ij
  %i.il = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv927
  store float %i.ik, ptr %i.il, align 4
  %i.im = load float, ptr %i.ih, align 4          ; 2 uses
  %i.in = fadd float %i.im, %i.im
  %i.io = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv923
  store float %i.in, ptr %i.io, align 4
  %indvars.iv.next928 = add nsw i64 %indvars.iv927, %i.ek ; 2 uses
  %indvars.iv.next924 = add nsw i64 %indvars.iv923, %i.ek ; 2 uses
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, %i.eh ; 2 uses
  %i.ip = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next920 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 -4
  %i.ir = load float, ptr %i.iq, align 4          ; 2 uses
  %i.is = fadd float %i.ir, %i.ir
  %i.it = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next928
  store float %i.is, ptr %i.it, align 4
  %i.iu = load float, ptr %i.ip, align 4          ; 2 uses
  %i.iv = fadd float %i.iu, %i.iu
  %i.iw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next924
  store float %i.iv, ptr %i.iw, align 4
  %indvars.iv.next928.1 = add nsw i64 %indvars.iv.next928, %i.ek
  %indvars.iv.next924.1 = add nsw i64 %indvars.iv.next924, %i.ek
  %indvars.iv.next920.1 = add nsw i64 %indvars.iv.next920, %i.eh
  %i.ix = add nuw nsw i32 %.2606683, 2            ; 2 uses
  %exitcond934.not.1 = icmp eq i32 %i.ix, %2
  br i1 %exitcond934.not.1, label %._crit_edge688, label %scalar.ph1269, !llvm.loop !1159

._crit_edge688:                                   ; preds = %scalar.ph1269.prol.loopexit, %scalar.ph1269, %middle.block1276
  %indvars.iv.next918 = add i64 %indvars.iv917, %i.eg
  %i.iy = add nuw nsw i32 %.0615689, 1            ; 2 uses
  %indvars.iv.next922 = sub i32 %indvars.iv921, %i.d
  %indvars.iv.next926 = add i32 %indvars.iv925, %i.d
  %exitcond936.not = icmp eq i32 %i.iy, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond936.not, label %._crit_edge695.split, label %.lr.ph, !llvm.loop !1160

._crit_edge695.split:                             ; preds = %._crit_edge688, %.loopexit667
  %i.iz = icmp eq i32 %0, 1                       ; 2 uses
  br i1 %i.iz, label %.loopexit661, label %bb.b

bb.b:                                             ; preds = %._crit_edge695.split
  %i.ja = icmp slt i32 %i.m, %2
  br i1 %i.ja, label %.preheader660, label %.preheader663

.preheader663:                                    ; preds = %bb.b
  br i1 %i.ee, label %.lr.ph712, label %.loopexit661.thread1192

.lr.ph712:                                        ; preds = %.preheader663
  %i.jb = icmp slt i32 %2, 1
  %i.jc = icmp slt i32 %0, 3
  %brmerge = or i1 %i.jb, %i.jc
  br i1 %brmerge, label %.loopexit661.thread, label %.preheader662.lr.ph.preheader

.preheader662.lr.ph.preheader:                    ; preds = %.lr.ph712
  %i.jd = sext i32 %i.c to i64                    ; 3 uses
  %i.je = add i32 %1, -1
  %i.jf = mul i32 %i.d, %i.je
  %i.jg = zext nneg i32 %0 to i64                 ; 4 uses
  %i.jh = add nsw i32 %0, -3
  %i.ji = lshr i32 %i.jh, 1
  %i.jj = shl nuw nsw i64 %i.jg, 2
  %i.jk = shl nsw i64 %i.jd, 2
  %scevgep1293 = getelementptr i8, ptr %7, i64 4
  %i.jl = add nsw i32 %2, -1
  %i.jm = zext i32 %i.jl to i64                   ; 2 uses
  %i.jn = mul nuw nsw i64 %i.jg, %i.jm
  %i.jo = shl i64 %i.jn, 2
  %i.jp = add nsw i32 %0, -3
  %i.jq = lshr i32 %i.jp, 1
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 3                ; 3 uses
  %i.jt = add i64 %i.jo, %i.js                    ; 2 uses
  %i.ju = add i64 %i.jt, 8                        ; 2 uses
  %scevgep1295 = getelementptr i8, ptr %7, i64 %i.ju
  %scevgep1297 = getelementptr i8, ptr %7, i64 4
  %scevgep1299 = getelementptr i8, ptr %7, i64 %i.ju
  %scevgep1301 = getelementptr i8, ptr %7, i64 8
  %i.jv = add i64 %i.jt, 12                       ; 2 uses
  %scevgep1303 = getelementptr i8, ptr %7, i64 %i.jv
  %scevgep1305 = getelementptr i8, ptr %7, i64 8
  %scevgep1307 = getelementptr i8, ptr %7, i64 %i.jv
  %i.jw = sub nuw nsw i64 -12, %i.js
  %scevgep1309 = getelementptr i8, ptr %4, i64 %i.jw
  %i.jx = mul nsw i64 %i.jd, %i.jm
  %i.jy = shl i64 %i.jx, 2                        ; 2 uses
  %i.jz = getelementptr i8, ptr %4, i64 %i.jy
  %scevgep1311 = getelementptr i8, ptr %i.jz, i64 -4
  %scevgep1313 = getelementptr i8, ptr %4, i64 4
  %i.ka = getelementptr i8, ptr %4, i64 %i.jy
  %i.kb = getelementptr i8, ptr %i.ka, i64 %i.js
  %scevgep1315 = getelementptr i8, ptr %i.kb, i64 12
  %i.kc = add nsw i32 %0, -3                      ; 2 uses
  %i.kd = lshr i32 %i.kc, 1
  %narrow = add nuw i32 %i.kd, 1
  %i.ke = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check1381 = icmp ult i32 %i.kc, 38
  %i.kf = zext nneg i32 %i.ji to i64
  %mul1286 = shl nuw nsw i64 %i.kf, 3             ; 4 uses
  %i.kg = sub nsw i64 0, %mul1286
  %stride.check1331 = icmp slt i32 %i.c, 0
  %n.vec1383 = and i64 %i.ke, 4294967292          ; 5 uses
  %i.kh = shl nuw nsw i64 %n.vec1383, 1           ; 3 uses
  %i.ki = shl nuw nsw i64 %n.vec1383, 1
  %i.kj = trunc nuw i64 %n.vec1383 to i32
  %i.kk = shl i32 %i.kj, 1
  %i.kl = or disjoint i32 %i.kk, 2
  %cmp.n1402 = icmp eq i64 %n.vec1383, %i.ke
  br label %.preheader662.lr.ph

.preheader660:                                    ; preds = %bb.b
  br i1 %i.ee, label %.lr.ph734, label %.loopexit661.thread1192

.lr.ph734:                                        ; preds = %.preheader660
  %i.km = icmp slt i32 %0, 3
  %i.kn = icmp slt i32 %2, 1
  %brmerge866 = or i1 %i.km, %i.kn
  br i1 %brmerge866, label %.loopexit661.thread, label %.lr.ph728.preheader

.lr.ph728.preheader:                              ; preds = %.lr.ph734
  %i.ko = add i32 %i.ed, -2
  %i.kp = sext i32 %i.c to i64                    ; 2 uses
  %i.kq = add i32 %i.ed, 2
  %i.kr = add i32 %1, -1
  %i.ks = mul i32 %i.d, %i.kr
  %i.kt = add i32 %i.ks, 2
  %i.ku = zext nneg i32 %0 to i64                 ; 2 uses
  %i.kv = add i32 %i.d, 2
  br label %.lr.ph728

.preheader662.lr.ph:                              ; preds = %.preheader662.lr.ph.preheader, %._crit_edge707
  %indvars.iv951 = phi i32 [ %i.d, %.preheader662.lr.ph.preheader ], [ %indvars.iv.next952, %._crit_edge707 ] ; 4 uses
  %indvars.iv945 = phi i32 [ %i.jf, %.preheader662.lr.ph.preheader ], [ %indvars.iv.next946, %._crit_edge707 ] ; 4 uses
  %indvars.iv937 = phi i32 [ %i.ed, %.preheader662.lr.ph.preheader ], [ %indvars.iv.next938, %._crit_edge707 ] ; 4 uses
  %.1616708 = phi i32 [ 1, %.preheader662.lr.ph.preheader ], [ %i.pq, %._crit_edge707 ]
  %i.kw = sext i32 %indvars.iv951 to i64
  %i.kx = shl nsw i64 %i.kw, 2                    ; 4 uses
  %scevgep1294 = getelementptr i8, ptr %scevgep1293, i64 %i.kx ; 5 uses
  %scevgep1296 = getelementptr i8, ptr %scevgep1295, i64 %i.kx ; 5 uses
  %i.ky = sext i32 %indvars.iv945 to i64
  %i.kz = shl nsw i64 %i.ky, 2                    ; 4 uses
  %scevgep1298 = getelementptr i8, ptr %scevgep1297, i64 %i.kz ; 5 uses
  %scevgep1300 = getelementptr i8, ptr %scevgep1299, i64 %i.kz ; 5 uses
  %scevgep1302 = getelementptr i8, ptr %scevgep1301, i64 %i.kx ; 5 uses
  %scevgep1304 = getelementptr i8, ptr %scevgep1303, i64 %i.kx ; 5 uses
  %scevgep1306 = getelementptr i8, ptr %scevgep1305, i64 %i.kz ; 5 uses
  %scevgep1308 = getelementptr i8, ptr %scevgep1307, i64 %i.kz ; 5 uses
  %i.la = sext i32 %indvars.iv937 to i64
  %i.lb = shl nsw i64 %i.la, 2                    ; 4 uses
  %scevgep1310 = getelementptr i8, ptr %scevgep1309, i64 %i.lb ; 3 uses
  %scevgep1312 = getelementptr i8, ptr %scevgep1311, i64 %i.lb ; 3 uses
  %scevgep1314 = getelementptr i8, ptr %scevgep1313, i64 %i.lb ; 4 uses
  %scevgep1316 = getelementptr i8, ptr %scevgep1315, i64 %i.lb ; 4 uses
  %i.lc = sext i32 %indvars.iv951 to i64
  %i.ld = shl nsw i64 %i.lc, 2
  %i.le = sext i32 %indvars.iv945 to i64
  %i.lf = shl nsw i64 %i.le, 2
  %i.lg = sext i32 %indvars.iv937 to i64
  %i.lh = shl nsw i64 %i.lg, 2                    ; 2 uses
  %i.li = sext i32 %indvars.iv937 to i64
  %i.lj = sext i32 %indvars.iv945 to i64
  %i.lk = sext i32 %indvars.iv951 to i64
  %i.ll = insertelement <4 x ptr> poison, ptr %scevgep1310, i64 0 ; 2 uses
  %i.lm = insertelement <4 x ptr> %i.ll, ptr %scevgep1294, i64 1
  %i.ln = insertelement <4 x ptr> %i.lm, ptr %scevgep1302, i64 2
  %i.lo = insertelement <4 x ptr> %i.ln, ptr %scevgep1298, i64 3
  %i.lp = insertelement <4 x ptr> poison, ptr %scevgep1296, i64 0
  %i.lq = insertelement <4 x ptr> %i.lp, ptr %scevgep1316, i64 1
  %i.lr = insertelement <4 x ptr> %i.lq, ptr %scevgep1300, i64 2
  %i.ls = insertelement <4 x ptr> %i.lr, ptr %scevgep1308, i64 3
  %i.lt = insertelement <4 x ptr> poison, ptr %scevgep1294, i64 0
  %i.lu = insertelement <4 x ptr> %i.lt, ptr %scevgep1314, i64 1
  %i.lv = insertelement <4 x ptr> %i.lu, ptr %scevgep1298, i64 2
  %i.lw = insertelement <4 x ptr> %i.lv, ptr %scevgep1306, i64 3
  %i.lx = insertelement <4 x ptr> poison, ptr %scevgep1312, i64 0 ; 2 uses
  %i.ly = insertelement <4 x ptr> %i.lx, ptr %scevgep1296, i64 1
  %i.lz = insertelement <4 x ptr> %i.ly, ptr %scevgep1304, i64 2
  %i.ma = insertelement <4 x ptr> %i.lz, ptr %scevgep1300, i64 3
  %i.mb = insertelement <4 x ptr> %i.ll, ptr %scevgep1298, i64 1
  %i.mc = insertelement <4 x ptr> %i.mb, ptr %scevgep1306, i64 2
  %i.md = insertelement <4 x ptr> %i.mc, ptr %scevgep1302, i64 3
  %i.me = insertelement <4 x ptr> poison, ptr %scevgep1300, i64 0
  %i.mf = insertelement <4 x ptr> %i.me, ptr %scevgep1316, i64 1
  %i.mg = insertelement <4 x ptr> %i.mf, ptr %scevgep1304, i64 2
  %i.mh = insertelement <4 x ptr> %i.mg, ptr %scevgep1312, i64 3
  %i.mi = insertelement <4 x ptr> poison, ptr %scevgep1298, i64 0
  %i.mj = insertelement <4 x ptr> %i.mi, ptr %scevgep1314, i64 1
  %i.mk = insertelement <4 x ptr> %i.mj, ptr %scevgep1302, i64 2
  %i.ml = insertelement <4 x ptr> %i.mk, ptr %scevgep1310, i64 3
  %i.mm = insertelement <4 x ptr> %i.lx, ptr %scevgep1300, i64 1
  %i.mn = insertelement <4 x ptr> %i.mm, ptr %scevgep1308, i64 2
  %i.mo = insertelement <4 x ptr> %i.mn, ptr %scevgep1304, i64 3
  %i.mp = getelementptr i8, ptr %4, i64 %i.lh
  %i.mq = getelementptr i8, ptr %i.mp, i64 -12
  %i.mr = getelementptr i8, ptr %4, i64 %i.lh
  %i.ms = getelementptr i8, ptr %i.mr, i64 4
  %i.mt = getelementptr i8, ptr %7, i64 %i.lf
  %i.mu = getelementptr i8, ptr %i.mt, i64 4
  %i.mv = getelementptr i8, ptr %7, i64 %i.ld
  %i.mw = getelementptr i8, ptr %i.mv, i64 4
  %bound01317 = icmp ult ptr %scevgep1294, %scevgep1300
  %bound11318 = icmp ult ptr %scevgep1298, %scevgep1296
  %found.conflict1319 = and i1 %bound01317, %bound11318
  %bound01320 = icmp ult ptr %scevgep1294, %scevgep1304
  %bound11321 = icmp ult ptr %scevgep1302, %scevgep1296
  %found.conflict1322 = and i1 %bound01320, %bound11321
  %bound01324 = icmp ult ptr %scevgep1294, %scevgep1308
  %bound11325 = icmp ult ptr %scevgep1306, %scevgep1296
  %found.conflict1326 = and i1 %bound01324, %bound11325
  %i.mx = icmp ult <4 x ptr> %i.lw, %i.ma
  %i.my = icmp ult <4 x ptr> %i.lo, %i.ls
  %i.mz = and <4 x i1> %i.my, %i.mx
  %i.na = icmp ult <4 x ptr> %i.ml, %i.mo
  %i.nb = icmp ult <4 x ptr> %i.md, %i.mh
  %i.nc = and <4 x i1> %i.nb, %i.na
  %bound01365.a = icmp ult ptr %scevgep1302, %scevgep1316
  %bound11366.a = icmp ult ptr %scevgep1314, %scevgep1304
  %found.conflict1367.a = and i1 %bound01365.a, %bound11366.a
  %bound01370 = icmp ult ptr %scevgep1306, %scevgep1312
  %bound11371 = icmp ult ptr %scevgep1310, %scevgep1308
  %found.conflict1372 = and i1 %bound01370, %bound11371
  %bound01375 = icmp ult ptr %scevgep1306, %scevgep1316
  %bound11376 = icmp ult ptr %scevgep1314, %scevgep1308
  %found.conflict1377 = and i1 %bound01375, %bound11376
  %rdx.op1762 = or <4 x i1> %i.mz, %i.nc
  %i.nd = bitcast <4 x i1> %rdx.op1762 to i4
  %i.ne = icmp ne i4 %i.nd, 0
  %op.rdx1763 = or i1 %i.ne, %found.conflict1319
  %op.rdx1764 = or i1 %found.conflict1322, %found.conflict1326
  %op.rdx1765 = or i1 %found.conflict1367.a, %found.conflict1372
  %op.rdx1766 = or i1 %found.conflict1377, %stride.check1331
  %op.rdx1767 = or i1 %op.rdx1763, %op.rdx1764
  %op.rdx1768 = or i1 %op.rdx1765, %op.rdx1766
  %op.rdx1769 = or i1 %op.rdx1767, %op.rdx1768
  br label %.preheader662

.preheader662:                                    ; preds = %.preheader662.lr.ph, %._crit_edge702
  %indvar1283 = phi i64 [ 0, %.preheader662.lr.ph ], [ %indvar.next1284, %._crit_edge702 ] ; 3 uses
  %indvars.iv953 = phi i64 [ %i.lk, %.preheader662.lr.ph ], [ %indvars.iv.next954, %._crit_edge702 ] ; 6 uses
  %indvars.iv947 = phi i64 [ %i.lj, %.preheader662.lr.ph ], [ %indvars.iv.next948, %._crit_edge702 ] ; 6 uses
  %indvars.iv939 = phi i64 [ %i.li, %.preheader662.lr.ph ], [ %indvars.iv.next940, %._crit_edge702 ] ; 11 uses
  %.3607703 = phi i32 [ 0, %.preheader662.lr.ph ], [ %i.pp, %._crit_edge702 ]
  br i1 %min.iters.check1381, label %scalar.ph1380.preheader, label %vector.scevcheck1282

vector.scevcheck1282:                             ; preds = %.preheader662
  %i.nf = mul i64 %i.jk, %indvar1283              ; 2 uses
  %scevgep1291 = getelementptr i8, ptr %i.mq, i64 %i.nf ; 2 uses
  %scevgep1290 = getelementptr i8, ptr %i.ms, i64 %i.nf ; 2 uses
  %i.ng = mul i64 %i.jj, %indvar1283              ; 2 uses
  %scevgep1289 = getelementptr i8, ptr %i.mu, i64 %i.ng ; 2 uses
  %scevgep1285 = getelementptr i8, ptr %i.mw, i64 %i.ng ; 2 uses
  %i.nh = getelementptr i8, ptr %scevgep1285, i64 %mul1286
  %i.ni = icmp ult ptr %i.nh, %scevgep1285
  %i.nj = getelementptr i8, ptr %scevgep1289, i64 %mul1286
  %i.nk = icmp ult ptr %i.nj, %scevgep1289
  %i.nl = getelementptr i8, ptr %scevgep1290, i64 %mul1286
  %i.nm = icmp ult ptr %i.nl, %scevgep1290
  %i.nn = getelementptr i8, ptr %scevgep1291, i64 %i.kg
  %i.no = icmp ugt ptr %i.nn, %scevgep1291
  %i.np = or i1 %i.ni, %i.nk
  %i.nq = or i1 %i.np, %i.nm
  %i.nr = or i1 %i.nq, %i.no
  br i1 %i.nr, label %scalar.ph1380.preheader, label %vector.memcheck1292

vector.memcheck1292:                              ; preds = %vector.scevcheck1282
  br i1 %op.rdx1769, label %scalar.ph1380.preheader, label %vector.ph1382

vector.ph1382:                                    ; preds = %vector.memcheck1292
  %i.ns = add i64 %indvars.iv953, %i.kh
  %i.nt = add i64 %indvars.iv947, %i.kh
  %i.nu = add i64 %indvars.iv939, %i.kh
  %i.nv = sub i64 %indvars.iv939, %i.ki
  %i.nw = getelementptr [4 x i8], ptr %4, i64 %indvars.iv939
  %i.nx = getelementptr [4 x i8], ptr %7, i64 %indvars.iv953
  %i.ny = getelementptr [4 x i8], ptr %7, i64 %indvars.iv947
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1382
  %index1385 = phi i64 [ 0, %vector.ph1382 ], [ %index.next1400, %vector.body1384 ] ; 3 uses
  %i.nz = shl i64 %index1385, 1                   ; 3 uses
  %i.oa = shl i64 %index1385, 1
  %i.ob = sub i64 %indvars.iv939, %i.oa
  %i.oc = getelementptr [4 x i8], ptr %i.nw, i64 %i.nz
  %i.od = getelementptr i8, ptr %i.oc, i64 4      ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.od, align 4, !alias.scope !1230 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1386.a = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oe = getelementptr [4 x i8], ptr %4, i64 %i.ob
  %i.of = getelementptr i8, ptr %i.oe, i64 -36    ; 2 uses
  %wide.vec1387.a = load <8 x float>, ptr %i.of, align 4, !alias.scope !1231 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec1387.a, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1390 = shufflevector <8 x float> %wide.vec1387.a, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.og = fadd <4 x float> %strided.vec, %reverse
  %i.oh = getelementptr [4 x i8], ptr %i.nx, i64 %i.nz
  %i.oi = getelementptr i8, ptr %i.oh, i64 4
  %wide.vec1391 = load <8 x float>, ptr %i.od, align 4, !alias.scope !1230 ; 2 uses
  %strided.vec1392 = shufflevector <8 x float> %wide.vec1391, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
end_hunk_0
