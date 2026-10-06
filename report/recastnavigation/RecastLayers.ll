Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastLayers?download=true
inline.NumInlined: 113
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z24rcBuildHeightfieldLayersP9rcContextRK20rcCompactHeightfieldiiR21rcHeightfieldLayerSet:bb.a
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
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !92
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.sf = load float, ptr %i.se, align 8, !tbaa !92
  %i.sg = sitofp i32 %2 to float                  ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.si = load float, ptr %i.sh, align 4, !tbaa !93
  %i.sj = fneg float %i.sg
  %i.sk = load float, ptr %i.sb, align 8, !tbaa !92 ; 3 uses
  %i.sl = load <2 x float>, ptr %i.sc, align 4, !tbaa !92
  %i.sm = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.sn = insertelement <2 x float> %i.sm, float %i.sj, i64 1 ; 2 uses
  %i.so = insertelement <2 x float> poison, float %i.si, i64 0
  %i.sp = shufflevector <2 x float> %i.so, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sn, <2 x float> %i.sp, <2 x float> %i.sl)
  %i.sr = load float, ptr %i.sd, align 4, !tbaa !92
  %i.ss = insertelement <2 x float> poison, float %i.sa, i64 0
  %i.st = insertelement <2 x float> %i.ss, float %i.sf, i64 1
  %i.su = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sn, <2 x float> %i.sp, <2 x float> %i.st) ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %i.rv, ptr %i.sv, align 8, !tbaa !96
  %i.sw = zext i8 %.3591.1 to i64
  %i.sx = mul nuw nsw i64 %i.sw, 88
  %i.sy = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.sx, i32 noundef 0) #6 ; 3 uses
  store ptr %i.sy, ptr %4, align 8, !tbaa !97
  %.not688 = icmp eq ptr %i.sy, null
  %i.sz = load i32, ptr %i.sv, align 8, !tbaa !96 ; 2 uses
  br i1 %.not688, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %i.sz) #6
  br label %.critedge730

bb.bx:                                            ; preds = %bb.bv
  %i.ta = sext i32 %i.sz to i64
  %i.tb = mul nsw i64 %i.ta, 88
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.sy, i8 0, i64 %i.tb, i1 false)
  %i.tc = load i32, ptr %i.sv, align 8, !tbaa !96
  %.not6921047 = icmp slt i32 %i.tc, 1
  br i1 %.not6921047, label %.critedge730, label %.lr.ph1050

.lr.ph1050:                                       ; preds = %bb.bx
  %i.td = mul i32 %i.ry, %i.rx                    ; 4 uses
  %i.te = sext i32 %i.td to i64                   ; 6 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.tg = icmp sgt i32 %i.ry, 0
  %i.th = icmp sgt i32 %i.rx, 0
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 9 uses
  %i.tl = sext i32 %2 to i64                      ; 4 uses
  %i.tm = sext i32 %i.rx to i64                   ; 2 uses
  %i.tn = sext i32 %i.k to i64                    ; 3 uses
  %i.to = sext i32 %i.ry to i64
  %wide.trip.count1168 = zext i8 %.0615.lcssa to i64 ; 2 uses
  %wide.trip.count1184 = zext nneg i32 %i.ry to i64
  %wide.trip.count1179 = zext nneg i32 %i.rx to i64
  %invariant.op1314 = add nsw i64 %i.tl, %i.to
  %invariant.op = add nsw i64 %i.tl, %i.tm
  %i.tp = shufflevector <2 x float> %i.sq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tq = shufflevector <2 x float> %i.su, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tr = insertelement <2 x float> %i.su, float %i.sr, i64 0
  %xtraiter1333 = and i64 %wide.trip.count1168, 1
  %i.ts = icmp eq i8 %.0615.lcssa, 1
  %unroll_iter1339 = and i64 %wide.trip.count1168, 254
  %lcmp.mod1335.not = icmp eq i64 %xtraiter1333, 0
  %lcmp.mod1338 = trunc i8 %.0615.lcssa to i1
  %i.tt = insertelement <4 x float> %i.tq, float %i.sk, i64 1
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> %i.tp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph1050, %bb.dw
  %indvars.iv1186 = phi i64 [ 0, %.lr.ph1050 ], [ %indvars.iv.next1187, %bb.dw ] ; 4 uses
  %i.tv = load ptr, ptr %4, align 8, !tbaa !97
  %i.tw = getelementptr inbounds nuw [88 x i8], ptr %i.tv, i64 %indvars.iv1186 ; 15 uses
  %i.tx = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.te, i32 noundef 0) #6 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 64 ; 6 uses
  store ptr %i.tx, ptr %i.ty, align 8, !tbaa !99
  %.not689 = icmp eq ptr %i.tx, null
  br i1 %.not689, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %i.td) #6
  br label %.critedge730

bb.ca:                                            ; preds = %bb.by
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.tx, i8 -1, i64 %i.te, i1 false)
  %i.tz = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.te, i32 noundef 0) #6 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 72 ; 2 uses
  store ptr %i.tz, ptr %i.ua, align 8, !tbaa !100
  %.not690 = icmp eq ptr %i.tz, null
  br i1 %.not690, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %i.td) #6
  br label %.critedge730

