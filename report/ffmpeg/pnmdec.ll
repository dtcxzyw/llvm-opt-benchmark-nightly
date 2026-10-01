Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pnmdec?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@pnm_decode_frame:bb.a
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %.0499734, i64 %indvars.iv.next.i593.1
  store i16 %i.sw, ptr %i.sx, align 2, !tbaa !125
  %indvars.iv.next.i593.2 = add nuw nsw i64 %indvars.iv.i592, 3 ; 2 uses
  %i.sy = shl nuw nsw i64 %indvars.iv.next.i593.2, 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.sy
  %i.ta = load i16, ptr %i.sz, align 1, !tbaa !118
  %i.tb = tail call i16 @llvm.bswap.i16(i16 %i.ta)
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %.0499734, i64 %indvars.iv.next.i593.2
  store i16 %i.tb, ptr %i.tc, align 2, !tbaa !125
  %indvars.iv.next.i593.3 = add nuw nsw i64 %indvars.iv.i592, 4 ; 2 uses
  %exitcond.not.i594.3 = icmp eq i64 %indvars.iv.next.i593.3, %wide.trip.count.i582
  br i1 %exitcond.not.i594.3, label %samplecpy.exit595, label %.lr.ph.i591, !llvm.loop !53

samplecpy.exit595:                                ; preds = %.lr.ph.i591.prol.loopexit, %.lr.ph.i591, %middle.block1217, %vec.epilog.middle.block1230, %.preheader.i588.thread, %.preheader.i588, %bb.ap
  %i.td = phi ptr [ %.pre882, %bb.ap ], [ %i.qo, %.preheader.i588.thread ], [ %i.rk, %.preheader.i588 ], [ %i.rm, %middle.block1217 ], [ %i.rm, %vec.epilog.middle.block1230 ], [ %i.rm, %.lr.ph.i591 ], [ %i.rm, %.lr.ph.i591.prol.loopexit ]
  %i.te = getelementptr inbounds i8, ptr %i.td, i64 %i.pj ; 2 uses
  store ptr %i.te, ptr %i.f, align 8, !tbaa !111
  %i.tf = load i32, ptr %i.pl, align 4, !tbaa !122
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds i8, ptr %.0500732, i64 %i.tg
  %i.ti = load i32, ptr %i.pm, align 8, !tbaa !122
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds i8, ptr %.0499734, i64 %i.tj
  %i.tl = add nuw nsw i32 %.2529731, 1            ; 2 uses
  %exitcond860.not = icmp eq i32 %i.tl, %i.pb
  br i1 %exitcond860.not, label %.loopexit, label %bb.ao, !llvm.loop !54

bb.aq:                                            ; preds = %bb.f
  %i.tm = sdiv i32 %i.ag, 2
  %i.tn = add nsw i32 %i.tm, 2147450880
  %i.to = sdiv i32 %i.tn, %i.ag                   ; 12 uses
  %i.tp = load i32, ptr %i.q, align 8, !tbaa !115 ; 10 uses
  %i.tq = shl nsw i32 %i.tp, 1                    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !122 ; 2 uses
  %i.tt = load i32, ptr %i.s, align 4, !tbaa !116 ; 6 uses
  %i.tu = mul nsw i32 %i.tt, %i.tq                ; 2 uses
  %i.tv = ashr exact i32 %i.tu, 1
  %i.tw = add nsw i32 %i.tv, %i.tu
  %i.tx = sext i32 %i.tw to i64
  %i.ty = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.tz = load ptr, ptr %i.f, align 8, !tbaa !111 ; 6 uses
  %i.ua = ptrtoint ptr %i.ty to i64
  %i.ub = ptrtoint ptr %i.tz to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %.not547 = icmp slt i64 %i.uc, %i.tx
  br i1 %.not547, label %.critedge567, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ud = icmp sgt i32 %i.tt, 0
  br i1 %i.ud, label %.preheader620.lr.ph, label %._crit_edge715

.preheader620.lr.ph:                              ; preds = %bb.ar
  %.not770 = icmp eq i32 %i.tp, 0
  %i.ue = sext i32 %i.tq to i64                   ; 3 uses
  %i.uf = sext i32 %i.ts to i64                   ; 2 uses
  br i1 %.not770, label %.preheader620.preheader, label %.preheader620.us.preheader

.preheader620.us.preheader:                       ; preds = %.preheader620.lr.ph
  %i.ug = load ptr, ptr %1, align 8, !tbaa !121   ; 3 uses
  %wide.trip.count845 = zext i32 %i.tp to i64     ; 6 uses
  %i.uh = add nsw i32 %i.tt, -1
  %i.ui = zext i32 %i.uh to i64                   ; 2 uses
  %i.uj = mul nsw i64 %i.uf, %i.ui
  %i.uk = shl nuw nsw i64 %wide.trip.count845, 1  ; 2 uses
  %i.ul = getelementptr i8, ptr %i.ug, i64 %i.uj
  %scevgep1119 = getelementptr i8, ptr %i.ul, i64 %i.uk
  %i.um = mul nsw i64 %i.ue, %i.ui
  %i.un = getelementptr i8, ptr %i.tz, i64 %i.um
  %scevgep1120 = getelementptr i8, ptr %i.un, i64 %i.uk
  %i.uo = add i32 %i.tp, 2147483647
  %or.cond1320 = icmp ult i32 %i.uo, -2147483641
  %bound01121 = icmp ult ptr %i.ug, %scevgep1120
  %bound11122 = icmp ult ptr %i.tz, %scevgep1119
  %found.conflict1123 = and i1 %bound01121, %bound11122
  %i.up = or i32 %i.tp, %i.ts
  %i.uq = icmp slt i32 %i.up, 0
  %i.ur = or i1 %found.conflict1123, %i.uq
  %n.vec1129 = and i64 %wide.trip.count845, 4294967288 ; 3 uses
  %broadcast.splatinsert1130 = insertelement <8 x i32> poison, i32 %i.to, i64 0
  %broadcast.splat1131 = shufflevector <8 x i32> %broadcast.splatinsert1130, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n1137 = icmp eq i64 %n.vec1129, %wide.trip.count845
  %xtraiter1367 = and i64 %wide.trip.count845, 1
  %lcmp.mod1368.not = icmp eq i64 %xtraiter1367, 0
  %i.us = add nsw i64 %wide.trip.count845, -1
  br label %.preheader620.us

