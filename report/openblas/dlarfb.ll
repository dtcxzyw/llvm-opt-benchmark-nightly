Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarfb?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dlarfb_:bb.a
  %i.gw = load double, ptr %gep1146.prol, align 8, !tbaa !84
  %gep1148.prol = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv957.prol ; 2 uses
  %i.gx = load double, ptr %gep1148.prol, align 8, !tbaa !84
  %i.gy = fsub double %i.gx, %i.gw
  store double %i.gy, ptr %gep1148.prol, align 8, !tbaa !84
  %indvars.iv.next958.prol = add nuw nsw i64 %indvars.iv957.prol, 1 ; 2 uses
  %prol.iter1577.next = add i64 %prol.iter1577, 1 ; 2 uses
  %prol.iter1577.cmp.not = icmp eq i64 %prol.iter1577.next, %xtraiter1575
  br i1 %prol.iter1577.cmp.not, label %vec.epilog.scalar.ph1236.prol.loopexit, label %vec.epilog.scalar.ph1236.prol, !llvm.loop !23

vec.epilog.scalar.ph1236.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1236.prol, %vec.epilog.scalar.ph1236.preheader
  %indvars.iv957.unr = phi i64 [ %indvars.iv957.ph, %vec.epilog.scalar.ph1236.preheader ], [ %indvars.iv.next958.prol, %vec.epilog.scalar.ph1236.prol ]
  %i.gz = icmp ult i64 %i.gv, 7
  br i1 %i.gz, label %._crit_edge838, label %vec.epilog.scalar.ph1236

vec.epilog.scalar.ph1236:                         ; preds = %vec.epilog.scalar.ph1236.prol.loopexit, %vec.epilog.scalar.ph1236
  %indvars.iv957 = phi i64 [ %indvars.iv.next958.7, %vec.epilog.scalar.ph1236 ], [ %indvars.iv957.unr, %vec.epilog.scalar.ph1236.prol.loopexit ] ; 10 uses
  %gep1146 = getelementptr [8 x i8], ptr %invariant.gep1145, i64 %indvars.iv957
  %i.ha = load double, ptr %gep1146, align 8, !tbaa !84
  %gep1148 = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv957 ; 2 uses
  %i.hb = load double, ptr %gep1148, align 8, !tbaa !84
  %i.hc = fsub double %i.hb, %i.ha
  store double %i.hc, ptr %gep1148, align 8, !tbaa !84
  %indvars.iv.next958 = add nuw nsw i64 %indvars.iv957, 1 ; 2 uses
  %gep1146.1 = getelementptr [8 x i8], ptr %invariant.gep1145, i64 %indvars.iv.next958
  %i.hd = load double, ptr %gep1146.1, align 8, !tbaa !84
  %gep1148.1 = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv.next958 ; 2 uses
  %i.he = load double, ptr %gep1148.1, align 8, !tbaa !84
  %i.hf = fsub double %i.he, %i.hd
  store double %i.hf, ptr %gep1148.1, align 8, !tbaa !84
  %indvars.iv.next958.1 = add nuw nsw i64 %indvars.iv957, 2 ; 2 uses
  %gep1146.2 = getelementptr [8 x i8], ptr %invariant.gep1145, i64 %indvars.iv.next958.1
  %i.hg = load double, ptr %gep1146.2, align 8, !tbaa !84
  %gep1148.2 = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv.next958.1 ; 2 uses
  %i.hh = load double, ptr %gep1148.2, align 8, !tbaa !84
  %i.hi = fsub double %i.hh, %i.hg
  store double %i.hi, ptr %gep1148.2, align 8, !tbaa !84
  %indvars.iv.next958.2 = add nuw nsw i64 %indvars.iv957, 3 ; 2 uses
  %gep1146.3 = getelementptr [8 x i8], ptr %invariant.gep1145, i64 %indvars.iv.next958.2
  %i.hj = load double, ptr %gep1146.3, align 8, !tbaa !84
  %gep1148.3 = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv.next958.2 ; 2 uses
  %i.hk = load double, ptr %gep1148.3, align 8, !tbaa !84
  %i.hl = fsub double %i.hk, %i.hj
  store double %i.hl, ptr %gep1148.3, align 8, !tbaa !84
  %indvars.iv.next958.3 = add nuw nsw i64 %indvars.iv957, 4 ; 2 uses
  %gep1146.4 = getelementptr [8 x i8], ptr %invariant.gep1145, i64 %indvars.iv.next958.3
  %i.hm = load double, ptr %gep1146.4, align 8, !tbaa !84
  %gep1148.4 = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv.next958.3 ; 2 uses
  %i.hn = load double, ptr %gep1148.4, align 8, !tbaa !84
  %i.ho = fsub double %i.hn, %i.hm
  store double %i.ho, ptr %gep1148.4, align 8, !tbaa !84
  %indvars.iv.next958.4 = add nuw nsw i64 %indvars.iv957, 5 ; 2 uses
  %gep1146.5 = getelementptr [8 x i8], ptr %invariant.gep1145, i64 %indvars.iv.next958.4
  %i.hp = load double, ptr %gep1146.5, align 8, !tbaa !84
  %gep1148.5 = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv.next958.4 ; 2 uses
  %i.hq = load double, ptr %gep1148.5, align 8, !tbaa !84
  %i.hr = fsub double %i.hq, %i.hp
  store double %i.hr, ptr %gep1148.5, align 8, !tbaa !84
  %indvars.iv.next958.5 = add nuw nsw i64 %indvars.iv957, 6 ; 2 uses
  %gep1146.6 = getelementptr [8 x i8], ptr %invariant.gep1145, i64 %indvars.iv.next958.5
  %i.hs = load double, ptr %gep1146.6, align 8, !tbaa !84
  %gep1148.6 = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv.next958.5 ; 2 uses
  %i.ht = load double, ptr %gep1148.6, align 8, !tbaa !84
  %i.hu = fsub double %i.ht, %i.hs
  store double %i.hu, ptr %gep1148.6, align 8, !tbaa !84
  %indvars.iv.next958.6 = add nuw nsw i64 %indvars.iv957, 7 ; 2 uses
  %gep1146.7 = getelementptr [8 x i8], ptr %invariant.gep1145, i64 %indvars.iv.next958.6
  %i.hv = load double, ptr %gep1146.7, align 8, !tbaa !84
  %gep1148.7 = getelementptr [8 x i8], ptr %invariant.gep1147, i64 %indvars.iv.next958.6 ; 2 uses
  %i.hw = load double, ptr %gep1148.7, align 8, !tbaa !84
  %i.hx = fsub double %i.hw, %i.hv
  store double %i.hx, ptr %gep1148.7, align 8, !tbaa !84
  %indvars.iv.next958.7 = add nuw nsw i64 %indvars.iv957, 8 ; 2 uses
  %exitcond961.not.7 = icmp eq i64 %indvars.iv.next958.7, %wide.trip.count960
  br i1 %exitcond961.not.7, label %._crit_edge838, label %vec.epilog.scalar.ph1236, !llvm.loop !24

._crit_edge838:                                   ; preds = %vec.epilog.scalar.ph1236.prol.loopexit, %vec.epilog.scalar.ph1236, %vec.epilog.middle.block1246, %middle.block1232
  %indvars.iv.next963 = add nuw nsw i64 %indvars.iv962, 1 ; 2 uses
  %exitcond966.not = icmp eq i64 %indvars.iv.next963, %wide.trip.count965
  br i1 %exitcond966.not, label %.loopexit, label %iter.check1234, !llvm.loop !25

bb.q:                                             ; preds = %bb.d
  br i1 %.not778, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hy = load i32, ptr %6, align 4, !tbaa !80    ; 4 uses
  store i32 %i.hy, ptr %i.a, align 4, !tbaa !80
  %.not783843 = icmp slt i32 %i.hy, 1
  br i1 %.not783843, label %._crit_edge847, label %.lr.ph846.preheader

.lr.ph846.preheader:                              ; preds = %bb.r
  %i.hz = sext i32 %i.i to i64
  %i.ia = add nuw i32 %i.hy, 1
  %wide.trip.count970 = zext i32 %i.ia to i64
  br label %.lr.ph846

.lr.ph846:                                        ; preds = %.lr.ph846.preheader, %.lr.ph846
  %indvars.iv967 = phi i64 [ 1, %.lr.ph846.preheader ], [ %indvars.iv.next968, %.lr.ph846 ] ; 3 uses
  %i.ib = load i32, ptr %4, align 4, !tbaa !80
  %i.ic = load i32, ptr %6, align 4, !tbaa !80
  %i.id = trunc nuw nsw i64 %indvars.iv967 to i32
  %i.ie = add i32 %i.f, %i.id
  %i.if = add i32 %i.ie, %i.ib
  %i.ig = sub i32 %i.if, %i.ic
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ih
  %i.ij = mul nsw i64 %indvars.iv967, %i.hz
  %i.ik = getelementptr [8 x i8], ptr %i.k, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  tail call void @dcopy_(ptr noundef nonnull %5, ptr noundef %i.ii, ptr noundef nonnull %12, ptr noundef %i.il, ptr noundef nonnull @c__1) #3
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 1 ; 2 uses
  %exitcond971.not = icmp eq i64 %indvars.iv.next968, %wide.trip.count970
  br i1 %exitcond971.not, label %._crit_edge847.loopexit, label %.lr.ph846, !llvm.loop !26

._crit_edge847.loopexit:                          ; preds = %.lr.ph846
  %.pre = load i32, ptr %6, align 4, !tbaa !80
  br label %._crit_edge847

._crit_edge847:                                   ; preds = %._crit_edge847.loopexit, %bb.r
  %i.im = phi i32 [ %.pre, %._crit_edge847.loopexit ], [ %i.hy, %bb.r ]
  %i.in = load i32, ptr %4, align 4, !tbaa !80
  %i.io = add i32 %i.c, 1                         ; 2 uses
  %i.ip = add i32 %i.io, %i.in
  %i.iq = sub i32 %i.ip, %i.im
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ir
  tail call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %i.is, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.it = load i32, ptr %4, align 4, !tbaa !80    ; 2 uses
  %i.iu = load i32, ptr %6, align 4, !tbaa !80    ; 2 uses
  %i.iv = icmp sgt i32 %i.it, %i.iu
  br i1 %i.iv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge847
  %i.iw = sub nsw i32 %i.it, %i.iu
  store i32 %i.iw, ptr %i.a, align 4, !tbaa !80
  call void @dgemm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b14, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @c_b14, ptr noundef %13, ptr noundef nonnull %14) #3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge847
  call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.ix = load i32, ptr %4, align 4, !tbaa !80    ; 3 uses
  %i.iy = load i32, ptr %6, align 4, !tbaa !80    ; 3 uses
  %i.iz = icmp sgt i32 %i.ix, %i.iy
  br i1 %i.iz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ja = sub nsw i32 %i.ix, %i.iy
  store i32 %i.ja, ptr %i.a, align 4, !tbaa !80
  call void @dgemm_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b25, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull @c_b14, ptr noundef %11, ptr noundef nonnull %12) #3
  %.pre1057 = load i32, ptr %4, align 4, !tbaa !80
  %.pre1058 = load i32, ptr %6, align 4, !tbaa !80
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.jb = phi i32 [ %.pre1058, %bb.u ], [ %i.iy, %bb.t ]
  %i.jc = phi i32 [ %.pre1057, %bb.u ], [ %i.ix, %bb.t ]
  %i.jd = add i32 %i.io, %i.jc
  %i.je = sub i32 %i.jd, %i.jb
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.jf
  call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %i.jg, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.jh = load i32, ptr %6, align 4, !tbaa !80    ; 4 uses
  %.not784853 = icmp slt i32 %i.jh, 1
  br i1 %.not784853, label %.loopexit, label %.lr.ph856

.lr.ph856:                                        ; preds = %bb.v
  %i.ji = load i32, ptr %5, align 4, !tbaa !80    ; 6 uses
  %.not785848 = icmp slt i32 %i.ji, 1
  br i1 %.not785848, label %.loopexit, label %.lr.ph856.split

