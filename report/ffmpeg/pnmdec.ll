Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pnmdec?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@pnm_decode_frame:bb.a
  %indvars.iv.next.i593.2 = add nuw nsw i64 %indvars.iv.i592, 3 ; 2 uses
  %i.tc = shl nuw nsw i64 %indvars.iv.next.i593.2, 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.tc
  %i.te = load i16, ptr %i.td, align 1, !tbaa !118
  %i.tf = tail call i16 @llvm.bswap.i16(i16 %i.te)
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %.0499734, i64 %indvars.iv.next.i593.2
  store i16 %i.tf, ptr %i.tg, align 2, !tbaa !125
  %indvars.iv.next.i593.3 = add nuw nsw i64 %indvars.iv.i592, 4 ; 2 uses
  %exitcond.not.i594.3 = icmp eq i64 %indvars.iv.next.i593.3, %wide.trip.count.i582
  br i1 %exitcond.not.i594.3, label %samplecpy.exit595, label %.lr.ph.i591, !llvm.loop !53

samplecpy.exit595:                                ; preds = %.lr.ph.i591.prol.loopexit, %.lr.ph.i591, %middle.block1233, %vec.epilog.middle.block1246, %.preheader.i588.thread, %.preheader.i588, %bb.ap
  %i.th = phi ptr [ %i.rl, %.preheader.i588 ], [ %.pre888, %bb.ap ], [ %i.qq, %.preheader.i588.thread ], [ %i.rp, %middle.block1233 ], [ %i.rp, %vec.epilog.middle.block1246 ], [ %i.rp, %.lr.ph.i591 ], [ %i.rp, %.lr.ph.i591.prol.loopexit ]
  %.pr885 = phi i32 [ %.pr.pre, %.preheader.i588 ], [ %.pre882, %bb.ap ], [ %.pr884, %.preheader.i588.thread ], [ %.pr961964, %middle.block1233 ], [ %.pr961964, %vec.epilog.middle.block1246 ], [ %.pr961964, %.lr.ph.i591 ], [ %.pr961964, %.lr.ph.i591.prol.loopexit ]
  %i.ti = phi i32 [ %.pr.pre, %.preheader.i588 ], [ %.pre882, %bb.ap ], [ %i.pr, %.preheader.i588.thread ], [ %.pr961964, %middle.block1233 ], [ %.pr961964, %vec.epilog.middle.block1246 ], [ %.pr961964, %.lr.ph.i591 ], [ %.pr961964, %.lr.ph.i591.prol.loopexit ]
  %i.tj = getelementptr inbounds i8, ptr %i.th, i64 %i.pl ; 2 uses
  store ptr %i.tj, ptr %i.f, align 8, !tbaa !111
  %i.tk = load i32, ptr %i.pn, align 4, !tbaa !122
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds i8, ptr %.0500732, i64 %i.tl
  %i.tn = load i32, ptr %i.po, align 8, !tbaa !122
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds i8, ptr %.0499734, i64 %i.to
  %i.tq = add nuw nsw i32 %.2529731, 1            ; 2 uses
  %exitcond860.not = icmp eq i32 %i.tq, %i.pd
  br i1 %exitcond860.not, label %.loopexit, label %bb.ao, !llvm.loop !54

bb.aq:                                            ; preds = %bb.f
  %i.tr = sdiv i32 %i.ag, 2
  %i.ts = add nsw i32 %i.tr, 2147450880
  %i.tt = sdiv i32 %i.ts, %i.ag                   ; 12 uses
  %i.tu = load i32, ptr %i.q, align 8, !tbaa !115 ; 10 uses
  %i.tv = shl nsw i32 %i.tu, 1                    ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !122 ; 2 uses
  %i.ty = load i32, ptr %i.s, align 4, !tbaa !116 ; 6 uses
  %i.tz = mul nsw i32 %i.ty, %i.tv                ; 2 uses
  %i.ua = ashr exact i32 %i.tz, 1
  %i.ub = add nsw i32 %i.ua, %i.tz
  %i.uc = sext i32 %i.ub to i64
  %i.ud = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.ue = load ptr, ptr %i.f, align 8, !tbaa !111 ; 6 uses
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = ptrtoint ptr %i.ue to i64
  %i.uh = sub i64 %i.uf, %i.ug
  %.not547 = icmp slt i64 %i.uh, %i.uc
  br i1 %.not547, label %.critedge567, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ui = icmp sgt i32 %i.ty, 0
  br i1 %i.ui, label %.preheader620.lr.ph, label %._crit_edge715

.preheader620.lr.ph:                              ; preds = %bb.ar
  %.not770 = icmp eq i32 %i.tu, 0
  %i.uj = sext i32 %i.tv to i64                   ; 3 uses
  %i.uk = sext i32 %i.tx to i64                   ; 2 uses
  br i1 %.not770, label %.preheader620.preheader, label %.preheader620.us.preheader

