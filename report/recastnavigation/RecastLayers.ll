Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastLayers?download=true
inline.NumInlined: 113
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z24rcBuildHeightfieldLayersP9rcContextRK20rcCompactHeightfieldiiR21rcHeightfieldLayerSet:bb.a
  %i.pd = tail call noundef i16 @llvm.umin.i16(i16 %i.pa, i16 %i.pc)
  store i16 %i.pd, ptr %i.my, align 2, !tbaa !84
  %i.pe = load i16, ptr %i.mz, align 2, !tbaa !85
  %i.pf = getelementptr inbounds nuw i8, ptr %i.og, i64 82
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !85
  %i.ph = tail call noundef i16 @llvm.umax.i16(i16 %i.pe, i16 %i.pg)
  store i16 %i.ph, ptr %i.mz, align 2, !tbaa !85
  br label %bb.bu

bb.bu:                                            ; preds = %.thread896, %.preheader923
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 1 ; 2 uses
  %exitcond1146.not = icmp eq i64 %indvars.iv.next1143, %wide.trip.count1150
  br i1 %exitcond1146.not, label %.loopexit924.backedge, label %.preheader923

.loopexit926:                                     ; preds = %.loopexit925, %_ZL8containsPKhhh.exit772.thread892, %bb.bj
  %indvars.iv.next1148 = add nuw nsw i64 %indvars.iv1147, 1 ; 2 uses
  %exitcond1151.not = icmp eq i64 %indvars.iv.next1148, %wide.trip.count1150
  br i1 %exitcond1151.not, label %._crit_edge1018, label %bb.bj

._crit_edge1018.thread:                           ; preds = %.critedge722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  br label %.preheader921.preheader

.preheader921.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph1021
  %lcmp.mod1323.not = icmp eq i64 %xtraiter1321, 0
  br i1 %lcmp.mod1323.not, label %.preheader921.preheader, label %.lr.ph1021.epil.preheader

