Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacenc?download=true
inline.NumInlined: 79
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@aac_encode_frame:bb.a
  %indvars.iv799 = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next800, %bb.bc ] ; 4 uses
  %i.qp = trunc i64 %indvars.iv799 to i32
  %i.qq = add i32 %.2450719, %i.qp
  store i32 %i.qq, ptr %i.kk, align 8, !tbaa !162
  %i.qr = load i32, ptr %i.kl, align 4, !tbaa !69
  %.not528 = icmp eq i32 %i.qr, 0
  %.pre831 = load ptr, ptr %i.km, align 16, !tbaa !71 ; 3 uses
  br i1 %.not528, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qs = getelementptr inbounds nuw i8, ptr %.pre831, i64 56
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !203 ; 2 uses
  %.not529 = icmp eq ptr %i.qt, null
  br i1 %.not529, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qu = getelementptr inbounds nuw [46352 x i8], ptr %i.op, i64 %indvars.iv799
  call void %i.qt(ptr noundef nonnull %i.d, ptr noundef %0, ptr noundef nonnull %i.qu) #9
  %.pre830 = load ptr, ptr %i.km, align 16, !tbaa !71
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.qv = phi ptr [ %.pre830, %bb.bb ], [ %.pre831, %bb.ba ], [ %.pre831, %bb.az ]
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !204
  %i.qx = getelementptr inbounds nuw [46352 x i8], ptr %i.op, i64 %indvars.iv799
  %i.qy = load float, ptr %i.kh, align 16, !tbaa !56
  call void %i.qw(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.qx, float noundef %i.qy) #9
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 1 ; 2 uses
  %exitcond803.not = icmp eq i64 %indvars.iv.next800, %wide.trip.count797
  br i1 %exitcond803.not, label %bb.bd, label %bb.az, !llvm.loop !117

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.mv, label %bb.be, label %.loopexit.preheader

bb.be:                                            ; preds = %bb.bd
  %i.qz = load i32, ptr %i.mr, align 16, !tbaa !60
  %i.ra = getelementptr inbounds nuw i8, ptr %i.mr, i64 96
  %i.rb = load i32, ptr %i.ra, align 16, !tbaa !60
  %i.rc = icmp eq i32 %i.qz, %i.rb
  br i1 %i.rc, label %bb.bf, label %.loopexit.preheader

bb.bf:                                            ; preds = %bb.be
  %i.rd = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !164
  %i.rf = getelementptr inbounds nuw i8, ptr %i.mr, i64 108
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !164
  %i.rh = icmp eq i32 %i.re, %i.rg
  br i1 %i.rh, label %bb.bg, label %.loopexit.preheader

bb.bg:                                            ; preds = %bb.bf
  store i32 1, ptr %i.my, align 16, !tbaa !195
  %i.ri = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.rj = load i32, ptr %i.ri, align 16, !tbaa !165 ; 2 uses
  %i.rk = icmp sgt i32 %i.rj, 0
  br i1 %i.rk, label %.lr.ph714, label %.loopexit.preheader

.lr.ph714:                                        ; preds = %bb.bg
  %i.rl = getelementptr inbounds nuw i8, ptr %i.mr, i64 20
  %i.rm = getelementptr inbounds nuw i8, ptr %i.mr, i64 116
  %wide.trip.count807 = zext nneg i32 %i.rj to i64
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bi
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 1 ; 2 uses
  %exitcond808.not = icmp eq i64 %indvars.iv.next805, %wide.trip.count807
  br i1 %exitcond808.not, label %.loopexit.preheader, label %bb.bi, !llvm.loop !118

bb.bi:                                            ; preds = %.lr.ph714, %bb.bh
  %indvars.iv804 = phi i64 [ 0, %.lr.ph714 ], [ %indvars.iv.next805, %bb.bh ] ; 3 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv804
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !60
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %indvars.iv804
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !60
  %.not512 = icmp eq i32 %i.ro, %i.rq
  br i1 %.not512, label %bb.bh, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.my, align 16, !tbaa !195
  br label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %bb.bh, %bb.bg, %bb.bj, %bb.bf, %bb.be, %bb.bd
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %bb.bp
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %bb.bp ], [ 0, %.loopexit.preheader ] ; 3 uses
  %.2437716 = phi i32 [ %spec.select, %bb.bp ], [ %.1436723, %.loopexit.preheader ]
  %i.rr = getelementptr inbounds nuw [46352 x i8], ptr %i.op, i64 %indvars.iv809 ; 4 uses
  %i.rs = trunc i64 %indvars.iv809 to i32
  %i.rt = add i32 %.2450719, %i.rs
  store i32 %i.rt, ptr %i.kk, align 8, !tbaa !162
  %i.ru = load i32, ptr %i.kn, align 16, !tbaa !205
  %.not521 = icmp eq i32 %i.ru, 0
  br i1 %.not521, label %.thread622, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  %i.rv = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 64
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !206 ; 2 uses
  %.not522 = icmp eq ptr %i.rx, null
  br i1 %.not522, label %.thread919, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void %i.rx(ptr noundef nonnull %i.d, ptr noundef nonnull %i.rr) #9
  %.pr.pre = load i32, ptr %i.kn, align 16, !tbaa !205
  %i.ry = icmp eq i32 %.pr.pre, 0
  br i1 %i.ry, label %.thread622, label %.thread919

.thread919:                                       ; preds = %bb.bk, %bb.bl
  %i.rz = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !207 ; 2 uses
  %.not524 = icmp eq ptr %i.sb, null
  br i1 %.not524, label %.thread622, label %bb.bm

bb.bm:                                            ; preds = %.thread919
  call void %i.sb(ptr noundef nonnull %i.d, ptr noundef nonnull %i.rr) #9
  br label %.thread622

.thread622:                                       ; preds = %.loopexit, %bb.bm, %.thread919, %bb.bl
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rr, i64 64
  %i.sd = load i32, ptr %i.sc, align 16, !tbaa !208
  %.not525 = icmp eq i32 %i.sd, 0
  %spec.select = select i1 %.not525, i32 %.2437716, i32 1 ; 3 uses
  %i.se = load i32, ptr %i.kl, align 4, !tbaa !69
  %.not526 = icmp eq i32 %i.se, 0
  br i1 %.not526, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %.thread622
  %i.sf = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 48
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !209 ; 2 uses
  %.not527 = icmp eq ptr %i.sh, null
  br i1 %.not527, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void %i.sh(ptr noundef nonnull %i.d, ptr noundef %0, ptr noundef nonnull %i.rr) #9
  br label %bb.bp

bb.bp:                                            ; preds = %.thread622, %bb.bn, %bb.bo
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 1 ; 2 uses
  %exitcond813.not = icmp eq i64 %indvars.iv.next810, %wide.trip.count797
  br i1 %exitcond813.not, label %bb.bq, label %.loopexit, !llvm.loop !119

bb.bq:                                            ; preds = %bb.bp
  store i32 %.2450719, ptr %i.kk, align 8, !tbaa !162
  %i.si = load i32, ptr %i.ko, align 4, !tbaa !210
  %.not513 = icmp eq i32 %i.si, 0
  br i1 %.not513, label %apply_intensity_stereo.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sj = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 80
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !211 ; 2 uses
  %.not514 = icmp eq ptr %i.sl, null
  br i1 %.not514, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void %i.sl(ptr noundef nonnull %i.d, ptr noundef %0, ptr noundef nonnull %i.my) #9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.sm = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.sn = load i8, ptr %i.sm, align 8, !tbaa !212
  %.not515 = icmp eq i8 %i.sn, 0
  %spec.select533 = select i1 %.not515, i32 %.1440722, i32 1 ; 3 uses
  %i.so = load i32, ptr %i.my, align 16, !tbaa !195
  %.not.i552 = icmp eq i32 %i.so, 0
  br i1 %.not.i552, label %apply_intensity_stereo.exit, label %.preheader62.i

.preheader62.i:                                   ; preds = %bb.bt
  %i.sp = getelementptr inbounds nuw i8, ptr %i.my, i64 316
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !172 ; 2 uses
  %i.sr = icmp sgt i32 %i.sq, 0
  br i1 %i.sr, label %.preheader.lr.ph.i553, label %apply_intensity_stereo.exit

.preheader.lr.ph.i553:                            ; preds = %.preheader62.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.my, i64 286
  %i.st = getelementptr inbounds nuw i8, ptr %i.my, i64 312
  %i.su = getelementptr inbounds nuw i8, ptr %i.my, i64 7708
  %i.sv = getelementptr inbounds nuw i8, ptr %i.my, i64 52268
  %i.sw = getelementptr inbounds nuw i8, ptr %i.my, i64 304
  %i.sx = getelementptr inbounds nuw i8, ptr %i.my, i64 12832
  %i.sy = getelementptr inbounds nuw i8, ptr %i.my, i64 59184
  br label %.preheader.i554

.preheader.i554:                                  ; preds = %._crit_edge71.i, %.preheader.lr.ph.i553
  %.073.i = phi i32 [ 0, %.preheader.lr.ph.i553 ], [ %i.uo, %._crit_edge71.i ] ; 4 uses
  %i.sz = zext nneg i32 %.073.i to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sz ; 2 uses
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !61  ; 2 uses
  %.not75.i = icmp eq i8 %i.tb, 0
  br i1 %.not75.i, label %._crit_edge71.i, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.preheader.i554
  %i.tc = zext i8 %i.tb to i32
  %i.td = load i32, ptr %i.st, align 8, !tbaa !166 ; 2 uses
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.lr.ph68.us.preheader.i, label %._crit_edge71.i

.lr.ph68.us.preheader.i:                          ; preds = %.lr.ph70.i
  %i.tf = shl nuw nsw i32 %.073.i, 4
  %i.tg = zext nneg i32 %i.tf to i64
  %wide.trip.count.i555 = zext nneg i32 %i.td to i64
  %i.th = load ptr, ptr %i.sw, align 16, !tbaa !174
  br label %.lr.ph68.us.i

.lr.ph68.us.i:                                    ; preds = %._crit_edge.us.i, %.lr.ph68.us.preheader.i
  %.05769.us.i = phi i32 [ %i.uk, %._crit_edge.us.i ], [ 0, %.lr.ph68.us.preheader.i ] ; 2 uses
  %i.ti = add nuw nsw i32 %.05769.us.i, %.073.i
  %i.tj = shl nuw nsw i32 %i.ti, 7
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.us.i, %.lr.ph68.us.i
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph68.us.i ], [ %indvars.iv.next81.i, %.loopexit.us.i ] ; 3 uses
  %.05467.us.i = phi i32 [ %i.tj, %.lr.ph68.us.i ], [ %.1.us.i, %.loopexit.us.i ] ; 2 uses
  %i.tk = add nuw nsw i64 %indvars.iv80.i, %i.tg  ; 4 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.tk
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !77
  %i.tn = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.tk
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !61
  %.not60.us.i = icmp eq i8 %i.to, 0
  %i.tp = getelementptr inbounds nuw i8, ptr %i.th, i64 %indvars.iv80.i ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !61  ; 2 uses
  br i1 %.not60.us.i, label %.loopexit.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not76.i = icmp eq i8 %i.tq, 0
  br i1 %.not76.i, label %.loopexit.us.i, label %.lr.ph.us.i

bb.bw:                                            ; preds = %.lr.ph.us.i, %bb.bw
  %indvars.iv.i556 = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i557, %bb.bw ] ; 2 uses
  %i.tr = add nuw nsw i64 %indvars.iv.i556, %i.uj ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.tr ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !77
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.tr ; 2 uses
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !77
  %i.tw = call nsz float @llvm.fmuladd.f32(float %i.ui, float %i.tv, float %i.tt)
  %i.tx = fmul nsz float %i.tm, %i.tw
  store float %i.tx, ptr %i.ts, align 4, !tbaa !77
  store float 0.000000e+00, ptr %i.tu, align 4, !tbaa !77
  %indvars.iv.next.i557 = add nuw nsw i64 %indvars.iv.i556, 1 ; 2 uses
  %i.ty = load i8, ptr %i.tp, align 1, !tbaa !61  ; 2 uses
  %i.tz = zext i8 %i.ty to i64
  %i.ua = icmp samesign ult i64 %indvars.iv.next.i557, %i.tz
  br i1 %i.ua, label %bb.bw, label %.loopexit.us.i, !llvm.loop !120

.loopexit.us.i:                                   ; preds = %bb.bw, %bb.bv, %bb.bu
  %.pn.us.in.i = phi i8 [ %i.tq, %bb.bu ], [ 0, %bb.bv ], [ %i.ty, %bb.bw ]
  %.pn.us.i = zext i8 %.pn.us.in.i to i32
  %.1.us.i = add nuw nsw i32 %.05467.us.i, %.pn.us.i
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond.not.i558 = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count.i555
  br i1 %exitcond.not.i558, label %._crit_edge.us.i, label %bb.bu, !llvm.loop !121

.lr.ph.us.i:                                      ; preds = %bb.bv
  %i.ub = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.tk
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !61
  %.not61.us.i = icmp eq i8 %i.uc, 0
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.tk
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !60
  %i.uf = shl i32 %i.ue, 1                        ; 2 uses
  %i.ug = add i32 %i.uf, -29
  %i.uh = sub i32 29, %i.uf
  %spec.select.us.i = select i1 %.not61.us.i, i32 %i.ug, i32 %i.uh
  %i.ui = sitofp nsz i32 %spec.select.us.i to float
  %i.uj = zext nneg i32 %.05467.us.i to i64
  br label %bb.bw

._crit_edge.us.i:                                 ; preds = %.loopexit.us.i
  %i.uk = add nuw nsw i32 %.05769.us.i, 1         ; 2 uses
  %i.ul = load i8, ptr %i.ta, align 1, !tbaa !61
  %i.um = zext i8 %i.ul to i32                    ; 2 uses
  %i.un = icmp samesign ult i32 %i.uk, %i.um
  br i1 %i.un, label %.lr.ph68.us.i, label %._crit_edge71.i, !llvm.loop !122

._crit_edge71.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph70.i, %.preheader.i554
  %.lcssa64.i = phi i32 [ 0, %.preheader.i554 ], [ %i.tc, %.lr.ph70.i ], [ %i.um, %._crit_edge.us.i ]
  %i.uo = add nuw nsw i32 %.lcssa64.i, %.073.i    ; 2 uses
  %i.up = icmp slt i32 %i.uo, %i.sq
  br i1 %i.up, label %.preheader.i554, label %apply_intensity_stereo.exit, !llvm.loop !123

apply_intensity_stereo.exit:                      ; preds = %._crit_edge71.i, %.preheader62.i, %bb.bt, %bb.bq
  %.3442 = phi i32 [ %.1440722, %bb.bq ], [ %spec.select533, %bb.bt ], [ %spec.select533, %.preheader62.i ], [ %spec.select533, %._crit_edge71.i ] ; 2 uses
  %i.uq = load i32, ptr %i.kp, align 8, !tbaa !72
  switch i32 %i.uq, label %bb.by [
    i32 0, label %apply_mid_side_stereo.exit.preheader
    i32 -1, label %bb.bx
  ]

bb.bx:                                            ; preds = %apply_intensity_stereo.exit
  %i.ur = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 72
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !213 ; 2 uses
  %.not517 = icmp eq ptr %i.ut, null
  br i1 %.not517, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %apply_intensity_stereo.exit, %bb.bx
  %i.uu = load i32, ptr %i.my, align 16, !tbaa !195
  %.not518 = icmp eq i32 %i.uu, 0
  br i1 %.not518, label %apply_mid_side_stereo.exit.preheader, label %.thread627

.thread627:                                       ; preds = %bb.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.na, i8 1, i64 128, i1 false)
  br label %.preheader64.i

bb.bz:                                            ; preds = %bb.bx
  call void %i.ut(ptr noundef nonnull %i.d, ptr noundef nonnull %i.my) #9
  %.pr624 = load i32, ptr %i.my, align 16, !tbaa !195
  %.not.i559 = icmp eq i32 %.pr624, 0
  br i1 %.not.i559, label %apply_mid_side_stereo.exit.preheader, label %.preheader64.i

.preheader64.i:                                   ; preds = %.thread627, %bb.bz
  %i.uv = getelementptr inbounds nuw i8, ptr %i.my, i64 316
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !172 ; 2 uses
  %i.ux = icmp sgt i32 %i.uw, 0
  br i1 %i.ux, label %.preheader63.lr.ph.i, label %apply_mid_side_stereo.exit.preheader

.preheader63.lr.ph.i:                             ; preds = %.preheader64.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.my, i64 286
  %i.uz = getelementptr inbounds nuw i8, ptr %i.my, i64 312
  %i.va = getelementptr inbounds nuw i8, ptr %i.my, i64 5916
  %i.vb = getelementptr inbounds nuw i8, ptr %i.my, i64 52268
  %i.vc = getelementptr inbounds nuw i8, ptr %i.my, i64 304 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.my, i64 12832
  %i.ve = getelementptr inbounds nuw i8, ptr %i.my, i64 59184
  br label %.preheader63.i

.preheader63.i:                                   ; preds = %._crit_edge73.i, %.preheader63.lr.ph.i
  %.075.i = phi i32 [ 0, %.preheader63.lr.ph.i ], [ %i.ww, %._crit_edge73.i ] ; 4 uses
  %i.vf = zext nneg i32 %.075.i to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.vf ; 2 uses
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !61  ; 2 uses
  %.not77.i = icmp eq i8 %i.vh, 0
  br i1 %.not77.i, label %._crit_edge73.i, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.preheader63.i
  %i.vi = zext i8 %i.vh to i32
  %i.vj = load i32, ptr %i.uz, align 8, !tbaa !166 ; 2 uses
  %i.vk = icmp sgt i32 %i.vj, 0
  br i1 %i.vk, label %.lr.ph70.us.preheader.i, label %._crit_edge73.i

.lr.ph70.us.preheader.i:                          ; preds = %.lr.ph72.i
  %i.vl = shl nuw nsw i32 %.075.i, 4
  %i.vm = zext nneg i32 %i.vl to i64
  %wide.trip.count.i560 = zext nneg i32 %i.vj to i64
  br label %.lr.ph70.us.i

.lr.ph70.us.i:                                    ; preds = %._crit_edge.us.i567, %.lr.ph70.us.preheader.i
  %.05571.us.i = phi i32 [ %i.ws, %._crit_edge.us.i567 ], [ 0, %.lr.ph70.us.preheader.i ] ; 2 uses
  %i.vn = add nuw nsw i32 %.05571.us.i, %.075.i
  %i.vo = shl nuw nsw i32 %i.vn, 7
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit.us.i562, %.lr.ph70.us.i
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph70.us.i ], [ %indvars.iv.next83.i, %.loopexit.us.i562 ] ; 4 uses
  %.05669.us.i = phi i32 [ %i.vo, %.lr.ph70.us.i ], [ %.1.us.i565, %.loopexit.us.i562 ] ; 2 uses
  %i.vp = add nuw nsw i64 %indvars.iv82.i, %i.vm  ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !61
  %.not61.us.i561 = icmp eq i8 %i.vr, 0
  br i1 %.not61.us.i561, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.vs = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.vp
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !61
  %.not62.us.i = icmp eq i8 %i.vt, 0
  br i1 %.not62.us.i, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.vp
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !60
  %i.vw = icmp ugt i32 %i.vv, 12
  br i1 %i.vw, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.vp
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !60
  %i.vz = icmp ugt i32 %i.vy, 12
  br i1 %i.vz, label %bb.ce, label %.preheader.us.i

