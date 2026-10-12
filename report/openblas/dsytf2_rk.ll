Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytf2_rk?download=true
begin_hunk_0_@dsytf2_rk_:bb.a
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ft ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !30
  %i.fw = add nsw i32 %.3745861, %i.aj
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fx ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !30
  store double %i.fz, ptr %i.fu, align 8, !tbaa !30
  store double %i.fv, ptr %i.fy, align 8, !tbaa !30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ga = load i32, ptr %1, align 4, !tbaa !28    ; 2 uses
  %i.gb = icmp slt i32 %.0766941, %i.ga
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gc = sub nuw nsw i32 %i.ga, %.0766941
  store i32 %i.gc, ptr %i.a, align 4, !tbaa !28
  %i.gd = add nuw nsw i32 %.0766941, 1
  %i.ge = mul nsw i32 %i.gd, %i.d                 ; 2 uses
  %i.gf = add nsw i32 %i.em, %i.ge
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gi = add nsw i32 %.3745861, %i.ge
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gj
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.gh, ptr noundef nonnull %3, ptr noundef %i.gk, ptr noundef nonnull %3) #4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %.thread848
  br i1 %i.ek, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not822, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gl = load double, ptr %i.am, align 8, !tbaa !30 ; 7 uses
  %i.gm = call double @llvm.fabs.f64(double %i.gl)
  %i.gn = fcmp ult double %i.gm, %i.r
  br i1 %i.gn, label %iter.check, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.go = fdiv double 1.000000e+00, %i.gl         ; 2 uses
  store double %i.go, ptr %i.c, align 8, !tbaa !30
  %i.gp = add nsw i32 %.0766941, -1               ; 2 uses
  store i32 %i.gp, ptr %i.a, align 4, !tbaa !28
  %i.gq = fneg double %i.go
  store double %i.gq, ptr %i.b, align 8, !tbaa !30
  %i.gr = sext i32 %i.aj to i64
  %i.gs = getelementptr [8 x i8], ptr %i.f, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 8      ; 2 uses
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.gt, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  store i32 %i.gp, ptr %i.a, align 4, !tbaa !28
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.gt, ptr noundef nonnull @c__1) #4
  br label %.sink.split

iter.check:                                       ; preds = %bb.ak
  store double %i.gl, ptr %i.c, align 8, !tbaa !30
  %i.gu = add nsw i32 %.0766941, -1
  %i.gv = sext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %.0766941 to i64 ; 2 uses
  %invariant.gep1041 = getelementptr [8 x i8], ptr %i.f, i64 %i.gv ; 3 uses
  %i.gw = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp ult i32 %.0766941, 5
  br i1 %min.iters.check, label %.lr.ph938.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1067 = icmp ult i32 %.0766941, 17
  br i1 %min.iters.check1067, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i64 %i.gw, 12
  %n.vec = and i64 %i.gw, -16                     ; 4 uses
  %i.gy = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.gl, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %index ; 4 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 8      ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gz, i64 40     ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gz, i64 72     ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gz, i64 104    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ha, align 8, !tbaa !30
  %wide.load1068 = load <4 x double>, ptr %i.hb, align 8, !tbaa !30
  %wide.load1069 = load <4 x double>, ptr %i.hc, align 8, !tbaa !30
  %wide.load1070 = load <4 x double>, ptr %i.hd, align 8, !tbaa !30
  %i.he = fdiv <4 x double> %wide.load, %broadcast.splat
  %i.hf = fdiv <4 x double> %wide.load1068, %broadcast.splat
  %i.hg = fdiv <4 x double> %wide.load1069, %broadcast.splat
  %i.hh = fdiv <4 x double> %wide.load1070, %broadcast.splat
  store <4 x double> %i.he, ptr %i.ha, align 8, !tbaa !30
  store <4 x double> %i.hf, ptr %i.hb, align 8, !tbaa !30
  store <4 x double> %i.hg, ptr %i.hc, align 8, !tbaa !30
  store <4 x double> %i.hh, ptr %i.hd, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph938.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1071 = and i64 %i.gw, -4                  ; 3 uses
  %i.hj = or disjoint i64 %n.vec1071, 1
  %broadcast.splatinsert1072 = insertelement <4 x double> poison, double %i.gl, i64 0
  %broadcast.splat1073 = shufflevector <4 x double> %broadcast.splatinsert1072, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1074 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1076, %vec.epilog.vector.body ] ; 2 uses
  %i.hk = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %index1074
  %i.hl = getelementptr i8, ptr %i.hk, i64 8      ; 2 uses
  %wide.load1075 = load <4 x double>, ptr %i.hl, align 8, !tbaa !30
  %i.hm = fdiv <4 x double> %wide.load1075, %broadcast.splat1073
  store <4 x double> %i.hm, ptr %i.hl, align 8, !tbaa !30
  %index.next1076 = add nuw i64 %index1074, 4     ; 2 uses
  %i.hn = icmp eq i64 %index.next1076, %n.vec1071
  br i1 %i.hn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1077 = icmp eq i64 %i.gw, %n.vec1071
  br i1 %cmp.n1077, label %._crit_edge, label %.lr.ph938.preheader

.lr.ph938.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv975.ph = phi i64 [ 1, %iter.check ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ]
  br label %.lr.ph938

.lr.ph938:                                        ; preds = %.lr.ph938.preheader, %.lr.ph938
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %.lr.ph938 ], [ %indvars.iv975.ph, %.lr.ph938.preheader ] ; 2 uses
  %gep1042 = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv975 ; 2 uses
  %i.ho = load double, ptr %gep1042, align 8, !tbaa !30
  %i.hp = fdiv double %i.ho, %i.gl
  store double %i.hp, ptr %gep1042, align 8, !tbaa !30
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next976, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph938, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph938, %vec.epilog.middle.block, %middle.block
  store i32 %i.gu, ptr %i.a, align 4, !tbaa !28
  %i.hq = fneg double %i.gl
  store double %i.hq, ptr %i.b, align 8, !tbaa !30
  %i.hr = getelementptr [8 x i8], ptr %i.f, i64 %i.gv
  %i.hs = getelementptr i8, ptr %i.hr, i64 8
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.hs, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  br label %.sink.split

