inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a

bb.eb:                                            ; preds = %.lr.ph386.i.us
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sw, i64 18
  %i.tm = load i8, ptr %i.tl, align 2, !tbaa !96
  %.not.i324.i.us = icmp eq i8 %i.tm, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.eb, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.tc, i8 noundef signext 32) #45
  %i.tn = load ptr, ptr %i.sw, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.td, ptr noundef %i.tn, i32 noundef %i.te)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.eb, %.lr.ph386.i.us
  %i.to = load ptr, ptr %i.sw, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.td, ptr noundef %i.to, i32 noundef %i.te)
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.tc, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.ea
  %i.tp = load i32, ptr %i.i, align 4, !tbaa !17
  %i.tq = load ptr, ptr %i.sw, align 8, !tbaa !95
  %i.tr = sext i32 %i.tp to i64
  %i.ts = getelementptr inbounds i8, ptr %i.tq, i64 %i.tr ; 2 uses
  store ptr %i.ts, ptr %i.sw, align 8, !tbaa !95
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !16
  %.not303.i.us = icmp eq i8 %i.tt, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257384.i.us, i32 1 ; 2 uses
  %i.tu = icmp slt i64 %.1274383.i.us, %i.se
  br i1 %i.tu, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.tv = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.tw = call i32 @sqlite3_str_length(ptr noundef %i.tv) #45 ; 3 uses
  %i.tx = call ptr @sqlite3_str_value(ptr noundef %i.tv) #45
  %i.ty = icmp sgt i32 %i.tw, 0
  br i1 %i.ty, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.ed, %bb.ee
  %.07.i.i.us = phi i32 [ %i.ue, %bb.ee ], [ %i.tw, %bb.ed ] ; 4 uses
  %i.tz = zext nneg i32 %.07.i.i.us to i64
  %i.ua = getelementptr i8, ptr %i.tx, i64 %i.tz
  %i.ub = getelementptr i8, ptr %i.ua, i64 -1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !16
  %i.ud = icmp eq i8 %i.uc, 32
  br i1 %i.ud, label %bb.ee, label %qrfRTrim.exit.i.us

bb.ee:                                            ; preds = %.lr.ph.i325.i.us
  %i.ue = add nsw i32 %.07.i.i.us, -1
  %i.uf = icmp sgt i32 %.07.i.i.us, 1
  br i1 %i.uf, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !97

qrfRTrim.exit.i.us:                               ; preds = %.lr.ph.i325.i.us, %bb.ee, %bb.ed
  %.0.lcssa.i.i.us = phi i32 [ %i.tw, %bb.ed ], [ 0, %bb.ee ], [ %.07.i.i.us, %.lr.ph.i325.i.us ]
  call void @sqlite3_str_truncate(ptr noundef %i.tv, i32 noundef %.0.lcssa.i.i.us) #45
  br label %bb.ef

bb.ef:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ec
  %i.ug = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ug, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #45
  br label %bb.eh

bb.eg:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.uh = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.uh, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #45
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
  %i.ui = add nuw nsw i64 %.1274383.i.us, 1       ; 2 uses
  %exitcond402.not.i.us = icmp eq i64 %i.ui, %i.sb
  br i1 %exitcond402.not.i.us, label %._crit_edge387.i.us, label %.lr.ph386.i.us, !llvm.loop !98

._crit_edge387.i.us:                              ; preds = %bb.eh
  %i.uj = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.uj, label %.critedge314.i, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge387.i.us
  %i.uk = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.ul = load i32, ptr %i.sf, align 8, !tbaa !46
  %i.um = icmp slt i32 %i.uk, %i.ul
  br i1 %i.um, label %.lr.ph386.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !99

.lr.ph386.i.us.unreachabledefault:                ; preds = %.lr.ph386.i.us
  unreachable

default.unreachable:                              ; preds = %bb.ek
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.ei
  %i.un = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.un, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #45
  br label %.lr.ph390.i

