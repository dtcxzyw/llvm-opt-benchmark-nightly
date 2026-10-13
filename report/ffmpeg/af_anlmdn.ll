Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_anlmdn?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@config_output:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @config_filter(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !84
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = tail call i64 @av_rescale(i64 noundef %i.g, i64 noundef %i.j, i64 noundef 1000000) #11
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !85
  %i.o = tail call i64 @av_rescale(i64 noundef %i.n, i64 noundef %i.j, i64 noundef 1000000) #11
  %i.p = trunc i64 %i.o to i32                    ; 5 uses
  %i.q = shl nsw i32 %i.l, 1
  %i.r = or disjoint i32 %i.q, 1                  ; 3 uses
  %i.s = add nsw i32 %i.p, %i.l
  %i.t = shl nsw i32 %i.s, 1
  %i.u = add nsw i32 %i.t, %i.r                   ; 4 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.3, i32 noundef %i.l, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.u) #10
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4194376 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = shl nsw i32 %i.p, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !47
  %i.z = shl nsw i32 %i.p, 1                      ; 2 uses
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.z, %bb.b ]
  %i.ab = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %i.e, i32 noundef %.pre-phi) #10 ; 5 uses
  %.not75.not = icmp eq ptr %i.ab, null
  br i1 %.not75.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !49  ; 3 uses
  %.not76 = icmp eq ptr %i.ac, null
  br i1 %.not76, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 388
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !86
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87
  %i.an = tail call i32 @av_samples_copy(ptr noundef %i.ae, ptr noundef %i.ag, i32 noundef 0, i32 noundef 0, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.am) #10 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  tail call void @av_frame_free(ptr noundef nonnull %i.v) #10
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4194384 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 2 uses
  %.not78 = icmp eq ptr %i.ap, null
  br i1 %.not78, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !47
  %i.as = icmp slt i32 %i.ar, %i.u
  br i1 %i.as, label %bb.h, label %vector.ph

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %i.e, i32 noundef %i.u) #10 ; 5 uses
  %.not79.not = icmp eq ptr %i.at, null
  br i1 %.not79.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 3 uses
  %.not80 = icmp eq ptr %i.au, null
  br i1 %.not80, label %.thread87, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 388
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 116
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !87
  %i.bf = tail call i32 @av_samples_copy(ptr noundef %i.aw, ptr noundef %i.ay, i32 noundef 0, i32 noundef 0, i32 noundef %i.ba, i32 noundef %i.bc, i32 noundef %i.be) #10 ; 0 uses
  br label %.thread87

.thread87:                                        ; preds = %bb.i, %bb.j
  tail call void @av_frame_free(ptr noundef nonnull %i.ao) #10
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !51
  br label %vector.ph