bb.am:                                            ; preds = %bb.ai
  %i.ht = icmp sgt i32 %.0766941, 2
  %i.hu = add nsw i32 %.0766941, -1               ; 4 uses
  %i.hv = add nsw i32 %i.hu, %i.aj
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  br i1 %i.ht, label %.lr.ph.preheader, label %.loopexit925

.lr.ph.preheader:                                 ; preds = %bb.am
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !30 ; 2 uses
  %i.hz = mul nsw i32 %i.hu, %i.d                 ; 2 uses
  %i.ia = add nsw i32 %i.hz, %i.hu
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !30
  %i.ie = load double, ptr %i.am, align 8, !tbaa !30
  %i.if = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.id, i64 1
  %i.ih = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ij = fdiv <2 x double> %i.ig, %i.ii          ; 3 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 0 ; 2 uses
  store double %i.ik, ptr %i.c, align 8, !tbaa !30
  %i.il = extractelement <2 x double> %i.ij, i64 1
  %i.im = call double @llvm.fmuladd.f64(double %i.ik, double %i.il, double -1.000000e+00)
  %i.in = fdiv double 1.000000e+00, %i.im
  %i.io = add nsw i32 %.0766941, -2
  %i.ip = zext i32 %i.io to i64                   ; 5 uses
  %i.iq = sext i32 %i.aj to i64                   ; 4 uses
  %i.ir = sext i32 %i.hz to i64                   ; 4 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %i.f, i64 %i.ir
  %invariant.gep1039 = getelementptr [8 x i8], ptr %i.f, i64 %i.iq
  %invariant.gep1033 = getelementptr [8 x i8], ptr %i.f, i64 %i.iq ; 2 uses
  %invariant.gep1035 = getelementptr [8 x i8], ptr %i.f, i64 %i.ir ; 2 uses
  %i.is = mul i64 %i.x, %i.ip
  %i.it = mul i64 %i.aa, %i.ip
  %i.iu = add nsw i64 %i.e, %i.iq
  %i.iv = shl nsw i64 %i.iu, 3
  %scevgep1081 = getelementptr i8, ptr %2, i64 %i.iv
  %i.iw = shl nsw i64 %i.iq, 3
  %i.ix = shl nuw nsw i64 %i.ip, 3                ; 2 uses
  %i.iy = add nsw i64 %i.e, %i.ir
  %i.iz = shl nsw i64 %i.iy, 3
  %scevgep1084 = getelementptr i8, ptr %2, i64 %i.iz
  %i.ja = shl nsw i64 %i.ir, 3
  %7 = insertelement <2 x double> poison, double %i.in, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = add nuw nsw i64 %i.ip, 1
  %i.jb = getelementptr i8, ptr %i.ad, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.jb, i64 %i.ix
  %i.jd = getelementptr i8, ptr %i.af, i64 %i.iw
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.ix
  %i.jf = getelementptr i8, ptr %i.ah, i64 %i.it
  %i.jg = getelementptr i8, ptr %i.ai, i64 %i.is
  %broadcast.splatinsert1097 = insertelement <4 x double> poison, double %i.hy, i64 0
  %broadcast.splat1098 = shufflevector <4 x double> %broadcast.splatinsert1097, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit1181
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.loopexit1181 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.ip, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit1181 ] ; 11 uses
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv ; 2 uses
  %i.jh = load double, ptr %gep1038, align 8, !tbaa !30 ; 2 uses
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv ; 2 uses
  %i.ji = load double, ptr %gep1040, align 8, !tbaa !30 ; 2 uses
  %i.jj = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.jh, i64 1
  %i.jl = fneg <2 x double> %i.jk
  %i.jm = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %i.ji, i64 1
  %i.jo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.jn, <2 x double> %i.jl)
  %i.jp = fmul <2 x double> %8, %i.jo             ; 5 uses
  %i.jq = mul nsw i64 %indvars.iv, %i.v
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.jq ; 2 uses
  %10 = sub i64 %9, %indvar
  %i.jr = icmp ne i64 %indvars.iv, 0
  %.neg = sext i1 %i.jr to i64
  %i.js = add i64 %10, %.neg                      ; 3 uses
  %min.iters.check1090 = icmp ult i64 %i.js, 4
  br i1 %min.iters.check1090, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jt = mul nsw i64 %indvar, -8                 ; 2 uses
  %scevgep1086 = getelementptr i8, ptr %i.jc, i64 %i.jt
  %.not1182 = icmp eq i64 %indvars.iv, 0
  %i.ju = select i1 %.not1182, i64 0, i64 8       ; 3 uses
  %scevgep1085 = getelementptr i8, ptr %scevgep1084, i64 %i.ju
  %scevgep1083 = getelementptr i8, ptr %i.je, i64 %i.jt
  %scevgep1082 = getelementptr i8, ptr %scevgep1081, i64 %i.ju
  %i.jv = mul i64 %i.ab, %indvar
  %scevgep1080 = getelementptr i8, ptr %i.jf, i64 %i.jv ; 2 uses
  %i.jw = mul i64 %i.y, %indvar
  %scevgep = getelementptr i8, ptr %i.jg, i64 %i.jw
  %scevgep1079 = getelementptr i8, ptr %scevgep, i64 %i.ju ; 2 uses
  %bound0 = icmp ult ptr %scevgep1079, %scevgep1083
  %bound1 = icmp ult ptr %scevgep1082, %scevgep1080
  %found.conflict = and i1 %bound0, %bound1
  %bound01087 = icmp ult ptr %scevgep1079, %scevgep1086
  %bound11088 = icmp ult ptr %scevgep1085, %scevgep1080
  %found.conflict1089 = and i1 %bound01087, %bound11088
  %conflict.rdx = or i1 %found.conflict, %found.conflict1089
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph1091

