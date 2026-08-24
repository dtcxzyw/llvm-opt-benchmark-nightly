Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_compand?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@__isoc99_sscanf
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal i32 @compand_nodelay(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.l = tail call i32 @av_frame_is_writable(ptr noundef %1) #12
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = tail call ptr @ff_get_audio_buffer(ptr noundef %i.o, i32 noundef %i.k) #12 ; 4 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !97
  %.not31 = icmp eq ptr %i.p, null
  br i1 %.not31, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.q = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.p, ptr noundef nonnull %1) #12 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @av_frame_free(ptr noundef nonnull %i.b) #12
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %bb.d
  %i.s = phi ptr [ %i.p, %bb.d ], [ %1, %bb.a ]   ; 3 uses
  %i.t = icmp sgt i32 %i.i, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge37.split

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.aa = icmp sgt i32 %i.k, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br i1 %i.aa, label %update_volume.exit.lr.ph.preheader, label %._crit_edge37.split

update_volume.exit.lr.ph.preheader:               ; preds = %.lr.ph
  %wide.trip.count43 = zext nneg i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %update_volume.exit.lr.ph

update_volume.exit.lr.ph:                         ; preds = %update_volume.exit.lr.ph.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %update_volume.exit.lr.ph.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  br label %update_volume.exit

update_volume.exit:                               ; preds = %update_volume.exit.lr.ph, %get_volume.exit
  %indvars.iv = phi i64 [ 0, %update_volume.exit.lr.ph ], [ %indvars.iv.next, %get_volume.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !57
  %i.an = tail call nsz double @llvm.fabs.f64(double %i.am)
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !58 ; 2 uses
  %i.ap = fsub nsz double %i.an, %i.ao            ; 2 uses
  %i.aq = fcmp nsz ogt double %i.ap, 0.000000e+00
  %.sink.in.i.idx = select i1 %i.aq, i64 0, i64 8
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink.in.i.idx
  %.sink.i = load double, ptr %.sink.in.i, align 8, !tbaa !57
  %i.ar = tail call nsz double @llvm.fmuladd.f64(double %i.ap, double %.sink.i, double %i.ao) ; 3 uses
  store double %i.ar, ptr %i.ak, align 8, !tbaa !58
  %i.as = load double, ptr %i.al, align 8, !tbaa !57
  %i.at = load double, ptr %i.ab, align 8, !tbaa !60
  %i.au = fcmp nsz olt double %i.ar, %i.at
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %update_volume.exit
  %i.av = load double, ptr %i.ae, align 8, !tbaa !70
  br label %get_volume.exit

bb.h:                                             ; preds = %update_volume.exit
  %i.aw = tail call nsz double @llvm.log.f64(double %i.ar) ; 2 uses
  %i.ax = load i32, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  %i.az = load ptr, ptr %i.ad, align 8, !tbaa !62 ; 2 uses
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %i.ax to i64 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !63
  %i.bc = fcmp nsz ugt double %i.aw, %i.bb
  br i1 %i.bc, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %bb.i, %bb.j, %bb.h
  %.0.lcssa.i = phi i64 [ 1, %bb.h ], [ %wide.trip.count.i, %bb.j ], [ %indvars.iv.i, %bb.i ]
  %i.bd = getelementptr [32 x i8], ptr %i.az, i64 %.0.lcssa.i ; 4 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -32
  %i.bf = load double, ptr %i.be, align 8, !tbaa !63
  %i.bg = fsub nsz double %i.aw, %i.bf            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bd, i64 -24
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !67
  %i.bj = getelementptr i8, ptr %i.bd, i64 -16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !68
  %i.bl = getelementptr i8, ptr %i.bd, i64 -8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !69
  %i.bn = tail call nsz double @llvm.fmuladd.f64(double %i.bk, double %i.bg, double %i.bm)
  %i.bo = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.bn, double %i.bi)
  %i.bp = tail call nsz double @llvm.exp.f64(double %i.bo)
  br label %get_volume.exit

