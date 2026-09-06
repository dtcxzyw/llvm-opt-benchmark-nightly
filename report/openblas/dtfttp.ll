Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtfttp?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dtfttp_:bb.a
  store double %i.hj, ptr %i.hl, align 8, !tbaa !92
  %indvars.iv.next675.7 = add nsw i64 %indvars.iv674, 8 ; 2 uses
  %indvars.iv.next679.7 = add nsw i64 %indvars.iv.next679.6, %i.ez
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next675.7 to i32
  %exitcond685.not.7 = icmp eq i32 %i.fl, %lftr.wideiv.7
  br i1 %exitcond685.not.7, label %.loopexit1574, label %vec.epilog.scalar.ph975, !llvm.loop !21

.loopexit1574:                                    ; preds = %vec.epilog.scalar.ph975.prol.loopexit, %vec.epilog.scalar.ph975, %vec.epilog.middle.block984, %middle.block970
  %indvars.iv.next677 = add i32 %indvars.iv676, 1
  %indvars.iv.next684 = add nuw i32 %indvars.iv683, 1
  %exitcond686.not = icmp eq i32 %indvars.iv683, %.
  %indvar.next = add i64 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.fb
  br i1 %exitcond686.not, label %._crit_edge465, label %iter.check974, !llvm.loop !22

._crit_edge465:                                   ; preds = %.loopexit1574, %bb.l
  %.4.lcssa = phi i32 [ 0, %bb.l ], [ %i.fl, %.loopexit1574 ]
  %.not408.not474 = icmp slt i32 %., %i.h
  br i1 %.not408.not474, label %.lr.ph479.preheader, label %.loopexit

.lr.ph479.preheader:                              ; preds = %._crit_edge465
  %i.hm = zext nneg i32 %.0328 to i64             ; 4 uses
  %i.hn = sext i32 %. to i64                      ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.h to i64
  %i.ho = sub i64 %i.b, %i.a
  %i.hp = mul nsw i64 %i.hm, -8
  %i.hq = add nuw nsw i64 %i.hm, 1
  br label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %._crit_edge472
  %indvar989 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvar.next990, %._crit_edge472 ] ; 4 uses
  %indvars.iv697 = phi i64 [ %i.hn, %.lr.ph479.preheader ], [ %indvars.iv.next698, %._crit_edge472 ] ; 3 uses
  %indvars.iv690 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvars.iv.next691, %._crit_edge472 ] ; 9 uses
  %.6477 = phi i32 [ %.4.lcssa, %.lr.ph479.preheader ], [ %.7.lcssa, %._crit_edge472 ] ; 2 uses
  %i.hr = mul i64 %i.hq, %indvar989
  %i.hs = add i64 %i.hr, %i.hn
  %smax = tail call i64 @llvm.smax.i64(i64 %i.hs, i64 %indvars.iv690)
  %i.ht = mul i64 %indvar989, %i.hm
  %reass.sub = sub i64 %smax, %i.ht
  %i.hu = add i64 %reass.sub, 1                   ; 7 uses
  %i.hv = mul i64 %i.hp, %indvar989
  %i.hw = add i64 %i.ho, %i.hv
  %i.hx = add nsw i64 %indvars.iv690, %indvars.iv697
  %.not409467 = icmp slt i64 %indvars.iv697, 0
  br i1 %.not409467, label %._crit_edge472, label %iter.check1008

iter.check1008:                                   ; preds = %.lr.ph479
  %i.hy = sext i32 %.6477 to i64                  ; 7 uses
  %min.iters.check992 = icmp ult i64 %i.hu, 4
  br i1 %min.iters.check992, label %.lr.ph471.preheader, label %vector.memcheck988

vector.memcheck988:                               ; preds = %iter.check1008
  %i.hz = shl nsw i64 %i.hy, 3
  %i.ia = add i64 %i.hw, %i.hz
  %i.ib = add i64 %i.ia, -1
  %diff.check991 = icmp ult i64 %i.ib, 127
  br i1 %diff.check991, label %.lr.ph471.preheader, label %vector.main.loop.iter.check993

vector.main.loop.iter.check993:                   ; preds = %vector.memcheck988
  %min.iters.check994 = icmp ult i64 %i.hu, 16
  br i1 %min.iters.check994, label %vec.epilog.ph1012, label %vector.ph995

vector.ph995:                                     ; preds = %vector.main.loop.iter.check993
  %i.ic = and i64 %i.hu, 12
  %n.vec996 = and i64 %i.hu, -16                  ; 5 uses
  %i.id = add i64 %indvars.iv690, %n.vec996
  %i.ie = add i64 %n.vec996, %i.hy                ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv690
  %invariant.gep1651.a = getelementptr [8 x i8], ptr %4, i64 %i.hy
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1003, %vector.body997 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index998 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  %wide.load999 = load <4 x double>, ptr %i.ig, align 8, !tbaa !92
  %wide.load1000 = load <4 x double>, ptr %i.ih, align 8, !tbaa !92
  %wide.load1001 = load <4 x double>, ptr %i.ii, align 8, !tbaa !92
  %wide.load1002 = load <4 x double>, ptr %i.ij, align 8, !tbaa !92
  %gep1652.a = getelementptr [8 x i8], ptr %invariant.gep1651.a, i64 %index998 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %gep1652.a, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %gep1652.a, i64 64
  %i.im = getelementptr inbounds nuw i8, ptr %gep1652.a, i64 96
  store <4 x double> %wide.load999, ptr %gep1652.a, align 8, !tbaa !92
  store <4 x double> %wide.load1000, ptr %i.ik, align 8, !tbaa !92
  store <4 x double> %wide.load1001, ptr %i.il, align 8, !tbaa !92
  store <4 x double> %wide.load1002, ptr %i.im, align 8, !tbaa !92
  %index.next1003 = add nuw i64 %index998, 16     ; 2 uses
  %i.in = icmp eq i64 %index.next1003, %n.vec996
  br i1 %i.in, label %middle.block1004, label %vector.body997, !llvm.loop !23

middle.block1004:                                 ; preds = %vector.body997
  %cmp.n1005 = icmp eq i64 %i.hu, %n.vec996
  br i1 %cmp.n1005, label %._crit_edge472.loopexit, label %vec.epilog.iter.check1010

vec.epilog.iter.check1010:                        ; preds = %middle.block1004
  %min.epilog.iters.check1011 = icmp eq i64 %i.ic, 0
  br i1 %min.epilog.iters.check1011, label %.lr.ph471.preheader, label %vec.epilog.ph1012, !prof !96

vec.epilog.ph1012:                                ; preds = %vector.main.loop.iter.check993, %vec.epilog.iter.check1010
  %vec.epilog.resume.val1006 = phi i64 [ %n.vec996, %vec.epilog.iter.check1010 ], [ 0, %vector.main.loop.iter.check993 ]
  %n.vec1013 = and i64 %i.hu, -4                  ; 4 uses
  %i.io = add i64 %indvars.iv690, %n.vec1013
  %i.ip = add i64 %n.vec1013, %i.hy               ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv690
  %invariant.gep1653.a = getelementptr [8 x i8], ptr %4, i64 %i.hy
  br label %vec.epilog.vector.body1014

vec.epilog.vector.body1014:                       ; preds = %vec.epilog.vector.body1014, %vec.epilog.ph1012
  %index1015 = phi i64 [ %vec.epilog.resume.val1006, %vec.epilog.ph1012 ], [ %index.next1017, %vec.epilog.vector.body1014 ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %index1015
  %wide.load1016 = load <4 x double>, ptr %i.ir, align 8, !tbaa !92
  %gep1654.a = getelementptr [8 x i8], ptr %invariant.gep1653.a, i64 %index1015
  store <4 x double> %wide.load1016, ptr %gep1654.a, align 8, !tbaa !92
  %index.next1017 = add nuw i64 %index1015, 4     ; 2 uses
  %i.is = icmp eq i64 %index.next1017, %n.vec1013
  br i1 %i.is, label %vec.epilog.middle.block1018, label %vec.epilog.vector.body1014, !llvm.loop !24

vec.epilog.middle.block1018:                      ; preds = %vec.epilog.vector.body1014
  %cmp.n1019 = icmp eq i64 %i.hu, %n.vec1013
  br i1 %cmp.n1019, label %._crit_edge472.loopexit, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %vector.memcheck988, %iter.check1008, %vec.epilog.iter.check1010, %vec.epilog.middle.block1018
  %indvars.iv692.ph = phi i64 [ %indvars.iv690, %iter.check1008 ], [ %indvars.iv690, %vector.memcheck988 ], [ %i.id, %vec.epilog.iter.check1010 ], [ %i.io, %vec.epilog.middle.block1018 ]
  %indvars.iv688.ph = phi i64 [ %i.hy, %iter.check1008 ], [ %i.hy, %vector.memcheck988 ], [ %i.ie, %vec.epilog.iter.check1010 ], [ %i.ip, %vec.epilog.middle.block1018 ]
  br label %.lr.ph471

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %.lr.ph471
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %.lr.ph471 ], [ %indvars.iv692.ph, %.lr.ph471.preheader ] ; 3 uses
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %.lr.ph471 ], [ %indvars.iv688.ph, %.lr.ph471.preheader ] ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv692
  %i.iu = load double, ptr %i.it, align 8, !tbaa !92
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv688
  store double %i.iu, ptr %i.iv, align 8, !tbaa !92
  %indvars.iv.next689 = add nsw i64 %indvars.iv688, 1 ; 2 uses
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1
  %.not409.not = icmp slt i64 %indvars.iv692, %i.hx
  br i1 %.not409.not, label %.lr.ph471, label %._crit_edge472.loopexit, !llvm.loop !25

._crit_edge472.loopexit:                          ; preds = %.lr.ph471, %vec.epilog.middle.block1018, %middle.block1004
  %indvars.iv.next689.lcssa = phi i64 [ %i.ip, %vec.epilog.middle.block1018 ], [ %i.ie, %middle.block1004 ], [ %indvars.iv.next689, %.lr.ph471 ]
  %i.iw = trunc nsw i64 %indvars.iv.next689.lcssa to i32
  br label %._crit_edge472

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit, %.lr.ph479
  %.7.lcssa = phi i32 [ %.6477, %.lr.ph479 ], [ %i.iw, %._crit_edge472.loopexit ]
  %indvars.iv.next691 = add i64 %indvars.iv690, %i.hm
  %indvars.iv.next698 = add nsw i64 %indvars.iv697, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next698, %wide.trip.count702
  %indvar.next990 = add i64 %indvar989, 1
  br i1 %exitcond703.not, label %.loopexit, label %.lr.ph479, !llvm.loop !26

bb.m:                                             ; preds = %bb.j
  br i1 %.not379, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not403530 = icmp slt i32 %.901, 0
  br i1 %.not403530, label %.loopexit, label %.lr.ph534

.lr.ph534:                                        ; preds = %bb.n
  %i.ix = mul nuw nsw i32 %i.s, %i.h              ; 2 uses
  %i.iy = add nuw nsw i32 %i.s, 1
  %i.iz = zext nneg i32 %i.s to i64               ; 16 uses
  %i.ja = add nuw nsw i64 %i.iz, 1
  %i.jb = zext nneg i32 %i.ix to i64              ; 3 uses
  %scevgep1162 = getelementptr i8, ptr %4, i64 8
  %i.jc = xor i64 %i.iz, -1                       ; 2 uses
  %i.jd = shl nuw nsw i64 %i.iz, 3
  %i.je = add nuw nsw i64 %i.jd, 8
  %i.jf = shl nuw nsw i64 %i.iz, 3
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jg = shl nuw nsw <4 x i64> %broadcast.splat, splat (i64 2) ; 5 uses
  %i.jh = mul nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op = add nuw nsw <4 x i64> %i.jg, %i.jg ; 2 uses
  %invariant.op1667 = add nuw nsw <4 x i64> %invariant.op, %i.jg ; 2 uses
  %invariant.op1670 = add nuw nsw <4 x i64> %invariant.op1667, %i.jg
  %broadcast.splatinsert1204 = insertelement <4 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat1205 = shufflevector <4 x i64> %broadcast.splatinsert1204, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ji = mul nuw nsw <4 x i64> %broadcast.splat1205, <i64 0, i64 1, i64 2, i64 3>
  %i.jj = shl nuw nsw i64 %i.iz, 2
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %i.jj, i64 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph534, %._crit_edge528
  %indvar1164 = phi i64 [ 0, %.lr.ph534 ], [ %indvar.next1165, %._crit_edge528 ] ; 4 uses
  %indvars.iv768 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next769, %._crit_edge528 ] ; 9 uses
  %.8532 = phi i32 [ 0, %.lr.ph534 ], [ %.9.lcssa, %._crit_edge528 ] ; 2 uses
  %.3369531 = phi i32 [ 0, %.lr.ph534 ], [ %i.la, %._crit_edge528 ] ; 3 uses
  %i.jk = add nuw i64 %indvars.iv768, %i.iz
  %umax1163 = tail call i64 @llvm.umax.i64(i64 %i.jk, i64 %i.jb)
  %i.jl = mul i64 %indvar1164, %i.jc
  %i.jm = sub i64 %i.jl, %i.iz
  %i.jn = add i64 %umax1163, %i.jm                ; 2 uses
  %i.jo = icmp ne i64 %i.jn, 0
  %umin = zext i1 %i.jo to i64                    ; 2 uses
  %i.jp = sub i64 %i.jn, %umin
  %i.jq = mul i64 %i.je, %indvar1164
  %scevgep1168.a = getelementptr i8, ptr %3, i64 %i.jq ; 5 uses
  %i.jr = mul nsw i32 %.3369531, %i.iy
  %i.js = icmp slt i32 %i.jr, %i.ix
  br i1 %i.js, label %iter.check1196, label %._crit_edge528

iter.check1196:                                   ; preds = %bb.o
  %i.jt = add nuw i64 %indvars.iv768, %i.iz
  %umax1173 = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 %i.jb)
  %i.ju = mul i64 %indvar1164, %i.jc
  %i.jv = sub i64 %i.ju, %i.iz
  %i.jw = add i64 %umax1173, %i.jv                ; 2 uses
  %i.jx = icmp ne i64 %i.jw, 0                    ; 2 uses
  %umin1174.neg = sext i1 %i.jx to i64
  %i.jy = add i64 %i.jw, %umin1174.neg
  %i.jz = sext i32 %.8532 to i64                  ; 8 uses
  %i.ka = select i1 %i.jx, i64 2, i64 1
  %i.kb = udiv i64 %i.jy, %i.iz
  %i.kc = add i64 %i.ka, %i.kb                    ; 7 uses
  %min.iters.check1176.a = icmp ult i64 %i.kc, 4
  br i1 %min.iters.check1176.a, label %.lr.ph527.preheader, label %vector.memcheck1161