vector.ph1091:                                    ; preds = %vector.memcheck
  %n.vec1092 = and i64 %i.js, -4                  ; 3 uses
  %i.jx = sub i64 %indvars.iv, %n.vec1092
  %i.jy = shufflevector <2 x double> %i.jp, <2 x double> poison, <4 x i32> zeroinitializer
  %i.jz = shufflevector <2 x double> %i.jp, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %vector.ph1091
  %index1100 = phi i64 [ 0, %vector.ph1091 ], [ %index.next1107, %vector.body1099 ] ; 2 uses
  %i.ka = sub i64 %indvars.iv, %index1100         ; 3 uses
  %i.kb = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ka
  %i.kc = getelementptr i8, ptr %i.kb, i64 -24    ; 2 uses
  %wide.load1101 = load <4 x double>, ptr %i.kc, align 8, !tbaa !30, !alias.scope !35, !noalias !36
  %i.kd = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.ka
  %i.ke = getelementptr i8, ptr %i.kd, i64 -24
  %wide.load1102 = load <4 x double>, ptr %i.ke, align 8, !tbaa !30, !alias.scope !37
  %i.kf = fneg <4 x double> %wide.load1102
  %i.kg = fdiv <4 x double> %i.kf, %broadcast.splat1098
  %i.kh = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %i.ka
  %i.ki = getelementptr i8, ptr %i.kh, i64 -24
  %wide.load1104 = load <4 x double>, ptr %i.ki, align 8, !tbaa !30, !alias.scope !38
  %i.kj = fneg <4 x double> %wide.load1104
  %i.kk = fdiv <4 x double> %i.kj, %broadcast.splat1098
  %i.kl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kg, <4 x double> %i.jz, <4 x double> %wide.load1101)
  %reverse1106 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kk, <4 x double> %i.jy, <4 x double> %i.kl)
  store <4 x double> %reverse1106, ptr %i.kc, align 8, !tbaa !30, !alias.scope !35, !noalias !36
  %index.next1107 = add nuw i64 %index1100, 4     ; 2 uses
  %i.km = icmp eq i64 %index.next1107, %n.vec1092
  br i1 %i.km, label %middle.block1108, label %vector.body1099, !llvm.loop !15

