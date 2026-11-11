Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtfttp?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dtfttp_:bb.a
  store double %i.gh, ptr %i.gj, align 8, !tbaa !92
  %indvars.iv.next679.1 = add nsw i64 %indvars.iv.next679, %i.ez ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.1
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !92
  %i.gm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  store double %i.gl, ptr %i.gn, align 8, !tbaa !92
  %indvars.iv.next679.2 = add nsw i64 %indvars.iv.next679.1, %i.ez ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.2
  %i.gp = load double, ptr %i.go, align 8, !tbaa !92
  %i.gq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gr = getelementptr i8, ptr %i.gq, i64 24
  store double %i.gp, ptr %i.gr, align 8, !tbaa !92
  %indvars.iv.next679.3 = add nsw i64 %indvars.iv.next679.2, %i.ez ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.3
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !92
  %i.gu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gv = getelementptr i8, ptr %i.gu, i64 32
  store double %i.gt, ptr %i.gv, align 8, !tbaa !92
  %indvars.iv.next679.4 = add nsw i64 %indvars.iv.next679.3, %i.ez ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.4
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !92
  %i.gy = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gz = getelementptr i8, ptr %i.gy, i64 40
  store double %i.gx, ptr %i.gz, align 8, !tbaa !92
  %indvars.iv.next679.5 = add nsw i64 %indvars.iv.next679.4, %i.ez ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.5
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !92
  %i.hc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.hd = getelementptr i8, ptr %i.hc, i64 48
  store double %i.hb, ptr %i.hd, align 8, !tbaa !92
  %indvars.iv.next679.6 = add nsw i64 %indvars.iv.next679.5, %i.ez ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.6
  %i.hf = load double, ptr %i.he, align 8, !tbaa !92
  %i.hg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.hh = getelementptr i8, ptr %i.hg, i64 56
  store double %i.hf, ptr %i.hh, align 8, !tbaa !92
  %indvars.iv.next675.7 = add nsw i64 %indvars.iv674, 8 ; 2 uses
  %indvars.iv.next679.7 = add nsw i64 %indvars.iv.next679.6, %i.ez
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next675.7 to i32
  %exitcond685.not.7 = icmp eq i32 %i.fg, %lftr.wideiv.7
  br i1 %exitcond685.not.7, label %.loopexit1590, label %vec.epilog.scalar.ph975, !llvm.loop !21

.loopexit1590:                                    ; preds = %vec.epilog.scalar.ph975.prol.loopexit, %vec.epilog.scalar.ph975, %vec.epilog.middle.block984, %middle.block971
  %indvars.iv.next677 = add i32 %indvars.iv676, 1
  %indvars.iv.next684 = add nuw i32 %indvars.iv683, 1
  %exitcond686.not = icmp eq i32 %indvars.iv683, %.
  %indvar.next = add i64 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.fc
  br i1 %exitcond686.not, label %._crit_edge465, label %iter.check973, !llvm.loop !22

._crit_edge465:                                   ; preds = %.loopexit1590, %bb.l
  %.4.lcssa = phi i32 [ 0, %bb.l ], [ %i.fg, %.loopexit1590 ]
  %.not408.not474 = icmp slt i32 %., %i.h
  br i1 %.not408.not474, label %.lr.ph479.preheader, label %.loopexit

.lr.ph479.preheader:                              ; preds = %._crit_edge465
  %i.hi = zext nneg i32 %.0328 to i64             ; 4 uses
  %i.hj = sext i32 %. to i64                      ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.h to i64
  %i.hk = mul nsw i64 %i.hi, -8
  %i.hl = sub i64 %i.b, %i.a
  %i.hm = add nuw nsw i64 %i.hi, 1
  br label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %._crit_edge472
  %indvar992 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvar.next993, %._crit_edge472 ] ; 4 uses
  %indvars.iv697 = phi i64 [ %i.hj, %.lr.ph479.preheader ], [ %indvars.iv.next698, %._crit_edge472 ] ; 3 uses
  %indvars.iv690 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvars.iv.next691, %._crit_edge472 ] ; 9 uses
  %.6477 = phi i32 [ %.4.lcssa, %.lr.ph479.preheader ], [ %.7.lcssa, %._crit_edge472 ] ; 2 uses
  %i.hn = mul i64 %i.hm, %indvar992
  %i.ho = add i64 %i.hn, %i.hj
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ho, i64 %indvars.iv690)
  %i.hp = mul i64 %indvar992, %i.hi
  %reass.sub = sub i64 %smax, %i.hp
  %i.hq = add i64 %reass.sub, 1                   ; 7 uses
  %i.hr = add nsw i64 %indvars.iv690, %indvars.iv697
  %.not409467 = icmp slt i64 %indvars.iv697, 0
  br i1 %.not409467, label %._crit_edge472, label %iter.check1010

iter.check1010:                                   ; preds = %.lr.ph479
  %i.hs = sext i32 %.6477 to i64                  ; 7 uses
  %min.iters.check994 = icmp ult i64 %i.hq, 4
  br i1 %min.iters.check994, label %.lr.ph471.preheader, label %vector.memcheck995

vector.memcheck995:                               ; preds = %iter.check1010
  %i.ht = mul i64 %indvar992, %i.hk
  %i.hu = add i64 %i.hl, %i.ht
  %i.hv = shl nsw i64 %i.hs, 3
  %i.hw = add i64 %i.hu, %i.hv
  %i.hx = add i64 %i.hw, -1
  %diff.check996 = icmp ult i64 %i.hx, 127
  br i1 %diff.check996, label %.lr.ph471.preheader, label %vector.main.loop.iter.check997

vector.main.loop.iter.check997:                   ; preds = %vector.memcheck995
  %min.iters.check998 = icmp ult i64 %i.hq, 16
  br i1 %min.iters.check998, label %vec.epilog.ph1014, label %vector.ph999

vector.ph999:                                     ; preds = %vector.main.loop.iter.check997
  %i.hy = and i64 %i.hq, 12
  %n.vec1000 = and i64 %i.hq, -16                 ; 5 uses
  %i.hz = add i64 %indvars.iv690, %n.vec1000
  %i.ia = add i64 %n.vec1000, %i.hs               ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv690
  %invariant.gep1662.a = getelementptr [8 x i8], ptr %4, i64 %i.hs
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.ph999, %vector.body1001
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1007, %vector.body1001 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %index1002 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  %wide.load1003 = load <4 x double>, ptr %i.ic, align 8, !tbaa !92
  %wide.load1004 = load <4 x double>, ptr %i.id, align 8, !tbaa !92
  %wide.load1005 = load <4 x double>, ptr %i.ie, align 8, !tbaa !92
  %wide.load1006 = load <4 x double>, ptr %i.if, align 8, !tbaa !92
  %gep1663.a = getelementptr [8 x i8], ptr %invariant.gep1662.a, i64 %index1002 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %gep1663.a, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %gep1663.a, i64 64
  %i.ii = getelementptr inbounds nuw i8, ptr %gep1663.a, i64 96
  store <4 x double> %wide.load1003, ptr %gep1663.a, align 8, !tbaa !92
  store <4 x double> %wide.load1004, ptr %i.ig, align 8, !tbaa !92
  store <4 x double> %wide.load1005, ptr %i.ih, align 8, !tbaa !92
  store <4 x double> %wide.load1006, ptr %i.ii, align 8, !tbaa !92
  %index.next1007 = add nuw i64 %index1002, 16    ; 2 uses
  %i.ij = icmp eq i64 %index.next1007, %n.vec1000
  br i1 %i.ij, label %middle.block1008, label %vector.body1001, !llvm.loop !23

middle.block1008:                                 ; preds = %vector.body1001
  %cmp.n1009 = icmp eq i64 %i.hq, %n.vec1000
  br i1 %cmp.n1009, label %._crit_edge472.loopexit, label %vec.epilog.iter.check1011

vec.epilog.iter.check1011:                        ; preds = %middle.block1008
  %min.epilog.iters.check1013 = icmp eq i64 %i.hy, 0
  br i1 %min.epilog.iters.check1013, label %.lr.ph471.preheader, label %vec.epilog.ph1014, !prof !96

vec.epilog.ph1014:                                ; preds = %vector.main.loop.iter.check997, %vec.epilog.iter.check1011
  %vec.epilog.resume.val1015 = phi i64 [ %n.vec1000, %vec.epilog.iter.check1011 ], [ 0, %vector.main.loop.iter.check997 ]
  %n.vec1016 = and i64 %i.hq, -4                  ; 4 uses
  %i.ik = add i64 %indvars.iv690, %n.vec1016
  %i.il = add i64 %n.vec1016, %i.hs               ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv690
  %invariant.gep1664.a = getelementptr [8 x i8], ptr %4, i64 %i.hs
  br label %vec.epilog.vector.body1017

vec.epilog.vector.body1017:                       ; preds = %vec.epilog.vector.body1017, %vec.epilog.ph1014
  %index1018 = phi i64 [ %vec.epilog.resume.val1015, %vec.epilog.ph1014 ], [ %index.next1020, %vec.epilog.vector.body1017 ] ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index1018
  %wide.load1019 = load <4 x double>, ptr %i.in, align 8, !tbaa !92
  %gep1665.a = getelementptr [8 x i8], ptr %invariant.gep1664.a, i64 %index1018
  store <4 x double> %wide.load1019, ptr %gep1665.a, align 8, !tbaa !92
  %index.next1020 = add nuw i64 %index1018, 4     ; 2 uses
  %i.io = icmp eq i64 %index.next1020, %n.vec1016
  br i1 %i.io, label %vec.epilog.middle.block1021, label %vec.epilog.vector.body1017, !llvm.loop !24

vec.epilog.middle.block1021:                      ; preds = %vec.epilog.vector.body1017
  %cmp.n1022 = icmp eq i64 %i.hq, %n.vec1016
  br i1 %cmp.n1022, label %._crit_edge472.loopexit, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %iter.check1010, %vector.memcheck995, %vec.epilog.iter.check1011, %vec.epilog.middle.block1021
  %indvars.iv692.ph = phi i64 [ %indvars.iv690, %iter.check1010 ], [ %indvars.iv690, %vector.memcheck995 ], [ %i.hz, %vec.epilog.iter.check1011 ], [ %i.ik, %vec.epilog.middle.block1021 ]
  %indvars.iv688.ph = phi i64 [ %i.hs, %iter.check1010 ], [ %i.hs, %vector.memcheck995 ], [ %i.ia, %vec.epilog.iter.check1011 ], [ %i.il, %vec.epilog.middle.block1021 ]
  br label %.lr.ph471

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %.lr.ph471
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %.lr.ph471 ], [ %indvars.iv692.ph, %.lr.ph471.preheader ] ; 3 uses
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %.lr.ph471 ], [ %indvars.iv688.ph, %.lr.ph471.preheader ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv692
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !92
  %i.ir = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv688
  store double %i.iq, ptr %i.ir, align 8, !tbaa !92
  %indvars.iv.next689 = add nsw i64 %indvars.iv688, 1 ; 2 uses
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1
  %.not409.not = icmp slt i64 %indvars.iv692, %i.hr
  br i1 %.not409.not, label %.lr.ph471, label %._crit_edge472.loopexit, !llvm.loop !25

._crit_edge472.loopexit:                          ; preds = %.lr.ph471, %vec.epilog.middle.block1021, %middle.block1008
  %indvars.iv.next689.lcssa = phi i64 [ %i.il, %vec.epilog.middle.block1021 ], [ %i.ia, %middle.block1008 ], [ %indvars.iv.next689, %.lr.ph471 ]
  %i.is = trunc nsw i64 %indvars.iv.next689.lcssa to i32
  br label %._crit_edge472

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit, %.lr.ph479
  %.7.lcssa = phi i32 [ %.6477, %.lr.ph479 ], [ %i.is, %._crit_edge472.loopexit ]
  %indvars.iv.next691 = add i64 %indvars.iv690, %i.hi
  %indvars.iv.next698 = add nsw i64 %indvars.iv697, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next698, %wide.trip.count702
  %indvar.next993 = add i64 %indvar992, 1
  br i1 %exitcond703.not, label %.loopexit, label %.lr.ph479, !llvm.loop !26

bb.m:                                             ; preds = %bb.j
  br i1 %.not379, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not403530 = icmp slt i32 %.901, 0
  br i1 %.not403530, label %.loopexit, label %.lr.ph534

.lr.ph534:                                        ; preds = %bb.n
  %i.it = mul nuw nsw i32 %i.s, %i.h              ; 2 uses
  %i.iu = add nuw nsw i32 %i.s, 1
  %i.iv = zext nneg i32 %i.s to i64               ; 16 uses
  %i.iw = add nuw nsw i64 %i.iv, 1
  %i.ix = zext nneg i32 %i.it to i64              ; 3 uses
  %i.iy = shl nuw nsw i64 %i.iv, 3
  %i.iz = add nuw nsw i64 %i.iy, 8
  %i.ja = xor i64 %i.iv, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 8
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jb = shl nuw nsw <4 x i64> %broadcast.splat, splat (i64 2) ; 5 uses
  %i.jc = mul nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1680.a = add nuw nsw <4 x i64> %i.jb, %i.jb ; 2 uses
  %invariant.op1681 = add nuw nsw <4 x i64> %invariant.op1680.a, %i.jb ; 2 uses
  %invariant.op1684 = add nuw nsw <4 x i64> %invariant.op1681, %i.jb
  %broadcast.splatinsert1213 = insertelement <4 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat1214 = shufflevector <4 x i64> %broadcast.splatinsert1213, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jd = mul nuw nsw <4 x i64> %broadcast.splat1214, <i64 0, i64 1, i64 2, i64 3>
  %i.je = shl nuw nsw i64 %i.iv, 2
  %broadcast.splatinsert1216 = insertelement <4 x i64> poison, i64 %i.je, i64 0
  %broadcast.splat1217 = shufflevector <4 x i64> %broadcast.splatinsert1216, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph534, %._crit_edge528
  %indvar1181 = phi i64 [ 0, %.lr.ph534 ], [ %indvar.next1182, %._crit_edge528 ] ; 4 uses
  %indvars.iv768 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next769, %._crit_edge528 ] ; 9 uses
  %.8532 = phi i32 [ 0, %.lr.ph534 ], [ %.9.lcssa, %._crit_edge528 ] ; 2 uses
  %.3369531 = phi i32 [ 0, %.lr.ph534 ], [ %i.kw, %._crit_edge528 ] ; 3 uses
  %i.jf = mul nsw i32 %.3369531, %i.iu
  %i.jg = icmp slt i32 %i.jf, %i.it
  br i1 %i.jg, label %iter.check1203, label %._crit_edge528

iter.check1203:                                   ; preds = %bb.o
  %i.jh = add nuw i64 %indvars.iv768, %i.iv
  %umax1183 = tail call i64 @llvm.umax.i64(i64 %i.jh, i64 %i.ix)
  %i.ji = mul i64 %indvar1181, %i.ja
  %6 = sub i64 %i.ji, %i.iv
  %i.jj = add i64 %umax1183, %6                   ; 2 uses
  %7 = icmp ne i64 %i.jj, 0                       ; 2 uses
  %umin.neg = sext i1 %7 to i64
  %i.jk = add i64 %i.jj, %umin.neg
  %i.jl = sext i32 %.8532 to i64                  ; 8 uses
  %8 = select i1 %7, i64 2, i64 1
  %i.jm = udiv i64 %i.jk, %i.iv
  %i.jn = add i64 %8, %i.jm                       ; 7 uses
  %min.iters.check1184 = icmp ult i64 %i.jn, 4
  br i1 %min.iters.check1184, label %.lr.ph527.preheader, label %vector.memcheck1185

vector.memcheck1185:                              ; preds = %iter.check1203
  %i.jo = shl nsw i64 %i.jl, 3
  %i.jp = getelementptr i8, ptr %4, i64 %i.jo
  %i.jq = add nuw i64 %indvars.iv768, %i.iv
  %i.jr = tail call i64 @llvm.umax.i64(i64 %i.jq, i64 %i.ix)
  %i.js = mul nsw i64 %indvar1181, %i.ja
  %9 = sub i64 %i.js, %i.iv
  %i.jt = add i64 %i.jr, %9                       ; 2 uses
  %10 = icmp ne i64 %i.jt, 0
  %11 = zext i1 %10 to i64                        ; 2 uses
  %12 = sub i64 %i.jt, %11
  %i.ju = udiv i64 %12, %i.iv
  %13 = add i64 %i.ju, %11                        ; 2 uses
  %i.jv = add i64 %13, %i.jl
  %i.jw = shl i64 %i.jv, 3
  %i.jx = getelementptr i8, ptr %scevgep, i64 %i.jw
  %i.jy = mul i64 %indvar1181, %i.iz              ; 2 uses
  %i.jz = getelementptr i8, ptr %3, i64 %i.jy
  %i.ka = mul i64 %13, %i.iv
  %i.kb = shl i64 %i.ka, 3
  %i.kc = getelementptr i8, ptr %3, i64 %i.jy
  %i.kd = getelementptr i8, ptr %i.kc, i64 8
  %i.ke = getelementptr i8, ptr %i.kd, i64 %i.kb
  %bound0 = icmp ult ptr %i.jp, %i.ke
  %bound1 = icmp ult ptr %i.jz, %i.jx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph527.preheader, label %vector.main.loop.iter.check1186

vector.main.loop.iter.check1186:                  ; preds = %vector.memcheck1185
  %min.iters.check1187 = icmp ult i64 %i.jn, 16
  br i1 %min.iters.check1187, label %vec.epilog.ph1207, label %vector.ph1188