.preheader620.us.preheader:                       ; preds = %.preheader620.lr.ph
  %i.ul = load ptr, ptr %1, align 8, !tbaa !121   ; 3 uses
  %wide.trip.count845 = zext i32 %i.tu to i64     ; 6 uses
  %i.um = add nsw i32 %i.ty, -1
  %i.un = zext i32 %i.um to i64                   ; 2 uses
  %i.uo = mul nsw i64 %i.uk, %i.un
  %i.up = shl nuw nsw i64 %wide.trip.count845, 1  ; 2 uses
  %i.uq = getelementptr i8, ptr %i.ul, i64 %i.uo
  %scevgep1135 = getelementptr i8, ptr %i.uq, i64 %i.up
  %i.ur = mul nsw i64 %i.uj, %i.un
  %i.us = getelementptr i8, ptr %i.ue, i64 %i.ur
  %scevgep1136 = getelementptr i8, ptr %i.us, i64 %i.up
  %i.ut = add i32 %i.tu, 2147483647
  %or.cond1336 = icmp ult i32 %i.ut, -2147483641
  %bound01137 = icmp ult ptr %i.ul, %scevgep1136
  %bound11138 = icmp ult ptr %i.ue, %scevgep1135
  %found.conflict1139 = and i1 %bound01137, %bound11138
  %i.uu = or i32 %i.tu, %i.tx
  %i.uv = icmp slt i32 %i.uu, 0
  %i.uw = or i1 %found.conflict1139, %i.uv
  %n.vec1145 = and i64 %wide.trip.count845, 4294967288 ; 3 uses
  %broadcast.splatinsert1146 = insertelement <8 x i32> poison, i32 %i.tt, i64 0
  %broadcast.splat1147 = shufflevector <8 x i32> %broadcast.splatinsert1146, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n1153 = icmp eq i64 %n.vec1145, %wide.trip.count845
  %xtraiter1384 = and i64 %wide.trip.count845, 1
  %lcmp.mod1385.not = icmp eq i64 %xtraiter1384, 0
  %i.ux = add nsw i64 %wide.trip.count845, -1
  br label %.preheader620.us

.preheader620.preheader:                          ; preds = %.preheader620.lr.ph
  %i.uy = zext nneg i32 %i.ty to i64
  %i.uz = mul nuw nsw i64 %i.uy, %i.uj
  %scevgep = getelementptr i8, ptr %i.ue, i64 %i.uz ; 2 uses
  store ptr %scevgep, ptr %i.f, align 8, !tbaa !111
  br label %._crit_edge715

.preheader620.us:                                 ; preds = %.preheader620.us.preheader, %._crit_edge712.us
  %i.va = phi ptr [ %i.wu, %._crit_edge712.us ], [ %i.ue, %.preheader620.us.preheader ] ; 5 uses
  %.4520714.us = phi ptr [ %i.wv, %._crit_edge712.us ], [ %i.ul, %.preheader620.us.preheader ] ; 5 uses
  %.3530713.us = phi i32 [ %i.ww, %._crit_edge712.us ], [ 0, %.preheader620.us.preheader ]
  %brmerge = select i1 %or.cond1336, i1 true, i1 %i.uw
  br i1 %brmerge, label %scalar.ph1142.preheader, label %vector.body1148

vector.body1148:                                  ; preds = %.preheader620.us, %vector.body1148
  %index1149 = phi i64 [ %index.next1151, %vector.body1148 ], [ 0, %.preheader620.us ] ; 3 uses
  %i.vb = shl nuw i64 %index1149, 1
  %i.vc = and i64 %i.vb, 4294967280
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.vc
  %wide.load1150 = load <8 x i16>, ptr %i.vd, align 1, !tbaa !118, !alias.scope !131
  %i.ve = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load1150)
  %i.vf = zext <8 x i16> %i.ve to <8 x i32>
  %i.vg = mul <8 x i32> %broadcast.splat1147, %i.vf
  %i.vh = add <8 x i32> %i.vg, splat (i32 16384)
  %i.vi = lshr <8 x i32> %i.vh, splat (i32 15)
  %i.vj = trunc <8 x i32> %i.vi to <8 x i16>
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %.4520714.us, i64 %index1149
  store <8 x i16> %i.vj, ptr %i.vk, align 2, !tbaa !125, !alias.scope !132, !noalias !131
  %index.next1151 = add nuw i64 %index1149, 8     ; 2 uses
  %i.vl = icmp eq i64 %index.next1151, %n.vec1145
  br i1 %i.vl, label %middle.block1152, label %vector.body1148, !llvm.loop !58

middle.block1152:                                 ; preds = %vector.body1148
  br i1 %cmp.n1153, label %._crit_edge712.us, label %scalar.ph1142.preheader

scalar.ph1142.preheader:                          ; preds = %.preheader620.us, %middle.block1152
  %indvars.iv842.ph = phi i64 [ %n.vec1145, %middle.block1152 ], [ 0, %.preheader620.us ] ; 5 uses
  br i1 %lcmp.mod1385.not, label %scalar.ph1142.prol.loopexit, label %scalar.ph1142.prol

scalar.ph1142.prol:                               ; preds = %scalar.ph1142.preheader
  %i.vm = shl nuw nsw i64 %indvars.iv842.ph, 1
  %i.vn = and i64 %i.vm, 4294967280
  %i.vo = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.vn
  %i.vp = load i16, ptr %i.vo, align 1, !tbaa !118
  %i.vq = tail call i16 @llvm.bswap.i16(i16 %i.vp)
  %i.vr = zext i16 %i.vq to i32
  %i.vs = mul i32 %i.tt, %i.vr
  %i.vt = add i32 %i.vs, 16384
  %i.vu = lshr i32 %i.vt, 15
  %i.vv = trunc i32 %i.vu to i16
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %.4520714.us, i64 %indvars.iv842.ph
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !125
  %indvars.iv.next843.prol = or disjoint i64 %indvars.iv842.ph, 1
  br label %scalar.ph1142.prol.loopexit

scalar.ph1142.prol.loopexit:                      ; preds = %scalar.ph1142.prol, %scalar.ph1142.preheader
  %indvars.iv842.unr = phi i64 [ %indvars.iv842.ph, %scalar.ph1142.preheader ], [ %indvars.iv.next843.prol, %scalar.ph1142.prol ]
  %i.vx = icmp eq i64 %indvars.iv842.ph, %i.ux
  br i1 %i.vx, label %._crit_edge712.us, label %scalar.ph1142