vector.memcheck1161:                              ; preds = %iter.check1196
  %i.kd = shl nsw i64 %i.jz, 3
  %scevgep = getelementptr i8, ptr %4, i64 %i.kd
  %i.ke = udiv i64 %i.jp, %i.iz
  %i.kf = add i64 %i.ke, %umin                    ; 2 uses
  %i.kg = add i64 %i.kf, %i.jz
  %i.kh = shl i64 %i.kg, 3
  %scevgep1167 = getelementptr i8, ptr %scevgep1162, i64 %i.kh
  %i.ki = mul i64 %i.jf, %i.kf
  %scevgep1169 = getelementptr i8, ptr %scevgep1168.a, i64 %i.ki ; 4 uses
  %6 = icmp ult ptr %scevgep1168.a, %scevgep1169
  %umin1170 = select i1 %6, ptr %scevgep1168.a, ptr %scevgep1169
  %7 = icmp ugt ptr %scevgep1168.a, %scevgep1169
  %umax1171 = select i1 %7, ptr %scevgep1168.a, ptr %scevgep1169
  %scevgep1172 = getelementptr i8, ptr %umax1171, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep1172
  %bound1 = icmp ult ptr %umin1170, %scevgep1167
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph527.preheader, label %vector.main.loop.iter.check1177

vector.main.loop.iter.check1177:                  ; preds = %vector.memcheck1161
  %min.iters.check1178 = icmp ult i64 %i.kc, 16
  br i1 %min.iters.check1178, label %vec.epilog.ph1200, label %vector.ph1179

vector.ph1179:                                    ; preds = %vector.main.loop.iter.check1177
  %i.kj = and i64 %i.kc, 12
  %n.vec1180 = and i64 %i.kc, -16                 ; 5 uses
  %i.kk = mul i64 %n.vec1180, %i.iz
  %i.kl = add i64 %indvars.iv768, %i.kk           ; 2 uses
  %i.km = add i64 %n.vec1180, %i.jz               ; 2 uses
  %broadcast.splatinsert1181 = insertelement <4 x i64> poison, i64 %indvars.iv768, i64 0
  %broadcast.splat1182 = shufflevector <4 x i64> %broadcast.splatinsert1181, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat1182, %i.jh
  %invariant.gep1668 = getelementptr [8 x i8], ptr %4, i64 %i.jz
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1179
  %index1184 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1191, %vector.body1183 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph1179 ], [ %vec.ind.next.reass, %vector.body1183 ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, %i.jg
  %step.add.2.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op
  %step.add.3.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1667
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind
  %wide.gep1185.a = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add
  %wide.gep1186 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.2.reass
  %wide.gep1187 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.3.reass
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1188.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1185.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1189 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1186, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1190 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1187, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %gep1669 = getelementptr [8 x i8], ptr %invariant.gep1668, i64 %index1184 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %gep1669, i64 32
  %i.ko = getelementptr inbounds nuw i8, ptr %gep1669, i64 64
  %i.kp = getelementptr inbounds nuw i8, ptr %gep1669, i64 96
  store <4 x double> %wide.masked.gather, ptr %gep1669, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1188.a, ptr %i.kn, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1189, ptr %i.ko, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1190, ptr %i.kp, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1191 = add nuw i64 %index1184, 16    ; 2 uses
  %vec.ind.next.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1670
  %i.kq = icmp eq i64 %index.next1191, %n.vec1180
  br i1 %i.kq, label %middle.block1192, label %vector.body1183, !llvm.loop !30

middle.block1192:                                 ; preds = %vector.body1183
  %cmp.n1193 = icmp eq i64 %i.kc, %n.vec1180
  br i1 %cmp.n1193, label %._crit_edge528.loopexit, label %vec.epilog.iter.check1198

vec.epilog.iter.check1198:                        ; preds = %middle.block1192
  %min.epilog.iters.check1199 = icmp eq i64 %i.kj, 0
  br i1 %min.epilog.iters.check1199, label %.lr.ph527.preheader, label %vec.epilog.ph1200, !prof !96

vec.epilog.ph1200:                                ; preds = %vector.main.loop.iter.check1177, %vec.epilog.iter.check1198
  %vec.epilog.resume.val1194 = phi i64 [ %n.vec1180, %vec.epilog.iter.check1198 ], [ 0, %vector.main.loop.iter.check1177 ]
  %bc.resume.val = phi i64 [ %i.kl, %vec.epilog.iter.check1198 ], [ %indvars.iv768, %vector.main.loop.iter.check1177 ]
  %n.vec1201 = and i64 %i.kc, -4                  ; 4 uses
  %i.kr = mul i64 %n.vec1201, %i.iz
  %i.ks = add i64 %indvars.iv768, %i.kr
  %i.kt = add i64 %n.vec1201, %i.jz               ; 2 uses
  %broadcast.splatinsert1202 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat1203 = shufflevector <4 x i64> %broadcast.splatinsert1202, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1206 = add nuw nsw <4 x i64> %broadcast.splat1203, %i.ji
  %invariant.gep1671.a = getelementptr [8 x i8], ptr %4, i64 %i.jz
  br label %vec.epilog.vector.body1209

vec.epilog.vector.body1209:                       ; preds = %vec.epilog.vector.body1209, %vec.epilog.ph1200
  %index1210 = phi i64 [ %vec.epilog.resume.val1194, %vec.epilog.ph1200 ], [ %index.next1214, %vec.epilog.vector.body1209 ] ; 2 uses
  %vec.ind1211 = phi <4 x i64> [ %induction1206, %vec.epilog.ph1200 ], [ %vec.ind.next1215, %vec.epilog.vector.body1209 ] ; 2 uses
  %wide.gep1212 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1211
  %wide.masked.gather1213 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1212, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %gep1672.a = getelementptr [8 x i8], ptr %invariant.gep1671.a, i64 %index1210
  store <4 x double> %wide.masked.gather1213, ptr %gep1672.a, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1214 = add nuw i64 %index1210, 4     ; 2 uses
  %vec.ind.next1215 = add nuw nsw <4 x i64> %vec.ind1211, %broadcast.splat1208
  %i.ku = icmp eq i64 %index.next1214, %n.vec1201
  br i1 %i.ku, label %vec.epilog.middle.block1216, label %vec.epilog.vector.body1209, !llvm.loop !31

vec.epilog.middle.block1216:                      ; preds = %vec.epilog.vector.body1209
  %cmp.n1217 = icmp eq i64 %i.kc, %n.vec1201
  br i1 %cmp.n1217, label %._crit_edge528.loopexit, label %.lr.ph527.preheader

.lr.ph527.preheader:                              ; preds = %vector.memcheck1161, %iter.check1196, %vec.epilog.iter.check1198, %vec.epilog.middle.block1216
  %indvars.iv770.ph = phi i64 [ %indvars.iv768, %iter.check1196 ], [ %indvars.iv768, %vector.memcheck1161 ], [ %i.kl, %vec.epilog.iter.check1198 ], [ %i.ks, %vec.epilog.middle.block1216 ]
  %indvars.iv766.ph = phi i64 [ %i.jz, %iter.check1196 ], [ %i.jz, %vector.memcheck1161 ], [ %i.km, %vec.epilog.iter.check1198 ], [ %i.kt, %vec.epilog.middle.block1216 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader, %.lr.ph527
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.lr.ph527 ], [ %indvars.iv770.ph, %.lr.ph527.preheader ] ; 2 uses
  %indvars.iv766 = phi i64 [ %indvars.iv.next767, %.lr.ph527 ], [ %indvars.iv766.ph, %.lr.ph527.preheader ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv770
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !92
  %i.kx = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv766
  store double %i.kw, ptr %i.kx, align 8, !tbaa !92
  %indvars.iv.next767 = add nsw i64 %indvars.iv766, 1 ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, %i.iz ; 2 uses
  %i.ky = icmp samesign ult i64 %indvars.iv.next771, %i.jb
  br i1 %i.ky, label %.lr.ph527, label %._crit_edge528.loopexit, !llvm.loop !32

._crit_edge528.loopexit:                          ; preds = %.lr.ph527, %vec.epilog.middle.block1216, %middle.block1192
  %indvars.iv.next767.lcssa = phi i64 [ %i.kt, %vec.epilog.middle.block1216 ], [ %i.km, %middle.block1192 ], [ %indvars.iv.next767, %.lr.ph527 ]
  %i.kz = trunc nsw i64 %indvars.iv.next767.lcssa to i32
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.o
  %.9.lcssa = phi i32 [ %.8532, %bb.o ], [ %i.kz, %._crit_edge528.loopexit ] ; 2 uses
  %i.la = add nuw i32 %.3369531, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, %i.ja
  %exitcond775.not = icmp eq i32 %.3369531, %.901
  %indvar.next1165 = add i64 %indvar1164, 1
  br i1 %exitcond775.not, label %._crit_edge535, label %bb.o, !llvm.loop !33

._crit_edge535:                                   ; preds = %._crit_edge528
  %.not404.not544.not = icmp eq i32 %.901, 0
  br i1 %.not404.not544.not, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %._crit_edge535
  %i.lb = add nuw nsw i32 %i.s, 1
  %i.lc = add nuw i32 %.901, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph549, %._crit_edge542
  %indvars.iv786 = phi i32 [ %i.lc, %.lr.ph549 ], [ %indvars.iv.next787, %._crit_edge542 ] ; 3 uses
  %indvars.iv779 = phi i32 [ 1, %.lr.ph549 ], [ %indvars.iv.next780, %._crit_edge542 ] ; 5 uses
  %.10547 = phi i32 [ %.9.lcssa, %.lr.ph549 ], [ %.11.lcssa, %._crit_edge542 ] ; 2 uses
  %.4358545 = phi i32 [ 0, %.lr.ph549 ], [ %i.nz, %._crit_edge542 ] ; 3 uses
  %i.ld = xor i32 %.4358545, -1
  %i.le = add nsw i32 %.901, %i.ld                ; 3 uses
  %i.lf = zext i32 %i.le to i64
  %i.lg = add nuw nsw i64 %i.lf, 1                ; 5 uses
  %i.lh = sext i32 %indvars.iv779 to i64
  %i.li = shl nsw i64 %i.lh, 3
  %i.lj = xor i32 %.4358545, -1
  %i.lk = add nsw i32 %.901, %i.lj
  %i.ll = add i32 %i.lk, %indvars.iv779           ; 2 uses
  %.not405537 = icmp sgt i32 %indvars.iv779, %i.ll
  br i1 %.not405537, label %._crit_edge542, label %iter.check1239

iter.check1239:                                   ; preds = %bb.p
  %i.lm = sext i32 %indvars.iv779 to i64          ; 6 uses
  %i.ln = sext i32 %.10547 to i64                 ; 7 uses
  %min.iters.check1222.a = icmp ult i32 %i.le, 3
  br i1 %min.iters.check1222.a, label %.lr.ph541.preheader, label %vector.memcheck1220

vector.memcheck1220:                              ; preds = %iter.check1239
  %i.lo = shl nsw i64 %i.ln, 3
  %i.lp = add i64 %i.lo, %i.b
  %i.lq = add i64 %i.li, %i.a
  %i.lr = sub i64 %i.lq, %i.lp
  %diff.check1221 = icmp ugt i64 %i.lr, -128
  br i1 %diff.check1221, label %.lr.ph541.preheader, label %vector.main.loop.iter.check1223

vector.main.loop.iter.check1223:                  ; preds = %vector.memcheck1220
  %min.iters.check1224 = icmp ult i32 %i.le, 15
  br i1 %min.iters.check1224, label %vec.epilog.ph1243, label %vector.ph1225

vector.ph1225:                                    ; preds = %vector.main.loop.iter.check1223
  %i.ls = and i64 %i.lg, 12
  %n.vec1226 = and i64 %i.lg, 8589934576          ; 5 uses
  %i.lt = add nsw i64 %n.vec1226, %i.lm
  %i.lu = add nsw i64 %n.vec1226, %i.ln           ; 2 uses
  %invariant.gep1673 = getelementptr [8 x i8], ptr %3, i64 %i.lm
  %invariant.gep1675 = getelementptr [8 x i8], ptr %4, i64 %i.ln
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1233, %vector.body1227 ] ; 3 uses
  %gep1674 = getelementptr [8 x i8], ptr %invariant.gep1673, i64 %index1228 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %gep1674, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %gep1674, i64 64
  %i.lx = getelementptr inbounds nuw i8, ptr %gep1674, i64 96
  %wide.load1229.a = load <4 x double>, ptr %gep1674, align 8, !tbaa !92
  %wide.load1230.a = load <4 x double>, ptr %i.lv, align 8, !tbaa !92
  %wide.load1231 = load <4 x double>, ptr %i.lw, align 8, !tbaa !92
  %wide.load1232 = load <4 x double>, ptr %i.lx, align 8, !tbaa !92
  %gep1676 = getelementptr [8 x i8], ptr %invariant.gep1675, i64 %index1228 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %gep1676, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %gep1676, i64 64
  %i.ma = getelementptr inbounds nuw i8, ptr %gep1676, i64 96
  store <4 x double> %wide.load1229.a, ptr %gep1676, align 8, !tbaa !92
  store <4 x double> %wide.load1230.a, ptr %i.ly, align 8, !tbaa !92
  store <4 x double> %wide.load1231, ptr %i.lz, align 8, !tbaa !92
  store <4 x double> %wide.load1232, ptr %i.ma, align 8, !tbaa !92
  %index.next1233 = add nuw i64 %index1228, 16    ; 2 uses
  %i.mb = icmp eq i64 %index.next1233, %n.vec1226
  br i1 %i.mb, label %middle.block1234, label %vector.body1227, !llvm.loop !34

middle.block1234:                                 ; preds = %vector.body1227
  %cmp.n1235 = icmp eq i64 %i.lg, %n.vec1226
  br i1 %cmp.n1235, label %._crit_edge542.loopexit, label %vec.epilog.iter.check1241

vec.epilog.iter.check1241:                        ; preds = %middle.block1234
  %min.epilog.iters.check1242 = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check1242, label %.lr.ph541.preheader, label %vec.epilog.ph1243, !prof !96

vec.epilog.ph1243:                                ; preds = %vector.main.loop.iter.check1223, %vec.epilog.iter.check1241
  %vec.epilog.resume.val1236 = phi i64 [ %n.vec1226, %vec.epilog.iter.check1241 ], [ 0, %vector.main.loop.iter.check1223 ]
  %n.vec1244 = and i64 %i.lg, 8589934588          ; 4 uses
  %i.mc = add nsw i64 %n.vec1244, %i.lm
end_hunk_0
begin_hunk_1_@dtfttp_:bb.a

._crit_edge542.loopexit:                          ; preds = %.lr.ph541.prol.loopexit, %.lr.ph541, %vec.epilog.middle.block1249, %middle.block1234
  %indvars.iv.next778.lcssa = phi i64 [ %i.md, %vec.epilog.middle.block1249 ], [ %i.lu, %middle.block1234 ], [ %indvars.iv.next778.lcssa1595.unr, %.lr.ph541.prol.loopexit ], [ %indvars.iv.next778.7, %.lr.ph541 ]
  %i.ny = trunc nsw i64 %indvars.iv.next778.lcssa to i32
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %._crit_edge542.loopexit, %bb.p
  %.11.lcssa = phi i32 [ %.10547, %bb.p ], [ %i.ny, %._crit_edge542.loopexit ]
  %indvars.iv.next780 = add i32 %indvars.iv779, %i.lb
  %i.nz = add nuw nsw i32 %.4358545, 1            ; 2 uses
  %indvars.iv.next787 = add i32 %indvars.iv786, %i.s
  %exitcond790.not = icmp eq i32 %i.nz, %.901
  br i1 %exitcond790.not, label %.loopexit, label %bb.p, !llvm.loop !38

bb.q:                                             ; preds = %bb.m
  %.not399.not552 = icmp sgt i32 %., 0
  br i1 %.not399.not552, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.q
  %i.oa = mul i32 %.901, %i.s
  %i.ob = sext i32 %i.oa to i64                   ; 4 uses
  %i.oc = zext nneg i32 %i.s to i64               ; 4 uses
  %wide.trip.count806 = zext nneg i32 %. to i64
  %i.od = shl nsw i64 %i.ob, 3
  %i.oe = add i64 %i.od, %i.a
  %i.of = sub i64 %i.b, %i.oe
  %i.og = mul nsw i64 %i.oc, -8
  %i.oh = add nuw nsw i64 %i.oc, 1
  br label %iter.check1273

iter.check1273:                                   ; preds = %.lr.ph557.preheader, %.loopexit1572
  %indvars.iv801 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next802, %.loopexit1572 ] ; 5 uses
  %indvars.iv794 = phi i64 [ %i.ob, %.lr.ph557.preheader ], [ %indvars.iv.next795, %.loopexit1572 ] ; 9 uses
  %.12555 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next793.lcssa, %.loopexit1572 ] ; 7 uses
  %i.oi = mul i64 %i.oh, %indvars.iv801
  %i.oj = add i64 %i.oi, %i.ob
  %smax1255 = tail call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 %i.oj)
  %i.ok = mul i64 %indvars.iv801, %i.oc
  %i.ol = add i64 %i.ok, %i.ob
  %reass.sub1576 = sub i64 %smax1255, %i.ol
  %i.om = add i64 %reass.sub1576, 1               ; 7 uses
  %i.on = add nsw i64 %indvars.iv794, %indvars.iv801
  %min.iters.check1256.a = icmp ult i64 %i.om, 4
  br i1 %min.iters.check1256.a, label %vec.epilog.scalar.ph1274.preheader, label %vector.memcheck1253

