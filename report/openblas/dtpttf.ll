Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtpttf?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dtpttf_:bb.a
  %i.gh = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679
  store double %i.gg, ptr %i.gh, align 8, !tbaa !92
  %indvars.iv.next679.1 = add nsw i64 %indvars.iv.next679, %i.ex ; 2 uses
  %i.gi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !92
  %i.gl = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.1
  store double %i.gk, ptr %i.gl, align 8, !tbaa !92
  %indvars.iv.next679.2 = add nsw i64 %indvars.iv.next679.1, %i.ex ; 2 uses
  %i.gm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.gn = getelementptr i8, ptr %i.gm, i64 24
  %i.go = load double, ptr %i.gn, align 8, !tbaa !92
  %i.gp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.2
  store double %i.go, ptr %i.gp, align 8, !tbaa !92
  %indvars.iv.next679.3 = add nsw i64 %indvars.iv.next679.2, %i.ex ; 2 uses
  %i.gq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.gr = getelementptr i8, ptr %i.gq, i64 32
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !92
  %i.gt = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.3
  store double %i.gs, ptr %i.gt, align 8, !tbaa !92
  %indvars.iv.next679.4 = add nsw i64 %indvars.iv.next679.3, %i.ex ; 2 uses
  %i.gu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.gv = getelementptr i8, ptr %i.gu, i64 40
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !92
  %i.gx = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.4
  store double %i.gw, ptr %i.gx, align 8, !tbaa !92
  %indvars.iv.next679.5 = add nsw i64 %indvars.iv.next679.4, %i.ex ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.gz = getelementptr i8, ptr %i.gy, i64 48
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !92
  %i.hb = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.5
  store double %i.ha, ptr %i.hb, align 8, !tbaa !92
  %indvars.iv.next679.6 = add nsw i64 %indvars.iv.next679.5, %i.ex ; 2 uses
  %i.hc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.hd = getelementptr i8, ptr %i.hc, i64 56
  %i.he = load double, ptr %i.hd, align 8, !tbaa !92
  %i.hf = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.6
  store double %i.he, ptr %i.hf, align 8, !tbaa !92
  %indvars.iv.next675.7 = add nsw i64 %indvars.iv674, 8 ; 2 uses
  %indvars.iv.next679.7 = add nsw i64 %indvars.iv.next679.6, %i.ex
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next675.7 to i32
  %exitcond685.not.7 = icmp eq i32 %i.fe, %lftr.wideiv.7
  br i1 %exitcond685.not.7, label %.loopexit1591, label %vec.epilog.scalar.ph975, !llvm.loop !21

.loopexit1591:                                    ; preds = %vec.epilog.scalar.ph975.prol.loopexit, %vec.epilog.scalar.ph975, %vec.epilog.middle.block984, %middle.block971
  %indvars.iv.next677 = add i32 %indvars.iv676, 1
  %indvars.iv.next684 = add nuw i32 %indvars.iv683, 1
  %exitcond686.not = icmp eq i32 %indvars.iv683, %.
  %indvar.next = add i64 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.fa
  br i1 %exitcond686.not, label %._crit_edge465, label %iter.check973, !llvm.loop !22

._crit_edge465:                                   ; preds = %.loopexit1591, %bb.l
  %.4.lcssa = phi i32 [ 0, %bb.l ], [ %i.fe, %.loopexit1591 ]
  %.not408.not474 = icmp slt i32 %., %i.h
  br i1 %.not408.not474, label %.lr.ph479.preheader, label %.loopexit

.lr.ph479.preheader:                              ; preds = %._crit_edge465
  %i.hg = zext nneg i32 %.0328 to i64             ; 4 uses
  %i.hh = sext i32 %. to i64                      ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.h to i64
  %i.hi = shl nuw nsw i64 %i.hg, 3
  %i.hj = add nuw nsw i64 %i.hg, 1
  br label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %._crit_edge472
  %indvar992 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvar.next993, %._crit_edge472 ] ; 4 uses
  %indvars.iv697 = phi i64 [ %i.hh, %.lr.ph479.preheader ], [ %indvars.iv.next698, %._crit_edge472 ] ; 3 uses
  %indvars.iv690 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvars.iv.next691, %._crit_edge472 ] ; 9 uses
  %.6477 = phi i32 [ %.4.lcssa, %.lr.ph479.preheader ], [ %.7.lcssa, %._crit_edge472 ] ; 2 uses
  %i.hk = mul i64 %i.hj, %indvar992
  %i.hl = add i64 %i.hk, %i.hh
  %smax = tail call i64 @llvm.smax.i64(i64 %i.hl, i64 %indvars.iv690)
  %i.hm = mul i64 %indvar992, %i.hg
  %reass.sub = sub i64 %smax, %i.hm
  %i.hn = add i64 %reass.sub, 1                   ; 7 uses
  %i.ho = add nsw i64 %indvars.iv690, %indvars.iv697
  %.not409467 = icmp slt i64 %indvars.iv697, 0
  br i1 %.not409467, label %._crit_edge472, label %iter.check1010

iter.check1010:                                   ; preds = %.lr.ph479
  %i.hp = sext i32 %.6477 to i64                  ; 7 uses
  %min.iters.check994 = icmp ult i64 %i.hn, 4
  br i1 %min.iters.check994, label %.lr.ph471.preheader, label %vector.memcheck995

vector.memcheck995:                               ; preds = %iter.check1010
  %i.hq = mul i64 %indvar992, %i.hi
  %i.hr = shl nsw i64 %i.hp, 3
  %i.hs = add i64 %i.hq, %i.b
  %i.ht = add i64 %i.hr, %i.a
  %i.hu = sub i64 %i.ht, %i.hs
  %diff.check996 = icmp ugt i64 %i.hu, -128
  br i1 %diff.check996, label %.lr.ph471.preheader, label %vector.main.loop.iter.check997

vector.main.loop.iter.check997:                   ; preds = %vector.memcheck995
  %min.iters.check998 = icmp ult i64 %i.hn, 16
  br i1 %min.iters.check998, label %vec.epilog.ph1014, label %vector.ph999

vector.ph999:                                     ; preds = %vector.main.loop.iter.check997
  %i.hv = and i64 %i.hn, 12
  %n.vec1000 = and i64 %i.hn, -16                 ; 5 uses
  %i.hw = add i64 %indvars.iv690, %n.vec1000
  %i.hx = add i64 %n.vec1000, %i.hp               ; 2 uses
  %invariant.gep1663.a = getelementptr [8 x i8], ptr %3, i64 %i.hp
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv690
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.ph999, %vector.body1001
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1007, %vector.body1001 ] ; 3 uses
  %gep1664.a = getelementptr [8 x i8], ptr %invariant.gep1663.a, i64 %index1002 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep1664.a, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %gep1664.a, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %gep1664.a, i64 96
  %wide.load1003 = load <4 x double>, ptr %gep1664.a, align 8, !tbaa !92
  %wide.load1004 = load <4 x double>, ptr %i.hz, align 8, !tbaa !92
  %wide.load1005 = load <4 x double>, ptr %i.ia, align 8, !tbaa !92
  %wide.load1006 = load <4 x double>, ptr %i.ib, align 8, !tbaa !92
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %index1002 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  store <4 x double> %wide.load1003, ptr %i.ic, align 8, !tbaa !92
  store <4 x double> %wide.load1004, ptr %i.id, align 8, !tbaa !92
  store <4 x double> %wide.load1005, ptr %i.ie, align 8, !tbaa !92
  store <4 x double> %wide.load1006, ptr %i.if, align 8, !tbaa !92
  %index.next1007 = add nuw i64 %index1002, 16    ; 2 uses
  %i.ig = icmp eq i64 %index.next1007, %n.vec1000
  br i1 %i.ig, label %middle.block1008, label %vector.body1001, !llvm.loop !23

middle.block1008:                                 ; preds = %vector.body1001
  %cmp.n1009 = icmp eq i64 %i.hn, %n.vec1000
  br i1 %cmp.n1009, label %._crit_edge472.loopexit, label %vec.epilog.iter.check1011

vec.epilog.iter.check1011:                        ; preds = %middle.block1008
  %min.epilog.iters.check1013 = icmp eq i64 %i.hv, 0
  br i1 %min.epilog.iters.check1013, label %.lr.ph471.preheader, label %vec.epilog.ph1014, !prof !96

vec.epilog.ph1014:                                ; preds = %vector.main.loop.iter.check997, %vec.epilog.iter.check1011
  %vec.epilog.resume.val1015 = phi i64 [ %n.vec1000, %vec.epilog.iter.check1011 ], [ 0, %vector.main.loop.iter.check997 ]
  %n.vec1016 = and i64 %i.hn, -4                  ; 4 uses
  %i.ih = add i64 %indvars.iv690, %n.vec1016
  %i.ii = add i64 %n.vec1016, %i.hp               ; 2 uses
  %invariant.gep1665.a = getelementptr [8 x i8], ptr %3, i64 %i.hp
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv690
  br label %vec.epilog.vector.body1017

vec.epilog.vector.body1017:                       ; preds = %vec.epilog.vector.body1017, %vec.epilog.ph1014
  %index1018 = phi i64 [ %vec.epilog.resume.val1015, %vec.epilog.ph1014 ], [ %index.next1020, %vec.epilog.vector.body1017 ] ; 3 uses
  %gep1666.a = getelementptr [8 x i8], ptr %invariant.gep1665.a, i64 %index1018
  %wide.load1019 = load <4 x double>, ptr %gep1666.a, align 8, !tbaa !92
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index1018
  store <4 x double> %wide.load1019, ptr %i.ik, align 8, !tbaa !92
  %index.next1020 = add nuw i64 %index1018, 4     ; 2 uses
  %i.il = icmp eq i64 %index.next1020, %n.vec1016
  br i1 %i.il, label %vec.epilog.middle.block1021, label %vec.epilog.vector.body1017, !llvm.loop !24

vec.epilog.middle.block1021:                      ; preds = %vec.epilog.vector.body1017
  %cmp.n1022 = icmp eq i64 %i.hn, %n.vec1016
  br i1 %cmp.n1022, label %._crit_edge472.loopexit, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %iter.check1010, %vector.memcheck995, %vec.epilog.iter.check1011, %vec.epilog.middle.block1021
  %indvars.iv692.ph = phi i64 [ %indvars.iv690, %iter.check1010 ], [ %indvars.iv690, %vector.memcheck995 ], [ %i.hw, %vec.epilog.iter.check1011 ], [ %i.ih, %vec.epilog.middle.block1021 ]
  %indvars.iv688.ph = phi i64 [ %i.hp, %iter.check1010 ], [ %i.hp, %vector.memcheck995 ], [ %i.hx, %vec.epilog.iter.check1011 ], [ %i.ii, %vec.epilog.middle.block1021 ]
  br label %.lr.ph471

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %.lr.ph471
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %.lr.ph471 ], [ %indvars.iv692.ph, %.lr.ph471.preheader ] ; 3 uses
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %.lr.ph471 ], [ %indvars.iv688.ph, %.lr.ph471.preheader ] ; 2 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv688
  %i.in = load double, ptr %i.im, align 8, !tbaa !92
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv692
  store double %i.in, ptr %i.io, align 8, !tbaa !92
  %indvars.iv.next689 = add nsw i64 %indvars.iv688, 1 ; 2 uses
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1
  %.not409.not = icmp slt i64 %indvars.iv692, %i.ho
  br i1 %.not409.not, label %.lr.ph471, label %._crit_edge472.loopexit, !llvm.loop !25

._crit_edge472.loopexit:                          ; preds = %.lr.ph471, %vec.epilog.middle.block1021, %middle.block1008
  %indvars.iv.next689.lcssa = phi i64 [ %i.ii, %vec.epilog.middle.block1021 ], [ %i.hx, %middle.block1008 ], [ %indvars.iv.next689, %.lr.ph471 ]
  %i.ip = trunc nsw i64 %indvars.iv.next689.lcssa to i32
  br label %._crit_edge472

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit, %.lr.ph479
  %.7.lcssa = phi i32 [ %.6477, %.lr.ph479 ], [ %i.ip, %._crit_edge472.loopexit ]
  %indvars.iv.next691 = add i64 %indvars.iv690, %i.hg
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
  %i.iq = mul nuw nsw i32 %i.s, %i.h              ; 2 uses
  %i.ir = add nuw nsw i32 %i.s, 1
  %i.is = zext nneg i32 %i.s to i64               ; 16 uses
  %i.it = add nuw nsw i64 %i.is, 1
  %i.iu = zext nneg i32 %i.iq to i64              ; 3 uses
  %scevgep = getelementptr i8, ptr %3, i64 8
  %i.iv = xor i64 %i.is, -1                       ; 2 uses
  %i.iw = shl nuw nsw i64 %i.is, 3
  %i.ix = add nuw nsw i64 %i.iw, 8
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.is, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.iy = shl nuw nsw <4 x i64> %broadcast.splat, splat (i64 2) ; 5 uses
  %i.iz = mul nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1681.a = add nuw nsw <4 x i64> %i.iy, %i.iy ; 2 uses
  %invariant.op1682 = add nuw nsw <4 x i64> %invariant.op1681.a, %i.iy ; 2 uses
  %invariant.op1685 = add nuw nsw <4 x i64> %invariant.op1682, %i.iy
  %broadcast.splatinsert1214 = insertelement <4 x i64> poison, i64 %i.is, i64 0
  %broadcast.splat1215 = shufflevector <4 x i64> %broadcast.splatinsert1214, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ja = mul nuw nsw <4 x i64> %broadcast.splat1215, <i64 0, i64 1, i64 2, i64 3>
  %i.jb = shl nuw nsw i64 %i.is, 2
  %broadcast.splatinsert1217 = insertelement <4 x i64> poison, i64 %i.jb, i64 0
  %broadcast.splat1218 = shufflevector <4 x i64> %broadcast.splatinsert1217, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph534, %._crit_edge528
  %indvar1181 = phi i64 [ 0, %.lr.ph534 ], [ %indvar.next1182, %._crit_edge528 ] ; 4 uses
  %indvars.iv768 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next769, %._crit_edge528 ] ; 9 uses
  %.8532 = phi i32 [ 0, %.lr.ph534 ], [ %.9.lcssa, %._crit_edge528 ] ; 2 uses
  %.3369531 = phi i32 [ 0, %.lr.ph534 ], [ %i.kt, %._crit_edge528 ] ; 3 uses
  %i.jc = mul nsw i32 %.3369531, %i.ir
  %i.jd = icmp slt i32 %i.jc, %i.iq
  br i1 %i.jd, label %iter.check1204, label %._crit_edge528

iter.check1204:                                   ; preds = %bb.o
  %i.je = add nuw i64 %indvars.iv768, %i.is
  %umax1183 = tail call i64 @llvm.umax.i64(i64 %i.je, i64 %i.iu)
  %i.jf = mul i64 %indvar1181, %i.iv
  %6 = sub i64 %i.jf, %i.is
  %i.jg = add i64 %umax1183, %6                   ; 2 uses
  %7 = icmp ne i64 %i.jg, 0                       ; 2 uses
  %umin.neg = sext i1 %7 to i64
  %i.jh = add i64 %i.jg, %umin.neg
  %i.ji = sext i32 %.8532 to i64                  ; 8 uses
  %8 = select i1 %7, i64 2, i64 1
  %i.jj = udiv i64 %i.jh, %i.is
  %i.jk = add i64 %8, %i.jj                       ; 7 uses
  %min.iters.check1184 = icmp ult i64 %i.jk, 4
  br i1 %min.iters.check1184, label %.lr.ph527.preheader, label %vector.memcheck1185

vector.memcheck1185:                              ; preds = %iter.check1204
  %i.jl = mul i64 %indvar1181, %i.ix              ; 2 uses
  %i.jm = getelementptr i8, ptr %4, i64 %i.jl
  %i.jn = add nuw i64 %indvars.iv768, %i.is
  %i.jo = tail call i64 @llvm.umax.i64(i64 %i.jn, i64 %i.iu)
  %i.jp = mul nsw i64 %indvar1181, %i.iv
  %9 = sub i64 %i.jp, %i.is
  %i.jq = add i64 %i.jo, %9                       ; 2 uses
  %10 = icmp ne i64 %i.jq, 0
  %11 = zext i1 %10 to i64                        ; 2 uses
  %12 = sub i64 %i.jq, %11
  %i.jr = udiv i64 %12, %i.is
  %13 = add i64 %i.jr, %11                        ; 2 uses
  %i.js = mul i64 %13, %i.is
  %i.jt = shl i64 %i.js, 3
  %i.ju = getelementptr i8, ptr %4, i64 %i.jl
  %i.jv = getelementptr i8, ptr %i.ju, i64 8
  %i.jw = getelementptr i8, ptr %i.jv, i64 %i.jt
  %i.jx = shl nsw i64 %i.ji, 3
  %i.jy = getelementptr i8, ptr %3, i64 %i.jx
  %i.jz = add i64 %13, %i.ji
  %i.ka = shl i64 %i.jz, 3
  %i.kb = getelementptr i8, ptr %scevgep, i64 %i.ka
  %bound0 = icmp ult ptr %i.jm, %i.kb
  %bound1 = icmp ult ptr %i.jy, %i.jw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph527.preheader, label %vector.main.loop.iter.check1186

vector.main.loop.iter.check1186:                  ; preds = %vector.memcheck1185
  %min.iters.check1187 = icmp ult i64 %i.jk, 16
  br i1 %min.iters.check1187, label %vec.epilog.ph1208, label %vector.ph1188