.preheader620.preheader:                          ; preds = %.preheader620.lr.ph
  %i.ut = zext nneg i32 %i.tt to i64
  %i.uu = mul nuw nsw i64 %i.ut, %i.ue
  %scevgep = getelementptr i8, ptr %i.tz, i64 %i.uu ; 2 uses
  store ptr %scevgep, ptr %i.f, align 8, !tbaa !111
  br label %._crit_edge715

.preheader620.us:                                 ; preds = %.preheader620.us.preheader, %._crit_edge712.us
  %i.uv = phi ptr [ %i.wp, %._crit_edge712.us ], [ %i.tz, %.preheader620.us.preheader ] ; 5 uses
  %.4520714.us = phi ptr [ %i.wq, %._crit_edge712.us ], [ %i.ug, %.preheader620.us.preheader ] ; 5 uses
  %.3530713.us = phi i32 [ %i.wr, %._crit_edge712.us ], [ 0, %.preheader620.us.preheader ]
  %brmerge = select i1 %or.cond1320, i1 true, i1 %i.ur
  br i1 %brmerge, label %scalar.ph1126.preheader, label %vector.body1132

vector.body1132:                                  ; preds = %.preheader620.us, %vector.body1132
  %index1133 = phi i64 [ %index.next1135, %vector.body1132 ], [ 0, %.preheader620.us ] ; 3 uses
  %i.uw = shl nuw i64 %index1133, 1
  %i.ux = and i64 %i.uw, 4294967280
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.ux
  %wide.load1134 = load <8 x i16>, ptr %i.uy, align 1, !tbaa !118, !alias.scope !131
  %i.uz = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load1134)
  %i.va = zext <8 x i16> %i.uz to <8 x i32>
  %i.vb = mul <8 x i32> %broadcast.splat1131, %i.va
  %i.vc = add <8 x i32> %i.vb, splat (i32 16384)
  %i.vd = lshr <8 x i32> %i.vc, splat (i32 15)
  %i.ve = trunc <8 x i32> %i.vd to <8 x i16>
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %.4520714.us, i64 %index1133
  store <8 x i16> %i.ve, ptr %i.vf, align 2, !tbaa !125, !alias.scope !132, !noalias !131
  %index.next1135 = add nuw i64 %index1133, 8     ; 2 uses
  %i.vg = icmp eq i64 %index.next1135, %n.vec1129
  br i1 %i.vg, label %middle.block1136, label %vector.body1132, !llvm.loop !58

middle.block1136:                                 ; preds = %vector.body1132
  br i1 %cmp.n1137, label %._crit_edge712.us, label %scalar.ph1126.preheader

scalar.ph1126.preheader:                          ; preds = %.preheader620.us, %middle.block1136
  %indvars.iv842.ph = phi i64 [ %n.vec1129, %middle.block1136 ], [ 0, %.preheader620.us ] ; 5 uses
  br i1 %lcmp.mod1368.not, label %scalar.ph1126.prol.loopexit, label %scalar.ph1126.prol

scalar.ph1126.prol:                               ; preds = %scalar.ph1126.preheader
  %i.vh = shl nuw nsw i64 %indvars.iv842.ph, 1
  %i.vi = and i64 %i.vh, 4294967280
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.vi
  %i.vk = load i16, ptr %i.vj, align 1, !tbaa !118
  %i.vl = tail call i16 @llvm.bswap.i16(i16 %i.vk)
  %i.vm = zext i16 %i.vl to i32
  %i.vn = mul i32 %i.to, %i.vm
  %i.vo = add i32 %i.vn, 16384
  %i.vp = lshr i32 %i.vo, 15
  %i.vq = trunc i32 %i.vp to i16
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %.4520714.us, i64 %indvars.iv842.ph
  store i16 %i.vq, ptr %i.vr, align 2, !tbaa !125
  %indvars.iv.next843.prol = or disjoint i64 %indvars.iv842.ph, 1
  br label %scalar.ph1126.prol.loopexit

scalar.ph1126.prol.loopexit:                      ; preds = %scalar.ph1126.prol, %scalar.ph1126.preheader
  %indvars.iv842.unr = phi i64 [ %indvars.iv842.ph, %scalar.ph1126.preheader ], [ %indvars.iv.next843.prol, %scalar.ph1126.prol ]
  %i.vs = icmp eq i64 %indvars.iv842.ph, %i.us
  br i1 %i.vs, label %._crit_edge712.us, label %scalar.ph1126