.preheader360.i.split:                            ; preds = %.preheader362.i
  %i.uo = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.uo, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #45
  br label %.critedge314.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.0273381.i = phi i64 [ %i.vg, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ] ; 4 uses
  %niter207 = phi i64 [ %niter207.next.1, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ]
  %i.up = add nsw i64 %.0273381.i, %.4393.i       ; 2 uses
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.up
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !66 ; 2 uses
  %i.us = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.0273381.i ; 2 uses
  %i.ut = icmp eq ptr %i.ur, null
  %spec.store.select359.i = select i1 %i.ut, ptr @.str.48, ptr %i.ur
  store ptr %spec.store.select359.i, ptr %i.us, align 8
  %i.uu = getelementptr inbounds i8, ptr %i.sn, i64 %i.up
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !16
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 18
  store i8 %i.uv, ptr %i.uw, align 2, !tbaa !96
  %i.ux = or disjoint i64 %.0273381.i, 1          ; 2 uses
  %i.uy = add nsw i64 %i.ux, %.4393.i             ; 2 uses
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.uy
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !66 ; 2 uses
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %i.ux ; 2 uses
  %i.vc = icmp eq ptr %i.va, null
  %spec.store.select359.i.1 = select i1 %i.vc, ptr @.str.48, ptr %i.va
  store ptr %spec.store.select359.i.1, ptr %i.vb, align 8
  %i.vd = getelementptr inbounds i8, ptr %i.sn, i64 %i.uy
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !16
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 18
  store i8 %i.ve, ptr %i.vf, align 2, !tbaa !96
  %i.vg = add nuw nsw i64 %.0273381.i, 2          ; 2 uses
  %niter207.next.1 = add i64 %niter207, 2         ; 2 uses
  %niter207.ncmp.1 = icmp eq i64 %niter207.next.1, %unroll_iter206
  br i1 %niter207.ncmp.1, label %.lr.ph386.i.preheader.us.preheader.unr-lcssa, label %.lr.ph382.i, !llvm.loop !100

.lr.ph386.i.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph382.i
  br i1 %lcmp.mod204.not, label %.lr.ph386.i.preheader.us.preheader, label %.lr.ph382.i.epil.preheader

.lr.ph382.i.epil.preheader:                       ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.preheader
  %.0273381.i.epil.init = phi i64 [ 0, %.lr.ph382.i.preheader ], [ %i.vg, %.lr.ph386.i.preheader.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod205)
  %i.vh = add nsw i64 %.0273381.i.epil.init, %.4393.i ; 2 uses
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.vh
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !66 ; 2 uses
  %i.vk = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.0273381.i.epil.init ; 2 uses
  %i.vl = icmp eq ptr %i.vj, null
  %spec.store.select359.i.epil = select i1 %i.vl, ptr @.str.48, ptr %i.vj
  store ptr %spec.store.select359.i.epil, ptr %i.vk, align 8
  %i.vm = getelementptr inbounds i8, ptr %i.sn, i64 %i.vh
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !16
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 18
  store i8 %i.vn, ptr %i.vo, align 2, !tbaa !96
  br label %.lr.ph386.i.preheader.us.preheader

.lr.ph386.i.preheader.us.preheader:               ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.epil.preheader
  br label %.lr.ph386.i.preheader.us

.lr.ph390.i:                                      ; preds = %bb.es, %.critedge10.i.split.us
  %.2275389.i = phi i64 [ %i.wx, %bb.es ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.2275389.i ; 8 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !95
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !16
  %i.vs = icmp eq i8 %i.vr, 0
  br i1 %i.vs, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph390.i
  %i.vt = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.vt, i32 noundef %i.vv, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

bb.ek:                                            ; preds = %.lr.ph390.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !86 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vx, i32 3) ; 4 uses
  store ptr @.str.178, ptr %i.vp, align 8, !tbaa !95
  %i.vy = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 7 uses
  %i.vz = sub nsw i32 %i.vx, %spec.select315.i    ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.wb = load i8, ptr %i.wa, align 8, !tbaa !79
  %i.wc = and i8 %i.wb, 3
  switch i8 %i.wc, label %default.unreachable [
    i8 0, label %bb.el
    i8 2, label %bb.em
    i8 3, label %.thread24.i327.i
    i8 1, label %.thread.i326.i
  ]