scalar.ph1142:                                    ; preds = %scalar.ph1142.prol.loopexit, %scalar.ph1142
  %indvars.iv842 = phi i64 [ %indvars.iv.next843.1, %scalar.ph1142 ], [ %indvars.iv842.unr, %scalar.ph1142.prol.loopexit ] ; 4 uses
  %i.vy = shl nuw i64 %indvars.iv842, 1
  %i.vz = and i64 %i.vy, 4294967294
  %i.wa = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.vz
  %i.wb = load i16, ptr %i.wa, align 1, !tbaa !118
  %i.wc = tail call i16 @llvm.bswap.i16(i16 %i.wb)
  %i.wd = zext i16 %i.wc to i32
  %i.we = mul i32 %i.tt, %i.wd
  %i.wf = add i32 %i.we, 16384
  %i.wg = lshr i32 %i.wf, 15
  %i.wh = trunc i32 %i.wg to i16
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %.4520714.us, i64 %indvars.iv842
  store i16 %i.wh, ptr %i.wi, align 2, !tbaa !125
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 1 ; 2 uses
  %i.wj = shl nuw i64 %indvars.iv.next843, 1
  %i.wk = and i64 %i.wj, 4294967294
  %i.wl = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.wk
  %i.wm = load i16, ptr %i.wl, align 1, !tbaa !118
  %i.wn = tail call i16 @llvm.bswap.i16(i16 %i.wm)
  %i.wo = zext i16 %i.wn to i32
  %i.wp = mul i32 %i.tt, %i.wo
  %i.wq = add i32 %i.wp, 16384
  %i.wr = lshr i32 %i.wq, 15
  %i.ws = trunc i32 %i.wr to i16
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %.4520714.us, i64 %indvars.iv.next843
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !125
  %indvars.iv.next843.1 = add nuw nsw i64 %indvars.iv842, 2 ; 2 uses
  %exitcond846.not.1 = icmp eq i64 %indvars.iv.next843.1, %wide.trip.count845
  br i1 %exitcond846.not.1, label %._crit_edge712.us, label %scalar.ph1142, !llvm.loop !59

._crit_edge712.us:                                ; preds = %scalar.ph1142.prol.loopexit, %scalar.ph1142, %middle.block1152
  %i.wu = getelementptr inbounds i8, ptr %i.va, i64 %i.uj ; 3 uses
  store ptr %i.wu, ptr %i.f, align 8, !tbaa !111
  %i.wv = getelementptr inbounds i8, ptr %.4520714.us, i64 %i.uk
  %i.ww = add nuw nsw i32 %.3530713.us, 1         ; 2 uses
  %exitcond847.not = icmp eq i32 %i.ww, %i.ty
  br i1 %exitcond847.not, label %._crit_edge715, label %.preheader620.us, !llvm.loop !60

._crit_edge715:                                   ; preds = %._crit_edge712.us, %.preheader620.preheader, %bb.ar
  %.promoted726 = phi ptr [ %i.ue, %bb.ar ], [ %scevgep, %.preheader620.preheader ], [ %i.wu, %._crit_edge712.us ] ; 5 uses
  %i.wx = ashr i32 %i.ty, 1                       ; 4 uses
  %i.wy = icmp sgt i32 %i.wx, 0
  br i1 %i.wy, label %.preheader618.lr.ph, label %.loopexit

