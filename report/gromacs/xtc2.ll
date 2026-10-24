Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc2?download=true
inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Ptngc_pack_array_xtc2:bb.a
Ptngc_find_magic_index.exit544:                   ; preds = %bb.cg
  %i.zy = icmp samesign ult i64 %indvars.iv.i535, %indvars.iv.i541
  %..v = call i64 @llvm.umin.i64(i64 %indvars.iv.i535, i64 %indvars.iv.i541)
  %. = trunc i64 %..v to i32
  %i.zz = call i32 @llvm.smax.i32(i32 %.0382718, i32 %.1364950)
  %.1354 = select i1 %i.zy, i32 %.1364950, i32 %i.zz
  %.2355 = call i32 @llvm.smin.i32(i32 %.1354, i32 %.2372948) ; 2 uses
  %i.aaa = icmp eq i32 %.2355, 0
  %.3356 = call i32 @llvm.umax.i32(i32 %.2355, i32 1)
  %.1352 = select i1 %i.aaa, i32 %.0387716, i32 %.
  %invariant.smin675 = call i32 @llvm.smin.i32(i32 %.0609940, i32 18) ; 2 uses
  %wide.trip.count782 = zext nneg i32 %invariant.smin675 to i64
  br label %bb.ch

bb.ch:                                            ; preds = %Ptngc_find_magic_index.exit556, %Ptngc_find_magic_index.exit544
  %.0349 = phi i32 [ %.3356, %Ptngc_find_magic_index.exit544 ], [ %spec.select437, %Ptngc_find_magic_index.exit556 ] ; 9 uses
  %.0347 = phi i32 [ %.1352, %Ptngc_find_magic_index.exit544 ], [ %i.abh, %Ptngc_find_magic_index.exit556 ] ; 8 uses
  br i1 %i.yf, label %.lr.ph678, label %iter.check1141

.lr.ph678:                                        ; preds = %bb.ch, %bb.cj
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %bb.cj ], [ 0, %bb.ch ] ; 3 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv779
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !12 ; 3 uses
  %i.aad = icmp ugt i32 %i.aac, 512
  %i.aae = icmp ugt i32 %i.aac, 104031
  %..i545 = select i1 %i.aae, i64 47, i64 24
  %.0.i546 = select i1 %i.aad, i64 %..i545, i64 0
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph678
  %indvars.iv.i547 = phi i64 [ %indvars.iv.next.i549, %bb.ci ], [ %.0.i546, %.lr.ph678 ] ; 3 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i547
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !12
  %.not.i548 = icmp ugt i32 %i.aag, %i.aac
  %indvars.iv.next.i549 = add nuw nsw i64 %indvars.iv.i547, 1
  br i1 %.not.i548, label %Ptngc_find_magic_index.exit550, label %bb.ci, !llvm.loop !0

Ptngc_find_magic_index.exit550:                   ; preds = %bb.ci
  %i.aah = trunc nuw nsw i64 %indvars.iv.i547 to i32
  %i.aai = icmp slt i32 %.0347, %i.aah
  br i1 %i.aai, label %Ptngc_find_magic_index.exit550._crit_edge.loopexit.split.loop.exit, label %bb.cj

bb.cj:                                            ; preds = %Ptngc_find_magic_index.exit550
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 1 ; 2 uses
  %exitcond783.not = icmp eq i64 %indvars.iv.next780, %wide.trip.count782
  br i1 %exitcond783.not, label %Ptngc_find_magic_index.exit550._crit_edge.loopexit, label %.lr.ph678, !llvm.loop !32

Ptngc_find_magic_index.exit550._crit_edge.loopexit.split.loop.exit: ; preds = %Ptngc_find_magic_index.exit550
  %i.aaj = trunc nuw nsw i64 %indvars.iv779 to i32
  br label %Ptngc_find_magic_index.exit550._crit_edge.loopexit

Ptngc_find_magic_index.exit550._crit_edge.loopexit: ; preds = %bb.cj, %Ptngc_find_magic_index.exit550._crit_edge.loopexit.split.loop.exit
  %.7.lcssa.ph = phi i32 [ %i.aaj, %Ptngc_find_magic_index.exit550._crit_edge.loopexit.split.loop.exit ], [ %invariant.smin675, %bb.cj ]
  %i.aak = udiv i32 %.7.lcssa.ph, 3
  br label %iter.check1141