vector.ph1188:                                    ; preds = %vector.main.loop.iter.check1186
  %i.kc = and i64 %i.jk, 12
  %n.vec1189 = and i64 %i.jk, -16                 ; 5 uses
  %i.kd = mul i64 %n.vec1189, %i.is
  %i.ke = add i64 %indvars.iv768, %i.kd           ; 2 uses
  %i.kf = add i64 %n.vec1189, %i.ji               ; 2 uses
  %broadcast.splatinsert1190 = insertelement <4 x i64> poison, i64 %indvars.iv768, i64 0
  %broadcast.splat1191 = shufflevector <4 x i64> %broadcast.splatinsert1190, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat1191, %i.iz
  %invariant.gep1683 = getelementptr [8 x i8], ptr %3, i64 %i.ji
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.ph1188, %vector.body1192
  %index1193 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1201, %vector.body1192 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph1188 ], [ %vec.ind.next.reass, %vector.body1192 ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, %i.iy
  %step.add.2.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1681.a
  %step.add.3.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1682
  %gep1684 = getelementptr [8 x i8], ptr %invariant.gep1683, i64 %index1193 ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %gep1684, i64 32
  %i.kh = getelementptr inbounds nuw i8, ptr %gep1684, i64 64
  %i.ki = getelementptr inbounds nuw i8, ptr %gep1684, i64 96
  %wide.load1194 = load <4 x double>, ptr %gep1684, align 8, !tbaa !92, !alias.scope !98
  %wide.load1195 = load <4 x double>, ptr %i.kg, align 8, !tbaa !92, !alias.scope !98
  %wide.load1196 = load <4 x double>, ptr %i.kh, align 8, !tbaa !92, !alias.scope !98
  %wide.load1197 = load <4 x double>, ptr %i.ki, align 8, !tbaa !92, !alias.scope !98
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind
  %wide.gep1198 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add
  %wide.gep1199 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.2.reass
  %wide.gep1200 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.3.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1194, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1195, <4 x ptr> align 8 %wide.gep1198, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1196, <4 x ptr> align 8 %wide.gep1199, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1197, <4 x ptr> align 8 %wide.gep1200, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1201 = add nuw i64 %index1193, 16    ; 2 uses
  %vec.ind.next.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1685
  %i.kj = icmp eq i64 %index.next1201, %n.vec1189
  br i1 %i.kj, label %middle.block1202, label %vector.body1192, !llvm.loop !30

middle.block1202:                                 ; preds = %vector.body1192
  %cmp.n1203 = icmp eq i64 %i.jk, %n.vec1189
  br i1 %cmp.n1203, label %._crit_edge528.loopexit, label %vec.epilog.iter.check1205

vec.epilog.iter.check1205:                        ; preds = %middle.block1202
  %min.epilog.iters.check1207 = icmp eq i64 %i.kc, 0
  br i1 %min.epilog.iters.check1207, label %.lr.ph527.preheader, label %vec.epilog.ph1208, !prof !96

vec.epilog.ph1208:                                ; preds = %vector.main.loop.iter.check1186, %vec.epilog.iter.check1205
  %vec.epilog.resume.val1209 = phi i64 [ %n.vec1189, %vec.epilog.iter.check1205 ], [ 0, %vector.main.loop.iter.check1186 ]
  %bc.resume.val1210 = phi i64 [ %i.ke, %vec.epilog.iter.check1205 ], [ %indvars.iv768, %vector.main.loop.iter.check1186 ]
  %n.vec1211 = and i64 %i.jk, -4                  ; 4 uses
  %i.kk = mul i64 %n.vec1211, %i.is
  %i.kl = add i64 %indvars.iv768, %i.kk
  %i.km = add i64 %n.vec1211, %i.ji               ; 2 uses
  %broadcast.splatinsert1212 = insertelement <4 x i64> poison, i64 %bc.resume.val1210, i64 0
  %broadcast.splat1213 = shufflevector <4 x i64> %broadcast.splatinsert1212, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1216 = add nuw nsw <4 x i64> %broadcast.splat1213, %i.ja
  %invariant.gep1686.a = getelementptr [8 x i8], ptr %3, i64 %i.ji
  br label %vec.epilog.vector.body1219

vec.epilog.vector.body1219:                       ; preds = %vec.epilog.vector.body1219, %vec.epilog.ph1208
  %index1220 = phi i64 [ %vec.epilog.resume.val1209, %vec.epilog.ph1208 ], [ %index.next1224, %vec.epilog.vector.body1219 ] ; 2 uses
  %vec.ind1221 = phi <4 x i64> [ %induction1216, %vec.epilog.ph1208 ], [ %vec.ind.next1225, %vec.epilog.vector.body1219 ] ; 2 uses
  %gep1687.a = getelementptr [8 x i8], ptr %invariant.gep1686.a, i64 %index1220
  %wide.load1222 = load <4 x double>, ptr %gep1687.a, align 8, !tbaa !92, !alias.scope !98
  %wide.gep1223 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1221
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1222, <4 x ptr> align 8 %wide.gep1223, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !99, !noalias !98
  %index.next1224 = add nuw i64 %index1220, 4     ; 2 uses
  %vec.ind.next1225 = add nuw nsw <4 x i64> %vec.ind1221, %broadcast.splat1218
  %i.kn = icmp eq i64 %index.next1224, %n.vec1211
  br i1 %i.kn, label %vec.epilog.middle.block1226, label %vec.epilog.vector.body1219, !llvm.loop !31

vec.epilog.middle.block1226:                      ; preds = %vec.epilog.vector.body1219
  %cmp.n1227 = icmp eq i64 %i.jk, %n.vec1211
  br i1 %cmp.n1227, label %._crit_edge528.loopexit, label %.lr.ph527.preheader

.lr.ph527.preheader:                              ; preds = %iter.check1204, %vector.memcheck1185, %vec.epilog.iter.check1205, %vec.epilog.middle.block1226
  %indvars.iv770.ph = phi i64 [ %indvars.iv768, %iter.check1204 ], [ %indvars.iv768, %vector.memcheck1185 ], [ %i.ke, %vec.epilog.iter.check1205 ], [ %i.kl, %vec.epilog.middle.block1226 ]
  %indvars.iv766.ph = phi i64 [ %i.ji, %iter.check1204 ], [ %i.ji, %vector.memcheck1185 ], [ %i.kf, %vec.epilog.iter.check1205 ], [ %i.km, %vec.epilog.middle.block1226 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader, %.lr.ph527
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.lr.ph527 ], [ %indvars.iv770.ph, %.lr.ph527.preheader ] ; 2 uses
  %indvars.iv766 = phi i64 [ %indvars.iv.next767, %.lr.ph527 ], [ %indvars.iv766.ph, %.lr.ph527.preheader ] ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv766
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !92
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv770
  store double %i.kp, ptr %i.kq, align 8, !tbaa !92
  %indvars.iv.next767 = add nsw i64 %indvars.iv766, 1 ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, %i.is ; 2 uses
  %i.kr = icmp samesign ult i64 %indvars.iv.next771, %i.iu
  br i1 %i.kr, label %.lr.ph527, label %._crit_edge528.loopexit, !llvm.loop !32

._crit_edge528.loopexit:                          ; preds = %.lr.ph527, %vec.epilog.middle.block1226, %middle.block1202
  %indvars.iv.next767.lcssa = phi i64 [ %i.km, %vec.epilog.middle.block1226 ], [ %i.kf, %middle.block1202 ], [ %indvars.iv.next767, %.lr.ph527 ]
  %i.ks = trunc nsw i64 %indvars.iv.next767.lcssa to i32
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.o
  %.9.lcssa = phi i32 [ %.8532, %bb.o ], [ %i.ks, %._crit_edge528.loopexit ] ; 2 uses
  %i.kt = add nuw i32 %.3369531, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, %i.it
  %exitcond775.not = icmp eq i32 %.3369531, %.901
  %indvar.next1182 = add i64 %indvar1181, 1
  br i1 %exitcond775.not, label %._crit_edge535, label %bb.o, !llvm.loop !33

._crit_edge535:                                   ; preds = %._crit_edge528
  %.not404.not544.not = icmp eq i32 %.901, 0
  br i1 %.not404.not544.not, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %._crit_edge535
  %i.ku = add nuw nsw i32 %i.s, 1
  %i.kv = add nuw i32 %.901, 1
  %i.kw = sub i64 %i.b, %i.a
  %invariant.op1696.a = add i64 %i.kw, -1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph549, %._crit_edge542
  %indvars.iv786 = phi i32 [ %i.kv, %.lr.ph549 ], [ %indvars.iv.next787, %._crit_edge542 ] ; 3 uses
  %indvars.iv779 = phi i32 [ 1, %.lr.ph549 ], [ %indvars.iv.next780, %._crit_edge542 ] ; 4 uses
  %.10547 = phi i32 [ %.9.lcssa, %.lr.ph549 ], [ %.11.lcssa, %._crit_edge542 ] ; 2 uses
  %.4358545 = phi i32 [ 0, %.lr.ph549 ], [ %i.np, %._crit_edge542 ] ; 3 uses
  %i.kx = xor i32 %.4358545, -1
  %i.ky = add nsw i32 %.901, %i.kx                ; 3 uses
  %i.kz = zext i32 %i.ky to i64
  %i.la = add nuw nsw i64 %i.kz, 1                ; 5 uses
  %i.lb = xor i32 %.4358545, -1
  %i.lc = add nsw i32 %.901, %i.lb
  %i.ld = add i32 %i.lc, %indvars.iv779           ; 2 uses
  %.not405537 = icmp sgt i32 %indvars.iv779, %i.ld
  br i1 %.not405537, label %._crit_edge542, label %iter.check1248

iter.check1248:                                   ; preds = %bb.p
  %i.le = sext i32 %indvars.iv779 to i64          ; 7 uses
  %i.lf = sext i32 %.10547 to i64                 ; 7 uses
  %min.iters.check1232 = icmp ult i32 %i.ky, 3
  br i1 %min.iters.check1232, label %.lr.ph541.preheader, label %vector.memcheck1233

vector.memcheck1233:                              ; preds = %iter.check1248
  %i.lg = sub nsw i64 %i.le, %i.lf
  %i.lh = shl nsw i64 %i.lg, 3
  %.reass1697 = add i64 %i.lh, %invariant.op1696.a
  %diff.check1234 = icmp ult i64 %.reass1697, 127
  br i1 %diff.check1234, label %.lr.ph541.preheader, label %vector.main.loop.iter.check1235

vector.main.loop.iter.check1235:                  ; preds = %vector.memcheck1233
  %min.iters.check1236 = icmp ult i32 %i.ky, 15
  br i1 %min.iters.check1236, label %vec.epilog.ph1252, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.main.loop.iter.check1235
  %i.li = and i64 %i.la, 12
  %n.vec1238 = and i64 %i.la, 8589934576          ; 5 uses
  %i.lj = add nsw i64 %n.vec1238, %i.le
  %i.lk = add nsw i64 %n.vec1238, %i.lf           ; 2 uses
  %invariant.gep1688.a = getelementptr [8 x i8], ptr %3, i64 %i.lf
  %invariant.gep1690.a = getelementptr [8 x i8], ptr %4, i64 %i.le
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.ph1237, %vector.body1239
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1245, %vector.body1239 ] ; 3 uses
  %gep1689.a = getelementptr [8 x i8], ptr %invariant.gep1688.a, i64 %index1240 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %gep1689.a, i64 32
  %i.lm = getelementptr inbounds nuw i8, ptr %gep1689.a, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %gep1689.a, i64 96
  %wide.load1241 = load <4 x double>, ptr %gep1689.a, align 8, !tbaa !92
  %wide.load1242 = load <4 x double>, ptr %i.ll, align 8, !tbaa !92
  %wide.load1243 = load <4 x double>, ptr %i.lm, align 8, !tbaa !92
  %wide.load1244 = load <4 x double>, ptr %i.ln, align 8, !tbaa !92
  %gep1691.a = getelementptr [8 x i8], ptr %invariant.gep1690.a, i64 %index1240 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %gep1691.a, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %gep1691.a, i64 64
  %i.lq = getelementptr inbounds nuw i8, ptr %gep1691.a, i64 96
  store <4 x double> %wide.load1241, ptr %gep1691.a, align 8, !tbaa !92
  store <4 x double> %wide.load1242, ptr %i.lo, align 8, !tbaa !92
  store <4 x double> %wide.load1243, ptr %i.lp, align 8, !tbaa !92
  store <4 x double> %wide.load1244, ptr %i.lq, align 8, !tbaa !92
  %index.next1245 = add nuw i64 %index1240, 16    ; 2 uses
  %i.lr = icmp eq i64 %index.next1245, %n.vec1238
  br i1 %i.lr, label %middle.block1246, label %vector.body1239, !llvm.loop !34

middle.block1246:                                 ; preds = %vector.body1239
  %cmp.n1247 = icmp eq i64 %i.la, %n.vec1238
  br i1 %cmp.n1247, label %._crit_edge542.loopexit, label %vec.epilog.iter.check1249

vec.epilog.iter.check1249:                        ; preds = %middle.block1246
  %min.epilog.iters.check1251 = icmp eq i64 %i.li, 0
  br i1 %min.epilog.iters.check1251, label %.lr.ph541.preheader, label %vec.epilog.ph1252, !prof !96

vec.epilog.ph1252:                                ; preds = %vector.main.loop.iter.check1235, %vec.epilog.iter.check1249
end_hunk_0
begin_hunk_1_@dtpttf_:bb.a
  %i.mc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv777
  %i.md = load double, ptr %i.mc, align 8, !tbaa !92
  %i.me = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv781
  store double %i.md, ptr %i.me, align 8, !tbaa !92
  %i.mf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.mg = getelementptr i8, ptr %i.mf, i64 8
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !92
  %i.mi = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.mj = getelementptr i8, ptr %i.mi, i64 8
  store double %i.mh, ptr %i.mj, align 8, !tbaa !92
  %i.mk = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.ml = getelementptr i8, ptr %i.mk, i64 16
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !92
  %i.mn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.mo = getelementptr i8, ptr %i.mn, i64 16
  store double %i.mm, ptr %i.mo, align 8, !tbaa !92
  %i.mp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.mq = getelementptr i8, ptr %i.mp, i64 24
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !92
  %i.ms = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.mt = getelementptr i8, ptr %i.ms, i64 24
  store double %i.mr, ptr %i.mt, align 8, !tbaa !92
  %i.mu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.mv = getelementptr i8, ptr %i.mu, i64 32
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !92
  %i.mx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.my = getelementptr i8, ptr %i.mx, i64 32
  store double %i.mw, ptr %i.my, align 8, !tbaa !92
  %i.mz = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.na = getelementptr i8, ptr %i.mz, i64 40
  %i.nb = load double, ptr %i.na, align 8, !tbaa !92
  %i.nc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.nd = getelementptr i8, ptr %i.nc, i64 40
  store double %i.nb, ptr %i.nd, align 8, !tbaa !92
  %i.ne = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.nf = getelementptr i8, ptr %i.ne, i64 48
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !92
  %i.nh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.ni = getelementptr i8, ptr %i.nh, i64 48
  store double %i.ng, ptr %i.ni, align 8, !tbaa !92
  %i.nj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.nk = getelementptr i8, ptr %i.nj, i64 56
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !92
  %i.nm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.nn = getelementptr i8, ptr %i.nm, i64 56
  store double %i.nl, ptr %i.nn, align 8, !tbaa !92
  %indvars.iv.next778.7 = add nsw i64 %indvars.iv777, 8 ; 2 uses
  %indvars.iv.next782.7 = add nsw i64 %indvars.iv781, 8 ; 2 uses
  %lftr.wideiv788.7 = trunc i64 %indvars.iv.next782.7 to i32
  %exitcond789.not.7 = icmp eq i32 %indvars.iv786, %lftr.wideiv788.7
  br i1 %exitcond789.not.7, label %._crit_edge542.loopexit, label %.lr.ph541, !llvm.loop !37

._crit_edge542.loopexit:                          ; preds = %.lr.ph541.prol.loopexit, %.lr.ph541, %vec.epilog.middle.block1259, %middle.block1246
  %indvars.iv.next778.lcssa = phi i64 [ %i.lt, %vec.epilog.middle.block1259 ], [ %i.lk, %middle.block1246 ], [ %indvars.iv.next778.lcssa1607.unr, %.lr.ph541.prol.loopexit ], [ %indvars.iv.next778.7, %.lr.ph541 ]
  %i.no = trunc nsw i64 %indvars.iv.next778.lcssa to i32
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %._crit_edge542.loopexit, %bb.p
  %.11.lcssa = phi i32 [ %.10547, %bb.p ], [ %i.no, %._crit_edge542.loopexit ]
  %indvars.iv.next780 = add i32 %indvars.iv779, %i.ku
  %i.np = add nuw nsw i32 %.4358545, 1            ; 2 uses
  %indvars.iv.next787 = add i32 %indvars.iv786, %i.s
  %exitcond790.not = icmp eq i32 %i.np, %.901
  br i1 %exitcond790.not, label %.loopexit, label %bb.p, !llvm.loop !38

