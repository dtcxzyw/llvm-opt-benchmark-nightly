Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlantb?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlantb_:bb.a

.loopexit479:                                     ; preds = %vec.epilog.scalar.ph1075, %middle.block1071, %vec.epilog.middle.block1085, %bb.at
  %indvars.iv.next754 = add nuw i32 %indvars.iv753, 1
  %exitcond758.not = icmp eq i32 %indvars.iv753, %i.qt
  %indvar.next1038 = add i64 %indvar1037, 1
  br i1 %exitcond758.not, label %.loopexit478, label %bb.at, !llvm.loop !44

bb.at:                                            ; preds = %.lr.ph578, %.loopexit479
  %indvar1037 = phi i64 [ 0, %.lr.ph578 ], [ %indvar.next1038, %.loopexit479 ] ; 6 uses
  %indvars.iv753 = phi i32 [ 2, %.lr.ph578 ], [ %indvars.iv.next754, %.loopexit479 ] ; 6 uses
  %.8373577 = phi i32 [ 1, %.lr.ph578 ], [ %i.sf, %.loopexit479 ] ; 4 uses
  %i.ri = add i64 %i.rf, %indvar1037
  %smin1053 = tail call i64 @llvm.smin.i64(i64 %i.ri, i64 %i.rg)
  %i.rj = sext i32 %indvars.iv753 to i64          ; 2 uses
  %smax1054 = tail call i64 @llvm.smax.i64(i64 %smin1053, i64 %i.rj)
  %i.rk = add i64 %smax1054, 1
  %i.rl = sub i64 %i.rk, %i.rj                    ; 7 uses
  %i.rm = sext i32 %indvars.iv753 to i64          ; 2 uses
  %i.rn = shl nsw i64 %i.rm, 3                    ; 2 uses
  %scevgep1042 = getelementptr i8, ptr %scevgep1041, i64 %i.rn
  %i.ro = add i64 %i.qz, %indvar1037
  %smin1043 = tail call i64 @llvm.smin.i64(i64 %i.ro, i64 %i.ra)
  %smax1044 = tail call i64 @llvm.smax.i64(i64 %smin1043, i64 %i.rm)
  %i.rp = shl nsw i64 %smax1044, 3                ; 2 uses
  %scevgep1045 = getelementptr i8, ptr %7, i64 %i.rp
  %i.rq = trunc i64 %indvar1037 to i32
  %i.rr = mul i32 %i.e, %i.rq
  %i.rs = add i32 %i.rr, %i.rc
  %i.rt = sext i32 %i.rs to i64
  %i.ru = shl nsw i64 %i.rt, 3                    ; 2 uses
  %scevgep1047 = getelementptr i8, ptr %scevgep1046, i64 %i.ru
  %i.rv = add i64 %i.rp, %i.ru
  %i.rw = sub i64 %i.rv, %i.rn
  %scevgep1049 = getelementptr i8, ptr %scevgep1048, i64 %i.rw
  %i.rx = add i64 %i.qv, %indvar1037
  %smin = tail call i64 @llvm.smin.i64(i64 %i.rx, i64 %i.qw)
  %i.ry = sext i32 %indvars.iv753 to i64          ; 2 uses
  %smax1039 = tail call i64 @llvm.smax.i64(i64 %smin, i64 %i.ry)
  %i.rz = sub i64 %smax1039, %i.ry                ; 2 uses
  %i.sa = trunc i64 %indvar1037 to i32
  %i.sb = mul i32 %i.e, %i.sa
  %i.sc = add i32 %i.sb, %i.qx                    ; 2 uses
  %i.sd = add nsw i32 %i.qs, %.8373577
  %i.se = tail call i32 @llvm.smin.i32(i32 %i.ix, i32 %i.sd) ; 2 uses
  %i.sf = add nuw nsw i32 %.8373577, 1
  %.not424570.not = icmp slt i32 %.8373577, %i.se
  br i1 %.not424570.not, label %iter.check1074, label %.loopexit479

iter.check1074:                                   ; preds = %bb.at
  %i.sg = sext i32 %indvars.iv753 to i64          ; 7 uses
  %reass.sub664 = mul i32 %.8373577, %.8373577665
  %i.sh = add i32 %reass.sub664, 1                ; 3 uses
  %i.si = sext i32 %i.se to i64
  %min.iters.check1055 = icmp ult i64 %i.rl, 4
  br i1 %min.iters.check1055, label %vec.epilog.scalar.ph1075.preheader, label %vector.scevcheck1036