iter.check1141:                                   ; preds = %bb.ch, %Ptngc_find_magic_index.exit550._crit_edge.loopexit
  %.7.lcssa = phi i32 [ 0, %bb.ch ], [ %i.aak, %Ptngc_find_magic_index.exit550._crit_edge.loopexit ] ; 2 uses
  %spec.select437 = call i32 @llvm.smax.i32(i32 %.7.lcssa, i32 %.0349) ; 2 uses
  %i.aal = mul i32 %spec.select437, 3             ; 3 uses
  %wide.trip.count788 = zext i32 %i.aal to i64    ; 6 uses
  %min.iters.check1121 = icmp ult i32 %i.aal, 4
  br i1 %min.iters.check1121, label %.lr.ph685.preheader, label %vector.main.loop.iter.check1122

vector.main.loop.iter.check1122:                  ; preds = %iter.check1141
  %min.iters.check1123 = icmp ult i32 %i.aal, 32
  br i1 %min.iters.check1123, label %vec.epilog.ph1145, label %vector.ph1124

vector.ph1124:                                    ; preds = %vector.main.loop.iter.check1122
  %i.aam = and i64 %wide.trip.count788, 28
  %n.vec1125 = and i64 %wide.trip.count788, 4294967264 ; 4 uses
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.ph1124, %vector.body1126
  %index1127 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1135, %vector.body1126 ] ; 2 uses
  %vec.phi1128 = phi <8 x i32> [ zeroinitializer, %vector.ph1124 ], [ %i.aar, %vector.body1126 ]
  %vec.phi1129 = phi <8 x i32> [ zeroinitializer, %vector.ph1124 ], [ %i.aas, %vector.body1126 ]
  %vec.phi1130 = phi <8 x i32> [ zeroinitializer, %vector.ph1124 ], [ %i.aat, %vector.body1126 ]
  %vec.phi1131 = phi <8 x i32> [ zeroinitializer, %vector.ph1124 ], [ %i.aau, %vector.body1126 ]
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1127 ; 4 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 32
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 64
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 96
  %wide.load = load <8 x i32>, ptr %i.aan, align 16, !tbaa !12
  %wide.load1132 = load <8 x i32>, ptr %i.aao, align 16, !tbaa !12
  %wide.load1133 = load <8 x i32>, ptr %i.aap, align 16, !tbaa !12
  %wide.load1134 = load <8 x i32>, ptr %i.aaq, align 16, !tbaa !12
  %i.aar = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load, <8 x i32> %vec.phi1128) ; 2 uses
  %i.aas = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1132, <8 x i32> %vec.phi1129) ; 2 uses
  %i.aat = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1133, <8 x i32> %vec.phi1130) ; 2 uses
  %i.aau = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1134, <8 x i32> %vec.phi1131) ; 2 uses
  %index.next1135 = add nuw i64 %index1127, 32    ; 2 uses
  %i.aav = icmp eq i64 %index.next1135, %n.vec1125
  br i1 %i.aav, label %middle.block1136, label %vector.body1126, !llvm.loop !33

middle.block1136:                                 ; preds = %vector.body1126
  %rdx.minmax1137 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aar, <8 x i32> %i.aas)
  %rdx.minmax1138 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1137, <8 x i32> %i.aat)
  %rdx.minmax1139 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1138, <8 x i32> %i.aau)
  %i.aaw = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1139) ; 3 uses
  %cmp.n1140 = icmp eq i64 %n.vec1125, %wide.trip.count788
  br i1 %cmp.n1140, label %._crit_edge686, label %vec.epilog.iter.check1142

vec.epilog.iter.check1142:                        ; preds = %middle.block1136
  %min.epilog.iters.check1144 = icmp eq i64 %i.aam, 0
  br i1 %min.epilog.iters.check1144, label %.lr.ph685.preheader, label %vec.epilog.ph1145, !prof !51

vec.epilog.ph1145:                                ; preds = %vector.main.loop.iter.check1122, %vec.epilog.iter.check1142
  %vec.epilog.resume.val1146 = phi i64 [ %n.vec1125, %vec.epilog.iter.check1142 ], [ 0, %vector.main.loop.iter.check1122 ]
  %bc.merge.rdx1147 = phi i32 [ %i.aaw, %vec.epilog.iter.check1142 ], [ 0, %vector.main.loop.iter.check1122 ]
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1147, i64 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1148 = and i64 %wide.trip.count788, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body1149