bb.q:                                             ; preds = %bb.m
  %.not399.not552 = icmp sgt i32 %., 0
  br i1 %.not399.not552, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.q
  %i.nq = mul i32 %.901, %i.s
  %i.nr = sext i32 %i.nq to i64                   ; 4 uses
  %i.ns = zext nneg i32 %i.s to i64               ; 4 uses
  %wide.trip.count806 = zext nneg i32 %. to i64
  %i.nt = shl nuw nsw i64 %i.ns, 3
  %i.nu = shl nsw i64 %i.nr, 3
  %i.nv = add i64 %i.nu, %i.b
  %i.nw = add nuw nsw i64 %i.ns, 1
  br label %iter.check1282

iter.check1282:                                   ; preds = %.lr.ph557.preheader, %.loopexit1589
  %indvars.iv801 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next802, %.loopexit1589 ] ; 5 uses
  %indvars.iv794 = phi i64 [ %i.nr, %.lr.ph557.preheader ], [ %indvars.iv.next795, %.loopexit1589 ] ; 9 uses
  %.12555 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next793.lcssa, %.loopexit1589 ] ; 7 uses
  %i.nx = mul i64 %i.nw, %indvars.iv801
  %i.ny = add i64 %i.nx, %i.nr
  %smax1265 = tail call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 %i.ny)
  %i.nz = mul i64 %indvars.iv801, %i.ns
  %i.oa = add i64 %i.nz, %i.nr
  %reass.sub1593 = sub i64 %smax1265, %i.oa
  %i.ob = add i64 %reass.sub1593, 1               ; 7 uses
  %i.oc = add nsw i64 %indvars.iv794, %indvars.iv801
  %min.iters.check1266 = icmp ult i64 %i.ob, 4
  br i1 %min.iters.check1266, label %vec.epilog.scalar.ph1284.preheader, label %vector.memcheck1267

vector.memcheck1267:                              ; preds = %iter.check1282
  %i.od = mul i64 %indvars.iv801, %i.nt
  %i.oe = shl i64 %.12555, 3
  %i.of = add i64 %i.nv, %i.od
  %i.og = add i64 %i.oe, %i.a
  %i.oh = sub i64 %i.og, %i.of
  %diff.check1268 = icmp ugt i64 %i.oh, -128
  br i1 %diff.check1268, label %vec.epilog.scalar.ph1284.preheader, label %vector.main.loop.iter.check1269

vector.main.loop.iter.check1269:                  ; preds = %vector.memcheck1267
  %min.iters.check1270 = icmp ult i64 %i.ob, 16
  br i1 %min.iters.check1270, label %vec.epilog.ph1286, label %vector.ph1271

vector.ph1271:                                    ; preds = %vector.main.loop.iter.check1269
  %i.oi = and i64 %i.ob, 12
  %n.vec1272 = and i64 %i.ob, -16                 ; 5 uses
  %i.oj = add i64 %indvars.iv794, %n.vec1272
  %i.ok = add i64 %.12555, %n.vec1272             ; 2 uses
  %i.ol = getelementptr [8 x i8], ptr %3, i64 %.12555
  %i.om = getelementptr [8 x i8], ptr %4, i64 %indvars.iv794
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.ph1271, %vector.body1273
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1279, %vector.body1273 ] ; 3 uses
  %i.on = getelementptr [8 x i8], ptr %i.ol, i64 %index1274 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 96
  %wide.load1275 = load <4 x double>, ptr %i.on, align 8, !tbaa !92
  %wide.load1276 = load <4 x double>, ptr %i.oo, align 8, !tbaa !92
  %wide.load1277 = load <4 x double>, ptr %i.op, align 8, !tbaa !92
  %wide.load1278 = load <4 x double>, ptr %i.oq, align 8, !tbaa !92
  %i.or = getelementptr [8 x i8], ptr %i.om, i64 %index1274 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 96
  store <4 x double> %wide.load1275, ptr %i.or, align 8, !tbaa !92
  store <4 x double> %wide.load1276, ptr %i.os, align 8, !tbaa !92
  store <4 x double> %wide.load1277, ptr %i.ot, align 8, !tbaa !92
  store <4 x double> %wide.load1278, ptr %i.ou, align 8, !tbaa !92
  %index.next1279 = add nuw i64 %index1274, 16    ; 2 uses
  %i.ov = icmp eq i64 %index.next1279, %n.vec1272
  br i1 %i.ov, label %middle.block1280, label %vector.body1273, !llvm.loop !39

middle.block1280:                                 ; preds = %vector.body1273
  %cmp.n1281 = icmp eq i64 %i.ob, %n.vec1272
  br i1 %cmp.n1281, label %.loopexit1589, label %vec.epilog.iter.check1283

vec.epilog.iter.check1283:                        ; preds = %middle.block1280
  %min.epilog.iters.check1285 = icmp eq i64 %i.oi, 0
  br i1 %min.epilog.iters.check1285, label %vec.epilog.scalar.ph1284.preheader, label %vec.epilog.ph1286, !prof !96

vec.epilog.ph1286:                                ; preds = %vector.main.loop.iter.check1269, %vec.epilog.iter.check1283
  %vec.epilog.resume.val1287 = phi i64 [ %n.vec1272, %vec.epilog.iter.check1283 ], [ 0, %vector.main.loop.iter.check1269 ]
  %n.vec1288 = and i64 %i.ob, -4                  ; 4 uses
  %i.ow = add i64 %indvars.iv794, %n.vec1288
  %i.ox = add i64 %.12555, %n.vec1288             ; 2 uses
  %i.oy = getelementptr [8 x i8], ptr %3, i64 %.12555
  %i.oz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv794
  br label %vec.epilog.vector.body1289

vec.epilog.vector.body1289:                       ; preds = %vec.epilog.vector.body1289, %vec.epilog.ph1286
  %index1290 = phi i64 [ %vec.epilog.resume.val1287, %vec.epilog.ph1286 ], [ %index.next1292, %vec.epilog.vector.body1289 ] ; 3 uses
  %i.pa = getelementptr [8 x i8], ptr %i.oy, i64 %index1290
  %wide.load1291 = load <4 x double>, ptr %i.pa, align 8, !tbaa !92
  %i.pb = getelementptr [8 x i8], ptr %i.oz, i64 %index1290
  store <4 x double> %wide.load1291, ptr %i.pb, align 8, !tbaa !92
  %index.next1292 = add nuw i64 %index1290, 4     ; 2 uses
  %i.pc = icmp eq i64 %index.next1292, %n.vec1288
  br i1 %i.pc, label %vec.epilog.middle.block1293, label %vec.epilog.vector.body1289, !llvm.loop !40

vec.epilog.middle.block1293:                      ; preds = %vec.epilog.vector.body1289
  %cmp.n1294 = icmp eq i64 %i.ob, %n.vec1288
  br i1 %cmp.n1294, label %.loopexit1589, label %vec.epilog.scalar.ph1284.preheader

vec.epilog.scalar.ph1284.preheader:               ; preds = %iter.check1282, %vector.memcheck1267, %vec.epilog.iter.check1283, %vec.epilog.middle.block1293
  %indvars.iv796.ph = phi i64 [ %indvars.iv794, %iter.check1282 ], [ %indvars.iv794, %vector.memcheck1267 ], [ %i.oj, %vec.epilog.iter.check1283 ], [ %i.ow, %vec.epilog.middle.block1293 ]
  %indvars.iv792.ph = phi i64 [ %.12555, %iter.check1282 ], [ %.12555, %vector.memcheck1267 ], [ %i.ok, %vec.epilog.iter.check1283 ], [ %i.ox, %vec.epilog.middle.block1293 ]
  br label %vec.epilog.scalar.ph1284

vec.epilog.scalar.ph1284:                         ; preds = %vec.epilog.scalar.ph1284.preheader, %vec.epilog.scalar.ph1284
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %vec.epilog.scalar.ph1284 ], [ %indvars.iv796.ph, %vec.epilog.scalar.ph1284.preheader ] ; 3 uses
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %vec.epilog.scalar.ph1284 ], [ %indvars.iv792.ph, %vec.epilog.scalar.ph1284.preheader ] ; 2 uses
  %i.pd = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv792
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !92
  %i.pf = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv796
  store double %i.pe, ptr %i.pf, align 8, !tbaa !92
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 2 uses
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, 1
  %.not402.not = icmp slt i64 %indvars.iv796, %i.oc
  br i1 %.not402.not, label %vec.epilog.scalar.ph1284, label %.loopexit1589, !llvm.loop !41

.loopexit1589:                                    ; preds = %vec.epilog.scalar.ph1284, %vec.epilog.middle.block1293, %middle.block1280
  %indvars.iv.next793.lcssa = phi i64 [ %i.ox, %vec.epilog.middle.block1293 ], [ %i.ok, %middle.block1280 ], [ %indvars.iv.next793, %vec.epilog.scalar.ph1284 ] ; 2 uses
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, %i.ns
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge558, label %iter.check1282, !llvm.loop !42

._crit_edge558:                                   ; preds = %.loopexit1589, %bb.q
  %.12.lcssa = phi i64 [ 0, %bb.q ], [ %indvars.iv.next793.lcssa, %.loopexit1589 ]
  %.not400567 = icmp slt i32 %., 0
  br i1 %.not400567, label %.loopexit, label %.lr.ph571

.lr.ph571:                                        ; preds = %._crit_edge558
  %i.pg = zext nneg i32 %i.s to i64               ; 13 uses
  %i.ph = add nuw i32 %., 1
  %wide.trip.count818 = zext i32 %i.ph to i64
  %scevgep1310 = getelementptr i8, ptr %3, i64 8
  %broadcast.splatinsert1323.a = insertelement <4 x i64> poison, i64 %i.pg, i64 0
  %broadcast.splat1324.a = shufflevector <4 x i64> %broadcast.splatinsert1323.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pi = shl nuw nsw <4 x i64> %broadcast.splat1324.a, splat (i64 2) ; 5 uses
  %i.pj = mul nuw nsw <4 x i64> %broadcast.splat1324.a, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1698.a = add nuw nsw <4 x i64> %i.pi, %i.pi ; 2 uses
  %invariant.op1699 = add nuw nsw <4 x i64> %invariant.op1698.a, %i.pi ; 2 uses
  %invariant.op1700 = add nuw nsw <4 x i64> %invariant.op1699, %i.pi
  %broadcast.splatinsert1356 = insertelement <4 x i64> poison, i64 %i.pg, i64 0
  %broadcast.splat1357 = shufflevector <4 x i64> %broadcast.splatinsert1356, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.pk = mul nuw nsw <4 x i64> %broadcast.splat1357, <i64 0, i64 1, i64 2, i64 3>
  %i.pl = shl nuw nsw i64 %i.pg, 2
  %broadcast.splatinsert1359 = insertelement <4 x i64> poison, i64 %i.pl, i64 0
  %broadcast.splat1360 = shufflevector <4 x i64> %broadcast.splatinsert1359, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1346

iter.check1346:                                   ; preds = %._crit_edge565, %.lr.ph571
  %indvars.iv810 = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next811, %._crit_edge565 ] ; 17 uses
  %.14569 = phi i64 [ %.12.lcssa, %.lr.ph571 ], [ %indvars.iv.next809.lcssa, %._crit_edge565 ]
  %i.pm = add nuw i64 %indvars.iv810, %i.pg       ; 2 uses
  %i.pn = add nuw i64 %indvars.iv810, 1
  %i.po = trunc i64 %indvars.iv810 to i32
  %i.pp = add i32 %., %i.po
  %i.pq = mul i32 %i.s, %i.pp
  %i.pr = sext i32 %i.pq to i64
  %i.ps = add i64 %i.pn, %i.pr                    ; 2 uses
  %smax1312 = tail call i64 @llvm.smax.i64(i64 %i.pm, i64 %i.ps)
  %14 = add nuw i64 %indvars.iv810, %i.pg
  %15 = icmp slt i64 %i.pm, %i.ps                 ; 2 uses
  %umin1313 = zext i1 %15 to i64
  %i.pt = add i64 %14, %umin1313
  %16 = sub i64 %smax1312, %i.pt
  %indvars817 = trunc i64 %indvars.iv810 to i32
  %i.pu = add nuw nsw i32 %., %indvars817
  %i.pv = mul nsw i32 %i.pu, %i.s
  %i.pw = sext i32 %i.pv to i64                   ; 2 uses
  %i.px = add nsw i64 %indvars.iv810, %i.pw
  %sext = shl i64 %.14569, 32                     ; 2 uses
  %i.py = ashr exact i64 %sext, 32                ; 6 uses
  %17 = select i1 %15, i64 2, i64 1
  %i.pz = udiv i64 %16, %i.pg
  %i.qa = add i64 %17, %i.pz                      ; 7 uses
  %min.iters.check1314 = icmp ult i64 %i.qa, 4
  br i1 %min.iters.check1314, label %.lr.ph564.preheader, label %vector.memcheck1315

vector.memcheck1315:                              ; preds = %iter.check1346
  %i.qb = shl nuw nsw i64 %indvars.iv810, 3       ; 2 uses
  %i.qc = getelementptr nuw i8, ptr %4, i64 %i.qb
  %i.qd = add nuw i64 %indvars.iv810, %i.pg       ; 2 uses
  %i.qe = add nuw i64 %indvars.iv810, 1
  %i.qf = add i64 %i.qe, %i.pw                    ; 2 uses
  %i.qg = tail call i64 @llvm.smax.i64(i64 %i.qd, i64 %i.qf)
  %18 = add nuw i64 %indvars.iv810, %i.pg
  %19 = icmp slt i64 %i.qd, %i.qf
  %20 = zext i1 %19 to i64                        ; 2 uses
  %i.qh = add i64 %18, %20
  %21 = sub i64 %i.qg, %i.qh
  %i.qi = udiv i64 %21, %i.pg
  %22 = add i64 %i.qi, %20                        ; 2 uses
  %i.qj = mul i64 %22, %i.pg
  %i.qk = shl i64 %i.qj, 3
  %i.ql = getelementptr i8, ptr %4, i64 %i.qb
  %i.qm = getelementptr i8, ptr %i.ql, i64 8
  %i.qn = getelementptr i8, ptr %i.qm, i64 %i.qk
  %i.qo = ashr exact i64 %sext, 29                ; 2 uses
  %i.qp = getelementptr i8, ptr %3, i64 %i.qo
  %i.qq = shl i64 %22, 3
  %i.qr = getelementptr i8, ptr %scevgep1310, i64 %i.qq
  %i.qs = getelementptr i8, ptr %i.qr, i64 %i.qo
  %bound01316 = icmp ult ptr %i.qc, %i.qs
  %bound11317 = icmp ult ptr %i.qp, %i.qn
  %found.conflict1318 = and i1 %bound01316, %bound11317
  br i1 %found.conflict1318, label %.lr.ph564.preheader, label %vector.main.loop.iter.check1319

vector.main.loop.iter.check1319:                  ; preds = %vector.memcheck1315
  %min.iters.check1320 = icmp ult i64 %i.qa, 16
  br i1 %min.iters.check1320, label %vec.epilog.ph1350, label %vector.ph1321

vector.ph1321:                                    ; preds = %vector.main.loop.iter.check1319
  %i.qt = and i64 %i.qa, 12
  %n.vec1322 = and i64 %i.qa, -16                 ; 5 uses
  %i.qu = mul i64 %n.vec1322, %i.pg
  %i.qv = add i64 %indvars.iv810, %i.qu           ; 2 uses
  %i.qw = add i64 %i.py, %n.vec1322               ; 2 uses
  %broadcast.splatinsert1325 = insertelement <4 x i64> poison, i64 %indvars.iv810, i64 0
  %broadcast.splat1326 = shufflevector <4 x i64> %broadcast.splatinsert1325, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1327 = add nuw nsw <4 x i64> %broadcast.splat1326, %i.pj
  %i.qx = getelementptr [8 x i8], ptr %3, i64 %i.py
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.ph1321, %vector.body1328
  %index1329 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1342, %vector.body1328 ] ; 2 uses
  %vec.ind1330 = phi <4 x i64> [ %induction1327, %vector.ph1321 ], [ %vec.ind.next1343.reass, %vector.body1328 ] ; 5 uses
  %step.add1331 = add nuw nsw <4 x i64> %vec.ind1330, %i.pi
  %step.add.21332.reass = add nuw nsw <4 x i64> %vec.ind1330, %invariant.op1698.a
  %step.add.31333.reass = add nuw nsw <4 x i64> %vec.ind1330, %invariant.op1699
  %i.qy = getelementptr [8 x i8], ptr %i.qx, i64 %index1329 ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 64
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 96
  %wide.load1334.a = load <4 x double>, ptr %i.qy, align 8, !tbaa !92, !alias.scope !100
  %wide.load1335.a = load <4 x double>, ptr %i.qz, align 8, !tbaa !92, !alias.scope !100
  %wide.load1336 = load <4 x double>, ptr %i.ra, align 8, !tbaa !92, !alias.scope !100
  %wide.load1337 = load <4 x double>, ptr %i.rb, align 8, !tbaa !92, !alias.scope !100
  %wide.gep1338.a = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1330
  %wide.gep1339.a = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add1331
  %wide.gep1340 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.21332.reass
  %wide.gep1341 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.31333.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1334.a, <4 x ptr> align 8 %wide.gep1338.a, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1335.a, <4 x ptr> align 8 %wide.gep1339.a, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1336, <4 x ptr> align 8 %wide.gep1340, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1337, <4 x ptr> align 8 %wide.gep1341, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1342 = add nuw i64 %index1329, 16    ; 2 uses
  %vec.ind.next1343.reass = add nuw nsw <4 x i64> %vec.ind1330, %invariant.op1700
  %i.rc = icmp eq i64 %index.next1342, %n.vec1322
  br i1 %i.rc, label %middle.block1344, label %vector.body1328, !llvm.loop !46