bb.cc:                                            ; preds = %bb.ca
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.tz, i8 0, i64 %i.te, i1 false)
  %i.ub = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.te, i32 noundef 0) #6 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 80 ; 2 uses
  store ptr %i.ub, ptr %i.uc, align 8, !tbaa !101
  %.not691 = icmp eq ptr %i.ub, null
  br i1 %.not691, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef %i.td) #6
  br label %.critedge730

bb.ce:                                            ; preds = %bb.cc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ub, i8 0, i64 %i.te, i1 false)
  br i1 %.not1054, label %._crit_edge1032, label %.lr.ph1031

.lr.ph1031:                                       ; preds = %bb.ce
  %i.ud = trunc i64 %indvars.iv1186 to i8         ; 3 uses
  br i1 %i.ts, label %.epil.preheader, label %.lr.ph1031.new

._crit_edge1032.loopexit.unr-lcssa:               ; preds = %bb.cm
  br i1 %lcmp.mod1335.not, label %._crit_edge1032, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1032.loopexit.unr-lcssa, %.lr.ph1031
  %indvars.iv1165.epil.init = phi i64 [ 0, %.lr.ph1031 ], [ %indvars.iv.next1166.1, %._crit_edge1032.loopexit.unr-lcssa ]
  %.05601028.epil.init = phi i32 [ 0, %.lr.ph1031 ], [ %.1561.1, %._crit_edge1032.loopexit.unr-lcssa ] ; 2 uses
  %.05621027.epil.init = phi i32 [ 0, %.lr.ph1031 ], [ %.1563.1, %._crit_edge1032.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1338)
  %i.ue = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1165.epil.init ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 87
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !89
  %.not699.epil = icmp eq i8 %i.ug, 0
  br i1 %.not699.epil, label %._crit_edge1032, label %bb.cf

bb.cf:                                            ; preds = %.epil.preheader
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 84
  %i.ui = load i8, ptr %i.uh, align 2, !tbaa !83
  %i.uj = icmp eq i8 %i.ui, %i.ud
  br i1 %i.uj, label %bb.cg, label %._crit_edge1032

bb.cg:                                            ; preds = %bb.cf
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ue, i64 80
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !84
  %i.um = zext i16 %i.ul to i32
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 82
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !85
  %i.up = zext i16 %i.uo to i32
  br label %._crit_edge1032

._crit_edge1032:                                  ; preds = %._crit_edge1032.loopexit.unr-lcssa, %bb.cg, %bb.cf, %.epil.preheader, %bb.ce
  %.0562.lcssa = phi i32 [ 0, %bb.ce ], [ %.1563.1, %._crit_edge1032.loopexit.unr-lcssa ], [ %i.um, %bb.cg ], [ %.05621027.epil.init, %bb.cf ], [ %.05621027.epil.init, %.epil.preheader ] ; 11 uses
  %.0560.lcssa = phi i32 [ 0, %bb.ce ], [ %.1561.1, %._crit_edge1032.loopexit.unr-lcssa ], [ %i.up, %bb.cg ], [ %.05601028.epil.init, %bb.cf ], [ %.05601028.epil.init, %.epil.preheader ] ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tw, i64 32
  store i32 %i.rx, ptr %i.uq, align 8, !tbaa !102
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tw, i64 36
  store i32 %i.ry, ptr %i.ur, align 4, !tbaa !103
  %i.us = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  %i.ut = load <2 x float>, ptr %i.sh, align 4, !tbaa !92
  store <2 x float> %i.ut, ptr %i.us, align 8, !tbaa !92
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  store <4 x float> %i.tu, ptr %i.tw, align 8, !tbaa !92
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tw, i64 16 ; 2 uses
  store <2 x float> %i.tr, ptr %i.uv, align 8, !tbaa !92
  %i.uw = uitofp nneg i32 %.0562.lcssa to float
  %i.ux = load float, ptr %i.tf, align 8, !tbaa !104
  %i.uy = tail call float @llvm.fmuladd.f32(float %i.uw, float %i.ux, float %i.sk)
  store float %i.uy, ptr %i.uu, align 4, !tbaa !92
  %i.uz = uitofp nneg i32 %.0560.lcssa to float
  %i.va = load float, ptr %i.tf, align 8, !tbaa !104
  %i.vb = tail call float @llvm.fmuladd.f32(float %i.uz, float %i.va, float %i.sk)
  store float %i.vb, ptr %i.uv, align 8, !tbaa !92
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tw, i64 56
  store i32 %.0562.lcssa, ptr %i.vc, align 8, !tbaa !105
  %i.vd = getelementptr inbounds nuw i8, ptr %i.tw, i64 60
  store i32 %.0560.lcssa, ptr %i.vd, align 4, !tbaa !106
  %i.ve = getelementptr inbounds nuw i8, ptr %i.tw, i64 40 ; 5 uses
  store i32 %i.rx, ptr %i.ve, align 8, !tbaa !107
  %i.vf = getelementptr inbounds nuw i8, ptr %i.tw, i64 44 ; 5 uses
  store i32 0, ptr %i.vf, align 4, !tbaa !108
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tw, i64 48 ; 5 uses
  store i32 %i.ry, ptr %i.vg, align 8, !tbaa !109
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tw, i64 52 ; 5 uses
  store i32 0, ptr %i.vh, align 4, !tbaa !110
  br i1 %i.tg, label %.preheader.lr.ph, label %._crit_edge1046.split