.lr.ph1021.epil.preheader:                        ; preds = %.preheader921.preheader.loopexit.unr-lcssa, %._crit_edge1018
  %indvars.iv1152.epil.init = phi i64 [ 0, %._crit_edge1018 ], [ %indvars.iv.next1153.3, %.preheader921.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1324 = icmp ne i64 %xtraiter1321, 0
  tail call void @llvm.assume(i1 %lcmp.mod1324)
  br label %.lr.ph1021.epil

.lr.ph1021.epil:                                  ; preds = %.lr.ph1021.epil, %.lr.ph1021.epil.preheader
  %indvars.iv1152.epil = phi i64 [ %indvars.iv1152.epil.init, %.lr.ph1021.epil.preheader ], [ %indvars.iv.next1153.epil, %.lr.ph1021.epil ] ; 2 uses
  %epil.iter1322 = phi i64 [ 0, %.lr.ph1021.epil.preheader ], [ %epil.iter1322.next, %.lr.ph1021.epil ]
  %i.pi = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1152.epil
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 84
  %i.pk = load i8, ptr %i.pj, align 2, !tbaa !83
  %i.pl = zext i8 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pl
  store i8 1, ptr %i.pm, align 1, !tbaa !75
  %indvars.iv.next1153.epil = add nuw nsw i64 %indvars.iv1152.epil, 1
  %epil.iter1322.next = add i64 %epil.iter1322, 1 ; 2 uses
  %epil.iter1322.cmp.not = icmp eq i64 %epil.iter1322.next, %xtraiter1321
  br i1 %epil.iter1322.cmp.not, label %.preheader921.preheader, label %.lr.ph1021.epil, !llvm.loop !15

.preheader921.preheader:                          ; preds = %.preheader921.preheader.loopexit.unr-lcssa, %.lr.ph1021.epil, %._crit_edge1018.thread
  br label %.preheader921

._crit_edge1018:                                  ; preds = %.loopexit926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %xtraiter1321 = and i64 %wide.trip.count1127, 3 ; 3 uses
  %i.pn = icmp ult i8 %.0615.lcssa, 4
  br i1 %i.pn, label %.lr.ph1021.epil.preheader, label %._crit_edge1018.new

._crit_edge1018.new:                              ; preds = %._crit_edge1018
  %unroll_iter1325 = and i64 %wide.trip.count1127, 252
  br label %.lr.ph1021

.lr.ph1021:                                       ; preds = %.lr.ph1021, %._crit_edge1018.new
  %indvars.iv1152 = phi i64 [ 0, %._crit_edge1018.new ], [ %indvars.iv.next1153.3, %.lr.ph1021 ] ; 5 uses
  %niter1326 = phi i64 [ 0, %._crit_edge1018.new ], [ %niter1326.next.3, %.lr.ph1021 ]
  %i.po = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1152
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 84
  %i.pq = load i8, ptr %i.pp, align 2, !tbaa !83
  %i.pr = zext i8 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pr
  store i8 1, ptr %i.ps, align 1, !tbaa !75
  %i.pt = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1152
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 172
  %i.pv = load i8, ptr %i.pu, align 2, !tbaa !83
  %i.pw = zext i8 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pw
  store i8 1, ptr %i.px, align 1, !tbaa !75
  %i.py = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1152
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 260
  %i.qa = load i8, ptr %i.pz, align 2, !tbaa !83
  %i.qb = zext i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.qb
  store i8 1, ptr %i.qc, align 1, !tbaa !75
  %i.qd = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1152
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 348
  %i.qf = load i8, ptr %i.qe, align 2, !tbaa !83
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.qg
  store i8 1, ptr %i.qh, align 1, !tbaa !75
  %indvars.iv.next1153.3 = add nuw nsw i64 %indvars.iv1152, 4 ; 2 uses
  %niter1326.next.3 = add i64 %niter1326, 4       ; 2 uses
  %niter1326.ncmp.3 = icmp eq i64 %niter1326.next.3, %unroll_iter1325
  br i1 %niter1326.ncmp.3, label %.preheader921.preheader.loopexit.unr-lcssa, label %.lr.ph1021

.preheader920:                                    ; preds = %.preheader921
  br i1 %.not1054, label %._crit_edge1026, label %.lr.ph1025.preheader

.lr.ph1025.preheader:                             ; preds = %.preheader920
  %wide.trip.count1163 = zext i8 %.0615.lcssa to i64 ; 2 uses
  %xtraiter1327 = and i64 %wide.trip.count1163, 3 ; 3 uses
  %i.qi = icmp ult i8 %.0615.lcssa, 4
  br i1 %i.qi, label %.lr.ph1025.epil.preheader, label %.lr.ph1025.preheader.new

.lr.ph1025.preheader.new:                         ; preds = %.lr.ph1025.preheader
  %unroll_iter1331 = and i64 %wide.trip.count1163, 252
  br label %.lr.ph1025

.preheader921:                                    ; preds = %.preheader921, %.preheader921.preheader
  %indvars.iv1157 = phi i64 [ 0, %.preheader921.preheader ], [ %indvars.iv.next1158.1, %.preheader921 ] ; 3 uses
  %.25901022 = phi i8 [ 0, %.preheader921.preheader ], [ %.3591.1, %.preheader921 ] ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv1157 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 2, !tbaa !75
  %.not700 = icmp ne i8 %i.qk, 0                  ; 2 uses
  %storemerge = select i1 %.not700, i8 %.25901022, i8 -1
  %i.ql = zext i1 %.not700 to i8
  %.3591 = add i8 %.25901022, %i.ql               ; 2 uses
  store i8 %storemerge, ptr %i.qj, align 2, !tbaa !75
  %i.qm = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv1157
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 1 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !75
  %.not700.1 = icmp ne i8 %i.qo, 0                ; 2 uses
  %storemerge.1 = select i1 %.not700.1, i8 %.3591, i8 -1
  %i.qp = zext i1 %.not700.1 to i8
  %.3591.1 = add i8 %.3591, %i.qp                 ; 4 uses
  store i8 %storemerge.1, ptr %i.qn, align 1, !tbaa !75
  %indvars.iv.next1158.1 = add nuw nsw i64 %indvars.iv1157, 2 ; 2 uses
  %exitcond1159.not.1 = icmp eq i64 %indvars.iv.next1158.1, 256
  br i1 %exitcond1159.not.1, label %.preheader920, label %.preheader921

._crit_edge1026.loopexit.unr-lcssa:               ; preds = %.lr.ph1025
  %lcmp.mod1329.not = icmp eq i64 %xtraiter1327, 0
  br i1 %lcmp.mod1329.not, label %._crit_edge1026, label %.lr.ph1025.epil.preheader

.lr.ph1025.epil.preheader:                        ; preds = %._crit_edge1026.loopexit.unr-lcssa, %.lr.ph1025.preheader
  %indvars.iv1160.epil.init = phi i64 [ 0, %.lr.ph1025.preheader ], [ %indvars.iv.next1161.3, %._crit_edge1026.loopexit.unr-lcssa ]
  %lcmp.mod1330 = icmp ne i64 %xtraiter1327, 0
  tail call void @llvm.assume(i1 %lcmp.mod1330)
  br label %.lr.ph1025.epil

.lr.ph1025.epil:                                  ; preds = %.lr.ph1025.epil, %.lr.ph1025.epil.preheader
  %indvars.iv1160.epil = phi i64 [ %indvars.iv1160.epil.init, %.lr.ph1025.epil.preheader ], [ %indvars.iv.next1161.epil, %.lr.ph1025.epil ] ; 2 uses
  %epil.iter1328 = phi i64 [ 0, %.lr.ph1025.epil.preheader ], [ %epil.iter1328.next, %.lr.ph1025.epil ]
  %i.qq = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1160.epil
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 84 ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 2, !tbaa !83
  %i.qt = zext i8 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !75
  store i8 %i.qv, ptr %i.qr, align 2, !tbaa !83
  %indvars.iv.next1161.epil = add nuw nsw i64 %indvars.iv1160.epil, 1
  %epil.iter1328.next = add i64 %epil.iter1328, 1 ; 2 uses
  %epil.iter1328.cmp.not = icmp eq i64 %epil.iter1328.next, %xtraiter1327
  br i1 %epil.iter1328.cmp.not, label %._crit_edge1026, label %.lr.ph1025.epil, !llvm.loop !16

._crit_edge1026:                                  ; preds = %._crit_edge1026.loopexit.unr-lcssa, %.lr.ph1025.epil, %.preheader920
  %i.qw = icmp eq i8 %.3591.1, 0
  br i1 %i.qw, label %.critedge730, label %bb.bv

.lr.ph1025:                                       ; preds = %.lr.ph1025, %.lr.ph1025.preheader.new
  %indvars.iv1160 = phi i64 [ 0, %.lr.ph1025.preheader.new ], [ %indvars.iv.next1161.3, %.lr.ph1025 ] ; 5 uses
  %niter1332 = phi i64 [ 0, %.lr.ph1025.preheader.new ], [ %niter1332.next.3, %.lr.ph1025 ]
  %i.qx = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1160
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 84 ; 2 uses
  %i.qz = load i8, ptr %i.qy, align 2, !tbaa !83
  %i.ra = zext i8 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !75
  store i8 %i.rc, ptr %i.qy, align 2, !tbaa !83
  %i.rd = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1160
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 172 ; 2 uses
  %i.rf = load i8, ptr %i.re, align 2, !tbaa !83
  %i.rg = zext i8 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rg
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !75
  store i8 %i.ri, ptr %i.re, align 2, !tbaa !83
  %i.rj = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1160
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 260 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 2, !tbaa !83
  %i.rm = zext i8 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !75
  store i8 %i.ro, ptr %i.rk, align 2, !tbaa !83
  %i.rp = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1160
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 348 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 2, !tbaa !83
  %i.rs = zext i8 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !75
  store i8 %i.ru, ptr %i.rq, align 2, !tbaa !83
  %indvars.iv.next1161.3 = add nuw nsw i64 %indvars.iv1160, 4 ; 2 uses
  %niter1332.next.3 = add i64 %niter1332, 4       ; 2 uses
  %niter1332.ncmp.3 = icmp eq i64 %niter1332.next.3, %unroll_iter1331
  br i1 %niter1332.ncmp.3, label %._crit_edge1026.loopexit.unr-lcssa, label %.lr.ph1025

bb.bv:                                            ; preds = %._crit_edge1026
  %i.rv = zext i8 %.3591.1 to i32
  %i.rw = shl i32 %2, 1                           ; 2 uses
  %i.rx = sub i32 %i.k, %i.rw                     ; 7 uses
  %i.ry = sub i32 %i.m, %i.rw                     ; 6 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %5 = load <4 x float>, ptr %i.rz, align 4
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.se = load float, ptr %i.sd, align 8, !tbaa !92
  %i.sf = sitofp i32 %2 to float                  ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %7 = load <4 x float>, ptr %i.sg, align 4
  %i.sh = fneg float %i.sf
  %i.si = load float, ptr %i.sa, align 8, !tbaa !92 ; 3 uses
  %i.sj = load <2 x float>, ptr %i.sb, align 4, !tbaa !92
  %i.sk = insertelement <2 x float> poison, float %i.sf, i64 0
  %i.sl = insertelement <2 x float> %i.sk, float %i.sh, i64 1 ; 2 uses
  %i.sm = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sl, <2 x float> %i.sm, <2 x float> %i.sj)
  %8 = load <4 x float>, ptr %i.sc, align 4
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.so = insertelement <2 x float> %6, float %i.se, i64 1
  %i.sp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sl, <2 x float> %i.sm, <2 x float> %i.so) ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %i.rv, ptr %i.sq, align 8, !tbaa !95
  %i.sr = zext i8 %.3591.1 to i64
  %i.ss = mul nuw nsw i64 %i.sr, 88
  %i.st = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ss, i32 noundef 0) #6 ; 3 uses
  store ptr %i.st, ptr %4, align 8, !tbaa !96
  %.not688 = icmp eq ptr %i.st, null
  %i.su = load i32, ptr %i.sq, align 8, !tbaa !95 ; 2 uses
  br i1 %.not688, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %i.su) #6
  br label %.critedge730