vector.memcheck1253:                              ; preds = %iter.check1273
  %i.oo = mul i64 %i.og, %indvars.iv801
  %i.op = add i64 %i.of, %i.oo
  %i.oq = shl i64 %.12555, 3
  %i.or = add i64 %i.op, %i.oq
  %i.os = add i64 %i.or, -1
  %diff.check1254 = icmp ult i64 %i.os, 127
  br i1 %diff.check1254, label %vec.epilog.scalar.ph1274.preheader, label %vector.main.loop.iter.check1257

vector.main.loop.iter.check1257:                  ; preds = %vector.memcheck1253
  %min.iters.check1258 = icmp ult i64 %i.om, 16
  br i1 %min.iters.check1258, label %vec.epilog.ph1277, label %vector.ph1259

vector.ph1259:                                    ; preds = %vector.main.loop.iter.check1257
  %i.ot = and i64 %i.om, 12
  %n.vec1260 = and i64 %i.om, -16                 ; 5 uses
  %i.ou = add i64 %indvars.iv794, %n.vec1260
  %i.ov = add i64 %.12555, %n.vec1260             ; 2 uses
  %i.ow = getelementptr [8 x i8], ptr %3, i64 %indvars.iv794
  %i.ox = getelementptr [8 x i8], ptr %4, i64 %.12555
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1267, %vector.body1261 ] ; 3 uses
  %i.oy = getelementptr [8 x i8], ptr %i.ow, i64 %index1262 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 64
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 96
  %wide.load1263.a = load <4 x double>, ptr %i.oy, align 8, !tbaa !92
  %wide.load1264.a = load <4 x double>, ptr %i.oz, align 8, !tbaa !92
  %wide.load1265 = load <4 x double>, ptr %i.pa, align 8, !tbaa !92
  %wide.load1266 = load <4 x double>, ptr %i.pb, align 8, !tbaa !92
  %i.pc = getelementptr [8 x i8], ptr %i.ox, i64 %index1262 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 96
  store <4 x double> %wide.load1263.a, ptr %i.pc, align 8, !tbaa !92
  store <4 x double> %wide.load1264.a, ptr %i.pd, align 8, !tbaa !92
  store <4 x double> %wide.load1265, ptr %i.pe, align 8, !tbaa !92
  store <4 x double> %wide.load1266, ptr %i.pf, align 8, !tbaa !92
  %index.next1267 = add nuw i64 %index1262, 16    ; 2 uses
  %i.pg = icmp eq i64 %index.next1267, %n.vec1260
  br i1 %i.pg, label %middle.block1268, label %vector.body1261, !llvm.loop !39

middle.block1268:                                 ; preds = %vector.body1261
  %cmp.n1269 = icmp eq i64 %i.om, %n.vec1260
  br i1 %cmp.n1269, label %.loopexit1572, label %vec.epilog.iter.check1275

vec.epilog.iter.check1275:                        ; preds = %middle.block1268
  %min.epilog.iters.check1276 = icmp eq i64 %i.ot, 0
  br i1 %min.epilog.iters.check1276, label %vec.epilog.scalar.ph1274.preheader, label %vec.epilog.ph1277, !prof !96

vec.epilog.ph1277:                                ; preds = %vector.main.loop.iter.check1257, %vec.epilog.iter.check1275
  %vec.epilog.resume.val1270 = phi i64 [ %n.vec1260, %vec.epilog.iter.check1275 ], [ 0, %vector.main.loop.iter.check1257 ]
  %n.vec1278 = and i64 %i.om, -4                  ; 4 uses
  %i.ph = add i64 %indvars.iv794, %n.vec1278
  %i.pi = add i64 %.12555, %n.vec1278             ; 2 uses
  %i.pj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv794
  %i.pk = getelementptr [8 x i8], ptr %4, i64 %.12555
  br label %vec.epilog.vector.body1279

vec.epilog.vector.body1279:                       ; preds = %vec.epilog.vector.body1279, %vec.epilog.ph1277
  %index1280 = phi i64 [ %vec.epilog.resume.val1270, %vec.epilog.ph1277 ], [ %index.next1282, %vec.epilog.vector.body1279 ] ; 3 uses
  %i.pl = getelementptr [8 x i8], ptr %i.pj, i64 %index1280
  %wide.load1281 = load <4 x double>, ptr %i.pl, align 8, !tbaa !92
  %i.pm = getelementptr [8 x i8], ptr %i.pk, i64 %index1280
  store <4 x double> %wide.load1281, ptr %i.pm, align 8, !tbaa !92
  %index.next1282 = add nuw i64 %index1280, 4     ; 2 uses
  %i.pn = icmp eq i64 %index.next1282, %n.vec1278
  br i1 %i.pn, label %vec.epilog.middle.block1283, label %vec.epilog.vector.body1279, !llvm.loop !40

vec.epilog.middle.block1283:                      ; preds = %vec.epilog.vector.body1279
  %cmp.n1284 = icmp eq i64 %i.om, %n.vec1278
  br i1 %cmp.n1284, label %.loopexit1572, label %vec.epilog.scalar.ph1274.preheader

vec.epilog.scalar.ph1274.preheader:               ; preds = %vector.memcheck1253, %iter.check1273, %vec.epilog.iter.check1275, %vec.epilog.middle.block1283
  %indvars.iv796.ph = phi i64 [ %indvars.iv794, %iter.check1273 ], [ %indvars.iv794, %vector.memcheck1253 ], [ %i.ou, %vec.epilog.iter.check1275 ], [ %i.ph, %vec.epilog.middle.block1283 ]
  %indvars.iv792.ph = phi i64 [ %.12555, %iter.check1273 ], [ %.12555, %vector.memcheck1253 ], [ %i.ov, %vec.epilog.iter.check1275 ], [ %i.pi, %vec.epilog.middle.block1283 ]
  br label %vec.epilog.scalar.ph1274

vec.epilog.scalar.ph1274:                         ; preds = %vec.epilog.scalar.ph1274.preheader, %vec.epilog.scalar.ph1274
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %vec.epilog.scalar.ph1274 ], [ %indvars.iv796.ph, %vec.epilog.scalar.ph1274.preheader ] ; 3 uses
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %vec.epilog.scalar.ph1274 ], [ %indvars.iv792.ph, %vec.epilog.scalar.ph1274.preheader ] ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv796
  %i.pp = load double, ptr %i.po, align 8, !tbaa !92
  %i.pq = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv792
  store double %i.pp, ptr %i.pq, align 8, !tbaa !92
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 2 uses
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, 1
  %.not402.not = icmp slt i64 %indvars.iv796, %i.on
  br i1 %.not402.not, label %vec.epilog.scalar.ph1274, label %.loopexit1572, !llvm.loop !41

.loopexit1572:                                    ; preds = %vec.epilog.scalar.ph1274, %vec.epilog.middle.block1283, %middle.block1268
  %indvars.iv.next793.lcssa = phi i64 [ %i.pi, %vec.epilog.middle.block1283 ], [ %i.ov, %middle.block1268 ], [ %indvars.iv.next793, %vec.epilog.scalar.ph1274 ] ; 2 uses
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, %i.oc
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge558, label %iter.check1273, !llvm.loop !42

._crit_edge558:                                   ; preds = %.loopexit1572, %bb.q
  %.12.lcssa = phi i64 [ 0, %bb.q ], [ %indvars.iv.next793.lcssa, %.loopexit1572 ]
  %.not400567 = icmp slt i32 %., 0
  br i1 %.not400567, label %.loopexit, label %.lr.ph571

.lr.ph571:                                        ; preds = %._crit_edge558
  %i.pr = zext nneg i32 %i.s to i64               ; 13 uses
  %i.ps = add nuw i32 %., 1
  %wide.trip.count818 = zext i32 %i.ps to i64
  %scevgep1289 = getelementptr i8, ptr %4, i64 8
  %i.pt = shl nuw nsw i64 %i.pr, 3
  %broadcast.splatinsert1310 = insertelement <4 x i64> poison, i64 %i.pr, i64 0
  %broadcast.splat1311 = shufflevector <4 x i64> %broadcast.splatinsert1310, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pu = shl nuw nsw <4 x i64> %broadcast.splat1311, splat (i64 2) ; 5 uses
  %i.pv = mul nuw nsw <4 x i64> %broadcast.splat1311, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1681 = add nuw nsw <4 x i64> %i.pu, %i.pu ; 2 uses
  %invariant.op1682 = add nuw nsw <4 x i64> %invariant.op1681, %i.pu ; 2 uses
  %invariant.op1683 = add nuw nsw <4 x i64> %invariant.op1682, %i.pu
  %broadcast.splatinsert1344 = insertelement <4 x i64> poison, i64 %i.pr, i64 0
  %broadcast.splat1345 = shufflevector <4 x i64> %broadcast.splatinsert1344, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.pw = mul nuw nsw <4 x i64> %broadcast.splat1345, <i64 0, i64 1, i64 2, i64 3>
  %i.px = shl nuw nsw i64 %i.pr, 2
  %broadcast.splatinsert1347 = insertelement <4 x i64> poison, i64 %i.px, i64 0
  %broadcast.splat1348 = shufflevector <4 x i64> %broadcast.splatinsert1347, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1336

iter.check1336:                                   ; preds = %._crit_edge565, %.lr.ph571
  %indvars.iv810 = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next811, %._crit_edge565 ] ; 18 uses
  %.14569 = phi i64 [ %.12.lcssa, %.lr.ph571 ], [ %indvars.iv.next809.lcssa, %._crit_edge565 ]
  %i.py = add nuw i64 %indvars.iv810, %i.pr       ; 2 uses
  %i.pz = add nuw i64 %indvars.iv810, 1
  %i.qa = trunc i64 %indvars.iv810 to i32
  %i.qb = add i32 %., %i.qa
  %i.qc = mul i32 %i.s, %i.qb
  %i.qd = sext i32 %i.qc to i64
  %i.qe = add i64 %i.pz, %i.qd                    ; 2 uses
  %smax1302 = tail call i64 @llvm.smax.i64(i64 %i.py, i64 %i.qe)
  %i.qf = add nuw i64 %indvars.iv810, %i.pr
  %i.qg = icmp slt i64 %i.py, %i.qe               ; 2 uses
  %umin1303 = zext i1 %i.qg to i64
  %i.qh = add i64 %i.qf, %umin1303
  %i.qi = sub i64 %smax1302, %i.qh
  %indvars817 = trunc i64 %indvars.iv810 to i32
  %i.qj = add nuw nsw i32 %., %indvars817
  %i.qk = mul nsw i32 %i.qj, %i.s
  %i.ql = sext i32 %i.qk to i64
  %i.qm = add nsw i64 %indvars.iv810, %i.ql
  %sext = shl i64 %.14569, 32                     ; 2 uses
  %i.qn = ashr exact i64 %sext, 32                ; 6 uses
  %i.qo = select i1 %i.qg, i64 2, i64 1
  %i.qp = udiv i64 %i.qi, %i.pr
  %i.qq = add i64 %i.qo, %i.qp                    ; 7 uses
  %min.iters.check1305 = icmp ult i64 %i.qq, 4
  br i1 %min.iters.check1305, label %.lr.ph564.preheader, label %vector.memcheck1287

