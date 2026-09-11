Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/world_snapshot?download=true
inline.NumInlined: 292
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@b2DeserializeIntoShell:bb.a
  %or.cond977 = icmp ugt i32 %.0.copyload.i706, 44739242
  br i1 %or.cond977, label %b2SnapCheckCount.exit710.thread, label %b2SnapCheckCount.exit710

b2SnapCheckCount.exit710:                         ; preds = %bb.bq
  %i.te = sext i32 %i.td to i64
  %i.tf = sub nsw i64 %i.sy, %i.te
  %narrow997 = mul nuw nsw i32 %.0.copyload.i706, 22
  %i.tg = zext nneg i32 %narrow997 to i64
  %.not998 = icmp slt i64 %i.tf, %i.tg
  br i1 %.not998, label %b2SnapCheckCount.exit710.thread, label %bb.br

b2SnapCheckCount.exit710.thread:                  ; preds = %bb.bq, %b2SnapCheckCount.exit710
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %.thread1359

bb.br:                                            ; preds = %b2SnapCheckCount.exit710
  %.not1488 = icmp eq i32 %.0.copyload.i706, 0
  br i1 %.not1488, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.th = mul nuw nsw i32 %.0.copyload.i706, 48
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = tail call ptr @b2GrowAlloc(ptr noundef null, i64 noundef 0, i64 noundef %i.ti) #7 ; 2 uses
  store ptr %i.tj, ptr %i.sn, align 8, !tbaa !113
  store i32 %.0.copyload.i706, ptr %i.sp, align 4, !tbaa !233
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.tk = phi ptr [ %i.tj, %bb.bs ], [ null, %bb.br ]
  store i32 %.0.copyload.i706, ptr %i.st, align 8, !tbaa !109
  %narrow1489 = mul nuw i32 %.0.copyload.i706, 48
  %i.tl = zext i32 %narrow1489 to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.tk, i8 0, i64 %i.tl, i1 false)
  br label %.thread1359

.thread1359:                                      ; preds = %b2SnapCheckCount.exit710.thread, %bb.bt
  %i.tm = icmp sgt i32 %.0.copyload.i706, 0
  br i1 %i.tm, label %.lr.ph1020.preheader, label %.critedge

.lr.ph1020.preheader:                             ; preds = %.thread1359
  %wide.trip.count1040 = zext nneg i32 %.0.copyload.i706 to i64
  br label %.lr.ph1020

.lr.ph1020:                                       ; preds = %.lr.ph1020.preheader, %b2SnapR_Bytes.exit764
  %indvars.iv1037 = phi i64 [ 0, %.lr.ph1020.preheader ], [ %indvars.iv.next1038, %b2SnapR_Bytes.exit764 ] ; 2 uses
  %i.tn = load i8, ptr %i.j, align 8, !tbaa !178, !range !68, !noundef !69
  %i.to = trunc nuw i8 %i.tn to i1
  br i1 %i.to, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %.lr.ph1020
  %i.tp = load ptr, ptr %i.sn, align 8, !tbaa !113
  %i.tq = getelementptr inbounds nuw [48 x i8], ptr %i.tp, i64 %indvars.iv1037 ; 14 uses
  %i.tr = load i32, ptr %i.b, align 8, !tbaa !176 ; 6 uses
  %i.ts = sext i32 %i.tr to i64                   ; 3 uses
  %i.tt = add nsw i64 %i.ts, 4
  %i.tu = load i32, ptr %i.f, align 4, !tbaa !177
  %i.tv = sext i32 %i.tu to i64                   ; 7 uses
  %.not1282 = icmp sgt i64 %i.tt, %i.tv
  br i1 %.not1282, label %b2SnapR_I32.exit717.thread, label %b2SnapR_I32.exit717

b2SnapR_I32.exit717.thread:                       ; preds = %bb.bu
  store i8 0, ptr %i.j, align 8, !tbaa !178
  store i32 0, ptr %i.tq, align 8, !tbaa !116
  br label %b2SnapR_I32.exit724.thread