.lr.ph856.split:                                  ; preds = %.lr.ph856
  %i.jj = load i32, ptr %4, align 4, !tbaa !80    ; 2 uses
  %invariant.op857 = sub i32 %i.jj, %i.jh
  %i.jk = add nuw i32 %i.ji, 1
  %i.jl = sext i32 %i.i to i64                    ; 3 uses
  %i.jm = add nuw i32 %i.jh, 1
  %wide.trip.count980 = zext i32 %i.jm to i64     ; 2 uses
  %wide.trip.count975 = zext i32 %i.jk to i64     ; 4 uses
  %i.jn = add nsw i64 %wide.trip.count975, -2     ; 2 uses
  %i.jo = add i32 %i.jj, 2
  %i.jp = sub i32 %i.jo, %i.jh                    ; 2 uses
  %i.jq = shl nsw i64 %i.jl, 3
  %i.jr = shl nuw nsw i64 %wide.trip.count975, 3  ; 2 uses
  %i.js = shl nuw nsw i64 %wide.trip.count980, 3
  %i.jt = add nsw i64 %i.js, -8
  %i.ju = mul i64 %i.jt, %i.jl
  %i.jv = shl nsw i64 %i.j, 3                     ; 2 uses
  %i.jw = getelementptr i8, ptr %13, i64 %i.ju
  %i.jx = getelementptr i8, ptr %i.jw, i64 %i.jv
  %scevgep1262 = getelementptr i8, ptr %i.jx, i64 %i.jr
  %i.jy = getelementptr i8, ptr %13, i64 %i.jq
  %i.jz = getelementptr i8, ptr %i.jy, i64 %i.jv
  %scevgep1263 = getelementptr i8, ptr %i.jz, i64 8
  %i.ka = zext nneg i32 %i.ji to i64              ; 5 uses
  %i.kb = zext nneg i32 %i.ji to i64
  %min.iters.check1264 = icmp ult i32 %i.ji, 4
  %ident.check1250 = icmp ne i32 %i.f, 1
  %i.kc = trunc i64 %i.jn to i32
  %i.kd = icmp ugt i64 %i.jn, 4294967295
  %invariant.op1596 = or i1 %i.kd, %ident.check1250
  %15 = getelementptr i8, ptr %11, i64 %i.jr
  %invariant.gep1598 = getelementptr i8, ptr %15, i64 -24
  %stride.check1269 = icmp slt i32 %i.i, 0
  %min.iters.check1271 = icmp ult i32 %i.ji, 16
  %i.ke = and i64 %i.ka, 12
  %n.vec1273 = and i64 %i.ka, 2147483632          ; 4 uses
  %i.kf = or disjoint i64 %n.vec1273, 1
  %cmp.n1286 = icmp eq i64 %n.vec1273, %i.ka
  %min.epilog.iters.check1290 = icmp eq i64 %i.ke, 0
  %n.vec1293 = and i64 %i.ka, 2147483644          ; 3 uses
  %i.kg = or disjoint i64 %n.vec1293, 1
  %cmp.n1300 = icmp eq i64 %n.vec1293, %i.ka
  br label %iter.check1287

iter.check1287:                                   ; preds = %.lr.ph856.split, %._crit_edge852
  %indvar = phi i32 [ 0, %.lr.ph856.split ], [ %indvar.next, %._crit_edge852 ] ; 3 uses
  %indvars.iv977 = phi i64 [ 1, %.lr.ph856.split ], [ %indvars.iv.next978, %._crit_edge852 ] ; 3 uses
  %i.kh = mul nsw i64 %indvars.iv977, %i.jl
  %i.ki = trunc nuw nsw i64 %indvars.iv977 to i32
  %invariant.op.reass = add i32 %invariant.op857, %i.ki ; 7 uses
  %invariant.gep1149 = getelementptr [8 x i8], ptr %i.k, i64 %i.kh ; 7 uses
  br i1 %min.iters.check1264, label %vec.epilog.scalar.ph1289.preheader, label %vector.scevcheck1249

vector.scevcheck1249:                             ; preds = %iter.check1287
  %i.kj = add i32 %i.jp, %indvar                  ; 2 uses
  %i.kk = add i32 %i.kj, %i.kc
  %i.kl = icmp slt i32 %i.kk, %i.kj
  %.reass1597 = or i1 %i.kl, %invariant.op1596
  br i1 %.reass1597, label %vec.epilog.scalar.ph1289.preheader, label %vector.memcheck1265

vector.memcheck1265:                              ; preds = %vector.scevcheck1249
  %i.km = add i32 %i.jp, %indvar
  %i.kn = sext i32 %i.km to i64
  %i.ko = shl nsw i64 %i.kn, 3                    ; 2 uses
  %i.kp = getelementptr i8, ptr %11, i64 %i.ko
  %gep1599 = getelementptr i8, ptr %i.kp, i64 -16
  %i.kq = getelementptr i8, ptr %invariant.gep1598, i64 %i.ko
  %bound01266 = icmp ult ptr %scevgep1263, %i.kq
  %bound11267 = icmp ult ptr %gep1599, %scevgep1262
  %found.conflict1268 = and i1 %bound01266, %bound11267
  %i.kr = or i1 %found.conflict1268, %stride.check1269
  br i1 %i.kr, label %vec.epilog.scalar.ph1289.preheader, label %vector.main.loop.iter.check1270

vector.main.loop.iter.check1270:                  ; preds = %vector.memcheck1265
  br i1 %min.iters.check1271, label %vec.epilog.ph1291, label %vector.body1274

vector.body1274:                                  ; preds = %vector.main.loop.iter.check1270, %vector.body1274
  %index1275 = phi i64 [ %index.next1284, %vector.body1274 ], [ 0, %vector.main.loop.iter.check1270 ] ; 2 uses
  %i.ks = or disjoint i64 %index1275, 1           ; 2 uses
  %i.kt = getelementptr [8 x i8], ptr %invariant.gep1149, i64 %i.ks ; 4 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 32
  %i.kv = getelementptr i8, ptr %i.kt, i64 64
  %i.kw = getelementptr i8, ptr %i.kt, i64 96
  %wide.load1276 = load <4 x double>, ptr %i.kt, align 8, !tbaa !84, !alias.scope !93, !noalias !94
  %wide.load1277 = load <4 x double>, ptr %i.ku, align 8, !tbaa !84, !alias.scope !93, !noalias !94
  %wide.load1278 = load <4 x double>, ptr %i.kv, align 8, !tbaa !84, !alias.scope !93, !noalias !94
  %wide.load1279 = load <4 x double>, ptr %i.kw, align 8, !tbaa !84, !alias.scope !93, !noalias !94
  %i.kx = trunc i64 %i.ks to i32
  %i.ky = add i32 %invariant.op.reass, %i.kx
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kz ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 64 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 96 ; 2 uses
  %wide.load1280 = load <4 x double>, ptr %i.la, align 8, !tbaa !84, !alias.scope !94
  %wide.load1281 = load <4 x double>, ptr %i.lb, align 8, !tbaa !84, !alias.scope !94
  %wide.load1282 = load <4 x double>, ptr %i.lc, align 8, !tbaa !84, !alias.scope !94
  %wide.load1283 = load <4 x double>, ptr %i.ld, align 8, !tbaa !84, !alias.scope !94
  %i.le = fsub <4 x double> %wide.load1280, %wide.load1276
  %i.lf = fsub <4 x double> %wide.load1281, %wide.load1277
  %i.lg = fsub <4 x double> %wide.load1282, %wide.load1278
  %i.lh = fsub <4 x double> %wide.load1283, %wide.load1279
  store <4 x double> %i.le, ptr %i.la, align 8, !tbaa !84, !alias.scope !94
  store <4 x double> %i.lf, ptr %i.lb, align 8, !tbaa !84, !alias.scope !94
  store <4 x double> %i.lg, ptr %i.lc, align 8, !tbaa !84, !alias.scope !94
  store <4 x double> %i.lh, ptr %i.ld, align 8, !tbaa !84, !alias.scope !94
  %index.next1284 = add nuw i64 %index1275, 16    ; 2 uses
  %i.li = icmp eq i64 %index.next1284, %n.vec1273
  br i1 %i.li, label %middle.block1285, label %vector.body1274, !llvm.loop !30

middle.block1285:                                 ; preds = %vector.body1274
  br i1 %cmp.n1286, label %._crit_edge852, label %vec.epilog.iter.check1288

vec.epilog.iter.check1288:                        ; preds = %middle.block1285
  br i1 %min.epilog.iters.check1290, label %vec.epilog.scalar.ph1289.preheader, label %vec.epilog.ph1291, !prof !89

vec.epilog.ph1291:                                ; preds = %vector.main.loop.iter.check1270, %vec.epilog.iter.check1288
  %vec.epilog.resume.val1292 = phi i64 [ %n.vec1273, %vec.epilog.iter.check1288 ], [ 0, %vector.main.loop.iter.check1270 ]
  br label %vec.epilog.vector.body1294

vec.epilog.vector.body1294:                       ; preds = %vec.epilog.vector.body1294, %vec.epilog.ph1291
  %index1295 = phi i64 [ %vec.epilog.resume.val1292, %vec.epilog.ph1291 ], [ %index.next1298, %vec.epilog.vector.body1294 ] ; 2 uses
  %i.lj = or disjoint i64 %index1295, 1           ; 2 uses
  %i.lk = getelementptr [8 x i8], ptr %invariant.gep1149, i64 %i.lj
  %wide.load1296 = load <4 x double>, ptr %i.lk, align 8, !tbaa !84, !alias.scope !93, !noalias !94
  %i.ll = trunc i64 %i.lj to i32
  %i.lm = add i32 %invariant.op.reass, %i.ll
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ln ; 2 uses
  %wide.load1297 = load <4 x double>, ptr %i.lo, align 8, !tbaa !84, !alias.scope !94
  %i.lp = fsub <4 x double> %wide.load1297, %wide.load1296
  store <4 x double> %i.lp, ptr %i.lo, align 8, !tbaa !84, !alias.scope !94
  %index.next1298 = add nuw i64 %index1295, 4     ; 2 uses
  %i.lq = icmp eq i64 %index.next1298, %n.vec1293
  br i1 %i.lq, label %vec.epilog.middle.block1299, label %vec.epilog.vector.body1294, !llvm.loop !31

vec.epilog.middle.block1299:                      ; preds = %vec.epilog.vector.body1294
  br i1 %cmp.n1300, label %._crit_edge852, label %vec.epilog.scalar.ph1289.preheader

vec.epilog.scalar.ph1289.preheader:               ; preds = %iter.check1287, %vector.scevcheck1249, %vector.memcheck1265, %vec.epilog.iter.check1288, %vec.epilog.middle.block1299
  %indvars.iv972.ph = phi i64 [ 1, %iter.check1287 ], [ 1, %vector.scevcheck1249 ], [ 1, %vector.memcheck1265 ], [ %i.kf, %vec.epilog.iter.check1288 ], [ %i.kg, %vec.epilog.middle.block1299 ] ; 4 uses
  %i.lr = sub i64 %wide.trip.count975, %indvars.iv972.ph
  %i.ls = sub i64 %i.kb, %indvars.iv972.ph
  %xtraiter1578 = and i64 %i.lr, 3                ; 2 uses
  %lcmp.mod1579.not = icmp eq i64 %xtraiter1578, 0
  br i1 %lcmp.mod1579.not, label %vec.epilog.scalar.ph1289.prol.loopexit, label %vec.epilog.scalar.ph1289.prol

vec.epilog.scalar.ph1289.prol:                    ; preds = %vec.epilog.scalar.ph1289.preheader, %vec.epilog.scalar.ph1289.prol
  %indvars.iv972.prol = phi i64 [ %indvars.iv.next973.prol, %vec.epilog.scalar.ph1289.prol ], [ %indvars.iv972.ph, %vec.epilog.scalar.ph1289.preheader ] ; 3 uses
  %prol.iter1580 = phi i64 [ %prol.iter1580.next, %vec.epilog.scalar.ph1289.prol ], [ 0, %vec.epilog.scalar.ph1289.preheader ]
  %gep1150.prol = getelementptr [8 x i8], ptr %invariant.gep1149, i64 %indvars.iv972.prol
  %i.lt = load double, ptr %gep1150.prol, align 8, !tbaa !84
  %i.lu = trunc i64 %indvars.iv972.prol to i32
  %i.lv = mul i32 %i.f, %i.lu
  %.reass.prol = add i32 %i.lv, %invariant.op.reass
  %i.lw = sext i32 %.reass.prol to i64
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lw ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !84
  %i.lz = fsub double %i.ly, %i.lt
  store double %i.lz, ptr %i.lx, align 8, !tbaa !84
  %indvars.iv.next973.prol = add nuw nsw i64 %indvars.iv972.prol, 1 ; 2 uses
  %prol.iter1580.next = add i64 %prol.iter1580, 1 ; 2 uses
  %prol.iter1580.cmp.not = icmp eq i64 %prol.iter1580.next, %xtraiter1578
  br i1 %prol.iter1580.cmp.not, label %vec.epilog.scalar.ph1289.prol.loopexit, label %vec.epilog.scalar.ph1289.prol, !llvm.loop !32

vec.epilog.scalar.ph1289.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1289.prol, %vec.epilog.scalar.ph1289.preheader
  %indvars.iv972.unr = phi i64 [ %indvars.iv972.ph, %vec.epilog.scalar.ph1289.preheader ], [ %indvars.iv.next973.prol, %vec.epilog.scalar.ph1289.prol ]
  %i.ma = icmp ult i64 %i.ls, 3
  br i1 %i.ma, label %._crit_edge852, label %vec.epilog.scalar.ph1289