middle.block1344:                                 ; preds = %vector.body1328
  %cmp.n1345 = icmp eq i64 %i.qa, %n.vec1322
  br i1 %cmp.n1345, label %._crit_edge565, label %vec.epilog.iter.check1347

vec.epilog.iter.check1347:                        ; preds = %middle.block1344
  %min.epilog.iters.check1349 = icmp eq i64 %i.qt, 0
  br i1 %min.epilog.iters.check1349, label %.lr.ph564.preheader, label %vec.epilog.ph1350, !prof !96

vec.epilog.ph1350:                                ; preds = %vector.main.loop.iter.check1319, %vec.epilog.iter.check1347
  %vec.epilog.resume.val1351 = phi i64 [ %n.vec1322, %vec.epilog.iter.check1347 ], [ 0, %vector.main.loop.iter.check1319 ]
  %bc.resume.val1352 = phi i64 [ %i.qv, %vec.epilog.iter.check1347 ], [ %indvars.iv810, %vector.main.loop.iter.check1319 ]
  %n.vec1353 = and i64 %i.qa, -4                  ; 4 uses
  %i.rd = mul i64 %n.vec1353, %i.pg
  %i.re = add i64 %indvars.iv810, %i.rd
  %i.rf = add i64 %i.py, %n.vec1353               ; 2 uses
  %broadcast.splatinsert1354 = insertelement <4 x i64> poison, i64 %bc.resume.val1352, i64 0
  %broadcast.splat1355 = shufflevector <4 x i64> %broadcast.splatinsert1354, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1358 = add nuw nsw <4 x i64> %broadcast.splat1355, %i.pk
  %i.rg = getelementptr [8 x i8], ptr %3, i64 %i.py
  br label %vec.epilog.vector.body1361

vec.epilog.vector.body1361:                       ; preds = %vec.epilog.vector.body1361, %vec.epilog.ph1350
  %index1362 = phi i64 [ %vec.epilog.resume.val1351, %vec.epilog.ph1350 ], [ %index.next1366, %vec.epilog.vector.body1361 ] ; 2 uses
  %vec.ind1363 = phi <4 x i64> [ %induction1358, %vec.epilog.ph1350 ], [ %vec.ind.next1367, %vec.epilog.vector.body1361 ] ; 2 uses
  %i.rh = getelementptr [8 x i8], ptr %i.rg, i64 %index1362
  %wide.load1364 = load <4 x double>, ptr %i.rh, align 8, !tbaa !92, !alias.scope !100
  %wide.gep1365 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1363
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1364, <4 x ptr> align 8 %wide.gep1365, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !101, !noalias !100
  %index.next1366 = add nuw i64 %index1362, 4     ; 2 uses
  %vec.ind.next1367 = add nuw nsw <4 x i64> %vec.ind1363, %broadcast.splat1360
  %i.ri = icmp eq i64 %index.next1366, %n.vec1353
  br i1 %i.ri, label %vec.epilog.middle.block1368, label %vec.epilog.vector.body1361, !llvm.loop !47

vec.epilog.middle.block1368:                      ; preds = %vec.epilog.vector.body1361
  %cmp.n1369 = icmp eq i64 %i.qa, %n.vec1353
  br i1 %cmp.n1369, label %._crit_edge565, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %iter.check1346, %vector.memcheck1315, %vec.epilog.iter.check1347, %vec.epilog.middle.block1368
  %indvars.iv812.ph = phi i64 [ %indvars.iv810, %iter.check1346 ], [ %indvars.iv810, %vector.memcheck1315 ], [ %i.qv, %vec.epilog.iter.check1347 ], [ %i.re, %vec.epilog.middle.block1368 ]
  %indvars.iv808.ph = phi i64 [ %i.py, %iter.check1346 ], [ %i.py, %vector.memcheck1315 ], [ %i.qw, %vec.epilog.iter.check1347 ], [ %i.rf, %vec.epilog.middle.block1368 ]
  br label %.lr.ph564

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.lr.ph564
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph564 ], [ %indvars.iv812.ph, %.lr.ph564.preheader ] ; 2 uses
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph564 ], [ %indvars.iv808.ph, %.lr.ph564.preheader ] ; 2 uses
  %i.rj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv808
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !92
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv812
  store double %i.rk, ptr %i.rl, align 8, !tbaa !92
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, 1 ; 2 uses
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, %i.pg ; 2 uses
  %.not881 = icmp sgt i64 %indvars.iv.next813, %i.px
  br i1 %.not881, label %._crit_edge565, label %.lr.ph564, !llvm.loop !48

._crit_edge565:                                   ; preds = %.lr.ph564, %vec.epilog.middle.block1368, %middle.block1344
  %indvars.iv.next809.lcssa = phi i64 [ %i.rf, %vec.epilog.middle.block1368 ], [ %i.qw, %middle.block1344 ], [ %indvars.iv.next809, %.lr.ph564 ]
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next811, %wide.trip.count818
  br i1 %exitcond819.not, label %.loopexit, label %iter.check1346, !llvm.loop !49

.thread423:                                       ; preds = %.thread416
  %i.rm = zext nneg i32 %.0328 to i64             ; 14 uses
  br i1 %.not379, label %.lr.ph507.preheader, label %.preheader432.preheader

.lr.ph507.preheader:                              ; preds = %.thread423
  %i.rn = sub i64 %i.b, %i.a
  %ident.check1095.not = icmp ult i32 %i.h, 2
  %invariant.op1679 = add i64 %i.rn, -1
  br label %iter.check1118

.preheader432.preheader:                          ; preds = %.thread423
  %wide.trip.count721 = zext nneg i32 %i.q to i64 ; 3 uses
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.ro = shl nuw nsw i64 %i.rm, 3
  %i.rp = add nuw nsw i64 %i.ro, 8
  %i.rq = add i64 %i.b, 8
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.rr = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1043, label %._crit_edge484

iter.check1043:                                   ; preds = %.preheader432
  %i.rs = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1027 = icmp ult i64 %i.rr, 4
  br i1 %min.iters.check1027, label %.lr.ph483.preheader, label %vector.memcheck1028

vector.memcheck1028:                              ; preds = %iter.check1043
  %i.rt = mul i64 %indvars.iv707, %i.rp
  %i.ru = shl nsw i64 %i.rs, 3
  %i.rv = add i64 %i.rq, %i.rt
  %i.rw = add i64 %i.ru, %i.a
  %i.rx = sub i64 %i.rw, %i.rv
  %diff.check1029 = icmp ugt i64 %i.rx, -128
  br i1 %diff.check1029, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1030

vector.main.loop.iter.check1030:                  ; preds = %vector.memcheck1028
  %min.iters.check1031 = icmp ult i64 %i.rr, 16
  br i1 %min.iters.check1031, label %vec.epilog.ph1047, label %vector.ph1032

vector.ph1032:                                    ; preds = %vector.main.loop.iter.check1030
  %i.ry = and i64 %i.rr, 12
  %n.vec1033 = and i64 %i.rr, -16                 ; 5 uses
  %i.rz = add i64 %indvars.iv707, %n.vec1033
  %i.sa = add i64 %n.vec1033, %i.rs               ; 2 uses
  %invariant.gep1667.a = getelementptr [8 x i8], ptr %3, i64 %i.rs
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.ph1032, %vector.body1034
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1040, %vector.body1034 ] ; 3 uses
  %gep1668.a = getelementptr [8 x i8], ptr %invariant.gep1667.a, i64 %index1035 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %gep1668.a, i64 32
  %i.sd = getelementptr inbounds nuw i8, ptr %gep1668.a, i64 64
  %i.se = getelementptr inbounds nuw i8, ptr %gep1668.a, i64 96
  %wide.load1036 = load <4 x double>, ptr %gep1668.a, align 8, !tbaa !92
  %wide.load1037 = load <4 x double>, ptr %i.sc, align 8, !tbaa !92
  %wide.load1038 = load <4 x double>, ptr %i.sd, align 8, !tbaa !92
  %wide.load1039 = load <4 x double>, ptr %i.se, align 8, !tbaa !92
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %index1035 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 40
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 72
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 104
  store <4 x double> %wide.load1036, ptr %i.sg, align 8, !tbaa !92
  store <4 x double> %wide.load1037, ptr %i.sh, align 8, !tbaa !92
  store <4 x double> %wide.load1038, ptr %i.si, align 8, !tbaa !92
  store <4 x double> %wide.load1039, ptr %i.sj, align 8, !tbaa !92
  %index.next1040 = add nuw i64 %index1035, 16    ; 2 uses
  %i.sk = icmp eq i64 %index.next1040, %n.vec1033
  br i1 %i.sk, label %middle.block1041, label %vector.body1034, !llvm.loop !50

middle.block1041:                                 ; preds = %vector.body1034
  %cmp.n1042 = icmp eq i64 %i.rr, %n.vec1033
  br i1 %cmp.n1042, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1044

vec.epilog.iter.check1044:                        ; preds = %middle.block1041
  %min.epilog.iters.check1046 = icmp eq i64 %i.ry, 0
  br i1 %min.epilog.iters.check1046, label %.lr.ph483.preheader, label %vec.epilog.ph1047, !prof !96

vec.epilog.ph1047:                                ; preds = %vector.main.loop.iter.check1030, %vec.epilog.iter.check1044
  %vec.epilog.resume.val1048 = phi i64 [ %n.vec1033, %vec.epilog.iter.check1044 ], [ 0, %vector.main.loop.iter.check1030 ]
  %n.vec1049 = and i64 %i.rr, -4                  ; 4 uses
  %i.sl = add i64 %indvars.iv707, %n.vec1049
end_hunk_1
begin_hunk_2_@dtpttf_:bb.a
._crit_edge495.2:                                 ; preds = %bb.t
  %indvars.iv.next726.2 = or disjoint i64 %indvars.iv725, 3 ; 2 uses
  %invariant.gep899.3 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next726.2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %._crit_edge495.2
  %indvars.iv727.3 = phi i64 [ %indvars.iv.next726.2, %._crit_edge495.2 ], [ %indvars.iv.next728.3, %bb.u ] ; 2 uses
  %indvars.iv723.3 = phi i64 [ %indvars.iv.next724.2, %._crit_edge495.2 ], [ %indvars.iv.next724.3, %bb.u ] ; 2 uses
  %i.uo = mul nuw nsw i64 %indvars.iv727.3, %i.uc
  %i.up = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.3
  %i.uq = load double, ptr %i.up, align 8, !tbaa !92
  %gep900.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.3, i64 %i.uo
  store double %i.uq, ptr %gep900.3, align 8, !tbaa !92
  %indvars.iv.next724.3 = add nsw i64 %indvars.iv723.3, 1 ; 3 uses
  %indvars.iv.next728.3 = add nuw nsw i64 %indvars.iv727.3, 1 ; 2 uses
  %.not397.not.3 = icmp samesign ult i64 %indvars.iv.next728.3, %i.ud
  br i1 %.not397.not.3, label %bb.u, label %._crit_edge495.3, !llvm.loop !55

._crit_edge495.3:                                 ; preds = %bb.u
  %indvars.iv.next726.3 = add nuw nsw i64 %indvars.iv725, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit1611.unr-lcssa, label %iter.check1079, !llvm.loop !56

iter.check1118:                                   ; preds = %.lr.ph507.preheader, %.loopexit1590
  %loop-unroll.iv1631 = phi i32 [ 0, %.lr.ph507.preheader ], [ %loop-unroll.iv.next1632, %.loopexit1590 ] ; 2 uses
  %indvar1100 = phi i64 [ 0, %.lr.ph507.preheader ], [ %indvar.next1101, %.loopexit1590 ] ; 3 uses
  %indvars.iv744 = phi i32 [ 1, %.lr.ph507.preheader ], [ %indvars.iv.next745, %.loopexit1590 ] ; 3 uses
  %indvars.iv737.in = phi i32 [ %i.q, %.lr.ph507.preheader ], [ %indvars.iv737, %.loopexit1590 ]
  %.20505 = phi i32 [ 0, %.lr.ph507.preheader ], [ %i.uw, %.loopexit1590 ] ; 2 uses
  %i.ur = trunc i64 %indvar1100 to i32
  %i.us = add i32 %i.ur, 2
  %i.ut = add i64 %indvar1100, 1                  ; 7 uses
  %indvars.iv737 = add i32 %indvars.iv737.in, 1   ; 2 uses
  %i.uu = sext i32 %indvars.iv737 to i64          ; 7 uses
  %i.uv = sext i32 %.20505 to i64                 ; 7 uses
  %i.uw = add i32 %.20505, %indvars.iv744         ; 4 uses
  %min.iters.check1102 = icmp ugt i64 %i.ut, 3
  %or.cond1597 = and i1 %min.iters.check1102, %ident.check1095.not
  br i1 %or.cond1597, label %vector.memcheck1103, label %vec.epilog.scalar.ph1120.preheader

vector.memcheck1103:                              ; preds = %iter.check1118
  %i.ux = sub nsw i64 %i.uu, %i.uv
  %i.uy = shl nsw i64 %i.ux, 3
  %.reass1680 = add i64 %i.uy, %invariant.op1679
  %diff.check1104 = icmp ult i64 %.reass1680, 127
  br i1 %diff.check1104, label %vec.epilog.scalar.ph1120.preheader, label %vector.main.loop.iter.check1105

vector.main.loop.iter.check1105:                  ; preds = %vector.memcheck1103
  %min.iters.check1106 = icmp ult i64 %i.ut, 16
  br i1 %min.iters.check1106, label %vec.epilog.ph1122, label %vector.ph1107

vector.ph1107:                                    ; preds = %vector.main.loop.iter.check1105
  %i.uz = and i64 %i.ut, 12
  %n.vec1108 = and i64 %i.ut, -16                 ; 5 uses
  %i.va = add i64 %n.vec1108, %i.uu
  %i.vb = add i64 %n.vec1108, %i.uv
  %invariant.gep1671.a = getelementptr [8 x i8], ptr %3, i64 %i.uv
  %invariant.gep1673.a = getelementptr [8 x i8], ptr %4, i64 %i.uu
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.ph1107, %vector.body1109
  %index1110 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1115, %vector.body1109 ] ; 3 uses
  %gep1672.a = getelementptr [8 x i8], ptr %invariant.gep1671.a, i64 %index1110 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %gep1672.a, i64 32
  %i.vd = getelementptr inbounds nuw i8, ptr %gep1672.a, i64 64
  %i.ve = getelementptr inbounds nuw i8, ptr %gep1672.a, i64 96
  %wide.load1111 = load <4 x double>, ptr %gep1672.a, align 8, !tbaa !92
  %wide.load1112 = load <4 x double>, ptr %i.vc, align 8, !tbaa !92
  %wide.load1113 = load <4 x double>, ptr %i.vd, align 8, !tbaa !92
  %wide.load1114 = load <4 x double>, ptr %i.ve, align 8, !tbaa !92
  %gep1674.a = getelementptr [8 x i8], ptr %invariant.gep1673.a, i64 %index1110 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %gep1674.a, i64 32
  %i.vg = getelementptr inbounds nuw i8, ptr %gep1674.a, i64 64
  %i.vh = getelementptr inbounds nuw i8, ptr %gep1674.a, i64 96
  store <4 x double> %wide.load1111, ptr %gep1674.a, align 8, !tbaa !92
  store <4 x double> %wide.load1112, ptr %i.vf, align 8, !tbaa !92
  store <4 x double> %wide.load1113, ptr %i.vg, align 8, !tbaa !92
  store <4 x double> %wide.load1114, ptr %i.vh, align 8, !tbaa !92
  %index.next1115 = add nuw i64 %index1110, 16    ; 2 uses
  %i.vi = icmp eq i64 %index.next1115, %n.vec1108
  br i1 %i.vi, label %middle.block1116, label %vector.body1109, !llvm.loop !57

middle.block1116:                                 ; preds = %vector.body1109
  %cmp.n1117 = icmp eq i64 %i.ut, %n.vec1108
  br i1 %cmp.n1117, label %.loopexit1590, label %vec.epilog.iter.check1119

vec.epilog.iter.check1119:                        ; preds = %middle.block1116
  %min.epilog.iters.check1121 = icmp eq i64 %i.uz, 0
  br i1 %min.epilog.iters.check1121, label %vec.epilog.scalar.ph1120.preheader, label %vec.epilog.ph1122, !prof !96

vec.epilog.ph1122:                                ; preds = %vector.main.loop.iter.check1105, %vec.epilog.iter.check1119
  %vec.epilog.resume.val1123 = phi i64 [ %n.vec1108, %vec.epilog.iter.check1119 ], [ 0, %vector.main.loop.iter.check1105 ]
  %n.vec1124 = and i64 %i.ut, -4                  ; 4 uses
  %i.vj = add i64 %n.vec1124, %i.uu
  %i.vk = add i64 %n.vec1124, %i.uv
  %invariant.gep1675 = getelementptr [8 x i8], ptr %3, i64 %i.uv
  %invariant.gep1677 = getelementptr [8 x i8], ptr %4, i64 %i.uu
  br label %vec.epilog.vector.body1125