bb.bx:                                            ; preds = %bb.bv
  %i.sv = sext i32 %i.su to i64
  %i.sw = mul nsw i64 %i.sv, 88
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.st, i8 0, i64 %i.sw, i1 false)
  %i.sx = load i32, ptr %i.sq, align 8, !tbaa !95
  %.not6921047 = icmp slt i32 %i.sx, 1
  br i1 %.not6921047, label %.critedge730, label %.lr.ph1050

.lr.ph1050:                                       ; preds = %bb.bx
  %i.sy = mul i32 %i.ry, %i.rx                    ; 4 uses
  %i.sz = sext i32 %i.sy to i64                   ; 6 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.tb = icmp sgt i32 %i.ry, 0
  %i.tc = icmp sgt i32 %i.rx, 0
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 9 uses
  %i.tg = sext i32 %2 to i64                      ; 4 uses
  %i.th = sext i32 %i.rx to i64                   ; 2 uses
  %i.ti = sext i32 %i.k to i64                    ; 3 uses
  %i.tj = sext i32 %i.ry to i64
  %wide.trip.count1168 = zext i8 %.0615.lcssa to i64 ; 2 uses
  %wide.trip.count1184 = zext nneg i32 %i.ry to i64
  %wide.trip.count1179 = zext nneg i32 %i.rx to i64
  %invariant.op1314 = add nsw i64 %i.tg, %i.tj
  %invariant.op = add nsw i64 %i.tg, %i.th
  %i.tk = shufflevector <2 x float> %i.sn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tl = shufflevector <2 x float> %i.sp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tm = shufflevector <2 x float> %9, <2 x float> %i.sp, <2 x i32> <i32 0, i32 3>
  %xtraiter1333 = and i64 %wide.trip.count1168, 1
  %i.tn = icmp eq i8 %.0615.lcssa, 1
  %unroll_iter1339 = and i64 %wide.trip.count1168, 254
  %lcmp.mod1335.not = icmp eq i64 %xtraiter1333, 0
  %lcmp.mod1338 = trunc i8 %.0615.lcssa to i1
  %i.to = insertelement <4 x float> %i.tl, float %i.si, i64 1
  %i.tp = shufflevector <4 x float> %i.to, <4 x float> %i.tk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph1050, %bb.dw
  %indvars.iv1186 = phi i64 [ 0, %.lr.ph1050 ], [ %indvars.iv.next1187, %bb.dw ] ; 4 uses
  %i.tq = load ptr, ptr %4, align 8, !tbaa !96
  %i.tr = getelementptr inbounds nuw [88 x i8], ptr %i.tq, i64 %indvars.iv1186 ; 15 uses
  %i.ts = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.sz, i32 noundef 0) #6 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 64 ; 6 uses
  store ptr %i.ts, ptr %i.tt, align 8, !tbaa !98
  %.not689 = icmp eq ptr %i.ts, null
  br i1 %.not689, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %i.sy) #6
  br label %.critedge730