vector.scevcheck1036:                             ; preds = %iter.check1074
  %i.sj = trunc i64 %i.rz to i32
  %i.sk = add i32 %i.sc, %i.sj
  %i.sl = icmp slt i32 %i.sk, %i.sc
  %i.sm = icmp ugt i64 %i.rz, 4294967295
  %i.sn = or i1 %i.sl, %i.sm
  br i1 %i.sn, label %vec.epilog.scalar.ph1075.preheader, label %vector.memcheck1040

vector.memcheck1040:                              ; preds = %vector.scevcheck1036
  %bound01050 = icmp ult ptr %scevgep1042, %scevgep1049
  %bound11051 = icmp ult ptr %scevgep1047, %scevgep1045
  %found.conflict1052 = and i1 %bound01050, %bound11051
  br i1 %found.conflict1052, label %vec.epilog.scalar.ph1075.preheader, label %vector.main.loop.iter.check1056

vector.main.loop.iter.check1056:                  ; preds = %vector.memcheck1040
  %min.iters.check1057 = icmp ult i64 %i.rl, 16
  br i1 %min.iters.check1057, label %vec.epilog.ph1078, label %vector.ph1058

vector.ph1058:                                    ; preds = %vector.main.loop.iter.check1056
  %i.so = and i64 %i.rl, 12
  %n.vec1059 = and i64 %i.rl, -16                 ; 4 uses
  %i.sp = add i64 %n.vec1059, %i.sg
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %vector.ph1058
  %index1061 = phi i64 [ 0, %vector.ph1058 ], [ %index.next1070, %vector.body1060 ] ; 2 uses
  %i.sq = add nuw i64 %index1061, %i.sg           ; 2 uses
  %i.sr = trunc nsw i64 %i.sq to i32
  %i.ss = add i32 %i.sh, %i.sr
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.st ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 96
  %wide.load1062 = load <4 x double>, ptr %i.su, align 8, !tbaa !65, !alias.scope !76 ; 3 uses
  %wide.load1063 = load <4 x double>, ptr %i.sv, align 8, !tbaa !65, !alias.scope !76 ; 3 uses
  %wide.load1064 = load <4 x double>, ptr %i.sw, align 8, !tbaa !65, !alias.scope !76 ; 3 uses
  %wide.load1065 = load <4 x double>, ptr %i.sx, align 8, !tbaa !65, !alias.scope !76 ; 3 uses
  %i.sy = fcmp oge <4 x double> %wide.load1062, zeroinitializer
  %i.sz = fcmp oge <4 x double> %wide.load1063, zeroinitializer
  %i.ta = fcmp oge <4 x double> %wide.load1064, zeroinitializer
  %i.tb = fcmp oge <4 x double> %wide.load1065, zeroinitializer
  %i.tc = fneg <4 x double> %wide.load1062
  %i.td = fneg <4 x double> %wide.load1063
  %i.te = fneg <4 x double> %wide.load1064
  %i.tf = fneg <4 x double> %wide.load1065
  %i.tg = select <4 x i1> %i.sy, <4 x double> %wide.load1062, <4 x double> %i.tc
  %i.th = select <4 x i1> %i.sz, <4 x double> %wide.load1063, <4 x double> %i.td
  %i.ti = select <4 x i1> %i.ta, <4 x double> %wide.load1064, <4 x double> %i.te
  %i.tj = select <4 x i1> %i.tb, <4 x double> %wide.load1065, <4 x double> %i.tf
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.sq ; 5 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 64 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 96 ; 2 uses
  %wide.load1066 = load <4 x double>, ptr %i.tk, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  %wide.load1067 = load <4 x double>, ptr %i.tl, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  %wide.load1068 = load <4 x double>, ptr %i.tm, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  %wide.load1069 = load <4 x double>, ptr %i.tn, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  %i.to = fadd <4 x double> %wide.load1066, %i.tg
  %i.tp = fadd <4 x double> %wide.load1067, %i.th
  %i.tq = fadd <4 x double> %wide.load1068, %i.ti
  %i.tr = fadd <4 x double> %wide.load1069, %i.tj
  store <4 x double> %i.to, ptr %i.tk, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  store <4 x double> %i.tp, ptr %i.tl, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  store <4 x double> %i.tq, ptr %i.tm, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  store <4 x double> %i.tr, ptr %i.tn, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  %index.next1070 = add nuw i64 %index1061, 16    ; 2 uses
  %i.ts = icmp eq i64 %index.next1070, %n.vec1059
  br i1 %i.ts, label %middle.block1071, label %vector.body1060, !llvm.loop !48

