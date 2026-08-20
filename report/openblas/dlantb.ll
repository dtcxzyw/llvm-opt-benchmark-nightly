loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlantb_:bb.a
  %i.ot = fneg <4 x double> %wide.load988
  %i.ou = fneg <4 x double> %wide.load989
  %i.ov = fneg <4 x double> %wide.load990
  %i.ow = select <4 x i1> %i.oo, <4 x double> %wide.load987, <4 x double> %i.os
  %i.ox = select <4 x i1> %i.op, <4 x double> %wide.load988, <4 x double> %i.ot
  %i.oy = select <4 x i1> %i.oq, <4 x double> %wide.load989, <4 x double> %i.ou
  %i.oz = select <4 x i1> %i.or, <4 x double> %wide.load990, <4 x double> %i.ov
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.og ; 5 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 64 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 96 ; 2 uses
  %wide.load991 = load <4 x double>, ptr %i.pa, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  %wide.load992 = load <4 x double>, ptr %i.pb, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  %wide.load993 = load <4 x double>, ptr %i.pc, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  %wide.load994 = load <4 x double>, ptr %i.pd, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  %i.pe = fadd <4 x double> %wide.load991, %i.ow
  %i.pf = fadd <4 x double> %wide.load992, %i.ox
  %i.pg = fadd <4 x double> %wide.load993, %i.oy
  %i.ph = fadd <4 x double> %wide.load994, %i.oz
  store <4 x double> %i.pe, ptr %i.pa, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  store <4 x double> %i.pf, ptr %i.pb, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  store <4 x double> %i.pg, ptr %i.pc, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  store <4 x double> %i.ph, ptr %i.pd, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  %index.next995 = add nuw i64 %index986, 16      ; 2 uses
  %i.pi = icmp eq i64 %index.next995, %n.vec984
  br i1 %i.pi, label %middle.block996, label %vector.body985, !llvm.loop !50

middle.block996:                                  ; preds = %vector.body985
  %cmp.n997 = icmp eq i64 %i.nh, %n.vec984
  br i1 %cmp.n997, label %._crit_edge559, label %vec.epilog.iter.check1001

vec.epilog.iter.check1001:                        ; preds = %middle.block996
  %min.epilog.iters.check1002 = icmp eq i64 %i.oe, 0
  br i1 %min.epilog.iters.check1002, label %vec.epilog.scalar.ph1000.preheader, label %vec.epilog.ph1003, !prof !33

vec.epilog.ph1003:                                ; preds = %vector.main.loop.iter.check981, %vec.epilog.iter.check1001
  %vec.epilog.resume.val998 = phi i64 [ %n.vec984, %vec.epilog.iter.check1001 ], [ 0, %vector.main.loop.iter.check981 ]
  %n.vec1004 = and i64 %i.nh, -4                  ; 3 uses
  %i.pj = add i64 %n.vec1004, %i.nx
  br label %vec.epilog.vector.body1005

vec.epilog.vector.body1005:                       ; preds = %vec.epilog.vector.body1005, %vec.epilog.ph1003
  %index1006 = phi i64 [ %vec.epilog.resume.val998, %vec.epilog.ph1003 ], [ %index.next1009, %vec.epilog.vector.body1005 ] ; 2 uses
  %i.pk = add nuw i64 %index1006, %i.nx           ; 2 uses
  %i.pl = trunc nuw nsw i64 %i.pk to i32
  %i.pm = add i32 %.reass881, %i.pl
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.pn
  %wide.load1007 = load <4 x double>, ptr %i.po, align 8, !tbaa !9, !alias.scope !45 ; 3 uses
  %i.pp = fcmp oge <4 x double> %wide.load1007, zeroinitializer
  %i.pq = fneg <4 x double> %wide.load1007
  %i.pr = select <4 x i1> %i.pp, <4 x double> %wide.load1007, <4 x double> %i.pq
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.pk ; 2 uses
  %wide.load1008 = load <4 x double>, ptr %i.ps, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  %i.pt = fadd <4 x double> %wide.load1008, %i.pr
  store <4 x double> %i.pt, ptr %i.ps, align 8, !tbaa !9, !alias.scope !48, !noalias !45
  %index.next1009 = add nuw i64 %index1006, 4     ; 2 uses
  %i.pu = icmp eq i64 %index.next1009, %n.vec1004
  br i1 %i.pu, label %vec.epilog.middle.block1010, label %vec.epilog.vector.body1005, !llvm.loop !51

vec.epilog.middle.block1010:                      ; preds = %vec.epilog.vector.body1005
  %cmp.n1011 = icmp eq i64 %i.nh, %n.vec1004
  br i1 %cmp.n1011, label %._crit_edge559, label %vec.epilog.scalar.ph1000.preheader

vec.epilog.scalar.ph1000.preheader:               ; preds = %vector.memcheck965, %vector.scevcheck961, %iter.check999, %vec.epilog.iter.check1001, %vec.epilog.middle.block1010
  %indvars.iv740.ph = phi i64 [ %i.nx, %iter.check999 ], [ %i.nx, %vector.scevcheck961 ], [ %i.nx, %vector.memcheck965 ], [ %i.of, %vec.epilog.iter.check1001 ], [ %i.pj, %vec.epilog.middle.block1010 ]
  br label %vec.epilog.scalar.ph1000

