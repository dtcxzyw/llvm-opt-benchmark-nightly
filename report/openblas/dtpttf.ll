Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtpttf?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dtpttf_:bb.a
  %i.hd = getelementptr i8, ptr %i.hc, i64 48
  %i.he = load double, ptr %i.hd, align 8, !tbaa !92
  %i.hf = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.5
  store double %i.he, ptr %i.hf, align 8, !tbaa !92
  %indvars.iv.next679.6 = add nsw i64 %indvars.iv.next679.5, %i.ex ; 2 uses
  %i.hg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.hh = getelementptr i8, ptr %i.hg, i64 56
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !92
  %i.hj = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.6
  store double %i.hi, ptr %i.hj, align 8, !tbaa !92
  %indvars.iv.next675.7 = add nsw i64 %indvars.iv674, 8 ; 2 uses
  %indvars.iv.next679.7 = add nsw i64 %indvars.iv.next679.6, %i.ex
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next675.7 to i32
  %exitcond685.not.7 = icmp eq i32 %i.fj, %lftr.wideiv.7
  br i1 %exitcond685.not.7, label %.loopexit1575, label %vec.epilog.scalar.ph975, !llvm.loop !21

.loopexit1575:                                    ; preds = %vec.epilog.scalar.ph975.prol.loopexit, %vec.epilog.scalar.ph975, %vec.epilog.middle.block984, %middle.block970
  %indvars.iv.next677 = add i32 %indvars.iv676, 1
  %indvars.iv.next684 = add nuw i32 %indvars.iv683, 1
  %exitcond686.not = icmp eq i32 %indvars.iv683, %.
  %indvar.next = add i64 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.ez
  br i1 %exitcond686.not, label %._crit_edge465, label %iter.check974, !llvm.loop !22

._crit_edge465:                                   ; preds = %.loopexit1575, %bb.l
  %.4.lcssa = phi i32 [ 0, %bb.l ], [ %i.fj, %.loopexit1575 ]
  %.not408.not474 = icmp slt i32 %., %i.h
  br i1 %.not408.not474, label %.lr.ph479.preheader, label %.loopexit

.lr.ph479.preheader:                              ; preds = %._crit_edge465
  %i.hk = zext nneg i32 %.0328 to i64             ; 4 uses
  %i.hl = sext i32 %. to i64                      ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.h to i64
  %i.hm = shl nuw nsw i64 %i.hk, 3
  %i.hn = add nuw nsw i64 %i.hk, 1
  br label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %._crit_edge472
  %indvar989 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvar.next990, %._crit_edge472 ] ; 4 uses
  %indvars.iv697 = phi i64 [ %i.hl, %.lr.ph479.preheader ], [ %indvars.iv.next698, %._crit_edge472 ] ; 3 uses
  %indvars.iv690 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvars.iv.next691, %._crit_edge472 ] ; 9 uses
  %.6477 = phi i32 [ %.4.lcssa, %.lr.ph479.preheader ], [ %.7.lcssa, %._crit_edge472 ] ; 2 uses
  %i.ho = mul i64 %i.hn, %indvar989
  %i.hp = add i64 %i.ho, %i.hl
  %smax = tail call i64 @llvm.smax.i64(i64 %i.hp, i64 %indvars.iv690)
  %i.hq = mul i64 %indvar989, %i.hk
  %reass.sub = sub i64 %smax, %i.hq
  %i.hr = add i64 %reass.sub, 1                   ; 7 uses
  %i.hs = mul i64 %i.hm, %indvar989
  %i.ht = add nsw i64 %indvars.iv690, %indvars.iv697
  %.not409467 = icmp slt i64 %indvars.iv697, 0
  br i1 %.not409467, label %._crit_edge472, label %iter.check1008

iter.check1008:                                   ; preds = %.lr.ph479
  %i.hu = sext i32 %.6477 to i64                  ; 7 uses
  %min.iters.check992 = icmp ult i64 %i.hr, 4
  br i1 %min.iters.check992, label %.lr.ph471.preheader, label %vector.memcheck988

vector.memcheck988:                               ; preds = %iter.check1008
  %i.hv = shl nsw i64 %i.hu, 3
  %i.hw = add i64 %i.hs, %i.b
  %i.hx = add i64 %i.hv, %i.a
  %i.hy = sub i64 %i.hx, %i.hw
  %diff.check991 = icmp ugt i64 %i.hy, -128
  br i1 %diff.check991, label %.lr.ph471.preheader, label %vector.main.loop.iter.check993

vector.main.loop.iter.check993:                   ; preds = %vector.memcheck988
  %min.iters.check994 = icmp ult i64 %i.hr, 16
  br i1 %min.iters.check994, label %vec.epilog.ph1012, label %vector.ph995

vector.ph995:                                     ; preds = %vector.main.loop.iter.check993
  %i.hz = and i64 %i.hr, 12
  %n.vec996 = and i64 %i.hr, -16                  ; 5 uses
  %i.ia = add i64 %indvars.iv690, %n.vec996
  %i.ib = add i64 %n.vec996, %i.hu                ; 2 uses
  %invariant.gep1652.a = getelementptr [8 x i8], ptr %3, i64 %i.hu
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv690
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1003, %vector.body997 ] ; 3 uses
  %gep1653.a = getelementptr [8 x i8], ptr %invariant.gep1652.a, i64 %index998 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %gep1653.a, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %gep1653.a, i64 64
  %i.if = getelementptr inbounds nuw i8, ptr %gep1653.a, i64 96
  %wide.load999 = load <4 x double>, ptr %gep1653.a, align 8, !tbaa !92
  %wide.load1000 = load <4 x double>, ptr %i.id, align 8, !tbaa !92
  %wide.load1001 = load <4 x double>, ptr %i.ie, align 8, !tbaa !92
  %wide.load1002 = load <4 x double>, ptr %i.if, align 8, !tbaa !92
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %index998 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  store <4 x double> %wide.load999, ptr %i.ig, align 8, !tbaa !92
  store <4 x double> %wide.load1000, ptr %i.ih, align 8, !tbaa !92
  store <4 x double> %wide.load1001, ptr %i.ii, align 8, !tbaa !92
  store <4 x double> %wide.load1002, ptr %i.ij, align 8, !tbaa !92
  %index.next1003 = add nuw i64 %index998, 16     ; 2 uses
  %i.ik = icmp eq i64 %index.next1003, %n.vec996
  br i1 %i.ik, label %middle.block1004, label %vector.body997, !llvm.loop !23

middle.block1004:                                 ; preds = %vector.body997
  %cmp.n1005 = icmp eq i64 %i.hr, %n.vec996
  br i1 %cmp.n1005, label %._crit_edge472.loopexit, label %vec.epilog.iter.check1010

vec.epilog.iter.check1010:                        ; preds = %middle.block1004
  %min.epilog.iters.check1011 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check1011, label %.lr.ph471.preheader, label %vec.epilog.ph1012, !prof !96

vec.epilog.ph1012:                                ; preds = %vector.main.loop.iter.check993, %vec.epilog.iter.check1010
  %vec.epilog.resume.val1006 = phi i64 [ %n.vec996, %vec.epilog.iter.check1010 ], [ 0, %vector.main.loop.iter.check993 ]
  %n.vec1013 = and i64 %i.hr, -4                  ; 4 uses
  %i.il = add i64 %indvars.iv690, %n.vec1013
  %i.im = add i64 %n.vec1013, %i.hu               ; 2 uses
  %invariant.gep1654.a = getelementptr [8 x i8], ptr %3, i64 %i.hu
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv690
  br label %vec.epilog.vector.body1014

vec.epilog.vector.body1014:                       ; preds = %vec.epilog.vector.body1014, %vec.epilog.ph1012
  %index1015 = phi i64 [ %vec.epilog.resume.val1006, %vec.epilog.ph1012 ], [ %index.next1017, %vec.epilog.vector.body1014 ] ; 3 uses
  %gep1655.a = getelementptr [8 x i8], ptr %invariant.gep1654.a, i64 %index1015
  %wide.load1016 = load <4 x double>, ptr %gep1655.a, align 8, !tbaa !92
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %index1015
  store <4 x double> %wide.load1016, ptr %i.io, align 8, !tbaa !92
  %index.next1017 = add nuw i64 %index1015, 4     ; 2 uses
  %i.ip = icmp eq i64 %index.next1017, %n.vec1013
  br i1 %i.ip, label %vec.epilog.middle.block1018, label %vec.epilog.vector.body1014, !llvm.loop !24

vec.epilog.middle.block1018:                      ; preds = %vec.epilog.vector.body1014
  %cmp.n1019 = icmp eq i64 %i.hr, %n.vec1013
  br i1 %cmp.n1019, label %._crit_edge472.loopexit, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %vector.memcheck988, %iter.check1008, %vec.epilog.iter.check1010, %vec.epilog.middle.block1018
  %indvars.iv692.ph = phi i64 [ %indvars.iv690, %iter.check1008 ], [ %indvars.iv690, %vector.memcheck988 ], [ %i.ia, %vec.epilog.iter.check1010 ], [ %i.il, %vec.epilog.middle.block1018 ]
  %indvars.iv688.ph = phi i64 [ %i.hu, %iter.check1008 ], [ %i.hu, %vector.memcheck988 ], [ %i.ib, %vec.epilog.iter.check1010 ], [ %i.im, %vec.epilog.middle.block1018 ]
  br label %.lr.ph471

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %.lr.ph471
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %.lr.ph471 ], [ %indvars.iv692.ph, %.lr.ph471.preheader ] ; 3 uses
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %.lr.ph471 ], [ %indvars.iv688.ph, %.lr.ph471.preheader ] ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv688
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !92
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv692
  store double %i.ir, ptr %i.is, align 8, !tbaa !92
  %indvars.iv.next689 = add nsw i64 %indvars.iv688, 1 ; 2 uses
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1
  %.not409.not = icmp slt i64 %indvars.iv692, %i.ht
  br i1 %.not409.not, label %.lr.ph471, label %._crit_edge472.loopexit, !llvm.loop !25

._crit_edge472.loopexit:                          ; preds = %.lr.ph471, %vec.epilog.middle.block1018, %middle.block1004
  %indvars.iv.next689.lcssa = phi i64 [ %i.im, %vec.epilog.middle.block1018 ], [ %i.ib, %middle.block1004 ], [ %indvars.iv.next689, %.lr.ph471 ]
  %i.it = trunc nsw i64 %indvars.iv.next689.lcssa to i32
  br label %._crit_edge472

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit, %.lr.ph479
  %.7.lcssa = phi i32 [ %.6477, %.lr.ph479 ], [ %i.it, %._crit_edge472.loopexit ]
  %indvars.iv.next691 = add i64 %indvars.iv690, %i.hk
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
  %i.iu = mul nuw nsw i32 %i.s, %i.h              ; 2 uses
  %i.iv = add nuw nsw i32 %i.s, 1
  %i.iw = zext nneg i32 %i.s to i64               ; 16 uses
  %i.ix = add nuw nsw i64 %i.iw, 1
  %i.iy = zext nneg i32 %i.iu to i64              ; 3 uses
  %i.iz = shl nuw nsw i64 %i.iw, 3
  %i.ja = add nuw nsw i64 %i.iz, 8
  %i.jb = shl nuw nsw i64 %i.iw, 3
  %i.jc = xor i64 %i.iw, -1                       ; 2 uses
  %scevgep1171 = getelementptr i8, ptr %3, i64 8
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.iw, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jd = shl nuw nsw <4 x i64> %broadcast.splat, splat (i64 2) ; 5 uses
  %i.je = mul nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op = add nuw nsw <4 x i64> %i.jd, %i.jd ; 2 uses
  %invariant.op1668 = add nuw nsw <4 x i64> %invariant.op, %i.jd ; 2 uses
  %invariant.op1671 = add nuw nsw <4 x i64> %invariant.op1668, %i.jd
  %broadcast.splatinsert1205 = insertelement <4 x i64> poison, i64 %i.iw, i64 0
  %broadcast.splat1206 = shufflevector <4 x i64> %broadcast.splatinsert1205, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jf = mul nuw nsw <4 x i64> %broadcast.splat1206, <i64 0, i64 1, i64 2, i64 3>
  %i.jg = shl nuw nsw i64 %i.iw, 2
  %broadcast.splatinsert1208 = insertelement <4 x i64> poison, i64 %i.jg, i64 0
  %broadcast.splat1209 = shufflevector <4 x i64> %broadcast.splatinsert1208, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph534, %._crit_edge528
  %indvar1162 = phi i64 [ 0, %.lr.ph534 ], [ %indvar.next1163, %._crit_edge528 ] ; 4 uses
  %indvars.iv768 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next769, %._crit_edge528 ] ; 9 uses
  %.8532 = phi i32 [ 0, %.lr.ph534 ], [ %.9.lcssa, %._crit_edge528 ] ; 2 uses
  %.3369531 = phi i32 [ 0, %.lr.ph534 ], [ %i.kx, %._crit_edge528 ] ; 3 uses
  %i.jh = mul i64 %i.ja, %indvar1162              ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.jh
  %6 = getelementptr i8, ptr %4, i64 %i.jh
  %scevgep.a = getelementptr i8, ptr %6, i64 8
  %i.ji = add nuw i64 %indvars.iv768, %i.iw
  %umax1164 = tail call i64 @llvm.umax.i64(i64 %i.ji, i64 %i.iy)
  %i.jj = mul i64 %indvar1162, %i.jc
  %i.jk = sub i64 %i.jj, %i.iw
  %i.jl = add i64 %umax1164, %i.jk                ; 2 uses
  %i.jm = icmp ne i64 %i.jl, 0
  %umin = zext i1 %i.jm to i64                    ; 2 uses
  %i.jn = sub i64 %i.jl, %umin
  %i.jo = mul nsw i32 %.3369531, %i.iv
  %i.jp = icmp slt i32 %i.jo, %i.iu
  br i1 %i.jp, label %iter.check1197, label %._crit_edge528

iter.check1197:                                   ; preds = %bb.o
  %i.jq = add nuw i64 %indvars.iv768, %i.iw
  %umax1173 = tail call i64 @llvm.umax.i64(i64 %i.jq, i64 %i.iy)
  %i.jr = mul i64 %indvar1162, %i.jc
  %i.js = sub i64 %i.jr, %i.iw
  %i.jt = add i64 %umax1173, %i.js                ; 2 uses
  %i.ju = icmp ne i64 %i.jt, 0                    ; 2 uses
  %umin1174.neg = sext i1 %i.ju to i64
  %i.jv = add i64 %i.jt, %umin1174.neg
  %i.jw = sext i32 %.8532 to i64                  ; 8 uses
  %i.jx = select i1 %i.ju, i64 2, i64 1
  %i.jy = udiv i64 %i.jv, %i.iw
  %i.jz = add i64 %i.jx, %i.jy                    ; 7 uses
  %min.iters.check1176.a = icmp ult i64 %i.jz, 4
  br i1 %min.iters.check1176.a, label %.lr.ph527.preheader, label %vector.memcheck1161

