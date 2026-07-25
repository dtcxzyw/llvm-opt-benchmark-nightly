inline.NumInlined: 92
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@VP8LResidualImage:bb.a
PredictBatch.exit.loopexit.us.i.epil.preheader:   ; preds = %CopyImageWithPrediction.exit.loopexit241.unr-lcssa, %PredictBatch.exit.loopexit.us.i.preheader
  %indvars.iv103.i.epil.init = phi i64 [ 0, %PredictBatch.exit.loopexit.us.i.preheader ], [ %indvars.iv.next104.i.1, %CopyImageWithPrediction.exit.loopexit241.unr-lcssa ] ; 2 uses
  %lcmp.mod260 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.wh = mul nsw i64 %indvars.iv103.i.epil.init, %i.sx
  %i.wi = getelementptr inbounds [4 x i8], ptr %5, i64 %i.wh
  %indvars.iv.next104.i.epil = add nuw nsw i64 %indvars.iv103.i.epil.init, 1
  %i.wj = icmp samesign ult i64 %indvars.iv.next104.i.epil, %i.tt
  %i.wk = zext i1 %i.wj to i32
  %i.wl = add nsw i32 %0, %i.wk
  %i.wm = sext i32 %i.wl to i64
  %i.wn = shl nsw i64 %i.wm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %i.wi, i64 %i.wn, i1 false)
  br label %CopyImageWithPrediction.exit

CopyImageWithPrediction.exit:                     ; preds = %PredictBatch.exit.i, %PredictBatch.exit.loopexit.us.i.epil.preheader, %CopyImageWithPrediction.exit.loopexit241.unr-lcssa, %PredictBatch.exit.loopexit.us.us95.i, %.PredictBatch.exit.loopexit_crit_edge.us.us.i, %.thread, %bb.bt, %.lr.ph89.i.thread
  %i.wo = add nsw i32 %i.d, %12
  %i.wp = call i32 @WebPReportProgress(ptr noundef %11, i32 noundef %i.wo, ptr noundef nonnull %13) #10
  br label %bb.by

