Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcWriteVer?download=true
inline.NumInlined: 214
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Wlc_WriteVerInt:bb.a
  %i.rq = icmp eq i64 %indvars.iv1323, %i.rp
  %i.rr = zext i1 %i.rq to i32
  %i.rs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %i.rr) #16 ; 0 uses
  %i.rt = icmp samesign ugt i32 %.0707.in1226, 2
  br i1 %i.rt, label %.lr.ph1227, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph1227, %bb.bt
  %i.ru = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.pz) #16
  %i.rv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %i.ru) #16 ; 0 uses
  %i.rw = load i32, ptr %i.qc, align 4, !tbaa !29
  %i.rx = icmp ugt i32 %i.rw, 2
  br i1 %i.rx, label %Wlc_ObjHasArray.exit.thread.i.i1059, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge
  %i.ry = load i16, ptr %i.cd, align 8
  %i.rz = and i16 %i.ry, 63
  switch i16 %i.rz, label %Wlc_ObjFaninId.exit1060 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1059
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1059
  ]

Wlc_ObjHasArray.exit.thread.i.i1059:              ; preds = %bb.bu, %bb.bu, %._crit_edge
  %i.sa = load ptr, ptr %i.rl, align 8, !tbaa !26
  br label %Wlc_ObjFaninId.exit1060

Wlc_ObjFaninId.exit1060:                          ; preds = %bb.bu, %Wlc_ObjHasArray.exit.thread.i.i1059
  %i.sb = phi ptr [ %i.sa, %Wlc_ObjHasArray.exit.thread.i.i1059 ], [ %i.rl, %bb.bu ]
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv1323
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !27
  %i.se = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.sd) #16
  %i.sf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %i.se) #16 ; 0 uses
  %.val958.pre = load i32, ptr %i.qc, align 4, !tbaa !29
  br label %bb.bv

bb.bv:                                            ; preds = %Wlc_ObjFaninId.exit1058, %Wlc_ObjFaninId.exit1060
  %.val958 = phi i32 [ %.val9581363, %Wlc_ObjFaninId.exit1058 ], [ %.val958.pre, %Wlc_ObjFaninId.exit1060 ] ; 2 uses
  %indvars.iv.next1324 = add nuw nsw i64 %indvars.iv1323, 1 ; 2 uses
  %i.sg = sext i32 %.val958 to i64
  %i.sh = icmp slt i64 %indvars.iv.next1324, %i.sg
  br i1 %i.sh, label %Wlc_ObjFaninId.exit1058, label %.critedge10, !llvm.loop !55

.critedge10:                                      ; preds = %bb.bv, %Wlc_ObjFaninId.exit1056
  %fwrite845 = call i64 @fwrite(ptr nonnull @.str.52, i64 15, i64 1, ptr %0) ; 0 uses
  %fwrite846 = call i64 @fwrite(ptr nonnull @.str.59, i64 7, i64 1, ptr %0) ; 0 uses
  %i.si = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.pz) #16
  %i.sj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %i.si) #16 ; 0 uses
  %.val929 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val930 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.sk = sub nsw i32 %.val929, %.val930
  %i.sl = call i32 @llvm.abs.i32(i32 %i.sk, i1 true)
  %i.sm = add nuw nsw i32 %i.sl, 1
  %i.sn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %i.sm) #16 ; 0 uses
  %.val927 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val928 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.so = sub nsw i32 %.val927, %.val928
  %i.sp = call i32 @llvm.abs.i32(i32 %i.so, i1 true)
  %i.sq = add nuw nsw i32 %i.sp, 1
  br label %bb.bw

bb.bw:                                            ; preds = %.critedge10, %bb.bw
  %.1708.in1231 = phi i32 [ %i.sq, %.critedge10 ], [ %.1708, %bb.bw ] ; 2 uses
  %.1708 = add nsw i32 %.1708.in1231, -1
  %i.sr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef 0) #16 ; 0 uses
  %i.ss = icmp samesign ugt i32 %.1708.in1231, 1
  br i1 %i.ss, label %bb.bw, label %bb.bx, !llvm.loop !56

