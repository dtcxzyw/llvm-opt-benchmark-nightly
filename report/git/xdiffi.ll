inline.NumInlined: 44
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@xdl_recs_cmp:bb.a

bb.ah:                                            ; preds = %._crit_edge524.i
  %i.kl = sub nsw i64 %.0315.lcssa.i, %.0313.lcssa.i
  br label %.loopexit

bb.ai:                                            ; preds = %._crit_edge524.i
  %i.km = sub nsw i64 %.0311.lcssa.i, %.0.lcssa.i
  br label %.loopexit

bb.aj:                                            ; preds = %._crit_edge510.thread.i, %._crit_edge494.i
  %.sroa.11.1 = phi i64 [ %.sroa.11.2, %._crit_edge510.thread.i ], [ %.sroa.11.0, %._crit_edge494.i ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.2, %._crit_edge510.thread.i ], [ %.sroa.0.0, %._crit_edge494.i ]
  %i.kn = add nuw nsw i64 %.0340.i, 1
  br label %bb.g

.loopexit:                                        ; preds = %._crit_edge510.i, %._crit_edge502.i, %bb.p, %bb.y, %bb.ah, %bb.ai
  %.sroa.27.0 = phi i32 [ 0, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.p ], [ 1, %bb.y ], [ 1, %._crit_edge510.i ], [ 0, %._crit_edge502.i ]
  %.sroa.20.0 = phi i32 [ 1, %bb.ah ], [ 0, %bb.ai ], [ 1, %bb.p ], [ 1, %bb.y ], [ 0, %._crit_edge510.i ], [ 1, %._crit_edge502.i ]
  %.sroa.11.8 = phi i64 [ %i.kl, %bb.ah ], [ %i.km, %bb.ai ], [ %.0326.lcssa.i, %bb.p ], [ %.1327.i.lcssa, %bb.y ], [ %.sroa.11.7, %._crit_edge510.i ], [ %.sroa.11.4, %._crit_edge502.i ] ; 2 uses
  %.sroa.0.8 = phi i64 [ %.0313.lcssa.i, %bb.ah ], [ %.0.lcssa.i, %bb.ai ], [ %.1331.lcssa.i, %bb.p ], [ %.3333.i.lcssa, %bb.y ], [ %.sroa.0.7, %._crit_edge510.i ], [ %.sroa.0.4, %._crit_edge502.i ] ; 2 uses
  %i.ko = tail call i32 @xdl_recs_cmp(ptr noundef %0, i64 noundef %.064.lcssa, i64 noundef %.sroa.0.8, ptr noundef %3, i64 noundef %.067.lcssa, i64 noundef %.sroa.11.8, ptr noundef %6, ptr noundef %7, i32 noundef %.sroa.20.0, ptr noundef %9) ; 0 uses
  %current.ret.tr = select i1 %ret.known.tr, i32 %ret.tr, i32 0
  br label %tailrecurse

