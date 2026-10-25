Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@dradbg:bb.a
  %scevgep1247 = getelementptr i8, ptr %i.fz, i64 4 ; 4 uses
  %i.ga = icmp ult ptr %scevgep1246, %scevgep1247
  %umin1248 = select i1 %i.ga, ptr %scevgep1246, ptr %scevgep1247 ; 2 uses
  %i.gb = icmp ugt ptr %scevgep1246, %scevgep1247
  %umax1249 = select i1 %i.gb, ptr %scevgep1246, ptr %scevgep1247
  %scevgep1250 = getelementptr i8, ptr %umax1249, i64 4 ; 2 uses
  %i.gc = sext i32 %indvars.iv921 to i64          ; 5 uses
  %i.gd = sext i32 %indvars.iv925 to i64          ; 5 uses
  br i1 %min.iters.check1270, label %scalar.ph1269.preheader, label %vector.scevcheck1227

vector.scevcheck1227:                             ; preds = %.lr.ph
  %i.ge = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.gf = getelementptr i8, ptr %4, i64 %i.ge
  %scevgep1230 = getelementptr i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gg = getelementptr i8, ptr %4, i64 %i.ge
  %scevgep1229 = getelementptr i8, ptr %i.gg, i64 4 ; 4 uses
  %i.gh = getelementptr i8, ptr %scevgep1229, i64 %mul.result
  %i.gi = getelementptr i8, ptr %scevgep1229, i64 %i.fe
  %i.gj = icmp ult ptr %i.gh, %scevgep1229
  %i.gk = icmp ugt ptr %i.gi, %scevgep1229
  %i.gl = select i1 %i.fb, i1 %i.gk, i1 %i.gj
  %i.gm = getelementptr i8, ptr %scevgep1230, i64 %mul.result1232
  %i.gn = getelementptr i8, ptr %scevgep1230, i64 %i.fi
  %i.go = icmp ult ptr %i.gm, %scevgep1230
  %i.gp = icmp ugt ptr %i.gn, %scevgep1230
  %i.gq = select i1 %i.ff, i1 %i.gp, i1 %i.go
  %i.gr = or i1 %i.gq, %mul.overflow1233
  %.reass = or i1 %i.gl, %invariant.op
  %i.gs = or i1 %.reass, %i.gr
  br i1 %i.gs, label %scalar.ph1269.preheader, label %vector.memcheck1234