vector.ph1188:                                    ; preds = %vector.main.loop.iter.check1186
  %i.kf = and i64 %i.jn, 12
  %n.vec1189 = and i64 %i.jn, -16                 ; 5 uses
  %i.kg = mul i64 %n.vec1189, %i.iv
  %i.kh = add i64 %indvars.iv768, %i.kg           ; 2 uses
  %i.ki = add i64 %n.vec1189, %i.jl               ; 2 uses
  %broadcast.splatinsert1190 = insertelement <4 x i64> poison, i64 %indvars.iv768, i64 0
  %broadcast.splat1191 = shufflevector <4 x i64> %broadcast.splatinsert1190, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat1191, %i.jc
  %invariant.gep1682 = getelementptr [8 x i8], ptr %4, i64 %i.jl
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.ph1188, %vector.body1192
  %index1193 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1200, %vector.body1192 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph1188 ], [ %vec.ind.next.reass, %vector.body1192 ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, %i.jb
  %step.add.2.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1680.a
  %step.add.3.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1681
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind
  %wide.gep1194 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add
  %wide.gep1195 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.2.reass
  %wide.gep1196 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.3.reass
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1197 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1194, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1198 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1195, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %wide.masked.gather1199 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1196, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %gep1683 = getelementptr [8 x i8], ptr %invariant.gep1682, i64 %index1193 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %gep1683, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %gep1683, i64 64
  %i.kl = getelementptr inbounds nuw i8, ptr %gep1683, i64 96
  store <4 x double> %wide.masked.gather, ptr %gep1683, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1197, ptr %i.kj, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1198, ptr %i.kk, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  store <4 x double> %wide.masked.gather1199, ptr %i.kl, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1200 = add nuw i64 %index1193, 16    ; 2 uses
  %vec.ind.next.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1684
  %i.km = icmp eq i64 %index.next1200, %n.vec1189
  br i1 %i.km, label %middle.block1201, label %vector.body1192, !llvm.loop !30

middle.block1201:                                 ; preds = %vector.body1192
  %cmp.n1202 = icmp eq i64 %i.jn, %n.vec1189
  br i1 %cmp.n1202, label %._crit_edge528.loopexit, label %vec.epilog.iter.check1204

vec.epilog.iter.check1204:                        ; preds = %middle.block1201
  %min.epilog.iters.check1206 = icmp eq i64 %i.kf, 0
  br i1 %min.epilog.iters.check1206, label %.lr.ph527.preheader, label %vec.epilog.ph1207, !prof !96

vec.epilog.ph1207:                                ; preds = %vector.main.loop.iter.check1186, %vec.epilog.iter.check1204
  %vec.epilog.resume.val1208 = phi i64 [ %n.vec1189, %vec.epilog.iter.check1204 ], [ 0, %vector.main.loop.iter.check1186 ]
  %bc.resume.val1209 = phi i64 [ %i.kh, %vec.epilog.iter.check1204 ], [ %indvars.iv768, %vector.main.loop.iter.check1186 ]
  %n.vec1210 = and i64 %i.jn, -4                  ; 4 uses
  %i.kn = mul i64 %n.vec1210, %i.iv
  %i.ko = add i64 %indvars.iv768, %i.kn
  %i.kp = add i64 %n.vec1210, %i.jl               ; 2 uses
  %broadcast.splatinsert1211 = insertelement <4 x i64> poison, i64 %bc.resume.val1209, i64 0
  %broadcast.splat1212 = shufflevector <4 x i64> %broadcast.splatinsert1211, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1215 = add nuw nsw <4 x i64> %broadcast.splat1212, %i.jd
  %invariant.gep1685.a = getelementptr [8 x i8], ptr %4, i64 %i.jl
  br label %vec.epilog.vector.body1218

vec.epilog.vector.body1218:                       ; preds = %vec.epilog.vector.body1218, %vec.epilog.ph1207
  %index1219 = phi i64 [ %vec.epilog.resume.val1208, %vec.epilog.ph1207 ], [ %index.next1223, %vec.epilog.vector.body1218 ] ; 2 uses
  %vec.ind1220 = phi <4 x i64> [ %induction1215, %vec.epilog.ph1207 ], [ %vec.ind.next1224, %vec.epilog.vector.body1218 ] ; 2 uses
  %wide.gep1221 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1220
  %wide.masked.gather1222 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1221, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !98
  %gep1686.a = getelementptr [8 x i8], ptr %invariant.gep1685.a, i64 %index1219
  store <4 x double> %wide.masked.gather1222, ptr %gep1686.a, align 8, !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1223 = add nuw i64 %index1219, 4     ; 2 uses
  %vec.ind.next1224 = add nuw nsw <4 x i64> %vec.ind1220, %broadcast.splat1217
  %i.kq = icmp eq i64 %index.next1223, %n.vec1210
  br i1 %i.kq, label %vec.epilog.middle.block1225, label %vec.epilog.vector.body1218, !llvm.loop !31

vec.epilog.middle.block1225:                      ; preds = %vec.epilog.vector.body1218
  %cmp.n1226 = icmp eq i64 %i.jn, %n.vec1210
  br i1 %cmp.n1226, label %._crit_edge528.loopexit, label %.lr.ph527.preheader

.lr.ph527.preheader:                              ; preds = %iter.check1203, %vector.memcheck1185, %vec.epilog.iter.check1204, %vec.epilog.middle.block1225
  %indvars.iv770.ph = phi i64 [ %indvars.iv768, %iter.check1203 ], [ %indvars.iv768, %vector.memcheck1185 ], [ %i.kh, %vec.epilog.iter.check1204 ], [ %i.ko, %vec.epilog.middle.block1225 ]
  %indvars.iv766.ph = phi i64 [ %i.jl, %iter.check1203 ], [ %i.jl, %vector.memcheck1185 ], [ %i.ki, %vec.epilog.iter.check1204 ], [ %i.kp, %vec.epilog.middle.block1225 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader, %.lr.ph527
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.lr.ph527 ], [ %indvars.iv770.ph, %.lr.ph527.preheader ] ; 2 uses
  %indvars.iv766 = phi i64 [ %indvars.iv.next767, %.lr.ph527 ], [ %indvars.iv766.ph, %.lr.ph527.preheader ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv770
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !92
  %i.kt = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv766
  store double %i.ks, ptr %i.kt, align 8, !tbaa !92
  %indvars.iv.next767 = add nsw i64 %indvars.iv766, 1 ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, %i.iv ; 2 uses
  %i.ku = icmp samesign ult i64 %indvars.iv.next771, %i.ix
  br i1 %i.ku, label %.lr.ph527, label %._crit_edge528.loopexit, !llvm.loop !32

._crit_edge528.loopexit:                          ; preds = %.lr.ph527, %vec.epilog.middle.block1225, %middle.block1201
  %indvars.iv.next767.lcssa = phi i64 [ %i.kp, %vec.epilog.middle.block1225 ], [ %i.ki, %middle.block1201 ], [ %indvars.iv.next767, %.lr.ph527 ]
  %i.kv = trunc nsw i64 %indvars.iv.next767.lcssa to i32
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.o
  %.9.lcssa = phi i32 [ %.8532, %bb.o ], [ %i.kv, %._crit_edge528.loopexit ] ; 2 uses
  %i.kw = add nuw i32 %.3369531, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, %i.iw
  %exitcond775.not = icmp eq i32 %.3369531, %.901
  %indvar.next1182 = add i64 %indvar1181, 1
  br i1 %exitcond775.not, label %._crit_edge535, label %bb.o, !llvm.loop !33

._crit_edge535:                                   ; preds = %._crit_edge528
  %.not404.not544.not = icmp eq i32 %.901, 0
  br i1 %.not404.not544.not, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %._crit_edge535
  %i.kx = add nuw nsw i32 %i.s, 1
  %i.ky = add nuw i32 %.901, 1
  %i.kz = sub i64 %i.b, %i.a
  %invariant.op1695.a = add i64 %i.kz, -1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph549, %._crit_edge542
  %indvars.iv786 = phi i32 [ %i.ky, %.lr.ph549 ], [ %indvars.iv.next787, %._crit_edge542 ] ; 3 uses
  %indvars.iv779 = phi i32 [ 1, %.lr.ph549 ], [ %indvars.iv.next780, %._crit_edge542 ] ; 4 uses
  %.10547 = phi i32 [ %.9.lcssa, %.lr.ph549 ], [ %.11.lcssa, %._crit_edge542 ] ; 2 uses
  %.4358545 = phi i32 [ 0, %.lr.ph549 ], [ %i.ns, %._crit_edge542 ] ; 3 uses
  %i.la = xor i32 %.4358545, -1
  %i.lb = add nsw i32 %.901, %i.la                ; 3 uses
  %i.lc = zext i32 %i.lb to i64
  %i.ld = add nuw nsw i64 %i.lc, 1                ; 5 uses
  %i.le = xor i32 %.4358545, -1
  %i.lf = add nsw i32 %.901, %i.le
  %i.lg = add i32 %i.lf, %indvars.iv779           ; 2 uses
  %.not405537 = icmp sgt i32 %indvars.iv779, %i.lg
  br i1 %.not405537, label %._crit_edge542, label %iter.check1247

iter.check1247:                                   ; preds = %bb.p
  %i.lh = sext i32 %indvars.iv779 to i64          ; 7 uses
  %i.li = sext i32 %.10547 to i64                 ; 7 uses
  %min.iters.check1231 = icmp ult i32 %i.lb, 3
  br i1 %min.iters.check1231, label %.lr.ph541.preheader, label %vector.memcheck1232

vector.memcheck1232:                              ; preds = %iter.check1247
  %i.lj = sub nsw i64 %i.li, %i.lh
  %i.lk = shl nsw i64 %i.lj, 3
  %.reass1696 = add i64 %i.lk, %invariant.op1695.a
  %diff.check1233 = icmp ult i64 %.reass1696, 127
  br i1 %diff.check1233, label %.lr.ph541.preheader, label %vector.main.loop.iter.check1234

vector.main.loop.iter.check1234:                  ; preds = %vector.memcheck1232
  %min.iters.check1235 = icmp ult i32 %i.lb, 15
  br i1 %min.iters.check1235, label %vec.epilog.ph1251, label %vector.ph1236

vector.ph1236:                                    ; preds = %vector.main.loop.iter.check1234
  %i.ll = and i64 %i.ld, 12
  %n.vec1237 = and i64 %i.ld, 8589934576          ; 5 uses
  %i.lm = add nsw i64 %n.vec1237, %i.lh
  %i.ln = add nsw i64 %n.vec1237, %i.li           ; 2 uses
  %invariant.gep1687.a = getelementptr [8 x i8], ptr %3, i64 %i.lh
  %invariant.gep1689.a = getelementptr [8 x i8], ptr %4, i64 %i.li
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.ph1236, %vector.body1238
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1244, %vector.body1238 ] ; 3 uses
  %gep1688.a = getelementptr [8 x i8], ptr %invariant.gep1687.a, i64 %index1239 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %gep1688.a, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %gep1688.a, i64 64
  %i.lq = getelementptr inbounds nuw i8, ptr %gep1688.a, i64 96
  %wide.load1240 = load <4 x double>, ptr %gep1688.a, align 8, !tbaa !92
  %wide.load1241 = load <4 x double>, ptr %i.lo, align 8, !tbaa !92
  %wide.load1242 = load <4 x double>, ptr %i.lp, align 8, !tbaa !92
  %wide.load1243 = load <4 x double>, ptr %i.lq, align 8, !tbaa !92
  %gep1690.a = getelementptr [8 x i8], ptr %invariant.gep1689.a, i64 %index1239 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %gep1690.a, i64 32
  %i.ls = getelementptr inbounds nuw i8, ptr %gep1690.a, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %gep1690.a, i64 96
  store <4 x double> %wide.load1240, ptr %gep1690.a, align 8, !tbaa !92
  store <4 x double> %wide.load1241, ptr %i.lr, align 8, !tbaa !92
  store <4 x double> %wide.load1242, ptr %i.ls, align 8, !tbaa !92
  store <4 x double> %wide.load1243, ptr %i.lt, align 8, !tbaa !92
  %index.next1244 = add nuw i64 %index1239, 16    ; 2 uses
  %i.lu = icmp eq i64 %index.next1244, %n.vec1237
  br i1 %i.lu, label %middle.block1245, label %vector.body1238, !llvm.loop !34

middle.block1245:                                 ; preds = %vector.body1238
  %cmp.n1246 = icmp eq i64 %i.ld, %n.vec1237
  br i1 %cmp.n1246, label %._crit_edge542.loopexit, label %vec.epilog.iter.check1248

vec.epilog.iter.check1248:                        ; preds = %middle.block1245
  %min.epilog.iters.check1250 = icmp eq i64 %i.ll, 0
  br i1 %min.epilog.iters.check1250, label %.lr.ph541.preheader, label %vec.epilog.ph1251, !prof !96
end_hunk_0
begin_hunk_1_@dtfttp_:bb.a
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !92
  %i.mh = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv777
  store double %i.mg, ptr %i.mh, align 8, !tbaa !92
  %i.mi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.mj = getelementptr i8, ptr %i.mi, i64 8
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !92
  %i.ml = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.mm = getelementptr i8, ptr %i.ml, i64 8
  store double %i.mk, ptr %i.mm, align 8, !tbaa !92
  %i.mn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.mo = getelementptr i8, ptr %i.mn, i64 16
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !92
  %i.mq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.mr = getelementptr i8, ptr %i.mq, i64 16
  store double %i.mp, ptr %i.mr, align 8, !tbaa !92
  %i.ms = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.mt = getelementptr i8, ptr %i.ms, i64 24
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !92
  %i.mv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.mw = getelementptr i8, ptr %i.mv, i64 24
  store double %i.mu, ptr %i.mw, align 8, !tbaa !92
  %i.mx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.my = getelementptr i8, ptr %i.mx, i64 32
  %i.mz = load double, ptr %i.my, align 8, !tbaa !92
  %i.na = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.nb = getelementptr i8, ptr %i.na, i64 32
  store double %i.mz, ptr %i.nb, align 8, !tbaa !92
  %i.nc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.nd = getelementptr i8, ptr %i.nc, i64 40
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !92
  %i.nf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.ng = getelementptr i8, ptr %i.nf, i64 40
  store double %i.ne, ptr %i.ng, align 8, !tbaa !92
  %i.nh = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.ni = getelementptr i8, ptr %i.nh, i64 48
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !92
  %i.nk = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.nl = getelementptr i8, ptr %i.nk, i64 48
  store double %i.nj, ptr %i.nl, align 8, !tbaa !92
  %i.nm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.nn = getelementptr i8, ptr %i.nm, i64 56
  %i.no = load double, ptr %i.nn, align 8, !tbaa !92
  %i.np = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.nq = getelementptr i8, ptr %i.np, i64 56
  store double %i.no, ptr %i.nq, align 8, !tbaa !92
  %indvars.iv.next778.7 = add nsw i64 %indvars.iv777, 8 ; 2 uses
  %indvars.iv.next782.7 = add nsw i64 %indvars.iv781, 8 ; 2 uses
  %lftr.wideiv788.7 = trunc i64 %indvars.iv.next782.7 to i32
  %exitcond789.not.7 = icmp eq i32 %indvars.iv786, %lftr.wideiv788.7
  br i1 %exitcond789.not.7, label %._crit_edge542.loopexit, label %.lr.ph541, !llvm.loop !37

._crit_edge542.loopexit:                          ; preds = %.lr.ph541.prol.loopexit, %.lr.ph541, %vec.epilog.middle.block1258, %middle.block1245
  %indvars.iv.next778.lcssa = phi i64 [ %i.lw, %vec.epilog.middle.block1258 ], [ %i.ln, %middle.block1245 ], [ %indvars.iv.next778.lcssa1606.unr, %.lr.ph541.prol.loopexit ], [ %indvars.iv.next778.7, %.lr.ph541 ]
  %i.nr = trunc nsw i64 %indvars.iv.next778.lcssa to i32
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %._crit_edge542.loopexit, %bb.p
  %.11.lcssa = phi i32 [ %.10547, %bb.p ], [ %i.nr, %._crit_edge542.loopexit ]
  %indvars.iv.next780 = add i32 %indvars.iv779, %i.kx
  %i.ns = add nuw nsw i32 %.4358545, 1            ; 2 uses
  %indvars.iv.next787 = add i32 %indvars.iv786, %i.s
  %exitcond790.not = icmp eq i32 %i.ns, %.901
  br i1 %exitcond790.not, label %.loopexit, label %bb.p, !llvm.loop !38

bb.q:                                             ; preds = %bb.m
  %.not399.not552 = icmp sgt i32 %., 0
  br i1 %.not399.not552, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.q
  %i.nt = mul i32 %.901, %i.s
  %i.nu = sext i32 %i.nt to i64                   ; 4 uses
  %i.nv = zext nneg i32 %i.s to i64               ; 4 uses
  %wide.trip.count806 = zext nneg i32 %. to i64
  %i.nw = mul nsw i64 %i.nv, -8
  %i.nx = shl nsw i64 %i.nu, 3
  %i.ny = add i64 %i.nx, %i.a
  %i.nz = sub i64 %i.b, %i.ny
  %i.oa = add nuw nsw i64 %i.nv, 1
  br label %iter.check1281

iter.check1281:                                   ; preds = %.lr.ph557.preheader, %.loopexit1588
  %indvars.iv801 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next802, %.loopexit1588 ] ; 5 uses
  %indvars.iv794 = phi i64 [ %i.nu, %.lr.ph557.preheader ], [ %indvars.iv.next795, %.loopexit1588 ] ; 9 uses
  %.12555 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next793.lcssa, %.loopexit1588 ] ; 7 uses
  %i.ob = mul i64 %i.oa, %indvars.iv801
  %i.oc = add i64 %i.ob, %i.nu
  %smax1264 = tail call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 %i.oc)
  %i.od = mul i64 %indvars.iv801, %i.nv
  %i.oe = add i64 %i.od, %i.nu
  %reass.sub1592 = sub i64 %smax1264, %i.oe
  %i.of = add i64 %reass.sub1592, 1               ; 7 uses
  %i.og = add nsw i64 %indvars.iv794, %indvars.iv801
  %min.iters.check1265 = icmp ult i64 %i.of, 4
  br i1 %min.iters.check1265, label %vec.epilog.scalar.ph1283.preheader, label %vector.memcheck1266