vector.memcheck1287:                              ; preds = %iter.check1336
  %i.qr = shl nuw nsw i64 %indvars.iv810, 3
  %scevgep1294.a = getelementptr nuw i8, ptr %3, i64 %i.qr ; 5 uses
  %i.qs = add nuw i64 %indvars.iv810, %i.pr       ; 2 uses
  %i.qt = add nuw i64 %indvars.iv810, 1
  %i.qu = trunc i64 %indvars.iv810 to i32
  %i.qv = add i32 %., %i.qu
  %i.qw = mul i32 %i.s, %i.qv
  %i.qx = sext i32 %i.qw to i64
  %i.qy = add i64 %i.qt, %i.qx                    ; 2 uses
  %i.qz = icmp slt i64 %i.qs, %i.qy
  %umin1291 = zext i1 %i.qz to i64                ; 2 uses
  %i.ra = add nuw i64 %indvars.iv810, %i.pr
  %smax1290 = tail call i64 @llvm.smax.i64(i64 %i.qs, i64 %i.qy)
  %i.rb = add i64 %i.ra, %umin1291
  %i.rc = sub i64 %smax1290, %i.rb
  %i.rd = ashr exact i64 %sext, 29                ; 2 uses
  %scevgep1288 = getelementptr i8, ptr %4, i64 %i.rd
  %i.re = udiv i64 %i.rc, %i.pr
  %i.rf = add i64 %i.re, %umin1291                ; 2 uses
  %i.rg = shl i64 %i.rf, 3
  %i.rh = getelementptr i8, ptr %scevgep1289, i64 %i.rg
  %scevgep1293.a = getelementptr i8, ptr %i.rh, i64 %i.rd
  %i.ri = mul i64 %i.pt, %i.rf
  %scevgep1295 = getelementptr i8, ptr %scevgep1294.a, i64 %i.ri ; 4 uses
  %8 = icmp ult ptr %scevgep1294.a, %scevgep1295
  %umin1296 = select i1 %8, ptr %scevgep1294.a, ptr %scevgep1295
  %9 = icmp ugt ptr %scevgep1294.a, %scevgep1295
  %umax1297 = select i1 %9, ptr %scevgep1294.a, ptr %scevgep1295
  %scevgep1298 = getelementptr i8, ptr %umax1297, i64 8
  %bound01299 = icmp ult ptr %scevgep1288, %scevgep1298
  %bound11300 = icmp ult ptr %umin1296, %scevgep1293.a
  %found.conflict1301 = and i1 %bound01299, %bound11300
  br i1 %found.conflict1301, label %.lr.ph564.preheader, label %vector.main.loop.iter.check1306

vector.main.loop.iter.check1306:                  ; preds = %vector.memcheck1287
  %min.iters.check1307 = icmp ult i64 %i.qq, 16
  br i1 %min.iters.check1307, label %vec.epilog.ph1340, label %vector.ph1308

vector.ph1308:                                    ; preds = %vector.main.loop.iter.check1306
  %i.rj = and i64 %i.qq, 12
  %n.vec1309 = and i64 %i.qq, -16                 ; 5 uses
  %i.rk = mul i64 %n.vec1309, %i.pr
  %i.rl = add i64 %indvars.iv810, %i.rk           ; 2 uses
  %i.rm = add i64 %i.qn, %n.vec1309               ; 2 uses
  %broadcast.splatinsert1312 = insertelement <4 x i64> poison, i64 %indvars.iv810, i64 0
  %broadcast.splat1313 = shufflevector <4 x i64> %broadcast.splatinsert1312, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1314 = add nuw nsw <4 x i64> %broadcast.splat1313, %i.pv
  %i.rn = getelementptr [8 x i8], ptr %4, i64 %i.qn
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1308
  %index1316 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1329, %vector.body1315 ] ; 2 uses
  %vec.ind1317 = phi <4 x i64> [ %induction1314, %vector.ph1308 ], [ %vec.ind.next1330.reass, %vector.body1315 ] ; 5 uses
  %step.add1318 = add nuw nsw <4 x i64> %vec.ind1317, %i.pu
  %step.add.21319.reass = add nuw nsw <4 x i64> %vec.ind1317, %invariant.op1681
  %step.add.31320.reass = add nuw nsw <4 x i64> %vec.ind1317, %invariant.op1682
  %wide.gep1321 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1317
  %wide.gep1322 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add1318
  %wide.gep1323 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.21319.reass
  %wide.gep1324 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.31320.reass
  %wide.masked.gather1325 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1321, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1326 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1322, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1327 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1323, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1328 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1324, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %i.ro = getelementptr [8 x i8], ptr %i.rn, i64 %index1316 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 96
  store <4 x double> %wide.masked.gather1325, ptr %i.ro, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1326, ptr %i.rp, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1327, ptr %i.rq, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1328, ptr %i.rr, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1329 = add nuw i64 %index1316, 16    ; 2 uses
  %vec.ind.next1330.reass = add nuw nsw <4 x i64> %vec.ind1317, %invariant.op1683
  %i.rs = icmp eq i64 %index.next1329, %n.vec1309
  br i1 %i.rs, label %middle.block1331, label %vector.body1315, !llvm.loop !46

middle.block1331:                                 ; preds = %vector.body1315
  %cmp.n1332 = icmp eq i64 %i.qq, %n.vec1309
  br i1 %cmp.n1332, label %._crit_edge565, label %vec.epilog.iter.check1338

vec.epilog.iter.check1338:                        ; preds = %middle.block1331
  %min.epilog.iters.check1339 = icmp eq i64 %i.rj, 0
  br i1 %min.epilog.iters.check1339, label %.lr.ph564.preheader, label %vec.epilog.ph1340, !prof !96

vec.epilog.ph1340:                                ; preds = %vector.main.loop.iter.check1306, %vec.epilog.iter.check1338
  %vec.epilog.resume.val1333 = phi i64 [ %n.vec1309, %vec.epilog.iter.check1338 ], [ 0, %vector.main.loop.iter.check1306 ]
  %bc.resume.val1334 = phi i64 [ %i.rl, %vec.epilog.iter.check1338 ], [ %indvars.iv810, %vector.main.loop.iter.check1306 ]
  %n.vec1341 = and i64 %i.qq, -4                  ; 4 uses
  %i.rt = mul i64 %n.vec1341, %i.pr
  %i.ru = add i64 %indvars.iv810, %i.rt
  %i.rv = add i64 %i.qn, %n.vec1341               ; 2 uses
  %broadcast.splatinsert1342 = insertelement <4 x i64> poison, i64 %bc.resume.val1334, i64 0
  %broadcast.splat1343 = shufflevector <4 x i64> %broadcast.splatinsert1342, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1346 = add nuw nsw <4 x i64> %broadcast.splat1343, %i.pw
  %i.rw = getelementptr [8 x i8], ptr %4, i64 %i.qn
  br label %vec.epilog.vector.body1349

vec.epilog.vector.body1349:                       ; preds = %vec.epilog.vector.body1349, %vec.epilog.ph1340
  %index1350 = phi i64 [ %vec.epilog.resume.val1333, %vec.epilog.ph1340 ], [ %index.next1354, %vec.epilog.vector.body1349 ] ; 2 uses
  %vec.ind1351 = phi <4 x i64> [ %induction1346, %vec.epilog.ph1340 ], [ %vec.ind.next1355, %vec.epilog.vector.body1349 ] ; 2 uses
  %wide.gep1352 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1351
  %wide.masked.gather1353 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1352, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %i.rx = getelementptr [8 x i8], ptr %i.rw, i64 %index1350
  store <4 x double> %wide.masked.gather1353, ptr %i.rx, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1354 = add nuw i64 %index1350, 4     ; 2 uses
  %vec.ind.next1355 = add nuw nsw <4 x i64> %vec.ind1351, %broadcast.splat1348
  %i.ry = icmp eq i64 %index.next1354, %n.vec1341
  br i1 %i.ry, label %vec.epilog.middle.block1356, label %vec.epilog.vector.body1349, !llvm.loop !47

vec.epilog.middle.block1356:                      ; preds = %vec.epilog.vector.body1349
  %cmp.n1357 = icmp eq i64 %i.qq, %n.vec1341
  br i1 %cmp.n1357, label %._crit_edge565, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %vector.memcheck1287, %iter.check1336, %vec.epilog.iter.check1338, %vec.epilog.middle.block1356
  %indvars.iv812.ph = phi i64 [ %indvars.iv810, %iter.check1336 ], [ %indvars.iv810, %vector.memcheck1287 ], [ %i.rl, %vec.epilog.iter.check1338 ], [ %i.ru, %vec.epilog.middle.block1356 ]
  %indvars.iv808.ph = phi i64 [ %i.qn, %iter.check1336 ], [ %i.qn, %vector.memcheck1287 ], [ %i.rm, %vec.epilog.iter.check1338 ], [ %i.rv, %vec.epilog.middle.block1356 ]
  br label %.lr.ph564

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.lr.ph564
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph564 ], [ %indvars.iv812.ph, %.lr.ph564.preheader ] ; 2 uses
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph564 ], [ %indvars.iv808.ph, %.lr.ph564.preheader ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv812
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !92
  %i.sb = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv808
  store double %i.sa, ptr %i.sb, align 8, !tbaa !92
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, 1 ; 2 uses
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, %i.pr ; 2 uses
  %.not881 = icmp sgt i64 %indvars.iv.next813, %i.qm
  br i1 %.not881, label %._crit_edge565, label %.lr.ph564, !llvm.loop !48

._crit_edge565:                                   ; preds = %.lr.ph564, %vec.epilog.middle.block1356, %middle.block1331
  %indvars.iv.next809.lcssa = phi i64 [ %i.rv, %vec.epilog.middle.block1356 ], [ %i.rm, %middle.block1331 ], [ %indvars.iv.next809, %.lr.ph564 ]
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next811, %wide.trip.count818
  br i1 %exitcond819.not, label %.loopexit, label %iter.check1336, !llvm.loop !49

.thread423:                                       ; preds = %.thread416
  %i.sc = zext nneg i32 %.0328 to i64             ; 14 uses
  br i1 %.not379, label %.lr.ph507.preheader, label %.preheader432.preheader

.lr.ph507.preheader:                              ; preds = %.thread423
  %i.sd = add nuw nsw i32 %i.m, 1
  %ident.check1090.not = icmp ugt i32 %i.h, 1
  br label %iter.check1113

.preheader432.preheader:                          ; preds = %.thread423
  %wide.trip.count721 = zext nneg i32 %i.q to i64 ; 3 uses
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.se = add i64 %i.b, -8
  %i.sf = sub i64 %i.se, %i.a
  %i.sg = shl nuw nsw i64 %i.sc, 3
  %i.sh = sub nuw nsw i64 -8, %i.sg
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.si = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %i.sj = mul i64 %i.sh, %indvars.iv707
  %i.sk = add i64 %i.sf, %i.sj
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1040, label %._crit_edge484

iter.check1040:                                   ; preds = %.preheader432
  %i.sl = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1024 = icmp ult i64 %i.si, 4
  br i1 %min.iters.check1024, label %.lr.ph483.preheader, label %vector.memcheck1022

vector.memcheck1022:                              ; preds = %iter.check1040
  %i.sm = shl nsw i64 %i.sl, 3
  %i.sn = add i64 %i.sk, %i.sm
  %i.so = add i64 %i.sn, -1
  %diff.check1023 = icmp ult i64 %i.so, 127
  br i1 %diff.check1023, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1025

vector.main.loop.iter.check1025:                  ; preds = %vector.memcheck1022
  %min.iters.check1026 = icmp ult i64 %i.si, 16
  br i1 %min.iters.check1026, label %vec.epilog.ph1044, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check1025
  %i.sp = and i64 %i.si, 12
  %n.vec1028 = and i64 %i.si, -16                 ; 5 uses
  %i.sq = add i64 %indvars.iv707, %n.vec1028
  %i.sr = add i64 %n.vec1028, %i.sl               ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1655.a = getelementptr [8 x i8], ptr %4, i64 %i.sl
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1035, %vector.body1029 ] ; 3 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %index1030 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 40
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 72
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 104
  %wide.load1031 = load <4 x double>, ptr %i.su, align 8, !tbaa !92
  %wide.load1032 = load <4 x double>, ptr %i.sv, align 8, !tbaa !92
  %wide.load1033 = load <4 x double>, ptr %i.sw, align 8, !tbaa !92
  %wide.load1034 = load <4 x double>, ptr %i.sx, align 8, !tbaa !92
  %gep1656.a = getelementptr [8 x i8], ptr %invariant.gep1655.a, i64 %index1030 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %gep1656.a, i64 32
  %i.sz = getelementptr inbounds nuw i8, ptr %gep1656.a, i64 64
  %i.ta = getelementptr inbounds nuw i8, ptr %gep1656.a, i64 96
  store <4 x double> %wide.load1031, ptr %gep1656.a, align 8, !tbaa !92
  store <4 x double> %wide.load1032, ptr %i.sy, align 8, !tbaa !92
  store <4 x double> %wide.load1033, ptr %i.sz, align 8, !tbaa !92
  store <4 x double> %wide.load1034, ptr %i.ta, align 8, !tbaa !92
  %index.next1035 = add nuw i64 %index1030, 16    ; 2 uses
  %i.tb = icmp eq i64 %index.next1035, %n.vec1028
  br i1 %i.tb, label %middle.block1036, label %vector.body1029, !llvm.loop !50

middle.block1036:                                 ; preds = %vector.body1029
  %cmp.n1037 = icmp eq i64 %i.si, %n.vec1028
  br i1 %cmp.n1037, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1042

vec.epilog.iter.check1042:                        ; preds = %middle.block1036
  %min.epilog.iters.check1043 = icmp eq i64 %i.sp, 0
  br i1 %min.epilog.iters.check1043, label %.lr.ph483.preheader, label %vec.epilog.ph1044, !prof !96

vec.epilog.ph1044:                                ; preds = %vector.main.loop.iter.check1025, %vec.epilog.iter.check1042
  %vec.epilog.resume.val1038 = phi i64 [ %n.vec1028, %vec.epilog.iter.check1042 ], [ 0, %vector.main.loop.iter.check1025 ]
  %n.vec1045 = and i64 %i.si, -4                  ; 4 uses
  %i.tc = add i64 %indvars.iv707, %n.vec1045
  %i.td = add i64 %n.vec1045, %i.sl               ; 2 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1657.a = getelementptr [8 x i8], ptr %4, i64 %i.sl
  br label %vec.epilog.vector.body1046