vector.memcheck1161:                              ; preds = %iter.check1197
  %i.ka = udiv i64 %i.jn, %i.iw
  %i.kb = add i64 %i.ka, %umin                    ; 2 uses
  %i.kc = mul i64 %i.jb, %i.kb
  %scevgep1169 = getelementptr i8, ptr %scevgep.a, i64 %i.kc
  %i.kd = shl nsw i64 %i.jw, 3
  %scevgep1170.a = getelementptr i8, ptr %3, i64 %i.kd
  %i.ke = add i64 %i.kb, %i.jw
  %i.kf = shl i64 %i.ke, 3
  %scevgep1172 = getelementptr i8, ptr %scevgep1171, i64 %i.kf
  %bound0 = icmp ult ptr %scevgep, %scevgep1172
  %bound1 = icmp ult ptr %scevgep1170.a, %scevgep1169
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph527.preheader, label %vector.main.loop.iter.check1177

vector.main.loop.iter.check1177:                  ; preds = %vector.memcheck1161
  %min.iters.check1178 = icmp ult i64 %i.jz, 16
  br i1 %min.iters.check1178, label %vec.epilog.ph1201, label %vector.ph1179

vector.ph1179:                                    ; preds = %vector.main.loop.iter.check1177
  %i.kg = and i64 %i.jz, 12
  %n.vec1180 = and i64 %i.jz, -16                 ; 5 uses
  %i.kh = mul i64 %n.vec1180, %i.iw
  %i.ki = add i64 %indvars.iv768, %i.kh           ; 2 uses
  %i.kj = add i64 %n.vec1180, %i.jw               ; 2 uses
  %broadcast.splatinsert1181 = insertelement <4 x i64> poison, i64 %indvars.iv768, i64 0
  %broadcast.splat1182 = shufflevector <4 x i64> %broadcast.splatinsert1181, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat1182, %i.je
  %invariant.gep1669 = getelementptr [8 x i8], ptr %3, i64 %i.jw
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1179
  %index1184 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1192, %vector.body1183 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph1179 ], [ %vec.ind.next.reass, %vector.body1183 ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, %i.jd
  %step.add.2.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op
  %step.add.3.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1668
  %gep1670 = getelementptr [8 x i8], ptr %invariant.gep1669, i64 %index1184 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %gep1670, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %gep1670, i64 64
  %i.km = getelementptr inbounds nuw i8, ptr %gep1670, i64 96
  %wide.load1185.a = load <4 x double>, ptr %gep1670, align 8, !tbaa !92, !alias.scope !98
  %wide.load1186.a = load <4 x double>, ptr %i.kk, align 8, !tbaa !92, !alias.scope !98
  %wide.load1187 = load <4 x double>, ptr %i.kl, align 8, !tbaa !92, !alias.scope !98
  %wide.load1188 = load <4 x double>, ptr %i.km, align 8, !tbaa !92, !alias.scope !98
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind
  %wide.gep1189.a = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add
  %wide.gep1190 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.2.reass
  %wide.gep1191 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.3.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1185.a, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1186.a, <4 x ptr> align 8 %wide.gep1189.a, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1187, <4 x ptr> align 8 %wide.gep1190, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1188, <4 x ptr> align 8 %wide.gep1191, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1192 = add nuw i64 %index1184, 16    ; 2 uses
  %vec.ind.next.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1671
  %i.kn = icmp eq i64 %index.next1192, %n.vec1180
  br i1 %i.kn, label %middle.block1193, label %vector.body1183, !llvm.loop !30

middle.block1193:                                 ; preds = %vector.body1183
  %cmp.n1194 = icmp eq i64 %i.jz, %n.vec1180
  br i1 %cmp.n1194, label %._crit_edge528.loopexit, label %vec.epilog.iter.check1199

vec.epilog.iter.check1199:                        ; preds = %middle.block1193
  %min.epilog.iters.check1200 = icmp eq i64 %i.kg, 0
  br i1 %min.epilog.iters.check1200, label %.lr.ph527.preheader, label %vec.epilog.ph1201, !prof !96

vec.epilog.ph1201:                                ; preds = %vector.main.loop.iter.check1177, %vec.epilog.iter.check1199
  %vec.epilog.resume.val1195 = phi i64 [ %n.vec1180, %vec.epilog.iter.check1199 ], [ 0, %vector.main.loop.iter.check1177 ]
  %bc.resume.val = phi i64 [ %i.ki, %vec.epilog.iter.check1199 ], [ %indvars.iv768, %vector.main.loop.iter.check1177 ]
  %n.vec1202 = and i64 %i.jz, -4                  ; 4 uses
  %i.ko = mul i64 %n.vec1202, %i.iw
  %i.kp = add i64 %indvars.iv768, %i.ko
  %i.kq = add i64 %n.vec1202, %i.jw               ; 2 uses
  %broadcast.splatinsert1203 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat1204 = shufflevector <4 x i64> %broadcast.splatinsert1203, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1207 = add nuw nsw <4 x i64> %broadcast.splat1204, %i.jf
  %invariant.gep1672.a = getelementptr [8 x i8], ptr %3, i64 %i.jw
  br label %vec.epilog.vector.body1210

vec.epilog.vector.body1210:                       ; preds = %vec.epilog.vector.body1210, %vec.epilog.ph1201
  %index1211 = phi i64 [ %vec.epilog.resume.val1195, %vec.epilog.ph1201 ], [ %index.next1215, %vec.epilog.vector.body1210 ] ; 2 uses
  %vec.ind1212 = phi <4 x i64> [ %induction1207, %vec.epilog.ph1201 ], [ %vec.ind.next1216, %vec.epilog.vector.body1210 ] ; 2 uses
  %gep1673.a = getelementptr [8 x i8], ptr %invariant.gep1672.a, i64 %index1211
  %wide.load1213 = load <4 x double>, ptr %gep1673.a, align 8, !tbaa !92, !alias.scope !98
  %wide.gep1214 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1212
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1213, <4 x ptr> align 8 %wide.gep1214, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1215 = add nuw i64 %index1211, 4     ; 2 uses
  %vec.ind.next1216 = add nuw nsw <4 x i64> %vec.ind1212, %broadcast.splat1209
  %i.kr = icmp eq i64 %index.next1215, %n.vec1202
  br i1 %i.kr, label %vec.epilog.middle.block1217, label %vec.epilog.vector.body1210, !llvm.loop !31

vec.epilog.middle.block1217:                      ; preds = %vec.epilog.vector.body1210
  %cmp.n1218 = icmp eq i64 %i.jz, %n.vec1202
  br i1 %cmp.n1218, label %._crit_edge528.loopexit, label %.lr.ph527.preheader

.lr.ph527.preheader:                              ; preds = %vector.memcheck1161, %iter.check1197, %vec.epilog.iter.check1199, %vec.epilog.middle.block1217
  %indvars.iv770.ph = phi i64 [ %indvars.iv768, %iter.check1197 ], [ %indvars.iv768, %vector.memcheck1161 ], [ %i.ki, %vec.epilog.iter.check1199 ], [ %i.kp, %vec.epilog.middle.block1217 ]
  %indvars.iv766.ph = phi i64 [ %i.jw, %iter.check1197 ], [ %i.jw, %vector.memcheck1161 ], [ %i.kj, %vec.epilog.iter.check1199 ], [ %i.kq, %vec.epilog.middle.block1217 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader, %.lr.ph527
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.lr.ph527 ], [ %indvars.iv770.ph, %.lr.ph527.preheader ] ; 2 uses
  %indvars.iv766 = phi i64 [ %indvars.iv.next767, %.lr.ph527 ], [ %indvars.iv766.ph, %.lr.ph527.preheader ] ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv766
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !92
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv770
  store double %i.kt, ptr %i.ku, align 8, !tbaa !92
  %indvars.iv.next767 = add nsw i64 %indvars.iv766, 1 ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, %i.iw ; 2 uses
  %i.kv = icmp samesign ult i64 %indvars.iv.next771, %i.iy
  br i1 %i.kv, label %.lr.ph527, label %._crit_edge528.loopexit, !llvm.loop !32

._crit_edge528.loopexit:                          ; preds = %.lr.ph527, %vec.epilog.middle.block1217, %middle.block1193
  %indvars.iv.next767.lcssa = phi i64 [ %i.kq, %vec.epilog.middle.block1217 ], [ %i.kj, %middle.block1193 ], [ %indvars.iv.next767, %.lr.ph527 ]
  %i.kw = trunc nsw i64 %indvars.iv.next767.lcssa to i32
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.o
  %.9.lcssa = phi i32 [ %.8532, %bb.o ], [ %i.kw, %._crit_edge528.loopexit ] ; 2 uses
  %i.kx = add nuw i32 %.3369531, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, %i.ix
  %exitcond775.not = icmp eq i32 %.3369531, %.901
  %indvar.next1163 = add i64 %indvar1162, 1
  br i1 %exitcond775.not, label %._crit_edge535, label %bb.o, !llvm.loop !33

._crit_edge535:                                   ; preds = %._crit_edge528
  %.not404.not544.not = icmp eq i32 %.901, 0
  br i1 %.not404.not544.not, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %._crit_edge535
  %i.ky = add nuw nsw i32 %i.s, 1
  %i.kz = add nuw i32 %.901, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph549, %._crit_edge542
  %indvars.iv786 = phi i32 [ %i.kz, %.lr.ph549 ], [ %indvars.iv.next787, %._crit_edge542 ] ; 3 uses
  %indvars.iv779 = phi i32 [ 1, %.lr.ph549 ], [ %indvars.iv.next780, %._crit_edge542 ] ; 5 uses
  %.10547 = phi i32 [ %.9.lcssa, %.lr.ph549 ], [ %.11.lcssa, %._crit_edge542 ] ; 2 uses
  %.4358545 = phi i32 [ 0, %.lr.ph549 ], [ %i.nw, %._crit_edge542 ] ; 3 uses
  %i.la = xor i32 %.4358545, -1
  %i.lb = add nsw i32 %.901, %i.la                ; 3 uses
  %i.lc = zext i32 %i.lb to i64
  %i.ld = add nuw nsw i64 %i.lc, 1                ; 5 uses
  %i.le = sext i32 %indvars.iv779 to i64
  %i.lf = shl nsw i64 %i.le, 3
  %i.lg = xor i32 %.4358545, -1
  %i.lh = add nsw i32 %.901, %i.lg
  %i.li = add i32 %i.lh, %indvars.iv779           ; 2 uses
  %.not405537 = icmp sgt i32 %indvars.iv779, %i.li
  br i1 %.not405537, label %._crit_edge542, label %iter.check1240

iter.check1240:                                   ; preds = %bb.p
  %i.lj = sext i32 %indvars.iv779 to i64          ; 6 uses
  %i.lk = sext i32 %.10547 to i64                 ; 7 uses
  %min.iters.check1223.a = icmp ult i32 %i.lb, 3
  br i1 %min.iters.check1223.a, label %.lr.ph541.preheader, label %vector.memcheck1221

vector.memcheck1221:                              ; preds = %iter.check1240
  %i.ll = shl nsw i64 %i.lk, 3
  %i.lm = add i64 %i.lf, %i.b
  %i.ln = add i64 %i.ll, %i.a
  %i.lo = sub i64 %i.ln, %i.lm
  %diff.check1222 = icmp ugt i64 %i.lo, -128
  br i1 %diff.check1222, label %.lr.ph541.preheader, label %vector.main.loop.iter.check1224

vector.main.loop.iter.check1224:                  ; preds = %vector.memcheck1221
  %min.iters.check1225 = icmp ult i32 %i.lb, 15
  br i1 %min.iters.check1225, label %vec.epilog.ph1244, label %vector.ph1226

vector.ph1226:                                    ; preds = %vector.main.loop.iter.check1224
  %i.lp = and i64 %i.ld, 12
  %n.vec1227 = and i64 %i.ld, 8589934576          ; 5 uses
  %i.lq = add nsw i64 %n.vec1227, %i.lj
  %i.lr = add nsw i64 %n.vec1227, %i.lk           ; 2 uses
  %invariant.gep1674 = getelementptr [8 x i8], ptr %3, i64 %i.lk
  %invariant.gep1676 = getelementptr [8 x i8], ptr %4, i64 %i.lj
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1234, %vector.body1228 ] ; 3 uses
  %gep1675 = getelementptr [8 x i8], ptr %invariant.gep1674, i64 %index1229 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %gep1675, i64 32
  %i.lt = getelementptr inbounds nuw i8, ptr %gep1675, i64 64
  %i.lu = getelementptr inbounds nuw i8, ptr %gep1675, i64 96
  %wide.load1230.a = load <4 x double>, ptr %gep1675, align 8, !tbaa !92
  %wide.load1231.a = load <4 x double>, ptr %i.ls, align 8, !tbaa !92
  %wide.load1232 = load <4 x double>, ptr %i.lt, align 8, !tbaa !92
  %wide.load1233 = load <4 x double>, ptr %i.lu, align 8, !tbaa !92
  %gep1677 = getelementptr [8 x i8], ptr %invariant.gep1676, i64 %index1229 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %gep1677, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %gep1677, i64 64
  %i.lx = getelementptr inbounds nuw i8, ptr %gep1677, i64 96
  store <4 x double> %wide.load1230.a, ptr %gep1677, align 8, !tbaa !92
  store <4 x double> %wide.load1231.a, ptr %i.lv, align 8, !tbaa !92
  store <4 x double> %wide.load1232, ptr %i.lw, align 8, !tbaa !92
  store <4 x double> %wide.load1233, ptr %i.lx, align 8, !tbaa !92
  %index.next1234 = add nuw i64 %index1229, 16    ; 2 uses
  %i.ly = icmp eq i64 %index.next1234, %n.vec1227
  br i1 %i.ly, label %middle.block1235, label %vector.body1228, !llvm.loop !34

middle.block1235:                                 ; preds = %vector.body1228
  %cmp.n1236 = icmp eq i64 %i.ld, %n.vec1227
  br i1 %cmp.n1236, label %._crit_edge542.loopexit, label %vec.epilog.iter.check1242