middle.block1108:                                 ; preds = %vector.body1099
  %cmp.n1109 = icmp eq i64 %i.js, %n.vec1092
  br i1 %cmp.n1109, label %.loopexit1181, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block1108
  %indvars.iv971.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.lr.ph ], [ %i.jx, %middle.block1108 ]
  %i.kn = extractelement <2 x double> %i.jp, i64 1
  %i.ko = extractelement <2 x double> %i.jp, i64 0
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv971 = phi i64 [ %indvars.iv.next972, %scalar.ph ], [ %indvars.iv971.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv971 ; 2 uses
  %i.kp = load double, ptr %gep, align 8, !tbaa !30
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %indvars.iv971
  %i.kq = load double, ptr %gep1034, align 8, !tbaa !30
  %gep1036 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv971
  %i.kr = load double, ptr %gep1036, align 8, !tbaa !30
  %i.ks = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.kt = insertelement <2 x double> %i.ks, double %i.kr, i64 1
  %i.ku = fneg <2 x double> %i.kt
  %i.kv = fdiv <2 x double> %i.ku, %i.ii          ; 2 uses
  %i.kw = extractelement <2 x double> %i.kv, i64 0
  %i.kx = call double @llvm.fmuladd.f64(double %i.kw, double %i.kn, double %i.kp)
  %i.ky = extractelement <2 x double> %i.kv, i64 1
  %i.kz = call double @llvm.fmuladd.f64(double %i.ky, double %i.ko, double %i.kx)
  store double %i.kz, ptr %gep, align 8, !tbaa !30
  %indvars.iv.next972 = add nsw i64 %indvars.iv971, -1
  %i.la = icmp samesign ugt i64 %indvars.iv971, 1
  br i1 %i.la, label %scalar.ph, label %.loopexit1181, !llvm.loop !16

.loopexit1181:                                    ; preds = %scalar.ph, %middle.block1108
  %i.lb = fdiv <2 x double> %i.jp, %i.ii          ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 1
  store double %i.lc, ptr %gep1040, align 8, !tbaa !30
  %i.ld = extractelement <2 x double> %i.lb, i64 0
  store double %i.ld, ptr %gep1038, align 8, !tbaa !30
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.le = icmp sgt i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.le, label %.lr.ph, label %.loopexit925, !llvm.loop !17

.sink.split:                                      ; preds = %bb.al, %._crit_edge, %bb.m
  %.5787.ph.ph = phi i32 [ %.1783, %bb.m ], [ %.4786857, %._crit_edge ], [ %.4786857, %bb.al ]
  %.5777.ph.ph = phi i32 [ %.0772940, %bb.m ], [ %.4776858, %._crit_edge ], [ %.4776858, %bb.al ]
  %.4746.ph.ph = phi i32 [ %.0766941, %bb.m ], [ %.3745861, %._crit_edge ], [ %.3745861, %bb.al ]
  %i.lf = zext nneg i32 %.0766941 to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.lf
  store double 0.000000e+00, ptr %i.lg, align 8, !tbaa !30
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.m, %bb.aj
  %.5787.ph = phi i32 [ %.4786857, %bb.aj ], [ %.1783, %bb.m ], [ %.5787.ph.ph, %.sink.split ]
  %.5777.ph = phi i32 [ %.4776858, %bb.aj ], [ %.0772940, %bb.m ], [ %.5777.ph.ph, %.sink.split ]
  %.4746.ph = phi i32 [ %.3745861, %bb.aj ], [ 1, %bb.m ], [ %.4746.ph.ph, %.sink.split ]
  %i.lh = zext nneg i32 %.0766941 to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.lh
  store i32 %.4746.ph, ptr %i.li, align 4, !tbaa !28
  br label %bb.ao

.loopexit925:                                     ; preds = %.loopexit1181, %bb.am
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.hw ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !30
  %i.ll = zext nneg i32 %.0766941 to i64          ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ll
  store double %i.lk, ptr %i.lm, align 8, !tbaa !30
  %i.ln = zext nneg i32 %i.hu to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ln
  store double 0.000000e+00, ptr %i.lo, align 8, !tbaa !30
  store double 0.000000e+00, ptr %i.lj, align 8, !tbaa !30
  %i.lp = sub nsw i32 0, %.2760859
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ll ; 2 uses
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !28
  %i.lr = sub nsw i32 0, %.3745861
  %i.ls = getelementptr i8, ptr %i.lq, i64 -4
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !28
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit925, %bb.an
  %.3753.neg878 = phi i32 [ -2, %.loopexit925 ], [ -1, %bb.an ]
  %.5777876 = phi i32 [ %.4776858, %.loopexit925 ], [ %.5777.ph, %bb.an ]
  %.5787874 = phi i32 [ %.4786857, %.loopexit925 ], [ %.5787.ph, %bb.an ]
  %i.lt = add nsw i32 %.3753.neg878, %.0766941    ; 2 uses
  %i.lu = icmp slt i32 %i.lt, 1
  br i1 %i.lu, label %.loopexit924, label %bb.h

bb.ap:                                            ; preds = %bb.f
  %i.lv = load i32, ptr %1, align 4, !tbaa !28    ; 3 uses
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.lw
  store double 0.000000e+00, ptr %i.lx, align 8, !tbaa !30
  %i.ly = icmp slt i32 %i.lv, 1
  br i1 %i.ly, label %.loopexit924, label %.lr.ph963

.lr.ph963:                                        ; preds = %bb.ap
  %i.lz = add i32 %i.d, 1                         ; 6 uses
  %i.ma = sext i32 %i.d to i64                    ; 3 uses
  %i.mb = shl nsw i64 %i.e, 3                     ; 4 uses
  %i.mc = shl nsw i64 %i.ma, 3
  %i.md = shl nsw i64 %i.ma, 3
  %i.me = add nsw i64 %i.md, 8
  %i.mf = getelementptr i8, ptr %2, i64 %i.mb
  %i.mg = getelementptr i8, ptr %i.mf, i64 24
  %i.mh = getelementptr i8, ptr %2, i64 %i.mb
  %i.mi = getelementptr i8, ptr %i.mh, i64 24
  %i.mj = getelementptr i8, ptr %2, i64 %i.mb
  %i.mk = getelementptr i8, ptr %i.mj, i64 24
  %i.ml = getelementptr i8, ptr %2, i64 %i.mb
  %i.mm = getelementptr i8, ptr %i.ml, i64 16
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph963, %bb.bz
  %i.mn = phi i32 [ %i.lv, %.lr.ph963 ], [ %i.yk, %bb.bz ] ; 2 uses
  %.1767959 = phi i32 [ 1, %.lr.ph963 ], [ %i.yj, %bb.bz ] ; 43 uses
  %.6778958 = phi i32 [ undef, %.lr.ph963 ], [ %.11918, %bb.bz ] ; 4 uses
  %.6788957 = phi i32 [ undef, %.lr.ph963 ], [ %.11793916, %bb.bz ]
  %i.mo = mul nsw i32 %.1767959, %i.d             ; 13 uses
  %i.mp = add nsw i32 %i.mo, %.1767959
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.mq ; 5 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !30 ; 4 uses
  store double %i.ms, ptr %i.b, align 8, !tbaa !30
  %i.mt = fcmp oge double %i.ms, 0.000000e+00
  %i.mu = fneg double %i.ms
  %i.mv = select i1 %i.mt, double %i.ms, double %i.mu ; 3 uses
  %i.mw = icmp slt i32 %.1767959, %i.mn
  br i1 %i.mw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.mx = sub nuw nsw i32 %i.mn, %.1767959
  store i32 %i.mx, ptr %i.a, align 4, !tbaa !28
  %i.my = add nuw nsw i32 %.1767959, 1
  %i.mz = add nsw i32 %i.my, %i.mo
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.na
  %i.nc = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.nb, ptr noundef nonnull @c__1) #4
  %i.nd = add nsw i32 %i.nc, %.1767959            ; 2 uses
  %i.ne = add nsw i32 %i.nd, %i.mo
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.nf
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !30 ; 4 uses
  store double %i.nh, ptr %i.b, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@dsytf2_rk_:bb.a
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.sn
  %i.sp = add nsw i32 %.8903, %i.d
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.sq
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.so, ptr noundef nonnull %3, ptr noundef %i.sr, ptr noundef nonnull %3) #4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %.thread890
  %i.ss = load i32, ptr %1, align 4, !tbaa !28    ; 10 uses
  br i1 %i.qt, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.st = icmp slt i32 %.1767959, %i.ss
  br i1 %i.st, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.su = load double, ptr %i.mr, align 8, !tbaa !30 ; 7 uses
  %i.sv = call double @llvm.fabs.f64(double %i.su)
  %i.sw = fcmp ult double %i.sv, %i.r
  br i1 %i.sw, label %iter.check1129, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sx = fdiv double 1.000000e+00, %i.su         ; 2 uses
  store double %i.sx, ptr %i.c, align 8, !tbaa !30
  %i.sy = sub nuw nsw i32 %i.ss, %.1767959
  store i32 %i.sy, ptr %i.a, align 4, !tbaa !28
  %i.sz = fneg double %i.sx
  store double %i.sz, ptr %i.b, align 8, !tbaa !30
  %i.ta = add nuw nsw i32 %.1767959, 1            ; 2 uses
  %i.tb = add nsw i32 %i.ta, %i.mo
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.tc ; 2 uses
  %i.te = mul i32 %i.ta, %i.lz
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.tf
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.td, ptr noundef nonnull @c__1, ptr noundef %i.tg, ptr noundef nonnull %3) #4
  %i.th = load i32, ptr %1, align 4, !tbaa !28
  %i.ti = sub nsw i32 %i.th, %.1767959
  store i32 %i.ti, ptr %i.a, align 4, !tbaa !28
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.td, ptr noundef nonnull @c__1) #4
  br label %.sink.split1057