bb.bx:                                            ; preds = %bb.bw
  %fwrite847 = call i64 @fwrite(ptr nonnull @.str.60, i64 3, i64 1, ptr %0) ; 0 uses
  %fwrite848 = call i64 @fwrite(ptr nonnull @.str.50, i64 13, i64 1, ptr %0) ; 0 uses
  %fwrite849 = call i64 @fwrite(ptr nonnull @.str.54, i64 8, i64 1, ptr %0) ; 0 uses
  %fwrite850 = call i64 @fwrite(ptr nonnull @.str.48, i64 11, i64 1, ptr %0) ; 0 uses
  %fwrite851 = call i64 @fwrite(ptr nonnull @.str.55, i64 4, i64 1, ptr %0) ; 0 uses
  br label %.critedge

bb.by:                                            ; preds = %bb.ak
  %i.st = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 3 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !29
  %i.sv = icmp ugt i32 %i.su, 2
  %i.sw = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  br i1 %i.sv, label %Wlc_ObjHasArray.exit.thread.i.i.i1061, label %Wlc_ObjFanin0.exit

Wlc_ObjHasArray.exit.thread.i.i.i1061:            ; preds = %bb.by
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !26
  br label %Wlc_ObjFanin0.exit

Wlc_ObjFanin0.exit:                               ; preds = %bb.by, %Wlc_ObjHasArray.exit.thread.i.i.i1061
  %i.sy = phi ptr [ %i.sx, %Wlc_ObjHasArray.exit.thread.i.i.i1061 ], [ %i.sw, %bb.by ]
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !27
  %.val.i1063 = load ptr, ptr %i.bi, align 8, !tbaa !25
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [24 x i8], ptr %.val.i1063, i64 %i.ta ; 2 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 8
  %.val925 = load i32, ptr %i.tc, align 8, !tbaa !30 ; 2 uses
  %i.td = getelementptr i8, ptr %i.tb, i64 12
  %.val926 = load i32, ptr %i.td, align 4, !tbaa !31 ; 2 uses
  %i.te = sub i32 %.val925, %.val926
  %i.tf = call i32 @llvm.abs.i32(i32 %i.te, i1 false) ; 8 uses
  %i.tg = trunc nuw nsw i64 %indvars.iv1342 to i32 ; 4 uses
  %i.th = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.tg) #16
  %i.ti = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %i.th) #16 ; 0 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 4 uses
  %i.tk = shl nuw i32 1, %i.tf
  %exitcond1311.peel.not = icmp eq i32 %.val925, %.val926
  br label %bb.bz

bb.bz:                                            ; preds = %Wlc_ObjFanin0.exit, %.loopexit1315
  %.61217 = phi i32 [ 0, %Wlc_ObjFanin0.exit ], [ %i.ur, %.loopexit1315 ] ; 5 uses
  %fwrite833 = call i64 @fwrite(ptr nonnull @.str.43, i64 9, i64 1, ptr %0) ; 0 uses
  %fwrite834 = call i64 @fwrite(ptr nonnull @.str.61, i64 5, i64 1, ptr %0) ; 0 uses
  %i.tl = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.tg) #16
  %i.tm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef %i.tl) #16 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.ca
  %.21213 = phi i32 [ 0, %bb.bz ], [ %i.tr, %bb.ca ] ; 3 uses
  %i.tn = sub nuw nsw i32 %i.tf, %.21213
  %i.to = lshr i32 %.61217, %i.tn
  %i.tp = and i32 %i.to, 1
  %i.tq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %i.tp) #16 ; 0 uses
  %i.tr = add nuw i32 %.21213, 1
  %exitcond.not = icmp eq i32 %.21213, %i.tf
  br i1 %exitcond.not, label %.peel.begin1312, label %bb.ca, !llvm.loop !57