vec.epilog.vector.body1125:                       ; preds = %vec.epilog.vector.body1125, %vec.epilog.ph1122
  %index1126 = phi i64 [ %vec.epilog.resume.val1123, %vec.epilog.ph1122 ], [ %index.next1128, %vec.epilog.vector.body1125 ] ; 3 uses
  %gep1676 = getelementptr [8 x i8], ptr %invariant.gep1675, i64 %index1126
  %wide.load1127 = load <4 x double>, ptr %gep1676, align 8, !tbaa !92
  %gep1678 = getelementptr [8 x i8], ptr %invariant.gep1677, i64 %index1126
  store <4 x double> %wide.load1127, ptr %gep1678, align 8, !tbaa !92
  %index.next1128 = add nuw i64 %index1126, 4     ; 2 uses
  %i.vl = icmp eq i64 %index.next1128, %n.vec1124
  br i1 %i.vl, label %vec.epilog.middle.block1129, label %vec.epilog.vector.body1125, !llvm.loop !58

vec.epilog.middle.block1129:                      ; preds = %vec.epilog.vector.body1125
  %cmp.n1130 = icmp eq i64 %i.ut, %n.vec1124
  br i1 %cmp.n1130, label %.loopexit1590, label %vec.epilog.scalar.ph1120.preheader

vec.epilog.scalar.ph1120.preheader:               ; preds = %iter.check1118, %vector.memcheck1103, %vec.epilog.iter.check1119, %vec.epilog.middle.block1129
  %indvars.iv739.ph = phi i64 [ %i.uu, %iter.check1118 ], [ %i.uu, %vector.memcheck1103 ], [ %i.va, %vec.epilog.iter.check1119 ], [ %i.vj, %vec.epilog.middle.block1129 ] ; 2 uses
  %indvars.iv735.ph = phi i64 [ %i.uv, %iter.check1118 ], [ %i.uv, %vector.memcheck1103 ], [ %i.vb, %vec.epilog.iter.check1119 ], [ %i.vk, %vec.epilog.middle.block1129 ] ; 3 uses
  %i.vm = trunc i64 %indvars.iv735.ph to i32      ; 2 uses
  %i.vn = sub i32 %i.uw, %i.vm
  %i.vo = sub i32 %loop-unroll.iv1631, %i.vm
  %xtraiter1633 = and i32 %i.vn, 7                ; 2 uses
  %lcmp.mod1634.not = icmp eq i32 %xtraiter1633, 0
  br i1 %lcmp.mod1634.not, label %vec.epilog.scalar.ph1120.prol.loopexit, label %vec.epilog.scalar.ph1120.prol

vec.epilog.scalar.ph1120.prol:                    ; preds = %vec.epilog.scalar.ph1120.preheader, %vec.epilog.scalar.ph1120.prol
  %indvars.iv739.prol = phi i64 [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1120.prol ], [ %indvars.iv739.ph, %vec.epilog.scalar.ph1120.preheader ] ; 2 uses
  %indvars.iv735.prol = phi i64 [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1120.prol ], [ %indvars.iv735.ph, %vec.epilog.scalar.ph1120.preheader ] ; 2 uses
  %prol.iter1635 = phi i32 [ %prol.iter1635.next, %vec.epilog.scalar.ph1120.prol ], [ 0, %vec.epilog.scalar.ph1120.preheader ]
  %i.vp = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv735.prol
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !92
  %i.vr = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv739.prol
  store double %i.vq, ptr %i.vr, align 8, !tbaa !92
  %indvars.iv.next736.prol = add nsw i64 %indvars.iv735.prol, 1 ; 2 uses
  %indvars.iv.next740.prol = add nsw i64 %indvars.iv739.prol, %i.rm ; 2 uses
  %prol.iter1635.next = add i32 %prol.iter1635, 1 ; 2 uses
  %prol.iter1635.cmp.not = icmp eq i32 %prol.iter1635.next, %xtraiter1633
  br i1 %prol.iter1635.cmp.not, label %vec.epilog.scalar.ph1120.prol.loopexit, label %vec.epilog.scalar.ph1120.prol, !llvm.loop !59

vec.epilog.scalar.ph1120.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1120.prol, %vec.epilog.scalar.ph1120.preheader
  %indvars.iv739.unr = phi i64 [ %indvars.iv739.ph, %vec.epilog.scalar.ph1120.preheader ], [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1120.prol ]
  %indvars.iv735.unr = phi i64 [ %indvars.iv735.ph, %vec.epilog.scalar.ph1120.preheader ], [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1120.prol ]
  %i.vs = icmp ult i32 %i.vo, 7
  br i1 %i.vs, label %.loopexit1590, label %vec.epilog.scalar.ph1120

vec.epilog.scalar.ph1120:                         ; preds = %vec.epilog.scalar.ph1120.prol.loopexit, %vec.epilog.scalar.ph1120
  %indvars.iv739 = phi i64 [ %indvars.iv.next740.7, %vec.epilog.scalar.ph1120 ], [ %indvars.iv739.unr, %vec.epilog.scalar.ph1120.prol.loopexit ] ; 2 uses
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.7, %vec.epilog.scalar.ph1120 ], [ %indvars.iv735.unr, %vec.epilog.scalar.ph1120.prol.loopexit ] ; 9 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv735
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !92
  %i.vv = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv739
  store double %i.vu, ptr %i.vv, align 8, !tbaa !92
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, %i.rm ; 2 uses
  %i.vw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.vx = getelementptr i8, ptr %i.vw, i64 8
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !92
  %i.vz = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740
  store double %i.vy, ptr %i.vz, align 8, !tbaa !92
  %indvars.iv.next740.1 = add nsw i64 %indvars.iv.next740, %i.rm ; 2 uses
  %i.wa = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wb = getelementptr i8, ptr %i.wa, i64 16
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !92
  %i.wd = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.1
  store double %i.wc, ptr %i.wd, align 8, !tbaa !92
  %indvars.iv.next740.2 = add nsw i64 %indvars.iv.next740.1, %i.rm ; 2 uses
  %i.we = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wf = getelementptr i8, ptr %i.we, i64 24
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !92
  %i.wh = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.2
  store double %i.wg, ptr %i.wh, align 8, !tbaa !92
  %indvars.iv.next740.3 = add nsw i64 %indvars.iv.next740.2, %i.rm ; 2 uses
  %i.wi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wj = getelementptr i8, ptr %i.wi, i64 32
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !92
  %i.wl = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.3
  store double %i.wk, ptr %i.wl, align 8, !tbaa !92
  %indvars.iv.next740.4 = add nsw i64 %indvars.iv.next740.3, %i.rm ; 2 uses
  %i.wm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wn = getelementptr i8, ptr %i.wm, i64 40
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !92
  %i.wp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.4
  store double %i.wo, ptr %i.wp, align 8, !tbaa !92
  %indvars.iv.next740.5 = add nsw i64 %indvars.iv.next740.4, %i.rm ; 2 uses
  %i.wq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wr = getelementptr i8, ptr %i.wq, i64 48
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !92
  %i.wt = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.5
  store double %i.ws, ptr %i.wt, align 8, !tbaa !92
  %indvars.iv.next740.6 = add nsw i64 %indvars.iv.next740.5, %i.rm ; 2 uses
  %i.wu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wv = getelementptr i8, ptr %i.wu, i64 56
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !92
  %i.wx = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.6
  store double %i.ww, ptr %i.wx, align 8, !tbaa !92
  %indvars.iv.next736.7 = add nsw i64 %indvars.iv735, 8 ; 2 uses
  %indvars.iv.next740.7 = add nsw i64 %indvars.iv.next740.6, %i.rm
  %lftr.wideiv746.7 = trunc i64 %indvars.iv.next736.7 to i32
  %exitcond747.not.7 = icmp eq i32 %i.uw, %lftr.wideiv746.7
  br i1 %exitcond747.not.7, label %.loopexit1590, label %vec.epilog.scalar.ph1120, !llvm.loop !60

.loopexit1590:                                    ; preds = %vec.epilog.scalar.ph1120.prol.loopexit, %vec.epilog.scalar.ph1120, %vec.epilog.middle.block1129, %middle.block1116
  %indvars.iv.next745 = add nuw i32 %indvars.iv744, 1
  %exitcond748.not = icmp eq i32 %indvars.iv744, %i.q
  %indvar.next1101 = add i64 %indvar1100, 1
  %loop-unroll.iv.next1632 = add i32 %loop-unroll.iv1631, %i.us
  br i1 %exitcond748.not, label %._crit_edge508, label %iter.check1118, !llvm.loop !61

._crit_edge508:                                   ; preds = %.loopexit1590
  %.not392.not517.not = icmp eq i32 %i.h, 0
  br i1 %.not392.not517.not, label %.loopexit, label %.lr.ph522.preheader

.lr.ph522.preheader:                              ; preds = %._crit_edge508
  %i.wy = zext nneg i32 %.0328 to i64
  %i.wz = zext nneg i32 %i.q to i64               ; 2 uses
  %wide.trip.count764 = zext nneg i32 %i.h to i64
  %i.xa = sext i32 %i.uw to i64
  %i.xb = shl nuw nsw i64 %i.rm, 3
  %i.xc = add nuw nsw i64 %i.rm, 1
  br label %iter.check1155

iter.check1155:                                   ; preds = %._crit_edge515, %.lr.ph522.preheader
  %indvar1137 = phi i64 [ %indvar.next1138, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 4 uses
  %indvars.iv759 = phi i64 [ %indvars.iv.next760, %._crit_edge515 ], [ %i.wz, %.lr.ph522.preheader ] ; 2 uses
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 9 uses
  %.22520 = phi i64 [ %indvars.iv.next751.lcssa, %._crit_edge515 ], [ %i.xa, %.lr.ph522.preheader ] ; 7 uses
  %i.xd = mul i64 %i.xc, %indvar1137
  %i.xe = add i64 %i.xd, %i.wz
  %umax = tail call i64 @llvm.umax.i64(i64 %i.xe, i64 %indvars.iv752)
  %i.xf = mul i64 %indvar1137, %i.rm
  %reass.sub1592 = sub i64 %umax, %i.xf
  %i.xg = add i64 %reass.sub1592, 1               ; 7 uses
  %i.xh = add nuw nsw i64 %indvars.iv752, %indvars.iv759
  %min.iters.check1139 = icmp ult i64 %i.xg, 4
  br i1 %min.iters.check1139, label %.lr.ph514.preheader, label %vector.memcheck1140

vector.memcheck1140:                              ; preds = %iter.check1155
  %i.xi = mul i64 %indvar1137, %i.xb
  %i.xj = shl i64 %.22520, 3
  %i.xk = add i64 %i.xi, %i.b
  %i.xl = add i64 %i.xj, %i.a
  %i.xm = sub i64 %i.xl, %i.xk
  %diff.check1141 = icmp ugt i64 %i.xm, -128
  br i1 %diff.check1141, label %.lr.ph514.preheader, label %vector.main.loop.iter.check1142

vector.main.loop.iter.check1142:                  ; preds = %vector.memcheck1140
  %min.iters.check1143 = icmp ult i64 %i.xg, 16
  br i1 %min.iters.check1143, label %vec.epilog.ph1159, label %vector.ph1144

vector.ph1144:                                    ; preds = %vector.main.loop.iter.check1142
  %i.xn = and i64 %i.xg, 12
  %n.vec1145 = and i64 %i.xg, -16                 ; 5 uses
  %i.xo = add i64 %indvars.iv752, %n.vec1145
  %i.xp = add i64 %.22520, %n.vec1145             ; 2 uses
  %i.xq = getelementptr [8 x i8], ptr %3, i64 %.22520
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv752
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.ph1144, %vector.body1146
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1152, %vector.body1146 ] ; 3 uses
  %i.xs = getelementptr [8 x i8], ptr %i.xq, i64 %index1147 ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 32
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 64
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 96
  %wide.load1148 = load <4 x double>, ptr %i.xs, align 8, !tbaa !92
  %wide.load1149 = load <4 x double>, ptr %i.xt, align 8, !tbaa !92
  %wide.load1150 = load <4 x double>, ptr %i.xu, align 8, !tbaa !92
  %wide.load1151 = load <4 x double>, ptr %i.xv, align 8, !tbaa !92
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %index1147 ; 4 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 96
  store <4 x double> %wide.load1148, ptr %i.xw, align 8, !tbaa !92
  store <4 x double> %wide.load1149, ptr %i.xx, align 8, !tbaa !92
  store <4 x double> %wide.load1150, ptr %i.xy, align 8, !tbaa !92
  store <4 x double> %wide.load1151, ptr %i.xz, align 8, !tbaa !92
  %index.next1152 = add nuw i64 %index1147, 16    ; 2 uses
  %i.ya = icmp eq i64 %index.next1152, %n.vec1145
  br i1 %i.ya, label %middle.block1153, label %vector.body1146, !llvm.loop !62

middle.block1153:                                 ; preds = %vector.body1146
  %cmp.n1154 = icmp eq i64 %i.xg, %n.vec1145
  br i1 %cmp.n1154, label %._crit_edge515, label %vec.epilog.iter.check1156

vec.epilog.iter.check1156:                        ; preds = %middle.block1153
  %min.epilog.iters.check1158 = icmp eq i64 %i.xn, 0
  br i1 %min.epilog.iters.check1158, label %.lr.ph514.preheader, label %vec.epilog.ph1159, !prof !96

vec.epilog.ph1159:                                ; preds = %vector.main.loop.iter.check1142, %vec.epilog.iter.check1156
  %vec.epilog.resume.val1160 = phi i64 [ %n.vec1145, %vec.epilog.iter.check1156 ], [ 0, %vector.main.loop.iter.check1142 ]
  %n.vec1161 = and i64 %i.xg, -4                  ; 4 uses
  %i.yb = add i64 %indvars.iv752, %n.vec1161
  %i.yc = add i64 %.22520, %n.vec1161             ; 2 uses
  %i.yd = getelementptr [8 x i8], ptr %3, i64 %.22520
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv752
  br label %vec.epilog.vector.body1162

vec.epilog.vector.body1162:                       ; preds = %vec.epilog.vector.body1162, %vec.epilog.ph1159
  %index1163 = phi i64 [ %vec.epilog.resume.val1160, %vec.epilog.ph1159 ], [ %index.next1165, %vec.epilog.vector.body1162 ] ; 3 uses
  %i.yf = getelementptr [8 x i8], ptr %i.yd, i64 %index1163
  %wide.load1164 = load <4 x double>, ptr %i.yf, align 8, !tbaa !92
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %index1163
  store <4 x double> %wide.load1164, ptr %i.yg, align 8, !tbaa !92
  %index.next1165 = add nuw i64 %index1163, 4     ; 2 uses
  %i.yh = icmp eq i64 %index.next1165, %n.vec1161
  br i1 %i.yh, label %vec.epilog.middle.block1166, label %vec.epilog.vector.body1162, !llvm.loop !63

vec.epilog.middle.block1166:                      ; preds = %vec.epilog.vector.body1162
  %cmp.n1167 = icmp eq i64 %i.xg, %n.vec1161
  br i1 %cmp.n1167, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %iter.check1155, %vector.memcheck1140, %vec.epilog.iter.check1156, %vec.epilog.middle.block1166
  %indvars.iv754.ph = phi i64 [ %indvars.iv752, %iter.check1155 ], [ %indvars.iv752, %vector.memcheck1140 ], [ %i.xo, %vec.epilog.iter.check1156 ], [ %i.yb, %vec.epilog.middle.block1166 ]
  %indvars.iv750.ph = phi i64 [ %.22520, %iter.check1155 ], [ %.22520, %vector.memcheck1140 ], [ %i.xp, %vec.epilog.iter.check1156 ], [ %i.yc, %vec.epilog.middle.block1166 ]
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %.lr.ph514
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph514 ], [ %indvars.iv754.ph, %.lr.ph514.preheader ] ; 3 uses
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %.lr.ph514 ], [ %indvars.iv750.ph, %.lr.ph514.preheader ] ; 2 uses
  %i.yi = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv750
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !92
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv754
  store double %i.yj, ptr %i.yk, align 8, !tbaa !92
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %.not393.not = icmp samesign ult i64 %indvars.iv754, %i.xh
  br i1 %.not393.not, label %.lr.ph514, label %._crit_edge515, !llvm.loop !64

._crit_edge515:                                   ; preds = %.lr.ph514, %vec.epilog.middle.block1166, %middle.block1153
  %indvars.iv.next751.lcssa = phi i64 [ %i.yc, %vec.epilog.middle.block1166 ], [ %i.xp, %middle.block1153 ], [ %indvars.iv.next751, %.lr.ph514 ]
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, %i.wy
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count764
  %indvar.next1138 = add i64 %indvar1137, 1
  br i1 %exitcond765.not, label %.loopexit, label %iter.check1155, !llvm.loop !65

bb.v:                                             ; preds = %bb.j
  br i1 %.not379, label %.lr.ph605.preheader, label %.lr.ph582

