Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/decode?download=true
inline.NumInlined: 66
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_decode_get_hw_frames_ctx:bb.a

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = tail call i32 @av_hwframe_ctx_init(ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @av_buffer_unref(ptr noundef nonnull %i.c) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.g, %bb.b, %bb.a, %bb.k, %bb.f, %bb.d
  %.0 = phi i32 [ -38, %bb.a ], [ -22, %bb.f ], [ 0, %bb.b ], [ %i.x, %bb.k ], [ %i.p, %bb.g ], [ -22, %bb.d ], [ 0, %bb.j ]
  ret i32 %.0
}

declare ptr @av_hwdevice_get_type_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @avcodec_get_hw_frames_parameters(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not42 = icmp eq ptr %i.f, null
  br i1 %.not42, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ]
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !124
  %i.k = icmp eq i32 %i.j, %2
  br i1 %i.k, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125  ; 3 uses
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !205
  %.not35 = icmp eq ptr %i.o, null
  br i1 %.not35, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @av_hwframe_ctx_alloc(ptr noundef %1) #11 ; 6 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !54
  %.not36 = icmp eq ptr %i.p, null
  br i1 %.not36, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127
  %.not37 = icmp eq ptr %i.t, null
  br i1 %.not37, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !128
  %i.w = sext i32 %i.v to i64
  %i.x = tail call noalias ptr @av_mallocz(i64 noundef %i.w) #11 ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  store ptr %i.x, ptr %i.z, align 8, !tbaa !127
  %.not38 = icmp eq ptr %i.x, null
  br i1 %.not38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #11
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %0, ptr noundef nonnull %i.p) #11 ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.j, label %bb.p

.thread:                                          ; preds = %bb.f
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.ae = tail call i32 %i.ad(ptr noundef nonnull %0, ptr noundef nonnull %i.p) #11 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.j, label %.thread52

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ag = phi i32 [ %i.ae, %.thread ], [ %i.ab, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !121 ; 3 uses
  %.not39 = icmp eq i32 %i.ak, 0
  br i1 %.not39, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.am = load i32, ptr %i.al, align 4, !tbaa !206 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.am, %i.ak                ; 2 uses
  store i32 %i.ao, ptr %i.aj, align 8, !tbaa !121
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = phi i32 [ %i.ao, %bb.l ], [ %i.ak, %bb.k ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !68
  %i.as = and i32 %i.ar, 1
  %.not40 = icmp eq i32 %i.as, 0
  br i1 %.not40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.au = load i32, ptr %i.at, align 8, !tbaa !69
  %i.av = add nsw i32 %i.ap, %i.au
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !121
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j
  store ptr %i.p, ptr %3, align 8, !tbaa !54
  br label %.loopexit

bb.p:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  tail call void @av_freep(ptr noundef nonnull %i.ax) #11
  br label %.thread52

.thread52:                                        ; preds = %.thread, %bb.p
  %i.ay = phi i32 [ %i.ab, %bb.p ], [ %i.ae, %.thread ]
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.o, %.thread52, %bb.e, %bb.c, %bb.d, %bb.h
  %.029 = phi i32 [ -12, %bb.e ], [ -12, %bb.h ], [ -2, %bb.c ], [ %i.ag, %bb.o ], [ -2, %bb.d ], [ %i.ay, %.thread52 ], [ -2, %bb.a ], [ -2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.029
}

declare i32 @av_hwframe_ctx_init(ptr noundef) local_unnamed_addr #2

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #2

declare ptr @av_hwframe_ctx_alloc(ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_hwaccel_uninit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  tail call void @av_freep(ptr noundef nonnull %i.h) #11
  store ptr null, ptr %i.a, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552
  tail call void @av_buffer_unref(ptr noundef nonnull %i.i) #11
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ff_get_format(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !65
  %.not = icmp eq i32 %i.c, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !207

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %indvars.iv to i32             ; 2 uses
  %.not99 = icmp eq i64 %indvars.iv, 0
  br i1 %.not99, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 1241) #11
  tail call void @abort() #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = getelementptr i8, ptr %i.e, i64 -4       ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !65
  %i.h = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.g) #11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %i.k = and i64 %i.j, 8
  %.not100 = icmp eq i64 %i.k, 0
  br i1 %.not100, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.f, align 4, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.l, ptr %i.m, align 4, !tbaa !130
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = shl i64 %indvars.iv, 2
  %i.o = add i64 %i.n, 4
  %i.p = and i64 %i.o, 17179869180
  %i.q = tail call ptr @av_memdup(ptr noundef nonnull %1, i64 noundef %i.p) #11 ; 9 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !131
  %.not101 = icmp eq ptr %i.q, null
  br i1 %.not101, label %bb.an, label %.preheader133

.preheader133:                                    ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.y = add i32 %i.d, -2
  br label %bb.h

bb.h:                                             ; preds = %.preheader133, %._crit_edge184
  %indvar = phi i32 [ 0, %.preheader133 ], [ %indvar.next, %._crit_edge184 ] ; 2 uses
  %.185 = phi i32 [ %i.d, %.preheader133 ], [ %i.dw, %._crit_edge184 ] ; 8 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !115  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %ff_hwaccel_uninit.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !129 ; 2 uses
  %.not7.i = icmp eq ptr %i.ab, null
  br i1 %.not7.i, label %ff_hwaccel_uninit.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %0) #11, !inline_history !213 ; 0 uses
  br label %ff_hwaccel_uninit.exit

ff_hwaccel_uninit.exit:                           ; preds = %bb.h, %bb.i, %bb.j
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  tail call void @av_freep(ptr noundef nonnull %i.ae) #11
  store ptr null, ptr %i.r, align 8, !tbaa !115
  tail call void @av_buffer_unref(ptr noundef nonnull %i.t) #11
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !214
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.q) #11 ; 9 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %hwaccel_init.exit.thread129, label %bb.k