.peel.begin1312:                                  ; preds = %bb.ca
  %fwrite835 = call i64 @fwrite(ptr nonnull @.str.63, i64 3, i64 1, ptr %0) ; 0 uses
  %i.ts = and i32 %i.tk, %.61217
  %.not838.peel = icmp eq i32 %i.ts, 0
  %i.tt = select i1 %.not838.peel, ptr @.str.67, ptr @.str.66
  %i.tu = load i32, ptr %i.st, align 4, !tbaa !29
  %i.tv = icmp ugt i32 %i.tu, 2
  br i1 %i.tv, label %Wlc_ObjHasArray.exit.thread.i.i1064.peel, label %bb.cb

bb.cb:                                            ; preds = %.peel.begin1312
  %i.tw = load i16, ptr %i.cd, align 8
  %i.tx = and i16 %i.tw, 63
  switch i16 %i.tx, label %Wlc_ObjFaninId.exit1065.peel [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1064.peel
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1064.peel
  ]

Wlc_ObjHasArray.exit.thread.i.i1064.peel:         ; preds = %bb.cb, %bb.cb, %.peel.begin1312
  %i.ty = load ptr, ptr %i.tj, align 8, !tbaa !26
  br label %Wlc_ObjFaninId.exit1065.peel

Wlc_ObjFaninId.exit1065.peel:                     ; preds = %Wlc_ObjHasArray.exit.thread.i.i1064.peel, %bb.cb
  %i.tz = phi ptr [ %i.ty, %Wlc_ObjHasArray.exit.thread.i.i1064.peel ], [ %i.tj, %bb.cb ]
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !27
  %i.ub = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.ua) #16
  %i.uc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.tt, ptr noundef %i.ub, i32 noundef %i.tf) #16 ; 0 uses
  br i1 %exitcond1311.peel.not, label %.loopexit1315, label %.peel.next1313

.peel.next1313:                                   ; preds = %Wlc_ObjFaninId.exit1065.peel, %Wlc_ObjFaninId.exit1065
  %.31214 = phi i32 [ %i.uq, %Wlc_ObjFaninId.exit1065 ], [ 1, %Wlc_ObjFaninId.exit1065.peel ] ; 3 uses
  %i.ud = sub nuw nsw i32 %i.tf, %.31214          ; 2 uses
  %i.ue = shl nuw i32 1, %i.ud
  %i.uf = and i32 %i.ue, %.61217
  %.not838 = icmp eq i32 %i.uf, 0
  %i.ug = select i1 %.not838, ptr @.str.67, ptr @.str.66
  %i.uh = load i32, ptr %i.st, align 4, !tbaa !29
  %i.ui = icmp ugt i32 %i.uh, 2
  br i1 %i.ui, label %Wlc_ObjHasArray.exit.thread.i.i1064, label %bb.cc

bb.cc:                                            ; preds = %.peel.next1313
  %i.uj = load i16, ptr %i.cd, align 8
  %i.uk = and i16 %i.uj, 63
  switch i16 %i.uk, label %Wlc_ObjFaninId.exit1065 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1064
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1064
  ]

Wlc_ObjHasArray.exit.thread.i.i1064:              ; preds = %bb.cc, %bb.cc, %.peel.next1313
  %i.ul = load ptr, ptr %i.tj, align 8, !tbaa !26
  br label %Wlc_ObjFaninId.exit1065

Wlc_ObjFaninId.exit1065:                          ; preds = %bb.cc, %Wlc_ObjHasArray.exit.thread.i.i1064
  %i.um = phi ptr [ %i.ul, %Wlc_ObjHasArray.exit.thread.i.i1064 ], [ %i.tj, %bb.cc ]
  %i.un = load i32, ptr %i.um, align 4, !tbaa !27
  %i.uo = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.un) #16
  %i.up = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.ug, ptr noundef %i.uo, i32 noundef %i.ud) #16 ; 0 uses
  %i.uq = add nuw i32 %.31214, 1
  %exitcond1311.not = icmp eq i32 %.31214, %i.tf
  br i1 %exitcond1311.not, label %.loopexit1315, label %.peel.next1313, !llvm.loop !58