vector.memcheck1234:                              ; preds = %vector.scevcheck1227
  %bound01251 = icmp ult ptr %scevgep1235, %scevgep1240
  %bound11252 = icmp ult ptr %scevgep1238, %scevgep1237
  %found.conflict1253 = and i1 %bound01251, %bound11252
  %bound01254 = icmp ult ptr %scevgep1235, %scevgep1245
  %bound11255 = icmp ult ptr %umin1243, %scevgep1237
  %found.conflict1256 = and i1 %bound01254, %bound11255
  %conflict.rdx = or i1 %found.conflict1253, %found.conflict1256
  %bound01257 = icmp ult ptr %scevgep1235, %scevgep1250
  %bound11258 = icmp ult ptr %umin1248, %scevgep1237
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
  %invariant.gep1804.a = getelementptr [4 x i8], ptr %7, i64 %i.gd
  %invariant.gep1806.a = getelementptr [4 x i8], ptr %7, i64 %i.gc
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1273 ] ; 4 uses
  %i.gw = mul i64 %index1274, %i.ez
  %i.gx = add i64 %indvars.iv917, %i.gw           ; 4 uses
  %i.gy = getelementptr [4 x i8], ptr %4, i64 %i.gx ; 2 uses
  %gep1799.a = getelementptr [4 x i8], ptr %invariant.gep1798.a, i64 %i.gx ; 2 uses
  %gep1801.a = getelementptr [4 x i8], ptr %invariant.gep1800.a, i64 %i.gx ; 2 uses
  %gep1803.a = getelementptr [4 x i8], ptr %invariant.gep1802.a, i64 %i.gx ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 -4
  %i.ha = getelementptr i8, ptr %gep1799.a, i64 -4
  %i.hb = getelementptr i8, ptr %gep1801.a, i64 -4
  %i.hc = getelementptr i8, ptr %gep1803.a, i64 -4
  %i.hd = load float, ptr %i.gz, align 4, !alias.scope !1224
  %i.he = load float, ptr %i.ha, align 4, !alias.scope !1224
  %i.hf = load float, ptr %i.hb, align 4, !alias.scope !1224
  %i.hg = load float, ptr %i.hc, align 4, !alias.scope !1224
  %i.hh = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 1
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 2
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 3 ; 2 uses
  %i.hl = fadd <4 x float> %i.hk, %i.hk
  %gep1805.a = getelementptr [4 x i8], ptr %invariant.gep1804.a, i64 %index1274
  store <4 x float> %i.hl, ptr %gep1805.a, align 4, !alias.scope !1225, !noalias !1226
  %i.hm = load float, ptr %i.gy, align 4, !alias.scope !1227
  %i.hn = load float, ptr %gep1799.a, align 4, !alias.scope !1227
  %i.ho = load float, ptr %gep1801.a, align 4, !alias.scope !1227
  %i.hp = load float, ptr %gep1803.a, align 4, !alias.scope !1227
  %i.hq = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 3 ; 2 uses
  %i.hu = fadd <4 x float> %i.ht, %i.ht
  %gep1807.a = getelementptr [4 x i8], ptr %invariant.gep1806.a, i64 %index1274
  store <4 x float> %i.hu, ptr %gep1807.a, align 4, !alias.scope !1228, !noalias !1229
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
  %xtraiter1772 = and i32 %i.hw, 1
  %lcmp.mod1773.not = icmp eq i32 %xtraiter1772, 0
  br i1 %lcmp.mod1773.not, label %scalar.ph1269.prol.loopexit, label %scalar.ph1269.prol

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
  %10 = shl nuw nsw i64 %i.jg, 2
  %i.jj = shl nsw i64 %i.jd, 2
  %scevgep1293.a = getelementptr i8, ptr %7, i64 4
  %i.jk = add nsw i32 %2, -1
  %i.jl = zext i32 %i.jk to i64                   ; 2 uses
  %i.jm = mul nuw nsw i64 %i.jg, %i.jl
  %i.jn = shl i64 %i.jm, 2
  %i.jo = add nsw i32 %0, -3
  %i.jp = lshr i32 %i.jo, 1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl nuw nsw i64 %i.jq, 3                ; 3 uses
  %i.js = add i64 %i.jn, %i.jr                    ; 2 uses
  %i.jt = add i64 %i.js, 8                        ; 2 uses
  %scevgep1295.a = getelementptr i8, ptr %7, i64 %i.jt
  %scevgep1297.a = getelementptr i8, ptr %7, i64 4
  %scevgep1299.a = getelementptr i8, ptr %7, i64 %i.jt
  %scevgep1301.a = getelementptr i8, ptr %7, i64 8
  %i.ju = add i64 %i.js, 12                       ; 2 uses
  %scevgep1303.a = getelementptr i8, ptr %7, i64 %i.ju
  %scevgep1305.a = getelementptr i8, ptr %7, i64 8
  %scevgep1307.a = getelementptr i8, ptr %7, i64 %i.ju
  %i.jv = sub nuw nsw i64 -12, %i.jr
  %scevgep1309.a = getelementptr i8, ptr %4, i64 %i.jv
  %i.jw = mul nsw i64 %i.jd, %i.jl
  %i.jx = shl i64 %i.jw, 2                        ; 2 uses
  %i.jy = getelementptr i8, ptr %4, i64 %i.jx
  %scevgep1311.a = getelementptr i8, ptr %i.jy, i64 -4
  %scevgep1313.a = getelementptr i8, ptr %4, i64 4
  %i.jz = getelementptr i8, ptr %4, i64 %i.jx
  %i.ka = getelementptr i8, ptr %i.jz, i64 %i.jr
  %scevgep1315 = getelementptr i8, ptr %i.ka, i64 12
  %i.kb = add nsw i32 %0, -3                      ; 2 uses
  %i.kc = lshr i32 %i.kb, 1
  %narrow = add nuw i32 %i.kc, 1
  %i.kd = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check1374 = icmp ult i32 %i.kb, 38
  %i.ke = zext nneg i32 %i.ji to i64
  %mul1286 = shl nuw nsw i64 %i.ke, 3             ; 4 uses
  %11 = sub nsw i64 0, %mul1286
  %stride.check1331 = icmp slt i32 %i.c, 0
  %n.vec1376 = and i64 %i.kd, 4294967292          ; 5 uses
  %i.kf = shl nuw nsw i64 %n.vec1376, 1           ; 3 uses
  %i.kg = shl nuw nsw i64 %n.vec1376, 1
  %i.kh = trunc nuw i64 %n.vec1376 to i32
  %i.ki = shl i32 %i.kh, 1
  %i.kj = or disjoint i32 %i.ki, 2
  %cmp.n1395 = icmp eq i64 %n.vec1376, %i.kd
  br label %.preheader662.lr.ph

.preheader660:                                    ; preds = %bb.b
  br i1 %i.ee, label %.lr.ph734, label %.loopexit661.thread1192

.lr.ph734:                                        ; preds = %.preheader660
  %i.kk = icmp slt i32 %0, 3
  %i.kl = icmp slt i32 %2, 1
  %brmerge866 = or i1 %i.kk, %i.kl
  br i1 %brmerge866, label %.loopexit661.thread, label %.lr.ph728.preheader