.preheader.lr.ph:                                 ; preds = %._crit_edge1032
  %i.vi = trunc i64 %indvars.iv1186 to i8
  br i1 %i.th, label %.preheader, label %._crit_edge1046.split.thread

.lr.ph1031.new:                                   ; preds = %.lr.ph1031, %bb.cm
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166.1, %bb.cm ], [ 0, %.lr.ph1031 ] ; 3 uses
  %.05601028 = phi i32 [ %.1561.1, %bb.cm ], [ 0, %.lr.ph1031 ] ; 2 uses
  %.05621027 = phi i32 [ %.1563.1, %bb.cm ], [ 0, %.lr.ph1031 ] ; 2 uses
  %niter1340 = phi i64 [ %niter1340.next.1, %bb.cm ], [ 0, %.lr.ph1031 ]
  %i.vj = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1165 ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 87
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !89
  %.not699 = icmp eq i8 %i.vl, 0
  br i1 %.not699, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph1031.new
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 84
  %i.vn = load i8, ptr %i.vm, align 2, !tbaa !83
  %i.vo = icmp eq i8 %i.vn, %i.ud
  br i1 %i.vo, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 80
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !84
  %i.vr = zext i16 %i.vq to i32
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vj, i64 82
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !85
  %i.vu = zext i16 %i.vt to i32
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph1031.new, %bb.ch, %bb.ci
  %.1563 = phi i32 [ %i.vr, %bb.ci ], [ %.05621027, %bb.ch ], [ %.05621027, %.lr.ph1031.new ] ; 2 uses
  %.1561 = phi i32 [ %i.vu, %bb.ci ], [ %.05601028, %bb.ch ], [ %.05601028, %.lr.ph1031.new ] ; 2 uses
  %i.vv = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %indvars.iv1165 ; 4 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 175
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !89
  %.not699.1 = icmp eq i8 %i.vx, 0
  br i1 %.not699.1, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 172
  %i.vz = load i8, ptr %i.vy, align 2, !tbaa !83
  %i.wa = icmp eq i8 %i.vz, %i.ud
  br i1 %i.wa, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vv, i64 168
  %i.wc = load i16, ptr %i.wb, align 2, !tbaa !84
  %i.wd = zext i16 %i.wc to i32
  %i.we = getelementptr inbounds nuw i8, ptr %i.vv, i64 170
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !85
  %i.wg = zext i16 %i.wf to i32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.1563.1 = phi i32 [ %i.wd, %bb.cl ], [ %.1563, %bb.ck ], [ %.1563, %bb.cj ] ; 3 uses
  %.1561.1 = phi i32 [ %i.wg, %bb.cl ], [ %.1561, %bb.ck ], [ %.1561, %bb.cj ] ; 3 uses
  %indvars.iv.next1166.1 = add nuw nsw i64 %indvars.iv1165, 2 ; 2 uses
  %niter1340.next.1 = add i64 %niter1340, 2       ; 2 uses
  %niter1340.ncmp.1 = icmp eq i64 %niter1340.next.1, %unroll_iter1339
  br i1 %niter1340.ncmp.1, label %._crit_edge1032.loopexit.unr-lcssa, label %.lr.ph1031.new

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1044
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %._crit_edge1044 ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %i.wh = add nsw i64 %indvars.iv1181, %i.tl      ; 3 uses
  %i.wi = mul nsw i64 %i.wh, %i.tn                ; 3 uses
  %i.wj = mul nuw nsw i64 %indvars.iv1181, %i.tm
  %i.wk = trunc nuw nsw i64 %indvars.iv1181 to i32 ; 2 uses
  %i.wl = add nsw i64 %i.wh, 1                    ; 2 uses
  %i.wm = mul nsw i64 %i.wl, %i.tn
  %i.wn = icmp slt i64 %i.wl, %invariant.op1314
  %i.wo = add nsw i64 %i.wh, -1
  %i.wp = mul nsw i64 %i.wo, %i.tn
  %.not1299.not.not = icmp ne i64 %indvars.iv1181, 0
  br label %bb.cn

._crit_edge1046.split.loopexit:                   ; preds = %._crit_edge1044
  %.pre1213 = load i32, ptr %i.ve, align 8, !tbaa !107
  %.pre1214 = load i32, ptr %i.vf, align 4, !tbaa !108
  br label %._crit_edge1046.split