b2SnapR_I32.exit717:                              ; preds = %bb.bu
  %i.tw = load ptr, ptr %0, align 8, !tbaa !175
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 %i.ts
  %.0.copyload.i715 = load i32, ptr %i.tx, align 1 ; 2 uses
  %i.ty = add nsw i32 %i.tr, 4                    ; 2 uses
  store i32 %i.ty, ptr %i.b, align 8, !tbaa !176
  %.pre1134 = sext i32 %i.ty to i64               ; 3 uses
  %.pre1136 = add nsw i64 %.pre1134, 4
  %i.tz = icmp sgt i64 %.pre1136, %i.tv
  store i32 %.0.copyload.i715, ptr %i.tq, align 8, !tbaa !116
  br i1 %i.tz, label %b2SnapR_I32.exit724.thread, label %b2SnapR_I32.exit724

b2SnapR_I32.exit724.thread:                       ; preds = %b2SnapR_I32.exit717, %b2SnapR_I32.exit717.thread
  %.pre-phi11351364 = phi i64 [ %i.ts, %b2SnapR_I32.exit717.thread ], [ %.pre1134, %b2SnapR_I32.exit717 ]
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store i32 0, ptr %i.ua, align 4, !tbaa !117
  br label %b2SnapR_I32.exit731.thread

b2SnapR_I32.exit724:                              ; preds = %b2SnapR_I32.exit717
  %i.ub = load ptr, ptr %0, align 8, !tbaa !175
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 %.pre1134
  %.0.copyload.i722 = load i32, ptr %i.uc, align 1
  %i.ud = add nsw i32 %i.tr, 8                    ; 2 uses
  store i32 %i.ud, ptr %i.b, align 8, !tbaa !176
  %.pre1138 = sext i32 %i.ud to i64               ; 3 uses
  %.pre1140 = add nsw i64 %.pre1138, 4
  %i.ue = icmp sgt i64 %.pre1140, %i.tv
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store i32 %.0.copyload.i722, ptr %i.uf, align 4, !tbaa !117
  br i1 %i.ue, label %b2SnapR_I32.exit731.thread, label %b2SnapR_I32.exit731

b2SnapR_I32.exit731.thread:                       ; preds = %b2SnapR_I32.exit724, %b2SnapR_I32.exit724.thread
  %.pre-phi11391369 = phi i64 [ %.pre-phi11351364, %b2SnapR_I32.exit724.thread ], [ %.pre1138, %b2SnapR_I32.exit724 ]
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i32 0, ptr %i.ug, align 8, !tbaa !118
  br label %b2SnapR_I32.exit738.thread

b2SnapR_I32.exit731:                              ; preds = %b2SnapR_I32.exit724
  %i.uh = load ptr, ptr %0, align 8, !tbaa !175
  %i.ui = getelementptr inbounds i8, ptr %i.uh, i64 %.pre1138
  %.0.copyload.i729 = load i32, ptr %i.ui, align 1
  %i.uj = add nsw i32 %i.tr, 12                   ; 2 uses
  store i32 %i.uj, ptr %i.b, align 8, !tbaa !176
  %.pre1142 = sext i32 %i.uj to i64               ; 3 uses
  %.pre1144 = add nsw i64 %.pre1142, 4
  %i.uk = icmp sgt i64 %.pre1144, %i.tv
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i32 %.0.copyload.i729, ptr %i.ul, align 8, !tbaa !118
  br i1 %i.uk, label %b2SnapR_I32.exit738.thread, label %b2SnapR_I32.exit738

b2SnapR_I32.exit738.thread:                       ; preds = %b2SnapR_I32.exit731, %b2SnapR_I32.exit731.thread
  %.pre-phi11431374 = phi i64 [ %.pre-phi11391369, %b2SnapR_I32.exit731.thread ], [ %.pre1142, %b2SnapR_I32.exit731 ]
  %i.um = getelementptr inbounds nuw i8, ptr %i.tq, i64 12
  store i32 0, ptr %i.um, align 4, !tbaa !119
  br label %b2SnapR_I32.exit745.thread