vector.memcheck1266:                              ; preds = %iter.check1281
  %i.oh = mul i64 %indvars.iv801, %i.nw
  %i.oi = add i64 %i.nz, %i.oh
  %i.oj = shl i64 %.12555, 3
  %i.ok = add i64 %i.oi, %i.oj
  %i.ol = add i64 %i.ok, -1
  %diff.check1267 = icmp ult i64 %i.ol, 127
  br i1 %diff.check1267, label %vec.epilog.scalar.ph1283.preheader, label %vector.main.loop.iter.check1268

vector.main.loop.iter.check1268:                  ; preds = %vector.memcheck1266
  %min.iters.check1269 = icmp ult i64 %i.of, 16
  br i1 %min.iters.check1269, label %vec.epilog.ph1285, label %vector.ph1270

vector.ph1270:                                    ; preds = %vector.main.loop.iter.check1268
  %i.om = and i64 %i.of, 12
  %n.vec1271 = and i64 %i.of, -16                 ; 5 uses
  %i.on = add i64 %indvars.iv794, %n.vec1271
  %i.oo = add i64 %.12555, %n.vec1271             ; 2 uses
  %i.op = getelementptr [8 x i8], ptr %3, i64 %indvars.iv794
  %i.oq = getelementptr [8 x i8], ptr %4, i64 %.12555
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.ph1270, %vector.body1272
  %index1273 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1278, %vector.body1272 ] ; 3 uses
  %i.or = getelementptr [8 x i8], ptr %i.op, i64 %index1273 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 96
  %wide.load1274 = load <4 x double>, ptr %i.or, align 8, !tbaa !92
  %wide.load1275 = load <4 x double>, ptr %i.os, align 8, !tbaa !92
  %wide.load1276 = load <4 x double>, ptr %i.ot, align 8, !tbaa !92
  %wide.load1277 = load <4 x double>, ptr %i.ou, align 8, !tbaa !92
  %i.ov = getelementptr [8 x i8], ptr %i.oq, i64 %index1273 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 96
  store <4 x double> %wide.load1274, ptr %i.ov, align 8, !tbaa !92
  store <4 x double> %wide.load1275, ptr %i.ow, align 8, !tbaa !92
  store <4 x double> %wide.load1276, ptr %i.ox, align 8, !tbaa !92
  store <4 x double> %wide.load1277, ptr %i.oy, align 8, !tbaa !92
  %index.next1278 = add nuw i64 %index1273, 16    ; 2 uses
  %i.oz = icmp eq i64 %index.next1278, %n.vec1271
  br i1 %i.oz, label %middle.block1279, label %vector.body1272, !llvm.loop !39

middle.block1279:                                 ; preds = %vector.body1272
  %cmp.n1280 = icmp eq i64 %i.of, %n.vec1271
  br i1 %cmp.n1280, label %.loopexit1588, label %vec.epilog.iter.check1282

vec.epilog.iter.check1282:                        ; preds = %middle.block1279
  %min.epilog.iters.check1284 = icmp eq i64 %i.om, 0
  br i1 %min.epilog.iters.check1284, label %vec.epilog.scalar.ph1283.preheader, label %vec.epilog.ph1285, !prof !96

vec.epilog.ph1285:                                ; preds = %vector.main.loop.iter.check1268, %vec.epilog.iter.check1282
  %vec.epilog.resume.val1286 = phi i64 [ %n.vec1271, %vec.epilog.iter.check1282 ], [ 0, %vector.main.loop.iter.check1268 ]
  %n.vec1287 = and i64 %i.of, -4                  ; 4 uses
  %i.pa = add i64 %indvars.iv794, %n.vec1287
  %i.pb = add i64 %.12555, %n.vec1287             ; 2 uses
  %i.pc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv794
  %i.pd = getelementptr [8 x i8], ptr %4, i64 %.12555
  br label %vec.epilog.vector.body1288

vec.epilog.vector.body1288:                       ; preds = %vec.epilog.vector.body1288, %vec.epilog.ph1285
  %index1289 = phi i64 [ %vec.epilog.resume.val1286, %vec.epilog.ph1285 ], [ %index.next1291, %vec.epilog.vector.body1288 ] ; 3 uses
  %i.pe = getelementptr [8 x i8], ptr %i.pc, i64 %index1289
  %wide.load1290 = load <4 x double>, ptr %i.pe, align 8, !tbaa !92
  %i.pf = getelementptr [8 x i8], ptr %i.pd, i64 %index1289
  store <4 x double> %wide.load1290, ptr %i.pf, align 8, !tbaa !92
  %index.next1291 = add nuw i64 %index1289, 4     ; 2 uses
  %i.pg = icmp eq i64 %index.next1291, %n.vec1287
  br i1 %i.pg, label %vec.epilog.middle.block1292, label %vec.epilog.vector.body1288, !llvm.loop !40

vec.epilog.middle.block1292:                      ; preds = %vec.epilog.vector.body1288
  %cmp.n1293 = icmp eq i64 %i.of, %n.vec1287
  br i1 %cmp.n1293, label %.loopexit1588, label %vec.epilog.scalar.ph1283.preheader

vec.epilog.scalar.ph1283.preheader:               ; preds = %iter.check1281, %vector.memcheck1266, %vec.epilog.iter.check1282, %vec.epilog.middle.block1292
  %indvars.iv796.ph = phi i64 [ %indvars.iv794, %iter.check1281 ], [ %indvars.iv794, %vector.memcheck1266 ], [ %i.on, %vec.epilog.iter.check1282 ], [ %i.pa, %vec.epilog.middle.block1292 ]
  %indvars.iv792.ph = phi i64 [ %.12555, %iter.check1281 ], [ %.12555, %vector.memcheck1266 ], [ %i.oo, %vec.epilog.iter.check1282 ], [ %i.pb, %vec.epilog.middle.block1292 ]
  br label %vec.epilog.scalar.ph1283

vec.epilog.scalar.ph1283:                         ; preds = %vec.epilog.scalar.ph1283.preheader, %vec.epilog.scalar.ph1283
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %vec.epilog.scalar.ph1283 ], [ %indvars.iv796.ph, %vec.epilog.scalar.ph1283.preheader ] ; 3 uses
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %vec.epilog.scalar.ph1283 ], [ %indvars.iv792.ph, %vec.epilog.scalar.ph1283.preheader ] ; 2 uses
  %i.ph = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv796
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !92
  %i.pj = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv792
  store double %i.pi, ptr %i.pj, align 8, !tbaa !92
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 2 uses
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, 1
  %.not402.not = icmp slt i64 %indvars.iv796, %i.og
  br i1 %.not402.not, label %vec.epilog.scalar.ph1283, label %.loopexit1588, !llvm.loop !41

.loopexit1588:                                    ; preds = %vec.epilog.scalar.ph1283, %vec.epilog.middle.block1292, %middle.block1279
  %indvars.iv.next793.lcssa = phi i64 [ %i.pb, %vec.epilog.middle.block1292 ], [ %i.oo, %middle.block1279 ], [ %indvars.iv.next793, %vec.epilog.scalar.ph1283 ] ; 2 uses
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, %i.nv
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge558, label %iter.check1281, !llvm.loop !42

._crit_edge558:                                   ; preds = %.loopexit1588, %bb.q
  %.12.lcssa = phi i64 [ 0, %bb.q ], [ %indvars.iv.next793.lcssa, %.loopexit1588 ]
  %.not400567 = icmp slt i32 %., 0
  br i1 %.not400567, label %.loopexit, label %.lr.ph571

.lr.ph571:                                        ; preds = %._crit_edge558
  %i.pk = zext nneg i32 %i.s to i64               ; 13 uses
  %i.pl = add nuw i32 %., 1
  %wide.trip.count818 = zext i32 %i.pl to i64
  %scevgep1310 = getelementptr i8, ptr %4, i64 8
  %broadcast.splatinsert1322.a = insertelement <4 x i64> poison, i64 %i.pk, i64 0
  %broadcast.splat1323.a = shufflevector <4 x i64> %broadcast.splatinsert1322.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pm = shl nuw nsw <4 x i64> %broadcast.splat1323.a, splat (i64 2) ; 5 uses
  %i.pn = mul nuw nsw <4 x i64> %broadcast.splat1323.a, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1697.a = add nuw nsw <4 x i64> %i.pm, %i.pm ; 2 uses
  %invariant.op1698 = add nuw nsw <4 x i64> %invariant.op1697.a, %i.pm ; 2 uses
  %invariant.op1699 = add nuw nsw <4 x i64> %invariant.op1698, %i.pm
  %broadcast.splatinsert1355 = insertelement <4 x i64> poison, i64 %i.pk, i64 0
  %broadcast.splat1356 = shufflevector <4 x i64> %broadcast.splatinsert1355, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.po = mul nuw nsw <4 x i64> %broadcast.splat1356, <i64 0, i64 1, i64 2, i64 3>
  %i.pp = shl nuw nsw i64 %i.pk, 2
  %broadcast.splatinsert1358 = insertelement <4 x i64> poison, i64 %i.pp, i64 0
  %broadcast.splat1359 = shufflevector <4 x i64> %broadcast.splatinsert1358, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1345

iter.check1345:                                   ; preds = %._crit_edge565, %.lr.ph571
  %indvars.iv810 = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next811, %._crit_edge565 ] ; 17 uses
  %.14569 = phi i64 [ %.12.lcssa, %.lr.ph571 ], [ %indvars.iv.next809.lcssa, %._crit_edge565 ]
  %i.pq = add nuw i64 %indvars.iv810, %i.pk       ; 2 uses
  %i.pr = add nuw i64 %indvars.iv810, 1
  %i.ps = trunc i64 %indvars.iv810 to i32
  %i.pt = add i32 %., %i.ps
  %i.pu = mul i32 %i.s, %i.pt
  %i.pv = sext i32 %i.pu to i64
  %i.pw = add i64 %i.pr, %i.pv                    ; 2 uses
  %smax1311 = tail call i64 @llvm.smax.i64(i64 %i.pq, i64 %i.pw)
  %14 = add nuw i64 %indvars.iv810, %i.pk
  %15 = icmp slt i64 %i.pq, %i.pw                 ; 2 uses
  %umin1312 = zext i1 %15 to i64
  %i.px = add i64 %14, %umin1312
  %16 = sub i64 %smax1311, %i.px
  %indvars817 = trunc i64 %indvars.iv810 to i32
  %i.py = add nuw nsw i32 %., %indvars817
  %i.pz = mul nsw i32 %i.py, %i.s
  %i.qa = sext i32 %i.pz to i64                   ; 2 uses
  %i.qb = add nsw i64 %indvars.iv810, %i.qa
  %sext = shl i64 %.14569, 32                     ; 2 uses
  %i.qc = ashr exact i64 %sext, 32                ; 6 uses
  %17 = select i1 %15, i64 2, i64 1
  %i.qd = udiv i64 %16, %i.pk
  %i.qe = add i64 %17, %i.qd                      ; 7 uses
  %min.iters.check1313 = icmp ult i64 %i.qe, 4
  br i1 %min.iters.check1313, label %.lr.ph564.preheader, label %vector.memcheck1314

vector.memcheck1314:                              ; preds = %iter.check1345
  %i.qf = ashr exact i64 %sext, 29                ; 2 uses
  %i.qg = getelementptr i8, ptr %4, i64 %i.qf
  %i.qh = add nuw i64 %indvars.iv810, %i.pk       ; 2 uses
  %i.qi = add nuw i64 %indvars.iv810, 1
  %i.qj = add i64 %i.qi, %i.qa                    ; 2 uses
  %i.qk = tail call i64 @llvm.smax.i64(i64 %i.qh, i64 %i.qj)
  %18 = add nuw i64 %indvars.iv810, %i.pk
  %19 = icmp slt i64 %i.qh, %i.qj
  %20 = zext i1 %19 to i64                        ; 2 uses
  %i.ql = add i64 %18, %20
  %21 = sub i64 %i.qk, %i.ql
  %i.qm = udiv i64 %21, %i.pk
  %22 = add i64 %i.qm, %20                        ; 2 uses
  %i.qn = shl i64 %22, 3
  %i.qo = getelementptr i8, ptr %scevgep1310, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 %i.qf
  %i.qq = shl nuw nsw i64 %indvars.iv810, 3       ; 2 uses
  %i.qr = getelementptr nuw i8, ptr %3, i64 %i.qq
  %i.qs = mul i64 %22, %i.pk
  %i.qt = shl i64 %i.qs, 3
  %i.qu = getelementptr i8, ptr %3, i64 %i.qq
  %i.qv = getelementptr i8, ptr %i.qu, i64 8
  %i.qw = getelementptr i8, ptr %i.qv, i64 %i.qt
  %bound01315 = icmp ult ptr %i.qg, %i.qw
  %bound11316 = icmp ult ptr %i.qr, %i.qp
  %found.conflict1317 = and i1 %bound01315, %bound11316
  br i1 %found.conflict1317, label %.lr.ph564.preheader, label %vector.main.loop.iter.check1318

vector.main.loop.iter.check1318:                  ; preds = %vector.memcheck1314
  %min.iters.check1319 = icmp ult i64 %i.qe, 16
  br i1 %min.iters.check1319, label %vec.epilog.ph1349, label %vector.ph1320

vector.ph1320:                                    ; preds = %vector.main.loop.iter.check1318
  %i.qx = and i64 %i.qe, 12
  %n.vec1321 = and i64 %i.qe, -16                 ; 5 uses
  %i.qy = mul i64 %n.vec1321, %i.pk
  %i.qz = add i64 %indvars.iv810, %i.qy           ; 2 uses
  %i.ra = add i64 %i.qc, %n.vec1321               ; 2 uses
  %broadcast.splatinsert1324 = insertelement <4 x i64> poison, i64 %indvars.iv810, i64 0
  %broadcast.splat1325 = shufflevector <4 x i64> %broadcast.splatinsert1324, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1326 = add nuw nsw <4 x i64> %broadcast.splat1325, %i.pn
  %i.rb = getelementptr [8 x i8], ptr %4, i64 %i.qc
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.ph1320, %vector.body1327
  %index1328 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1341, %vector.body1327 ] ; 2 uses
  %vec.ind1329 = phi <4 x i64> [ %induction1326, %vector.ph1320 ], [ %vec.ind.next1342.reass, %vector.body1327 ] ; 5 uses
  %step.add1330 = add nuw nsw <4 x i64> %vec.ind1329, %i.pm
  %step.add.21331.reass = add nuw nsw <4 x i64> %vec.ind1329, %invariant.op1697.a
  %step.add.31332.reass = add nuw nsw <4 x i64> %vec.ind1329, %invariant.op1698
  %wide.gep1333.a = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1329
  %wide.gep1334.a = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add1330
  %wide.gep1335 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.21331.reass
  %wide.gep1336 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.31332.reass
  %wide.masked.gather1337.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1333.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1338.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1334.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1339 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1335, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %wide.masked.gather1340 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1336, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %i.rc = getelementptr [8 x i8], ptr %i.rb, i64 %index1328 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 64
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 96
  store <4 x double> %wide.masked.gather1337.a, ptr %i.rc, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1338.a, ptr %i.rd, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1339, ptr %i.re, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  store <4 x double> %wide.masked.gather1340, ptr %i.rf, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1341 = add nuw i64 %index1328, 16    ; 2 uses
  %vec.ind.next1342.reass = add nuw nsw <4 x i64> %vec.ind1329, %invariant.op1699
  %i.rg = icmp eq i64 %index.next1341, %n.vec1321
  br i1 %i.rg, label %middle.block1343, label %vector.body1327, !llvm.loop !46

middle.block1343:                                 ; preds = %vector.body1327
  %cmp.n1344 = icmp eq i64 %i.qe, %n.vec1321
  br i1 %cmp.n1344, label %._crit_edge565, label %vec.epilog.iter.check1346

vec.epilog.iter.check1346:                        ; preds = %middle.block1343
  %min.epilog.iters.check1348 = icmp eq i64 %i.qx, 0
  br i1 %min.epilog.iters.check1348, label %.lr.ph564.preheader, label %vec.epilog.ph1349, !prof !96