bb.el:                                            ; preds = %bb.ek
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vp, i64 18
  %i.we = load i8, ptr %i.wd, align 2, !tbaa !96
  %.not.i328.i = icmp eq i8 %i.we, 0
  br i1 %.not.i328.i, label %.thread.i326.i, label %.thread24.i327.i

bb.em:                                            ; preds = %bb.ek
  %i.wf = lshr i32 %i.vz, 1                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.vy, i32 noundef %i.wf, i8 noundef signext 32) #45
  %i.wg = load ptr, ptr %i.vp, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vy, ptr noundef %i.wg, i32 noundef %spec.select315.i)
  %i.wh = sub nuw nsw i32 %i.vz, %i.wf
  call void @sqlite3_str_appendchar(ptr noundef %i.vy, i32 noundef %i.wh, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.el, %bb.ek
  call void @sqlite3_str_appendchar(ptr noundef %i.vy, i32 noundef %i.vz, i8 noundef signext 32) #45
  %i.wi = load ptr, ptr %i.vp, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vy, ptr noundef %i.wi, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.el, %bb.ek
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vy, ptr noundef nonnull @.str.178, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vy, i32 noundef %i.vz, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.em, %bb.ej
  %i.wj = icmp slt i64 %.2275389.i, %i.se
  br i1 %i.wj, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wk = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wk, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #45
  br label %bb.es

bb.eo:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wl = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.wm = call i32 @sqlite3_str_length(ptr noundef %i.wl) #45 ; 3 uses
  %i.wn = call ptr @sqlite3_str_value(ptr noundef %i.wl) #45
  %i.wo = icmp sgt i32 %i.wm, 0
  br i1 %i.wo, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i

.lr.ph.i332.i:                                    ; preds = %bb.ep, %bb.eq
  %.07.i333.i = phi i32 [ %i.wu, %bb.eq ], [ %i.wm, %bb.ep ] ; 4 uses
  %i.wp = zext nneg i32 %.07.i333.i to i64
  %i.wq = getelementptr i8, ptr %i.wn, i64 %i.wp
  %i.wr = getelementptr i8, ptr %i.wq, i64 -1
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !16
  %i.wt = icmp eq i8 %i.ws, 32
  br i1 %i.wt, label %bb.eq, label %qrfRTrim.exit334.i

bb.eq:                                            ; preds = %.lr.ph.i332.i
  %i.wu = add nsw i32 %.07.i333.i, -1
  %i.wv = icmp sgt i32 %.07.i333.i, 1
  br i1 %i.wv, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !97

qrfRTrim.exit334.i:                               ; preds = %bb.eq, %.lr.ph.i332.i, %bb.ep
  %.0.lcssa.i331.i = phi i32 [ %i.wm, %bb.ep ], [ 0, %bb.eq ], [ %.07.i333.i, %.lr.ph.i332.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.wl, i32 noundef %.0.lcssa.i331.i) #45
  br label %bb.er

bb.er:                                            ; preds = %qrfRTrim.exit334.i, %bb.eo
  %i.ww = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ww, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #45
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.en
  %i.wx = add nuw nsw i64 %.2275389.i, 1          ; 2 uses
  %exitcond403.not.i = icmp eq i64 %i.wx, %i.sb
  br i1 %exitcond403.not.i, label %.critedge314.i, label %.lr.ph390.i, !llvm.loop !101

.critedge314.i:                                   ; preds = %._crit_edge387.i.us, %bb.es, %.preheader360.i.split
  %i.wy = icmp eq i64 %.4393.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.wy, i1 true, i1 %i.rq
  %i.wz = add nsw i64 %.4393.i, %i.sb             ; 2 uses
  %i.xa = icmp slt i64 %i.wz, %i.ry               ; 2 uses
  %or.cond453.i = select i1 %or.cond14.i, i1 %i.xa, i1 false
  br i1 %or.cond453.i, label %bb.et, label %.loopexit.i9

bb.et:                                            ; preds = %.critedge314.i
  %i.xb = load i8, ptr %i.er, align 2
  %i.xc = icmp eq i8 %i.xb, 2
  %or.cond53 = select i1 %i.wy, i1 %i.xc, i1 false ; 5 uses
  %brmerge.not = select i1 %or.cond53, i1 %i.sp, i1 false
  br i1 %brmerge.not, label %.lr.ph.i336.i, label %qrfLoadAlignment.exit.i

.lr.ph.i336.i:                                    ; preds = %bb.et
  %i.xd = load i8, ptr %i.sg, align 1, !tbaa !102 ; 2 uses
  %i.xe = load i32, ptr %i.sh, align 4, !tbaa !103
  %i.xf = sext i32 %i.xe to i64
  %i.xg = and i8 %i.xd, 12                        ; 2 uses
  %i.xh = or disjoint i8 %i.xg, 3
  %i.xi = load i32, ptr %i.si, align 8
  %i.xj = sext i32 %i.xi to i64
  %i.xk = load ptr, ptr %i.sj, align 8
  %i.xl = load ptr, ptr %i.sk, align 8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ez, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xx, %bb.ez ] ; 6 uses
  %i.xm = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.01.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 2 uses
  store i8 %i.xd, ptr %i.xn, align 8, !tbaa !79
  %i.xo = icmp slt i64 %.01.i.i, %i.xf
  br i1 %i.xo, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 %.01.i.i
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !16
  %i.xr = and i8 %i.xq, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xr, 0
  br i1 %.not.i338.i, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.xs = or disjoint i8 %i.xr, %i.xg
  br label %.sink.split.i.i