.loopexit1315:                                    ; preds = %Wlc_ObjFaninId.exit1065, %Wlc_ObjFaninId.exit1065.peel
  %fwrite836 = call i64 @fwrite(ptr nonnull @.str.60, i64 3, i64 1, ptr %0) ; 0 uses
  %i.ur = add nuw nsw i32 %.61217, 1
  %.val923 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val924 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.us = sub nsw i32 %.val923, %.val924
  %i.ut = call i32 @llvm.abs.i32(i32 %i.us, i1 true)
  %.not1182.not = icmp samesign ult i32 %.61217, %i.ut
  br i1 %.not1182.not, label %bb.bz, label %bb.cd, !llvm.loop !59

bb.cd:                                            ; preds = %.loopexit1315
  %fwrite831 = call i64 @fwrite(ptr nonnull @.str.43, i64 9, i64 1, ptr %0) ; 0 uses
  %i.uu = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.tg) #16
  %i.uv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef %i.uu) #16 ; 0 uses
  %.val921 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val922 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.uw = sub nsw i32 %.val921, %.val922
  %i.ux = call i32 @llvm.abs.i32(i32 %i.uw, i1 true) ; 2 uses
  %3 = add nuw nsw i32 %i.ux, 1
  br label %bb.ce

.loopexit1191:                                    ; preds = %bb.cf
  %.7 = add nsw i32 %.71220, -1
  %i.uy = icmp sgt i32 %.71220, 0
  br i1 %i.uy, label %bb.ce, label %bb.cg, !llvm.loop !60

bb.ce:                                            ; preds = %bb.cd, %.loopexit1191
  %.71220 = phi i32 [ %i.ux, %bb.cd ], [ %.7, %.loopexit1191 ] ; 4 uses
  %.7.in1219 = phi i32 [ %3, %bb.cd ], [ %.71220, %.loopexit1191 ]
  %.val919 = load i32, ptr %i.ce, align 8, !tbaa !30
  %.val920 = load i32, ptr %i.cl, align 4, !tbaa !31
  %i.uz = sub nsw i32 %.val919, %.val920
  %i.va = call i32 @llvm.abs.i32(i32 %i.uz, i1 true)
  %.not1183 = icmp samesign ugt i32 %.7.in1219, %i.va
  %i.vb = select i1 %.not1183, ptr @.str.14, ptr @.str.70
  %i.vc = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.tg) #16
  %i.vd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.vb, ptr noundef %i.vc) #16 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cf
  %.41218 = phi i32 [ 0, %bb.ce ], [ %i.vi, %bb.cf ] ; 3 uses
  %i.ve = sub nuw nsw i32 %i.tf, %.41218
  %i.vf = lshr i32 %.71220, %i.ve
  %i.vg = and i32 %i.vf, 1
  %i.vh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %i.vg) #16 ; 0 uses
  %i.vi = add nuw i32 %.41218, 1
  %exitcond1316.not = icmp eq i32 %.41218, %i.tf
  br i1 %exitcond1316.not, label %.loopexit1191, label %bb.cf, !llvm.loop !61

bb.cg:                                            ; preds = %.loopexit1191
  %fwrite832 = call i64 @fwrite(ptr nonnull @.str.71, i64 5, i64 1, ptr %0) ; 0 uses
  br label %.critedge

bb.ch:                                            ; preds = %bb.ak
  %i.vj = trunc nuw nsw i64 %indvars.iv1342 to i32 ; 2 uses
  %i.vk = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.vj) #16
  %i.vl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %i.vk) #16 ; 0 uses
  %fwrite829 = call i64 @fwrite(ptr nonnull @.str.43, i64 9, i64 1, ptr %0) ; 0 uses
  %fwrite830 = call i64 @fwrite(ptr nonnull @.str.72, i64 7, i64 1, ptr %0) ; 0 uses
  %i.vm = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.vj) #16
  %i.vn = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 7 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !29
  %i.vp = icmp ugt i32 %i.vo, 2
  br i1 %i.vp, label %Wlc_ObjHasArray.exit.thread.i.i1066, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vq = load i16, ptr %i.cd, align 8
  %i.vr = and i16 %i.vq, 63
  switch i16 %i.vr, label %bb.cj [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1066
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1066
  ]