vec.epilog.scalar.ph1000:                         ; preds = %vec.epilog.scalar.ph1000.preheader, %vec.epilog.scalar.ph1000
  %indvars.iv740 = phi i64 [ %indvars.iv.next741, %vec.epilog.scalar.ph1000 ], [ %indvars.iv740.ph, %vec.epilog.scalar.ph1000.preheader ] ; 4 uses
  %i.pv = trunc nuw nsw i64 %indvars.iv740 to i32
  %i.pw = add i32 %.reass881, %i.pv
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.px
  %i.pz = load double, ptr %i.py, align 8, !tbaa !9 ; 3 uses
  %i.qa = fcmp oge double %i.pz, 0.000000e+00
  %i.qb = fneg double %i.pz
  %i.qc = select i1 %i.qa, double %i.pz, double %i.qb
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv740 ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !9
  %i.qf = fadd double %i.qe, %i.qc
  store double %i.qf, ptr %i.qd, align 8, !tbaa !9
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1
  %.not429.not = icmp samesign ult i64 %indvars.iv740, %indvars.iv743
  br i1 %.not429.not, label %vec.epilog.scalar.ph1000, label %._crit_edge559, !llvm.loop !52

._crit_edge559:                                   ; preds = %vec.epilog.scalar.ph1000, %middle.block996, %vec.epilog.middle.block1010, %bb.aq
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %indvars.iv.next738 = add i32 %indvars.iv737, 1
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count746
  %indvar.next964 = add i32 %indvar963, 1
  br i1 %exitcond747.not, label %.loopexit478, label %bb.aq, !llvm.loop !53

bb.ar:                                            ; preds = %bb.al
  br i1 %.not416, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %.not417580, label %.loopexit478, label %iter.check1024

iter.check1024:                                   ; preds = %bb.as
  %i.qg = add nuw i32 %i.ix, 1
  %wide.trip.count751 = zext i32 %i.qg to i64
  %i.qh = zext nneg i32 %i.ix to i64              ; 5 uses
  %min.iters.check1013 = icmp ult i32 %i.ix, 4
  br i1 %min.iters.check1013, label %.lr.ph569.preheader, label %vector.main.loop.iter.check1014

vector.main.loop.iter.check1014:                  ; preds = %iter.check1024
  %min.iters.check1015 = icmp ult i32 %i.ix, 16
  br i1 %min.iters.check1015, label %vec.epilog.ph1028, label %vector.ph1016

vector.ph1016:                                    ; preds = %vector.main.loop.iter.check1014
  %i.qi = and i64 %i.qh, 12
  %n.vec1017 = and i64 %i.qh, 2147483632          ; 4 uses
  %i.qj = or disjoint i64 %n.vec1017, 1
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1016
  %index1019 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1020, %vector.body1018 ] ; 2 uses
  %i.qk = getelementptr [8 x i8], ptr %7, i64 %index1019 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.qk, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.ql, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.qm, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.qn, align 8, !tbaa !9
  %index.next1020 = add nuw i64 %index1019, 16    ; 2 uses
  %i.qo = icmp eq i64 %index.next1020, %n.vec1017
  br i1 %i.qo, label %middle.block1021, label %vector.body1018, !llvm.loop !54

middle.block1021:                                 ; preds = %vector.body1018
  %cmp.n1022 = icmp eq i64 %n.vec1017, %i.qh
  br i1 %cmp.n1022, label %.lr.ph578, label %vec.epilog.iter.check1026

vec.epilog.iter.check1026:                        ; preds = %middle.block1021
  %min.epilog.iters.check1027 = icmp eq i64 %i.qi, 0
  br i1 %min.epilog.iters.check1027, label %.lr.ph569.preheader, label %vec.epilog.ph1028, !prof !33

vec.epilog.ph1028:                                ; preds = %vector.main.loop.iter.check1014, %vec.epilog.iter.check1026
  %vec.epilog.resume.val1023 = phi i64 [ %n.vec1017, %vec.epilog.iter.check1026 ], [ 0, %vector.main.loop.iter.check1014 ]
  %n.vec1029 = and i64 %i.qh, 2147483644          ; 3 uses
  %i.qp = or disjoint i64 %n.vec1029, 1
  br label %vec.epilog.vector.body1030

vec.epilog.vector.body1030:                       ; preds = %vec.epilog.vector.body1030, %vec.epilog.ph1028
  %index1031 = phi i64 [ %vec.epilog.resume.val1023, %vec.epilog.ph1028 ], [ %index.next1032, %vec.epilog.vector.body1030 ] ; 2 uses
  %i.qq = getelementptr [8 x i8], ptr %7, i64 %index1031
  store <4 x double> splat (double 1.000000e+00), ptr %i.qq, align 8, !tbaa !9
  %index.next1032 = add nuw i64 %index1031, 4     ; 2 uses
  %i.qr = icmp eq i64 %index.next1032, %n.vec1029
  br i1 %i.qr, label %vec.epilog.middle.block1033, label %vec.epilog.vector.body1030, !llvm.loop !55

vec.epilog.middle.block1033:                      ; preds = %vec.epilog.vector.body1030
  %cmp.n1034 = icmp eq i64 %n.vec1029, %i.qh
  br i1 %cmp.n1034, label %.lr.ph578, label %.lr.ph569.preheader