iter.check1129:                                   ; preds = %bb.bu
  store double %i.su, ptr %i.c, align 8, !tbaa !30
  %i.tj = add nuw nsw i32 %.1767959, 1            ; 2 uses
  %narrow1025 = add nuw nsw i32 %.1767959, 1
  %i.tk = zext nneg i32 %narrow1025 to i64        ; 5 uses
  %i.tl = sext i32 %i.mo to i64
  %i.tm = add i32 %i.ss, 1
  %invariant.gep1053 = getelementptr [8 x i8], ptr %i.f, i64 %i.tl ; 3 uses
  %i.tn = xor i32 %.1767959, -1
  %i.to = add i32 %i.ss, %i.tn                    ; 3 uses
  %i.tp = zext i32 %i.to to i64
  %i.tq = add nuw nsw i64 %i.tp, 1                ; 5 uses
  %min.iters.check1111 = icmp ult i32 %i.to, 3
  br i1 %min.iters.check1111, label %.lr.ph955.preheader, label %vector.main.loop.iter.check1112

vector.main.loop.iter.check1112:                  ; preds = %iter.check1129
  %min.iters.check1113 = icmp ult i32 %i.to, 15
  br i1 %min.iters.check1113, label %vec.epilog.ph1133, label %vector.ph1114

vector.ph1114:                                    ; preds = %vector.main.loop.iter.check1112
  %i.tr = and i64 %i.tq, 12
  %n.vec1115 = and i64 %i.tq, 8589934576          ; 4 uses
  %i.ts = add nuw nsw i64 %n.vec1115, %i.tk
  %broadcast.splatinsert1116 = insertelement <4 x double> poison, double %i.su, i64 0
  %broadcast.splat1117 = shufflevector <4 x double> %broadcast.splatinsert1116, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep1196 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %i.tk
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.ph1114, %vector.body1118
  %index1119 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1124, %vector.body1118 ] ; 2 uses
  %gep1197 = getelementptr [8 x i8], ptr %invariant.gep1196, i64 %index1119 ; 5 uses
  %i.tt = getelementptr i8, ptr %gep1197, i64 32  ; 2 uses
  %i.tu = getelementptr i8, ptr %gep1197, i64 64  ; 2 uses
  %i.tv = getelementptr i8, ptr %gep1197, i64 96  ; 2 uses
  %wide.load1120 = load <4 x double>, ptr %gep1197, align 8, !tbaa !30
  %wide.load1121 = load <4 x double>, ptr %i.tt, align 8, !tbaa !30
  %wide.load1122 = load <4 x double>, ptr %i.tu, align 8, !tbaa !30
  %wide.load1123 = load <4 x double>, ptr %i.tv, align 8, !tbaa !30
  %i.tw = fdiv <4 x double> %wide.load1120, %broadcast.splat1117
  %i.tx = fdiv <4 x double> %wide.load1121, %broadcast.splat1117
  %i.ty = fdiv <4 x double> %wide.load1122, %broadcast.splat1117
  %i.tz = fdiv <4 x double> %wide.load1123, %broadcast.splat1117
  store <4 x double> %i.tw, ptr %gep1197, align 8, !tbaa !30
  store <4 x double> %i.tx, ptr %i.tt, align 8, !tbaa !30
  store <4 x double> %i.ty, ptr %i.tu, align 8, !tbaa !30
  store <4 x double> %i.tz, ptr %i.tv, align 8, !tbaa !30
  %index.next1124 = add nuw i64 %index1119, 16    ; 2 uses
  %i.ua = icmp eq i64 %index.next1124, %n.vec1115
  br i1 %i.ua, label %middle.block1125, label %vector.body1118, !llvm.loop !18

middle.block1125:                                 ; preds = %vector.body1118
  %cmp.n1126 = icmp eq i64 %i.tq, %n.vec1115
  br i1 %cmp.n1126, label %._crit_edge956, label %vec.epilog.iter.check1131

vec.epilog.iter.check1131:                        ; preds = %middle.block1125
  %min.epilog.iters.check1132 = icmp eq i64 %i.tr, 0
  br i1 %min.epilog.iters.check1132, label %.lr.ph955.preheader, label %vec.epilog.ph1133, !prof !34

vec.epilog.ph1133:                                ; preds = %vector.main.loop.iter.check1112, %vec.epilog.iter.check1131
  %vec.epilog.resume.val1127 = phi i64 [ %n.vec1115, %vec.epilog.iter.check1131 ], [ 0, %vector.main.loop.iter.check1112 ]
  %n.vec1134 = and i64 %i.tq, 8589934588          ; 3 uses
  %i.ub = add nuw nsw i64 %n.vec1134, %i.tk
  %broadcast.splatinsert1135 = insertelement <4 x double> poison, double %i.su, i64 0
  %broadcast.splat1136 = shufflevector <4 x double> %broadcast.splatinsert1135, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep1198 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %i.tk
  br label %vec.epilog.vector.body1137

vec.epilog.vector.body1137:                       ; preds = %vec.epilog.vector.body1137, %vec.epilog.ph1133
  %index1138 = phi i64 [ %vec.epilog.resume.val1127, %vec.epilog.ph1133 ], [ %index.next1140, %vec.epilog.vector.body1137 ] ; 2 uses
  %gep1199 = getelementptr [8 x i8], ptr %invariant.gep1198, i64 %index1138 ; 2 uses
  %wide.load1139 = load <4 x double>, ptr %gep1199, align 8, !tbaa !30
  %i.uc = fdiv <4 x double> %wide.load1139, %broadcast.splat1136
  store <4 x double> %i.uc, ptr %gep1199, align 8, !tbaa !30
  %index.next1140 = add nuw i64 %index1138, 4     ; 2 uses
  %i.ud = icmp eq i64 %index.next1140, %n.vec1134
  br i1 %i.ud, label %vec.epilog.middle.block1141, label %vec.epilog.vector.body1137, !llvm.loop !19

vec.epilog.middle.block1141:                      ; preds = %vec.epilog.vector.body1137
  %cmp.n1142 = icmp eq i64 %i.tq, %n.vec1134
  br i1 %cmp.n1142, label %._crit_edge956, label %.lr.ph955.preheader