.lr.ph582:                                        ; preds = %bb.v
  %i.yl = mul nuw nsw i32 %i.s, %.0328            ; 2 uses
  %i.ym = add nuw nsw i32 %i.s, 1
  %i.yn = zext nneg i32 %i.s to i64               ; 11 uses
  %i.yo = zext nneg i32 %i.yl to i64              ; 5 uses
  %scevgep1384.a = getelementptr i8, ptr %3, i64 8
  %scevgep1385 = getelementptr i8, ptr %4, i64 8
  %23 = tail call i64 @llvm.umax.i64(i64 %i.yn, i64 1)
  %broadcast.splatinsert1397.a = insertelement <4 x i64> poison, i64 %i.yn, i64 0
  %broadcast.splat1398.a = shufflevector <4 x i64> %broadcast.splatinsert1397.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.yp = shl nuw nsw <4 x i64> %broadcast.splat1398.a, splat (i64 2) ; 5 uses
  %i.yq = mul nuw nsw <4 x i64> %broadcast.splat1398.a, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1701.a = add nsw <4 x i64> %i.yp, %i.yp ; 2 uses
  %invariant.op1702 = add nsw <4 x i64> %invariant.op1701.a, %i.yp ; 2 uses
  %invariant.op1705 = add nsw <4 x i64> %invariant.op1702, %i.yp
  %broadcast.splatinsert1430 = insertelement <4 x i64> poison, i64 %i.yn, i64 0
  %broadcast.splat1431 = shufflevector <4 x i64> %broadcast.splatinsert1430, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.yr = mul nuw nsw <4 x i64> %broadcast.splat1431, <i64 0, i64 1, i64 2, i64 3>
  %i.ys = shl nuw nsw i64 %i.yn, 2
  %broadcast.splatinsert1433 = insertelement <4 x i64> poison, i64 %i.ys, i64 0
  %broadcast.splat1434 = shufflevector <4 x i64> %broadcast.splatinsert1433, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.w

.loopexit427.loopexit:                            ; preds = %.lr.ph576, %vec.epilog.middle.block1442, %middle.block1418
  %indvars.iv.next821.lcssa = phi i64 [ %i.aaf, %vec.epilog.middle.block1442 ], [ %i.zy, %middle.block1418 ], [ %indvars.iv.next821, %.lr.ph576 ]
  %i.yt = trunc nsw i64 %indvars.iv.next821.lcssa to i32
  br label %.loopexit427

.loopexit427:                                     ; preds = %.loopexit427.loopexit, %bb.w
  %.25.lcssa = phi i32 [ %.24580, %bb.w ], [ %i.yt, %.loopexit427.loopexit ] ; 2 uses
  %indvars.iv.next823 = add i32 %indvars.iv822, %i.ym
  %exitcond829.not = icmp eq i32 %i.yu, %i.q
  br i1 %exitcond829.not, label %.lr.ph597, label %bb.w, !llvm.loop !66

bb.w:                                             ; preds = %.lr.ph582, %.loopexit427
  %indvars.iv822 = phi i32 [ %i.s, %.lr.ph582 ], [ %indvars.iv.next823, %.loopexit427 ] ; 3 uses
  %.24580 = phi i32 [ 0, %.lr.ph582 ], [ %.25.lcssa, %.loopexit427 ] ; 2 uses
  %.8374579 = phi i32 [ 0, %.lr.ph582 ], [ %i.yu, %.loopexit427 ] ; 2 uses
  %i.yu = add nuw nsw i32 %.8374579, 1            ; 3 uses
  %i.yv = mul nuw nsw i32 %i.yu, %i.s
  %i.yw = add nuw nsw i32 %i.yv, %.8374579
  %i.yx = icmp slt i32 %i.yw, %i.yl
  br i1 %i.yx, label %iter.check1420, label %.loopexit427

iter.check1420:                                   ; preds = %bb.w
  %i.yy = sext i32 %indvars.iv822 to i64
  %i.yz = add nsw i64 %i.yn, %i.yy                ; 3 uses
  %24 = icmp slt i64 %i.yz, %i.yo                 ; 2 uses
  %umin1387 = zext i1 %24 to i64
  %smax1386 = tail call i64 @llvm.smax.i64(i64 %i.yz, i64 %i.yo)
  %i.za = add nsw i64 %i.yz, %umin1387
  %i.zb = sub i64 %smax1386, %i.za
  %i.zc = sext i32 %indvars.iv822 to i64          ; 9 uses
  %i.zd = sext i32 %.24580 to i64                 ; 8 uses
  %25 = select i1 %24, i64 2, i64 1
  %i.ze = udiv i64 %i.zb, %23
  %i.zf = add i64 %25, %i.ze                      ; 7 uses
  %min.iters.check1388 = icmp ult i64 %i.zf, 4
  br i1 %min.iters.check1388, label %.lr.ph576.preheader, label %vector.memcheck1389

vector.memcheck1389:                              ; preds = %iter.check1420
  %i.zg = shl nsw i64 %i.zc, 3
  %i.zh = getelementptr i8, ptr %4, i64 %i.zg
  %i.zi = add nsw i64 %i.yn, %i.zc                ; 3 uses
  %i.zj = tail call i64 @llvm.smax.i64(i64 %i.zi, i64 %i.yo)
  %26 = icmp slt i64 %i.zi, %i.yo
  %27 = zext i1 %26 to i64                        ; 2 uses
  %i.zk = add nsw i64 %i.zi, %27
  %28 = sub i64 %i.zj, %i.zk
  %i.zl = udiv i64 %28, %i.yn
  %29 = add i64 %i.zl, %27                        ; 2 uses
  %i.zm = mul i64 %29, %i.yn
  %i.zn = add i64 %i.zm, %i.zc
  %i.zo = shl i64 %i.zn, 3
  %i.zp = getelementptr i8, ptr %scevgep1385, i64 %i.zo
  %i.zq = shl nsw i64 %i.zd, 3
  %i.zr = getelementptr i8, ptr %3, i64 %i.zq
  %i.zs = add i64 %29, %i.zd
  %i.zt = shl i64 %i.zs, 3
  %i.zu = getelementptr i8, ptr %scevgep1384.a, i64 %i.zt
  %bound01390 = icmp ult ptr %i.zh, %i.zu
  %bound11391 = icmp ult ptr %i.zr, %i.zp
  %found.conflict1392 = and i1 %bound01390, %bound11391
  br i1 %found.conflict1392, label %.lr.ph576.preheader, label %vector.main.loop.iter.check1393

vector.main.loop.iter.check1393:                  ; preds = %vector.memcheck1389
  %min.iters.check1394 = icmp ult i64 %i.zf, 16
  br i1 %min.iters.check1394, label %vec.epilog.ph1424, label %vector.ph1395

vector.ph1395:                                    ; preds = %vector.main.loop.iter.check1393
  %i.zv = and i64 %i.zf, 12
  %n.vec1396 = and i64 %i.zf, -16                 ; 5 uses
  %i.zw = mul i64 %n.vec1396, %i.yn
  %i.zx = add i64 %i.zw, %i.zc                    ; 2 uses
  %i.zy = add i64 %n.vec1396, %i.zd               ; 2 uses
  %broadcast.splatinsert1399 = insertelement <4 x i64> poison, i64 %i.zc, i64 0
  %broadcast.splat1400 = shufflevector <4 x i64> %broadcast.splatinsert1399, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1401 = add nsw <4 x i64> %broadcast.splat1400, %i.yq
  %invariant.gep1703 = getelementptr [8 x i8], ptr %3, i64 %i.zd
  br label %vector.body1402

vector.body1402:                                  ; preds = %vector.ph1395, %vector.body1402
  %index1403 = phi i64 [ 0, %vector.ph1395 ], [ %index.next1416, %vector.body1402 ] ; 2 uses
  %vec.ind1404 = phi <4 x i64> [ %induction1401, %vector.ph1395 ], [ %vec.ind.next1417.reass, %vector.body1402 ] ; 5 uses
  %step.add1405 = add nsw <4 x i64> %vec.ind1404, %i.yp
  %step.add.21406.reass = add nsw <4 x i64> %vec.ind1404, %invariant.op1701.a
  %step.add.31407.reass = add nsw <4 x i64> %vec.ind1404, %invariant.op1702
  %gep1704 = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %index1403 ; 4 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %gep1704, i64 32
  %i.aaa = getelementptr inbounds nuw i8, ptr %gep1704, i64 64
  %i.aab = getelementptr inbounds nuw i8, ptr %gep1704, i64 96
  %wide.load1408.a = load <4 x double>, ptr %gep1704, align 8, !tbaa !92, !alias.scope !102
  %wide.load1409.a = load <4 x double>, ptr %i.zz, align 8, !tbaa !92, !alias.scope !102
  %wide.load1410 = load <4 x double>, ptr %i.aaa, align 8, !tbaa !92, !alias.scope !102
  %wide.load1411 = load <4 x double>, ptr %i.aab, align 8, !tbaa !92, !alias.scope !102
  %wide.gep1412.a = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %vec.ind1404
  %wide.gep1413.a = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add1405
  %wide.gep1414 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add.21406.reass
  %wide.gep1415 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add.31407.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1408.a, <4 x ptr> align 8 %wide.gep1412.a, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1409.a, <4 x ptr> align 8 %wide.gep1413.a, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1410, <4 x ptr> align 8 %wide.gep1414, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1411, <4 x ptr> align 8 %wide.gep1415, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1416 = add nuw i64 %index1403, 16    ; 2 uses
  %vec.ind.next1417.reass = add nsw <4 x i64> %vec.ind1404, %invariant.op1705
  %i.aac = icmp eq i64 %index.next1416, %n.vec1396
  br i1 %i.aac, label %middle.block1418, label %vector.body1402, !llvm.loop !70

middle.block1418:                                 ; preds = %vector.body1402
  %cmp.n1419 = icmp eq i64 %i.zf, %n.vec1396
  br i1 %cmp.n1419, label %.loopexit427.loopexit, label %vec.epilog.iter.check1421

vec.epilog.iter.check1421:                        ; preds = %middle.block1418
  %min.epilog.iters.check1423 = icmp eq i64 %i.zv, 0
  br i1 %min.epilog.iters.check1423, label %.lr.ph576.preheader, label %vec.epilog.ph1424, !prof !96

vec.epilog.ph1424:                                ; preds = %vector.main.loop.iter.check1393, %vec.epilog.iter.check1421
  %vec.epilog.resume.val1425 = phi i64 [ %n.vec1396, %vec.epilog.iter.check1421 ], [ 0, %vector.main.loop.iter.check1393 ]
  %bc.resume.val1426 = phi i64 [ %i.zx, %vec.epilog.iter.check1421 ], [ %i.zc, %vector.main.loop.iter.check1393 ]
  %n.vec1427 = and i64 %i.zf, -4                  ; 4 uses
  %i.aad = mul i64 %n.vec1427, %i.yn
  %i.aae = add i64 %i.aad, %i.zc
  %i.aaf = add i64 %n.vec1427, %i.zd              ; 2 uses
  %broadcast.splatinsert1428 = insertelement <4 x i64> poison, i64 %bc.resume.val1426, i64 0
  %broadcast.splat1429 = shufflevector <4 x i64> %broadcast.splatinsert1428, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1432 = add nsw <4 x i64> %broadcast.splat1429, %i.yr
  %invariant.gep1706.a = getelementptr [8 x i8], ptr %3, i64 %i.zd
  br label %vec.epilog.vector.body1435

vec.epilog.vector.body1435:                       ; preds = %vec.epilog.vector.body1435, %vec.epilog.ph1424
  %index1436 = phi i64 [ %vec.epilog.resume.val1425, %vec.epilog.ph1424 ], [ %index.next1440, %vec.epilog.vector.body1435 ] ; 2 uses
  %vec.ind1437 = phi <4 x i64> [ %induction1432, %vec.epilog.ph1424 ], [ %vec.ind.next1441, %vec.epilog.vector.body1435 ] ; 2 uses
  %gep1707.a = getelementptr [8 x i8], ptr %invariant.gep1706.a, i64 %index1436
  %wide.load1438 = load <4 x double>, ptr %gep1707.a, align 8, !tbaa !92, !alias.scope !102
  %wide.gep1439 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %vec.ind1437
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1438, <4 x ptr> align 8 %wide.gep1439, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !103, !noalias !102
  %index.next1440 = add nuw i64 %index1436, 4     ; 2 uses
  %vec.ind.next1441 = add nsw <4 x i64> %vec.ind1437, %broadcast.splat1434
  %i.aag = icmp eq i64 %index.next1440, %n.vec1427
  br i1 %i.aag, label %vec.epilog.middle.block1442, label %vec.epilog.vector.body1435, !llvm.loop !71

vec.epilog.middle.block1442:                      ; preds = %vec.epilog.vector.body1435
  %cmp.n1443 = icmp eq i64 %i.zf, %n.vec1427
  br i1 %cmp.n1443, label %.loopexit427.loopexit, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %iter.check1420, %vector.memcheck1389, %vec.epilog.iter.check1421, %vec.epilog.middle.block1442
  %indvars.iv824.ph = phi i64 [ %i.zc, %iter.check1420 ], [ %i.zc, %vector.memcheck1389 ], [ %i.zx, %vec.epilog.iter.check1421 ], [ %i.aae, %vec.epilog.middle.block1442 ]
  %indvars.iv820.ph = phi i64 [ %i.zd, %iter.check1420 ], [ %i.zd, %vector.memcheck1389 ], [ %i.zy, %vec.epilog.iter.check1421 ], [ %i.aaf, %vec.epilog.middle.block1442 ]
  br label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %.lr.ph576
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph576 ], [ %indvars.iv824.ph, %.lr.ph576.preheader ] ; 2 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %.lr.ph576 ], [ %indvars.iv820.ph, %.lr.ph576.preheader ] ; 2 uses
  %i.aah = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv820
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !92
  %i.aaj = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv824
  store double %i.aai, ptr %i.aaj, align 8, !tbaa !92
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1 ; 2 uses
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, %i.yn ; 2 uses
  %i.aak = icmp slt i64 %indvars.iv.next825, %i.yo
  br i1 %i.aak, label %.lr.ph576, label %.loopexit427.loopexit, !llvm.loop !72

.lr.ph597:                                        ; preds = %.loopexit427
  %i.aal = add nuw nsw i32 %i.s, 1
  %i.aam = sub i64 %i.b, %i.a
  %invariant.op1716.a = add i64 %i.aam, -1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph597, %._crit_edge590
  %indvars.iv840 = phi i32 [ %i.q, %.lr.ph597 ], [ %indvars.iv.next841, %._crit_edge590 ] ; 3 uses
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 4 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.adf, %._crit_edge590 ] ; 3 uses
  %i.aan = xor i32 %.10364593, -1
  %i.aao = add nsw i32 %i.q, %i.aan               ; 3 uses
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = add nuw nsw i64 %i.aap, 1              ; 5 uses
  %i.aar = xor i32 %.10364593, -1
  %i.aas = add nsw i32 %i.q, %i.aar
  %i.aat = add i32 %i.aas, %indvars.iv833         ; 2 uses
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.aat
  br i1 %.not389585, label %._crit_edge590, label %iter.check1464

iter.check1464:                                   ; preds = %bb.x
  %i.aau = sext i32 %indvars.iv833 to i64         ; 7 uses
  %i.aav = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1448 = icmp ult i32 %i.aao, 3
  br i1 %min.iters.check1448, label %.lr.ph589.preheader, label %vector.memcheck1449

vector.memcheck1449:                              ; preds = %iter.check1464
  %i.aaw = sub nsw i64 %i.aau, %i.aav
  %i.aax = shl nsw i64 %i.aaw, 3
  %.reass1717 = add i64 %i.aax, %invariant.op1716.a
  %diff.check1450 = icmp ult i64 %.reass1717, 127
  br i1 %diff.check1450, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1451

vector.main.loop.iter.check1451:                  ; preds = %vector.memcheck1449
  %min.iters.check1452 = icmp ult i32 %i.aao, 15
  br i1 %min.iters.check1452, label %vec.epilog.ph1468, label %vector.ph1453

vector.ph1453:                                    ; preds = %vector.main.loop.iter.check1451
  %i.aay = and i64 %i.aaq, 12
  %n.vec1454 = and i64 %i.aaq, 8589934576         ; 5 uses
  %i.aaz = add nsw i64 %n.vec1454, %i.aau
  %i.aba = add nsw i64 %n.vec1454, %i.aav         ; 2 uses
  %invariant.gep1708.a = getelementptr [8 x i8], ptr %3, i64 %i.aav
  %invariant.gep1710.a = getelementptr [8 x i8], ptr %4, i64 %i.aau
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.ph1453, %vector.body1455
  %index1456 = phi i64 [ 0, %vector.ph1453 ], [ %index.next1461, %vector.body1455 ] ; 3 uses
  %gep1709.a = getelementptr [8 x i8], ptr %invariant.gep1708.a, i64 %index1456 ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %gep1709.a, i64 32
  %i.abc = getelementptr inbounds nuw i8, ptr %gep1709.a, i64 64
  %i.abd = getelementptr inbounds nuw i8, ptr %gep1709.a, i64 96
  %wide.load1457.a = load <4 x double>, ptr %gep1709.a, align 8, !tbaa !92
  %wide.load1458.a = load <4 x double>, ptr %i.abb, align 8, !tbaa !92
  %wide.load1459 = load <4 x double>, ptr %i.abc, align 8, !tbaa !92
  %wide.load1460 = load <4 x double>, ptr %i.abd, align 8, !tbaa !92
  %gep1711.a = getelementptr [8 x i8], ptr %invariant.gep1710.a, i64 %index1456 ; 4 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %gep1711.a, i64 32
  %i.abf = getelementptr inbounds nuw i8, ptr %gep1711.a, i64 64
  %i.abg = getelementptr inbounds nuw i8, ptr %gep1711.a, i64 96
  store <4 x double> %wide.load1457.a, ptr %gep1711.a, align 8, !tbaa !92
  store <4 x double> %wide.load1458.a, ptr %i.abe, align 8, !tbaa !92
  store <4 x double> %wide.load1459, ptr %i.abf, align 8, !tbaa !92
  store <4 x double> %wide.load1460, ptr %i.abg, align 8, !tbaa !92
  %index.next1461 = add nuw i64 %index1456, 16    ; 2 uses
  %i.abh = icmp eq i64 %index.next1461, %n.vec1454
  br i1 %i.abh, label %middle.block1462, label %vector.body1455, !llvm.loop !73