.lr.ph569.preheader:                              ; preds = %iter.check1024, %vec.epilog.iter.check1026, %vec.epilog.middle.block1033
  %indvars.iv748.ph = phi i64 [ 1, %iter.check1024 ], [ %i.qj, %vec.epilog.iter.check1026 ], [ %i.qp, %vec.epilog.middle.block1033 ]
  br label %.lr.ph569

.lr.ph578:                                        ; preds = %.lr.ph569, %vec.epilog.middle.block1033, %middle.block1021
  %i.qs = load i32, ptr %4, align 4, !tbaa !8     ; 4 uses
  %.8373577665 = add i32 %i.e, -1
  %i.qt = add nuw i32 %i.ix, 1
  %i.qu = sext i32 %i.qs to i64
  %i.qv = add nsw i64 %i.qu, 1
  %i.qw = zext nneg i32 %i.ix to i64
  %i.qx = add i32 %i.e, 2
  %scevgep1041 = getelementptr i8, ptr %7, i64 -8
  %i.qy = sext i32 %i.qs to i64
  %i.qz = add nsw i64 %i.qy, 1
  %i.ra = zext nneg i32 %i.ix to i64
  %i.rb = shl nsw i64 %i.f, 3                     ; 2 uses
  %scevgep1046 = getelementptr i8, ptr %5, i64 %i.rb
  %i.rc = add i32 %i.e, 2
  %i.rd = getelementptr i8, ptr %5, i64 %i.rb
  %scevgep1048 = getelementptr i8, ptr %i.rd, i64 8
  %i.re = sext i32 %i.qs to i64
  %i.rf = add nsw i64 %i.re, 1
  %i.rg = zext nneg i32 %i.ix to i64
  br label %bb.at

.lr.ph569:                                        ; preds = %.lr.ph569.preheader, %.lr.ph569
  %indvars.iv748 = phi i64 [ %indvars.iv.next749, %.lr.ph569 ], [ %indvars.iv748.ph, %.lr.ph569.preheader ] ; 2 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv748
  store double 1.000000e+00, ptr %i.rh, align 8, !tbaa !9
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next749, %wide.trip.count751
  br i1 %exitcond752.not, label %.lr.ph578, label %.lr.ph569, !llvm.loop !56

.loopexit479:                                     ; preds = %vec.epilog.scalar.ph1075, %middle.block1071, %vec.epilog.middle.block1085, %bb.at
  %indvars.iv.next754 = add nuw i32 %indvars.iv753, 1
  %exitcond758.not = icmp eq i32 %indvars.iv753, %i.qt
  %indvar.next1038 = add i64 %indvar1037, 1
  br i1 %exitcond758.not, label %.loopexit478, label %bb.at, !llvm.loop !57

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
  %wide.load1062 = load <4 x double>, ptr %i.su, align 8, !tbaa !9, !alias.scope !58 ; 3 uses
  %wide.load1063 = load <4 x double>, ptr %i.sv, align 8, !tbaa !9, !alias.scope !58 ; 3 uses
  %wide.load1064 = load <4 x double>, ptr %i.sw, align 8, !tbaa !9, !alias.scope !58 ; 3 uses
  %wide.load1065 = load <4 x double>, ptr %i.sx, align 8, !tbaa !9, !alias.scope !58 ; 3 uses
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
  %wide.load1066 = load <4 x double>, ptr %i.tk, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  %wide.load1067 = load <4 x double>, ptr %i.tl, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  %wide.load1068 = load <4 x double>, ptr %i.tm, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  %wide.load1069 = load <4 x double>, ptr %i.tn, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  %i.to = fadd <4 x double> %wide.load1066, %i.tg
  %i.tp = fadd <4 x double> %wide.load1067, %i.th
  %i.tq = fadd <4 x double> %wide.load1068, %i.ti
  %i.tr = fadd <4 x double> %wide.load1069, %i.tj
  store <4 x double> %i.to, ptr %i.tk, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  store <4 x double> %i.tp, ptr %i.tl, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  store <4 x double> %i.tq, ptr %i.tm, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  store <4 x double> %i.tr, ptr %i.tn, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  %index.next1070 = add nuw i64 %index1061, 16    ; 2 uses
  %i.ts = icmp eq i64 %index.next1070, %n.vec1059
  br i1 %i.ts, label %middle.block1071, label %vector.body1060, !llvm.loop !63

middle.block1071:                                 ; preds = %vector.body1060
  %cmp.n1072 = icmp eq i64 %i.rl, %n.vec1059
  br i1 %cmp.n1072, label %.loopexit479, label %vec.epilog.iter.check1076