.lr.ph955.preheader:                              ; preds = %iter.check1129, %vec.epilog.iter.check1131, %vec.epilog.middle.block1141
  %indvars.iv985.ph = phi i64 [ %i.tk, %iter.check1129 ], [ %i.ts, %vec.epilog.iter.check1131 ], [ %i.ub, %vec.epilog.middle.block1141 ]
  br label %.lr.ph955

.lr.ph955:                                        ; preds = %.lr.ph955.preheader, %.lr.ph955
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %.lr.ph955 ], [ %indvars.iv985.ph, %.lr.ph955.preheader ] ; 2 uses
  %gep1054 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv985 ; 2 uses
  %i.ue = load double, ptr %gep1054, align 8, !tbaa !30
  %i.uf = fdiv double %i.ue, %i.su
  store double %i.uf, ptr %gep1054, align 8, !tbaa !30
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 1 ; 2 uses
  %lftr.wideiv988 = trunc i64 %indvars.iv.next986 to i32
  %exitcond989.not = icmp eq i32 %i.tm, %lftr.wideiv988
  br i1 %exitcond989.not, label %._crit_edge956, label %.lr.ph955, !llvm.loop !20

._crit_edge956:                                   ; preds = %.lr.ph955, %vec.epilog.middle.block1141, %middle.block1125
  %i.ug = sub nuw nsw i32 %i.ss, %.1767959
  store i32 %i.ug, ptr %i.a, align 4, !tbaa !28
  %i.uh = fneg double %i.su
  store double %i.uh, ptr %i.b, align 8, !tbaa !30
  %i.ui = add nsw i32 %i.tj, %i.mo
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.uj
  %i.ul = mul i32 %i.tj, %i.lz
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.um
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.uk, ptr noundef nonnull @c__1, ptr noundef %i.un, ptr noundef nonnull %3) #4
  br label %.sink.split1057

bb.bw:                                            ; preds = %bb.bs
  %i.uo = add nsw i32 %i.ss, -1
  %i.up = icmp slt i32 %.1767959, %i.uo
  %i.uq = add nuw nsw i32 %.1767959, 1            ; 3 uses
  %i.ur = add nsw i32 %i.uq, %i.mo
  %i.us = sext i32 %i.ur to i64                   ; 2 uses
  br i1 %i.up, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.us
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !30 ; 2 uses
  %i.uv = mul nsw i32 %i.uq, %i.d                 ; 2 uses
  %i.uw = add nsw i32 %i.uv, %i.uq
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ux
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !30
  %i.va = load double, ptr %i.mr, align 8, !tbaa !30
  %i.vb = insertelement <2 x double> poison, double %i.va, i64 0
  %i.vc = insertelement <2 x double> %i.vb, double %i.uz, i64 1
  %i.vd = insertelement <2 x double> poison, double %i.uu, i64 0
  %i.ve = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.vf = fdiv <2 x double> %i.vc, %i.ve          ; 3 uses
  %i.vg = extractelement <2 x double> %i.vf, i64 1 ; 2 uses
  store double %i.vg, ptr %i.c, align 8, !tbaa !30
  store i32 %i.ss, ptr %i.a, align 4, !tbaa !28
  %i.vh = add nuw nsw i32 %.1767959, 2            ; 2 uses
  %.not819948 = icmp sgt i32 %i.vh, %i.ss
  br i1 %.not819948, label %.loopexit, label %.lr.ph951.preheader

.lr.ph951.preheader:                              ; preds = %bb.bx
  %i.vi = extractelement <2 x double> %i.vf, i64 0
  %i.vj = call double @llvm.fmuladd.f64(double %i.vg, double %i.vi, double -1.000000e+00)
  %i.vk = fdiv double 1.000000e+00, %i.vj
  %i.vl = zext nneg i32 %i.vh to i64              ; 2 uses
  %i.vm = sext i32 %i.mo to i64                   ; 3 uses
  %i.vn = sext i32 %i.uv to i64                   ; 3 uses
  %i.vo = sext i32 %i.ss to i64                   ; 3 uses
  %i.vp = add i32 %i.ss, 1
  %invariant.gep1049 = getelementptr [8 x i8], ptr %i.f, i64 %i.vm
  %invariant.gep1051 = getelementptr [8 x i8], ptr %i.f, i64 %i.vn
  %invariant.gep1045 = getelementptr [8 x i8], ptr %i.f, i64 %i.vm ; 2 uses
  %invariant.gep1047 = getelementptr [8 x i8], ptr %i.f, i64 %i.vn ; 2 uses
  %i.vq = mul i64 %i.mc, %i.vl                    ; 2 uses
  %i.vr = zext nneg i32 %.1767959 to i64          ; 2 uses
  %i.vs = shl nuw nsw i64 %i.vr, 3                ; 4 uses
  %i.vt = shl nsw i64 %i.vm, 3
  %i.vu = shl nsw i64 %i.vn, 3
  %11 = insertelement <2 x double> poison, double %i.vk, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = xor i32 %.1767959, -1
  %14 = sext i32 %13 to i64
  %i.vv = getelementptr i8, ptr %i.mg, i64 %i.vu
  %i.vw = getelementptr i8, ptr %i.vv, i64 %i.vs
  %i.vx = getelementptr i8, ptr %i.mi, i64 %i.vt
  %i.vy = getelementptr i8, ptr %i.vx, i64 %i.vs
  %i.vz = getelementptr i8, ptr %i.mk, i64 %i.vq
  %i.wa = getelementptr i8, ptr %i.vz, i64 %i.vs
  %i.wb = getelementptr i8, ptr %i.mm, i64 %i.vq
  %i.wc = getelementptr i8, ptr %i.wb, i64 %i.vs
  %broadcast.splatinsert1169 = insertelement <4 x double> poison, double %i.uu, i64 0
  %broadcast.splat1170 = shufflevector <4 x double> %broadcast.splatinsert1169, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph951