vec.epilog.vector.body1149:                       ; preds = %vec.epilog.vector.body1149, %vec.epilog.ph1145
  %index1150 = phi i64 [ %vec.epilog.resume.val1146, %vec.epilog.ph1145 ], [ %index.next1155, %vec.epilog.vector.body1149 ] ; 2 uses
  %vec.phi1153 = phi <4 x i32> [ %broadcast.splat1152, %vec.epilog.ph1145 ], [ %i.aay, %vec.epilog.vector.body1149 ]
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1150
  %wide.load1154 = load <4 x i32>, ptr %i.aax, align 16, !tbaa !12
  %i.aay = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1154, <4 x i32> %vec.phi1153) ; 2 uses
  %index.next1155 = add nuw i64 %index1150, 4     ; 2 uses
  %i.aaz = icmp eq i64 %index.next1155, %n.vec1148
  br i1 %i.aaz, label %vec.epilog.middle.block1156, label %vec.epilog.vector.body1149, !llvm.loop !34

vec.epilog.middle.block1156:                      ; preds = %vec.epilog.vector.body1149
  %i.aba = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.aay) ; 2 uses
  %cmp.n1157 = icmp eq i64 %n.vec1148, %wide.trip.count788
  br i1 %cmp.n1157, label %._crit_edge686, label %.lr.ph685.preheader

.lr.ph685.preheader:                              ; preds = %iter.check1141, %vec.epilog.iter.check1142, %vec.epilog.middle.block1156
  %indvars.iv784.ph = phi i64 [ 0, %iter.check1141 ], [ %n.vec1125, %vec.epilog.iter.check1142 ], [ %n.vec1148, %vec.epilog.middle.block1156 ]
  %.2359683.ph = phi i32 [ 0, %iter.check1141 ], [ %i.aaw, %vec.epilog.iter.check1142 ], [ %i.aba, %vec.epilog.middle.block1156 ]
  br label %.lr.ph685

.lr.ph685:                                        ; preds = %.lr.ph685.preheader, %.lr.ph685
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %.lr.ph685 ], [ %indvars.iv784.ph, %.lr.ph685.preheader ] ; 2 uses
  %.2359683 = phi i32 [ %spec.select438, %.lr.ph685 ], [ %.2359683.ph, %.lr.ph685.preheader ]
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv784
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !12
  %spec.select438 = call i32 @llvm.smax.i32(i32 %i.abc, i32 %.2359683) ; 2 uses
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next785, %wide.trip.count788
  br i1 %exitcond789.not, label %._crit_edge686, label %.lr.ph685, !llvm.loop !35

._crit_edge686:                                   ; preds = %.lr.ph685, %vec.epilog.middle.block1156, %middle.block1136
  %spec.select438.lcssa = phi i32 [ %i.aba, %vec.epilog.middle.block1156 ], [ %i.aaw, %middle.block1136 ], [ %spec.select438, %.lr.ph685 ] ; 3 uses
  %i.abd = icmp ugt i32 %spec.select438.lcssa, 512
  %i.abe = icmp ugt i32 %spec.select438.lcssa, 104031
  %..i551 = select i1 %i.abe, i64 47, i64 24
  %.0.i552 = select i1 %i.abd, i64 %..i551, i64 0
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %._crit_edge686
  %indvars.iv.i553 = phi i64 [ %indvars.iv.next.i555, %bb.ck ], [ %.0.i552, %._crit_edge686 ] ; 3 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i553
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !12
  %.not.i554 = icmp ugt i32 %i.abg, %spec.select438.lcssa
  %indvars.iv.next.i555 = add nuw nsw i64 %indvars.iv.i553, 1
  br i1 %.not.i554, label %Ptngc_find_magic_index.exit556, label %bb.ck, !llvm.loop !0

Ptngc_find_magic_index.exit556:                   ; preds = %bb.ck
  %i.abh = trunc nuw nsw i64 %indvars.iv.i553 to i32 ; 2 uses
  %i.abi = icmp slt i32 %.0349, %.7.lcssa
  %i.abj = icmp ne i32 %.0347, %i.abh
  %i.abk = select i1 %i.abi, i1 true, i1 %i.abj
  br i1 %i.abk, label %bb.ch, label %bb.cl, !llvm.loop !36