bb.k:                                             ; preds = %ff_hwaccel_uninit.exit
  %i.ai = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.ag) #11 ; 8 uses
  %.not102 = icmp eq ptr %i.ai, null
  br i1 %.not102, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #11
  br label %hwaccel_init.exit.thread129

bb.m:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !215
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.10, ptr noundef %i.aj) #11
  %i.ak = icmp sgt i32 %.185, 0                   ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext nneg i32 %.185 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv198 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next199, %bb.n ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv198
  %i.am = load i32, ptr %i.al, align 4, !tbaa !65
  %i.an = icmp eq i32 %i.am, %i.ag
  br i1 %i.an, label %._crit_edge.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !208

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ao = trunc nuw nsw i64 %indvars.iv198 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.086.lcssa = phi i32 [ 0, %bb.m ], [ %i.ao, %._crit_edge.loopexit ]
  %i.ap = icmp eq i32 %.086.lcssa, %.185
  br i1 %i.ap, label %._crit_edge.thread, label %bb.o

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.n
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !215
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11, ptr noundef %i.aq) #11
  br label %hwaccel_init.exit.thread129

bb.o:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 3 uses
  %.not103 = icmp eq ptr %i.at, null
  br i1 %.not103, label %hwaccel_init.exit, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !104 ; 2 uses
  %.not104164 = icmp eq ptr %i.au, null
  br i1 %.not104164, label %hwaccel_init.exit, label %.lr.ph166

bb.p:                                             ; preds = %.lr.ph166
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next202
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104 ; 2 uses
  %.not104 = icmp eq ptr %i.aw, null
  br i1 %.not104, label %hwaccel_init.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader, %bb.p
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %bb.p ], [ 0, %.preheader ]
  %i.ax = phi ptr [ %i.aw, %bb.p ], [ %i.au, %.preheader ] ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !124
  %i.az = icmp eq i32 %i.ay, %i.ag
  br i1 %i.az, label %bb.q, label %bb.p

bb.q:                                             ; preds = %.lr.ph166
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !109 ; 3 uses
  %i.bc = and i32 %i.bb, 2
  %.not106 = icmp eq i32 %i.bc, 0
  br i1 %.not106, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !116 ; 2 uses
  %.not107 = icmp eq ptr %i.bd, null
  br i1 %.not107, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 60
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !216
  %.not113 = icmp eq i32 %i.bh, %i.ag
  br i1 %.not113, label %.thread123, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr %i.ai, align 8, !tbaa !215
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12, ptr noundef %i.bi) #11
  br label %hwaccel_init.exit.thread

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.bj = and i32 %i.bb, 1
  %.not108 = icmp eq i32 %i.bj, 0
  br i1 %.not108, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !98  ; 2 uses
  %.not109 = icmp eq ptr %i.bk, null
  br i1 %.not109, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !111
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !112
  %.not112 = icmp eq i32 %i.bo, %i.bq
  br i1 %.not112, label %.thread123, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load ptr, ptr %i.ai, align 8, !tbaa !215
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13, ptr noundef %i.br) #11
  br label %hwaccel_init.exit.thread

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.bs = and i32 %i.bb, 12
  %or.cond = icmp eq i32 %i.bs, 0
  br i1 %or.cond, label %bb.z, label %.thread123

bb.z:                                             ; preds = %bb.y
  %i.bt = load ptr, ptr %i.ai, align 8, !tbaa !215
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14, ptr noundef %i.bt) #11
  br label %hwaccel_init.exit.thread

.thread123:                                       ; preds = %bb.w, %bb.s, %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !125 ; 2 uses
  %.not114 = icmp eq ptr %i.bv, null
  br i1 %.not114, label %hwaccel_init.exit, label %bb.aa

bb.aa:                                            ; preds = %.thread123
  %i.bw = load ptr, ptr %i.ai, align 8, !tbaa !215
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !217
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.15, ptr noundef %i.bw, ptr noundef %i.bx) #11
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !125 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !218
  %i.cb = and i32 %i.ca, 512
  %.not.i116 = icmp eq i32 %i.cb, 0
  br i1 %.not.i116, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr %i.x, align 4, !tbaa !219
  %i.cd = icmp sgt i32 %i.cc, -2
  br i1 %i.cd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !217
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.54, ptr noundef %i.ce) #11
  br label %hwaccel_init.exit.thread

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cf = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !127
  %.not23.i = icmp eq ptr %i.ch, null
  br i1 %.not23.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 68
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !128 ; 2 uses
  %.not24.i = icmp eq i32 %i.cj, 0
  br i1 %.not24.i, label %bb.ag, label %bb.af
end_hunk_0