middle.block1071:                                 ; preds = %vector.body1060
  %cmp.n1072 = icmp eq i64 %i.rl, %n.vec1059
  br i1 %cmp.n1072, label %.loopexit479, label %vec.epilog.iter.check1076

vec.epilog.iter.check1076:                        ; preds = %middle.block1071
  %min.epilog.iters.check1077 = icmp eq i64 %i.so, 0
  br i1 %min.epilog.iters.check1077, label %vec.epilog.scalar.ph1075.preheader, label %vec.epilog.ph1078, !prof !71

vec.epilog.ph1078:                                ; preds = %vector.main.loop.iter.check1056, %vec.epilog.iter.check1076
  %vec.epilog.resume.val1073 = phi i64 [ %n.vec1059, %vec.epilog.iter.check1076 ], [ 0, %vector.main.loop.iter.check1056 ]
  %n.vec1079 = and i64 %i.rl, -4                  ; 3 uses
  %i.tt = add i64 %n.vec1079, %i.sg
  br label %vec.epilog.vector.body1080

vec.epilog.vector.body1080:                       ; preds = %vec.epilog.vector.body1080, %vec.epilog.ph1078
  %index1081 = phi i64 [ %vec.epilog.resume.val1073, %vec.epilog.ph1078 ], [ %index.next1084, %vec.epilog.vector.body1080 ] ; 2 uses
  %i.tu = add nuw i64 %index1081, %i.sg           ; 2 uses
  %i.tv = trunc nsw i64 %i.tu to i32
  %i.tw = add i32 %i.sh, %i.tv
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.tx
  %wide.load1082 = load <4 x double>, ptr %i.ty, align 8, !tbaa !65, !alias.scope !76 ; 3 uses
  %i.tz = fcmp oge <4 x double> %wide.load1082, zeroinitializer
  %i.ua = fneg <4 x double> %wide.load1082
  %i.ub = select <4 x i1> %i.tz, <4 x double> %wide.load1082, <4 x double> %i.ua
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.tu ; 2 uses
  %wide.load1083 = load <4 x double>, ptr %i.uc, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  %i.ud = fadd <4 x double> %wide.load1083, %i.ub
  store <4 x double> %i.ud, ptr %i.uc, align 8, !tbaa !65, !alias.scope !77, !noalias !76
  %index.next1084 = add nuw i64 %index1081, 4     ; 2 uses
  %i.ue = icmp eq i64 %index.next1084, %n.vec1079
  br i1 %i.ue, label %vec.epilog.middle.block1085, label %vec.epilog.vector.body1080, !llvm.loop !49

vec.epilog.middle.block1085:                      ; preds = %vec.epilog.vector.body1080
  %cmp.n1086 = icmp eq i64 %i.rl, %n.vec1079
  br i1 %cmp.n1086, label %.loopexit479, label %vec.epilog.scalar.ph1075.preheader

vec.epilog.scalar.ph1075.preheader:               ; preds = %vector.memcheck1040, %vector.scevcheck1036, %iter.check1074, %vec.epilog.iter.check1076, %vec.epilog.middle.block1085
  %indvars.iv755.ph = phi i64 [ %i.sg, %iter.check1074 ], [ %i.sg, %vector.scevcheck1036 ], [ %i.sg, %vector.memcheck1040 ], [ %i.sp, %vec.epilog.iter.check1076 ], [ %i.tt, %vec.epilog.middle.block1085 ]
  br label %vec.epilog.scalar.ph1075