vec.epilog.ph1349:                                ; preds = %vector.main.loop.iter.check1318, %vec.epilog.iter.check1346
  %vec.epilog.resume.val1350 = phi i64 [ %n.vec1321, %vec.epilog.iter.check1346 ], [ 0, %vector.main.loop.iter.check1318 ]
  %bc.resume.val1351 = phi i64 [ %i.qz, %vec.epilog.iter.check1346 ], [ %indvars.iv810, %vector.main.loop.iter.check1318 ]
  %n.vec1352 = and i64 %i.qe, -4                  ; 4 uses
  %i.rh = mul i64 %n.vec1352, %i.pk
  %i.ri = add i64 %indvars.iv810, %i.rh
  %i.rj = add i64 %i.qc, %n.vec1352               ; 2 uses
  %broadcast.splatinsert1353 = insertelement <4 x i64> poison, i64 %bc.resume.val1351, i64 0
  %broadcast.splat1354 = shufflevector <4 x i64> %broadcast.splatinsert1353, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1357 = add nuw nsw <4 x i64> %broadcast.splat1354, %i.po
  %i.rk = getelementptr [8 x i8], ptr %4, i64 %i.qc
  br label %vec.epilog.vector.body1360

vec.epilog.vector.body1360:                       ; preds = %vec.epilog.vector.body1360, %vec.epilog.ph1349
  %index1361 = phi i64 [ %vec.epilog.resume.val1350, %vec.epilog.ph1349 ], [ %index.next1365, %vec.epilog.vector.body1360 ] ; 2 uses
  %vec.ind1362 = phi <4 x i64> [ %induction1357, %vec.epilog.ph1349 ], [ %vec.ind.next1366, %vec.epilog.vector.body1360 ] ; 2 uses
  %wide.gep1363 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1362
  %wide.masked.gather1364 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1363, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !100
  %i.rl = getelementptr [8 x i8], ptr %i.rk, i64 %index1361
  store <4 x double> %wide.masked.gather1364, ptr %i.rl, align 8, !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1365 = add nuw i64 %index1361, 4     ; 2 uses
  %vec.ind.next1366 = add nuw nsw <4 x i64> %vec.ind1362, %broadcast.splat1359
  %i.rm = icmp eq i64 %index.next1365, %n.vec1352
  br i1 %i.rm, label %vec.epilog.middle.block1367, label %vec.epilog.vector.body1360, !llvm.loop !47

vec.epilog.middle.block1367:                      ; preds = %vec.epilog.vector.body1360
  %cmp.n1368 = icmp eq i64 %i.qe, %n.vec1352
  br i1 %cmp.n1368, label %._crit_edge565, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %iter.check1345, %vector.memcheck1314, %vec.epilog.iter.check1346, %vec.epilog.middle.block1367
  %indvars.iv812.ph = phi i64 [ %indvars.iv810, %iter.check1345 ], [ %indvars.iv810, %vector.memcheck1314 ], [ %i.qz, %vec.epilog.iter.check1346 ], [ %i.ri, %vec.epilog.middle.block1367 ]
  %indvars.iv808.ph = phi i64 [ %i.qc, %iter.check1345 ], [ %i.qc, %vector.memcheck1314 ], [ %i.ra, %vec.epilog.iter.check1346 ], [ %i.rj, %vec.epilog.middle.block1367 ]
  br label %.lr.ph564

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.lr.ph564
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph564 ], [ %indvars.iv812.ph, %.lr.ph564.preheader ] ; 2 uses
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph564 ], [ %indvars.iv808.ph, %.lr.ph564.preheader ] ; 2 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv812
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !92
  %i.rp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv808
  store double %i.ro, ptr %i.rp, align 8, !tbaa !92
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, 1 ; 2 uses
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, %i.pk ; 2 uses
  %.not881 = icmp sgt i64 %indvars.iv.next813, %i.qb
  br i1 %.not881, label %._crit_edge565, label %.lr.ph564, !llvm.loop !48

._crit_edge565:                                   ; preds = %.lr.ph564, %vec.epilog.middle.block1367, %middle.block1343
  %indvars.iv.next809.lcssa = phi i64 [ %i.rj, %vec.epilog.middle.block1367 ], [ %i.ra, %middle.block1343 ], [ %indvars.iv.next809, %.lr.ph564 ]
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next811, %wide.trip.count818
  br i1 %exitcond819.not, label %.loopexit, label %iter.check1345, !llvm.loop !49

.thread423:                                       ; preds = %.thread416
  %i.rq = zext nneg i32 %.0328 to i64             ; 14 uses
  br i1 %.not379, label %.lr.ph507.preheader, label %.preheader432.preheader

.lr.ph507.preheader:                              ; preds = %.thread423
  %i.rr = sub i64 %i.b, %i.a
  %ident.check1095.not = icmp ult i32 %i.h, 2
  %invariant.op1678 = add i64 %i.rr, -1
  br label %iter.check1118

.preheader432.preheader:                          ; preds = %.thread423
  %wide.trip.count721 = zext nneg i32 %i.q to i64 ; 3 uses
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.rs = shl nuw nsw i64 %i.rq, 3
  %i.rt = sub nuw nsw i64 -8, %i.rs
  %i.ru = add i64 %i.b, -8
  %i.rv = sub i64 %i.ru, %i.a
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.rw = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1043, label %._crit_edge484

iter.check1043:                                   ; preds = %.preheader432
  %i.rx = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1027 = icmp ult i64 %i.rw, 4
  br i1 %min.iters.check1027, label %.lr.ph483.preheader, label %vector.memcheck1028

vector.memcheck1028:                              ; preds = %iter.check1043
  %i.ry = mul i64 %indvars.iv707, %i.rt
  %i.rz = add i64 %i.rv, %i.ry
  %i.sa = shl nsw i64 %i.rx, 3
  %i.sb = add i64 %i.rz, %i.sa
  %i.sc = add i64 %i.sb, -1
  %diff.check1029 = icmp ult i64 %i.sc, 127
  br i1 %diff.check1029, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1030

vector.main.loop.iter.check1030:                  ; preds = %vector.memcheck1028
  %min.iters.check1031 = icmp ult i64 %i.rw, 16
  br i1 %min.iters.check1031, label %vec.epilog.ph1047, label %vector.ph1032

vector.ph1032:                                    ; preds = %vector.main.loop.iter.check1030
  %i.sd = and i64 %i.rw, 12
  %n.vec1033 = and i64 %i.rw, -16                 ; 5 uses
  %i.se = add i64 %indvars.iv707, %n.vec1033
  %i.sf = add i64 %n.vec1033, %i.rx               ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1666.a = getelementptr [8 x i8], ptr %4, i64 %i.rx
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.ph1032, %vector.body1034
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1040, %vector.body1034 ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %index1035 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 40
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 72
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 104
  %wide.load1036 = load <4 x double>, ptr %i.si, align 8, !tbaa !92
  %wide.load1037 = load <4 x double>, ptr %i.sj, align 8, !tbaa !92
  %wide.load1038 = load <4 x double>, ptr %i.sk, align 8, !tbaa !92
  %wide.load1039 = load <4 x double>, ptr %i.sl, align 8, !tbaa !92
  %gep1667.a = getelementptr [8 x i8], ptr %invariant.gep1666.a, i64 %index1035 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %gep1667.a, i64 32
  %i.sn = getelementptr inbounds nuw i8, ptr %gep1667.a, i64 64
  %i.so = getelementptr inbounds nuw i8, ptr %gep1667.a, i64 96
  store <4 x double> %wide.load1036, ptr %gep1667.a, align 8, !tbaa !92
  store <4 x double> %wide.load1037, ptr %i.sm, align 8, !tbaa !92
  store <4 x double> %wide.load1038, ptr %i.sn, align 8, !tbaa !92
  store <4 x double> %wide.load1039, ptr %i.so, align 8, !tbaa !92
  %index.next1040 = add nuw i64 %index1035, 16    ; 2 uses
  %i.sp = icmp eq i64 %index.next1040, %n.vec1033
  br i1 %i.sp, label %middle.block1041, label %vector.body1034, !llvm.loop !50

middle.block1041:                                 ; preds = %vector.body1034
  %cmp.n1042 = icmp eq i64 %i.rw, %n.vec1033
  br i1 %cmp.n1042, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1044

vec.epilog.iter.check1044:                        ; preds = %middle.block1041
  %min.epilog.iters.check1046 = icmp eq i64 %i.sd, 0
  br i1 %min.epilog.iters.check1046, label %.lr.ph483.preheader, label %vec.epilog.ph1047, !prof !96

vec.epilog.ph1047:                                ; preds = %vector.main.loop.iter.check1030, %vec.epilog.iter.check1044
end_hunk_1
begin_hunk_2_@dtfttp_:bb.a
._crit_edge495.2:                                 ; preds = %bb.t
  %indvars.iv.next726.2 = or disjoint i64 %indvars.iv725, 3 ; 2 uses
  %invariant.gep899.3 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next726.2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %._crit_edge495.2
  %indvars.iv727.3 = phi i64 [ %indvars.iv.next726.2, %._crit_edge495.2 ], [ %indvars.iv.next728.3, %bb.u ] ; 2 uses
  %indvars.iv723.3 = phi i64 [ %indvars.iv.next724.2, %._crit_edge495.2 ], [ %indvars.iv.next724.3, %bb.u ] ; 2 uses
  %i.ut = mul nuw nsw i64 %indvars.iv727.3, %i.uh
  %gep900.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.3, i64 %i.ut
  %i.uu = load double, ptr %gep900.3, align 8, !tbaa !92
  %i.uv = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.3
  store double %i.uu, ptr %i.uv, align 8, !tbaa !92
  %indvars.iv.next724.3 = add nsw i64 %indvars.iv723.3, 1 ; 3 uses
  %indvars.iv.next728.3 = add nuw nsw i64 %indvars.iv727.3, 1 ; 2 uses
  %.not397.not.3 = icmp samesign ult i64 %indvars.iv.next728.3, %i.ui
  br i1 %.not397.not.3, label %bb.u, label %._crit_edge495.3, !llvm.loop !55

._crit_edge495.3:                                 ; preds = %bb.u
  %indvars.iv.next726.3 = add nuw nsw i64 %indvars.iv725, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit1610.unr-lcssa, label %iter.check1079, !llvm.loop !56

iter.check1118:                                   ; preds = %.lr.ph507.preheader, %.loopexit1589
  %loop-unroll.iv1630 = phi i32 [ 0, %.lr.ph507.preheader ], [ %loop-unroll.iv.next1631, %.loopexit1589 ] ; 2 uses
  %indvar1100 = phi i64 [ 0, %.lr.ph507.preheader ], [ %indvar.next1101, %.loopexit1589 ] ; 3 uses
  %indvars.iv744 = phi i32 [ 1, %.lr.ph507.preheader ], [ %indvars.iv.next745, %.loopexit1589 ] ; 3 uses
  %indvars.iv737.in = phi i32 [ %i.q, %.lr.ph507.preheader ], [ %indvars.iv737, %.loopexit1589 ]
  %.20505 = phi i32 [ 0, %.lr.ph507.preheader ], [ %i.vb, %.loopexit1589 ] ; 2 uses
  %i.uw = trunc i64 %indvar1100 to i32
  %i.ux = add i32 %i.uw, 2
  %i.uy = add i64 %indvar1100, 1                  ; 7 uses
  %indvars.iv737 = add i32 %indvars.iv737.in, 1   ; 2 uses
  %i.uz = sext i32 %indvars.iv737 to i64          ; 7 uses
  %i.va = sext i32 %.20505 to i64                 ; 7 uses
  %i.vb = add i32 %.20505, %indvars.iv744         ; 4 uses
  %min.iters.check1102 = icmp ugt i64 %i.uy, 3
  %or.cond1596 = and i1 %min.iters.check1102, %ident.check1095.not
  br i1 %or.cond1596, label %vector.memcheck1103, label %vec.epilog.scalar.ph1120.preheader

vector.memcheck1103:                              ; preds = %iter.check1118
  %i.vc = sub nsw i64 %i.va, %i.uz
  %i.vd = shl nsw i64 %i.vc, 3
  %.reass1679 = add i64 %i.vd, %invariant.op1678
  %diff.check1104 = icmp ult i64 %.reass1679, 127
  br i1 %diff.check1104, label %vec.epilog.scalar.ph1120.preheader, label %vector.main.loop.iter.check1105

vector.main.loop.iter.check1105:                  ; preds = %vector.memcheck1103
  %min.iters.check1106 = icmp ult i64 %i.uy, 16
  br i1 %min.iters.check1106, label %vec.epilog.ph1122, label %vector.ph1107

vector.ph1107:                                    ; preds = %vector.main.loop.iter.check1105
  %i.ve = and i64 %i.uy, 12
  %n.vec1108 = and i64 %i.uy, -16                 ; 5 uses
  %i.vf = add i64 %n.vec1108, %i.uz
  %i.vg = add i64 %n.vec1108, %i.va
  %invariant.gep1670.a = getelementptr [8 x i8], ptr %3, i64 %i.uz
  %invariant.gep1672.a = getelementptr [8 x i8], ptr %4, i64 %i.va
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.ph1107, %vector.body1109
  %index1110 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1115, %vector.body1109 ] ; 3 uses
  %gep1671.a = getelementptr [8 x i8], ptr %invariant.gep1670.a, i64 %index1110 ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %gep1671.a, i64 32
  %i.vi = getelementptr inbounds nuw i8, ptr %gep1671.a, i64 64
  %i.vj = getelementptr inbounds nuw i8, ptr %gep1671.a, i64 96
  %wide.load1111 = load <4 x double>, ptr %gep1671.a, align 8, !tbaa !92
  %wide.load1112 = load <4 x double>, ptr %i.vh, align 8, !tbaa !92
  %wide.load1113 = load <4 x double>, ptr %i.vi, align 8, !tbaa !92
  %wide.load1114 = load <4 x double>, ptr %i.vj, align 8, !tbaa !92
  %gep1673.a = getelementptr [8 x i8], ptr %invariant.gep1672.a, i64 %index1110 ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %gep1673.a, i64 32
  %i.vl = getelementptr inbounds nuw i8, ptr %gep1673.a, i64 64
  %i.vm = getelementptr inbounds nuw i8, ptr %gep1673.a, i64 96
  store <4 x double> %wide.load1111, ptr %gep1673.a, align 8, !tbaa !92
  store <4 x double> %wide.load1112, ptr %i.vk, align 8, !tbaa !92
  store <4 x double> %wide.load1113, ptr %i.vl, align 8, !tbaa !92
  store <4 x double> %wide.load1114, ptr %i.vm, align 8, !tbaa !92
  %index.next1115 = add nuw i64 %index1110, 16    ; 2 uses
  %i.vn = icmp eq i64 %index.next1115, %n.vec1108
  br i1 %i.vn, label %middle.block1116, label %vector.body1109, !llvm.loop !57

middle.block1116:                                 ; preds = %vector.body1109
  %cmp.n1117 = icmp eq i64 %i.uy, %n.vec1108
  br i1 %cmp.n1117, label %.loopexit1589, label %vec.epilog.iter.check1119

vec.epilog.iter.check1119:                        ; preds = %middle.block1116
  %min.epilog.iters.check1121 = icmp eq i64 %i.ve, 0
  br i1 %min.epilog.iters.check1121, label %vec.epilog.scalar.ph1120.preheader, label %vec.epilog.ph1122, !prof !96

vec.epilog.ph1122:                                ; preds = %vector.main.loop.iter.check1105, %vec.epilog.iter.check1119
  %vec.epilog.resume.val1123 = phi i64 [ %n.vec1108, %vec.epilog.iter.check1119 ], [ 0, %vector.main.loop.iter.check1105 ]
  %n.vec1124 = and i64 %i.uy, -4                  ; 4 uses
  %i.vo = add i64 %n.vec1124, %i.uz
  %i.vp = add i64 %n.vec1124, %i.va
  %invariant.gep1674 = getelementptr [8 x i8], ptr %3, i64 %i.uz
  %invariant.gep1676 = getelementptr [8 x i8], ptr %4, i64 %i.va
  br label %vec.epilog.vector.body1125

vec.epilog.vector.body1125:                       ; preds = %vec.epilog.vector.body1125, %vec.epilog.ph1122
  %index1126 = phi i64 [ %vec.epilog.resume.val1123, %vec.epilog.ph1122 ], [ %index.next1128, %vec.epilog.vector.body1125 ] ; 3 uses
  %gep1675 = getelementptr [8 x i8], ptr %invariant.gep1674, i64 %index1126
  %wide.load1127 = load <4 x double>, ptr %gep1675, align 8, !tbaa !92
  %gep1677 = getelementptr [8 x i8], ptr %invariant.gep1676, i64 %index1126
  store <4 x double> %wide.load1127, ptr %gep1677, align 8, !tbaa !92
  %index.next1128 = add nuw i64 %index1126, 4     ; 2 uses
  %i.vq = icmp eq i64 %index.next1128, %n.vec1124
  br i1 %i.vq, label %vec.epilog.middle.block1129, label %vec.epilog.vector.body1125, !llvm.loop !58

vec.epilog.middle.block1129:                      ; preds = %vec.epilog.vector.body1125
  %cmp.n1130 = icmp eq i64 %i.uy, %n.vec1124
  br i1 %cmp.n1130, label %.loopexit1589, label %vec.epilog.scalar.ph1120.preheader

vec.epilog.scalar.ph1120.preheader:               ; preds = %iter.check1118, %vector.memcheck1103, %vec.epilog.iter.check1119, %vec.epilog.middle.block1129
  %indvars.iv739.ph = phi i64 [ %i.uz, %iter.check1118 ], [ %i.uz, %vector.memcheck1103 ], [ %i.vf, %vec.epilog.iter.check1119 ], [ %i.vo, %vec.epilog.middle.block1129 ] ; 2 uses
  %indvars.iv735.ph = phi i64 [ %i.va, %iter.check1118 ], [ %i.va, %vector.memcheck1103 ], [ %i.vg, %vec.epilog.iter.check1119 ], [ %i.vp, %vec.epilog.middle.block1129 ] ; 3 uses
  %i.vr = trunc i64 %indvars.iv735.ph to i32      ; 2 uses
  %i.vs = sub i32 %i.vb, %i.vr
  %i.vt = sub i32 %loop-unroll.iv1630, %i.vr
  %xtraiter1632 = and i32 %i.vs, 7                ; 2 uses
  %lcmp.mod1633.not = icmp eq i32 %xtraiter1632, 0
  br i1 %lcmp.mod1633.not, label %vec.epilog.scalar.ph1120.prol.loopexit, label %vec.epilog.scalar.ph1120.prol