bb.cl:                                            ; preds = %Ptngc_find_magic_index.exit556
  %i.abl = icmp samesign ult i32 %.0349, 3        ; 2 uses
  br i1 %.not726, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.abm = icmp samesign ult i32 %.0349, 6
  %spec.select440 = select i1 %i.abm, i32 3, i32 0
  %.0346 = select i1 %i.abl, i32 6, i32 %spec.select440
  %i.abn = add nsw i32 %.0387716, 6
  %i.abo = icmp slt i32 %.0347, %i.abn
  %i.abp = add nuw nsw i32 %.0346, %.0347
  %i.abq = icmp slt i32 %i.abp, %.1394
  %or.cond442 = select i1 %i.abo, i1 %i.abq, i1 false
  %i.abr = add nuw nsw i32 %.0347, 6
  %i.abs = icmp slt i32 %i.abr, %.1394
  %or.cond444 = select i1 %or.cond442, i1 true, i1 %i.abs
  br i1 %or.cond444, label %bb.cn, label %bb.db

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.abt = icmp ne i32 %.0349, %.0382718          ; 4 uses
  %.not428 = icmp ne i32 %.0347, %.0387716
  %or.cond446.not = select i1 %i.abt, i1 true, i1 %.not428
  br i1 %or.cond446.not, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.abu = sub nsw i32 %.0347, %.0387716          ; 2 uses
  %.inv = icmp sgt i32 %.0347, 0
  %spec.store.select = select i1 %.inv, i32 %i.abu, i32 0 ; 2 uses
  %i.abv = icmp slt i32 %spec.store.select, 0
  br i1 %i.abv, label %.preheader634.preheader, label %.thread

.preheader634.preheader:                          ; preds = %bb.co
  %wide.trip.count798 = zext nneg i32 %.0349 to i64
  br label %.preheader634

bb.cp:                                            ; preds = %bb.cr
  %indvars.iv.next795.a = add nuw nsw i64 %indvars.iv794.a, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next795.a, %wide.trip.count798
  br i1 %exitcond799.not, label %._crit_edge692, label %.preheader634, !llvm.loop !37

.preheader634:                                    ; preds = %.preheader634.preheader, %bb.cp
  %indvars.iv794.a = phi i64 [ 0, %.preheader634.preheader ], [ %indvars.iv.next795.a, %bb.cp ] ; 2 uses
  %.0338690 = phi i32 [ %i.abu, %.preheader634.preheader ], [ %spec.select447, %bb.cp ]
  %i.abw = mul nuw nsw i64 %indvars.iv794.a, 3    ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.abw
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !12
  %i.abx = sitofp i32 %.pre to double             ; 2 uses
  %i.aby = call double @llvm.fmuladd.f64(double %i.abx, double %i.abx, double 0.000000e+00)
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.abw
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !12
  %i.acc = sitofp i32 %i.acb to double            ; 2 uses
  %i.acd = call double @llvm.fmuladd.f64(double %i.acc, double %i.acc, double %i.aby)
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.abw
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !12
  %i.ach = sitofp i32 %i.acg to double            ; 2 uses
  %i.aci = call double @llvm.fmuladd.f64(double %i.ach, double %i.ach, double %i.acd)
  br label %bb.cq

bb.cq:                                            ; preds = %.preheader634, %bb.cq
  %.1 = phi i32 [ %spec.select447, %bb.cq ], [ %.0338690, %.preheader634 ] ; 2 uses
  %3 = add nsw i32 %.1, %.0387716
  %4 = sext i32 %3 to i64
  %i.acj = getelementptr inbounds [4 x i8], ptr @magic, i64 %4
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !12
  %i.acl = uitofp i32 %i.ack to double            ; 2 uses
  %i.acm = fmul nnan double %i.acl, %i.acl
  %i.acn = fcmp ogt double %i.aci, %i.acm         ; 2 uses
  %5 = zext i1 %i.acn to i32
  %spec.select447 = add nsw i32 %.1, %5           ; 6 uses
  %i.aco = icmp slt i32 %spec.select447, 0
  %i.acp = and i1 %i.acn, %i.aco
  br i1 %i.acp, label %bb.cq, label %bb.cr, !llvm.loop !38