.thread:                                          ; preds = %.prol.loopexit, %.lr.ph117.new, %.prol.loopexit296, %.lr.ph119.new, %.preheader, %.preheader84
  %current.ret.tr350 = select i1 %ret.known.tr, i32 %ret.tr, i32 0
  ret i32 %current.ret.tr350
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @xdl_do_diff(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.s_xdalgoenv, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = tail call i32 @xdl_prepare_env(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !49
  %i.d = trunc i64 %i.c to i16
  %trunc = and i16 %i.d, -16383
  switch i16 %trunc, label %bb.e [
    i16 16384, label %bb.c
    i16 -32768, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @xdl_do_patience_diff(ptr noundef nonnull %2, ptr noundef %3) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @xdl_do_histogram_diff(ptr noundef nonnull %2, ptr noundef %3) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !56
  %i.l = add i64 %i.h, 3
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = shl nsw i64 %i.m, 1
  %i.o = add nsw i64 %i.n, 2                      ; 2 uses
  %i.p = icmp ult i64 %i.o, 2305843009213693952
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw i64 %i.o, 3
  %i.r = tail call ptr @xmalloc(i64 noundef %i.q) #10 ; 4 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  tail call void @xdl_free_env(ptr noundef nonnull %3) #10
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.m
  %i.t = load i64, ptr %i.j, align 8, !tbaa !56
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.x = tail call i64 @xdl_bogosqrt(i64 noundef %i.m) #10
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.x, i64 256)
  store i64 %spec.select, ptr %4, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 20, ptr %i.y, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 256, ptr %i.z, align 8, !tbaa !41
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !54
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !56
  %i.ac = load i64, ptr %2, align 8, !tbaa !49
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1
  %i.af = call i32 @xdl_recs_cmp(ptr noundef nonnull %3, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i32 noundef %i.ae, ptr noundef nonnull %4)
  call void @free(ptr noundef nonnull %i.r) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.af, %bb.g ] ; 3 uses
  %i.ag = icmp slt i32 %.0, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @xdl_free_env(ptr noundef %3) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a, %.thread
  %.034 = phi i32 [ -1, %.thread ], [ -1, %bb.a ], [ %.0, %bb.i ], [ %.0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.034
}

declare i32 @xdl_prepare_env(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xdl_do_patience_diff(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xdl_do_histogram_diff(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @xdl_free_env(ptr noundef) local_unnamed_addr #3

declare i64 @xdl_bogosqrt(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xdl_change_compact(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.split_measurement, align 4  ; 11 uses
  %4 = alloca %struct.s_xpparam, align 8          ; 5 uses
  %5 = alloca %struct.s_xdfenv, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !28, !range !57, !noundef !58
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.lr.ph.i, label %group_init.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %bb.a ]
  %i.f = add nuw nsw i64 %i.e, 1                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28, !range !57, !noundef !58
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.lr.ph.i, label %group_init.exit, !llvm.loop !59

group_init.exit:                                  ; preds = %.lr.ph.i, %bb.a
  %.sroa.20.8 = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28, !range !57, !noundef !58
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.lr.ph.i77, label %group_init.exit79

.lr.ph.i77:                                       ; preds = %group_init.exit, %.lr.ph.i77
  %i.n = phi i64 [ %i.o, %.lr.ph.i77 ], [ 0, %group_init.exit ]
  %i.o = add nuw nsw i64 %i.n, 1                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28, !range !57, !noundef !58
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.lr.ph.i77, label %group_init.exit79, !llvm.loop !59

group_init.exit79:                                ; preds = %.lr.ph.i77, %group_init.exit
  %.sroa.17.8 = phi i64 [ 0, %group_init.exit ], [ %i.o, %.lr.ph.i77 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = and i64 %2, 8388608
  %.not56 = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.aa = and i64 %2, 49153
  %i.ab = icmp eq i64 %i.aa, 32768
  %i.ac = and i64 %2, -49154
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %group_next.exit132

group_next.exit132.loopexit:                      ; preds = %bb.ax
  br label %group_next.exit132, !llvm.loop !60

group_next.exit132:                               ; preds = %group_next.exit132.loopexit, %group_init.exit79
  %i.af = phi ptr [ %i.k, %group_init.exit79 ], [ %i.iq, %group_next.exit132.loopexit ] ; 4 uses
  %i.ag = phi ptr [ %i.b, %group_init.exit79 ], [ %i.ii, %group_next.exit132.loopexit ] ; 13 uses
  %.sroa.0170.0 = phi i64 [ 0, %group_init.exit79 ], [ %i.ih, %group_next.exit132.loopexit ] ; 4 uses
  %.sroa.20.0 = phi i64 [ %.sroa.20.8, %group_init.exit79 ], [ %storemerge.i125, %group_next.exit132.loopexit ] ; 4 uses
  %.sroa.0148.0 = phi i64 [ 0, %group_init.exit79 ], [ %i.ip, %group_next.exit132.loopexit ]
  %.sroa.17.0 = phi i64 [ %.sroa.17.8, %group_init.exit79 ], [ %storemerge.i129, %group_next.exit132.loopexit ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.20.0, %.sroa.0170.0
  br i1 %i.ah, label %bb.as, label %.preheader268

.preheader268:                                    ; preds = %group_next.exit132, %group_slide_down.exit
  %.sroa.0170.1 = phi i64 [ %.sroa.0170.3.lcssa, %group_slide_down.exit ], [ %.sroa.0170.0, %group_next.exit132 ] ; 6 uses
  %.sroa.20.1 = phi i64 [ %.sroa.20.3.lcssa, %group_slide_down.exit ], [ %.sroa.20.0, %group_next.exit132 ] ; 5 uses
  %.sroa.0148.1 = phi i64 [ %.sroa.0148.3.lcssa, %group_slide_down.exit ], [ %.sroa.0148.0, %group_next.exit132 ] ; 3 uses
  %.sroa.17.1 = phi i64 [ %.sroa.17.3.lcssa, %group_slide_down.exit ], [ %.sroa.17.0, %group_next.exit132 ] ; 2 uses
  %i.ai = sub nsw i64 %.sroa.20.1, %.sroa.0170.1  ; 3 uses
  %i.aj = icmp sgt i64 %.sroa.0170.1, 0
  br i1 %i.aj, label %.lr.ph, label %group_slide_up.exit

.lr.ph:                                           ; preds = %.preheader268
  %i.ak = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.al = getelementptr [24 x i8], ptr %i.ak, i64 %.sroa.0170.1
  %i.am = getelementptr [24 x i8], ptr %i.ak, i64 %.sroa.20.1
  %i.an = getelementptr i8, ptr %i.al, i64 -8
  %.val.i421 = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr i8, ptr %i.am, i64 -8
  %.val13.i422 = load i64, ptr %i.ao, align 8, !tbaa !21
  %.not.i423 = icmp eq i64 %.val.i421, %.val13.i422
  br i1 %.not.i423, label %.lr.ph427, label %group_slide_up.exit

bb.b:                                             ; preds = %group_previous.exit
  %i.ap = getelementptr [24 x i8], ptr %i.ak, i64 %.sroa.0170.8.ph
  %i.aq = getelementptr [24 x i8], ptr %i.ak, i64 %i.av
  %i.ar = getelementptr i8, ptr %i.ap, i64 -8
  %.val.i = load i64, ptr %i.ar, align 8, !tbaa !21
  %i.as = getelementptr i8, ptr %i.aq, i64 -8
  %.val13.i = load i64, ptr %i.as, align 8, !tbaa !21
  %.not.i = icmp eq i64 %.val.i, %.val13.i
  br i1 %.not.i, label %.lr.ph427, label %group_slide_up.exit, !llvm.loop !61

.lr.ph427:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.0170.2304426 = phi i64 [ %.sroa.0170.8.ph, %bb.b ], [ %.sroa.0170.1, %.lr.ph ]
  %.sroa.20.2305425 = phi i64 [ %i.av, %bb.b ], [ %.sroa.20.1, %.lr.ph ]
  %.sroa.0148.2306424 = phi i64 [ %storemerge.i, %bb.b ], [ %.sroa.0148.1, %.lr.ph ] ; 2 uses
  %i.at = add nsw i64 %.sroa.0170.2304426, -1     ; 3 uses
  %i.au = getelementptr i8, ptr %i.ag, i64 %i.at  ; 2 uses
  store i8 1, ptr %i.au, align 1, !tbaa !28
  %i.av = add nsw i64 %.sroa.20.2305425, -1       ; 5 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ag, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !28
  %i.ax = getelementptr i8, ptr %i.au, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !28, !range !57, !noundef !58
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.lr.ph.i80, label %.loopexit262

.lr.ph.i80:                                       ; preds = %.lr.ph427, %.lr.ph.i80
  %i.ba = phi i64 [ %i.bb, %.lr.ph.i80 ], [ %i.at, %.lr.ph427 ]
  %i.bb = add nsw i64 %i.ba, -1                   ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ag, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !28, !range !57, !noundef !58
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i80, label %.loopexit262, !llvm.loop !62

.loopexit262:                                     ; preds = %.lr.ph.i80, %.lr.ph427
  %.sroa.0170.8.ph = phi i64 [ %i.at, %.lr.ph427 ], [ %i.bb, %.lr.ph.i80 ] ; 5 uses
  %i.bg = icmp eq i64 %.sroa.0148.2306424, 0
  br i1 %i.bg, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.loopexit262
  %i.bh = add nsw i64 %.sroa.0148.2306424, -1     ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi i64 [ %i.bh, %bb.c ], [ %i.bm, %bb.d ] ; 5 uses
  %i.bi = getelementptr i8, ptr %i.af, i64 %storemerge.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28, !range !57, !noundef !58
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = add nsw i64 %storemerge.i, -1
  br i1 %i.bl, label %bb.d, label %group_previous.exit, !llvm.loop !63

group_previous.exit:                              ; preds = %bb.d
  %i.bn = icmp sgt i64 %.sroa.0170.8.ph, 0
  br i1 %i.bn, label %bb.b, label %group_previous.exit.group_slide_up.exit.loopexit_crit_edge, !llvm.loop !61

bb.e:                                             ; preds = %.loopexit262
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 830, ptr noundef nonnull @.str.1) #11
  unreachable

group_previous.exit.group_slide_up.exit.loopexit_crit_edge: ; preds = %group_previous.exit
  br label %group_slide_up.exit, !llvm.loop !61

group_slide_up.exit:                              ; preds = %bb.b, %.lr.ph, %group_previous.exit.group_slide_up.exit.loopexit_crit_edge, %.preheader268
  %.sroa.0170.2.lcssa = phi i64 [ %.sroa.0170.1, %.preheader268 ], [ %.sroa.0170.8.ph, %group_previous.exit.group_slide_up.exit.loopexit_crit_edge ], [ %.sroa.0170.1, %.lr.ph ], [ %.sroa.0170.8.ph, %bb.b ] ; 4 uses
  %.sroa.20.2.lcssa = phi i64 [ %.sroa.20.1, %.preheader268 ], [ %i.av, %group_previous.exit.group_slide_up.exit.loopexit_crit_edge ], [ %.sroa.20.1, %.lr.ph ], [ %i.av, %bb.b ] ; 9 uses
  %.sroa.0148.2.lcssa = phi i64 [ %.sroa.0148.1, %.preheader268 ], [ %storemerge.i, %group_previous.exit.group_slide_up.exit.loopexit_crit_edge ], [ %.sroa.0148.1, %.lr.ph ], [ %storemerge.i, %bb.b ] ; 3 uses
  %.sroa.17.2.lcssa = phi i64 [ %.sroa.17.1, %.preheader268 ], [ %i.bh, %group_previous.exit.group_slide_up.exit.loopexit_crit_edge ], [ %.sroa.17.1, %.lr.ph ], [ %i.bh, %bb.b ] ; 4 uses
  %i.bo = icmp sgt i64 %.sroa.17.2.lcssa, %.sroa.0148.2.lcssa
  %spec.select = select i1 %i.bo, i64 %.sroa.20.2.lcssa, i64 -1 ; 3 uses
  %i.bp = load i64, ptr %i.s, align 8, !tbaa !64  ; 2 uses
  %i.bq = icmp slt i64 %.sroa.20.2.lcssa, %i.bp
  br i1 %i.bq, label %.lr.ph321, label %group_slide_down.exit

.lr.ph321:                                        ; preds = %group_slide_up.exit
  %i.br = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.bs = getelementptr inbounds [24 x i8], ptr %i.br, i64 %.sroa.0170.2.lcssa
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.br, i64 %.sroa.20.2.lcssa
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  %.val.i84435 = load i64, ptr %i.bu, align 8, !tbaa !21
  %i.bv = getelementptr i8, ptr %i.bt, i64 16
  %.val14.i436 = load i64, ptr %i.bv, align 8, !tbaa !21
  %.not.i85437 = icmp eq i64 %.val.i84435, %.val14.i436
  br i1 %.not.i85437, label %.lr.ph442.preheader, label %group_slide_down.exit

.lr.ph442.preheader:                              ; preds = %.lr.ph321
  %i.bw = load i64, ptr %i.t, align 8, !tbaa !64
  br label %.lr.ph442

bb.f:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds [24 x i8], ptr %i.br, i64 %i.cb
  %i.by = getelementptr inbounds [24 x i8], ptr %i.br, i64 %.sroa.20.10.ph
  %i.bz = getelementptr i8, ptr %i.bx, i64 16
  %.val.i84 = load i64, ptr %i.bz, align 8, !tbaa !21
  %i.ca = getelementptr i8, ptr %i.by, i64 16
  %.val14.i = load i64, ptr %i.ca, align 8, !tbaa !21
  %.not.i85 = icmp eq i64 %.val.i84, %.val14.i
  br i1 %.not.i85, label %.lr.ph442, label %group_slide_down.exit

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %bb.f
  %.sroa.0170.3316441 = phi i64 [ %i.cb, %bb.f ], [ %.sroa.0170.2.lcssa, %.lr.ph442.preheader ] ; 2 uses
  %.sroa.20.3317440 = phi i64 [ %.sroa.20.10.ph, %bb.f ], [ %.sroa.20.2.lcssa, %.lr.ph442.preheader ] ; 2 uses
  %.sroa.17.3319439 = phi i64 [ %storemerge.i88, %bb.f ], [ %.sroa.17.2.lcssa, %.lr.ph442.preheader ] ; 2 uses
  %.144320438 = phi i64 [ %spec.select70, %bb.f ], [ %spec.select, %.lr.ph442.preheader ]
  %i.cb = add nsw i64 %.sroa.0170.3316441, 1      ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ag, i64 %.sroa.0170.3316441
  store i8 0, ptr %i.cc, align 1, !tbaa !28
  %i.cd = add nsw i64 %.sroa.20.3317440, 1        ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %i.ag, i64 %.sroa.20.3317440
  store i8 1, ptr %i.ce, align 1, !tbaa !28
  %i.cf = getelementptr inbounds i8, ptr %i.ag, i64 %i.cd
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !28, !range !57, !noundef !58
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %.lr.ph.i86, label %.loopexit

.lr.ph.i86:                                       ; preds = %.lr.ph442, %.lr.ph.i86
  %i.ci = phi i64 [ %i.cj, %.lr.ph.i86 ], [ %i.cd, %.lr.ph442 ]
  %i.cj = add nsw i64 %i.ci, 1                    ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %i.ag, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28, !range !57, !noundef !58
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i86, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph.i86, %.lr.ph442
  %.sroa.20.10.ph = phi i64 [ %i.cd, %.lr.ph442 ], [ %i.cj, %.lr.ph.i86 ] ; 6 uses
  %i.cn = icmp eq i64 %.sroa.17.3319439, %i.bw
  br i1 %i.cn, label %group_next.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.co = add nsw i64 %.sroa.17.3319439, 1        ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %storemerge.i88 = phi i64 [ %i.co, %bb.g ], [ %i.cs, %bb.h ] ; 6 uses
  %i.cp = getelementptr inbounds i8, ptr %i.af, i64 %storemerge.i88
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !28, !range !57, !noundef !58
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = add nsw i64 %storemerge.i88, 1
  br i1 %i.cr, label %bb.h, label %bb.i, !llvm.loop !60

group_next.exit:                                  ; preds = %.loopexit
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 846, ptr noundef nonnull @.str.2) #11
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ct = icmp sgt i64 %storemerge.i88, %i.co
  %spec.select70 = select i1 %i.ct, i64 %.sroa.20.10.ph, i64 %.144320438 ; 3 uses
  %i.cu = icmp slt i64 %.sroa.20.10.ph, %i.bp
  br i1 %i.cu, label %bb.f, label %group_slide_down.exit

group_slide_down.exit:                            ; preds = %bb.f, %bb.i, %.lr.ph321, %group_slide_up.exit
  %.sroa.0170.3.lcssa = phi i64 [ %.sroa.0170.2.lcssa, %group_slide_up.exit ], [ %.sroa.0170.2.lcssa, %.lr.ph321 ], [ %i.cb, %bb.i ], [ %i.cb, %bb.f ] ; 8 uses
  %.sroa.20.3.lcssa = phi i64 [ %.sroa.20.2.lcssa, %group_slide_up.exit ], [ %.sroa.20.2.lcssa, %.lr.ph321 ], [ %.sroa.20.10.ph, %bb.i ], [ %.sroa.20.10.ph, %bb.f ] ; 13 uses
  %.sroa.0148.3.lcssa = phi i64 [ %.sroa.0148.2.lcssa, %group_slide_up.exit ], [ %.sroa.0148.2.lcssa, %.lr.ph321 ], [ %i.co, %bb.i ], [ %i.co, %bb.f ] ; 8 uses
  %.sroa.17.3.lcssa = phi i64 [ %.sroa.17.2.lcssa, %group_slide_up.exit ], [ %.sroa.17.2.lcssa, %.lr.ph321 ], [ %storemerge.i88, %bb.i ], [ %storemerge.i88, %bb.f ] ; 6 uses
  %.144.lcssa = phi i64 [ %spec.select, %group_slide_up.exit ], [ %spec.select, %.lr.ph321 ], [ %spec.select70, %bb.i ], [ %spec.select70, %bb.f ]
  %i.cv = sub nsw i64 %.sroa.20.3.lcssa, %.sroa.0170.3.lcssa
  %.not54 = icmp eq i64 %i.ai, %i.cv
  br i1 %.not54, label %bb.j, label %.preheader268, !llvm.loop !66

bb.j:                                             ; preds = %group_slide_down.exit
  %i.cw = icmp eq i64 %.sroa.20.3.lcssa, %.sroa.20.2.lcssa
  br i1 %i.cw, label %.loopexit265, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not55 = icmp eq i64 %.144.lcssa, -1
  br i1 %.not55, label %bb.q, label %.preheader266

.preheader266:                                    ; preds = %bb.k
  %i.cx = icmp eq i64 %.sroa.17.3.lcssa, %.sroa.0148.3.lcssa
  br i1 %i.cx, label %.lr.ph336, label %.loopexit265

.lr.ph336:                                        ; preds = %.preheader266, %group_previous.exit102
  %.sroa.0148.4335 = phi i64 [ %i.ds, %group_previous.exit102 ], [ %.sroa.0148.3.lcssa, %.preheader266 ] ; 2 uses
  %.sroa.20.4334 = phi i64 [ %i.dg, %group_previous.exit102 ], [ %.sroa.20.3.lcssa, %.preheader266 ] ; 2 uses
  %.sroa.0170.4333 = phi i64 [ %.sroa.0170.10.ph, %group_previous.exit102 ], [ %.sroa.0170.3.lcssa, %.preheader266 ] ; 3 uses
  %i.cy = icmp sgt i64 %.sroa.0170.4333, 0
  br i1 %i.cy, label %bb.l, label %group_slide_up.exit98

bb.l:                                             ; preds = %.lr.ph336
  %i.cz = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.da = getelementptr [24 x i8], ptr %i.cz, i64 %.sroa.0170.4333
  %i.db = getelementptr [24 x i8], ptr %i.cz, i64 %.sroa.20.4334
  %i.dc = getelementptr i8, ptr %i.da, i64 -8
  %.val.i93 = load i64, ptr %i.dc, align 8, !tbaa !21
  %i.dd = getelementptr i8, ptr %i.db, i64 -8
  %.val13.i94 = load i64, ptr %i.dd, align 8, !tbaa !21
  %.not.i95 = icmp eq i64 %.val.i93, %.val13.i94
  br i1 %.not.i95, label %bb.m, label %group_slide_up.exit98

bb.m:                                             ; preds = %bb.l
  %i.de = add nsw i64 %.sroa.0170.4333, -1        ; 3 uses
  %i.df = getelementptr i8, ptr %i.ag, i64 %i.de  ; 2 uses
  store i8 1, ptr %i.df, align 1, !tbaa !28
  %i.dg = add nsw i64 %.sroa.20.4334, -1          ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %i.ag, i64 %i.dg
  store i8 0, ptr %i.dh, align 1, !tbaa !28
  %i.di = getelementptr i8, ptr %i.df, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !28, !range !57, !noundef !58
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %.lr.ph.i96, label %.loopexit264

.lr.ph.i96:                                       ; preds = %bb.m, %.lr.ph.i96
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i96 ], [ %i.de, %bb.m ]
  %i.dm = add nsw i64 %i.dl, -1                   ; 3 uses
  %i.dn = getelementptr i8, ptr %i.ag, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !28, !range !57, !noundef !58
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.lr.ph.i96, label %.loopexit264, !llvm.loop !62

group_slide_up.exit98:                            ; preds = %bb.l, %.lr.ph336
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 872, ptr noundef nonnull @.str.3) #11
  unreachable

.loopexit264:                                     ; preds = %.lr.ph.i96, %bb.m
  %.sroa.0170.10.ph = phi i64 [ %i.de, %bb.m ], [ %i.dm, %.lr.ph.i96 ] ; 2 uses
  %i.dr = icmp eq i64 %.sroa.0148.4335, 0
  br i1 %i.dr, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.loopexit264
  %i.ds = add nsw i64 %.sroa.0148.4335, -1        ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %storemerge.i99 = phi i64 [ %i.ds, %bb.n ], [ %i.dx, %bb.o ] ; 4 uses
  %i.dt = getelementptr i8, ptr %i.af, i64 %storemerge.i99
  %i.du = getelementptr i8, ptr %i.dt, i64 -1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !28, !range !57, !noundef !58
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = add nsw i64 %storemerge.i99, -1
  br i1 %i.dw, label %bb.o, label %group_previous.exit102, !llvm.loop !63

group_previous.exit102:                           ; preds = %bb.o
  %i.dy = icmp eq i64 %i.ds, %storemerge.i99
  br i1 %i.dy, label %.lr.ph336, label %.loopexit265, !llvm.loop !67

bb.p:                                             ; preds = %.loopexit264
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 874, ptr noundef nonnull @.str.4) #11
  unreachable

bb.q:                                             ; preds = %bb.k
  br i1 %.not56, label %.loopexit265, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = xor i64 %i.ai, -1
  %i.ea = add i64 %.sroa.20.3.lcssa, %i.dz
  %spec.select71 = call i64 @llvm.smax.i64(i64 %i.ea, i64 %.sroa.20.2.lcssa) ; 2 uses
  %.not57341 = icmp sgt i64 %spec.select71, %.sroa.20.3.lcssa
  br i1 %.not57341, label %.preheader, label %.lr.ph346.preheader

.lr.ph346.preheader:                              ; preds = %bb.r
  %i.eb = add nsw i64 %.sroa.20.3.lcssa, -100
  %.139 = call i64 @llvm.smax.i64(i64 %i.eb, i64 %spec.select71)
  br label %.lr.ph346

.preheader:                                       ; preds = %bb.ak, %bb.r
  %.037.lcssa = phi i64 [ -1, %bb.r ], [ %.1, %bb.ak ] ; 3 uses
  %i.ec = icmp sgt i64 %.sroa.20.3.lcssa, %.037.lcssa
  br i1 %i.ec, label %.lr.ph353, label %.loopexit265

.lr.ph346:                                        ; preds = %.lr.ph346.preheader, %bb.ak
  %.037345 = phi i64 [ %.1, %bb.ak ], [ -1, %.lr.ph346.preheader ] ; 2 uses
  %.2344 = phi i64 [ %i.gu, %bb.ak ], [ %.139, %.lr.ph346.preheader ] ; 5 uses
  %.sroa.0147.1343 = phi i32 [ %.sroa.0147.2, %bb.ak ], [ undef, %.lr.ph346.preheader ] ; 2 uses
  %.sroa.4.1342 = phi i32 [ %.sroa.4.2, %bb.ak ], [ undef, %.lr.ph346.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call fastcc void @measure_split(ptr noundef %0, i64 noundef %.2344, ptr noundef %3)
  %i.ed = load i32, ptr %i.v, align 4, !tbaa !68  ; 4 uses
  %i.ee = icmp eq i32 %i.ed, -1                   ; 2 uses
  %i.ef = load i32, ptr %i.w, align 4             ; 4 uses
  %i.eg = icmp eq i32 %i.ef, 0
  %or.cond259 = select i1 %i.ee, i1 %i.eg, i1 false ; 2 uses
  %.sroa.13.0 = zext i1 %or.cond259 to i32
  %i.eh = load i32, ptr %3, align 4, !tbaa !70
  %.not.i103 = icmp eq i32 %i.eh, 0
  %i.ei = select i1 %or.cond259, i32 22, i32 21
  %.sroa.13.1 = select i1 %.not.i103, i32 %.sroa.13.0, i32 %i.ei ; 2 uses
  %i.ej = load i32, ptr %i.x, align 4, !tbaa !71  ; 2 uses
  %i.ek = icmp eq i32 %i.ej, -1
  br i1 %i.ek, label %bb.s, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph346
  %i.el = mul nsw i32 %i.ef, -30
  %i.em = add i32 %i.el, %.sroa.13.1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph346
  %i.en = load i32, ptr %i.y, align 4, !tbaa !72
  %i.eo = add nsw i32 %i.en, 1                    ; 2 uses
  %i.ep = add nsw i32 %i.ef, %i.eo                ; 2 uses
  %i.eq = mul nsw i32 %i.ep, -30
  %i.er = mul nsw i32 %i.eo, 6
  %i.es = add i32 %i.er, %.sroa.13.1
  %i.et = add i32 %i.es, %i.eq                    ; 2 uses
  %i.eu = load i32, ptr %i.z, align 4, !tbaa !73  ; 2 uses
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %score_add_split.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread.i
  %i.ew = phi i32 [ %i.et, %bb.s ], [ %i.em, %.thread.i ] ; 3 uses
  %i.ex = phi i32 [ %i.ep, %bb.s ], [ %i.ef, %.thread.i ]
  %.sroa.0.0 = phi i32 [ %i.eu, %bb.s ], [ %i.ej, %.thread.i ] ; 5 uses
  %.not3742.i = icmp eq i32 %i.ex, 0              ; 3 uses
  br i1 %i.ee, label %score_add_split.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ey = icmp sgt i32 %.sroa.0.0, %i.ed
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = select i1 %.not3742.i, i32 -4, i32 10
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.fa = icmp eq i32 %.sroa.0.0, %i.ed
  br i1 %i.fa, label %score_add_split.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = load i32, ptr %i.z, align 4, !tbaa !73  ; 2 uses
  %.not38.i = icmp ne i32 %i.fb, -1
  %i.fc = icmp sgt i32 %i.fb, %.sroa.0.0
  %or.cond.i = and i1 %.not38.i, %i.fc
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fd = select i1 %.not3742.i, i32 24, i32 17
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.x
  %i.fe = select i1 %.not3742.i, i32 23, i32 17
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.z, %bb.y, %bb.v
  %.sink45.i = phi i32 [ %i.fe, %bb.z ], [ %i.fd, %bb.y ], [ %i.ez, %bb.v ]
  %i.ff = add nsw i32 %.sink45.i, %i.ew
  br label %score_add_split.exit

score_add_split.exit:                             ; preds = %bb.s, %bb.t, %bb.w, %.sink.split.i
  %.sroa.13.2 = phi i32 [ %i.et, %bb.s ], [ %i.ew, %bb.t ], [ %i.ff, %.sink.split.i ], [ %i.ew, %bb.w ]
  %.sroa.0.1 = phi i32 [ -1, %bb.s ], [ %.sroa.0.0, %bb.t ], [ %.sroa.0.0, %.sink.split.i ], [ %i.ed, %bb.w ] ; 2 uses
  %i.fg = sub nsw i64 %.2344, %i.ai
  call fastcc void @measure_split(ptr noundef %0, i64 noundef %i.fg, ptr noundef %3)
  %i.fh = load i32, ptr %i.v, align 4, !tbaa !68  ; 3 uses
  %i.fi = icmp eq i32 %i.fh, -1                   ; 2 uses
  %i.fj = load i32, ptr %i.w, align 4
  %i.fk = icmp eq i32 %i.fj, 0
  %narrow = select i1 %i.fi, i1 %i.fk, i1 false
  %spec.select260 = zext i1 %narrow to i32
  %.sroa.13.3 = add nsw i32 %.sroa.13.2, %spec.select260 ; 2 uses
  %i.fl = load i32, ptr %3, align 4, !tbaa !70
  %.not.i104 = icmp eq i32 %i.fl, 0
  %i.fm = add nsw i32 %.sroa.13.3, 21
  %spec.select261 = select i1 %.not.i104, i32 %.sroa.13.3, i32 %i.fm ; 2 uses
  %i.fn = load i32, ptr %i.x, align 4, !tbaa !71  ; 3 uses
  %i.fo = icmp eq i32 %i.fn, -1
  br i1 %i.fo, label %bb.aa, label %.thread.i105

.thread.i105:                                     ; preds = %score_add_split.exit
  %i.fp = load i32, ptr %i.w, align 4, !tbaa !74  ; 2 uses
  %i.fq = mul nsw i32 %i.fp, -30
  %i.fr = add i32 %i.fq, %spec.select261
  %i.fs = add nsw i32 %i.fn, %.sroa.0.1
  br label %bb.ab

bb.aa:                                            ; preds = %score_add_split.exit
  %i.ft = load i32, ptr %i.y, align 4, !tbaa !72
  %i.fu = add nsw i32 %i.ft, 1                    ; 2 uses
  %i.fv = load i32, ptr %i.w, align 4, !tbaa !74
  %i.fw = add nsw i32 %i.fv, %i.fu                ; 2 uses
  %i.fx = mul nsw i32 %i.fw, -30
  %i.fy = mul nsw i32 %i.fu, 6
  %i.fz = add i32 %i.fy, %spec.select261
  %i.ga = add i32 %i.fz, %i.fx                    ; 2 uses
  %i.gb = load i32, ptr %i.z, align 4, !tbaa !73  ; 3 uses
  %i.gc = add nsw i32 %i.gb, %.sroa.0.1           ; 2 uses
  %i.gd = icmp eq i32 %i.gb, -1
  br i1 %i.gd, label %score_add_split.exit112, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread.i105
  %i.ge = phi i32 [ %i.ga, %bb.aa ], [ %i.fr, %.thread.i105 ] ; 3 uses
  %i.gf = phi i32 [ %i.fw, %bb.aa ], [ %i.fp, %.thread.i105 ]
  %.sroa.0.2 = phi i32 [ %i.gc, %bb.aa ], [ %i.fs, %.thread.i105 ] ; 3 uses
  %.041.i106 = phi i32 [ %i.gb, %bb.aa ], [ %i.fn, %.thread.i105 ] ; 3 uses
  %.not3742.i107 = icmp eq i32 %i.gf, 0           ; 3 uses
  br i1 %i.fi, label %score_add_split.exit112, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = icmp sgt i32 %.041.i106, %i.fh
  br i1 %i.gg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gh = select i1 %.not3742.i107, i32 -4, i32 10
  br label %.sink.split.i110

bb.ae:                                            ; preds = %bb.ac
  %i.gi = icmp eq i32 %.041.i106, %i.fh
  br i1 %i.gi, label %score_add_split.exit112, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = load i32, ptr %i.z, align 4, !tbaa !73  ; 2 uses
  %.not38.i108 = icmp ne i32 %i.gj, -1
  %i.gk = icmp sgt i32 %i.gj, %.041.i106
  %or.cond.i109 = and i1 %.not38.i108, %i.gk
  br i1 %or.cond.i109, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gl = select i1 %.not3742.i107, i32 24, i32 17
  br label %.sink.split.i110

bb.ah:                                            ; preds = %bb.af
  %i.gm = select i1 %.not3742.i107, i32 23, i32 17
  br label %.sink.split.i110

.sink.split.i110:                                 ; preds = %bb.ah, %bb.ag, %bb.ad
  %.sink45.i111 = phi i32 [ %i.gm, %bb.ah ], [ %i.gl, %bb.ag ], [ %i.gh, %bb.ad ]
  %i.gn = add nsw i32 %.sink45.i111, %i.ge
  br label %score_add_split.exit112

score_add_split.exit112:                          ; preds = %bb.aa, %bb.ab, %bb.ae, %.sink.split.i110
  %.sroa.13.5 = phi i32 [ %i.ga, %bb.aa ], [ %i.ge, %bb.ab ], [ %i.gn, %.sink.split.i110 ], [ %i.ge, %bb.ae ] ; 2 uses
  %.sroa.0.3 = phi i32 [ %i.gc, %bb.aa ], [ %.sroa.0.2, %bb.ab ], [ %.sroa.0.2, %.sink.split.i110 ], [ %.sroa.0.2, %bb.ae ] ; 2 uses
  %i.go = icmp eq i64 %.037345, -1
  br i1 %i.go, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %score_add_split.exit112
  %i.gp = call i32 @llvm.scmp.i32.i32(i32 %.sroa.0.3, i32 %.sroa.0147.1343)
  %i.gq = mul nsw i32 %i.gp, 60
  %i.gr = sub i32 %.sroa.13.5, %.sroa.4.1342
  %i.gs = add nsw i32 %i.gr, %i.gq
  %i.gt = icmp slt i32 %i.gs, 1
  br i1 %i.gt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %score_add_split.exit112
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.4.2 = phi i32 [ %.sroa.13.5, %bb.aj ], [ %.sroa.4.1342, %bb.ai ]
  %.sroa.0147.2 = phi i32 [ %.sroa.0.3, %bb.aj ], [ %.sroa.0147.1343, %bb.ai ]
  %.1 = phi i64 [ %.2344, %bb.aj ], [ %.037345, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.gu = add nsw i64 %.2344, 1
  %.not57.not = icmp slt i64 %.2344, %.sroa.20.3.lcssa
  br i1 %.not57.not, label %.lr.ph346, label %.preheader, !llvm.loop !75

.lr.ph353:                                        ; preds = %.preheader, %group_previous.exit124
  %.sroa.0148.5352 = phi i64 [ %storemerge.i121, %group_previous.exit124 ], [ %.sroa.0148.3.lcssa, %.preheader ] ; 2 uses
  %.sroa.20.5351 = phi i64 [ %i.hd, %group_previous.exit124 ], [ %.sroa.20.3.lcssa, %.preheader ] ; 2 uses
  %.sroa.0170.5350 = phi i64 [ %.sroa.0170.11.ph, %group_previous.exit124 ], [ %.sroa.0170.3.lcssa, %.preheader ] ; 3 uses
  %i.gv = icmp sgt i64 %.sroa.0170.5350, 0
  br i1 %i.gv, label %bb.al, label %group_slide_up.exit120

bb.al:                                            ; preds = %.lr.ph353
  %i.gw = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.gx = getelementptr [24 x i8], ptr %i.gw, i64 %.sroa.0170.5350
  %i.gy = getelementptr [24 x i8], ptr %i.gw, i64 %.sroa.20.5351
  %i.gz = getelementptr i8, ptr %i.gx, i64 -8
  %.val.i115 = load i64, ptr %i.gz, align 8, !tbaa !21
  %i.ha = getelementptr i8, ptr %i.gy, i64 -8
  %.val13.i116 = load i64, ptr %i.ha, align 8, !tbaa !21
  %.not.i117 = icmp eq i64 %.val.i115, %.val13.i116
  br i1 %.not.i117, label %bb.am, label %group_slide_up.exit120

bb.am:                                            ; preds = %bb.al
  %i.hb = add nsw i64 %.sroa.0170.5350, -1        ; 3 uses
  %i.hc = getelementptr i8, ptr %i.ag, i64 %i.hb  ; 2 uses
  store i8 1, ptr %i.hc, align 1, !tbaa !28
  %i.hd = add nsw i64 %.sroa.20.5351, -1          ; 3 uses
  %i.he = getelementptr inbounds i8, ptr %i.ag, i64 %i.hd
  store i8 0, ptr %i.he, align 1, !tbaa !28
  %i.hf = getelementptr i8, ptr %i.hc, i64 -1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !28, !range !57, !noundef !58
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %.lr.ph.i118, label %.loopexit263

.lr.ph.i118:                                      ; preds = %bb.am, %.lr.ph.i118
  %i.hi = phi i64 [ %i.hj, %.lr.ph.i118 ], [ %i.hb, %bb.am ]
  %i.hj = add nsw i64 %i.hi, -1                   ; 3 uses
  %i.hk = getelementptr i8, ptr %i.ag, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 -1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !28, !range !57, !noundef !58
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %.lr.ph.i118, label %.loopexit263, !llvm.loop !62

group_slide_up.exit120:                           ; preds = %bb.al, %.lr.ph353
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 915, ptr noundef nonnull @.str.5) #11
  unreachable

.loopexit263:                                     ; preds = %.lr.ph.i118, %bb.am
  %.sroa.0170.11.ph = phi i64 [ %i.hb, %bb.am ], [ %i.hj, %.lr.ph.i118 ] ; 2 uses
  %i.ho = icmp eq i64 %.sroa.0148.5352, 0
  br i1 %i.ho, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.loopexit263
  %i.hp = add nsw i64 %.sroa.0148.5352, -1        ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %storemerge.i121 = phi i64 [ %i.hp, %bb.an ], [ %i.hu, %bb.ao ] ; 4 uses
  %i.hq = getelementptr i8, ptr %i.af, i64 %storemerge.i121
  %i.hr = getelementptr i8, ptr %i.hq, i64 -1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !28, !range !57, !noundef !58
  %i.ht = trunc nuw i8 %i.hs to i1
  %i.hu = add nsw i64 %storemerge.i121, -1
  br i1 %i.ht, label %bb.ao, label %group_previous.exit124, !llvm.loop !63

group_previous.exit124:                           ; preds = %bb.ao
  %i.hv = icmp sgt i64 %i.hd, %.037.lcssa
  br i1 %i.hv, label %.lr.ph353, label %.loopexit265, !llvm.loop !76

bb.ap:                                            ; preds = %.loopexit263
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 917, ptr noundef nonnull @.str.6) #11
  unreachable

.loopexit265:                                     ; preds = %group_previous.exit102, %group_previous.exit124, %.preheader266, %.preheader, %bb.q, %bb.j
  %.sroa.0170.6 = phi i64 [ %.sroa.0170.3.lcssa, %bb.j ], [ %.sroa.0170.3.lcssa, %bb.q ], [ %.sroa.0170.11.ph, %group_previous.exit124 ], [ %.sroa.0170.3.lcssa, %.preheader ], [ %.sroa.0170.3.lcssa, %.preheader266 ], [ %.sroa.0170.10.ph, %group_previous.exit102 ] ; 3 uses
  %.sroa.20.6 = phi i64 [ %.sroa.20.2.lcssa, %bb.j ], [ %.sroa.20.3.lcssa, %bb.q ], [ %.037.lcssa, %group_previous.exit124 ], [ %.sroa.20.3.lcssa, %.preheader ], [ %.sroa.20.3.lcssa, %.preheader266 ], [ %i.dg, %group_previous.exit102 ] ; 4 uses
  %.sroa.0148.6 = phi i64 [ %.sroa.0148.3.lcssa, %bb.j ], [ %.sroa.0148.3.lcssa, %bb.q ], [ %storemerge.i121, %group_previous.exit124 ], [ %.sroa.0148.3.lcssa, %.preheader ], [ %.sroa.0148.3.lcssa, %.preheader266 ], [ %storemerge.i99, %group_previous.exit102 ] ; 3 uses
  %.sroa.17.6 = phi i64 [ %.sroa.17.3.lcssa, %bb.j ], [ %.sroa.17.3.lcssa, %bb.q ], [ %i.hp, %group_previous.exit124 ], [ %.sroa.17.3.lcssa, %.preheader ], [ %.sroa.17.3.lcssa, %.preheader266 ], [ %i.ds, %group_previous.exit102 ] ; 5 uses
  %.not62 = icmp ne i64 %.sroa.17.6, %.sroa.0148.6
  %or.cond = and i1 %i.ab, %.not62
  br i1 %or.cond, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.loopexit265
  %.not63 = icmp eq i64 %.sroa.0170.6, %.sroa.0170.0
  %.not64 = icmp eq i64 %.sroa.20.6, %.sroa.20.0
  %or.cond73 = and i1 %.not63, %.not64
  br i1 %or.cond73, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  store i64 %i.ac, ptr %4, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !77
  %i.hw = trunc i64 %.sroa.0170.6 to i32
  %i.hx = add i32 %i.hw, 1
  %i.hy = sub nsw i64 %.sroa.20.6, %.sroa.0170.6
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = trunc i64 %.sroa.0148.6 to i32
  %i.ib = add i32 %i.ia, 1
  %i.ic = sub nsw i64 %.sroa.17.6, %.sroa.0148.6
  %i.id = trunc i64 %i.ic to i32
  %i.ie = call i32 @xdl_fall_back_diff(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %i.hx, i32 noundef %i.hz, i32 noundef %i.ib, i32 noundef %i.id) #10
  %.not65 = icmp eq i32 %i.ie, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not65, label %bb.as, label %group_next.exit136

bb.as:                                            ; preds = %bb.aq, %.loopexit265, %bb.ar, %group_next.exit132
  %.sroa.20.7 = phi i64 [ %.sroa.0170.0, %group_next.exit132 ], [ %.sroa.20.0, %bb.aq ], [ %.sroa.20.6, %bb.ar ], [ %.sroa.20.6, %.loopexit265 ] ; 2 uses
  %.sroa.17.7 = phi i64 [ %.sroa.17.0, %group_next.exit132 ], [ %.sroa.17.6, %bb.aq ], [ %.sroa.17.6, %bb.ar ], [ %.sroa.17.6, %.loopexit265 ] ; 3 uses
  %i.if = load i64, ptr %i.s, align 8, !tbaa !64
  %i.ig = icmp eq i64 %.sroa.20.7, %i.if
  br i1 %i.ig, label %group_next.exit128, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ih = add nsw i64 %.sroa.20.7, 1              ; 2 uses
  %i.ii = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %storemerge.i125 = phi i64 [ %i.ih, %bb.at ], [ %i.im, %bb.au ] ; 3 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 %storemerge.i125
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !28, !range !57, !noundef !58
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = add nsw i64 %storemerge.i125, 1
  br i1 %i.il, label %bb.au, label %bb.av, !llvm.loop !60

bb.av:                                            ; preds = %bb.au
  %i.in = load i64, ptr %i.t, align 8, !tbaa !64
  %i.io = icmp eq i64 %.sroa.17.7, %i.in
  br i1 %i.io, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ip = add nsw i64 %.sroa.17.7, 1              ; 2 uses
  %i.iq = load ptr, ptr %i.j, align 8, !tbaa !27  ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %storemerge.i129 = phi i64 [ %i.ip, %bb.aw ], [ %i.iu, %bb.ax ] ; 3 uses
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 %storemerge.i129
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !28, !range !57, !noundef !58
  %i.it = trunc nuw i8 %i.is to i1
  %i.iu = add nsw i64 %storemerge.i129, 1
  br i1 %i.it, label %bb.ax, label %group_next.exit132.loopexit, !llvm.loop !60

bb.ay:                                            ; preds = %bb.av
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @.str.7) #11
  unreachable

group_next.exit128:                               ; preds = %bb.as
  %i.iv = load i64, ptr %i.t, align 8, !tbaa !64
  %i.iw = icmp eq i64 %.sroa.17.7, %i.iv
  br i1 %i.iw, label %group_next.exit136, label %bb.az

bb.az:                                            ; preds = %group_next.exit128
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 969, ptr noundef nonnull @.str.8) #11
  unreachable