vec.epilog.scalar.ph1289:                         ; preds = %vec.epilog.scalar.ph1289.prol.loopexit, %vec.epilog.scalar.ph1289
  %indvars.iv972 = phi i64 [ %indvars.iv.next973.3, %vec.epilog.scalar.ph1289 ], [ %indvars.iv972.unr, %vec.epilog.scalar.ph1289.prol.loopexit ] ; 6 uses
  %gep1150 = getelementptr [8 x i8], ptr %invariant.gep1149, i64 %indvars.iv972
  %i.mb = load double, ptr %gep1150, align 8, !tbaa !84
  %i.mc = trunc i64 %indvars.iv972 to i32
  %i.md = mul i32 %i.f, %i.mc
  %.reass = add i32 %i.md, %invariant.op.reass
  %i.me = sext i32 %.reass to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.me ; 2 uses
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !84
  %i.mh = fsub double %i.mg, %i.mb
  store double %i.mh, ptr %i.mf, align 8, !tbaa !84
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 1 ; 2 uses
  %gep1150.1 = getelementptr [8 x i8], ptr %invariant.gep1149, i64 %indvars.iv.next973
  %i.mi = load double, ptr %gep1150.1, align 8, !tbaa !84
  %i.mj = trunc i64 %indvars.iv.next973 to i32
  %i.mk = mul i32 %i.f, %i.mj
  %.reass.1 = add i32 %i.mk, %invariant.op.reass
  %i.ml = sext i32 %.reass.1 to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ml ; 2 uses
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !84
  %i.mo = fsub double %i.mn, %i.mi
  store double %i.mo, ptr %i.mm, align 8, !tbaa !84
  %indvars.iv.next973.1 = add nuw nsw i64 %indvars.iv972, 2 ; 2 uses
  %gep1150.2 = getelementptr [8 x i8], ptr %invariant.gep1149, i64 %indvars.iv.next973.1
  %i.mp = load double, ptr %gep1150.2, align 8, !tbaa !84
  %i.mq = trunc i64 %indvars.iv.next973.1 to i32
  %i.mr = mul i32 %i.f, %i.mq
  %.reass.2 = add i32 %i.mr, %invariant.op.reass
  %i.ms = sext i32 %.reass.2 to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ms ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !84
  %i.mv = fsub double %i.mu, %i.mp
  store double %i.mv, ptr %i.mt, align 8, !tbaa !84
  %indvars.iv.next973.2 = add nuw nsw i64 %indvars.iv972, 3 ; 2 uses
  %gep1150.3 = getelementptr [8 x i8], ptr %invariant.gep1149, i64 %indvars.iv.next973.2
  %i.mw = load double, ptr %gep1150.3, align 8, !tbaa !84
  %i.mx = trunc i64 %indvars.iv.next973.2 to i32
  %i.my = mul i32 %i.f, %i.mx
  %.reass.3 = add i32 %i.my, %invariant.op.reass
  %i.mz = sext i32 %.reass.3 to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mz ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !84
  %i.nc = fsub double %i.nb, %i.mw
  store double %i.nc, ptr %i.na, align 8, !tbaa !84
  %indvars.iv.next973.3 = add nuw nsw i64 %indvars.iv972, 4 ; 2 uses
  %exitcond976.not.3 = icmp eq i64 %indvars.iv.next973.3, %wide.trip.count975
  br i1 %exitcond976.not.3, label %._crit_edge852, label %vec.epilog.scalar.ph1289, !llvm.loop !33

._crit_edge852:                                   ; preds = %vec.epilog.scalar.ph1289.prol.loopexit, %vec.epilog.scalar.ph1289, %vec.epilog.middle.block1299, %middle.block1285
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 1 ; 2 uses
  %exitcond981.not = icmp eq i64 %indvars.iv.next978, %wide.trip.count980
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond981.not, label %.loopexit, label %iter.check1287, !llvm.loop !34

bb.w:                                             ; preds = %bb.q
  %i.nd = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.11) #3
  %.not779 = icmp eq i32 %i.nd, 0
  br i1 %.not779, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ne = load i32, ptr %6, align 4, !tbaa !80    ; 4 uses
  store i32 %i.ne, ptr %i.a, align 4, !tbaa !80
  %.not780858 = icmp slt i32 %i.ne, 1
  br i1 %.not780858, label %._crit_edge862, label %.lr.ph861.preheader

.lr.ph861.preheader:                              ; preds = %bb.x
  %i.nf = sext i32 %i.i to i64
  %i.ng = add nuw i32 %i.ne, 1
  %wide.trip.count985 = zext i32 %i.ng to i64
  br label %.lr.ph861

.lr.ph861:                                        ; preds = %.lr.ph861.preheader, %.lr.ph861
  %indvars.iv982 = phi i64 [ 1, %.lr.ph861.preheader ], [ %indvars.iv.next983, %.lr.ph861 ] ; 3 uses
  %i.nh = load i32, ptr %5, align 4, !tbaa !80
  %i.ni = load i32, ptr %6, align 4, !tbaa !80
  %i.nj = trunc nuw nsw i64 %indvars.iv982 to i32
  %i.nk = add i32 %i.nh, %i.nj
  %i.nl = sub i32 %i.nk, %i.ni
  %i.nm = mul nsw i32 %i.nl, %i.f
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr [8 x i8], ptr %i.h, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 8
  %i.nq = mul nsw i64 %indvars.iv982, %i.nf
  %i.nr = getelementptr [8 x i8], ptr %i.k, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 8
  tail call void @dcopy_(ptr noundef nonnull %4, ptr noundef %i.np, ptr noundef nonnull @c__1, ptr noundef %i.ns, ptr noundef nonnull @c__1) #3
  %indvars.iv.next983 = add nuw nsw i64 %indvars.iv982, 1 ; 2 uses
  %exitcond986.not = icmp eq i64 %indvars.iv.next983, %wide.trip.count985
  br i1 %exitcond986.not, label %._crit_edge862.loopexit, label %.lr.ph861, !llvm.loop !35

._crit_edge862.loopexit:                          ; preds = %.lr.ph861
  %.pre1059 = load i32, ptr %6, align 4, !tbaa !80
  br label %._crit_edge862

._crit_edge862:                                   ; preds = %._crit_edge862.loopexit, %bb.x
  %i.nt = phi i32 [ %.pre1059, %._crit_edge862.loopexit ], [ %i.ne, %bb.x ]
  %i.nu = load i32, ptr %5, align 4, !tbaa !80
  %i.nv = add i32 %i.c, 1                         ; 2 uses
  %i.nw = add i32 %i.nv, %i.nu
  %i.nx = sub i32 %i.nw, %i.nt
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ny
  tail call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %i.nz, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.oa = load i32, ptr %5, align 4, !tbaa !80    ; 2 uses
  %i.ob = load i32, ptr %6, align 4, !tbaa !80    ; 2 uses
  %i.oc = icmp sgt i32 %i.oa, %i.ob
  br i1 %i.oc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge862
  %i.od = sub nsw i32 %i.oa, %i.ob
  store i32 %i.od, ptr %i.a, align 4, !tbaa !80
  call void @dgemm_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b14, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @c_b14, ptr noundef %13, ptr noundef nonnull %14) #3
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge862
  call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.oe = load i32, ptr %5, align 4, !tbaa !80    ; 3 uses
  %i.of = load i32, ptr %6, align 4, !tbaa !80    ; 3 uses
  %i.og = icmp sgt i32 %i.oe, %i.of
  br i1 %i.og, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.oh = sub nsw i32 %i.oe, %i.of
  store i32 %i.oh, ptr %i.a, align 4, !tbaa !80
  call void @dgemm_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull @c_b25, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @c_b14, ptr noundef %11, ptr noundef nonnull %12) #3
  %.pre1060 = load i32, ptr %5, align 4, !tbaa !80
  %.pre1061 = load i32, ptr %6, align 4, !tbaa !80
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.oi = phi i32 [ %.pre1061, %bb.aa ], [ %i.of, %bb.z ]
  %i.oj = phi i32 [ %.pre1060, %bb.aa ], [ %i.oe, %bb.z ]
  %i.ok = add i32 %i.nv, %i.oj
  %i.ol = sub i32 %i.ok, %i.oi
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.om
  call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %i.on, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.oo = load i32, ptr %6, align 4, !tbaa !80    ; 3 uses
  %.not781868 = icmp slt i32 %i.oo, 1
  br i1 %.not781868, label %.loopexit, label %.lr.ph871

.lr.ph871:                                        ; preds = %bb.ab
  %i.op = load i32, ptr %4, align 4, !tbaa !80    ; 6 uses
  %.not782863 = icmp slt i32 %i.op, 1
  br i1 %.not782863, label %.loopexit, label %.lr.ph871.split

.lr.ph871.split:                                  ; preds = %.lr.ph871
  %i.oq = load i32, ptr %5, align 4, !tbaa !80
  %invariant.op = sub i32 %i.oq, %i.oo
  %i.or = add nuw i32 %i.op, 1
  %i.os = sext i32 %i.i to i64                    ; 3 uses
  %i.ot = add nuw i32 %i.oo, 1
  %wide.trip.count995 = zext i32 %i.ot to i64     ; 2 uses
  %wide.trip.count990 = zext i32 %i.or to i64     ; 3 uses
  %i.ou = shl nsw i64 %i.os, 3
  %i.ov = shl nuw nsw i64 %wide.trip.count995, 3
  %i.ow = add nsw i64 %i.ov, -8
  %i.ox = mul i64 %i.ow, %i.os
  %i.oy = shl nsw i64 %i.j, 3                     ; 2 uses
  %i.oz = shl nuw nsw i64 %wide.trip.count990, 3  ; 2 uses
  %i.pa = getelementptr i8, ptr %13, i64 %i.ox
  %i.pb = getelementptr i8, ptr %i.pa, i64 %i.oy
  %scevgep1315 = getelementptr i8, ptr %i.pb, i64 %i.oz
  %i.pc = getelementptr i8, ptr %13, i64 %i.ou
  %i.pd = getelementptr i8, ptr %i.pc, i64 %i.oy
  %scevgep1316 = getelementptr i8, ptr %i.pd, i64 8
  %16 = shl nsw i64 %i.g, 3                       ; 2 uses
  %i.pe = zext nneg i32 %i.op to i64              ; 5 uses
  %i.pf = zext nneg i32 %i.op to i64
  %min.iters.check1317 = icmp ult i32 %i.op, 4
  %17 = getelementptr i8, ptr %11, i64 %16
  %18 = getelementptr i8, ptr %17, i64 8
  %19 = getelementptr i8, ptr %11, i64 %16
  %invariant.gep1600 = getelementptr i8, ptr %19, i64 %i.oz
  %stride.check1322 = icmp slt i32 %i.i, 0
  %min.iters.check1324 = icmp ult i32 %i.op, 16
  %i.pg = and i64 %i.pe, 12
  %n.vec1326 = and i64 %i.pe, 2147483632          ; 4 uses
  %i.ph = or disjoint i64 %n.vec1326, 1
  %cmp.n1339 = icmp eq i64 %n.vec1326, %i.pe
  %min.epilog.iters.check1343 = icmp eq i64 %i.pg, 0
  %n.vec1346 = and i64 %i.pe, 2147483644          ; 3 uses
  %i.pi = or disjoint i64 %n.vec1346, 1
  %cmp.n1353 = icmp eq i64 %n.vec1346, %i.pe
  br label %iter.check1340

iter.check1340:                                   ; preds = %.lr.ph871.split, %._crit_edge867
  %indvars.iv992 = phi i64 [ 1, %.lr.ph871.split ], [ %indvars.iv.next993, %._crit_edge867 ] ; 3 uses
  %i.pj = mul nsw i64 %indvars.iv992, %i.os
  %i.pk = trunc nuw nsw i64 %indvars.iv992 to i32
  %.reass872 = add i32 %invariant.op, %i.pk
  %i.pl = mul nsw i32 %.reass872, %i.f
  %i.pm = sext i32 %i.pl to i64                   ; 2 uses
  %invariant.gep1151 = getelementptr [8 x i8], ptr %i.k, i64 %i.pj ; 11 uses
  %invariant.gep1153 = getelementptr [8 x i8], ptr %i.h, i64 %i.pm ; 11 uses
  br i1 %min.iters.check1317, label %vec.epilog.scalar.ph1342.preheader, label %vector.memcheck1318

vector.memcheck1318:                              ; preds = %iter.check1340
  %i.pn = shl nsw i64 %i.pm, 3                    ; 2 uses
  %i.po = getelementptr i8, ptr %18, i64 %i.pn
  %gep1601 = getelementptr i8, ptr %invariant.gep1600, i64 %i.pn
  %bound01319 = icmp ult ptr %i.po, %scevgep1315
  %bound11320 = icmp ult ptr %scevgep1316, %gep1601
  %found.conflict1321 = and i1 %bound01319, %bound11320
  %i.pp = or i1 %found.conflict1321, %stride.check1322
  br i1 %i.pp, label %vec.epilog.scalar.ph1342.preheader, label %vector.main.loop.iter.check1323

vector.main.loop.iter.check1323:                  ; preds = %vector.memcheck1318
  br i1 %min.iters.check1324, label %vec.epilog.ph1344, label %vector.body1327

vector.body1327:                                  ; preds = %vector.main.loop.iter.check1323, %vector.body1327
  %index1328 = phi i64 [ %index.next1337, %vector.body1327 ], [ 0, %vector.main.loop.iter.check1323 ] ; 2 uses
  %i.pq = or disjoint i64 %index1328, 1           ; 2 uses
  %i.pr = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %i.pq ; 4 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 32
  %i.pt = getelementptr i8, ptr %i.pr, i64 64
  %i.pu = getelementptr i8, ptr %i.pr, i64 96
  %wide.load1329 = load <4 x double>, ptr %i.pr, align 8, !tbaa !84, !alias.scope !95
  %wide.load1330 = load <4 x double>, ptr %i.ps, align 8, !tbaa !84, !alias.scope !95
  %wide.load1331 = load <4 x double>, ptr %i.pt, align 8, !tbaa !84, !alias.scope !95
  %wide.load1332 = load <4 x double>, ptr %i.pu, align 8, !tbaa !84, !alias.scope !95
  %i.pv = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %i.pq ; 5 uses
  %i.pw = getelementptr i8, ptr %i.pv, i64 32     ; 2 uses
  %i.px = getelementptr i8, ptr %i.pv, i64 64     ; 2 uses
  %i.py = getelementptr i8, ptr %i.pv, i64 96     ; 2 uses
  %wide.load1333 = load <4 x double>, ptr %i.pv, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  %wide.load1334 = load <4 x double>, ptr %i.pw, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  %wide.load1335 = load <4 x double>, ptr %i.px, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  %wide.load1336 = load <4 x double>, ptr %i.py, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  %i.pz = fsub <4 x double> %wide.load1333, %wide.load1329
  %i.qa = fsub <4 x double> %wide.load1334, %wide.load1330
  %i.qb = fsub <4 x double> %wide.load1335, %wide.load1331
  %i.qc = fsub <4 x double> %wide.load1336, %wide.load1332
  store <4 x double> %i.pz, ptr %i.pv, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  store <4 x double> %i.qa, ptr %i.pw, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  store <4 x double> %i.qb, ptr %i.px, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  store <4 x double> %i.qc, ptr %i.py, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  %index.next1337 = add nuw i64 %index1328, 16    ; 2 uses
  %i.qd = icmp eq i64 %index.next1337, %n.vec1326
  br i1 %i.qd, label %middle.block1338, label %vector.body1327, !llvm.loop !39