vec.epilog.iter.check1242:                        ; preds = %middle.block1235
  %min.epilog.iters.check1243 = icmp eq i64 %i.lp, 0
  br i1 %min.epilog.iters.check1243, label %.lr.ph541.preheader, label %vec.epilog.ph1244, !prof !96

vec.epilog.ph1244:                                ; preds = %vector.main.loop.iter.check1224, %vec.epilog.iter.check1242
  %vec.epilog.resume.val1237 = phi i64 [ %n.vec1227, %vec.epilog.iter.check1242 ], [ 0, %vector.main.loop.iter.check1224 ]
  %n.vec1245 = and i64 %i.ld, 8589934588          ; 4 uses
end_hunk_0
begin_hunk_1_@dtpttf_:bb.a
  br i1 %exitcond790.not, label %.loopexit, label %bb.p, !llvm.loop !38

bb.q:                                             ; preds = %bb.m
  %.not399.not552 = icmp sgt i32 %., 0
  br i1 %.not399.not552, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.q
  %i.nx = mul i32 %.901, %i.s
  %i.ny = sext i32 %i.nx to i64                   ; 4 uses
  %i.nz = zext nneg i32 %i.s to i64               ; 4 uses
  %wide.trip.count806 = zext nneg i32 %. to i64
  %i.oa = shl nsw i64 %i.ny, 3
  %i.ob = add i64 %i.oa, %i.b
  %i.oc = shl nuw nsw i64 %i.nz, 3
  %i.od = add nuw nsw i64 %i.nz, 1
  br label %iter.check1274

iter.check1274:                                   ; preds = %.lr.ph557.preheader, %.loopexit1573
  %indvars.iv801 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next802, %.loopexit1573 ] ; 5 uses
  %indvars.iv794 = phi i64 [ %i.ny, %.lr.ph557.preheader ], [ %indvars.iv.next795, %.loopexit1573 ] ; 9 uses
  %.12555 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next793.lcssa, %.loopexit1573 ] ; 7 uses
  %i.oe = mul i64 %i.od, %indvars.iv801
  %i.of = add i64 %i.oe, %i.ny
  %smax1256 = tail call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 %i.of)
  %i.og = mul i64 %indvars.iv801, %i.nz
  %i.oh = add i64 %i.og, %i.ny
  %reass.sub1577 = sub i64 %smax1256, %i.oh
  %i.oi = add i64 %reass.sub1577, 1               ; 7 uses
  %i.oj = add nsw i64 %indvars.iv794, %indvars.iv801
  %min.iters.check1257.a = icmp ult i64 %i.oi, 4
  br i1 %min.iters.check1257.a, label %vec.epilog.scalar.ph1275.preheader, label %vector.memcheck1254

vector.memcheck1254:                              ; preds = %iter.check1274
  %i.ok = mul i64 %i.oc, %indvars.iv801
  %i.ol = shl i64 %.12555, 3
  %i.om = add i64 %i.ob, %i.ok
  %i.on = add i64 %i.ol, %i.a
  %i.oo = sub i64 %i.on, %i.om
  %diff.check1255 = icmp ugt i64 %i.oo, -128
  br i1 %diff.check1255, label %vec.epilog.scalar.ph1275.preheader, label %vector.main.loop.iter.check1258

vector.main.loop.iter.check1258:                  ; preds = %vector.memcheck1254
  %min.iters.check1259 = icmp ult i64 %i.oi, 16
  br i1 %min.iters.check1259, label %vec.epilog.ph1278, label %vector.ph1260

vector.ph1260:                                    ; preds = %vector.main.loop.iter.check1258
  %i.op = and i64 %i.oi, 12
  %n.vec1261 = and i64 %i.oi, -16                 ; 5 uses
  %i.oq = add i64 %indvars.iv794, %n.vec1261
  %i.or = add i64 %.12555, %n.vec1261             ; 2 uses
  %i.os = getelementptr [8 x i8], ptr %3, i64 %.12555
  %i.ot = getelementptr [8 x i8], ptr %4, i64 %indvars.iv794
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1268, %vector.body1262 ] ; 3 uses
  %i.ou = getelementptr [8 x i8], ptr %i.os, i64 %index1263 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 96
  %wide.load1264.a = load <4 x double>, ptr %i.ou, align 8, !tbaa !92
  %wide.load1265.a = load <4 x double>, ptr %i.ov, align 8, !tbaa !92
  %wide.load1266 = load <4 x double>, ptr %i.ow, align 8, !tbaa !92
  %wide.load1267 = load <4 x double>, ptr %i.ox, align 8, !tbaa !92
  %i.oy = getelementptr [8 x i8], ptr %i.ot, i64 %index1263 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 64
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 96
  store <4 x double> %wide.load1264.a, ptr %i.oy, align 8, !tbaa !92
  store <4 x double> %wide.load1265.a, ptr %i.oz, align 8, !tbaa !92
  store <4 x double> %wide.load1266, ptr %i.pa, align 8, !tbaa !92
  store <4 x double> %wide.load1267, ptr %i.pb, align 8, !tbaa !92
  %index.next1268 = add nuw i64 %index1263, 16    ; 2 uses
  %i.pc = icmp eq i64 %index.next1268, %n.vec1261
  br i1 %i.pc, label %middle.block1269, label %vector.body1262, !llvm.loop !39

middle.block1269:                                 ; preds = %vector.body1262
  %cmp.n1270 = icmp eq i64 %i.oi, %n.vec1261
  br i1 %cmp.n1270, label %.loopexit1573, label %vec.epilog.iter.check1276

vec.epilog.iter.check1276:                        ; preds = %middle.block1269
  %min.epilog.iters.check1277 = icmp eq i64 %i.op, 0
  br i1 %min.epilog.iters.check1277, label %vec.epilog.scalar.ph1275.preheader, label %vec.epilog.ph1278, !prof !96

vec.epilog.ph1278:                                ; preds = %vector.main.loop.iter.check1258, %vec.epilog.iter.check1276
  %vec.epilog.resume.val1271 = phi i64 [ %n.vec1261, %vec.epilog.iter.check1276 ], [ 0, %vector.main.loop.iter.check1258 ]
  %n.vec1279 = and i64 %i.oi, -4                  ; 4 uses
  %i.pd = add i64 %indvars.iv794, %n.vec1279
  %i.pe = add i64 %.12555, %n.vec1279             ; 2 uses
  %i.pf = getelementptr [8 x i8], ptr %3, i64 %.12555
  %i.pg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv794
  br label %vec.epilog.vector.body1280

vec.epilog.vector.body1280:                       ; preds = %vec.epilog.vector.body1280, %vec.epilog.ph1278
  %index1281 = phi i64 [ %vec.epilog.resume.val1271, %vec.epilog.ph1278 ], [ %index.next1283, %vec.epilog.vector.body1280 ] ; 3 uses
  %i.ph = getelementptr [8 x i8], ptr %i.pf, i64 %index1281
  %wide.load1282 = load <4 x double>, ptr %i.ph, align 8, !tbaa !92
  %i.pi = getelementptr [8 x i8], ptr %i.pg, i64 %index1281
  store <4 x double> %wide.load1282, ptr %i.pi, align 8, !tbaa !92
  %index.next1283 = add nuw i64 %index1281, 4     ; 2 uses
  %i.pj = icmp eq i64 %index.next1283, %n.vec1279
  br i1 %i.pj, label %vec.epilog.middle.block1284, label %vec.epilog.vector.body1280, !llvm.loop !40

vec.epilog.middle.block1284:                      ; preds = %vec.epilog.vector.body1280
  %cmp.n1285 = icmp eq i64 %i.oi, %n.vec1279
  br i1 %cmp.n1285, label %.loopexit1573, label %vec.epilog.scalar.ph1275.preheader

vec.epilog.scalar.ph1275.preheader:               ; preds = %vector.memcheck1254, %iter.check1274, %vec.epilog.iter.check1276, %vec.epilog.middle.block1284
  %indvars.iv796.ph = phi i64 [ %indvars.iv794, %iter.check1274 ], [ %indvars.iv794, %vector.memcheck1254 ], [ %i.oq, %vec.epilog.iter.check1276 ], [ %i.pd, %vec.epilog.middle.block1284 ]
  %indvars.iv792.ph = phi i64 [ %.12555, %iter.check1274 ], [ %.12555, %vector.memcheck1254 ], [ %i.or, %vec.epilog.iter.check1276 ], [ %i.pe, %vec.epilog.middle.block1284 ]
  br label %vec.epilog.scalar.ph1275

vec.epilog.scalar.ph1275:                         ; preds = %vec.epilog.scalar.ph1275.preheader, %vec.epilog.scalar.ph1275
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %vec.epilog.scalar.ph1275 ], [ %indvars.iv796.ph, %vec.epilog.scalar.ph1275.preheader ] ; 3 uses
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %vec.epilog.scalar.ph1275 ], [ %indvars.iv792.ph, %vec.epilog.scalar.ph1275.preheader ] ; 2 uses
  %i.pk = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv792
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !92
  %i.pm = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv796
  store double %i.pl, ptr %i.pm, align 8, !tbaa !92
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 2 uses
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, 1
  %.not402.not = icmp slt i64 %indvars.iv796, %i.oj
  br i1 %.not402.not, label %vec.epilog.scalar.ph1275, label %.loopexit1573, !llvm.loop !41

.loopexit1573:                                    ; preds = %vec.epilog.scalar.ph1275, %vec.epilog.middle.block1284, %middle.block1269
  %indvars.iv.next793.lcssa = phi i64 [ %i.pe, %vec.epilog.middle.block1284 ], [ %i.or, %middle.block1269 ], [ %indvars.iv.next793, %vec.epilog.scalar.ph1275 ] ; 2 uses
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, %i.nz
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge558, label %iter.check1274, !llvm.loop !42

._crit_edge558:                                   ; preds = %.loopexit1573, %bb.q
  %.12.lcssa = phi i64 [ 0, %bb.q ], [ %indvars.iv.next793.lcssa, %.loopexit1573 ]
  %.not400567 = icmp slt i32 %., 0
  br i1 %.not400567, label %.loopexit, label %.lr.ph571

.lr.ph571:                                        ; preds = %._crit_edge558
  %i.pn = zext nneg i32 %i.s to i64               ; 13 uses
  %i.po = add nuw i32 %., 1
  %wide.trip.count818 = zext i32 %i.po to i64
  %i.pp = shl nuw nsw i64 %i.pn, 3
  %scevgep1298 = getelementptr i8, ptr %3, i64 8
  %broadcast.splatinsert1311 = insertelement <4 x i64> poison, i64 %i.pn, i64 0
  %broadcast.splat1312 = shufflevector <4 x i64> %broadcast.splatinsert1311, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pq = shl nuw nsw <4 x i64> %broadcast.splat1312, splat (i64 2) ; 5 uses
  %i.pr = mul nuw nsw <4 x i64> %broadcast.splat1312, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1682 = add nuw nsw <4 x i64> %i.pq, %i.pq ; 2 uses
  %invariant.op1683 = add nuw nsw <4 x i64> %invariant.op1682, %i.pq ; 2 uses
  %invariant.op1684 = add nuw nsw <4 x i64> %invariant.op1683, %i.pq
  %broadcast.splatinsert1345 = insertelement <4 x i64> poison, i64 %i.pn, i64 0
  %broadcast.splat1346 = shufflevector <4 x i64> %broadcast.splatinsert1345, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ps = mul nuw nsw <4 x i64> %broadcast.splat1346, <i64 0, i64 1, i64 2, i64 3>
  %i.pt = shl nuw nsw i64 %i.pn, 2
  %broadcast.splatinsert1348 = insertelement <4 x i64> poison, i64 %i.pt, i64 0
  %broadcast.splat1349 = shufflevector <4 x i64> %broadcast.splatinsert1348, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1337

iter.check1337:                                   ; preds = %._crit_edge565, %.lr.ph571
  %indvars.iv810 = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next811, %._crit_edge565 ] ; 18 uses
  %.14569 = phi i64 [ %.12.lcssa, %.lr.ph571 ], [ %indvars.iv.next809.lcssa, %._crit_edge565 ]
  %i.pu = add nuw i64 %indvars.iv810, %i.pn       ; 2 uses
  %i.pv = add nuw i64 %indvars.iv810, 1
  %i.pw = trunc i64 %indvars.iv810 to i32
  %i.px = add i32 %., %i.pw
  %i.py = mul i32 %i.s, %i.px
  %i.pz = sext i32 %i.py to i64
  %i.qa = add i64 %i.pv, %i.pz                    ; 2 uses
  %smax1303 = tail call i64 @llvm.smax.i64(i64 %i.pu, i64 %i.qa)
  %i.qb = add nuw i64 %indvars.iv810, %i.pn
  %i.qc = icmp slt i64 %i.pu, %i.qa               ; 2 uses
  %umin1304 = zext i1 %i.qc to i64
  %i.qd = add i64 %i.qb, %umin1304
  %i.qe = sub i64 %smax1303, %i.qd
  %indvars817 = trunc i64 %indvars.iv810 to i32
  %i.qf = add nuw nsw i32 %., %indvars817
  %i.qg = mul nsw i32 %i.qf, %i.s
  %i.qh = sext i32 %i.qg to i64
  %i.qi = add nsw i64 %indvars.iv810, %i.qh
  %sext = shl i64 %.14569, 32                     ; 2 uses
  %i.qj = ashr exact i64 %sext, 32                ; 6 uses
  %i.qk = select i1 %i.qc, i64 2, i64 1
  %i.ql = udiv i64 %i.qe, %i.pn
  %i.qm = add i64 %i.qk, %i.ql                    ; 7 uses
  %min.iters.check1306 = icmp ult i64 %i.qm, 4
  br i1 %min.iters.check1306, label %.lr.ph564.preheader, label %vector.memcheck1288

