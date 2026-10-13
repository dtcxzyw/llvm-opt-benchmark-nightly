Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/liveness?download=true
inline.NumInlined: 606
inline.NumDeleted: 55
begin_hunk_0_@LivenessToSafetyTransformationWithLTL:bb.a
  %i.tc = getelementptr inbounds [8 x i8], ptr %.val424, i64 %i.tb
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !14
  %i.te = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.cr) #16 ; 3 uses
  %i.tf = load ptr, ptr @vecLos, align 8, !tbaa !51 ; 6 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 4 ; 3 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !12 ; 7 uses
  %i.ti = load i32, ptr %i.tf, align 8, !tbaa !50
  %i.tj = icmp eq i32 %i.th, %i.ti
  br i1 %i.tj, label %bb.dw, label %Vec_PtrPush.exit571

bb.dw:                                            ; preds = %bb.dv
  %i.tk = icmp slt i32 %i.th, 16
  br i1 %i.tk, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tf, i64 8 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i569 = icmp eq ptr %i.tm, null
  br i1 %.not9.i.i569, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.tn = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.tm, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit.i570

bb.dz:                                            ; preds = %bb.dx
  %i.to = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i570

Vec_PtrGrow.exit.i570:                            ; preds = %bb.dz, %bb.dy
  %i.tp = phi ptr [ %i.tn, %bb.dy ], [ %i.to, %bb.dz ]
  store ptr %i.tp, ptr %i.tl, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i567

bb.ea:                                            ; preds = %bb.dw
  %i.tq = icmp samesign ult i32 %i.th, 1073741823
  %i.tr = shl nuw nsw i32 %i.th, 1
  %spec.select.i564 = select i1 %i.tq, i32 %i.tr, i32 2147483647 ; 3 uses
  %.not.i10.i565 = icmp samesign ult i32 %i.th, %spec.select.i564
  br i1 %.not.i10.i565, label %bb.eb, label %Vec_PtrPush.exit571

bb.eb:                                            ; preds = %bb.ea
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tf, i64 8 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !13 ; 2 uses
  %.not9.i11.i566 = icmp eq ptr %i.tt, null
  %i.tu = zext nneg i32 %spec.select.i564 to i64
  %i.tv = shl nuw nsw i64 %i.tu, 3                ; 2 uses
  br i1 %.not9.i11.i566, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.tw = tail call ptr @realloc(ptr noundef nonnull %i.tt, i64 noundef %i.tv) #19
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.tx = tail call noalias ptr @malloc(i64 noundef %i.tv) #17
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.ty = phi ptr [ %i.tw, %bb.ec ], [ %i.tx, %bb.ed ]
  store ptr %i.ty, ptr %i.ts, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i567

Vec_PtrGrow.exit12.sink.split.i567:               ; preds = %bb.ee, %Vec_PtrGrow.exit.i570
  %spec.select.sink.i568 = phi i32 [ %spec.select.i564, %bb.ee ], [ 16, %Vec_PtrGrow.exit.i570 ]
  store i32 %spec.select.sink.i568, ptr %i.tf, align 8, !tbaa !50
  %.pre766 = load i32, ptr %i.tg, align 4, !tbaa !12
  br label %Vec_PtrPush.exit571

Vec_PtrPush.exit571:                              ; preds = %bb.dv, %bb.ea, %Vec_PtrGrow.exit12.sink.split.i567
  %i.tz = phi i32 [ %i.th, %bb.dv ], [ %i.th, %bb.ea ], [ %.pre766, %Vec_PtrGrow.exit12.sink.split.i567 ] ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !13
  %i.uc = add nsw i32 %i.tz, 1
  store i32 %i.uc, ptr %i.tg, align 4, !tbaa !12
  %i.ud = sext i32 %i.tz to i64
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.ud
  store ptr %i.te, ptr %i.ue, align 8, !tbaa !14
  %.val458 = load ptr, ptr %i.sw, align 8, !tbaa !44
  %i.uf = getelementptr i8, ptr %.val458, i64 4
  %.val458.val = load i32, ptr %i.uf, align 4, !tbaa !12
  %i.ug = add nsw i32 %.val458.val, %.9685
  %.val446 = load ptr, ptr %i.sx, align 8, !tbaa !46
  %i.uh = getelementptr i8, ptr %.val446, i64 8
  %.val446.val = load ptr, ptr %i.uh, align 8, !tbaa !13
  %i.ui = sext i32 %i.ug to i64
  %i.uj = getelementptr inbounds [8 x i8], ptr %.val446.val, i64 %i.ui
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !14
  %i.ul = tail call ptr @Abc_ObjName(ptr noundef %i.uk) #16
  %i.um = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ul) #18
  %i.un = add i64 %i.um, 10
  %i.uo = tail call noalias ptr @malloc(i64 noundef %i.un) #17 ; 2 uses
  %.val457 = load ptr, ptr %i.sw, align 8, !tbaa !44
  %i.up = getelementptr i8, ptr %.val457, i64 4
  %.val457.val = load i32, ptr %i.up, align 4, !tbaa !12
  %i.uq = add nsw i32 %.val457.val, %.9685
  %.val445 = load ptr, ptr %i.sx, align 8, !tbaa !46
  %i.ur = getelementptr i8, ptr %.val445, i64 8
  %.val445.val = load ptr, ptr %i.ur, align 8, !tbaa !13
  %i.us = sext i32 %i.uq to i64
  %i.ut = getelementptr inbounds [8 x i8], ptr %.val445.val, i64 %i.us
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !14
  %i.uv = tail call ptr @Abc_ObjName(ptr noundef %i.uu) #16
  %i.uw = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.uo, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.uv, ptr noundef nonnull @.str.4) #16 ; 0 uses
  %i.ux = load ptr, ptr @vecLoNames, align 8, !tbaa !51 ; 6 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 4 ; 3 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !12 ; 7 uses
  %i.va = load i32, ptr %i.ux, align 8, !tbaa !50
  %i.vb = icmp eq i32 %i.uz, %i.va
  br i1 %i.vb, label %bb.ef, label %Vec_PtrPush.exit579