vec.epilog.scalar.ph1120.prol:                    ; preds = %vec.epilog.scalar.ph1120.preheader, %vec.epilog.scalar.ph1120.prol
  %indvars.iv739.prol = phi i64 [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1120.prol ], [ %indvars.iv739.ph, %vec.epilog.scalar.ph1120.preheader ] ; 2 uses
  %indvars.iv735.prol = phi i64 [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1120.prol ], [ %indvars.iv735.ph, %vec.epilog.scalar.ph1120.preheader ] ; 2 uses
  %prol.iter1634 = phi i32 [ %prol.iter1634.next, %vec.epilog.scalar.ph1120.prol ], [ 0, %vec.epilog.scalar.ph1120.preheader ]
  %i.vu = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv739.prol
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !92
  %i.vw = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv735.prol
  store double %i.vv, ptr %i.vw, align 8, !tbaa !92
  %indvars.iv.next736.prol = add nsw i64 %indvars.iv735.prol, 1 ; 2 uses
  %indvars.iv.next740.prol = add nsw i64 %indvars.iv739.prol, %i.rq ; 2 uses
  %prol.iter1634.next = add i32 %prol.iter1634, 1 ; 2 uses
  %prol.iter1634.cmp.not = icmp eq i32 %prol.iter1634.next, %xtraiter1632
  br i1 %prol.iter1634.cmp.not, label %vec.epilog.scalar.ph1120.prol.loopexit, label %vec.epilog.scalar.ph1120.prol, !llvm.loop !59

vec.epilog.scalar.ph1120.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1120.prol, %vec.epilog.scalar.ph1120.preheader
  %indvars.iv739.unr = phi i64 [ %indvars.iv739.ph, %vec.epilog.scalar.ph1120.preheader ], [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1120.prol ]
  %indvars.iv735.unr = phi i64 [ %indvars.iv735.ph, %vec.epilog.scalar.ph1120.preheader ], [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1120.prol ]
  %i.vx = icmp ult i32 %i.vt, 7
  br i1 %i.vx, label %.loopexit1589, label %vec.epilog.scalar.ph1120

vec.epilog.scalar.ph1120:                         ; preds = %vec.epilog.scalar.ph1120.prol.loopexit, %vec.epilog.scalar.ph1120
  %indvars.iv739 = phi i64 [ %indvars.iv.next740.7, %vec.epilog.scalar.ph1120 ], [ %indvars.iv739.unr, %vec.epilog.scalar.ph1120.prol.loopexit ] ; 2 uses
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.7, %vec.epilog.scalar.ph1120 ], [ %indvars.iv735.unr, %vec.epilog.scalar.ph1120.prol.loopexit ] ; 9 uses
  %i.vy = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv739
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !92
  %i.wa = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv735
  store double %i.vz, ptr %i.wa, align 8, !tbaa !92
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, %i.rq ; 2 uses
  %i.wb = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !92
  %i.wd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.we = getelementptr i8, ptr %i.wd, i64 8
  store double %i.wc, ptr %i.we, align 8, !tbaa !92
  %indvars.iv.next740.1 = add nsw i64 %indvars.iv.next740, %i.rq ; 2 uses
  %i.wf = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.1
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !92
  %i.wh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wi = getelementptr i8, ptr %i.wh, i64 16
  store double %i.wg, ptr %i.wi, align 8, !tbaa !92
  %indvars.iv.next740.2 = add nsw i64 %indvars.iv.next740.1, %i.rq ; 2 uses
  %i.wj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.2
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !92
  %i.wl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wm = getelementptr i8, ptr %i.wl, i64 24
  store double %i.wk, ptr %i.wm, align 8, !tbaa !92
  %indvars.iv.next740.3 = add nsw i64 %indvars.iv.next740.2, %i.rq ; 2 uses
  %i.wn = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.3
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !92
  %i.wp = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wq = getelementptr i8, ptr %i.wp, i64 32
  store double %i.wo, ptr %i.wq, align 8, !tbaa !92
  %indvars.iv.next740.4 = add nsw i64 %indvars.iv.next740.3, %i.rq ; 2 uses
  %i.wr = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.4
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !92
  %i.wt = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wu = getelementptr i8, ptr %i.wt, i64 40
  store double %i.ws, ptr %i.wu, align 8, !tbaa !92
  %indvars.iv.next740.5 = add nsw i64 %indvars.iv.next740.4, %i.rq ; 2 uses
  %i.wv = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.5
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !92
  %i.wx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wy = getelementptr i8, ptr %i.wx, i64 48
  store double %i.ww, ptr %i.wy, align 8, !tbaa !92
  %indvars.iv.next740.6 = add nsw i64 %indvars.iv.next740.5, %i.rq ; 2 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.6
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !92
  %i.xb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xc = getelementptr i8, ptr %i.xb, i64 56
  store double %i.xa, ptr %i.xc, align 8, !tbaa !92
  %indvars.iv.next736.7 = add nsw i64 %indvars.iv735, 8 ; 2 uses
  %indvars.iv.next740.7 = add nsw i64 %indvars.iv.next740.6, %i.rq
  %lftr.wideiv746.7 = trunc i64 %indvars.iv.next736.7 to i32
  %exitcond747.not.7 = icmp eq i32 %i.vb, %lftr.wideiv746.7
  br i1 %exitcond747.not.7, label %.loopexit1589, label %vec.epilog.scalar.ph1120, !llvm.loop !60

.loopexit1589:                                    ; preds = %vec.epilog.scalar.ph1120.prol.loopexit, %vec.epilog.scalar.ph1120, %vec.epilog.middle.block1129, %middle.block1116
  %indvars.iv.next745 = add nuw i32 %indvars.iv744, 1
  %exitcond748.not = icmp eq i32 %indvars.iv744, %i.q
  %indvar.next1101 = add i64 %indvar1100, 1
  %loop-unroll.iv.next1631 = add i32 %loop-unroll.iv1630, %i.ux
  br i1 %exitcond748.not, label %._crit_edge508, label %iter.check1118, !llvm.loop !61

._crit_edge508:                                   ; preds = %.loopexit1589
  %.not392.not517.not = icmp eq i32 %i.h, 0
  br i1 %.not392.not517.not, label %.loopexit, label %.lr.ph522.preheader

.lr.ph522.preheader:                              ; preds = %._crit_edge508
  %i.xd = zext nneg i32 %.0328 to i64
  %i.xe = zext nneg i32 %i.q to i64               ; 2 uses
  %wide.trip.count764 = zext nneg i32 %i.h to i64
  %i.xf = sext i32 %i.vb to i64
  %i.xg = mul nsw i64 %i.rq, -8
  %i.xh = sub i64 %i.b, %i.a
  %i.xi = add nuw nsw i64 %i.rq, 1
  br label %iter.check1155

iter.check1155:                                   ; preds = %._crit_edge515, %.lr.ph522.preheader
  %indvar1137 = phi i64 [ %indvar.next1138, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 4 uses
  %indvars.iv759 = phi i64 [ %indvars.iv.next760, %._crit_edge515 ], [ %i.xe, %.lr.ph522.preheader ] ; 2 uses
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 9 uses
  %.22520 = phi i64 [ %indvars.iv.next751.lcssa, %._crit_edge515 ], [ %i.xf, %.lr.ph522.preheader ] ; 7 uses
  %i.xj = mul i64 %i.xi, %indvar1137
  %i.xk = add i64 %i.xj, %i.xe
  %umax = tail call i64 @llvm.umax.i64(i64 %i.xk, i64 %indvars.iv752)
  %i.xl = mul i64 %indvar1137, %i.rq
  %reass.sub1591 = sub i64 %umax, %i.xl
  %i.xm = add i64 %reass.sub1591, 1               ; 7 uses
  %i.xn = add nuw nsw i64 %indvars.iv752, %indvars.iv759
  %min.iters.check1139 = icmp ult i64 %i.xm, 4
  br i1 %min.iters.check1139, label %.lr.ph514.preheader, label %vector.memcheck1140

vector.memcheck1140:                              ; preds = %iter.check1155
  %i.xo = mul i64 %indvar1137, %i.xg
  %i.xp = add i64 %i.xh, %i.xo
  %i.xq = shl i64 %.22520, 3
  %i.xr = add i64 %i.xp, %i.xq
  %i.xs = add i64 %i.xr, -1
  %diff.check1141 = icmp ult i64 %i.xs, 127
  br i1 %diff.check1141, label %.lr.ph514.preheader, label %vector.main.loop.iter.check1142

vector.main.loop.iter.check1142:                  ; preds = %vector.memcheck1140
  %min.iters.check1143 = icmp ult i64 %i.xm, 16
  br i1 %min.iters.check1143, label %vec.epilog.ph1159, label %vector.ph1144

vector.ph1144:                                    ; preds = %vector.main.loop.iter.check1142
  %i.xt = and i64 %i.xm, 12
  %n.vec1145 = and i64 %i.xm, -16                 ; 5 uses
  %i.xu = add i64 %indvars.iv752, %n.vec1145
  %i.xv = add i64 %.22520, %n.vec1145             ; 2 uses
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.xx = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.ph1144, %vector.body1146
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1152, %vector.body1146 ] ; 3 uses
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %index1147 ; 4 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 32
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 96
  %wide.load1148 = load <4 x double>, ptr %i.xy, align 8, !tbaa !92
  %wide.load1149 = load <4 x double>, ptr %i.xz, align 8, !tbaa !92
  %wide.load1150 = load <4 x double>, ptr %i.ya, align 8, !tbaa !92
  %wide.load1151 = load <4 x double>, ptr %i.yb, align 8, !tbaa !92
  %i.yc = getelementptr [8 x i8], ptr %i.xx, i64 %index1147 ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 32
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 96
  store <4 x double> %wide.load1148, ptr %i.yc, align 8, !tbaa !92
  store <4 x double> %wide.load1149, ptr %i.yd, align 8, !tbaa !92
  store <4 x double> %wide.load1150, ptr %i.ye, align 8, !tbaa !92
  store <4 x double> %wide.load1151, ptr %i.yf, align 8, !tbaa !92
  %index.next1152 = add nuw i64 %index1147, 16    ; 2 uses
  %i.yg = icmp eq i64 %index.next1152, %n.vec1145
  br i1 %i.yg, label %middle.block1153, label %vector.body1146, !llvm.loop !62

middle.block1153:                                 ; preds = %vector.body1146
  %cmp.n1154 = icmp eq i64 %i.xm, %n.vec1145
  br i1 %cmp.n1154, label %._crit_edge515, label %vec.epilog.iter.check1156

vec.epilog.iter.check1156:                        ; preds = %middle.block1153
  %min.epilog.iters.check1158 = icmp eq i64 %i.xt, 0
  br i1 %min.epilog.iters.check1158, label %.lr.ph514.preheader, label %vec.epilog.ph1159, !prof !96

vec.epilog.ph1159:                                ; preds = %vector.main.loop.iter.check1142, %vec.epilog.iter.check1156
  %vec.epilog.resume.val1160 = phi i64 [ %n.vec1145, %vec.epilog.iter.check1156 ], [ 0, %vector.main.loop.iter.check1142 ]
  %n.vec1161 = and i64 %i.xm, -4                  ; 4 uses
  %i.yh = add i64 %indvars.iv752, %n.vec1161
  %i.yi = add i64 %.22520, %n.vec1161             ; 2 uses
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.yk = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vec.epilog.vector.body1162

vec.epilog.vector.body1162:                       ; preds = %vec.epilog.vector.body1162, %vec.epilog.ph1159
  %index1163 = phi i64 [ %vec.epilog.resume.val1160, %vec.epilog.ph1159 ], [ %index.next1165, %vec.epilog.vector.body1162 ] ; 3 uses
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %index1163
  %wide.load1164 = load <4 x double>, ptr %i.yl, align 8, !tbaa !92
  %i.ym = getelementptr [8 x i8], ptr %i.yk, i64 %index1163
  store <4 x double> %wide.load1164, ptr %i.ym, align 8, !tbaa !92
  %index.next1165 = add nuw i64 %index1163, 4     ; 2 uses
  %i.yn = icmp eq i64 %index.next1165, %n.vec1161
  br i1 %i.yn, label %vec.epilog.middle.block1166, label %vec.epilog.vector.body1162, !llvm.loop !63

vec.epilog.middle.block1166:                      ; preds = %vec.epilog.vector.body1162
  %cmp.n1167 = icmp eq i64 %i.xm, %n.vec1161
  br i1 %cmp.n1167, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %iter.check1155, %vector.memcheck1140, %vec.epilog.iter.check1156, %vec.epilog.middle.block1166
  %indvars.iv754.ph = phi i64 [ %indvars.iv752, %iter.check1155 ], [ %indvars.iv752, %vector.memcheck1140 ], [ %i.xu, %vec.epilog.iter.check1156 ], [ %i.yh, %vec.epilog.middle.block1166 ]
  %indvars.iv750.ph = phi i64 [ %.22520, %iter.check1155 ], [ %.22520, %vector.memcheck1140 ], [ %i.xv, %vec.epilog.iter.check1156 ], [ %i.yi, %vec.epilog.middle.block1166 ]
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %.lr.ph514
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph514 ], [ %indvars.iv754.ph, %.lr.ph514.preheader ] ; 3 uses
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %.lr.ph514 ], [ %indvars.iv750.ph, %.lr.ph514.preheader ] ; 2 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv754
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !92
  %i.yq = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv750
  store double %i.yp, ptr %i.yq, align 8, !tbaa !92
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %.not393.not = icmp samesign ult i64 %indvars.iv754, %i.xn
  br i1 %.not393.not, label %.lr.ph514, label %._crit_edge515, !llvm.loop !64

._crit_edge515:                                   ; preds = %.lr.ph514, %vec.epilog.middle.block1166, %middle.block1153
  %indvars.iv.next751.lcssa = phi i64 [ %i.yi, %vec.epilog.middle.block1166 ], [ %i.xv, %middle.block1153 ], [ %indvars.iv.next751, %.lr.ph514 ]
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, %i.xd
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count764
  %indvar.next1138 = add i64 %indvar1137, 1
  br i1 %exitcond765.not, label %.loopexit, label %iter.check1155, !llvm.loop !65

bb.v:                                             ; preds = %bb.j
  br i1 %.not379, label %.lr.ph605.preheader, label %.lr.ph582

.lr.ph582:                                        ; preds = %bb.v
  %i.yr = mul nuw nsw i32 %i.s, %.0328            ; 2 uses
  %i.ys = add nuw nsw i32 %i.s, 1
  %i.yt = zext nneg i32 %i.s to i64               ; 11 uses
  %i.yu = zext nneg i32 %i.yr to i64              ; 5 uses
  %scevgep1383.a = getelementptr i8, ptr %3, i64 8
  %scevgep1384 = getelementptr i8, ptr %4, i64 8
  %23 = tail call i64 @llvm.umax.i64(i64 %i.yt, i64 1)
  %broadcast.splatinsert1396.a = insertelement <4 x i64> poison, i64 %i.yt, i64 0
  %broadcast.splat1397.a = shufflevector <4 x i64> %broadcast.splatinsert1396.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.yv = shl nuw nsw <4 x i64> %broadcast.splat1397.a, splat (i64 2) ; 5 uses
  %i.yw = mul nuw nsw <4 x i64> %broadcast.splat1397.a, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1700.a = add nsw <4 x i64> %i.yv, %i.yv ; 2 uses
  %invariant.op1701 = add nsw <4 x i64> %invariant.op1700.a, %i.yv ; 2 uses
  %invariant.op1704 = add nsw <4 x i64> %invariant.op1701, %i.yv
  %broadcast.splatinsert1429 = insertelement <4 x i64> poison, i64 %i.yt, i64 0
  %broadcast.splat1430 = shufflevector <4 x i64> %broadcast.splatinsert1429, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.yx = mul nuw nsw <4 x i64> %broadcast.splat1430, <i64 0, i64 1, i64 2, i64 3>
  %i.yy = shl nuw nsw i64 %i.yt, 2
  %broadcast.splatinsert1432 = insertelement <4 x i64> poison, i64 %i.yy, i64 0
  %broadcast.splat1433 = shufflevector <4 x i64> %broadcast.splatinsert1432, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.w

.loopexit427.loopexit:                            ; preds = %.lr.ph576, %vec.epilog.middle.block1441, %middle.block1417
  %indvars.iv.next821.lcssa = phi i64 [ %i.aal, %vec.epilog.middle.block1441 ], [ %i.aae, %middle.block1417 ], [ %indvars.iv.next821, %.lr.ph576 ]
  %i.yz = trunc nsw i64 %indvars.iv.next821.lcssa to i32
  br label %.loopexit427

.loopexit427:                                     ; preds = %.loopexit427.loopexit, %bb.w
  %.25.lcssa = phi i32 [ %.24580, %bb.w ], [ %i.yz, %.loopexit427.loopexit ] ; 2 uses
  %indvars.iv.next823 = add i32 %indvars.iv822, %i.ys
  %exitcond829.not = icmp eq i32 %i.za, %i.q
  br i1 %exitcond829.not, label %.lr.ph597, label %bb.w, !llvm.loop !66