vec.epilog.iter.check1076:                        ; preds = %middle.block1071
  %min.epilog.iters.check1077 = icmp eq i64 %i.so, 0
  br i1 %min.epilog.iters.check1077, label %vec.epilog.scalar.ph1075.preheader, label %vec.epilog.ph1078, !prof !33

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
  %wide.load1082 = load <4 x double>, ptr %i.ty, align 8, !tbaa !9, !alias.scope !58 ; 3 uses
  %i.tz = fcmp oge <4 x double> %wide.load1082, zeroinitializer
  %i.ua = fneg <4 x double> %wide.load1082
  %i.ub = select <4 x i1> %i.tz, <4 x double> %wide.load1082, <4 x double> %i.ua
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.tu ; 2 uses
  %wide.load1083 = load <4 x double>, ptr %i.uc, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  %i.ud = fadd <4 x double> %wide.load1083, %i.ub
  store <4 x double> %i.ud, ptr %i.uc, align 8, !tbaa !9, !alias.scope !61, !noalias !58
  %index.next1084 = add nuw i64 %index1081, 4     ; 2 uses
  %i.ue = icmp eq i64 %index.next1084, %n.vec1079
  br i1 %i.ue, label %vec.epilog.middle.block1085, label %vec.epilog.vector.body1080, !llvm.loop !64

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
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !9 ; 3 uses
  %i.uk = fcmp oge double %i.uj, 0.000000e+00
  %i.ul = fneg double %i.uj
  %i.um = select i1 %i.uk, double %i.uj, double %i.ul
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv755 ; 2 uses
  %i.uo = load double, ptr %i.un, align 8, !tbaa !9
  %i.up = fadd double %i.uo, %i.um
  store double %i.up, ptr %i.un, align 8, !tbaa !9
  %indvars.iv.next756 = add nuw nsw i64 %indvars.iv755, 1
  %.not424.not = icmp slt i64 %indvars.iv755, %i.si
  br i1 %.not424.not, label %vec.epilog.scalar.ph1075, label %.loopexit479, !llvm.loop !65

bb.au:                                            ; preds = %bb.ar
  br i1 %.not417580, label %.loopexit478, label %.lr.ph593

.lr.ph593:                                        ; preds = %bb.au
  %i.uq = zext nneg i32 %i.ix to i64
  %i.ur = shl nuw nsw i64 %i.uq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.ur, i1 false), !tbaa !9
  %i.us = load i32, ptr %4, align 4, !tbaa !8     ; 4 uses
  %i.ut = add nuw i32 %i.ix, 1
  %wide.trip.count769 = zext i32 %i.ut to i64
  %.9374592667 = add i32 %i.e, -1
  %8 = zext nneg i32 %i.ix to i64
  %9 = add nsw i32 %i.us, 1
  %i.uu = add i32 %i.e, 1
  %10 = zext nneg i32 %i.ix to i64
  %11 = zext i32 %i.us to i64
  %12 = add nuw nsw i64 %11, 1
  %i.uv = shl nsw i64 %i.f, 3                     ; 2 uses
  %scevgep1099.a = getelementptr i8, ptr %5, i64 %i.uv
  %i.uw = add i32 %i.e, 1
  %i.ux = getelementptr i8, ptr %5, i64 %i.uv
  %scevgep1101 = getelementptr i8, ptr %i.ux, i64 8
  %13 = zext nneg i32 %i.ix to i64
  %14 = zext i32 %i.us to i64
  %15 = add nuw nsw i64 %14, 1
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph593, %._crit_edge588
  %indvar1092 = phi i64 [ 0, %.lr.ph593 ], [ %indvar.next1093, %._crit_edge588 ] ; 9 uses
  %indvar1089 = phi i32 [ 0, %.lr.ph593 ], [ %indvar.next1090, %._crit_edge588 ] ; 2 uses
  %indvars.iv762 = phi i64 [ 1, %.lr.ph593 ], [ %indvars.iv.next763, %._crit_edge588 ] ; 9 uses
  %i.uy = add i64 %15, %indvar1092
  %sext = shl i64 %i.uy, 32
  %16 = ashr exact i64 %sext, 32
  %smin1106 = tail call i64 @llvm.smin.i64(i64 %13, i64 %16)
  %i.uz = sub i64 %smin1106, %indvar1092          ; 7 uses
  %i.va = shl nuw nsw i64 %indvar1092, 3          ; 2 uses
  %scevgep1095 = getelementptr i8, ptr %7, i64 %i.va
  %i.vb = getelementptr i8, ptr %7, i64 %i.va
  %scevgep1096.a = getelementptr i8, ptr %i.vb, i64 8
  %i.vc = add i64 %12, %indvar1092
  %sext1140 = shl i64 %i.vc, 32
  %17 = ashr exact i64 %sext1140, 32
  %smin1097 = tail call i64 @llvm.smin.i64(i64 %10, i64 %17)
  %i.vd = xor i64 %indvar1092, -1
  %i.ve = add i64 %smin1097, %i.vd
  %i.vf = shl nsw i64 %i.ve, 3                    ; 2 uses
  %scevgep1098.a = getelementptr i8, ptr %scevgep1096.a, i64 %i.vf
  %i.vg = trunc i64 %indvar1092 to i32
  %i.vh = mul i32 %i.e, %i.vg
  %i.vi = add i32 %i.vh, %i.uw
  %i.vj = sext i32 %i.vi to i64
  %i.vk = shl nsw i64 %i.vj, 3                    ; 2 uses
  %scevgep1100.a = getelementptr i8, ptr %scevgep1099.a, i64 %i.vk
  %i.vl = getelementptr i8, ptr %scevgep1101, i64 %i.vf
  %scevgep1102 = getelementptr i8, ptr %i.vl, i64 %i.vk
  %18 = add i32 %9, %indvar1089
  %19 = sext i32 %18 to i64
  %smin1091 = tail call i64 @llvm.smin.i64(i64 %8, i64 %19)
  %i.vm = xor i64 %indvar1092, -1
  %i.vn = add i64 %smin1091, %i.vm                ; 2 uses
  %i.vo = trunc i64 %indvar1092 to i32
  %i.vp = mul i32 %i.e, %i.vo
  %i.vq = add i32 %i.vp, %i.uu                    ; 2 uses
  %indvars768 = trunc i64 %indvars.iv762 to i32   ; 3 uses
  %i.vr = add nsw i32 %i.us, %indvars768
  %i.vs = tail call i32 @llvm.smin.i32(i32 %i.ix, i32 %i.vr) ; 2 uses
  %.not420584 = icmp slt i32 %i.vs, %indvars768
  br i1 %.not420584, label %._crit_edge588, label %iter.check1126