.lr.ph.us.i568:                                   ; preds = %.lr.ph.us.preheader.i, %.lr.ph.us.i568
  %indvars.iv.i569 = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i570, %.lr.ph.us.i568 ] ; 2 uses
  %i.wa = add nuw nsw i64 %indvars.iv.i569, %i.wr ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.wa ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !77
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.wa ; 2 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !77 ; 2 uses
  %i.wf = fadd nsz float %i.wc, %i.we
  %i.wg = fmul nsz float %i.wf, 5.000000e-01      ; 2 uses
  %i.wh = fsub nsz float %i.wg, %i.we
  store float %i.wg, ptr %i.wb, align 4, !tbaa !77
  store float %i.wh, ptr %i.wd, align 4, !tbaa !77
  %indvars.iv.next.i570 = add nuw nsw i64 %indvars.iv.i569, 1 ; 2 uses
  %i.wi = load i8, ptr %i.wp, align 1, !tbaa !61  ; 2 uses
  %i.wj = zext i8 %i.wi to i64
  %i.wk = icmp samesign ult i64 %indvars.iv.next.i570, %i.wj
  br i1 %i.wk, label %.lr.ph.us.i568, label %.loopexit.us.i562, !llvm.loop !124

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %i.wl = load ptr, ptr %i.vc, align 16, !tbaa !174
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 %indvars.iv82.i
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !61
  br label %.loopexit.us.i562

.loopexit.us.i562:                                ; preds = %.lr.ph.us.i568, %.preheader.us.i, %bb.ce
  %.pn.us.in.i563 = phi i8 [ %i.wn, %bb.ce ], [ 0, %.preheader.us.i ], [ %i.wi, %.lr.ph.us.i568 ]
  %.pn.us.i564 = zext i8 %.pn.us.in.i563 to i32
  %.1.us.i565 = add nuw nsw i32 %.05669.us.i, %.pn.us.i564
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond.not.i566 = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count.i560
  br i1 %exitcond.not.i566, label %._crit_edge.us.i567, label %bb.ca, !llvm.loop !125

.preheader.us.i:                                  ; preds = %bb.cd
  %i.wo = load ptr, ptr %i.vc, align 16, !tbaa !174
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv82.i ; 2 uses
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !61
  %.not78.i = icmp eq i8 %i.wq, 0
  br i1 %.not78.i, label %.loopexit.us.i562, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %.preheader.us.i
  %i.wr = zext nneg i32 %.05669.us.i to i64
  br label %.lr.ph.us.i568

._crit_edge.us.i567:                              ; preds = %.loopexit.us.i562
  %i.ws = add nuw nsw i32 %.05571.us.i, 1         ; 2 uses
  %i.wt = load i8, ptr %i.vg, align 1, !tbaa !61
  %i.wu = zext i8 %i.wt to i32                    ; 2 uses
  %i.wv = icmp samesign ult i32 %i.ws, %i.wu
  br i1 %i.wv, label %.lr.ph70.us.i, label %._crit_edge73.i, !llvm.loop !126

._crit_edge73.i:                                  ; preds = %._crit_edge.us.i567, %.lr.ph72.i, %.preheader63.i
  %.lcssa66.i = phi i32 [ 0, %.preheader63.i ], [ %i.vi, %.lr.ph72.i ], [ %i.wu, %._crit_edge.us.i567 ]
  %i.ww = add nuw nsw i32 %.lcssa66.i, %.075.i    ; 2 uses
  %i.wx = icmp slt i32 %i.ww, %i.uw
  br i1 %i.wx, label %.preheader63.i, label %apply_mid_side_stereo.exit.preheader, !llvm.loop !127

apply_mid_side_stereo.exit.preheader:             ; preds = %._crit_edge73.i, %bb.by, %.preheader64.i, %bb.bz, %apply_intensity_stereo.exit
  br label %apply_mid_side_stereo.exit

apply_mid_side_stereo.exit:                       ; preds = %apply_mid_side_stereo.exit.preheader, %._crit_edge109.i
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %._crit_edge109.i ], [ 0, %apply_mid_side_stereo.exit.preheader ] ; 2 uses
  %i.wy = getelementptr inbounds nuw [46352 x i8], ptr %i.op, i64 %indvars.iv135.i ; 8 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 5604
  store i32 0, ptr %i.wz, align 4, !tbaa !214
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 44
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !172 ; 3 uses
  %i.xc = icmp sgt i32 %i.xb, 0
  br i1 %i.xc, label %.lr.ph100.i, label %._crit_edge.thread151.i

._crit_edge.thread151.i:                          ; preds = %apply_mid_side_stereo.exit
  store i8 0, ptr %i.wy, align 8, !tbaa !79
  br label %._crit_edge109.i

.lr.ph100.i:                                      ; preds = %apply_mid_side_stereo.exit
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 40
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !166 ; 2 uses
  %i.xf = icmp sgt i32 %i.xe, 0
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wy, i64 14 ; 3 uses
  br i1 %i.xf, label %.lr.ph.us.preheader.i580, label %.preheader93.lr.ph.i

.lr.ph.us.preheader.i580:                         ; preds = %.lr.ph100.i
  %i.xh = zext nneg i32 %i.xe to i64
  br label %.lr.ph.us.i581

.lr.ph.us.i581:                                   ; preds = %.critedge.us.i, %.lr.ph.us.preheader.i580
  %.07699.us.i = phi i32 [ %i.xo, %.critedge.us.i ], [ 0, %.lr.ph.us.preheader.i580 ]
  %.08098.us.i = phi i32 [ %i.xt, %.critedge.us.i ], [ 0, %.lr.ph.us.preheader.i580 ] ; 3 uses
  %i.xi = shl nuw nsw i32 %.08098.us.i, 4
  %i.xj = zext nneg i32 %i.xi to i64
  %invariant.gep.i = getelementptr i8, ptr %i.wy, i64 %i.xj
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cg, %.lr.ph.us.i581
  %indvars.iv.i582 = phi i64 [ %i.xh, %.lr.ph.us.i581 ], [ %indvars.iv.next.i583, %bb.cg ] ; 4 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i582
  %i.xk = getelementptr i8, ptr %gep.i, i64 7179
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !61
  %.not91.us.i = icmp eq i8 %i.xl, 0
  br i1 %.not91.us.i, label %.critedge.us.split.loop.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %indvars.iv.next.i583 = add nsw i64 %indvars.iv.i582, -1
  %i.xm = icmp sgt i64 %indvars.iv.i582, 1
  br i1 %i.xm, label %bb.cf, label %.critedge.us.i, !llvm.loop !128

.critedge.us.split.loop.exit.i:                   ; preds = %bb.cf
  %i.xn = trunc nuw nsw i64 %indvars.iv.i582 to i32
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.cg, %.critedge.us.split.loop.exit.i
  %.075.lcssa.us.i = phi i32 [ %i.xn, %.critedge.us.split.loop.exit.i ], [ 0, %bb.cg ]
  %i.xo = call i32 @llvm.smax.i32(i32 %.07699.us.i, i32 %.075.lcssa.us.i) ; 2 uses
  %i.xp = zext nneg i32 %.08098.us.i to i64
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xp
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !61
  %i.xs = zext i8 %i.xr to i32
  %i.xt = add nuw nsw i32 %.08098.us.i, %i.xs     ; 2 uses
  %i.xu = icmp slt i32 %i.xt, %i.xb
  br i1 %i.xu, label %.lr.ph.us.i581, label %._crit_edge.i584, !llvm.loop !129

._crit_edge.i584:                                 ; preds = %.critedge.us.i
  %i.xv = trunc i32 %i.xo to i8
  br label %.preheader93.lr.ph.i

.preheader93.lr.ph.i:                             ; preds = %.lr.ph100.i, %._crit_edge.i584
  %.076.lcssa150.i = phi i8 [ %i.xv, %._crit_edge.i584 ], [ 0, %.lr.ph100.i ] ; 5 uses
  store i8 %.076.lcssa150.i, ptr %i.wy, align 8, !tbaa !79
  %i.xw = getelementptr i8, ptr %i.wy, i64 7180   ; 2 uses
  %i.xx = call i8 @llvm.umax.i8(i8 %.076.lcssa150.i, i8 1)
  %umax = zext i8 %i.xx to i64                    ; 2 uses
  br label %.preheader93.i

.preheader93.i:                                   ; preds = %._crit_edge107.i, %.preheader93.lr.ph.i
  %i.xy = phi i8 [ %.076.lcssa150.i, %.preheader93.lr.ph.i ], [ %9, %._crit_edge107.i ]
  %.181108.i = phi i32 [ 0, %.preheader93.lr.ph.i ], [ %i.yl, %._crit_edge107.i ] ; 4 uses
  %.not123.i = icmp eq i8 %i.xy, 0
  %.pre.i = zext nneg i32 %.181108.i to i64       ; 3 uses
  br i1 %.not123.i, label %._crit_edge107.i, label %.preheader92.lr.ph.i

.preheader92.lr.ph.i:                             ; preds = %.preheader93.i
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.pre.i ; 2 uses
  %i.ya = shl i32 %.181108.i, 4
  %i.yb = zext i32 %i.ya to i64
  %invariant.gep159.i = getelementptr i8, ptr %i.xw, i64 %i.yb ; 2 uses
  %6 = load i8, ptr %i.xz, align 1, !tbaa !61     ; 2 uses
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %.preheader92.i.us.preheader, label %.preheader92.i

.preheader92.i.us.preheader:                      ; preds = %.preheader92.lr.ph.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %invariant.gep159.i, i8 1, i64 %umax, i1 false), !tbaa !61
  br label %._crit_edge107.i

.preheader92.ithread-pre-split:                   ; preds = %._crit_edge103.i
  %.pr = load i8, ptr %i.xz, align 1, !tbaa !61
  br label %.preheader92.i

.preheader92.i:                                   ; preds = %.preheader92.lr.ph.i, %.preheader92.ithread-pre-split
  %8 = phi i8 [ %.pr, %.preheader92.ithread-pre-split ], [ %6, %.preheader92.lr.ph.i ] ; 2 uses
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %.preheader92.ithread-pre-split ], [ 0, %.preheader92.lr.ph.i ] ; 3 uses
  %.not124.i = icmp eq i8 %8, 0
  br i1 %.not124.i, label %._crit_edge103.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader92.i
  %i.yc = zext i8 %8 to i32
  %i.yd = add nuw nsw i32 %.181108.i, %i.yc
  %i.ye = zext nneg i32 %i.yd to i64
  %invariant.gep157.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 %indvars.iv132.i
  br label %.lr.ph.i579

bb.ch:                                            ; preds = %.lr.ph.i579
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.yf = icmp samesign ult i64 %indvars.iv.next130.i, %i.ye
  br i1 %i.yf, label %.lr.ph.i579, label %._crit_edge103.i, !llvm.loop !130

.lr.ph.i579:                                      ; preds = %bb.ch, %.lr.ph.preheader.i
  %indvars.iv129.i = phi i64 [ %.pre.i, %.lr.ph.preheader.i ], [ %indvars.iv.next130.i, %bb.ch ] ; 2 uses
  %i.yg = shl nuw nsw i64 %indvars.iv129.i, 4
  %gep158.i = getelementptr inbounds nuw i8, ptr %invariant.gep157.i, i64 %i.yg
  %i.yh = load i8, ptr %gep158.i, align 1, !tbaa !61
  %.not90.i = icmp eq i8 %i.yh, 0
  br i1 %.not90.i, label %._crit_edge103.i, label %bb.ch

._crit_edge103.i:                                 ; preds = %.lr.ph.i579, %bb.ch, %.preheader92.i
  %.083.i = phi i8 [ 1, %.preheader92.i ], [ 1, %bb.ch ], [ 0, %.lr.ph.i579 ]
  %gep160.i = getelementptr inbounds nuw i8, ptr %invariant.gep159.i, i64 %indvars.iv132.i
  store i8 %.083.i, ptr %gep160.i, align 1, !tbaa !61
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond814.not = icmp eq i64 %indvars.iv.next133.i, %umax
  br i1 %exitcond814.not, label %._crit_edge107.i, label %.preheader92.ithread-pre-split, !llvm.loop !131

._crit_edge107.i:                                 ; preds = %._crit_edge103.i, %.preheader92.i.us.preheader, %.preheader93.i
  %9 = phi i8 [ 0, %.preheader93.i ], [ %.076.lcssa150.i, %.preheader92.i.us.preheader ], [ %.076.lcssa150.i, %._crit_edge103.i ]
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.pre.i
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !61
  %i.yk = zext i8 %i.yj to i32
  %i.yl = add nuw nsw i32 %.181108.i, %i.yk       ; 2 uses
  %i.ym = icmp slt i32 %i.yl, %i.xb
  br i1 %i.ym, label %.preheader93.i, label %._crit_edge109.i, !llvm.loop !132

._crit_edge109.i:                                 ; preds = %._crit_edge107.i, %._crit_edge.thread151.i
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond.not.i572 = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count797
  br i1 %exitcond.not.i572, label %bb.ci, label %apply_mid_side_stereo.exit, !llvm.loop !133

bb.ci:                                            ; preds = %._crit_edge109.i
  br i1 %i.mv, label %bb.cj, label %adjust_frame_information.exit.thread629

bb.cj:                                            ; preds = %bb.ci
  %i.yn = load i32, ptr %i.my, align 16, !tbaa !195 ; 5 uses
  %.not.i573 = icmp eq i32 %i.yn, 0
  br i1 %.not.i573, label %adjust_frame_information.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.yo = getelementptr inbounds nuw i8, ptr %i.my, i64 46624 ; 2 uses
  %i.yp = load i8, ptr %i.op, align 16, !tbaa !79
  %i.yq = load i8, ptr %i.yo, align 16, !tbaa !79
  %..i574 = call i8 @llvm.umax.i8(i8 %i.yp, i8 %i.yq) ; 6 uses
  store i8 %..i574, ptr %i.op, align 16, !tbaa !79
  store i8 %..i574, ptr %i.yo, align 16, !tbaa !79
  %i.yr = getelementptr inbounds nuw i8, ptr %i.my, i64 316
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !172 ; 3 uses
  %i.yt = icmp slt i32 %i.ys, 1
  %.not125.i = icmp eq i8 %..i574, 0
  %or.cond635 = select i1 %i.yt, i1 true, i1 %.not125.i
  br i1 %or.cond635, label %adjust_frame_information.exit.thread.sink.split, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.ck
  %i.yu = shl nuw nsw i32 %i.ys, 4
  %i.yv = zext nneg i32 %i.yu to i64
  %wide.trip.count141.i = zext i8 %..i574 to i64  ; 3 uses
  %min.iters.check = icmp ult i8 %..i574, 8
  %n.vec = and i64 %wide.trip.count141.i, 248     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count141.i
  br label %.preheader.us.i577