vector.ph:                                        ; preds = %bb.g, %.thread87
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !52
  %i.bi = fdiv nsz float 1.000000e+00, %i.bh
  %i.bj = fmul nsz float %i.bi, f0x49800000       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %i.bj, ptr %i.bk, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bm = sub <4 x i32> zeroinitializer, %vec.ind
  %i.bn = sitofp nsz <4 x i32> %i.bm to <4 x float>
  %i.bo = fdiv nsz <4 x float> %i.bn, %broadcast.splat
  %i.bp = tail call nsz <4 x float> @llvm.exp.v4f32(<4 x float> %i.bo)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index
  store <4 x float> %i.bp, ptr %i.bq, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.br = icmp eq i64 %index.next, 1048576
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 4194348
  store i32 %i.l, ptr %i.bs, align 4, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 4194352
  store i32 %i.p, ptr %i.bt, align 8, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 4194360
  store i32 %i.r, ptr %i.bu, align 8, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 4194356
  store i32 %i.u, ptr %i.bv, align 4, !tbaa !56
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.c, %middle.block
  %.3 = phi i32 [ 0, %middle.block ], [ -12, %bb.c ], [ -12, %bb.h ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @av_samples_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @av_frame_free(ptr noundef) local_unnamed_addr #7

declare ptr @av_default_item_name(ptr noundef) #7

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #7

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #7

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #7

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #7

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #7

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4194352
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4194348
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4194356
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4194360
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4194384
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = sext i32 %2 to i64                       ; 4 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 5 uses
  %i.t = sext i32 %i.f to i64                     ; 4 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4194376
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.q
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !92  ; 4 uses
  %i.ab = shl nsw i32 %i.f, 2
  %i.ac = or disjoint i32 %i.ab, 2
  %i.ad = sitofp nsz i32 %i.ac to float
  %i.ae = fdiv nnan nsz float 6.553600e+04, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load float, ptr %i.af, align 8, !tbaa !93
  %i.ah = tail call nsz float @llvm.sqrt.f32(float %i.ag)
  %i.ai = fdiv nsz float %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.q
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !52
  %i.as = fdiv nsz float f0x49800000, %i.ap
  %i.at = tail call nsz float @llvm.minnum.f32(float %i.ar, float %i.as)
  %i.au = sub nsw i32 %i.h, %i.j                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4194368
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !48 ; 2 uses
  %i.ax = sext i32 %i.j to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ax
  %i.az = sext i32 %i.au to i64                   ; 2 uses
  %i.ba = shl nsw i64 %i.az, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.ay, i64 %i.ba, i1 false)
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.q
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !47
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bb, ptr align 1 %i.bf, i64 %i.bj, i1 false)
  %i.bk = load i32, ptr %i.bg, align 8, !tbaa !47 ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.au
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bm
  %i.bo = sub nsw i32 %i.j, %i.bk
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 0, i64 %i.bq, i1 false)
  %i.br = icmp sgt i32 %i.j, 0
  br i1 %i.br, label %.lr.ph151, label %._crit_edge

