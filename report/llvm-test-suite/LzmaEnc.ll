inline.NumInlined: 105
inline.NumDeleted: 33
begin_hunk_0_@LzmaEnc_CodeOneBlock:bb.a

bb.bs:                                            ; preds = %select.unfold.1.i
  %i.si = load i8, ptr %i.ph, align 1, !tbaa !21
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !21
  %.not160.2.i = icmp eq i8 %i.si, %i.sk
  br i1 %.not160.2.i, label %GetOptimumFast.exit, label %select.unfold.2.i

select.unfold.2.i:                                ; preds = %bb.bs, %select.unfold.1.i
  %i.sl = load i32, ptr %i.du, align 4, !tbaa !4
  %i.sm = add i32 %i.sl, 1
  %i.sn = zext i32 %i.sm to i64
  %i.so = sub nsw i64 0, %i.sn
  %i.sp = getelementptr inbounds i8, ptr %i.pi, i64 %i.so ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !21
  %.not159.3.i = icmp eq i8 %i.pj, %i.sq
  br i1 %.not159.3.i, label %bb.bt, label %.split255.us.i

bb.bt:                                            ; preds = %select.unfold.2.i
  %i.sr = load i8, ptr %i.ph, align 1, !tbaa !21
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 1
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !21
  %.not160.3.i = icmp eq i8 %i.sr, %i.st
  br i1 %.not160.3.i, label %GetOptimumFast.exit, label %.split255.us.i

.split255.us.i:                                   ; preds = %.lr.ph250.us.3.i, %bb.bt, %select.unfold.2.i, %bb.bo, %select.unfold.us.2.i
  %i.su = add i32 %.1140.i, 4                     ; 2 uses
  %i.sv = add i32 %.2138.fr.i, -2                 ; 2 uses
  %.not.i189.i = icmp eq i32 %i.sv, 0
  br i1 %.not.i189.i, label %GetOptimumFast.exit.thread, label %MovePos.exit.sink.split.i

MovePos.exit.sink.split.i:                        ; preds = %.preheader.i, %.preheader.1.i, %.preheader.2.i, %.preheader.3.i, %.split255.us.i, %MovePos.exit177.i, %bb.aq, %.split232.us.i
  %.1341 = phi i32 [ %.us-phi237.i, %MovePos.exit177.i ], [ %i.su, %.split255.us.i ], [ %i.ly, %bb.aq ], [ %.us-phi.i, %.split232.us.i ], [ 2, %.preheader.2.i ], [ 1, %.preheader.1.i ], [ 0, %.preheader.i ], [ 3, %.preheader.3.i ]
  %.sink328.i = phi i32 [ %i.nc, %MovePos.exit177.i ], [ %i.sv, %.split255.us.i ], [ %i.lz, %bb.aq ], [ %i.km, %.split232.us.i ], [ 1, %.preheader.2.i ], [ 1, %.preheader.1.i ], [ 1, %.preheader.i ], [ 1, %.preheader.3.i ] ; 2 uses
  %.6.ph.i = phi i32 [ %.us-phi236.i, %MovePos.exit177.i ], [ %.2138.fr.i, %.split255.us.i ], [ %.0136.i, %bb.aq ], [ %.us-phi233.i, %.split232.us.i ], [ 2, %.preheader.2.i ], [ 2, %.preheader.1.i ], [ 2, %.preheader.i ], [ 2, %.preheader.3.i ]
  %i.sw = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.sx = add i32 %i.sw, %.sink328.i
  store i32 %i.sx, ptr %i.dj, align 4, !tbaa !89
  %i.sy = load ptr, ptr %i.dw, align 8, !tbaa !147
  %i.sz = load ptr, ptr %i.df, align 8, !tbaa !116
  tail call void %i.sy(ptr noundef %i.sz, i32 noundef %.sink328.i) #14, !inline_history !143
  br label %GetOptimumFast.exit

bb.bu:                                            ; preds = %CheckErrors.exit332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ta = load i32, ptr %i.dx, align 8, !tbaa !87
  %i.tb = load i32, ptr %i.dy, align 4, !tbaa !88 ; 3 uses
  %.not.i230 = icmp eq i32 %i.ta, %i.tb
  br i1 %.not.i230, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !148 ; 2 uses
  %i.tg = sub i32 %i.tf, %i.tb
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 28
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !150
  store i32 %i.tf, ptr %i.dy, align 4, !tbaa !88
  br label %GetOptimum.exit

bb.bw:                                            ; preds = %bb.bu
  store i32 0, ptr %i.dx, align 8, !tbaa !87
  store i32 0, ptr %i.dy, align 4, !tbaa !88
  %i.tj = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.tl = load ptr, ptr %i.dd, align 8, !tbaa !121
  %i.tm = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.tn = tail call i32 %i.tl(ptr noundef %i.tm) #14, !inline_history !151
  store i32 %i.tn, ptr %i.dm, align 8, !tbaa !135
  %i.to = load ptr, ptr %i.dn, align 8, !tbaa !136
  %i.tp = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.tq = tail call i32 %i.to(ptr noundef %i.tp, ptr noundef nonnull %i.do) #14, !inline_history !151 ; 4 uses
  %.not.i.i255 = icmp eq i32 %i.tq, 0
  br i1 %.not.i.i255, label %ReadMatchDistances.exit.i256, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tr = add i32 %i.tq, -2
  %i.ts = zext i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ts
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !4  ; 5 uses
  %i.tv = load i32, ptr %i.dp, align 8, !tbaa !52
  %i.tw = icmp eq i32 %i.tu, %i.tv
  br i1 %i.tw, label %bb.bz, label %ReadMatchDistances.exit.i256