end_hunk_1
begin_hunk_2_@dtfttp_:bb.a
  %indvars.iv739 = phi i64 [ %indvars.iv.next740.7, %vec.epilog.scalar.ph1114 ], [ %indvars.iv739.unr, %vec.epilog.scalar.ph1114.prol.loopexit ] ; 2 uses
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.7, %vec.epilog.scalar.ph1114 ], [ %indvars.iv735.unr, %vec.epilog.scalar.ph1114.prol.loopexit ] ; 9 uses
  %i.wq = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv739
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !92
  %i.ws = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv735
  store double %i.wr, ptr %i.ws, align 8, !tbaa !92
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, %i.sc ; 2 uses
  %i.wt = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !92
  %i.wv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.ww = getelementptr i8, ptr %i.wv, i64 8
  store double %i.wu, ptr %i.ww, align 8, !tbaa !92
  %indvars.iv.next740.1 = add nsw i64 %indvars.iv.next740, %i.sc ; 2 uses
  %i.wx = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.1
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !92
  %i.wz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xa = getelementptr i8, ptr %i.wz, i64 16
  store double %i.wy, ptr %i.xa, align 8, !tbaa !92
  %indvars.iv.next740.2 = add nsw i64 %indvars.iv.next740.1, %i.sc ; 2 uses
  %i.xb = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.2
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !92
  %i.xd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xe = getelementptr i8, ptr %i.xd, i64 24
  store double %i.xc, ptr %i.xe, align 8, !tbaa !92
  %indvars.iv.next740.3 = add nsw i64 %indvars.iv.next740.2, %i.sc ; 2 uses
  %i.xf = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.3
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !92
  %i.xh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xi = getelementptr i8, ptr %i.xh, i64 32
  store double %i.xg, ptr %i.xi, align 8, !tbaa !92
  %indvars.iv.next740.4 = add nsw i64 %indvars.iv.next740.3, %i.sc ; 2 uses
  %i.xj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.4
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !92
  %i.xl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xm = getelementptr i8, ptr %i.xl, i64 40
  store double %i.xk, ptr %i.xm, align 8, !tbaa !92
  %indvars.iv.next740.5 = add nsw i64 %indvars.iv.next740.4, %i.sc ; 2 uses
  %i.xn = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.5
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !92
  %i.xp = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xq = getelementptr i8, ptr %i.xp, i64 48
  store double %i.xo, ptr %i.xq, align 8, !tbaa !92
  %indvars.iv.next740.6 = add nsw i64 %indvars.iv.next740.5, %i.sc ; 2 uses
  %i.xr = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.6
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !92
  %i.xt = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xu = getelementptr i8, ptr %i.xt, i64 56
  store double %i.xs, ptr %i.xu, align 8, !tbaa !92
  %indvars.iv.next736.7 = add nsw i64 %indvars.iv735, 8 ; 2 uses
  %indvars.iv.next740.7 = add nsw i64 %indvars.iv.next740.6, %i.sc
  %lftr.wideiv746.7 = trunc i64 %indvars.iv.next736.7 to i32
  %exitcond747.not.7 = icmp eq i32 %i.vu, %lftr.wideiv746.7
  br i1 %exitcond747.not.7, label %.loopexit1573, label %vec.epilog.scalar.ph1114, !llvm.loop !60

.loopexit1573:                                    ; preds = %vec.epilog.scalar.ph1114.prol.loopexit, %vec.epilog.scalar.ph1114, %vec.epilog.middle.block1123, %middle.block1109
  %indvars.iv.next745 = add nuw i32 %indvars.iv744, 1
  %exitcond748.not = icmp eq i32 %indvars.iv744, %i.q
  %indvar.next1093 = add i32 %indvar1092, 1
  %indvar.next1096 = add i64 %indvar1095, 1
  %loop-unroll.iv.next1620 = add i32 %loop-unroll.iv1619, %i.vj
  br i1 %exitcond748.not, label %._crit_edge508, label %iter.check1113, !llvm.loop !61

._crit_edge508:                                   ; preds = %.loopexit1573
  %.not392.not517.not = icmp eq i32 %i.h, 0
  br i1 %.not392.not517.not, label %.loopexit, label %.lr.ph522.preheader

.lr.ph522.preheader:                              ; preds = %._crit_edge508
  %i.xv = zext nneg i32 %.0328 to i64
  %i.xw = zext nneg i32 %i.q to i64               ; 2 uses
  %wide.trip.count764 = zext nneg i32 %i.h to i64
  %i.xx = sext i32 %i.vu to i64
  %i.xy = sub i64 %i.b, %i.a
  %i.xz = mul nsw i64 %i.sc, -8
  %i.ya = add nuw nsw i64 %i.sc, 1
  br label %iter.check1147

iter.check1147:                                   ; preds = %._crit_edge515, %.lr.ph522.preheader
  %indvar1128 = phi i64 [ %indvar.next1129, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 4 uses
  %indvars.iv759 = phi i64 [ %indvars.iv.next760, %._crit_edge515 ], [ %i.xw, %.lr.ph522.preheader ] ; 2 uses
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 9 uses
  %.22520 = phi i64 [ %indvars.iv.next751.lcssa, %._crit_edge515 ], [ %i.xx, %.lr.ph522.preheader ] ; 7 uses
  %i.yb = mul i64 %i.ya, %indvar1128
  %i.yc = add i64 %i.yb, %i.xw
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yc, i64 %indvars.iv752)
  %i.yd = mul i64 %indvar1128, %i.sc
  %reass.sub1575 = sub i64 %umax, %i.yd
  %i.ye = add i64 %reass.sub1575, 1               ; 7 uses
  %i.yf = add nuw nsw i64 %indvars.iv752, %indvars.iv759
  %min.iters.check1131 = icmp ult i64 %i.ye, 4
  br i1 %min.iters.check1131, label %.lr.ph514.preheader, label %vector.memcheck1127

vector.memcheck1127:                              ; preds = %iter.check1147
  %i.yg = mul i64 %i.xz, %indvar1128
  %i.yh = add i64 %i.xy, %i.yg
  %i.yi = shl i64 %.22520, 3
  %i.yj = add i64 %i.yh, %i.yi
  %i.yk = add i64 %i.yj, -1
  %diff.check1130 = icmp ult i64 %i.yk, 127
  br i1 %diff.check1130, label %.lr.ph514.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %vector.memcheck1127
  %min.iters.check1133 = icmp ult i64 %i.ye, 16
  br i1 %min.iters.check1133, label %vec.epilog.ph1151, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %i.yl = and i64 %i.ye, 12
  %n.vec1135 = and i64 %i.ye, -16                 ; 5 uses
  %i.ym = add i64 %indvars.iv752, %n.vec1135
  %i.yn = add i64 %.22520, %n.vec1135             ; 2 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.yp = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1134
  %index1137 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1142, %vector.body1136 ] ; 3 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %index1137 ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 96
  %wide.load1138 = load <4 x double>, ptr %i.yq, align 8, !tbaa !92
  %wide.load1139 = load <4 x double>, ptr %i.yr, align 8, !tbaa !92
  %wide.load1140 = load <4 x double>, ptr %i.ys, align 8, !tbaa !92
  %wide.load1141 = load <4 x double>, ptr %i.yt, align 8, !tbaa !92
  %i.yu = getelementptr [8 x i8], ptr %i.yp, i64 %index1137 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 64
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 96
  store <4 x double> %wide.load1138, ptr %i.yu, align 8, !tbaa !92
  store <4 x double> %wide.load1139, ptr %i.yv, align 8, !tbaa !92
  store <4 x double> %wide.load1140, ptr %i.yw, align 8, !tbaa !92
  store <4 x double> %wide.load1141, ptr %i.yx, align 8, !tbaa !92
  %index.next1142 = add nuw i64 %index1137, 16    ; 2 uses
  %i.yy = icmp eq i64 %index.next1142, %n.vec1135
  br i1 %i.yy, label %middle.block1143, label %vector.body1136, !llvm.loop !62

middle.block1143:                                 ; preds = %vector.body1136
  %cmp.n1144 = icmp eq i64 %i.ye, %n.vec1135
  br i1 %cmp.n1144, label %._crit_edge515, label %vec.epilog.iter.check1149

vec.epilog.iter.check1149:                        ; preds = %middle.block1143
  %min.epilog.iters.check1150 = icmp eq i64 %i.yl, 0
  br i1 %min.epilog.iters.check1150, label %.lr.ph514.preheader, label %vec.epilog.ph1151, !prof !96

vec.epilog.ph1151:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1149
  %vec.epilog.resume.val1145 = phi i64 [ %n.vec1135, %vec.epilog.iter.check1149 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1152 = and i64 %i.ye, -4                  ; 4 uses
  %i.yz = add i64 %indvars.iv752, %n.vec1152
  %i.za = add i64 %.22520, %n.vec1152             ; 2 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.zc = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vec.epilog.vector.body1153

vec.epilog.vector.body1153:                       ; preds = %vec.epilog.vector.body1153, %vec.epilog.ph1151
  %index1154 = phi i64 [ %vec.epilog.resume.val1145, %vec.epilog.ph1151 ], [ %index.next1156, %vec.epilog.vector.body1153 ] ; 3 uses
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %index1154
  %wide.load1155 = load <4 x double>, ptr %i.zd, align 8, !tbaa !92
  %i.ze = getelementptr [8 x i8], ptr %i.zc, i64 %index1154
  store <4 x double> %wide.load1155, ptr %i.ze, align 8, !tbaa !92
  %index.next1156 = add nuw i64 %index1154, 4     ; 2 uses
  %i.zf = icmp eq i64 %index.next1156, %n.vec1152
  br i1 %i.zf, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1153, !llvm.loop !63

vec.epilog.middle.block1157:                      ; preds = %vec.epilog.vector.body1153
  %cmp.n1158 = icmp eq i64 %i.ye, %n.vec1152
  br i1 %cmp.n1158, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %vector.memcheck1127, %iter.check1147, %vec.epilog.iter.check1149, %vec.epilog.middle.block1157
  %indvars.iv754.ph = phi i64 [ %indvars.iv752, %iter.check1147 ], [ %indvars.iv752, %vector.memcheck1127 ], [ %i.ym, %vec.epilog.iter.check1149 ], [ %i.yz, %vec.epilog.middle.block1157 ]
  %indvars.iv750.ph = phi i64 [ %.22520, %iter.check1147 ], [ %.22520, %vector.memcheck1127 ], [ %i.yn, %vec.epilog.iter.check1149 ], [ %i.za, %vec.epilog.middle.block1157 ]
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %.lr.ph514
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph514 ], [ %indvars.iv754.ph, %.lr.ph514.preheader ] ; 3 uses
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %.lr.ph514 ], [ %indvars.iv750.ph, %.lr.ph514.preheader ] ; 2 uses
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv754
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !92
  %i.zi = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv750
  store double %i.zh, ptr %i.zi, align 8, !tbaa !92
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %.not393.not = icmp samesign ult i64 %indvars.iv754, %i.yf
  br i1 %.not393.not, label %.lr.ph514, label %._crit_edge515, !llvm.loop !64

._crit_edge515:                                   ; preds = %.lr.ph514, %vec.epilog.middle.block1157, %middle.block1143
  %indvars.iv.next751.lcssa = phi i64 [ %i.za, %vec.epilog.middle.block1157 ], [ %i.yn, %middle.block1143 ], [ %indvars.iv.next751, %.lr.ph514 ]
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, %i.xv
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count764
  %indvar.next1129 = add i64 %indvar1128, 1
  br i1 %exitcond765.not, label %.loopexit, label %iter.check1147, !llvm.loop !65

bb.v:                                             ; preds = %bb.j
  br i1 %.not379, label %.lr.ph605.preheader, label %.lr.ph582

.lr.ph582:                                        ; preds = %bb.v
  %i.zj = mul nuw nsw i32 %i.s, %.0328            ; 2 uses
  %i.zk = add nuw nsw i32 %i.s, 1
  %i.zl = zext nneg i32 %i.s to i64               ; 11 uses
  %i.zm = zext nneg i32 %i.zj to i64              ; 5 uses
  %scevgep1362.a = getelementptr i8, ptr %4, i64 8
  %i.zn = shl nuw nsw i64 %i.zl, 3
  %broadcast.splatinsert1381 = insertelement <4 x i64> poison, i64 %i.zl, i64 0
  %broadcast.splat1382 = shufflevector <4 x i64> %broadcast.splatinsert1381, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zo = shl nuw nsw <4 x i64> %broadcast.splat1382, splat (i64 2) ; 5 uses
  %i.zp = mul nuw nsw <4 x i64> %broadcast.splat1382, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1684 = add <4 x i64> %i.zo, %i.zo  ; 2 uses
  %invariant.op1685 = add <4 x i64> %invariant.op1684, %i.zo ; 2 uses
  %invariant.op1688 = add <4 x i64> %invariant.op1685, %i.zo
  %broadcast.splatinsert1415 = insertelement <4 x i64> poison, i64 %i.zl, i64 0
  %broadcast.splat1416 = shufflevector <4 x i64> %broadcast.splatinsert1415, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zq = mul nuw nsw <4 x i64> %broadcast.splat1416, <i64 0, i64 1, i64 2, i64 3>
  %i.zr = shl nuw nsw i64 %i.zl, 2
  %broadcast.splatinsert1418 = insertelement <4 x i64> poison, i64 %i.zr, i64 0
  %broadcast.splat1419 = shufflevector <4 x i64> %broadcast.splatinsert1418, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.w

.loopexit427.loopexit:                            ; preds = %.lr.ph576, %vec.epilog.middle.block1427, %middle.block1402
  %indvars.iv.next821.lcssa = phi i64 [ %i.abd, %vec.epilog.middle.block1427 ], [ %i.aaw, %middle.block1402 ], [ %indvars.iv.next821, %.lr.ph576 ]
  %i.zs = trunc nsw i64 %indvars.iv.next821.lcssa to i32
  br label %.loopexit427

.loopexit427:                                     ; preds = %.loopexit427.loopexit, %bb.w
  %.25.lcssa = phi i32 [ %.24580, %bb.w ], [ %i.zs, %.loopexit427.loopexit ] ; 2 uses
  %indvars.iv.next823 = add i32 %indvars.iv822, %i.zk
  %exitcond829.not = icmp eq i32 %i.zz, %i.q
  br i1 %exitcond829.not, label %.lr.ph597, label %bb.w, !llvm.loop !66

