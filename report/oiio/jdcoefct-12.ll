inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@start_output_pass:bb.a
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.05368.i, i64 20
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !3
  %.not62.4.i = icmp eq i32 %i.di, 0
  %i.dk = load i32, ptr %i.ag, align 4, !tbaa !81
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink100.i = phi i32 [ %i.dn, %bb.ae ], [ -1, %bb.ad ]
  %i.do = getelementptr inbounds nuw i8, ptr %.069.i, i64 24
  store i32 %.sink100.i, ptr %i.do, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.05368.i, i64 24
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !3
  %.not62.5.i = icmp eq i32 %i.dq, 0
  %i.ds = load i32, ptr %i.ag, align 4, !tbaa !81
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.du = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink101.i = phi i32 [ %i.dv, %bb.ag ], [ -1, %bb.af ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.069.i, i64 28
  store i32 %.sink101.i, ptr %i.dw, align 4, !tbaa !3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05368.i, i64 28
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !3
  %.not62.6.i = icmp eq i32 %i.dy, 0
  %i.ea = load i32, ptr %i.ag, align 4, !tbaa !81
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink102.i = phi i32 [ %i.ed, %bb.ai ], [ -1, %bb.ah ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.069.i, i64 32
  store i32 %.sink102.i, ptr %i.ee, align 4, !tbaa !3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.05368.i, i64 32
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %.not62.7.i = icmp eq i32 %i.eg, 0
  %i.ei = load i32, ptr %i.ag, align 4, !tbaa !81
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink103.i = phi i32 [ %i.el, %bb.ak ], [ -1, %bb.aj ]
  %i.em = getelementptr inbounds nuw i8, ptr %.069.i, i64 36
  store i32 %.sink103.i, ptr %i.em, align 4, !tbaa !3
  %i.en = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.05368.i, i64 36
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !3
  %.not62.8.i = icmp eq i32 %i.eo, 0
  %i.eq = select i1 %.not62.8.i, i1 %.not62.7.i, i1 false
  %i.er = select i1 %i.eq, i1 %.not62.6.i, i1 false
  %i.es = select i1 %i.er, i1 %.not62.5.i, i1 false
  %i.et = select i1 %i.es, i1 %.not62.4.i, i1 false
  %i.eu = select i1 %i.et, i1 %.not62.3.i, i1 false
  %i.ev = select i1 %i.eu, i1 %.not62.2.i, i1 false
  %i.ew = select i1 %i.ev, i1 %.not62.1.i, i1 false
  %i.ex = select i1 %i.ew, i1 %.not62.i, i1 false
  %spec.select.8.i = select i1 %i.ex, i32 %.05567.i, i32 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.05368.i, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %.069.i, i64 40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.05765.i, i64 96
  %i.fb = load i32, ptr %i.y, align 8, !tbaa !49  ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next.i, %i.fc
  br i1 %i.fd, label %bb.h, label %smoothing_ok.exit, !llvm.loop !82

smoothing_ok.exit:                                ; preds = %bb.al
  %.not8 = icmp eq i32 %spec.select.8.i, 0
  br i1 %.not8, label %smoothing_ok.exit.thread, label %.sink.split

smoothing_ok.exit.thread:                         ; preds = %bb.i, %bb.j, %bb.h, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.s, %bb.g, %bb.c, %bb.d, %smoothing_ok.exit, %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %smoothing_ok.exit, %smoothing_ok.exit.thread
  %decompress_smooth_data.sink = phi ptr [ @decompress_data, %smoothing_ok.exit.thread ], [ @decompress_smooth_data, %smoothing_ok.exit ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %decompress_smooth_data.sink, ptr %i.fe, align 8, !tbaa !63
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.ff, align 8, !tbaa !83
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 5) i32 @consume_data(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !69
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !85
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.u = load i32, ptr %i.j, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51   ; 2 uses
  %i.x = mul i32 %i.w, %i.u
  %i.y = tail call ptr %i.o(ptr noundef nonnull %0, ptr noundef %i.t, i32 noundef %i.x, i32 noundef %i.w, i32 noundef 1) #7
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !69
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !70 ; 2 uses
  %i.ah = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ap = sext i32 %i.ae to i64
  %.pre = load i32, ptr %i.ai, align 8, !tbaa !74
  %.pre112 = load i32, ptr %i.aj, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph91, %._crit_edge88
  %i.aq = phi i32 [ %i.ag, %.lr.ph91 ], [ %i.cf, %._crit_edge88 ]
  %i.ar = phi i32 [ %.pre112, %.lr.ph91 ], [ %i.cg, %._crit_edge88 ] ; 2 uses
  %i.as = phi i32 [ %.pre, %.lr.ph91 ], [ 0, %._crit_edge88 ] ; 2 uses
  %indvars.iv109 = phi i64 [ %i.ap, %.lr.ph91 ], [ %indvars.iv.next110, %._crit_edge88 ] ; 3 uses
  %i.at = icmp ult i32 %i.as, %i.ar
  br i1 %i.at, label %.preheader, label %._crit_edge88

.preheader:                                       ; preds = %bb.c, %bb.g
  %.06587 = phi i32 [ %i.cc, %bb.g ], [ %i.as, %bb.c ] ; 3 uses
  %i.au = load i32, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph85.preheader, label %._crit_edge86

.lr.ph85.preheader:                               ; preds = %.preheader
  %wide.trip.count107 = zext nneg i32 %i.au to i64
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %._crit_edge81
  %indvars.iv104 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next105, %._crit_edge81 ] ; 3 uses
  %.06383 = phi i32 [ 0, %.lr.ph85.preheader ], [ %.164.lcssa, %._crit_edge81 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !90 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !91 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %.lr.ph85
  %i.bd = mul i32 %i.az, %.06587
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp sgt i32 %i.az, 0
  br i1 %i.bf, label %.lr.ph75.us.preheader, label %._crit_edge81

.lr.ph75.us.preheader:                            ; preds = %.lr.ph80
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !86
  %wide.trip.count = zext nneg i32 %i.bb to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv109
  %i.bi = zext nneg i32 %i.az to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.az, 4
  %n.vec = and i64 %i.bi, 2147483644              ; 4 uses
  %i.bj = shl nuw nsw i64 %n.vec, 7
  %cmp.n = icmp eq i64 %n.vec, %i.bi
  br label %.lr.ph75.us

.lr.ph75.us:                                      ; preds = %.lr.ph75.us.preheader, %._crit_edge76.us
  %indvars.iv100 = phi i64 [ 0, %.lr.ph75.us.preheader ], [ %indvars.iv.next101, %._crit_edge76.us ] ; 2 uses
  %.16477.us = phi i32 [ %.06383, %.lr.ph75.us.preheader ], [ %2, %._crit_edge76.us ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv100
  %i.bk = load ptr, ptr %gep, align 8, !tbaa !65
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.bk, i64 %i.be ; 3 uses
  %1 = sext i32 %.16477.us to i64                 ; 3 uses
  %2 = add i32 %i.az, %.16477.us                  ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph75.us
  %i.bm = add nsw i64 %n.vec, %1
  %i.bn = getelementptr i8, ptr %i.bl, i64 %i.bj
  %invariant.gep139 = getelementptr [8 x i8], ptr %i.al, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.bl, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 128> ; 2 uses
  %step.add132 = getelementptr i8, <2 x ptr> %vector.gep, i64 256
  %gep140 = getelementptr [8 x i8], ptr %invariant.gep139, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep140, i64 16
  store <2 x ptr> %vector.gep, ptr %gep140, align 8, !tbaa !65
  store <2 x ptr> %step.add132, ptr %i.bo, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge76.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph75.us, %middle.block
  %indvars.iv97.ph = phi i64 [ %1, %.lr.ph75.us ], [ %i.bm, %middle.block ]
  %.073.us.ph = phi ptr [ %i.bl, %.lr.ph75.us ], [ %i.bn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.a, %scalar.ph ], [ %indvars.iv97.ph, %scalar.ph.preheader ] ; 2 uses
  %.073.us = phi ptr [ %i.bq, %scalar.ph ], [ %.073.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.073.us, i64 128
  %indvars.iv.next98.a = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv97
  store ptr %.073.us, ptr %i.br, align 8, !tbaa !65
  %lftr.wideiv = trunc i64 %indvars.iv.next98.a to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge76.us, label %scalar.ph, !llvm.loop !95

._crit_edge76.us:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond103.not, label %._crit_edge81, label %.lr.ph75.us, !llvm.loop !96

._crit_edge81:                                    ; preds = %._crit_edge76.us, %.lr.ph80, %.lr.ph85
  %.164.lcssa = phi i32 [ %.06383, %.lr.ph85 ], [ %.06383, %.lr.ph80 ], [ %2, %._crit_edge76.us ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge86, label %.lr.ph85, !llvm.loop !97

._crit_edge86:                                    ; preds = %._crit_edge81, %.preheader
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !98 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !99
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge86
  %i.bv = load i32, ptr %i.an, align 8, !tbaa !68
  %i.bw = load ptr, ptr %i.ao, align 8, !tbaa !101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 116
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge86
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !104
  %i.ca = tail call i32 %i.bz(ptr noundef nonnull %0, ptr noundef nonnull %i.al) #7
  %.not66 = icmp eq i32 %i.ca, 0
  br i1 %.not66, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = trunc nsw i64 %indvars.iv109 to i32
  store i32 %i.cb, ptr %i.ad, align 4, !tbaa !75
  store i32 %.06587, ptr %i.ai, align 8, !tbaa !74
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.cc = add nuw i32 %.06587, 1                  ; 2 uses
  %i.cd = load i32, ptr %i.aj, align 8, !tbaa !89 ; 2 uses
  %i.ce = icmp ult i32 %i.cc, %i.cd
  br i1 %i.ce, label %.preheader, label %._crit_edge88.loopexit, !llvm.loop !105

._crit_edge88.loopexit:                           ; preds = %bb.g
  %.pre113 = load i32, ptr %i.af, align 8, !tbaa !70
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %bb.c
  %i.cf = phi i32 [ %.pre113, %._crit_edge88.loopexit ], [ %i.aq, %bb.c ] ; 2 uses
  %i.cg = phi i32 [ %i.cd, %._crit_edge88.loopexit ], [ %i.ar, %bb.c ]
  store i32 0, ptr %i.ai, align 8, !tbaa !74
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ch = sext i32 %i.cf to i64
  %i.ci = icmp slt i64 %indvars.iv.next110, %i.ch
  br i1 %i.ci, label %bb.c, label %._crit_edge92, !llvm.loop !106

._crit_edge92:                                    ; preds = %._crit_edge88, %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !68
  %i.cl = add i32 %i.ck, 1                        ; 3 uses
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !68
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !71 ; 2 uses
  %i.co = icmp ult i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.h, label %bb.m

bb.h:                                             ; preds = %._crit_edge92
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !41  ; 4 uses
  %i.cq = load i32, ptr %i.d, align 8, !tbaa !69
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  store i32 1, ptr %i.cs, align 8, !tbaa !70
  br label %start_iMCU_row.exit

bb.j:                                             ; preds = %bb.h
  %i.ct = add i32 %i.cn, -1
  %i.cu = icmp ult i32 %i.cl, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !72 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 80 ; 2 uses
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !51
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !70
  br label %start_iMCU_row.exit

bb.l:                                             ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 76
  %i.db = load i32, ptr %i.da, align 4, !tbaa !73
  store i32 %i.db, ptr %i.cx, align 8, !tbaa !70
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %bb.i, %bb.k, %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  store i32 0, ptr %i.dc, align 8, !tbaa !74
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 76
  store i32 0, ptr %i.dd, align 4, !tbaa !75
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge92
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !107
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !108
  tail call void %i.dh(ptr noundef nonnull %0) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %start_iMCU_row.exit, %bb.f
  %.058 = phi i32 [ 0, %bb.f ], [ 3, %start_iMCU_row.exit ], [ 4, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.058
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 5) i32 @decompress_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %i.e = add i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.k = load i32, ptr %i.f, align 4, !tbaa !81   ; 2 uses
  %i.l = load i32, ptr %i.g, align 4, !tbaa !110  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.k, %i.l
  br i1 %i.n, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.h, align 8, !tbaa !68
  %i.p = load i32, ptr %i.i, align 8, !tbaa !83
  %.not = icmp ugt i32 %i.o, %i.p
  br i1 %.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !107
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111
  %i.s = tail call i32 %i.r(ptr noundef nonnull %0) #7
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit75, label %bb.b, !llvm.loop !112

.critedge2:                                       ; preds = %bb.c, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !49
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %.critedge2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph87, %.loopexit
  %indvars.iv91 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next92, %.loopexit ] ; 9 uses
  %.06285 = phi ptr [ %i.y, %.lr.ph87 ], [ %i.ck, %.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06285, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113
  %.not73 = icmp eq i32 %i.ae, 0
  br i1 %.not73, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv91
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %.06285, i64 12 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51 ; 2 uses
  %i.an = mul i32 %i.am, %i.ak
  %i.ao = tail call ptr %i.ah(ptr noundef nonnull %0, ptr noundef %i.aj, i32 noundef %i.an, i32 noundef %i.am, i32 noundef 0) #7
  %i.ap = load i32, ptr %i.i, align 8, !tbaa !83
  %i.aq = icmp ult i32 %i.ap, %i.e
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !51
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.06285, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !57
  %i.au = load i32, ptr %i.al, align 4, !tbaa !51 ; 2 uses
  %i.av = urem i32 %i.at, %i.au                   ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  %spec.select = select i1 %i.aw, i32 %i.au, i32 %i.av
  br label %bb.i
end_hunk_0