bb.bz:                                            ; preds = %bb.by
  %i.tx = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.ty = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.tz = tail call ptr %i.tx(ptr noundef %i.ty) #14, !inline_history !151
  %i.ua = getelementptr inbounds i8, ptr %i.tz, i64 -1 ; 2 uses
  %i.ub = add i32 %i.tq, -1
  %i.uc = zext i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !4
  %i.uf = add i32 %i.ue, 1
  %i.ug = load i32, ptr %i.dm, align 8, !tbaa !135
  %spec.store.select.i.i258 = tail call i32 @llvm.umin.i32(i32 %i.ug, i32 273) ; 3 uses
  %i.uh = zext i32 %i.uf to i64
  %i.ui = sub nsw i64 0, %i.uh
  %i.uj = getelementptr inbounds i8, ptr %i.ua, i64 %i.ui
  %i.uk = icmp ult i32 %i.tu, %spec.store.select.i.i258
  br i1 %i.uk, label %.lr.ph.preheader.i.i259, label %ReadMatchDistances.exit.i256

.lr.ph.preheader.i.i259:                          ; preds = %bb.bz
  %i.ul = zext nneg i32 %i.tu to i64
  br label %.lr.ph.i.i260

.lr.ph.i.i260:                                    ; preds = %bb.ca, %.lr.ph.preheader.i.i259
  %indvars.iv.i.i261 = phi i64 [ %i.ul, %.lr.ph.preheader.i.i259 ], [ %indvars.iv.next.i.i263, %bb.ca ] ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ua, i64 %indvars.iv.i.i261
  %i.un = load i8, ptr %i.um, align 1, !tbaa !21
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 %indvars.iv.i.i261
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !21
  %i.uq = icmp eq i8 %i.un, %i.up
  br i1 %i.uq, label %bb.ca, label %.critedge.loopexit.split.loop.exit.i.i262

bb.ca:                                            ; preds = %.lr.ph.i.i260
  %indvars.iv.next.i.i263 = add nuw nsw i64 %indvars.iv.i.i261, 1 ; 2 uses
  %lftr.wideiv.i.i264 = trunc i64 %indvars.iv.next.i.i263 to i32
  %exitcond.not.i.i265 = icmp eq i32 %spec.store.select.i.i258, %lftr.wideiv.i.i264
  br i1 %exitcond.not.i.i265, label %ReadMatchDistances.exit.i256, label %.lr.ph.i.i260, !llvm.loop !140

.critedge.loopexit.split.loop.exit.i.i262:        ; preds = %.lr.ph.i.i260
  %i.ur = trunc nuw i64 %indvars.iv.i.i261 to i32
  br label %ReadMatchDistances.exit.i256

ReadMatchDistances.exit.i256:                     ; preds = %bb.ca, %.critedge.loopexit.split.loop.exit.i.i262, %bb.bz, %bb.by, %bb.bx
  %.1.i.i257 = phi i32 [ 0, %bb.bx ], [ %i.tu, %bb.by ], [ %i.tu, %bb.bz ], [ %i.ur, %.critedge.loopexit.split.loop.exit.i.i262 ], [ %spec.store.select.i.i258, %bb.ca ]
  %i.us = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.ut = add i32 %i.us, 1
  store i32 %i.ut, ptr %i.dj, align 4, !tbaa !89
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  %i.uu = load i32, ptr %i.dk, align 8, !tbaa !141
  %i.uv = load i32, ptr %i.dl, align 4, !tbaa !142
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %ReadMatchDistances.exit.i256
  %.0901.i = phi i32 [ %i.tq, %ReadMatchDistances.exit.i256 ], [ %i.uv, %bb.cb ] ; 2 uses
  %.0696.i = phi i32 [ %.1.i.i257, %ReadMatchDistances.exit.i256 ], [ %i.uu, %bb.cb ] ; 6 uses
  %i.uw = load i32, ptr %i.dm, align 8, !tbaa !135 ; 3 uses
  %i.ux = icmp ult i32 %i.uw, 2
  br i1 %i.ux, label %GetOptimum.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uy = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.uz = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.va = tail call ptr %i.uy(ptr noundef %i.uz) #14, !inline_history !152 ; 6 uses
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 -1 ; 10 uses
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !21  ; 6 uses
  %.not1060.i = icmp eq i32 %i.uw, 2              ; 4 uses
  %i.vd = tail call i32 @llvm.umax.i32(i32 %i.uw, i32 3)
  %umax.i231 = tail call i32 @llvm.umin.i32(i32 %i.vd, i32 273) ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa !4
  %i.ve = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.vf = add i32 %i.ve, 1
  %i.vg = zext i32 %i.vf to i64
  %i.vh = sub nsw i64 0, %i.vg
  %i.vi = getelementptr inbounds i8, ptr %i.vb, i64 %i.vh ; 3 uses
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !21
  %.not830.i = icmp eq i8 %i.vc, %i.vj
  br i1 %.not830.i, label %bb.ce, label %.critedge.i

bb.ce:                                            ; preds = %bb.cd
  %i.vk = load i8, ptr %i.va, align 1, !tbaa !21
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !21
  %.not831.i = icmp ne i8 %i.vk, %i.vm            ; 2 uses
  %brmerge.i = or i1 %.not1060.i, %.not831.i
  %.mux.i = select i1 %.not831.i, i32 0, i32 2
  br i1 %brmerge.i, label %.critedge.i, label %.lr.ph.preheader.i248