bb.w:                                             ; preds = %.lr.ph582, %.loopexit427
  %indvars.iv822 = phi i32 [ %i.s, %.lr.ph582 ], [ %indvars.iv.next823, %.loopexit427 ] ; 4 uses
  %.24580 = phi i32 [ 0, %.lr.ph582 ], [ %.25.lcssa, %.loopexit427 ] ; 2 uses
  %.8374579 = phi i32 [ 0, %.lr.ph582 ], [ %i.zz, %.loopexit427 ] ; 2 uses
  %i.zt = sext i32 %indvars.iv822 to i64          ; 2 uses
  %i.zu = add nsw i64 %i.zl, %i.zt                ; 3 uses
  %smax1363 = tail call i64 @llvm.smax.i64(i64 %i.zu, i64 %i.zm)
  %i.zv = icmp slt i64 %i.zu, %i.zm
  %umin1364 = zext i1 %i.zv to i64                ; 2 uses
  %i.zw = add nsw i64 %i.zu, %umin1364
  %i.zx = sub i64 %smax1363, %i.zw
  %i.zy = shl nsw i64 %i.zt, 3                    ; 2 uses
  %scevgep1367 = getelementptr i8, ptr %3, i64 %i.zy ; 4 uses
  %i.zz = add nuw nsw i32 %.8374579, 1            ; 3 uses
  %i.aaa = mul nuw nsw i32 %i.zz, %i.s
  %i.aab = add nuw nsw i32 %i.aaa, %.8374579
  %i.aac = icmp slt i32 %i.aab, %i.zj
  br i1 %i.aac, label %iter.check1407, label %.loopexit427

iter.check1407:                                   ; preds = %bb.w
  %i.aad = sext i32 %indvars.iv822 to i64
  %i.aae = add nsw i64 %i.zl, %i.aad              ; 3 uses
  %i.aaf = icmp slt i64 %i.aae, %i.zm             ; 2 uses
  %umin1375 = zext i1 %i.aaf to i64
  %smax1374 = tail call i64 @llvm.smax.i64(i64 %i.aae, i64 %i.zm)
  %i.aag = add nsw i64 %i.aae, %umin1375
  %i.aah = sub i64 %smax1374, %i.aag
  %i.aai = sext i32 %indvars.iv822 to i64         ; 6 uses
  %i.aaj = sext i32 %.24580 to i64                ; 8 uses
  %i.aak = select i1 %i.aaf, i64 2, i64 1
  %i.aal = udiv i64 %i.aah, %i.zl
  %i.aam = add i64 %i.aak, %i.aal                 ; 7 uses
  %min.iters.check1376 = icmp ult i64 %i.aam, 4
  br i1 %min.iters.check1376, label %.lr.ph576.preheader, label %vector.memcheck1360

vector.memcheck1360:                              ; preds = %iter.check1407
  %i.aan = shl nsw i64 %i.aaj, 3
  %scevgep1361.a = getelementptr i8, ptr %4, i64 %i.aan
  %i.aao = udiv i64 %i.zx, %i.zl
  %i.aap = add i64 %i.aao, %umin1364              ; 2 uses
  %i.aaq = add i64 %i.aap, %i.aaj
  %i.aar = shl i64 %i.aaq, 3
  %scevgep1365 = getelementptr i8, ptr %scevgep1362.a, i64 %i.aar
  %i.aas = mul i64 %i.zn, %i.aap
  %10 = getelementptr i8, ptr %3, i64 %i.aas
  %scevgep1366 = getelementptr i8, ptr %10, i64 %i.zy ; 4 uses
  %11 = icmp ult ptr %scevgep1366, %scevgep1367
  %umin1368 = select i1 %11, ptr %scevgep1366, ptr %scevgep1367
  %12 = icmp ugt ptr %scevgep1366, %scevgep1367
  %umax1369 = select i1 %12, ptr %scevgep1366, ptr %scevgep1367
  %scevgep1370 = getelementptr i8, ptr %umax1369, i64 8
  %bound01371 = icmp ult ptr %scevgep1361.a, %scevgep1370
  %bound11372 = icmp ult ptr %umin1368, %scevgep1365
  %found.conflict1373 = and i1 %bound01371, %bound11372
  br i1 %found.conflict1373, label %.lr.ph576.preheader, label %vector.main.loop.iter.check1377

vector.main.loop.iter.check1377:                  ; preds = %vector.memcheck1360
  %min.iters.check1378 = icmp ult i64 %i.aam, 16
  br i1 %min.iters.check1378, label %vec.epilog.ph1411, label %vector.ph1379

vector.ph1379:                                    ; preds = %vector.main.loop.iter.check1377
  %i.aat = and i64 %i.aam, 12
  %n.vec1380 = and i64 %i.aam, -16                ; 5 uses
  %i.aau = mul i64 %n.vec1380, %i.zl
  %i.aav = add i64 %i.aau, %i.aai                 ; 2 uses
  %i.aaw = add i64 %n.vec1380, %i.aaj             ; 2 uses
  %broadcast.splatinsert1383 = insertelement <4 x i64> poison, i64 %i.aai, i64 0
  %broadcast.splat1384 = shufflevector <4 x i64> %broadcast.splatinsert1383, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1385 = add nsw <4 x i64> %broadcast.splat1384, %i.zp
  %invariant.gep1686 = getelementptr [8 x i8], ptr %4, i64 %i.aaj
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1379
  %index1387 = phi i64 [ 0, %vector.ph1379 ], [ %index.next1400, %vector.body1386 ] ; 2 uses
  %vec.ind1388 = phi <4 x i64> [ %induction1385, %vector.ph1379 ], [ %vec.ind.next1401.reass, %vector.body1386 ] ; 5 uses
  %step.add1389 = add nsw <4 x i64> %vec.ind1388, %i.zo
  %step.add.21390.reass = add <4 x i64> %vec.ind1388, %invariant.op1684
  %step.add.31391.reass = add <4 x i64> %vec.ind1388, %invariant.op1685
  %wide.gep1392 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1388
  %wide.gep1393 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add1389
  %wide.gep1394 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.21390.reass
  %wide.gep1395 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.31391.reass
  %wide.masked.gather1396 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1392, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1397 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1393, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1398 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1394, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1399 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1395, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %gep1687 = getelementptr [8 x i8], ptr %invariant.gep1686, i64 %index1387 ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %gep1687, i64 32
  %i.aay = getelementptr inbounds nuw i8, ptr %gep1687, i64 64
  %i.aaz = getelementptr inbounds nuw i8, ptr %gep1687, i64 96
  store <4 x double> %wide.masked.gather1396, ptr %gep1687, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1397, ptr %i.aax, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1398, ptr %i.aay, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1399, ptr %i.aaz, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1400 = add nuw i64 %index1387, 16    ; 2 uses
  %vec.ind.next1401.reass = add <4 x i64> %vec.ind1388, %invariant.op1688
  %i.aba = icmp eq i64 %index.next1400, %n.vec1380
  br i1 %i.aba, label %middle.block1402, label %vector.body1386, !llvm.loop !70

middle.block1402:                                 ; preds = %vector.body1386
  %cmp.n1403 = icmp eq i64 %i.aam, %n.vec1380
  br i1 %cmp.n1403, label %.loopexit427.loopexit, label %vec.epilog.iter.check1409

vec.epilog.iter.check1409:                        ; preds = %middle.block1402
  %min.epilog.iters.check1410 = icmp eq i64 %i.aat, 0
  br i1 %min.epilog.iters.check1410, label %.lr.ph576.preheader, label %vec.epilog.ph1411, !prof !96

vec.epilog.ph1411:                                ; preds = %vector.main.loop.iter.check1377, %vec.epilog.iter.check1409
  %vec.epilog.resume.val1404 = phi i64 [ %n.vec1380, %vec.epilog.iter.check1409 ], [ 0, %vector.main.loop.iter.check1377 ]
  %bc.resume.val1405 = phi i64 [ %i.aav, %vec.epilog.iter.check1409 ], [ %i.aai, %vector.main.loop.iter.check1377 ]
  %n.vec1412 = and i64 %i.aam, -4                 ; 4 uses
  %i.abb = mul i64 %n.vec1412, %i.zl
  %i.abc = add i64 %i.abb, %i.aai
  %i.abd = add i64 %n.vec1412, %i.aaj             ; 2 uses
  %broadcast.splatinsert1413 = insertelement <4 x i64> poison, i64 %bc.resume.val1405, i64 0
  %broadcast.splat1414 = shufflevector <4 x i64> %broadcast.splatinsert1413, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1417 = add nsw <4 x i64> %broadcast.splat1414, %i.zq
  %invariant.gep1689.a = getelementptr [8 x i8], ptr %4, i64 %i.aaj
  br label %vec.epilog.vector.body1420

vec.epilog.vector.body1420:                       ; preds = %vec.epilog.vector.body1420, %vec.epilog.ph1411
  %index1421 = phi i64 [ %vec.epilog.resume.val1404, %vec.epilog.ph1411 ], [ %index.next1425, %vec.epilog.vector.body1420 ] ; 2 uses
  %vec.ind1422 = phi <4 x i64> [ %induction1417, %vec.epilog.ph1411 ], [ %vec.ind.next1426, %vec.epilog.vector.body1420 ] ; 2 uses
  %wide.gep1423 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1422
  %wide.masked.gather1424 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1423, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %gep1690.a = getelementptr [8 x i8], ptr %invariant.gep1689.a, i64 %index1421
  store <4 x double> %wide.masked.gather1424, ptr %gep1690.a, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1425 = add nuw i64 %index1421, 4     ; 2 uses
  %vec.ind.next1426 = add nsw <4 x i64> %vec.ind1422, %broadcast.splat1419
  %i.abe = icmp eq i64 %index.next1425, %n.vec1412
  br i1 %i.abe, label %vec.epilog.middle.block1427, label %vec.epilog.vector.body1420, !llvm.loop !71

vec.epilog.middle.block1427:                      ; preds = %vec.epilog.vector.body1420
  %cmp.n1428 = icmp eq i64 %i.aam, %n.vec1412
  br i1 %cmp.n1428, label %.loopexit427.loopexit, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %vector.memcheck1360, %iter.check1407, %vec.epilog.iter.check1409, %vec.epilog.middle.block1427
  %indvars.iv824.ph = phi i64 [ %i.aai, %iter.check1407 ], [ %i.aai, %vector.memcheck1360 ], [ %i.aav, %vec.epilog.iter.check1409 ], [ %i.abc, %vec.epilog.middle.block1427 ]
  %indvars.iv820.ph = phi i64 [ %i.aaj, %iter.check1407 ], [ %i.aaj, %vector.memcheck1360 ], [ %i.aaw, %vec.epilog.iter.check1409 ], [ %i.abd, %vec.epilog.middle.block1427 ]
  br label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %.lr.ph576
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph576 ], [ %indvars.iv824.ph, %.lr.ph576.preheader ] ; 2 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %.lr.ph576 ], [ %indvars.iv820.ph, %.lr.ph576.preheader ] ; 2 uses
  %i.abf = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv824
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !92
  %i.abh = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv820
  store double %i.abg, ptr %i.abh, align 8, !tbaa !92
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1 ; 2 uses
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, %i.zl ; 2 uses
  %i.abi = icmp slt i64 %indvars.iv.next825, %i.zm
  br i1 %i.abi, label %.lr.ph576, label %.loopexit427.loopexit, !llvm.loop !72

.lr.ph597:                                        ; preds = %.loopexit427
  %i.abj = add nuw nsw i32 %i.s, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph597, %._crit_edge590
  %indvars.iv840 = phi i32 [ %i.q, %.lr.ph597 ], [ %indvars.iv.next841, %._crit_edge590 ] ; 3 uses
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 5 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.aeg, %._crit_edge590 ] ; 3 uses
  %i.abk = xor i32 %.10364593, -1
  %i.abl = add nsw i32 %i.q, %i.abk               ; 3 uses
  %i.abm = zext i32 %i.abl to i64
  %i.abn = add nuw nsw i64 %i.abm, 1              ; 5 uses
  %i.abo = sext i32 %indvars.iv833 to i64
  %i.abp = shl nsw i64 %i.abo, 3
  %i.abq = xor i32 %.10364593, -1
  %i.abr = add nsw i32 %i.q, %i.abq
  %i.abs = add i32 %i.abr, %indvars.iv833         ; 2 uses
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.abs
  br i1 %.not389585, label %._crit_edge590, label %iter.check1450

iter.check1450:                                   ; preds = %bb.x
  %i.abt = sext i32 %indvars.iv833 to i64         ; 6 uses
  %i.abu = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1433 = icmp ult i32 %i.abl, 3
  br i1 %min.iters.check1433, label %.lr.ph589.preheader, label %vector.memcheck1431

vector.memcheck1431:                              ; preds = %iter.check1450
  %i.abv = shl nsw i64 %i.abu, 3
  %i.abw = add i64 %i.abv, %i.b
  %i.abx = add i64 %i.abp, %i.a
  %i.aby = sub i64 %i.abx, %i.abw
  %diff.check1432 = icmp ugt i64 %i.aby, -128
  br i1 %diff.check1432, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1434

vector.main.loop.iter.check1434:                  ; preds = %vector.memcheck1431
  %min.iters.check1435 = icmp ult i32 %i.abl, 15
  br i1 %min.iters.check1435, label %vec.epilog.ph1454, label %vector.ph1436

vector.ph1436:                                    ; preds = %vector.main.loop.iter.check1434
  %i.abz = and i64 %i.abn, 12
  %n.vec1437 = and i64 %i.abn, 8589934576         ; 5 uses
  %i.aca = add nsw i64 %n.vec1437, %i.abt
  %i.acb = add nsw i64 %n.vec1437, %i.abu         ; 2 uses
  %invariant.gep1691 = getelementptr [8 x i8], ptr %3, i64 %i.abt
  %invariant.gep1693 = getelementptr [8 x i8], ptr %4, i64 %i.abu
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1444, %vector.body1438 ] ; 3 uses
  %gep1692 = getelementptr [8 x i8], ptr %invariant.gep1691, i64 %index1439 ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %gep1692, i64 32
  %i.acd = getelementptr inbounds nuw i8, ptr %gep1692, i64 64
  %i.ace = getelementptr inbounds nuw i8, ptr %gep1692, i64 96
  %wide.load1440 = load <4 x double>, ptr %gep1692, align 8, !tbaa !92
  %wide.load1441 = load <4 x double>, ptr %i.acc, align 8, !tbaa !92
  %wide.load1442 = load <4 x double>, ptr %i.acd, align 8, !tbaa !92
  %wide.load1443 = load <4 x double>, ptr %i.ace, align 8, !tbaa !92
  %gep1694 = getelementptr [8 x i8], ptr %invariant.gep1693, i64 %index1439 ; 4 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %gep1694, i64 32
  %i.acg = getelementptr inbounds nuw i8, ptr %gep1694, i64 64
  %i.ach = getelementptr inbounds nuw i8, ptr %gep1694, i64 96
  store <4 x double> %wide.load1440, ptr %gep1694, align 8, !tbaa !92
  store <4 x double> %wide.load1441, ptr %i.acf, align 8, !tbaa !92
  store <4 x double> %wide.load1442, ptr %i.acg, align 8, !tbaa !92
  store <4 x double> %wide.load1443, ptr %i.ach, align 8, !tbaa !92
  %index.next1444 = add nuw i64 %index1439, 16    ; 2 uses
  %i.aci = icmp eq i64 %index.next1444, %n.vec1437
  br i1 %i.aci, label %middle.block1445, label %vector.body1438, !llvm.loop !73