bb.ca:                                            ; preds = %bb.by
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ts, i8 -1, i64 %i.sz, i1 false)
  %i.tu = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.sz, i32 noundef 0) #6 ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 72 ; 2 uses
  store ptr %i.tu, ptr %i.tv, align 8, !tbaa !99
  %.not690 = icmp eq ptr %i.tu, null
  br i1 %.not690, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %i.sy) #6
  br label %.critedge730

bb.cc:                                            ; preds = %bb.ca
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.tu, i8 0, i64 %i.sz, i1 false)
  %i.tw = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.sz, i32 noundef 0) #6 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tr, i64 80 ; 2 uses
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !100
  %.not691 = icmp eq ptr %i.tw, null
  br i1 %.not691, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef %i.sy) #6
  br label %.critedge730

bb.ce:                                            ; preds = %bb.cc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.tw, i8 0, i64 %i.sz, i1 false)
  br i1 %.not1054, label %._crit_edge1032, label %.lr.ph1031

.lr.ph1031:                                       ; preds = %bb.ce
  %i.ty = trunc i64 %indvars.iv1186 to i8         ; 3 uses
  br i1 %i.tn, label %.epil.preheader, label %.lr.ph1031.new

._crit_edge1032.loopexit.unr-lcssa:               ; preds = %bb.cm
  br i1 %lcmp.mod1335.not, label %._crit_edge1032, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1032.loopexit.unr-lcssa, %.lr.ph1031
  %indvars.iv1165.epil.init = phi i64 [ 0, %.lr.ph1031 ], [ %indvars.iv.next1166.1, %._crit_edge1032.loopexit.unr-lcssa ]
  %.05601028.epil.init = phi i32 [ 0, %.lr.ph1031 ], [ %.1561.1, %._crit_edge1032.loopexit.unr-lcssa ] ; 2 uses
  %.05621027.epil.init = phi i32 [ 0, %.lr.ph1031 ], [ %.1563.1, %._crit_edge1032.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1338)
  %i.tz = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1165.epil.init ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 87
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !89
  %.not699.epil = icmp eq i8 %i.ub, 0
  br i1 %.not699.epil, label %._crit_edge1032, label %bb.cf