.lr.ph.preheader.i248:                            ; preds = %bb.ce
  %wide.trip.count.i249 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.cf, %.lr.ph.preheader.i248
  %indvars.iv.i251 = phi i64 [ 2, %.lr.ph.preheader.i248 ], [ %indvars.iv.next.i253, %bb.cf ] ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv.i251
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !21
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vi, i64 %indvars.iv.i251
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !21
  %i.vr = icmp eq i8 %i.vo, %i.vq
  br i1 %i.vr, label %bb.cf, label %.critedge.loopexit.split.loop.exit.i252

bb.cf:                                            ; preds = %.lr.ph.i250
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i251, 1 ; 2 uses
  %exitcond.not.i254 = icmp eq i64 %indvars.iv.next.i253, %wide.trip.count.i249
  br i1 %exitcond.not.i254, label %.critedge.i, label %.lr.ph.i250, !llvm.loop !153

.critedge.loopexit.split.loop.exit.i252:          ; preds = %.lr.ph.i250
  %i.vs = trunc nuw nsw i64 %indvars.iv.i251 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.cf, %.critedge.loopexit.split.loop.exit.i252, %bb.ce, %bb.cd
  %storemerge1220.i = phi i32 [ 0, %bb.cd ], [ %.mux.i, %bb.ce ], [ %i.vs, %.critedge.loopexit.split.loop.exit.i252 ], [ %umax.i231, %bb.cf ] ; 5 uses
  store i32 %storemerge1220.i, ptr %i.b, align 16, !tbaa !4
  %i.vt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.vu = add i32 %i.vt, 1
  %i.vv = zext i32 %i.vu to i64
  %i.vw = sub nsw i64 0, %i.vv
  %i.vx = getelementptr inbounds i8, ptr %i.vb, i64 %i.vw ; 3 uses
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !21
  %.not830.1.i = icmp eq i8 %i.vc, %i.vy
  br i1 %.not830.1.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge.i
  %i.vz = load i8, ptr %i.va, align 1, !tbaa !21
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !21
  %.not831.1.i = icmp eq i8 %i.vz, %i.wb
  br i1 %.not831.1.i, label %.preheader973.1.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.critedge.i
  store i32 0, ptr %i.ea, align 4, !tbaa !4
  br label %bb.cj

.preheader973.1.i:                                ; preds = %bb.cg
  br i1 %.not1060.i, label %.critedge.1.i, label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %.preheader973.1.i
  %wide.trip.count.1.i244 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.ci, %.lr.ph.preheader.1.i
  %indvars.iv.1.i245 = phi i64 [ 2, %.lr.ph.preheader.1.i ], [ %indvars.iv.next.1.i246, %bb.ci ] ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv.1.i245
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !21
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 %indvars.iv.1.i245
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !21
  %i.wg = icmp eq i8 %i.wd, %i.wf
  br i1 %i.wg, label %bb.ci, label %.critedge.1.loopexit.split.loop.exit1246.i

bb.ci:                                            ; preds = %.lr.ph.1.i
  %indvars.iv.next.1.i246 = add nuw nsw i64 %indvars.iv.1.i245, 1 ; 2 uses
  %exitcond.1.not.i247 = icmp eq i64 %indvars.iv.next.1.i246, %wide.trip.count.1.i244
  br i1 %exitcond.1.not.i247, label %.critedge.1.i, label %.lr.ph.1.i, !llvm.loop !153

.critedge.1.loopexit.split.loop.exit1246.i:       ; preds = %.lr.ph.1.i
  %i.wh = trunc nuw nsw i64 %indvars.iv.1.i245 to i32
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.ci, %.critedge.1.loopexit.split.loop.exit1246.i, %.preheader973.1.i
  %.0730.lcssa.1.i = phi i32 [ 2, %.preheader973.1.i ], [ %i.wh, %.critedge.1.loopexit.split.loop.exit1246.i ], [ %umax.i231, %bb.ci ] ; 3 uses
  store i32 %.0730.lcssa.1.i, ptr %i.ea, align 4, !tbaa !4
  %i.wi = icmp ugt i32 %.0730.lcssa.1.i, %storemerge1220.i
  %spec.select.1.i = zext i1 %i.wi to i32
  br label %bb.cj

bb.cj:                                            ; preds = %.critedge.1.i, %bb.ch
  %i.wj = phi i32 [ 0, %bb.ch ], [ %.0730.lcssa.1.i, %.critedge.1.i ] ; 2 uses
  %.2699.1.i = phi i32 [ 0, %bb.ch ], [ %spec.select.1.i, %.critedge.1.i ] ; 3 uses
  %i.wk = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.wl = add i32 %i.wk, 1
  %i.wm = zext i32 %i.wl to i64
  %i.wn = sub nsw i64 0, %i.wm
  %i.wo = getelementptr inbounds i8, ptr %i.vb, i64 %i.wn ; 3 uses
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !21
  %.not830.2.i = icmp eq i8 %i.vc, %i.wp
  br i1 %.not830.2.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.wq = load i8, ptr %i.va, align 1, !tbaa !21
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 1
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !21
  %.not831.2.i = icmp eq i8 %i.wq, %i.ws
  br i1 %.not831.2.i, label %.preheader973.2.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 0, ptr %i.eb, align 8, !tbaa !4
  br label %bb.cn

.preheader973.2.i:                                ; preds = %bb.ck
  br i1 %.not1060.i, label %.critedge.2.i, label %.lr.ph.preheader.2.i