.preheader618.lr.ph:                              ; preds = %._crit_edge715
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !121 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !121 ; 3 uses
  %i.xd = sdiv i32 %i.tu, 2                       ; 3 uses
  %.off = add i32 %i.tu, 1
  %.not771 = icmp ult i32 %.off, 3
  %i.xe = sext i32 %i.tu to i64                   ; 6 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !122 ; 2 uses
  %i.xh = sdiv i32 %i.xg, 2
  %i.xi = sext i32 %i.xh to i64                   ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !122 ; 2 uses
  %i.xl = sdiv i32 %i.xk, 2
  %i.xm = sext i32 %i.xl to i64                   ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.xd, i32 1) ; 2 uses
  %wide.trip.count851 = zext i32 %umax to i64     ; 13 uses
  %wide.trip.count857 = zext i32 %umax to i64
  %i.xn = add nsw i32 %i.wx, -1
  %i.xo = zext i32 %i.xn to i64                   ; 2 uses
  %i.xp = mul nsw i64 %i.xm, %i.xo
  %i.xq = shl nuw nsw i64 %wide.trip.count851, 1
  %i.xr = add i64 %i.xp, %wide.trip.count851
  %i.xs = shl i64 %i.xr, 1
  %scevgep1157 = getelementptr i8, ptr %i.xa, i64 %i.xs
  %scevgep1158 = getelementptr i8, ptr %.promoted726, i64 %i.xe
  %i.xt = shl nuw nsw i64 %i.xo, 1
  %i.xu = or disjoint i64 %i.xt, 1
  %i.xv = mul i64 %i.xu, %i.xe
  %i.xw = getelementptr i8, ptr %.promoted726, i64 %i.xv
  %scevgep1159 = getelementptr i8, ptr %i.xw, i64 %i.xq
  %i.xx = add nsw i32 %i.wx, -1
  %i.xy = zext i32 %i.xx to i64                   ; 2 uses
  %i.xz = mul nsw i64 %i.xi, %i.xy
  %i.ya = add i64 %i.xz, %wide.trip.count851
  %i.yb = shl i64 %i.ya, 1
  %scevgep1180 = getelementptr i8, ptr %i.xc, i64 %i.yb
  %i.yc = mul nsw i64 %i.xe, %i.xy
  %i.yd = add i64 %i.yc, %wide.trip.count851
  %i.ye = shl i64 %i.yd, 1
  %scevgep1181 = getelementptr i8, ptr %.promoted726, i64 %i.ye
  %i.yf = add i32 %i.xd, 2147483647
  %or.cond1337 = icmp ult i32 %i.yf, -2147483641
  %bound01182 = icmp ult ptr %i.xc, %scevgep1181
  %bound11183 = icmp ult ptr %.promoted726, %scevgep1180
  %found.conflict1184 = and i1 %bound01182, %bound11183
  %stride.check1185 = icmp slt i32 %i.xg, -1
  %i.yg = or i1 %found.conflict1184, %stride.check1185
  %stride.check1186 = icmp slt i32 %i.tu, 0
  %i.yh = or i1 %i.yg, %stride.check1186
  %n.vec1190 = and i64 %wide.trip.count851, 1073741816 ; 3 uses
  %broadcast.splatinsert1191 = insertelement <8 x i32> poison, i32 %i.tt, i64 0
  %broadcast.splat1192 = shufflevector <8 x i32> %broadcast.splatinsert1191, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n1198 = icmp eq i64 %n.vec1190, %wide.trip.count851
  %xtraiter1387 = and i64 %wide.trip.count851, 1
  %lcmp.mod1388.not = icmp eq i64 %xtraiter1387, 0
  %i.yi = add nsw i64 %wide.trip.count851, -1
  %i.yj = add i32 %i.xd, 2147483647
  %or.cond1338 = icmp ult i32 %i.yj, -2147483641
  %bound01160 = icmp ult ptr %i.xa, %scevgep1159
  %bound11161 = icmp ult ptr %scevgep1158, %scevgep1157
  %found.conflict1162 = and i1 %bound01160, %bound11161
  %stride.check1163 = icmp slt i32 %i.xk, -1
  %i.yk = or i1 %found.conflict1162, %stride.check1163
  %stride.check1164 = icmp slt i32 %i.tu, 0
  %i.yl = or i1 %i.yk, %stride.check1164
  %n.vec1168 = and i64 %wide.trip.count851, 1073741816 ; 3 uses
  %broadcast.splatinsert1169 = insertelement <8 x i32> poison, i32 %i.tt, i64 0
  %broadcast.splat1170 = shufflevector <8 x i32> %broadcast.splatinsert1169, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n1176 = icmp eq i64 %n.vec1168, %wide.trip.count851
  %xtraiter1390 = and i64 %wide.trip.count851, 1
  %lcmp.mod1391.not = icmp eq i64 %xtraiter1390, 0
  %i.ym = add nsw i64 %wide.trip.count851, -1
  br label %.preheader618

.preheader618:                                    ; preds = %.preheader618.lr.ph, %._crit_edge722
  %i.yn = phi ptr [ %.promoted726, %.preheader618.lr.ph ], [ %i.abz, %._crit_edge722 ] ; 6 uses
  %.0497725 = phi ptr [ %i.xa, %.preheader618.lr.ph ], [ %i.acb, %._crit_edge722 ] ; 5 uses
  %.0498724 = phi ptr [ %i.xc, %.preheader618.lr.ph ], [ %i.aca, %._crit_edge722 ] ; 5 uses
  %.4531723 = phi i32 [ 0, %.preheader618.lr.ph ], [ %i.acc, %._crit_edge722 ]
  br i1 %.not771, label %._crit_edge722, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader618
  %brmerge1430 = select i1 %or.cond1337, i1 true, i1 %i.yh
  br i1 %brmerge1430, label %.lr.ph.preheader1358, label %vector.body1193

vector.body1193:                                  ; preds = %.lr.ph.preheader, %vector.body1193
  %index1194 = phi i64 [ %index.next1196, %vector.body1193 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.yo = shl nuw i64 %index1194, 1
  %i.yp = and i64 %i.yo, 4294967280
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yp
  %wide.load1195 = load <8 x i16>, ptr %i.yq, align 1, !tbaa !118, !alias.scope !133
  %i.yr = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load1195)
  %i.ys = zext <8 x i16> %i.yr to <8 x i32>
  %i.yt = mul <8 x i32> %broadcast.splat1192, %i.ys
  %i.yu = add <8 x i32> %i.yt, splat (i32 16384)
  %i.yv = lshr <8 x i32> %i.yu, splat (i32 15)
  %i.yw = trunc <8 x i32> %i.yv to <8 x i16>
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %index1194
  store <8 x i16> %i.yw, ptr %i.yx, align 2, !tbaa !125, !alias.scope !134, !noalias !133
  %index.next1196 = add nuw i64 %index1194, 8     ; 2 uses
  %i.yy = icmp eq i64 %index.next1196, %n.vec1190
  br i1 %i.yy, label %middle.block1197, label %vector.body1193, !llvm.loop !64

middle.block1197:                                 ; preds = %vector.body1193
  br i1 %cmp.n1198, label %.lr.ph721.preheader, label %.lr.ph.preheader1358