bb.ef:                                            ; preds = %Vec_PtrPush.exit571
  %i.vc = icmp slt i32 %i.uz, 16
  br i1 %i.vc, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i577 = icmp eq ptr %i.ve, null
  br i1 %.not9.i.i577, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.vf = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ve, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit.i578

bb.ei:                                            ; preds = %bb.eg
  %i.vg = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i578

Vec_PtrGrow.exit.i578:                            ; preds = %bb.ei, %bb.eh
  %i.vh = phi ptr [ %i.vf, %bb.eh ], [ %i.vg, %bb.ei ]
  store ptr %i.vh, ptr %i.vd, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i575

bb.ej:                                            ; preds = %bb.ef
  %i.vi = icmp samesign ult i32 %i.uz, 1073741823
  %i.vj = shl nuw nsw i32 %i.uz, 1
  %spec.select.i572 = select i1 %i.vi, i32 %i.vj, i32 2147483647 ; 3 uses
  %.not.i10.i573 = icmp samesign ult i32 %i.uz, %spec.select.i572
  br i1 %.not.i10.i573, label %bb.ek, label %Vec_PtrPush.exit579

bb.ek:                                            ; preds = %bb.ej
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !13 ; 2 uses
  %.not9.i11.i574 = icmp eq ptr %i.vl, null
  %i.vm = zext nneg i32 %spec.select.i572 to i64
  %i.vn = shl nuw nsw i64 %i.vm, 3                ; 2 uses
  br i1 %.not9.i11.i574, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.vo = tail call ptr @realloc(ptr noundef nonnull %i.vl, i64 noundef %i.vn) #19
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.vp = tail call noalias ptr @malloc(i64 noundef %i.vn) #17
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.vq = phi ptr [ %i.vo, %bb.el ], [ %i.vp, %bb.em ]
  store ptr %i.vq, ptr %i.vk, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i575

Vec_PtrGrow.exit12.sink.split.i575:               ; preds = %bb.en, %Vec_PtrGrow.exit.i578
  %spec.select.sink.i576 = phi i32 [ %spec.select.i572, %bb.en ], [ 16, %Vec_PtrGrow.exit.i578 ]
  store i32 %spec.select.sink.i576, ptr %i.ux, align 8, !tbaa !50
  %.pre767 = load i32, ptr %i.uy, align 4, !tbaa !12
  br label %Vec_PtrPush.exit579

Vec_PtrPush.exit579:                              ; preds = %Vec_PtrPush.exit571, %bb.ej, %Vec_PtrGrow.exit12.sink.split.i575
  %i.vr = phi i32 [ %i.uz, %Vec_PtrPush.exit571 ], [ %i.uz, %bb.ej ], [ %.pre767, %Vec_PtrGrow.exit12.sink.split.i575 ] ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !13
  %i.vu = add nsw i32 %i.vr, 1
  store i32 %i.vu, ptr %i.uy, align 4, !tbaa !12
  %i.vv = sext i32 %i.vr to i64
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %i.vv
  store ptr %i.uo, ptr %i.vw, align 8, !tbaa !14
  %i.vx = getelementptr inbounds nuw i8, ptr %i.td, i64 40 ; 2 uses
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !47
  %i.vz = tail call ptr @Aig_Mux(ptr noundef nonnull %i.cr, ptr noundef %.0363, ptr noundef %i.vy, ptr noundef %i.te) #16
  %i.wa = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.cr, ptr noundef %i.vz) #16 ; 0 uses
  %i.wb = load ptr, ptr %i.vx, align 8, !tbaa !47
  %i.wc = tail call ptr @Aig_Exor(ptr noundef nonnull %i.cr, ptr noundef %i.wb, ptr noundef %i.te) #16
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = xor i64 %i.wd, 1
  %i.wf = inttoptr i64 %i.we to ptr
  %i.wg = tail call ptr @Aig_And(ptr noundef nonnull %i.cr, ptr noundef %i.wf, ptr noundef %.3361686) #16 ; 2 uses
  %i.wh = add nuw nsw i32 %.9685, 1               ; 2 uses
  %.1373 = add nuw nsw i32 %.1373689, 1           ; 2 uses
  %.val440 = load i32, ptr %i.q, align 8, !tbaa !45
  %i.wi = icmp slt i32 %i.wh, %.val440
  br i1 %i.wi, label %bb.dv, label %.critedge37, !llvm.loop !127

.critedge37:                                      ; preds = %Vec_PtrPush.exit579, %bb.du
  %.3361.lcssa = phi ptr [ %.val449, %bb.du ], [ %i.wg, %Vec_PtrPush.exit579 ]
  %.1373.lcssa = phi i32 [ %.1373683, %bb.du ], [ %.1373, %Vec_PtrPush.exit579 ] ; 2 uses
  %i.wj = tail call ptr @Aig_And(ptr noundef nonnull %i.cr, ptr noundef %.0370634, ptr noundef %.3361.lcssa) #16
  %i.wk = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #17 ; 3 uses
  %i.wl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 4 ; 3 uses
  store i32 0, ptr %i.wm, align 4, !tbaa !12
  store i32 10, ptr %i.wl, align 8, !tbaa !50
  %i.wn = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #17
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 6 uses
  store ptr %i.wn, ptr %i.wo, align 8, !tbaa !13
  %i.wp = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  %.1.val710 = load i32, ptr %i.wp, align 4, !tbaa !12
  %i.wq = icmp sgt i32 %.1.val710, 0
  br i1 %i.wq, label %.lr.ph716, label %.critedge39

.lr.ph716:                                        ; preds = %.critedge37
  %i.wr = getelementptr i8, ptr %.1, i64 8
  %i.ws = getelementptr i8, ptr %.0, i64 8
  br label %bb.eo