vec.epilog.scalar.ph1075:                         ; preds = %vec.epilog.scalar.ph1075.preheader, %vec.epilog.scalar.ph1075
  %indvars.iv755 = phi i64 [ %indvars.iv.next756, %vec.epilog.scalar.ph1075 ], [ %indvars.iv755.ph, %vec.epilog.scalar.ph1075.preheader ] ; 4 uses
  %i.uf = trunc nsw i64 %indvars.iv755 to i32
  %i.ug = add i32 %i.sh, %i.uf
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.uh
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !65 ; 3 uses
  %i.uk = fcmp oge double %i.uj, 0.000000e+00
  %i.ul = fneg double %i.uj
  %i.um = select i1 %i.uk, double %i.uj, double %i.ul
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv755 ; 2 uses
  %i.uo = load double, ptr %i.un, align 8, !tbaa !65
  %i.up = fadd double %i.uo, %i.um
  store double %i.up, ptr %i.un, align 8, !tbaa !65
  %indvars.iv.next756 = add nuw nsw i64 %indvars.iv755, 1
  %.not424.not = icmp slt i64 %indvars.iv755, %i.si
  br i1 %.not424.not, label %vec.epilog.scalar.ph1075, label %.loopexit479, !llvm.loop !50

bb.au:                                            ; preds = %bb.ar
  br i1 %.not417580, label %.loopexit478, label %.lr.ph593

.lr.ph593:                                        ; preds = %bb.au
  %i.uq = zext nneg i32 %i.ix to i64
  %i.ur = shl nuw nsw i64 %i.uq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.ur, i1 false), !tbaa !65
  %i.us = load i32, ptr %4, align 4, !tbaa !63    ; 4 uses
  %i.ut = add nuw i32 %i.ix, 1
  %wide.trip.count769 = zext i32 %i.ut to i64
  %.9374592667 = add i32 %i.e, -1
  %i.uu = zext nneg i32 %i.ix to i64
  %i.uv = add nsw i32 %i.us, 1
  %i.uw = add i32 %i.e, 1
  %i.ux = zext nneg i32 %i.ix to i64
  %8 = add i32 %i.us, 1
  %i.uy = shl nsw i64 %i.f, 3                     ; 2 uses
  %scevgep1099 = getelementptr i8, ptr %5, i64 %i.uy
  %i.uz = add i32 %i.e, 1
  %i.va = getelementptr i8, ptr %5, i64 %i.uy
  %scevgep1101 = getelementptr i8, ptr %i.va, i64 8
  %i.vb = zext nneg i32 %i.ix to i64
  %9 = add i32 %i.us, 1
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph593, %._crit_edge588
  %indvar1092 = phi i64 [ 0, %.lr.ph593 ], [ %indvar.next1093, %._crit_edge588 ] ; 9 uses
  %indvar1089 = phi i32 [ 0, %.lr.ph593 ], [ %indvar.next1090, %._crit_edge588 ] ; 2 uses
  %indvars.iv762 = phi i64 [ 1, %.lr.ph593 ], [ %indvars.iv.next763, %._crit_edge588 ] ; 9 uses
  %10 = trunc i64 %indvar1092 to i32
  %11 = add i32 %9, %10
  %12 = sext i32 %11 to i64
  %smin1106 = tail call i64 @llvm.smin.i64(i64 %i.vb, i64 %12)
  %i.vc = sub i64 %smin1106, %indvar1092          ; 7 uses
  %i.vd = shl nuw nsw i64 %indvar1092, 3          ; 2 uses
  %scevgep1095 = getelementptr i8, ptr %7, i64 %i.vd
  %i.ve = getelementptr i8, ptr %7, i64 %i.vd
  %scevgep1096 = getelementptr i8, ptr %i.ve, i64 8
  %13 = trunc i64 %indvar1092 to i32
  %14 = add i32 %8, %13
  %15 = sext i32 %14 to i64
  %smin1097 = tail call i64 @llvm.smin.i64(i64 %i.ux, i64 %15)
  %i.vf = xor i64 %indvar1092, -1
  %i.vg = add i64 %smin1097, %i.vf
  %i.vh = shl nsw i64 %i.vg, 3                    ; 2 uses
  %scevgep1098 = getelementptr i8, ptr %scevgep1096, i64 %i.vh
  %i.vi = trunc i64 %indvar1092 to i32
  %i.vj = mul i32 %i.e, %i.vi
  %i.vk = add i32 %i.vj, %i.uz
  %i.vl = sext i32 %i.vk to i64
  %i.vm = shl nsw i64 %i.vl, 3                    ; 2 uses
  %scevgep1100 = getelementptr i8, ptr %scevgep1099, i64 %i.vm
  %i.vn = getelementptr i8, ptr %scevgep1101, i64 %i.vh
  %scevgep1102 = getelementptr i8, ptr %i.vn, i64 %i.vm
  %i.vo = add i32 %i.uv, %indvar1089
  %i.vp = sext i32 %i.vo to i64
  %smin1091 = tail call i64 @llvm.smin.i64(i64 %i.uu, i64 %i.vp)
  %i.vq = xor i64 %indvar1092, -1
  %i.vr = add i64 %smin1091, %i.vq                ; 2 uses
  %i.vs = trunc i64 %indvar1092 to i32
  %i.vt = mul i32 %i.e, %i.vs
  %i.vu = add i32 %i.vt, %i.uw                    ; 2 uses
  %indvars768 = trunc i64 %indvars.iv762 to i32   ; 3 uses
  %i.vv = add nsw i32 %i.us, %indvars768
  %i.vw = tail call i32 @llvm.smin.i32(i32 %i.ix, i32 %i.vv) ; 2 uses
  %.not420584 = icmp slt i32 %i.vw, %indvars768
  br i1 %.not420584, label %._crit_edge588, label %iter.check1126