.lr.ph.preheader1358:                             ; preds = %.lr.ph.preheader, %middle.block1197
  %indvars.iv848.ph = phi i64 [ %n.vec1190, %middle.block1197 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  br i1 %lcmp.mod1388.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1358
  %i.yz = shl nuw nsw i64 %indvars.iv848.ph, 1
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yz
  %i.zb = load i16, ptr %i.za, align 1, !tbaa !118
  %i.zc = tail call i16 @llvm.bswap.i16(i16 %i.zb)
  %i.zd = zext i16 %i.zc to i32
  %i.ze = mul i32 %i.tt, %i.zd
  %i.zf = add i32 %i.ze, 16384
  %i.zg = lshr i32 %i.zf, 15
  %i.zh = trunc i32 %i.zg to i16
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv848.ph
  store i16 %i.zh, ptr %i.zi, align 2, !tbaa !125
  %indvars.iv.next849.prol = or disjoint i64 %indvars.iv848.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1358
  %indvars.iv848.unr = phi i64 [ %indvars.iv848.ph, %.lr.ph.preheader1358 ], [ %indvars.iv.next849.prol, %.lr.ph.prol ]
  %i.zj = icmp eq i64 %indvars.iv848.ph, %i.yi
  br i1 %i.zj, label %.lr.ph721.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv848 = phi i64 [ %indvars.iv.next849.1, %.lr.ph ], [ %indvars.iv848.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.zk = shl nuw i64 %indvars.iv848, 1
  %i.zl = and i64 %i.zk, 4294967294
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.zl
  %i.zn = load i16, ptr %i.zm, align 1, !tbaa !118
  %i.zo = tail call i16 @llvm.bswap.i16(i16 %i.zn)
  %i.zp = zext i16 %i.zo to i32
  %i.zq = mul i32 %i.tt, %i.zp
  %i.zr = add i32 %i.zq, 16384
  %i.zs = lshr i32 %i.zr, 15
  %i.zt = trunc i32 %i.zs to i16
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv848
  store i16 %i.zt, ptr %i.zu, align 2, !tbaa !125
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %i.zv = shl nuw i64 %indvars.iv.next849, 1
  %i.zw = and i64 %i.zv, 4294967294
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.zw
  %i.zy = load i16, ptr %i.zx, align 1, !tbaa !118
  %i.zz = tail call i16 @llvm.bswap.i16(i16 %i.zy)
  %i.aaa = zext i16 %i.zz to i32
  %i.aab = mul i32 %i.tt, %i.aaa
  %i.aac = add i32 %i.aab, 16384
  %i.aad = lshr i32 %i.aac, 15
  %i.aae = trunc i32 %i.aad to i16
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv.next849
  store i16 %i.aae, ptr %i.aaf, align 2, !tbaa !125
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv848, 2 ; 2 uses
  %exitcond852.not.1 = icmp eq i64 %indvars.iv.next849.1, %wide.trip.count851
  br i1 %exitcond852.not.1, label %.lr.ph721.preheader, label %.lr.ph, !llvm.loop !65

.lr.ph721.preheader:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1197
  %i.aag = getelementptr inbounds i8, ptr %i.yn, i64 %i.xe ; 5 uses
  store ptr %i.aag, ptr %i.f, align 8, !tbaa !111
  %brmerge1431 = select i1 %or.cond1338, i1 true, i1 %i.yl
  br i1 %brmerge1431, label %.lr.ph721.preheader1357, label %vector.body1171

vector.body1171:                                  ; preds = %.lr.ph721.preheader, %vector.body1171
  %index1172 = phi i64 [ %index.next1174, %vector.body1171 ], [ 0, %.lr.ph721.preheader ] ; 3 uses
  %i.aah = shl nuw i64 %index1172, 1
  %i.aai = and i64 %i.aah, 4294967280
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aai
  %wide.load1173 = load <8 x i16>, ptr %i.aaj, align 1, !tbaa !118, !alias.scope !135
  %i.aak = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load1173)
  %i.aal = zext <8 x i16> %i.aak to <8 x i32>
  %i.aam = mul <8 x i32> %broadcast.splat1170, %i.aal
  %i.aan = add <8 x i32> %i.aam, splat (i32 16384)
  %i.aao = lshr <8 x i32> %i.aan, splat (i32 15)
  %i.aap = trunc <8 x i32> %i.aao to <8 x i16>
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %index1172
  store <8 x i16> %i.aap, ptr %i.aaq, align 2, !tbaa !125, !alias.scope !136, !noalias !135
  %index.next1174 = add nuw i64 %index1172, 8     ; 2 uses
  %i.aar = icmp eq i64 %index.next1174, %n.vec1168
  br i1 %i.aar, label %middle.block1175, label %vector.body1171, !llvm.loop !69

middle.block1175:                                 ; preds = %vector.body1171
  br i1 %cmp.n1176, label %._crit_edge722, label %.lr.ph721.preheader1357

.lr.ph721.preheader1357:                          ; preds = %.lr.ph721.preheader, %middle.block1175
  %indvars.iv853.ph = phi i64 [ %n.vec1168, %middle.block1175 ], [ 0, %.lr.ph721.preheader ] ; 5 uses
  br i1 %lcmp.mod1391.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol

.lr.ph721.prol:                                   ; preds = %.lr.ph721.preheader1357
  %i.aas = shl nuw nsw i64 %indvars.iv853.ph, 1
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aas
  %i.aau = load i16, ptr %i.aat, align 1, !tbaa !118
  %i.aav = tail call i16 @llvm.bswap.i16(i16 %i.aau)
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = mul i32 %i.tt, %i.aaw
  %i.aay = add i32 %i.aax, 16384
  %i.aaz = lshr i32 %i.aay, 15
  %i.aba = trunc i32 %i.aaz to i16
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv853.ph
  store i16 %i.aba, ptr %i.abb, align 2, !tbaa !125
  %indvars.iv.next854.prol = or disjoint i64 %indvars.iv853.ph, 1
  br label %.lr.ph721.prol.loopexit

.lr.ph721.prol.loopexit:                          ; preds = %.lr.ph721.prol, %.lr.ph721.preheader1357
  %indvars.iv853.unr = phi i64 [ %indvars.iv853.ph, %.lr.ph721.preheader1357 ], [ %indvars.iv.next854.prol, %.lr.ph721.prol ]
  %i.abc = icmp eq i64 %indvars.iv853.ph, %i.ym
  br i1 %i.abc, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721
  %indvars.iv853 = phi i64 [ %indvars.iv.next854.1, %.lr.ph721 ], [ %indvars.iv853.unr, %.lr.ph721.prol.loopexit ] ; 4 uses
  %i.abd = shl nuw i64 %indvars.iv853, 1
  %i.abe = and i64 %i.abd, 4294967294
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.abe
  %i.abg = load i16, ptr %i.abf, align 1, !tbaa !118
  %i.abh = tail call i16 @llvm.bswap.i16(i16 %i.abg)
  %i.abi = zext i16 %i.abh to i32
  %i.abj = mul i32 %i.tt, %i.abi
  %i.abk = add i32 %i.abj, 16384
  %i.abl = lshr i32 %i.abk, 15
  %i.abm = trunc i32 %i.abl to i16
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv853
  store i16 %i.abm, ptr %i.abn, align 2, !tbaa !125
  %indvars.iv.next854 = add nuw nsw i64 %indvars.iv853, 1 ; 2 uses
  %i.abo = shl nuw i64 %indvars.iv.next854, 1
  %i.abp = and i64 %i.abo, 4294967294
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.abp
  %i.abr = load i16, ptr %i.abq, align 1, !tbaa !118
  %i.abs = tail call i16 @llvm.bswap.i16(i16 %i.abr)
  %i.abt = zext i16 %i.abs to i32
  %i.abu = mul i32 %i.tt, %i.abt
  %i.abv = add i32 %i.abu, 16384
  %i.abw = lshr i32 %i.abv, 15
  %i.abx = trunc i32 %i.abw to i16
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv.next854
  store i16 %i.abx, ptr %i.aby, align 2, !tbaa !125
  %indvars.iv.next854.1 = add nuw nsw i64 %indvars.iv853, 2 ; 2 uses
  %exitcond858.not.1 = icmp eq i64 %indvars.iv.next854.1, %wide.trip.count857
  br i1 %exitcond858.not.1, label %._crit_edge722, label %.lr.ph721, !llvm.loop !70

._crit_edge722:                                   ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721, %middle.block1175, %.preheader618
  %4 = getelementptr inbounds i8, ptr %i.yn, i64 %i.xe
  %i.abz = getelementptr inbounds i8, ptr %4, i64 %i.xe ; 2 uses
  store ptr %i.abz, ptr %i.f, align 8, !tbaa !111
  %i.aca = getelementptr inbounds [2 x i8], ptr %.0498724, i64 %i.xi
  %i.acb = getelementptr inbounds [2 x i8], ptr %.0497725, i64 %i.xm
  %i.acc = add nuw nsw i32 %.4531723, 1           ; 2 uses
  %exitcond859.not = icmp eq i32 %i.acc, %i.wx
  br i1 %exitcond859.not, label %.loopexit, label %.preheader618, !llvm.loop !71

bb.as:                                            ; preds = %bb.f
  %i.acd = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !137
  %.not544 = icmp eq i32 %i.ace, 0
  %i.acf = load i32, ptr %i.q, align 8, !tbaa !115 ; 11 uses
  %i.acg = load i32, ptr %i.s, align 4, !tbaa !116 ; 10 uses
  %i.ach = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.aci = load ptr, ptr %i.f, align 8, !tbaa !111 ; 5 uses
  %i.acj = ptrtoint ptr %i.ach to i64
  %i.ack = ptrtoint ptr %i.aci to i64
  %i.acl = sub i64 %i.acj, %i.ack                 ; 2 uses
  br i1 %.not544, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.acm = mul nsw i32 %i.acg, %i.acf
  %i.acn = sext i32 %i.acm to i64
  %i.aco = mul nsw i64 %i.acn, 12
  %i.acp = icmp sgt i64 %i.aco, %i.acl
  br i1 %i.acp, label %.critedge567, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.acq = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.acr = load float, ptr %i.acq, align 8, !tbaa !138
  %i.acs = fdiv nsz float 1.000000e+00, %i.acr    ; 7 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !139
  %.not545 = icmp eq i32 %i.acu, 0
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !121 ; 7 uses
  %i.acx = load ptr, ptr %1, align 8, !tbaa !121  ; 7 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !121 ; 7 uses
  %i.ada = icmp sgt i32 %i.acg, 0                 ; 2 uses
  br i1 %.not545, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.ada, label %.preheader623.lr.ph, label %.loopexit622

.preheader623.lr.ph:                              ; preds = %bb.av
  %i.adb = icmp sgt i32 %i.acf, 0
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.add = load <3 x i32>, ptr %i.adc, align 8, !tbaa !122 ; 3 uses
  %i.ade = shufflevector <3 x i32> %i.add, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.adf = load i32, ptr %i.adc, align 8, !tbaa !122
  %i.adg = extractelement <3 x i32> %i.add, i64 2
  %i.adh = sdiv i32 %i.adg, 4
  %i.adi = sext i32 %i.adh to i64                 ; 2 uses
  %i.adj = sdiv i32 %i.adf, 4
  %i.adk = sext i32 %i.adj to i64                 ; 2 uses
  %i.adl = extractelement <3 x i32> %i.add, i64 1
  %i.adm = sdiv i32 %i.adl, 4
  %i.adn = sext i32 %i.adm to i64                 ; 2 uses
  br i1 %i.adb, label %.preheader623.lr.ph.split, label %.loopexit622

.preheader623.lr.ph.split:                        ; preds = %.preheader623.lr.ph
  %wide.trip.count833 = zext nneg i32 %i.acf to i64 ; 7 uses
  %i.ado = add nsw i32 %i.acg, -1
  %i.adp = zext i32 %i.ado to i64                 ; 3 uses
  %i.adq = mul nsw i64 %i.adi, %i.adp
  %i.adr = add nsw i64 %i.adq, %wide.trip.count833
  %i.ads = shl i64 %i.adr, 2
  %scevgep1063 = getelementptr i8, ptr %i.acw, i64 %i.ads ; 4 uses
  %i.adt = mul nsw i64 %i.adk, %i.adp
  %i.adu = add nsw i64 %i.adt, %wide.trip.count833
  %i.adv = shl i64 %i.adu, 2
  %scevgep1064 = getelementptr i8, ptr %i.acx, i64 %i.adv ; 4 uses
  %i.adw = mul nsw i64 %i.adn, %i.adp
  %i.adx = add nsw i64 %i.adw, %wide.trip.count833
  %i.ady = shl i64 %i.adx, 2
  %scevgep1065 = getelementptr i8, ptr %i.acz, i64 %i.ady ; 4 uses
  %scevgep1066 = getelementptr i8, ptr %i.f, i64 8 ; 4 uses
  %i.adz = mul nuw nsw i64 %wide.trip.count833, 12
  %min.iters.check1120 = icmp ult i32 %i.acf, 22
  %bound01068 = icmp ult ptr %i.acw, %scevgep1064
  %bound11069 = icmp ult ptr %i.acx, %scevgep1063
  %found.conflict1070 = and i1 %bound01068, %bound11069
  %i.aea = icmp slt <4 x i32> %i.ade, splat (i32 -3)
  %bound01073 = icmp ult ptr %i.acw, %scevgep1065
  %bound11074 = icmp ult ptr %i.acz, %scevgep1063
  %found.conflict1075 = and i1 %bound01073, %bound11074
  %bound01079 = icmp ult ptr %i.acw, %scevgep1066
  %bound11080 = icmp ult ptr %i.f, %scevgep1063
  %found.conflict1081 = and i1 %bound01079, %bound11080
  %bound01089 = icmp ult ptr %i.acx, %scevgep1065
  %bound11090 = icmp ult ptr %i.acz, %scevgep1064
  %found.conflict1091 = and i1 %bound01089, %bound11090
  %bound01095 = icmp ult ptr %i.acx, %scevgep1066
  %bound11096 = icmp ult ptr %i.f, %scevgep1064
  %found.conflict1097 = and i1 %bound01095, %bound11096
  %bound01105 = icmp ult ptr %i.acz, %scevgep1066
  %bound11106 = icmp ult ptr %i.f, %scevgep1065
  %found.conflict1107 = and i1 %bound01105, %bound11106
  %i.aeb = bitcast <4 x i1> %i.aea to i4
  %i.aec = icmp ne i4 %i.aeb, 0
  %op.rdx = or i1 %i.aec, %found.conflict1070
  %op.rdx1339 = or i1 %found.conflict1075, %found.conflict1081
  %op.rdx1343 = or i1 %op.rdx, %op.rdx1339
  %n.vec1122 = and i64 %wide.trip.count833, 2147483646 ; 4 uses
  %i.aed = mul nuw nsw i64 %n.vec1122, 12
  %broadcast.splatinsert1123 = insertelement <2 x float> poison, float %i.acs, i64 0
  %broadcast.splat1124 = shufflevector <2 x float> %broadcast.splatinsert1123, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %cmp.n1131 = icmp eq i64 %n.vec1122, %wide.trip.count833
  br label %.preheader623

.preheader623:                                    ; preds = %.preheader623.lr.ph.split, %._crit_edge694
  %.promoted700 = phi ptr [ %i.aci, %.preheader623.lr.ph.split ], [ %.lcssa1007, %._crit_edge694 ] ; 10 uses
  %.0492698 = phi i32 [ 0, %.preheader623.lr.ph.split ], [ %i.afi, %._crit_edge694 ]
  %.0493697 = phi ptr [ %i.acz, %.preheader623.lr.ph.split ], [ %i.afh, %._crit_edge694 ] ; 3 uses
  %.0494696 = phi ptr [ %i.acx, %.preheader623.lr.ph.split ], [ %i.afg, %._crit_edge694 ] ; 3 uses
  %.0495695 = phi ptr [ %i.acw, %.preheader623.lr.ph.split ], [ %i.aff, %._crit_edge694 ] ; 3 uses
  br i1 %min.iters.check1120, label %scalar.ph1119.preheader, label %vector.memcheck1062

vector.memcheck1062:                              ; preds = %.preheader623
  %scevgep1067 = getelementptr i8, ptr %.promoted700, i64 %i.adz ; 4 uses
  %bound01084 = icmp ult ptr %i.acw, %scevgep1067
  %bound11085 = icmp ult ptr %.promoted700, %scevgep1063
  %found.conflict1086 = and i1 %bound01084, %bound11085
  %bound01100 = icmp ult ptr %i.acx, %scevgep1067
  %bound11101 = icmp ult ptr %.promoted700, %scevgep1064
  %found.conflict1102 = and i1 %bound01100, %bound11101
  %bound01110 = icmp ult ptr %i.acz, %scevgep1067
  %bound11111 = icmp ult ptr %.promoted700, %scevgep1065
  %found.conflict1112 = and i1 %bound01110, %bound11111
  %bound01115 = icmp ult ptr %i.f, %scevgep1067
  %bound11116 = icmp ult ptr %.promoted700, %scevgep1066
  %found.conflict1117 = and i1 %bound01115, %bound11116
  %op.rdx1340 = or i1 %found.conflict1086, %found.conflict1091
  %op.rdx1341 = or i1 %found.conflict1097, %found.conflict1102
  %op.rdx1342 = or i1 %found.conflict1107, %found.conflict1112
  %op.rdx1344 = or i1 %op.rdx1340, %op.rdx1341
  %op.rdx1345 = or i1 %op.rdx1342, %found.conflict1117
  %op.rdx1346 = or i1 %op.rdx1343, %op.rdx1344
  %op.rdx1347 = or i1 %op.rdx1346, %op.rdx1345
  br i1 %op.rdx1347, label %scalar.ph1119.preheader, label %vector.ph1121

vector.ph1121:                                    ; preds = %vector.memcheck1062
  %i.aee = getelementptr i8, ptr %.promoted700, i64 %i.aed ; 2 uses
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1121
  %index1126 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1129, %vector.body1125 ] ; 5 uses
  %i.aef = mul i64 %index1126, 12                 ; 2 uses
  %next.gep1127 = getelementptr i8, ptr %.promoted700, i64 %i.aef ; 3 uses
  %i.aeg = getelementptr i8, ptr %.promoted700, i64 %i.aef ; 4 uses
  %next.gep1128 = getelementptr i8, ptr %i.aeg, i64 12
  %i.aeh = load float, ptr %next.gep1127, align 1, !tbaa !118, !alias.scope !140
  %i.aei = load float, ptr %next.gep1128, align 1, !tbaa !118, !alias.scope !140
  %i.aej = insertelement <2 x float> poison, float %i.aeh, i64 0
  %i.aek = insertelement <2 x float> %i.aej, float %i.aei, i64 1
  %i.ael = fmul nsz <2 x float> %broadcast.splat1124, %i.aek
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %.0495695, i64 %index1126
  store <2 x float> %i.ael, ptr %i.aem, align 4, !tbaa !141, !alias.scope !142, !noalias !143
  %i.aen = getelementptr inbounds nuw i8, ptr %next.gep1127, i64 4
  %i.aeo = getelementptr i8, ptr %i.aeg, i64 16
  %i.aep = load float, ptr %i.aen, align 1, !tbaa !118, !alias.scope !140
  %i.aeq = load float, ptr %i.aeo, align 1, !tbaa !118, !alias.scope !140
  %i.aer = insertelement <2 x float> poison, float %i.aep, i64 0
  %i.aes = insertelement <2 x float> %i.aer, float %i.aeq, i64 1
  %i.aet = fmul nsz <2 x float> %broadcast.splat1124, %i.aes
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %.0494696, i64 %index1126
  store <2 x float> %i.aet, ptr %i.aeu, align 4, !tbaa !141, !alias.scope !144, !noalias !145
  %i.aev = getelementptr inbounds nuw i8, ptr %next.gep1127, i64 8
  %i.aew = getelementptr i8, ptr %i.aeg, i64 20
  %i.aex = load float, ptr %i.aev, align 1, !tbaa !118, !alias.scope !140
  %i.aey = load float, ptr %i.aew, align 1, !tbaa !118, !alias.scope !140
  %i.aez = insertelement <2 x float> poison, float %i.aex, i64 0
  %i.afa = insertelement <2 x float> %i.aez, float %i.aey, i64 1
  %i.afb = fmul nsz <2 x float> %broadcast.splat1124, %i.afa
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %.0493697, i64 %index1126
  store <2 x float> %i.afb, ptr %i.afc, align 4, !tbaa !141, !alias.scope !146, !noalias !147
  %index.next1129 = add nuw i64 %index1126, 2     ; 2 uses
  %i.afd = icmp eq i64 %index.next1129, %n.vec1122
  br i1 %i.afd, label %middle.block1130, label %vector.body1125, !llvm.loop !78