middle.block1462:                                 ; preds = %vector.body1455
  %cmp.n1463 = icmp eq i64 %i.aaq, %n.vec1454
  br i1 %cmp.n1463, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1465

vec.epilog.iter.check1465:                        ; preds = %middle.block1462
  %min.epilog.iters.check1467 = icmp eq i64 %i.aay, 0
  br i1 %min.epilog.iters.check1467, label %.lr.ph589.preheader, label %vec.epilog.ph1468, !prof !96

vec.epilog.ph1468:                                ; preds = %vector.main.loop.iter.check1451, %vec.epilog.iter.check1465
  %vec.epilog.resume.val1469 = phi i64 [ %n.vec1454, %vec.epilog.iter.check1465 ], [ 0, %vector.main.loop.iter.check1451 ]
  %n.vec1470 = and i64 %i.aaq, 8589934588         ; 4 uses
  %i.abi = add nsw i64 %n.vec1470, %i.aau
  %i.abj = add nsw i64 %n.vec1470, %i.aav         ; 2 uses
  %invariant.gep1712 = getelementptr [8 x i8], ptr %3, i64 %i.aav
  %invariant.gep1714 = getelementptr [8 x i8], ptr %4, i64 %i.aau
  br label %vec.epilog.vector.body1471

vec.epilog.vector.body1471:                       ; preds = %vec.epilog.vector.body1471, %vec.epilog.ph1468
  %index1472 = phi i64 [ %vec.epilog.resume.val1469, %vec.epilog.ph1468 ], [ %index.next1474, %vec.epilog.vector.body1471 ] ; 3 uses
  %gep1713 = getelementptr [8 x i8], ptr %invariant.gep1712, i64 %index1472
  %wide.load1473 = load <4 x double>, ptr %gep1713, align 8, !tbaa !92
  %gep1715 = getelementptr [8 x i8], ptr %invariant.gep1714, i64 %index1472
  store <4 x double> %wide.load1473, ptr %gep1715, align 8, !tbaa !92
  %index.next1474 = add nuw i64 %index1472, 4     ; 2 uses
  %i.abk = icmp eq i64 %index.next1474, %n.vec1470
  br i1 %i.abk, label %vec.epilog.middle.block1475, label %vec.epilog.vector.body1471, !llvm.loop !74

vec.epilog.middle.block1475:                      ; preds = %vec.epilog.vector.body1471
  %cmp.n1476 = icmp eq i64 %i.aaq, %n.vec1470
  br i1 %cmp.n1476, label %._crit_edge590.loopexit, label %.lr.ph589.preheader

.lr.ph589.preheader:                              ; preds = %iter.check1464, %vector.memcheck1449, %vec.epilog.iter.check1465, %vec.epilog.middle.block1475
  %indvars.iv835.ph = phi i64 [ %i.aau, %iter.check1464 ], [ %i.aau, %vector.memcheck1449 ], [ %i.aaz, %vec.epilog.iter.check1465 ], [ %i.abi, %vec.epilog.middle.block1475 ] ; 3 uses
  %indvars.iv831.ph = phi i64 [ %i.aav, %iter.check1464 ], [ %i.aav, %vector.memcheck1449 ], [ %i.aba, %vec.epilog.iter.check1465 ], [ %i.abj, %vec.epilog.middle.block1475 ] ; 2 uses
  %i.abl = trunc i64 %indvars.iv835.ph to i32     ; 2 uses
  %i.abm = sub i32 %indvars.iv840, %i.abl
  %i.abn = sub i32 %i.aat, %i.abl
  %xtraiter1639 = and i32 %i.abm, 7               ; 2 uses
  %lcmp.mod1640.not = icmp eq i32 %xtraiter1639, 0
  br i1 %lcmp.mod1640.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol

.lr.ph589.prol:                                   ; preds = %.lr.ph589.preheader, %.lr.ph589.prol
  %indvars.iv835.prol = phi i64 [ %indvars.iv.next836.prol, %.lr.ph589.prol ], [ %indvars.iv835.ph, %.lr.ph589.preheader ] ; 2 uses
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %.lr.ph589.prol ], [ %indvars.iv831.ph, %.lr.ph589.preheader ] ; 2 uses
  %prol.iter1641 = phi i32 [ %prol.iter1641.next, %.lr.ph589.prol ], [ 0, %.lr.ph589.preheader ]
  %i.abo = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv831.prol
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !92
  %i.abq = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv835.prol
  store double %i.abp, ptr %i.abq, align 8, !tbaa !92
  %indvars.iv.next832.prol = add nsw i64 %indvars.iv831.prol, 1 ; 3 uses
  %indvars.iv.next836.prol = add nsw i64 %indvars.iv835.prol, 1 ; 2 uses
  %prol.iter1641.next = add i32 %prol.iter1641, 1 ; 2 uses
  %prol.iter1641.cmp.not = icmp eq i32 %prol.iter1641.next, %xtraiter1639
  br i1 %prol.iter1641.cmp.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol, !llvm.loop !75

.lr.ph589.prol.loopexit:                          ; preds = %.lr.ph589.prol, %.lr.ph589.preheader
  %indvars.iv.next832.lcssa1601.unr = phi i64 [ poison, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %indvars.iv835.unr = phi i64 [ %indvars.iv835.ph, %.lr.ph589.preheader ], [ %indvars.iv.next836.prol, %.lr.ph589.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %i.abr = icmp ult i32 %i.abn, 7
  br i1 %i.abr, label %._crit_edge590.loopexit, label %.lr.ph589

.lr.ph589:                                        ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589
  %indvars.iv835 = phi i64 [ %indvars.iv.next836.7, %.lr.ph589 ], [ %indvars.iv835.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %.lr.ph589 ], [ %indvars.iv831.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %i.abs = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv831
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !92
  %i.abu = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv835
  store double %i.abt, ptr %i.abu, align 8, !tbaa !92
  %i.abv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.abw = getelementptr i8, ptr %i.abv, i64 8
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !92
  %i.aby = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.abz = getelementptr i8, ptr %i.aby, i64 8
  store double %i.abx, ptr %i.abz, align 8, !tbaa !92
  %i.aca = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acb = getelementptr i8, ptr %i.aca, i64 16
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !92
  %i.acd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.ace = getelementptr i8, ptr %i.acd, i64 16
  store double %i.acc, ptr %i.ace, align 8, !tbaa !92
  %i.acf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acg = getelementptr i8, ptr %i.acf, i64 24
  %i.ach = load double, ptr %i.acg, align 8, !tbaa !92
  %i.aci = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.acj = getelementptr i8, ptr %i.aci, i64 24
  store double %i.ach, ptr %i.acj, align 8, !tbaa !92
  %i.ack = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acl = getelementptr i8, ptr %i.ack, i64 32
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !92
  %i.acn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.aco = getelementptr i8, ptr %i.acn, i64 32
  store double %i.acm, ptr %i.aco, align 8, !tbaa !92
  %i.acp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acq = getelementptr i8, ptr %i.acp, i64 40
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !92
  %i.acs = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.act = getelementptr i8, ptr %i.acs, i64 40
  store double %i.acr, ptr %i.act, align 8, !tbaa !92
  %i.acu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acv = getelementptr i8, ptr %i.acu, i64 48
  %i.acw = load double, ptr %i.acv, align 8, !tbaa !92
  %i.acx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.acy = getelementptr i8, ptr %i.acx, i64 48
  store double %i.acw, ptr %i.acy, align 8, !tbaa !92
  %i.acz = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.ada = getelementptr i8, ptr %i.acz, i64 56
  %i.adb = load double, ptr %i.ada, align 8, !tbaa !92
  %i.adc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.add = getelementptr i8, ptr %i.adc, i64 56
  store double %i.adb, ptr %i.add, align 8, !tbaa !92
  %indvars.iv.next832.7 = add nsw i64 %indvars.iv831, 8 ; 2 uses
  %indvars.iv.next836.7 = add nsw i64 %indvars.iv835, 8 ; 2 uses
  %lftr.wideiv842.7 = trunc i64 %indvars.iv.next836.7 to i32
  %exitcond843.not.7 = icmp eq i32 %indvars.iv840, %lftr.wideiv842.7
  br i1 %exitcond843.not.7, label %._crit_edge590.loopexit, label %.lr.ph589, !llvm.loop !76

._crit_edge590.loopexit:                          ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589, %vec.epilog.middle.block1475, %middle.block1462
  %indvars.iv.next832.lcssa = phi i64 [ %i.abj, %vec.epilog.middle.block1475 ], [ %i.aba, %middle.block1462 ], [ %indvars.iv.next832.lcssa1601.unr, %.lr.ph589.prol.loopexit ], [ %indvars.iv.next832.7, %.lr.ph589 ]
  %i.ade = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.ade, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.aal
  %i.adf = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.adf, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !77

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.adg = add nuw nsw i32 %i.q, 1
  %i.adh = mul i32 %i.adg, %i.s
  %i.adi = sext i32 %i.adh to i64                 ; 4 uses
  %i.adj = zext nneg i32 %i.s to i64              ; 14 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.adk = shl nuw nsw i64 %i.adj, 3
  %i.adl = shl nsw i64 %i.adi, 3
  %i.adm = add i64 %i.adl, %i.b
  %i.adn = add nuw nsw i64 %i.adj, 1
  %30 = sub nsw i64 0, %i.adj                     ; 2 uses
  %invariant.op1718 = sub i64 1, %i.adi
  br label %iter.check1498

iter.check1498:                                   ; preds = %.lr.ph605.preheader, %.loopexit1588
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1588 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.adi, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1588 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1588 ] ; 7 uses
  %i.ado = mul i64 %i.adn, %indvars.iv855
  %i.adp = add i64 %i.ado, %i.adi
  %smax1481 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.adp)
  %i.adq = mul i64 %indvars.iv855, %30
  %.reass1719 = add i64 %i.adq, %invariant.op1718
  %i.adr = add i64 %smax1481, %.reass1719         ; 7 uses
  %i.ads = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1482 = icmp ult i64 %i.adr, 4
  br i1 %min.iters.check1482, label %vec.epilog.scalar.ph1500.preheader, label %vector.memcheck1483

vector.memcheck1483:                              ; preds = %iter.check1498
  %i.adt = mul i64 %indvars.iv855, %i.adk
  %i.adu = shl i64 %.28603, 3
  %i.adv = add i64 %i.adm, %i.adt
  %i.adw = add i64 %i.adu, %i.a
  %i.adx = sub i64 %i.adw, %i.adv
  %diff.check1484 = icmp ugt i64 %i.adx, -128
  br i1 %diff.check1484, label %vec.epilog.scalar.ph1500.preheader, label %vector.main.loop.iter.check1485

vector.main.loop.iter.check1485:                  ; preds = %vector.memcheck1483
  %min.iters.check1486 = icmp ult i64 %i.adr, 16
  br i1 %min.iters.check1486, label %vec.epilog.ph1502, label %vector.ph1487

vector.ph1487:                                    ; preds = %vector.main.loop.iter.check1485
  %i.ady = and i64 %i.adr, 12
  %n.vec1488 = and i64 %i.adr, -16                ; 5 uses
  %i.adz = add i64 %indvars.iv848, %n.vec1488
  %i.aea = add i64 %.28603, %n.vec1488            ; 2 uses
  %i.aeb = getelementptr [8 x i8], ptr %3, i64 %.28603
  %i.aec = getelementptr [8 x i8], ptr %4, i64 %indvars.iv848
  br label %vector.body1489

vector.body1489:                                  ; preds = %vector.ph1487, %vector.body1489
  %index1490 = phi i64 [ 0, %vector.ph1487 ], [ %index.next1495, %vector.body1489 ] ; 3 uses
  %i.aed = getelementptr [8 x i8], ptr %i.aeb, i64 %index1490 ; 4 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 32
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 64
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aed, i64 96
  %wide.load1491.a = load <4 x double>, ptr %i.aed, align 8, !tbaa !92
  %wide.load1492.a = load <4 x double>, ptr %i.aee, align 8, !tbaa !92
  %wide.load1493 = load <4 x double>, ptr %i.aef, align 8, !tbaa !92
  %wide.load1494 = load <4 x double>, ptr %i.aeg, align 8, !tbaa !92
  %i.aeh = getelementptr [8 x i8], ptr %i.aec, i64 %index1490 ; 4 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 32
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeh, i64 64
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeh, i64 96
  store <4 x double> %wide.load1491.a, ptr %i.aeh, align 8, !tbaa !92
  store <4 x double> %wide.load1492.a, ptr %i.aei, align 8, !tbaa !92
  store <4 x double> %wide.load1493, ptr %i.aej, align 8, !tbaa !92
  store <4 x double> %wide.load1494, ptr %i.aek, align 8, !tbaa !92
  %index.next1495 = add nuw i64 %index1490, 16    ; 2 uses
  %i.ael = icmp eq i64 %index.next1495, %n.vec1488
  br i1 %i.ael, label %middle.block1496, label %vector.body1489, !llvm.loop !78

middle.block1496:                                 ; preds = %vector.body1489
  %cmp.n1497 = icmp eq i64 %i.adr, %n.vec1488
  br i1 %cmp.n1497, label %.loopexit1588, label %vec.epilog.iter.check1499

vec.epilog.iter.check1499:                        ; preds = %middle.block1496
  %min.epilog.iters.check1501 = icmp eq i64 %i.ady, 0
  br i1 %min.epilog.iters.check1501, label %vec.epilog.scalar.ph1500.preheader, label %vec.epilog.ph1502, !prof !96

vec.epilog.ph1502:                                ; preds = %vector.main.loop.iter.check1485, %vec.epilog.iter.check1499
  %vec.epilog.resume.val1503 = phi i64 [ %n.vec1488, %vec.epilog.iter.check1499 ], [ 0, %vector.main.loop.iter.check1485 ]
  %n.vec1504 = and i64 %i.adr, -4                 ; 4 uses
  %i.aem = add i64 %indvars.iv848, %n.vec1504
  %i.aen = add i64 %.28603, %n.vec1504            ; 2 uses
  %i.aeo = getelementptr [8 x i8], ptr %3, i64 %.28603
  %i.aep = getelementptr [8 x i8], ptr %4, i64 %indvars.iv848
  br label %vec.epilog.vector.body1505

vec.epilog.vector.body1505:                       ; preds = %vec.epilog.vector.body1505, %vec.epilog.ph1502
  %index1506 = phi i64 [ %vec.epilog.resume.val1503, %vec.epilog.ph1502 ], [ %index.next1508, %vec.epilog.vector.body1505 ] ; 3 uses
  %i.aeq = getelementptr [8 x i8], ptr %i.aeo, i64 %index1506
  %wide.load1507 = load <4 x double>, ptr %i.aeq, align 8, !tbaa !92
  %i.aer = getelementptr [8 x i8], ptr %i.aep, i64 %index1506
  store <4 x double> %wide.load1507, ptr %i.aer, align 8, !tbaa !92
  %index.next1508 = add nuw i64 %index1506, 4     ; 2 uses
  %i.aes = icmp eq i64 %index.next1508, %n.vec1504
  br i1 %i.aes, label %vec.epilog.middle.block1509, label %vec.epilog.vector.body1505, !llvm.loop !79

vec.epilog.middle.block1509:                      ; preds = %vec.epilog.vector.body1505
  %cmp.n1510 = icmp eq i64 %i.adr, %n.vec1504
  br i1 %cmp.n1510, label %.loopexit1588, label %vec.epilog.scalar.ph1500.preheader

vec.epilog.scalar.ph1500.preheader:               ; preds = %iter.check1498, %vector.memcheck1483, %vec.epilog.iter.check1499, %vec.epilog.middle.block1509
  %indvars.iv850.ph = phi i64 [ %indvars.iv848, %iter.check1498 ], [ %indvars.iv848, %vector.memcheck1483 ], [ %i.adz, %vec.epilog.iter.check1499 ], [ %i.aem, %vec.epilog.middle.block1509 ]
  %indvars.iv846.ph = phi i64 [ %.28603, %iter.check1498 ], [ %.28603, %vector.memcheck1483 ], [ %i.aea, %vec.epilog.iter.check1499 ], [ %i.aen, %vec.epilog.middle.block1509 ]
  br label %vec.epilog.scalar.ph1500

vec.epilog.scalar.ph1500:                         ; preds = %vec.epilog.scalar.ph1500.preheader, %vec.epilog.scalar.ph1500
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1500 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1500.preheader ] ; 3 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %vec.epilog.scalar.ph1500 ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1500.preheader ] ; 2 uses
  %i.aet = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv846
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !92
  %i.aev = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv850
  store double %i.aeu, ptr %i.aev, align 8, !tbaa !92
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1
  %.not386.not = icmp slt i64 %indvars.iv850, %i.ads
  br i1 %.not386.not, label %vec.epilog.scalar.ph1500, label %.loopexit1588, !llvm.loop !80