iter.check1126:                                   ; preds = %bb.av
  %reass.sub666 = mul i32 %.9374592667, %indvars768
  %i.vt = add i32 %reass.sub666, 1                ; 3 uses
  %i.vu = sext i32 %i.vs to i64
  %min.iters.check1107.a = icmp ult i64 %i.uz, 4
  br i1 %min.iters.check1107.a, label %vec.epilog.scalar.ph1127.preheader, label %vector.scevcheck1088

vector.scevcheck1088:                             ; preds = %iter.check1126
  %i.vv = trunc i64 %i.vn to i32
  %i.vw = add i32 %i.vq, %i.vv
  %i.vx = icmp slt i32 %i.vw, %i.vq
  %i.vy = icmp ugt i64 %i.vn, 4294967295
  %i.vz = or i1 %i.vx, %i.vy
  br i1 %i.vz, label %vec.epilog.scalar.ph1127.preheader, label %vector.memcheck1094

vector.memcheck1094:                              ; preds = %vector.scevcheck1088
  %bound01103 = icmp ult ptr %scevgep1095, %scevgep1102
  %bound11104 = icmp ult ptr %scevgep1100.a, %scevgep1098.a
  %found.conflict1105 = and i1 %bound01103, %bound11104
  br i1 %found.conflict1105, label %vec.epilog.scalar.ph1127.preheader, label %vector.main.loop.iter.check1108

vector.main.loop.iter.check1108:                  ; preds = %vector.memcheck1094
  %min.iters.check1109 = icmp ult i64 %i.uz, 16
  br i1 %min.iters.check1109, label %vec.epilog.ph1130, label %vector.ph1110

vector.ph1110:                                    ; preds = %vector.main.loop.iter.check1108
  %i.wa = and i64 %i.uz, 12
  %n.vec1111 = and i64 %i.uz, -16                 ; 4 uses
  %i.wb = add i64 %indvars.iv762, %n.vec1111
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1110
  %index1113 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1122, %vector.body1112 ] ; 2 uses
  %i.wc = add nuw i64 %indvars.iv762, %index1113  ; 2 uses
  %i.wd = trunc nuw nsw i64 %i.wc to i32
  %i.we = add i32 %i.vt, %i.wd
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.wf ; 4 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 32
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 96
  %wide.load1114.a = load <4 x double>, ptr %i.wg, align 8, !tbaa !9, !alias.scope !66 ; 3 uses
  %wide.load1115.a = load <4 x double>, ptr %i.wh, align 8, !tbaa !9, !alias.scope !66 ; 3 uses
  %wide.load1116.a = load <4 x double>, ptr %i.wi, align 8, !tbaa !9, !alias.scope !66 ; 3 uses
  %wide.load1117.a = load <4 x double>, ptr %i.wj, align 8, !tbaa !9, !alias.scope !66 ; 3 uses
  %i.wk = fcmp oge <4 x double> %wide.load1114.a, zeroinitializer
  %i.wl = fcmp oge <4 x double> %wide.load1115.a, zeroinitializer
  %i.wm = fcmp oge <4 x double> %wide.load1116.a, zeroinitializer
  %i.wn = fcmp oge <4 x double> %wide.load1117.a, zeroinitializer
  %i.wo = fneg <4 x double> %wide.load1114.a
  %i.wp = fneg <4 x double> %wide.load1115.a
  %i.wq = fneg <4 x double> %wide.load1116.a
  %i.wr = fneg <4 x double> %wide.load1117.a
  %i.ws = select <4 x i1> %i.wk, <4 x double> %wide.load1114.a, <4 x double> %i.wo
  %i.wt = select <4 x i1> %i.wl, <4 x double> %wide.load1115.a, <4 x double> %i.wp
  %i.wu = select <4 x i1> %i.wm, <4 x double> %wide.load1116.a, <4 x double> %i.wq
  %i.wv = select <4 x i1> %i.wn, <4 x double> %wide.load1117.a, <4 x double> %i.wr
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.wc ; 5 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 32 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 64 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ww, i64 96 ; 2 uses
  %wide.load1118.a = load <4 x double>, ptr %i.ww, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  %wide.load1119.a = load <4 x double>, ptr %i.wx, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  %wide.load1120 = load <4 x double>, ptr %i.wy, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  %wide.load1121 = load <4 x double>, ptr %i.wz, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  %i.xa = fadd <4 x double> %wide.load1118.a, %i.ws
  %i.xb = fadd <4 x double> %wide.load1119.a, %i.wt
  %i.xc = fadd <4 x double> %wide.load1120, %i.wu
  %i.xd = fadd <4 x double> %wide.load1121, %i.wv
  store <4 x double> %i.xa, ptr %i.ww, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  store <4 x double> %i.xb, ptr %i.wx, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  store <4 x double> %i.xc, ptr %i.wy, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  store <4 x double> %i.xd, ptr %i.wz, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  %index.next1122 = add nuw i64 %index1113, 16    ; 2 uses
  %i.xe = icmp eq i64 %index.next1122, %n.vec1111
  br i1 %i.xe, label %middle.block1123, label %vector.body1112, !llvm.loop !71