.lr.ph728.preheader:                              ; preds = %.lr.ph734
  %i.km = add i32 %i.ed, -2
  %i.kn = sext i32 %i.c to i64                    ; 2 uses
  %i.ko = add i32 %i.ed, 2
  %i.kp = add i32 %1, -1
  %i.kq = mul i32 %i.d, %i.kp
  %i.kr = add i32 %i.kq, 2
  %i.ks = zext nneg i32 %0 to i64                 ; 2 uses
  %i.kt = add i32 %i.d, 2
  br label %.lr.ph728

.preheader662.lr.ph:                              ; preds = %.preheader662.lr.ph.preheader, %._crit_edge707
  %indvars.iv951 = phi i32 [ %i.d, %.preheader662.lr.ph.preheader ], [ %indvars.iv.next952, %._crit_edge707 ] ; 4 uses
  %indvars.iv945 = phi i32 [ %i.jf, %.preheader662.lr.ph.preheader ], [ %indvars.iv.next946, %._crit_edge707 ] ; 4 uses
  %indvars.iv937 = phi i32 [ %i.ed, %.preheader662.lr.ph.preheader ], [ %indvars.iv.next938, %._crit_edge707 ] ; 4 uses
  %.1616708 = phi i32 [ 1, %.preheader662.lr.ph.preheader ], [ %i.pc, %._crit_edge707 ]
  %i.ku = sext i32 %indvars.iv951 to i64
  %i.kv = shl nsw i64 %i.ku, 2                    ; 4 uses
  %scevgep1294.a = getelementptr i8, ptr %scevgep1293.a, i64 %i.kv ; 5 uses
  %scevgep1296.a = getelementptr i8, ptr %scevgep1295.a, i64 %i.kv ; 5 uses
  %i.kw = sext i32 %indvars.iv945 to i64
  %i.kx = shl nsw i64 %i.kw, 2                    ; 4 uses
  %scevgep1298.a = getelementptr i8, ptr %scevgep1297.a, i64 %i.kx ; 5 uses
  %scevgep1300.a = getelementptr i8, ptr %scevgep1299.a, i64 %i.kx ; 5 uses
  %scevgep1302.a = getelementptr i8, ptr %scevgep1301.a, i64 %i.kv ; 5 uses
  %scevgep1304.a = getelementptr i8, ptr %scevgep1303.a, i64 %i.kv ; 5 uses
  %scevgep1306.a = getelementptr i8, ptr %scevgep1305.a, i64 %i.kx ; 5 uses
  %scevgep1308.a = getelementptr i8, ptr %scevgep1307.a, i64 %i.kx ; 5 uses
  %i.ky = sext i32 %indvars.iv937 to i64
  %i.kz = shl nsw i64 %i.ky, 2                    ; 4 uses
  %scevgep1310.a = getelementptr i8, ptr %scevgep1309.a, i64 %i.kz ; 3 uses
  %scevgep1312.a = getelementptr i8, ptr %scevgep1311.a, i64 %i.kz ; 3 uses
  %scevgep1314.a = getelementptr i8, ptr %scevgep1313.a, i64 %i.kz ; 4 uses
  %scevgep1316 = getelementptr i8, ptr %scevgep1315, i64 %i.kz ; 4 uses
  %12 = sext i32 %indvars.iv951 to i64
  %13 = shl nsw i64 %12, 2
  %i.la = sext i32 %indvars.iv945 to i64
  %i.lb = shl nsw i64 %i.la, 2
  %i.lc = sext i32 %indvars.iv937 to i64
  %i.ld = shl nsw i64 %i.lc, 2                    ; 2 uses
  %i.le = sext i32 %indvars.iv937 to i64
  %i.lf = sext i32 %indvars.iv945 to i64
  %i.lg = sext i32 %indvars.iv951 to i64
  %i.lh = insertelement <4 x ptr> poison, ptr %scevgep1310.a, i64 0 ; 2 uses
  %i.li = insertelement <4 x ptr> %i.lh, ptr %scevgep1294.a, i64 1
  %i.lj = insertelement <4 x ptr> %i.li, ptr %scevgep1302.a, i64 2
  %i.lk = insertelement <4 x ptr> %i.lj, ptr %scevgep1298.a, i64 3
  %i.ll = insertelement <4 x ptr> poison, ptr %scevgep1296.a, i64 0
  %i.lm = insertelement <4 x ptr> %i.ll, ptr %scevgep1316, i64 1
  %i.ln = insertelement <4 x ptr> %i.lm, ptr %scevgep1300.a, i64 2
  %i.lo = insertelement <4 x ptr> %i.ln, ptr %scevgep1308.a, i64 3
  %i.lp = insertelement <4 x ptr> poison, ptr %scevgep1294.a, i64 0
  %i.lq = insertelement <4 x ptr> %i.lp, ptr %scevgep1314.a, i64 1
  %i.lr = insertelement <4 x ptr> %i.lq, ptr %scevgep1298.a, i64 2
  %i.ls = insertelement <4 x ptr> %i.lr, ptr %scevgep1306.a, i64 3
  %i.lt = insertelement <4 x ptr> poison, ptr %scevgep1312.a, i64 0 ; 2 uses
  %i.lu = insertelement <4 x ptr> %i.lt, ptr %scevgep1296.a, i64 1
  %i.lv = insertelement <4 x ptr> %i.lu, ptr %scevgep1304.a, i64 2
  %i.lw = insertelement <4 x ptr> %i.lv, ptr %scevgep1300.a, i64 3
  %i.lx = insertelement <4 x ptr> %i.lh, ptr %scevgep1298.a, i64 1
  %i.ly = insertelement <4 x ptr> %i.lx, ptr %scevgep1306.a, i64 2
  %i.lz = insertelement <4 x ptr> %i.ly, ptr %scevgep1302.a, i64 3
  %i.ma = insertelement <4 x ptr> poison, ptr %scevgep1300.a, i64 0
  %i.mb = insertelement <4 x ptr> %i.ma, ptr %scevgep1316, i64 1
  %i.mc = insertelement <4 x ptr> %i.mb, ptr %scevgep1304.a, i64 2
  %i.md = insertelement <4 x ptr> %i.mc, ptr %scevgep1312.a, i64 3
  %i.me = insertelement <4 x ptr> poison, ptr %scevgep1298.a, i64 0
  %i.mf = insertelement <4 x ptr> %i.me, ptr %scevgep1314.a, i64 1
  %i.mg = insertelement <4 x ptr> %i.mf, ptr %scevgep1302.a, i64 2
  %i.mh = insertelement <4 x ptr> %i.mg, ptr %scevgep1310.a, i64 3
  %i.mi = insertelement <4 x ptr> %i.lt, ptr %scevgep1300.a, i64 1
  %i.mj = insertelement <4 x ptr> %i.mi, ptr %scevgep1308.a, i64 2
  %i.mk = insertelement <4 x ptr> %i.mj, ptr %scevgep1304.a, i64 3
  %14 = getelementptr i8, ptr %4, i64 %i.ld
  %15 = getelementptr i8, ptr %14, i64 -12
  %16 = getelementptr i8, ptr %4, i64 %i.ld
  %17 = getelementptr i8, ptr %16, i64 4
  %i.ml = getelementptr i8, ptr %7, i64 %i.lb
  %i.mm = getelementptr i8, ptr %i.ml, i64 4
  %i.mn = getelementptr i8, ptr %7, i64 %13
  %i.mo = getelementptr i8, ptr %i.mn, i64 4
  %bound01317 = icmp ult ptr %scevgep1294.a, %scevgep1300.a
  %bound11318 = icmp ult ptr %scevgep1298.a, %scevgep1296.a
  %found.conflict1319 = and i1 %bound01317, %bound11318
  %bound01320 = icmp ult ptr %scevgep1294.a, %scevgep1304.a
  %bound11321 = icmp ult ptr %scevgep1302.a, %scevgep1296.a
  %found.conflict1322 = and i1 %bound01320, %bound11321
  %bound01324 = icmp ult ptr %scevgep1294.a, %scevgep1308.a
  %bound11325 = icmp ult ptr %scevgep1306.a, %scevgep1296.a
  %found.conflict1326 = and i1 %bound01324, %bound11325
  %i.mp = icmp ult <4 x ptr> %i.ls, %i.lw
  %i.mq = icmp ult <4 x ptr> %i.lk, %i.lo
  %i.mr = and <4 x i1> %i.mq, %i.mp
  %i.ms = icmp ult <4 x ptr> %i.mh, %i.mk
  %i.mt = icmp ult <4 x ptr> %i.lz, %i.md
  %i.mu = and <4 x i1> %i.mt, %i.ms
  %bound01361 = icmp ult ptr %scevgep1302.a, %scevgep1316
  %bound11362 = icmp ult ptr %scevgep1314.a, %scevgep1304.a
  %found.conflict1363 = and i1 %bound01361, %bound11362
  %bound01365 = icmp ult ptr %scevgep1306.a, %scevgep1312.a
  %bound11366 = icmp ult ptr %scevgep1310.a, %scevgep1308.a
  %found.conflict1367 = and i1 %bound01365, %bound11366
  %bound01369 = icmp ult ptr %scevgep1306.a, %scevgep1316
  %bound11370 = icmp ult ptr %scevgep1314.a, %scevgep1308.a
  %found.conflict1371 = and i1 %bound01369, %bound11370
  %rdx.op1755 = or <4 x i1> %i.mr, %i.mu
  %i.mv = bitcast <4 x i1> %rdx.op1755 to i4
  %i.mw = icmp ne i4 %i.mv, 0
  %op.rdx1756.a = or i1 %i.mw, %found.conflict1319
  %op.rdx1757.a = or i1 %found.conflict1322, %found.conflict1326
  %op.rdx1758.a = or i1 %found.conflict1363, %found.conflict1367
  %op.rdx1759.a = or i1 %found.conflict1371, %stride.check1331
  %op.rdx1760.a = or i1 %op.rdx1756.a, %op.rdx1757.a
  %op.rdx1761 = or i1 %op.rdx1758.a, %op.rdx1759.a
  %op.rdx1762 = or i1 %op.rdx1760.a, %op.rdx1761
  br label %.preheader662