group_next.exit136:                               ; preds = %bb.ar, %group_next.exit128
  %.3 = phi i32 [ 0, %group_next.exit128 ], [ -1, %bb.ar ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @measure_split(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not = icmp slt i64 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !70
  br label %get_indent.exit

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !70
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = getelementptr inbounds [24 x i8], ptr %i.c, i64 %1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %.not2327.not.i = icmp eq i64 %i.f, 0
  br i1 %.not2327.not.i, label %get_indent.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !82
  br label %bb.d

.thread36.i:                                      ; preds = %bb.h, %bb.e
  %.12038.i = phi i32 [ %.120.i, %bb.h ], [ %.01928.i, %bb.e ]
  %i.h = add nuw i64 %.01829.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %i.f
  br i1 %exitcond.not.i, label %get_indent.exit, label %bb.d, !llvm.loop !83

bb.d:                                             ; preds = %.thread36.i, %.lr.ph.i
  %.01829.i = phi i64 [ 0, %.lr.ph.i ], [ %i.h, %.thread36.i ] ; 2 uses
  %.01928.i = phi i32 [ 0, %.lr.ph.i ], [ %.12038.i, %.thread36.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01829.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !84    ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !84
  %i.n = and i8 %i.m, 1
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %get_indent.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %i.j, label %.thread36.i [
    i8 32, label %bb.f
    i8 9, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %.01928.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = srem i32 %.01928.i, 8
  %reass.sub.i = add nsw i32 %.01928.i, 8
  %i.q = sub i32 %reass.sub.i, %i.p
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.120.i = phi i32 [ %i.o, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %i.r = icmp slt i32 %.120.i, 200
  br i1 %i.r, label %.thread36.i, label %get_indent.exit

get_indent.exit:                                  ; preds = %bb.h, %bb.d, %.thread36.i, %bb.c, %bb.b
  %spec.select.i.sink = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ 200, %bb.h ], [ %.01928.i, %bb.d ], [ -1, %.thread36.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %spec.select.i.sink, ptr %i.s, align 4, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 -1, ptr %i.u, align 4, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %get_indent.exit
  %i.v = phi i32 [ 0, %get_indent.exit ], [ %i.an, %bb.p ]
  %.0.in = phi i64 [ %1, %get_indent.exit ], [ %.0, %bb.p ] ; 2 uses
  %.0 = add nsw i64 %.0.in, -1                    ; 2 uses
  %i.w = icmp sgt i64 %.0.in, 0
  br i1 %i.w, label %bb.j, label %.loopexit71

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.0 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %.not2327.not.i35 = icmp eq i64 %i.aa, 0
  br i1 %.not2327.not.i35, label %get_indent.exit46.thread, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.j
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !82
  br label %bb.k

.thread36.i43:                                    ; preds = %bb.o, %bb.l
  %.12038.i44 = phi i32 [ %.120.i41, %bb.o ], [ %.01928.i38, %bb.l ]
  %i.ac = add nuw i64 %.01829.i37, 1              ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i45, label %get_indent.exit46.thread, label %bb.k, !llvm.loop !83

bb.k:                                             ; preds = %.thread36.i43, %.lr.ph.i36
  %.01829.i37 = phi i64 [ 0, %.lr.ph.i36 ], [ %i.ac, %.thread36.i43 ] ; 2 uses
  %.01928.i38 = phi i32 [ 0, %.lr.ph.i36 ], [ %.12038.i44, %.thread36.i43 ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.01829.i37
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !84  ; 2 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !84
  %i.ai = and i8 %i.ah, 1
  %.not.i39 = icmp eq i8 %i.ai, 0
  br i1 %.not.i39, label %get_indent.exit46, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i8 %i.ae, label %.thread36.i43 [
    i8 32, label %bb.m
    i8 9, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.aj = add nsw i32 %.01928.i38, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ak = srem i32 %.01928.i38, 8
  %reass.sub.i40 = add nsw i32 %.01928.i38, 8
  %i.al = sub i32 %reass.sub.i40, %i.ak
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.120.i41 = phi i32 [ %i.aj, %bb.m ], [ %i.al, %bb.n ] ; 2 uses
  %i.am = icmp slt i32 %.120.i41, 200
  br i1 %i.am, label %.thread36.i43, label %.loopexit71.sink.split

get_indent.exit46.thread:                         ; preds = %.thread36.i43, %bb.j
  store i32 -1, ptr %i.u, align 4, !tbaa !68
  br label %bb.p

get_indent.exit46:                                ; preds = %bb.k
  store i32 %.01928.i38, ptr %i.u, align 4, !tbaa !68
  %.not33 = icmp eq i32 %.01928.i38, -1
  br i1 %.not33, label %bb.p, label %.loopexit71

bb.p:                                             ; preds = %get_indent.exit46.thread, %get_indent.exit46
  %i.an = add nuw nsw i32 %i.v, 1                 ; 3 uses
  store i32 %i.an, ptr %i.t, align 4, !tbaa !74
  %i.ao = icmp eq i32 %i.an, 20
  br i1 %i.ao, label %.loopexit71.sink.split, label %bb.i, !llvm.loop !85

.loopexit71.sink.split:                           ; preds = %bb.p, %bb.o
  %.sink = phi i32 [ 200, %bb.o ], [ 0, %bb.p ]
  store i32 %.sink, ptr %i.u, align 4, !tbaa !68
  br label %.loopexit71

.loopexit71:                                      ; preds = %get_indent.exit46, %bb.i, %.loopexit71.sink.split
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.ap, align 4, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  store i32 -1, ptr %i.aq, align 4, !tbaa !73
  br label %bb.q

bb.q:                                             ; preds = %bb.x, %.loopexit71
  %i.ar = phi i32 [ 0, %.loopexit71 ], [ %i.bj, %bb.x ]
  %.1.in = phi i64 [ %1, %.loopexit71 ], [ %.1, %bb.x ]
  %.1 = add nsw i64 %.1.in, 1                     ; 3 uses
  %i.as = icmp slt i64 %.1, %i.b
  br i1 %i.as, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.at = load ptr, ptr %0, align 8, !tbaa !12
  %i.au = getelementptr inbounds [24 x i8], ptr %i.at, i64 %.1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !81 ; 2 uses
  %.not2327.not.i47 = icmp eq i64 %i.aw, 0
  br i1 %.not2327.not.i47, label %get_indent.exit58.thread, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.r
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !82
  br label %bb.s

.thread36.i55:                                    ; preds = %bb.w, %bb.t
  %.12038.i56 = phi i32 [ %.120.i53, %bb.w ], [ %.01928.i50, %bb.t ]
  %i.ay = add nuw i64 %.01829.i49, 1              ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %i.ay, %i.aw
  br i1 %exitcond.not.i57, label %get_indent.exit58.thread, label %bb.s, !llvm.loop !83

bb.s:                                             ; preds = %.thread36.i55, %.lr.ph.i48
  %.01829.i49 = phi i64 [ 0, %.lr.ph.i48 ], [ %i.ay, %.thread36.i55 ] ; 2 uses
  %.01928.i50 = phi i32 [ 0, %.lr.ph.i48 ], [ %.12038.i56, %.thread36.i55 ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.01829.i49
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !84  ; 2 uses
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !84
  %i.be = and i8 %i.bd, 1
  %.not.i51 = icmp eq i8 %i.be, 0
  br i1 %.not.i51, label %get_indent.exit58, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i8 %i.ba, label %.thread36.i55 [
    i8 32, label %bb.u
    i8 9, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bf = add nsw i32 %.01928.i50, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bg = srem i32 %.01928.i50, 8
  %reass.sub.i52 = add nsw i32 %.01928.i50, 8
  %i.bh = sub i32 %reass.sub.i52, %i.bg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.120.i53 = phi i32 [ %i.bf, %bb.u ], [ %i.bh, %bb.v ] ; 2 uses
  %i.bi = icmp slt i32 %.120.i53, 200
  br i1 %i.bi, label %.thread36.i55, label %.loopexit.sink.split

get_indent.exit58.thread:                         ; preds = %.thread36.i55, %bb.r
  store i32 -1, ptr %i.aq, align 4, !tbaa !73
  br label %bb.x

get_indent.exit58:                                ; preds = %bb.s
  store i32 %.01928.i50, ptr %i.aq, align 4, !tbaa !73
  %.not34 = icmp eq i32 %.01928.i50, -1
  br i1 %.not34, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %get_indent.exit58.thread, %get_indent.exit58
  %i.bj = add nuw nsw i32 %i.ar, 1                ; 3 uses
  store i32 %i.bj, ptr %i.ap, align 4, !tbaa !72
  %i.bk = icmp eq i32 %i.bj, 20
  br i1 %i.bk, label %.loopexit.sink.split, label %bb.q, !llvm.loop !86

.loopexit.sink.split:                             ; preds = %bb.x, %bb.w
  %.sink93 = phi i32 [ 200, %bb.w ], [ 0, %bb.x ]
  store i32 %.sink93, ptr %i.aq, align 4, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %get_indent.exit58, %bb.q, %.loopexit.sink.split
  ret void
}

declare i32 @xdl_fall_back_diff(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xdl_build_script(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !90   ; 2 uses
  %i.i = icmp sgt i64 %i.f, -1
  %i.j = icmp sgt i64 %i.h, -1
  %i.k = select i1 %i.i, i1 true, i1 %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.042 = phi i64 [ %.pre-phi46, %bb.f ], [ %i.h, %bb.a ] ; 5 uses
  %.03241 = phi i64 [ %.pre-phi, %bb.f ], [ %i.f, %bb.a ] ; 5 uses
  %.03440 = phi ptr [ %.135, %bb.f ], [ null, %bb.a ] ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %.03241
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28, !range !57, !noundef !58
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.preheader52, label %bb.b

.preheader52:                                     ; preds = %bb.b, %.lr.ph
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %i.d, i64 %.042
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28, !range !57, !noundef !58
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.preheader52, label %._crit_edge44

._crit_edge44:                                    ; preds = %bb.b
  %.pre = add nsw i64 %.03241, -1
  %.pre45 = add nsw i64 %.042, -1
  br label %bb.f

bb.c:                                             ; preds = %.preheader52, %bb.c
  %.135.a = phi i64 [ %i.x, %bb.c ], [ %.03241, %.preheader52 ] ; 5 uses
  %i.t = getelementptr i8, ptr %i.b, i64 %.135.a
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28, !range !57, !noundef !58
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = add nsw i64 %.135.a, -1                  ; 2 uses
  br i1 %i.w, label %bb.c, label %.preheader, !llvm.loop !91

.preheader:                                       ; preds = %bb.c, %.preheader
  %.133 = phi i64 [ %i.ac, %.preheader ], [ %.042, %bb.c ] ; 5 uses
  %i.y = getelementptr i8, ptr %i.d, i64 %.133
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28, !range !57, !noundef !58
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = add nsw i64 %.133, -1                   ; 2 uses
  br i1 %i.ab, label %.preheader, label %bb.d, !llvm.loop !92

bb.d:                                             ; preds = %.preheader
  %i.ad = tail call ptr @xmalloc(i64 noundef 48) #10 ; 8 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.e, label %xdl_add_change.exit

xdl_add_change.exit:                              ; preds = %bb.d
  %i.ae = sub nsw i64 %.042, %.133
  %i.af = sub nsw i64 %.03241, %.135.a
  store ptr %.03440, ptr %i.ad, align 8, !tbaa !93
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.135.a, ptr %i.ag, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.133, ptr %i.ah, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !98
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.ae, ptr %i.aj, align 8, !tbaa !99
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 0, ptr %i.ak, align 8, !tbaa !100
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not3.i = icmp eq ptr %.03440, null
  br i1 %.not3.i, label %xdl_free_script.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.04.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.03440, %bb.e ] ; 2 uses
  %i.al = load ptr, ptr %.04.i, align 8, !tbaa !93 ; 2 uses
  tail call void @free(ptr noundef nonnull %.04.i) #10
  %.not.i38 = icmp eq ptr %i.al, null
  br i1 %.not.i38, label %xdl_free_script.exit, label %.lr.ph.i, !llvm.loop !101

bb.f:                                             ; preds = %._crit_edge44, %xdl_add_change.exit
  %.pre-phi46 = phi i64 [ %.pre45, %._crit_edge44 ], [ %i.ac, %xdl_add_change.exit ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge44 ], [ %i.x, %xdl_add_change.exit ]
  %.135 = phi ptr [ %.03440, %._crit_edge44 ], [ %i.ad, %xdl_add_change.exit ] ; 2 uses
  %.2.a = phi i64 [ %.03241, %._crit_edge44 ], [ %.135.a, %xdl_add_change.exit ]
  %.2 = phi i64 [ %.042, %._crit_edge44 ], [ %.133, %xdl_add_change.exit ]
  %i.am = icmp sgt i64 %.2.a, 0
  %i.an = icmp sgt i64 %.2, 0
  %i.ao = select i1 %i.am, i1 true, i1 %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.031.lcssa = phi ptr [ null, %bb.a ], [ %.135, %bb.f ]
  store ptr %.031.lcssa, ptr %1, align 8, !tbaa !103
  br label %xdl_free_script.exit

xdl_free_script.exit:                             ; preds = %.lr.ph.i, %bb.e, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.e ], [ -1, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @xdl_free_script(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not3 = icmp eq ptr %0, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04 = phi ptr [ %i.a, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.04, align 8, !tbaa !93   ; 2 uses
  tail call void @free(ptr noundef nonnull %.04) #10
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xdl_diff(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.regmatch_t, align 4         ; 7 uses
  %6 = alloca %struct.regmatch_t, align 4         ; 7 uses
  %7 = alloca %struct.s_xdfenv, align 8           ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %.not = icmp eq ptr %i.b, null
  %i.c = select i1 %.not, ptr @xdl_emit_diff, ptr @xdl_call_hunk_func
  %i.d = call i32 @xdl_do_diff(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !49
  %i.h = call i32 @xdl_change_compact(ptr noundef nonnull %7, ptr noundef nonnull %i.f, i64 noundef %i.g)
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !tbaa !49
  %i.k = call i32 @xdl_change_compact(ptr noundef nonnull %i.f, ptr noundef nonnull %7, i64 noundef %i.j)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !89   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !90   ; 2 uses
  %i.u = icmp sgt i64 %i.r, -1
  %i.v = icmp sgt i64 %i.t, -1
  %i.w = select i1 %i.u, i1 true, i1 %i.v
  br i1 %i.w, label %.lr.ph.i, label %.sink.split

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.042.i = phi i64 [ %.pre-phi46.i, %bb.i ], [ %i.t, %bb.d ] ; 5 uses
  %.03241.i = phi i64 [ %.pre-phi.i, %bb.i ], [ %i.r, %bb.d ] ; 5 uses
  %.03440.i = phi ptr [ %.135.i, %bb.i ], [ null, %bb.d ] ; 4 uses
  %i.x = getelementptr i8, ptr %i.n, i64 %.03241.i
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28, !range !57, !noundef !58
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.preheader86, label %bb.e

.preheader86:                                     ; preds = %bb.e, %.lr.ph.i
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr i8, ptr %i.p, i64 %.042.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28, !range !57, !noundef !58
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.preheader86, label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %bb.e
  %.pre.i = add nsw i64 %.03241.i, -1
  %.pre45.i = add nsw i64 %.042.i, -1
  br label %bb.i

bb.f:                                             ; preds = %.preheader86, %bb.f
  %.135.i.a = phi i64 [ %i.aj, %bb.f ], [ %.03241.i, %.preheader86 ] ; 5 uses
  %i.af = getelementptr i8, ptr %i.n, i64 %.135.i.a
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !28, !range !57, !noundef !58
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = add nsw i64 %.135.i.a, -1               ; 2 uses
  br i1 %i.ai, label %bb.f, label %.preheader.i, !llvm.loop !91

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.133.i = phi i64 [ %i.ao, %.preheader.i ], [ %.042.i, %bb.f ] ; 5 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %.133.i
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28, !range !57, !noundef !58
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = add nsw i64 %.133.i, -1                 ; 2 uses
  br i1 %i.an, label %.preheader.i, label %bb.g, !llvm.loop !92

bb.g:                                             ; preds = %.preheader.i
  %i.ap = call ptr @xmalloc(i64 noundef 48) #10   ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.h, label %xdl_add_change.exit.i

xdl_add_change.exit.i:                            ; preds = %bb.g
  %i.aq = sub nsw i64 %.042.i, %.133.i
  %i.ar = sub nsw i64 %.03241.i, %.135.i.a
  store ptr %.03440.i, ptr %i.ap, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.135.i.a, ptr %i.as, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.133.i, ptr %i.at, align 8, !tbaa !97
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.ar, ptr %i.au, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %i.aq, ptr %i.av, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i32 0, ptr %i.aw, align 8, !tbaa !100
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i = icmp eq ptr %.03440.i, null
  br i1 %.not3.i.i, label %.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.04.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.03440.i, %bb.h ] ; 2 uses
  %i.ax = load ptr, ptr %.04.i.i, align 8, !tbaa !93 ; 2 uses
  call void @free(ptr noundef nonnull %.04.i.i) #10
  %.not.i38.i = icmp eq ptr %i.ax, null
  br i1 %.not.i38.i, label %.sink.split, label %.lr.ph.i.i, !llvm.loop !101

bb.i:                                             ; preds = %xdl_add_change.exit.i, %._crit_edge44.i
  %.pre-phi46.i = phi i64 [ %.pre45.i, %._crit_edge44.i ], [ %i.ao, %xdl_add_change.exit.i ]
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge44.i ], [ %i.aj, %xdl_add_change.exit.i ]
  %.135.i = phi ptr [ %.03440.i, %._crit_edge44.i ], [ %i.ap, %xdl_add_change.exit.i ] ; 7 uses
  %.2.i.a = phi i64 [ %.03241.i, %._crit_edge44.i ], [ %.135.i.a, %xdl_add_change.exit.i ]
  %.2.i = phi i64 [ %.042.i, %._crit_edge44.i ], [ %.133.i, %xdl_add_change.exit.i ]
  %i.ay = icmp sgt i64 %.2.i.a, 0
  %i.az = icmp sgt i64 %.2.i, 0
  %i.ba = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %i.ba, label %.lr.ph.i, label %xdl_build_script.exit, !llvm.loop !102

xdl_build_script.exit:                            ; preds = %bb.i
  %.not14 = icmp eq ptr %.135.i, null
  br i1 %.not14, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %xdl_build_script.exit
  %i.bb = load i64, ptr %2, align 8, !tbaa !49    ; 3 uses
  %i.bc = and i64 %i.bb, 128
  %.not15 = icmp eq i64 %i.bc, 0
  br i1 %.not15, label %xdl_mark_ignorable_lines.exit, label %.preheader

.preheader:                                       ; preds = %bb.j, %._crit_edge33.i
  %.02835.i = phi ptr [ %i.co, %._crit_edge33.i ], [ %.135.i, %bb.j ] ; 6 uses
  %i.bd = load ptr, ptr %7, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %.02835.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !96
  %i.bg = getelementptr inbounds [24 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.02835.i, i64 24 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !98
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i18, label %._crit_edge.i17

.lr.ph.i18:                                       ; preds = %.preheader, %.lr.ph.i18
  %.029.i = phi i64 [ %i.bp, %.lr.ph.i18 ], [ 0, %.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.029.i ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !81
  %i.bo = call i32 @xdl_blankline(ptr noundef %i.bl, i64 noundef %i.bn, i64 noundef %i.bb) #10 ; 2 uses
  %i.bp = add nuw nsw i64 %.029.i, 1              ; 2 uses
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !98
  %i.br = icmp slt i64 %i.bp, %i.bq
  %i.bs = icmp ne i32 %i.bo, 0
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph.i18, label %._crit_edge.i17, !llvm.loop !107

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %.preheader
  %.026.lcssa.i = phi i32 [ 1, %.preheader ], [ %i.bo, %.lr.ph.i18 ] ; 2 uses
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.bv = getelementptr inbounds nuw i8, ptr %.02835.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !97
  %i.bx = getelementptr inbounds [24 x i8], ptr %i.bu, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.02835.i, i64 32 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !99
  %i.ca = icmp sgt i64 %i.bz, 0
  %i.cb = icmp ne i32 %.026.lcssa.i, 0
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph32.i, label %._crit_edge33.i

.lr.ph32.i:                                       ; preds = %._crit_edge.i17, %.lr.ph32.i
  %.130.i = phi i64 [ %i.ci, %.lr.ph32.i ], [ 0, %._crit_edge.i17 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %.130.i ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !81
  %i.ch = call i32 @xdl_blankline(ptr noundef %i.ce, i64 noundef %i.cg, i64 noundef %i.bb) #10 ; 2 uses
  %i.ci = add nuw nsw i64 %.130.i, 1              ; 2 uses
  %i.cj = load i64, ptr %i.by, align 8, !tbaa !99
  %i.ck = icmp slt i64 %i.ci, %i.cj
  %i.cl = icmp ne i32 %i.ch, 0
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %i.cm, label %.lr.ph32.i, label %._crit_edge33.i, !llvm.loop !109

._crit_edge33.i:                                  ; preds = %.lr.ph32.i, %._crit_edge.i17
  %.127.lcssa.i = phi i32 [ %.026.lcssa.i, %._crit_edge.i17 ], [ %i.ch, %.lr.ph32.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.02835.i, i64 40
  store i32 %.127.lcssa.i, ptr %i.cn, align 8, !tbaa !100
  %i.co = load ptr, ptr %.02835.i, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %xdl_mark_ignorable_lines.exit, label %.preheader, !llvm.loop !110

xdl_mark_ignorable_lines.exit:                    ; preds = %._crit_edge33.i, %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !111
  %.not16 = icmp eq ptr %i.cq, null
  br i1 %.not16, label %xdl_mark_ignorable_regex.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %xdl_mark_ignorable_lines.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.lr.ph43.i
  %.02541.i = phi ptr [ %.135.i, %.lr.ph43.i ], [ %i.es, %bb.q ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02541.i, i64 40 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !100
  %.not26.i = icmp eq i32 %i.cv, 0
  br i1 %.not26.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.cw = load ptr, ptr %7, align 8, !tbaa !106
  %i.cx = getelementptr inbounds nuw i8, ptr %.02541.i, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !96
  %i.cz = getelementptr inbounds [24 x i8], ptr %i.cw, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.02541.i, i64 24 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !98
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i22, label %._crit_edge.i21

.lr.ph.i22:                                       ; preds = %bb.l
  %i.dd = load i64, ptr %i.cr, align 8, !tbaa !112
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %._crit_edge37.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  br label %.lr.ph.i.i23

.lr.ph.splitthread-pre-split.i:                   ; preds = %record_matches_regex.exit.i
  %.pr.i = load i64, ptr %i.cr, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %.not11.i.i = icmp eq i64 %.pr.i, 0
  br i1 %.not11.i.i, label %record_matches_regex.exit.thread.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.split.i.preheader, %.lr.ph.splitthread-pre-split.i
  %.033.i52 = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %i.dr, %.lr.ph.splitthread-pre-split.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %.033.i52 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.dh = add nuw i64 %.08.i.i, 1                 ; 2 uses
  %i.di = load i64, ptr %i.cr, align 8, !tbaa !112
  %i.dj = icmp ult i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.n, label %record_matches_regex.exit.thread.i, !llvm.loop !113

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i23
  %.08.i.i = phi i64 [ 0, %.lr.ph.i.i23 ], [ %i.dh, %bb.m ] ; 2 uses
  %i.dk = load ptr, ptr %i.cp, align 8, !tbaa !111
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.08.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !114
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !82
  %i.do = load i64, ptr %i.dg, align 8, !tbaa !81
  store i32 0, ptr %6, align 4, !tbaa !116
  %i.dp = trunc i64 %i.do to i32
  store i32 %i.dp, ptr %i.cs, align 4, !tbaa !118
  %i.dq = call i32 @regexec(ptr noundef %i.dm, ptr noundef %i.dn, i64 noundef 1, ptr noundef nonnull %6, i32 noundef 4) #10
  %.not.i.i24 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i24, label %record_matches_regex.exit.i, label %bb.m

record_matches_regex.exit.thread.i:               ; preds = %.lr.ph.splitthread-pre-split.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %._crit_edge37.i

record_matches_regex.exit.i:                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.dr = add nuw nsw i64 %.033.i52, 1            ; 2 uses
  %i.ds = load i64, ptr %i.da, align 8, !tbaa !98
  %i.dt = icmp slt i64 %i.dr, %i.ds
  br i1 %i.dt, label %.lr.ph.splitthread-pre-split.i, label %._crit_edge.i21, !llvm.loop !119

._crit_edge.i21:                                  ; preds = %record_matches_regex.exit.i, %bb.l
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.dv = getelementptr inbounds nuw i8, ptr %.02541.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !97
  %i.dx = getelementptr inbounds [24 x i8], ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.02541.i, i64 32 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !99
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %.lr.ph36.i, label %._crit_edge37.i

.lr.ph36.i:                                       ; preds = %._crit_edge.i21
  %i.eb = load i64, ptr %i.cr, align 8, !tbaa !112
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %._crit_edge37.i, label %.lr.ph36.split.i.preheader

.lr.ph36.split.i.preheader:                       ; preds = %.lr.ph36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  br label %.lr.ph.i28.i

.lr.ph36.splitthread-pre-split.i:                 ; preds = %record_matches_regex.exit32.i
  %.pr53.i = load i64, ptr %i.cr, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %.not11.i27.i = icmp eq i64 %.pr53.i, 0
  br i1 %.not11.i27.i, label %record_matches_regex.exit32.thread.i, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph36.split.i.preheader, %.lr.ph36.splitthread-pre-split.i
  %.134.i53 = phi i64 [ 0, %.lr.ph36.split.i.preheader ], [ %i.ep, %.lr.ph36.splitthread-pre-split.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %.134.i53 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.ef = add nuw i64 %.08.i29.i, 1               ; 2 uses
  %i.eg = load i64, ptr %i.cr, align 8, !tbaa !112
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.p, label %record_matches_regex.exit32.thread.i, !llvm.loop !113

bb.p:                                             ; preds = %bb.o, %.lr.ph.i28.i
  %.08.i29.i = phi i64 [ 0, %.lr.ph.i28.i ], [ %i.ef, %bb.o ] ; 2 uses
  %i.ei = load ptr, ptr %i.cp, align 8, !tbaa !111
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.08.i29.i
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !114
  %i.el = load ptr, ptr %i.ed, align 8, !tbaa !82
  %i.em = load i64, ptr %i.ee, align 8, !tbaa !81
  store i32 0, ptr %5, align 4, !tbaa !116
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ct, align 4, !tbaa !118
  %i.eo = call i32 @regexec(ptr noundef %i.ek, ptr noundef %i.el, i64 noundef 1, ptr noundef nonnull %5, i32 noundef 4) #10
  %.not.i30.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i30.i, label %record_matches_regex.exit32.i, label %bb.o

record_matches_regex.exit32.thread.i:             ; preds = %.lr.ph36.splitthread-pre-split.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %._crit_edge37.i

record_matches_regex.exit32.i:                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.ep = add nuw nsw i64 %.134.i53, 1            ; 2 uses
  %i.eq = load i64, ptr %i.dy, align 8, !tbaa !99
  %i.er = icmp slt i64 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph36.splitthread-pre-split.i, label %._crit_edge37.i, !llvm.loop !121

._crit_edge37.i:                                  ; preds = %record_matches_regex.exit32.i, %record_matches_regex.exit.thread.i, %.lr.ph.i22, %record_matches_regex.exit32.thread.i, %.lr.ph36.i, %._crit_edge.i21
  %.124.lcssa.i = phi i32 [ 1, %._crit_edge.i21 ], [ 0, %.lr.ph36.i ], [ 0, %record_matches_regex.exit32.thread.i ], [ 0, %record_matches_regex.exit.thread.i ], [ 0, %.lr.ph.i22 ], [ 1, %record_matches_regex.exit32.i ]
  store i32 %.124.lcssa.i, ptr %i.cu, align 8, !tbaa !100
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge37.i, %bb.k
  %i.es = load ptr, ptr %.02541.i, align 8, !tbaa !93 ; 2 uses
  %.not.i19 = icmp eq ptr %i.es, null
  br i1 %.not.i19, label %xdl_mark_ignorable_regex.exit, label %bb.k, !llvm.loop !122

xdl_mark_ignorable_regex.exit:                    ; preds = %bb.q, %xdl_mark_ignorable_lines.exit
  %i.et = call i32 %i.c(ptr noundef nonnull %7, ptr noundef nonnull %.135.i, ptr noundef %4, ptr noundef %3) #10, !callees !123
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i25, label %.lr.ph.i29

.lr.ph.i25:                                       ; preds = %xdl_mark_ignorable_regex.exit, %.lr.ph.i25
  %.04.i = phi ptr [ %i.ev, %.lr.ph.i25 ], [ %.135.i, %xdl_mark_ignorable_regex.exit ] ; 2 uses
  %i.ev = load ptr, ptr %.04.i, align 8, !tbaa !93 ; 2 uses
  call void @free(ptr noundef nonnull %.04.i) #10
  %.not.i26 = icmp eq ptr %i.ev, null
  br i1 %.not.i26, label %.sink.split, label %.lr.ph.i25, !llvm.loop !101

.lr.ph.i29:                                       ; preds = %xdl_mark_ignorable_regex.exit, %.lr.ph.i29
  %.04.i30 = phi ptr [ %i.ew, %.lr.ph.i29 ], [ %.135.i, %xdl_mark_ignorable_regex.exit ] ; 2 uses
  %i.ew = load ptr, ptr %.04.i30, align 8, !tbaa !93 ; 2 uses
  call void @free(ptr noundef nonnull %.04.i30) #10
  %.not.i31 = icmp eq ptr %i.ew, null
  br i1 %.not.i31, label %.sink.split, label %.lr.ph.i29, !llvm.loop !101

.sink.split:                                      ; preds = %.lr.ph.i29, %.lr.ph.i25, %.lr.ph.i.i, %xdl_build_script.exit, %bb.d, %bb.b, %bb.c, %bb.h
  %.0.ph = phi i32 [ -1, %bb.b ], [ -1, %.lr.ph.i25 ], [ 0, %xdl_build_script.exit ], [ -1, %bb.h ], [ -1, %bb.c ], [ -1, %.lr.ph.i.i ], [ 0, %bb.d ], [ 0, %.lr.ph.i29 ]
  call void @xdl_free_env(ptr noundef nonnull %7) #10
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @xdl_call_hunk_func(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !103
  %.not12 = icmp eq ptr %1, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = call ptr @xdl_get_hunk(ptr noundef nonnull %i.a, ptr noundef %3) #10 ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98
  %i.l = sub i64 %i.i, %i.g
  %i.m = add i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !99
  %i.t = sub i64 %i.q, %i.o
  %i.u = add i64 %i.t, %i.s
  %i.v = load ptr, ptr %2, align 8, !tbaa !124
  %i.w = call i32 %i.e(i64 noundef %i.g, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.u, ptr noundef %i.v) #10
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !103
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ 0, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare i32 @xdl_emit_diff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xdl_get_hunk(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xdl_blankline(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"s_xdfile", !14, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !17, i64 32, !18, i64 40, !16, i64 48}
!14 = !{!"p1 _ZTS9s_xrecord", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"p1 _Bool", !15, i64 0}
!18 = !{!"p1 long", !15, i64 0}
!19 = !{!13, !18, i64 40}
!20 = !{!16, !16, i64 0}
!21 = !{!22, !16, i64 16}
!22 = !{!"s_xrecord", !23, i64 0, !16, i64 8, !16, i64 16}
!23 = !{!"p1 omnipotent char", !15, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!13, !17, i64 32}
!28 = !{!29, !29, i64 0}
!29 = !{!"_Bool", !10, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25}
!36 = !{!37, !16, i64 8}
!37 = !{!"s_xdalgoenv", !16, i64 0, !16, i64 8, !16, i64 16}
!38 = distinct !{!38, !25}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = !{!37, !16, i64 16}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = !{!37, !16, i64 0}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = !{!50, !16, i64 0}
!50 = !{!"s_xpparam", !16, i64 0, !51, i64 8, !16, i64 16, !53, i64 24, !16, i64 32}
!51 = !{!"p2 _ZTS17re_pattern_buffer", !52, i64 0}
!52 = !{!"any p2 pointer", !15, i64 0}
!53 = !{!"p2 omnipotent char", !52, i64 0}
!54 = !{!55, !16, i64 48}
!55 = !{!"s_xdfenv", !13, i64 0, !13, i64 56}
!56 = !{!55, !16, i64 104}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = distinct !{!59, !25}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = !{!13, !16, i64 8}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = !{!69, !9, i64 12}
!69 = !{!"split_measurement", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!70 = !{!69, !9, i64 0}
!71 = !{!69, !9, i64 4}
!72 = !{!69, !9, i64 16}
!73 = !{!69, !9, i64 20}
!74 = !{!69, !9, i64 8}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = !{i64 0, i64 8, !78, i64 8, i64 8, !20, i64 16, i64 8, !20, i64 24, i64 8, !20, i64 32, i64 8, !79, i64 40, i64 8, !80, i64 48, i64 8, !20}
!78 = !{!14, !14, i64 0}
!79 = !{!17, !17, i64 0}
!80 = !{!18, !18, i64 0}
!81 = !{!22, !16, i64 8}
!82 = !{!22, !23, i64 0}
!83 = distinct !{!83, !25}
!84 = !{!10, !10, i64 0}
!85 = distinct !{!85, !25}
!86 = distinct !{!86, !25}
!87 = !{!55, !17, i64 32}
!88 = !{!55, !17, i64 88}
!89 = !{!55, !16, i64 8}
!90 = !{!55, !16, i64 64}
!91 = distinct !{!91, !25}
!92 = distinct !{!92, !25}
!93 = !{!94, !95, i64 0}
!94 = !{!"s_xdchange", !95, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !9, i64 40}
!95 = !{!"p1 _ZTS10s_xdchange", !15, i64 0}
!96 = !{!94, !16, i64 8}
!97 = !{!94, !16, i64 16}
!98 = !{!94, !16, i64 24}
end_hunk_0