scalar.ph1126:                                    ; preds = %scalar.ph1126.prol.loopexit, %scalar.ph1126
  %indvars.iv842 = phi i64 [ %indvars.iv.next843.1, %scalar.ph1126 ], [ %indvars.iv842.unr, %scalar.ph1126.prol.loopexit ] ; 4 uses
  %i.vt = shl nuw i64 %indvars.iv842, 1
  %i.vu = and i64 %i.vt, 4294967294
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.vu
  %i.vw = load i16, ptr %i.vv, align 1, !tbaa !118
  %i.vx = tail call i16 @llvm.bswap.i16(i16 %i.vw)
  %i.vy = zext i16 %i.vx to i32
  %i.vz = mul i32 %i.to, %i.vy
  %i.wa = add i32 %i.vz, 16384
  %i.wb = lshr i32 %i.wa, 15
  %i.wc = trunc i32 %i.wb to i16
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %.4520714.us, i64 %indvars.iv842
  store i16 %i.wc, ptr %i.wd, align 2, !tbaa !125
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 1 ; 2 uses
  %i.we = shl nuw i64 %indvars.iv.next843, 1
  %i.wf = and i64 %i.we, 4294967294
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.wf
  %i.wh = load i16, ptr %i.wg, align 1, !tbaa !118
  %i.wi = tail call i16 @llvm.bswap.i16(i16 %i.wh)
  %i.wj = zext i16 %i.wi to i32
  %i.wk = mul i32 %i.to, %i.wj
  %i.wl = add i32 %i.wk, 16384
  %i.wm = lshr i32 %i.wl, 15
  %i.wn = trunc i32 %i.wm to i16
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %.4520714.us, i64 %indvars.iv.next843
  store i16 %i.wn, ptr %i.wo, align 2, !tbaa !125
  %indvars.iv.next843.1 = add nuw nsw i64 %indvars.iv842, 2 ; 2 uses
  %exitcond846.not.1 = icmp eq i64 %indvars.iv.next843.1, %wide.trip.count845
  br i1 %exitcond846.not.1, label %._crit_edge712.us, label %scalar.ph1126, !llvm.loop !59

._crit_edge712.us:                                ; preds = %scalar.ph1126.prol.loopexit, %scalar.ph1126, %middle.block1136
  %i.wp = getelementptr inbounds i8, ptr %i.uv, i64 %i.ue ; 3 uses
  store ptr %i.wp, ptr %i.f, align 8, !tbaa !111
  %i.wq = getelementptr inbounds i8, ptr %.4520714.us, i64 %i.uf
  %i.wr = add nuw nsw i32 %.3530713.us, 1         ; 2 uses
  %exitcond847.not = icmp eq i32 %i.wr, %i.tt
  br i1 %exitcond847.not, label %._crit_edge715, label %.preheader620.us, !llvm.loop !60

._crit_edge715:                                   ; preds = %._crit_edge712.us, %.preheader620.preheader, %bb.ar
  %.promoted726 = phi ptr [ %i.tz, %bb.ar ], [ %scevgep, %.preheader620.preheader ], [ %i.wp, %._crit_edge712.us ] ; 5 uses
  %i.ws = ashr i32 %i.tt, 1                       ; 4 uses
  %i.wt = icmp sgt i32 %i.ws, 0
  br i1 %i.wt, label %.preheader618.lr.ph, label %.loopexit

.preheader618.lr.ph:                              ; preds = %._crit_edge715
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !121 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !121 ; 3 uses
  %i.wy = sdiv i32 %i.tp, 2                       ; 3 uses
  %.off = add i32 %i.tp, 1
  %.not771 = icmp ult i32 %.off, 3
  %i.wz = sext i32 %i.tp to i64                   ; 6 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !122 ; 2 uses
  %i.xc = sdiv i32 %i.xb, 2
  %i.xd = sext i32 %i.xc to i64                   ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !122 ; 2 uses
  %i.xg = sdiv i32 %i.xf, 2
  %i.xh = sext i32 %i.xg to i64                   ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.wy, i32 1) ; 2 uses
  %wide.trip.count851 = zext i32 %umax to i64     ; 13 uses
  %wide.trip.count857 = zext i32 %umax to i64
  %i.xi = add nsw i32 %i.ws, -1
  %i.xj = zext i32 %i.xi to i64                   ; 2 uses
  %i.xk = mul nsw i64 %i.xh, %i.xj
  %i.xl = shl nuw nsw i64 %wide.trip.count851, 1
  %i.xm = add i64 %i.xk, %wide.trip.count851
  %i.xn = shl i64 %i.xm, 1
  %scevgep1141 = getelementptr i8, ptr %i.wv, i64 %i.xn
  %scevgep1142 = getelementptr i8, ptr %.promoted726, i64 %i.wz
  %i.xo = shl nuw nsw i64 %i.xj, 1
  %i.xp = or disjoint i64 %i.xo, 1
  %i.xq = mul i64 %i.xp, %i.wz
  %i.xr = getelementptr i8, ptr %.promoted726, i64 %i.xq
  %scevgep1143 = getelementptr i8, ptr %i.xr, i64 %i.xl
  %i.xs = add nsw i32 %i.ws, -1
  %i.xt = zext i32 %i.xs to i64                   ; 2 uses
  %i.xu = mul nsw i64 %i.xd, %i.xt
  %i.xv = add i64 %i.xu, %wide.trip.count851
  %i.xw = shl i64 %i.xv, 1
  %scevgep1164 = getelementptr i8, ptr %i.wx, i64 %i.xw
  %i.xx = mul nsw i64 %i.wz, %i.xt
  %i.xy = add i64 %i.xx, %wide.trip.count851
  %i.xz = shl i64 %i.xy, 1
  %scevgep1165 = getelementptr i8, ptr %.promoted726, i64 %i.xz
  %i.ya = add i32 %i.wy, 2147483647
  %or.cond1321 = icmp ult i32 %i.ya, -2147483641
  %bound01166 = icmp ult ptr %i.wx, %scevgep1165
  %bound11167 = icmp ult ptr %.promoted726, %scevgep1164
  %found.conflict1168 = and i1 %bound01166, %bound11167
  %stride.check1169 = icmp slt i32 %i.xb, -1
  %i.yb = or i1 %found.conflict1168, %stride.check1169
  %stride.check1170 = icmp slt i32 %i.tp, 0
  %i.yc = or i1 %i.yb, %stride.check1170
  %n.vec1174 = and i64 %wide.trip.count851, 1073741816 ; 3 uses
  %broadcast.splatinsert1175 = insertelement <8 x i32> poison, i32 %i.to, i64 0
  %broadcast.splat1176 = shufflevector <8 x i32> %broadcast.splatinsert1175, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n1182 = icmp eq i64 %n.vec1174, %wide.trip.count851
  %xtraiter1370 = and i64 %wide.trip.count851, 1
  %lcmp.mod1371.not = icmp eq i64 %xtraiter1370, 0
  %i.yd = add nsw i64 %wide.trip.count851, -1
  %i.ye = add i32 %i.wy, 2147483647
  %or.cond1322 = icmp ult i32 %i.ye, -2147483641
  %bound01144 = icmp ult ptr %i.wv, %scevgep1143
  %bound11145 = icmp ult ptr %scevgep1142, %scevgep1141
  %found.conflict1146 = and i1 %bound01144, %bound11145
  %stride.check1147 = icmp slt i32 %i.xf, -1
  %i.yf = or i1 %found.conflict1146, %stride.check1147
  %stride.check1148 = icmp slt i32 %i.tp, 0
  %i.yg = or i1 %i.yf, %stride.check1148
  %n.vec1152 = and i64 %wide.trip.count851, 1073741816 ; 3 uses
  %broadcast.splatinsert1153 = insertelement <8 x i32> poison, i32 %i.to, i64 0
  %broadcast.splat1154 = shufflevector <8 x i32> %broadcast.splatinsert1153, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n1160 = icmp eq i64 %n.vec1152, %wide.trip.count851
  %xtraiter1373 = and i64 %wide.trip.count851, 1
  %lcmp.mod1374.not = icmp eq i64 %xtraiter1373, 0
  %i.yh = add nsw i64 %wide.trip.count851, -1
  br label %.preheader618