._crit_edge1046.split:                            ; preds = %._crit_edge1046.split.loopexit, %._crit_edge1032
  %i.wq = phi i32 [ %.pre1214, %._crit_edge1046.split.loopexit ], [ 0, %._crit_edge1032 ]
  %i.wr = phi i32 [ %.pre1213, %._crit_edge1046.split.loopexit ], [ %i.rx, %._crit_edge1032 ]
  %i.ws = icmp sgt i32 %i.wr, %i.wq
  br i1 %i.ws, label %bb.du, label %._crit_edge1046.split.thread

._crit_edge1044:                                  ; preds = %._crit_edge1041
  %indvars.iv.next1182 = add nuw nsw i64 %indvars.iv1181, 1 ; 2 uses
  %exitcond1185.not = icmp eq i64 %indvars.iv.next1182, %wide.trip.count1184
  br i1 %exitcond1185.not, label %._crit_edge1046.split.loopexit, label %.preheader

bb.cn:                                            ; preds = %.preheader, %._crit_edge1041
  %indvars.iv1176 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next1177, %._crit_edge1041 ] ; 5 uses
  %i.wt = add nsw i64 %indvars.iv1176, %i.tl      ; 5 uses
  %i.wu = load ptr, ptr %i.ti, align 8, !tbaa !73
  %i.wv = getelementptr [4 x i8], ptr %i.wu, i64 %i.wt
  %i.ww = getelementptr [4 x i8], ptr %i.wv, i64 %i.wi
  %i.wx = load i32, ptr %i.ww, align 4            ; 3 uses
  %i.wy = lshr i32 %i.wx, 24                      ; 2 uses
  %.not1062 = icmp eq i32 %i.wy, 0
  br i1 %.not1062, label %._crit_edge1041, label %.lr.ph1040

.lr.ph1040:                                       ; preds = %bb.cn
  %i.wz = and i32 %i.wx, 16777215
  %i.xa = add nuw nsw i32 %i.wz, %i.wy
  %i.xb = add nuw nsw i64 %indvars.iv1176, %i.wj  ; 7 uses
  %i.xc = and i32 %i.wx, 16777215
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = zext nneg i32 %i.xa to i64
  %i.xf = trunc nuw nsw i64 %indvars.iv1176 to i32 ; 2 uses
  %.not1298.not.not = icmp ne i64 %indvars.iv1176, 0
  %i.xg = add nsw i64 %i.wt, 1                    ; 2 uses
  %i.xh = icmp slt i64 %i.xg, %invariant.op
  br label %bb.co

._crit_edge1041:                                  ; preds = %bb.dt, %bb.cn
  %indvars.iv.next1177 = add nuw nsw i64 %indvars.iv1176, 1 ; 2 uses
  %exitcond1180.not = icmp eq i64 %indvars.iv.next1177, %wide.trip.count1179
  br i1 %exitcond1180.not, label %._crit_edge1044, label %bb.cn

bb.co:                                            ; preds = %.lr.ph1040, %bb.dt
  %indvars.iv1173 = phi i64 [ %i.xd, %.lr.ph1040 ], [ %indvars.iv.next1174, %bb.dt ] ; 4 uses
  %i.xi = load ptr, ptr %i.tj, align 8, !tbaa !76
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %indvars.iv1173 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv1173
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !75  ; 2 uses
  %i.xm = icmp eq i8 %i.xl, -1
  br i1 %i.xm, label %bb.dt, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.xn = zext i8 %i.xl to i64
  %i.xo = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 84
  %i.xq = load i8, ptr %i.xp, align 2, !tbaa !83  ; 2 uses
  %i.xr = zext i8 %i.xq to i32                    ; 4 uses
  %.not693 = icmp eq i8 %i.xq, %i.vi
  br i1 %.not693, label %bb.cq, label %bb.dt