.lr.ph.preheader.2.i:                             ; preds = %.preheader973.2.i
  %wide.trip.count.2.i240 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %bb.cm, %.lr.ph.preheader.2.i
  %indvars.iv.2.i241 = phi i64 [ 2, %.lr.ph.preheader.2.i ], [ %indvars.iv.next.2.i242, %bb.cm ] ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv.2.i241
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !21
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv.2.i241
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !21
  %i.wx = icmp eq i8 %i.wu, %i.ww
  br i1 %i.wx, label %bb.cm, label %.critedge.2.loopexit.split.loop.exit1248.i

bb.cm:                                            ; preds = %.lr.ph.2.i
  %indvars.iv.next.2.i242 = add nuw nsw i64 %indvars.iv.2.i241, 1 ; 2 uses
  %exitcond.2.not.i243 = icmp eq i64 %indvars.iv.next.2.i242, %wide.trip.count.2.i240
  br i1 %exitcond.2.not.i243, label %.critedge.2.i, label %.lr.ph.2.i, !llvm.loop !153

.critedge.2.loopexit.split.loop.exit1248.i:       ; preds = %.lr.ph.2.i
  %i.wy = trunc nuw nsw i64 %indvars.iv.2.i241 to i32
  br label %.critedge.2.i

.critedge.2.i:                                    ; preds = %bb.cm, %.critedge.2.loopexit.split.loop.exit1248.i, %.preheader973.2.i
  %.0730.lcssa.2.i = phi i32 [ 2, %.preheader973.2.i ], [ %i.wy, %.critedge.2.loopexit.split.loop.exit1248.i ], [ %umax.i231, %bb.cm ] ; 3 uses
  store i32 %.0730.lcssa.2.i, ptr %i.eb, align 8, !tbaa !4
  %i.wz = zext nneg i32 %.2699.1.i to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !4
  %i.xc = icmp ugt i32 %.0730.lcssa.2.i, %i.xb
  %spec.select.2.i = select i1 %i.xc, i32 2, i32 %.2699.1.i
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge.2.i, %bb.cl
  %i.xd = phi i32 [ 0, %bb.cl ], [ %.0730.lcssa.2.i, %.critedge.2.i ] ; 2 uses
  %.2699.2.i = phi i32 [ %.2699.1.i, %bb.cl ], [ %spec.select.2.i, %.critedge.2.i ] ; 3 uses
  %i.xe = load i32, ptr %i.du, align 4, !tbaa !4
  %i.xf = add i32 %i.xe, 1
  %i.xg = zext i32 %i.xf to i64
  %i.xh = sub nsw i64 0, %i.xg
  %i.xi = getelementptr inbounds i8, ptr %i.vb, i64 %i.xh ; 3 uses
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !21
  %.not830.3.i = icmp eq i8 %i.vc, %i.xj
  br i1 %.not830.3.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.xk = load i8, ptr %i.va, align 1, !tbaa !21
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !21
  %.not831.3.i = icmp eq i8 %i.xk, %i.xm
  br i1 %.not831.3.i, label %.preheader973.3.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  store i32 0, ptr %i.ec, align 4, !tbaa !4
  br label %bb.cr

.preheader973.3.i:                                ; preds = %bb.co
  br i1 %.not1060.i, label %.critedge.3.i, label %.lr.ph.preheader.3.i

.lr.ph.preheader.3.i:                             ; preds = %.preheader973.3.i
  %wide.trip.count.3.i236 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %bb.cq, %.lr.ph.preheader.3.i
  %indvars.iv.3.i237 = phi i64 [ 2, %.lr.ph.preheader.3.i ], [ %indvars.iv.next.3.i238, %bb.cq ] ; 4 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv.3.i237
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !21
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xi, i64 %indvars.iv.3.i237
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !21
  %i.xr = icmp eq i8 %i.xo, %i.xq
  br i1 %i.xr, label %bb.cq, label %.critedge.3.loopexit.split.loop.exit1250.i

bb.cq:                                            ; preds = %.lr.ph.3.i
  %indvars.iv.next.3.i238 = add nuw nsw i64 %indvars.iv.3.i237, 1 ; 2 uses
  %exitcond.3.not.i239 = icmp eq i64 %indvars.iv.next.3.i238, %wide.trip.count.3.i236
  br i1 %exitcond.3.not.i239, label %.critedge.3.i, label %.lr.ph.3.i, !llvm.loop !153

.critedge.3.loopexit.split.loop.exit1250.i:       ; preds = %.lr.ph.3.i
  %i.xs = trunc nuw nsw i64 %indvars.iv.3.i237 to i32
  br label %.critedge.3.i

.critedge.3.i:                                    ; preds = %bb.cq, %.critedge.3.loopexit.split.loop.exit1250.i, %.preheader973.3.i
  %.0730.lcssa.3.i = phi i32 [ 2, %.preheader973.3.i ], [ %i.xs, %.critedge.3.loopexit.split.loop.exit1250.i ], [ %umax.i231, %bb.cq ] ; 3 uses
  store i32 %.0730.lcssa.3.i, ptr %i.ec, align 4, !tbaa !4
  %i.xt = zext nneg i32 %.2699.2.i to i64
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !4
  %i.xw = icmp ugt i32 %.0730.lcssa.3.i, %i.xv
  %spec.select.3.i = select i1 %i.xw, i32 3, i32 %.2699.2.i
  br label %bb.cr