b2SnapR_I32.exit738:                              ; preds = %b2SnapR_I32.exit731
  %i.un = load ptr, ptr %0, align 8, !tbaa !175
  %i.uo = getelementptr inbounds i8, ptr %i.un, i64 %.pre1142
  %.0.copyload.i736 = load i32, ptr %i.uo, align 1 ; 3 uses
  %i.up = add nsw i32 %i.tr, 16                   ; 2 uses
  store i32 %i.up, ptr %i.b, align 8, !tbaa !176
  %.pre1146 = sext i32 %i.up to i64               ; 3 uses
  %.pre1148 = add nsw i64 %.pre1146, 4
  %i.uq = icmp sgt i64 %.pre1148, %i.tv
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tq, i64 12 ; 2 uses
  store i32 %.0.copyload.i736, ptr %i.ur, align 4, !tbaa !119
  br i1 %i.uq, label %b2SnapR_I32.exit745.thread, label %b2SnapR_I32.exit745

b2SnapR_I32.exit745:                              ; preds = %b2SnapR_I32.exit738
  %i.us = load ptr, ptr %0, align 8, !tbaa !175
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 %.pre1146
  %.0.copyload.i743 = load i32, ptr %i.ut, align 1 ; 3 uses
  %i.uu = add nsw i32 %i.tr, 20                   ; 2 uses
  store i32 %i.uu, ptr %i.b, align 8, !tbaa !176
  %.pre1150 = sext i32 %i.uu to i64               ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tq, i64 16 ; 3 uses
  store i32 %.0.copyload.i743, ptr %i.uv, align 8, !tbaa !120
  %i.uw = add nsw i64 %.pre1150, 2
  %i.ux = icmp sgt i64 %i.uw, %i.tv
  br i1 %i.ux, label %b2SnapRCheck.exit.thread.i749, label %b2SnapR_Bytes.exit750

b2SnapR_I32.exit745.thread:                       ; preds = %b2SnapR_I32.exit738, %b2SnapR_I32.exit738.thread
  %.pre-phi11471378 = phi i64 [ %.pre-phi11431374, %b2SnapR_I32.exit738.thread ], [ %.pre1146, %b2SnapR_I32.exit738 ]
  store i8 0, ptr %i.j, align 8, !tbaa !178
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store i32 0, ptr %i.uy, align 8, !tbaa !120
  %i.uz = add nsw i64 %.pre-phi11471378, 2
  %i.va = icmp sgt i64 %i.uz, %i.tv
  br i1 %i.va, label %b2SnapRCheck.exit.thread.i749, label %b2SnapR_Bytes.exit750.thread

b2SnapRCheck.exit.thread.i749:                    ; preds = %b2SnapR_I32.exit745.thread, %b2SnapR_I32.exit745
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %b2SnapR_Bytes.exit750.thread

b2SnapR_Bytes.exit750:                            ; preds = %b2SnapR_I32.exit745
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  %i.vc = load ptr, ptr %0, align 8, !tbaa !175
  %i.vd = getelementptr inbounds i8, ptr %i.vc, i64 %.pre1150
  %i.ve = load i16, ptr %i.vd, align 1
  store i16 %i.ve, ptr %i.vb, align 8
  %i.vf = load i32, ptr %i.b, align 8, !tbaa !176
  %i.vg = add nsw i32 %i.vf, 2                    ; 2 uses
  store i32 %i.vg, ptr %i.b, align 8, !tbaa !176
  %.pre1095 = load i8, ptr %i.j, align 8, !tbaa !178, !range !68
  %i.vh = trunc nuw i8 %.pre1095 to i1
  %.not = icmp ne i32 %.0.copyload.i715, -1
  %or.cond1478.not = select i1 %i.vh, i1 %.not, i1 false
  br i1 %or.cond1478.not, label %bb.bv, label %b2SnapR_Bytes.exit750.thread

bb.bv:                                            ; preds = %b2SnapR_Bytes.exit750
  %or.cond978.not = icmp ult i32 %.0.copyload.i736, 536870912
  br i1 %or.cond978.not, label %b2SnapCheckCount.exit752, label %.critedge.sink.split