.lr.ph951:                                        ; preds = %.lr.ph951.preheader, %.loopexit1180
  %indvar1145 = phi i64 [ 0, %.lr.ph951.preheader ], [ %indvar.next1146, %.loopexit1180 ] ; 5 uses
  %indvars.iv978 = phi i64 [ %i.vl, %.lr.ph951.preheader ], [ %indvars.iv.next979, %.loopexit1180 ] ; 10 uses
  %gep1050 = getelementptr [8 x i8], ptr %invariant.gep1049, i64 %indvars.iv978 ; 3 uses
  %i.wd = load double, ptr %gep1050, align 8, !tbaa !30 ; 2 uses
  %gep1052 = getelementptr [8 x i8], ptr %invariant.gep1051, i64 %indvars.iv978 ; 3 uses
  %i.we = load double, ptr %gep1052, align 8, !tbaa !30 ; 2 uses
  %i.wf = insertelement <2 x double> poison, double %i.wd, i64 0
  %i.wg = insertelement <2 x double> %i.wf, double %i.we, i64 1
  %i.wh = fneg <2 x double> %i.wg
  %i.wi = insertelement <2 x double> poison, double %i.we, i64 0
  %i.wj = insertelement <2 x double> %i.wi, double %i.wd, i64 1
  %i.wk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.wj, <2 x double> %i.wh)
  %i.wl = fmul <2 x double> %12, %i.wk            ; 5 uses
  %i.wm = mul nsw i64 %indvars.iv978, %i.ma
  %invariant.gep1043 = getelementptr [8 x i8], ptr %i.f, i64 %i.wm ; 2 uses
  %i.wn = call i64 @llvm.smax.i64(i64 %indvars.iv978, i64 %i.vo)
  %15 = sub i64 %14, %indvar1145
  %i.wo = add i64 %i.wn, %15                      ; 3 uses
  %min.iters.check1162 = icmp ult i64 %i.wo, 4
  br i1 %min.iters.check1162, label %scalar.ph1161.preheader, label %vector.memcheck1144

vector.memcheck1144:                              ; preds = %.lr.ph951
  %i.wp = shl nuw nsw i64 %indvar1145, 3          ; 2 uses
  %scevgep1152 = getelementptr i8, ptr %i.vw, i64 %i.wp
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv978, i64 %i.vo)
  %i.wq = add i64 %indvar1145, %i.vr
  %reass.sub = sub i64 %smax, %i.wq
  %i.wr = shl i64 %reass.sub, 3
  %i.ws = add i64 %i.wr, -16                      ; 3 uses
  %scevgep1153 = getelementptr i8, ptr %scevgep1152, i64 %i.ws
  %scevgep1150 = getelementptr i8, ptr %i.vy, i64 %i.wp
  %scevgep1151 = getelementptr i8, ptr %scevgep1150, i64 %i.ws
  %i.wt = mul i64 %i.me, %indvar1145              ; 2 uses
  %scevgep1148 = getelementptr i8, ptr %i.wa, i64 %i.wt
  %scevgep1149 = getelementptr i8, ptr %scevgep1148, i64 %i.ws ; 2 uses
  %scevgep1147 = getelementptr i8, ptr %i.wc, i64 %i.wt ; 2 uses
  %bound01154 = icmp ult ptr %scevgep1147, %scevgep1151
  %bound11155 = icmp ult ptr %gep1050, %scevgep1149
  %found.conflict1156 = and i1 %bound01154, %bound11155
  %bound01157 = icmp ult ptr %scevgep1147, %scevgep1153
  %bound11158 = icmp ult ptr %gep1052, %scevgep1149
  %found.conflict1159 = and i1 %bound01157, %bound11158
  %conflict.rdx1160 = or i1 %found.conflict1156, %found.conflict1159
  br i1 %conflict.rdx1160, label %scalar.ph1161.preheader, label %vector.ph1163

vector.ph1163:                                    ; preds = %vector.memcheck1144
  %n.vec1164 = and i64 %i.wo, -4                  ; 3 uses
  %i.wu = add i64 %indvars.iv978, %n.vec1164
  %broadcast.splat1166 = shufflevector <2 x double> %i.wl, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat1168 = shufflevector <2 x double> %i.wl, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1163
  %index1172 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1176, %vector.body1171 ] ; 2 uses
  %i.wv = add nuw i64 %indvars.iv978, %index1172  ; 3 uses
  %i.ww = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.wv ; 2 uses
  %wide.load1173 = load <4 x double>, ptr %i.ww, align 8, !tbaa !30, !alias.scope !39, !noalias !40
  %i.wx = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %i.wv
  %wide.load1174 = load <4 x double>, ptr %i.wx, align 8, !tbaa !30, !alias.scope !41
  %i.wy = fneg <4 x double> %wide.load1174
  %i.wz = fdiv <4 x double> %i.wy, %broadcast.splat1170
  %i.xa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wz, <4 x double> %broadcast.splat1166, <4 x double> %wide.load1173)
  %i.xb = getelementptr [8 x i8], ptr %invariant.gep1047, i64 %i.wv
  %wide.load1175 = load <4 x double>, ptr %i.xb, align 8, !tbaa !30, !alias.scope !42
  %i.xc = fneg <4 x double> %wide.load1175
  %i.xd = fdiv <4 x double> %i.xc, %broadcast.splat1170
  %i.xe = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xd, <4 x double> %broadcast.splat1168, <4 x double> %i.xa)
  store <4 x double> %i.xe, ptr %i.ww, align 8, !tbaa !30, !alias.scope !39, !noalias !40
  %index.next1176 = add nuw i64 %index1172, 4     ; 2 uses
  %i.xf = icmp eq i64 %index.next1176, %n.vec1164
  br i1 %i.xf, label %middle.block1177, label %vector.body1171, !llvm.loop !25

middle.block1177:                                 ; preds = %vector.body1171
  %cmp.n1178 = icmp eq i64 %i.wo, %n.vec1164
  br i1 %cmp.n1178, label %.loopexit1180, label %scalar.ph1161.preheader