bb.eo:                                            ; preds = %.lr.ph716, %Vec_VecFree.exit
  %i.wt = phi ptr [ %i.wk, %.lr.ph716 ], [ %i.acn, %Vec_VecFree.exit ] ; 2 uses
  %i.wu = phi i32 [ 10, %.lr.ph716 ], [ %i.aco, %Vec_VecFree.exit ] ; 2 uses
  %i.wv = phi i32 [ 0, %.lr.ph716 ], [ %i.acp, %Vec_VecFree.exit ] ; 2 uses
  %i.ww = phi ptr [ %i.wk, %.lr.ph716 ], [ %i.acq, %Vec_VecFree.exit ] ; 2 uses
  %i.wx = phi i32 [ 10, %.lr.ph716 ], [ %i.acr, %Vec_VecFree.exit ] ; 2 uses
  %i.wy = phi ptr [ %i.wk, %.lr.ph716 ], [ %i.acs, %Vec_VecFree.exit ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph716 ], [ %.promoted769, %Vec_VecFree.exit ] ; 2 uses
  %indvars.iv754 = phi i64 [ 0, %.lr.ph716 ], [ %indvars.iv.next755, %Vec_VecFree.exit ] ; 3 uses
  %.2374712 = phi i32 [ %.1373.lcssa, %.lr.ph716 ], [ %.3375.lcssa, %Vec_VecFree.exit ] ; 2 uses
  %.1.val423 = load ptr, ptr %i.wr, align 8, !tbaa !13
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %.1.val423, i64 %indvars.iv754
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !14 ; 4 uses
  %i.xb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 4 ; 3 uses
  store i32 0, ptr %i.xc, align 4, !tbaa !12
  store i32 10, ptr %i.xb, align 8, !tbaa !50
  %i.xd = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #17
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 8 ; 3 uses
  store ptr %i.xd, ptr %i.xe, align 8, !tbaa !13
  %i.xf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 4 ; 3 uses
  store i32 0, ptr %i.xg, align 4, !tbaa !134
  store i32 10, ptr %i.xf, align 8, !tbaa !135
  %i.xh = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #17
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 5 uses
  store ptr %i.xh, ptr %i.xi, align 8, !tbaa !136
  tail call void @populateBoolWithAigNodePtr(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.cr, ptr noundef %i.xa) #16
  tail call void @populateAigPointerUnitGF(ptr noundef nonnull %i.cr, ptr noundef %i.xa, ptr noundef nonnull %i.xb, ptr noundef nonnull %i.xf) #16
  %.val402699 = load i32, ptr %i.xc, align 4, !tbaa !12
  %i.xj = icmp sgt i32 %.val402699, 0
  br i1 %i.xj, label %.lr.ph705, label %.critedge41

.lr.ph705:                                        ; preds = %bb.eo, %.critedge43
  %i.xk = phi ptr [ %i.abs, %.critedge43 ], [ %i.wt, %bb.eo ] ; 5 uses
  %i.xl = phi i32 [ %i.abt, %.critedge43 ], [ %i.wu, %bb.eo ] ; 3 uses
  %i.xm = phi i32 [ %i.abu, %.critedge43 ], [ %i.wv, %bb.eo ] ; 3 uses
  %i.xn = phi ptr [ %i.abv, %.critedge43 ], [ %i.ww, %bb.eo ] ; 2 uses
  %i.xo = phi i32 [ %i.abw, %.critedge43 ], [ %i.wx, %bb.eo ] ; 8 uses
  %i.xp = phi ptr [ %i.abv, %.critedge43 ], [ %i.wy, %bb.eo ] ; 5 uses
  %indvars.iv751 = phi i64 [ %indvars.iv.next752, %.critedge43 ], [ 0, %bb.eo ] ; 4 uses
  %i.xq = phi i32 [ %i.abx, %.critedge43 ], [ %.promoted, %bb.eo ] ; 6 uses
  %.3375701 = phi i32 [ %.4376, %.critedge43 ], [ %.2374712, %bb.eo ] ; 2 uses
  %.val422 = load ptr, ptr %i.xe, align 8, !tbaa !13
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %.val422, i64 %indvars.iv751
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !14 ; 4 uses
  %i.xt = icmp sgt i32 %i.xq, 0
  br i1 %i.xt, label %.lr.ph.i, label %Vec_PtrFind.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph705
  %wide.trip.count.i = zext nneg i32 %i.xq to i64 ; 2 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eq, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.eq ] ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %indvars.iv.i
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !14
  %i.xw = icmp eq ptr %i.xv, %i.xs
  br i1 %i.xw, label %.lr.ph.i613, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_PtrFind.exit.thread, label %bb.ep, !llvm.loop !128

Vec_PtrFind.exit.thread:                          ; preds = %bb.eq, %.lr.ph705
  %i.xx = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.cr) #16 ; 5 uses
  %i.xy = tail call ptr @Aig_And(ptr noundef nonnull %i.cr, ptr noundef %i.xs, ptr noundef %.0364) #16
  %i.xz = tail call ptr @Aig_Or(ptr noundef nonnull %i.cr, ptr noundef %i.xx, ptr noundef %i.xy) #16
  %i.ya = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.cr, ptr noundef %i.xz) #16 ; 0 uses
  %i.yb = add nsw i32 %.3375701, 1
  %i.yc = icmp eq i32 %i.xq, %i.xo
  br i1 %i.yc, label %bb.er, label %Vec_PtrPush.exit587

bb.er:                                            ; preds = %Vec_PtrFind.exit.thread
  %i.yd = icmp slt i32 %i.xo, 16
  br i1 %i.yd, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %bb.er
  %.not9.i.i585 = icmp eq ptr %i.xp, null
  br i1 %.not9.i.i585, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ye = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.xp, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i583

bb.eu:                                            ; preds = %bb.es
  %i.yf = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit12.sink.split.i583

bb.ev:                                            ; preds = %bb.er
  %i.yg = icmp samesign ult i32 %i.xo, 1073741823
  %i.yh = shl nuw nsw i32 %i.xo, 1
  %spec.select.i580 = select i1 %i.yg, i32 %i.yh, i32 2147483647 ; 4 uses
  %.not.i10.i581 = icmp samesign ult i32 %i.xo, %spec.select.i580
  br i1 %.not.i10.i581, label %bb.ew, label %Vec_PtrPush.exit587