bb.cr:                                            ; preds = %.critedge.3.i, %bb.cp
  %i.xx = phi i32 [ 0, %bb.cp ], [ %.0730.lcssa.3.i, %.critedge.3.i ] ; 2 uses
  %.2699.3.i = phi i32 [ %.2699.2.i, %bb.cp ], [ %spec.select.3.i, %.critedge.3.i ] ; 3 uses
  %i.xy = zext nneg i32 %.2699.3.i to i64
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !4  ; 5 uses
  %i.yb = load i32, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  %.not806.i = icmp ult i32 %i.ya, %i.yb
  br i1 %.not806.i, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yc = add i32 %i.ya, -1                       ; 3 uses
  %.not.i841.i = icmp eq i32 %i.yc, 0
  br i1 %.not.i841.i, label %GetOptimum.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.yd = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.ye = add i32 %i.yd, %i.yc
  store i32 %i.ye, ptr %i.dj, align 4, !tbaa !89
  %i.yf = load ptr, ptr %i.dw, align 8, !tbaa !147
  %i.yg = load ptr, ptr %i.df, align 8, !tbaa !116
  tail call void %i.yf(ptr noundef %i.yg, i32 noundef %i.yc) #14, !inline_history !154
  br label %GetOptimum.exit

bb.cu:                                            ; preds = %bb.cr
  %.not807.i = icmp ult i32 %.0696.i, %i.yb
  br i1 %.not807.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yh = add i32 %.0901.i, -1
  %i.yi = zext i32 %i.yh to i64
end_hunk_0
begin_hunk_1_@LzmaEnc_CodeOneBlock:bb.a
  br label %bb.df

bb.df:                                            ; preds = %bb.dh, %GetPureRepPrice.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dh ], [ %i.adb, %GetPureRepPrice.exit.i ] ; 3 uses
  %i.adc = getelementptr [4 x i8], ptr %i.acl, i64 %indvars.iv
  %i.add = getelementptr i8, ptr %i.adc, i64 -8
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !4
  %i.adf = add i32 %i.ada, %i.ade                 ; 2 uses
  %i.adg = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv ; 5 uses
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !157
  %i.adi = icmp ult i32 %i.adf, %i.adh
  br i1 %i.adi, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 %i.adf, ptr %i.adg, align 4, !tbaa !157
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 24
  store i32 0, ptr %i.adj, align 4, !tbaa !148
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 28
  store i32 0, ptr %i.adk, align 4, !tbaa !150
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  store i32 0, ptr %i.adl, align 4, !tbaa !158
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.adm = and i64 %indvars.iv.next, 4294967294
  %.not562 = icmp eq i64 %i.adm, 0
  br i1 %.not562, label %.loopexit970.i, label %bb.df, !llvm.loop !162

.loopexit970.i:                                   ; preds = %bb.dh, %.preheader971.i
  %i.adn = icmp ult i32 %i.wj, 2
  br i1 %i.adn, label %.loopexit970.1.i, label %GetPureRepPrice.exit.1.i

GetPureRepPrice.exit.1.i:                         ; preds = %.loopexit970.i
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.zq
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !23
  %i.adq = lshr i16 %i.adp, 4
  %i.adr = zext nneg i16 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !4
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.zq
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !23
  %i.adw = lshr i16 %i.adv, 4
  %i.adx = xor i16 %i.adw, 127
  %i.ady = zext nneg i16 %i.adx to i64
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ady
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !4
  %i.aeb = add i32 %i.adt, %i.abe
  %i.aec = add i32 %i.aeb, %i.aea
  %i.aed = zext i32 %i.wj to i64
  br label %bb.di

bb.di:                                            ; preds = %bb.dk, %GetPureRepPrice.exit.1.i
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %bb.dk ], [ %i.aed, %GetPureRepPrice.exit.1.i ] ; 3 uses
  %i.aee = getelementptr [4 x i8], ptr %i.acl, i64 %indvars.iv431
  %i.aef = getelementptr i8, ptr %i.aee, i64 -8
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !4
  %i.aeh = add i32 %i.aec, %i.aeg                 ; 2 uses
  %i.aei = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv431 ; 5 uses
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !157
  %i.aek = icmp ult i32 %i.aeh, %i.aej
  br i1 %i.aek, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 %i.aeh, ptr %i.aei, align 4, !tbaa !157
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 24
  store i32 0, ptr %i.ael, align 4, !tbaa !148
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aei, i64 28
  store i32 1, ptr %i.aem, align 4, !tbaa !150
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  store i32 0, ptr %i.aen, align 4, !tbaa !158
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %indvars.iv.next432 = add nsw i64 %indvars.iv431, -1 ; 2 uses
  %i.aeo = and i64 %indvars.iv.next432, 4294967294
  %.not563 = icmp eq i64 %i.aeo, 0
  br i1 %.not563, label %.loopexit970.1.i, label %bb.di, !llvm.loop !162

.loopexit970.1.i:                                 ; preds = %bb.dk, %.loopexit970.i
  %i.aep = icmp ult i32 %i.xd, 2
  br i1 %i.aep, label %.loopexit970.2.i, label %GetPureRepPrice.exit.2.i