bb.cf:                                            ; preds = %.epil.preheader
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 84
  %i.ud = load i8, ptr %i.uc, align 2, !tbaa !83
  %i.ue = icmp eq i8 %i.ud, %i.ty
  br i1 %i.ue, label %bb.cg, label %._crit_edge1032

bb.cg:                                            ; preds = %bb.cf
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 80
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !84
  %i.uh = zext i16 %i.ug to i32
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tz, i64 82
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !85
  %i.uk = zext i16 %i.uj to i32
  br label %._crit_edge1032

._crit_edge1032:                                  ; preds = %._crit_edge1032.loopexit.unr-lcssa, %bb.cg, %bb.cf, %.epil.preheader, %bb.ce
  %.0562.lcssa = phi i32 [ 0, %bb.ce ], [ %.1563.1, %._crit_edge1032.loopexit.unr-lcssa ], [ %i.uh, %bb.cg ], [ %.05621027.epil.init, %bb.cf ], [ %.05621027.epil.init, %.epil.preheader ] ; 11 uses
  %.0560.lcssa = phi i32 [ 0, %bb.ce ], [ %.1561.1, %._crit_edge1032.loopexit.unr-lcssa ], [ %i.uk, %bb.cg ], [ %.05601028.epil.init, %bb.cf ], [ %.05601028.epil.init, %.epil.preheader ] ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  store i32 %i.rx, ptr %i.ul, align 8, !tbaa !101
  %i.um = getelementptr inbounds nuw i8, ptr %i.tr, i64 36
  store i32 %i.ry, ptr %i.um, align 4, !tbaa !102
  %i.un = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.uo = load <2 x float>, ptr %i.sg, align 4, !tbaa !92
  store <2 x float> %i.uo, ptr %i.un, align 8, !tbaa !92
  %i.up = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store <4 x float> %i.tp, ptr %i.tr, align 8, !tbaa !92
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tr, i64 16 ; 2 uses
  store <2 x float> %i.tm, ptr %i.uq, align 8, !tbaa !92
  %i.ur = uitofp nneg i32 %.0562.lcssa to float
  %i.us = load float, ptr %i.ta, align 8, !tbaa !103
  %i.ut = tail call float @llvm.fmuladd.f32(float %i.ur, float %i.us, float %i.si)
  store float %i.ut, ptr %i.up, align 4, !tbaa !92
  %i.uu = uitofp nneg i32 %.0560.lcssa to float
  %i.uv = load float, ptr %i.ta, align 8, !tbaa !103
  %i.uw = tail call float @llvm.fmuladd.f32(float %i.uu, float %i.uv, float %i.si)
  store float %i.uw, ptr %i.uq, align 8, !tbaa !92
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  store i32 %.0562.lcssa, ptr %i.ux, align 8, !tbaa !104
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tr, i64 60
  store i32 %.0560.lcssa, ptr %i.uy, align 4, !tbaa !105
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tr, i64 40 ; 5 uses
  store i32 %i.rx, ptr %i.uz, align 8, !tbaa !106
  %i.va = getelementptr inbounds nuw i8, ptr %i.tr, i64 44 ; 5 uses
  store i32 0, ptr %i.va, align 4, !tbaa !107
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tr, i64 48 ; 5 uses
  store i32 %i.ry, ptr %i.vb, align 8, !tbaa !108
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tr, i64 52 ; 5 uses
  store i32 0, ptr %i.vc, align 4, !tbaa !109
  br i1 %i.tb, label %.preheader.lr.ph, label %._crit_edge1046.split