bb.ew:                                            ; preds = %bb.ev
  %.not9.i11.i582 = icmp eq ptr %i.xp, null
  %i.yi = zext nneg i32 %spec.select.i580 to i64
  %i.yj = shl nuw nsw i64 %i.yi, 3                ; 2 uses
  br i1 %.not9.i11.i582, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.yk = tail call ptr @realloc(ptr noundef nonnull %i.xp, i64 noundef %i.yj) #19
  br label %Vec_PtrGrow.exit12.sink.split.i583

bb.ey:                                            ; preds = %bb.ew
  %i.yl = tail call noalias ptr @malloc(i64 noundef %i.yj) #17
  br label %Vec_PtrGrow.exit12.sink.split.i583

Vec_PtrGrow.exit12.sink.split.i583:               ; preds = %bb.ex, %bb.ey, %bb.et, %bb.eu
  %storemerge641 = phi ptr [ %i.yf, %bb.eu ], [ %i.ye, %bb.et ], [ %i.yk, %bb.ex ], [ %i.yl, %bb.ey ] ; 2 uses
  %spec.select.sink.i584 = phi i32 [ 16, %bb.eu ], [ 16, %bb.et ], [ %spec.select.i580, %bb.ex ], [ %spec.select.i580, %bb.ey ]
  %.pre770 = load i32, ptr %i.wm, align 4, !tbaa !12
  %.pre771 = load i32, ptr %i.wl, align 8, !tbaa !50
  br label %Vec_PtrPush.exit587

Vec_PtrPush.exit587:                              ; preds = %Vec_PtrFind.exit.thread, %bb.ev, %Vec_PtrGrow.exit12.sink.split.i583
  %i.ym = phi ptr [ %i.xk, %Vec_PtrFind.exit.thread ], [ %i.xk, %bb.ev ], [ %storemerge641, %Vec_PtrGrow.exit12.sink.split.i583 ]
  %i.yn = phi i32 [ %i.xl, %Vec_PtrFind.exit.thread ], [ %i.xl, %bb.ev ], [ %.pre771, %Vec_PtrGrow.exit12.sink.split.i583 ] ; 7 uses
  %i.yo = phi i32 [ %i.xm, %Vec_PtrFind.exit.thread ], [ %i.xm, %bb.ev ], [ %.pre770, %Vec_PtrGrow.exit12.sink.split.i583 ] ; 3 uses
  %i.yp = phi ptr [ %i.xn, %Vec_PtrFind.exit.thread ], [ %i.xn, %bb.ev ], [ %storemerge641, %Vec_PtrGrow.exit12.sink.split.i583 ] ; 2 uses
  %i.yq = phi i32 [ %i.xo, %Vec_PtrFind.exit.thread ], [ %i.xo, %bb.ev ], [ %spec.select.sink.i584, %Vec_PtrGrow.exit12.sink.split.i583 ]
  %i.yr = add nsw i32 %i.xq, 1
  %i.ys = sext i32 %i.xq to i64
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.yp, i64 %i.ys
  store ptr %i.xs, ptr %i.yt, align 8, !tbaa !14
  %i.yu = icmp eq i32 %i.yo, %i.yn
  br i1 %i.yu, label %bb.ez, label %Vec_PtrPush.exit587.Vec_PtrPush.exit595_crit_edge

Vec_PtrPush.exit587.Vec_PtrPush.exit595_crit_edge: ; preds = %Vec_PtrPush.exit587
  %.pre772 = load ptr, ptr %i.wo, align 8, !tbaa !13
  br label %Vec_PtrPush.exit595

bb.ez:                                            ; preds = %Vec_PtrPush.exit587
  %i.yv = icmp slt i32 %i.yn, 16
  br i1 %i.yv, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  %i.yw = load ptr, ptr %i.wo, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i593 = icmp eq ptr %i.yw, null
  br i1 %.not9.i.i593, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.yx = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.yw, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i591

bb.fc:                                            ; preds = %bb.fa
  %i.yy = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit12.sink.split.i591

bb.fd:                                            ; preds = %bb.ez
  %i.yz = icmp samesign ult i32 %i.yn, 1073741823
  %i.za = shl nuw nsw i32 %i.yn, 1
  %spec.select.i588 = select i1 %i.yz, i32 %i.za, i32 2147483647 ; 4 uses
  %.not.i10.i589 = icmp samesign ult i32 %i.yn, %spec.select.i588
  %.pre773 = load ptr, ptr %i.wo, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i10.i589, label %bb.fe, label %Vec_PtrPush.exit595

bb.fe:                                            ; preds = %bb.fd
  %.not9.i11.i590 = icmp eq ptr %.pre773, null
  %i.zb = zext nneg i32 %spec.select.i588 to i64
  %i.zc = shl nuw nsw i64 %i.zb, 3                ; 2 uses
  br i1 %.not9.i11.i590, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.zd = tail call ptr @realloc(ptr noundef nonnull %.pre773, i64 noundef %i.zc) #19
  br label %Vec_PtrGrow.exit12.sink.split.i591

bb.fg:                                            ; preds = %bb.fe
  %i.ze = tail call noalias ptr @malloc(i64 noundef %i.zc) #17
  br label %Vec_PtrGrow.exit12.sink.split.i591

Vec_PtrGrow.exit12.sink.split.i591:               ; preds = %bb.ff, %bb.fg, %bb.fb, %bb.fc
  %storemerge642 = phi ptr [ %i.yy, %bb.fc ], [ %i.yx, %bb.fb ], [ %i.zd, %bb.ff ], [ %i.ze, %bb.fg ] ; 2 uses
  %spec.select.sink.i592 = phi i32 [ 16, %bb.fc ], [ 16, %bb.fb ], [ %spec.select.i588, %bb.ff ], [ %spec.select.i588, %bb.fg ] ; 2 uses
  store ptr %storemerge642, ptr %i.wo, align 8, !tbaa !13
  store i32 %spec.select.sink.i592, ptr %i.wl, align 8, !tbaa !50
  br label %Vec_PtrPush.exit595