bb.cq:                                            ; preds = %bb.cp
  %i.xs = load i32, ptr %i.ve, align 8, !tbaa !107
  %i.xt = tail call noundef i32 @llvm.smin.i32(i32 %i.xs, i32 %i.xf)
  store i32 %i.xt, ptr %i.ve, align 8, !tbaa !107
  %i.xu = load i32, ptr %i.vf, align 4, !tbaa !108
  %i.xv = tail call noundef i32 @llvm.smax.i32(i32 %i.xu, i32 %i.xf)
  store i32 %i.xv, ptr %i.vf, align 4, !tbaa !108
  %i.xw = load i32, ptr %i.vg, align 8, !tbaa !109
  %i.xx = tail call noundef i32 @llvm.smin.i32(i32 %i.xw, i32 %i.wk)
  store i32 %i.xx, ptr %i.vg, align 8, !tbaa !109
  %i.xy = load i32, ptr %i.vh, align 4, !tbaa !110
  %i.xz = tail call noundef i32 @llvm.smax.i32(i32 %i.xy, i32 %i.wk)
  store i32 %i.xz, ptr %i.vh, align 4, !tbaa !110
  %i.ya = load i16, ptr %i.xj, align 4, !tbaa !88
  %i.yb = zext i16 %i.ya to i32
  %i.yc = sub nsw i32 %i.yb, %.0562.lcssa
  %i.yd = trunc i32 %i.yc to i8
  %i.ye = load ptr, ptr %i.ty, align 8, !tbaa !99
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.xb
  store i8 %i.yd, ptr %i.yf, align 1, !tbaa !75
  %i.yg = load ptr, ptr %i.tk, align 8, !tbaa !74
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 %indvars.iv1173
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !75
  %i.yj = load ptr, ptr %i.ua, align 8, !tbaa !100
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.xb
  store i8 %i.yi, ptr %i.yk, align 1, !tbaa !75
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xj, i64 4 ; 4 uses
  %i.ym = load i32, ptr %i.yl, align 4
  %i.yn = and i32 %i.ym, 63                       ; 2 uses
  %.not694 = icmp eq i32 %i.yn, 63
  br i1 %.not694, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yo = load ptr, ptr %i.ti, align 8, !tbaa !73
  %i.yp = getelementptr [4 x i8], ptr %i.yo, i64 %i.wi
  %i.yq = getelementptr [4 x i8], ptr %i.yp, i64 %i.wt
  %5 = getelementptr i8, ptr %i.yq, i64 -4
  %i.yr = load i32, ptr %5, align 4
  %i.ys = and i32 %i.yr, 16777215
  %i.yt = add nuw nsw i32 %i.ys, %i.yn
  %i.yu = zext nneg i32 %i.yt to i64              ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.yu
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !75  ; 2 uses
  %.not695 = icmp eq i8 %i.yw, -1
  br i1 %.not695, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yx = zext i8 %i.yw to i64
  %i.yy = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.yx
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 84
  %i.za = load i8, ptr %i.yz, align 2, !tbaa !83
  %i.zb = zext i8 %i.za to i32
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.zc = phi i32 [ %i.zb, %bb.cs ], [ 255, %bb.cr ]
  %i.zd = load ptr, ptr %i.tk, align 8, !tbaa !74
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.yu
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !75  ; 3 uses
  %.not696 = icmp eq i8 %i.zf, 0
  %.not697 = icmp eq i32 %i.zc, %i.xr             ; 2 uses
  %or.cond725 = select i1 %.not696, i1 true, i1 %.not697
  br i1 %or.cond725, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zg = load ptr, ptr %i.tj, align 8, !tbaa !76
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.yu
  %i.zi = load i16, ptr %i.zh, align 4, !tbaa !88
  %i.zj = zext i16 %i.zi to i32                   ; 2 uses
  %i.zk = icmp slt i32 %.0562.lcssa, %i.zj
  br i1 %i.zk, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zl = load ptr, ptr %i.ty, align 8, !tbaa !99
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.xb ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !75
  %i.zo = sub nsw i32 %i.zj, %.0562.lcssa
  %i.zp = trunc i32 %i.zo to i8
  %i.zq = tail call noundef i8 @llvm.umax.i8(i8 %i.zn, i8 %i.zp)
  store i8 %i.zq, ptr %i.zm, align 1, !tbaa !75
  %.pre1201 = load ptr, ptr %i.tk, align 8, !tbaa !74
  %.phi.trans.insert1202 = getelementptr inbounds nuw i8, ptr %.pre1201, i64 %i.yu
  %.pre1203 = load i8, ptr %.phi.trans.insert1202, align 1, !tbaa !75
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cu, %bb.cv, %bb.ct
  %i.zr = phi i8 [ %i.zf, %bb.ct ], [ %.pre1203, %bb.cv ], [ %i.zf, %bb.cu ]
  %.1554 = phi i8 [ 0, %bb.ct ], [ 1, %bb.cv ], [ 1, %bb.cu ]
  %.not698 = icmp ne i8 %i.zr, 0
  %or.cond726.a = select i1 %.not698, i1 %.not697, i1 false
  %narrow = and i1 %or.cond726.a, %.not1298.not.not
  %spec.select = zext i1 %narrow to i8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cq
  %.2555 = phi i8 [ 0, %bb.cq ], [ %.1554, %bb.cw ] ; 3 uses
  %.3 = phi i8 [ 0, %bb.cq ], [ %spec.select, %bb.cw ] ; 2 uses
  %i.zs = load i32, ptr %i.yl, align 4
  %i.zt = lshr i32 %i.zs, 6
  %i.zu = and i32 %i.zt, 63                       ; 2 uses
  %.not694.1 = icmp eq i32 %i.zu, 63
  br i1 %.not694.1, label %bb.de, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zv = load ptr, ptr %i.ti, align 8, !tbaa !73
  %i.zw = getelementptr [4 x i8], ptr %i.zv, i64 %i.wm
  %i.zx = getelementptr [4 x i8], ptr %i.zw, i64 %i.wt
  %i.zy = load i32, ptr %i.zx, align 4
  %i.zz = and i32 %i.zy, 16777215
  %i.aaa = add nuw nsw i32 %i.zz, %i.zu
  %i.aab = zext nneg i32 %i.aaa to i64            ; 4 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !75 ; 2 uses
  %.not695.1 = icmp eq i8 %i.aad, -1
  br i1 %.not695.1, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aae = zext i8 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 84
  %i.aah = load i8, ptr %i.aag, align 2, !tbaa !83
  %i.aai = zext i8 %i.aah to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.aaj = phi i32 [ %i.aai, %bb.cz ], [ 255, %bb.cy ]
  %i.aak = load ptr, ptr %i.tk, align 8, !tbaa !74
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.aab
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !75 ; 3 uses
  %.not696.1 = icmp eq i8 %i.aam, 0
  %.not697.1 = icmp eq i32 %i.aaj, %i.xr          ; 2 uses
  %or.cond725.1 = select i1 %.not696.1, i1 true, i1 %.not697.1
  br i1 %or.cond725.1, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aan = or i8 %.2555, 2                        ; 2 uses
  %i.aao = load ptr, ptr %i.tj, align 8, !tbaa !76
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %i.aab
  %i.aaq = load i16, ptr %i.aap, align 4, !tbaa !88
  %i.aar = zext i16 %i.aaq to i32                 ; 2 uses
  %i.aas = icmp slt i32 %.0562.lcssa, %i.aar
  br i1 %i.aas, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aat = load ptr, ptr %i.ty, align 8, !tbaa !99
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.xb ; 2 uses
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !75
  %i.aaw = sub nsw i32 %i.aar, %.0562.lcssa
  %i.aax = trunc i32 %i.aaw to i8
  %i.aay = tail call noundef i8 @llvm.umax.i8(i8 %i.aav, i8 %i.aax)
  store i8 %i.aay, ptr %i.aau, align 1, !tbaa !75
  %.pre1204 = load ptr, ptr %i.tk, align 8, !tbaa !74
  %.phi.trans.insert1205 = getelementptr inbounds nuw i8, ptr %.pre1204, i64 %i.aab
  %.pre1206 = load i8, ptr %.phi.trans.insert1205, align 1, !tbaa !75
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %i.aaz = phi i8 [ %i.aam, %bb.da ], [ %.pre1206, %bb.dc ], [ %i.aam, %bb.db ]
  %.1554.1 = phi i8 [ %.2555, %bb.da ], [ %i.aan, %bb.dc ], [ %i.aan, %bb.db ]
  %.not698.1 = icmp ne i8 %i.aaz, 0
  %or.cond726.1 = select i1 %.not698.1, i1 %.not697.1, i1 false
  %i.aba = select i1 %or.cond726.1, i1 %i.wn, i1 false
  %.1.1 = select i1 %i.aba, i8 2, i8 0
  %spec.select1316.a = or disjoint i8 %.3, %.1.1
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.cx
  %.2555.1 = phi i8 [ %.2555, %bb.cx ], [ %.1554.1, %bb.dd ] ; 3 uses
  %.3.1 = phi i8 [ %.3, %bb.cx ], [ %spec.select1316.a, %bb.dd ] ; 2 uses
  %i.abb = load i32, ptr %i.yl, align 4
  %i.abc = lshr i32 %i.abb, 12
  %i.abd = and i32 %i.abc, 63                     ; 2 uses
  %.not694.2 = icmp eq i32 %i.abd, 63
  br i1 %.not694.2, label %bb.dl, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.abe = load ptr, ptr %i.ti, align 8, !tbaa !73
  %i.abf = getelementptr [4 x i8], ptr %i.abe, i64 %i.wi
  %i.abg = getelementptr [4 x i8], ptr %i.abf, i64 %i.xg
  %i.abh = load i32, ptr %i.abg, align 4
  %i.abi = and i32 %i.abh, 16777215
  %i.abj = add nuw nsw i32 %i.abi, %i.abd
  %i.abk = zext nneg i32 %i.abj to i64            ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !75 ; 2 uses
  %.not695.2 = icmp eq i8 %i.abm, -1
  br i1 %.not695.2, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.abn = zext i8 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 84
  %i.abq = load i8, ptr %i.abp, align 2, !tbaa !83
  %i.abr = zext i8 %i.abq to i32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.abs = phi i32 [ %i.abr, %bb.dg ], [ 255, %bb.df ]
  %i.abt = load ptr, ptr %i.tk, align 8, !tbaa !74
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.abk
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !75 ; 3 uses
  %.not696.2 = icmp eq i8 %i.abv, 0
  %.not697.2 = icmp eq i32 %i.abs, %i.xr          ; 2 uses
  %or.cond725.2 = select i1 %.not696.2, i1 true, i1 %.not697.2
  br i1 %or.cond725.2, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.abw = or i8 %.2555.1, 4                      ; 2 uses
  %i.abx = load ptr, ptr %i.tj, align 8, !tbaa !76
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %i.abk
  %i.abz = load i16, ptr %i.aby, align 4, !tbaa !88
  %i.aca = zext i16 %i.abz to i32                 ; 2 uses
  %i.acb = icmp slt i32 %.0562.lcssa, %i.aca
  br i1 %i.acb, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.acc = load ptr, ptr %i.ty, align 8, !tbaa !99
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 %i.xb ; 2 uses
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !75
  %i.acf = sub nsw i32 %i.aca, %.0562.lcssa
  %i.acg = trunc i32 %i.acf to i8
  %i.ach = tail call noundef i8 @llvm.umax.i8(i8 %i.ace, i8 %i.acg)
  store i8 %i.ach, ptr %i.acd, align 1, !tbaa !75
  %.pre1207 = load ptr, ptr %i.tk, align 8, !tbaa !74
  %.phi.trans.insert1208 = getelementptr inbounds nuw i8, ptr %.pre1207, i64 %i.abk
  %.pre1209 = load i8, ptr %.phi.trans.insert1208, align 1, !tbaa !75
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %i.aci = phi i8 [ %i.abv, %bb.dh ], [ %.pre1209, %bb.dj ], [ %i.abv, %bb.di ]
  %.1554.2 = phi i8 [ %.2555.1, %bb.dh ], [ %i.abw, %bb.dj ], [ %i.abw, %bb.di ]
  %.not698.2 = icmp ne i8 %i.aci, 0
  %or.cond726.2 = select i1 %.not698.2, i1 %.not697.2, i1 false
  %i.acj = select i1 %or.cond726.2, i1 %i.xh, i1 false
  %.1.2 = select i1 %i.acj, i8 4, i8 0
  %spec.select1317 = or i8 %.3.1, %.1.2
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.de
  %.2555.2 = phi i8 [ %.2555.1, %bb.de ], [ %.1554.2, %bb.dk ] ; 3 uses
  %.3.2 = phi i8 [ %.3.1, %bb.de ], [ %spec.select1317, %bb.dk ] ; 2 uses
  %i.ack = load i32, ptr %i.yl, align 4
  %i.acl = lshr i32 %i.ack, 18
  %i.acm = and i32 %i.acl, 63                     ; 2 uses
  %.not694.3 = icmp eq i32 %i.acm, 63
  br i1 %.not694.3, label %bb.ds, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.acn = load ptr, ptr %i.ti, align 8, !tbaa !73
  %i.aco = getelementptr [4 x i8], ptr %i.acn, i64 %i.wp
  %i.acp = getelementptr [4 x i8], ptr %i.aco, i64 %i.wt
  %i.acq = load i32, ptr %i.acp, align 4
  %i.acr = and i32 %i.acq, 16777215
  %i.acs = add nuw nsw i32 %i.acr, %i.acm
  %i.act = zext nneg i32 %i.acs to i64            ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.act
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !75 ; 2 uses
  %.not695.3 = icmp eq i8 %i.acv, -1
  br i1 %.not695.3, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.acw = zext i8 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [88 x i8], ptr %i.ea, i64 %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 84
  %i.acz = load i8, ptr %i.acy, align 2, !tbaa !83
  %i.ada = zext i8 %i.acz to i32
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.adb = phi i32 [ %i.ada, %bb.dn ], [ 255, %bb.dm ]
  %i.adc = load ptr, ptr %i.tk, align 8, !tbaa !74
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.act
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !75 ; 3 uses
  %.not696.3 = icmp eq i8 %i.ade, 0
  %.not697.3 = icmp eq i32 %i.adb, %i.xr          ; 2 uses
  %or.cond725.3 = select i1 %.not696.3, i1 true, i1 %.not697.3
  br i1 %or.cond725.3, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.adf = or i8 %.2555.2, 8                      ; 2 uses
  %i.adg = load ptr, ptr %i.tj, align 8, !tbaa !76
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.adg, i64 %i.act
  %i.adi = load i16, ptr %i.adh, align 4, !tbaa !88
  %i.adj = zext i16 %i.adi to i32                 ; 2 uses
  %i.adk = icmp slt i32 %.0562.lcssa, %i.adj
  br i1 %i.adk, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.adl = load ptr, ptr %i.ty, align 8, !tbaa !99
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.xb ; 2 uses
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !75
  %i.ado = sub nsw i32 %i.adj, %.0562.lcssa
  %i.adp = trunc i32 %i.ado to i8
  %i.adq = tail call noundef i8 @llvm.umax.i8(i8 %i.adn, i8 %i.adp)
  store i8 %i.adq, ptr %i.adm, align 1, !tbaa !75
  %.pre1210 = load ptr, ptr %i.tk, align 8, !tbaa !74
  %.phi.trans.insert1211 = getelementptr inbounds nuw i8, ptr %.pre1210, i64 %i.act
  %.pre1212 = load i8, ptr %.phi.trans.insert1211, align 1, !tbaa !75
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do
  %i.adr = phi i8 [ %i.ade, %bb.do ], [ %.pre1212, %bb.dq ], [ %i.ade, %bb.dp ]
  %.1554.3 = phi i8 [ %.2555.2, %bb.do ], [ %i.adf, %bb.dq ], [ %i.adf, %bb.dp ]
  %.not698.3 = icmp ne i8 %i.adr, 0
  %or.cond726.3.a = select i1 %.not698.3, i1 %.not697.3, i1 false
  %6 = and i1 %or.cond726.3.a, %.not1299.not.not
  %.1.3 = select i1 %6, i8 8, i8 0
  %spec.select1318 = or i8 %.3.2, %.1.3
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dl
  %.2555.3 = phi i8 [ %.2555.2, %bb.dl ], [ %.1554.3, %bb.dr ]
  %.3.3 = phi i8 [ %.3.2, %bb.dl ], [ %spec.select1318, %bb.dr ]
  %i.ads = shl nuw i8 %.2555.3, 4
  %i.adt = or i8 %i.ads, %.3.3
  %i.adu = load ptr, ptr %i.uc, align 8, !tbaa !101
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.xb
  store i8 %i.adt, ptr %i.adv, align 1, !tbaa !75
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.cp, %bb.co
  %indvars.iv.next1174 = add nuw nsw i64 %indvars.iv1173, 1 ; 2 uses
  %i.adw = icmp samesign ult i64 %indvars.iv.next1174, %i.xe
  br i1 %i.adw, label %bb.co, label %._crit_edge1041