.preheader.lr.ph:                                 ; preds = %._crit_edge1032
  %i.vd = trunc i64 %indvars.iv1186 to i8
  br i1 %i.tc, label %.preheader, label %._crit_edge1046.split.thread

.lr.ph1031.new:                                   ; preds = %.lr.ph1031, %bb.cm
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166.1, %bb.cm ], [ 0, %.lr.ph1031 ] ; 3 uses
  %.05601028 = phi i32 [ %.1561.1, %bb.cm ], [ 0, %.lr.ph1031 ] ; 2 uses
  %.05621027 = phi i32 [ %.1563.1, %bb.cm ], [ 0, %.lr.ph1031 ] ; 2 uses
  %niter1340 = phi i64 [ %niter1340.next.1, %bb.cm ], [ 0, %.lr.ph1031 ]
  %i.ve = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1165 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 87
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !89
  %.not699 = icmp eq i8 %i.vg, 0
  br i1 %.not699, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph1031.new
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 84
  %i.vi = load i8, ptr %i.vh, align 2, !tbaa !83
  %i.vj = icmp eq i8 %i.vi, %i.ty
  br i1 %i.vj, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 80
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !84
  %i.vm = zext i16 %i.vl to i32
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 82
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !85
  %i.vp = zext i16 %i.vo to i32
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph1031.new, %bb.ch, %bb.ci
  %.1563 = phi i32 [ %i.vm, %bb.ci ], [ %.05621027, %bb.ch ], [ %.05621027, %.lr.ph1031.new ] ; 2 uses
  %.1561 = phi i32 [ %i.vp, %bb.ci ], [ %.05601028, %bb.ch ], [ %.05601028, %.lr.ph1031.new ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1165 ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 175
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !89
  %.not699.1 = icmp eq i8 %i.vs, 0
  br i1 %.not699.1, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 172
  %i.vu = load i8, ptr %i.vt, align 2, !tbaa !83
  %i.vv = icmp eq i8 %i.vu, %i.ty
  br i1 %i.vv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vq, i64 168
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !84
  %i.vy = zext i16 %i.vx to i32
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vq, i64 170
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !85
  %i.wb = zext i16 %i.wa to i32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.1563.1 = phi i32 [ %i.vy, %bb.cl ], [ %.1563, %bb.ck ], [ %.1563, %bb.cj ] ; 3 uses
  %.1561.1 = phi i32 [ %i.wb, %bb.cl ], [ %.1561, %bb.ck ], [ %.1561, %bb.cj ] ; 3 uses
  %indvars.iv.next1166.1 = add nuw nsw i64 %indvars.iv1165, 2 ; 2 uses
  %niter1340.next.1 = add i64 %niter1340, 2       ; 2 uses
  %niter1340.ncmp.1 = icmp eq i64 %niter1340.next.1, %unroll_iter1339
  br i1 %niter1340.ncmp.1, label %._crit_edge1032.loopexit.unr-lcssa, label %.lr.ph1031.new

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1044
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %._crit_edge1044 ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %i.wc = add nsw i64 %indvars.iv1181, %i.tg      ; 3 uses
  %i.wd = mul nsw i64 %i.wc, %i.ti                ; 3 uses
  %i.we = mul nuw nsw i64 %indvars.iv1181, %i.th
  %i.wf = trunc nuw nsw i64 %indvars.iv1181 to i32 ; 2 uses
  %i.wg = add nsw i64 %i.wc, 1                    ; 2 uses
  %i.wh = mul nsw i64 %i.wg, %i.ti
  %i.wi = icmp slt i64 %i.wg, %invariant.op1314
  %i.wj = add nsw i64 %i.wc, -1
  %i.wk = mul nsw i64 %i.wj, %i.ti
  %.not1299.not.not = icmp ne i64 %indvars.iv1181, 0
  br label %bb.cn

._crit_edge1046.split.loopexit:                   ; preds = %._crit_edge1044
  %.pre1213 = load i32, ptr %i.uz, align 8, !tbaa !106
  %.pre1214 = load i32, ptr %i.va, align 4, !tbaa !107
  br label %._crit_edge1046.split
end_hunk_0