bb.w:                                             ; preds = %.lr.ph582, %.loopexit427
  %indvars.iv822 = phi i32 [ %i.s, %.lr.ph582 ], [ %indvars.iv.next823, %.loopexit427 ] ; 3 uses
  %.24580 = phi i32 [ 0, %.lr.ph582 ], [ %.25.lcssa, %.loopexit427 ] ; 2 uses
  %.8374579 = phi i32 [ 0, %.lr.ph582 ], [ %i.za, %.loopexit427 ] ; 2 uses
  %i.za = add nuw nsw i32 %.8374579, 1            ; 3 uses
  %i.zb = mul nuw nsw i32 %i.za, %i.s
  %i.zc = add nuw nsw i32 %i.zb, %.8374579
  %i.zd = icmp slt i32 %i.zc, %i.yr
  br i1 %i.zd, label %iter.check1419, label %.loopexit427

iter.check1419:                                   ; preds = %bb.w
  %i.ze = sext i32 %indvars.iv822 to i64
  %i.zf = add nsw i64 %i.yt, %i.ze                ; 3 uses
  %24 = icmp slt i64 %i.zf, %i.yu                 ; 2 uses
  %umin1386 = zext i1 %24 to i64
  %smax1385 = tail call i64 @llvm.smax.i64(i64 %i.zf, i64 %i.yu)
  %i.zg = add nsw i64 %i.zf, %umin1386
  %i.zh = sub i64 %smax1385, %i.zg
  %i.zi = sext i32 %indvars.iv822 to i64          ; 9 uses
  %i.zj = sext i32 %.24580 to i64                 ; 8 uses
  %25 = select i1 %24, i64 2, i64 1
  %i.zk = udiv i64 %i.zh, %23
  %i.zl = add i64 %25, %i.zk                      ; 7 uses
  %min.iters.check1387 = icmp ult i64 %i.zl, 4
  br i1 %min.iters.check1387, label %.lr.ph576.preheader, label %vector.memcheck1388

vector.memcheck1388:                              ; preds = %iter.check1419
  %i.zm = shl nsw i64 %i.zj, 3
  %i.zn = getelementptr i8, ptr %4, i64 %i.zm
  %i.zo = add nsw i64 %i.yt, %i.zi                ; 3 uses
  %i.zp = tail call i64 @llvm.smax.i64(i64 %i.zo, i64 %i.yu)
  %26 = icmp slt i64 %i.zo, %i.yu
  %27 = zext i1 %26 to i64                        ; 2 uses
  %i.zq = add nsw i64 %i.zo, %27
  %28 = sub i64 %i.zp, %i.zq
  %i.zr = udiv i64 %28, %i.yt
  %29 = add i64 %i.zr, %27                        ; 2 uses
  %i.zs = add i64 %29, %i.zj
  %i.zt = shl i64 %i.zs, 3
  %i.zu = getelementptr i8, ptr %scevgep1384, i64 %i.zt
  %i.zv = shl nsw i64 %i.zi, 3
  %i.zw = getelementptr i8, ptr %3, i64 %i.zv
  %i.zx = mul i64 %29, %i.yt
  %i.zy = add i64 %i.zx, %i.zi
  %i.zz = shl i64 %i.zy, 3
  %i.aaa = getelementptr i8, ptr %scevgep1383.a, i64 %i.zz
  %bound01389 = icmp ult ptr %i.zn, %i.aaa
  %bound11390 = icmp ult ptr %i.zw, %i.zu
  %found.conflict1391 = and i1 %bound01389, %bound11390
  br i1 %found.conflict1391, label %.lr.ph576.preheader, label %vector.main.loop.iter.check1392

vector.main.loop.iter.check1392:                  ; preds = %vector.memcheck1388
  %min.iters.check1393 = icmp ult i64 %i.zl, 16
  br i1 %min.iters.check1393, label %vec.epilog.ph1423, label %vector.ph1394

vector.ph1394:                                    ; preds = %vector.main.loop.iter.check1392
  %i.aab = and i64 %i.zl, 12
  %n.vec1395 = and i64 %i.zl, -16                 ; 5 uses
  %i.aac = mul i64 %n.vec1395, %i.yt
  %i.aad = add i64 %i.aac, %i.zi                  ; 2 uses
  %i.aae = add i64 %n.vec1395, %i.zj              ; 2 uses
  %broadcast.splatinsert1398 = insertelement <4 x i64> poison, i64 %i.zi, i64 0
  %broadcast.splat1399 = shufflevector <4 x i64> %broadcast.splatinsert1398, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1400 = add nsw <4 x i64> %broadcast.splat1399, %i.yw
  %invariant.gep1702 = getelementptr [8 x i8], ptr %4, i64 %i.zj
  br label %vector.body1401

vector.body1401:                                  ; preds = %vector.ph1394, %vector.body1401
  %index1402 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1415, %vector.body1401 ] ; 2 uses
  %vec.ind1403 = phi <4 x i64> [ %induction1400, %vector.ph1394 ], [ %vec.ind.next1416.reass, %vector.body1401 ] ; 5 uses
  %step.add1404 = add nsw <4 x i64> %vec.ind1403, %i.yv
  %step.add.21405.reass = add nsw <4 x i64> %vec.ind1403, %invariant.op1700.a
  %step.add.31406.reass = add nsw <4 x i64> %vec.ind1403, %invariant.op1701
  %wide.gep1407.a = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1403
  %wide.gep1408.a = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add1404
  %wide.gep1409 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.21405.reass
  %wide.gep1410 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.31406.reass
  %wide.masked.gather1411.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1407.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1412.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1408.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1413 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1409, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %wide.masked.gather1414 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1410, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %gep1703 = getelementptr [8 x i8], ptr %invariant.gep1702, i64 %index1402 ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %gep1703, i64 32
  %i.aag = getelementptr inbounds nuw i8, ptr %gep1703, i64 64
  %i.aah = getelementptr inbounds nuw i8, ptr %gep1703, i64 96
  store <4 x double> %wide.masked.gather1411.a, ptr %gep1703, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1412.a, ptr %i.aaf, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1413, ptr %i.aag, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  store <4 x double> %wide.masked.gather1414, ptr %i.aah, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1415 = add nuw i64 %index1402, 16    ; 2 uses
  %vec.ind.next1416.reass = add nsw <4 x i64> %vec.ind1403, %invariant.op1704
  %i.aai = icmp eq i64 %index.next1415, %n.vec1395
  br i1 %i.aai, label %middle.block1417, label %vector.body1401, !llvm.loop !70

middle.block1417:                                 ; preds = %vector.body1401
  %cmp.n1418 = icmp eq i64 %i.zl, %n.vec1395
  br i1 %cmp.n1418, label %.loopexit427.loopexit, label %vec.epilog.iter.check1420

vec.epilog.iter.check1420:                        ; preds = %middle.block1417
  %min.epilog.iters.check1422 = icmp eq i64 %i.aab, 0
  br i1 %min.epilog.iters.check1422, label %.lr.ph576.preheader, label %vec.epilog.ph1423, !prof !96

vec.epilog.ph1423:                                ; preds = %vector.main.loop.iter.check1392, %vec.epilog.iter.check1420
  %vec.epilog.resume.val1424 = phi i64 [ %n.vec1395, %vec.epilog.iter.check1420 ], [ 0, %vector.main.loop.iter.check1392 ]
  %bc.resume.val1425 = phi i64 [ %i.aad, %vec.epilog.iter.check1420 ], [ %i.zi, %vector.main.loop.iter.check1392 ]
  %n.vec1426 = and i64 %i.zl, -4                  ; 4 uses
  %i.aaj = mul i64 %n.vec1426, %i.yt
  %i.aak = add i64 %i.aaj, %i.zi
  %i.aal = add i64 %n.vec1426, %i.zj              ; 2 uses
  %broadcast.splatinsert1427 = insertelement <4 x i64> poison, i64 %bc.resume.val1425, i64 0
  %broadcast.splat1428 = shufflevector <4 x i64> %broadcast.splatinsert1427, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1431 = add nsw <4 x i64> %broadcast.splat1428, %i.yx
  %invariant.gep1705.a = getelementptr [8 x i8], ptr %4, i64 %i.zj
  br label %vec.epilog.vector.body1434

vec.epilog.vector.body1434:                       ; preds = %vec.epilog.vector.body1434, %vec.epilog.ph1423
  %index1435 = phi i64 [ %vec.epilog.resume.val1424, %vec.epilog.ph1423 ], [ %index.next1439, %vec.epilog.vector.body1434 ] ; 2 uses
  %vec.ind1436 = phi <4 x i64> [ %induction1431, %vec.epilog.ph1423 ], [ %vec.ind.next1440, %vec.epilog.vector.body1434 ] ; 2 uses
  %wide.gep1437 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1436
  %wide.masked.gather1438 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1437, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !102
  %gep1706.a = getelementptr [8 x i8], ptr %invariant.gep1705.a, i64 %index1435
  store <4 x double> %wide.masked.gather1438, ptr %gep1706.a, align 8, !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1439 = add nuw i64 %index1435, 4     ; 2 uses
  %vec.ind.next1440 = add nsw <4 x i64> %vec.ind1436, %broadcast.splat1433
  %i.aam = icmp eq i64 %index.next1439, %n.vec1426
  br i1 %i.aam, label %vec.epilog.middle.block1441, label %vec.epilog.vector.body1434, !llvm.loop !71

vec.epilog.middle.block1441:                      ; preds = %vec.epilog.vector.body1434
  %cmp.n1442 = icmp eq i64 %i.zl, %n.vec1426
  br i1 %cmp.n1442, label %.loopexit427.loopexit, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %iter.check1419, %vector.memcheck1388, %vec.epilog.iter.check1420, %vec.epilog.middle.block1441
  %indvars.iv824.ph = phi i64 [ %i.zi, %iter.check1419 ], [ %i.zi, %vector.memcheck1388 ], [ %i.aad, %vec.epilog.iter.check1420 ], [ %i.aak, %vec.epilog.middle.block1441 ]
  %indvars.iv820.ph = phi i64 [ %i.zj, %iter.check1419 ], [ %i.zj, %vector.memcheck1388 ], [ %i.aae, %vec.epilog.iter.check1420 ], [ %i.aal, %vec.epilog.middle.block1441 ]
  br label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %.lr.ph576
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph576 ], [ %indvars.iv824.ph, %.lr.ph576.preheader ] ; 2 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %.lr.ph576 ], [ %indvars.iv820.ph, %.lr.ph576.preheader ] ; 2 uses
  %i.aan = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv824
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !92
  %i.aap = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv820
  store double %i.aao, ptr %i.aap, align 8, !tbaa !92
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1 ; 2 uses
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, %i.yt ; 2 uses
  %i.aaq = icmp slt i64 %indvars.iv.next825, %i.yu
  br i1 %i.aaq, label %.lr.ph576, label %.loopexit427.loopexit, !llvm.loop !72

.lr.ph597:                                        ; preds = %.loopexit427
  %i.aar = add nuw nsw i32 %i.s, 1
  %i.aas = sub i64 %i.b, %i.a
  %invariant.op1715.a = add i64 %i.aas, -1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph597, %._crit_edge590
  %indvars.iv840 = phi i32 [ %i.q, %.lr.ph597 ], [ %indvars.iv.next841, %._crit_edge590 ] ; 3 uses
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 4 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.adl, %._crit_edge590 ] ; 3 uses
  %i.aat = xor i32 %.10364593, -1
  %i.aau = add nsw i32 %i.q, %i.aat               ; 3 uses
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = add nuw nsw i64 %i.aav, 1              ; 5 uses
  %i.aax = xor i32 %.10364593, -1
  %i.aay = add nsw i32 %i.q, %i.aax
  %i.aaz = add i32 %i.aay, %indvars.iv833         ; 2 uses
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.aaz
  br i1 %.not389585, label %._crit_edge590, label %iter.check1463

iter.check1463:                                   ; preds = %bb.x
  %i.aba = sext i32 %indvars.iv833 to i64         ; 7 uses
  %i.abb = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1447 = icmp ult i32 %i.aau, 3
  br i1 %min.iters.check1447, label %.lr.ph589.preheader, label %vector.memcheck1448

vector.memcheck1448:                              ; preds = %iter.check1463
  %i.abc = sub nsw i64 %i.abb, %i.aba
  %i.abd = shl nsw i64 %i.abc, 3
  %.reass1716 = add i64 %i.abd, %invariant.op1715.a
  %diff.check1449 = icmp ult i64 %.reass1716, 127
  br i1 %diff.check1449, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1450

vector.main.loop.iter.check1450:                  ; preds = %vector.memcheck1448
  %min.iters.check1451 = icmp ult i32 %i.aau, 15
  br i1 %min.iters.check1451, label %vec.epilog.ph1467, label %vector.ph1452

vector.ph1452:                                    ; preds = %vector.main.loop.iter.check1450
  %i.abe = and i64 %i.aaw, 12
  %n.vec1453 = and i64 %i.aaw, 8589934576         ; 5 uses
  %i.abf = add nsw i64 %n.vec1453, %i.aba
  %i.abg = add nsw i64 %n.vec1453, %i.abb         ; 2 uses
  %invariant.gep1707.a = getelementptr [8 x i8], ptr %3, i64 %i.aba
  %invariant.gep1709.a = getelementptr [8 x i8], ptr %4, i64 %i.abb
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.ph1452, %vector.body1454
  %index1455 = phi i64 [ 0, %vector.ph1452 ], [ %index.next1460, %vector.body1454 ] ; 3 uses
  %gep1708.a = getelementptr [8 x i8], ptr %invariant.gep1707.a, i64 %index1455 ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %gep1708.a, i64 32
  %i.abi = getelementptr inbounds nuw i8, ptr %gep1708.a, i64 64
  %i.abj = getelementptr inbounds nuw i8, ptr %gep1708.a, i64 96
  %wide.load1456.a = load <4 x double>, ptr %gep1708.a, align 8, !tbaa !92
  %wide.load1457.a = load <4 x double>, ptr %i.abh, align 8, !tbaa !92
  %wide.load1458 = load <4 x double>, ptr %i.abi, align 8, !tbaa !92
  %wide.load1459 = load <4 x double>, ptr %i.abj, align 8, !tbaa !92
  %gep1710.a = getelementptr [8 x i8], ptr %invariant.gep1709.a, i64 %index1455 ; 4 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %gep1710.a, i64 32
  %i.abl = getelementptr inbounds nuw i8, ptr %gep1710.a, i64 64
  %i.abm = getelementptr inbounds nuw i8, ptr %gep1710.a, i64 96
  store <4 x double> %wide.load1456.a, ptr %gep1710.a, align 8, !tbaa !92
  store <4 x double> %wide.load1457.a, ptr %i.abk, align 8, !tbaa !92
  store <4 x double> %wide.load1458, ptr %i.abl, align 8, !tbaa !92
  store <4 x double> %wide.load1459, ptr %i.abm, align 8, !tbaa !92
  %index.next1460 = add nuw i64 %index1455, 16    ; 2 uses
  %i.abn = icmp eq i64 %index.next1460, %n.vec1453
  br i1 %i.abn, label %middle.block1461, label %vector.body1454, !llvm.loop !73

middle.block1461:                                 ; preds = %vector.body1454
  %cmp.n1462 = icmp eq i64 %i.aaw, %n.vec1453
  br i1 %cmp.n1462, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1464

vec.epilog.iter.check1464:                        ; preds = %middle.block1461
  %min.epilog.iters.check1466 = icmp eq i64 %i.abe, 0
  br i1 %min.epilog.iters.check1466, label %.lr.ph589.preheader, label %vec.epilog.ph1467, !prof !96

vec.epilog.ph1467:                                ; preds = %vector.main.loop.iter.check1450, %vec.epilog.iter.check1464
  %vec.epilog.resume.val1468 = phi i64 [ %n.vec1453, %vec.epilog.iter.check1464 ], [ 0, %vector.main.loop.iter.check1450 ]
  %n.vec1469 = and i64 %i.aaw, 8589934588         ; 4 uses
  %i.abo = add nsw i64 %n.vec1469, %i.aba
  %i.abp = add nsw i64 %n.vec1469, %i.abb         ; 2 uses
  %invariant.gep1711 = getelementptr [8 x i8], ptr %3, i64 %i.aba
  %invariant.gep1713 = getelementptr [8 x i8], ptr %4, i64 %i.abb
  br label %vec.epilog.vector.body1470

vec.epilog.vector.body1470:                       ; preds = %vec.epilog.vector.body1470, %vec.epilog.ph1467
  %index1471 = phi i64 [ %vec.epilog.resume.val1468, %vec.epilog.ph1467 ], [ %index.next1473, %vec.epilog.vector.body1470 ] ; 3 uses
  %gep1712 = getelementptr [8 x i8], ptr %invariant.gep1711, i64 %index1471
  %wide.load1472 = load <4 x double>, ptr %gep1712, align 8, !tbaa !92
  %gep1714 = getelementptr [8 x i8], ptr %invariant.gep1713, i64 %index1471
  store <4 x double> %wide.load1472, ptr %gep1714, align 8, !tbaa !92
  %index.next1473 = add nuw i64 %index1471, 4     ; 2 uses
  %i.abq = icmp eq i64 %index.next1473, %n.vec1469
  br i1 %i.abq, label %vec.epilog.middle.block1474, label %vec.epilog.vector.body1470, !llvm.loop !74