middle.block1338:                                 ; preds = %vector.body1327
  br i1 %cmp.n1339, label %._crit_edge867, label %vec.epilog.iter.check1341

vec.epilog.iter.check1341:                        ; preds = %middle.block1338
  br i1 %min.epilog.iters.check1343, label %vec.epilog.scalar.ph1342.preheader, label %vec.epilog.ph1344, !prof !89

vec.epilog.ph1344:                                ; preds = %vector.main.loop.iter.check1323, %vec.epilog.iter.check1341
  %vec.epilog.resume.val1345 = phi i64 [ %n.vec1326, %vec.epilog.iter.check1341 ], [ 0, %vector.main.loop.iter.check1323 ]
  br label %vec.epilog.vector.body1347

vec.epilog.vector.body1347:                       ; preds = %vec.epilog.vector.body1347, %vec.epilog.ph1344
  %index1348 = phi i64 [ %vec.epilog.resume.val1345, %vec.epilog.ph1344 ], [ %index.next1351, %vec.epilog.vector.body1347 ] ; 2 uses
  %i.qe = or disjoint i64 %index1348, 1           ; 2 uses
  %i.qf = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %i.qe
  %wide.load1349 = load <4 x double>, ptr %i.qf, align 8, !tbaa !84, !alias.scope !95
  %i.qg = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %i.qe ; 2 uses
  %wide.load1350 = load <4 x double>, ptr %i.qg, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  %i.qh = fsub <4 x double> %wide.load1350, %wide.load1349
  store <4 x double> %i.qh, ptr %i.qg, align 8, !tbaa !84, !alias.scope !96, !noalias !95
  %index.next1351 = add nuw i64 %index1348, 4     ; 2 uses
  %i.qi = icmp eq i64 %index.next1351, %n.vec1346
  br i1 %i.qi, label %vec.epilog.middle.block1352, label %vec.epilog.vector.body1347, !llvm.loop !40

vec.epilog.middle.block1352:                      ; preds = %vec.epilog.vector.body1347
  br i1 %cmp.n1353, label %._crit_edge867, label %vec.epilog.scalar.ph1342.preheader

vec.epilog.scalar.ph1342.preheader:               ; preds = %iter.check1340, %vector.memcheck1318, %vec.epilog.iter.check1341, %vec.epilog.middle.block1352
  %indvars.iv987.ph = phi i64 [ 1, %iter.check1340 ], [ 1, %vector.memcheck1318 ], [ %i.ph, %vec.epilog.iter.check1341 ], [ %i.pi, %vec.epilog.middle.block1352 ] ; 4 uses
  %i.qj = sub nsw i64 %wide.trip.count990, %indvars.iv987.ph
  %i.qk = sub nsw i64 %i.pf, %indvars.iv987.ph
  %xtraiter1581 = and i64 %i.qj, 7                ; 2 uses
  %lcmp.mod1582.not = icmp eq i64 %xtraiter1581, 0
  br i1 %lcmp.mod1582.not, label %vec.epilog.scalar.ph1342.prol.loopexit, label %vec.epilog.scalar.ph1342.prol

vec.epilog.scalar.ph1342.prol:                    ; preds = %vec.epilog.scalar.ph1342.preheader, %vec.epilog.scalar.ph1342.prol
  %indvars.iv987.prol = phi i64 [ %indvars.iv.next988.prol, %vec.epilog.scalar.ph1342.prol ], [ %indvars.iv987.ph, %vec.epilog.scalar.ph1342.preheader ] ; 3 uses
  %prol.iter1583 = phi i64 [ %prol.iter1583.next, %vec.epilog.scalar.ph1342.prol ], [ 0, %vec.epilog.scalar.ph1342.preheader ]
  %gep1152.prol = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv987.prol
  %i.ql = load double, ptr %gep1152.prol, align 8, !tbaa !84
  %gep1154.prol = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv987.prol ; 2 uses
  %i.qm = load double, ptr %gep1154.prol, align 8, !tbaa !84
  %i.qn = fsub double %i.qm, %i.ql
  store double %i.qn, ptr %gep1154.prol, align 8, !tbaa !84
  %indvars.iv.next988.prol = add nuw nsw i64 %indvars.iv987.prol, 1 ; 2 uses
  %prol.iter1583.next = add i64 %prol.iter1583, 1 ; 2 uses
  %prol.iter1583.cmp.not = icmp eq i64 %prol.iter1583.next, %xtraiter1581
  br i1 %prol.iter1583.cmp.not, label %vec.epilog.scalar.ph1342.prol.loopexit, label %vec.epilog.scalar.ph1342.prol, !llvm.loop !41

vec.epilog.scalar.ph1342.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1342.prol, %vec.epilog.scalar.ph1342.preheader
  %indvars.iv987.unr = phi i64 [ %indvars.iv987.ph, %vec.epilog.scalar.ph1342.preheader ], [ %indvars.iv.next988.prol, %vec.epilog.scalar.ph1342.prol ]
  %i.qo = icmp ult i64 %i.qk, 7
  br i1 %i.qo, label %._crit_edge867, label %vec.epilog.scalar.ph1342

vec.epilog.scalar.ph1342:                         ; preds = %vec.epilog.scalar.ph1342.prol.loopexit, %vec.epilog.scalar.ph1342
  %indvars.iv987 = phi i64 [ %indvars.iv.next988.7, %vec.epilog.scalar.ph1342 ], [ %indvars.iv987.unr, %vec.epilog.scalar.ph1342.prol.loopexit ] ; 10 uses
  %gep1152 = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv987
  %i.qp = load double, ptr %gep1152, align 8, !tbaa !84
  %gep1154 = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv987 ; 2 uses
  %i.qq = load double, ptr %gep1154, align 8, !tbaa !84
  %i.qr = fsub double %i.qq, %i.qp
  store double %i.qr, ptr %gep1154, align 8, !tbaa !84
  %indvars.iv.next988 = add nuw nsw i64 %indvars.iv987, 1 ; 2 uses
  %gep1152.1 = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv.next988
  %i.qs = load double, ptr %gep1152.1, align 8, !tbaa !84
  %gep1154.1 = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv.next988 ; 2 uses
  %i.qt = load double, ptr %gep1154.1, align 8, !tbaa !84
  %i.qu = fsub double %i.qt, %i.qs
  store double %i.qu, ptr %gep1154.1, align 8, !tbaa !84
  %indvars.iv.next988.1 = add nuw nsw i64 %indvars.iv987, 2 ; 2 uses
  %gep1152.2 = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv.next988.1
  %i.qv = load double, ptr %gep1152.2, align 8, !tbaa !84
  %gep1154.2 = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv.next988.1 ; 2 uses
  %i.qw = load double, ptr %gep1154.2, align 8, !tbaa !84
  %i.qx = fsub double %i.qw, %i.qv
  store double %i.qx, ptr %gep1154.2, align 8, !tbaa !84
  %indvars.iv.next988.2 = add nuw nsw i64 %indvars.iv987, 3 ; 2 uses
  %gep1152.3 = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv.next988.2
  %i.qy = load double, ptr %gep1152.3, align 8, !tbaa !84
  %gep1154.3 = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv.next988.2 ; 2 uses
  %i.qz = load double, ptr %gep1154.3, align 8, !tbaa !84
  %i.ra = fsub double %i.qz, %i.qy
  store double %i.ra, ptr %gep1154.3, align 8, !tbaa !84
  %indvars.iv.next988.3 = add nuw nsw i64 %indvars.iv987, 4 ; 2 uses
  %gep1152.4 = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv.next988.3
  %i.rb = load double, ptr %gep1152.4, align 8, !tbaa !84
  %gep1154.4 = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv.next988.3 ; 2 uses
  %i.rc = load double, ptr %gep1154.4, align 8, !tbaa !84
  %i.rd = fsub double %i.rc, %i.rb
  store double %i.rd, ptr %gep1154.4, align 8, !tbaa !84
  %indvars.iv.next988.4 = add nuw nsw i64 %indvars.iv987, 5 ; 2 uses
  %gep1152.5 = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv.next988.4
  %i.re = load double, ptr %gep1152.5, align 8, !tbaa !84
  %gep1154.5 = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv.next988.4 ; 2 uses
  %i.rf = load double, ptr %gep1154.5, align 8, !tbaa !84
  %i.rg = fsub double %i.rf, %i.re
  store double %i.rg, ptr %gep1154.5, align 8, !tbaa !84
  %indvars.iv.next988.5 = add nuw nsw i64 %indvars.iv987, 6 ; 2 uses
  %gep1152.6 = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv.next988.5
  %i.rh = load double, ptr %gep1152.6, align 8, !tbaa !84
  %gep1154.6 = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv.next988.5 ; 2 uses
  %i.ri = load double, ptr %gep1154.6, align 8, !tbaa !84
  %i.rj = fsub double %i.ri, %i.rh
  store double %i.rj, ptr %gep1154.6, align 8, !tbaa !84
  %indvars.iv.next988.6 = add nuw nsw i64 %indvars.iv987, 7 ; 2 uses
  %gep1152.7 = getelementptr [8 x i8], ptr %invariant.gep1151, i64 %indvars.iv.next988.6
  %i.rk = load double, ptr %gep1152.7, align 8, !tbaa !84
  %gep1154.7 = getelementptr [8 x i8], ptr %invariant.gep1153, i64 %indvars.iv.next988.6 ; 2 uses
  %i.rl = load double, ptr %gep1154.7, align 8, !tbaa !84
  %i.rm = fsub double %i.rl, %i.rk
  store double %i.rm, ptr %gep1154.7, align 8, !tbaa !84
  %indvars.iv.next988.7 = add nuw nsw i64 %indvars.iv987, 8 ; 2 uses
  %exitcond991.not.7 = icmp eq i64 %indvars.iv.next988.7, %wide.trip.count990
  br i1 %exitcond991.not.7, label %._crit_edge867, label %vec.epilog.scalar.ph1342, !llvm.loop !42

._crit_edge867:                                   ; preds = %vec.epilog.scalar.ph1342.prol.loopexit, %vec.epilog.scalar.ph1342, %vec.epilog.middle.block1352, %middle.block1338
  %indvars.iv.next993 = add nuw nsw i64 %indvars.iv992, 1 ; 2 uses
  %exitcond996.not = icmp eq i64 %indvars.iv.next993, %wide.trip.count995
  br i1 %exitcond996.not, label %.loopexit, label %iter.check1340, !llvm.loop !43

bb.ac:                                            ; preds = %bb.c
  %i.rn = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.11) #3
  %.not759 = icmp eq i32 %i.rn, 0
  br i1 %.not759, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ro = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.2) #3
  %.not760 = icmp eq i32 %i.ro, 0
  %i.rp = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #3
  %.not761 = icmp eq i32 %i.rp, 0                 ; 2 uses
  br i1 %.not760, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not761, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.rq = load i32, ptr %6, align 4, !tbaa !80    ; 3 uses
  store i32 %i.rq, ptr %i.a, align 4, !tbaa !80
  %.not774873 = icmp slt i32 %i.rq, 1
  br i1 %.not774873, label %._crit_edge877, label %.lr.ph876.preheader

.lr.ph876.preheader:                              ; preds = %bb.af
  %i.rr = sext i32 %i.f to i64
  %i.rs = sext i32 %i.i to i64
  %i.rt = add nuw i32 %i.rq, 1
  %wide.trip.count1000 = zext i32 %i.rt to i64
  %invariant.gep1155 = getelementptr [8 x i8], ptr %i.h, i64 %i.rr
  br label %.lr.ph876

.lr.ph876:                                        ; preds = %.lr.ph876.preheader, %.lr.ph876
  %indvars.iv997 = phi i64 [ 1, %.lr.ph876.preheader ], [ %indvars.iv.next998, %.lr.ph876 ] ; 3 uses
  %gep1156 = getelementptr [8 x i8], ptr %invariant.gep1155, i64 %indvars.iv997
  %i.ru = mul nsw i64 %indvars.iv997, %i.rs
  %i.rv = getelementptr [8 x i8], ptr %i.k, i64 %i.ru
  %i.rw = getelementptr i8, ptr %i.rv, i64 8
  tail call void @dcopy_(ptr noundef nonnull %5, ptr noundef %gep1156, ptr noundef nonnull %12, ptr noundef %i.rw, ptr noundef nonnull @c__1) #3
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 1 ; 2 uses
  %exitcond1001.not = icmp eq i64 %indvars.iv.next998, %wide.trip.count1000
  br i1 %exitcond1001.not, label %._crit_edge877, label %.lr.ph876, !llvm.loop !44