.preheader.us.i577:                               ; preds = %._crit_edge114.us.i, %.preheader.us.preheader.i
  %indvars.iv143.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next144.i, %._crit_edge114.us.i ] ; 2 uses
  %.0116.us.i = phi i32 [ 0, %.preheader.us.preheader.i ], [ %spec.select.us.i578.lcssa, %._crit_edge114.us.i ] ; 2 uses
  %invariant.gep161.i = getelementptr inbounds nuw i8, ptr %i.na, i64 %indvars.iv143.i ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i577
  %i.yw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0116.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.yw, %vector.ph ], [ %i.zd, %vector.body ]
  %vec.phi989 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ze, %vector.body ]
  %i.yx = getelementptr inbounds nuw i8, ptr %invariant.gep161.i, i64 %index ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %wide.load = load <4 x i8>, ptr %i.yx, align 1, !tbaa !61
  %wide.load990 = load <4 x i8>, ptr %i.yy, align 1, !tbaa !61
  %i.yz = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.za = icmp ne <4 x i8> %wide.load990, zeroinitializer
  %i.zb = zext <4 x i1> %i.yz to <4 x i32>
  %i.zc = zext <4 x i1> %i.za to <4 x i32>
  %i.zd = add <4 x i32> %vec.phi, %i.zb           ; 2 uses
  %i.ze = add <4 x i32> %vec.phi989, %i.zc        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zf = icmp eq i64 %index.next, %n.vec
  br i1 %i.zf, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ze, %i.zd
  %i.zg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge114.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i577, %middle.block
  %indvars.iv138.i.ph = phi i64 [ 0, %.preheader.us.i577 ], [ %n.vec, %middle.block ]
  %.1112.us.i.ph = phi i32 [ %.0116.us.i, %.preheader.us.i577 ], [ %i.zg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %scalar.ph ], [ %indvars.iv138.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1112.us.i = phi i32 [ %spec.select.us.i578, %scalar.ph ], [ %.1112.us.i.ph, %scalar.ph.preheader ]
  %gep162.i = getelementptr inbounds nuw i8, ptr %invariant.gep161.i, i64 %indvars.iv138.i
  %i.zh = load i8, ptr %gep162.i, align 1, !tbaa !61
  %.not89.us.i = icmp ne i8 %i.zh, 0
  %i.zi = zext i1 %.not89.us.i to i32
  %spec.select.us.i578 = add nsw i32 %.1112.us.i, %i.zi ; 2 uses
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvars.iv.next139.i, %wide.trip.count141.i
  br i1 %exitcond142.not.i, label %._crit_edge114.us.i, label %scalar.ph, !llvm.loop !135

._crit_edge114.us.i:                              ; preds = %scalar.ph, %middle.block
  %spec.select.us.i578.lcssa = phi i32 [ %i.zg, %middle.block ], [ %spec.select.us.i578, %scalar.ph ] ; 3 uses
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 16 ; 2 uses
  %i.zj = icmp samesign ult i64 %indvars.iv.next144.i, %i.yv
  br i1 %i.zj, label %.preheader.us.i577, label %._crit_edge117.i, !llvm.loop !136

._crit_edge117.i:                                 ; preds = %._crit_edge114.us.i
  %i.zk = icmp eq i32 %spec.select.us.i578.lcssa, 0
  %i.zl = zext i8 %..i574 to i32
  %i.zm = mul nuw nsw i32 %i.ys, %i.zl
  %i.zn = icmp slt i32 %spec.select.us.i578.lcssa, %i.zm
  %i.zo = select i1 %i.zn, i32 1, i32 2
  %.sink.i575 = select i1 %i.zk, i32 0, i32 %i.zo
  br label %adjust_frame_information.exit.thread.sink.split

adjust_frame_information.exit.thread.sink.split:  ; preds = %bb.ck, %._crit_edge117.i
  %.sink.i575.sink = phi i32 [ %.sink.i575, %._crit_edge117.i ], [ 0, %bb.ck ]
  %i.zp = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  store i32 %.sink.i575.sink, ptr %i.zp, align 4, !tbaa !216
  br label %adjust_frame_information.exit.thread

adjust_frame_information.exit.thread:             ; preds = %adjust_frame_information.exit.thread.sink.split, %bb.cj
  %i.zq = load i32, ptr %i.jt, align 16, !tbaa !85 ; 2 uses
  %i.zr = load i32, ptr %i.jz, align 4, !tbaa !84 ; 5 uses
  %i.zs = icmp sgt i32 %i.zr, 1
  br i1 %i.zs, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %adjust_frame_information.exit.thread
  %i.zt = shl i32 %i.zq, 1
  %i.zu = or i32 %i.zt, %i.yn
  %i.zv = add nsw i32 %i.zr, -1
  br label %put_bits.exit588

bb.cm:                                            ; preds = %adjust_frame_information.exit.thread
  %i.zw = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.zx = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = ptrtoint ptr %i.zx to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = icmp ugt i64 %i.aaa, 3
  br i1 %i.aab, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.aac = shl i32 %i.zq, %i.zr
  %i.aad = sub nsw i32 1, %i.zr
  %i.aae = lshr i32 %i.yn, %i.aad
  %i.aaf = or i32 %i.aae, %i.aac
  %i.aag = call i32 @llvm.bswap.i32(i32 %i.aaf)
  store i32 %i.aag, ptr %i.zx, align 1, !tbaa !61
  %i.aah = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 4
  store ptr %i.aai, ptr %i.jy, align 16, !tbaa !83
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.aaj = add nsw i32 %i.zr, 31
  %.pre833 = load i32, ptr %i.my, align 16, !tbaa !195
  br label %put_bits.exit588

put_bits.exit588:                                 ; preds = %bb.cl, %bb.cp
  %i.aak = phi i32 [ %i.yn, %bb.cl ], [ %.pre833, %bb.cp ]
  %.026.i.i586 = phi i32 [ %i.zu, %bb.cl ], [ %i.yn, %bb.cp ]
  %.0.i.i587 = phi i32 [ %i.zv, %bb.cl ], [ %i.aaj, %bb.cp ]
  store i32 %.026.i.i586, ptr %i.jt, align 16, !tbaa !85
  store i32 %.0.i.i587, ptr %i.jz, align 4, !tbaa !84
  %.not519 = icmp eq i32 %i.aak, 0
  br i1 %.not519, label %adjust_frame_information.exit.thread629, label %bb.cq

bb.cq:                                            ; preds = %put_bits.exit588
  call fastcc void @put_ics_info(ptr noundef nonnull %i.d, ptr noundef nonnull %i.op)
  %i.aal = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 3 uses
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !216 ; 4 uses
  %i.aan = load i32, ptr %i.jt, align 16, !tbaa !85 ; 2 uses
  %i.aao = load i32, ptr %i.jz, align 4, !tbaa !84 ; 5 uses
  %i.aap = icmp sgt i32 %i.aao, 2
  br i1 %i.aap, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.aaq = shl i32 %i.aan, 2
  %i.aar = or i32 %i.aaq, %i.aam
  %i.aas = add nsw i32 %i.aao, -2
  br label %put_bits.exit.i590

bb.cs:                                            ; preds = %bb.cq
  %i.aat = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.aau = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  %i.aay = icmp ugt i64 %i.aax, 3
  br i1 %i.aay, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.aaz = shl i32 %i.aan, %i.aao
  %i.aba = sub nsw i32 2, %i.aao
  %i.abb = lshr i32 %i.aam, %i.aba
  %i.abc = or i32 %i.abb, %i.aaz
  %i.abd = call i32 @llvm.bswap.i32(i32 %i.abc)
  store i32 %i.abd, ptr %i.aau, align 1, !tbaa !61
  %i.abe = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 4
  store ptr %i.abf, ptr %i.jy, align 16, !tbaa !83
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.abg = add nsw i32 %i.aao, 30
  %.pre.i589 = load i32, ptr %i.aal, align 4, !tbaa !216
  br label %put_bits.exit.i590

put_bits.exit.i590:                               ; preds = %bb.cv, %bb.cr
  %i.abh = phi i32 [ %i.aam, %bb.cr ], [ %.pre.i589, %bb.cv ] ; 2 uses
  %.026.i.i.i591 = phi i32 [ %i.aar, %bb.cr ], [ %i.aam, %bb.cv ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.aas, %bb.cr ], [ %i.abg, %bb.cv ] ; 2 uses
  store i32 %.026.i.i.i591, ptr %i.jt, align 16, !tbaa !85
  store i32 %.0.i.i.i, ptr %i.jz, align 4, !tbaa !84
  %i.abi = icmp eq i32 %i.abh, 1
  br i1 %i.abi, label %.preheader19.i, label %encode_ms_info.exit

.preheader19.i:                                   ; preds = %put_bits.exit.i590
  %i.abj = getelementptr inbounds nuw i8, ptr %i.my, i64 316 ; 2 uses
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !188 ; 2 uses
  %i.abl = icmp sgt i32 %i.abk, 0
  br i1 %i.abl, label %.preheader.lr.ph.i592, label %adjust_frame_information.exit.thread629

.preheader.lr.ph.i592:                            ; preds = %.preheader19.i
  %i.abm = getelementptr inbounds nuw i8, ptr %i.my, i64 286
  %.pre23.i = load i8, ptr %i.op, align 16, !tbaa !189 ; 2 uses
  br label %.preheader.i593

.preheader.i593:                                  ; preds = %._crit_edge.i600, %.preheader.lr.ph.i592
  %i.abn = phi i32 [ %i.abk, %.preheader.lr.ph.i592 ], [ %i.acu, %._crit_edge.i600 ]
  %i.abo = phi i8 [ %.pre23.i, %.preheader.lr.ph.i592 ], [ %i.acv, %._crit_edge.i600 ] ; 2 uses
  %i.abp = phi i32 [ %.0.i.i.i, %.preheader.lr.ph.i592 ], [ %i.acw, %._crit_edge.i600 ] ; 2 uses
  %i.abq = phi i32 [ %.026.i.i.i591, %.preheader.lr.ph.i592 ], [ %i.acx, %._crit_edge.i600 ] ; 2 uses
  %i.abr = phi i8 [ %.pre23.i, %.preheader.lr.ph.i592 ], [ %i.acy, %._crit_edge.i600 ]
  %.021.i = phi i32 [ 0, %.preheader.lr.ph.i592 ], [ %i.add, %._crit_edge.i600 ] ; 3 uses
  %.not.i594 = icmp eq i8 %i.abr, 0
  br i1 %.not.i594, label %._crit_edge.i600, label %.lr.ph.i595

.lr.ph.i595:                                      ; preds = %.preheader.i593
  %i.abs = shl nuw nsw i32 %.021.i, 4
  %i.abt = zext nneg i32 %i.abs to i64
  %invariant.gep.i596 = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.abt
  br label %bb.cw

bb.cw:                                            ; preds = %put_bits.exit18.i, %.lr.ph.i595
  %i.abu = phi i8 [ %i.abo, %.lr.ph.i595 ], [ %i.acr, %put_bits.exit18.i ]
  %i.abv = phi i32 [ %i.abp, %.lr.ph.i595 ], [ %.0.i.i17.i, %put_bits.exit18.i ] ; 5 uses
  %i.abw = phi i32 [ %i.abq, %.lr.ph.i595 ], [ %.026.i.i16.i, %put_bits.exit18.i ] ; 2 uses
  %indvars.iv.i597 = phi i64 [ 0, %.lr.ph.i595 ], [ %indvars.iv.next.i599, %put_bits.exit18.i ] ; 2 uses
  %gep.i598 = getelementptr inbounds nuw i8, ptr %invariant.gep.i596, i64 %indvars.iv.i597
  %i.abx = load i8, ptr %gep.i598, align 1, !tbaa !61
  %i.aby = zext i8 %i.abx to i32                  ; 3 uses
  %i.abz = icmp sgt i32 %i.abv, 1
  br i1 %i.abz, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aca = shl i32 %i.abw, 1
  %i.acb = or i32 %i.aca, %i.aby
  %i.acc = add nsw i32 %i.abv, -1
  br label %put_bits.exit18.i

bb.cy:                                            ; preds = %bb.cw
  %i.acd = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.ace = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = ptrtoint ptr %i.ace to i64
  %i.ach = sub i64 %i.acf, %i.acg
  %i.aci = icmp ugt i64 %i.ach, 3
  br i1 %i.aci, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.acj = shl i32 %i.abw, %i.abv
  %i.ack = sub nsw i32 1, %i.abv
  %i.acl = lshr i32 %i.aby, %i.ack
  %i.acm = or i32 %i.acl, %i.acj
  %i.acn = call i32 @llvm.bswap.i32(i32 %i.acm)
  store i32 %i.acn, ptr %i.ace, align 1, !tbaa !61
  %i.aco = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  store ptr %i.acp, ptr %i.jy, align 16, !tbaa !83
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.acq = add nsw i32 %i.abv, 31
  %.pre24.i = load i8, ptr %i.op, align 16, !tbaa !189
  br label %put_bits.exit18.i

put_bits.exit18.i:                                ; preds = %bb.db, %bb.cx
  %i.acr = phi i8 [ %i.abu, %bb.cx ], [ %.pre24.i, %bb.db ] ; 4 uses
  %.026.i.i16.i = phi i32 [ %i.acb, %bb.cx ], [ %i.aby, %bb.db ] ; 3 uses
  %.0.i.i17.i = phi i32 [ %i.acc, %bb.cx ], [ %i.acq, %bb.db ] ; 3 uses
  store i32 %.026.i.i16.i, ptr %i.jt, align 16, !tbaa !85
  store i32 %.0.i.i17.i, ptr %i.jz, align 4, !tbaa !84
  %indvars.iv.next.i599 = add nuw nsw i64 %indvars.iv.i597, 1 ; 2 uses
  %i.acs = zext i8 %i.acr to i64
  %i.act = icmp samesign ult i64 %indvars.iv.next.i599, %i.acs
  br i1 %i.act, label %bb.cw, label %._crit_edge.loopexit.i, !llvm.loop !137

._crit_edge.loopexit.i:                           ; preds = %put_bits.exit18.i
  %.pre25.i = load i32, ptr %i.abj, align 4, !tbaa !188
  br label %._crit_edge.i600

._crit_edge.i600:                                 ; preds = %._crit_edge.loopexit.i, %.preheader.i593
  %i.acu = phi i32 [ %.pre25.i, %._crit_edge.loopexit.i ], [ %i.abn, %.preheader.i593 ] ; 2 uses
  %i.acv = phi i8 [ %i.acr, %._crit_edge.loopexit.i ], [ %i.abo, %.preheader.i593 ]
  %i.acw = phi i32 [ %.0.i.i17.i, %._crit_edge.loopexit.i ], [ %i.abp, %.preheader.i593 ]
  %i.acx = phi i32 [ %.026.i.i16.i, %._crit_edge.loopexit.i ], [ %i.abq, %.preheader.i593 ]
  %i.acy = phi i8 [ %i.acr, %._crit_edge.loopexit.i ], [ 0, %.preheader.i593 ]
  %i.acz = zext nneg i32 %.021.i to i64
  %i.ada = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.acz
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !61
  %i.adc = zext i8 %i.adb to i32
  %i.add = add nuw nsw i32 %.021.i, %i.adc        ; 2 uses
  %i.ade = icmp slt i32 %i.add, %i.acu
  br i1 %i.ade, label %.preheader.i593, label %encode_ms_info.exit.loopexit, !llvm.loop !138

encode_ms_info.exit.loopexit:                     ; preds = %._crit_edge.i600
  %.pre834 = load i32, ptr %i.aal, align 4, !tbaa !216
  br label %encode_ms_info.exit

encode_ms_info.exit:                              ; preds = %encode_ms_info.exit.loopexit, %put_bits.exit.i590
  %i.adf = phi i32 [ %.pre834, %encode_ms_info.exit.loopexit ], [ %i.abh, %put_bits.exit.i590 ]
  %.fr = freeze i32 %i.adf
  %.not520 = icmp eq i32 %.fr, 0
  %spec.select959 = select i1 %.not520, i32 %.1444721, i32 1
  br label %adjust_frame_information.exit.thread629

adjust_frame_information.exit.thread629:          ; preds = %encode_ms_info.exit, %.preheader19.i, %bb.ci, %put_bits.exit588
  %.2445 = phi i32 [ %.1444721, %bb.ci ], [ %.1444721, %put_bits.exit588 ], [ 1, %.preheader19.i ], [ %spec.select959, %encode_ms_info.exit ] ; 2 uses
  br label %bb.dc

bb.dc:                                            ; preds = %adjust_frame_information.exit.thread629, %encode_individual_channel.exit
  %indvars.iv815 = phi i64 [ 0, %adjust_frame_information.exit.thread629 ], [ %indvars.iv.next816, %encode_individual_channel.exit ] ; 3 uses
  %i.adg = trunc i64 %indvars.iv815 to i32
  %i.adh = add i32 %.2450719, %i.adg
  store i32 %i.adh, ptr %i.kk, align 8, !tbaa !162
  %i.adi = getelementptr inbounds nuw [46352 x i8], ptr %i.op, i64 %indvars.iv815 ; 24 uses
  %i.adj = load i32, ptr %i.my, align 16, !tbaa !195
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 6668 ; 4 uses
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !60 ; 4 uses
  %i.adm = load i32, ptr %i.jt, align 16, !tbaa !85 ; 2 uses
  %i.adn = load i32, ptr %i.jz, align 4, !tbaa !84 ; 4 uses
  %i.ado = icmp sgt i32 %i.adn, 8
  br i1 %i.ado, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.adp = shl i32 %i.adm, 8
  %i.adq = or i32 %i.adp, %i.adl
  br label %put_bits.exit.i601

bb.de:                                            ; preds = %bb.dc
  %i.adr = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.ads = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.adt = ptrtoint ptr %i.adr to i64
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = sub i64 %i.adt, %i.adu
  %i.adw = icmp ugt i64 %i.adv, 3
  br i1 %i.adw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.adx = shl i32 %i.adm, %i.adn
  %i.ady = sub nsw i32 8, %i.adn
  %i.adz = lshr i32 %i.adl, %i.ady
  %i.aea = or i32 %i.adz, %i.adx
  %i.aeb = call i32 @llvm.bswap.i32(i32 %i.aea)
  store i32 %i.aeb, ptr %i.ads, align 1, !tbaa !61
  %i.aec = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 4
  store ptr %i.aed, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit.i601

bb.dg:                                            ; preds = %bb.de
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit.i601

put_bits.exit.i601:                               ; preds = %bb.dg, %bb.df, %bb.dd
  %.sink.i602 = phi i32 [ -8, %bb.dd ], [ 24, %bb.dg ], [ 24, %bb.df ]
  %.026.i.i.i603 = phi i32 [ %i.adq, %bb.dd ], [ %i.adl, %bb.dg ], [ %i.adl, %bb.df ]
  %i.aee = add nsw i32 %.sink.i602, %i.adn
  store i32 %.026.i.i.i603, ptr %i.jt, align 16, !tbaa !85
  store i32 %i.aee, ptr %i.jz, align 4, !tbaa !84
  %.not.i604 = icmp eq i32 %i.adj, 0
  br i1 %.not.i604, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %put_bits.exit.i601
  call fastcc void @put_ics_info(ptr noundef nonnull %i.d, ptr noundef nonnull %i.adi)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %put_bits.exit.i601
  %i.aef = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 40
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !217 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void %i.aeh(ptr noundef nonnull %i.d, ptr noundef nonnull %i.adi) #9, !inline_history !139
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adi, i64 44 ; 5 uses
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !188
  %i.aek = icmp sgt i32 %i.aej, 0
  br i1 %i.aek, label %.lr.ph.i.i, label %encode_scale_factors.exit.i

.lr.ph.i.i:                                       ; preds = %bb.dk
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adi, i64 14 ; 2 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %.lr.ph.i.i
  %.016.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.aew, %bb.dl ] ; 3 uses
  %i.aem = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !218
  %i.aep = zext nneg i32 %.016.i.i to i64
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aep ; 2 uses
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !61
  %i.aes = zext i8 %i.aer to i32
  %i.aet = load float, ptr %i.kh, align 16, !tbaa !56
  call void %i.aeo(ptr noundef nonnull %i.d, ptr noundef nonnull %i.adi, i32 noundef %.016.i.i, i32 noundef %i.aes, float noundef %i.aet) #9, !inline_history !139
  %i.aeu = load i8, ptr %i.aeq, align 1, !tbaa !61
  %i.aev = zext i8 %i.aeu to i32
  %i.aew = add nuw nsw i32 %.016.i.i, %i.aev      ; 2 uses
  %i.aex = load i32, ptr %i.aei, align 4, !tbaa !188 ; 3 uses
  %i.aey = icmp slt i32 %i.aew, %i.aex
  br i1 %i.aey, label %bb.dl, label %encode_band_info.exit.i, !llvm.loop !140

encode_band_info.exit.i:                          ; preds = %bb.dl
  %i.aez = icmp sgt i32 %i.aex, 0
  br i1 %i.aez, label %.preheader.lr.ph.i.i, label %encode_scale_factors.exit.i