vector.memcheck1288:                              ; preds = %iter.check1337
  %i.qn = add nuw i64 %indvars.iv810, %i.pn       ; 2 uses
  %i.qo = add nuw i64 %indvars.iv810, 1
  %i.qp = trunc i64 %indvars.iv810 to i32
  %i.qq = add i32 %., %i.qp
  %i.qr = mul i32 %i.s, %i.qq
  %i.qs = sext i32 %i.qr to i64
  %i.qt = add i64 %i.qo, %i.qs                    ; 2 uses
  %i.qu = icmp slt i64 %i.qn, %i.qt
  %umin1291 = zext i1 %i.qu to i64                ; 2 uses
  %i.qv = add nuw i64 %indvars.iv810, %i.pn
  %smax1290 = tail call i64 @llvm.smax.i64(i64 %i.qn, i64 %i.qt)
  %i.qw = add i64 %i.qv, %umin1291
  %i.qx = sub i64 %smax1290, %i.qw
  %i.qy = shl nuw nsw i64 %indvars.iv810, 3       ; 2 uses
  %scevgep1289 = getelementptr i8, ptr %4, i64 %i.qy
  %scevgep1293.a = getelementptr i8, ptr %scevgep1289, i64 8
  %scevgep1287 = getelementptr nuw i8, ptr %4, i64 %i.qy
  %7 = udiv i64 %i.qx, %i.pn
  %8 = add i64 %7, %umin1291                      ; 2 uses
  %9 = mul i64 %i.pp, %8
  %scevgep1296 = getelementptr i8, ptr %scevgep1293.a, i64 %9
  %i.qz = ashr exact i64 %sext, 29                ; 2 uses
  %scevgep1297 = getelementptr i8, ptr %3, i64 %i.qz
  %i.ra = shl i64 %8, 3
  %i.rb = getelementptr i8, ptr %scevgep1298, i64 %i.ra
  %scevgep1299 = getelementptr i8, ptr %i.rb, i64 %i.qz
  %bound01300 = icmp ult ptr %scevgep1287, %scevgep1299
  %bound11301 = icmp ult ptr %scevgep1297, %scevgep1296
  %found.conflict1302 = and i1 %bound01300, %bound11301
  br i1 %found.conflict1302, label %.lr.ph564.preheader, label %vector.main.loop.iter.check1307

vector.main.loop.iter.check1307:                  ; preds = %vector.memcheck1288
  %min.iters.check1308 = icmp ult i64 %i.qm, 16
  br i1 %min.iters.check1308, label %vec.epilog.ph1341, label %vector.ph1309

vector.ph1309:                                    ; preds = %vector.main.loop.iter.check1307
  %i.rc = and i64 %i.qm, 12
  %n.vec1310 = and i64 %i.qm, -16                 ; 5 uses
  %i.rd = mul i64 %n.vec1310, %i.pn
  %i.re = add i64 %indvars.iv810, %i.rd           ; 2 uses
  %i.rf = add i64 %i.qj, %n.vec1310               ; 2 uses
  %broadcast.splatinsert1313 = insertelement <4 x i64> poison, i64 %indvars.iv810, i64 0
  %broadcast.splat1314 = shufflevector <4 x i64> %broadcast.splatinsert1313, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1315 = add nuw nsw <4 x i64> %broadcast.splat1314, %i.pr
  %i.rg = getelementptr [8 x i8], ptr %3, i64 %i.qj
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1309
  %index1317 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1330, %vector.body1316 ] ; 2 uses
  %vec.ind1318 = phi <4 x i64> [ %induction1315, %vector.ph1309 ], [ %vec.ind.next1331.reass, %vector.body1316 ] ; 5 uses
  %step.add1319 = add nuw nsw <4 x i64> %vec.ind1318, %i.pq
  %step.add.21320.reass = add nuw nsw <4 x i64> %vec.ind1318, %invariant.op1682
  %step.add.31321.reass = add nuw nsw <4 x i64> %vec.ind1318, %invariant.op1683
  %i.rh = getelementptr [8 x i8], ptr %i.rg, i64 %index1317 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 96
  %wide.load1322 = load <4 x double>, ptr %i.rh, align 8, !tbaa !92, !alias.scope !100
  %wide.load1323 = load <4 x double>, ptr %i.ri, align 8, !tbaa !92, !alias.scope !100
  %wide.load1324 = load <4 x double>, ptr %i.rj, align 8, !tbaa !92, !alias.scope !100
  %wide.load1325 = load <4 x double>, ptr %i.rk, align 8, !tbaa !92, !alias.scope !100
  %wide.gep1326 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1318
  %wide.gep1327 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add1319
  %wide.gep1328 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.21320.reass
  %wide.gep1329 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.31321.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1322, <4 x ptr> align 8 %wide.gep1326, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1323, <4 x ptr> align 8 %wide.gep1327, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1324, <4 x ptr> align 8 %wide.gep1328, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1325, <4 x ptr> align 8 %wide.gep1329, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1330 = add nuw i64 %index1317, 16    ; 2 uses
  %vec.ind.next1331.reass = add nuw nsw <4 x i64> %vec.ind1318, %invariant.op1684
  %i.rl = icmp eq i64 %index.next1330, %n.vec1310
  br i1 %i.rl, label %middle.block1332, label %vector.body1316, !llvm.loop !46

middle.block1332:                                 ; preds = %vector.body1316
  %cmp.n1333 = icmp eq i64 %i.qm, %n.vec1310
  br i1 %cmp.n1333, label %._crit_edge565, label %vec.epilog.iter.check1339

vec.epilog.iter.check1339:                        ; preds = %middle.block1332
  %min.epilog.iters.check1340 = icmp eq i64 %i.rc, 0
  br i1 %min.epilog.iters.check1340, label %.lr.ph564.preheader, label %vec.epilog.ph1341, !prof !96

vec.epilog.ph1341:                                ; preds = %vector.main.loop.iter.check1307, %vec.epilog.iter.check1339
  %vec.epilog.resume.val1334 = phi i64 [ %n.vec1310, %vec.epilog.iter.check1339 ], [ 0, %vector.main.loop.iter.check1307 ]
  %bc.resume.val1335 = phi i64 [ %i.re, %vec.epilog.iter.check1339 ], [ %indvars.iv810, %vector.main.loop.iter.check1307 ]
  %n.vec1342 = and i64 %i.qm, -4                  ; 4 uses
  %i.rm = mul i64 %n.vec1342, %i.pn
  %i.rn = add i64 %indvars.iv810, %i.rm
  %i.ro = add i64 %i.qj, %n.vec1342               ; 2 uses
  %broadcast.splatinsert1343 = insertelement <4 x i64> poison, i64 %bc.resume.val1335, i64 0
  %broadcast.splat1344 = shufflevector <4 x i64> %broadcast.splatinsert1343, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1347 = add nuw nsw <4 x i64> %broadcast.splat1344, %i.ps
  %i.rp = getelementptr [8 x i8], ptr %3, i64 %i.qj
  br label %vec.epilog.vector.body1350

vec.epilog.vector.body1350:                       ; preds = %vec.epilog.vector.body1350, %vec.epilog.ph1341
  %index1351 = phi i64 [ %vec.epilog.resume.val1334, %vec.epilog.ph1341 ], [ %index.next1355, %vec.epilog.vector.body1350 ] ; 2 uses
  %vec.ind1352 = phi <4 x i64> [ %induction1347, %vec.epilog.ph1341 ], [ %vec.ind.next1356, %vec.epilog.vector.body1350 ] ; 2 uses
  %i.rq = getelementptr [8 x i8], ptr %i.rp, i64 %index1351
  %wide.load1353 = load <4 x double>, ptr %i.rq, align 8, !tbaa !92, !alias.scope !100
  %wide.gep1354 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1352
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1353, <4 x ptr> align 8 %wide.gep1354, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1355 = add nuw i64 %index1351, 4     ; 2 uses
  %vec.ind.next1356 = add nuw nsw <4 x i64> %vec.ind1352, %broadcast.splat1349
  %i.rr = icmp eq i64 %index.next1355, %n.vec1342
  br i1 %i.rr, label %vec.epilog.middle.block1357, label %vec.epilog.vector.body1350, !llvm.loop !47

vec.epilog.middle.block1357:                      ; preds = %vec.epilog.vector.body1350
  %cmp.n1358 = icmp eq i64 %i.qm, %n.vec1342
  br i1 %cmp.n1358, label %._crit_edge565, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %vector.memcheck1288, %iter.check1337, %vec.epilog.iter.check1339, %vec.epilog.middle.block1357
  %indvars.iv812.ph = phi i64 [ %indvars.iv810, %iter.check1337 ], [ %indvars.iv810, %vector.memcheck1288 ], [ %i.re, %vec.epilog.iter.check1339 ], [ %i.rn, %vec.epilog.middle.block1357 ]
  %indvars.iv808.ph = phi i64 [ %i.qj, %iter.check1337 ], [ %i.qj, %vector.memcheck1288 ], [ %i.rf, %vec.epilog.iter.check1339 ], [ %i.ro, %vec.epilog.middle.block1357 ]
  br label %.lr.ph564

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.lr.ph564
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph564 ], [ %indvars.iv812.ph, %.lr.ph564.preheader ] ; 2 uses
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph564 ], [ %indvars.iv808.ph, %.lr.ph564.preheader ] ; 2 uses
  %i.rs = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv808
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !92
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv812
  store double %i.rt, ptr %i.ru, align 8, !tbaa !92
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, 1 ; 2 uses
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, %i.pn ; 2 uses
  %.not881 = icmp sgt i64 %indvars.iv.next813, %i.qi
  br i1 %.not881, label %._crit_edge565, label %.lr.ph564, !llvm.loop !48

._crit_edge565:                                   ; preds = %.lr.ph564, %vec.epilog.middle.block1357, %middle.block1332
  %indvars.iv.next809.lcssa = phi i64 [ %i.ro, %vec.epilog.middle.block1357 ], [ %i.rf, %middle.block1332 ], [ %indvars.iv.next809, %.lr.ph564 ]
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next811, %wide.trip.count818
  br i1 %exitcond819.not, label %.loopexit, label %iter.check1337, !llvm.loop !49

.thread423:                                       ; preds = %.thread416
  %i.rv = zext nneg i32 %.0328 to i64             ; 14 uses
  br i1 %.not379, label %.lr.ph507.preheader, label %.preheader432.preheader

.lr.ph507.preheader:                              ; preds = %.thread423
  %i.rw = add nuw nsw i32 %i.m, 1
  %ident.check1090.not = icmp ugt i32 %i.h, 1
  br label %iter.check1113

.preheader432.preheader:                          ; preds = %.thread423
  %wide.trip.count721 = zext nneg i32 %i.q to i64 ; 3 uses
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.rx = add i64 %i.b, 8
  %i.ry = shl nuw nsw i64 %i.rv, 3
  %i.rz = add nuw nsw i64 %i.ry, 8
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.sa = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %i.sb = mul i64 %i.rz, %indvars.iv707
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1040, label %._crit_edge484

iter.check1040:                                   ; preds = %.preheader432
  %i.sc = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1024 = icmp ult i64 %i.sa, 4
  br i1 %min.iters.check1024, label %.lr.ph483.preheader, label %vector.memcheck1022

vector.memcheck1022:                              ; preds = %iter.check1040
  %i.sd = shl nsw i64 %i.sc, 3
  %i.se = add i64 %i.rx, %i.sb
  %i.sf = add i64 %i.sd, %i.a
  %i.sg = sub i64 %i.sf, %i.se
  %diff.check1023 = icmp ugt i64 %i.sg, -128
  br i1 %diff.check1023, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1025

vector.main.loop.iter.check1025:                  ; preds = %vector.memcheck1022
  %min.iters.check1026 = icmp ult i64 %i.sa, 16
  br i1 %min.iters.check1026, label %vec.epilog.ph1044, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check1025
  %i.sh = and i64 %i.sa, 12
  %n.vec1028 = and i64 %i.sa, -16                 ; 5 uses
  %i.si = add i64 %indvars.iv707, %n.vec1028
  %i.sj = add i64 %n.vec1028, %i.sc               ; 2 uses
  %invariant.gep1656.a = getelementptr [8 x i8], ptr %3, i64 %i.sc
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1035, %vector.body1029 ] ; 3 uses
  %gep1657.a = getelementptr [8 x i8], ptr %invariant.gep1656.a, i64 %index1030 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %gep1657.a, i64 32
  %i.sm = getelementptr inbounds nuw i8, ptr %gep1657.a, i64 64
  %i.sn = getelementptr inbounds nuw i8, ptr %gep1657.a, i64 96
  %wide.load1031 = load <4 x double>, ptr %gep1657.a, align 8, !tbaa !92
  %wide.load1032 = load <4 x double>, ptr %i.sl, align 8, !tbaa !92
  %wide.load1033 = load <4 x double>, ptr %i.sm, align 8, !tbaa !92
  %wide.load1034 = load <4 x double>, ptr %i.sn, align 8, !tbaa !92
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %index1030 ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 40
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 72
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 104
  store <4 x double> %wide.load1031, ptr %i.sp, align 8, !tbaa !92
  store <4 x double> %wide.load1032, ptr %i.sq, align 8, !tbaa !92
  store <4 x double> %wide.load1033, ptr %i.sr, align 8, !tbaa !92
  store <4 x double> %wide.load1034, ptr %i.ss, align 8, !tbaa !92
  %index.next1035 = add nuw i64 %index1030, 16    ; 2 uses
  %i.st = icmp eq i64 %index.next1035, %n.vec1028
  br i1 %i.st, label %middle.block1036, label %vector.body1029, !llvm.loop !50

middle.block1036:                                 ; preds = %vector.body1029
  %cmp.n1037 = icmp eq i64 %i.sa, %n.vec1028
  br i1 %cmp.n1037, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1042

vec.epilog.iter.check1042:                        ; preds = %middle.block1036
  %min.epilog.iters.check1043 = icmp eq i64 %i.sh, 0
  br i1 %min.epilog.iters.check1043, label %.lr.ph483.preheader, label %vec.epilog.ph1044, !prof !96

vec.epilog.ph1044:                                ; preds = %vector.main.loop.iter.check1025, %vec.epilog.iter.check1042
  %vec.epilog.resume.val1038 = phi i64 [ %n.vec1028, %vec.epilog.iter.check1042 ], [ 0, %vector.main.loop.iter.check1025 ]
  %n.vec1045 = and i64 %i.sa, -4                  ; 4 uses
  %i.su = add i64 %indvars.iv707, %n.vec1045
  %i.sv = add i64 %n.vec1045, %i.sc               ; 2 uses
  %invariant.gep1658.a = getelementptr [8 x i8], ptr %3, i64 %i.sc
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  br label %vec.epilog.vector.body1046
end_hunk_1
begin_hunk_2_@dtpttf_:bb.a