bb.cr:                                            ; preds = %bb.cq
  %i.acq = icmp eq i32 %spec.select447, 0
  br i1 %i.acq, label %.thread, label %bb.cp

._crit_edge692:                                   ; preds = %bb.cp
  %i.acr = icmp ne i32 %spec.select447, -1
  %or.cond449.not = or i1 %i.acr, %i.abt
  br i1 %or.cond449.not, label %.thread, label %bb.ct

.thread:                                          ; preds = %bb.cr, %bb.co, %._crit_edge692
  %.4620 = phi i32 [ %spec.select447, %._crit_edge692 ], [ %spec.store.select, %bb.co ], [ 0, %bb.cr ] ; 2 uses
  %i.acs = icmp eq i32 %.4620, -2
  %or.cond7 = and i1 %i.abl, %i.acs
  %.450 = sext i1 %i.abt to i32
  %.5 = select i1 %or.cond7, i32 %.450, i32 %.4620 ; 4 uses
  %i.act = icmp eq i32 %.0349, 6                  ; 3 uses
  %i.acu = add i32 %.5, -2
  %or.cond9978 = icmp ult i32 %i.acu, -3
  %i.acv = icmp ne i32 %.5, 0                     ; 2 uses
  %i.acw = and i1 %i.act, %i.acv
  %or.cond979 = select i1 %or.cond9978, i1 true, i1 %i.acw
  br i1 %or.cond979, label %.critedge, label %._crit_edge982

.critedge:                                        ; preds = %.thread, %.critedge
  %.6981 = phi i32 [ %i.acy, %.critedge ], [ %.5, %.thread ] ; 3 uses
  %.1388980 = phi i32 [ %i.acz, %.critedge ], [ %.0387716, %.thread ]
  %i.acx = call i32 @llvm.smax.i32(i32 %.6981, i32 -2)
  %spec.store.select15 = call i32 @llvm.smin.i32(i32 %i.acx, i32 2) ; 4 uses
  %i.acy = sub nsw i32 %.6981, %spec.store.select15 ; 4 uses
  %i.acz = add nsw i32 %spec.store.select15, %.1388980 ; 2 uses
  %i.ada = icmp slt i32 %.6981, 0                 ; 2 uses
  %i.adb = sub nsw i32 0, %spec.store.select15
  %spec.select451 = select i1 %i.ada, i32 2, i32 0
  %spec.select452 = select i1 %i.ada, i32 %i.adb, i32 %spec.store.select15
  %i.adc = add nsw i32 %spec.select452, -1
  %i.add = or i32 %i.adc, %spec.select451
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %i.e) #11
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef %i.add, i32 noundef 2, ptr noundef nonnull %i.e) #11
  %i.ade = add i32 %i.acy, -2
  %or.cond9 = icmp ult i32 %i.ade, -3
  %i.adf = icmp ne i32 %i.acy, 0                  ; 2 uses
  %i.adg = and i1 %i.act, %i.adf
  %or.cond = select i1 %or.cond9, i1 true, i1 %i.adg
  br i1 %or.cond, label %.critedge, label %._crit_edge982, !llvm.loop !39