.preheader662:                                    ; preds = %.preheader662.lr.ph, %._crit_edge702
  %indvar1283 = phi i64 [ 0, %.preheader662.lr.ph ], [ %indvar.next1284, %._crit_edge702 ] ; 3 uses
  %indvars.iv953 = phi i64 [ %i.lg, %.preheader662.lr.ph ], [ %indvars.iv.next954, %._crit_edge702 ] ; 6 uses
  %indvars.iv947 = phi i64 [ %i.lf, %.preheader662.lr.ph ], [ %indvars.iv.next948, %._crit_edge702 ] ; 6 uses
  %indvars.iv939 = phi i64 [ %i.le, %.preheader662.lr.ph ], [ %indvars.iv.next940, %._crit_edge702 ] ; 11 uses
  %.3607703 = phi i32 [ 0, %.preheader662.lr.ph ], [ %i.pb, %._crit_edge702 ]
  br i1 %min.iters.check1374, label %scalar.ph1373.preheader, label %vector.scevcheck1282

vector.scevcheck1282:                             ; preds = %.preheader662
  %i.mx = mul i64 %i.jj, %indvar1283              ; 2 uses
  %scevgep1291 = getelementptr i8, ptr %15, i64 %i.mx ; 2 uses
  %scevgep1290 = getelementptr i8, ptr %17, i64 %i.mx ; 2 uses
  %18 = mul i64 %10, %indvar1283                  ; 2 uses
  %scevgep1289 = getelementptr i8, ptr %i.mm, i64 %18 ; 2 uses
  %scevgep1285.a = getelementptr i8, ptr %i.mo, i64 %18 ; 2 uses
  %i.my = getelementptr i8, ptr %scevgep1285.a, i64 %mul1286
  %19 = icmp ult ptr %i.my, %scevgep1285.a
  %i.mz = getelementptr i8, ptr %scevgep1289, i64 %mul1286
  %i.na = icmp ult ptr %i.mz, %scevgep1289
  %i.nb = getelementptr i8, ptr %scevgep1290, i64 %mul1286
  %i.nc = icmp ult ptr %i.nb, %scevgep1290
  %20 = getelementptr i8, ptr %scevgep1291, i64 %11
  %21 = icmp ugt ptr %20, %scevgep1291
  %22 = or i1 %19, %i.na
  %23 = or i1 %22, %i.nc
  %i.nd = or i1 %23, %21
  br i1 %i.nd, label %scalar.ph1373.preheader, label %vector.memcheck1292