vec.epilog.scalar.ph1114:                         ; preds = %vec.epilog.scalar.ph1114.prol.loopexit, %vec.epilog.scalar.ph1114
  %indvars.iv739 = phi i64 [ %indvars.iv.next740.7, %vec.epilog.scalar.ph1114 ], [ %indvars.iv739.unr, %vec.epilog.scalar.ph1114.prol.loopexit ] ; 2 uses
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.7, %vec.epilog.scalar.ph1114 ], [ %indvars.iv735.unr, %vec.epilog.scalar.ph1114.prol.loopexit ] ; 9 uses
  %i.wi = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !92
  %i.wk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv739
  store double %i.wj, ptr %i.wk, align 8, !tbaa !92
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, %i.rv ; 2 uses
  %i.wl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wm = getelementptr i8, ptr %i.wl, i64 8
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !92
  %i.wo = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740
  store double %i.wn, ptr %i.wo, align 8, !tbaa !92
  %indvars.iv.next740.1 = add nsw i64 %indvars.iv.next740, %i.rv ; 2 uses
  %i.wp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wq = getelementptr i8, ptr %i.wp, i64 16
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !92
  %i.ws = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.1
  store double %i.wr, ptr %i.ws, align 8, !tbaa !92
  %indvars.iv.next740.2 = add nsw i64 %indvars.iv.next740.1, %i.rv ; 2 uses
  %i.wt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wu = getelementptr i8, ptr %i.wt, i64 24
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !92
  %i.ww = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.2
  store double %i.wv, ptr %i.ww, align 8, !tbaa !92
  %indvars.iv.next740.3 = add nsw i64 %indvars.iv.next740.2, %i.rv ; 2 uses
  %i.wx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wy = getelementptr i8, ptr %i.wx, i64 32
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !92
  %i.xa = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.3
  store double %i.wz, ptr %i.xa, align 8, !tbaa !92
  %indvars.iv.next740.4 = add nsw i64 %indvars.iv.next740.3, %i.rv ; 2 uses
  %i.xb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.xc = getelementptr i8, ptr %i.xb, i64 40
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !92
  %i.xe = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.4
  store double %i.xd, ptr %i.xe, align 8, !tbaa !92
  %indvars.iv.next740.5 = add nsw i64 %indvars.iv.next740.4, %i.rv ; 2 uses
  %i.xf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.xg = getelementptr i8, ptr %i.xf, i64 48
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !92
  %i.xi = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.5
  store double %i.xh, ptr %i.xi, align 8, !tbaa !92
  %indvars.iv.next740.6 = add nsw i64 %indvars.iv.next740.5, %i.rv ; 2 uses
  %i.xj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.xk = getelementptr i8, ptr %i.xj, i64 56
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !92
  %i.xm = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.6
  store double %i.xl, ptr %i.xm, align 8, !tbaa !92
  %indvars.iv.next736.7 = add nsw i64 %indvars.iv735, 8 ; 2 uses
  %indvars.iv.next740.7 = add nsw i64 %indvars.iv.next740.6, %i.rv
  %lftr.wideiv746.7 = trunc i64 %indvars.iv.next736.7 to i32
  %exitcond747.not.7 = icmp eq i32 %i.vm, %lftr.wideiv746.7
  br i1 %exitcond747.not.7, label %.loopexit1574, label %vec.epilog.scalar.ph1114, !llvm.loop !60

.loopexit1574:                                    ; preds = %vec.epilog.scalar.ph1114.prol.loopexit, %vec.epilog.scalar.ph1114, %vec.epilog.middle.block1123, %middle.block1109
  %indvars.iv.next745 = add nuw i32 %indvars.iv744, 1
  %exitcond748.not = icmp eq i32 %indvars.iv744, %i.q
  %indvar.next1093 = add i32 %indvar1092, 1
  %indvar.next1096 = add i64 %indvar1095, 1
  %loop-unroll.iv.next1621 = add i32 %loop-unroll.iv1620, %i.vb
  br i1 %exitcond748.not, label %._crit_edge508, label %iter.check1113, !llvm.loop !61

._crit_edge508:                                   ; preds = %.loopexit1574
  %.not392.not517.not = icmp eq i32 %i.h, 0
  br i1 %.not392.not517.not, label %.loopexit, label %.lr.ph522.preheader

.lr.ph522.preheader:                              ; preds = %._crit_edge508
  %i.xn = zext nneg i32 %.0328 to i64
  %i.xo = zext nneg i32 %i.q to i64               ; 2 uses
  %wide.trip.count764 = zext nneg i32 %i.h to i64
  %i.xp = sext i32 %i.vm to i64
  %i.xq = shl nuw nsw i64 %i.rv, 3
  %i.xr = add nuw nsw i64 %i.rv, 1
  br label %iter.check1147

iter.check1147:                                   ; preds = %._crit_edge515, %.lr.ph522.preheader
  %indvar1128 = phi i64 [ %indvar.next1129, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 4 uses
  %indvars.iv759 = phi i64 [ %indvars.iv.next760, %._crit_edge515 ], [ %i.xo, %.lr.ph522.preheader ] ; 2 uses
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 9 uses
  %.22520 = phi i64 [ %indvars.iv.next751.lcssa, %._crit_edge515 ], [ %i.xp, %.lr.ph522.preheader ] ; 7 uses
  %i.xs = mul i64 %i.xr, %indvar1128
  %i.xt = add i64 %i.xs, %i.xo
  %umax = tail call i64 @llvm.umax.i64(i64 %i.xt, i64 %indvars.iv752)
  %i.xu = mul i64 %indvar1128, %i.rv
  %reass.sub1576 = sub i64 %umax, %i.xu
  %i.xv = add i64 %reass.sub1576, 1               ; 7 uses
  %i.xw = add nuw nsw i64 %indvars.iv752, %indvars.iv759
  %min.iters.check1131 = icmp ult i64 %i.xv, 4
  br i1 %min.iters.check1131, label %.lr.ph514.preheader, label %vector.memcheck1127

vector.memcheck1127:                              ; preds = %iter.check1147
  %i.xx = mul i64 %i.xq, %indvar1128
  %i.xy = shl i64 %.22520, 3
  %i.xz = add i64 %i.xx, %i.b
  %i.ya = add i64 %i.xy, %i.a
  %i.yb = sub i64 %i.ya, %i.xz
  %diff.check1130 = icmp ugt i64 %i.yb, -128
  br i1 %diff.check1130, label %.lr.ph514.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %vector.memcheck1127
  %min.iters.check1133 = icmp ult i64 %i.xv, 16
  br i1 %min.iters.check1133, label %vec.epilog.ph1151, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %i.yc = and i64 %i.xv, 12
  %n.vec1135 = and i64 %i.xv, -16                 ; 5 uses
  %i.yd = add i64 %indvars.iv752, %n.vec1135
  %i.ye = add i64 %.22520, %n.vec1135             ; 2 uses
  %i.yf = getelementptr [8 x i8], ptr %3, i64 %.22520
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv752
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1134
  %index1137 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1142, %vector.body1136 ] ; 3 uses
  %i.yh = getelementptr [8 x i8], ptr %i.yf, i64 %index1137 ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 32
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 64
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 96
  %wide.load1138 = load <4 x double>, ptr %i.yh, align 8, !tbaa !92
  %wide.load1139 = load <4 x double>, ptr %i.yi, align 8, !tbaa !92
  %wide.load1140 = load <4 x double>, ptr %i.yj, align 8, !tbaa !92
  %wide.load1141 = load <4 x double>, ptr %i.yk, align 8, !tbaa !92
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %index1137 ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 32
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 64
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yl, i64 96
  store <4 x double> %wide.load1138, ptr %i.yl, align 8, !tbaa !92
  store <4 x double> %wide.load1139, ptr %i.ym, align 8, !tbaa !92
  store <4 x double> %wide.load1140, ptr %i.yn, align 8, !tbaa !92
  store <4 x double> %wide.load1141, ptr %i.yo, align 8, !tbaa !92
  %index.next1142 = add nuw i64 %index1137, 16    ; 2 uses
  %i.yp = icmp eq i64 %index.next1142, %n.vec1135
  br i1 %i.yp, label %middle.block1143, label %vector.body1136, !llvm.loop !62

middle.block1143:                                 ; preds = %vector.body1136
  %cmp.n1144 = icmp eq i64 %i.xv, %n.vec1135
  br i1 %cmp.n1144, label %._crit_edge515, label %vec.epilog.iter.check1149

vec.epilog.iter.check1149:                        ; preds = %middle.block1143
  %min.epilog.iters.check1150 = icmp eq i64 %i.yc, 0
  br i1 %min.epilog.iters.check1150, label %.lr.ph514.preheader, label %vec.epilog.ph1151, !prof !96

vec.epilog.ph1151:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1149
  %vec.epilog.resume.val1145 = phi i64 [ %n.vec1135, %vec.epilog.iter.check1149 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1152 = and i64 %i.xv, -4                  ; 4 uses
  %i.yq = add i64 %indvars.iv752, %n.vec1152
  %i.yr = add i64 %.22520, %n.vec1152             ; 2 uses
  %i.ys = getelementptr [8 x i8], ptr %3, i64 %.22520
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv752
  br label %vec.epilog.vector.body1153

vec.epilog.vector.body1153:                       ; preds = %vec.epilog.vector.body1153, %vec.epilog.ph1151
  %index1154 = phi i64 [ %vec.epilog.resume.val1145, %vec.epilog.ph1151 ], [ %index.next1156, %vec.epilog.vector.body1153 ] ; 3 uses
  %i.yu = getelementptr [8 x i8], ptr %i.ys, i64 %index1154
  %wide.load1155 = load <4 x double>, ptr %i.yu, align 8, !tbaa !92
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %index1154
  store <4 x double> %wide.load1155, ptr %i.yv, align 8, !tbaa !92
  %index.next1156 = add nuw i64 %index1154, 4     ; 2 uses
  %i.yw = icmp eq i64 %index.next1156, %n.vec1152
  br i1 %i.yw, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1153, !llvm.loop !63

vec.epilog.middle.block1157:                      ; preds = %vec.epilog.vector.body1153
  %cmp.n1158 = icmp eq i64 %i.xv, %n.vec1152
  br i1 %cmp.n1158, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %vector.memcheck1127, %iter.check1147, %vec.epilog.iter.check1149, %vec.epilog.middle.block1157
  %indvars.iv754.ph = phi i64 [ %indvars.iv752, %iter.check1147 ], [ %indvars.iv752, %vector.memcheck1127 ], [ %i.yd, %vec.epilog.iter.check1149 ], [ %i.yq, %vec.epilog.middle.block1157 ]
  %indvars.iv750.ph = phi i64 [ %.22520, %iter.check1147 ], [ %.22520, %vector.memcheck1127 ], [ %i.ye, %vec.epilog.iter.check1149 ], [ %i.yr, %vec.epilog.middle.block1157 ]
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %.lr.ph514
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph514 ], [ %indvars.iv754.ph, %.lr.ph514.preheader ] ; 3 uses
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %.lr.ph514 ], [ %indvars.iv750.ph, %.lr.ph514.preheader ] ; 2 uses
  %i.yx = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv750
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !92
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv754
  store double %i.yy, ptr %i.yz, align 8, !tbaa !92
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %.not393.not = icmp samesign ult i64 %indvars.iv754, %i.xw
  br i1 %.not393.not, label %.lr.ph514, label %._crit_edge515, !llvm.loop !64

._crit_edge515:                                   ; preds = %.lr.ph514, %vec.epilog.middle.block1157, %middle.block1143
  %indvars.iv.next751.lcssa = phi i64 [ %i.yr, %vec.epilog.middle.block1157 ], [ %i.ye, %middle.block1143 ], [ %indvars.iv.next751, %.lr.ph514 ]
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, %i.xn
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count764
  %indvar.next1129 = add i64 %indvar1128, 1
  br i1 %exitcond765.not, label %.loopexit, label %iter.check1147, !llvm.loop !65

bb.v:                                             ; preds = %bb.j
  br i1 %.not379, label %.lr.ph605.preheader, label %.lr.ph582

.lr.ph582:                                        ; preds = %bb.v
  %i.za = mul nuw nsw i32 %i.s, %.0328            ; 2 uses
  %i.zb = add nuw nsw i32 %i.s, 1
  %i.zc = zext nneg i32 %i.s to i64               ; 11 uses
  %i.zd = zext nneg i32 %i.za to i64              ; 5 uses
  %scevgep1359 = getelementptr i8, ptr %4, i64 8
  %i.ze = shl nuw nsw i64 %i.zc, 3
  %scevgep1370 = getelementptr i8, ptr %3, i64 8
  %broadcast.splatinsert1382 = insertelement <4 x i64> poison, i64 %i.zc, i64 0
  %broadcast.splat1383 = shufflevector <4 x i64> %broadcast.splatinsert1382, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zf = shl nuw nsw <4 x i64> %broadcast.splat1383, splat (i64 2) ; 5 uses
  %i.zg = mul nuw nsw <4 x i64> %broadcast.splat1383, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1685 = add <4 x i64> %i.zf, %i.zf  ; 2 uses
  %invariant.op1686 = add <4 x i64> %invariant.op1685, %i.zf ; 2 uses
  %invariant.op1689 = add <4 x i64> %invariant.op1686, %i.zf
  %broadcast.splatinsert1416 = insertelement <4 x i64> poison, i64 %i.zc, i64 0
  %broadcast.splat1417 = shufflevector <4 x i64> %broadcast.splatinsert1416, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zh = mul nuw nsw <4 x i64> %broadcast.splat1417, <i64 0, i64 1, i64 2, i64 3>
  %i.zi = shl nuw nsw i64 %i.zc, 2
  %broadcast.splatinsert1419 = insertelement <4 x i64> poison, i64 %i.zi, i64 0
  %broadcast.splat1420 = shufflevector <4 x i64> %broadcast.splatinsert1419, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.w

.loopexit427.loopexit:                            ; preds = %.lr.ph576, %vec.epilog.middle.block1428, %middle.block1403
  %indvars.iv.next821.lcssa = phi i64 [ %i.aat, %vec.epilog.middle.block1428 ], [ %i.aam, %middle.block1403 ], [ %indvars.iv.next821, %.lr.ph576 ]
  %i.zj = trunc nsw i64 %indvars.iv.next821.lcssa to i32
  br label %.loopexit427

.loopexit427:                                     ; preds = %.loopexit427.loopexit, %bb.w
  %.25.lcssa = phi i32 [ %.24580, %bb.w ], [ %i.zj, %.loopexit427.loopexit ] ; 2 uses
  %indvars.iv.next823 = add i32 %indvars.iv822, %i.zb
  %exitcond829.not = icmp eq i32 %i.zp, %i.q
  br i1 %exitcond829.not, label %.lr.ph597, label %bb.w, !llvm.loop !66