middle.block1445:                                 ; preds = %vector.body1438
  %cmp.n1446 = icmp eq i64 %i.abn, %n.vec1437
  br i1 %cmp.n1446, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1452

vec.epilog.iter.check1452:                        ; preds = %middle.block1445
  %min.epilog.iters.check1453 = icmp eq i64 %i.abz, 0
  br i1 %min.epilog.iters.check1453, label %.lr.ph589.preheader, label %vec.epilog.ph1454, !prof !96

vec.epilog.ph1454:                                ; preds = %vector.main.loop.iter.check1434, %vec.epilog.iter.check1452
  %vec.epilog.resume.val1447 = phi i64 [ %n.vec1437, %vec.epilog.iter.check1452 ], [ 0, %vector.main.loop.iter.check1434 ]
  %n.vec1455 = and i64 %i.abn, 8589934588         ; 4 uses
  %i.acj = add nsw i64 %n.vec1455, %i.abt
  %i.ack = add nsw i64 %n.vec1455, %i.abu         ; 2 uses
  %invariant.gep1695 = getelementptr [8 x i8], ptr %3, i64 %i.abt
  %invariant.gep1697 = getelementptr [8 x i8], ptr %4, i64 %i.abu
  br label %vec.epilog.vector.body1456

vec.epilog.vector.body1456:                       ; preds = %vec.epilog.vector.body1456, %vec.epilog.ph1454
  %index1457 = phi i64 [ %vec.epilog.resume.val1447, %vec.epilog.ph1454 ], [ %index.next1459, %vec.epilog.vector.body1456 ] ; 3 uses
  %gep1696 = getelementptr [8 x i8], ptr %invariant.gep1695, i64 %index1457
  %wide.load1458 = load <4 x double>, ptr %gep1696, align 8, !tbaa !92
  %gep1698 = getelementptr [8 x i8], ptr %invariant.gep1697, i64 %index1457
  store <4 x double> %wide.load1458, ptr %gep1698, align 8, !tbaa !92
  %index.next1459 = add nuw i64 %index1457, 4     ; 2 uses
  %i.acl = icmp eq i64 %index.next1459, %n.vec1455
  br i1 %i.acl, label %vec.epilog.middle.block1460, label %vec.epilog.vector.body1456, !llvm.loop !74

vec.epilog.middle.block1460:                      ; preds = %vec.epilog.vector.body1456
  %cmp.n1461 = icmp eq i64 %i.abn, %n.vec1455
  br i1 %cmp.n1461, label %._crit_edge590.loopexit, label %.lr.ph589.preheader
end_hunk_2
begin_hunk_3_@dtfttp_:bb.a
  %i.aef = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.aef, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.abj
  %i.aeg = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.aeg, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !77

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.aeh = add nuw nsw i32 %i.q, 1
  %i.aei = mul i32 %i.aeh, %i.s
  %i.aej = sext i32 %i.aei to i64                 ; 4 uses
  %i.aek = zext nneg i32 %i.s to i64              ; 13 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.ael = shl nsw i64 %i.aej, 3
  %i.aem = add i64 %i.ael, %i.a
  %i.aen = sub i64 %i.b, %i.aem
  %i.aeo = mul nsw i64 %i.aek, -8
  %i.aep = add nuw nsw i64 %i.aek, 1
  br label %iter.check1484

iter.check1484:                                   ; preds = %.lr.ph605.preheader, %.loopexit1571
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1571 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.aej, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1571 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1571 ] ; 7 uses
  %i.aeq = mul i64 %i.aep, %indvars.iv855
  %i.aer = add i64 %i.aeq, %i.aej
  %smax1466 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.aer)
  %i.aes = mul i64 %indvars.iv855, %i.aek
  %i.aet = add i64 %i.aes, %i.aej
  %reass.sub1578 = sub i64 %smax1466, %i.aet
  %i.aeu = add i64 %reass.sub1578, 1              ; 7 uses
  %i.aev = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1467 = icmp ult i64 %i.aeu, 4
  br i1 %min.iters.check1467, label %vec.epilog.scalar.ph1485.preheader, label %vector.memcheck1464

vector.memcheck1464:                              ; preds = %iter.check1484
  %i.aew = mul i64 %i.aeo, %indvars.iv855
  %i.aex = add i64 %i.aen, %i.aew
  %i.aey = shl i64 %.28603, 3
  %i.aez = add i64 %i.aex, %i.aey
  %i.afa = add i64 %i.aez, -1
  %diff.check1465 = icmp ult i64 %i.afa, 127
  br i1 %diff.check1465, label %vec.epilog.scalar.ph1485.preheader, label %vector.main.loop.iter.check1468

vector.main.loop.iter.check1468:                  ; preds = %vector.memcheck1464
  %min.iters.check1469 = icmp ult i64 %i.aeu, 16
  br i1 %min.iters.check1469, label %vec.epilog.ph1488, label %vector.ph1470

vector.ph1470:                                    ; preds = %vector.main.loop.iter.check1468
  %i.afb = and i64 %i.aeu, 12
  %n.vec1471 = and i64 %i.aeu, -16                ; 5 uses
  %i.afc = add i64 %indvars.iv848, %n.vec1471
  %i.afd = add i64 %.28603, %n.vec1471            ; 2 uses
  %i.afe = getelementptr [8 x i8], ptr %3, i64 %indvars.iv848
  %i.aff = getelementptr [8 x i8], ptr %4, i64 %.28603
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.body1472, %vector.ph1470
  %index1473 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1478, %vector.body1472 ] ; 3 uses
  %i.afg = getelementptr [8 x i8], ptr %i.afe, i64 %index1473 ; 4 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 32
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 96
  %wide.load1474 = load <4 x double>, ptr %i.afg, align 8, !tbaa !92
  %wide.load1475 = load <4 x double>, ptr %i.afh, align 8, !tbaa !92
  %wide.load1476 = load <4 x double>, ptr %i.afi, align 8, !tbaa !92
  %wide.load1477 = load <4 x double>, ptr %i.afj, align 8, !tbaa !92
  %i.afk = getelementptr [8 x i8], ptr %i.aff, i64 %index1473 ; 4 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 32
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afk, i64 64
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 96
  store <4 x double> %wide.load1474, ptr %i.afk, align 8, !tbaa !92
  store <4 x double> %wide.load1475, ptr %i.afl, align 8, !tbaa !92
  store <4 x double> %wide.load1476, ptr %i.afm, align 8, !tbaa !92
  store <4 x double> %wide.load1477, ptr %i.afn, align 8, !tbaa !92
  %index.next1478 = add nuw i64 %index1473, 16    ; 2 uses
  %i.afo = icmp eq i64 %index.next1478, %n.vec1471
  br i1 %i.afo, label %middle.block1479, label %vector.body1472, !llvm.loop !78

middle.block1479:                                 ; preds = %vector.body1472
  %cmp.n1480 = icmp eq i64 %i.aeu, %n.vec1471
  br i1 %cmp.n1480, label %.loopexit1571, label %vec.epilog.iter.check1486

vec.epilog.iter.check1486:                        ; preds = %middle.block1479
  %min.epilog.iters.check1487 = icmp eq i64 %i.afb, 0
  br i1 %min.epilog.iters.check1487, label %vec.epilog.scalar.ph1485.preheader, label %vec.epilog.ph1488, !prof !96

vec.epilog.ph1488:                                ; preds = %vector.main.loop.iter.check1468, %vec.epilog.iter.check1486
  %vec.epilog.resume.val1481 = phi i64 [ %n.vec1471, %vec.epilog.iter.check1486 ], [ 0, %vector.main.loop.iter.check1468 ]
  %n.vec1489 = and i64 %i.aeu, -4                 ; 4 uses
  %i.afp = add i64 %indvars.iv848, %n.vec1489
  %i.afq = add i64 %.28603, %n.vec1489            ; 2 uses
  %i.afr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv848
  %i.afs = getelementptr [8 x i8], ptr %4, i64 %.28603
  br label %vec.epilog.vector.body1490

vec.epilog.vector.body1490:                       ; preds = %vec.epilog.vector.body1490, %vec.epilog.ph1488
  %index1491 = phi i64 [ %vec.epilog.resume.val1481, %vec.epilog.ph1488 ], [ %index.next1493, %vec.epilog.vector.body1490 ] ; 3 uses
  %i.aft = getelementptr [8 x i8], ptr %i.afr, i64 %index1491
  %wide.load1492 = load <4 x double>, ptr %i.aft, align 8, !tbaa !92
  %i.afu = getelementptr [8 x i8], ptr %i.afs, i64 %index1491
  store <4 x double> %wide.load1492, ptr %i.afu, align 8, !tbaa !92
  %index.next1493 = add nuw i64 %index1491, 4     ; 2 uses
  %i.afv = icmp eq i64 %index.next1493, %n.vec1489
  br i1 %i.afv, label %vec.epilog.middle.block1494, label %vec.epilog.vector.body1490, !llvm.loop !79

vec.epilog.middle.block1494:                      ; preds = %vec.epilog.vector.body1490
  %cmp.n1495 = icmp eq i64 %i.aeu, %n.vec1489
  br i1 %cmp.n1495, label %.loopexit1571, label %vec.epilog.scalar.ph1485.preheader

vec.epilog.scalar.ph1485.preheader:               ; preds = %vector.memcheck1464, %iter.check1484, %vec.epilog.iter.check1486, %vec.epilog.middle.block1494
  %indvars.iv850.ph = phi i64 [ %indvars.iv848, %iter.check1484 ], [ %indvars.iv848, %vector.memcheck1464 ], [ %i.afc, %vec.epilog.iter.check1486 ], [ %i.afp, %vec.epilog.middle.block1494 ]
  %indvars.iv846.ph = phi i64 [ %.28603, %iter.check1484 ], [ %.28603, %vector.memcheck1464 ], [ %i.afd, %vec.epilog.iter.check1486 ], [ %i.afq, %vec.epilog.middle.block1494 ]
  br label %vec.epilog.scalar.ph1485

vec.epilog.scalar.ph1485:                         ; preds = %vec.epilog.scalar.ph1485.preheader, %vec.epilog.scalar.ph1485
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1485 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1485.preheader ] ; 3 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %vec.epilog.scalar.ph1485 ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1485.preheader ] ; 2 uses
  %i.afw = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv850
  %i.afx = load double, ptr %i.afw, align 8, !tbaa !92
  %i.afy = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv846
  store double %i.afx, ptr %i.afy, align 8, !tbaa !92
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1
  %.not386.not = icmp slt i64 %indvars.iv850, %i.aev
  br i1 %.not386.not, label %vec.epilog.scalar.ph1485, label %.loopexit1571, !llvm.loop !80

.loopexit1571:                                    ; preds = %vec.epilog.scalar.ph1485, %vec.epilog.middle.block1494, %middle.block1479
  %indvars.iv.next847.lcssa = phi i64 [ %i.afq, %vec.epilog.middle.block1494 ], [ %i.afd, %middle.block1479 ], [ %indvars.iv.next847, %vec.epilog.scalar.ph1485 ] ; 2 uses
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, %i.aek
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %.lr.ph619, label %iter.check1484, !llvm.loop !81

.lr.ph619:                                        ; preds = %.loopexit1571
  %i.afz = zext nneg i32 %i.s to i64
  %wide.trip.count872 = zext nneg i32 %i.q to i64
  %scevgep1500.a = getelementptr i8, ptr %4, i64 8
  %umax1503 = tail call i64 @llvm.umax.i64(i64 %i.aek, i64 1)
  %i.aga = shl nuw nsw i64 %i.aek, 3
  %umax1515 = tail call i64 @llvm.umax.i64(i64 %i.aek, i64 1)
  %i.agb = insertelement <2 x i64> poison, i64 %i.aek, i64 0
  %i.agc = shufflevector <2 x i64> %i.agb, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agd = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.age = shufflevector <2 x i32> %i.agd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agf = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.agg = shufflevector <2 x i32> %i.agf, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1521 = insertelement <4 x i64> poison, i64 %i.aek, i64 0
  %broadcast.splat1522 = shufflevector <4 x i64> %broadcast.splatinsert1521, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agh = shl nuw nsw <4 x i64> %broadcast.splat1522, splat (i64 2) ; 5 uses
  %i.agi = mul nuw nsw <4 x i64> %broadcast.splat1522, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1699 = add nuw nsw <4 x i64> %i.agh, %i.agh ; 2 uses
  %invariant.op1700 = add nuw nsw <4 x i64> %invariant.op1699, %i.agh ; 2 uses
  %invariant.op1701 = add nuw nsw <4 x i64> %invariant.op1700, %i.agh
  %broadcast.splatinsert1555 = insertelement <4 x i64> poison, i64 %i.aek, i64 0
  %broadcast.splat1556 = shufflevector <4 x i64> %broadcast.splatinsert1555, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.agj = mul nuw nsw <4 x i64> %broadcast.splat1556, <i64 0, i64 1, i64 2, i64 3>
  %i.agk = shl nuw nsw i64 %i.aek, 2
  %broadcast.splatinsert1558 = insertelement <4 x i64> poison, i64 %i.agk, i64 0
  %broadcast.splat1559 = shufflevector <4 x i64> %broadcast.splatinsert1558, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1547