vec.epilog.middle.block1474:                      ; preds = %vec.epilog.vector.body1470
  %cmp.n1475 = icmp eq i64 %i.aaw, %n.vec1469
  br i1 %cmp.n1475, label %._crit_edge590.loopexit, label %.lr.ph589.preheader

.lr.ph589.preheader:                              ; preds = %iter.check1463, %vector.memcheck1448, %vec.epilog.iter.check1464, %vec.epilog.middle.block1474
  %indvars.iv835.ph = phi i64 [ %i.aba, %iter.check1463 ], [ %i.aba, %vector.memcheck1448 ], [ %i.abf, %vec.epilog.iter.check1464 ], [ %i.abo, %vec.epilog.middle.block1474 ] ; 3 uses
  %indvars.iv831.ph = phi i64 [ %i.abb, %iter.check1463 ], [ %i.abb, %vector.memcheck1448 ], [ %i.abg, %vec.epilog.iter.check1464 ], [ %i.abp, %vec.epilog.middle.block1474 ] ; 2 uses
  %i.abr = trunc i64 %indvars.iv835.ph to i32     ; 2 uses
  %i.abs = sub i32 %indvars.iv840, %i.abr
  %i.abt = sub i32 %i.aaz, %i.abr
  %xtraiter1638 = and i32 %i.abs, 7               ; 2 uses
  %lcmp.mod1639.not = icmp eq i32 %xtraiter1638, 0
  br i1 %lcmp.mod1639.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol

.lr.ph589.prol:                                   ; preds = %.lr.ph589.preheader, %.lr.ph589.prol
  %indvars.iv835.prol = phi i64 [ %indvars.iv.next836.prol, %.lr.ph589.prol ], [ %indvars.iv835.ph, %.lr.ph589.preheader ] ; 2 uses
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %.lr.ph589.prol ], [ %indvars.iv831.ph, %.lr.ph589.preheader ] ; 2 uses
  %prol.iter1640 = phi i32 [ %prol.iter1640.next, %.lr.ph589.prol ], [ 0, %.lr.ph589.preheader ]
  %i.abu = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835.prol
  %i.abv = load double, ptr %i.abu, align 8, !tbaa !92
  %i.abw = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831.prol
  store double %i.abv, ptr %i.abw, align 8, !tbaa !92
  %indvars.iv.next832.prol = add nsw i64 %indvars.iv831.prol, 1 ; 3 uses
  %indvars.iv.next836.prol = add nsw i64 %indvars.iv835.prol, 1 ; 2 uses
  %prol.iter1640.next = add i32 %prol.iter1640, 1 ; 2 uses
  %prol.iter1640.cmp.not = icmp eq i32 %prol.iter1640.next, %xtraiter1638
  br i1 %prol.iter1640.cmp.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol, !llvm.loop !75

.lr.ph589.prol.loopexit:                          ; preds = %.lr.ph589.prol, %.lr.ph589.preheader
  %indvars.iv.next832.lcssa1600.unr = phi i64 [ poison, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %indvars.iv835.unr = phi i64 [ %indvars.iv835.ph, %.lr.ph589.preheader ], [ %indvars.iv.next836.prol, %.lr.ph589.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %i.abx = icmp ult i32 %i.abt, 7
  br i1 %i.abx, label %._crit_edge590.loopexit, label %.lr.ph589

.lr.ph589:                                        ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589
  %indvars.iv835 = phi i64 [ %indvars.iv.next836.7, %.lr.ph589 ], [ %indvars.iv835.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %.lr.ph589 ], [ %indvars.iv831.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %i.aby = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835
  %i.abz = load double, ptr %i.aby, align 8, !tbaa !92
  %i.aca = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831
  store double %i.abz, ptr %i.aca, align 8, !tbaa !92
  %i.acb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acc = getelementptr i8, ptr %i.acb, i64 8
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !92
  %i.ace = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.acf = getelementptr i8, ptr %i.ace, i64 8
  store double %i.acd, ptr %i.acf, align 8, !tbaa !92
  %i.acg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.ach = getelementptr i8, ptr %i.acg, i64 16
  %i.aci = load double, ptr %i.ach, align 8, !tbaa !92
  %i.acj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.ack = getelementptr i8, ptr %i.acj, i64 16
  store double %i.aci, ptr %i.ack, align 8, !tbaa !92
  %i.acl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acm = getelementptr i8, ptr %i.acl, i64 24
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !92
  %i.aco = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.acp = getelementptr i8, ptr %i.aco, i64 24
  store double %i.acn, ptr %i.acp, align 8, !tbaa !92
  %i.acq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acr = getelementptr i8, ptr %i.acq, i64 32
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !92
  %i.act = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.acu = getelementptr i8, ptr %i.act, i64 32
  store double %i.acs, ptr %i.acu, align 8, !tbaa !92
  %i.acv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acw = getelementptr i8, ptr %i.acv, i64 40
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !92
  %i.acy = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.acz = getelementptr i8, ptr %i.acy, i64 40
  store double %i.acx, ptr %i.acz, align 8, !tbaa !92
  %i.ada = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adb = getelementptr i8, ptr %i.ada, i64 48
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !92
  %i.add = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.ade = getelementptr i8, ptr %i.add, i64 48
  store double %i.adc, ptr %i.ade, align 8, !tbaa !92
  %i.adf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adg = getelementptr i8, ptr %i.adf, i64 56
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !92
  %i.adi = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adj = getelementptr i8, ptr %i.adi, i64 56
  store double %i.adh, ptr %i.adj, align 8, !tbaa !92
  %indvars.iv.next832.7 = add nsw i64 %indvars.iv831, 8 ; 2 uses
  %indvars.iv.next836.7 = add nsw i64 %indvars.iv835, 8 ; 2 uses
  %lftr.wideiv842.7 = trunc i64 %indvars.iv.next836.7 to i32
  %exitcond843.not.7 = icmp eq i32 %indvars.iv840, %lftr.wideiv842.7
  br i1 %exitcond843.not.7, label %._crit_edge590.loopexit, label %.lr.ph589, !llvm.loop !76

._crit_edge590.loopexit:                          ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589, %vec.epilog.middle.block1474, %middle.block1461
  %indvars.iv.next832.lcssa = phi i64 [ %i.abp, %vec.epilog.middle.block1474 ], [ %i.abg, %middle.block1461 ], [ %indvars.iv.next832.lcssa1600.unr, %.lr.ph589.prol.loopexit ], [ %indvars.iv.next832.7, %.lr.ph589 ]
  %i.adk = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.adk, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.aar
  %i.adl = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.adl, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !77

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.adm = add nuw nsw i32 %i.q, 1
  %i.adn = mul i32 %i.adm, %i.s
  %i.ado = sext i32 %i.adn to i64                 ; 4 uses
  %i.adp = zext nneg i32 %i.s to i64              ; 14 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.adq = mul nsw i64 %i.adp, -8
  %i.adr = shl nsw i64 %i.ado, 3
  %i.ads = add i64 %i.adr, %i.a
  %i.adt = sub i64 %i.b, %i.ads
  %i.adu = add nuw nsw i64 %i.adp, 1
  %30 = sub nsw i64 0, %i.adp                     ; 2 uses
  %invariant.op1717 = sub i64 1, %i.ado
  br label %iter.check1497

iter.check1497:                                   ; preds = %.lr.ph605.preheader, %.loopexit1587
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1587 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.ado, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1587 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1587 ] ; 7 uses
  %i.adv = mul i64 %i.adu, %indvars.iv855
  %i.adw = add i64 %i.adv, %i.ado
  %smax1480 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.adw)
  %i.adx = mul i64 %indvars.iv855, %30
  %.reass1718 = add i64 %i.adx, %invariant.op1717
  %i.ady = add i64 %smax1480, %.reass1718         ; 7 uses
  %i.adz = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1481 = icmp ult i64 %i.ady, 4
  br i1 %min.iters.check1481, label %vec.epilog.scalar.ph1499.preheader, label %vector.memcheck1482

vector.memcheck1482:                              ; preds = %iter.check1497
  %i.aea = mul i64 %indvars.iv855, %i.adq
  %i.aeb = add i64 %i.adt, %i.aea
  %i.aec = shl i64 %.28603, 3
  %i.aed = add i64 %i.aeb, %i.aec
  %i.aee = add i64 %i.aed, -1
  %diff.check1483 = icmp ult i64 %i.aee, 127
  br i1 %diff.check1483, label %vec.epilog.scalar.ph1499.preheader, label %vector.main.loop.iter.check1484

vector.main.loop.iter.check1484:                  ; preds = %vector.memcheck1482
  %min.iters.check1485 = icmp ult i64 %i.ady, 16
  br i1 %min.iters.check1485, label %vec.epilog.ph1501, label %vector.ph1486

vector.ph1486:                                    ; preds = %vector.main.loop.iter.check1484
  %i.aef = and i64 %i.ady, 12
  %n.vec1487 = and i64 %i.ady, -16                ; 5 uses
  %i.aeg = add i64 %indvars.iv848, %n.vec1487
  %i.aeh = add i64 %.28603, %n.vec1487            ; 2 uses
  %i.aei = getelementptr [8 x i8], ptr %3, i64 %indvars.iv848
  %i.aej = getelementptr [8 x i8], ptr %4, i64 %.28603
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.ph1486, %vector.body1488
  %index1489 = phi i64 [ 0, %vector.ph1486 ], [ %index.next1494, %vector.body1488 ] ; 3 uses
  %i.aek = getelementptr [8 x i8], ptr %i.aei, i64 %index1489 ; 4 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 32
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aek, i64 96
  %wide.load1490.a = load <4 x double>, ptr %i.aek, align 8, !tbaa !92
  %wide.load1491.a = load <4 x double>, ptr %i.ael, align 8, !tbaa !92
  %wide.load1492 = load <4 x double>, ptr %i.aem, align 8, !tbaa !92
  %wide.load1493 = load <4 x double>, ptr %i.aen, align 8, !tbaa !92
  %i.aeo = getelementptr [8 x i8], ptr %i.aej, i64 %index1489 ; 4 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 32
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 96
  store <4 x double> %wide.load1490.a, ptr %i.aeo, align 8, !tbaa !92
  store <4 x double> %wide.load1491.a, ptr %i.aep, align 8, !tbaa !92
  store <4 x double> %wide.load1492, ptr %i.aeq, align 8, !tbaa !92
  store <4 x double> %wide.load1493, ptr %i.aer, align 8, !tbaa !92
  %index.next1494 = add nuw i64 %index1489, 16    ; 2 uses
  %i.aes = icmp eq i64 %index.next1494, %n.vec1487
  br i1 %i.aes, label %middle.block1495, label %vector.body1488, !llvm.loop !78

middle.block1495:                                 ; preds = %vector.body1488
  %cmp.n1496 = icmp eq i64 %i.ady, %n.vec1487
  br i1 %cmp.n1496, label %.loopexit1587, label %vec.epilog.iter.check1498

vec.epilog.iter.check1498:                        ; preds = %middle.block1495
  %min.epilog.iters.check1500 = icmp eq i64 %i.aef, 0
  br i1 %min.epilog.iters.check1500, label %vec.epilog.scalar.ph1499.preheader, label %vec.epilog.ph1501, !prof !96

vec.epilog.ph1501:                                ; preds = %vector.main.loop.iter.check1484, %vec.epilog.iter.check1498
  %vec.epilog.resume.val1502 = phi i64 [ %n.vec1487, %vec.epilog.iter.check1498 ], [ 0, %vector.main.loop.iter.check1484 ]
  %n.vec1503 = and i64 %i.ady, -4                 ; 4 uses
  %i.aet = add i64 %indvars.iv848, %n.vec1503
  %i.aeu = add i64 %.28603, %n.vec1503            ; 2 uses
  %i.aev = getelementptr [8 x i8], ptr %3, i64 %indvars.iv848
  %i.aew = getelementptr [8 x i8], ptr %4, i64 %.28603
  br label %vec.epilog.vector.body1504

vec.epilog.vector.body1504:                       ; preds = %vec.epilog.vector.body1504, %vec.epilog.ph1501
  %index1505 = phi i64 [ %vec.epilog.resume.val1502, %vec.epilog.ph1501 ], [ %index.next1507, %vec.epilog.vector.body1504 ] ; 3 uses
  %i.aex = getelementptr [8 x i8], ptr %i.aev, i64 %index1505
  %wide.load1506 = load <4 x double>, ptr %i.aex, align 8, !tbaa !92
  %i.aey = getelementptr [8 x i8], ptr %i.aew, i64 %index1505
  store <4 x double> %wide.load1506, ptr %i.aey, align 8, !tbaa !92
  %index.next1507 = add nuw i64 %index1505, 4     ; 2 uses
  %i.aez = icmp eq i64 %index.next1507, %n.vec1503
  br i1 %i.aez, label %vec.epilog.middle.block1508, label %vec.epilog.vector.body1504, !llvm.loop !79

vec.epilog.middle.block1508:                      ; preds = %vec.epilog.vector.body1504
  %cmp.n1509 = icmp eq i64 %i.ady, %n.vec1503
  br i1 %cmp.n1509, label %.loopexit1587, label %vec.epilog.scalar.ph1499.preheader

vec.epilog.scalar.ph1499.preheader:               ; preds = %iter.check1497, %vector.memcheck1482, %vec.epilog.iter.check1498, %vec.epilog.middle.block1508
  %indvars.iv850.ph = phi i64 [ %indvars.iv848, %iter.check1497 ], [ %indvars.iv848, %vector.memcheck1482 ], [ %i.aeg, %vec.epilog.iter.check1498 ], [ %i.aet, %vec.epilog.middle.block1508 ]
  %indvars.iv846.ph = phi i64 [ %.28603, %iter.check1497 ], [ %.28603, %vector.memcheck1482 ], [ %i.aeh, %vec.epilog.iter.check1498 ], [ %i.aeu, %vec.epilog.middle.block1508 ]
  br label %vec.epilog.scalar.ph1499

vec.epilog.scalar.ph1499:                         ; preds = %vec.epilog.scalar.ph1499.preheader, %vec.epilog.scalar.ph1499
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1499 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1499.preheader ] ; 3 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %vec.epilog.scalar.ph1499 ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1499.preheader ] ; 2 uses
  %i.afa = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv850
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !92
  %i.afc = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv846
  store double %i.afb, ptr %i.afc, align 8, !tbaa !92
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1
  %.not386.not = icmp slt i64 %indvars.iv850, %i.adz
  br i1 %.not386.not, label %vec.epilog.scalar.ph1499, label %.loopexit1587, !llvm.loop !80

.loopexit1587:                                    ; preds = %vec.epilog.scalar.ph1499, %vec.epilog.middle.block1508, %middle.block1495
  %indvars.iv.next847.lcssa = phi i64 [ %i.aeu, %vec.epilog.middle.block1508 ], [ %i.aeh, %middle.block1495 ], [ %indvars.iv.next847, %vec.epilog.scalar.ph1499 ] ; 2 uses
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, %i.adp
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %.lr.ph619, label %iter.check1497, !llvm.loop !81

.lr.ph619:                                        ; preds = %.loopexit1587
  %i.afd = zext nneg i32 %i.s to i64
  %wide.trip.count872 = zext nneg i32 %i.q to i64
  %umax1525 = tail call i64 @llvm.umax.i64(i64 %i.adp, i64 1) ; 2 uses
  %scevgep1526 = getelementptr i8, ptr %4, i64 8
  %broadcast.splatinsert1538 = insertelement <4 x i64> poison, i64 %i.adp, i64 0
  %broadcast.splat1539 = shufflevector <4 x i64> %broadcast.splatinsert1538, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afe = shl nuw nsw <4 x i64> %broadcast.splat1539, splat (i64 2) ; 5 uses
  %i.aff = mul nuw nsw <4 x i64> %broadcast.splat1539, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1719 = add nuw nsw <4 x i64> %i.afe, %i.afe ; 2 uses
  %invariant.op1720 = add nuw nsw <4 x i64> %invariant.op1719, %i.afe ; 2 uses
  %invariant.op1721 = add nuw nsw <4 x i64> %invariant.op1720, %i.afe
  %broadcast.splatinsert1571 = insertelement <4 x i64> poison, i64 %i.adp, i64 0
  %broadcast.splat1572 = shufflevector <4 x i64> %broadcast.splatinsert1571, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.afg = mul nuw nsw <4 x i64> %broadcast.splat1572, <i64 0, i64 1, i64 2, i64 3>
  %i.afh = shl nuw nsw i64 %i.adp, 2
  %broadcast.splatinsert1574 = insertelement <4 x i64> poison, i64 %i.afh, i64 0
  %broadcast.splat1575 = shufflevector <4 x i64> %broadcast.splatinsert1574, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1561