.preheader618:                                    ; preds = %.preheader618.lr.ph, %._crit_edge722
  %i.yi = phi ptr [ %.promoted726, %.preheader618.lr.ph ], [ %i.abu, %._crit_edge722 ] ; 6 uses
  %.0497725 = phi ptr [ %i.wv, %.preheader618.lr.ph ], [ %i.abw, %._crit_edge722 ] ; 5 uses
  %.0498724 = phi ptr [ %i.wx, %.preheader618.lr.ph ], [ %i.abv, %._crit_edge722 ] ; 5 uses
  %.4531723 = phi i32 [ 0, %.preheader618.lr.ph ], [ %i.abx, %._crit_edge722 ]
  br i1 %.not771, label %._crit_edge722, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader618
  %brmerge1412 = select i1 %or.cond1321, i1 true, i1 %i.yc
  br i1 %brmerge1412, label %.lr.ph.preheader1341, label %vector.body1177

vector.body1177:                                  ; preds = %.lr.ph.preheader, %vector.body1177
  %index1178 = phi i64 [ %index.next1180, %vector.body1177 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.yj = shl nuw i64 %index1178, 1
  %i.yk = and i64 %i.yj, 4294967280
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.yk
  %wide.load1179 = load <8 x i16>, ptr %i.yl, align 1, !tbaa !118, !alias.scope !133
  %i.ym = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load1179)
  %i.yn = zext <8 x i16> %i.ym to <8 x i32>
  %i.yo = mul <8 x i32> %broadcast.splat1176, %i.yn
  %i.yp = add <8 x i32> %i.yo, splat (i32 16384)
  %i.yq = lshr <8 x i32> %i.yp, splat (i32 15)
  %i.yr = trunc <8 x i32> %i.yq to <8 x i16>
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %index1178
  store <8 x i16> %i.yr, ptr %i.ys, align 2, !tbaa !125, !alias.scope !134, !noalias !133
  %index.next1180 = add nuw i64 %index1178, 8     ; 2 uses
  %i.yt = icmp eq i64 %index.next1180, %n.vec1174
  br i1 %i.yt, label %middle.block1181, label %vector.body1177, !llvm.loop !64

middle.block1181:                                 ; preds = %vector.body1177
  br i1 %cmp.n1182, label %.lr.ph721.preheader, label %.lr.ph.preheader1341