bb.ex:                                            ; preds = %bb.eu
  %i.xt = icmp slt i64 %.01.i.i, %i.xj
  br i1 %i.xt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.xk, i64 %.01.i.i
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !84
  %i.xw = icmp slt i16 %i.xv, 0
  br i1 %i.xw, label %.sink.split.i.i, label %bb.ez

.sink.split.i.i:                                  ; preds = %bb.ey, %bb.ew
  %.sink.i.i = phi i8 [ %i.xs, %bb.ew ], [ %i.xh, %bb.ey ]
  store i8 %.sink.i.i, ptr %i.xn, align 8, !tbaa !79
  br label %bb.ez

bb.ez:                                            ; preds = %.sink.split.i.i, %bb.ey, %bb.ex, %bb.ev
  %i.xx = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xx, %i.so
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.eu, !llvm.loop !104

qrfLoadAlignment.exit.i:                          ; preds = %bb.ez, %bb.et
  %i.xy = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.xy, label %.loopexit.i9 [
    i8 19, label %bb.fa
    i8 1, label %bb.fc
    i8 13, label %bb.fg
    i8 2, label %bb.fi
  ]

bb.fa:                                            ; preds = %qrfLoadAlignment.exit.i
  %or.cond18.i = select i1 %or.cond53, i1 true, i1 %i.rq
  br i1 %or.cond18.i, label %bb.fb, label %.loopexit.i9

bb.fb:                                            ; preds = %bb.fa
  %i.xz = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.xz, ptr noundef %3, i8 noundef signext 43)
  br label %.loopexit.i9

bb.fc:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.ya = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.ya, ptr noundef %3, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181, i32 noundef 1)
  br label %.loopexit.i9

bb.fe:                                            ; preds = %bb.fc
  br i1 %.not300.i, label %.loopexit.i9, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.yb = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfBoxSeparator(ptr noundef %i.yb, ptr noundef %3, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, i32 noundef 0)
  br label %.loopexit.i9