iter.check1561:                                   ; preds = %.lr.ph619, %._crit_edge613
  %indvars.iv864 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next865, %._crit_edge613 ] ; 17 uses
  %.30617 = phi i64 [ %indvars.iv.next847.lcssa, %.lr.ph619 ], [ %indvars.iv.next863.lcssa, %._crit_edge613 ]
  %indvars871 = trunc i64 %indvars.iv864 to i32
  %i.afi = add i32 %i.q, %indvars871
  %i.afj = mul i32 %i.afi, %i.s
  %i.afk = sext i32 %i.afj to i64                 ; 2 uses
  %i.afl = add nsw i64 %indvars.iv864, %i.afk
  %i.afm = add nuw i64 %indvars.iv864, %i.adp     ; 2 uses
  %i.afn = add nuw i64 %indvars.iv864, 1
  %i.afo = trunc i64 %indvars.iv864 to i32
  %i.afp = add i32 %i.q, %i.afo
  %i.afq = mul i32 %i.s, %i.afp
  %i.afr = sext i32 %i.afq to i64
  %31 = add i64 %i.afn, %i.afr                    ; 2 uses
  %32 = icmp slt i64 %i.afm, %31                  ; 2 uses
  %umin1528 = zext i1 %32 to i64
  %i.afs = add nuw i64 %indvars.iv864, %i.adp
  %smax1527 = tail call i64 @llvm.smax.i64(i64 %i.afm, i64 %31)
  %33 = add i64 %i.afs, %umin1528
  %34 = sub i64 %smax1527, %33
  %sext1594 = shl i64 %.30617, 32                 ; 2 uses
  %i.aft = ashr exact i64 %sext1594, 32           ; 6 uses
  %35 = select i1 %32, i64 2, i64 1
  %i.afu = udiv i64 %34, %umax1525
  %i.afv = add i64 %35, %i.afu                    ; 7 uses
  %min.iters.check1529 = icmp ult i64 %i.afv, 4
  br i1 %min.iters.check1529, label %.lr.ph612.preheader, label %vector.memcheck1530

vector.memcheck1530:                              ; preds = %iter.check1561
  %i.afw = ashr exact i64 %sext1594, 29           ; 2 uses
  %i.afx = getelementptr i8, ptr %4, i64 %i.afw
  %i.afy = add nuw i64 %indvars.iv864, %i.adp
  %i.afz = add nuw i64 %indvars.iv864, 1
  %i.aga = add i64 %i.afz, %i.afk
  %i.agb = tail call i64 @llvm.smax.i64(i64 %i.afy, i64 %i.aga)
  %i.agc = sub i64 %30, %indvars.iv864
  %i.agd = add i64 %i.agb, %i.agc                 ; 2 uses
  %36 = icmp ne i64 %i.agd, 0
  %37 = zext i1 %36 to i64                        ; 2 uses
  %38 = sub i64 %i.agd, %37
  %i.age = udiv i64 %38, %umax1525
  %39 = add i64 %i.age, %37                       ; 2 uses
  %i.agf = shl i64 %39, 3
  %i.agg = getelementptr i8, ptr %scevgep1526, i64 %i.agf
  %i.agh = getelementptr i8, ptr %i.agg, i64 %i.afw
  %i.agi = shl i64 %indvars.iv864, 3              ; 2 uses
  %i.agj = getelementptr i8, ptr %3, i64 %i.agi
  %i.agk = mul i64 %39, %i.adp
  %i.agl = shl i64 %i.agk, 3
  %i.agm = getelementptr i8, ptr %3, i64 %i.agi
  %i.agn = getelementptr i8, ptr %i.agm, i64 8
  %i.ago = getelementptr i8, ptr %i.agn, i64 %i.agl
  %bound01531 = icmp ult ptr %i.afx, %i.ago
  %bound11532 = icmp ult ptr %i.agj, %i.agh
  %found.conflict1533 = and i1 %bound01531, %bound11532
  br i1 %found.conflict1533, label %.lr.ph612.preheader, label %vector.main.loop.iter.check1534

vector.main.loop.iter.check1534:                  ; preds = %vector.memcheck1530
  %min.iters.check1535 = icmp ult i64 %i.afv, 16
  br i1 %min.iters.check1535, label %vec.epilog.ph1565, label %vector.ph1536

vector.ph1536:                                    ; preds = %vector.main.loop.iter.check1534
  %i.agp = and i64 %i.afv, 12
  %n.vec1537 = and i64 %i.afv, -16                ; 5 uses
  %i.agq = mul i64 %n.vec1537, %i.adp
  %i.agr = add i64 %indvars.iv864, %i.agq         ; 2 uses
  %i.ags = add i64 %i.aft, %n.vec1537             ; 2 uses
  %broadcast.splatinsert1540 = insertelement <4 x i64> poison, i64 %indvars.iv864, i64 0
  %broadcast.splat1541 = shufflevector <4 x i64> %broadcast.splatinsert1540, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1542 = add nuw nsw <4 x i64> %broadcast.splat1541, %i.aff
  %i.agt = getelementptr [8 x i8], ptr %4, i64 %i.aft
  br label %vector.body1543

vector.body1543:                                  ; preds = %vector.ph1536, %vector.body1543
  %index1544 = phi i64 [ 0, %vector.ph1536 ], [ %index.next1557, %vector.body1543 ] ; 2 uses
  %vec.ind1545 = phi <4 x i64> [ %induction1542, %vector.ph1536 ], [ %vec.ind.next1558.reass, %vector.body1543 ] ; 5 uses
  %step.add1546 = add nuw nsw <4 x i64> %vec.ind1545, %i.afe
  %step.add.21547.reass = add nuw nsw <4 x i64> %vec.ind1545, %invariant.op1719
  %step.add.31548.reass = add nuw nsw <4 x i64> %vec.ind1545, %invariant.op1720
  %wide.gep1549 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1545
  %wide.gep1550 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add1546
  %wide.gep1551 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.21547.reass
  %wide.gep1552 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.31548.reass
  %wide.masked.gather1553 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1549, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %wide.masked.gather1554 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1550, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %wide.masked.gather1555 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1551, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %wide.masked.gather1556 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1552, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %i.agu = getelementptr [8 x i8], ptr %i.agt, i64 %index1544 ; 4 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 32
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 64
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 96
  store <4 x double> %wide.masked.gather1553, ptr %i.agu, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  store <4 x double> %wide.masked.gather1554, ptr %i.agv, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  store <4 x double> %wide.masked.gather1555, ptr %i.agw, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  store <4 x double> %wide.masked.gather1556, ptr %i.agx, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  %index.next1557 = add nuw i64 %index1544, 16    ; 2 uses
  %vec.ind.next1558.reass = add nuw nsw <4 x i64> %vec.ind1545, %invariant.op1721
  %i.agy = icmp eq i64 %index.next1557, %n.vec1537
  br i1 %i.agy, label %middle.block1559, label %vector.body1543, !llvm.loop !85

middle.block1559:                                 ; preds = %vector.body1543
  %cmp.n1560 = icmp eq i64 %i.afv, %n.vec1537
  br i1 %cmp.n1560, label %._crit_edge613, label %vec.epilog.iter.check1562

vec.epilog.iter.check1562:                        ; preds = %middle.block1559
  %min.epilog.iters.check1564 = icmp eq i64 %i.agp, 0
  br i1 %min.epilog.iters.check1564, label %.lr.ph612.preheader, label %vec.epilog.ph1565, !prof !96

vec.epilog.ph1565:                                ; preds = %vector.main.loop.iter.check1534, %vec.epilog.iter.check1562
  %vec.epilog.resume.val1566 = phi i64 [ %n.vec1537, %vec.epilog.iter.check1562 ], [ 0, %vector.main.loop.iter.check1534 ]
  %bc.resume.val1567 = phi i64 [ %i.agr, %vec.epilog.iter.check1562 ], [ %indvars.iv864, %vector.main.loop.iter.check1534 ]
  %n.vec1568 = and i64 %i.afv, -4                 ; 4 uses
  %i.agz = mul i64 %n.vec1568, %i.adp
  %i.aha = add i64 %indvars.iv864, %i.agz
  %i.ahb = add i64 %i.aft, %n.vec1568             ; 2 uses
  %broadcast.splatinsert1569 = insertelement <4 x i64> poison, i64 %bc.resume.val1567, i64 0
  %broadcast.splat1570 = shufflevector <4 x i64> %broadcast.splatinsert1569, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1573 = add nuw nsw <4 x i64> %broadcast.splat1570, %i.afg
  %i.ahc = getelementptr [8 x i8], ptr %4, i64 %i.aft
  br label %vec.epilog.vector.body1576

vec.epilog.vector.body1576:                       ; preds = %vec.epilog.vector.body1576, %vec.epilog.ph1565
  %index1577 = phi i64 [ %vec.epilog.resume.val1566, %vec.epilog.ph1565 ], [ %index.next1581, %vec.epilog.vector.body1576 ] ; 2 uses
  %vec.ind1578 = phi <4 x i64> [ %induction1573, %vec.epilog.ph1565 ], [ %vec.ind.next1582, %vec.epilog.vector.body1576 ] ; 2 uses
  %wide.gep1579 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1578
  %wide.masked.gather1580 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1579, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !92, !alias.scope !104
  %i.ahd = getelementptr [8 x i8], ptr %i.ahc, i64 %index1577
  store <4 x double> %wide.masked.gather1580, ptr %i.ahd, align 8, !tbaa !92, !alias.scope !105, !noalias !104
  %index.next1581 = add nuw i64 %index1577, 4     ; 2 uses
  %vec.ind.next1582 = add nuw nsw <4 x i64> %vec.ind1578, %broadcast.splat1575
  %i.ahe = icmp eq i64 %index.next1581, %n.vec1568
  br i1 %i.ahe, label %vec.epilog.middle.block1583, label %vec.epilog.vector.body1576, !llvm.loop !86

vec.epilog.middle.block1583:                      ; preds = %vec.epilog.vector.body1576
  %cmp.n1584 = icmp eq i64 %i.afv, %n.vec1568
  br i1 %cmp.n1584, label %._crit_edge613, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %iter.check1561, %vector.memcheck1530, %vec.epilog.iter.check1562, %vec.epilog.middle.block1583
  %indvars.iv866.ph = phi i64 [ %indvars.iv864, %iter.check1561 ], [ %indvars.iv864, %vector.memcheck1530 ], [ %i.agr, %vec.epilog.iter.check1562 ], [ %i.aha, %vec.epilog.middle.block1583 ]
  %indvars.iv862.ph = phi i64 [ %i.aft, %iter.check1561 ], [ %i.aft, %vector.memcheck1530 ], [ %i.ags, %vec.epilog.iter.check1562 ], [ %i.ahb, %vec.epilog.middle.block1583 ]
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %.lr.ph612
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %.lr.ph612 ], [ %indvars.iv866.ph, %.lr.ph612.preheader ] ; 2 uses
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph612 ], [ %indvars.iv862.ph, %.lr.ph612.preheader ] ; 2 uses
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv866
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !92
  %i.ahh = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv862
  store double %i.ahg, ptr %i.ahh, align 8, !tbaa !92
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, %i.afd ; 2 uses
  %.not882 = icmp sgt i64 %indvars.iv.next867, %i.afl
  br i1 %.not882, label %._crit_edge613, label %.lr.ph612, !llvm.loop !87

._crit_edge613:                                   ; preds = %.lr.ph612, %middle.block1559, %vec.epilog.middle.block1583
  %indvars.iv.next863.lcssa = phi i64 [ %i.ahb, %vec.epilog.middle.block1583 ], [ %i.ags, %middle.block1559 ], [ %indvars.iv.next863, %.lr.ph612 ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit, label %iter.check1561, !llvm.loop !88

.loopexit.loopexit1610.unr-lcssa:                 ; preds = %._crit_edge495.3
  %lcmp.mod1628.not = icmp eq i64 %xtraiter1627, 0
  br i1 %lcmp.mod1628.not, label %.loopexit, label %iter.check1079.epil.preheader

iter.check1079.epil.preheader:                    ; preds = %.loopexit.loopexit1610.unr-lcssa, %.preheader.preheader
  %indvars.iv725.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next726.3, %.loopexit.loopexit1610.unr-lcssa ]
  %.18499.epil.init = phi i64 [ %i.ug, %.preheader.preheader ], [ %indvars.iv.next724.3, %.loopexit.loopexit1610.unr-lcssa ]
  %lcmp.mod1629 = icmp ne i64 %xtraiter1627, 0
  tail call void @llvm.assume(i1 %lcmp.mod1629)
  br label %iter.check1079.epil

iter.check1079.epil:                              ; preds = %._crit_edge495.epil, %iter.check1079.epil.preheader
  %indvars.iv725.epil = phi i64 [ %indvars.iv725.epil.init, %iter.check1079.epil.preheader ], [ %indvars.iv.next726.epil, %._crit_edge495.epil ] ; 3 uses
  %.18499.epil = phi i64 [ %.18499.epil.init, %iter.check1079.epil.preheader ], [ %indvars.iv.next724.epil, %._crit_edge495.epil ]
  %epil.iter = phi i64 [ 0, %iter.check1079.epil.preheader ], [ %epil.iter.next, %._crit_edge495.epil ]
  %invariant.gep899.epil = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv725.epil
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %iter.check1079.epil
  %indvars.iv727.epil = phi i64 [ %indvars.iv725.epil, %iter.check1079.epil ], [ %indvars.iv.next728.epil, %bb.y ] ; 2 uses
  %indvars.iv723.epil = phi i64 [ %.18499.epil, %iter.check1079.epil ], [ %indvars.iv.next724.epil, %bb.y ] ; 2 uses
  %i.ahi = mul nuw nsw i64 %indvars.iv727.epil, %i.uh
  %gep900.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.epil, i64 %i.ahi
  %i.ahj = load double, ptr %gep900.epil, align 8, !tbaa !92
  %i.ahk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.epil
  store double %i.ahj, ptr %i.ahk, align 8, !tbaa !92
  %indvars.iv.next724.epil = add nsw i64 %indvars.iv723.epil, 1 ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1 ; 2 uses
  %.not397.not.epil = icmp samesign ult i64 %indvars.iv.next728.epil, %i.ui
  br i1 %.not397.not.epil, label %bb.y, label %._crit_edge495.epil, !llvm.loop !55

._crit_edge495.epil:                              ; preds = %bb.y
  %indvars.iv.next726.epil = add nuw nsw i64 %indvars.iv725.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1627
  br i1 %epil.iter.cmp.not, label %.loopexit, label %iter.check1079.epil, !llvm.loop !89

.loopexit:                                        ; preds = %.loopexit434, %._crit_edge472, %.loopexit.loopexit1610.unr-lcssa, %._crit_edge495.epil, %._crit_edge515, %._crit_edge542, %._crit_edge565, %._crit_edge590, %._crit_edge613, %bb.n, %bb.k, %._crit_edge490, %._crit_edge444, %._crit_edge465, %._crit_edge508, %._crit_edge535, %._crit_edge558, %bb.g, %bb.h, %.thread
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
!15 = distinct !{!15, !93, !94, !95}
!16 = distinct !{!16, !97}
!17 = distinct !{!17, !93, !94}
!18 = distinct !{!18, !93, !94, !95}
!19 = distinct !{!19, !93, !94, !95}
!20 = distinct !{!20, !97}
!21 = distinct !{!21, !93, !94}
!22 = distinct !{!22, !93}
!23 = distinct !{!23, !93, !94, !95}
!24 = distinct !{!24, !93, !94, !95}
!25 = distinct !{!25, !93, !94}
!26 = distinct !{!26, !93}
!27 = distinct !{!27, i1 false, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !93, !94, !95}
!31 = distinct !{!31, !93, !94, !95}
!32 = distinct !{!32, !93, !94}
!33 = distinct !{!33, !93}
!34 = distinct !{!34, !93, !94, !95}
!35 = distinct !{!35, !93, !94, !95}
!36 = distinct !{!36, !97}
!37 = distinct !{!37, !93, !94}
!38 = distinct !{!38, !93}
!39 = distinct !{!39, !93, !94, !95}
!40 = distinct !{!40, !93, !94, !95}
!41 = distinct !{!41, !93, !94}
!42 = distinct !{!42, !93}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !93, !94, !95}
!47 = distinct !{!47, !93, !94, !95}
!48 = distinct !{!48, !93, !94}
!49 = distinct !{!49, !93}
!50 = distinct !{!50, !93, !94, !95}
!51 = distinct !{!51, !93, !94, !95}
!52 = distinct !{!52, !97}
!53 = distinct !{!53, !93, !94}
!54 = distinct !{!54, !93}
!55 = distinct !{!55, !93, !94}
!56 = distinct !{!56, !93}
!57 = distinct !{!57, !93, !94, !95}
!58 = distinct !{!58, !93, !94, !95}
!59 = distinct !{!59, !97}
!60 = distinct !{!60, !93, !94}
!61 = distinct !{!61, !93}
!62 = distinct !{!62, !93, !94, !95}
!63 = distinct !{!63, !93, !94, !95}
!64 = distinct !{!64, !93, !94}
!65 = distinct !{!65, !93}
!66 = distinct !{!66, !93}
!67 = distinct !{!67, i1 false, !"LVerDomain"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !93, !94, !95}
!71 = distinct !{!71, !93, !94, !95}
!72 = distinct !{!72, !93, !94}
!73 = distinct !{!73, !93, !94, !95}
!74 = distinct !{!74, !93, !94, !95}
!75 = distinct !{!75, !97}
!76 = distinct !{!76, !93, !94}
!77 = distinct !{!77, !93}
!78 = distinct !{!78, !93, !94, !95}
!79 = distinct !{!79, !93, !94, !95}
!80 = distinct !{!80, !93, !94}
!81 = distinct !{!81, !93}
!82 = distinct !{!82, i1 false, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !93, !94, !95}
!86 = distinct !{!86, !93, !94, !95}
!87 = distinct !{!87, !93, !94}
!88 = distinct !{!88, !93}
!89 = distinct !{!89, !97}
!90 = !{!5, !5, i64 0}
!91 = !{!"double", !4, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = !{!"branch_weights", i32 4, i32 12}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!28}
!99 = !{!29}
!100 = !{!44}
!101 = !{!45}
!102 = !{!68}
!103 = !{!69}
!104 = !{!83}
!105 = !{!84}
end_hunk_2