.preheader.lr.ph.i.i:                             ; preds = %encode_band_info.exit.i
  %i.afa = load i32, ptr %i.adk, align 4, !tbaa !60 ; 2 uses
  %i.afb = add nsw i32 %i.afa, -90
  %i.afc = getelementptr inbounds nuw i8, ptr %i.adi, i64 7180
  %i.afd = getelementptr inbounds nuw i8, ptr %i.adi, i64 5644
  %.pre.i.i = load i8, ptr %i.adi, align 16, !tbaa !189 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i
  %i.afe = phi i8 [ %.pre.i.i, %.preheader.lr.ph.i.i ], [ %i.ahu, %._crit_edge.i.i ] ; 2 uses
  %i.aff = phi i32 [ %i.aex, %.preheader.lr.ph.i.i ], [ %i.ahv, %._crit_edge.i.i ]
  %i.afg = phi i8 [ %.pre.i.i, %.preheader.lr.ph.i.i ], [ %i.ahw, %._crit_edge.i.i ]
  %.017.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.aib, %._crit_edge.i.i ] ; 3 uses
  %.05316.i.i = phi i32 [ 1, %.preheader.lr.ph.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.05415.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.155.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.05814.i.i = phi i32 [ %i.afb, %.preheader.lr.ph.i.i ], [ %.159.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.06213.i.i = phi i32 [ %i.afa, %.preheader.lr.ph.i.i ], [ %.163.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.not19.i.i = icmp eq i8 %i.afg, 0
  br i1 %.not19.i.i, label %._crit_edge.i.i, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.preheader.i.i
  %i.afh = shl nuw nsw i32 %.017.i.i, 4
  %i.afi = zext nneg i32 %i.afh to i64
  br label %bb.dm

bb.dm:                                            ; preds = %bb.ee, %.lr.ph.i21.i
  %i.afj = phi i8 [ %i.afe, %.lr.ph.i21.i ], [ %i.ahr, %bb.ee ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i21.i ], [ %indvars.iv.next.i.i, %bb.ee ] ; 2 uses
  %.18.i.i = phi i32 [ %.05316.i.i, %.lr.ph.i21.i ], [ %.3.i.i, %bb.ee ] ; 5 uses
  %.1557.i.i = phi i32 [ %.05415.i.i, %.lr.ph.i21.i ], [ %.357.i.i, %bb.ee ] ; 5 uses
  %.1596.i.i = phi i32 [ %.05814.i.i, %.lr.ph.i21.i ], [ %.361.i.i, %bb.ee ] ; 4 uses
  %.1635.i.i = phi i32 [ %.06213.i.i, %.lr.ph.i21.i ], [ %.365.i.i, %bb.ee ] ; 5 uses
  %i.afk = add nuw nsw i64 %indvars.iv.i.i, %i.afi ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !61
  %.not.i22.i = icmp eq i8 %i.afm, 0
  br i1 %.not.i22.i, label %bb.dn, label %bb.ee

bb.dn:                                            ; preds = %bb.dm
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %i.afk
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !60
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %i.afk
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !60 ; 7 uses
  switch i32 %i.afo, label %bb.dv [
    i32 13, label %bb.do
    i32 15, label %bb.du
    i32 14, label %bb.du
  ]

bb.do:                                            ; preds = %bb.dn
  %i.afr = sub nsw i32 %i.afq, %.1596.i.i         ; 2 uses
  %i.afs = add nsw i32 %.18.i.i, -1               ; 2 uses
  %i.aft = icmp sgt i32 %.18.i.i, 0
  br i1 %i.aft, label %bb.dp, label %bb.dw

bb.dp:                                            ; preds = %bb.do
  %i.afu = add nsw i32 %i.afr, 256                ; 4 uses
  %i.afv = load i32, ptr %i.jt, align 16, !tbaa !85 ; 2 uses
  %i.afw = load i32, ptr %i.jz, align 4, !tbaa !84 ; 4 uses
  %i.afx = icmp sgt i32 %i.afw, 9
  br i1 %i.afx, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.afy = shl i32 %i.afv, 9
  %i.afz = or i32 %i.afy, %i.afu
  br label %put_bits.exit.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.aga = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.agb = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.agc = ptrtoint ptr %i.aga to i64
  %i.agd = ptrtoint ptr %i.agb to i64
  %i.age = sub i64 %i.agc, %i.agd
  %i.agf = icmp ugt i64 %i.age, 3
  br i1 %i.agf, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.agg = shl i32 %i.afv, %i.afw
  %i.agh = sub nsw i32 9, %i.afw
  %i.agi = lshr i32 %i.afu, %i.agh
  %i.agj = or i32 %i.agi, %i.agg
  %i.agk = call i32 @llvm.bswap.i32(i32 %i.agj)
  store i32 %i.agk, ptr %i.agb, align 1, !tbaa !61
  %i.agl = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  store ptr %i.agm, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit.i.i

bb.dt:                                            ; preds = %bb.dr
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit.i.i

put_bits.exit.i.i:                                ; preds = %bb.dt, %bb.ds, %bb.dq
  %.sink.i.i = phi i32 [ -9, %bb.dq ], [ 23, %bb.dt ], [ 23, %bb.ds ]
  %.026.i.i.i.i609 = phi i32 [ %i.afz, %bb.dq ], [ %i.afu, %bb.dt ], [ %i.afu, %bb.ds ]
  %i.agn = add nsw i32 %.sink.i.i, %i.afw
  br label %.sink.split.i.i

bb.du:                                            ; preds = %bb.dn, %bb.dn
  %i.ago = sub nsw i32 %i.afq, %.1557.i.i
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dn
  %i.agp = sub nsw i32 %i.afq, %.1635.i.i
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.do
  %.066.i.i = phi i32 [ %i.afr, %bb.do ], [ %i.ago, %bb.du ], [ %i.agp, %bb.dv ]
  %.264.i.i = phi i32 [ %.1635.i.i, %bb.do ], [ %.1635.i.i, %bb.du ], [ %i.afq, %bb.dv ] ; 2 uses
  %.260.i.i = phi i32 [ %i.afq, %bb.do ], [ %.1596.i.i, %bb.du ], [ %.1596.i.i, %bb.dv ] ; 2 uses
  %.256.i.i = phi i32 [ %.1557.i.i, %bb.do ], [ %i.afq, %bb.du ], [ %.1557.i.i, %bb.dv ] ; 2 uses
  %.2.i.i = phi i32 [ %i.afs, %bb.do ], [ %.18.i.i, %bb.du ], [ %.18.i.i, %bb.dv ] ; 2 uses
  %i.agq = add i32 %.066.i.i, 60                  ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.agq, 121
  br i1 %or.cond.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 655) #9
  call void @abort() #11
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.agr = zext nneg i32 %i.agq to i64            ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr @ff_aac_scalefactor_bits, i64 %i.agr
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !61
  %i.agu = zext i8 %i.agt to i32                  ; 5 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr @ff_aac_scalefactor_code, i64 %i.agr
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !60 ; 3 uses
  %i.agx = load i32, ptr %i.jt, align 16, !tbaa !85 ; 2 uses
  %i.agy = load i32, ptr %i.jz, align 4, !tbaa !84 ; 5 uses
  %i.agz = icmp sgt i32 %i.agy, %i.agu
  br i1 %i.agz, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aha = shl i32 %i.agx, %i.agu
  %i.ahb = or i32 %i.aha, %i.agw
  %i.ahc = sub nuw nsw i32 %i.agy, %i.agu
  br label %.sink.split.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.ahd = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.ahe = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.ahf = ptrtoint ptr %i.ahd to i64
  %i.ahg = ptrtoint ptr %i.ahe to i64
  %i.ahh = sub i64 %i.ahf, %i.ahg
  %i.ahi = icmp ugt i64 %i.ahh, 3
  br i1 %i.ahi, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ahj = shl i32 %i.agx, %i.agy
  %i.ahk = sub nsw i32 %i.agu, %i.agy
  %i.ahl = lshr i32 %i.agw, %i.ahk
  %i.ahm = or i32 %i.ahl, %i.ahj
  %i.ahn = call i32 @llvm.bswap.i32(i32 %i.ahm)
  store i32 %i.ahn, ptr %i.ahe, align 1, !tbaa !61
  %i.aho = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 4
  store ptr %i.ahp, ptr %i.jy, align 16, !tbaa !83
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %reass.sub = sub i32 %i.agy, %i.agu
  %i.ahq = add i32 %reass.sub, 32
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ed, %bb.dz, %put_bits.exit.i.i
  %.026.i.i70.sink.i.i = phi i32 [ %.026.i.i.i.i609, %put_bits.exit.i.i ], [ %i.ahb, %bb.dz ], [ %i.agw, %bb.ed ]
  %.0.i.i71.sink.i.i = phi i32 [ %i.agn, %put_bits.exit.i.i ], [ %i.ahc, %bb.dz ], [ %i.ahq, %bb.ed ]
  %.365.ph.i.i = phi i32 [ %.1635.i.i, %put_bits.exit.i.i ], [ %.264.i.i, %bb.dz ], [ %.264.i.i, %bb.ed ]
  %.361.ph.i.i = phi i32 [ %i.afq, %put_bits.exit.i.i ], [ %.260.i.i, %bb.dz ], [ %.260.i.i, %bb.ed ]
  %.357.ph.i.i = phi i32 [ %.1557.i.i, %put_bits.exit.i.i ], [ %.256.i.i, %bb.dz ], [ %.256.i.i, %bb.ed ]
  %.3.ph.i.i = phi i32 [ %i.afs, %put_bits.exit.i.i ], [ %.2.i.i, %bb.dz ], [ %.2.i.i, %bb.ed ]
  store i32 %.026.i.i70.sink.i.i, ptr %i.jt, align 16, !tbaa !85
  store i32 %.0.i.i71.sink.i.i, ptr %i.jz, align 4, !tbaa !84
  %.pre.i608 = load i8, ptr %i.adi, align 16, !tbaa !189
  br label %bb.ee

bb.ee:                                            ; preds = %.sink.split.i.i, %bb.dm
  %i.ahr = phi i8 [ %i.afj, %bb.dm ], [ %.pre.i608, %.sink.split.i.i ] ; 4 uses
  %.365.i.i = phi i32 [ %.1635.i.i, %bb.dm ], [ %.365.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.361.i.i = phi i32 [ %.1596.i.i, %bb.dm ], [ %.361.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.357.i.i = phi i32 [ %.1557.i.i, %bb.dm ], [ %.357.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.3.i.i = phi i32 [ %.18.i.i, %bb.dm ], [ %.3.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ahs = zext i8 %i.ahr to i64
  %i.aht = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ahs
  br i1 %i.aht, label %bb.dm, label %._crit_edge.loopexit.i.i, !llvm.loop !141

._crit_edge.loopexit.i.i:                         ; preds = %bb.ee
  %.pre21.i.i = load i32, ptr %i.aei, align 4, !tbaa !188
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %i.ahu = phi i8 [ %i.afe, %.preheader.i.i ], [ %i.ahr, %._crit_edge.loopexit.i.i ]
  %i.ahv = phi i32 [ %i.aff, %.preheader.i.i ], [ %.pre21.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ahw = phi i8 [ 0, %.preheader.i.i ], [ %i.ahr, %._crit_edge.loopexit.i.i ]
  %.163.lcssa.i.i = phi i32 [ %.06213.i.i, %.preheader.i.i ], [ %.365.i.i, %._crit_edge.loopexit.i.i ]
  %.159.lcssa.i.i = phi i32 [ %.05814.i.i, %.preheader.i.i ], [ %.361.i.i, %._crit_edge.loopexit.i.i ]
  %.155.lcssa.i.i = phi i32 [ %.05415.i.i, %.preheader.i.i ], [ %.357.i.i, %._crit_edge.loopexit.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.05316.i.i, %.preheader.i.i ], [ %.3.i.i, %._crit_edge.loopexit.i.i ]
  %i.ahx = zext nneg i32 %.017.i.i to i64
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.ahx
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !61
  %i.aia = zext i8 %i.ahz to i32
  %i.aib = add nuw nsw i32 %.017.i.i, %i.aia      ; 2 uses
  %i.aic = icmp slt i32 %i.aib, %i.ahv
  br i1 %i.aic, label %.preheader.i.i, label %encode_scale_factors.exit.i, !llvm.loop !142

encode_scale_factors.exit.i:                      ; preds = %._crit_edge.i.i, %encode_band_info.exit.i, %bb.dk
  %i.aid = getelementptr inbounds nuw i8, ptr %i.adi, i64 5604 ; 4 uses
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !219 ; 2 uses
  %i.aif = icmp ne i32 %i.aie, 0
  %i.aig = zext i1 %i.aif to i32                  ; 3 uses
  %i.aih = load i32, ptr %i.jt, align 16, !tbaa !85 ; 2 uses
  %i.aii = load i32, ptr %i.jz, align 4, !tbaa !84 ; 5 uses
  %i.aij = icmp sgt i32 %i.aii, 1
  br i1 %i.aij, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %encode_scale_factors.exit.i
  %i.aik = shl i32 %i.aih, 1
  %i.ail = or disjoint i32 %i.aik, %i.aig
  %i.aim = add nsw i32 %i.aii, -1
  br label %put_bits.exit.i25.i

bb.eg:                                            ; preds = %encode_scale_factors.exit.i
  %i.ain = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.aio = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.aip = ptrtoint ptr %i.ain to i64
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = sub i64 %i.aip, %i.aiq
  %i.ais = icmp ugt i64 %i.air, 3
  br i1 %i.ais, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ait = shl i32 %i.aih, %i.aii
  %i.aiu = sub nsw i32 1, %i.aii
  %i.aiv = lshr i32 %i.aig, %i.aiu
  %i.aiw = or i32 %i.aiv, %i.ait
  %i.aix = call i32 @llvm.bswap.i32(i32 %i.aiw)
  store i32 %i.aix, ptr %i.aio, align 1, !tbaa !61
  %i.aiy = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4
  store ptr %i.aiz, ptr %i.jy, align 16, !tbaa !83
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.aja = add nsw i32 %i.aii, 31
  %.pre.i24.i = load i32, ptr %i.aid, align 4, !tbaa !219
  br label %put_bits.exit.i25.i

put_bits.exit.i25.i:                              ; preds = %bb.ej, %bb.ef
  %i.ajb = phi i32 [ %i.aie, %bb.ef ], [ %.pre.i24.i, %bb.ej ] ; 2 uses
  %.026.i.i.i26.i = phi i32 [ %i.ail, %bb.ef ], [ %i.aig, %bb.ej ] ; 4 uses
  %.0.i.i.i.i605 = phi i32 [ %i.aim, %bb.ef ], [ %i.aja, %bb.ej ] ; 6 uses
  store i32 %.026.i.i.i26.i, ptr %i.jt, align 16, !tbaa !85
  store i32 %.0.i.i.i.i605, ptr %i.jz, align 4, !tbaa !84
  %.not.i27.i = icmp eq i32 %i.ajb, 0
  br i1 %.not.i27.i, label %encode_pulses.exit.i, label %bb.ek

bb.ek:                                            ; preds = %put_bits.exit.i25.i
  %i.ajc = add nsw i32 %i.ajb, -1                 ; 4 uses
  %i.ajd = icmp sgt i32 %.0.i.i.i.i605, 2
  br i1 %i.ajd, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.aje = shl i32 %.026.i.i.i26.i, 2
  %i.ajf = or i32 %i.aje, %i.ajc
  br label %put_bits.exit19.i.i

bb.em:                                            ; preds = %bb.ek
  %i.ajg = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.ajh = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.aji = ptrtoint ptr %i.ajg to i64
  %i.ajj = ptrtoint ptr %i.ajh to i64
  %i.ajk = sub i64 %i.aji, %i.ajj
  %i.ajl = icmp ugt i64 %i.ajk, 3
  br i1 %i.ajl, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.ajm = shl i32 %.026.i.i.i26.i, %.0.i.i.i.i605
  %i.ajn = sub nsw i32 2, %.0.i.i.i.i605
  %i.ajo = lshr i32 %i.ajc, %i.ajn
  %i.ajp = or i32 %i.ajo, %i.ajm
  %i.ajq = call i32 @llvm.bswap.i32(i32 %i.ajp)
  store i32 %i.ajq, ptr %i.ajh, align 1, !tbaa !61
  %i.ajr = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 4
  store ptr %i.ajs, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit19.i.i

bb.eo:                                            ; preds = %bb.em
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit19.i.i

put_bits.exit19.i.i:                              ; preds = %bb.eo, %bb.en, %bb.el
  %.sink.i28.i = phi i32 [ -2, %bb.el ], [ 30, %bb.eo ], [ 30, %bb.en ]
  %.026.i.i17.i.i = phi i32 [ %i.ajf, %bb.el ], [ %i.ajc, %bb.eo ], [ %i.ajc, %bb.en ] ; 3 uses
  %i.ajt = add nsw i32 %.sink.i28.i, %.0.i.i.i.i605 ; 5 uses
  store i32 %.026.i.i17.i.i, ptr %i.jt, align 16, !tbaa !85
  store i32 %i.ajt, ptr %i.jz, align 4, !tbaa !84
  %i.aju = getelementptr inbounds nuw i8, ptr %i.adi, i64 5608
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !220 ; 4 uses
  %i.ajw = icmp sgt i32 %i.ajt, 6
  br i1 %i.ajw, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %put_bits.exit19.i.i
  %i.ajx = shl i32 %.026.i.i17.i.i, 6
  %i.ajy = or i32 %i.ajv, %i.ajx
  br label %put_bits.exit23.i.i

bb.eq:                                            ; preds = %put_bits.exit19.i.i
  %i.ajz = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.aka = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.akb = ptrtoint ptr %i.ajz to i64
  %i.akc = ptrtoint ptr %i.aka to i64
  %i.akd = sub i64 %i.akb, %i.akc
  %i.ake = icmp ugt i64 %i.akd, 3
  br i1 %i.ake, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.akf = shl i32 %.026.i.i17.i.i, %i.ajt
  %i.akg = sub nsw i32 6, %i.ajt
  %i.akh = lshr i32 %i.ajv, %i.akg
  %i.aki = or i32 %i.akh, %i.akf
  %i.akj = call i32 @llvm.bswap.i32(i32 %i.aki)
  store i32 %i.akj, ptr %i.aka, align 1, !tbaa !61
  %i.akk = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 4
  store ptr %i.akl, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit23.i.i

bb.es:                                            ; preds = %bb.eq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit23.i.i

put_bits.exit23.i.i:                              ; preds = %bb.es, %bb.er, %bb.ep
  %.sink37.i.i = phi i32 [ -6, %bb.ep ], [ 26, %bb.es ], [ 26, %bb.er ]
  %.026.i.i21.i.i = phi i32 [ %i.ajy, %bb.ep ], [ %i.ajv, %bb.es ], [ %i.ajv, %bb.er ] ; 3 uses
  %i.akm = add nsw i32 %.sink37.i.i, %i.ajt       ; 3 uses
  store i32 %.026.i.i21.i.i, ptr %i.jt, align 16, !tbaa !85
  store i32 %i.akm, ptr %i.jz, align 4, !tbaa !84
  %i.akn = load i32, ptr %i.aid, align 4, !tbaa !219
  %i.ako = icmp sgt i32 %i.akn, 0
  br i1 %i.ako, label %.lr.ph.i29.i, label %encode_pulses.exit.i

.lr.ph.i29.i:                                     ; preds = %put_bits.exit23.i.i
  %i.akp = getelementptr inbounds nuw i8, ptr %i.adi, i64 5612
  %i.akq = getelementptr inbounds nuw i8, ptr %i.adi, i64 5628
  br label %bb.et

bb.et:                                            ; preds = %put_bits.exit31.i.i, %.lr.ph.i29.i
  %i.akr = phi i32 [ %i.akm, %.lr.ph.i29.i ], [ %i.ame, %put_bits.exit31.i.i ] ; 4 uses
  %i.aks = phi i32 [ %.026.i.i21.i.i, %.lr.ph.i29.i ], [ %.026.i.i29.i.i, %put_bits.exit31.i.i ] ; 2 uses
  %indvars.iv.i30.i = phi i64 [ 0, %.lr.ph.i29.i ], [ %indvars.iv.next.i31.i, %put_bits.exit31.i.i ] ; 3 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %indvars.iv.i30.i
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !60 ; 4 uses
  %i.akv = icmp sgt i32 %i.akr, 5
  br i1 %i.akv, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.akw = shl i32 %i.aks, 5
  %i.akx = or i32 %i.aku, %i.akw
  br label %put_bits.exit27.i.i

bb.ev:                                            ; preds = %bb.et
  %i.aky = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.akz = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.ala = ptrtoint ptr %i.aky to i64
  %i.alb = ptrtoint ptr %i.akz to i64
  %i.alc = sub i64 %i.ala, %i.alb
  %i.ald = icmp ugt i64 %i.alc, 3
  br i1 %i.ald, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ale = shl i32 %i.aks, %i.akr
  %i.alf = sub nsw i32 5, %i.akr
  %i.alg = lshr i32 %i.aku, %i.alf
  %i.alh = or i32 %i.alg, %i.ale
  %i.ali = call i32 @llvm.bswap.i32(i32 %i.alh)
  store i32 %i.ali, ptr %i.akz, align 1, !tbaa !61
  %i.alj = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 4
  store ptr %i.alk, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit27.i.i

bb.ex:                                            ; preds = %bb.ev
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit27.i.i

put_bits.exit27.i.i:                              ; preds = %bb.ex, %bb.ew, %bb.eu
  %.sink38.i.i = phi i32 [ -5, %bb.eu ], [ 27, %bb.ex ], [ 27, %bb.ew ]
  %.026.i.i25.i.i = phi i32 [ %i.akx, %bb.eu ], [ %i.aku, %bb.ex ], [ %i.aku, %bb.ew ] ; 3 uses
  %i.all = add nsw i32 %.sink38.i.i, %i.akr       ; 5 uses
  store i32 %.026.i.i25.i.i, ptr %i.jt, align 16, !tbaa !85
  store i32 %i.all, ptr %i.jz, align 4, !tbaa !84
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %indvars.iv.i30.i
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !60 ; 4 uses
  %i.alo = icmp sgt i32 %i.all, 4
  br i1 %i.alo, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %put_bits.exit27.i.i
  %i.alp = shl i32 %.026.i.i25.i.i, 4
  %i.alq = or i32 %i.aln, %i.alp
  br label %put_bits.exit31.i.i

bb.ez:                                            ; preds = %put_bits.exit27.i.i
  %i.alr = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.als = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.alt = ptrtoint ptr %i.alr to i64
  %i.alu = ptrtoint ptr %i.als to i64
  %i.alv = sub i64 %i.alt, %i.alu
  %i.alw = icmp ugt i64 %i.alv, 3
  br i1 %i.alw, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.alx = shl i32 %.026.i.i25.i.i, %i.all
  %i.aly = sub nsw i32 4, %i.all
  %i.alz = lshr i32 %i.aln, %i.aly
  %i.ama = or i32 %i.alz, %i.alx
  %i.amb = call i32 @llvm.bswap.i32(i32 %i.ama)
  store i32 %i.amb, ptr %i.als, align 1, !tbaa !61
  %i.amc = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 4
  store ptr %i.amd, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit31.i.i

bb.fb:                                            ; preds = %bb.ez
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit31.i.i

put_bits.exit31.i.i:                              ; preds = %bb.fb, %bb.fa, %bb.ey
  %.sink39.i.i = phi i32 [ -4, %bb.ey ], [ 28, %bb.fb ], [ 28, %bb.fa ]
  %.026.i.i29.i.i = phi i32 [ %i.alq, %bb.ey ], [ %i.aln, %bb.fb ], [ %i.aln, %bb.fa ] ; 3 uses
  %i.ame = add nsw i32 %.sink39.i.i, %i.all       ; 3 uses
  store i32 %.026.i.i29.i.i, ptr %i.jt, align 16, !tbaa !85
  store i32 %i.ame, ptr %i.jz, align 4, !tbaa !84
  %indvars.iv.next.i31.i = add nuw nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %i.amf = load i32, ptr %i.aid, align 4, !tbaa !219
  %i.amg = sext i32 %i.amf to i64
  %i.amh = icmp slt i64 %indvars.iv.next.i31.i, %i.amg
  br i1 %i.amh, label %bb.et, label %encode_pulses.exit.i, !llvm.loop !143

encode_pulses.exit.i:                             ; preds = %put_bits.exit31.i.i, %put_bits.exit23.i.i, %put_bits.exit.i25.i
  %i.ami = phi i32 [ %i.akm, %put_bits.exit23.i.i ], [ %.0.i.i.i.i605, %put_bits.exit.i25.i ], [ %i.ame, %put_bits.exit31.i.i ] ; 4 uses
  %i.amj = phi i32 [ %.026.i.i21.i.i, %put_bits.exit23.i.i ], [ %.026.i.i.i26.i, %put_bits.exit.i25.i ], [ %.026.i.i29.i.i, %put_bits.exit31.i.i ] ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.adi, i64 64
  %i.aml = load i32, ptr %i.amk, align 16, !tbaa !208
  %i.amm = icmp ne i32 %i.aml, 0
  %i.amn = zext i1 %i.amm to i32                  ; 4 uses
  %i.amo = icmp sgt i32 %i.ami, 1
  br i1 %i.amo, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %encode_pulses.exit.i
  %i.amp = shl i32 %i.amj, 1
  %i.amq = or disjoint i32 %i.amp, %i.amn
  br label %put_bits.exit35.i

bb.fd:                                            ; preds = %encode_pulses.exit.i
  %i.amr = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.ams = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.amt = ptrtoint ptr %i.amr to i64
  %i.amu = ptrtoint ptr %i.ams to i64
  %i.amv = sub i64 %i.amt, %i.amu
  %i.amw = icmp ugt i64 %i.amv, 3
  br i1 %i.amw, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.amx = shl i32 %i.amj, %i.ami
  %i.amy = sub nsw i32 1, %i.ami
  %i.amz = lshr i32 %i.amn, %i.amy
  %i.ana = or i32 %i.amz, %i.amx
  %i.anb = call i32 @llvm.bswap.i32(i32 %i.ana)
  store i32 %i.anb, ptr %i.ams, align 1, !tbaa !61
  %i.anc = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 4
  store ptr %i.and, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit35.i

bb.ff:                                            ; preds = %bb.fd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit35.i

put_bits.exit35.i:                                ; preds = %bb.ff, %bb.fe, %bb.fc
  %.sink34.i = phi i32 [ -1, %bb.fc ], [ 31, %bb.ff ], [ 31, %bb.fe ]
  %.026.i.i33.i606 = phi i32 [ %i.amq, %bb.fc ], [ %i.amn, %bb.ff ], [ %i.amn, %bb.fe ] ; 2 uses
  %i.ane = add nsw i32 %.sink34.i, %i.ami         ; 2 uses
  store i32 %.026.i.i33.i606, ptr %i.jt, align 16, !tbaa !85
  store i32 %i.ane, ptr %i.jz, align 4, !tbaa !84
  %i.anf = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 24
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !221 ; 2 uses
  %.not20.i = icmp eq ptr %i.anh, null
  br i1 %.not20.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %put_bits.exit35.i
  call void %i.anh(ptr noundef nonnull %i.d, ptr noundef nonnull %i.adi) #9, !inline_history !144
  %.pre5.i = load i32, ptr %i.jt, align 16, !tbaa !85
  %.pre6.i = load i32, ptr %i.jz, align 4, !tbaa !84
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %put_bits.exit35.i
  %i.ani = phi i32 [ %.pre6.i, %bb.fg ], [ %i.ane, %put_bits.exit35.i ] ; 3 uses
  %i.anj = phi i32 [ %.pre5.i, %bb.fg ], [ %.026.i.i33.i606, %put_bits.exit35.i ] ; 2 uses
  %i.ank = icmp sgt i32 %i.ani, 1
  br i1 %i.ank, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.anl = shl i32 %i.anj, 1
  br label %put_bits.exit39.i

bb.fj:                                            ; preds = %bb.fh
  %i.anm = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.ann = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.ano = ptrtoint ptr %i.anm to i64
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = sub i64 %i.ano, %i.anp
  %i.anr = icmp ugt i64 %i.anq, 3
  br i1 %i.anr, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.ans = shl i32 %i.anj, %i.ani
  %i.ant = call i32 @llvm.bswap.i32(i32 %i.ans)
  store i32 %i.ant, ptr %i.ann, align 1, !tbaa !61
  %i.anu = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 4
  store ptr %i.anv, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit39.i

bb.fl:                                            ; preds = %bb.fj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit39.i

put_bits.exit39.i:                                ; preds = %bb.fl, %bb.fk, %bb.fi
  %.sink35.i = phi i32 [ -1, %bb.fi ], [ 31, %bb.fl ], [ 31, %bb.fk ]
  %.026.i.i37.i = phi i32 [ %i.anl, %bb.fi ], [ 0, %bb.fl ], [ 0, %bb.fk ]
  %i.anw = add nsw i32 %.sink35.i, %i.ani
  store i32 %.026.i.i37.i, ptr %i.jt, align 16, !tbaa !85
  store i32 %i.anw, ptr %i.jz, align 4, !tbaa !84
  %i.anx = load i32, ptr %i.aei, align 4, !tbaa !188 ; 2 uses
  %i.any = icmp sgt i32 %i.anx, 0
  br i1 %i.any, label %.preheader42.lr.ph.i.i, label %encode_individual_channel.exit

.preheader42.lr.ph.i.i:                           ; preds = %put_bits.exit39.i
  %i.anz = getelementptr inbounds nuw i8, ptr %i.adi, i64 7180
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.adi, i64 32 ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.adi, i64 14 ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.adi, i64 12560
  %i.aod = getelementptr inbounds nuw i8, ptr %i.adi, i64 5644
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.adi, i64 52
  %.pre.i40.i = load i8, ptr %i.adi, align 16, !tbaa !189 ; 3 uses
  br label %.preheader42.i.i

.preheader42.i.i:                                 ; preds = %._crit_edge47.i.i, %.preheader42.lr.ph.i.i
  %.pre5658.i.i = phi i8 [ %.pre.i40.i, %.preheader42.lr.ph.i.i ], [ %.pre5659.i.i, %._crit_edge47.i.i ] ; 2 uses
  %i.aof = phi i32 [ %i.anx, %.preheader42.lr.ph.i.i ], [ %i.app, %._crit_edge47.i.i ]
  %i.aog = phi i8 [ %.pre.i40.i, %.preheader42.lr.ph.i.i ], [ %i.apq, %._crit_edge47.i.i ] ; 2 uses
  %i.aoh = phi i8 [ %.pre.i40.i, %.preheader42.lr.ph.i.i ], [ %i.apr, %._crit_edge47.i.i ]
  %.03948.i.i = phi i32 [ 0, %.preheader42.lr.ph.i.i ], [ %i.apv, %._crit_edge47.i.i ] ; 5 uses
  %.not50.i.i = icmp eq i8 %i.aoh, 0
  br i1 %.not50.i.i, label %.preheader42.._crit_edge47_crit_edge.i.i, label %.lr.ph46.i.i

.preheader42.._crit_edge47_crit_edge.i.i:         ; preds = %.preheader42.i.i
  %.pre63.i.i = zext nneg i32 %.03948.i.i to i64
  br label %._crit_edge47.i.i

.lr.ph46.i.i:                                     ; preds = %.preheader42.i.i
  %i.aoi = shl nuw nsw i32 %.03948.i.i, 4
  %i.aoj = zext nneg i32 %.03948.i.i to i64       ; 4 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aob, i64 %i.aoj ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %i.aoj
  %i.aom = zext nneg i32 %i.aoi to i64
  br label %bb.fm

bb.fm:                                            ; preds = %._crit_edge.i42.i, %.lr.ph46.i.i
  %.pre5660.i.i = phi i8 [ %.pre5658.i.i, %.lr.ph46.i.i ], [ %.pre5661.i.i, %._crit_edge.i42.i ] ; 3 uses
  %i.aon = phi i8 [ %i.aog, %.lr.ph46.i.i ], [ %i.apm, %._crit_edge.i42.i ]
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph46.i.i ], [ %indvars.iv.next54.i.i, %._crit_edge.i42.i ] ; 4 uses
  %.04144.i.i = phi i32 [ 0, %.lr.ph46.i.i ], [ %.1.i.i, %._crit_edge.i42.i ] ; 2 uses
  %i.aoo = add nuw nsw i64 %indvars.iv53.i.i, %i.aom ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.anz, i64 %i.aoo
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !61
  %.not.i41.i = icmp eq i8 %i.aoq, 0
  br i1 %.not.i41.i, label %.preheader.i43.i, label %._crit_edge.i42.i

.preheader.i43.i:                                 ; preds = %bb.fm
  %i.aor = load i8, ptr %i.aok, align 1, !tbaa !61
  %.not51.i.i = icmp eq i8 %i.aor, 0
  br i1 %.not51.i.i, label %._crit_edge.i42.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.preheader.i43.i
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %i.aoo
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %i.aoo
  %i.aou = zext nneg i32 %.04144.i.i to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %i.aou
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fn, %.lr.ph.i44.i
  %indvars.iv.i45.i = phi i64 [ %i.aoj, %.lr.ph.i44.i ], [ %indvars.iv.next.i46.i, %bb.fn ] ; 2 uses
  %i.aov = load ptr, ptr %i.km, align 16, !tbaa !71
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !222
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i45.i, 9
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i
  %i.aoy = load ptr, ptr %i.aoa, align 16, !tbaa !190
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 %indvars.iv53.i.i
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !61
  %i.apb = zext i8 %i.apa to i32
  %i.apc = load i32, ptr %i.aos, align 4, !tbaa !60
  %i.apd = load i32, ptr %i.aot, align 4, !tbaa !60
  %i.ape = load float, ptr %i.kh, align 16, !tbaa !56
  %i.apf = load i8, ptr %i.aol, align 1, !tbaa !61
  %i.apg = zext i8 %i.apf to i32
  call void %i.aox(ptr noundef %i.d, ptr noundef nonnull %i.jt, ptr noundef nonnull %gep.i.i, ptr noundef null, i32 noundef %i.apb, i32 noundef %i.apc, i32 noundef %i.apd, float noundef %i.ape, i32 noundef %i.apg) #9, !inline_history !145
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %i.aph = load i8, ptr %i.aok, align 1, !tbaa !61
  %i.api = zext i8 %i.aph to i32
  %i.apj = add nuw nsw i32 %.03948.i.i, %i.api
  %i.apk = zext nneg i32 %i.apj to i64
  %i.apl = icmp samesign ult i64 %indvars.iv.next.i46.i, %i.apk
  br i1 %i.apl, label %bb.fn, label %._crit_edge.loopexit.i47.i, !llvm.loop !146

._crit_edge.loopexit.i47.i:                       ; preds = %bb.fn
  %.pre56.pre.i.i = load i8, ptr %i.adi, align 16, !tbaa !189 ; 2 uses
  br label %._crit_edge.i42.i

._crit_edge.i42.i:                                ; preds = %._crit_edge.loopexit.i47.i, %.preheader.i43.i, %bb.fm
  %.pre5661.i.i = phi i8 [ %.pre5660.i.i, %bb.fm ], [ %.pre56.pre.i.i, %._crit_edge.loopexit.i47.i ], [ %.pre5660.i.i, %.preheader.i43.i ] ; 2 uses
  %i.apm = phi i8 [ %i.aon, %bb.fm ], [ %.pre56.pre.i.i, %._crit_edge.loopexit.i47.i ], [ %.pre5660.i.i, %.preheader.i43.i ] ; 4 uses
  %.pn66.i.i = load ptr, ptr %i.aoa, align 16, !tbaa !190
  %.pn.in.in.i.i = getelementptr inbounds nuw i8, ptr %.pn66.i.i, i64 %indvars.iv53.i.i
  %.pn.in.i.i = load i8, ptr %.pn.in.in.i.i, align 1, !tbaa !61
  %.pn.i.i = zext i8 %.pn.in.i.i to i32
  %.1.i.i = add nuw nsw i32 %.04144.i.i, %.pn.i.i
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %i.apn = zext i8 %i.apm to i64
  %i.apo = icmp samesign ult i64 %indvars.iv.next54.i.i, %i.apn
  br i1 %i.apo, label %bb.fm, label %._crit_edge47.loopexit.i.i, !llvm.loop !147

._crit_edge47.loopexit.i.i:                       ; preds = %._crit_edge.i42.i
  %.pre57.i.i = load i32, ptr %i.aei, align 4, !tbaa !188
  br label %._crit_edge47.i.i

._crit_edge47.i.i:                                ; preds = %._crit_edge47.loopexit.i.i, %.preheader42.._crit_edge47_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre63.i.i, %.preheader42.._crit_edge47_crit_edge.i.i ], [ %i.aoj, %._crit_edge47.loopexit.i.i ]
  %.pre5659.i.i = phi i8 [ %.pre5658.i.i, %.preheader42.._crit_edge47_crit_edge.i.i ], [ %.pre5661.i.i, %._crit_edge47.loopexit.i.i ]
  %i.app = phi i32 [ %i.aof, %.preheader42.._crit_edge47_crit_edge.i.i ], [ %.pre57.i.i, %._crit_edge47.loopexit.i.i ] ; 2 uses
  %i.apq = phi i8 [ %i.aog, %.preheader42.._crit_edge47_crit_edge.i.i ], [ %i.apm, %._crit_edge47.loopexit.i.i ]
  %i.apr = phi i8 [ 0, %.preheader42.._crit_edge47_crit_edge.i.i ], [ %i.apm, %._crit_edge47.loopexit.i.i ]
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aob, i64 %.pre-phi.i.i
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !61
  %i.apu = zext i8 %i.apt to i32
  %i.apv = add nuw nsw i32 %.03948.i.i, %i.apu    ; 2 uses
  %i.apw = icmp slt i32 %i.apv, %i.app
  br i1 %i.apw, label %.preheader42.i.i, label %encode_individual_channel.exit, !llvm.loop !148

encode_individual_channel.exit:                   ; preds = %._crit_edge47.i.i, %put_bits.exit39.i
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next816, %wide.trip.count797
  br i1 %exitcond819.not, label %bb.fo, label %bb.dc, !llvm.loop !149

bb.fo:                                            ; preds = %encode_individual_channel.exit
  %i.apx = add nuw nsw i32 %i.mw, %.2450719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.apy = load ptr, ptr %i.bj, align 16, !tbaa !64 ; 3 uses
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !61
  %i.aqa = zext i8 %i.apz to i64
  %i.aqb = icmp samesign ult i64 %indvars.iv.next821, %i.aqa
  br i1 %i.aqb, label %.lr.ph725, label %._crit_edge726.loopexit, !llvm.loop !150

._crit_edge726.loopexit:                          ; preds = %bb.fo
  %.pre835.pre.pre = load i32, ptr %i.jz, align 4, !tbaa !84
  br label %._crit_edge726

._crit_edge726:                                   ; preds = %._crit_edge726.loopexit, %bb.an
  %.pre835.pre = phi i32 [ %.pre835.pre837, %bb.an ], [ %.pre835.pre.pre, %._crit_edge726.loopexit ] ; 5 uses
  %i.aqc = phi ptr [ %i.mn, %bb.an ], [ %i.apy, %._crit_edge726.loopexit ]
  %.2453.lcssa = phi i32 [ %.1452, %bb.an ], [ %i.mu, %._crit_edge726.loopexit ] ; 3 uses
  %.0446.lcssa = phi i32 [ 0, %bb.an ], [ %.1447, %._crit_edge726.loopexit ] ; 2 uses
  %.1444.lcssa = phi i32 [ %.0443, %bb.an ], [ %.2445, %._crit_edge726.loopexit ] ; 3 uses
  %.1440.lcssa = phi i32 [ %.0439, %bb.an ], [ %.3442, %._crit_edge726.loopexit ] ; 3 uses
  %.1436.lcssa = phi i32 [ %.0435, %bb.an ], [ %spec.select, %._crit_edge726.loopexit ] ; 3 uses
  %i.aqd = load i32, ptr %i.ka, align 8, !tbaa !73
  %i.aqe = and i32 %i.aqd, 2
  %.not506 = icmp eq i32 %i.aqe, 0
  br i1 %.not506, label %bb.fp, label %.loopexit642

bb.fp:                                            ; preds = %._crit_edge726
  %i.aqf = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.aqg = load ptr, ptr %i.jw, align 8, !tbaa !81
  %i.aqh = ptrtoint ptr %i.aqf to i64
  %i.aqi = ptrtoint ptr %i.aqg to i64
  %i.aqj = sub i64 %i.aqh, %i.aqi
  %.tr.i = trunc i64 %i.aqj to i32
  %i.aqk = shl i32 %.tr.i, 3
  %reass.sub.i610 = sub i32 %i.aqk, %.pre835.pre
  %i.aql = add i32 %reass.sub.i610, 32            ; 9 uses
  %i.aqm = load i64, ptr %i.kq, align 8, !tbaa !65
  %i.aqn = shl nsw i64 %i.aqm, 10
  %i.aqo = load i32, ptr %i.kr, align 8, !tbaa !66
  %i.aqp = sext i32 %i.aqo to i64
  %i.aqq = sdiv i64 %i.aqn, %i.aqp
  %i.aqr = trunc i64 %i.aqq to i32
  %i.aqs = load i32, ptr %i.u, align 4, !tbaa !57
  %i.aqt = mul nsw i32 %i.aqs, 6144
  %i.aqu = add nsw i32 %i.aqt, -3                 ; 4 uses
  %. = call i32 @llvm.smin.i32(i32 %i.aqu, i32 %i.aqr) ; 6 uses
  %i.aqv = load i32, ptr %i.ks, align 8, !tbaa !223
  %i.aqw = icmp eq i32 %i.aqv, 0
  br i1 %i.aqw, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.aqx = icmp slt i32 %., %i.aql
  br i1 %i.aqx, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aqy = sitofp nsz i32 %. to float
  %i.aqz = sitofp nsz i32 %i.aql to float
  %i.ara = fdiv nsz float %i.aqy, %i.aqz          ; 2 uses
  %i.arb = fcmp nsz olt float %i.ara, f0x3F666666
  %i.arc = select nsz i1 %i.arb, float %i.ara, float f0x3F666666
  %i.ard = load float, ptr %i.kh, align 16, !tbaa !56
  %i.are = fmul nsz float %i.arc, %i.ard
  store float %i.are, ptr %i.kh, align 16, !tbaa !56
  br label %bb.ab

bb.fs:                                            ; preds = %bb.fq
  %i.arf = load i32, ptr %i.ki, align 4, !tbaa !55 ; 2 uses
  %i.arg = icmp sgt i32 %i.arf, 0
  %i.arh = uitofp nneg i32 %i.arf to float
  %i.ari = select i1 %i.arg, float %i.arh, float 1.200000e+02
  store float %i.ari, ptr %i.kh, align 16, !tbaa !56
  br label %.loopexit642

bb.ft:                                            ; preds = %bb.fp
  %i.arj = call i32 @llvm.smax.i32(i32 %.0446.lcssa, i32 %.)
  %i.ark = call i32 @llvm.smin.i32(i32 %i.arj, i32 %i.aqu) ; 3 uses
  %.neg = sdiv i32 %., -4
  %i.arl = add i32 %.neg, %.
  %i.arm = call i32 @llvm.smax.i32(i32 %i.arl, i32 %.0446.lcssa)
  %i.arn = call i32 @llvm.smin.i32(i32 %i.arm, i32 %i.ark) ; 2 uses
  %.neg507 = sdiv i32 %i.arn, -8
  %i.aro = add i32 %.neg507, %i.arn               ; 2 uses
  %i.arp = sdiv i32 %i.ark, 2
  %i.arq = add nsw i32 %i.arp, %i.ark             ; 2 uses
  %i.arr = icmp eq i32 %.0464.ph, 0
  br i1 %i.arr, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ars = icmp samesign ult i32 %.0464.ph, 5
  br i1 %i.ars, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.art = icmp sge i32 %i.aql, %i.aro
  %i.aru = icmp sle i32 %i.aql, %i.arq
  %or.cond535.not639 = select i1 %i.art, i1 %i.aru, i1 false
  %.not508 = icmp slt i32 %i.aql, %i.aqu
  %or.cond636 = select i1 %or.cond535.not639, i1 %.not508, i1 false
  br i1 %or.cond636, label %.loopexit642, label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  %.not508.old = icmp slt i32 %i.aql, %i.aqu
  br i1 %.not508.old, label %.loopexit642, label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.ft
  %i.arv = sitofp nsz i32 %. to float
  %i.arw = sitofp nsz i32 %i.aql to float
  %i.arx = fdiv nsz float %i.arv, %i.arw
  %.not509 = icmp slt i32 %i.aql, %i.aro
  %.not510 = icmp sgt i32 %i.aql, %i.arq
  %or.cond536 = select i1 %.not509, i1 true, i1 %.not510
  %i.ary = call nsz float @llvm.sqrt.f32(float %i.arx) ; 2 uses
  br i1 %or.cond536, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.arz = call nsz float @llvm.sqrt.f32(float %i.ary) ; 2 uses
  %i.asa = fcmp nsz ogt float %i.arz, f0x3F666666
  %i.asb = select nsz i1 %i.asa, float %i.arz, float f0x3F666666 ; 2 uses
  %i.asc = fcmp nsz ogt float %i.asb, 1.100000e+00
  %..i537 = select nsz i1 %i.asc, float 1.100000e+00, float %i.asb
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  %.0 = phi nsz float [ %..i537, %bb.fy ], [ %i.ary, %bb.fx ] ; 3 uses
  %i.asd = load float, ptr %i.kh, align 16, !tbaa !56
  %i.ase = fmul nsz float %.0, %i.asd             ; 2 uses
  %i.asf = fcmp nsz ogt float %i.ase, f0x34000000
  %i.asg = select nsz i1 %i.asf, float %i.ase, float f0x34000000 ; 2 uses
  %i.ash = fcmp nsz ogt float %i.asg, 6.553600e+04
  %..i = select nsz i1 %i.ash, float 6.553600e+04, float %i.asg
  store float %..i, ptr %i.kh, align 16, !tbaa !56
  %i.asi = fcmp nsz ogt float %.0, f0x3F666666
  %i.asj = fcmp nsz olt float %.0, 1.100000e+00
  %or.cond = and i1 %i.asi, %i.asj
  br i1 %or.cond, label %.loopexit642, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ask = icmp ne i32 %.1440.lcssa, 0
  %i.asl = icmp ne i32 %.1444.lcssa, 0
  %or.cond4 = select i1 %i.ask, i1 true, i1 %i.asl
  %i.asm = icmp ne i32 %.1436.lcssa, 0
  %or.cond6 = select i1 %or.cond4, i1 true, i1 %i.asm
  br i1 %or.cond6, label %.preheader, label %.thread632

.preheader:                                       ; preds = %bb.ga
  %i.asn = load i8, ptr %i.aqc, align 1, !tbaa !61
  %.not738 = icmp eq i8 %i.asn, 0
  br i1 %.not738, label %.thread632, label %.lr.ph734

.lr.ph734:                                        ; preds = %.preheader
  %i.aso = icmp eq i32 %.2453.lcssa, 1
  br label %bb.gb

bb.gb:                                            ; preds = %.lr.ph734, %bb.gc
  %indvars.iv826 = phi i64 [ 0, %.lr.ph734 ], [ %indvars.iv.next827, %bb.gc ] ; 2 uses
  %i.asp = load ptr, ptr %i.kb, align 8, !tbaa !76
  %i.asq = getelementptr inbounds nuw [92976 x i8], ptr %i.asp, i64 %indvars.iv826 ; 4 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 12832
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asq, i64 8736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.asr, ptr noundef nonnull align 16 dereferenceable(4096) %i.ass, i64 4096, i1 false)
  br i1 %i.aso, label %.critedge, label %bb.gc, !llvm.loop !151

.critedge:                                        ; preds = %bb.gb
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asq, i64 59184
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asq, i64 55088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.ast, ptr noundef nonnull align 16 dereferenceable(4096) %i.asu, i64 4096, i1 false)
  br label %bb.gc

bb.gc:                                            ; preds = %.critedge, %bb.gb
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1 ; 2 uses
  %i.asv = load ptr, ptr %i.bj, align 16, !tbaa !64
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !61
  %i.asx = zext i8 %i.asw to i64
  %i.asy = icmp samesign ult i64 %indvars.iv.next827, %i.asx
  br i1 %i.asy, label %bb.gb, label %.thread632, !llvm.loop !152

.thread632:                                       ; preds = %bb.gc, %.preheader, %bb.ga
  %i.asz = add nuw nsw i32 %.0464.ph, 1
  br label %.outer

.loopexit642:                                     ; preds = %._crit_edge726, %bb.fv, %bb.fz, %bb.fw, %bb.fs
  %i.ata = load i32, ptr %i.jt, align 16, !tbaa !85 ; 2 uses
  %i.atb = icmp sgt i32 %.pre835.pre, 3
  br i1 %i.atb, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.loopexit642
  %i.atc = shl i32 %i.ata, 3
  %i.atd = or disjoint i32 %i.atc, 7
  br label %put_bits.exit614

bb.ge:                                            ; preds = %.loopexit642
  %i.ate = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.atf = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 2 uses
  %i.atg = ptrtoint ptr %i.ate to i64
  %i.ath = ptrtoint ptr %i.atf to i64
  %i.ati = sub i64 %i.atg, %i.ath
  %i.atj = icmp ugt i64 %i.ati, 3
  br i1 %i.atj, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.atk = shl i32 %i.ata, %.pre835.pre
  %i.atl = sub nsw i32 3, %.pre835.pre
  %i.atm = lshr i32 7, %i.atl
  %i.atn = or i32 %i.atm, %i.atk
  %i.ato = call i32 @llvm.bswap.i32(i32 %i.atn)
  store i32 %i.ato, ptr %i.atf, align 1, !tbaa !61
  %i.atp = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 4
  store ptr %i.atq, ptr %i.jy, align 16, !tbaa !83
  br label %put_bits.exit614

bb.gg:                                            ; preds = %bb.ge
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit614

put_bits.exit614:                                 ; preds = %bb.gf, %bb.gg, %bb.gd
  %.sink960 = phi i32 [ -3, %bb.gd ], [ 29, %bb.gg ], [ 29, %bb.gf ]
  %.026.i.i612 = phi i32 [ %i.atd, %bb.gd ], [ 7, %bb.gg ], [ 7, %bb.gf ] ; 2 uses
  %i.atr = add nsw i32 %.pre835.pre, %.sink960    ; 3 uses
  store i32 %.026.i.i612, ptr %i.jt, align 16, !tbaa !85
  store i32 %i.atr, ptr %i.jz, align 4, !tbaa !84
  %i.ats = icmp slt i32 %i.atr, 32
  br i1 %i.ats, label %.lr.ph.i616, label %flush_put_bits.exit

.lr.ph.i616:                                      ; preds = %put_bits.exit614
  %i.att = shl i32 %.026.i.i612, %i.atr           ; 2 uses
  store i32 %i.att, ptr %i.jt, align 16, !tbaa !85
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gj, %.lr.ph.i616
  %i.atu = phi i32 [ %i.auc, %bb.gj ], [ %i.att, %.lr.ph.i616 ]
  %i.atv = load ptr, ptr %i.jy, align 16, !tbaa !83 ; 3 uses
  %i.atw = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.atx = icmp ult ptr %i.atv, %i.atw
  br i1 %i.atx, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 160) #9
  call void @abort() #11
  unreachable

bb.gj:                                            ; preds = %bb.gh
  %i.aty = lshr i32 %i.atu, 24
  %i.atz = trunc nuw i32 %i.aty to i8
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atv, i64 1
  store ptr %i.aua, ptr %i.jy, align 16, !tbaa !83
  store i8 %i.atz, ptr %i.atv, align 1, !tbaa !61
  %i.aub = load i32, ptr %i.jt, align 16, !tbaa !85
  %i.auc = shl i32 %i.aub, 8                      ; 2 uses
  store i32 %i.auc, ptr %i.jt, align 16, !tbaa !85
  %i.aud = load i32, ptr %i.jz, align 4, !tbaa !84 ; 2 uses
  %i.aue = add nsw i32 %i.aud, 8
  store i32 %i.aue, ptr %i.jz, align 4, !tbaa !84
  %i.auf = icmp slt i32 %i.aud, 24
  br i1 %i.auf, label %bb.gh, label %flush_put_bits.exit, !llvm.loop !0

flush_put_bits.exit:                              ; preds = %bb.gj, %put_bits.exit614
  store i32 32, ptr %i.jz, align 4, !tbaa !84
  store i32 0, ptr %i.jt, align 16, !tbaa !85
  %i.aug = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.auh = load ptr, ptr %i.jw, align 8, !tbaa !81
  %i.aui = ptrtoint ptr %i.aug to i64
  %i.auj = ptrtoint ptr %i.auh to i64
  %i.auk = sub i64 %i.aui, %i.auj
  %.tr.i617 = trunc i64 %i.auk to i32             ; 2 uses
  %i.aul = shl i32 %.tr.i617, 3
  store i32 %i.aul, ptr %i.ke, align 4, !tbaa !53
  store i32 %.tr.i617, ptr %i.jv, align 8, !tbaa !193
  %i.aum = load float, ptr %i.kh, align 16, !tbaa !56
  %i.aun = getelementptr inbounds nuw i8, ptr %i.d, i64 38248 ; 2 uses
  %i.auo = load float, ptr %i.aun, align 8, !tbaa !86
  %i.aup = fadd nsz float %i.aum, %i.auo
  store float %i.aup, ptr %i.aun, align 8, !tbaa !86
  %i.auq = getelementptr inbounds nuw i8, ptr %i.d, i64 38252 ; 2 uses
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !87
  %i.aus = add nsw i32 %i.aur, 1
  store i32 %i.aus, ptr %i.auq, align 4, !tbaa !87
  %i.aut = getelementptr inbounds nuw i8, ptr %i.d, i64 38264
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.auv = load i32, ptr %i.auu, align 8, !tbaa !54
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aux = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @ff_af_queue_remove(ptr noundef nonnull %i.aut, i32 noundef %i.auv, ptr noundef nonnull %i.auw, ptr noundef nonnull %i.aux) #9
  %i.auy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.auz = load i32, ptr %i.auy, align 8, !tbaa !224
  %i.ava = or i32 %i.auz, 1
  store i32 %i.ava, ptr %i.auy, align 8, !tbaa !224
  store i32 1, ptr %3, align 4, !tbaa !60
  br label %.loopexit646

.loopexit646:                                     ; preds = %.thread917, %._crit_edge707, %copy_input_samples.exit, %bb.c, %bb.e, %bb.b, %flush_put_bits.exit
  %.4 = phi i32 [ %i.g, %bb.b ], [ %i.jr, %._crit_edge707 ], [ 0, %copy_input_samples.exit ], [ 0, %flush_put_bits.exit ], [ 0, %bb.c ], [ 0, %bb.e ], [ -22, %.thread917 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.4
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @aac_encode_end(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 38252
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 38248
  %i.f = load float, ptr %i.e, align 8, !tbaa !86
  %i.g = sitofp nsz i32 %i.d to float
  %i.h = fdiv nsz float %i.f, %i.g
  %i.i = fpext nsz float %i.h to double
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi double [ %i.i, %bb.b ], [ +qnan, %bb.a ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.52, double noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_tx_uninit(ptr noundef nonnull %i.k) #9
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_tx_uninit(ptr noundef nonnull %i.l) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 38144
  tail call void @ff_psy_end(ptr noundef nonnull %i.m) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  tail call void @ff_lpc_end(ptr noundef nonnull %i.n) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 567096
  tail call void @av_freep(ptr noundef nonnull %i.o) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 38136
  tail call void @av_freep(ptr noundef nonnull %i.p) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @av_freep(ptr noundef nonnull %i.q) #9
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 38264
  tail call void @ff_af_queue_close(ptr noundef nonnull %i.r) #9
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @av_channel_layout_describe(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @ff_aac_float_common_init() local_unnamed_addr #4

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @dsp_init(i32 %.64.val, ptr noundef initializes((96, 104)) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store float 3.276800e+04, ptr %i.a, align 4, !tbaa !77
  %i.b = and i32 %.64.val, 8388608
  %i.c = tail call ptr @avpriv_float_dsp_alloc(i32 noundef %i.b) #9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.d, align 16, !tbaa !80
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = call i32 @av_tx_init(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 1, i32 noundef 0, i32 noundef 1024, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = call i32 @av_tx_init(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef 1, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %i.a, i64 noundef 0) #9
  %. = call i32 @llvm.smin.i32(i32 %i.k, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ %., %bb.c ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -12, 1) i32 @alloc_buffers(ptr nofree noundef captures(none) initializes((567096, 567104)) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 38116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = mul nsw i32 %i.b, 3072
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias ptr @av_calloc(i64 noundef %i.d, i64 noundef 4) #9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 567096 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !226
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 38128
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !64
  %i.i = load i8, ptr %i.h, align 1, !tbaa !61
  %i.j = zext i8 %i.i to i64
  %i.k = tail call noalias ptr @av_calloc(i64 noundef %i.j, i64 noundef 92976) #9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 38136
  store ptr %i.k, ptr %i.l, align 8, !tbaa !76
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !226
  %.idx = mul nuw nsw i64 %indvars.iv, 12288
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.q, ptr %i.r, align 8, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !225

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a, %bb.b
  %.011 = phi i32 [ -12, %bb.a ], [ -12, %bb.b ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @put_audio_specific_config(ptr nofree noundef captures(none) initializes((72, 80)) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.PutBitContext, align 8      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.d, align 8, !tbaa !229
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.an, label %put_bits.exit16

put_bits.exit16:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 10 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 24 uses
  store ptr %i.c, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.k = load i32, ptr %i.j, align 16, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 38112
  %i.m = load i32, ptr %i.l, align 16, !tbaa !67
  %i.n = shl i32 %i.k, 4
  %i.o = add i32 %i.n, 16
  %i.p = or i32 %i.m, %i.o
  %i.q = shl i32 %i.p, 4
  %i.r = or i32 %i.q, %1                          ; 2 uses
  %i.s = shl i32 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %.not11 = icmp eq i32 %i.u, 0
  br i1 %.not11, label %.thread, label %put_bits.exit58.i

put_bits.exit58.i:                                ; preds = %put_bits.exit16
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !52   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.z = load i32, ptr %i.y, align 8, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 38112
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !67
  %i.ac = shl i32 %i.r, 13
  %i.ad = shl i32 %i.z, 4
  %i.ae = or i32 %i.ac, %i.ad
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 16, !tbaa !61
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 129
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !61
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = shl i32 %i.af, 6
  %i.an = shl nuw nsw i32 %i.ai, 2
  %i.ao = or i32 %i.am, %i.an
  %i.ap = lshr i32 %i.al, 2
  %i.aq = or i32 %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  store i32 %i.ar, ptr %i.c, align 1, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store ptr %i.as, ptr %i.h, align 8, !tbaa !83
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %i.v, i64 131
  %.pre56 = load i8, ptr %.phi.trans.insert55, align 1, !tbaa !61
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 130
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !61
  %i.at = zext i8 %.pre to i32
  %i.au = zext i8 %.pre56 to i32
  %i.av = shl nuw nsw i32 %i.al, 6
  %i.aw = shl nuw nsw i32 %i.at, 2
  %i.ax = or i32 %i.av, %i.aw
  %i.ay = or i32 %i.ax, %i.au
  %i.az = shl nuw nsw i32 %i.ay, 10               ; 2 uses
  store i32 %i.az, ptr %2, align 8, !tbaa !85
  store i32 14, ptr %i.i, align 4, !tbaa !84
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 132
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 156
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %put_bits.exit58.i
  %i.bc = phi ptr [ %i.as, %put_bits.exit58.i ], [ %i.ep, %._crit_edge.i ] ; 3 uses
  %i.bd = phi ptr [ %i.as, %put_bits.exit58.i ], [ %i.eq, %._crit_edge.i ] ; 3 uses
  %i.be = phi ptr [ %i.as, %put_bits.exit58.i ], [ %i.er, %._crit_edge.i ] ; 3 uses
  %i.bf = phi i32 [ 14, %put_bits.exit58.i ], [ %i.es, %._crit_edge.i ] ; 3 uses
  %i.bg = phi i32 [ %i.az, %put_bits.exit58.i ], [ %i.et, %._crit_edge.i ] ; 3 uses
  %indvars.iv107.i = phi i64 [ 0, %put_bits.exit58.i ], [ %indvars.iv.next108.i, %._crit_edge.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv107.i ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !61
  %.not101.i = icmp eq i8 %i.bi, 0
  br i1 %.not101.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.not42.i = icmp eq i64 %indvars.iv107.i, 3
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv107.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv107.i ; 2 uses
  br i1 %.not42.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %put_bits.exit94.us.i
  %i.bl = phi ptr [ %i.ci, %put_bits.exit94.us.i ], [ %i.bc, %.lr.ph.i ] ; 6 uses
  %i.bm = phi ptr [ %i.cj, %put_bits.exit94.us.i ], [ %i.bd, %.lr.ph.i ]
  %i.bn = phi ptr [ %i.ck, %put_bits.exit94.us.i ], [ %i.be, %.lr.ph.i ]
  %i.bo = phi i32 [ %i.cl, %put_bits.exit94.us.i ], [ %i.bf, %.lr.ph.i ] ; 4 uses
  %i.bp = phi i32 [ %.026.i.i92.us.i, %put_bits.exit94.us.i ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i, %put_bits.exit94.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv104.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !61
  %i.bs = zext i8 %i.br to i32                    ; 4 uses
  %i.bt = icmp sgt i32 %i.bo, 4
  br i1 %i.bt, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bl to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ugt i64 %i.bx, 3
  br i1 %i.by, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit94.us.i

bb.d:                                             ; preds = %bb.b
  %i.bz = shl i32 %i.bp, %i.bo
  %i.ca = sub nsw i32 4, %i.bo
  %i.cb = lshr i32 %i.bs, %i.ca
  %i.cc = or i32 %i.cb, %i.bz
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  store i32 %i.cd, ptr %i.bl, align 1, !tbaa !61
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 4 uses
  store ptr %i.cf, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit94.us.i

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.cg = shl i32 %i.bp, 4
  %i.ch = or i32 %i.cg, %i.bs
  br label %put_bits.exit94.us.i

put_bits.exit94.us.i:                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ci = phi ptr [ %i.bl, %bb.e ], [ %i.cf, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  %i.cj = phi ptr [ %i.bm, %bb.e ], [ %i.cf, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  %i.ck = phi ptr [ %i.bn, %bb.e ], [ %i.cf, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  %.sink129.i = phi i32 [ -4, %bb.e ], [ 28, %bb.d ], [ 28, %bb.c ]
  %.026.i.i92.us.i = phi i32 [ %i.ch, %bb.e ], [ %i.bs, %bb.d ], [ %i.bs, %bb.c ] ; 3 uses
  %i.cl = add nsw i32 %.sink129.i, %i.bo          ; 3 uses
  store i32 %.026.i.i92.us.i, ptr %2, align 8, !tbaa !85
  store i32 %i.cl, ptr %i.i, align 4, !tbaa !84
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %i.cm = load i8, ptr %i.bh, align 1, !tbaa !61
  %i.cn = zext i8 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next105.i, %i.cn
  br i1 %i.co, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !227

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %put_bits.exit94.i
  %i.cp = phi ptr [ %i.ei, %put_bits.exit94.i ], [ %i.bc, %.lr.ph.i ] ; 2 uses
  %i.cq = phi ptr [ %i.ej, %put_bits.exit94.i ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %i.cr = phi ptr [ %i.ek, %put_bits.exit94.i ], [ %i.be, %.lr.ph.i ] ; 4 uses
  %i.cs = phi i32 [ %i.el, %put_bits.exit94.i ], [ %i.bf, %.lr.ph.i ] ; 4 uses
  %i.ct = phi i32 [ %.026.i.i92.i, %put_bits.exit94.i ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %put_bits.exit94.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !61
  %i.cw = zext i8 %i.cv to i32                    ; 4 uses
  %i.cx = icmp sgt i32 %i.cs, 1
  br i1 %i.cx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.cy = shl i32 %i.ct, 1
  %i.cz = or i32 %i.cy, %i.cw
  br label %put_bits.exit90.i

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cr to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp ugt i64 %i.dd, 3
  br i1 %i.de, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.df = shl i32 %i.ct, %i.cs
  %i.dg = sub nsw i32 1, %i.cs
  %i.dh = lshr i32 %i.cw, %i.dg
  %i.di = or i32 %i.dh, %i.df
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di)
  store i32 %i.dj, ptr %i.cr, align 1, !tbaa !61
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 4 uses
  store ptr %i.dl, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit90.i

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit90.i

put_bits.exit90.i:                                ; preds = %bb.i, %bb.h, %bb.f
  %i.dm = phi ptr [ %i.cp, %bb.f ], [ %i.cp, %bb.i ], [ %i.dl, %bb.h ] ; 2 uses
  %i.dn = phi ptr [ %i.cq, %bb.f ], [ %i.cq, %bb.i ], [ %i.dl, %bb.h ] ; 5 uses
  %i.do = phi ptr [ %i.cr, %bb.f ], [ %i.cr, %bb.i ], [ %i.dl, %bb.h ]
  %.sink130.i = phi i32 [ -1, %bb.f ], [ 31, %bb.i ], [ 31, %bb.h ]
  %.026.i.i88.i = phi i32 [ %i.cz, %bb.f ], [ %i.cw, %bb.i ], [ %i.cw, %bb.h ] ; 3 uses
  %i.dp = add nsw i32 %.sink130.i, %i.cs          ; 5 uses
  store i32 %.026.i.i88.i, ptr %2, align 8, !tbaa !85
  store i32 %i.dp, ptr %i.i, align 4, !tbaa !84
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !61
  %i.ds = zext i8 %i.dr to i32                    ; 4 uses
  %i.dt = icmp sgt i32 %i.dp, 4
  br i1 %i.dt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %put_bits.exit90.i
  %i.du = shl i32 %.026.i.i88.i, 4
  %i.dv = or i32 %i.du, %i.ds
  br label %put_bits.exit94.i

bb.k:                                             ; preds = %put_bits.exit90.i
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dn to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = icmp ugt i64 %i.dz, 3
  br i1 %i.ea, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eb = shl i32 %.026.i.i88.i, %i.dp
  %i.ec = sub nsw i32 4, %i.dp
  %i.ed = lshr i32 %i.ds, %i.ec
  %i.ee = or i32 %i.ed, %i.eb
  %i.ef = tail call i32 @llvm.bswap.i32(i32 %i.ee)
  store i32 %i.ef, ptr %i.dn, align 1, !tbaa !61
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 4 uses
  store ptr %i.eh, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit94.i

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit94.i

put_bits.exit94.i:                                ; preds = %bb.m, %bb.l, %bb.j
  %i.ei = phi ptr [ %i.dm, %bb.j ], [ %i.dm, %bb.m ], [ %i.eh, %bb.l ] ; 2 uses
  %i.ej = phi ptr [ %i.dn, %bb.j ], [ %i.dn, %bb.m ], [ %i.eh, %bb.l ] ; 2 uses
  %i.ek = phi ptr [ %i.do, %bb.j ], [ %i.dn, %bb.m ], [ %i.eh, %bb.l ] ; 2 uses
  %.sink131.i = phi i32 [ -4, %bb.j ], [ 28, %bb.m ], [ 28, %bb.l ]
  %.026.i.i92.i = phi i32 [ %i.dv, %bb.j ], [ %i.ds, %bb.m ], [ %i.ds, %bb.l ] ; 3 uses
  %i.el = add nsw i32 %.sink131.i, %i.dp          ; 3 uses
  store i32 %.026.i.i92.i, ptr %2, align 8, !tbaa !85
  store i32 %i.el, ptr %i.i, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.em = load i8, ptr %i.bh, align 1, !tbaa !61
  %i.en = zext i8 %i.em to i64
  %i.eo = icmp samesign ult i64 %indvars.iv.next.i, %i.en
  br i1 %i.eo, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !227

._crit_edge.i:                                    ; preds = %put_bits.exit94.i, %put_bits.exit94.us.i, %.preheader.i
  %i.ep = phi ptr [ %i.ci, %put_bits.exit94.us.i ], [ %i.bc, %.preheader.i ], [ %i.ei, %put_bits.exit94.i ] ; 5 uses
  %i.eq = phi ptr [ %i.cj, %put_bits.exit94.us.i ], [ %i.bd, %.preheader.i ], [ %i.ej, %put_bits.exit94.i ]
  %i.er = phi ptr [ %i.ck, %put_bits.exit94.us.i ], [ %i.be, %.preheader.i ], [ %i.ek, %put_bits.exit94.i ]
  %i.es = phi i32 [ %i.cl, %put_bits.exit94.us.i ], [ %i.bf, %.preheader.i ], [ %i.el, %put_bits.exit94.i ] ; 6 uses
  %i.et = phi i32 [ %.026.i.i92.us.i, %put_bits.exit94.us.i ], [ %i.bg, %.preheader.i ], [ %.026.i.i92.i, %put_bits.exit94.i ] ; 3 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next108.i, 4
  br i1 %exitcond.not.i, label %bb.n, label %.preheader.i, !llvm.loop !228

bb.n:                                             ; preds = %._crit_edge.i
  %i.eu = and i32 %i.x, 8388608
  %.not.i = icmp eq i32 %i.eu, 0                  ; 2 uses
  %i.ev = icmp sgt i32 %i.es, 7
  br i1 %i.ev, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ew = and i32 %i.es, 7
  %i.ex = shl i32 %i.et, %i.ew
  %i.ey = and i32 %i.es, 2147483640
  br label %align_put_bits.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ez = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ep to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = icmp ugt i64 %i.fc, 3
  br i1 %i.fd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fe = shl i32 %i.et, %i.es
  %i.ff = tail call i32 @llvm.bswap.i32(i32 %i.fe)
  store i32 %i.ff, ptr %i.ep, align 1, !tbaa !61
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  store ptr %i.fh, ptr %i.h, align 8, !tbaa !83
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fi = phi ptr [ %i.ep, %bb.r ], [ %i.fh, %bb.q ]
  %reass.sub.i.i.i = and i32 %i.es, -8
  %i.fj = add i32 %reass.sub.i.i.i, 32
  br label %align_put_bits.exit.i

align_put_bits.exit.i:                            ; preds = %bb.s, %bb.o
  %i.fk = phi ptr [ %i.ep, %bb.o ], [ %i.fi, %bb.s ] ; 2 uses
  %.026.i.i.i.i = phi i32 [ %i.ex, %bb.o ], [ 0, %bb.s ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.ey, %bb.o ], [ %i.fj, %bb.s ] ; 4 uses
  %i.fl = select i1 %.not.i, i32 12, i32 4        ; 4 uses
  %i.fm = icmp sgt i32 %.0.i.i.i.i, 8
  br i1 %i.fm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %align_put_bits.exit.i
  %i.fn = shl i32 %.026.i.i.i.i, 8
  %i.fo = or disjoint i32 %i.fn, %i.fl
  br label %bb.x

bb.u:                                             ; preds = %align_put_bits.exit.i
  %i.fp = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fk to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = icmp ugt i64 %i.fs, 3
  br i1 %i.ft, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fu = shl i32 %.026.i.i.i.i, %.0.i.i.i.i
  %i.fv = sub nsw i32 8, %.0.i.i.i.i
  %i.fw = lshr i32 %i.fl, %i.fv
  %i.fx = or i32 %i.fw, %i.fu
  %i.fy = tail call i32 @llvm.bswap.i32(i32 %i.fx)
  store i32 %i.fy, ptr %i.fk, align 1, !tbaa !61
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store ptr %i.ga, ptr %i.h, align 8, !tbaa !83
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.sink132.i = phi i32 [ -8, %bb.t ], [ 24, %bb.w ], [ 24, %bb.v ]
  %.026.i.i96.i = phi i32 [ %i.fo, %bb.t ], [ %i.fl, %bb.w ], [ %i.fl, %bb.v ]
  %i.gb = add nsw i32 %.sink132.i, %.0.i.i.i.i
  %i.gc = select i1 %.not.i, ptr @.str.45, ptr @.str.44
  store i32 %.026.i.i96.i, ptr %2, align 8, !tbaa !85
  store i32 %i.gb, ptr %i.i, align 4, !tbaa !84
  call void @ff_put_string(ptr noundef nonnull %2, ptr noundef nonnull %i.gc, i32 noundef 0) #9
  %.pre57 = load i32, ptr %2, align 8, !tbaa !85  ; 2 uses
  %.pre58 = load i32, ptr %i.i, align 4, !tbaa !84 ; 5 uses
  %i.gd = icmp sgt i32 %.pre58, 11
  br i1 %i.gd, label %.thread, label %bb.y

.thread:                                          ; preds = %put_bits.exit16, %bb.x
  %i.ge = phi i32 [ %.pre57, %bb.x ], [ %i.s, %put_bits.exit16 ]
  %i.gf = phi i32 [ %.pre58, %bb.x ], [ 16, %put_bits.exit16 ]
  %i.gg = shl i32 %i.ge, 11
  %i.gh = or disjoint i32 %i.gg, 695
  %i.gi = add nsw i32 %i.gf, -11
  br label %put_bits.exit36

bb.y:                                             ; preds = %bb.x
  %i.gj = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !83  ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp ugt i64 %i.gn, 3
  br i1 %i.go, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gp = shl i32 %.pre57, %.pre58
  %i.gq = sub nsw i32 11, %.pre58
  %i.gr = lshr i32 695, %i.gq
  %i.gs = or i32 %i.gr, %i.gp
  %i.gt = call i32 @llvm.bswap.i32(i32 %i.gs)
  store i32 %i.gt, ptr %i.gk, align 1, !tbaa !61
  %i.gu = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store ptr %i.gv, ptr %i.h, align 8, !tbaa !83
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gw = add nsw i32 %.pre58, 21
  br label %put_bits.exit36

put_bits.exit36:                                  ; preds = %.thread, %bb.ab
  %.026.i.i34 = phi i32 [ %i.gh, %.thread ], [ 695, %bb.ab ] ; 3 uses
  %.0.i.i35 = phi i32 [ %i.gi, %.thread ], [ %i.gw, %bb.ab ] ; 5 uses
  store i32 %.026.i.i34, ptr %2, align 8, !tbaa !85
  store i32 %.0.i.i35, ptr %i.i, align 4, !tbaa !84
  %i.gx = icmp sgt i32 %.0.i.i35, 5
  br i1 %i.gx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %put_bits.exit36
  %i.gy = shl i32 %.026.i.i34, 5
  %i.gz = or disjoint i32 %i.gy, 5
  br label %put_bits.exit40

bb.ad:                                            ; preds = %put_bits.exit36
  %i.ha = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.hb = load ptr, ptr %i.h, align 8, !tbaa !83  ; 2 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = icmp ugt i64 %i.he, 3
  br i1 %i.hf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hg = shl i32 %.026.i.i34, %.0.i.i35
  %i.hh = sub nsw i32 5, %.0.i.i35
  %i.hi = lshr i32 5, %i.hh
  %i.hj = or i32 %i.hi, %i.hg
  %i.hk = call i32 @llvm.bswap.i32(i32 %i.hj)
  store i32 %i.hk, ptr %i.hb, align 1, !tbaa !61
  %i.hl = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store ptr %i.hm, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit40

bb.af:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit40

put_bits.exit40:                                  ; preds = %bb.ae, %bb.af, %bb.ac
  %.sink = phi i32 [ -5, %bb.ac ], [ 27, %bb.af ], [ 27, %bb.ae ]
  %.026.i.i38 = phi i32 [ %i.gz, %bb.ac ], [ 5, %bb.af ], [ 5, %bb.ae ] ; 3 uses
  %i.hn = add nsw i32 %.0.i.i35, %.sink           ; 4 uses
  store i32 %.026.i.i38, ptr %2, align 8, !tbaa !85
  store i32 %i.hn, ptr %i.i, align 4, !tbaa !84
  %i.ho = icmp sgt i32 %i.hn, 1
  br i1 %i.ho, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %put_bits.exit40
  %i.hp = shl i32 %.026.i.i38, 1
  br label %put_bits.exit44

bb.ah:                                            ; preds = %put_bits.exit40
  %i.hq = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.hr = load ptr, ptr %i.h, align 8, !tbaa !83  ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = icmp ugt i64 %i.hu, 3
  br i1 %i.hv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hw = shl i32 %.026.i.i38, %i.hn
  %i.hx = call i32 @llvm.bswap.i32(i32 %i.hw)
  store i32 %i.hx, ptr %i.hr, align 1, !tbaa !61
  %i.hy = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store ptr %i.hz, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit44

bb.aj:                                            ; preds = %bb.ah
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit44

put_bits.exit44:                                  ; preds = %bb.ai, %bb.aj, %bb.ag
  %.sink78 = phi i32 [ -1, %bb.ag ], [ 31, %bb.aj ], [ 31, %bb.ai ]
  %.026.i.i42 = phi i32 [ %i.hp, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.ai ]
  %i.ia = add nsw i32 %i.hn, %.sink78             ; 3 uses
  store i32 %i.ia, ptr %i.i, align 4, !tbaa !84
  %i.ib = icmp slt i32 %i.ia, 32
  br i1 %i.ib, label %.lr.ph.i46, label %flush_put_bits.exit

.lr.ph.i46:                                       ; preds = %put_bits.exit44
  %i.ic = shl i32 %.026.i.i42, %i.ia              ; 2 uses
  store i32 %i.ic, ptr %2, align 8, !tbaa !85
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i46
  %i.id = phi i32 [ %i.il, %bb.am ], [ %i.ic, %.lr.ph.i46 ]
  %i.ie = load ptr, ptr %i.h, align 8, !tbaa !83  ; 3 uses
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.ig = icmp ult ptr %i.ie, %i.if
  br i1 %i.ig, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 160) #9
  call void @abort() #11
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ih = lshr i32 %i.id, 24
  %i.ii = trunc nuw i32 %i.ih to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  store ptr %i.ij, ptr %i.h, align 8, !tbaa !83
  store i8 %i.ii, ptr %i.ie, align 1, !tbaa !61
  %i.ik = load i32, ptr %2, align 8, !tbaa !85
  %i.il = shl i32 %i.ik, 8                        ; 2 uses
  store i32 %i.il, ptr %2, align 8, !tbaa !85
  %i.im = load i32, ptr %i.i, align 4, !tbaa !84  ; 2 uses
  %i.in = add nsw i32 %i.im, 8
  store i32 %i.in, ptr %i.i, align 4, !tbaa !84
  %i.io = icmp slt i32 %i.im, 24
  br i1 %i.io, label %bb.ak, label %flush_put_bits.exit, !llvm.loop !0

flush_put_bits.exit:                              ; preds = %bb.am, %put_bits.exit44
  %.val = load ptr, ptr %i.e, align 8, !tbaa !81
  %.val12 = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.ip = ptrtoint ptr %.val12 to i64
  %i.iq = ptrtoint ptr %.val to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = trunc i64 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.is, ptr %i.it, align 8, !tbaa !230
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %flush_put_bits.exit
  %.0 = phi i32 [ 0, %flush_put_bits.exit ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0
}

declare i32 @ff_psy_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_lpc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_aacenc_dsp_init(ptr noundef) local_unnamed_addr #4

declare void @ff_af_queue_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #4

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #4

declare void @ff_put_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare i32 @ff_af_queue_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @put_ics_info(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 13 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %i.b, 1
  br label %put_bits.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83   ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.m, 3
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = shl i32 %i.b, %i.d
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  store i32 %i.p, ptr %i.j, align 1, !tbaa !61
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %i.r, ptr %i.i, align 8, !tbaa !83
  br label %put_bits.exit

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.d, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ 31, %bb.e ], [ 31, %bb.d ]
  %.026.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.s = add nsw i32 %i.d, %.sink                 ; 5 uses
  store i32 %.026.i.i, ptr %i.a, align 8, !tbaa !85
  store i32 %i.s, ptr %i.c, align 4, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !60   ; 4 uses
  %i.v = icmp sgt i32 %i.s, 2
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %put_bits.exit
  %i.w = shl i32 %.026.i.i, 2
  %i.x = or i32 %i.u, %i.w
  br label %put_bits.exit19

bb.g:                                             ; preds = %put_bits.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ugt i64 %i.ae, 3
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl i32 %.026.i.i, %i.s
  %i.ah = sub nsw i32 2, %i.s
  %i.ai = lshr i32 %i.u, %i.ah
  %i.aj = or i32 %i.ai, %i.ag
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  store i32 %i.ak, ptr %i.ab, align 1, !tbaa !61
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !83
  br label %put_bits.exit19

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit19

put_bits.exit19:                                  ; preds = %bb.h, %bb.i, %bb.f
  %.sink44 = phi i32 [ -2, %bb.f ], [ 30, %bb.i ], [ 30, %bb.h ]
  %.026.i.i17 = phi i32 [ %i.x, %bb.f ], [ %i.u, %bb.i ], [ %i.u, %bb.h ] ; 3 uses
  %i.an = add nsw i32 %i.s, %.sink44              ; 5 uses
  store i32 %.026.i.i17, ptr %i.a, align 8, !tbaa !85
  store i32 %i.an, ptr %i.c, align 4, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !61
  %i.aq = zext i8 %i.ap to i32                    ; 4 uses
  %i.ar = icmp sgt i32 %i.an, 1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %put_bits.exit19
  %i.as = shl i32 %.026.i.i17, 1
  %i.at = or i32 %i.as, %i.aq
  br label %put_bits.exit23

bb.k:                                             ; preds = %put_bits.exit19
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ugt i64 %i.ba, 3
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = shl i32 %.026.i.i17, %i.an
  %i.bd = sub nsw i32 1, %i.an
  %i.be = lshr i32 %i.aq, %i.bd
  %i.bf = or i32 %i.be, %i.bc
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  store i32 %i.bg, ptr %i.ax, align 1, !tbaa !61
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bi, ptr %i.aw, align 8, !tbaa !83
  br label %put_bits.exit23

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit23

put_bits.exit23:                                  ; preds = %bb.l, %bb.m, %bb.j
  %.sink45 = phi i32 [ -1, %bb.j ], [ 31, %bb.m ], [ 31, %bb.l ]
  %.026.i.i21 = phi i32 [ %i.at, %bb.j ], [ %i.aq, %bb.m ], [ %i.aq, %bb.l ] ; 5 uses
  %i.bj = add nsw i32 %i.an, %.sink45             ; 9 uses
  store i32 %.026.i.i21, ptr %i.a, align 8, !tbaa !85
  store i32 %i.bj, ptr %i.c, align 4, !tbaa !84
  %i.bk = load i32, ptr %i.t, align 4, !tbaa !60
  %.not = icmp eq i32 %i.bk, 2
  %i.bl = load i8, ptr %1, align 8, !tbaa !79
  %i.bm = zext i8 %i.bl to i32                    ; 8 uses
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %put_bits.exit23
  %i.bn = icmp sgt i32 %i.bj, 6
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = shl i32 %.026.i.i21, 6
  %i.bp = or i32 %i.bo, %i.bm
  br label %put_bits.exit27

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !82
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !83 ; 2 uses
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ugt i64 %i.bw, 3
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = shl i32 %.026.i.i21, %i.bj
  %i.bz = sub nsw i32 6, %i.bj
  %i.ca = lshr i32 %i.bm, %i.bz
end_hunk_0
begin_hunk_1_@apply_long_stop_window:bb.a
  %i.b = load i8, ptr %i.a, align 4, !tbaa !61
  %.not = icmp eq i8 %i.b, 0
  %i.c = select i1 %.not, ptr @ff_sine_1024, ptr @ff_aac_kbd_long_1024
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.e = load i8, ptr %i.d, align 1, !tbaa !61
  %.not14 = icmp eq i8 %i.e, 0
  %i.f = select i1 %.not14, ptr @ff_sine_128, ptr @ff_aac_kbd_short_128
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1792) %i.g, i8 0, i64 1792, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 18448
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1792
  tail call void %i.h(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f, i32 noundef 128) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 18960
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1792) %i.k, ptr noundef nonnull align 4 dereferenceable(1792) %i.l, i64 1792, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20752
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4096
  tail call void %i.n(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.c, i32 noundef 1024) #9
  ret void
}

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #4

declare void @ff_psy_end(ptr noundef) local_unnamed_addr #4

declare void @ff_lpc_end(ptr noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare void @ff_af_queue_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !59}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"AACEncOptions", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"PutBitContext", !7, i64 0, !7, i64 4, !13, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!"p1 _ZTS11AVTXContext", !10, i64 0}
!16 = !{!"p1 _ZTS17AVFloatDSPContext", !10, i64 0}
!17 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!18 = !{!"AACPCEInfo", !17, i64 0, !6, i64 24, !6, i64 28, !6, i64 52, !6, i64 84, !6, i64 100}
!19 = !{!"p1 double", !10, i64 0}
!20 = !{!"LPCContext", !7, i64 0, !7, i64 4, !7, i64 8, !19, i64 16, !19, i64 24, !10, i64 32, !10, i64 40, !6, i64 48}
!21 = !{!"p1 _ZTS14ChannelElement", !10, i64 0}
!22 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!23 = !{!"p1 _ZTS10FFPsyModel", !10, i64 0}
!24 = !{!"p1 _ZTS12FFPsyChannel", !10, i64 0}
!25 = !{!"p1 _ZTS17FFPsyChannelGroup", !10, i64 0}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!"p2 omnipotent char", !26, i64 0}
!28 = !{!"p1 int", !10, i64 0}
!29 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!30 = !{!"FFPsyContext", !22, i64 0, !23, i64 8, !24, i64 16, !25, i64 24, !7, i64 32, !7, i64 36, !27, i64 40, !28, i64 48, !7, i64 56, !29, i64 60, !10, i64 72}
!31 = !{!"p1 _ZTS22AACCoefficientsEncoder", !10, i64 0}
!32 = !{!"float", !6, i64 0}
!33 = !{!"p1 _ZTS10AudioFrame", !10, i64 0}
!34 = !{!"AudioFrameQueue", !22, i64 0, !7, i64 8, !7, i64 12, !33, i64 16, !7, i64 24, !7, i64 28}
!35 = !{!"short", !6, i64 0}
!36 = !{!"AACEncDSPContext", !10, i64 0, !10, i64 8}
!37 = !{!"p1 float", !10, i64 0}
!38 = !{!"", !37, i64 0}
!39 = !{!"AACEncContext", !11, i64 0, !12, i64 8, !14, i64 32, !15, i64 64, !10, i64 72, !15, i64 80, !10, i64 88, !16, i64 96, !18, i64 104, !6, i64 224, !7, i64 352, !7, i64 356, !20, i64 368, !7, i64 38112, !7, i64 38116, !13, i64 38120, !13, i64 38128, !21, i64 38136, !30, i64 38144, !31, i64 38224, !7, i64 38232, !7, i64 38236, !32, i64 38240, !7, i64 38244, !32, i64 38248, !7, i64 38252, !7, i64 38256, !34, i64 38264, !6, i64 38304, !6, i64 38688, !35, i64 42784, !6, i64 42788, !36, i64 567080, !38, i64 567096}
!40 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!41 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!42 = !{!"long", !6, i64 0}
!43 = !{!"AVRational", !7, i64 0, !7, i64 4}
!44 = !{!"p1 short", !10, i64 0}
!45 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!46 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!47 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!48 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!49 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!50 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!51 = !{!"AVCodecContext", !11, i64 0, !7, i64 8, !7, i64 12, !40, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !41, i64 40, !10, i64 48, !42, i64 56, !7, i64 64, !7, i64 68, !13, i64 72, !7, i64 80, !43, i64 84, !43, i64 92, !43, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !43, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !32, i64 204, !32, i64 208, !32, i64 212, !32, i64 216, !32, i64 220, !32, i64 224, !32, i64 228, !32, i64 232, !32, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !44, i64 288, !44, i64 296, !44, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !17, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !32, i64 428, !32, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !45, i64 456, !42, i64 464, !42, i64 472, !32, i64 480, !32, i64 484, !7, i64 488, !7, i64 492, !13, i64 496, !13, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !46, i64 536, !10, i64 544, !47, i64 552, !47, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !48, i64 728, !13, i64 736, !7, i64 744, !7, i64 748, !13, i64 752, !13, i64 760, !13, i64 768, !49, i64 776, !7, i64 784, !7, i64 788, !42, i64 792, !7, i64 800, !7, i64 804, !42, i64 808, !10, i64 816, !42, i64 824, !28, i64 832, !7, i64 840, !50, i64 848, !7, i64 856, !7, i64 860}
!52 = !{!51, !10, i64 32}
!53 = !{!39, !7, i64 38244}
!54 = !{!51, !7, i64 376}
!55 = !{!51, !7, i64 420}
!56 = !{!39, !32, i64 38240}
!57 = !{!39, !7, i64 38116}
!58 = !{!39, !7, i64 356}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!7, !7, i64 0}
!61 = !{!6, !6, i64 0}
!62 = !{!10, !10, i64 0}
!63 = !{!39, !13, i64 38120}
!64 = !{!39, !13, i64 38128}
!65 = !{!51, !42, i64 56}
!66 = !{!51, !7, i64 344}
!67 = !{!39, !7, i64 38112}
!68 = !{!51, !7, i64 688}
!69 = !{!39, !7, i64 12}
!70 = !{!39, !7, i64 352}
!71 = !{!39, !31, i64 38224}
!72 = !{!39, !7, i64 24}
!73 = !{!51, !7, i64 64}
!74 = !{!13, !13, i64 0}
!75 = !{!37, !37, i64 0}
!76 = !{!39, !21, i64 38136}
!77 = !{!32, !32, i64 0}
!78 = !{!"IndividualChannelStream", !6, i64 0, !6, i64 4, !6, i64 12, !6, i64 14, !44, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !6, i64 52, !32, i64 60}
!79 = !{!78, !6, i64 0}
!80 = !{!39, !16, i64 96}
!81 = !{!14, !13, i64 8}
!82 = !{!14, !13, i64 24}
!83 = !{!14, !13, i64 16}
!84 = !{!14, !7, i64 4}
!85 = !{!14, !7, i64 0}
!86 = !{!39, !32, i64 38248}
!87 = !{!39, !7, i64 38252}
!88 = !{!"AVFloatDSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!89 = !{!88, !10, i64 0}
!90 = !{!88, !10, i64 56}
!91 = !{!39, !35, i64 42784}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !59}
!94 = distinct !{!94, !59}
!95 = distinct !{!95, !59}
!96 = !{!51, !7, i64 396}
!97 = !{!51, !7, i64 356}
!98 = !{!39, !7, i64 20}
!99 = !{i64 0, i64 4, !60, i64 4, i64 4, !60, i64 8, i64 8, !61, i64 16, i64 8, !62, i64 24, i64 4, !61, i64 28, i64 24, !61, i64 52, i64 32, !61, i64 84, i64 16, !61, i64 100, i64 16, !61}
!100 = !{!39, !7, i64 8}
!101 = !{!39, !7, i64 38236}
!102 = distinct !{!102, !59}
!103 = distinct !{!103, !59}
!104 = distinct !{!104, !59}
!105 = distinct !{!105, !59}
!106 = distinct !{!106, !59}
!107 = distinct !{null}
!108 = distinct !{!108, !59}
!109 = distinct !{!109, !59}
!110 = distinct !{!110, !59}
!111 = distinct !{!111, !59}
!112 = distinct !{!112, !59}
!113 = distinct !{!113, !59}
!114 = distinct !{!114, !59}
!115 = distinct !{!115, !59, !196, !197}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = distinct !{!118, !59}
!119 = distinct !{!119, !59}
!120 = distinct !{!120, !59}
!121 = distinct !{!121, !59}
!122 = distinct !{!122, !59}
!123 = distinct !{!123, !59}
!124 = distinct !{!124, !59}
!125 = distinct !{!125, !59}
!126 = distinct !{!126, !59}
!127 = distinct !{!127, !59}
!128 = distinct !{!128, !59}
!129 = distinct !{!129, !59}
!130 = distinct !{!130, !59}
!131 = distinct !{!131, !59, !215}
!132 = distinct !{!132, !59}
!133 = distinct !{!133, !59}
!134 = distinct !{!134, !59, !196, !197}
!135 = distinct !{!135, !59, !197, !196}
!136 = distinct !{!136, !59}
!137 = distinct !{!137, !59}
!138 = distinct !{!138, !59}
!139 = distinct !{null, null}
!140 = distinct !{!140, !59}
!141 = distinct !{!141, !59}
!142 = distinct !{!142, !59}
!143 = distinct !{!143, !59}
!144 = distinct !{null}
!145 = distinct !{null, null}
!146 = distinct !{!146, !59}
!147 = distinct !{!147, !59}
!148 = distinct !{!148, !59}
!149 = distinct !{!149, !59}
!150 = distinct !{!150, !59}
!151 = distinct !{!151, !59}
!152 = distinct !{!152, !59}
!153 = !{!39, !7, i64 38276}
!154 = !{!39, !7, i64 38292}
!155 = !{!39, !7, i64 38288}
!156 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!157 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!158 = !{!"AVFrame", !6, i64 0, !6, i64 64, !27, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !43, i64 124, !42, i64 136, !42, i64 144, !43, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !156, i64 248, !7, i64 256, !50, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !42, i64 304, !157, i64 312, !7, i64 320, !47, i64 328, !47, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !10, i64 376, !17, i64 384, !42, i64 408, !7, i64 416}
!159 = !{!158, !7, i64 112}
!160 = !{!158, !27, i64 96}
!161 = !{!51, !42, i64 824}
!162 = !{!39, !7, i64 38232}
!163 = !{!"FFPsyWindowInfo", !6, i64 0, !7, i64 12, !7, i64 16, !6, i64 20, !6, i64 52, !28, i64 88}
!164 = !{!163, !7, i64 12}
!165 = !{!163, !7, i64 16}
!166 = !{!78, !7, i64 40}
!167 = !{!39, !23, i64 38152}
!168 = !{!"FFPsyModel", !13, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!169 = !{!168, !10, i64 16}
!170 = !{!28, !28, i64 0}
!171 = !{i64 0, i64 12, !61, i64 12, i64 4, !60, i64 16, i64 4, !60, i64 20, i64 32, !61, i64 52, i64 32, !61, i64 88, i64 8, !170}
!172 = !{!78, !7, i64 44}
!173 = !{!39, !27, i64 38184}
!174 = !{!78, !13, i64 32}
!175 = !{!39, !28, i64 38192}
!176 = !{!44, !44, i64 0}
!177 = !{!78, !44, i64 24}
!178 = !{!78, !7, i64 48}
!179 = !{!78, !32, i64 60}
!180 = !{!39, !10, i64 88}
!181 = !{!39, !15, i64 80}
!182 = !{!39, !10, i64 72}
!183 = !{!39, !15, i64 64}
!184 = !{!"TemporalNoiseShaping", !7, i64 0, !6, i64 4, !6, i64 36, !6, i64 164, !6, i64 292, !6, i64 420, !6, i64 2980}
!185 = !{!"Pulse", !7, i64 0, !7, i64 4, !6, i64 8, !6, i64 24}
!186 = !{!"SingleChannelElement", !78, i64 0, !184, i64 64, !185, i64 5604, !6, i64 5644, !6, i64 6156, !6, i64 6668, !6, i64 7180, !6, i64 7308, !6, i64 7436, !6, i64 7948, !6, i64 8464, !6, i64 12560, !6, i64 16656, !6, i64 24848}
!187 = !{!186, !32, i64 60}
!188 = !{!186, !7, i64 44}
!189 = !{!186, !6, i64 0}
!190 = !{!186, !13, i64 32}
!191 = !{!"AVPacket", !47, i64 0, !42, i64 8, !42, i64 16, !13, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !49, i64 48, !7, i64 56, !42, i64 64, !42, i64 72, !10, i64 80, !47, i64 88, !43, i64 96}
!192 = !{!191, !13, i64 24}
!193 = !{!191, !7, i64 32}
!194 = !{!"ChannelElement", !7, i64 0, !7, i64 4, !6, i64 8, !6, i64 9, !6, i64 137, !6, i64 272}
!195 = !{!194, !7, i64 0}
!196 = !{!"llvm.loop.isvectorized", i32 1}
!197 = !{!"llvm.loop.unroll.runtime.disable"}
!198 = !{!39, !7, i64 38212}
!199 = !{!39, !7, i64 38208}
!200 = !{!168, !10, i64 24}
!201 = !{!39, !7, i64 38256}
!202 = !{!"AACCoefficientsEncoder", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80}
!203 = !{!202, !10, i64 56}
!204 = !{!202, !10, i64 0}
!205 = !{!39, !7, i64 16}
!206 = !{!202, !10, i64 64}
!207 = !{!202, !10, i64 32}
!208 = !{!186, !7, i64 64}
!209 = !{!202, !10, i64 48}
!210 = !{!39, !7, i64 28}
!211 = !{!202, !10, i64 80}
!212 = !{!194, !6, i64 8}
!213 = !{!202, !10, i64 72}
!214 = !{!186, !7, i64 5604}
!215 = !{!"llvm.loop.unswitch.partial.disable"}
!216 = !{!194, !7, i64 4}
!217 = !{!202, !10, i64 40}
!218 = !{!202, !10, i64 8}
!219 = !{!185, !7, i64 0}
!220 = !{!185, !7, i64 4}
!221 = !{!202, !10, i64 24}
!222 = !{!202, !10, i64 16}
!223 = !{!51, !7, i64 416}
!224 = !{!191, !7, i64 40}
!225 = distinct !{!225, !59}
!226 = !{!39, !37, i64 567096}
!227 = distinct !{!227, !59}
!228 = distinct !{!228, !59}
!229 = !{!51, !13, i64 72}
!230 = !{!51, !7, i64 80}
end_hunk_1