iter.check1547:                                   ; preds = %.lr.ph619, %._crit_edge613
  %indvars.iv864 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next865, %._crit_edge613 ] ; 11 uses
  %.30617 = phi i64 [ %indvars.iv.next847.lcssa, %.lr.ph619 ], [ %indvars.iv.next863.lcssa, %._crit_edge613 ]
  %i.agl = insertelement <2 x i64> poison, i64 %indvars.iv864, i64 0
  %i.agm = shufflevector <2 x i64> %i.agl, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.agn = add nuw <2 x i64> %i.agm, %i.agc       ; 2 uses
  %i.ago = add nuw <2 x i64> %i.agm, splat (i64 1)
  %i.agp = trunc <2 x i64> %i.agm to <2 x i32>
  %i.agq = add nuw <2 x i64> %i.agm, %i.agc
  %indvars871 = trunc i64 %indvars.iv864 to i32
  %i.agr = add nsw i32 %i.q, %indvars871
  %i.ags = mul nsw i32 %i.agr, %i.s
  %i.agt = sext i32 %i.ags to i64
  %i.agu = add nsw i64 %indvars.iv864, %i.agt
  %i.agv = add <2 x i32> %i.agg, %i.agp
  %i.agw = mul <2 x i32> %i.age, %i.agv
  %i.agx = sext <2 x i32> %i.agw to <2 x i64>
  %i.agy = add <2 x i64> %i.ago, %i.agx           ; 2 uses
  %i.agz = icmp slt <2 x i64> %i.agn, %i.agy      ; 2 uses
  %i.aha = zext <2 x i1> %i.agz to <2 x i64>      ; 2 uses
  %i.ahb = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.agn, <2 x i64> %i.agy)
  %i.ahc = add <2 x i64> %i.agq, %i.aha
  %i.ahd = sub <2 x i64> %i.ahb, %i.ahc           ; 2 uses
  %sext1579 = shl i64 %.30617, 32                 ; 2 uses
  %i.ahe = ashr exact i64 %sext1579, 32           ; 6 uses
  %i.ahf = extractelement <2 x i1> %i.agz, i64 1
  %i.ahg = select i1 %i.ahf, i64 2, i64 1
  %i.ahh = extractelement <2 x i64> %i.ahd, i64 1
  %i.ahi = udiv i64 %i.ahh, %umax1515
  %i.ahj = add i64 %i.ahg, %i.ahi                 ; 7 uses
  %min.iters.check1516 = icmp ult i64 %i.ahj, 4
  br i1 %min.iters.check1516, label %.lr.ph612.preheader, label %vector.memcheck1498

vector.memcheck1498:                              ; preds = %iter.check1547
  %i.ahk = shl i64 %indvars.iv864, 3
  %scevgep1505 = getelementptr i8, ptr %3, i64 %i.ahk ; 5 uses
  %i.ahl = ashr exact i64 %sext1579, 29           ; 2 uses
  %scevgep1499 = getelementptr i8, ptr %4, i64 %i.ahl
  %i.ahm = extractelement <2 x i64> %i.ahd, i64 0
  %i.ahn = udiv i64 %i.ahm, %umax1503
  %i.aho = extractelement <2 x i64> %i.aha, i64 0
  %i.ahp = add i64 %i.ahn, %i.aho                 ; 2 uses
  %i.ahq = shl i64 %i.ahp, 3
  %i.ahr = getelementptr i8, ptr %scevgep1500.a, i64 %i.ahq
  %scevgep1504 = getelementptr i8, ptr %i.ahr, i64 %i.ahl
  %i.ahs = mul i64 %i.aga, %i.ahp
  %scevgep1506 = getelementptr i8, ptr %scevgep1505, i64 %i.ahs ; 4 uses
  %13 = icmp ult ptr %scevgep1505, %scevgep1506
  %umin1507 = select i1 %13, ptr %scevgep1505, ptr %scevgep1506
  %14 = icmp ugt ptr %scevgep1505, %scevgep1506
  %umax1508 = select i1 %14, ptr %scevgep1505, ptr %scevgep1506
  %scevgep1509 = getelementptr i8, ptr %umax1508, i64 8
  %bound01510 = icmp ult ptr %scevgep1499, %scevgep1509
  %bound11511 = icmp ult ptr %umin1507, %scevgep1504
  %found.conflict1512 = and i1 %bound01510, %bound11511
  br i1 %found.conflict1512, label %.lr.ph612.preheader, label %vector.main.loop.iter.check1517

vector.main.loop.iter.check1517:                  ; preds = %vector.memcheck1498
  %min.iters.check1518 = icmp ult i64 %i.ahj, 16
  br i1 %min.iters.check1518, label %vec.epilog.ph1551, label %vector.ph1519

vector.ph1519:                                    ; preds = %vector.main.loop.iter.check1517
  %i.aht = and i64 %i.ahj, 12
  %n.vec1520 = and i64 %i.ahj, -16                ; 5 uses
  %i.ahu = mul i64 %n.vec1520, %i.aek
  %i.ahv = add i64 %indvars.iv864, %i.ahu         ; 2 uses
  %i.ahw = add i64 %i.ahe, %n.vec1520             ; 2 uses
  %broadcast.splatinsert1523 = insertelement <4 x i64> poison, i64 %indvars.iv864, i64 0
  %broadcast.splat1524 = shufflevector <4 x i64> %broadcast.splatinsert1523, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1525 = add nuw nsw <4 x i64> %broadcast.splat1524, %i.agi
  %i.ahx = getelementptr [8 x i8], ptr %4, i64 %i.ahe
  br label %vector.body1526

vector.body1526:                                  ; preds = %vector.body1526, %vector.ph1519
  %index1527 = phi i64 [ 0, %vector.ph1519 ], [ %index.next1540, %vector.body1526 ] ; 2 uses
  %vec.ind1528 = phi <4 x i64> [ %induction1525, %vector.ph1519 ], [ %vec.ind.next1541.reass, %vector.body1526 ] ; 5 uses
  %step.add1529 = add nuw nsw <4 x i64> %vec.ind1528, %i.agh
  %step.add.21530.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1699
  %step.add.31531.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1700
  %wide.gep1532 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1528
  %wide.gep1533 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add1529
  %wide.gep1534 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.21530.reass
  %wide.gep1535 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.31531.reass
  %wide.masked.gather1536 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1532, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %wide.masked.gather1537 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1533, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %wide.masked.gather1538 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1534, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %wide.masked.gather1539 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1535, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %i.ahy = getelementptr [8 x i8], ptr %i.ahx, i64 %index1527 ; 4 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 32
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahy, i64 64
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahy, i64 96
  store <4 x double> %wide.masked.gather1536, ptr %i.ahy, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  store <4 x double> %wide.masked.gather1537, ptr %i.ahz, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  store <4 x double> %wide.masked.gather1538, ptr %i.aia, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  store <4 x double> %wide.masked.gather1539, ptr %i.aib, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  %index.next1540 = add nuw i64 %index1527, 16    ; 2 uses
  %vec.ind.next1541.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1701
  %i.aic = icmp eq i64 %index.next1540, %n.vec1520
  br i1 %i.aic, label %middle.block1542, label %vector.body1526, !llvm.loop !85

middle.block1542:                                 ; preds = %vector.body1526
  %cmp.n1543 = icmp eq i64 %i.ahj, %n.vec1520
  br i1 %cmp.n1543, label %._crit_edge613, label %vec.epilog.iter.check1549

vec.epilog.iter.check1549:                        ; preds = %middle.block1542
  %min.epilog.iters.check1550 = icmp eq i64 %i.aht, 0
  br i1 %min.epilog.iters.check1550, label %.lr.ph612.preheader, label %vec.epilog.ph1551, !prof !96

vec.epilog.ph1551:                                ; preds = %vector.main.loop.iter.check1517, %vec.epilog.iter.check1549
  %vec.epilog.resume.val1544 = phi i64 [ %n.vec1520, %vec.epilog.iter.check1549 ], [ 0, %vector.main.loop.iter.check1517 ]
  %bc.resume.val1545 = phi i64 [ %i.ahv, %vec.epilog.iter.check1549 ], [ %indvars.iv864, %vector.main.loop.iter.check1517 ]
  %n.vec1552 = and i64 %i.ahj, -4                 ; 4 uses
  %i.aid = mul i64 %n.vec1552, %i.aek
  %i.aie = add i64 %indvars.iv864, %i.aid
  %i.aif = add i64 %i.ahe, %n.vec1552             ; 2 uses
  %broadcast.splatinsert1553 = insertelement <4 x i64> poison, i64 %bc.resume.val1545, i64 0
  %broadcast.splat1554 = shufflevector <4 x i64> %broadcast.splatinsert1553, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1557 = add nuw nsw <4 x i64> %broadcast.splat1554, %i.agj
  %i.aig = getelementptr [8 x i8], ptr %4, i64 %i.ahe
  br label %vec.epilog.vector.body1560

vec.epilog.vector.body1560:                       ; preds = %vec.epilog.vector.body1560, %vec.epilog.ph1551
  %index1561 = phi i64 [ %vec.epilog.resume.val1544, %vec.epilog.ph1551 ], [ %index.next1565, %vec.epilog.vector.body1560 ] ; 2 uses
  %vec.ind1562 = phi <4 x i64> [ %induction1557, %vec.epilog.ph1551 ], [ %vec.ind.next1566, %vec.epilog.vector.body1560 ] ; 2 uses
  %wide.gep1563 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1562
  %wide.masked.gather1564 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1563, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %i.aih = getelementptr [8 x i8], ptr %i.aig, i64 %index1561
  store <4 x double> %wide.masked.gather1564, ptr %i.aih, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  %index.next1565 = add nuw i64 %index1561, 4     ; 2 uses
  %vec.ind.next1566 = add nuw nsw <4 x i64> %vec.ind1562, %broadcast.splat1559
  %i.aii = icmp eq i64 %index.next1565, %n.vec1552
  br i1 %i.aii, label %vec.epilog.middle.block1567, label %vec.epilog.vector.body1560, !llvm.loop !86

vec.epilog.middle.block1567:                      ; preds = %vec.epilog.vector.body1560
  %cmp.n1568 = icmp eq i64 %i.ahj, %n.vec1552
  br i1 %cmp.n1568, label %._crit_edge613, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %vector.memcheck1498, %iter.check1547, %vec.epilog.iter.check1549, %vec.epilog.middle.block1567
  %indvars.iv866.ph = phi i64 [ %indvars.iv864, %iter.check1547 ], [ %indvars.iv864, %vector.memcheck1498 ], [ %i.ahv, %vec.epilog.iter.check1549 ], [ %i.aie, %vec.epilog.middle.block1567 ]
  %indvars.iv862.ph = phi i64 [ %i.ahe, %iter.check1547 ], [ %i.ahe, %vector.memcheck1498 ], [ %i.ahw, %vec.epilog.iter.check1549 ], [ %i.aif, %vec.epilog.middle.block1567 ]
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %.lr.ph612
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %.lr.ph612 ], [ %indvars.iv866.ph, %.lr.ph612.preheader ] ; 2 uses
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph612 ], [ %indvars.iv862.ph, %.lr.ph612.preheader ] ; 2 uses
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv866
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !92
  %i.ail = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv862
  store double %i.aik, ptr %i.ail, align 8, !tbaa !92
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, %i.afz ; 2 uses
  %.not882 = icmp sgt i64 %indvars.iv.next867, %i.agu
  br i1 %.not882, label %._crit_edge613, label %.lr.ph612, !llvm.loop !87

._crit_edge613:                                   ; preds = %.lr.ph612, %middle.block1542, %vec.epilog.middle.block1567
  %indvars.iv.next863.lcssa = phi i64 [ %i.aif, %vec.epilog.middle.block1567 ], [ %i.ahw, %middle.block1542 ], [ %indvars.iv.next863, %.lr.ph612 ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit, label %iter.check1547, !llvm.loop !88

.loopexit.loopexit1599.unr-lcssa:                 ; preds = %._crit_edge495.3
  %lcmp.mod1617.not = icmp eq i64 %xtraiter1616, 0
  br i1 %lcmp.mod1617.not, label %.loopexit, label %iter.check1075.epil.preheader

iter.check1075.epil.preheader:                    ; preds = %.loopexit.loopexit1599.unr-lcssa, %.preheader.preheader
  %indvars.iv725.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next726.3, %.loopexit.loopexit1599.unr-lcssa ]
  %.18499.epil.init = phi i64 [ %i.us, %.preheader.preheader ], [ %indvars.iv.next724.3, %.loopexit.loopexit1599.unr-lcssa ]
  %lcmp.mod1618 = icmp ne i64 %xtraiter1616, 0
  tail call void @llvm.assume(i1 %lcmp.mod1618)
  br label %iter.check1075.epil

iter.check1075.epil:                              ; preds = %._crit_edge495.epil, %iter.check1075.epil.preheader
  %indvars.iv725.epil = phi i64 [ %indvars.iv725.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next726.epil, %._crit_edge495.epil ] ; 3 uses
  %.18499.epil = phi i64 [ %.18499.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next724.epil, %._crit_edge495.epil ]
  %epil.iter = phi i64 [ 0, %iter.check1075.epil.preheader ], [ %epil.iter.next, %._crit_edge495.epil ]
  %invariant.gep899.epil = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv725.epil
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %iter.check1075.epil
  %indvars.iv727.epil = phi i64 [ %indvars.iv725.epil, %iter.check1075.epil ], [ %indvars.iv.next728.epil, %bb.y ] ; 2 uses
  %indvars.iv723.epil = phi i64 [ %.18499.epil, %iter.check1075.epil ], [ %indvars.iv.next724.epil, %bb.y ] ; 2 uses
  %i.aim = mul nuw nsw i64 %indvars.iv727.epil, %i.ut
  %gep900.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.epil, i64 %i.aim
  %i.ain = load double, ptr %gep900.epil, align 8, !tbaa !92
  %i.aio = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.epil
  store double %i.ain, ptr %i.aio, align 8, !tbaa !92
  %indvars.iv.next724.epil = add nsw i64 %indvars.iv723.epil, 1 ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1 ; 2 uses
  %.not397.not.epil = icmp samesign ult i64 %indvars.iv.next728.epil, %i.uu
  br i1 %.not397.not.epil, label %bb.y, label %._crit_edge495.epil, !llvm.loop !55

._crit_edge495.epil:                              ; preds = %bb.y
  %indvars.iv.next726.epil = add nuw nsw i64 %indvars.iv725.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1616
  br i1 %epil.iter.cmp.not, label %.loopexit, label %iter.check1075.epil, !llvm.loop !89

.loopexit:                                        ; preds = %.loopexit434, %._crit_edge472, %.loopexit.loopexit1599.unr-lcssa, %._crit_edge495.epil, %._crit_edge515, %._crit_edge542, %._crit_edge565, %._crit_edge590, %._crit_edge613, %bb.n, %bb.k, %._crit_edge490, %._crit_edge444, %._crit_edge465, %._crit_edge508, %._crit_edge535, %._crit_edge558, %bb.g, %bb.h, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !93, !94, !95}
!9 = distinct !{!9, !93, !94, !95}
!10 = distinct !{!10, !97}
!11 = distinct !{!11, !93, !94}
!12 = distinct !{!12, !93}
!13 = distinct !{!13, !93}
!14 = distinct !{!14, !93, !94, !95}
end_hunk_3