._crit_edge982:                                   ; preds = %.critedge, %.thread
  %.1388.lcssa = phi i32 [ %.0387716, %.thread ], [ %i.acz, %.critedge ] ; 2 uses
  %.6.lcssa = phi i32 [ %.5, %.thread ], [ %i.acy, %.critedge ] ; 2 uses
  %.lcssa974 = phi i1 [ %i.acv, %.thread ], [ %i.adf, %.critedge ]
  %or.cond12 = or i1 %i.abt, %.lcssa974
  br i1 %or.cond12, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %._crit_edge982
  %i.adh = add nsw i32 %.6.lcssa, 1
  %i.adi = mul i32 %.0349, 3
  %i.adj = add i32 %i.adi, -3
  %spec.select453 = select i1 %i.act, i32 0, i32 %i.adh
  %i.adk = add nuw nsw i32 %i.adj, %spec.select453
  %i.adl = add nsw i32 %.6.lcssa, %.1388.lcssa
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %i.e) #11
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef %i.adk, i32 noundef 4, ptr noundef nonnull %i.e) #11
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge982, %bb.cs, %._crit_edge692, %bb.cn
  %.3390 = phi i32 [ %.0387716, %bb.cn ], [ %.0387716, %._crit_edge692 ], [ %i.adl, %bb.cs ], [ %.1388.lcssa, %._crit_edge982 ] ; 5 uses
  %.2384 = phi i32 [ %.0382718, %bb.cn ], [ %.0382718, %._crit_edge692 ], [ %.0349, %bb.cs ], [ %.0382718, %._crit_edge982 ] ; 8 uses
  %i.adm = load i32, ptr %i.h, align 4, !tbaa !12 ; 4 uses
  %.not429 = icmp eq i32 %i.adm, 0
  br i1 %.not429, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.adn = icmp eq i32 %.2942, 0
  %or.cond14 = or i1 %i.adn, %.1381944
  br i1 %or.cond14, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call fastcc void @flush_large(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.adm, ptr noundef %i.f, i32 noundef %i.dc, ptr noundef %i.k, ptr noundef %i.e)
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %i.e) #11
  br label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.ado = icmp sgt i32 %i.adm, 1
  br i1 %i.ado, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.adp = add nsw i32 %i.adm, -1
  call fastcc void @flush_large(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.adp, ptr noundef %i.f, i32 noundef %i.dc, ptr noundef %i.k, ptr noundef %i.e)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.e) #11
  call fastcc void @trajcoder_base_compress(ptr noundef nonnull readonly %i.i, i32 noundef 3, ptr noundef nonnull readonly %i.f, ptr noundef nonnull %i.k)
  call void @Ptngc_writemanybits(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef %i.dc, ptr noundef nonnull %i.e) #11
  store i32 0, ptr %i.h, align 4, !tbaa !12
  br label %bb.da

bb.cz:                                            ; preds = %bb.ct
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %i.e) #11
  br label %bb.da

bb.da:                                            ; preds = %bb.cv, %bb.cy, %bb.cz
  %i.adq = sext i32 %.3390 to i64
  %i.adr = getelementptr inbounds [32 x i8], ptr @magic_bits, i64 %i.adq
  %i.ads = sext i32 %.2384 to i64
  %i.adt = getelementptr [4 x i8], ptr %i.adr, i64 %i.ads
  %i.adu = getelementptr i8, ptr %i.adt, i64 -4
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !12
  store i32 %.3390, ptr %i.g, align 4, !tbaa !12
  store i32 %.3390, ptr %i.gd, align 4, !tbaa !12
  store i32 %.3390, ptr %i.ge, align 4, !tbaa !12
  %i.adw = mul nuw nsw i32 %.2384, 3              ; 2 uses
  call fastcc void @trajcoder_base_compress(ptr noundef %i.j, i32 noundef %i.adw, ptr noundef %i.g, ptr noundef %i.k)
  call void @Ptngc_writemanybits(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef %i.adv, ptr noundef nonnull %i.e) #11
  %i.adx = icmp sgt i32 %.2384, 0
  br i1 %i.adx, label %iter.check1095, label %._crit_edge702

iter.check1095:                                   ; preds = %bb.da
  %wide.trip.count803 = zext nneg i32 %.2384 to i64 ; 6 uses
  %min.iters.check1049 = icmp ult i32 %.2384, 8
  br i1 %min.iters.check1049, label %.lr.ph701.preheader, label %vector.main.loop.iter.check1050

vector.main.loop.iter.check1050:                  ; preds = %iter.check1095
  %min.iters.check1051 = icmp ult i32 %.2384, 32
  %i.ady = extractelement <2 x i32> %i.yg, i64 0
  %i.adz = extractelement <2 x i32> %i.yg, i64 1
  br i1 %min.iters.check1051, label %vec.epilog.ph1099, label %vector.ph1052