vector.memcheck1292:                              ; preds = %vector.scevcheck1282
  br i1 %op.rdx1762, label %scalar.ph1373.preheader, label %vector.ph1375

vector.ph1375:                                    ; preds = %vector.memcheck1292
  %i.ne = add i64 %indvars.iv953, %i.kf
  %i.nf = add i64 %indvars.iv947, %i.kf
  %i.ng = add i64 %indvars.iv939, %i.kf
  %i.nh = sub i64 %indvars.iv939, %i.kg
  %i.ni = getelementptr [4 x i8], ptr %4, i64 %indvars.iv939
  %i.nj = getelementptr [4 x i8], ptr %7, i64 %indvars.iv953
  %i.nk = getelementptr [4 x i8], ptr %7, i64 %indvars.iv947
  br label %vector.body1377

vector.body1377:                                  ; preds = %vector.body1377, %vector.ph1375
  %index1378 = phi i64 [ 0, %vector.ph1375 ], [ %index.next1393, %vector.body1377 ] ; 3 uses
  %i.nl = shl i64 %index1378, 1                   ; 3 uses
  %i.nm = shl i64 %index1378, 1
  %i.nn = sub i64 %indvars.iv939, %i.nm
  %i.no = getelementptr [4 x i8], ptr %i.ni, i64 %i.nl
  %i.np = getelementptr i8, ptr %i.no, i64 4      ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.np, align 4, !alias.scope !1230 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1379 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nq = getelementptr [4 x i8], ptr %4, i64 %i.nn
  %i.nr = getelementptr i8, ptr %i.nq, i64 -36    ; 2 uses
  %wide.vec1380 = load <8 x float>, ptr %i.nr, align 4, !alias.scope !1231 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec1380, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1383 = shufflevector <8 x float> %wide.vec1380, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.ns = fadd <4 x float> %strided.vec, %reverse
  %i.nt = getelementptr [4 x i8], ptr %i.nj, i64 %i.nl
  %i.nu = getelementptr i8, ptr %i.nt, i64 4
  %wide.vec1384 = load <8 x float>, ptr %i.np, align 4, !alias.scope !1230 ; 2 uses
  %strided.vec1385 = shufflevector <8 x float> %wide.vec1384, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1386 = shufflevector <8 x float> %wide.vec1384, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1387 = load <8 x float>, ptr %i.nr, align 4, !alias.scope !1231 ; 2 uses
  %reverse1389.a = shufflevector <8 x float> %wide.vec1387, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1391 = shufflevector <8 x float> %wide.vec1387, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.nv = fsub <4 x float> %strided.vec1385, %reverse1389.a
  %i.nw = getelementptr [4 x i8], ptr %i.nk, i64 %i.nl
  %i.nx = getelementptr i8, ptr %i.nw, i64 4
  %i.ny = fsub <4 x float> %strided.vec1379, %reverse1383
  %interleaved.vec = shufflevector <4 x float> %i.ns, <4 x float> %i.ny, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.nu, align 4
  %i.nz = fadd <4 x float> %strided.vec1386, %reverse1391
  %interleaved.vec1392 = shufflevector <4 x float> %i.nv, <4 x float> %i.nz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1392, ptr %i.nx, align 4
  %index.next1393 = add nuw i64 %index1378, 4     ; 2 uses
  %i.oa = icmp eq i64 %index.next1393, %n.vec1376
  br i1 %i.oa, label %middle.block1394, label %vector.body1377, !llvm.loop !1164