bb.du:                                            ; preds = %._crit_edge1046.split
  store i32 0, ptr %i.vf, align 4, !tbaa !108
  store i32 0, ptr %i.ve, align 8, !tbaa !107
  br label %._crit_edge1046.split.thread

._crit_edge1046.split.thread:                     ; preds = %.preheader.lr.ph, %bb.du, %._crit_edge1046.split
  %i.adx = load i32, ptr %i.vg, align 8, !tbaa !109
  %i.ady = load i32, ptr %i.vh, align 4, !tbaa !110
  %i.adz = icmp sgt i32 %i.adx, %i.ady
  br i1 %i.adz, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %._crit_edge1046.split.thread
  store i32 0, ptr %i.vh, align 4, !tbaa !110
  store i32 0, ptr %i.vg, align 8, !tbaa !109
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %._crit_edge1046.split.thread
  %indvars.iv.next1187 = add nuw nsw i64 %indvars.iv1186, 1 ; 2 uses
  %i.aea = load i32, ptr %i.sv, align 8, !tbaa !96
  %i.aeb = sext i32 %i.aea to i64
  %.not692.not = icmp slt i64 %indvars.iv.next1187, %i.aeb
  br i1 %.not692.not, label %bb.by, label %.critedge730

.critedge730:                                     ; preds = %bb.dw, %bb.bx, %bb.cb, %bb.cd, %bb.bz, %bb.bw, %._crit_edge1026
  %.37 = phi i1 [ true, %._crit_edge1026 ], [ false, %bb.bw ], [ false, %bb.bz ], [ false, %bb.cd ], [ false, %bb.cb ], [ true, %bb.bx ], [ true, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.thread887

.thread887:                                       ; preds = %bb.bg, %bb.bt, %.critedge730
  %.39 = phi i1 [ false, %bb.bg ], [ %.37, %.critedge730 ], [ false, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.dx

bb.dx:                                            ; preds = %bb.ay, %.thread887, %bb.ac
  %.40 = phi i1 [ %.39, %.thread887 ], [ false, %bb.ay ], [ false, %bb.ac ]
  tail call void @_Z6rcFreePv(ptr noundef %i.ea) #6
  br label %bb.dy

bb.dy:                                            ; preds = %.critedge711, %bb.dx
  %.41 = phi i1 [ %.40, %bb.dx ], [ false, %.critedge711 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.e
  %.42 = phi i1 [ %.41, %bb.dy ], [ false, %bb.e ]
  tail call void @_Z6rcFreePv(ptr noundef %i.w) #6
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.c
  %.43 = phi i1 [ %.42, %bb.dz ], [ false, %bb.c ]
  tail call void @_Z6rcFreePv(ptr noundef %i.q) #6
  %i.aec = load i8, ptr %i.e, align 1, !tbaa !20, !range !21, !noundef !22
  %i.aed = trunc nuw i8 %i.aec to i1
  br i1 %i.aed, label %bb.eb, label %_ZN13rcScopedTimerD2Ev.exit

bb.eb:                                            ; preds = %bb.ea
  %i.aee = load ptr, ptr %0, align 8, !tbaa !24
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 48
  %i.aeg = load ptr, ptr %i.aef, align 8
  tail call void %i.aeg(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 25) #6, !call_target !111, !inline_history !17
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.ea, %bb.eb
  ret i1 %.43
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @_Z6rcFreePv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !25, line: 39, baseType: !31, size: 32, elements: !61, identifier: "_ZTS12rcTimerLabel")
!12 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !25, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!13 = distinct !{null, null}
!14 = distinct !{!14, !86}
!15 = distinct !{!15, !86}
!16 = distinct !{!16, !86}
!17 = distinct !{null, null}
!18 = !{!"bool", !7, i64 0}
!19 = !{!"_ZTS9rcContext", !18, i64 8, !18, i64 9}
!20 = !{!19, !18, i64 9}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!28 = !{null, !26, !27}
!29 = !DISubroutineType(types: !28)
!30 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !12, file: !25, line: 176, type: !29, scopeLine: 176, containingType: !12, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!37 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!38 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!39 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!40 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!41 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!42 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!43 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!44 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!45 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!46 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!47 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!48 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!49 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!50 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!51 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!52 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!53 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!54 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!55 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!56 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!57 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!58 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!59 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!60 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!61 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
end_hunk_0