.lr.ph151:                                        ; preds = %bb.a
  %i.bs = add nsw i32 %i.j, %i.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 4194400 ; 2 uses
  %i.bu = sext i32 %i.d to i64                    ; 10 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 4194392
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = icmp sgt i32 %i.d, 0
  %i.bz = shl i32 %i.d, 1                         ; 2 uses
  %i.ca = or disjoint i32 %i.bz, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %i.cb = sext i32 %i.bs to i64
  %.not139 = icmp slt i32 %i.d, 0
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bu
  %i.cd = zext nneg i32 %i.d to i64
  %wide.trip.count158 = zext nneg i32 %smax to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph151, %bb.m
  %indvars.iv160 = phi i64 [ %i.bu, %.lr.ph151 ], [ %indvars.iv.next161, %bb.m ] ; 9 uses
  %indvars.iv153 = phi i32 [ %i.ca, %.lr.ph151 ], [ %indvars.iv.next154, %bb.m ] ; 2 uses
  %i.ce = icmp eq i64 %indvars.iv160, %i.bu
  br i1 %i.ce, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  br i1 %.not139, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext i32 %indvars.iv153 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0128140 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ] ; 3 uses
  %i.cf = icmp eq i64 %indvars.iv, %i.cd
  br i1 %i.cf, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !94
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.ci = tail call nsz float %i.cg(ptr noundef %i.cc, ptr noundef %i.ch, i64 noundef %i.t) #10
  %i.cj = add nsw i32 %.0128140, 1
  %i.ck = sext i32 %.0128140 to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ck
  store float %i.ci, ptr %i.cl, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %.0128140, %bb.c ], [ %i.cj, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !88

bb.f:                                             ; preds = %bb.b
  %i.cm = load ptr, ptr %i.bt, align 8, !tbaa !95
  %i.cn = sub nsw i64 %indvars.iv160, %i.bu
  tail call void %i.cm(ptr noundef %i.aa, ptr noundef %i.u, i64 noundef %i.bu, i64 noundef %i.t, i64 noundef %indvars.iv160, i64 noundef %i.cn) #10
  %i.co = load ptr, ptr %i.bt, align 8, !tbaa !95
  %i.cp = add nsw i64 %indvars.iv160, 1
  tail call void %i.co(ptr noundef %i.bv, ptr noundef %i.u, i64 noundef %i.bu, i64 noundef %i.t, i64 noundef %indvars.iv160, i64 noundef %i.cp) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f
  br i1 %i.by, label %.lr.ph145, label %.critedge

.lr.ph145:                                        ; preds = %.loopexit
  %i.cq = load i32, ptr %i.bx, align 8, !tbaa !96
  %.not138 = icmp eq i32 %i.cq, 0
  %4 = sub nsw i64 %indvars.iv160, %i.bu
  br i1 %.not138, label %.lr.ph145.split, label %.critedge

.lr.ph145.split:                                  ; preds = %.lr.ph145, %bb.j
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %bb.j ], [ 0, %.lr.ph145 ] ; 4 uses
  %.0129143 = phi float [ %.1130, %bb.j ], [ 0.000000e+00, %.lr.ph145 ] ; 2 uses
  %.0131142 = phi float [ %.1132, %bb.j ], [ 0.000000e+00, %.lr.ph145 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv155 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !14 ; 2 uses
  %i.ct = fcmp nsz olt float %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.g, label %bb.h

.critedge.loopexit:                               ; preds = %bb.j
  %i.cu = fadd nsz float %.1130, 1.000000e+00
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %.critedge.loopexit, %.lr.ph145, %.loopexit
  %.0131.lcssa = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.lr.ph145 ], [ %.1132, %.critedge.loopexit ], [ 0.000000e+00, %.preheader ]
  %.0129.lcssa = phi float [ 1.000000e+00, %.loopexit ], [ 1.000000e+00, %.lr.ph145 ], [ %i.cu, %.critedge.loopexit ], [ 1.000000e+00, %.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv160
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !14 ; 3 uses
  %i.cx = fadd nsz float %.0131.lcssa, %i.cw      ; 2 uses
  switch i32 %i.l, label %bb.m [
    i32 0, label %.sink.split
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.g:                                             ; preds = %.lr.ph145.split
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph145.split
  %.0 = phi nsz float [ 0.000000e+00, %bb.g ], [ %i.cs, %.lr.ph145.split ]
  %i.cy = fmul nsz float %i.ai, %.0               ; 2 uses
  %i.cz = fcmp nsz ult float %i.cy, %i.at
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = fmul nsz float %i.ap, %i.cy
  %i.db = fptoui float %i.da to i32
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !14 ; 2 uses
  %5 = add nuw nsw i64 %4, %indvars.iv155
  %i.df = icmp sge i64 %indvars.iv155, %i.bu
  %i.dg = zext i1 %i.df to i64
  %6 = add i64 %5, %i.dg
  %sext = shl i64 %6, 32
  %7 = ashr exact i64 %sext, 30
  %8 = getelementptr inbounds i8, ptr %i.u, i64 %7
  %i.dh = load float, ptr %8, align 4, !tbaa !14
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %i.de, float %i.dh, float %.0131142)
  %i.dj = fadd nsz float %.0129143, %i.de
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1132 = phi nsz float [ %i.di, %bb.i ], [ %.0131142, %bb.h ] ; 2 uses
  %.1130 = phi nsz float [ %i.dj, %bb.i ], [ %.0129143, %bb.h ] ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %.critedge.loopexit, label %.lr.ph145.split, !llvm.loop !89

bb.k:                                             ; preds = %.critedge
  %i.dk = fdiv nsz float %i.cx, %.0129.lcssa
  br label %.sink.split

bb.l:                                             ; preds = %.critedge
  %i.dl = fdiv nsz float %i.cx, %.0129.lcssa
  %i.dm = fsub nsz float %i.cw, %i.dl
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.k, %bb.l
  %.sink = phi float [ %i.dm, %bb.l ], [ %i.dk, %bb.k ], [ %i.cw, %.critedge ]
  %i.dn = sub nsw i64 %indvars.iv160, %i.bu
  %i.do = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dn
  store float %.sink, ptr %i.do, align 4, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %.critedge
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.dp = icmp slt i64 %indvars.iv.next161, %i.cb
  %indvars.iv.next154 = add i32 %indvars.iv153, 1
  br i1 %i.dp, label %bb.b, label %._crit_edge, !llvm.loop !90
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"AudioNLMDNDSPContext", !9, i64 0, !9, i64 8}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !9, i64 8}
!13 = !{!"float", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!19 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!22 = !{!"any p2 pointer", !9, i64 0}
!23 = !{!"p2 _ZTS12AVFilterLink", !22, i64 0}
!24 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!25 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!26 = !{!"AVFilterContext", !18, i64 0, !19, i64 8, !20, i64 16, !21, i64 24, !23, i64 32, !6, i64 40, !21, i64 48, !23, i64 56, !6, i64 64, !9, i64 72, !24, i64 80, !6, i64 88, !6, i64 92, !20, i64 96, !6, i64 104, !25, i64 112, !6, i64 120}
!27 = !{!26, !9, i64 72}
!28 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!26, !23, i64 56}
!31 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"AudioNLMeansContext", !18, i64 0, !13, i64 8, !32, i64 16, !32, i64 24, !13, i64 32, !6, i64 36, !13, i64 40, !5, i64 44, !6, i64 4194348, !6, i64 4194352, !6, i64 4194356, !6, i64 4194360, !31, i64 4194368, !31, i64 4194376, !31, i64 4194384, !10, i64 4194392}
!34 = !{!33, !6, i64 4194360}
!35 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!36 = !{!"AVRational", !6, i64 0, !6, i64 4}
!37 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!38 = !{!"p2 _ZTS15AVFrameSideData", !22, i64 0}
!39 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!40 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!41 = !{!"AVFilterFormatsConfig", !39, i64 0, !39, i64 8, !40, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!42 = !{!"AVFilterLink", !35, i64 0, !21, i64 8, !35, i64 16, !21, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !36, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !37, i64 72, !36, i64 96, !38, i64 104, !6, i64 112, !6, i64 116, !41, i64 120, !41, i64 168}
!43 = !{!"p2 omnipotent char", !22, i64 0}
!44 = !{!"p2 _ZTS11AVBufferRef", !22, i64 0}
!45 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!46 = !{!"AVFrame", !5, i64 0, !5, i64 64, !43, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !36, i64 124, !32, i64 136, !32, i64 144, !36, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !44, i64 248, !6, i64 256, !38, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !32, i64 304, !45, i64 312, !6, i64 320, !25, i64 328, !25, i64 336, !32, i64 344, !32, i64 352, !32, i64 360, !32, i64 368, !9, i64 376, !37, i64 384, !32, i64 408, !6, i64 416}
!47 = !{!46, !6, i64 112}
!48 = !{!33, !31, i64 4194368}
!49 = !{!33, !31, i64 4194376}
!50 = !{!46, !43, i64 96}
!51 = !{!33, !31, i64 4194384}
!52 = !{!33, !13, i64 32}
!53 = !{!33, !13, i64 40}
!54 = !{!33, !6, i64 4194348}
!55 = !{!33, !6, i64 4194352}
!56 = !{!33, !6, i64 4194356}
!57 = distinct !{!57, !59}
!58 = distinct !{!58, !15}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !60}
!65 = distinct !{!65, !60}
!66 = distinct !{!66, !15, !16, !17}
!67 = distinct !{!67, !15, !16}
!68 = !{!61}
!69 = !{!62}
!70 = !{!63}
!71 = !{!64}
!72 = !{!65}
!73 = !{!64, !62, !63, !61}
!74 = !{!26, !23, i64 32}
!75 = !{!31, !31, i64 0}
!76 = !{!42, !35, i64 16}
!77 = !{!46, !32, i64 136}
!78 = !{!42, !6, i64 76}
!79 = !{!6, !6, i64 0}
!80 = !{!32, !32, i64 0}
!81 = !{!42, !35, i64 0}
!82 = distinct !{!82, !15, !16, !17}
!83 = !{!33, !32, i64 16}
!84 = !{!42, !6, i64 64}
!85 = !{!33, !32, i64 24}
!86 = !{!46, !6, i64 388}
!87 = !{!46, !6, i64 116}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = !{!33, !6, i64 36}
!92 = !{!20, !20, i64 0}
!93 = !{!33, !13, i64 8}
!94 = !{!33, !9, i64 4194392}
!95 = !{!33, !9, i64 4194400}
!96 = !{!26, !6, i64 104}
end_hunk_0