b2SnapCheckCount.exit752:                         ; preds = %bb.bv
  %i.vi = load i32, ptr %i.f, align 4, !tbaa !177
  %i.vj = sext i32 %i.vi to i64
  %i.vk = sext i32 %i.vg to i64
  %i.vl = sub nsw i64 %i.vj, %i.vk                ; 2 uses
  %i.vm = shl nuw nsw i32 %.0.copyload.i736, 2
  %i.vn = zext nneg i32 %i.vm to i64              ; 2 uses
  %.not999 = icmp slt i64 %i.vl, %i.vn
  %or.cond979.not = icmp ugt i32 %.0.copyload.i743, 67108863
  %or.cond1479.not1490 = select i1 %.not999, i1 true, i1 %or.cond979.not
  %i.vo = shl nuw nsw i32 %.0.copyload.i743, 5
  %i.vp = zext nneg i32 %i.vo to i64
  %.not1000 = icmp samesign ult i64 %i.vl, %i.vp
  %or.cond1481 = select i1 %or.cond1479.not1490, i1 true, i1 %.not1000
  br i1 %or.cond1481, label %.critedge.sink.split, label %bb.bw

bb.bw:                                            ; preds = %b2SnapCheckCount.exit752
  %i.vq = tail call ptr @b2Alloc(i64 noundef %i.vn) #7 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  store ptr %i.vq, ptr %i.vr, align 8, !tbaa !121
  %i.vs = load i32, ptr %i.ur, align 4, !tbaa !119 ; 2 uses
  %i.vt = shl nsw i32 %i.vs, 2                    ; 2 uses
  %i.vu = icmp slt i32 %i.vs, 0
  br i1 %i.vu, label %b2SnapRCheck.exit.thread.i758, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vv = load i32, ptr %i.b, align 8, !tbaa !176
  %i.vw = sext i32 %i.vv to i64                   ; 2 uses
  %i.vx = zext nneg i32 %i.vt to i64              ; 2 uses
  %i.vy = add nsw i64 %i.vw, %i.vx
  %i.vz = load i32, ptr %i.f, align 4, !tbaa !177
  %i.wa = sext i32 %i.vz to i64
  %i.wb = icmp sgt i64 %i.vy, %i.wa
  br i1 %i.wb, label %b2SnapRCheck.exit.thread.i758, label %b2SnapRCheck.exit.i755

b2SnapRCheck.exit.thread.i758:                    ; preds = %bb.bx, %bb.bw
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %b2SnapR_Bytes.exit759

b2SnapRCheck.exit.i755:                           ; preds = %bb.bx
  %.pre.i757 = load i8, ptr %i.j, align 8, !tbaa !178, !range !68
  %i.wc = trunc nuw i8 %.pre.i757 to i1
  br i1 %i.wc, label %bb.by, label %b2SnapR_Bytes.exit759

bb.by:                                            ; preds = %b2SnapRCheck.exit.i755
  %i.wd = load ptr, ptr %0, align 8, !tbaa !175
  %i.we = getelementptr inbounds i8, ptr %i.wd, i64 %i.vw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vq, ptr align 1 %i.we, i64 %i.vx, i1 false)
  %i.wf = load i32, ptr %i.b, align 8, !tbaa !176
  %i.wg = add nsw i32 %i.wf, %i.vt
  store i32 %i.wg, ptr %i.b, align 8, !tbaa !176
  br label %b2SnapR_Bytes.exit759

b2SnapR_Bytes.exit759:                            ; preds = %b2SnapRCheck.exit.thread.i758, %b2SnapRCheck.exit.i755, %bb.by
  %i.wh = load i32, ptr %i.uv, align 8, !tbaa !120
  %i.wi = shl nsw i32 %i.wh, 5
  %i.wj = sext i32 %i.wi to i64
  %i.wk = tail call ptr @b2Alloc(i64 noundef %i.wj) #7 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  store ptr %i.wk, ptr %i.wl, align 8, !tbaa !122
  %i.wm = load i32, ptr %i.uv, align 8, !tbaa !120 ; 2 uses
  %i.wn = shl nsw i32 %i.wm, 5                    ; 2 uses
  %i.wo = icmp slt i32 %i.wm, 0
  br i1 %i.wo, label %b2SnapRCheck.exit.thread.i763, label %bb.bz