scalar.ph1161.preheader:                          ; preds = %vector.memcheck1144, %.lr.ph951, %middle.block1177
  %indvars.iv980.ph = phi i64 [ %indvars.iv978, %vector.memcheck1144 ], [ %indvars.iv978, %.lr.ph951 ], [ %i.wu, %middle.block1177 ]
  %i.xg = extractelement <2 x double> %i.wl, i64 1
  %i.xh = extractelement <2 x double> %i.wl, i64 0
  br label %scalar.ph1161

scalar.ph1161:                                    ; preds = %scalar.ph1161.preheader, %scalar.ph1161
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %scalar.ph1161 ], [ %indvars.iv980.ph, %scalar.ph1161.preheader ] ; 5 uses
  %gep1044 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %indvars.iv980 ; 2 uses
  %i.xi = load double, ptr %gep1044, align 8, !tbaa !30
  %gep1046 = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %indvars.iv980
  %i.xj = load double, ptr %gep1046, align 8, !tbaa !30
  %gep1048 = getelementptr [8 x i8], ptr %invariant.gep1047, i64 %indvars.iv980
  %i.xk = load double, ptr %gep1048, align 8, !tbaa !30
  %i.xl = insertelement <2 x double> poison, double %i.xj, i64 0
  %i.xm = insertelement <2 x double> %i.xl, double %i.xk, i64 1
  %i.xn = fneg <2 x double> %i.xm
  %i.xo = fdiv <2 x double> %i.xn, %i.ve          ; 2 uses
  %i.xp = extractelement <2 x double> %i.xo, i64 0
  %i.xq = call double @llvm.fmuladd.f64(double %i.xp, double %i.xg, double %i.xi)
  %i.xr = extractelement <2 x double> %i.xo, i64 1
  %i.xs = call double @llvm.fmuladd.f64(double %i.xr, double %i.xh, double %i.xq)
  store double %i.xs, ptr %gep1044, align 8, !tbaa !30
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 1
  %.not820.not = icmp slt i64 %indvars.iv980, %i.vo
  br i1 %.not820.not, label %scalar.ph1161, label %.loopexit1180, !llvm.loop !26

.loopexit1180:                                    ; preds = %scalar.ph1161, %middle.block1177
  %i.xt = fdiv <2 x double> %i.wl, %i.ve          ; 2 uses
  %i.xu = extractelement <2 x double> %i.xt, i64 1
  store double %i.xu, ptr %gep1050, align 8, !tbaa !30
  %i.xv = extractelement <2 x double> %i.xt, i64 0
  store double %i.xv, ptr %gep1052, align 8, !tbaa !30
  %indvars.iv.next979 = add nuw nsw i64 %indvars.iv978, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next979 to i32
  %exitcond984.not = icmp eq i32 %i.vp, %lftr.wideiv
  %indvar.next1146 = add i64 %indvar1145, 1
  br i1 %exitcond984.not, label %.loopexit, label %.lr.ph951, !llvm.loop !27

.sink.split1057:                                  ; preds = %bb.bv, %._crit_edge956, %bb.av
  %.11793.ph.ph = phi i32 [ %.7789, %bb.av ], [ %.10792899, %._crit_edge956 ], [ %.10792899, %bb.bv ]
  %.11.ph.ph = phi i32 [ %.6778958, %bb.av ], [ %.10900, %._crit_edge956 ], [ %.10900, %bb.bv ]
  %.9.ph.ph = phi i32 [ %.1767959, %bb.av ], [ %.8903, %._crit_edge956 ], [ %.8903, %bb.bv ]
  %i.xw = zext nneg i32 %.1767959 to i64
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.xw
  store double 0.000000e+00, ptr %i.xx, align 8, !tbaa !30
  br label %bb.by

bb.by:                                            ; preds = %.sink.split1057, %bb.av, %bb.bt
  %.11793.ph = phi i32 [ %.10792899, %bb.bt ], [ %.7789, %bb.av ], [ %.11793.ph.ph, %.sink.split1057 ]
  %.11.ph = phi i32 [ %.10900, %bb.bt ], [ %.6778958, %bb.av ], [ %.11.ph.ph, %.sink.split1057 ]
  %.9.ph = phi i32 [ %.8903, %bb.bt ], [ %.1767959, %bb.av ], [ %.9.ph.ph, %.sink.split1057 ]
  %i.xy = zext nneg i32 %.1767959 to i64
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.xy
  store i32 %.9.ph, ptr %i.xz, align 4, !tbaa !28
  br label %bb.bz

.loopexit:                                        ; preds = %.loopexit1180, %bb.bw, %bb.bx
  %i.ya = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.us ; 2 uses
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !30
  %i.yc = zext nneg i32 %.1767959 to i64          ; 2 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.yc
  %i.ye = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.yb, i64 0
  store <2 x double> %i.ye, ptr %i.yd, align 8, !tbaa !30
  store double 0.000000e+00, ptr %i.ya, align 8, !tbaa !30
  %i.yf = sub nsw i32 0, %.6764901
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.yc ; 2 uses
  store i32 %i.yf, ptr %i.yg, align 4, !tbaa !28
  %i.yh = sub nsw i32 0, %.8903
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 4
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !28
  br label %bb.bz

bb.bz:                                            ; preds = %.loopexit, %bb.by
  %.7757920 = phi i32 [ 2, %.loopexit ], [ 1, %bb.by ]
  %.11918 = phi i32 [ %.10900, %.loopexit ], [ %.11.ph, %bb.by ]
  %.11793916 = phi i32 [ %.10792899, %.loopexit ], [ %.11793.ph, %bb.by ]
  %i.yj = add nuw nsw i32 %.7757920, %.1767959    ; 2 uses
  %i.yk = load i32, ptr %1, align 4, !tbaa !28    ; 2 uses
  %i.yl = icmp sgt i32 %i.yj, %i.yk
  br i1 %i.yl, label %.loopexit924, label %bb.aq

.loopexit924:                                     ; preds = %bb.ao, %bb.bz, %bb.g, %bb.ap, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dsyr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
end_hunk_1