middle.block1123:                                 ; preds = %vector.body1112
  %cmp.n1124 = icmp eq i64 %i.uz, %n.vec1111
  br i1 %cmp.n1124, label %._crit_edge588, label %vec.epilog.iter.check1128

vec.epilog.iter.check1128:                        ; preds = %middle.block1123
  %min.epilog.iters.check1129 = icmp eq i64 %i.wa, 0
  br i1 %min.epilog.iters.check1129, label %vec.epilog.scalar.ph1127.preheader, label %vec.epilog.ph1130, !prof !33

vec.epilog.ph1130:                                ; preds = %vector.main.loop.iter.check1108, %vec.epilog.iter.check1128
  %vec.epilog.resume.val1125 = phi i64 [ %n.vec1111, %vec.epilog.iter.check1128 ], [ 0, %vector.main.loop.iter.check1108 ]
  %n.vec1131 = and i64 %i.uz, -4                  ; 3 uses
  %i.xf = add i64 %indvars.iv762, %n.vec1131
  br label %vec.epilog.vector.body1132

vec.epilog.vector.body1132:                       ; preds = %vec.epilog.vector.body1132, %vec.epilog.ph1130
  %index1133 = phi i64 [ %vec.epilog.resume.val1125, %vec.epilog.ph1130 ], [ %index.next1136, %vec.epilog.vector.body1132 ] ; 2 uses
  %i.xg = add nuw i64 %indvars.iv762, %index1133  ; 2 uses
  %i.xh = trunc nuw nsw i64 %i.xg to i32
  %i.xi = add i32 %i.vt, %i.xh
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.xj
  %wide.load1134 = load <4 x double>, ptr %i.xk, align 8, !tbaa !9, !alias.scope !66 ; 3 uses
  %i.xl = fcmp oge <4 x double> %wide.load1134, zeroinitializer
  %i.xm = fneg <4 x double> %wide.load1134
  %i.xn = select <4 x i1> %i.xl, <4 x double> %wide.load1134, <4 x double> %i.xm
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.xg ; 2 uses
  %wide.load1135 = load <4 x double>, ptr %i.xo, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  %i.xp = fadd <4 x double> %wide.load1135, %i.xn
  store <4 x double> %i.xp, ptr %i.xo, align 8, !tbaa !9, !alias.scope !69, !noalias !66
  %index.next1136 = add nuw i64 %index1133, 4     ; 2 uses
  %i.xq = icmp eq i64 %index.next1136, %n.vec1131
  br i1 %i.xq, label %vec.epilog.middle.block1137, label %vec.epilog.vector.body1132, !llvm.loop !72

vec.epilog.middle.block1137:                      ; preds = %vec.epilog.vector.body1132
  %cmp.n1138 = icmp eq i64 %i.uz, %n.vec1131
  br i1 %cmp.n1138, label %._crit_edge588, label %vec.epilog.scalar.ph1127.preheader

vec.epilog.scalar.ph1127.preheader:               ; preds = %vector.memcheck1094, %vector.scevcheck1088, %iter.check1126, %vec.epilog.iter.check1128, %vec.epilog.middle.block1137
  %indvars.iv764.ph = phi i64 [ %indvars.iv762, %iter.check1126 ], [ %indvars.iv762, %vector.scevcheck1088 ], [ %indvars.iv762, %vector.memcheck1094 ], [ %i.wb, %vec.epilog.iter.check1128 ], [ %i.xf, %vec.epilog.middle.block1137 ]
  br label %vec.epilog.scalar.ph1127

vec.epilog.scalar.ph1127:                         ; preds = %vec.epilog.scalar.ph1127.preheader, %vec.epilog.scalar.ph1127
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %vec.epilog.scalar.ph1127 ], [ %indvars.iv764.ph, %vec.epilog.scalar.ph1127.preheader ] ; 4 uses
  %i.xr = trunc nuw nsw i64 %indvars.iv764 to i32
  %i.xs = add i32 %i.vt, %i.xr
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.xt
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !9 ; 3 uses
  %i.xw = fcmp oge double %i.xv, 0.000000e+00
  %i.xx = fneg double %i.xv
  %i.xy = select i1 %i.xw, double %i.xv, double %i.xx
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv764 ; 2 uses
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !9
  %i.yb = fadd double %i.ya, %i.xy
  store double %i.yb, ptr %i.xz, align 8, !tbaa !9
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1
  %.not420.not = icmp slt i64 %indvars.iv764, %i.vu
  br i1 %.not420.not, label %vec.epilog.scalar.ph1127, label %._crit_edge588, !llvm.loop !73

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1127, %middle.block1123, %vec.epilog.middle.block1137, %bb.av
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond770.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count769
  %indvar.next1090 = add i32 %indvar1089, 1
  %indvar.next1093 = add i64 %indvar1092, 1
  br i1 %exitcond770.not, label %.loopexit478, label %bb.av, !llvm.loop !74