Vec_PtrPush.exit595:                              ; preds = %Vec_PtrPush.exit587.Vec_PtrPush.exit595_crit_edge, %bb.fd, %Vec_PtrGrow.exit12.sink.split.i591
  %i.zf = phi ptr [ %.pre772, %Vec_PtrPush.exit587.Vec_PtrPush.exit595_crit_edge ], [ %.pre773, %bb.fd ], [ %storemerge642, %Vec_PtrGrow.exit12.sink.split.i591 ]
  %i.zg = phi i32 [ %i.yn, %Vec_PtrPush.exit587.Vec_PtrPush.exit595_crit_edge ], [ %i.yn, %bb.fd ], [ %spec.select.sink.i592, %Vec_PtrGrow.exit12.sink.split.i591 ]
  %i.zh = add nsw i32 %i.yo, 1                    ; 2 uses
  store i32 %i.zh, ptr %i.wm, align 4, !tbaa !12
  %i.zi = sext i32 %i.yo to i64
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %i.zi
  store ptr %i.xx, ptr %i.zj, align 8, !tbaa !14
  %i.zk = load ptr, ptr @vecLos, align 8, !tbaa !51 ; 6 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 4 ; 3 uses
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !12 ; 7 uses
  %i.zn = load i32, ptr %i.zk, align 8, !tbaa !50
  %i.zo = icmp eq i32 %i.zm, %i.zn
  br i1 %i.zo, label %bb.fh, label %Vec_PtrPush.exit603

bb.fh:                                            ; preds = %Vec_PtrPush.exit595
  %i.zp = icmp slt i32 %i.zm, 16
  br i1 %i.zp, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zk, i64 8 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i601 = icmp eq ptr %i.zr, null
  br i1 %.not9.i.i601, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.zs = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.zr, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit.i602

bb.fk:                                            ; preds = %bb.fi
  %i.zt = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i602

Vec_PtrGrow.exit.i602:                            ; preds = %bb.fk, %bb.fj
  %i.zu = phi ptr [ %i.zs, %bb.fj ], [ %i.zt, %bb.fk ]
  store ptr %i.zu, ptr %i.zq, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i599

bb.fl:                                            ; preds = %bb.fh
  %i.zv = icmp samesign ult i32 %i.zm, 1073741823
  %i.zw = shl nuw nsw i32 %i.zm, 1
  %spec.select.i596 = select i1 %i.zv, i32 %i.zw, i32 2147483647 ; 3 uses
  %.not.i10.i597 = icmp samesign ult i32 %i.zm, %spec.select.i596
  br i1 %.not.i10.i597, label %bb.fm, label %Vec_PtrPush.exit603

bb.fm:                                            ; preds = %bb.fl
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zk, i64 8 ; 2 uses
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !13 ; 2 uses
  %.not9.i11.i598 = icmp eq ptr %i.zy, null
  %i.zz = zext nneg i32 %spec.select.i596 to i64
  %i.aaa = shl nuw nsw i64 %i.zz, 3               ; 2 uses
  br i1 %.not9.i11.i598, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aab = tail call ptr @realloc(ptr noundef nonnull %i.zy, i64 noundef %i.aaa) #19
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.aac = tail call noalias ptr @malloc(i64 noundef %i.aaa) #17
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aad = phi ptr [ %i.aab, %bb.fn ], [ %i.aac, %bb.fo ]
  store ptr %i.aad, ptr %i.zx, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i599

Vec_PtrGrow.exit12.sink.split.i599:               ; preds = %bb.fp, %Vec_PtrGrow.exit.i602
  %spec.select.sink.i600 = phi i32 [ %spec.select.i596, %bb.fp ], [ 16, %Vec_PtrGrow.exit.i602 ]
  store i32 %spec.select.sink.i600, ptr %i.zk, align 8, !tbaa !50
  %.pre774 = load i32, ptr %i.zl, align 4, !tbaa !12
  br label %Vec_PtrPush.exit603

Vec_PtrPush.exit603:                              ; preds = %Vec_PtrPush.exit595, %bb.fl, %Vec_PtrGrow.exit12.sink.split.i599
  %i.aae = phi i32 [ %i.zm, %Vec_PtrPush.exit595 ], [ %i.zm, %bb.fl ], [ %.pre774, %Vec_PtrGrow.exit12.sink.split.i599 ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !13
  %i.aah = add nsw i32 %i.aae, 1
  store i32 %i.aah, ptr %i.zl, align 4, !tbaa !12
  %i.aai = sext i32 %i.aae to i64
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.aag, i64 %i.aai
  store ptr %i.xx, ptr %i.aaj, align 8, !tbaa !14
  %i.aak = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #17 ; 2 uses
  %i.aal = getelementptr i8, ptr %i.xx, i64 36
  %.val472 = load i32, ptr %i.aal, align 4, !tbaa !137
  %i.aam = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aak, ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %.val472, ptr noundef nonnull @.str.55) #16 ; 0 uses
  %i.aan = load ptr, ptr @vecLoNames, align 8, !tbaa !51 ; 6 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 4 ; 3 uses
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !12 ; 7 uses
  %i.aaq = load i32, ptr %i.aan, align 8, !tbaa !50
  %i.aar = icmp eq i32 %i.aap, %i.aaq
  br i1 %i.aar, label %bb.fq, label %Vec_PtrPush.exit611

bb.fq:                                            ; preds = %Vec_PtrPush.exit603
  %i.aas = icmp slt i32 %i.aap, 16
  br i1 %i.aas, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aan, i64 8 ; 2 uses
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i609 = icmp eq ptr %i.aau, null
  br i1 %.not9.i.i609, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aav = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.aau, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit.i610

bb.ft:                                            ; preds = %bb.fr
  %i.aaw = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i610

Vec_PtrGrow.exit.i610:                            ; preds = %bb.ft, %bb.fs
  %i.aax = phi ptr [ %i.aav, %bb.fs ], [ %i.aaw, %bb.ft ]
  store ptr %i.aax, ptr %i.aat, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i607