bb.w:                                             ; preds = %.lr.ph582, %.loopexit427
  %indvars.iv822 = phi i32 [ %i.s, %.lr.ph582 ], [ %indvars.iv.next823, %.loopexit427 ] ; 4 uses
  %.24580 = phi i32 [ 0, %.lr.ph582 ], [ %.25.lcssa, %.loopexit427 ] ; 2 uses
  %.8374579 = phi i32 [ 0, %.lr.ph582 ], [ %i.zp, %.loopexit427 ] ; 2 uses
  %i.zk = sext i32 %indvars.iv822 to i64          ; 2 uses
  %10 = shl nsw i64 %i.zk, 3                      ; 2 uses
  %scevgep1358 = getelementptr i8, ptr %4, i64 %10
  %i.zl = add nsw i64 %i.zc, %i.zk                ; 3 uses
  %smax1362 = tail call i64 @llvm.smax.i64(i64 %i.zl, i64 %i.zd)
  %i.zm = icmp slt i64 %i.zl, %i.zd
  %umin1363 = zext i1 %i.zm to i64                ; 2 uses
  %i.zn = add nsw i64 %i.zl, %umin1363
  %i.zo = sub i64 %smax1362, %i.zn
  %i.zp = add nuw nsw i32 %.8374579, 1            ; 3 uses
  %i.zq = mul nuw nsw i32 %i.zp, %i.s
  %i.zr = add nuw nsw i32 %i.zq, %.8374579
  %i.zs = icmp slt i32 %i.zr, %i.za
  br i1 %i.zs, label %iter.check1408, label %.loopexit427

iter.check1408:                                   ; preds = %bb.w
  %i.zt = sext i32 %indvars.iv822 to i64
  %i.zu = add nsw i64 %i.zc, %i.zt                ; 3 uses
  %i.zv = icmp slt i64 %i.zu, %i.zd               ; 2 uses
  %umin1376 = zext i1 %i.zv to i64
  %smax1375 = tail call i64 @llvm.smax.i64(i64 %i.zu, i64 %i.zd)
  %i.zw = add nsw i64 %i.zu, %umin1376
  %i.zx = sub i64 %smax1375, %i.zw
  %i.zy = sext i32 %indvars.iv822 to i64          ; 6 uses
  %i.zz = sext i32 %.24580 to i64                 ; 8 uses
  %i.aaa = select i1 %i.zv, i64 2, i64 1
  %i.aab = udiv i64 %i.zx, %i.zc
  %i.aac = add i64 %i.aaa, %i.aab                 ; 7 uses
  %min.iters.check1377 = icmp ult i64 %i.aac, 4
  br i1 %min.iters.check1377, label %.lr.ph576.preheader, label %vector.memcheck1361

vector.memcheck1361:                              ; preds = %iter.check1408
  %i.aad = udiv i64 %i.zo, %i.zc
  %i.aae = add i64 %i.aad, %umin1363              ; 2 uses
  %i.aaf = mul i64 %i.ze, %i.aae
  %scevgep1364 = getelementptr i8, ptr %scevgep1359, i64 %i.aaf
  %scevgep1368 = getelementptr i8, ptr %scevgep1364, i64 %10
  %i.aag = shl nsw i64 %i.zz, 3
  %scevgep1369 = getelementptr i8, ptr %3, i64 %i.aag
  %i.aah = add i64 %i.aae, %i.zz
  %i.aai = shl i64 %i.aah, 3
  %scevgep1371 = getelementptr i8, ptr %scevgep1370, i64 %i.aai
  %bound01372 = icmp ult ptr %scevgep1358, %scevgep1371
  %bound11373 = icmp ult ptr %scevgep1369, %scevgep1368
  %found.conflict1374 = and i1 %bound01372, %bound11373
  br i1 %found.conflict1374, label %.lr.ph576.preheader, label %vector.main.loop.iter.check1378

vector.main.loop.iter.check1378:                  ; preds = %vector.memcheck1361
  %min.iters.check1379 = icmp ult i64 %i.aac, 16
  br i1 %min.iters.check1379, label %vec.epilog.ph1412, label %vector.ph1380

vector.ph1380:                                    ; preds = %vector.main.loop.iter.check1378
  %i.aaj = and i64 %i.aac, 12
  %n.vec1381 = and i64 %i.aac, -16                ; 5 uses
  %i.aak = mul i64 %n.vec1381, %i.zc
  %i.aal = add i64 %i.aak, %i.zy                  ; 2 uses
  %i.aam = add i64 %n.vec1381, %i.zz              ; 2 uses
  %broadcast.splatinsert1384 = insertelement <4 x i64> poison, i64 %i.zy, i64 0
  %broadcast.splat1385 = shufflevector <4 x i64> %broadcast.splatinsert1384, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1386 = add nsw <4 x i64> %broadcast.splat1385, %i.zg
  %invariant.gep1687 = getelementptr [8 x i8], ptr %3, i64 %i.zz
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1380
  %index1388 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1401, %vector.body1387 ] ; 2 uses
  %vec.ind1389 = phi <4 x i64> [ %induction1386, %vector.ph1380 ], [ %vec.ind.next1402.reass, %vector.body1387 ] ; 5 uses
  %step.add1390 = add nsw <4 x i64> %vec.ind1389, %i.zf
  %step.add.21391.reass = add <4 x i64> %vec.ind1389, %invariant.op1685
  %step.add.31392.reass = add <4 x i64> %vec.ind1389, %invariant.op1686
  %gep1688 = getelementptr [8 x i8], ptr %invariant.gep1687, i64 %index1388 ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %gep1688, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %gep1688, i64 64
  %i.aap = getelementptr inbounds nuw i8, ptr %gep1688, i64 96
  %wide.load1393 = load <4 x double>, ptr %gep1688, align 8, !tbaa !92, !alias.scope !102
  %wide.load1394 = load <4 x double>, ptr %i.aan, align 8, !tbaa !92, !alias.scope !102
  %wide.load1395 = load <4 x double>, ptr %i.aao, align 8, !tbaa !92, !alias.scope !102
  %wide.load1396 = load <4 x double>, ptr %i.aap, align 8, !tbaa !92, !alias.scope !102
  %wide.gep1397 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %vec.ind1389
  %wide.gep1398 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add1390
  %wide.gep1399 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add.21391.reass
  %wide.gep1400 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add.31392.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1393, <4 x ptr> align 8 %wide.gep1397, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1394, <4 x ptr> align 8 %wide.gep1398, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1395, <4 x ptr> align 8 %wide.gep1399, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1396, <4 x ptr> align 8 %wide.gep1400, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1401 = add nuw i64 %index1388, 16    ; 2 uses
  %vec.ind.next1402.reass = add <4 x i64> %vec.ind1389, %invariant.op1689
  %i.aaq = icmp eq i64 %index.next1401, %n.vec1381
  br i1 %i.aaq, label %middle.block1403, label %vector.body1387, !llvm.loop !70

middle.block1403:                                 ; preds = %vector.body1387
  %cmp.n1404 = icmp eq i64 %i.aac, %n.vec1381
  br i1 %cmp.n1404, label %.loopexit427.loopexit, label %vec.epilog.iter.check1410

vec.epilog.iter.check1410:                        ; preds = %middle.block1403
  %min.epilog.iters.check1411 = icmp eq i64 %i.aaj, 0
  br i1 %min.epilog.iters.check1411, label %.lr.ph576.preheader, label %vec.epilog.ph1412, !prof !96

vec.epilog.ph1412:                                ; preds = %vector.main.loop.iter.check1378, %vec.epilog.iter.check1410
  %vec.epilog.resume.val1405 = phi i64 [ %n.vec1381, %vec.epilog.iter.check1410 ], [ 0, %vector.main.loop.iter.check1378 ]
  %bc.resume.val1406 = phi i64 [ %i.aal, %vec.epilog.iter.check1410 ], [ %i.zy, %vector.main.loop.iter.check1378 ]
  %n.vec1413 = and i64 %i.aac, -4                 ; 4 uses
  %i.aar = mul i64 %n.vec1413, %i.zc
  %i.aas = add i64 %i.aar, %i.zy
  %i.aat = add i64 %n.vec1413, %i.zz              ; 2 uses
  %broadcast.splatinsert1414 = insertelement <4 x i64> poison, i64 %bc.resume.val1406, i64 0
  %broadcast.splat1415 = shufflevector <4 x i64> %broadcast.splatinsert1414, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1418 = add nsw <4 x i64> %broadcast.splat1415, %i.zh
  %invariant.gep1690.a = getelementptr [8 x i8], ptr %3, i64 %i.zz
  br label %vec.epilog.vector.body1421

vec.epilog.vector.body1421:                       ; preds = %vec.epilog.vector.body1421, %vec.epilog.ph1412
  %index1422 = phi i64 [ %vec.epilog.resume.val1405, %vec.epilog.ph1412 ], [ %index.next1426, %vec.epilog.vector.body1421 ] ; 2 uses
  %vec.ind1423 = phi <4 x i64> [ %induction1418, %vec.epilog.ph1412 ], [ %vec.ind.next1427, %vec.epilog.vector.body1421 ] ; 2 uses
  %gep1691.a = getelementptr [8 x i8], ptr %invariant.gep1690.a, i64 %index1422
  %wide.load1424 = load <4 x double>, ptr %gep1691.a, align 8, !tbaa !92, !alias.scope !102
  %wide.gep1425 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %vec.ind1423
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1424, <4 x ptr> align 8 %wide.gep1425, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1426 = add nuw i64 %index1422, 4     ; 2 uses
  %vec.ind.next1427 = add nsw <4 x i64> %vec.ind1423, %broadcast.splat1420
  %i.aau = icmp eq i64 %index.next1426, %n.vec1413
  br i1 %i.aau, label %vec.epilog.middle.block1428, label %vec.epilog.vector.body1421, !llvm.loop !71

vec.epilog.middle.block1428:                      ; preds = %vec.epilog.vector.body1421
  %cmp.n1429 = icmp eq i64 %i.aac, %n.vec1413
  br i1 %cmp.n1429, label %.loopexit427.loopexit, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %vector.memcheck1361, %iter.check1408, %vec.epilog.iter.check1410, %vec.epilog.middle.block1428
  %indvars.iv824.ph = phi i64 [ %i.zy, %iter.check1408 ], [ %i.zy, %vector.memcheck1361 ], [ %i.aal, %vec.epilog.iter.check1410 ], [ %i.aas, %vec.epilog.middle.block1428 ]
  %indvars.iv820.ph = phi i64 [ %i.zz, %iter.check1408 ], [ %i.zz, %vector.memcheck1361 ], [ %i.aam, %vec.epilog.iter.check1410 ], [ %i.aat, %vec.epilog.middle.block1428 ]
  br label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %.lr.ph576
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph576 ], [ %indvars.iv824.ph, %.lr.ph576.preheader ] ; 2 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %.lr.ph576 ], [ %indvars.iv820.ph, %.lr.ph576.preheader ] ; 2 uses
  %i.aav = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv820
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !92
  %i.aax = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv824
  store double %i.aaw, ptr %i.aax, align 8, !tbaa !92
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1 ; 2 uses
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, %i.zc ; 2 uses
  %i.aay = icmp slt i64 %indvars.iv.next825, %i.zd
  br i1 %i.aay, label %.lr.ph576, label %.loopexit427.loopexit, !llvm.loop !72

.lr.ph597:                                        ; preds = %.loopexit427
  %i.aaz = add nuw nsw i32 %i.s, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph597, %._crit_edge590
  %indvars.iv840 = phi i32 [ %i.q, %.lr.ph597 ], [ %indvars.iv.next841, %._crit_edge590 ] ; 3 uses
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 5 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.adw, %._crit_edge590 ] ; 3 uses
  %i.aba = xor i32 %.10364593, -1
  %i.abb = add nsw i32 %i.q, %i.aba               ; 3 uses
  %i.abc = zext i32 %i.abb to i64
  %i.abd = add nuw nsw i64 %i.abc, 1              ; 5 uses
  %i.abe = sext i32 %indvars.iv833 to i64
  %i.abf = shl nsw i64 %i.abe, 3
  %i.abg = xor i32 %.10364593, -1
  %i.abh = add nsw i32 %i.q, %i.abg
  %i.abi = add i32 %i.abh, %indvars.iv833         ; 2 uses
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.abi
  br i1 %.not389585, label %._crit_edge590, label %iter.check1451

iter.check1451:                                   ; preds = %bb.x
  %i.abj = sext i32 %indvars.iv833 to i64         ; 6 uses
  %i.abk = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1434 = icmp ult i32 %i.abb, 3
  br i1 %min.iters.check1434, label %.lr.ph589.preheader, label %vector.memcheck1432

vector.memcheck1432:                              ; preds = %iter.check1451
  %i.abl = shl nsw i64 %i.abk, 3
  %i.abm = add i64 %i.abf, %i.b
  %i.abn = add i64 %i.abl, %i.a
  %i.abo = sub i64 %i.abn, %i.abm
  %diff.check1433 = icmp ugt i64 %i.abo, -128
  br i1 %diff.check1433, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1435

vector.main.loop.iter.check1435:                  ; preds = %vector.memcheck1432
  %min.iters.check1436 = icmp ult i32 %i.abb, 15
  br i1 %min.iters.check1436, label %vec.epilog.ph1455, label %vector.ph1437

vector.ph1437:                                    ; preds = %vector.main.loop.iter.check1435
  %i.abp = and i64 %i.abd, 12
  %n.vec1438 = and i64 %i.abd, 8589934576         ; 5 uses
  %i.abq = add nsw i64 %n.vec1438, %i.abj
  %i.abr = add nsw i64 %n.vec1438, %i.abk         ; 2 uses
  %invariant.gep1692 = getelementptr [8 x i8], ptr %3, i64 %i.abk
  %invariant.gep1694 = getelementptr [8 x i8], ptr %4, i64 %i.abj
  br label %vector.body1439

vector.body1439:                                  ; preds = %vector.body1439, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1445, %vector.body1439 ] ; 3 uses
  %gep1693 = getelementptr [8 x i8], ptr %invariant.gep1692, i64 %index1440 ; 4 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %gep1693, i64 32
  %i.abt = getelementptr inbounds nuw i8, ptr %gep1693, i64 64
  %i.abu = getelementptr inbounds nuw i8, ptr %gep1693, i64 96
  %wide.load1441 = load <4 x double>, ptr %gep1693, align 8, !tbaa !92
  %wide.load1442 = load <4 x double>, ptr %i.abs, align 8, !tbaa !92
  %wide.load1443 = load <4 x double>, ptr %i.abt, align 8, !tbaa !92
  %wide.load1444 = load <4 x double>, ptr %i.abu, align 8, !tbaa !92
  %gep1695 = getelementptr [8 x i8], ptr %invariant.gep1694, i64 %index1440 ; 4 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %gep1695, i64 32
  %i.abw = getelementptr inbounds nuw i8, ptr %gep1695, i64 64
  %i.abx = getelementptr inbounds nuw i8, ptr %gep1695, i64 96
  store <4 x double> %wide.load1441, ptr %gep1695, align 8, !tbaa !92
  store <4 x double> %wide.load1442, ptr %i.abv, align 8, !tbaa !92
  store <4 x double> %wide.load1443, ptr %i.abw, align 8, !tbaa !92
  store <4 x double> %wide.load1444, ptr %i.abx, align 8, !tbaa !92
  %index.next1445 = add nuw i64 %index1440, 16    ; 2 uses
  %i.aby = icmp eq i64 %index.next1445, %n.vec1438
  br i1 %i.aby, label %middle.block1446, label %vector.body1439, !llvm.loop !73