.loopexit478:                                     ; preds = %._crit_edge546, %._crit_edge559, %.loopexit479, %._crit_edge588, %bb.an, %bb.ap, %bb.as, %bb.au
  %.not432595 = icmp slt i32 %i.ix, 1
  br i1 %.not432595, label %.loopexit467, label %.lr.ph599.preheader

.lr.ph599.preheader:                              ; preds = %.loopexit478
  %i.yc = add nuw i32 %i.ix, 1
  %wide.trip.count774 = zext i32 %i.yc to i64
  br label %.lr.ph599

.lr.ph599:                                        ; preds = %.lr.ph599.preheader, %._crit_edge823
  %indvars.iv771 = phi i64 [ 1, %.lr.ph599.preheader ], [ %indvars.iv.next772, %._crit_edge823 ] ; 2 uses
  %.16597 = phi double [ 0.000000e+00, %.lr.ph599.preheader ], [ %.17, %._crit_edge823 ] ; 2 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv771
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !9 ; 3 uses
  store double %i.ye, ptr %i.c, align 8, !tbaa !9
  %i.yf = fcmp olt double %.16597, %i.ye
  br i1 %i.yf, label %._crit_edge823, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph599
  %i.yg = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not433 = icmp eq i32 %i.yg, 0
  %.pre824 = load double, ptr %i.c, align 8
  %spec.select896 = select i1 %.not433, double %.16597, double %.pre824
  br label %._crit_edge823

._crit_edge823:                                   ; preds = %bb.aw, %.lr.ph599
  %.17 = phi double [ %spec.select896, %bb.aw ], [ %i.ye, %.lr.ph599 ] ; 2 uses
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 1 ; 2 uses
  %exitcond775.not = icmp eq i64 %indvars.iv.next772, %wide.trip.count774
  br i1 %exitcond775.not, label %.loopexit467, label %.lr.ph599, !llvm.loop !75

bb.ax:                                            ; preds = %bb.ak
  %i.yh = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #7
  %.not402 = icmp eq i32 %i.yh, 0
  br i1 %.not402, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.yi = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #7
  %.not403 = icmp eq i32 %i.yi, 0
  br i1 %.not403, label %.loopexit467, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.yj = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %.not404 = icmp eq i32 %i.yj, 0
  %i.yk = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %.not405 = icmp eq i32 %i.yk, 0                 ; 2 uses
  br i1 %.not404, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %.not405, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store double 1.000000e+00, ptr %i.d, align 16, !tbaa !9
  %i.yl = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.ym = sitofp i32 %i.yl to double
  %i.yn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.ym, ptr %i.yn, align 8, !tbaa !9
  %i.yo = load i32, ptr %4, align 4, !tbaa !8
  %i.yp = icmp slt i32 %i.yo, 1
  %.not413601 = icmp slt i32 %i.yl, 2
  %or.cond = select i1 %i.yp, i1 true, i1 %.not413601
  br i1 %or.cond, label %.loopexit471, label %.lr.ph603

.lr.ph603:                                        ; preds = %bb.bb
  %i.yq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph603, %bb.bc
  %.10375602 = phi i32 [ 2, %.lr.ph603 ], [ %i.yz, %bb.bc ] ; 5 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !9
  %i.yr = add nsw i32 %.10375602, -1
  %i.ys = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %. = call i32 @llvm.smin.i32(i32 %i.yr, i32 %i.ys)
  store i32 %., ptr %i.a, align 4, !tbaa !8
  %reass.sub = sub i32 %i.ys, %.10375602
  %i.yt = add i32 %reass.sub, 2
  %i.yu = call i32 @llvm.smax.i32(i32 %i.yt, i32 1)
  %i.yv = mul nsw i32 %.10375602, %i.e
  %i.yw = add nsw i32 %i.yu, %i.yv
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.yx
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.yy, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.yq) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %i.yz = add nuw i32 %.10375602, 1
  %exitcond776.not = icmp eq i32 %.10375602, %i.yl
  br i1 %exitcond776.not, label %.loopexit471, label %bb.bc, !llvm.loop !76

bb.bd:                                            ; preds = %bb.ba
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.d, align 16, !tbaa !9
  %i.za = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %.not411604 = icmp slt i32 %i.za, 1
  br i1 %.not411604, label %.loopexit471, label %.lr.ph607