bb.fu:                                            ; preds = %bb.fq
  %i.aay = icmp samesign ult i32 %i.aap, 1073741823
  %i.aaz = shl nuw nsw i32 %i.aap, 1
  %spec.select.i604 = select i1 %i.aay, i32 %i.aaz, i32 2147483647 ; 3 uses
  %.not.i10.i605 = icmp samesign ult i32 %i.aap, %spec.select.i604
  br i1 %.not.i10.i605, label %bb.fv, label %Vec_PtrPush.exit611

bb.fv:                                            ; preds = %bb.fu
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aan, i64 8 ; 2 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !13 ; 2 uses
  %.not9.i11.i606 = icmp eq ptr %i.abb, null
  %i.abc = zext nneg i32 %spec.select.i604 to i64
  %i.abd = shl nuw nsw i64 %i.abc, 3              ; 2 uses
  br i1 %.not9.i11.i606, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.abe = tail call ptr @realloc(ptr noundef nonnull %i.abb, i64 noundef %i.abd) #19
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.abf = tail call noalias ptr @malloc(i64 noundef %i.abd) #17
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.abg = phi ptr [ %i.abe, %bb.fw ], [ %i.abf, %bb.fx ]
  store ptr %i.abg, ptr %i.aba, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i607

Vec_PtrGrow.exit12.sink.split.i607:               ; preds = %bb.fy, %Vec_PtrGrow.exit.i610
  %spec.select.sink.i608 = phi i32 [ %spec.select.i604, %bb.fy ], [ 16, %Vec_PtrGrow.exit.i610 ]
  store i32 %spec.select.sink.i608, ptr %i.aan, align 8, !tbaa !50
  %.pre775 = load i32, ptr %i.aao, align 4, !tbaa !12
  br label %Vec_PtrPush.exit611

Vec_PtrPush.exit611:                              ; preds = %Vec_PtrPush.exit603, %bb.fu, %Vec_PtrGrow.exit12.sink.split.i607
  %i.abh = phi i32 [ %i.aap, %Vec_PtrPush.exit603 ], [ %i.aap, %bb.fu ], [ %.pre775, %Vec_PtrGrow.exit12.sink.split.i607 ] ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !13
  %i.abk = add nsw i32 %i.abh, 1
  store i32 %i.abk, ptr %i.aao, align 4, !tbaa !12
  %i.abl = sext i32 %i.abh to i64
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.abj, i64 %i.abl
  store ptr %i.aak, ptr %i.abm, align 8, !tbaa !14
  br label %bb.ga

.lr.ph.i613:                                      ; preds = %bb.ep, %bb.fz
  %indvars.iv.i615 = phi i64 [ %indvars.iv.next.i616, %bb.fz ], [ 0, %bb.ep ] ; 3 uses
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %indvars.iv.i615
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !14
  %i.abp = icmp eq ptr %i.abo, %i.xs
  br i1 %i.abp, label %Vec_PtrFind.exit619, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph.i613
  %indvars.iv.next.i616 = add nuw nsw i64 %indvars.iv.i615, 1 ; 2 uses
  %exitcond.not.i617 = icmp eq i64 %indvars.iv.next.i616, %wide.trip.count.i
  br i1 %exitcond.not.i617, label %Vec_PtrFind.exit619, label %.lr.ph.i613, !llvm.loop !128

Vec_PtrFind.exit619:                              ; preds = %.lr.ph.i613, %bb.fz
  %.07.i612 = phi i64 [ -1, %bb.fz ], [ %indvars.iv.i615, %.lr.ph.i613 ]
  %.val421 = load ptr, ptr %i.wo, align 8, !tbaa !13
  %i.abq = getelementptr inbounds [8 x i8], ptr %.val421, i64 %.07.i612
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !14
  br label %bb.ga

bb.ga:                                            ; preds = %Vec_PtrFind.exit619, %Vec_PtrPush.exit611
  %i.abs = phi ptr [ %i.ym, %Vec_PtrPush.exit611 ], [ %i.xk, %Vec_PtrFind.exit619 ] ; 2 uses
  %i.abt = phi i32 [ %i.zg, %Vec_PtrPush.exit611 ], [ %i.xl, %Vec_PtrFind.exit619 ] ; 2 uses
  %i.abu = phi i32 [ %i.zh, %Vec_PtrPush.exit611 ], [ %i.xm, %Vec_PtrFind.exit619 ] ; 2 uses
  %i.abv = phi ptr [ %i.yp, %Vec_PtrPush.exit611 ], [ %i.xk, %Vec_PtrFind.exit619 ] ; 4 uses
  %i.abw = phi i32 [ %i.yq, %Vec_PtrPush.exit611 ], [ %i.xo, %Vec_PtrFind.exit619 ] ; 2 uses
  %i.abx = phi i32 [ %i.yr, %Vec_PtrPush.exit611 ], [ %i.xq, %Vec_PtrFind.exit619 ] ; 2 uses
  %.4376 = phi i32 [ %i.yb, %Vec_PtrPush.exit611 ], [ %.3375701, %Vec_PtrFind.exit619 ] ; 2 uses
  %.0362 = phi ptr [ %i.xx, %Vec_PtrPush.exit611 ], [ %i.abr, %Vec_PtrFind.exit619 ]
  %.val474695 = load ptr, ptr %i.xi, align 8, !tbaa !136
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %.val474695, i64 %indvars.iv751
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !14 ; 2 uses
  %i.aca = getelementptr i8, ptr %i.abz, i64 4
  %.val696 = load i32, ptr %i.aca, align 4, !tbaa !12
  %i.acb = icmp sgt i32 %.val696, 0
  br i1 %i.acb, label %.lr.ph698, label %.critedge43