middle.block1446:                                 ; preds = %vector.body1439
  %cmp.n1447 = icmp eq i64 %i.abd, %n.vec1438
  br i1 %cmp.n1447, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1453

vec.epilog.iter.check1453:                        ; preds = %middle.block1446
  %min.epilog.iters.check1454 = icmp eq i64 %i.abp, 0
  br i1 %min.epilog.iters.check1454, label %.lr.ph589.preheader, label %vec.epilog.ph1455, !prof !96

vec.epilog.ph1455:                                ; preds = %vector.main.loop.iter.check1435, %vec.epilog.iter.check1453
  %vec.epilog.resume.val1448 = phi i64 [ %n.vec1438, %vec.epilog.iter.check1453 ], [ 0, %vector.main.loop.iter.check1435 ]
  %n.vec1456 = and i64 %i.abd, 8589934588         ; 4 uses
  %i.abz = add nsw i64 %n.vec1456, %i.abj
  %i.aca = add nsw i64 %n.vec1456, %i.abk         ; 2 uses
  %invariant.gep1696 = getelementptr [8 x i8], ptr %3, i64 %i.abk
  %invariant.gep1698 = getelementptr [8 x i8], ptr %4, i64 %i.abj
  br label %vec.epilog.vector.body1457

vec.epilog.vector.body1457:                       ; preds = %vec.epilog.vector.body1457, %vec.epilog.ph1455
  %index1458 = phi i64 [ %vec.epilog.resume.val1448, %vec.epilog.ph1455 ], [ %index.next1460, %vec.epilog.vector.body1457 ] ; 3 uses
  %gep1697 = getelementptr [8 x i8], ptr %invariant.gep1696, i64 %index1458
  %wide.load1459 = load <4 x double>, ptr %gep1697, align 8, !tbaa !92
  %gep1699 = getelementptr [8 x i8], ptr %invariant.gep1698, i64 %index1458
  store <4 x double> %wide.load1459, ptr %gep1699, align 8, !tbaa !92
  %index.next1460 = add nuw i64 %index1458, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next1460, %n.vec1456
  br i1 %i.acb, label %vec.epilog.middle.block1461, label %vec.epilog.vector.body1457, !llvm.loop !74

vec.epilog.middle.block1461:                      ; preds = %vec.epilog.vector.body1457
  %cmp.n1462 = icmp eq i64 %i.abd, %n.vec1456
end_hunk_2
begin_hunk_3_@dtpttf_:bb.a
  %indvars.iv.next832.lcssa = phi i64 [ %i.aca, %vec.epilog.middle.block1461 ], [ %i.abr, %middle.block1446 ], [ %indvars.iv.next832.lcssa1590.unr, %.lr.ph589.prol.loopexit ], [ %indvars.iv.next832.7, %.lr.ph589 ]
  %i.adv = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.adv, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.aaz
  %i.adw = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.adw, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !77

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.adx = add nuw nsw i32 %i.q, 1
  %i.ady = mul i32 %i.adx, %i.s
  %i.adz = sext i32 %i.ady to i64                 ; 4 uses
  %i.aea = zext nneg i32 %i.s to i64              ; 13 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.aeb = shl nsw i64 %i.adz, 3
  %i.aec = add i64 %i.aeb, %i.b
  %i.aed = shl nuw nsw i64 %i.aea, 3
  %i.aee = add nuw nsw i64 %i.aea, 1
  br label %iter.check1485

iter.check1485:                                   ; preds = %.lr.ph605.preheader, %.loopexit1572
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1572 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.adz, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1572 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1572 ] ; 7 uses
  %i.aef = mul i64 %i.aee, %indvars.iv855
  %i.aeg = add i64 %i.aef, %i.adz
  %smax1467 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.aeg)
  %i.aeh = mul i64 %indvars.iv855, %i.aea
  %i.aei = add i64 %i.aeh, %i.adz
  %reass.sub1579 = sub i64 %smax1467, %i.aei
  %i.aej = add i64 %reass.sub1579, 1              ; 7 uses
  %i.aek = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1468 = icmp ult i64 %i.aej, 4
  br i1 %min.iters.check1468, label %vec.epilog.scalar.ph1486.preheader, label %vector.memcheck1465

vector.memcheck1465:                              ; preds = %iter.check1485
  %i.ael = mul i64 %i.aed, %indvars.iv855
  %i.aem = shl i64 %.28603, 3
  %i.aen = add i64 %i.aec, %i.ael
  %i.aeo = add i64 %i.aem, %i.a
  %i.aep = sub i64 %i.aeo, %i.aen
  %diff.check1466 = icmp ugt i64 %i.aep, -128
  br i1 %diff.check1466, label %vec.epilog.scalar.ph1486.preheader, label %vector.main.loop.iter.check1469

vector.main.loop.iter.check1469:                  ; preds = %vector.memcheck1465
  %min.iters.check1470 = icmp ult i64 %i.aej, 16
  br i1 %min.iters.check1470, label %vec.epilog.ph1489, label %vector.ph1471

vector.ph1471:                                    ; preds = %vector.main.loop.iter.check1469
  %i.aeq = and i64 %i.aej, 12
  %n.vec1472 = and i64 %i.aej, -16                ; 5 uses
  %i.aer = add i64 %indvars.iv848, %n.vec1472
  %i.aes = add i64 %.28603, %n.vec1472            ; 2 uses
  %i.aet = getelementptr [8 x i8], ptr %3, i64 %.28603
  %i.aeu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv848
  br label %vector.body1473

vector.body1473:                                  ; preds = %vector.body1473, %vector.ph1471
  %index1474 = phi i64 [ 0, %vector.ph1471 ], [ %index.next1479, %vector.body1473 ] ; 3 uses
  %i.aev = getelementptr [8 x i8], ptr %i.aet, i64 %index1474 ; 4 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 32
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 64
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aev, i64 96
  %wide.load1475 = load <4 x double>, ptr %i.aev, align 8, !tbaa !92
  %wide.load1476 = load <4 x double>, ptr %i.aew, align 8, !tbaa !92
  %wide.load1477 = load <4 x double>, ptr %i.aex, align 8, !tbaa !92
  %wide.load1478 = load <4 x double>, ptr %i.aey, align 8, !tbaa !92
  %i.aez = getelementptr [8 x i8], ptr %i.aeu, i64 %index1474 ; 4 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 32
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 64
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aez, i64 96
  store <4 x double> %wide.load1475, ptr %i.aez, align 8, !tbaa !92
  store <4 x double> %wide.load1476, ptr %i.afa, align 8, !tbaa !92
  store <4 x double> %wide.load1477, ptr %i.afb, align 8, !tbaa !92
  store <4 x double> %wide.load1478, ptr %i.afc, align 8, !tbaa !92
  %index.next1479 = add nuw i64 %index1474, 16    ; 2 uses
  %i.afd = icmp eq i64 %index.next1479, %n.vec1472
  br i1 %i.afd, label %middle.block1480, label %vector.body1473, !llvm.loop !78

middle.block1480:                                 ; preds = %vector.body1473
  %cmp.n1481 = icmp eq i64 %i.aej, %n.vec1472
  br i1 %cmp.n1481, label %.loopexit1572, label %vec.epilog.iter.check1487

vec.epilog.iter.check1487:                        ; preds = %middle.block1480
  %min.epilog.iters.check1488 = icmp eq i64 %i.aeq, 0
  br i1 %min.epilog.iters.check1488, label %vec.epilog.scalar.ph1486.preheader, label %vec.epilog.ph1489, !prof !96

vec.epilog.ph1489:                                ; preds = %vector.main.loop.iter.check1469, %vec.epilog.iter.check1487
  %vec.epilog.resume.val1482 = phi i64 [ %n.vec1472, %vec.epilog.iter.check1487 ], [ 0, %vector.main.loop.iter.check1469 ]
  %n.vec1490 = and i64 %i.aej, -4                 ; 4 uses
  %i.afe = add i64 %indvars.iv848, %n.vec1490
  %i.aff = add i64 %.28603, %n.vec1490            ; 2 uses
  %i.afg = getelementptr [8 x i8], ptr %3, i64 %.28603
  %i.afh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv848
  br label %vec.epilog.vector.body1491

vec.epilog.vector.body1491:                       ; preds = %vec.epilog.vector.body1491, %vec.epilog.ph1489
  %index1492 = phi i64 [ %vec.epilog.resume.val1482, %vec.epilog.ph1489 ], [ %index.next1494, %vec.epilog.vector.body1491 ] ; 3 uses
  %i.afi = getelementptr [8 x i8], ptr %i.afg, i64 %index1492
  %wide.load1493 = load <4 x double>, ptr %i.afi, align 8, !tbaa !92
  %i.afj = getelementptr [8 x i8], ptr %i.afh, i64 %index1492
  store <4 x double> %wide.load1493, ptr %i.afj, align 8, !tbaa !92
  %index.next1494 = add nuw i64 %index1492, 4     ; 2 uses
  %i.afk = icmp eq i64 %index.next1494, %n.vec1490
  br i1 %i.afk, label %vec.epilog.middle.block1495, label %vec.epilog.vector.body1491, !llvm.loop !79

vec.epilog.middle.block1495:                      ; preds = %vec.epilog.vector.body1491
  %cmp.n1496 = icmp eq i64 %i.aej, %n.vec1490
  br i1 %cmp.n1496, label %.loopexit1572, label %vec.epilog.scalar.ph1486.preheader

vec.epilog.scalar.ph1486.preheader:               ; preds = %vector.memcheck1465, %iter.check1485, %vec.epilog.iter.check1487, %vec.epilog.middle.block1495
  %indvars.iv850.ph = phi i64 [ %indvars.iv848, %iter.check1485 ], [ %indvars.iv848, %vector.memcheck1465 ], [ %i.aer, %vec.epilog.iter.check1487 ], [ %i.afe, %vec.epilog.middle.block1495 ]
  %indvars.iv846.ph = phi i64 [ %.28603, %iter.check1485 ], [ %.28603, %vector.memcheck1465 ], [ %i.aes, %vec.epilog.iter.check1487 ], [ %i.aff, %vec.epilog.middle.block1495 ]
  br label %vec.epilog.scalar.ph1486

vec.epilog.scalar.ph1486:                         ; preds = %vec.epilog.scalar.ph1486.preheader, %vec.epilog.scalar.ph1486
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1486 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1486.preheader ] ; 3 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %vec.epilog.scalar.ph1486 ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1486.preheader ] ; 2 uses
  %i.afl = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv846
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !92
  %i.afn = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv850
  store double %i.afm, ptr %i.afn, align 8, !tbaa !92
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1
  %.not386.not = icmp slt i64 %indvars.iv850, %i.aek
  br i1 %.not386.not, label %vec.epilog.scalar.ph1486, label %.loopexit1572, !llvm.loop !80

.loopexit1572:                                    ; preds = %vec.epilog.scalar.ph1486, %vec.epilog.middle.block1495, %middle.block1480
  %indvars.iv.next847.lcssa = phi i64 [ %i.aff, %vec.epilog.middle.block1495 ], [ %i.aes, %middle.block1480 ], [ %indvars.iv.next847, %vec.epilog.scalar.ph1486 ] ; 2 uses
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, %i.aea
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %.lr.ph619, label %iter.check1485, !llvm.loop !81

.lr.ph619:                                        ; preds = %.loopexit1572
  %i.afo = zext nneg i32 %i.s to i64
  %wide.trip.count872 = zext nneg i32 %i.q to i64
  %i.afp = shl nuw nsw i64 %i.aea, 3
  %umax1503 = tail call i64 @llvm.umax.i64(i64 %i.aea, i64 1)
  %scevgep1509 = getelementptr i8, ptr %3, i64 8
  %umax1516 = tail call i64 @llvm.umax.i64(i64 %i.aea, i64 1)
  %i.afq = insertelement <2 x i64> poison, i64 %i.aea, i64 0
  %i.afr = shufflevector <2 x i64> %i.afq, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afs = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.aft = shufflevector <2 x i32> %i.afs, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afu = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.afv = shufflevector <2 x i32> %i.afu, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1522 = insertelement <4 x i64> poison, i64 %i.aea, i64 0
  %broadcast.splat1523 = shufflevector <4 x i64> %broadcast.splatinsert1522, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afw = shl nuw nsw <4 x i64> %broadcast.splat1523, splat (i64 2) ; 5 uses
  %i.afx = mul nuw nsw <4 x i64> %broadcast.splat1523, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1700 = add nuw nsw <4 x i64> %i.afw, %i.afw ; 2 uses
  %invariant.op1701 = add nuw nsw <4 x i64> %invariant.op1700, %i.afw ; 2 uses
  %invariant.op1702 = add nuw nsw <4 x i64> %invariant.op1701, %i.afw
  %broadcast.splatinsert1556 = insertelement <4 x i64> poison, i64 %i.aea, i64 0
  %broadcast.splat1557 = shufflevector <4 x i64> %broadcast.splatinsert1556, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.afy = mul nuw nsw <4 x i64> %broadcast.splat1557, <i64 0, i64 1, i64 2, i64 3>
  %i.afz = shl nuw nsw i64 %i.aea, 2
  %broadcast.splatinsert1559 = insertelement <4 x i64> poison, i64 %i.afz, i64 0
  %broadcast.splat1560 = shufflevector <4 x i64> %broadcast.splatinsert1559, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1548