.loopexit1588:                                    ; preds = %vec.epilog.scalar.ph1500, %vec.epilog.middle.block1509, %middle.block1496
  %indvars.iv.next847.lcssa = phi i64 [ %i.aen, %vec.epilog.middle.block1509 ], [ %i.aea, %middle.block1496 ], [ %indvars.iv.next847, %vec.epilog.scalar.ph1500 ] ; 2 uses
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, %i.adj
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %.lr.ph619, label %iter.check1498, !llvm.loop !81

.lr.ph619:                                        ; preds = %.loopexit1588
  %i.aew = zext nneg i32 %i.s to i64
  %wide.trip.count872 = zext nneg i32 %i.q to i64
  %scevgep1526 = getelementptr i8, ptr %3, i64 8
  %umax1527 = tail call i64 @llvm.umax.i64(i64 %i.adj, i64 1) ; 2 uses
  %broadcast.splatinsert1539 = insertelement <4 x i64> poison, i64 %i.adj, i64 0
  %broadcast.splat1540 = shufflevector <4 x i64> %broadcast.splatinsert1539, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aex = shl nuw nsw <4 x i64> %broadcast.splat1540, splat (i64 2) ; 5 uses
  %i.aey = mul nuw nsw <4 x i64> %broadcast.splat1540, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1720 = add nuw nsw <4 x i64> %i.aex, %i.aex ; 2 uses
  %invariant.op1721 = add nuw nsw <4 x i64> %invariant.op1720, %i.aex ; 2 uses
  %invariant.op1722 = add nuw nsw <4 x i64> %invariant.op1721, %i.aex
  %broadcast.splatinsert1572 = insertelement <4 x i64> poison, i64 %i.adj, i64 0
  %broadcast.splat1573 = shufflevector <4 x i64> %broadcast.splatinsert1572, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.aez = mul nuw nsw <4 x i64> %broadcast.splat1573, <i64 0, i64 1, i64 2, i64 3>
  %i.afa = shl nuw nsw i64 %i.adj, 2
  %broadcast.splatinsert1575 = insertelement <4 x i64> poison, i64 %i.afa, i64 0
  %broadcast.splat1576 = shufflevector <4 x i64> %broadcast.splatinsert1575, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1562

iter.check1562:                                   ; preds = %.lr.ph619, %._crit_edge613
  %indvars.iv864 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next865, %._crit_edge613 ] ; 17 uses
  %.30617 = phi i64 [ %indvars.iv.next847.lcssa, %.lr.ph619 ], [ %indvars.iv.next863.lcssa, %._crit_edge613 ]
  %indvars871 = trunc i64 %indvars.iv864 to i32
  %i.afb = add i32 %i.q, %indvars871
  %i.afc = mul i32 %i.afb, %i.s
  %i.afd = sext i32 %i.afc to i64                 ; 2 uses
  %i.afe = add nsw i64 %indvars.iv864, %i.afd
  %i.aff = add nuw i64 %indvars.iv864, %i.adj     ; 2 uses
  %i.afg = add nuw i64 %indvars.iv864, 1
  %i.afh = trunc i64 %indvars.iv864 to i32
  %i.afi = add i32 %i.q, %i.afh
  %i.afj = mul i32 %i.s, %i.afi
  %i.afk = sext i32 %i.afj to i64
  %31 = add i64 %i.afg, %i.afk                    ; 2 uses
  %32 = icmp slt i64 %i.aff, %31                  ; 2 uses
  %umin1529 = zext i1 %32 to i64
  %i.afl = add nuw i64 %indvars.iv864, %i.adj
  %smax1528 = tail call i64 @llvm.smax.i64(i64 %i.aff, i64 %31)
  %33 = add i64 %i.afl, %umin1529
  %34 = sub i64 %smax1528, %33
  %sext1595 = shl i64 %.30617, 32                 ; 2 uses
  %i.afm = ashr exact i64 %sext1595, 32           ; 6 uses
  %35 = select i1 %32, i64 2, i64 1
  %i.afn = udiv i64 %34, %umax1527
  %i.afo = add i64 %35, %i.afn                    ; 7 uses
  %min.iters.check1530 = icmp ult i64 %i.afo, 4
  br i1 %min.iters.check1530, label %.lr.ph612.preheader, label %vector.memcheck1531

vector.memcheck1531:                              ; preds = %iter.check1562
  %i.afp = shl i64 %indvars.iv864, 3              ; 2 uses
  %i.afq = getelementptr i8, ptr %4, i64 %i.afp
  %i.afr = add nuw i64 %indvars.iv864, %i.adj
  %i.afs = add nuw i64 %indvars.iv864, 1
  %i.aft = add i64 %i.afs, %i.afd
  %i.afu = tail call i64 @llvm.smax.i64(i64 %i.afr, i64 %i.aft)
  %i.afv = sub i64 %30, %indvars.iv864
  %i.afw = add i64 %i.afu, %i.afv                 ; 2 uses
  %36 = icmp ne i64 %i.afw, 0
  %37 = zext i1 %36 to i64                        ; 2 uses
  %38 = sub i64 %i.afw, %37
  %i.afx = udiv i64 %38, %umax1527
  %39 = add i64 %i.afx, %37                       ; 2 uses
  %i.afy = mul i64 %39, %i.adj
  %i.afz = shl i64 %i.afy, 3
  %i.aga = getelementptr i8, ptr %4, i64 %i.afp
  %i.agb = getelementptr i8, ptr %i.aga, i64 8
  %i.agc = getelementptr i8, ptr %i.agb, i64 %i.afz
  %i.agd = ashr exact i64 %sext1595, 29           ; 2 uses
  %i.age = getelementptr i8, ptr %3, i64 %i.agd
  %i.agf = shl i64 %39, 3
  %i.agg = getelementptr i8, ptr %scevgep1526, i64 %i.agf
  %i.agh = getelementptr i8, ptr %i.agg, i64 %i.agd
  %bound01532 = icmp ult ptr %i.afq, %i.agh
  %bound11533 = icmp ult ptr %i.age, %i.agc
  %found.conflict1534 = and i1 %bound01532, %bound11533
  br i1 %found.conflict1534, label %.lr.ph612.preheader, label %vector.main.loop.iter.check1535

vector.main.loop.iter.check1535:                  ; preds = %vector.memcheck1531
  %min.iters.check1536 = icmp ult i64 %i.afo, 16
  br i1 %min.iters.check1536, label %vec.epilog.ph1566, label %vector.ph1537

vector.ph1537:                                    ; preds = %vector.main.loop.iter.check1535
  %i.agi = and i64 %i.afo, 12
  %n.vec1538 = and i64 %i.afo, -16                ; 5 uses
  %i.agj = mul i64 %n.vec1538, %i.adj
  %i.agk = add i64 %indvars.iv864, %i.agj         ; 2 uses
  %i.agl = add i64 %i.afm, %n.vec1538             ; 2 uses
  %broadcast.splatinsert1541 = insertelement <4 x i64> poison, i64 %indvars.iv864, i64 0
  %broadcast.splat1542 = shufflevector <4 x i64> %broadcast.splatinsert1541, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1543 = add nuw nsw <4 x i64> %broadcast.splat1542, %i.aey
  %i.agm = getelementptr [8 x i8], ptr %3, i64 %i.afm
  br label %vector.body1544

vector.body1544:                                  ; preds = %vector.ph1537, %vector.body1544
  %index1545 = phi i64 [ 0, %vector.ph1537 ], [ %index.next1558, %vector.body1544 ] ; 2 uses
  %vec.ind1546 = phi <4 x i64> [ %induction1543, %vector.ph1537 ], [ %vec.ind.next1559.reass, %vector.body1544 ] ; 5 uses
  %step.add1547 = add nuw nsw <4 x i64> %vec.ind1546, %i.aex
  %step.add.21548.reass = add nuw nsw <4 x i64> %vec.ind1546, %invariant.op1720
  %step.add.31549.reass = add nuw nsw <4 x i64> %vec.ind1546, %invariant.op1721
  %i.agn = getelementptr [8 x i8], ptr %i.agm, i64 %index1545 ; 4 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 32
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 64
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agn, i64 96
  %wide.load1550 = load <4 x double>, ptr %i.agn, align 8, !tbaa !92, !alias.scope !104
  %wide.load1551 = load <4 x double>, ptr %i.ago, align 8, !tbaa !92, !alias.scope !104
  %wide.load1552 = load <4 x double>, ptr %i.agp, align 8, !tbaa !92, !alias.scope !104
  %wide.load1553 = load <4 x double>, ptr %i.agq, align 8, !tbaa !92, !alias.scope !104
  %wide.gep1554 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1546
  %wide.gep1555 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add1547
  %wide.gep1556 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.21548.reass
  %wide.gep1557 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.31549.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1550, <4 x ptr> align 8 %wide.gep1554, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1551, <4 x ptr> align 8 %wide.gep1555, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1552, <4 x ptr> align 8 %wide.gep1556, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1553, <4 x ptr> align 8 %wide.gep1557, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  %index.next1558 = add nuw i64 %index1545, 16    ; 2 uses
  %vec.ind.next1559.reass = add nuw nsw <4 x i64> %vec.ind1546, %invariant.op1722
  %i.agr = icmp eq i64 %index.next1558, %n.vec1538
  br i1 %i.agr, label %middle.block1560, label %vector.body1544, !llvm.loop !85

middle.block1560:                                 ; preds = %vector.body1544
  %cmp.n1561 = icmp eq i64 %i.afo, %n.vec1538
  br i1 %cmp.n1561, label %._crit_edge613, label %vec.epilog.iter.check1563

vec.epilog.iter.check1563:                        ; preds = %middle.block1560
  %min.epilog.iters.check1565 = icmp eq i64 %i.agi, 0
  br i1 %min.epilog.iters.check1565, label %.lr.ph612.preheader, label %vec.epilog.ph1566, !prof !96

vec.epilog.ph1566:                                ; preds = %vector.main.loop.iter.check1535, %vec.epilog.iter.check1563
  %vec.epilog.resume.val1567 = phi i64 [ %n.vec1538, %vec.epilog.iter.check1563 ], [ 0, %vector.main.loop.iter.check1535 ]
  %bc.resume.val1568 = phi i64 [ %i.agk, %vec.epilog.iter.check1563 ], [ %indvars.iv864, %vector.main.loop.iter.check1535 ]
  %n.vec1569 = and i64 %i.afo, -4                 ; 4 uses
  %i.ags = mul i64 %n.vec1569, %i.adj
  %i.agt = add i64 %indvars.iv864, %i.ags
  %i.agu = add i64 %i.afm, %n.vec1569             ; 2 uses
  %broadcast.splatinsert1570 = insertelement <4 x i64> poison, i64 %bc.resume.val1568, i64 0
  %broadcast.splat1571 = shufflevector <4 x i64> %broadcast.splatinsert1570, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1574 = add nuw nsw <4 x i64> %broadcast.splat1571, %i.aez
  %i.agv = getelementptr [8 x i8], ptr %3, i64 %i.afm
  br label %vec.epilog.vector.body1577

vec.epilog.vector.body1577:                       ; preds = %vec.epilog.vector.body1577, %vec.epilog.ph1566
  %index1578 = phi i64 [ %vec.epilog.resume.val1567, %vec.epilog.ph1566 ], [ %index.next1582, %vec.epilog.vector.body1577 ] ; 2 uses
  %vec.ind1579 = phi <4 x i64> [ %induction1574, %vec.epilog.ph1566 ], [ %vec.ind.next1583, %vec.epilog.vector.body1577 ] ; 2 uses
  %i.agw = getelementptr [8 x i8], ptr %i.agv, i64 %index1578
  %wide.load1580 = load <4 x double>, ptr %i.agw, align 8, !tbaa !92, !alias.scope !104
  %wide.gep1581 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1579
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1580, <4 x ptr> align 8 %wide.gep1581, <4 x i1> splat (i1 true)), !tbaa !92, !alias.scope !105, !noalias !104
  %index.next1582 = add nuw i64 %index1578, 4     ; 2 uses
  %vec.ind.next1583 = add nuw nsw <4 x i64> %vec.ind1579, %broadcast.splat1576
  %i.agx = icmp eq i64 %index.next1582, %n.vec1569
  br i1 %i.agx, label %vec.epilog.middle.block1584, label %vec.epilog.vector.body1577, !llvm.loop !86

vec.epilog.middle.block1584:                      ; preds = %vec.epilog.vector.body1577
  %cmp.n1585 = icmp eq i64 %i.afo, %n.vec1569
  br i1 %cmp.n1585, label %._crit_edge613, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %iter.check1562, %vector.memcheck1531, %vec.epilog.iter.check1563, %vec.epilog.middle.block1584
  %indvars.iv866.ph = phi i64 [ %indvars.iv864, %iter.check1562 ], [ %indvars.iv864, %vector.memcheck1531 ], [ %i.agk, %vec.epilog.iter.check1563 ], [ %i.agt, %vec.epilog.middle.block1584 ]
  %indvars.iv862.ph = phi i64 [ %i.afm, %iter.check1562 ], [ %i.afm, %vector.memcheck1531 ], [ %i.agl, %vec.epilog.iter.check1563 ], [ %i.agu, %vec.epilog.middle.block1584 ]
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %.lr.ph612
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %.lr.ph612 ], [ %indvars.iv866.ph, %.lr.ph612.preheader ] ; 2 uses
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph612 ], [ %indvars.iv862.ph, %.lr.ph612.preheader ] ; 2 uses
  %i.agy = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv862
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !92
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv866
  store double %i.agz, ptr %i.aha, align 8, !tbaa !92
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, %i.aew ; 2 uses
  %.not882 = icmp sgt i64 %indvars.iv.next867, %i.afe
  br i1 %.not882, label %._crit_edge613, label %.lr.ph612, !llvm.loop !87

._crit_edge613:                                   ; preds = %.lr.ph612, %middle.block1560, %vec.epilog.middle.block1584
  %indvars.iv.next863.lcssa = phi i64 [ %i.agu, %vec.epilog.middle.block1584 ], [ %i.agl, %middle.block1560 ], [ %indvars.iv.next863, %.lr.ph612 ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit, label %iter.check1562, !llvm.loop !88

.loopexit.loopexit1611.unr-lcssa:                 ; preds = %._crit_edge495.3
  %lcmp.mod1629.not = icmp eq i64 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %.loopexit, label %iter.check1079.epil.preheader

iter.check1079.epil.preheader:                    ; preds = %.loopexit.loopexit1611.unr-lcssa, %.preheader.preheader
  %indvars.iv725.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next726.3, %.loopexit.loopexit1611.unr-lcssa ]
  %.18499.epil.init = phi i64 [ %i.ub, %.preheader.preheader ], [ %indvars.iv.next724.3, %.loopexit.loopexit1611.unr-lcssa ]
  %lcmp.mod1630 = icmp ne i64 %xtraiter1628, 0
  tail call void @llvm.assume(i1 %lcmp.mod1630)
  br label %iter.check1079.epil

iter.check1079.epil:                              ; preds = %._crit_edge495.epil, %iter.check1079.epil.preheader
  %indvars.iv725.epil = phi i64 [ %indvars.iv725.epil.init, %iter.check1079.epil.preheader ], [ %indvars.iv.next726.epil, %._crit_edge495.epil ] ; 3 uses
  %.18499.epil = phi i64 [ %.18499.epil.init, %iter.check1079.epil.preheader ], [ %indvars.iv.next724.epil, %._crit_edge495.epil ]
  %epil.iter = phi i64 [ 0, %iter.check1079.epil.preheader ], [ %epil.iter.next, %._crit_edge495.epil ]
  %invariant.gep899.epil = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv725.epil
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %iter.check1079.epil
  %indvars.iv727.epil = phi i64 [ %indvars.iv725.epil, %iter.check1079.epil ], [ %indvars.iv.next728.epil, %bb.y ] ; 2 uses
  %indvars.iv723.epil = phi i64 [ %.18499.epil, %iter.check1079.epil ], [ %indvars.iv.next724.epil, %bb.y ] ; 2 uses
  %i.ahb = mul nuw nsw i64 %indvars.iv727.epil, %i.uc
  %i.ahc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.epil
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !92
  %gep900.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.epil, i64 %i.ahb
  store double %i.ahd, ptr %gep900.epil, align 8, !tbaa !92
  %indvars.iv.next724.epil = add nsw i64 %indvars.iv723.epil, 1 ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1 ; 2 uses
  %.not397.not.epil = icmp samesign ult i64 %indvars.iv.next728.epil, %i.ud
  br i1 %.not397.not.epil, label %bb.y, label %._crit_edge495.epil, !llvm.loop !55

._crit_edge495.epil:                              ; preds = %bb.y
  %indvars.iv.next726.epil = add nuw nsw i64 %indvars.iv725.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1628
  br i1 %epil.iter.cmp.not, label %.loopexit, label %iter.check1079.epil, !llvm.loop !89

.loopexit:                                        ; preds = %.loopexit434, %._crit_edge472, %.loopexit.loopexit1611.unr-lcssa, %._crit_edge495.epil, %._crit_edge515, %._crit_edge542, %._crit_edge565, %._crit_edge590, %._crit_edge613, %bb.n, %bb.k, %._crit_edge490, %._crit_edge444, %._crit_edge465, %._crit_edge508, %._crit_edge535, %._crit_edge558, %bb.g, %bb.h, %.thread
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