.lr.ph698:                                        ; preds = %bb.ga, %.lr.ph698
  %indvars.iv748 = phi i64 [ %indvars.iv.next749, %.lr.ph698 ], [ 0, %bb.ga ] ; 2 uses
  %i.acc = phi ptr [ %i.ach, %.lr.ph698 ], [ %i.abz, %bb.ga ]
  %i.acd = getelementptr i8, ptr %i.acc, i64 8
  %.val420 = load ptr, ptr %i.acd, align 8, !tbaa !13
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %.val420, i64 %indvars.iv748
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !14
  tail call void @setAIGNodePtrOfGloballyNode(ptr noundef %i.acf, ptr noundef %.0362) #16
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %.val474 = load ptr, ptr %i.xi, align 8, !tbaa !136
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %.val474, i64 %indvars.iv751
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !14 ; 2 uses
  %i.aci = getelementptr i8, ptr %i.ach, i64 4
  %.val = load i32, ptr %i.aci, align 4, !tbaa !12
  %i.acj = sext i32 %.val to i64
  %i.ack = icmp slt i64 %indvars.iv.next749, %i.acj
  br i1 %i.ack, label %.lr.ph698, label %.critedge43, !llvm.loop !129

.critedge43:                                      ; preds = %.lr.ph698, %bb.ga
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %.val402 = load i32, ptr %i.xc, align 4, !tbaa !12
  %i.acl = sext i32 %.val402 to i64
  %i.acm = icmp slt i64 %indvars.iv.next752, %i.acl
  br i1 %i.acm, label %.lr.ph705, label %.critedge41, !llvm.loop !130

.critedge41:                                      ; preds = %.critedge43, %bb.eo
  %i.acn = phi ptr [ %i.wt, %bb.eo ], [ %i.abs, %.critedge43 ]
  %i.aco = phi i32 [ %i.wu, %bb.eo ], [ %i.abt, %.critedge43 ]
  %i.acp = phi i32 [ %i.wv, %bb.eo ], [ %i.abu, %.critedge43 ]
  %i.acq = phi ptr [ %i.ww, %bb.eo ], [ %i.abv, %.critedge43 ]
  %i.acr = phi i32 [ %i.wx, %bb.eo ], [ %i.abw, %.critedge43 ]
  %i.acs = phi ptr [ %i.wy, %bb.eo ], [ %i.abv, %.critedge43 ]
  %.promoted769 = phi i32 [ %.promoted, %bb.eo ], [ %i.abx, %.critedge43 ]
  %.3375.lcssa = phi i32 [ %.2374712, %bb.eo ], [ %.4376, %.critedge43 ] ; 2 uses
  %i.act = tail call ptr @buildLogicFromLTLNode(ptr noundef nonnull %i.cr, ptr noundef %i.xa) #16 ; 0 uses
  %i.acu = tail call ptr @retriveAIGPointerFromLTLNode(ptr noundef %i.xa) #16
  %i.acv = ptrtoint ptr %i.acu to i64
  %i.acw = xor i64 %i.acv, 1
  %i.acx = inttoptr i64 %i.acw to ptr
  %i.acy = tail call ptr @Aig_And(ptr noundef nonnull %i.cr, ptr noundef %i.wj, ptr noundef %i.acx) #16
  %puts394 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  %i.acz = tail call ptr @Aig_Or(ptr noundef nonnull %i.cr, ptr noundef %i.acy, ptr noundef %.0357) #16
  %.0.val = load ptr, ptr %i.ws, align 8, !tbaa !13
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %indvars.iv754
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !14
  tail call void @Aig_ObjPatchFanin0(ptr noundef nonnull %i.cr, ptr noundef %i.adb, ptr noundef %i.acz) #16
  %i.adc = load ptr, ptr %i.xe, align 8, !tbaa !13 ; 2 uses
  %.not.i620 = icmp eq ptr %i.adc, null
  br i1 %.not.i620, label %Vec_PtrFree.exit, label %bb.gb

bb.gb:                                            ; preds = %.critedge41
  tail call void @free(ptr noundef nonnull %i.adc) #16
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge41, %bb.gb
  tail call void @free(ptr noundef nonnull %i.xb) #16
  %.val811.i = load i32, ptr %i.xg, align 4, !tbaa !134 ; 2 uses
  %i.add = icmp sgt i32 %.val811.i, 0
  br i1 %i.add, label %.lr.ph.i621, label %.critedge.i

.lr.ph.i621:                                      ; preds = %Vec_PtrFree.exit, %bb.ge
  %.val814.i = phi i32 [ %.val8.i, %bb.ge ], [ %.val811.i, %Vec_PtrFree.exit ]
  %indvars.iv.i622 = phi i64 [ %indvars.iv.next.i625, %bb.ge ], [ 0, %Vec_PtrFree.exit ] ; 2 uses
  %.val.i623 = load ptr, ptr %i.xi, align 8, !tbaa !136
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.val.i623, i64 %indvars.iv.i622
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !14 ; 3 uses
  %.not.i624 = icmp eq ptr %i.adf, null
  br i1 %.not.i624, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i621
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq ptr %i.adh, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @free(ptr noundef nonnull %i.adh) #16
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.gd, %bb.gc
  tail call void @free(ptr noundef nonnull %i.adf) #16
  %.val8.pre.i = load i32, ptr %i.xg, align 4, !tbaa !134
  br label %bb.ge

bb.ge:                                            ; preds = %Vec_PtrFree.exit.i, %.lr.ph.i621
  %.val8.i = phi i32 [ %.val814.i, %.lr.ph.i621 ], [ %.val8.pre.i, %Vec_PtrFree.exit.i ] ; 2 uses
  %indvars.iv.next.i625 = add nuw nsw i64 %indvars.iv.i622, 1 ; 2 uses
  %i.adi = sext i32 %.val8.i to i64
  %i.adj = icmp slt i64 %indvars.iv.next.i625, %i.adi
  br i1 %i.adj, label %.lr.ph.i621, label %.critedge.i, !llvm.loop !131

.critedge.i:                                      ; preds = %bb.ge, %Vec_PtrFree.exit
  %i.adk = load ptr, ptr %i.xi, align 8, !tbaa !13 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.adk, null
  br i1 %.not.i9.i, label %Vec_VecFree.exit, label %bb.gf