iter.check1126:                                   ; preds = %bb.av
  %reass.sub666 = mul i32 %.9374592667, %indvars768
  %i.vx = add i32 %reass.sub666, 1                ; 3 uses
  %i.vy = sext i32 %i.vw to i64
  %min.iters.check1107 = icmp ult i64 %i.vc, 4
  br i1 %min.iters.check1107, label %vec.epilog.scalar.ph1127.preheader, label %vector.scevcheck1088

vector.scevcheck1088:                             ; preds = %iter.check1126
  %i.vz = trunc i64 %i.vr to i32
  %i.wa = add i32 %i.vu, %i.vz
  %i.wb = icmp slt i32 %i.wa, %i.vu
  %i.wc = icmp ugt i64 %i.vr, 4294967295
  %i.wd = or i1 %i.wb, %i.wc
  br i1 %i.wd, label %vec.epilog.scalar.ph1127.preheader, label %vector.memcheck1094

vector.memcheck1094:                              ; preds = %vector.scevcheck1088
  %bound01103 = icmp ult ptr %scevgep1095, %scevgep1102
  %bound11104 = icmp ult ptr %scevgep1100, %scevgep1098
  %found.conflict1105 = and i1 %bound01103, %bound11104
  br i1 %found.conflict1105, label %vec.epilog.scalar.ph1127.preheader, label %vector.main.loop.iter.check1108

vector.main.loop.iter.check1108:                  ; preds = %vector.memcheck1094
  %min.iters.check1109 = icmp ult i64 %i.vc, 16
  br i1 %min.iters.check1109, label %vec.epilog.ph1130, label %vector.ph1110