GetPureRepPrice.exit.2.i:                         ; preds = %.loopexit970.1.i
  %i.aeq = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.zq
  %i.aer = load i16, ptr %i.aeq, align 2, !tbaa !23
  %i.aes = lshr i16 %i.aer, 4
  %i.aet = xor i16 %i.aes, 127
  %i.aeu = zext nneg i16 %i.aet to i64
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.aeu
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !4
  %i.aex = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.zq
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !23
  %i.aez = lshr i16 %i.aey, 4
  %i.afa = xor i16 %i.aez, 127
  %i.afb = zext nneg i16 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.afb
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !4
  %i.afe = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.zq
  %i.aff = load i16, ptr %i.afe, align 2, !tbaa !23
  %i.afg = lshr i16 %i.aff, 4
  %i.afh = zext nneg i16 %i.afg to i64
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.afh
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !4
  %i.afk = add i32 %i.aew, %i.abe
  %i.afl = add i32 %i.afk, %i.afd
  %i.afm = add i32 %i.afl, %i.afj
  %i.afn = zext i32 %i.xd to i64
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dn, %GetPureRepPrice.exit.2.i
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %bb.dn ], [ %i.afn, %GetPureRepPrice.exit.2.i ] ; 3 uses
  %i.afo = getelementptr [4 x i8], ptr %i.acl, i64 %indvars.iv435
  %i.afp = getelementptr i8, ptr %i.afo, i64 -8
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !4
  %i.afr = add i32 %i.afm, %i.afq                 ; 2 uses
  %i.afs = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv435 ; 5 uses
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !157
  %i.afu = icmp ult i32 %i.afr, %i.aft
  br i1 %i.afu, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 %i.afr, ptr %i.afs, align 4, !tbaa !157
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afs, i64 24
  store i32 0, ptr %i.afv, align 4, !tbaa !148
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afs, i64 28
  store i32 2, ptr %i.afw, align 4, !tbaa !150
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  store i32 0, ptr %i.afx, align 4, !tbaa !158
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %indvars.iv.next436 = add nsw i64 %indvars.iv435, -1 ; 2 uses
  %i.afy = and i64 %indvars.iv.next436, 4294967294
  %.not564 = icmp eq i64 %i.afy, 0
  br i1 %.not564, label %.loopexit970.2.i, label %bb.dl, !llvm.loop !162

.loopexit970.2.i:                                 ; preds = %bb.dn, %.loopexit970.1.i
  %i.afz = icmp ult i32 %i.xx, 2
  br i1 %i.afz, label %.loopexit970.3.i, label %GetPureRepPrice.exit.3.i

GetPureRepPrice.exit.3.i:                         ; preds = %.loopexit970.2.i
  %i.aga = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.zq
  %i.agb = load i16, ptr %i.aga, align 2, !tbaa !23
  %i.agc = lshr i16 %i.agb, 4
  %i.agd = xor i16 %i.agc, 127
  %i.age = zext nneg i16 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.age
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !4
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.zq
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !23
  %i.agj = lshr i16 %i.agi, 4
  %i.agk = xor i16 %i.agj, 127
  %i.agl = zext nneg i16 %i.agk to i64
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.agl
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !4
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.zq
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !23
  %i.agq = lshr i16 %i.agp, 4
  %i.agr = xor i16 %i.agq, 127
  %i.ags = zext nneg i16 %i.agr to i64
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ags
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !4
  %i.agv = add i32 %i.agg, %i.abe
  %i.agw = add i32 %i.agv, %i.agn
  %i.agx = add i32 %i.agw, %i.agu
  %i.agy = zext i32 %i.xx to i64
  br label %bb.do

bb.do:                                            ; preds = %bb.dq, %GetPureRepPrice.exit.3.i
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %bb.dq ], [ %i.agy, %GetPureRepPrice.exit.3.i ] ; 3 uses
  %i.agz = getelementptr [4 x i8], ptr %i.acl, i64 %indvars.iv439
  %i.aha = getelementptr i8, ptr %i.agz, i64 -8
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !4
  %i.ahc = add i32 %i.agx, %i.ahb                 ; 2 uses
  %i.ahd = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv439 ; 5 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !157
  %i.ahf = icmp ult i32 %i.ahc, %i.ahe
  br i1 %i.ahf, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i32 %i.ahc, ptr %i.ahd, align 4, !tbaa !157
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahd, i64 24
  store i32 0, ptr %i.ahg, align 4, !tbaa !148
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 28
  store i32 3, ptr %i.ahh, align 4, !tbaa !150
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store i32 0, ptr %i.ahi, align 4, !tbaa !158
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, -1 ; 2 uses
  %i.ahj = and i64 %indvars.iv.next440, 4294967294
  %.not565 = icmp eq i64 %i.ahj, 0
  br i1 %.not565, label %.loopexit970.3.i, label %bb.do, !llvm.loop !162

.loopexit970.3.i:                                 ; preds = %bb.dq, %.loopexit970.2.i
  %i.ahk = zext nneg i16 %i.aaz to i64
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ahk
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !4
  %i.ahn = add i32 %i.ahm, %i.aaw
  %4 = tail call i32 @llvm.umax.i32(i32 %storemerge1220.i, i32 1)
  %5 = add i32 %4, 1                              ; 3 uses
  %.not810.i = icmp ugt i32 %5, %.0696.i
  br i1 %.not810.i, label %.lr.ph1057.i.preheader, label %.preheader969.i

.lr.ph1057.i.preheader:                           ; preds = %bb.dw, %.loopexit970.3.i
  br label %.lr.ph1057.i

.preheader969.i:                                  ; preds = %.loopexit970.3.i, %.preheader969.i
  %.0732.i = phi i32 [ %i.ahs, %.preheader969.i ], [ 0, %.loopexit970.3.i ] ; 3 uses
  %i.aho = zext i32 %.0732.i to i64
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aho
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !4
  %i.ahr = icmp ugt i32 %5, %i.ahq
  %i.ahs = add i32 %.0732.i, 2
  br i1 %i.ahr, label %.preheader969.i, label %.preheader967.i, !llvm.loop !163