end_hunk_0
begin_hunk_1_@dlarfb_:bb.a
  %i.yz = fsub double %i.yy, %i.yx
  store double %i.yz, ptr %gep1164.prol, align 8, !tbaa !84
  %indvars.iv.next1018.prol = add nuw nsw i64 %indvars.iv1017.prol, 1 ; 2 uses
  %prol.iter1589.next = add i64 %prol.iter1589, 1 ; 2 uses
  %prol.iter1589.cmp.not = icmp eq i64 %prol.iter1589.next, %xtraiter1587
  br i1 %prol.iter1589.cmp.not, label %vec.epilog.scalar.ph1446.prol.loopexit, label %vec.epilog.scalar.ph1446.prol, !llvm.loop !59

vec.epilog.scalar.ph1446.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1446.prol, %vec.epilog.scalar.ph1446.preheader
  %indvars.iv1017.unr = phi i64 [ %indvars.iv1017.ph, %vec.epilog.scalar.ph1446.preheader ], [ %indvars.iv.next1018.prol, %vec.epilog.scalar.ph1446.prol ]
  %i.za = icmp ult i64 %i.yw, 7
  br i1 %i.za, label %._crit_edge896, label %vec.epilog.scalar.ph1446

vec.epilog.scalar.ph1446:                         ; preds = %vec.epilog.scalar.ph1446.prol.loopexit, %vec.epilog.scalar.ph1446
  %indvars.iv1017 = phi i64 [ %indvars.iv.next1018.7, %vec.epilog.scalar.ph1446 ], [ %indvars.iv1017.unr, %vec.epilog.scalar.ph1446.prol.loopexit ] ; 10 uses
  %gep1162 = getelementptr [8 x i8], ptr %invariant.gep1161, i64 %indvars.iv1017
  %i.zb = load double, ptr %gep1162, align 8, !tbaa !84
  %gep1164 = getelementptr [8 x i8], ptr %invariant.gep1163, i64 %indvars.iv1017 ; 2 uses
  %i.zc = load double, ptr %gep1164, align 8, !tbaa !84
  %i.zd = fsub double %i.zc, %i.zb
  store double %i.zd, ptr %gep1164, align 8, !tbaa !84
  %indvars.iv.next1018 = add nuw nsw i64 %indvars.iv1017, 1 ; 2 uses
  %gep1162.1 = getelementptr [8 x i8], ptr %invariant.gep1161, i64 %indvars.iv.next1018
  %i.ze = load double, ptr %gep1162.1, align 8, !tbaa !84
  %gep1164.1 = getelementptr [8 x i8], ptr %invariant.gep1163, i64 %indvars.iv.next1018 ; 2 uses
  %i.zf = load double, ptr %gep1164.1, align 8, !tbaa !84
  %i.zg = fsub double %i.zf, %i.ze
  store double %i.zg, ptr %gep1164.1, align 8, !tbaa !84
  %indvars.iv.next1018.1 = add nuw nsw i64 %indvars.iv1017, 2 ; 2 uses
  %gep1162.2 = getelementptr [8 x i8], ptr %invariant.gep1161, i64 %indvars.iv.next1018.1
  %i.zh = load double, ptr %gep1162.2, align 8, !tbaa !84
  %gep1164.2 = getelementptr [8 x i8], ptr %invariant.gep1163, i64 %indvars.iv.next1018.1 ; 2 uses
  %i.zi = load double, ptr %gep1164.2, align 8, !tbaa !84
  %i.zj = fsub double %i.zi, %i.zh
  store double %i.zj, ptr %gep1164.2, align 8, !tbaa !84
  %indvars.iv.next1018.2 = add nuw nsw i64 %indvars.iv1017, 3 ; 2 uses
  %gep1162.3 = getelementptr [8 x i8], ptr %invariant.gep1161, i64 %indvars.iv.next1018.2
  %i.zk = load double, ptr %gep1162.3, align 8, !tbaa !84
  %gep1164.3 = getelementptr [8 x i8], ptr %invariant.gep1163, i64 %indvars.iv.next1018.2 ; 2 uses
  %i.zl = load double, ptr %gep1164.3, align 8, !tbaa !84
  %i.zm = fsub double %i.zl, %i.zk
  store double %i.zm, ptr %gep1164.3, align 8, !tbaa !84
  %indvars.iv.next1018.3 = add nuw nsw i64 %indvars.iv1017, 4 ; 2 uses
  %gep1162.4 = getelementptr [8 x i8], ptr %invariant.gep1161, i64 %indvars.iv.next1018.3
  %i.zn = load double, ptr %gep1162.4, align 8, !tbaa !84
  %gep1164.4 = getelementptr [8 x i8], ptr %invariant.gep1163, i64 %indvars.iv.next1018.3 ; 2 uses
  %i.zo = load double, ptr %gep1164.4, align 8, !tbaa !84
  %i.zp = fsub double %i.zo, %i.zn
  store double %i.zp, ptr %gep1164.4, align 8, !tbaa !84
  %indvars.iv.next1018.4 = add nuw nsw i64 %indvars.iv1017, 5 ; 2 uses
  %gep1162.5 = getelementptr [8 x i8], ptr %invariant.gep1161, i64 %indvars.iv.next1018.4
  %i.zq = load double, ptr %gep1162.5, align 8, !tbaa !84
  %gep1164.5 = getelementptr [8 x i8], ptr %invariant.gep1163, i64 %indvars.iv.next1018.4 ; 2 uses
  %i.zr = load double, ptr %gep1164.5, align 8, !tbaa !84
  %i.zs = fsub double %i.zr, %i.zq
  store double %i.zs, ptr %gep1164.5, align 8, !tbaa !84
  %indvars.iv.next1018.5 = add nuw nsw i64 %indvars.iv1017, 6 ; 2 uses
  %gep1162.6 = getelementptr [8 x i8], ptr %invariant.gep1161, i64 %indvars.iv.next1018.5
  %i.zt = load double, ptr %gep1162.6, align 8, !tbaa !84
  %gep1164.6 = getelementptr [8 x i8], ptr %invariant.gep1163, i64 %indvars.iv.next1018.5 ; 2 uses
  %i.zu = load double, ptr %gep1164.6, align 8, !tbaa !84
  %i.zv = fsub double %i.zu, %i.zt
  store double %i.zv, ptr %gep1164.6, align 8, !tbaa !84
  %indvars.iv.next1018.6 = add nuw nsw i64 %indvars.iv1017, 7 ; 2 uses
  %gep1162.7 = getelementptr [8 x i8], ptr %invariant.gep1161, i64 %indvars.iv.next1018.6
  %i.zw = load double, ptr %gep1162.7, align 8, !tbaa !84
  %gep1164.7 = getelementptr [8 x i8], ptr %invariant.gep1163, i64 %indvars.iv.next1018.6 ; 2 uses
  %i.zx = load double, ptr %gep1164.7, align 8, !tbaa !84
  %i.zy = fsub double %i.zx, %i.zw
  store double %i.zy, ptr %gep1164.7, align 8, !tbaa !84
  %indvars.iv.next1018.7 = add nuw nsw i64 %indvars.iv1017, 8 ; 2 uses
  %exitcond1021.not.7 = icmp eq i64 %indvars.iv.next1018.7, %wide.trip.count1020
  br i1 %exitcond1021.not.7, label %._crit_edge896, label %vec.epilog.scalar.ph1446, !llvm.loop !60

._crit_edge896:                                   ; preds = %vec.epilog.scalar.ph1446.prol.loopexit, %vec.epilog.scalar.ph1446, %vec.epilog.middle.block1456, %middle.block1442
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %wide.trip.count1025
  br i1 %exitcond1026.not, label %.loopexit, label %iter.check1444, !llvm.loop !61

bb.aq:                                            ; preds = %bb.ad
  br i1 %.not761, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.zz = load i32, ptr %6, align 4, !tbaa !80    ; 4 uses
  store i32 %i.zz, ptr %i.a, align 4, !tbaa !80
  %.not766901 = icmp slt i32 %i.zz, 1
  br i1 %.not766901, label %._crit_edge905, label %.lr.ph904.preheader

.lr.ph904.preheader:                              ; preds = %bb.ar
  %i.aaa = sext i32 %i.i to i64
  %i.aab = add nuw i32 %i.zz, 1
  %wide.trip.count1030 = zext i32 %i.aab to i64
  br label %.lr.ph904

.lr.ph904:                                        ; preds = %.lr.ph904.preheader, %.lr.ph904
  %indvars.iv1027 = phi i64 [ 1, %.lr.ph904.preheader ], [ %indvars.iv.next1028, %.lr.ph904 ] ; 3 uses
  %i.aac = load i32, ptr %4, align 4, !tbaa !80
  %i.aad = load i32, ptr %6, align 4, !tbaa !80
  %i.aae = trunc nuw nsw i64 %indvars.iv1027 to i32
  %i.aaf = add i32 %i.f, %i.aae
  %i.aag = add i32 %i.aaf, %i.aac
  %i.aah = sub i32 %i.aag, %i.aad
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aai
  %i.aak = mul nsw i64 %indvars.iv1027, %i.aaa
  %i.aal = getelementptr [8 x i8], ptr %i.k, i64 %i.aak
  %i.aam = getelementptr i8, ptr %i.aal, i64 8
  tail call void @dcopy_(ptr noundef nonnull %5, ptr noundef %i.aaj, ptr noundef nonnull %12, ptr noundef %i.aam, ptr noundef nonnull @c__1) #3
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 1 ; 2 uses
  %exitcond1031.not = icmp eq i64 %indvars.iv.next1028, %wide.trip.count1030
  br i1 %exitcond1031.not, label %._crit_edge905.loopexit, label %.lr.ph904, !llvm.loop !62

._crit_edge905.loopexit:                          ; preds = %.lr.ph904
  %.pre1062 = load i32, ptr %6, align 4, !tbaa !80
  br label %._crit_edge905

._crit_edge905:                                   ; preds = %._crit_edge905.loopexit, %bb.ar
  %i.aan = phi i32 [ %.pre1062, %._crit_edge905.loopexit ], [ %i.zz, %bb.ar ]
  %i.aao = load i32, ptr %4, align 4, !tbaa !80
  %i.aap = add i32 %i.aao, 1
  %i.aaq = sub i32 %i.aap, %i.aan
  %i.aar = mul nsw i32 %i.aaq, %i.c
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr [8 x i8], ptr %i.e, i64 %i.aas
  %i.aau = getelementptr i8, ptr %i.aat, i64 8
  tail call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %i.aau, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.aav = load i32, ptr %4, align 4, !tbaa !80   ; 2 uses
  %i.aaw = load i32, ptr %6, align 4, !tbaa !80   ; 2 uses
  %i.aax = icmp sgt i32 %i.aav, %i.aaw
  br i1 %i.aax, label %bb.as, label %bb.at

bb.as:                                            ; preds = %._crit_edge905
  %i.aay = sub nsw i32 %i.aav, %i.aaw
  store i32 %i.aay, ptr %i.a, align 4, !tbaa !80
  call void @dgemm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b14, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @c_b14, ptr noundef %13, ptr noundef nonnull %14) #3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge905
  call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.aaz = load i32, ptr %4, align 4, !tbaa !80   ; 3 uses
  %i.aba = load i32, ptr %6, align 4, !tbaa !80   ; 3 uses
  %i.abb = icmp sgt i32 %i.aaz, %i.aba
  br i1 %i.abb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.abc = sub nsw i32 %i.aaz, %i.aba
  store i32 %i.abc, ptr %i.a, align 4, !tbaa !80
  call void @dgemm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b25, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull @c_b14, ptr noundef %11, ptr noundef nonnull %12) #3
  %.pre1063 = load i32, ptr %4, align 4, !tbaa !80
  %.pre1064 = load i32, ptr %6, align 4, !tbaa !80
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.abd = phi i32 [ %.pre1064, %bb.au ], [ %i.aba, %bb.at ]
  %i.abe = phi i32 [ %.pre1063, %bb.au ], [ %i.aaz, %bb.at ]
  %i.abf = add i32 %i.abe, 1
  %i.abg = sub i32 %i.abf, %i.abd
  %i.abh = mul nsw i32 %i.abg, %i.c
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr [8 x i8], ptr %i.e, i64 %i.abi
  %i.abk = getelementptr i8, ptr %i.abj, i64 8
  call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %i.abk, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.abl = load i32, ptr %6, align 4, !tbaa !80   ; 4 uses
  %.not767913 = icmp slt i32 %i.abl, 1
  br i1 %.not767913, label %.loopexit, label %.lr.ph916

.lr.ph916:                                        ; preds = %bb.av
  %i.abm = load i32, ptr %5, align 4, !tbaa !80   ; 6 uses
  %.not768906 = icmp slt i32 %i.abm, 1
  br i1 %.not768906, label %.loopexit, label %.lr.ph916.split