bb.by:                                            ; preds = %bb.bs, %CopyImageWithPrediction.exit
  %.1 = phi i32 [ %i.wp, %CopyImageWithPrediction.exit ], [ 0, %bb.bs ]
  ret i32 %.1
}

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LColorSpaceTransform(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr nofree noundef writeonly captures(none) %9) local_unnamed_addr #2 {
bb.a:
  %10 = alloca %struct.VP8LMultipliers, align 4   ; 4 uses
  %i.a = alloca [256 x i32], align 16             ; 6 uses
  %i.b = alloca [256 x i32], align 16             ; 6 uses
  %i.c = shl nuw i32 1, %2                        ; 5 uses
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = add i32 %i.d, %0
  %i.f = lshr i32 %i.e, %2                        ; 3 uses
  %i.g = add i32 %i.d, %1
  %i.h = lshr i32 %i.g, %2                        ; 5 uses
  %i.i = load i32, ptr %8, align 4, !tbaa !3      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge193

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = icmp sgt i32 %i.f, 0
  %i.l = sext i32 %0 to i64                       ; 2 uses
  br i1 %i.k, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.m = add nsw i32 %0, 2
  %i.n = sext i32 %i.m to i64
  %i.o = zext nneg i32 %i.f to i64                ; 2 uses
  %wide.trip.count208 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.n
  %indvars.iv206 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next207, %bb.n ] ; 5 uses
  %.sroa.0.0191.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.0.2.us, %bb.n ]
  %.sroa.6.0190.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.6.2.us, %bb.n ]
  %.sroa.8.0189.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.8.2.us, %bb.n ]
  %.sroa.0126.0188.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sink227.off0, %bb.n ]
  %.sroa.8133.sroa.0.0187.us = phi i8 [ 0, %.preheader.us.preheader ], [ %.sroa.8133.sroa.0.0.extract.trunc.us, %bb.n ]
  %.sroa.8133.sroa.8.0186.us = phi i16 [ 0, %.preheader.us.preheader ], [ %.sroa.8133.sroa.8.0.extract.shift.us, %bb.n ]
  %i.p = trunc nuw nsw i64 %indvars.iv206 to i32  ; 2 uses
  %i.q = shl i32 %i.p, %2                         ; 5 uses
  %i.r = add nsw i32 %i.q, %i.c
  %i.s = call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %1) ; 2 uses
  %i.t = mul nuw nsw i64 %indvars.iv206, %i.o
  %.not113.us = icmp eq i64 %indvars.iv206, 0
  %i.u = sub nsw i32 %1, %i.q
  %i.v = call i32 @llvm.smin.i32(i32 %i.c, i32 %i.u) ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = mul i32 %i.q, %0                         ; 3 uses
  %i.y = icmp slt i32 %i.q, %i.s
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %._crit_edge171.us
  %indvars.iv203 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next204, %._crit_edge171.us ] ; 3 uses
  %.sroa.0.1177.us = phi i8 [ %.sroa.0.0191.us, %.preheader.us ], [ %.sroa.0.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.6.1176.us = phi i8 [ %.sroa.6.0190.us, %.preheader.us ], [ %.sroa.6.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.8.1175.us = phi i8 [ %.sroa.8.0189.us, %.preheader.us ], [ %.sroa.8.2.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.0126.1174.us = phi i8 [ %.sroa.0126.0188.us, %.preheader.us ], [ %.sink227.off0, %._crit_edge171.us ] ; 2 uses
  %.sroa.8133.sroa.0.1173.us = phi i8 [ %.sroa.8133.sroa.0.0187.us, %.preheader.us ], [ %.sroa.8133.sroa.0.0.extract.trunc.us, %._crit_edge171.us ] ; 2 uses
  %.sroa.8133.sroa.8.1172.us = phi i16 [ %.sroa.8133.sroa.8.0186.us, %.preheader.us ], [ %.sroa.8133.sroa.8.0.extract.shift.us, %._crit_edge171.us ] ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv203 to i32  ; 3 uses
  %i.aa = shl i32 %i.z, %2                        ; 5 uses
  %i.ab = add nsw i32 %i.aa, %i.c
  %i.ac = call noundef i32 @llvm.smin.i32(i32 %i.ab, i32 %0) ; 2 uses
  %i.ad = add nuw nsw i64 %indvars.iv203, %i.t    ; 2 uses
  br i1 %.not113.us, label %.split.us, label %.split107.us

.split107.us:                                     ; preds = %bb.b
  %i.ae = sub nsw i64 %i.ad, %i.o
  %i.af = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 4 uses
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = lshr i32 %i.ag, 8                       ; 2 uses
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = lshr i32 %i.ag, 16                      ; 2 uses
  %i.al = trunc i32 %i.ak to i8
  %.sroa.8133.sroa.8.0.insert.shift156.us = shl nuw i16 %.sroa.8133.sroa.8.1172.us, 8
  %.sroa.8133.sroa.0.0.insert.ext145.us = zext i8 %.sroa.8133.sroa.0.1173.us to i16
  %.sroa.8133.sroa.0.0.insert.insert147.us = or disjoint i16 %.sroa.8133.sroa.8.0.insert.shift156.us, %.sroa.8133.sroa.0.0.insert.ext145.us
  %.sroa.8133.0.insert.ext138.us = zext i16 %.sroa.8133.sroa.0.0.insert.insert147.us to i24
  %.sroa.8133.0.insert.shift139.us = shl nuw i24 %.sroa.8133.0.insert.ext138.us, 8
  %.sroa.0126.0.insert.ext130.us = zext i8 %.sroa.0126.1174.us to i24
  %.sroa.0126.0.insert.insert132.us = or disjoint i24 %.sroa.8133.0.insert.shift139.us, %.sroa.0126.0.insert.ext130.us
  %i.am = trunc nuw nsw i32 %i.ak to i24
  %.sroa.8.0.insert.ext122.us = shl i24 %i.am, 16
  %i.an = trunc nuw i32 %i.ai to i24
  %.sroa.6.0.insert.ext118.us = shl i24 %i.an, 8
  %.sroa.6.0.insert.shift119.us = and i24 %.sroa.6.0.insert.ext118.us, 65280
  %.sroa.6.0.insert.insert121.us = or disjoint i24 %.sroa.6.0.insert.shift119.us, %.sroa.8.0.insert.ext122.us
  %i.ao = trunc i32 %i.ag to i24
  %.sroa.0.0.insert.ext115.us = and i24 %i.ao, 255
  %.sroa.0.0.insert.insert117.us = or disjoint i24 %.sroa.6.0.insert.insert121.us, %.sroa.0.0.insert.ext115.us
  %i.ap = call fastcc i24 @GetBestColorTransformForTile(i32 noundef %i.z, i32 noundef %i.p, i32 noundef %2, i24 %.sroa.0126.0.insert.insert132.us, i24 %.sroa.0.0.insert.insert117.us, i32 noundef %3, i32 noundef %0, i32 noundef %1, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4) ; 2 uses
  %extract.t229 = trunc i24 %i.ap to i8
  %extract232 = lshr i24 %i.ap, 8
  %extract.t233 = trunc nuw i24 %extract232 to i16
  br label %bb.c

.split.us:                                        ; preds = %bb.b
  %.sroa.8133.sroa.8.0.insert.shift152.us = shl nuw i16 %.sroa.8133.sroa.8.1172.us, 8
  %.sroa.8133.sroa.0.0.insert.ext142.us = zext i8 %.sroa.8133.sroa.0.1173.us to i16
  %.sroa.8133.sroa.0.0.insert.insert144.us = or disjoint i16 %.sroa.8133.sroa.8.0.insert.shift152.us, %.sroa.8133.sroa.0.0.insert.ext142.us
  %.sroa.8133.0.insert.ext134.us = zext i16 %.sroa.8133.sroa.0.0.insert.insert144.us to i24
  %.sroa.8133.0.insert.shift135.us = shl nuw i24 %.sroa.8133.0.insert.ext134.us, 8
  %.sroa.0126.0.insert.ext127.us = zext i8 %.sroa.0126.1174.us to i24
  %.sroa.0126.0.insert.insert129.us = or disjoint i24 %.sroa.8133.0.insert.shift135.us, %.sroa.0126.0.insert.ext127.us
  %.sroa.8.0.insert.ext.us = zext i8 %.sroa.8.1175.us to i24
  %.sroa.8.0.insert.shift.us = shl nuw i24 %.sroa.8.0.insert.ext.us, 16
  %.sroa.6.0.insert.ext.us = zext i8 %.sroa.6.1176.us to i24
  %.sroa.6.0.insert.shift.us = shl nuw nsw i24 %.sroa.6.0.insert.ext.us, 8
  %.sroa.6.0.insert.insert.us = or disjoint i24 %.sroa.6.0.insert.shift.us, %.sroa.8.0.insert.shift.us
  %.sroa.0.0.insert.ext.us = zext i8 %.sroa.0.1177.us to i24
  %.sroa.0.0.insert.insert.us = or disjoint i24 %.sroa.6.0.insert.insert.us, %.sroa.0.0.insert.ext.us
  %i.aq = call fastcc i24 @GetBestColorTransformForTile(i32 noundef %i.z, i32 noundef 0, i32 noundef %2, i24 %.sroa.0126.0.insert.insert129.us, i24 %.sroa.0.0.insert.insert.us, i32 noundef %3, i32 noundef %0, i32 noundef %1, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4) ; 2 uses
  %extract.t228 = trunc i24 %i.aq to i8
  %extract230 = lshr i24 %i.aq, 8
  %extract.t231 = trunc nuw i24 %extract230 to i16
  br label %bb.c

bb.c:                                             ; preds = %.split.us, %.split107.us
  %.sink227.off0 = phi i8 [ %extract.t228, %.split.us ], [ %extract.t229, %.split107.us ] ; 4 uses
  %.sink227.off8 = phi i16 [ %extract.t231, %.split.us ], [ %extract.t233, %.split107.us ] ; 4 uses
  %.sroa.8.2.us = phi i8 [ %.sroa.8.1175.us, %.split.us ], [ %i.al, %.split107.us ] ; 2 uses
  %.sroa.6.2.us = phi i8 [ %.sroa.6.1176.us, %.split.us ], [ %i.aj, %.split107.us ] ; 2 uses
  %.sroa.0.2.us = phi i8 [ %.sroa.0.1177.us, %.split.us ], [ %i.ah, %.split107.us ] ; 2 uses
  %.sroa.8133.sroa.0.0.extract.trunc.us = trunc i16 %.sink227.off8 to i8 ; 2 uses
  %.sroa.8133.sroa.8.0.extract.shift.us = lshr i16 %.sink227.off8, 8 ; 2 uses
  %i.ar = zext i16 %.sink227.off8 to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = zext i8 %.sink227.off0 to i32
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = or disjoint i32 %i.au, -16777216
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ad
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %.sroa.8133.0.insert.ext.us = zext i16 %.sink227.off8 to i24
  %.sroa.8133.0.insert.shift.us = shl nuw i24 %.sroa.8133.0.insert.ext.us, 8
  %.sroa.0126.0.insert.ext.us = zext i8 %.sink227.off0 to i24
  %.sroa.0126.0.insert.insert.us = or disjoint i24 %.sroa.8133.0.insert.shift.us, %.sroa.0126.0.insert.ext.us
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i24 %.sroa.0126.0.insert.insert.us, ptr %10, align 4
  %i.ax = sub nsw i32 %0, %i.aa
  %i.ay = call noundef i32 @llvm.smin.i32(i32 %i.c, i32 %i.ax)
  br i1 %i.w, label %.lr.ph.i.us, label %CopyTileWithColorTransform.exit.us

.lr.ph.i.us:                                      ; preds = %bb.c
  %i.az = add nsw i32 %i.aa, %i.x
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ba
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.us
  %.016.i.us = phi i32 [ %i.v, %.lr.ph.i.us ], [ %i.bc, %bb.d ] ; 2 uses
  %.01415.i.us = phi ptr [ %i.bb, %.lr.ph.i.us ], [ %i.be, %bb.d ] ; 2 uses
  %i.bc = add nsw i32 %.016.i.us, -1
  %i.bd = load ptr, ptr @VP8LTransformColor, align 8, !tbaa !31
  call void %i.bd(ptr noundef nonnull %10, ptr noundef %.01415.i.us, i32 noundef %i.ay) #10, !inline_history !43
  %i.be = getelementptr inbounds [4 x i8], ptr %.01415.i.us, i64 %i.l
  %i.bf = icmp samesign ugt i32 %.016.i.us, 1
  br i1 %i.bf, label %bb.d, label %CopyTileWithColorTransform.exit.us, !llvm.loop !44

CopyTileWithColorTransform.exit.us:               ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %i.y, label %.lr.ph170.us, label %._crit_edge171.us

._crit_edge171.us:                                ; preds = %._crit_edge.us, %CopyTileWithColorTransform.exit.us
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count
  br i1 %exitcond205.not, label %._crit_edge180.us, label %bb.b, !llvm.loop !45

bb.e:                                             ; preds = %.lr.ph170.us, %._crit_edge.us
  %indvars.iv199 = phi i32 [ %i.cu, %.lr.ph170.us ], [ %indvars.iv.next200, %._crit_edge.us ] ; 2 uses
  %indvars.iv = phi i32 [ %i.ct, %.lr.ph170.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.0103169.us = phi i32 [ %i.q, %.lr.ph170.us ], [ %11, %._crit_edge.us ] ; 2 uses
  %i.bg = mul nsw i32 %.0103169.us, %0            ; 2 uses
  %i.bh = add nsw i32 %i.bg, %i.aa
  %i.bi = add i32 %i.bg, %i.ac
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.e
  %i.bk = sext i32 %indvars.iv to i64
  br label %.lr.ph.us

._crit_edge.us:                                   ; preds = %bb.m, %bb.e
  %11 = add nsw i32 %.0103169.us, 1               ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %0
  %indvars.iv.next200 = add i32 %indvars.iv199, %0
  %exitcond202.not = icmp eq i32 %11, %i.s
  br i1 %exitcond202.not, label %._crit_edge171.us, label %bb.e, !llvm.loop !46

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.m
  %indvars.iv196 = phi i64 [ %i.bk, %.lr.ph.us.preheader ], [ %indvars.iv.next197, %bb.m ] ; 5 uses
  %i.bl = getelementptr [4 x i8], ptr %4, i64 %indvars.iv196 ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 5 uses
  %i.bn = icmp sgt i64 %indvars.iv196, 1
  br i1 %i.bn, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.us
  %i.bo = getelementptr i8, ptr %i.bl, i64 -8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = icmp eq i32 %i.bm, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr i8, ptr %i.bl, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = icmp eq i32 %i.bm, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.us
  %.not114.us = icmp slt i64 %indvars.iv196, %i.n
  br i1 %.not114.us, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr i8, ptr %i.bl, i64 -8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = sub nsw i64 %indvars.iv196, %i.l
  %i.bx = getelementptr [4 x i8], ptr %4, i64 %i.bw ; 3 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = icmp eq i32 %i.bv, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr i8, ptr %i.bl, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr i8, ptr %i.bx, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.ch = icmp eq i32 %i.bm, %i.cg
  br i1 %i.ch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ci = lshr i32 %i.bm, 16
  %i.cj = and i32 %i.ci, 255
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  %i.co = and i32 %i.bm, 255
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g
  %indvars.iv.next197 = add nsw i64 %indvars.iv196, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next197 to i32
  %exitcond201.not = icmp eq i32 %indvars.iv199, %lftr.wideiv
  br i1 %exitcond201.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !47

bb.n:                                             ; preds = %._crit_edge180.us
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count208
  br i1 %exitcond209.not, label %._crit_edge193, label %.preheader.us, !llvm.loop !48

.lr.ph170.us:                                     ; preds = %CopyTileWithColorTransform.exit.us
  %i.ct = add i32 %i.x, %i.aa
  %i.cu = add i32 %i.x, %i.ac
  br label %bb.e

._crit_edge180.us:                                ; preds = %._crit_edge171.us
  %i.cv = trunc i64 %indvars.iv206 to i32
  %i.cw = mul i32 %7, %i.cv
  %i.cx = sdiv i32 %i.cw, %i.h
  %i.cy = add nsw i32 %i.cx, %i.i
  %i.cz = call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.cy, ptr noundef nonnull %8) #10
  %.not.us = icmp eq i32 %i.cz, 0
  br i1 %.not.us, label %.loopexit, label %bb.n

bb.o:                                             ; preds = %.preheader
  %i.da = add nuw nsw i32 %.0102192, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, %i.h
  br i1 %exitcond.not, label %._crit_edge193, label %.preheader, !llvm.loop !48

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.o
  %.0102192 = phi i32 [ %i.da, %bb.o ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.db = mul nsw i32 %.0102192, %7
  %i.dc = sdiv i32 %i.db, %i.h
  %i.dd = add nsw i32 %i.dc, %i.i
  %i.de = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.dd, ptr noundef nonnull %8) #10
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %.loopexit, label %bb.o

._crit_edge193:                                   ; preds = %bb.o, %bb.n, %bb.a
  call void @VP8LOptimizeSampling(ptr noundef %5, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 9, ptr noundef %9)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge180.us, %._crit_edge193
  %.0 = phi i32 [ 1, %._crit_edge193 ], [ 0, %._crit_edge180.us ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i24 @GetBestColorTransformForTile(i32 noundef %0, i32 noundef %1, i32 noundef %2, i24 %3, i24 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %10) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 8 uses
  %i.b = alloca [256 x i32], align 16             ; 8 uses
  %i.c = alloca [256 x i32], align 16             ; 8 uses
  %i.d = alloca [256 x i32], align 16             ; 8 uses
  %i.e = shl nuw i32 1, %2                        ; 2 uses
  %i.f = shl i32 %1, %2                           ; 3 uses
  %i.g = shl i32 %0, %2                           ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e
  %i.i = tail call noundef i32 @llvm.smin.i32(i32 %i.h, i32 %6)
  %i.j = add nsw i32 %i.f, %i.e
  %i.k = tail call noundef i32 @llvm.smin.i32(i32 %i.j, i32 %7)
  %i.l = sub nsw i32 %i.i, %i.g                   ; 4 uses
  %i.m = sub nsw i32 %i.k, %i.f                   ; 4 uses
  %i.n = mul nsw i32 %6, %i.f
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %10, i64 %i.o
  %i.q = sext i32 %i.g to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false)
  %i.s = load ptr, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !31
  call void %i.s(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 0, ptr noundef nonnull %i.d) #10, !inline_history !49
  %i.t = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.u = call i64 %i.t(ptr noundef nonnull %i.d, ptr noundef nonnull %8) #10, !inline_history !50
  %i.v = load i32, ptr %i.d, align 16, !tbaa !3
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 25165824
  br label %bb.b

bb.b:                                             ; preds = %DivRound.exit16.i.i.i.i, %bb.a
  %indvars.iv.i.i.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i.i.i, %DivRound.exit16.i.i.i.i ] ; 3 uses
  %.01221.i.i.i.i = phi i64 [ %i.x, %bb.a ], [ %i.al, %DivRound.exit16.i.i.i.i ]
  %.01320.i.i.i.i = phi i64 [ 2013265920, %bb.a ], [ %i.ar, %DivRound.exit16.i.i.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = sub nuw nsw i64 256, %indvars.iv.i.i.i.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = add i32 %i.ac, %i.z
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul i64 %.01320.i.i.i.i, %i.ae          ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = add nuw nsw i64 %i.af, 50
  %i.ai = udiv i64 %i.ah, 100
  br label %DivRound.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %.neg8.i.i.i.i.i = sub i64 50, %i.af
  %i.aj = udiv i64 %.neg8.i.i.i.i.i, 100
  %.neg.i.i.i.i.i = sub nsw i64 0, %i.aj
  br label %DivRound.exit.i.i.i.i

DivRound.exit.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ak = phi i64 [ %i.ai, %bb.c ], [ %.neg.i.i.i.i.i, %bb.d ]
  %i.al = add i64 %i.ak, %.01221.i.i.i.i          ; 4 uses
  %i.am = mul i64 %.01320.i.i.i.i, 6              ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %DivRound.exit.i.i.i.i
  %i.ao = add nuw nsw i64 %i.am, 4
  %i.ap = udiv i64 %i.ao, 10
  br label %DivRound.exit16.i.i.i.i

bb.f:                                             ; preds = %DivRound.exit.i.i.i.i
  %.neg8.i14.i.i.i.i = sub i64 4, %i.am
  %i.aq = udiv i64 %.neg8.i14.i.i.i.i, 10
  %.neg.i15.i.i.i.i = sub nsw i64 0, %i.aq
  br label %DivRound.exit16.i.i.i.i

DivRound.exit16.i.i.i.i:                          ; preds = %bb.f, %bb.e
  %i.ar = phi i64 [ %i.ap, %bb.e ], [ %.neg.i15.i.i.i.i, %bb.f ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 16
  br i1 %exitcond.not.i.i.i.i, label %bb.g, label %bb.b, !llvm.loop !30

bb.g:                                             ; preds = %DivRound.exit16.i.i.i.i
  %i.as = mul nsw i32 %5, 7
  %i.at = ashr i32 %i.as, 8                       ; 2 uses
  %i.au = icmp sgt i64 %i.al, -1
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = add nuw nsw i64 %i.al, 5
  %i.aw = udiv i64 %i.av, 10
  br label %GetPredictionCostCrossColorRed.exit.i

bb.i:                                             ; preds = %bb.g
  %.neg8.i17.i.i.i.i = sub i64 5, %i.al
  %i.ax = udiv i64 %.neg8.i17.i.i.i.i, 10
  %.neg.i18.i.i.i.i = sub nsw i64 0, %i.ax
  br label %GetPredictionCostCrossColorRed.exit.i

GetPredictionCostCrossColorRed.exit.i:            ; preds = %bb.i, %bb.h
  %i.ay = phi i64 [ %i.aw, %bb.h ], [ %.neg.i18.i.i.i.i, %bb.i ]
  %i.az = and i24 %3, 255                         ; 2 uses
  %i.ba = zext nneg i24 %i.az to i32
  %i.bb = and i24 %4, 255                         ; 2 uses
  %i.bc = zext nneg i24 %i.bb to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %i.bd = icmp sgt i32 %i.at, -4
  br i1 %i.bd, label %.lr.ph72.preheader.i, label %GetBestGreenToRed.exit

.lr.ph72.preheader.i:                             ; preds = %GetPredictionCostCrossColorRed.exit.i
  %i.be = icmp eq i24 %i.az, 0
  %i.bf = sub nsw i64 %i.u, %i.ay                 ; 2 uses
  %i.bg = add nsw i64 %i.bf, -25165824
  %spec.select.i.i = select i1 %i.be, i64 %i.bg, i64 %i.bf
  %i.bh = icmp eq i24 %i.bb, 0
  %i.bi = select i1 %i.bh, i64 -50331648, i64 -25165824
  %i.bj = add i64 %spec.select.i.i, %i.bi
  %i.bk = add nsw i32 %i.at, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph72.preheader.i
  %.071.i = phi i32 [ %spec.select46.i, %._crit_edge.i ], [ 0, %.lr.ph72.preheader.i ]
  %.03970.i = phi i32 [ %i.de, %._crit_edge.i ], [ 0, %.lr.ph72.preheader.i ] ; 3 uses
  %.04169.i = phi i64 [ %spec.select.i, %._crit_edge.i ], [ %i.bj, %.lr.ph72.preheader.i ]
  %i.bl = lshr i32 32, %.03970.i                  ; 3 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = shl nuw nsw i32 %i.bl, 1
  br label %bb.j

bb.j:                                             ; preds = %GetPredictionCostCrossColorRed.exit62.i, %.lr.ph.i
  %.167.i = phi i32 [ %.071.i, %.lr.ph.i ], [ %spec.select46.i, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %.04066.i = phi i32 [ %i.bm, %.lr.ph.i ], [ %i.dd, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %.14265.i = phi i64 [ %.04169.i, %.lr.ph.i ], [ %spec.select.i, %GetPredictionCostCrossColorRed.exit62.i ] ; 2 uses
  %i.bo = add nsw i32 %.04066.i, %.167.i          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.bp = load ptr, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !31
  call void %i.bp(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.bo, ptr noundef nonnull %i.c) #10, !inline_history !49
  %i.bq = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.br = call i64 %i.bq(ptr noundef nonnull %i.c, ptr noundef nonnull %8) #10, !inline_history !50
  %i.bs = load i32, ptr %i.c, align 16, !tbaa !3
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 25165824
  br label %bb.k

bb.k:                                             ; preds = %DivRound.exit16.i.i.i55.i, %bb.j
  %indvars.iv.i.i.i47.i = phi i64 [ 1, %bb.j ], [ %indvars.iv.next.i.i.i56.i, %DivRound.exit16.i.i.i55.i ] ; 3 uses
  %.01221.i.i.i48.i = phi i64 [ %i.bu, %bb.j ], [ %i.ci, %DivRound.exit16.i.i.i55.i ]
  %.01320.i.i.i49.i = phi i64 [ 2013265920, %bb.j ], [ %i.co, %DivRound.exit16.i.i.i55.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i.i47.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = sub nuw nsw i64 256, %indvars.iv.i.i.i47.i
end_hunk_0