bb.gf:                                            ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.adk) #16
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i, %bb.gf
  tail call void @free(ptr noundef nonnull %i.xf) #16
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1 ; 2 uses
  %.1.val = load i32, ptr %i.wp, align 4, !tbaa !12
  %i.adl = sext i32 %.1.val to i64
  %i.adm = icmp slt i64 %indvars.iv.next755, %i.adl
  br i1 %i.adm, label %bb.eo, label %.critedge39, !llvm.loop !132

.critedge39:                                      ; preds = %Vec_VecFree.exit, %.critedge37, %.critedge33
  %.5377 = phi i32 [ %.0372.lcssa, %.critedge33 ], [ %.1373.lcssa, %.critedge37 ], [ %.3375.lcssa, %Vec_VecFree.exit ]
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.cr, i32 noundef %.5377) #16
  %i.adn = getelementptr i8, ptr %i.cr, i64 136
  %i.ado = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !31
  %i.adq = getelementptr i8, ptr %i.adp, i64 4
  %.val.i626 = load i32, ptr %i.adq, align 4, !tbaa !12 ; 2 uses
  store i32 %.val.i626, ptr %i.adn, align 8, !tbaa !49
  %i.adr = getelementptr i8, ptr %i.cr, i64 104
  %.val12.i = load i32, ptr %i.adr, align 8, !tbaa !45 ; 3 uses
  %.not.i627 = icmp eq i32 %.val12.i, 0
  br i1 %.not.i627, label %Aig_ManCiCleanupBiere.exit.thread, label %bb.gg

Aig_ManCiCleanupBiere.exit.thread:                ; preds = %.critedge39
  %i.ads = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !30
  %i.adu = getelementptr i8, ptr %i.adt, i64 4
  %.val.i629640 = load i32, ptr %i.adu, align 4, !tbaa !12
  br label %Aig_ManCoCleanupBiere.exit

bb.gg:                                            ; preds = %.critedge39
  %i.adv = sub nsw i32 %.val.i626, %.val12.i
  %i.adw = getelementptr inbounds nuw i8, ptr %i.cr, i64 108
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !32
  %i.adx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !30
  %i.adz = getelementptr i8, ptr %i.ady, i64 4
  %.val.i629 = load i32, ptr %i.adz, align 4, !tbaa !12 ; 2 uses
  %i.aea = sub nsw i32 %.val.i629, %.val12.i
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  store i32 %i.aea, ptr %i.aeb, align 8, !tbaa !29
  br label %Aig_ManCoCleanupBiere.exit

Aig_ManCoCleanupBiere.exit:                       ; preds = %Aig_ManCiCleanupBiere.exit.thread, %bb.gg
  %.val.i629.sink = phi i32 [ %.val.i629640, %Aig_ManCiCleanupBiere.exit.thread ], [ %.val.i629, %bb.gg ]
  %i.aec = getelementptr i8, ptr %i.cr, i64 140
  store i32 %.val.i629.sink, ptr %i.aec, align 4, !tbaa !49
  %i.aed = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.cr) #16 ; 0 uses
  ret ptr %i.cr
}

declare ptr @parseFormulaCreateAST(ptr noundef) local_unnamed_addr #5

declare i32 @isWellFormed(ptr noundef) local_unnamed_addr #5

declare i32 @checkSignalNameExistence(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare void @populateBoolWithAigNodePtr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @populateAigPointerUnitGF(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @setAIGNodePtrOfGloballyNode(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @buildLogicFromLTLNode(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @retriveAIGPointerFromLTLNode(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_CommandAbcLivenessToSafetyWithLTL(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = tail call ptr @Abc_FrameReadNtk(ptr noundef %0) #16 ; 13 uses
  %i.c = tail call ptr @Abc_FrameReadOut(ptr noundef %0) #16 ; 0 uses
  %i.d = tail call ptr @Abc_FrameReadErr(ptr noundef %0) #16
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (...) @Extra_UtilGetoptReset() #16
  %i.f = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.57) #16 ; 2 uses
  switch i32 %i.f, label %.loopexit136 [
    i32 -1, label %.loopexit
    i32 49, label %.preheader.preheader
    i32 115, label %.loopexit148
    i32 108, label %.loopexit137
    i32 102, label %.loopexit138
  ]

.loopexit148:                                     ; preds = %bb.c, %bb.b, %.loopexit137, %.loopexit137, %switch.select.si.unfold.true.jt1
  %.1.jt1 = phi i32 [ 1, %.loopexit137 ], [ %spec.select, %switch.select.si.unfold.true.jt1 ], [ 2, %bb.b ], [ 1, %.loopexit137 ], [ 3, %bb.c ] ; 3 uses
  %i.g = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.57) #16
  switch i32 %i.g, label %.loopexit136 [
    i32 -1, label %.loopexit
    i32 49, label %.preheader.preheader
    i32 102, label %.loopexit138
    i32 108, label %.loopexit137
  ]

.preheader.preheader:                             ; preds = %bb.b, %.loopexit148
  %.086134.ph = phi i32 [ %.1.jt1, %.loopexit148 ], [ -1, %bb.b ] ; 2 uses
  %switch.selectcmp119.peel = icmp eq i32 %.086134.ph, -1
  br i1 %switch.selectcmp119.peel, label %bb.c, label %switch.select.si.unfold.true.jt1

bb.c:                                             ; preds = %.preheader.preheader
  %i.h = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.57) #16
  switch i32 %i.h, label %.loopexit136 [
    i32 -1, label %.loopexit
    i32 49, label %switch.select.si.unfold.true.jt1
    i32 115, label %.loopexit148
    i32 108, label %.loopexit137
    i32 102, label %.loopexit138
  ]

.loopexit137:                                     ; preds = %bb.c, %.loopexit148, %bb.b
  %.086135 = phi i32 [ -1, %bb.b ], [ %.1.jt1, %.loopexit148 ], [ 4, %bb.c ]
  switch i32 %.086135, label %.loopexit136 [
    i32 -1, label %.loopexit148
    i32 4, label %.loopexit148
  ]

.loopexit138:                                     ; preds = %bb.c, %.loopexit148, %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27) ; 0 uses
  tail call void @exit(i32 noundef 0) #20
end_hunk_0