middle.block1394:                                 ; preds = %vector.body1377
  br i1 %cmp.n1395, label %._crit_edge702, label %scalar.ph1373.preheader

scalar.ph1373.preheader:                          ; preds = %vector.memcheck1292, %vector.scevcheck1282, %.preheader662, %middle.block1394
  %indvars.iv955.ph = phi i64 [ %indvars.iv953, %vector.memcheck1292 ], [ %indvars.iv953, %vector.scevcheck1282 ], [ %indvars.iv953, %.preheader662 ], [ %i.ne, %middle.block1394 ]
  %indvars.iv949.ph = phi i64 [ %indvars.iv947, %vector.memcheck1292 ], [ %indvars.iv947, %vector.scevcheck1282 ], [ %indvars.iv947, %.preheader662 ], [ %i.nf, %middle.block1394 ]
  %indvars.iv943.ph = phi i64 [ %indvars.iv939, %vector.memcheck1292 ], [ %indvars.iv939, %vector.scevcheck1282 ], [ %indvars.iv939, %.preheader662 ], [ %i.ng, %middle.block1394 ]
  %indvars.iv941.ph = phi i64 [ %indvars.iv939, %vector.memcheck1292 ], [ %indvars.iv939, %vector.scevcheck1282 ], [ %indvars.iv939, %.preheader662 ], [ %i.nh, %middle.block1394 ]
  %.2628696.ph = phi i32 [ 2, %vector.memcheck1292 ], [ 2, %vector.scevcheck1282 ], [ 2, %.preheader662 ], [ %i.kj, %middle.block1394 ]
  br label %scalar.ph1373