bb.fg:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %bb.fh, label %.loopexit.i9

bb.fh:                                            ; preds = %bb.fg
  %i.yc = load ptr, ptr %i.sa, align 8, !tbaa !38
  call fastcc void @qrfRowSeparator(ptr noundef %i.yc, ptr noundef %3, i8 noundef signext 124)
  br label %.loopexit.i9

bb.fi:                                            ; preds = %qrfLoadAlignment.exit.i
  br i1 %or.cond53, label %.preheader.i, label %bb.fn

.preheader.i:                                     ; preds = %bb.fi
  br i1 %i.sc, label %.lr.ph392.i, label %.loopexit.i9

.lr.ph392.i:                                      ; preds = %.preheader.i, %bb.fm
  %.3276391.i = phi i64 [ %i.yu, %bb.fm ], [ 0, %.preheader.i ] ; 3 uses
  %i.yd = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.ye = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.3276391.i
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.yd, i32 noundef %i.yg, i8 noundef signext 45) #45
  %i.yh = icmp slt i64 %.3276391.i, %i.se
  %i.yi = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 4 uses
  br i1 %i.yh, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.lr.ph392.i
  call void @sqlite3_str_append(ptr noundef %i.yi, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #45
  br label %bb.fm

bb.fk:                                            ; preds = %.lr.ph392.i
  %i.yj = call i32 @sqlite3_str_length(ptr noundef %i.yi) #45 ; 3 uses
  %i.yk = call ptr @sqlite3_str_value(ptr noundef %i.yi) #45
  %i.yl = icmp sgt i32 %i.yj, 0
  br i1 %i.yl, label %.lr.ph.i340.i, label %qrfRTrim.exit342.i

.lr.ph.i340.i:                                    ; preds = %bb.fk, %bb.fl
  %.07.i341.i = phi i32 [ %i.yr, %bb.fl ], [ %i.yj, %bb.fk ] ; 4 uses
  %i.ym = zext nneg i32 %.07.i341.i to i64
end_hunk_0
begin_hunk_1_@hash_step_vformat:bb.a
  %i.g = shl i32 %i.d, 3
  %i.h = add i32 %i.g, %i.f                       ; 2 uses
  store i32 %i.h, ptr %i.e, align 4, !tbaa !17
  %i.i = icmp ult i32 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i32 %i.d, 29
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = add i32 %i.k, %i.m
  store i32 %i.n, ptr %i.l, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = lshr i32 %i.f, 3
  %i.p = and i32 %i.o, 63                         ; 5 uses
  %i.q = add i32 %i.p, %i.d
  %i.r = icmp ugt i32 %i.q, 63
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = zext nneg i32 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = sub nuw nsw i32 64, %i.p                 ; 3 uses
  %i.w = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 %i.w, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.s)
  %i.x = xor i32 %i.p, 127
  %i.y = icmp ult i32 %i.x, %i.d
  br i1 %i.y, label %.lr.ph.i, label %hash_step.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.02627.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.v, %bb.d ] ; 3 uses
  %i.z = zext i32 %.02627.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.aa)
  %i.ab = add i32 %.02627.i, 64                   ; 2 uses
  %i.ac = add i32 %.02627.i, 127
  %i.ad = icmp ult i32 %i.ac, %i.d
  br i1 %i.ad, label %.lr.ph.i, label %hash_step.exit, !llvm.loop !166

bb.e:                                             ; preds = %bb.c
  %i.ae = zext nneg i32 %i.p to i64
  br label %hash_step.exit