.preheader967.i:                                  ; preds = %.preheader969.i
  %i.aht = getelementptr inbounds nuw [1088 x i8], ptr %i.ev, i64 %i.zs
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dx, %.preheader967.i
  %.1733.i = phi i32 [ %.3735.i, %bb.dx ], [ %.0732.i, %.preheader967.i ] ; 4 uses
  %.1709.i = phi i32 [ %i.ajr, %bb.dx ], [ %5, %.preheader967.i ] ; 5 uses
  %i.ahu = add i32 %.1733.i, 1
  %i.ahv = zext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ahv
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !4 ; 6 uses
  %i.ahy = add i32 %.1709.i, -2                   ; 2 uses
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !4
  %i.aic = add i32 %i.ahn, %i.aib
  %i.aid = icmp ult i32 %.1709.i, 5
  %i.aie = select i1 %i.aid, i32 %i.ahy, i32 3    ; 2 uses
  %i.aif = icmp ult i32 %i.ahx, 128
  br i1 %i.aif, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aig = zext i32 %i.aie to i64
  %i.aih = getelementptr inbounds nuw [512 x i8], ptr %i.ez, i64 %i.aig
  %i.aii = zext nneg i32 %i.ahx to i64
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %i.aii
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !4
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %notsub.i = add i32 %i.ahx, -524288
  %isneg.inv.i = icmp slt i32 %notsub.i, 0
  %i.ail = select i1 %isneg.inv.i, i32 6, i32 18  ; 2 uses
  %i.aim = lshr i32 %i.ahx, %i.ail
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !21
  %i.aiq = zext i8 %i.aip to i32
  %i.air = shl nuw nsw i32 %i.ail, 1
  %i.ais = add nuw nsw i32 %i.air, %i.aiq
  %i.ait = and i32 %i.ahx, 15
  %i.aiu = zext nneg i32 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !4
  %i.aix = zext i32 %i.aie to i64
  %i.aiy = getelementptr inbounds nuw [256 x i8], ptr %i.ey, i64 %i.aix
  %i.aiz = zext nneg i32 %i.ais to i64
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %i.aiz
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !4
  %i.ajc = add i32 %i.ajb, %i.aiw
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn.i = phi i32 [ %i.aik, %bb.ds ], [ %i.ajc, %bb.dt ]
  %.0736.i = add i32 %i.aic, %.pn.i               ; 2 uses
  %i.ajd = zext i32 %.1709.i to i64
  %i.aje = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ajd ; 5 uses
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !157
  %i.ajg = icmp ult i32 %.0736.i, %i.ajf
  br i1 %i.ajg, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %.0736.i, ptr %i.aje, align 4, !tbaa !157
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aje, i64 24
  store i32 0, ptr %i.ajh, align 4, !tbaa !148
  %i.aji = add i32 %i.ahx, 4
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aje, i64 28
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !150
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aje, i64 8
  store i32 0, ptr %i.ajk, align 4, !tbaa !158
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.ajl = zext i32 %.1733.i to i64
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ajl
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !4
  %i.ajo = icmp ne i32 %.1709.i, %i.ajn           ; 2 uses
  %i.ajp = add i32 %.1733.i, 2                    ; 2 uses
  %i.ajq = icmp ne i32 %i.ajp, %.0901.i
  %.not960.i = select i1 %i.ajo, i1 true, i1 %i.ajq
  br i1 %.not960.i, label %bb.dx, label %.lr.ph1057.i.preheader

bb.dx:                                            ; preds = %bb.dw
  %.3735.i = select i1 %i.ajo, i32 %.1733.i, i32 %i.ajp
  %i.ajr = add i32 %.1709.i, 1
  br label %bb.dr

._crit_edge1058.i:                                ; preds = %.thread946.i
  %i.ajs = zext i32 %.16.i to i64
  %i.ajt = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ajs ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 24
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !148
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 28
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !150
  store i32 %.16.i, ptr %i.dx, align 8, !tbaa !87
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %._crit_edge1058.i
  %.046.i.i = phi i32 [ %i.ajx, %._crit_edge1058.i ], [ %i.akn, %bb.eb ]
  %.045.i.i = phi i32 [ %i.ajv, %._crit_edge1058.i ], [ %i.akm, %bb.eb ] ; 4 uses
  %.0.i845.i = phi i32 [ %.16.i, %._crit_edge1058.i ], [ %.045.i.i, %bb.eb ] ; 2 uses
  %i.ajy = zext i32 %.0.i845.i to i64
  %i.ajz = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ajy ; 3 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !158
  %.not.i846.i = icmp eq i32 %i.akb, 0
  %.phi.trans.insert.i.i = zext i32 %.045.i.i to i64
  %.phi.trans.insert49.i.i = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %.phi.trans.insert.i.i ; 4 uses
  %.phi.trans.insert50.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 28 ; 2 uses
  br i1 %.not.i846.i, label %._crit_edge.i.i, label %bb.dz

._crit_edge.i.i:                                  ; preds = %bb.dy
  %.pre.i.i = load i32, ptr %.phi.trans.insert50.i.i, align 4, !tbaa !150
  %.phi.trans.insert53.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 24
  %.pre54.i.i = load i32, ptr %.phi.trans.insert53.i.i, align 4, !tbaa !148
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.akc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 8
  store i32 0, ptr %i.akc, align 4, !tbaa !158
  %i.akd = add i32 %.045.i.i, -1                  ; 3 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajz, i64 12
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !164
  %.not47.i.i = icmp eq i32 %i.akf, 0
  br i1 %.not47.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.akg = zext i32 %i.akd to i64
  %i.akh = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.akg ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  store i32 0, ptr %i.aki, align 4, !tbaa !158
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akh, i64 24
  %i.akl = load <2 x i32>, ptr %i.akj, align 4, !tbaa !4
  store <2 x i32> %i.akl, ptr %i.akk, align 4, !tbaa !4
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %._crit_edge.i.i
  %i.akm = phi i32 [ %.pre54.i.i, %._crit_edge.i.i ], [ %i.akd, %bb.dz ], [ %i.akd, %bb.ea ]
  %i.akn = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ -1, %bb.dz ], [ -1, %bb.ea ]
  %i.ako = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 24
  store i32 %.046.i.i, ptr %.phi.trans.insert50.i.i, align 4, !tbaa !150
  store i32 %.0.i845.i, ptr %i.ako, align 4, !tbaa !148
  %.not48.i.i = icmp eq i32 %.045.i.i, 0
  br i1 %.not48.i.i, label %Backward.exit.i, label %bb.dy, !llvm.loop !165