.lr.ph916.split:                                  ; preds = %.lr.ph916
  %i.abn = load i32, ptr %4, align 4, !tbaa !80   ; 2 uses
  %invariant.op917 = sub i32 %i.abn, %i.abl
  %i.abo = add nuw i32 %i.abm, 1
  %i.abp = sext i32 %i.i to i64                   ; 3 uses
  %i.abq = add nuw i32 %i.abl, 1
  %wide.trip.count1040 = zext i32 %i.abq to i64   ; 2 uses
  %wide.trip.count1035 = zext i32 %i.abo to i64   ; 4 uses
  %i.abr = add nsw i64 %wide.trip.count1035, -2   ; 2 uses
  %i.abs = add i32 %i.abn, 2
  %i.abt = sub i32 %i.abs, %i.abl                 ; 2 uses
  %i.abu = shl nsw i64 %i.abp, 3
  %i.abv = shl nuw nsw i64 %wide.trip.count1035, 3 ; 2 uses
  %i.abw = shl nuw nsw i64 %wide.trip.count1040, 3
  %i.abx = add nsw i64 %i.abw, -8
  %i.aby = mul i64 %i.abx, %i.abp
  %i.abz = shl nsw i64 %i.j, 3                    ; 2 uses
  %i.aca = getelementptr i8, ptr %13, i64 %i.aby
  %i.acb = getelementptr i8, ptr %i.aca, i64 %i.abz
  %scevgep1474 = getelementptr i8, ptr %i.acb, i64 %i.abv
  %i.acc = getelementptr i8, ptr %13, i64 %i.abu
  %i.acd = getelementptr i8, ptr %i.acc, i64 %i.abz
  %scevgep1475 = getelementptr i8, ptr %i.acd, i64 8
  %i.ace = zext nneg i32 %i.abm to i64            ; 5 uses
  %i.acf = zext nneg i32 %i.abm to i64
  %min.iters.check1476 = icmp ult i32 %i.abm, 4
  %ident.check1460 = icmp ne i32 %i.f, 1
  %i.acg = trunc i64 %i.abr to i32
  %i.ach = icmp ugt i64 %i.abr, 4294967295
  %invariant.op1602 = or i1 %i.ach, %ident.check1460
  %20 = getelementptr i8, ptr %11, i64 %i.abv
  %invariant.gep1604 = getelementptr i8, ptr %20, i64 -24
  %stride.check1481 = icmp slt i32 %i.i, 0
  %min.iters.check1483 = icmp ult i32 %i.abm, 16
  %i.aci = and i64 %i.ace, 12
  %n.vec1485 = and i64 %i.ace, 2147483632         ; 4 uses
  %i.acj = or disjoint i64 %n.vec1485, 1
  %cmp.n1498 = icmp eq i64 %n.vec1485, %i.ace
  %min.epilog.iters.check1502 = icmp eq i64 %i.aci, 0
  %n.vec1505 = and i64 %i.ace, 2147483644         ; 3 uses
  %i.ack = or disjoint i64 %n.vec1505, 1
  %cmp.n1512 = icmp eq i64 %n.vec1505, %i.ace
  br label %iter.check1499

iter.check1499:                                   ; preds = %.lr.ph916.split, %._crit_edge910
  %indvar1461 = phi i32 [ 0, %.lr.ph916.split ], [ %indvar.next1462, %._crit_edge910 ] ; 3 uses
  %indvars.iv1037 = phi i64 [ 1, %.lr.ph916.split ], [ %indvars.iv.next1038, %._crit_edge910 ] ; 3 uses
  %i.acl = mul nsw i64 %indvars.iv1037, %i.abp
  %i.acm = trunc nuw nsw i64 %indvars.iv1037 to i32
  %invariant.op911.reass = add i32 %invariant.op917, %i.acm ; 7 uses
  %invariant.gep1165 = getelementptr [8 x i8], ptr %i.k, i64 %i.acl ; 7 uses
  br i1 %min.iters.check1476, label %vec.epilog.scalar.ph1501.preheader, label %vector.scevcheck1459

vector.scevcheck1459:                             ; preds = %iter.check1499
  %i.acn = add i32 %i.abt, %indvar1461            ; 2 uses
  %i.aco = add i32 %i.acn, %i.acg
  %i.acp = icmp slt i32 %i.aco, %i.acn
  %.reass1603 = or i1 %i.acp, %invariant.op1602
  br i1 %.reass1603, label %vec.epilog.scalar.ph1501.preheader, label %vector.memcheck1477

vector.memcheck1477:                              ; preds = %vector.scevcheck1459
  %i.acq = add i32 %i.abt, %indvar1461
  %i.acr = sext i32 %i.acq to i64
  %i.acs = shl nsw i64 %i.acr, 3                  ; 2 uses
  %i.act = getelementptr i8, ptr %11, i64 %i.acs
  %gep1605 = getelementptr i8, ptr %i.act, i64 -16
  %i.acu = getelementptr i8, ptr %invariant.gep1604, i64 %i.acs
  %bound01478 = icmp ult ptr %scevgep1475, %i.acu
  %bound11479 = icmp ult ptr %gep1605, %scevgep1474
  %found.conflict1480 = and i1 %bound01478, %bound11479
  %i.acv = or i1 %found.conflict1480, %stride.check1481
  br i1 %i.acv, label %vec.epilog.scalar.ph1501.preheader, label %vector.main.loop.iter.check1482

vector.main.loop.iter.check1482:                  ; preds = %vector.memcheck1477
  br i1 %min.iters.check1483, label %vec.epilog.ph1503, label %vector.body1486

vector.body1486:                                  ; preds = %vector.main.loop.iter.check1482, %vector.body1486
  %index1487 = phi i64 [ %index.next1496, %vector.body1486 ], [ 0, %vector.main.loop.iter.check1482 ] ; 2 uses
  %i.acw = or disjoint i64 %index1487, 1          ; 2 uses
  %i.acx = getelementptr [8 x i8], ptr %invariant.gep1165, i64 %i.acw ; 4 uses
  %i.acy = getelementptr i8, ptr %i.acx, i64 32
  %i.acz = getelementptr i8, ptr %i.acx, i64 64
  %i.ada = getelementptr i8, ptr %i.acx, i64 96
  %wide.load1488 = load <4 x double>, ptr %i.acx, align 8, !tbaa !84, !alias.scope !101, !noalias !102
  %wide.load1489 = load <4 x double>, ptr %i.acy, align 8, !tbaa !84, !alias.scope !101, !noalias !102
  %wide.load1490 = load <4 x double>, ptr %i.acz, align 8, !tbaa !84, !alias.scope !101, !noalias !102
  %wide.load1491 = load <4 x double>, ptr %i.ada, align 8, !tbaa !84, !alias.scope !101, !noalias !102
  %i.adb = trunc i64 %i.acw to i32
  %i.adc = add i32 %invariant.op911.reass, %i.adb
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.add ; 5 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 32 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 64 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ade, i64 96 ; 2 uses
  %wide.load1492 = load <4 x double>, ptr %i.ade, align 8, !tbaa !84, !alias.scope !102
  %wide.load1493 = load <4 x double>, ptr %i.adf, align 8, !tbaa !84, !alias.scope !102
  %wide.load1494 = load <4 x double>, ptr %i.adg, align 8, !tbaa !84, !alias.scope !102
  %wide.load1495 = load <4 x double>, ptr %i.adh, align 8, !tbaa !84, !alias.scope !102
  %i.adi = fsub <4 x double> %wide.load1492, %wide.load1488
  %i.adj = fsub <4 x double> %wide.load1493, %wide.load1489
  %i.adk = fsub <4 x double> %wide.load1494, %wide.load1490
  %i.adl = fsub <4 x double> %wide.load1495, %wide.load1491
  store <4 x double> %i.adi, ptr %i.ade, align 8, !tbaa !84, !alias.scope !102
  store <4 x double> %i.adj, ptr %i.adf, align 8, !tbaa !84, !alias.scope !102
  store <4 x double> %i.adk, ptr %i.adg, align 8, !tbaa !84, !alias.scope !102
  store <4 x double> %i.adl, ptr %i.adh, align 8, !tbaa !84, !alias.scope !102
  %index.next1496 = add nuw i64 %index1487, 16    ; 2 uses
  %i.adm = icmp eq i64 %index.next1496, %n.vec1485
  br i1 %i.adm, label %middle.block1497, label %vector.body1486, !llvm.loop !66

middle.block1497:                                 ; preds = %vector.body1486
  br i1 %cmp.n1498, label %._crit_edge910, label %vec.epilog.iter.check1500

vec.epilog.iter.check1500:                        ; preds = %middle.block1497
  br i1 %min.epilog.iters.check1502, label %vec.epilog.scalar.ph1501.preheader, label %vec.epilog.ph1503, !prof !89

vec.epilog.ph1503:                                ; preds = %vector.main.loop.iter.check1482, %vec.epilog.iter.check1500
  %vec.epilog.resume.val1504 = phi i64 [ %n.vec1485, %vec.epilog.iter.check1500 ], [ 0, %vector.main.loop.iter.check1482 ]
  br label %vec.epilog.vector.body1506

vec.epilog.vector.body1506:                       ; preds = %vec.epilog.vector.body1506, %vec.epilog.ph1503
  %index1507 = phi i64 [ %vec.epilog.resume.val1504, %vec.epilog.ph1503 ], [ %index.next1510, %vec.epilog.vector.body1506 ] ; 2 uses
  %i.adn = or disjoint i64 %index1507, 1          ; 2 uses
  %i.ado = getelementptr [8 x i8], ptr %invariant.gep1165, i64 %i.adn
  %wide.load1508 = load <4 x double>, ptr %i.ado, align 8, !tbaa !84, !alias.scope !101, !noalias !102
  %i.adp = trunc i64 %i.adn to i32
  %i.adq = add i32 %invariant.op911.reass, %i.adp
  %i.adr = sext i32 %i.adq to i64
  %i.ads = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.adr ; 2 uses
  %wide.load1509 = load <4 x double>, ptr %i.ads, align 8, !tbaa !84, !alias.scope !102
  %i.adt = fsub <4 x double> %wide.load1509, %wide.load1508
  store <4 x double> %i.adt, ptr %i.ads, align 8, !tbaa !84, !alias.scope !102
  %index.next1510 = add nuw i64 %index1507, 4     ; 2 uses
  %i.adu = icmp eq i64 %index.next1510, %n.vec1505
  br i1 %i.adu, label %vec.epilog.middle.block1511, label %vec.epilog.vector.body1506, !llvm.loop !67

vec.epilog.middle.block1511:                      ; preds = %vec.epilog.vector.body1506
  br i1 %cmp.n1512, label %._crit_edge910, label %vec.epilog.scalar.ph1501.preheader

vec.epilog.scalar.ph1501.preheader:               ; preds = %iter.check1499, %vector.scevcheck1459, %vector.memcheck1477, %vec.epilog.iter.check1500, %vec.epilog.middle.block1511
  %indvars.iv1032.ph = phi i64 [ 1, %iter.check1499 ], [ 1, %vector.scevcheck1459 ], [ 1, %vector.memcheck1477 ], [ %i.acj, %vec.epilog.iter.check1500 ], [ %i.ack, %vec.epilog.middle.block1511 ] ; 4 uses
  %i.adv = sub i64 %wide.trip.count1035, %indvars.iv1032.ph
  %i.adw = sub i64 %i.acf, %indvars.iv1032.ph
  %xtraiter1590 = and i64 %i.adv, 3               ; 2 uses
  %lcmp.mod1591.not = icmp eq i64 %xtraiter1590, 0
  br i1 %lcmp.mod1591.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol

vec.epilog.scalar.ph1501.prol:                    ; preds = %vec.epilog.scalar.ph1501.preheader, %vec.epilog.scalar.ph1501.prol
  %indvars.iv1032.prol = phi i64 [ %indvars.iv.next1033.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv1032.ph, %vec.epilog.scalar.ph1501.preheader ] ; 3 uses
  %prol.iter1592 = phi i64 [ %prol.iter1592.next, %vec.epilog.scalar.ph1501.prol ], [ 0, %vec.epilog.scalar.ph1501.preheader ]
  %gep1166.prol = getelementptr [8 x i8], ptr %invariant.gep1165, i64 %indvars.iv1032.prol
  %i.adx = load double, ptr %gep1166.prol, align 8, !tbaa !84
  %i.ady = trunc i64 %indvars.iv1032.prol to i32
  %i.adz = mul i32 %i.f, %i.ady
  %.reass912.prol = add i32 %i.adz, %invariant.op911.reass
  %i.aea = sext i32 %.reass912.prol to i64
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aea ; 2 uses
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !84
  %i.aed = fsub double %i.aec, %i.adx
  store double %i.aed, ptr %i.aeb, align 8, !tbaa !84
  %indvars.iv.next1033.prol = add nuw nsw i64 %indvars.iv1032.prol, 1 ; 2 uses
  %prol.iter1592.next = add i64 %prol.iter1592, 1 ; 2 uses
  %prol.iter1592.cmp.not = icmp eq i64 %prol.iter1592.next, %xtraiter1590
  br i1 %prol.iter1592.cmp.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol, !llvm.loop !68

vec.epilog.scalar.ph1501.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1501.prol, %vec.epilog.scalar.ph1501.preheader
  %indvars.iv1032.unr = phi i64 [ %indvars.iv1032.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next1033.prol, %vec.epilog.scalar.ph1501.prol ]
  %i.aee = icmp ult i64 %i.adw, 3
  br i1 %i.aee, label %._crit_edge910, label %vec.epilog.scalar.ph1501