hash_step.exit:                                   ; preds = %.lr.ph.i, %bb.d, %bb.e
  %.1.i = phi i32 [ 0, %bb.e ], [ %i.v, %bb.d ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.0.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ], [ 0, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0.i
  %i.ah = zext i32 %.1.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.aj = sub i32 %i.d, %.1.i
  %i.ak = zext i32 %i.aj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ai, i64 %i.ak, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

declare double @sqlite3_column_double(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_value_type(ptr noundef %1) #45 ; 3 uses
  %.not = icmp eq i32 %2, 0
  %i.b = icmp ne i32 %i.a, 2
  %i.c = icmp ne i32 %i.a, 4
  %or.cond.not = and i1 %i.b, %i.c
  %i.d = select i1 %.not, i1 true, i1 %or.cond.not
  %.027 = select i1 %i.d, i32 %i.a, i32 3
  switch i32 %.027, label %bb.i [
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = tail call ptr @sqlite3_value_text(ptr noundef %1) #45
  %i.f = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45
  %i.g = tail call fastcc ptr @decimalNewFromText(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = tail call double @sqlite3_value_double(ptr noundef %1) #45
  %i.j = tail call fastcc ptr @decimalFromDouble(double noundef %i.i)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45
  %.not32 = icmp eq i32 %i.k, 8
  br i1 %.not32, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 8 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.n, 16
  %i.s = shl nuw nsw i64 %i.q, 8
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.x, 16
  %i.ac = shl nuw nsw i64 %i.aa, 8
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ah, 16
  %i.am = shl nuw nsw i64 %i.ak, 8
  %i.an = or disjoint i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  %i.as = shl nuw i64 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av
  %i.ax = bitcast i64 %i.aw to double
  %i.ay = tail call fastcc ptr @decimalFromDouble(double noundef %i.ax)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %.not33 = icmp eq ptr %0, null
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @sqlite3_result_error_nomem(ptr noundef nonnull %0) #45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @sqlite3_free(ptr noundef null) #45
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d, %bb.e, %bb.h
  %.029 = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.ay, %bb.e ], [ null, %bb.d ]
  ret ptr %.029
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_result_sci(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !185
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !187
  %.not64 = icmp eq i8 %i.f, 0
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_result_null(ptr noundef %0) #45
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !180  ; 4 uses
  %i.i = icmp sgt i32 %i.h, %spec.store.select
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %.05765 = phi i32 [ %i.h, %.lr.ph ], [ %4, %bb.h ] ; 3 uses
  %3 = zext nneg i32 %.05765 to i64
  %i.l = getelementptr i8, ptr %i.k, i64 %3
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %4 = add nsw i32 %.05765, -1                    ; 2 uses
  %i.p = icmp sgt i32 %4, %spec.store.select
  br i1 %i.p, label %bb.g, label %.critedge, !llvm.loop !857

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.f
  %.057.lcssa = phi i32 [ %i.h, %bb.f ], [ %spec.store.select, %bb.h ], [ %.05765, %bb.g ] ; 5 uses
  %i.q = icmp sgt i32 %.057.lcssa, 0
  br i1 %i.q, label %.lr.ph69, label %.critedge2

.lr.ph69:                                         ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182
  %wide.trip.count = zext nneg i32 %.057.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph69, %bb.j
  %indvars.iv76.a = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next77.a, %bb.j ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv76.a
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %.critedge2.loopexit.split.loop.exit91

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next77.a = add nuw nsw i64 %indvars.iv76.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next77.a, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.i, !llvm.loop !858

.critedge2.loopexit.split.loop.exit91:            ; preds = %bb.i
  %i.w = trunc nuw nsw i64 %indvars.iv76.a to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %.critedge2.loopexit.split.loop.exit91, %.critedge
  %.058.lcssa = phi i32 [ 0, %.critedge ], [ %i.w, %.critedge2.loopexit.split.loop.exit91 ], [ %.057.lcssa, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !190
  %i.z = sub i32 %.057.lcssa, %i.h
  %i.aa = add nsw i32 %i.z, %i.y
  %i.ab = sub nsw i32 %.057.lcssa, %.058.lcssa    ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 20
  %i.ae = tail call ptr @sqlite3_malloc64(i64 noundef %i.ad) #45 ; 15 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge2
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.l:                                             ; preds = %.critedge2
  %i.ah = icmp eq i32 %i.ab, 0
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.a, align 1, !tbaa !16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !182
  %i.ak = zext nneg i32 %.058.lcssa to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = xor i32 %i.aa, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ 1, %bb.m ], [ %i.ab, %bb.n ]    ; 9 uses
  %.056 = phi i32 [ -1, %bb.m ], [ %i.am, %bb.n ]
  %.0 = phi ptr [ %i.a, %bb.m ], [ %i.al, %bb.n ] ; 9 uses
  %.095 = ptrtoaddr ptr %.0 to i64
  %i.an = load i8, ptr %1, align 8, !tbaa !188
  %i.ao = icmp ne i8 %i.an, 0
  %i.ap = icmp sgt i32 %.1, 0
  %or.cond = and i1 %i.ap, %i.ao
  %. = select i1 %or.cond, i8 45, i8 43
  store i8 %., ptr %i.ae, align 1, !tbaa !16
  %i.aq = load i8, ptr %.0, align 1, !tbaa !16
  %i.ar = add i8 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 46, ptr %i.at, align 1, !tbaa !16
  %i.au = icmp eq i32 %.1, 1
  br i1 %i.au, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.av = icmp sgt i32 %.1, 1
  br i1 %i.av, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count82 = zext nneg i32 %.1 to i64   ; 4 uses
  %i.aw = add nsw i64 %wide.trip.count82, -1      ; 5 uses
  %min.iters.check = icmp ult i32 %.1, 9
  br i1 %min.iters.check, label %.lr.ph74.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = sub i64 %i.af, %.095
  %i.ay = add i64 %i.ax, 1
  %diff.check = icmp ult i64 %i.ay, 31
  br i1 %diff.check, label %.lr.ph74.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check96 = icmp ult i32 %.1, 33
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %i.aw, 24
  %n.vec = and i64 %i.aw, -32                     ; 4 uses
  %i.ba = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = or disjoint i64 %index, 1               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !16
  %wide.load97 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !16
  %i.be = add <16 x i8> %wide.load, splat (i8 48)
  %i.bf = add <16 x i8> %wide.load97, splat (i8 48)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bb ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  store <16 x i8> %i.be, ptr %i.bh, align 1, !tbaa !16
  store <16 x i8> %i.bf, ptr %i.bi, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.preheader, label %vec.epilog.ph, !prof !860

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %i.aw, -8                    ; 3 uses
  %i.bk = or disjoint i64 %n.vec98, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %i.bl = or disjoint i64 %index99, 1             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bl
  %wide.load100 = load <8 x i8>, ptr %i.bm, align 1, !tbaa !16
  %i.bn = add <8 x i8> %wide.load100, splat (i8 48)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store <8 x i8> %i.bn, ptr %i.bp, align 1, !tbaa !16
  %index.next101 = add nuw i64 %index99, 8        ; 2 uses
  %i.bq = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !861

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.aw, %n.vec98
  br i1 %cmp.n102, label %._crit_edge, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv79.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ] ; 4 uses
  %i.br = sub nsw i64 %wide.trip.count82, %indvars.iv79.ph
  %xtraiter = and i64 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader, %.lr.ph74.prol
  %indvars.iv79.prol = phi i64 [ %indvars.iv.next80.prol, %.lr.ph74.prol ], [ %indvars.iv79.ph, %.lr.ph74.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = add i8 %i.bt, 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv79.prol
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.bu, ptr %i.bw, align 1, !tbaa !16
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !862

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %indvars.iv79.unr = phi i64 [ %indvars.iv79.ph, %.lr.ph74.preheader ], [ %indvars.iv.next80.prol, %.lr.ph74.prol ]
  %i.bx = sub nsw i64 %indvars.iv79.ph, %wide.trip.count82
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %._crit_edge, label %.lr.ph74

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 48, ptr %i.bz, align 1, !tbaa !16
  br label %bb.q

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph74 ], [ %indvars.iv79.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = add i8 %i.cb, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv79
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !16
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = add i8 %i.cg, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
end_hunk_1
