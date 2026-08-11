inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@start_output_pass:bb.a
.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.preheader.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.preheader.preheader.i ] ; 2 uses
  %.046.i = phi ptr [ %i.w, %.lr.ph.preheader.i ], [ %i.bt, %.preheader.preheader.i ] ; 6 uses
  %.03545.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.4.i, %.preheader.preheader.i ]
  %.03644.i = phi ptr [ %i.ab, %.lr.ph.preheader.i ], [ %i.bu, %.preheader.preheader.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03644.i, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %smoothing_ok.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.af = load i16, ptr %i.ad, align 4, !tbaa !73
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %smoothing_ok.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !73
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %smoothing_ok.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !73
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %smoothing_ok.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !73
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %smoothing_ok.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !73
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %smoothing_ok.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.au = load i16, ptr %i.at, align 4, !tbaa !73
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %smoothing_ok.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.ax = getelementptr inbounds nuw [256 x i8], ptr %i.aw, i64 %indvars.iv.i ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %smoothing_ok.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.046.i, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !4
  %.not40.i = icmp eq i32 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !4
  %.not40.1.i = icmp eq i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.046.i, i64 12
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !4
  %.not40.2.i = icmp eq i32 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.046.i, i64 16
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !4
  %.not40.3.i = icmp eq i32 %i.bk, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.046.i, i64 20
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !4
  %.not40.4.i = icmp eq i32 %i.bn, 0
  %i.bp = select i1 %.not40.4.i, i1 %.not40.3.i, i1 false
  %i.bq = select i1 %i.bp, i1 %.not40.2.i, i1 false
  %i.br = select i1 %i.bq, i1 %.not40.1.i, i1 false
  %i.bs = select i1 %i.br, i1 %.not40.i, i1 false
  %spec.select.4.i = select i1 %i.bs, i32 %.03545.i, i32 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.046.i, i64 24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.03644.i, i64 96
  %i.bv = load i32, ptr %i.x, align 8, !tbaa !42
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next.i, %i.bw
  br i1 %i.bx, label %.lr.ph.i, label %smoothing_ok.exit, !llvm.loop !74

smoothing_ok.exit:                                ; preds = %.preheader.preheader.i
  %.not8 = icmp eq i32 %spec.select.4.i, 0
  br i1 %.not8, label %smoothing_ok.exit.thread, label %.sink.split

smoothing_ok.exit.thread:                         ; preds = %bb.h, %bb.i, %.lr.ph.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.n, %bb.g, %bb.c, %bb.d, %smoothing_ok.exit, %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %smoothing_ok.exit, %smoothing_ok.exit.thread
  %decompress_smooth_data.sink = phi ptr [ @decompress_data, %smoothing_ok.exit.thread ], [ @decompress_smooth_data, %smoothing_ok.exit ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %decompress_smooth_data.sink, ptr %i.by, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.bz, align 8, !tbaa !75
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 5) i32 @consume_data(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !77
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = load i32, ptr %i.j, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44   ; 2 uses
  %i.x = mul i32 %i.w, %i.u
  %i.y = tail call ptr %i.o(ptr noundef nonnull %0, ptr noundef %i.t, i32 noundef %i.x, i32 noundef %i.w, i32 noundef 1) #6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !62
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !63 ; 2 uses
  %i.ah = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.an = sext i32 %i.ae to i64
  %.pre = load i32, ptr %i.ai, align 8, !tbaa !67
  %.pre108 = load i32, ptr %i.aj, align 8, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph87, %._crit_edge84
  %i.ao = phi i32 [ %i.ag, %.lr.ph87 ], [ %i.by, %._crit_edge84 ]
  %i.ap = phi i32 [ %.pre108, %.lr.ph87 ], [ %i.bz, %._crit_edge84 ] ; 2 uses
  %i.aq = phi i32 [ %.pre, %.lr.ph87 ], [ 0, %._crit_edge84 ] ; 2 uses
  %indvars.iv105 = phi i64 [ %i.an, %.lr.ph87 ], [ %indvars.iv.next106, %._crit_edge84 ] ; 3 uses
  %i.ar = icmp ult i32 %i.aq, %i.ap
  br i1 %i.ar, label %.preheader, label %._crit_edge84

.preheader:                                       ; preds = %bb.c, %bb.e
  %.06283 = phi i32 [ %i.bv, %bb.e ], [ %i.aq, %bb.c ] ; 3 uses
  %i.as = load i32, ptr %i.d, align 8, !tbaa !62  ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph81.preheader, label %._crit_edge82

.lr.ph81.preheader:                               ; preds = %.preheader
  %wide.trip.count103 = zext nneg i32 %i.as to i64
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %._crit_edge77
  %indvars.iv100 = phi i64 [ 0, %.lr.ph81.preheader ], [ %indvars.iv.next101, %._crit_edge77 ] ; 3 uses
  %.06079 = phi i32 [ 0, %.lr.ph81.preheader ], [ %.161.lcssa, %._crit_edge77 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv100
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !65 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !82 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !83 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %.lr.ph81
  %i.bb = mul i32 %i.ax, %.06283
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp sgt i32 %i.ax, 0
  br i1 %i.bd, label %.lr.ph71.us.preheader, label %._crit_edge77

.lr.ph71.us.preheader:                            ; preds = %.lr.ph76
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv100
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !78
  %wide.trip.count = zext nneg i32 %i.az to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv105
  %i.bg = zext nneg i32 %i.ax to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ax, 4
  %n.vec = and i64 %i.bg, 2147483644              ; 5 uses
  %i.bh = shl nuw nsw i64 %n.vec, 7
  %1 = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bg
  br label %.lr.ph71.us

.lr.ph71.us:                                      ; preds = %.lr.ph71.us.preheader, %._crit_edge72.us
  %indvars.iv96 = phi i64 [ 0, %.lr.ph71.us.preheader ], [ %indvars.iv.next97, %._crit_edge72.us ] ; 2 uses
  %.16173.us = phi i32 [ %.06079, %.lr.ph71.us.preheader ], [ %indvars.iv.next94, %._crit_edge72.us ] ; 2 uses
  %2 = sext i32 %.16173.us to i64                 ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv96
  %i.bi = load ptr, ptr %gep, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.bi, i64 %i.bc ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph71.us
  %i.bk = add nsw i64 %n.vec, %2
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bh
  %invariant.gep135 = getelementptr [8 x i8], ptr %i.al, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.bj, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 128> ; 2 uses
  %step.add128 = getelementptr i8, <2 x ptr> %vector.gep, i64 256
  %gep136 = getelementptr [8 x i8], ptr %invariant.gep135, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep136, i64 16
  store <2 x ptr> %vector.gep, ptr %gep136, align 8, !tbaa !58
  store <2 x ptr> %step.add128, ptr %i.bm, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge72.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph71.us, %middle.block
  %indvars.iv93.ph = phi i64 [ %2, %.lr.ph71.us ], [ %i.bk, %middle.block ]
  %.069.us.ph = phi ptr [ %i.bj, %.lr.ph71.us ], [ %i.bl, %middle.block ]
  %.05868.us.ph = phi i32 [ 0, %.lr.ph71.us ], [ %1, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.a, %scalar.ph ], [ %indvars.iv93.ph, %scalar.ph.preheader ] ; 2 uses
  %.069.us = phi ptr [ %i.bo, %scalar.ph ], [ %.069.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.05868.us = phi i32 [ %3, %scalar.ph ], [ %.05868.us.ph, %scalar.ph.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.069.us, i64 128
  %indvars.iv.next94.a = add nsw i64 %indvars.iv93, 1
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv93
  store ptr %.069.us, ptr %i.bp, align 8, !tbaa !58
  %3 = add nuw nsw i32 %.05868.us, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %3, %i.ax
  br i1 %exitcond.not, label %._crit_edge72.us, label %scalar.ph, !llvm.loop !87

._crit_edge72.us:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %indvars.iv.next94 = add i32 %.16173.us, %i.ax
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond99.not, label %._crit_edge77.loopexit, label %.lr.ph71.us, !llvm.loop !88

._crit_edge77.loopexit:                           ; preds = %._crit_edge72.us
  %4 = mul i32 %i.az, %i.ax
  %5 = add i32 %.06079, %4
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %.lr.ph76, %._crit_edge77.loopexit, %.lr.ph81
  %.161.lcssa = phi i32 [ %.06079, %.lr.ph81 ], [ %5, %._crit_edge77.loopexit ], [ %.06079, %.lr.ph76 ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !89

._crit_edge82:                                    ; preds = %._crit_edge77, %.preheader
  %i.bq = load ptr, ptr %i.am, align 8, !tbaa !90
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !91
  %i.bt = tail call i32 %i.bs(ptr noundef nonnull %0, ptr noundef nonnull %i.al) #6
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge82
  %i.bu = trunc nsw i64 %indvars.iv105 to i32
  store i32 %i.bu, ptr %i.ad, align 4, !tbaa !68
  store i32 %.06283, ptr %i.ai, align 8, !tbaa !67
  br label %bb.l

bb.e:                                             ; preds = %._crit_edge82
  %i.bv = add nuw i32 %.06283, 1                  ; 2 uses
  %i.bw = load i32, ptr %i.aj, align 8, !tbaa !81 ; 2 uses
  %i.bx = icmp ult i32 %i.bv, %i.bw
  br i1 %i.bx, label %.preheader, label %._crit_edge84.loopexit, !llvm.loop !93

._crit_edge84.loopexit:                           ; preds = %bb.e
  %.pre109 = load i32, ptr %i.af, align 8, !tbaa !63
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge84.loopexit, %bb.c
  %i.by = phi i32 [ %.pre109, %._crit_edge84.loopexit ], [ %i.ao, %bb.c ] ; 2 uses
  %i.bz = phi i32 [ %i.bw, %._crit_edge84.loopexit ], [ %i.ap, %bb.c ]
  store i32 0, ptr %i.ai, align 8, !tbaa !67
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.ca = sext i32 %i.by to i64
  %i.cb = icmp slt i64 %indvars.iv.next106, %i.ca
  br i1 %i.cb, label %bb.c, label %._crit_edge88, !llvm.loop !94

._crit_edge88:                                    ; preds = %._crit_edge84, %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !61
  %i.ce = add i32 %i.cd, 1                        ; 3 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !64 ; 2 uses
  %i.ch = icmp ult i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.f, label %bb.k

bb.f:                                             ; preds = %._crit_edge88
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !35  ; 4 uses
  %i.cj = load i32, ptr %i.d, align 8, !tbaa !62
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store i32 1, ptr %i.cl, align 8, !tbaa !63
  br label %start_iMCU_row.exit

bb.h:                                             ; preds = %bb.f
  %i.cm = add i32 %i.cg, -1
  %i.cn = icmp ult i32 %i.ce, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !65 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  br i1 %i.cn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !63
  br label %start_iMCU_row.exit

bb.j:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !66
  store i32 %i.cu, ptr %i.cq, align 8, !tbaa !63
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %bb.g, %bb.i, %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 0, ptr %i.cv, align 8, !tbaa !67
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  store i32 0, ptr %i.cw, align 4, !tbaa !68
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge88
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !95
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !96
  tail call void %i.da(ptr noundef nonnull %0) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %start_iMCU_row.exit, %bb.d
  %.055 = phi i32 [ 0, %bb.d ], [ 3, %start_iMCU_row.exit ], [ 4, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.055
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 5) i32 @decompress_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64
  %i.e = add i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.k = load i32, ptr %i.f, align 4, !tbaa !98   ; 2 uses
  %i.l = load i32, ptr %i.g, align 4, !tbaa !99   ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.k, %i.l
  br i1 %i.n, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.h, align 8, !tbaa !61
  %i.p = load i32, ptr %i.i, align 8, !tbaa !75
  %.not = icmp ugt i32 %i.o, %i.p
  br i1 %.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.s = tail call i32 %i.r(ptr noundef nonnull %0) #6
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit69, label %bb.b, !llvm.loop !101

.critedge2:                                       ; preds = %bb.c, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %.critedge2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 584
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph80, %.loopexit
  %indvars.iv86 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next87, %.loopexit ] ; 4 uses
  %.05778 = phi ptr [ %i.y, %.lr.ph80 ], [ %i.bt, %.loopexit ] ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05778, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !102
  %.not68 = icmp eq i32 %i.ad, 0
  br i1 %.not68, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv86
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %.05778, i64 12 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44 ; 2 uses
  %i.am = mul i32 %i.al, %i.aj
  %i.an = tail call ptr %i.ag(ptr noundef nonnull %0, ptr noundef %i.ai, i32 noundef %i.am, i32 noundef %i.al, i32 noundef 0) #6
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !75
  %i.ap = icmp ult i32 %i.ao, %i.e
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.05778, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !50
  %i.at = load i32, ptr %i.ak, align 4, !tbaa !44 ; 2 uses
  %i.au = urem i32 %i.as, %i.at                   ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  %spec.select = select i1 %i.av, i32 %i.at, i32 %i.au
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.062 = phi i32 [ %i.aq, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !103
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv86
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.ba = icmp sgt i32 %.062, 0
  br i1 %i.ba, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05778, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05778, i64 36 ; 2 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !48
end_hunk_0