vec.epilog.scalar.ph1501:                         ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033.3, %vec.epilog.scalar.ph1501 ], [ %indvars.iv1032.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 6 uses
  %gep1166 = getelementptr [8 x i8], ptr %invariant.gep1165, i64 %indvars.iv1032
  %i.aef = load double, ptr %gep1166, align 8, !tbaa !84
  %i.aeg = trunc i64 %indvars.iv1032 to i32
  %i.aeh = mul i32 %i.f, %i.aeg
  %.reass912 = add i32 %i.aeh, %invariant.op911.reass
  %i.aei = sext i32 %.reass912 to i64
  %i.aej = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aei ; 2 uses
  %i.aek = load double, ptr %i.aej, align 8, !tbaa !84
  %i.ael = fsub double %i.aek, %i.aef
  store double %i.ael, ptr %i.aej, align 8, !tbaa !84
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 1 ; 2 uses
  %gep1166.1 = getelementptr [8 x i8], ptr %invariant.gep1165, i64 %indvars.iv.next1033
  %i.aem = load double, ptr %gep1166.1, align 8, !tbaa !84
  %i.aen = trunc i64 %indvars.iv.next1033 to i32
  %i.aeo = mul i32 %i.f, %i.aen
  %.reass912.1 = add i32 %i.aeo, %invariant.op911.reass
  %i.aep = sext i32 %.reass912.1 to i64
  %i.aeq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aep ; 2 uses
  %i.aer = load double, ptr %i.aeq, align 8, !tbaa !84
  %i.aes = fsub double %i.aer, %i.aem
  store double %i.aes, ptr %i.aeq, align 8, !tbaa !84
  %indvars.iv.next1033.1 = add nuw nsw i64 %indvars.iv1032, 2 ; 2 uses
  %gep1166.2 = getelementptr [8 x i8], ptr %invariant.gep1165, i64 %indvars.iv.next1033.1
  %i.aet = load double, ptr %gep1166.2, align 8, !tbaa !84
  %i.aeu = trunc i64 %indvars.iv.next1033.1 to i32
  %i.aev = mul i32 %i.f, %i.aeu
  %.reass912.2 = add i32 %i.aev, %invariant.op911.reass
  %i.aew = sext i32 %.reass912.2 to i64
  %i.aex = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aew ; 2 uses
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !84
  %i.aez = fsub double %i.aey, %i.aet
  store double %i.aez, ptr %i.aex, align 8, !tbaa !84
  %indvars.iv.next1033.2 = add nuw nsw i64 %indvars.iv1032, 3 ; 2 uses
  %gep1166.3 = getelementptr [8 x i8], ptr %invariant.gep1165, i64 %indvars.iv.next1033.2
  %i.afa = load double, ptr %gep1166.3, align 8, !tbaa !84
  %i.afb = trunc i64 %indvars.iv.next1033.2 to i32
  %i.afc = mul i32 %i.f, %i.afb
  %.reass912.3 = add i32 %i.afc, %invariant.op911.reass
  %i.afd = sext i32 %.reass912.3 to i64
  %i.afe = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.afd ; 2 uses
  %i.aff = load double, ptr %i.afe, align 8, !tbaa !84
  %i.afg = fsub double %i.aff, %i.afa
  store double %i.afg, ptr %i.afe, align 8, !tbaa !84
  %indvars.iv.next1033.3 = add nuw nsw i64 %indvars.iv1032, 4 ; 2 uses
  %exitcond1036.not.3 = icmp eq i64 %indvars.iv.next1033.3, %wide.trip.count1035
  br i1 %exitcond1036.not.3, label %._crit_edge910, label %vec.epilog.scalar.ph1501, !llvm.loop !69

._crit_edge910:                                   ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501, %vec.epilog.middle.block1511, %middle.block1497
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1 ; 2 uses
  %exitcond1041.not = icmp eq i64 %indvars.iv.next1038, %wide.trip.count1040
  %indvar.next1462 = add i32 %indvar1461, 1
  br i1 %exitcond1041.not, label %.loopexit, label %iter.check1499, !llvm.loop !70

bb.aw:                                            ; preds = %bb.aq
  %i.afh = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.11) #3
  %.not762 = icmp eq i32 %i.afh, 0
  br i1 %.not762, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.afi = load i32, ptr %6, align 4, !tbaa !80   ; 4 uses
  store i32 %i.afi, ptr %i.a, align 4, !tbaa !80
  %.not763918 = icmp slt i32 %i.afi, 1
  br i1 %.not763918, label %._crit_edge922, label %.lr.ph921.preheader

.lr.ph921.preheader:                              ; preds = %bb.ax
  %i.afj = sext i32 %i.i to i64
  %i.afk = add nuw i32 %i.afi, 1
  %wide.trip.count1045 = zext i32 %i.afk to i64
  br label %.lr.ph921

.lr.ph921:                                        ; preds = %.lr.ph921.preheader, %.lr.ph921
  %indvars.iv1042 = phi i64 [ 1, %.lr.ph921.preheader ], [ %indvars.iv.next1043, %.lr.ph921 ] ; 3 uses
  %i.afl = load i32, ptr %5, align 4, !tbaa !80
  %i.afm = load i32, ptr %6, align 4, !tbaa !80
  %i.afn = trunc nuw nsw i64 %indvars.iv1042 to i32
  %i.afo = add i32 %i.afl, %i.afn
  %i.afp = sub i32 %i.afo, %i.afm
  %i.afq = mul nsw i32 %i.afp, %i.f
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr [8 x i8], ptr %i.h, i64 %i.afr
  %i.aft = getelementptr i8, ptr %i.afs, i64 8
  %i.afu = mul nsw i64 %indvars.iv1042, %i.afj
  %i.afv = getelementptr [8 x i8], ptr %i.k, i64 %i.afu
  %i.afw = getelementptr i8, ptr %i.afv, i64 8
  tail call void @dcopy_(ptr noundef nonnull %4, ptr noundef %i.aft, ptr noundef nonnull @c__1, ptr noundef %i.afw, ptr noundef nonnull @c__1) #3
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 1 ; 2 uses
  %exitcond1046.not = icmp eq i64 %indvars.iv.next1043, %wide.trip.count1045
  br i1 %exitcond1046.not, label %._crit_edge922.loopexit, label %.lr.ph921, !llvm.loop !71

._crit_edge922.loopexit:                          ; preds = %.lr.ph921
  %.pre1065 = load i32, ptr %6, align 4, !tbaa !80
  br label %._crit_edge922

._crit_edge922:                                   ; preds = %._crit_edge922.loopexit, %bb.ax
  %i.afx = phi i32 [ %.pre1065, %._crit_edge922.loopexit ], [ %i.afi, %bb.ax ]
  %i.afy = load i32, ptr %5, align 4, !tbaa !80
  %i.afz = add i32 %i.afy, 1
  %i.aga = sub i32 %i.afz, %i.afx
  %i.agb = mul nsw i32 %i.aga, %i.c
  %i.agc = sext i32 %i.agb to i64
  %i.agd = getelementptr [8 x i8], ptr %i.e, i64 %i.agc
  %i.age = getelementptr i8, ptr %i.agd, i64 8
  tail call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %i.age, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.agf = load i32, ptr %5, align 4, !tbaa !80   ; 2 uses
  %i.agg = load i32, ptr %6, align 4, !tbaa !80   ; 2 uses
  %i.agh = icmp sgt i32 %i.agf, %i.agg
  br i1 %i.agh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge922
  %i.agi = sub nsw i32 %i.agf, %i.agg
  store i32 %i.agi, ptr %i.a, align 4, !tbaa !80
  call void @dgemm_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b14, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @c_b14, ptr noundef %13, ptr noundef nonnull %14) #3
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge922
  call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.agj = load i32, ptr %5, align 4, !tbaa !80   ; 3 uses
  %i.agk = load i32, ptr %6, align 4, !tbaa !80   ; 3 uses
  %i.agl = icmp sgt i32 %i.agj, %i.agk
  br i1 %i.agl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.agm = sub nsw i32 %i.agj, %i.agk
  store i32 %i.agm, ptr %i.a, align 4, !tbaa !80
  call void @dgemm_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull @c_b25, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @c_b14, ptr noundef %11, ptr noundef nonnull %12) #3
  %.pre1066 = load i32, ptr %5, align 4, !tbaa !80
  %.pre1067 = load i32, ptr %6, align 4, !tbaa !80
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.agn = phi i32 [ %.pre1067, %bb.ba ], [ %i.agk, %bb.az ]
  %i.ago = phi i32 [ %.pre1066, %bb.ba ], [ %i.agj, %bb.az ]
  %i.agp = add i32 %i.ago, 1
  %i.agq = sub i32 %i.agp, %i.agn
  %i.agr = mul nsw i32 %i.agq, %i.c
  %i.ags = sext i32 %i.agr to i64
  %i.agt = getelementptr [8 x i8], ptr %i.e, i64 %i.ags
  %i.agu = getelementptr i8, ptr %i.agt, i64 8
  call void @dtrmm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull @c_b14, ptr noundef %i.agu, ptr noundef nonnull %8, ptr noundef %13, ptr noundef nonnull %14) #3
  %i.agv = load i32, ptr %6, align 4, !tbaa !80   ; 3 uses
  %.not764928 = icmp slt i32 %i.agv, 1
  br i1 %.not764928, label %.loopexit, label %.lr.ph931

.lr.ph931:                                        ; preds = %bb.bb
  %i.agw = load i32, ptr %4, align 4, !tbaa !80   ; 6 uses
  %.not765923 = icmp slt i32 %i.agw, 1
  br i1 %.not765923, label %.loopexit, label %.lr.ph931.split

.lr.ph931.split:                                  ; preds = %.lr.ph931
  %i.agx = load i32, ptr %5, align 4, !tbaa !80
  %invariant.op932 = sub i32 %i.agx, %i.agv
  %i.agy = add nuw i32 %i.agw, 1
  %i.agz = sext i32 %i.i to i64                   ; 3 uses
  %i.aha = add nuw i32 %i.agv, 1
  %wide.trip.count1055 = zext i32 %i.aha to i64   ; 2 uses
  %wide.trip.count1050 = zext i32 %i.agy to i64   ; 3 uses
  %i.ahb = shl nsw i64 %i.agz, 3
  %i.ahc = shl nuw nsw i64 %wide.trip.count1055, 3
  %i.ahd = add nsw i64 %i.ahc, -8
  %i.ahe = mul i64 %i.ahd, %i.agz
  %i.ahf = shl nsw i64 %i.j, 3                    ; 2 uses
  %i.ahg = shl nuw nsw i64 %wide.trip.count1050, 3 ; 2 uses
  %i.ahh = getelementptr i8, ptr %13, i64 %i.ahe
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 %i.ahf
  %scevgep1527 = getelementptr i8, ptr %i.ahi, i64 %i.ahg
  %i.ahj = getelementptr i8, ptr %13, i64 %i.ahb
  %i.ahk = getelementptr i8, ptr %i.ahj, i64 %i.ahf
  %scevgep1528 = getelementptr i8, ptr %i.ahk, i64 8
  %21 = shl nsw i64 %i.g, 3                       ; 2 uses
  %i.ahl = zext nneg i32 %i.agw to i64            ; 5 uses
  %i.ahm = zext nneg i32 %i.agw to i64
  %min.iters.check1529 = icmp ult i32 %i.agw, 4
  %22 = getelementptr i8, ptr %11, i64 %21
  %23 = getelementptr i8, ptr %22, i64 8
  %24 = getelementptr i8, ptr %11, i64 %21
  %invariant.gep1606 = getelementptr i8, ptr %24, i64 %i.ahg
  %stride.check1534 = icmp slt i32 %i.i, 0
  %min.iters.check1536 = icmp ult i32 %i.agw, 16
  %i.ahn = and i64 %i.ahl, 12
  %n.vec1538 = and i64 %i.ahl, 2147483632         ; 4 uses
  %i.aho = or disjoint i64 %n.vec1538, 1
  %cmp.n1551 = icmp eq i64 %n.vec1538, %i.ahl
  %min.epilog.iters.check1555 = icmp eq i64 %i.ahn, 0
  %n.vec1558 = and i64 %i.ahl, 2147483644         ; 3 uses
  %i.ahp = or disjoint i64 %n.vec1558, 1
  %cmp.n1565 = icmp eq i64 %n.vec1558, %i.ahl
  br label %iter.check1552

iter.check1552:                                   ; preds = %.lr.ph931.split, %._crit_edge927
  %indvars.iv1052 = phi i64 [ 1, %.lr.ph931.split ], [ %indvars.iv.next1053, %._crit_edge927 ] ; 3 uses
  %i.ahq = mul nsw i64 %indvars.iv1052, %i.agz
  %i.ahr = trunc nuw nsw i64 %indvars.iv1052 to i32
  %.reass933 = add i32 %invariant.op932, %i.ahr
  %i.ahs = mul nsw i32 %.reass933, %i.f
  %i.aht = sext i32 %i.ahs to i64                 ; 2 uses
  %invariant.gep1167 = getelementptr [8 x i8], ptr %i.k, i64 %i.ahq ; 11 uses
  %invariant.gep1169 = getelementptr [8 x i8], ptr %i.h, i64 %i.aht ; 11 uses
  br i1 %min.iters.check1529, label %vec.epilog.scalar.ph1554.preheader, label %vector.memcheck1530

vector.memcheck1530:                              ; preds = %iter.check1552
  %i.ahu = shl nsw i64 %i.aht, 3                  ; 2 uses
  %i.ahv = getelementptr i8, ptr %23, i64 %i.ahu
  %gep1607 = getelementptr i8, ptr %invariant.gep1606, i64 %i.ahu
  %bound01531 = icmp ult ptr %i.ahv, %scevgep1527
  %bound11532 = icmp ult ptr %scevgep1528, %gep1607
  %found.conflict1533 = and i1 %bound01531, %bound11532
  %i.ahw = or i1 %found.conflict1533, %stride.check1534
  br i1 %i.ahw, label %vec.epilog.scalar.ph1554.preheader, label %vector.main.loop.iter.check1535

vector.main.loop.iter.check1535:                  ; preds = %vector.memcheck1530
  br i1 %min.iters.check1536, label %vec.epilog.ph1556, label %vector.body1539