.lr.ph.preheader1341:                             ; preds = %.lr.ph.preheader, %middle.block1181
  %indvars.iv848.ph = phi i64 [ %n.vec1174, %middle.block1181 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  br i1 %lcmp.mod1371.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1341
  %i.yu = shl nuw nsw i64 %indvars.iv848.ph, 1
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.yu
  %i.yw = load i16, ptr %i.yv, align 1, !tbaa !118
  %i.yx = tail call i16 @llvm.bswap.i16(i16 %i.yw)
  %i.yy = zext i16 %i.yx to i32
  %i.yz = mul i32 %i.to, %i.yy
  %i.za = add i32 %i.yz, 16384
  %i.zb = lshr i32 %i.za, 15
  %i.zc = trunc i32 %i.zb to i16
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv848.ph
  store i16 %i.zc, ptr %i.zd, align 2, !tbaa !125
  %indvars.iv.next849.prol = or disjoint i64 %indvars.iv848.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1341
  %indvars.iv848.unr = phi i64 [ %indvars.iv848.ph, %.lr.ph.preheader1341 ], [ %indvars.iv.next849.prol, %.lr.ph.prol ]
  %i.ze = icmp eq i64 %indvars.iv848.ph, %i.yd
  br i1 %i.ze, label %.lr.ph721.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv848 = phi i64 [ %indvars.iv.next849.1, %.lr.ph ], [ %indvars.iv848.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.zf = shl nuw i64 %indvars.iv848, 1
  %i.zg = and i64 %i.zf, 4294967294
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.zg
  %i.zi = load i16, ptr %i.zh, align 1, !tbaa !118
  %i.zj = tail call i16 @llvm.bswap.i16(i16 %i.zi)
  %i.zk = zext i16 %i.zj to i32
  %i.zl = mul i32 %i.to, %i.zk
  %i.zm = add i32 %i.zl, 16384
  %i.zn = lshr i32 %i.zm, 15
  %i.zo = trunc i32 %i.zn to i16
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv848
  store i16 %i.zo, ptr %i.zp, align 2, !tbaa !125
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %i.zq = shl nuw i64 %indvars.iv.next849, 1
  %i.zr = and i64 %i.zq, 4294967294
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.zr
  %i.zt = load i16, ptr %i.zs, align 1, !tbaa !118
  %i.zu = tail call i16 @llvm.bswap.i16(i16 %i.zt)
  %i.zv = zext i16 %i.zu to i32
  %i.zw = mul i32 %i.to, %i.zv
  %i.zx = add i32 %i.zw, 16384
  %i.zy = lshr i32 %i.zx, 15
  %i.zz = trunc i32 %i.zy to i16
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv.next849
  store i16 %i.zz, ptr %i.aaa, align 2, !tbaa !125
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv848, 2 ; 2 uses
  %exitcond852.not.1 = icmp eq i64 %indvars.iv.next849.1, %wide.trip.count851
  br i1 %exitcond852.not.1, label %.lr.ph721.preheader, label %.lr.ph, !llvm.loop !65

.lr.ph721.preheader:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1181
  %i.aab = getelementptr inbounds i8, ptr %i.yi, i64 %i.wz ; 5 uses
  store ptr %i.aab, ptr %i.f, align 8, !tbaa !111
  %brmerge1413 = select i1 %or.cond1322, i1 true, i1 %i.yg
  br i1 %brmerge1413, label %.lr.ph721.preheader1340, label %vector.body1155

vector.body1155:                                  ; preds = %.lr.ph721.preheader, %vector.body1155
  %index1156 = phi i64 [ %index.next1158, %vector.body1155 ], [ 0, %.lr.ph721.preheader ] ; 3 uses
  %i.aac = shl nuw i64 %index1156, 1
  %i.aad = and i64 %i.aac, 4294967280
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aad
  %wide.load1157 = load <8 x i16>, ptr %i.aae, align 1, !tbaa !118, !alias.scope !135
  %i.aaf = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load1157)
  %i.aag = zext <8 x i16> %i.aaf to <8 x i32>
  %i.aah = mul <8 x i32> %broadcast.splat1154, %i.aag
  %i.aai = add <8 x i32> %i.aah, splat (i32 16384)
  %i.aaj = lshr <8 x i32> %i.aai, splat (i32 15)
  %i.aak = trunc <8 x i32> %i.aaj to <8 x i16>
  %i.aal = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %index1156
  store <8 x i16> %i.aak, ptr %i.aal, align 2, !tbaa !125, !alias.scope !136, !noalias !135
  %index.next1158 = add nuw i64 %index1156, 8     ; 2 uses
  %i.aam = icmp eq i64 %index.next1158, %n.vec1152
  br i1 %i.aam, label %middle.block1159, label %vector.body1155, !llvm.loop !69

middle.block1159:                                 ; preds = %vector.body1155
  br i1 %cmp.n1160, label %._crit_edge722, label %.lr.ph721.preheader1340

.lr.ph721.preheader1340:                          ; preds = %.lr.ph721.preheader, %middle.block1159
  %indvars.iv853.ph = phi i64 [ %n.vec1152, %middle.block1159 ], [ 0, %.lr.ph721.preheader ] ; 5 uses
  br i1 %lcmp.mod1374.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol

.lr.ph721.prol:                                   ; preds = %.lr.ph721.preheader1340
  %i.aan = shl nuw nsw i64 %indvars.iv853.ph, 1
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aan
  %i.aap = load i16, ptr %i.aao, align 1, !tbaa !118
  %i.aaq = tail call i16 @llvm.bswap.i16(i16 %i.aap)
  %i.aar = zext i16 %i.aaq to i32
  %i.aas = mul i32 %i.to, %i.aar
  %i.aat = add i32 %i.aas, 16384
  %i.aau = lshr i32 %i.aat, 15
  %i.aav = trunc i32 %i.aau to i16
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv853.ph
  store i16 %i.aav, ptr %i.aaw, align 2, !tbaa !125
  %indvars.iv.next854.prol = or disjoint i64 %indvars.iv853.ph, 1
  br label %.lr.ph721.prol.loopexit

.lr.ph721.prol.loopexit:                          ; preds = %.lr.ph721.prol, %.lr.ph721.preheader1340
  %indvars.iv853.unr = phi i64 [ %indvars.iv853.ph, %.lr.ph721.preheader1340 ], [ %indvars.iv.next854.prol, %.lr.ph721.prol ]
  %i.aax = icmp eq i64 %indvars.iv853.ph, %i.yh
  br i1 %i.aax, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721
  %indvars.iv853 = phi i64 [ %indvars.iv.next854.1, %.lr.ph721 ], [ %indvars.iv853.unr, %.lr.ph721.prol.loopexit ] ; 4 uses
  %i.aay = shl nuw i64 %indvars.iv853, 1
  %i.aaz = and i64 %i.aay, 4294967294
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aaz
  %i.abb = load i16, ptr %i.aba, align 1, !tbaa !118
  %i.abc = tail call i16 @llvm.bswap.i16(i16 %i.abb)
  %i.abd = zext i16 %i.abc to i32
  %i.abe = mul i32 %i.to, %i.abd
  %i.abf = add i32 %i.abe, 16384
  %i.abg = lshr i32 %i.abf, 15
  %i.abh = trunc i32 %i.abg to i16
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv853
  store i16 %i.abh, ptr %i.abi, align 2, !tbaa !125
  %indvars.iv.next854 = add nuw nsw i64 %indvars.iv853, 1 ; 2 uses
  %i.abj = shl nuw i64 %indvars.iv.next854, 1
  %i.abk = and i64 %i.abj, 4294967294
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.abk
  %i.abm = load i16, ptr %i.abl, align 1, !tbaa !118
  %i.abn = tail call i16 @llvm.bswap.i16(i16 %i.abm)
  %i.abo = zext i16 %i.abn to i32
  %i.abp = mul i32 %i.to, %i.abo
  %i.abq = add i32 %i.abp, 16384
  %i.abr = lshr i32 %i.abq, 15
  %i.abs = trunc i32 %i.abr to i16
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv.next854
  store i16 %i.abs, ptr %i.abt, align 2, !tbaa !125
  %indvars.iv.next854.1 = add nuw nsw i64 %indvars.iv853, 2 ; 2 uses
  %exitcond858.not.1 = icmp eq i64 %indvars.iv.next854.1, %wide.trip.count857
  br i1 %exitcond858.not.1, label %._crit_edge722, label %.lr.ph721, !llvm.loop !70

._crit_edge722:                                   ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721, %middle.block1159, %.preheader618
  %4 = getelementptr inbounds i8, ptr %i.yi, i64 %i.wz
  %i.abu = getelementptr inbounds i8, ptr %4, i64 %i.wz ; 2 uses
  store ptr %i.abu, ptr %i.f, align 8, !tbaa !111
  %i.abv = getelementptr inbounds [2 x i8], ptr %.0498724, i64 %i.xd
  %i.abw = getelementptr inbounds [2 x i8], ptr %.0497725, i64 %i.xh
  %i.abx = add nuw nsw i32 %.4531723, 1           ; 2 uses
  %exitcond859.not = icmp eq i32 %i.abx, %i.ws
  br i1 %exitcond859.not, label %.loopexit, label %.preheader618, !llvm.loop !71

bb.as:                                            ; preds = %bb.f
  %i.aby = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !137
  %.not544 = icmp eq i32 %i.abz, 0
  %i.aca = load i32, ptr %i.q, align 8, !tbaa !115 ; 11 uses
  %i.acb = load i32, ptr %i.s, align 4, !tbaa !116 ; 10 uses
  %i.acc = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.acd = load ptr, ptr %i.f, align 8, !tbaa !111 ; 5 uses
  %i.ace = ptrtoint ptr %i.acc to i64
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = sub i64 %i.ace, %i.acf                 ; 2 uses
  br i1 %.not544, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.ach = mul nsw i32 %i.acb, %i.aca
  %i.aci = sext i32 %i.ach to i64
  %i.acj = mul nsw i64 %i.aci, 12
  %i.ack = icmp sgt i64 %i.acj, %i.acg
  br i1 %i.ack, label %.critedge567, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.acl = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.acm = load float, ptr %i.acl, align 8, !tbaa !138
  %i.acn = fdiv nsz float 1.000000e+00, %i.acm    ; 7 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.acp = load i32, ptr %i.aco, align 8, !tbaa !139
  %.not545 = icmp eq i32 %i.acp, 0
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !121 ; 7 uses
  %i.acs = load ptr, ptr %1, align 8, !tbaa !121  ; 7 uses
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !121 ; 7 uses
  %i.acv = icmp sgt i32 %i.acb, 0                 ; 2 uses
  br i1 %.not545, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.acv, label %.preheader623.lr.ph, label %.loopexit622

.preheader623.lr.ph:                              ; preds = %bb.av
  %i.acw = icmp sgt i32 %i.aca, 0
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.acy = load <3 x i32>, ptr %i.acx, align 8, !tbaa !122 ; 3 uses
  %i.acz = shufflevector <3 x i32> %i.acy, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.ada = load i32, ptr %i.acx, align 8, !tbaa !122
  %i.adb = extractelement <3 x i32> %i.acy, i64 2
  %i.adc = sdiv i32 %i.adb, 4
  %i.add = sext i32 %i.adc to i64                 ; 2 uses
  %i.ade = sdiv i32 %i.ada, 4
  %i.adf = sext i32 %i.ade to i64                 ; 2 uses
  %i.adg = extractelement <3 x i32> %i.acy, i64 1
  %i.adh = sdiv i32 %i.adg, 4
  %i.adi = sext i32 %i.adh to i64                 ; 2 uses
  br i1 %i.acw, label %.preheader623.lr.ph.split, label %.loopexit622

.preheader623.lr.ph.split:                        ; preds = %.preheader623.lr.ph
  %wide.trip.count833 = zext nneg i32 %i.aca to i64 ; 7 uses
  %i.adj = add nsw i32 %i.acb, -1
  %i.adk = zext i32 %i.adj to i64                 ; 3 uses
  %i.adl = mul nsw i64 %i.add, %i.adk
  %i.adm = add nsw i64 %i.adl, %wide.trip.count833
  %i.adn = shl i64 %i.adm, 2
  %scevgep1047 = getelementptr i8, ptr %i.acr, i64 %i.adn ; 4 uses
  %i.ado = mul nsw i64 %i.adf, %i.adk
  %i.adp = add nsw i64 %i.ado, %wide.trip.count833
  %i.adq = shl i64 %i.adp, 2
  %scevgep1048 = getelementptr i8, ptr %i.acs, i64 %i.adq ; 4 uses
  %i.adr = mul nsw i64 %i.adi, %i.adk
  %i.ads = add nsw i64 %i.adr, %wide.trip.count833
  %i.adt = shl i64 %i.ads, 2
  %scevgep1049 = getelementptr i8, ptr %i.acu, i64 %i.adt ; 4 uses
  %scevgep1050 = getelementptr i8, ptr %i.f, i64 8 ; 4 uses
  %i.adu = mul nuw nsw i64 %wide.trip.count833, 12
  %min.iters.check1104 = icmp ult i32 %i.aca, 22
  %bound01052 = icmp ult ptr %i.acr, %scevgep1048
  %bound11053 = icmp ult ptr %i.acs, %scevgep1047
  %found.conflict1054 = and i1 %bound01052, %bound11053
  %i.adv = icmp slt <4 x i32> %i.acz, splat (i32 -3)
  %bound01057 = icmp ult ptr %i.acr, %scevgep1049
  %bound11058 = icmp ult ptr %i.acu, %scevgep1047
  %found.conflict1059 = and i1 %bound01057, %bound11058
  %bound01063 = icmp ult ptr %i.acr, %scevgep1050
  %bound11064 = icmp ult ptr %i.f, %scevgep1047
  %found.conflict1065 = and i1 %bound01063, %bound11064
  %bound01073 = icmp ult ptr %i.acs, %scevgep1049
  %bound11074 = icmp ult ptr %i.acu, %scevgep1048
  %found.conflict1075 = and i1 %bound01073, %bound11074
  %bound01079 = icmp ult ptr %i.acs, %scevgep1050
  %bound11080 = icmp ult ptr %i.f, %scevgep1048
  %found.conflict1081 = and i1 %bound01079, %bound11080
  %bound01089 = icmp ult ptr %i.acu, %scevgep1050
  %bound11090 = icmp ult ptr %i.f, %scevgep1049
  %found.conflict1091 = and i1 %bound01089, %bound11090
  %i.adw = bitcast <4 x i1> %i.adv to i4
  %i.adx = icmp ne i4 %i.adw, 0
  %op.rdx = or i1 %i.adx, %found.conflict1054
  %op.rdx1323 = or i1 %found.conflict1059, %found.conflict1065
  %op.rdx1327 = or i1 %op.rdx, %op.rdx1323
  %n.vec1106 = and i64 %wide.trip.count833, 2147483646 ; 4 uses
  %i.ady = mul nuw nsw i64 %n.vec1106, 12
  %broadcast.splatinsert1107 = insertelement <2 x float> poison, float %i.acn, i64 0
  %broadcast.splat1108 = shufflevector <2 x float> %broadcast.splatinsert1107, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %cmp.n1115 = icmp eq i64 %n.vec1106, %wide.trip.count833
  br label %.preheader623

.preheader623:                                    ; preds = %.preheader623.lr.ph.split, %._crit_edge694
  %.promoted700 = phi ptr [ %i.acd, %.preheader623.lr.ph.split ], [ %.lcssa991, %._crit_edge694 ] ; 10 uses
  %.0492698 = phi i32 [ 0, %.preheader623.lr.ph.split ], [ %i.afd, %._crit_edge694 ]
  %.0493697 = phi ptr [ %i.acu, %.preheader623.lr.ph.split ], [ %i.afc, %._crit_edge694 ] ; 3 uses
  %.0494696 = phi ptr [ %i.acs, %.preheader623.lr.ph.split ], [ %i.afb, %._crit_edge694 ] ; 3 uses
  %.0495695 = phi ptr [ %i.acr, %.preheader623.lr.ph.split ], [ %i.afa, %._crit_edge694 ] ; 3 uses
  br i1 %min.iters.check1104, label %scalar.ph1103.preheader, label %vector.memcheck1046

vector.memcheck1046:                              ; preds = %.preheader623
  %scevgep1051 = getelementptr i8, ptr %.promoted700, i64 %i.adu ; 4 uses
  %bound01068 = icmp ult ptr %i.acr, %scevgep1051
  %bound11069 = icmp ult ptr %.promoted700, %scevgep1047
  %found.conflict1070 = and i1 %bound01068, %bound11069
  %bound01084 = icmp ult ptr %i.acs, %scevgep1051
  %bound11085 = icmp ult ptr %.promoted700, %scevgep1048
  %found.conflict1086 = and i1 %bound01084, %bound11085
  %bound01094 = icmp ult ptr %i.acu, %scevgep1051
  %bound11095 = icmp ult ptr %.promoted700, %scevgep1049
  %found.conflict1096 = and i1 %bound01094, %bound11095
  %bound01099 = icmp ult ptr %i.f, %scevgep1051
  %bound11100 = icmp ult ptr %.promoted700, %scevgep1050
  %found.conflict1101 = and i1 %bound01099, %bound11100
  %op.rdx1324 = or i1 %found.conflict1070, %found.conflict1075
  %op.rdx1325 = or i1 %found.conflict1081, %found.conflict1086
  %op.rdx1326 = or i1 %found.conflict1091, %found.conflict1096
  %op.rdx1328 = or i1 %op.rdx1324, %op.rdx1325
  %op.rdx1329 = or i1 %op.rdx1326, %found.conflict1101
  %op.rdx1330 = or i1 %op.rdx1327, %op.rdx1328
  %op.rdx1331 = or i1 %op.rdx1330, %op.rdx1329
  br i1 %op.rdx1331, label %scalar.ph1103.preheader, label %vector.ph1105

vector.ph1105:                                    ; preds = %vector.memcheck1046
  %i.adz = getelementptr i8, ptr %.promoted700, i64 %i.ady ; 2 uses
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1105
  %index1110 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1113, %vector.body1109 ] ; 5 uses
  %i.aea = mul i64 %index1110, 12                 ; 2 uses
  %next.gep1111 = getelementptr i8, ptr %.promoted700, i64 %i.aea ; 3 uses
  %i.aeb = getelementptr i8, ptr %.promoted700, i64 %i.aea ; 4 uses
  %next.gep1112 = getelementptr i8, ptr %i.aeb, i64 12
  %i.aec = load float, ptr %next.gep1111, align 1, !tbaa !118, !alias.scope !140
  %i.aed = load float, ptr %next.gep1112, align 1, !tbaa !118, !alias.scope !140
  %i.aee = insertelement <2 x float> poison, float %i.aec, i64 0
  %i.aef = insertelement <2 x float> %i.aee, float %i.aed, i64 1
  %i.aeg = fmul nsz <2 x float> %broadcast.splat1108, %i.aef
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.0495695, i64 %index1110
  store <2 x float> %i.aeg, ptr %i.aeh, align 4, !tbaa !141, !alias.scope !142, !noalias !143
  %i.aei = getelementptr inbounds nuw i8, ptr %next.gep1111, i64 4
  %i.aej = getelementptr i8, ptr %i.aeb, i64 16
  %i.aek = load float, ptr %i.aei, align 1, !tbaa !118, !alias.scope !140
  %i.ael = load float, ptr %i.aej, align 1, !tbaa !118, !alias.scope !140
  %i.aem = insertelement <2 x float> poison, float %i.aek, i64 0
  %i.aen = insertelement <2 x float> %i.aem, float %i.ael, i64 1
  %i.aeo = fmul nsz <2 x float> %broadcast.splat1108, %i.aen
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %.0494696, i64 %index1110
  store <2 x float> %i.aeo, ptr %i.aep, align 4, !tbaa !141, !alias.scope !144, !noalias !145
  %i.aeq = getelementptr inbounds nuw i8, ptr %next.gep1111, i64 8
  %i.aer = getelementptr i8, ptr %i.aeb, i64 20
  %i.aes = load float, ptr %i.aeq, align 1, !tbaa !118, !alias.scope !140
  %i.aet = load float, ptr %i.aer, align 1, !tbaa !118, !alias.scope !140
  %i.aeu = insertelement <2 x float> poison, float %i.aes, i64 0
  %i.aev = insertelement <2 x float> %i.aeu, float %i.aet, i64 1
  %i.aew = fmul nsz <2 x float> %broadcast.splat1108, %i.aev
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %.0493697, i64 %index1110
  store <2 x float> %i.aew, ptr %i.aex, align 4, !tbaa !141, !alias.scope !146, !noalias !147
  %index.next1113 = add nuw i64 %index1110, 2     ; 2 uses
  %i.aey = icmp eq i64 %index.next1113, %n.vec1106
  br i1 %i.aey, label %middle.block1114, label %vector.body1109, !llvm.loop !78