iter.check1548:                                   ; preds = %.lr.ph619, %._crit_edge613
  %indvars.iv864 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next865, %._crit_edge613 ] ; 11 uses
  %.30617 = phi i64 [ %indvars.iv.next847.lcssa, %.lr.ph619 ], [ %indvars.iv.next863.lcssa, %._crit_edge613 ]
  %i.aga = insertelement <2 x i64> poison, i64 %indvars.iv864, i64 0
  %i.agb = shufflevector <2 x i64> %i.aga, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.agc = add nuw <2 x i64> %i.agb, %i.afr       ; 2 uses
  %i.agd = add nuw <2 x i64> %i.agb, splat (i64 1)
  %i.age = trunc <2 x i64> %i.agb to <2 x i32>
  %i.agf = add nuw <2 x i64> %i.agb, %i.afr
  %indvars871 = trunc i64 %indvars.iv864 to i32
  %i.agg = add nsw i32 %i.q, %indvars871
  %i.agh = mul nsw i32 %i.agg, %i.s
  %i.agi = sext i32 %i.agh to i64
  %i.agj = add nsw i64 %indvars.iv864, %i.agi
  %i.agk = add <2 x i32> %i.afv, %i.age
  %i.agl = mul <2 x i32> %i.aft, %i.agk
  %i.agm = sext <2 x i32> %i.agl to <2 x i64>
  %i.agn = add <2 x i64> %i.agd, %i.agm           ; 2 uses
  %i.ago = icmp slt <2 x i64> %i.agc, %i.agn      ; 2 uses
  %i.agp = zext <2 x i1> %i.ago to <2 x i64>      ; 2 uses
  %i.agq = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.agc, <2 x i64> %i.agn)
  %i.agr = add <2 x i64> %i.agf, %i.agp
  %i.ags = sub <2 x i64> %i.agq, %i.agr           ; 2 uses
  %sext1580 = shl i64 %.30617, 32                 ; 2 uses
  %i.agt = ashr exact i64 %sext1580, 32           ; 6 uses
  %i.agu = extractelement <2 x i1> %i.ago, i64 1
  %i.agv = select i1 %i.agu, i64 2, i64 1
  %i.agw = extractelement <2 x i64> %i.ags, i64 1
  %i.agx = udiv i64 %i.agw, %umax1516
  %i.agy = add i64 %i.agv, %i.agx                 ; 7 uses
  %min.iters.check1517 = icmp ult i64 %i.agy, 4
  br i1 %min.iters.check1517, label %.lr.ph612.preheader, label %vector.memcheck1499

vector.memcheck1499:                              ; preds = %iter.check1548
  %i.agz = shl i64 %indvars.iv864, 3              ; 2 uses
  %11 = getelementptr i8, ptr %4, i64 %i.agz
  %scevgep1495 = getelementptr i8, ptr %11, i64 8
  %scevgep1500.a = getelementptr i8, ptr %4, i64 %i.agz
  %i.aha = extractelement <2 x i64> %i.ags, i64 0
  %i.ahb = udiv i64 %i.aha, %umax1503
  %i.ahc = extractelement <2 x i64> %i.agp, i64 0
  %i.ahd = add i64 %i.ahb, %i.ahc                 ; 2 uses
  %i.ahe = mul i64 %i.afp, %i.ahd
  %scevgep1507 = getelementptr i8, ptr %scevgep1495, i64 %i.ahe
  %i.ahf = ashr exact i64 %sext1580, 29           ; 2 uses
  %scevgep1508 = getelementptr i8, ptr %3, i64 %i.ahf
  %i.ahg = shl i64 %i.ahd, 3
  %i.ahh = getelementptr i8, ptr %scevgep1509, i64 %i.ahg
  %scevgep1510 = getelementptr i8, ptr %i.ahh, i64 %i.ahf
  %bound01511 = icmp ult ptr %scevgep1500.a, %scevgep1510
  %bound11512 = icmp ult ptr %scevgep1508, %scevgep1507
  %found.conflict1513 = and i1 %bound01511, %bound11512
  br i1 %found.conflict1513, label %.lr.ph612.preheader, label %vector.main.loop.iter.check1518

vector.main.loop.iter.check1518:                  ; preds = %vector.memcheck1499
  %min.iters.check1519 = icmp ult i64 %i.agy, 16
  br i1 %min.iters.check1519, label %vec.epilog.ph1552, label %vector.ph1520

vector.ph1520:                                    ; preds = %vector.main.loop.iter.check1518
  %i.ahi = and i64 %i.agy, 12
  %n.vec1521 = and i64 %i.agy, -16                ; 5 uses
  %i.ahj = mul i64 %n.vec1521, %i.aea
  %i.ahk = add i64 %indvars.iv864, %i.ahj         ; 2 uses
  %i.ahl = add i64 %i.agt, %n.vec1521             ; 2 uses
  %broadcast.splatinsert1524 = insertelement <4 x i64> poison, i64 %indvars.iv864, i64 0
  %broadcast.splat1525 = shufflevector <4 x i64> %broadcast.splatinsert1524, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1526 = add nuw nsw <4 x i64> %broadcast.splat1525, %i.afx
  %i.ahm = getelementptr [8 x i8], ptr %3, i64 %i.agt
  br label %vector.body1527

vector.body1527:                                  ; preds = %vector.body1527, %vector.ph1520
  %index1528 = phi i64 [ 0, %vector.ph1520 ], [ %index.next1541, %vector.body1527 ] ; 2 uses
  %vec.ind1529 = phi <4 x i64> [ %induction1526, %vector.ph1520 ], [ %vec.ind.next1542.reass, %vector.body1527 ] ; 5 uses
  %step.add1530 = add nuw nsw <4 x i64> %vec.ind1529, %i.afw
  %step.add.21531.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1700
  %step.add.31532.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1701
  %i.ahn = getelementptr [8 x i8], ptr %i.ahm, i64 %index1528 ; 4 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 32
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 64
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahn, i64 96
  %wide.load1533 = load <4 x double>, ptr %i.ahn, align 8, !tbaa !92, !alias.scope !104
  %wide.load1534 = load <4 x double>, ptr %i.aho, align 8, !tbaa !92, !alias.scope !104
  %wide.load1535 = load <4 x double>, ptr %i.ahp, align 8, !tbaa !92, !alias.scope !104
  %wide.load1536 = load <4 x double>, ptr %i.ahq, align 8, !tbaa !92, !alias.scope !104
  %wide.gep1537 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1529
  %wide.gep1538 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add1530
  %wide.gep1539 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.21531.reass
  %wide.gep1540 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.31532.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1533, <4 x ptr> align 8 %wide.gep1537, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1534, <4 x ptr> align 8 %wide.gep1538, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1535, <4 x ptr> align 8 %wide.gep1539, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1536, <4 x ptr> align 8 %wide.gep1540, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  %index.next1541 = add nuw i64 %index1528, 16    ; 2 uses
  %vec.ind.next1542.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1702
  %i.ahr = icmp eq i64 %index.next1541, %n.vec1521
  br i1 %i.ahr, label %middle.block1543, label %vector.body1527, !llvm.loop !85

middle.block1543:                                 ; preds = %vector.body1527
  %cmp.n1544 = icmp eq i64 %i.agy, %n.vec1521
  br i1 %cmp.n1544, label %._crit_edge613, label %vec.epilog.iter.check1550

vec.epilog.iter.check1550:                        ; preds = %middle.block1543
  %min.epilog.iters.check1551 = icmp eq i64 %i.ahi, 0
  br i1 %min.epilog.iters.check1551, label %.lr.ph612.preheader, label %vec.epilog.ph1552, !prof !96

vec.epilog.ph1552:                                ; preds = %vector.main.loop.iter.check1518, %vec.epilog.iter.check1550
  %vec.epilog.resume.val1545 = phi i64 [ %n.vec1521, %vec.epilog.iter.check1550 ], [ 0, %vector.main.loop.iter.check1518 ]
  %bc.resume.val1546 = phi i64 [ %i.ahk, %vec.epilog.iter.check1550 ], [ %indvars.iv864, %vector.main.loop.iter.check1518 ]
  %n.vec1553 = and i64 %i.agy, -4                 ; 4 uses
  %i.ahs = mul i64 %n.vec1553, %i.aea
  %i.aht = add i64 %indvars.iv864, %i.ahs
  %i.ahu = add i64 %i.agt, %n.vec1553             ; 2 uses
  %broadcast.splatinsert1554 = insertelement <4 x i64> poison, i64 %bc.resume.val1546, i64 0
  %broadcast.splat1555 = shufflevector <4 x i64> %broadcast.splatinsert1554, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1558 = add nuw nsw <4 x i64> %broadcast.splat1555, %i.afy
  %i.ahv = getelementptr [8 x i8], ptr %3, i64 %i.agt
  br label %vec.epilog.vector.body1561

vec.epilog.vector.body1561:                       ; preds = %vec.epilog.vector.body1561, %vec.epilog.ph1552
  %index1562 = phi i64 [ %vec.epilog.resume.val1545, %vec.epilog.ph1552 ], [ %index.next1566, %vec.epilog.vector.body1561 ] ; 2 uses
  %vec.ind1563 = phi <4 x i64> [ %induction1558, %vec.epilog.ph1552 ], [ %vec.ind.next1567, %vec.epilog.vector.body1561 ] ; 2 uses
  %i.ahw = getelementptr [8 x i8], ptr %i.ahv, i64 %index1562
  %wide.load1564 = load <4 x double>, ptr %i.ahw, align 8, !tbaa !92, !alias.scope !104
  %wide.gep1565 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1563
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1564, <4 x ptr> align 8 %wide.gep1565, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  %index.next1566 = add nuw i64 %index1562, 4     ; 2 uses
  %vec.ind.next1567 = add nuw nsw <4 x i64> %vec.ind1563, %broadcast.splat1560
  %i.ahx = icmp eq i64 %index.next1566, %n.vec1553
  br i1 %i.ahx, label %vec.epilog.middle.block1568, label %vec.epilog.vector.body1561, !llvm.loop !86

vec.epilog.middle.block1568:                      ; preds = %vec.epilog.vector.body1561
  %cmp.n1569 = icmp eq i64 %i.agy, %n.vec1553
  br i1 %cmp.n1569, label %._crit_edge613, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %vector.memcheck1499, %iter.check1548, %vec.epilog.iter.check1550, %vec.epilog.middle.block1568
  %indvars.iv866.ph = phi i64 [ %indvars.iv864, %iter.check1548 ], [ %indvars.iv864, %vector.memcheck1499 ], [ %i.ahk, %vec.epilog.iter.check1550 ], [ %i.aht, %vec.epilog.middle.block1568 ]
  %indvars.iv862.ph = phi i64 [ %i.agt, %iter.check1548 ], [ %i.agt, %vector.memcheck1499 ], [ %i.ahl, %vec.epilog.iter.check1550 ], [ %i.ahu, %vec.epilog.middle.block1568 ]
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %.lr.ph612
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %.lr.ph612 ], [ %indvars.iv866.ph, %.lr.ph612.preheader ] ; 2 uses
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph612 ], [ %indvars.iv862.ph, %.lr.ph612.preheader ] ; 2 uses
  %i.ahy = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv862
  %i.ahz = load double, ptr %i.ahy, align 8, !tbaa !92
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv866
  store double %i.ahz, ptr %i.aia, align 8, !tbaa !92
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, %i.afo ; 2 uses
  %.not882 = icmp sgt i64 %indvars.iv.next867, %i.agj
  br i1 %.not882, label %._crit_edge613, label %.lr.ph612, !llvm.loop !87

._crit_edge613:                                   ; preds = %.lr.ph612, %middle.block1543, %vec.epilog.middle.block1568
  %indvars.iv.next863.lcssa = phi i64 [ %i.ahu, %vec.epilog.middle.block1568 ], [ %i.ahl, %middle.block1543 ], [ %indvars.iv.next863, %.lr.ph612 ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit, label %iter.check1548, !llvm.loop !88

.loopexit.loopexit1600.unr-lcssa:                 ; preds = %._crit_edge495.3
  %lcmp.mod1618.not = icmp eq i64 %xtraiter1617, 0
  br i1 %lcmp.mod1618.not, label %.loopexit, label %iter.check1075.epil.preheader

iter.check1075.epil.preheader:                    ; preds = %.loopexit.loopexit1600.unr-lcssa, %.preheader.preheader
  %indvars.iv725.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next726.3, %.loopexit.loopexit1600.unr-lcssa ]
  %.18499.epil.init = phi i64 [ %i.uk, %.preheader.preheader ], [ %indvars.iv.next724.3, %.loopexit.loopexit1600.unr-lcssa ]
  %lcmp.mod1619 = icmp ne i64 %xtraiter1617, 0
  tail call void @llvm.assume(i1 %lcmp.mod1619)
  br label %iter.check1075.epil

iter.check1075.epil:                              ; preds = %._crit_edge495.epil, %iter.check1075.epil.preheader
  %indvars.iv725.epil = phi i64 [ %indvars.iv725.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next726.epil, %._crit_edge495.epil ] ; 3 uses
  %.18499.epil = phi i64 [ %.18499.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next724.epil, %._crit_edge495.epil ]
  %epil.iter = phi i64 [ 0, %iter.check1075.epil.preheader ], [ %epil.iter.next, %._crit_edge495.epil ]
  %invariant.gep899.epil = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv725.epil
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %iter.check1075.epil
  %indvars.iv727.epil = phi i64 [ %indvars.iv725.epil, %iter.check1075.epil ], [ %indvars.iv.next728.epil, %bb.y ] ; 2 uses
  %indvars.iv723.epil = phi i64 [ %.18499.epil, %iter.check1075.epil ], [ %indvars.iv.next724.epil, %bb.y ] ; 2 uses
  %i.aib = mul nuw nsw i64 %indvars.iv727.epil, %i.ul
  %i.aic = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.epil
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !92
  %gep900.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.epil, i64 %i.aib
  store double %i.aid, ptr %gep900.epil, align 8, !tbaa !92
  %indvars.iv.next724.epil = add nsw i64 %indvars.iv723.epil, 1 ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1 ; 2 uses
  %.not397.not.epil = icmp samesign ult i64 %indvars.iv.next728.epil, %i.um
  br i1 %.not397.not.epil, label %bb.y, label %._crit_edge495.epil, !llvm.loop !55

._crit_edge495.epil:                              ; preds = %bb.y
  %indvars.iv.next726.epil = add nuw nsw i64 %indvars.iv725.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1617
  br i1 %epil.iter.cmp.not, label %.loopexit, label %iter.check1075.epil, !llvm.loop !89

.loopexit:                                        ; preds = %.loopexit434, %._crit_edge472, %.loopexit.loopexit1600.unr-lcssa, %._crit_edge495.epil, %._crit_edge515, %._crit_edge542, %._crit_edge565, %._crit_edge590, %._crit_edge613, %bb.n, %bb.k, %._crit_edge490, %._crit_edge444, %._crit_edge465, %._crit_edge508, %._crit_edge535, %._crit_edge558, %bb.g, %bb.h, %.thread
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(write) }
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
end_hunk_3