middle.block1130:                                 ; preds = %vector.body1125
  %i.afe = getelementptr i8, ptr %i.aeg, i64 24
  store ptr %i.afe, ptr %i.f, align 8, !tbaa !111, !alias.scope !148, !noalias !140
  br i1 %cmp.n1131, label %._crit_edge694, label %scalar.ph1119.preheader

scalar.ph1119.preheader:                          ; preds = %vector.memcheck1062, %.preheader623, %middle.block1130
  %indvars.iv830.ph = phi i64 [ 0, %vector.memcheck1062 ], [ 0, %.preheader623 ], [ %n.vec1122, %middle.block1130 ]
  %.ph = phi ptr [ %.promoted700, %vector.memcheck1062 ], [ %.promoted700, %.preheader623 ], [ %i.aee, %middle.block1130 ]
  br label %scalar.ph1119

._crit_edge694:                                   ; preds = %scalar.ph1119, %middle.block1130
  %.lcssa1007 = phi ptr [ %i.aee, %middle.block1130 ], [ %i.afv, %scalar.ph1119 ]
  %i.aff = getelementptr inbounds [4 x i8], ptr %.0495695, i64 %i.adi
  %i.afg = getelementptr inbounds [4 x i8], ptr %.0494696, i64 %i.adk
  %i.afh = getelementptr inbounds [4 x i8], ptr %.0493697, i64 %i.adn
  %i.afi = add nuw nsw i32 %.0492698, 1           ; 2 uses
  %exitcond835.not = icmp eq i32 %i.afi, %i.acg
  br i1 %exitcond835.not, label %.loopexit622, label %.preheader623, !llvm.loop !79

end_hunk_0