bb.bz:                                            ; preds = %b2SnapR_Bytes.exit759
  %i.wp = load i32, ptr %i.b, align 8, !tbaa !176
  %i.wq = sext i32 %i.wp to i64                   ; 2 uses
  %i.wr = zext nneg i32 %i.wn to i64              ; 2 uses
  %i.ws = add nsw i64 %i.wq, %i.wr
  %i.wt = load i32, ptr %i.f, align 4, !tbaa !177
  %i.wu = sext i32 %i.wt to i64
  %i.wv = icmp sgt i64 %i.ws, %i.wu
  br i1 %i.wv, label %b2SnapRCheck.exit.thread.i763, label %b2SnapRCheck.exit.i760

b2SnapRCheck.exit.thread.i763:                    ; preds = %bb.bz, %b2SnapR_Bytes.exit759
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %b2SnapR_Bytes.exit764

b2SnapRCheck.exit.i760:                           ; preds = %bb.bz
  %.pre.i762 = load i8, ptr %i.j, align 8, !tbaa !178, !range !68
  %i.ww = trunc nuw i8 %.pre.i762 to i1
  br i1 %i.ww, label %bb.ca, label %b2SnapR_Bytes.exit764

bb.ca:                                            ; preds = %b2SnapRCheck.exit.i760
  %i.wx = load ptr, ptr %0, align 8, !tbaa !175
  %i.wy = getelementptr inbounds i8, ptr %i.wx, i64 %i.wq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wk, ptr align 1 %i.wy, i64 %i.wr, i1 false)
  %i.wz = load i32, ptr %i.b, align 8, !tbaa !176
  %i.xa = add nsw i32 %i.wz, %i.wn
  store i32 %i.xa, ptr %i.b, align 8, !tbaa !176
  br label %b2SnapR_Bytes.exit764

b2SnapR_Bytes.exit750.thread:                     ; preds = %b2SnapR_I32.exit745.thread, %b2SnapRCheck.exit.thread.i749, %b2SnapR_Bytes.exit750
  %i.xb = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xb, i8 0, i64 16, i1 false)
  br label %b2SnapR_Bytes.exit764

b2SnapR_Bytes.exit764:                            ; preds = %bb.ca, %b2SnapRCheck.exit.i760, %b2SnapRCheck.exit.thread.i763, %b2SnapR_Bytes.exit750.thread
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1 ; 2 uses
  %exitcond1041.not = icmp eq i64 %indvars.iv.next1038, %wide.trip.count1040
  br i1 %exitcond1041.not, label %.critedge, label %.lr.ph1020, !llvm.loop !218

.critedge.sink.split:                             ; preds = %b2SnapCheckCount.exit752, %bb.bv, %b2SnapR_Bytes.exit701
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %.critedge

.critedge:                                        ; preds = %b2SnapR_Bytes.exit764, %.lr.ph1020, %.critedge.sink.split, %b2SnapRCheck.exit.i.i702, %.thread1359
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 4 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !124
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 2188 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !234
  %i.xg = sext i32 %i.xf to i64
  %i.xh = mul nsw i64 %i.xg, 56
  tail call void @b2Free(ptr noundef %i.xd, i64 noundef %i.xh) #7
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, i8 0, i64 16, i1 false)
  %i.xj = load i32, ptr %i.b, align 8, !tbaa !176 ; 2 uses
  %i.xk = sext i32 %i.xj to i64                   ; 2 uses
  %i.xl = add nsw i64 %i.xk, 4
  %i.xm = load i32, ptr %i.f, align 4, !tbaa !177
  %i.xn = sext i32 %i.xm to i64                   ; 2 uses
  %i.xo = icmp sgt i64 %i.xl, %i.xn
  br i1 %i.xo, label %b2SnapRCheck.exit.thread.i.i770, label %b2SnapRCheck.exit.i.i765

b2SnapRCheck.exit.thread.i.i770:                  ; preds = %.critedge
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %.critedge9

b2SnapRCheck.exit.i.i765:                         ; preds = %.critedge
  %.pre.i.i766 = load i8, ptr %i.j, align 8, !tbaa !178, !range !68
  %i.xp = trunc nuw i8 %.pre.i.i766 to i1
  br i1 %i.xp, label %bb.cb, label %.critedge9