scalar.ph1373:                                    ; preds = %scalar.ph1373.preheader, %scalar.ph1373
  %indvars.iv955 = phi i64 [ %indvars.iv.next956, %scalar.ph1373 ], [ %indvars.iv955.ph, %scalar.ph1373.preheader ] ; 2 uses
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %scalar.ph1373 ], [ %indvars.iv949.ph, %scalar.ph1373.preheader ] ; 2 uses
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %scalar.ph1373 ], [ %indvars.iv943.ph, %scalar.ph1373.preheader ] ; 2 uses
  %indvars.iv941 = phi i64 [ %indvars.iv.next942, %scalar.ph1373 ], [ %indvars.iv941.ph, %scalar.ph1373.preheader ] ; 2 uses
  %.2628696 = phi i32 [ %i.oz, %scalar.ph1373 ], [ %.2628696.ph, %scalar.ph1373.preheader ]
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 2 ; 2 uses
  %indvars.iv.next950 = add nsw i64 %indvars.iv949, 2 ; 2 uses
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, 2 ; 2 uses
  %indvars.iv.next942 = add nsw i64 %indvars.iv941, -2 ; 2 uses
  %i.ob = getelementptr [4 x i8], ptr %4, i64 %indvars.iv943
  %i.oc = getelementptr i8, ptr %i.ob, i64 4      ; 2 uses
  %i.od = load float, ptr %i.oc, align 4
  %i.oe = getelementptr [4 x i8], ptr %4, i64 %indvars.iv941
  %i.of = getelementptr i8, ptr %i.oe, i64 -12    ; 2 uses
  %i.og = load float, ptr %i.of, align 4
  %i.oh = fadd float %i.od, %i.og
  %i.oi = getelementptr [4 x i8], ptr %7, i64 %indvars.iv955
  %i.oj = getelementptr i8, ptr %i.oi, i64 4
  store float %i.oh, ptr %i.oj, align 4
  %i.ok = load float, ptr %i.oc, align 4
  %i.ol = load float, ptr %i.of, align 4
  %i.om = fsub float %i.ok, %i.ol
  %i.on = getelementptr [4 x i8], ptr %7, i64 %indvars.iv949
  %i.oo = getelementptr i8, ptr %i.on, i64 4
  store float %i.om, ptr %i.oo, align 4
  %i.op = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next944 ; 2 uses
  %i.oq = load float, ptr %i.op, align 4
  %i.or = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next942 ; 2 uses
  %i.os = load float, ptr %i.or, align 4
  %i.ot = fsub float %i.oq, %i.os
  %i.ou = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next956
  store float %i.ot, ptr %i.ou, align 4
  %i.ov = load float, ptr %i.op, align 4
  %i.ow = load float, ptr %i.or, align 4
  %i.ox = fadd float %i.ov, %i.ow
  %i.oy = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next950
  store float %i.ox, ptr %i.oy, align 4
  %i.oz = add nuw nsw i32 %.2628696, 2            ; 2 uses
  %i.pa = icmp slt i32 %i.oz, %0
  br i1 %i.pa, label %scalar.ph1373, label %._crit_edge702, !llvm.loop !1165

._crit_edge702:                                   ; preds = %scalar.ph1373, %middle.block1394
  %indvars.iv.next954 = add i64 %indvars.iv953, %i.jg
  %indvars.iv.next948 = add i64 %indvars.iv947, %i.jg
  %indvars.iv.next940 = add i64 %indvars.iv939, %i.jd
  %i.pb = add nuw nsw i32 %.3607703, 1            ; 2 uses
  %exitcond969.not = icmp eq i32 %i.pb, %2
  %indvar.next1284 = add i64 %indvar1283, 1
  br i1 %exitcond969.not, label %._crit_edge707, label %.preheader662, !llvm.loop !1166

._crit_edge707:                                   ; preds = %._crit_edge702
  %i.pc = add nuw nsw i32 %.1616708, 1            ; 2 uses
  %indvars.iv.next938 = add i32 %indvars.iv937, %i.ed
  %indvars.iv.next946 = sub i32 %indvars.iv945, %i.d
  %indvars.iv.next952 = add i32 %indvars.iv951, %i.d
  %exitcond970.not = icmp eq i32 %i.pc, %i.o
  br i1 %exitcond970.not, label %.loopexit661, label %.preheader662.lr.ph, !llvm.loop !1167

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %._crit_edge729
  %indvars.iv989 = phi i32 [ %i.kt, %.lr.ph728.preheader ], [ %indvars.iv.next990, %._crit_edge729 ] ; 2 uses
  %indvars.iv983 = phi i32 [ %i.kr, %.lr.ph728.preheader ], [ %indvars.iv.next984, %._crit_edge729 ] ; 2 uses
  %indvars.iv977 = phi i32 [ %i.ko, %.lr.ph728.preheader ], [ %indvars.iv.next978, %._crit_edge729 ] ; 2 uses
  %indvars.iv971 = phi i32 [ %i.km, %.lr.ph728.preheader ], [ %indvars.iv.next972, %._crit_edge729 ] ; 2 uses
  %.2617730 = phi i32 [ 1, %.lr.ph728.preheader ], [ %i.qe, %._crit_edge729 ]
  br label %.lr.ph720