Backward.exit.i:                                  ; preds = %bb.eb
  %i.akp = load i32, ptr %i.fc, align 4, !tbaa !150
  %i.akq = load i32, ptr %i.fd, align 4, !tbaa !148 ; 2 uses
  store i32 %i.akq, ptr %i.dy, align 4, !tbaa !88
  br label %GetOptimum.exit

.lr.ph1057.i:                                     ; preds = %.lr.ph1057.i.preheader, %.thread946.i
  %indvars.iv443 = phi i32 [ %indvars.iv.next444, %.thread946.i ], [ 4094, %.lr.ph1057.i.preheader ] ; 5 uses
  %i.akr = phi i32 [ %i.aps, %.thread946.i ], [ %i.yr, %.lr.ph1057.i.preheader ] ; 2 uses
  %i.aks = phi i32 [ %i.bqj, %.thread946.i ], [ 1, %.lr.ph1057.i.preheader ] ; 21 uses
  %.06941055.i = phi i32 [ %i.and, %.thread946.i ], [ %.2199, %.lr.ph1057.i.preheader ] ; 2 uses
  %.07051054.i = phi i32 [ %.16.i, %.thread946.i ], [ %..0696.i, %.lr.ph1057.i.preheader ] ; 7 uses
  %.07101050.i = phi i32 [ %i.aks, %.thread946.i ], [ 0, %.lr.ph1057.i.preheader ] ; 5 uses
  %i.akt = zext i32 %indvars.iv443 to i64         ; 2 uses
  %i.aku = load ptr, ptr %i.dd, align 8, !tbaa !121
  %i.akv = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.akw = tail call i32 %i.aku(ptr noundef %i.akv) #14, !inline_history !151
  store i32 %i.akw, ptr %i.dm, align 8, !tbaa !135
  %i.akx = load ptr, ptr %i.dn, align 8, !tbaa !136
  %i.aky = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.akz = tail call i32 %i.akx(ptr noundef %i.aky, ptr noundef nonnull %i.do) #14, !inline_history !151 ; 5 uses
  %.not.i847.i = icmp eq i32 %i.akz, 0
  br i1 %.not.i847.i, label %ReadMatchDistances.exit857.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph1057.i
  %i.ala = add i32 %i.akz, -2
  %i.alb = zext i32 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.alb
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !4 ; 5 uses
  %i.ale = load i32, ptr %i.dp, align 8, !tbaa !52
  %i.alf = icmp eq i32 %i.ald, %i.ale
  br i1 %i.alf, label %bb.ed, label %ReadMatchDistances.exit857.i

bb.ed:                                            ; preds = %bb.ec
  %i.alg = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.alh = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.ali = tail call ptr %i.alg(ptr noundef %i.alh) #14, !inline_history !151
  %i.alj = getelementptr inbounds i8, ptr %i.ali, i64 -1 ; 2 uses
  %i.alk = add i32 %i.akz, -1
  %i.all = zext i32 %i.alk to i64
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.all
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !4
  %i.alo = add i32 %i.aln, 1
  %i.alp = load i32, ptr %i.dm, align 8, !tbaa !135
  %spec.store.select.i849.i = tail call i32 @llvm.umin.i32(i32 %i.alp, i32 273) ; 3 uses
  %i.alq = zext i32 %i.alo to i64
  %i.alr = sub nsw i64 0, %i.alq
  %i.als = getelementptr inbounds i8, ptr %i.alj, i64 %i.alr
  %i.alt = icmp ult i32 %i.ald, %spec.store.select.i849.i
  br i1 %i.alt, label %.lr.ph.preheader.i850.i, label %ReadMatchDistances.exit857.i

.lr.ph.preheader.i850.i:                          ; preds = %bb.ed
  %i.alu = zext nneg i32 %i.ald to i64
  br label %.lr.ph.i851.i

.lr.ph.i851.i:                                    ; preds = %bb.ee, %.lr.ph.preheader.i850.i
  %indvars.iv.i852.i = phi i64 [ %i.alu, %.lr.ph.preheader.i850.i ], [ %indvars.iv.next.i854.i, %bb.ee ] ; 4 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alj, i64 %indvars.iv.i852.i
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !21
  %i.alx = getelementptr inbounds nuw i8, ptr %i.als, i64 %indvars.iv.i852.i
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !21
  %i.alz = icmp eq i8 %i.alw, %i.aly
  br i1 %i.alz, label %bb.ee, label %.critedge.loopexit.split.loop.exit.i853.i

bb.ee:                                            ; preds = %.lr.ph.i851.i
  %indvars.iv.next.i854.i = add nuw nsw i64 %indvars.iv.i852.i, 1 ; 2 uses
  %lftr.wideiv.i855.i = trunc i64 %indvars.iv.next.i854.i to i32
  %exitcond.not.i856.i = icmp eq i32 %spec.store.select.i849.i, %lftr.wideiv.i855.i
  br i1 %exitcond.not.i856.i, label %ReadMatchDistances.exit857.i, label %.lr.ph.i851.i, !llvm.loop !140

end_hunk_1