vector.ph1110:                                    ; preds = %vector.main.loop.iter.check1108
  %i.we = and i64 %i.vc, 12
  %n.vec1111 = and i64 %i.vc, -16                 ; 4 uses
  %i.wf = add i64 %indvars.iv762, %n.vec1111
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1110
  %index1113 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1122, %vector.body1112 ] ; 2 uses
  %i.wg = add nuw i64 %indvars.iv762, %index1113  ; 2 uses
  %i.wh = trunc nuw nsw i64 %i.wg to i32
  %i.wi = add i32 %i.vx, %i.wh
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.wj ; 4 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 32
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 96
  %wide.load1114 = load <4 x double>, ptr %i.wk, align 8, !tbaa !65, !alias.scope !78 ; 3 uses
  %wide.load1115 = load <4 x double>, ptr %i.wl, align 8, !tbaa !65, !alias.scope !78 ; 3 uses
  %wide.load1116 = load <4 x double>, ptr %i.wm, align 8, !tbaa !65, !alias.scope !78 ; 3 uses
  %wide.load1117 = load <4 x double>, ptr %i.wn, align 8, !tbaa !65, !alias.scope !78 ; 3 uses
  %i.wo = fcmp oge <4 x double> %wide.load1114, zeroinitializer
  %i.wp = fcmp oge <4 x double> %wide.load1115, zeroinitializer
  %i.wq = fcmp oge <4 x double> %wide.load1116, zeroinitializer
  %i.wr = fcmp oge <4 x double> %wide.load1117, zeroinitializer
  %i.ws = fneg <4 x double> %wide.load1114
  %i.wt = fneg <4 x double> %wide.load1115
  %i.wu = fneg <4 x double> %wide.load1116
  %i.wv = fneg <4 x double> %wide.load1117
  %i.ww = select <4 x i1> %i.wo, <4 x double> %wide.load1114, <4 x double> %i.ws
  %i.wx = select <4 x i1> %i.wp, <4 x double> %wide.load1115, <4 x double> %i.wt
  %i.wy = select <4 x i1> %i.wq, <4 x double> %wide.load1116, <4 x double> %i.wu
  %i.wz = select <4 x i1> %i.wr, <4 x double> %wide.load1117, <4 x double> %i.wv
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.wg ; 5 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 32 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 64 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 96 ; 2 uses
  %wide.load1118 = load <4 x double>, ptr %i.xa, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  %wide.load1119 = load <4 x double>, ptr %i.xb, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  %wide.load1120 = load <4 x double>, ptr %i.xc, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  %wide.load1121 = load <4 x double>, ptr %i.xd, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  %i.xe = fadd <4 x double> %wide.load1118, %i.ww
  %i.xf = fadd <4 x double> %wide.load1119, %i.wx
  %i.xg = fadd <4 x double> %wide.load1120, %i.wy
  %i.xh = fadd <4 x double> %wide.load1121, %i.wz
  store <4 x double> %i.xe, ptr %i.xa, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  store <4 x double> %i.xf, ptr %i.xb, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  store <4 x double> %i.xg, ptr %i.xc, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  store <4 x double> %i.xh, ptr %i.xd, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  %index.next1122 = add nuw i64 %index1113, 16    ; 2 uses
  %i.xi = icmp eq i64 %index.next1122, %n.vec1111
  br i1 %i.xi, label %middle.block1123, label %vector.body1112, !llvm.loop !54

middle.block1123:                                 ; preds = %vector.body1112
  %cmp.n1124 = icmp eq i64 %i.vc, %n.vec1111
  br i1 %cmp.n1124, label %._crit_edge588, label %vec.epilog.iter.check1128

vec.epilog.iter.check1128:                        ; preds = %middle.block1123
  %min.epilog.iters.check1129 = icmp eq i64 %i.we, 0
  br i1 %min.epilog.iters.check1129, label %vec.epilog.scalar.ph1127.preheader, label %vec.epilog.ph1130, !prof !71

vec.epilog.ph1130:                                ; preds = %vector.main.loop.iter.check1108, %vec.epilog.iter.check1128
  %vec.epilog.resume.val1125 = phi i64 [ %n.vec1111, %vec.epilog.iter.check1128 ], [ 0, %vector.main.loop.iter.check1108 ]
  %n.vec1131 = and i64 %i.vc, -4                  ; 3 uses
  %i.xj = add i64 %indvars.iv762, %n.vec1131
  br label %vec.epilog.vector.body1132

vec.epilog.vector.body1132:                       ; preds = %vec.epilog.vector.body1132, %vec.epilog.ph1130
  %index1133 = phi i64 [ %vec.epilog.resume.val1125, %vec.epilog.ph1130 ], [ %index.next1136, %vec.epilog.vector.body1132 ] ; 2 uses
  %i.xk = add nuw i64 %indvars.iv762, %index1133  ; 2 uses
  %i.xl = trunc nuw nsw i64 %i.xk to i32
  %i.xm = add i32 %i.vx, %i.xl
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.xn
  %wide.load1134 = load <4 x double>, ptr %i.xo, align 8, !tbaa !65, !alias.scope !78 ; 3 uses
  %i.xp = fcmp oge <4 x double> %wide.load1134, zeroinitializer
  %i.xq = fneg <4 x double> %wide.load1134
  %i.xr = select <4 x i1> %i.xp, <4 x double> %wide.load1134, <4 x double> %i.xq
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.xk ; 2 uses
  %wide.load1135 = load <4 x double>, ptr %i.xs, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  %i.xt = fadd <4 x double> %wide.load1135, %i.xr
  store <4 x double> %i.xt, ptr %i.xs, align 8, !tbaa !65, !alias.scope !79, !noalias !78
  %index.next1136 = add nuw i64 %index1133, 4     ; 2 uses
  %i.xu = icmp eq i64 %index.next1136, %n.vec1131
  br i1 %i.xu, label %vec.epilog.middle.block1137, label %vec.epilog.vector.body1132, !llvm.loop !55