bb.cb:                                            ; preds = %b2SnapRCheck.exit.i.i765
  %i.xq = load ptr, ptr %0, align 8, !tbaa !175
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 %i.xk
  %.0.copyload.i769 = load i32, ptr %i.xr, align 1 ; 9 uses
  %i.xs = add nsw i32 %i.xj, 4                    ; 2 uses
  store i32 %i.xs, ptr %i.b, align 8, !tbaa !176
  %or.cond980 = icmp ugt i32 %.0.copyload.i769, 38347922
  br i1 %or.cond980, label %b2SnapCheckCount.exit773.thread, label %b2SnapCheckCount.exit773

b2SnapCheckCount.exit773:                         ; preds = %bb.cb
  %i.xt = sext i32 %i.xs to i64
  %i.xu = sub nsw i64 %i.xn, %i.xt
  %i.xv = shl nuw nsw i32 %.0.copyload.i769, 4
  %i.xw = zext nneg i32 %i.xv to i64
  %.not1001 = icmp slt i64 %i.xu, %i.xw
  br i1 %.not1001, label %b2SnapCheckCount.exit773.thread, label %bb.cc

b2SnapCheckCount.exit773.thread:                  ; preds = %bb.cb, %b2SnapCheckCount.exit773
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %.thread1394

bb.cc:                                            ; preds = %b2SnapCheckCount.exit773
  %.not1491 = icmp eq i32 %.0.copyload.i769, 0
  br i1 %.not1491, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.xx = mul nuw nsw i32 %.0.copyload.i769, 56
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = tail call ptr @b2GrowAlloc(ptr noundef null, i64 noundef 0, i64 noundef %i.xy) #7 ; 2 uses
  store ptr %i.xz, ptr %i.xc, align 8, !tbaa !124
  store i32 %.0.copyload.i769, ptr %i.xe, align 4, !tbaa !234
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.ya = phi ptr [ %i.xz, %bb.cd ], [ null, %bb.cc ]
  store i32 %.0.copyload.i769, ptr %i.xi, align 8, !tbaa !112
  %narrow1492 = mul nuw i32 %.0.copyload.i769, 56
  %i.yb = zext i32 %narrow1492 to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ya, i8 0, i64 %i.yb, i1 false)
  br label %.thread1394

.thread1394:                                      ; preds = %b2SnapCheckCount.exit773.thread, %bb.ce
  %i.yc = icmp sgt i32 %.0.copyload.i769, 0
  br i1 %i.yc, label %.lr.ph1024.preheader, label %.critedge9

.lr.ph1024.preheader:                             ; preds = %.thread1394
  %wide.trip.count1045 = zext nneg i32 %.0.copyload.i769 to i64
  br label %.lr.ph1024

.lr.ph1024:                                       ; preds = %.lr.ph1024.preheader, %b2SnapR_Bytes.exit829
  %indvars.iv1042 = phi i64 [ 0, %.lr.ph1024.preheader ], [ %indvars.iv.next1043, %b2SnapR_Bytes.exit829 ] ; 2 uses
  %i.yd = load i8, ptr %i.j, align 8, !tbaa !178, !range !68, !noundef !69
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %bb.cf, label %.critedge9

.critedge9:                                       ; preds = %.lr.ph1024, %b2SnapR_Bytes.exit829, %b2SnapRCheck.exit.i.i765, %b2SnapRCheck.exit.thread.i.i770, %.thread1394
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 4 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !144
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 2092 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !235
  %i.yj = sext i32 %i.yi to i64
  %i.yk = shl nsw i64 %i.yj, 6
  tail call void @b2Free(ptr noundef %i.yg, i64 noundef %i.yk) #7
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 2088
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yf, i8 0, i64 16, i1 false)
  %i.ym = load i32, ptr %i.b, align 8, !tbaa !176 ; 2 uses
  %i.yn = sext i32 %i.ym to i64                   ; 2 uses
  %i.yo = add nsw i64 %i.yn, 4
  %i.yp = load i32, ptr %i.f, align 4, !tbaa !177
  %i.yq = sext i32 %i.yp to i64                   ; 2 uses
  %i.yr = icmp sgt i64 %i.yo, %i.yq
  br i1 %i.yr, label %b2SnapRCheck.exit.thread.i.i779, label %b2SnapRCheck.exit.i.i774