vector.ph1052:                                    ; preds = %vector.main.loop.iter.check1050
  %i.aea = and i64 %wide.trip.count803, 24
  %n.vec1053 = and i64 %wide.trip.count803, 2147483616 ; 4 uses
  %i.aeb = shufflevector <2 x i32> %i.yg, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.aec = shufflevector <8 x i32> %i.aeb, <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aed = shufflevector <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %i.aeb, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aee = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.sroa.14.2934, i64 0
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.ph1052, %vector.body1054
  %index1055 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1084, %vector.body1054 ] ; 5 uses
  %vec.phi1056 = phi <8 x i32> [ %i.aec, %vector.ph1052 ], [ %i.afo, %vector.body1054 ]
  %vec.phi1057 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.afp, %vector.body1054 ]
  %vec.phi1058 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.afq, %vector.body1054 ]
  %vec.phi1059 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.afr, %vector.body1054 ]
  %vec.phi1060 = phi <8 x i32> [ %i.aed, %vector.ph1052 ], [ %i.agq, %vector.body1054 ]
  %vec.phi1061 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.agr, %vector.body1054 ]
  %vec.phi1062 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.ags, %vector.body1054 ]
  %vec.phi1063 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.agt, %vector.body1054 ]
  %vec.phi1064 = phi <8 x i32> [ %i.aee, %vector.ph1052 ], [ %i.ahs, %vector.body1054 ]
  %vec.phi1065 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.aht, %vector.body1054 ]
  %vec.phi1066 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.ahu, %vector.body1054 ]
  %vec.phi1067 = phi <8 x i32> [ zeroinitializer, %vector.ph1052 ], [ %i.ahv, %vector.body1054 ]
  %i.aef = mul nuw nsw i64 %index1055, 12
  %i.aeg = mul nuw i64 %index1055, 12
  %i.aeh = mul nuw i64 %index1055, 12
  %i.aei = mul nuw i64 %index1055, 12
  %i.aej = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aef
  %i.aek = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aeg
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 96
  %i.aem = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aeh
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 192
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aei
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 288
  %wide.vec1068 = load <24 x i32>, ptr %i.aej, align 16, !tbaa !12 ; 3 uses
  %strided.vec1069 = shufflevector <24 x i32> %wide.vec1068, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1070 = shufflevector <24 x i32> %wide.vec1068, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1071 = shufflevector <24 x i32> %wide.vec1068, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec1072 = load <24 x i32>, ptr %i.ael, align 16, !tbaa !12 ; 3 uses
  %strided.vec1073 = shufflevector <24 x i32> %wide.vec1072, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1074 = shufflevector <24 x i32> %wide.vec1072, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1075 = shufflevector <24 x i32> %wide.vec1072, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec1076 = load <24 x i32>, ptr %i.aen, align 16, !tbaa !12 ; 3 uses
  %strided.vec1077 = shufflevector <24 x i32> %wide.vec1076, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1078 = shufflevector <24 x i32> %wide.vec1076, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1079 = shufflevector <24 x i32> %wide.vec1076, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec1080 = load <24 x i32>, ptr %i.aep, align 16, !tbaa !12 ; 3 uses
  %strided.vec1081 = shufflevector <24 x i32> %wide.vec1080, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1082 = shufflevector <24 x i32> %wide.vec1080, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1083 = shufflevector <24 x i32> %wide.vec1080, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.aeq = add nsw <8 x i32> %strided.vec1069, splat (i32 1)
  %i.aer = add nsw <8 x i32> %strided.vec1073, splat (i32 1)
  %i.aes = add nsw <8 x i32> %strided.vec1077, splat (i32 1)
  %i.aet = add nsw <8 x i32> %strided.vec1081, splat (i32 1)
  %i.aeu = sdiv <8 x i32> %i.aeq, splat (i32 2)   ; 2 uses
  %i.aev = sdiv <8 x i32> %i.aer, splat (i32 2)   ; 2 uses
  %i.aew = sdiv <8 x i32> %i.aes, splat (i32 2)   ; 2 uses
  %i.aex = sdiv <8 x i32> %i.aet, splat (i32 2)   ; 2 uses
  %i.aey = and <8 x i32> %strided.vec1069, splat (i32 1)
  %i.aez = and <8 x i32> %strided.vec1073, splat (i32 1)
  %i.afa = and <8 x i32> %strided.vec1077, splat (i32 1)
  %i.afb = and <8 x i32> %strided.vec1081, splat (i32 1)
  %i.afc = icmp eq <8 x i32> %i.aey, zeroinitializer
  %i.afd = icmp eq <8 x i32> %i.aez, zeroinitializer
  %i.afe = icmp eq <8 x i32> %i.afa, zeroinitializer
  %i.aff = icmp eq <8 x i32> %i.afb, zeroinitializer
  %i.afg = sub nsw <8 x i32> zeroinitializer, %i.aeu
  %i.afh = sub nsw <8 x i32> zeroinitializer, %i.aev
  %i.afi = sub nsw <8 x i32> zeroinitializer, %i.aew
end_hunk_0