get_volume.exit:                                  ; preds = %bb.g, %._crit_edge.i
  %.020.i = phi nsz double [ %i.av, %bb.g ], [ %i.bp, %._crit_edge.i ]
  %i.bq = fmul nsz double %i.as, %.020.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store double %i.bq, ptr %i.br, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %update_volume.exit, !llvm.loop !99

._crit_edge:                                      ; preds = %get_volume.exit
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge37.split, label %update_volume.exit.lr.ph, !llvm.loop !100

._crit_edge37.split:                              ; preds = %._crit_edge, %.lr.ph, %bb.f
  %.not32 = icmp eq ptr %1, %i.s
  br i1 %.not32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge37.split
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge37.split
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !98
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39
  %i.bv = call i32 @ff_filter_frame(ptr noundef %i.bu, ptr noundef %i.s) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e, %bb.c
  %.028 = phi i32 [ %i.bv, %bb.l ], [ %i.q, %bb.e ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal i32 @compand_delay(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = icmp eq i64 %i.p, -9223372036854775808
  %spec.select = select i1 %i.q, i64 0, i64 %i.p
  store i64 %spec.select, ptr %i.l, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = icmp sgt i32 %i.i, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge121

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %.not91111 = icmp sgt i32 %i.k, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br i1 %.not91111, label %update_volume.exit.lr.ph.us.preheader, label %.lr.ph.split

update_volume.exit.lr.ph.us.preheader:            ; preds = %.lr.ph
  %i.af = zext nneg i32 %i.k to i64               ; 2 uses
  %wide.trip.count141 = zext nneg i32 %i.i to i64
  %.pre.pre = load i32, ptr %i.x, align 8, !tbaa !55
  br label %update_volume.exit.lr.ph.us

update_volume.exit.lr.ph.us:                      ; preds = %update_volume.exit.lr.ph.us.preheader, %._crit_edge.us
  %.pre = phi i32 [ %.pre.pre, %update_volume.exit.lr.ph.us.preheader ], [ %.pre146, %._crit_edge.us ] ; 2 uses
  %.promoted.us = phi ptr [ null, %update_volume.exit.lr.ph.us.preheader ], [ %i.dc, %._crit_edge.us ]
  %indvars.iv138 = phi i64 [ 0, %update_volume.exit.lr.ph.us.preheader ], [ %indvars.iv.next139, %._crit_edge.us ] ; 5 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv138
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv138
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56 ; 2 uses
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv138 ; 2 uses
  %i.aq = load i32, ptr %i.v, align 4, !tbaa !42
  %i.ar = load i32, ptr %i.w, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.a, align 8
  br label %update_volume.exit.us

update_volume.exit.us:                            ; preds = %update_volume.exit.lr.ph.us, %bb.n
  %.pre147 = phi i32 [ %.pre, %update_volume.exit.lr.ph.us ], [ %.pre146, %bb.n ]
  %i.au = phi i32 [ %.pre, %update_volume.exit.lr.ph.us ], [ %i.db, %bb.n ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %update_volume.exit.lr.ph.us ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %.166116.us = phi i32 [ %i.aq, %update_volume.exit.lr.ph.us ], [ %.267.us, %bb.n ] ; 3 uses
  %.070115.us = phi i32 [ 0, %update_volume.exit.lr.ph.us ], [ %.171.us, %bb.n ] ; 3 uses
  %.174114.us = phi i32 [ %i.ar, %update_volume.exit.lr.ph.us ], [ %i.dg, %bb.n ] ; 3 uses
  %i.av = phi ptr [ %.promoted.us, %update_volume.exit.lr.ph.us ], [ %i.dc, %bb.n ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !57 ; 2 uses
  %i.ay = tail call nsz double @llvm.fabs.f64(double %i.ax)
  %i.az = load double, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.ba = fsub nsz double %i.ay, %i.az            ; 2 uses
  %i.bb = fcmp nsz ogt double %i.ba, 0.000000e+00
  %.sink.in.i.idx.us = select i1 %i.bb, i64 0, i64 8
  %.sink.in.i.us = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink.in.i.idx.us
  %.sink.i.us = load double, ptr %.sink.in.i.us, align 8, !tbaa !57
  %i.bc = tail call nsz double @llvm.fmuladd.f64(double %i.ba, double %.sink.i.us, double %i.az) ; 2 uses
  store double %i.bc, ptr %i.as, align 8, !tbaa !58
  %.not87.us = icmp slt i32 %.166116.us, %i.au
  br i1 %.not87.us, label %bb.m, label %bb.d

bb.d:                                             ; preds = %update_volume.exit.us
  %.not88.us = icmp eq ptr %i.av, null
  br i1 %.not88.us, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39
  %i.bf = sub nuw nsw i64 %i.af, %indvars.iv      ; 2 uses
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = tail call ptr @ff_get_audio_buffer(ptr noundef %i.be, i32 noundef %i.bg) #12 ; 5 uses
  %.not89.us = icmp eq ptr %i.bh, null
  br i1 %.not89.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.bh, ptr noundef %i.at) #12 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.split125.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load i64, ptr %i.l, align 8, !tbaa !20  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !44
  %i.bm = load i32, ptr %i.z, align 8, !tbaa !50
  %.sroa.2.0.insert.ext.us = zext i32 %i.bm to i64
  %.sroa.2.0.insert.shift.us = shl nuw i64 %.sroa.2.0.insert.ext.us, 32
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.2.0.insert.shift.us, 1
  %i.bn = load i64, ptr %i.aa, align 8
  %i.bo = tail call i64 @av_rescale_q(i64 noundef %i.bf, i64 %.sroa.0.0.insert.insert.us, i64 %i.bn) #13
  %i.bp = add nsw i64 %i.bo, %i.bk
  store i64 %i.bp, ptr %i.l, align 8, !tbaa !20
  %.pre144 = load double, ptr %i.as, align 8, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.bq = phi double [ %.pre144, %bb.g ], [ %i.bc, %bb.d ] ; 2 uses
  %i.br = phi ptr [ %i.bh, %bb.g ], [ %i.av, %bb.d ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv138
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !56
  %i.bw = sext i32 %.174114.us to i64             ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !57
  %i.bz = load double, ptr %i.ab, align 8, !tbaa !60
  %i.ca = fcmp nsz olt double %i.bq, %i.bz
  br i1 %i.ca, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = tail call nsz double @llvm.log.f64(double %i.bq) ; 2 uses
  %i.cc = load i32, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !62 ; 2 uses
  br i1 %i.cd, label %.lr.ph.i.us, label %._crit_edge.i.us

.lr.ph.i.us:                                      ; preds = %bb.i
  %wide.trip.count.i.us = zext nneg i32 %i.cc to i64 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 1, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.k ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %indvars.iv.i.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !63
  %i.ch = fcmp nsz ugt double %i.cb, %i.cg
  br i1 %i.ch, label %bb.k, label %._crit_edge.i.us

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %bb.j, !llvm.loop !65

._crit_edge.i.us:                                 ; preds = %bb.j, %bb.k, %bb.i
  %.0.lcssa.i.us = phi i64 [ 1, %bb.i ], [ %wide.trip.count.i.us, %bb.k ], [ %indvars.iv.i.us, %bb.j ]
  %i.ci = getelementptr [32 x i8], ptr %i.ce, i64 %.0.lcssa.i.us ; 4 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -32
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !63
  %i.cl = fsub nsz double %i.cb, %i.ck            ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ci, i64 -24
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !67
  %i.co = getelementptr i8, ptr %i.ci, i64 -16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !68
  %i.cq = getelementptr i8, ptr %i.ci, i64 -8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !69
  %i.cs = tail call nsz double @llvm.fmuladd.f64(double %i.cp, double %i.cl, double %i.cr)
  %i.ct = tail call nsz double @llvm.fmuladd.f64(double %i.cl, double %i.cs, double %i.cn)
  %i.cu = tail call nsz double @llvm.exp.f64(double %i.ct)
  br label %get_volume.exit.us

bb.l:                                             ; preds = %bb.h
  %i.cv = load double, ptr %i.ae, align 8, !tbaa !70
  br label %get_volume.exit.us

get_volume.exit.us:                               ; preds = %bb.l, %._crit_edge.i.us
  %.020.i.us = phi nsz double [ %i.cv, %bb.l ], [ %i.cu, %._crit_edge.i.us ]
  %i.cw = fmul nsz double %i.by, %.020.i.us
  %i.cx = add nsw i32 %.070115.us, 1
  %i.cy = sext i32 %.070115.us to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cy
  store double %i.cw, ptr %i.cz, align 8, !tbaa !57
  %.pre145 = load i32, ptr %i.x, align 8, !tbaa !55 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %update_volume.exit.us
  %i.da = add nsw i32 %.166116.us, 1
  %.pre149 = sext i32 %.174114.us to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %get_volume.exit.us
  %.pre-phi = phi i64 [ %.pre149, %bb.m ], [ %i.bw, %get_volume.exit.us ]
  %.pre146 = phi i32 [ %.pre147, %bb.m ], [ %.pre145, %get_volume.exit.us ] ; 2 uses
  %i.db = phi i32 [ %i.au, %bb.m ], [ %.pre145, %get_volume.exit.us ] ; 3 uses
  %i.dc = phi ptr [ %i.av, %bb.m ], [ %i.br, %get_volume.exit.us ] ; 4 uses
  %.171.us = phi i32 [ %.070115.us, %bb.m ], [ %i.cx, %get_volume.exit.us ]
  %.267.us = phi i32 [ %i.da, %bb.m ], [ %.166116.us, %get_volume.exit.us ] ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.pre-phi
  store double %i.ax, ptr %i.dd, align 8, !tbaa !57
  %i.de = add nsw i32 %.174114.us, 1              ; 2 uses
  %.not90.us = icmp slt i32 %i.de, %i.db
  %i.df = select i1 %.not90.us, i32 0, i32 %i.db
  %i.dg = sub nsw i32 %i.de, %i.df                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.af
  br i1 %exitcond.not, label %._crit_edge.us, label %update_volume.exit.us, !llvm.loop !101

._crit_edge.us:                                   ; preds = %bb.n
  store ptr %i.dc, ptr %i.b, align 8
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge121, label %update_volume.exit.lr.ph.us, !llvm.loop !102

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dh = load i32, ptr %i.v, align 4, !tbaa !42
  %i.di = load i32, ptr %i.w, align 8, !tbaa !54
  store ptr null, ptr %i.b, align 8
  br label %._crit_edge121

.split.us:                                        ; preds = %bb.e
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %.thread97

.split125.us:                                     ; preds = %bb.f
  store ptr %i.bh, ptr %i.b, align 8
  call void @av_frame_free(ptr noundef nonnull %i.b) #12
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %.thread97

._crit_edge121:                                   ; preds = %._crit_edge.us, %.lr.ph.split, %bb.c
  %i.dj = phi ptr [ null, %bb.c ], [ null, %.lr.ph.split ], [ %i.dc, %._crit_edge.us ] ; 2 uses
  %.073.lcssa = phi i32 [ undef, %bb.c ], [ %i.di, %.lr.ph.split ], [ %i.dg, %._crit_edge.us ]
  %.065.lcssa = phi i32 [ undef, %bb.c ], [ %i.dh, %.lr.ph.split ], [ %.267.us, %._crit_edge.us ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 %.065.lcssa, ptr %i.dk, align 4, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 %.073.lcssa, ptr %i.dl, align 8, !tbaa !54
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  %.not = icmp eq ptr %i.dj, null
  br i1 %.not, label %.thread97, label %bb.o

bb.o:                                             ; preds = %._crit_edge121
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !98
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !39
  %i.dp = call i32 @ff_filter_frame(ptr noundef %i.do, ptr noundef nonnull %i.dj) #12
  br label %.thread97

.thread97:                                        ; preds = %.split125.us, %.split.us, %._crit_edge121, %bb.o
  %.4 = phi i32 [ 0, %._crit_edge121 ], [ %i.dp, %bb.o ], [ -12, %.split.us ], [ %i.bi, %.split125.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #7

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @av_default_item_name(ptr noundef) #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !26, i64 128}
!21 = !{!"CompandContext", !11, i64 0, !6, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !22, i64 40, !23, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !25, i64 104, !6, i64 112, !6, i64 116, !6, i64 120, !26, i64 128, !12, i64 136}
!22 = !{!"p1 _ZTS14CompandSegment", !12, i64 0}
!23 = !{!"p1 _ZTS9ChanParam", !12, i64 0}
!24 = !{!"double", !7, i64 0}
!25 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!26 = !{!"long", !7, i64 0}
!27 = !{!28, !29, i64 16}
!28 = !{!"AVFilterLink", !29, i64 0, !15, i64 8, !29, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !30, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !31, i64 72, !30, i64 96, !32, i64 104, !6, i64 112, !6, i64 116, !33, i64 120, !33, i64 168}
!29 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!30 = !{!"AVRational", !6, i64 0, !6, i64 4}
!31 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!32 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!33 = !{!"AVFilterFormatsConfig", !34, i64 0, !34, i64 8, !35, i64 16, !34, i64 24, !34, i64 32, !34, i64 40}
!34 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!35 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!36 = !{!21, !12, i64 136}
!37 = !{!28, !29, i64 0}
!38 = !{!10, !16, i64 32}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!41 = !{!10, !6, i64 104}
!42 = !{!21, !6, i64 116}
!43 = !{!28, !6, i64 76}
!44 = !{!45, !26, i64 136}
!45 = !{!"AVFrame", !7, i64 0, !7, i64 64, !46, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !30, i64 124, !26, i64 136, !26, i64 144, !30, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !47, i64 248, !6, i64 256, !32, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !26, i64 304, !48, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !26, i64 344, !26, i64 352, !26, i64 360, !26, i64 368, !12, i64 376, !31, i64 384, !26, i64 408, !6, i64 416}
!46 = !{!"p2 omnipotent char", !17, i64 0}
!47 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!48 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!49 = !{!45, !6, i64 112}
!50 = !{!28, !6, i64 64}
!51 = !{!21, !25, i64 104}
!52 = !{!45, !46, i64 96}
!53 = !{!21, !23, i64 48}
!54 = !{!21, !6, i64 120}
!55 = !{!21, !6, i64 112}
!56 = !{!14, !14, i64 0}
!57 = !{!24, !24, i64 0}
!58 = !{!59, !24, i64 16}
!59 = !{!"ChanParam", !24, i64 0, !24, i64 8, !24, i64 16}
!60 = !{!21, !24, i64 56}
!61 = !{!21, !6, i64 8}
!62 = !{!21, !22, i64 40}
!63 = !{!64, !24, i64 0}
!64 = !{!"CompandSegment", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!64, !24, i64 8}
!68 = !{!64, !24, i64 16}
!69 = !{!64, !24, i64 24}
!70 = !{!21, !24, i64 64}
!71 = distinct !{!71, !66}
!72 = distinct !{!72, !66}
!73 = !{!21, !24, i64 72}
!74 = !{!21, !14, i64 16}
!75 = !{!7, !7, i64 0}
!76 = distinct !{!76, !66}
!77 = !{!21, !14, i64 24}
!78 = !{!21, !14, i64 32}
!79 = !{!59, !24, i64 0}
!80 = distinct !{!80, !66, !81}
!81 = !{!"llvm.loop.peeled.count", i32 1}
!82 = !{!59, !24, i64 8}
!83 = distinct !{!83, !66, !81}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !66}
!87 = distinct !{!87, !66, !81}
!88 = !{!21, !24, i64 80}
!89 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 8, !57}
!90 = distinct !{!90, !66}
!91 = distinct !{!91, !66}
!92 = distinct !{!92, !66}
!93 = distinct !{!93, !66}
!94 = !{!21, !24, i64 88}
!95 = distinct !{!95, !66}
!96 = !{!21, !24, i64 96}
!97 = !{!25, !25, i64 0}
!98 = !{!10, !16, i64 56}
!99 = distinct !{!99, !66}
!100 = distinct !{!100, !66}
!101 = distinct !{!101, !66}
!102 = distinct !{!102, !66}
end_hunk_0