.lr.ph720:                                        ; preds = %.lr.ph728, %._crit_edge721
  %indvars.iv991 = phi i32 [ %indvars.iv989, %.lr.ph728 ], [ %indvars.iv.next992, %._crit_edge721 ] ; 2 uses
  %indvars.iv985 = phi i32 [ %indvars.iv983, %.lr.ph728 ], [ %indvars.iv.next986, %._crit_edge721 ] ; 2 uses
  %indvars.iv979 = phi i32 [ %indvars.iv977, %.lr.ph728 ], [ %indvars.iv.next980, %._crit_edge721 ] ; 2 uses
  %indvars.iv973 = phi i32 [ %indvars.iv971, %.lr.ph728 ], [ %indvars.iv.next974, %._crit_edge721 ] ; 2 uses
  %.3629722 = phi i32 [ 2, %.lr.ph728 ], [ %i.qc, %._crit_edge721 ]
  %i.pd = sext i32 %indvars.iv973 to i64
  %i.pe = sext i32 %indvars.iv979 to i64
  %i.pf = sext i32 %indvars.iv985 to i64
  %i.pg = sext i32 %indvars.iv991 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph720, %bb.c
  %indvars.iv993 = phi i64 [ %i.pg, %.lr.ph720 ], [ %indvars.iv.next994, %bb.c ] ; 2 uses
  %indvars.iv987 = phi i64 [ %i.pf, %.lr.ph720 ], [ %indvars.iv.next988, %bb.c ] ; 2 uses
  %indvars.iv981 = phi i64 [ %i.pe, %.lr.ph720 ], [ %indvars.iv.next982, %bb.c ] ; 2 uses
  %indvars.iv975 = phi i64 [ %i.pd, %.lr.ph720 ], [ %indvars.iv.next976, %bb.c ] ; 2 uses
  %.4608714 = phi i32 [ 0, %.lr.ph720 ], [ %i.qb, %bb.c ]
  %i.ph = getelementptr [4 x i8], ptr %4, i64 %indvars.iv981 ; 3 uses
  %i.pi = getelementptr i8, ptr %i.ph, i64 -4     ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4
  %i.pk = getelementptr [4 x i8], ptr %4, i64 %indvars.iv975 ; 3 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 -4     ; 2 uses
  %i.pm = load float, ptr %i.pl, align 4
  %i.pn = fadd float %i.pj, %i.pm
  %i.po = getelementptr [4 x i8], ptr %7, i64 %indvars.iv993 ; 2 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 -4
  store float %i.pn, ptr %i.pp, align 4
  %i.pq = load float, ptr %i.pi, align 4
  %i.pr = load float, ptr %i.pl, align 4
  %i.ps = fsub float %i.pq, %i.pr
  %i.pt = getelementptr [4 x i8], ptr %7, i64 %indvars.iv987 ; 2 uses
  %i.pu = getelementptr i8, ptr %i.pt, i64 -4
  store float %i.ps, ptr %i.pu, align 4
  %i.pv = load float, ptr %i.ph, align 4
  %i.pw = load float, ptr %i.pk, align 4
  %i.px = fsub float %i.pv, %i.pw
  store float %i.px, ptr %i.po, align 4
  %i.py = load float, ptr %i.ph, align 4
  %i.pz = load float, ptr %i.pk, align 4
  %i.qa = fadd float %i.py, %i.pz
  store float %i.qa, ptr %i.pt, align 4
  %indvars.iv.next994 = add nsw i64 %indvars.iv993, %i.ks
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, %i.ks
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, %i.kn
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, %i.kn
  %i.qb = add nuw nsw i32 %.4608714, 1            ; 2 uses
  %exitcond1002.not = icmp eq i32 %i.qb, %2
  br i1 %exitcond1002.not, label %._crit_edge721, label %bb.c, !llvm.loop !1168

._crit_edge721:                                   ; preds = %bb.c
  %i.qc = add nuw nsw i32 %.3629722, 2            ; 2 uses
  %i.qd = icmp slt i32 %i.qc, %0
  %indvars.iv.next974 = add i32 %indvars.iv973, -2
  %indvars.iv.next980 = add i32 %indvars.iv979, 2
  %indvars.iv.next986 = add i32 %indvars.iv985, 2
  %indvars.iv.next992 = add i32 %indvars.iv991, 2
  br i1 %i.qd, label %.lr.ph720, label %._crit_edge729, !llvm.loop !1169

._crit_edge729:                                   ; preds = %._crit_edge721
  %i.qe = add nuw nsw i32 %.2617730, 1            ; 2 uses
  %indvars.iv.next972 = add i32 %indvars.iv971, %i.ed
  %indvars.iv.next978 = add i32 %indvars.iv977, %i.ed
  %indvars.iv.next984 = sub i32 %indvars.iv983, %i.d
  %indvars.iv.next990 = add i32 %indvars.iv989, %i.d
  %exitcond1003.not = icmp eq i32 %i.qe, %i.o
  br i1 %exitcond1003.not, label %.loopexit661, label %.lr.ph728, !llvm.loop !1170

.loopexit661.thread:                              ; preds = %.lr.ph734, %.lr.ph712
  %i.qf = add i32 %1, -1
end_hunk_0