vec.epilog.middle.block1137:                      ; preds = %vec.epilog.vector.body1132
  %cmp.n1138 = icmp eq i64 %i.vc, %n.vec1131
  br i1 %cmp.n1138, label %._crit_edge588, label %vec.epilog.scalar.ph1127.preheader

vec.epilog.scalar.ph1127.preheader:               ; preds = %vector.memcheck1094, %vector.scevcheck1088, %iter.check1126, %vec.epilog.iter.check1128, %vec.epilog.middle.block1137
  %indvars.iv764.ph = phi i64 [ %indvars.iv762, %iter.check1126 ], [ %indvars.iv762, %vector.scevcheck1088 ], [ %indvars.iv762, %vector.memcheck1094 ], [ %i.wf, %vec.epilog.iter.check1128 ], [ %i.xj, %vec.epilog.middle.block1137 ]
  br label %vec.epilog.scalar.ph1127

vec.epilog.scalar.ph1127:                         ; preds = %vec.epilog.scalar.ph1127.preheader, %vec.epilog.scalar.ph1127
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %vec.epilog.scalar.ph1127 ], [ %indvars.iv764.ph, %vec.epilog.scalar.ph1127.preheader ] ; 4 uses
  %i.xv = trunc nuw nsw i64 %indvars.iv764 to i32
  %i.xw = add i32 %i.vx, %i.xv
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.xx
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !65 ; 3 uses
  %i.ya = fcmp oge double %i.xz, 0.000000e+00
  %i.yb = fneg double %i.xz
  %i.yc = select i1 %i.ya, double %i.xz, double %i.yb
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv764 ; 2 uses
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !65
  %i.yf = fadd double %i.ye, %i.yc
  store double %i.yf, ptr %i.yd, align 8, !tbaa !65
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1
  %.not420.not = icmp slt i64 %indvars.iv764, %i.vy
  br i1 %.not420.not, label %vec.epilog.scalar.ph1127, label %._crit_edge588, !llvm.loop !56

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1127, %middle.block1123, %vec.epilog.middle.block1137, %bb.av
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond770.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count769
  %indvar.next1090 = add i32 %indvar1089, 1
  %indvar.next1093 = add i64 %indvar1092, 1
  br i1 %exitcond770.not, label %.loopexit478, label %bb.av, !llvm.loop !57

.loopexit478:                                     ; preds = %._crit_edge546, %._crit_edge559, %.loopexit479, %._crit_edge588, %bb.an, %bb.ap, %bb.as, %bb.au
  %.not432595 = icmp slt i32 %i.ix, 1
  br i1 %.not432595, label %.loopexit467, label %.lr.ph599.preheader

.lr.ph599.preheader:                              ; preds = %.loopexit478
  %i.yg = add nuw i32 %i.ix, 1
  %wide.trip.count774 = zext i32 %i.yg to i64
  br label %.lr.ph599

.lr.ph599:                                        ; preds = %.lr.ph599.preheader, %._crit_edge823
  %indvars.iv771 = phi i64 [ 1, %.lr.ph599.preheader ], [ %indvars.iv.next772, %._crit_edge823 ] ; 2 uses
  %.16597 = phi double [ 0.000000e+00, %.lr.ph599.preheader ], [ %.17, %._crit_edge823 ] ; 2 uses
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv771
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !65 ; 3 uses
  store double %i.yi, ptr %i.c, align 8, !tbaa !65
  %i.yj = fcmp olt double %.16597, %i.yi
  br i1 %i.yj, label %._crit_edge823, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph599
  %i.yk = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not433 = icmp eq i32 %i.yk, 0
  %.pre824 = load double, ptr %i.c, align 8
  %spec.select896 = select i1 %.not433, double %.16597, double %.pre824
  br label %._crit_edge823

._crit_edge823:                                   ; preds = %bb.aw, %.lr.ph599
  %.17 = phi double [ %spec.select896, %bb.aw ], [ %i.yi, %.lr.ph599 ] ; 2 uses
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 1 ; 2 uses
  %exitcond775.not = icmp eq i64 %indvars.iv.next772, %wide.trip.count774
  br i1 %exitcond775.not, label %.loopexit467, label %.lr.ph599, !llvm.loop !58
end_hunk_0