.lr.ph607:                                        ; preds = %bb.bd
  %i.zb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph607, %bb.be
  %.11376605 = phi i32 [ 1, %.lr.ph607 ], [ %i.zl, %bb.be ] ; 5 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !9
  %i.zc = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.zd = add nsw i32 %i.zc, 1
  %i.ze = call i32 @llvm.smin.i32(i32 %.11376605, i32 %i.zd)
  store i32 %i.ze, ptr %i.a, align 4, !tbaa !8
  %reass.sub668 = sub i32 %i.zc, %.11376605
  %i.zf = add i32 %reass.sub668, 2
  %i.zg = call i32 @llvm.smax.i32(i32 %i.zf, i32 1)
  %i.zh = mul nsw i32 %.11376605, %i.e
  %i.zi = add nsw i32 %i.zg, %i.zh
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.zj
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.zk, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.zb) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %i.zl = add nuw i32 %.11376605, 1
  %exitcond777.not = icmp eq i32 %.11376605, %i.za
  br i1 %exitcond777.not, label %.loopexit471, label %bb.be, !llvm.loop !77

bb.bf:                                            ; preds = %bb.az
  br i1 %.not405, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store double 1.000000e+00, ptr %i.d, align 16, !tbaa !9
  %i.zm = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.zn = sitofp i32 %i.zm to double
  %i.zo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.zn, ptr %i.zo, align 8, !tbaa !9
  %i.zp = load i32, ptr %4, align 4, !tbaa !8
  %i.zq = icmp sgt i32 %i.zp, 0
  %.not408.not608 = icmp sgt i32 %i.zm, 1
  %or.cond655 = select i1 %i.zq, i1 %.not408.not608, i1 false
  br i1 %or.cond655, label %.lr.ph610, label %.loopexit471

.lr.ph610:                                        ; preds = %bb.bg
  %i.zr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.zs = sext i32 %i.e to i64
  %wide.trip.count781 = zext nneg i32 %i.zm to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph610, %bb.bh
  %indvars.iv778 = phi i64 [ 1, %.lr.ph610 ], [ %indvars.iv.next779, %bb.bh ] ; 3 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !9
  %i.zt = load i32, ptr %3, align 4, !tbaa !8
  %i.zu = trunc nuw nsw i64 %indvars.iv778 to i32
  %i.zv = sub nsw i32 %i.zt, %i.zu
  %i.zw = load i32, ptr %4, align 4, !tbaa !8
  %.465 = call i32 @llvm.smin.i32(i32 %i.zv, i32 %i.zw)
  store i32 %.465, ptr %i.a, align 4, !tbaa !8
  %i.zx = mul nsw i64 %indvars.iv778, %i.zs
  %i.zy = getelementptr [8 x i8], ptr %i.g, i64 %i.zx
  %i.zz = getelementptr i8, ptr %i.zy, i64 16
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.zz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.zr) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1 ; 2 uses
  %exitcond782.not = icmp eq i64 %indvars.iv.next779, %wide.trip.count781
  br i1 %exitcond782.not, label %.loopexit471, label %bb.bh, !llvm.loop !78

bb.bi:                                            ; preds = %bb.bf
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.d, align 16, !tbaa !9
  %i.aaa = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %.not406611 = icmp slt i32 %i.aaa, 1
  br i1 %.not406611, label %.loopexit471, label %.lr.ph614

.lr.ph614:                                        ; preds = %bb.bi
  %i.aab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aac = sext i32 %i.e to i64
  %i.aad = add nuw i32 %i.aaa, 1
  %wide.trip.count786 = zext i32 %i.aad to i64
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph614, %bb.bj
  %indvars.iv783 = phi i64 [ 1, %.lr.ph614 ], [ %indvars.iv.next784, %bb.bj ] ; 3 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !9
  %i.aae = load i32, ptr %3, align 4, !tbaa !8
  %i.aaf = trunc nuw nsw i64 %indvars.iv783 to i32
  %i.aag = sub nsw i32 %i.aae, %i.aaf
  %i.aah = load i32, ptr %4, align 4, !tbaa !8
  %i.aai = call i32 @llvm.smin.i32(i32 %i.aag, i32 %i.aah)
  %i.aaj = add nsw i32 %i.aai, 1
  store i32 %i.aaj, ptr %i.a, align 4, !tbaa !8
  %i.aak = mul nsw i64 %indvars.iv783, %i.aac
  %i.aal = getelementptr [8 x i8], ptr %i.g, i64 %i.aak
  %i.aam = getelementptr i8, ptr %i.aal, i64 8
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef %i.aam, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aab) #7
  call void @dcombssq_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1 ; 2 uses
  %exitcond787.not = icmp eq i64 %indvars.iv.next784, %wide.trip.count786
  br i1 %exitcond787.not, label %.loopexit471, label %bb.bj, !llvm.loop !79

.loopexit471:                                     ; preds = %bb.bc, %bb.be, %bb.bh, %bb.bj, %bb.bd, %bb.bi, %bb.bg, %bb.bb
  %i.aan = load double, ptr %i.d, align 16, !tbaa !9
  %i.aao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !9
  %i.aaq = call double @sqrt(double noundef %i.aap) #7
  %i.aar = fmul double %i.aan, %i.aaq
  br label %.loopexit467

.loopexit467:                                     ; preds = %._crit_edge, %._crit_edge504, %._crit_edge517, %._crit_edge530, %._crit_edge823, %._crit_edge825, %._crit_edge827, %bb.e, %bb.h, %bb.l, %bb.o, %.loopexit478, %bb.u, %bb.ab, %bb.a, %.loopexit471, %bb.ay
end_hunk_0