b2SnapRCheck.exit.thread.i.i779:                  ; preds = %.critedge9
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %.critedge17

b2SnapRCheck.exit.i.i774:                         ; preds = %.critedge9
  %.pre.i.i775 = load i8, ptr %i.j, align 8, !tbaa !178, !range !68
  %i.ys = trunc nuw i8 %.pre.i.i775 to i1
  br i1 %i.ys, label %bb.cz, label %.critedge17

bb.cf:                                            ; preds = %.lr.ph1024
  %i.yt = load ptr, ptr %i.xc, align 8, !tbaa !124
  %i.yu = getelementptr inbounds nuw [56 x i8], ptr %i.yt, i64 %indvars.iv1042 ; 11 uses
  %i.yv = load i32, ptr %i.b, align 8, !tbaa !176 ; 3 uses
  %i.yw = sext i32 %i.yv to i64                   ; 3 uses
  %i.yx = add nsw i64 %i.yw, 4
  %i.yy = load i32, ptr %i.f, align 4, !tbaa !177
  %i.yz = sext i32 %i.yy to i64                   ; 7 uses
  %.not1283 = icmp sgt i64 %i.yx, %i.yz           ; 2 uses
  br i1 %.not1283, label %b2SnapRCheck.exit.thread.i.i786, label %b2SnapRCheck.exit.i.i781

b2SnapRCheck.exit.thread.i.i786:                  ; preds = %bb.cf
  store i8 0, ptr %i.j, align 8, !tbaa !178
  br label %b2SnapR_I32.exit787

b2SnapRCheck.exit.i.i781:                         ; preds = %bb.cf
  %i.za = load ptr, ptr %0, align 8, !tbaa !175
  %i.zb = getelementptr inbounds i8, ptr %i.za, i64 %i.yw
  %.0.copyload.i785 = load i32, ptr %i.zb, align 1
  %i.zc = add nsw i32 %i.yv, 4                    ; 3 uses
  store i32 %i.zc, ptr %i.b, align 8, !tbaa !176
  %.pre1152 = sext i32 %i.zc to i64               ; 2 uses
  %.pre1154 = add nsw i64 %.pre1152, 4
  %i.zd = icmp sgt i64 %.pre1154, %i.yz
  br label %b2SnapR_I32.exit787

b2SnapR_I32.exit787:                              ; preds = %b2SnapRCheck.exit.thread.i.i786, %b2SnapRCheck.exit.i.i781
  %.pre-phi1155 = phi i1 [ true, %b2SnapRCheck.exit.thread.i.i786 ], [ %i.zd, %b2SnapRCheck.exit.i.i781 ]
  %.pre-phi1153 = phi i64 [ %i.yw, %b2SnapRCheck.exit.thread.i.i786 ], [ %.pre1152, %b2SnapRCheck.exit.i.i781 ]
  %i.ze = phi i32 [ %i.yv, %b2SnapRCheck.exit.thread.i.i786 ], [ %i.zc, %b2SnapRCheck.exit.i.i781 ] ; 3 uses
  %.0.i784 = phi i32 [ 0, %b2SnapRCheck.exit.thread.i.i786 ], [ %.0.copyload.i785, %b2SnapRCheck.exit.i.i781 ]
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yu, i64 48
  store i32 %.0.i784, ptr %i.zf, align 8, !tbaa !128
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yu, i64 8 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yu, i64 12
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yu, i64 16 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yu, i64 24 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yu, i64 28 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yu, i64 32 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yu, i64 40 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yu, i64 44 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yu, i8 0, i64 48, i1 false)
  br i1 %.pre-phi1155, label %b2SnapRCheck.exit.thread.i.i793, label %b2SnapRCheck.exit.i.i788

b2SnapRCheck.exit.thread.i.i793:                  ; preds = %b2SnapR_I32.exit787
  store i8 0, ptr %i.j, align 8, !tbaa !178
end_hunk_0