middle.block1114:                                 ; preds = %vector.body1109
  %i.aez = getelementptr i8, ptr %i.aeb, i64 24
  store ptr %i.aez, ptr %i.f, align 8, !tbaa !111, !alias.scope !148, !noalias !140
  br i1 %cmp.n1115, label %._crit_edge694, label %scalar.ph1103.preheader

scalar.ph1103.preheader:                          ; preds = %vector.memcheck1046, %.preheader623, %middle.block1114
  %indvars.iv830.ph = phi i64 [ 0, %vector.memcheck1046 ], [ 0, %.preheader623 ], [ %n.vec1106, %middle.block1114 ]
  %.ph = phi ptr [ %.promoted700, %vector.memcheck1046 ], [ %.promoted700, %.preheader623 ], [ %i.adz, %middle.block1114 ]
  br label %scalar.ph1103

._crit_edge694:                                   ; preds = %scalar.ph1103, %middle.block1114
  %.lcssa991 = phi ptr [ %i.adz, %middle.block1114 ], [ %i.afq, %scalar.ph1103 ]
  %i.afa = getelementptr inbounds [4 x i8], ptr %.0495695, i64 %i.add
  %i.afb = getelementptr inbounds [4 x i8], ptr %.0494696, i64 %i.adf
  %i.afc = getelementptr inbounds [4 x i8], ptr %.0493697, i64 %i.adi
  %i.afd = add nuw nsw i32 %.0492698, 1           ; 2 uses
  %exitcond835.not = icmp eq i32 %i.afd, %i.acb
  br i1 %exitcond835.not, label %.loopexit622, label %.preheader623, !llvm.loop !79

end_hunk_0