Wlc_ObjHasArray.exit.thread.i.i1066:              ; preds = %bb.ci, %bb.ci, %bb.ch
  %i.vs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !26
  br label %Wlc_ObjFaninId0.exit1067

bb.cj:                                            ; preds = %bb.ci
  %i.vu = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId0.exit1067

Wlc_ObjFaninId0.exit1067:                         ; preds = %Wlc_ObjHasArray.exit.thread.i.i1066, %bb.cj
  %i.vv = phi ptr [ %i.vt, %Wlc_ObjHasArray.exit.thread.i.i1066 ], [ %i.vu, %bb.cj ]
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !27
  %i.vx = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.vw) #16
  %i.vy = load i32, ptr %i.vn, align 4, !tbaa !29
  %i.vz = icmp ugt i32 %i.vy, 2
  br i1 %i.vz, label %Wlc_ObjHasArray.exit.thread.i.i1068, label %bb.ck

bb.ck:                                            ; preds = %Wlc_ObjFaninId0.exit1067
  %i.wa = load i16, ptr %i.cd, align 8
  %i.wb = and i16 %i.wa, 63
  switch i16 %i.wb, label %bb.cl [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1068
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1068
  ]

Wlc_ObjHasArray.exit.thread.i.i1068:              ; preds = %bb.ck, %bb.ck, %Wlc_ObjFaninId0.exit1067
  %i.wc = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !26
  br label %Wlc_ObjFaninId2.exit

bb.cl:                                            ; preds = %bb.ck
  %i.we = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId2.exit

Wlc_ObjFaninId2.exit:                             ; preds = %Wlc_ObjHasArray.exit.thread.i.i1068, %bb.cl
  %i.wf = phi ptr [ %i.wd, %Wlc_ObjHasArray.exit.thread.i.i1068 ], [ %i.we, %bb.cl ]
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !27
  %i.wi = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.wh) #16
  %i.wj = load i32, ptr %i.vn, align 4, !tbaa !29
  %i.wk = icmp ugt i32 %i.wj, 2
  br i1 %i.wk, label %Wlc_ObjHasArray.exit.thread.i.i1069, label %bb.cm

bb.cm:                                            ; preds = %Wlc_ObjFaninId2.exit
  %i.wl = load i16, ptr %i.cd, align 8
  %i.wm = and i16 %i.wl, 63
  switch i16 %i.wm, label %bb.cn [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1069
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1069
  ]

Wlc_ObjHasArray.exit.thread.i.i1069:              ; preds = %bb.cm, %bb.cm, %Wlc_ObjFaninId2.exit
  %i.wn = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !26
  br label %Wlc_ObjFaninId.exit1070

bb.cn:                                            ; preds = %bb.cm
  %i.wp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId.exit1070

Wlc_ObjFaninId.exit1070:                          ; preds = %Wlc_ObjHasArray.exit.thread.i.i1069, %bb.cn
  %i.wq = phi ptr [ %i.wo, %Wlc_ObjHasArray.exit.thread.i.i1069 ], [ %i.wp, %bb.cn ]
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 12
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !27
  %i.wt = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.ws) #16
  %i.wu = load i32, ptr %i.vn, align 4, !tbaa !29
  %i.wv = icmp ugt i32 %i.wu, 2
  br i1 %i.wv, label %Wlc_ObjHasArray.exit.thread.i.i1071, label %bb.co

bb.co:                                            ; preds = %Wlc_ObjFaninId.exit1070
  %i.ww = load i16, ptr %i.cd, align 8
  %i.wx = and i16 %i.ww, 63
  switch i16 %i.wx, label %bb.cp [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1071
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1071
  ]

Wlc_ObjHasArray.exit.thread.i.i1071:              ; preds = %bb.co, %bb.co, %Wlc_ObjFaninId.exit1070
  %i.wy = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !26
  br label %Wlc_ObjFaninId1.exit