vector.body1539:                                  ; preds = %vector.main.loop.iter.check1535, %vector.body1539
  %index1540 = phi i64 [ %index.next1549, %vector.body1539 ], [ 0, %vector.main.loop.iter.check1535 ] ; 2 uses
  %i.ahx = or disjoint i64 %index1540, 1          ; 2 uses
  %i.ahy = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %i.ahx ; 4 uses
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 32
  %i.aia = getelementptr i8, ptr %i.ahy, i64 64
  %i.aib = getelementptr i8, ptr %i.ahy, i64 96
  %wide.load1541 = load <4 x double>, ptr %i.ahy, align 8, !tbaa !84, !alias.scope !103
  %wide.load1542 = load <4 x double>, ptr %i.ahz, align 8, !tbaa !84, !alias.scope !103
  %wide.load1543 = load <4 x double>, ptr %i.aia, align 8, !tbaa !84, !alias.scope !103
  %wide.load1544 = load <4 x double>, ptr %i.aib, align 8, !tbaa !84, !alias.scope !103
  %i.aic = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %i.ahx ; 5 uses
  %i.aid = getelementptr i8, ptr %i.aic, i64 32   ; 2 uses
  %i.aie = getelementptr i8, ptr %i.aic, i64 64   ; 2 uses
  %i.aif = getelementptr i8, ptr %i.aic, i64 96   ; 2 uses
  %wide.load1545 = load <4 x double>, ptr %i.aic, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  %wide.load1546 = load <4 x double>, ptr %i.aid, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  %wide.load1547 = load <4 x double>, ptr %i.aie, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  %wide.load1548 = load <4 x double>, ptr %i.aif, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  %i.aig = fsub <4 x double> %wide.load1545, %wide.load1541
  %i.aih = fsub <4 x double> %wide.load1546, %wide.load1542
  %i.aii = fsub <4 x double> %wide.load1547, %wide.load1543
  %i.aij = fsub <4 x double> %wide.load1548, %wide.load1544
  store <4 x double> %i.aig, ptr %i.aic, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  store <4 x double> %i.aih, ptr %i.aid, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  store <4 x double> %i.aii, ptr %i.aie, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  store <4 x double> %i.aij, ptr %i.aif, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  %index.next1549 = add nuw i64 %index1540, 16    ; 2 uses
  %i.aik = icmp eq i64 %index.next1549, %n.vec1538
  br i1 %i.aik, label %middle.block1550, label %vector.body1539, !llvm.loop !75

middle.block1550:                                 ; preds = %vector.body1539
  br i1 %cmp.n1551, label %._crit_edge927, label %vec.epilog.iter.check1553

vec.epilog.iter.check1553:                        ; preds = %middle.block1550
  br i1 %min.epilog.iters.check1555, label %vec.epilog.scalar.ph1554.preheader, label %vec.epilog.ph1556, !prof !89

vec.epilog.ph1556:                                ; preds = %vector.main.loop.iter.check1535, %vec.epilog.iter.check1553
  %vec.epilog.resume.val1557 = phi i64 [ %n.vec1538, %vec.epilog.iter.check1553 ], [ 0, %vector.main.loop.iter.check1535 ]
  br label %vec.epilog.vector.body1559

vec.epilog.vector.body1559:                       ; preds = %vec.epilog.vector.body1559, %vec.epilog.ph1556
  %index1560 = phi i64 [ %vec.epilog.resume.val1557, %vec.epilog.ph1556 ], [ %index.next1563, %vec.epilog.vector.body1559 ] ; 2 uses
  %i.ail = or disjoint i64 %index1560, 1          ; 2 uses
  %i.aim = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %i.ail
  %wide.load1561 = load <4 x double>, ptr %i.aim, align 8, !tbaa !84, !alias.scope !103
  %i.ain = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %i.ail ; 2 uses
  %wide.load1562 = load <4 x double>, ptr %i.ain, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  %i.aio = fsub <4 x double> %wide.load1562, %wide.load1561
  store <4 x double> %i.aio, ptr %i.ain, align 8, !tbaa !84, !alias.scope !104, !noalias !103
  %index.next1563 = add nuw i64 %index1560, 4     ; 2 uses
  %i.aip = icmp eq i64 %index.next1563, %n.vec1558
  br i1 %i.aip, label %vec.epilog.middle.block1564, label %vec.epilog.vector.body1559, !llvm.loop !76

vec.epilog.middle.block1564:                      ; preds = %vec.epilog.vector.body1559
  br i1 %cmp.n1565, label %._crit_edge927, label %vec.epilog.scalar.ph1554.preheader

vec.epilog.scalar.ph1554.preheader:               ; preds = %iter.check1552, %vector.memcheck1530, %vec.epilog.iter.check1553, %vec.epilog.middle.block1564
  %indvars.iv1047.ph = phi i64 [ 1, %iter.check1552 ], [ 1, %vector.memcheck1530 ], [ %i.aho, %vec.epilog.iter.check1553 ], [ %i.ahp, %vec.epilog.middle.block1564 ] ; 4 uses
  %i.aiq = sub nsw i64 %wide.trip.count1050, %indvars.iv1047.ph
  %i.air = sub nsw i64 %i.ahm, %indvars.iv1047.ph
  %xtraiter1593 = and i64 %i.aiq, 7               ; 2 uses
  %lcmp.mod1594.not = icmp eq i64 %xtraiter1593, 0
  br i1 %lcmp.mod1594.not, label %vec.epilog.scalar.ph1554.prol.loopexit, label %vec.epilog.scalar.ph1554.prol

vec.epilog.scalar.ph1554.prol:                    ; preds = %vec.epilog.scalar.ph1554.preheader, %vec.epilog.scalar.ph1554.prol
  %indvars.iv1047.prol = phi i64 [ %indvars.iv.next1048.prol, %vec.epilog.scalar.ph1554.prol ], [ %indvars.iv1047.ph, %vec.epilog.scalar.ph1554.preheader ] ; 3 uses
  %prol.iter1595 = phi i64 [ %prol.iter1595.next, %vec.epilog.scalar.ph1554.prol ], [ 0, %vec.epilog.scalar.ph1554.preheader ]
  %gep1168.prol = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv1047.prol
  %i.ais = load double, ptr %gep1168.prol, align 8, !tbaa !84
  %gep1170.prol = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv1047.prol ; 2 uses
  %i.ait = load double, ptr %gep1170.prol, align 8, !tbaa !84
  %i.aiu = fsub double %i.ait, %i.ais
  store double %i.aiu, ptr %gep1170.prol, align 8, !tbaa !84
  %indvars.iv.next1048.prol = add nuw nsw i64 %indvars.iv1047.prol, 1 ; 2 uses
  %prol.iter1595.next = add i64 %prol.iter1595, 1 ; 2 uses
  %prol.iter1595.cmp.not = icmp eq i64 %prol.iter1595.next, %xtraiter1593
  br i1 %prol.iter1595.cmp.not, label %vec.epilog.scalar.ph1554.prol.loopexit, label %vec.epilog.scalar.ph1554.prol, !llvm.loop !77

vec.epilog.scalar.ph1554.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1554.prol, %vec.epilog.scalar.ph1554.preheader
  %indvars.iv1047.unr = phi i64 [ %indvars.iv1047.ph, %vec.epilog.scalar.ph1554.preheader ], [ %indvars.iv.next1048.prol, %vec.epilog.scalar.ph1554.prol ]
  %i.aiv = icmp ult i64 %i.air, 7
  br i1 %i.aiv, label %._crit_edge927, label %vec.epilog.scalar.ph1554

vec.epilog.scalar.ph1554:                         ; preds = %vec.epilog.scalar.ph1554.prol.loopexit, %vec.epilog.scalar.ph1554
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048.7, %vec.epilog.scalar.ph1554 ], [ %indvars.iv1047.unr, %vec.epilog.scalar.ph1554.prol.loopexit ] ; 10 uses
  %gep1168 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv1047
  %i.aiw = load double, ptr %gep1168, align 8, !tbaa !84
  %gep1170 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv1047 ; 2 uses
  %i.aix = load double, ptr %gep1170, align 8, !tbaa !84
  %i.aiy = fsub double %i.aix, %i.aiw
  store double %i.aiy, ptr %gep1170, align 8, !tbaa !84
  %indvars.iv.next1048 = add nuw nsw i64 %indvars.iv1047, 1 ; 2 uses
  %gep1168.1 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1048
  %i.aiz = load double, ptr %gep1168.1, align 8, !tbaa !84
  %gep1170.1 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1048 ; 2 uses
  %i.aja = load double, ptr %gep1170.1, align 8, !tbaa !84
  %i.ajb = fsub double %i.aja, %i.aiz
  store double %i.ajb, ptr %gep1170.1, align 8, !tbaa !84
  %indvars.iv.next1048.1 = add nuw nsw i64 %indvars.iv1047, 2 ; 2 uses
  %gep1168.2 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1048.1
  %i.ajc = load double, ptr %gep1168.2, align 8, !tbaa !84
  %gep1170.2 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1048.1 ; 2 uses
  %i.ajd = load double, ptr %gep1170.2, align 8, !tbaa !84
  %i.aje = fsub double %i.ajd, %i.ajc
  store double %i.aje, ptr %gep1170.2, align 8, !tbaa !84
  %indvars.iv.next1048.2 = add nuw nsw i64 %indvars.iv1047, 3 ; 2 uses
  %gep1168.3 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1048.2
  %i.ajf = load double, ptr %gep1168.3, align 8, !tbaa !84
  %gep1170.3 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1048.2 ; 2 uses
  %i.ajg = load double, ptr %gep1170.3, align 8, !tbaa !84
  %i.ajh = fsub double %i.ajg, %i.ajf
  store double %i.ajh, ptr %gep1170.3, align 8, !tbaa !84
  %indvars.iv.next1048.3 = add nuw nsw i64 %indvars.iv1047, 4 ; 2 uses
  %gep1168.4 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1048.3
  %i.aji = load double, ptr %gep1168.4, align 8, !tbaa !84
  %gep1170.4 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1048.3 ; 2 uses
  %i.ajj = load double, ptr %gep1170.4, align 8, !tbaa !84
  %i.ajk = fsub double %i.ajj, %i.aji
  store double %i.ajk, ptr %gep1170.4, align 8, !tbaa !84
  %indvars.iv.next1048.4 = add nuw nsw i64 %indvars.iv1047, 5 ; 2 uses
  %gep1168.5 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1048.4
  %i.ajl = load double, ptr %gep1168.5, align 8, !tbaa !84
  %gep1170.5 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1048.4 ; 2 uses
  %i.ajm = load double, ptr %gep1170.5, align 8, !tbaa !84
  %i.ajn = fsub double %i.ajm, %i.ajl
  store double %i.ajn, ptr %gep1170.5, align 8, !tbaa !84
  %indvars.iv.next1048.5 = add nuw nsw i64 %indvars.iv1047, 6 ; 2 uses
  %gep1168.6 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1048.5
  %i.ajo = load double, ptr %gep1168.6, align 8, !tbaa !84
  %gep1170.6 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1048.5 ; 2 uses
  %i.ajp = load double, ptr %gep1170.6, align 8, !tbaa !84
  %i.ajq = fsub double %i.ajp, %i.ajo
  store double %i.ajq, ptr %gep1170.6, align 8, !tbaa !84
  %indvars.iv.next1048.6 = add nuw nsw i64 %indvars.iv1047, 7 ; 2 uses
  %gep1168.7 = getelementptr [8 x i8], ptr %invariant.gep1167, i64 %indvars.iv.next1048.6
  %i.ajr = load double, ptr %gep1168.7, align 8, !tbaa !84
  %gep1170.7 = getelementptr [8 x i8], ptr %invariant.gep1169, i64 %indvars.iv.next1048.6 ; 2 uses
  %i.ajs = load double, ptr %gep1170.7, align 8, !tbaa !84
  %i.ajt = fsub double %i.ajs, %i.ajr
  store double %i.ajt, ptr %gep1170.7, align 8, !tbaa !84
  %indvars.iv.next1048.7 = add nuw nsw i64 %indvars.iv1047, 8 ; 2 uses
  %exitcond1051.not.7 = icmp eq i64 %indvars.iv.next1048.7, %wide.trip.count1050
  br i1 %exitcond1051.not.7, label %._crit_edge927, label %vec.epilog.scalar.ph1554, !llvm.loop !78

._crit_edge927:                                   ; preds = %vec.epilog.scalar.ph1554.prol.loopexit, %vec.epilog.scalar.ph1554, %vec.epilog.middle.block1564, %middle.block1550
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1 ; 2 uses
  %exitcond1056.not = icmp eq i64 %indvars.iv.next1053, %wide.trip.count1055
  br i1 %exitcond1056.not, label %.loopexit, label %iter.check1552, !llvm.loop !79

.loopexit:                                        ; preds = %._crit_edge824, %._crit_edge838, %._crit_edge852, %._crit_edge867, %._crit_edge882, %._crit_edge896, %._crit_edge910, %._crit_edge927, %bb.j, %.lr.ph828, %bb.p, %.lr.ph842, %bb.v, %.lr.ph856, %bb.ab, %.lr.ph871, %bb.aj, %.lr.ph886, %bb.ap, %.lr.ph900, %bb.av, %.lr.ph916, %bb.bb, %.lr.ph931, %bb.w, %bb.k, %bb.ak, %bb.aw, %bb.ac, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtrmm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !82}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
end_hunk_1