bb.cp:                                            ; preds = %bb.co
  %i.xa = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId1.exit

Wlc_ObjFaninId1.exit:                             ; preds = %Wlc_ObjHasArray.exit.thread.i.i1071, %bb.cp
  %i.xb = phi ptr [ %i.wz, %Wlc_ObjHasArray.exit.thread.i.i1071 ], [ %i.xa, %bb.cp ]
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !27
  %i.xe = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.xd) #16
  %i.xf = load i32, ptr %i.vn, align 4, !tbaa !29
  %i.xg = icmp ugt i32 %i.xf, 2
  br i1 %i.xg, label %Wlc_ObjHasArray.exit.thread.i.i1072, label %bb.cq

bb.cq:                                            ; preds = %Wlc_ObjFaninId1.exit
  %i.xh = load i16, ptr %i.cd, align 8
  %i.xi = and i16 %i.xh, 63
  switch i16 %i.xi, label %bb.cr [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1072
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1072
  ]

Wlc_ObjHasArray.exit.thread.i.i1072:              ; preds = %bb.cq, %bb.cq, %Wlc_ObjFaninId1.exit
  %i.xj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !26
  br label %Wlc_ObjFaninId2.exit1073

bb.cr:                                            ; preds = %bb.cq
  %i.xl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId2.exit1073

Wlc_ObjFaninId2.exit1073:                         ; preds = %Wlc_ObjHasArray.exit.thread.i.i1072, %bb.cr
  %i.xm = phi ptr [ %i.xk, %Wlc_ObjHasArray.exit.thread.i.i1072 ], [ %i.xl, %bb.cr ]
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !27
  %i.xp = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.xo) #16
  %i.xq = load i32, ptr %i.vn, align 4, !tbaa !29
  %i.xr = icmp ugt i32 %i.xq, 2
  br i1 %i.xr, label %Wlc_ObjHasArray.exit.thread.i.i1074, label %bb.cs

bb.cs:                                            ; preds = %Wlc_ObjFaninId2.exit1073
  %i.xs = load i16, ptr %i.cd, align 8
  %i.xt = and i16 %i.xs, 63
  switch i16 %i.xt, label %bb.ct [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1074
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1074
  ]

Wlc_ObjHasArray.exit.thread.i.i1074:              ; preds = %bb.cs, %bb.cs, %Wlc_ObjFaninId2.exit1073
  %i.xu = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !26
  br label %Wlc_ObjFaninId.exit1075

bb.ct:                                            ; preds = %bb.cs
  %i.xw = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %Wlc_ObjFaninId.exit1075

Wlc_ObjFaninId.exit1075:                          ; preds = %Wlc_ObjHasArray.exit.thread.i.i1074, %bb.ct
  %i.xx = phi ptr [ %i.xv, %Wlc_ObjHasArray.exit.thread.i.i1074 ], [ %i.xw, %bb.ct ]
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 12
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !27
  %i.ya = call ptr @Wlc_ObjName(ptr noundef nonnull %1, i32 noundef %i.xz) #16
  %i.yb = load i32, ptr %i.vn, align 4, !tbaa !29
  %i.yc = icmp ugt i32 %i.yb, 2
  br i1 %i.yc, label %Wlc_ObjHasArray.exit.thread.i.i1076, label %bb.cu

bb.cu:                                            ; preds = %Wlc_ObjFaninId.exit1075
  %i.yd = load i16, ptr %i.cd, align 8
  %i.ye = and i16 %i.yd, 63
  switch i16 %i.ye, label %bb.cv [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i1076
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i1076
  ]

Wlc_ObjHasArray.exit.thread.i.i1076:              ; preds = %bb.cu, %bb.cu, %Wlc_ObjFaninId.exit1075
  %i.yf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !26
  br label %Wlc_ObjFaninId1.exit1077

bb.cv:                                            ; preds = %bb.cu
  %i.yh = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
end_hunk_0
