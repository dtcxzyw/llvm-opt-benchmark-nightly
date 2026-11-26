Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_headphone?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@init:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, i8 0, i64 40, i1 false)
  store ptr %i.ap, ptr %2, align 8, !tbaa !87
  store i32 1, ptr %i.ak, align 8, !tbaa !88
  %.not29 = icmp eq ptr %i.ap, null
  br i1 %.not29, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.thread32

bb.m:                                             ; preds = %bb.l
  %i.aq = call i32 @ff_append_inpad_free_name(ptr noundef %0, ptr noundef nonnull %2) #8 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %i.ar, label %bb.k, label %.thread32

._crit_edge:                                      ; preds = %bb.k, %parse_map.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !28
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %.thread32

bb.n:                                             ; preds = %._crit_edge
  %i.av = call ptr @avpriv_float_dsp_alloc(i32 noundef 0) #8 ; 3 uses
  %.not28.not = icmp eq ptr %i.av, null
  br i1 %.not28.not, label %.thread32, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !29
  call void @av_free(ptr noundef nonnull %i.av) #8
  br label %.thread32

.thread32:                                        ; preds = %bb.m, %bb.n, %._crit_edge, %bb.o, %.thread, %bb.a, %bb.c
  %.3 = phi i32 [ -22, %bb.c ], [ -12, %bb.n ], [ -12, %.thread ], [ 0, %._crit_edge ], [ %i.d, %bb.a ], [ 0, %bb.o ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.3
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  tail call void @av_tx_uninit(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  tail call void @av_tx_uninit(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  tail call void @av_tx_uninit(ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  tail call void @av_tx_uninit(ptr noundef nonnull %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.g) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @av_freep(ptr noundef nonnull %i.h) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.i) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.j) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @av_freep(ptr noundef nonnull %i.k) #8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_freep(ptr noundef nonnull %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.m) #8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  tail call void @av_freep(ptr noundef nonnull %i.n) #8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @av_freep(ptr noundef nonnull %i.o) #8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @av_freep(ptr noundef nonnull %i.p) #8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @av_freep(ptr noundef nonnull %i.q) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @av_freep(ptr noundef nonnull %i.r) #8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  tail call void @av_freep(ptr noundef nonnull %i.s) #8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  tail call void @av_freep(ptr noundef nonnull %i.t) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.AVChannelLayout, align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !92
  %i.d = tail call i32 @ff_set_sample_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.formats) #8 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit45

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @ff_all_channel_layouts() #8 ; 2 uses
  %.not37 = icmp eq ptr %i.e, null
  br i1 %.not37, label %.loopexit45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = tail call i32 @ff_channel_layouts_ref(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #8 ; 2 uses
  %.not38 = icmp eq i32 %i.h, 0
  br i1 %.not38, label %bb.d, label %.loopexit45

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.i, align 4, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !97
  %i.l = call i32 @ff_add_channel_layout(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #8 ; 2 uses
  %.not39 = icmp eq i32 %i.l, 0
  br i1 %.not39, label %bb.e, label %.loopexit45

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.n = load ptr, ptr %2, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = call i32 @ff_channel_layouts_ref(ptr noundef %i.m, ptr noundef nonnull %i.o) #8 ; 2 uses
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %bb.f, label %.loopexit45

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27
  %.not4146 = icmp slt i32 %i.u, 1
  br i1 %.not4146, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.w = call ptr @ff_all_channel_counts() #8     ; 2 uses
  %.not43 = icmp eq ptr %i.w, null
  br i1 %.not43, label %.loopexit45, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = call i32 @ff_channel_layouts_ref(ptr noundef nonnull %i.w, ptr noundef nonnull %i.z) #8 ; 2 uses
  %.not44 = icmp eq i32 %i.aa, 0
  br i1 %.not44, label %.loopexit, label %.loopexit45

bb.i:                                             ; preds = %bb.j
  %i.ab = add nuw nsw i32 %.047, 1
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !27
  %.not41.not = icmp slt i32 %.047, %i.ac
  br i1 %.not41.not, label %bb.j, label %.loopexit, !llvm.loop !91

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.047 = phi i32 [ 1, %.lr.ph ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = call i32 @ff_channel_layouts_ref(ptr noundef %i.ad, ptr noundef nonnull %i.af) #8 ; 2 uses
  %.not42 = icmp eq i32 %i.ag, 0
  br i1 %.not42, label %bb.i, label %.loopexit45

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.h
  br label %.loopexit45

.loopexit45:                                      ; preds = %bb.j, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.loopexit
  %.028 = phi i32 [ %i.d, %bb.a ], [ -12, %bb.b ], [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ -12, %bb.g ], [ 0, %.loopexit ], [ %i.p, %bb.e ], [ %i.aa, %bb.h ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [2 x i32], align 8                ; 7 uses
  %1 = alloca %struct.ThreadData, align 8         ; 11 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr null, ptr %i.e, align 8, !tbaa !124
  %i.p = tail call i32 @ff_outlink_get_status(ptr noundef %i.o) #8 ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.critedge, label %.preheader104

.preheader104:                                    ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !125
  %.not127 = icmp eq i32 %i.r, 0
  br i1 %.not127, label %.thread88, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader104, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader104 ] ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  tail call void @ff_inlink_set_status(ptr noundef %i.u, i32 noundef %i.p) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !125
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %.thread88, !llvm.loop !98

.critedge:                                        ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !126
  %.not70 = icmp eq i32 %i.z, 0
  br i1 %.not70, label %.preheader, label %bb.ax

.preheader:                                       ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !27
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph126.outer, label %._crit_edge.thread

.lr.ph126.outer:                                  ; preds = %.preheader, %.thread
  %indvars.iv146.ph = phi i64 [ %indvars.iv.next147, %.thread ], [ 0, %.preheader ]
  %i.ad = phi i1 [ true, %.thread ], [ false, %.preheader ]
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.outer, %bb.j
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %bb.j ], [ %indvars.iv146.ph, %.lr.ph126.outer ] ; 4 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !32
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next147
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv146
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 276 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !128
  %.not72 = icmp eq i32 %i.aj, 0
  br i1 %.not72, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.lr.ph126
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ao = tail call i32 @ff_inlink_queued_samples(ptr noundef %i.ag) #8 ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 65536
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.al, i32 noundef 16, ptr noundef nonnull @.str.34, i32 noundef %i.ao, i32 noundef 65536) #8
  br label %.thread88

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv146 ; 2 uses
  store i32 %i.ao, ptr %i.ar, align 8, !tbaa !129
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !43
  %..i = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.at)
  store i32 %..i, ptr %i.as, align 8, !tbaa !43
  %i.au = add nsw i32 %i.ao, 1
  %i.av = tail call i32 @ff_inlink_check_available_samples(ptr noundef nonnull %i.ag, i32 noundef %i.au) #8
  %i.aw = icmp eq i32 %i.av, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  br i1 %i.aw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !128
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %bb.f, label %.thread88

bb.f:                                             ; preds = %bb.e
  tail call void @ff_inlink_request_frame(ptr noundef nonnull %i.ag) #8
  br label %.thread88

bb.g:                                             ; preds = %bb.d
  store i32 1, ptr %i.ax, align 4, !tbaa !128
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !128
  %.not73 = icmp eq i32 %i.az, 0
  br i1 %.not73, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = tail call i32 @ff_inlink_queued_samples(ptr noundef nonnull %i.ag) #8
  %.not74 = icmp eq i32 %i.ba, 0
  br i1 %.not74, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = trunc nuw nsw i64 %indvars.iv146 to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.33, i32 noundef %i.bb) #8
  br label %.thread88

bb.j:                                             ; preds = %.lr.ph126, %bb.h
  %i.bc = load i32, ptr %i.aa, align 8, !tbaa !27
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next147, %i.bd
  br i1 %i.be, label %.lr.ph126, label %._crit_edge, !llvm.loop !99

.thread:                                          ; preds = %bb.g
  %i.bf = load i32, ptr %i.aa, align 8, !tbaa !27
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next147, %i.bg
  br i1 %i.bh, label %.lr.ph126.outer, label %._crit_edge.thread169, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.j
  br i1 %i.ad, label %._crit_edge.thread169, label %._crit_edge.thread

._crit_edge.thread169:                            ; preds = %.thread, %._crit_edge
  tail call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 100) #8
  br label %.thread88

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  store i32 1, ptr %i.y, align 4, !tbaa !126
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !19  ; 48 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !43 ; 2 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !32  ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 76
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !44 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 76
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  br label %ff_clz_c.exit291.i

bb.l:                                             ; preds = %._crit_edge.thread
  %i.bw = shl nsw i32 %i.bq, 1
  br label %ff_clz_c.exit291.i

ff_clz_c.exit291.i:                               ; preds = %bb.l, %bb.k
  %i.bx = phi i32 [ %i.bv, %bb.k ], [ %i.bw, %bb.l ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bz = load float, ptr %i.by, align 8, !tbaa !45
  %i.ca = mul nsw i32 %i.bo, 3
  %i.cb = sitofp nsz i32 %i.ca to float
  %i.cc = fsub nsz float %i.bz, %i.cb
  %i.cd = fdiv nsz float %i.cc, 2.000000e+01
  %i.ce = fpext nsz float %i.cd to double
  %i.cf = fmul nsz double %i.ce, f0x40026BB1BBB55516
  %i.cg = fptrunc nsz double %i.cf to float
  %i.ch = tail call nsz float @llvm.exp.f32(float %i.cg) ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ci = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bk, i1 false)
  %i.cj = sub nuw nsw i32 32, %i.ci
  %i.ck = shl nuw i32 1, %i.cj                    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 36 ; 8 uses
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 5 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !28 ; 3 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.m, label %ff_clz_c.exit287.i

bb.m:                                             ; preds = %ff_clz_c.exit291.i
  %i.cp = add nuw nsw i32 %i.ck, 31
  %i.cq = and i32 %i.cp, -32                      ; 2 uses
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !46
  br label %ff_clz_c.exit287.i

ff_clz_c.exit287.i:                               ; preds = %bb.m, %ff_clz_c.exit291.i
  %i.cr = phi i32 [ %i.cq, %bb.m ], [ %i.ck, %ff_clz_c.exit291.i ]
  %i.cs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.ct = sub nuw nsw i32 32, %i.cs
  %i.cu = shl nuw i32 1, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 88 ; 4 uses
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !130
  %i.cy = add nsw i32 %i.cx, %i.bk
  %i.cz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cy, i1 false)
  %i.da = sub nuw nsw i32 32, %i.cz               ; 3 uses
  %i.db = shl nuw i32 1, %i.da                    ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bi, i64 92 ; 11 uses
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !48
  %i.dd = icmp eq i32 %i.cn, 1
  br i1 %i.dd, label %bb.n, label %bb.x

bb.n:                                             ; preds = %ff_clz_c.exit287.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !49
  %i.de = getelementptr inbounds nuw i8, ptr %i.bi, i64 184 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.dg = call i32 @av_tx_init(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, i32 noundef 0, i32 noundef 0, i32 noundef %i.db, ptr noundef nonnull %i.d, i64 noundef 0) #8 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 192 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.dk = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.dl = call i32 @av_tx_init(ptr noundef nonnull %i.di, ptr noundef nonnull %i.dj, i32 noundef 0, i32 noundef 0, i32 noundef %i.dk, ptr noundef nonnull %i.d, i64 noundef 0) #8 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bi, i64 200 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.dp = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.dq = call i32 @av_tx_init(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do, i32 noundef 0, i32 noundef 1, i32 noundef %i.dp, ptr noundef nonnull %i.d, i64 noundef 0) #8 ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bi, i64 208 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  %i.du = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.dv = call i32 @av_tx_init(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dt, i32 noundef 0, i32 noundef 1, i32 noundef %i.du, ptr noundef nonnull %i.d, i64 noundef 0) #8 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = load ptr, ptr %i.de, align 8, !tbaa !51
  %.not.i78 = icmp eq ptr %i.dx, null
  br i1 %.not.i78, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = load ptr, ptr %i.di, align 8, !tbaa !51
  %.not264.i = icmp eq ptr %i.dy, null
  br i1 %.not264.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !51
  %.not265.i = icmp eq ptr %i.dz, null
  br i1 %.not265.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = load ptr, ptr %i.ds, align 8, !tbaa !51
  %.not266.i = icmp eq ptr %i.ea, null
  br i1 %.not266.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.eb = load i32, ptr %i.dc, align 4, !tbaa !48
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %i.eb) #8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.v, %bb.q, %bb.p, %bb.o, %bb.n
  %.0249.ph.i = phi i32 [ %i.dv, %bb.q ], [ %i.dq, %bb.p ], [ %i.dl, %bb.o ], [ %i.dg, %bb.n ], [ -12, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %.pre.i = load i32, ptr %i.cm, align 8, !tbaa !28
  %.pre = load i32, ptr %i.cv, align 8, !tbaa !47
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %ff_clz_c.exit287.i
  %i.ec = phi i32 [ %.pre, %bb.w ], [ %i.cu, %ff_clz_c.exit287.i ]
  %i.ed = phi i32 [ %.pre.i, %bb.w ], [ %i.cn, %ff_clz_c.exit287.i ]
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = sext i32 %i.ec to i64                   ; 2 uses
  br i1 %i.ee, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eg = sext i32 %i.bo to i64
  %i.eh = shl nsw i64 %i.eg, 2                    ; 2 uses
  %i.ei = call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef %i.eh) #8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !53
  %i.ek = load i32, ptr %i.cv, align 8, !tbaa !47
  %i.el = sext i32 %i.ek to i64
  %i.em = call noalias ptr @av_calloc(i64 noundef %i.el, i64 noundef %i.eh) #8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store ptr %i.em, ptr %i.en, align 8, !tbaa !53
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.eo = call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef 4) #8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !53
  %i.eq = load i32, ptr %i.cv, align 8, !tbaa !47
  %i.er = sext i32 %i.eq to i64
  %i.es = call noalias ptr @av_calloc(i64 noundef %i.er, i64 noundef 4) #8
  %i.et = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store ptr %i.es, ptr %i.et, align 8, !tbaa !53
  %i.eu = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.ev = sext i32 %i.eu to i64
  %i.ew = call noalias ptr @av_calloc(i64 noundef %i.ev, i64 noundef 8) #8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bi, i64 136 ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !55
  %i.ey = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.ez = sext i32 %i.ey to i64
  %i.fa = call noalias ptr @av_calloc(i64 noundef %i.ez, i64 noundef 8) #8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bi, i64 144 ; 2 uses
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !55
  %i.fc = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.fd = sext i32 %i.fc to i64
  %i.fe = call noalias ptr @av_calloc(i64 noundef %i.fd, i64 noundef 8) #8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bi, i64 152 ; 2 uses
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !55
  %i.fg = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.fh = sext i32 %i.fg to i64
  %i.fi = call noalias ptr @av_calloc(i64 noundef %i.fh, i64 noundef 8) #8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bi, i64 160 ; 2 uses
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !55
  %i.fk = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.fl = sext i32 %i.fk to i64
  %i.fm = call noalias ptr @av_calloc(i64 noundef %i.fl, i64 noundef 8) #8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bi, i64 168 ; 2 uses
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !55
  %i.fo = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.fp = sext i32 %i.fo to i64
  %i.fq = call noalias ptr @av_calloc(i64 noundef %i.fp, i64 noundef 8) #8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !55
  %i.fs = load ptr, ptr %i.ff, align 8, !tbaa !55
  %.not267.i = icmp eq ptr %i.fs, null
  br i1 %.not267.i, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ft = load ptr, ptr %i.fj, align 8, !tbaa !55
  %.not268.i = icmp eq ptr %i.ft, null
  br i1 %.not268.i, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = load ptr, ptr %i.ex, align 8, !tbaa !55
  %.not269.i = icmp eq ptr %i.fu, null
  br i1 %.not269.i, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.fb, align 8, !tbaa !55
  %.not270.i = icmp eq ptr %i.fv, null
  br i1 %.not270.i, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !55
  %.not271.i = icmp eq ptr %i.fw, null
  %.not272.i = icmp eq ptr %i.fq, null
  %or.cond.i = select i1 %.not271.i, i1 true, i1 %.not272.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !53
  %.not273.i = icmp eq ptr %i.fy, null
  br i1 %.not273.i, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !53
  %.not274.i = icmp eq ptr %i.ga, null
  br i1 %.not274.i, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gb = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gd = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.ge = sext i32 %i.gd to i64
  %i.gf = call noalias ptr @av_calloc(i64 noundef %i.ge, i64 noundef 4) #8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bi, i64 120 ; 2 uses
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !53
  %i.gh = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.gi = sext i32 %i.gh to i64
  %i.gj = call noalias ptr @av_calloc(i64 noundef %i.gi, i64 noundef 4) #8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bi, i64 128 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !53
  %i.gl = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.gm = mul nsw i32 %i.gl, %i.bx
  %i.gn = sext i32 %i.gm to i64
  %i.go = call noalias ptr @av_calloc(i64 noundef %i.gn, i64 noundef 4) #8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 2 uses
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !53
  %i.gq = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.gr = mul nsw i32 %i.gq, %i.bx
  %i.gs = sext i32 %i.gr to i64
  %i.gt = call noalias ptr @av_calloc(i64 noundef %i.gs, i64 noundef 4) #8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !53
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !53
  %.not277.i = icmp eq ptr %i.gv, null
  %.not278.i = icmp eq ptr %i.gt, null
  %or.cond281.i = select i1 %.not277.i, i1 true, i1 %.not278.i
  br i1 %or.cond281.i, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load ptr, ptr %i.gg, align 8, !tbaa !53
  %.not279.i = icmp eq ptr %i.gw, null
  br i1 %.not279.i, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gx = load ptr, ptr %i.gk, align 8, !tbaa !53
  %.not280.i = icmp eq ptr %i.gx, null
  br i1 %.not280.i, label %.loopexit, label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.gy = sext i32 %i.db to i64                   ; 2 uses
  %i.gz = sext i32 %i.bx to i64
  %i.ha = shl nsw i64 %i.gz, 3                    ; 2 uses
  %i.hb = call noalias ptr @av_calloc(i64 noundef %i.gy, i64 noundef %i.ha) #8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bi, i64 248 ; 2 uses
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !55
  %i.hd = call noalias ptr @av_calloc(i64 noundef %i.gy, i64 noundef %i.ha) #8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !55
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !55
  %.not275.i = icmp eq ptr %i.hf, null
  %.not276.i = icmp eq ptr %i.hd, null
  %or.cond282.i = select i1 %.not275.i, i1 true, i1 %.not276.i
  br i1 %or.cond282.i, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hg = load i32, ptr %i.bp, align 8, !tbaa !27
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph332.i, label %.sink.split

.lr.ph332.i:                                      ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bi, i64 100
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bi, i64 808 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1064 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bi, i64 248 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bi, i64 256 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bi, i64 152 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bi, i64 160 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bi, i64 216 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bi, i64 184 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bi, i64 112 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bi, i64 784
  %broadcast.splatinsert360 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat361 = shufflevector <4 x float> %broadcast.splatinsert360, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert282 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat283 = shufflevector <4 x float> %broadcast.splatinsert282, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.thread294.i, %.lr.ph332.i
  %indvars.iv361.i = phi i64 [ 0, %.lr.ph332.i ], [ %indvars.iv.next362.i, %.thread294.i ] ; 4 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv361.i
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !129 ; 20 uses
  %i.hy = load ptr, ptr %i.j, align 8, !tbaa !32
  %indvars.iv.next362.i = add nuw nsw i64 %indvars.iv361.i, 1 ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.next362.i
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !34
  %i.ib = call i32 @ff_inlink_consume_samples(ptr noundef %i.ia, i32 noundef %i.hx, i32 noundef %i.hx, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !131
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !61 ; 24 uses
  %i.ih = load i32, ptr %i.hj, align 4, !tbaa !26
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv361.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !25
  %i.il = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.hv, i32 noundef %i.ik) #8 ; 4 uses
  %i.im = icmp sgt i32 %i.il, -1
  br i1 %i.im, label %bb.ap, label %.thread294.i

bb.ap:                                            ; preds = %bb.ao
  %i.in = trunc i32 %i.il to i8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv361.i
  store i8 %i.in, ptr %i.io, align 1, !tbaa !31
  %i.ip = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ir = load ptr, ptr %i.ht, align 8, !tbaa !53 ; 2 uses
  %i.is = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.it = mul i32 %i.is, %i.il
  %i.iu = sext i32 %i.it to i64                   ; 3 uses
  %i.iv = getelementptr [4 x i8], ptr %i.ir, i64 %i.iu ; 6 uses
  %i.iw = load ptr, ptr %i.hu, align 8, !tbaa !53 ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %i.iw, i64 %i.iu ; 6 uses
  %i.iy = icmp sgt i32 %i.hx, 0
  br i1 %i.iy, label %.lr.ph329.preheader.i, label %.thread294.i

.lr.ph329.preheader.i:                            ; preds = %bb.aq
  %i.iz = zext nneg i32 %i.hx to i64              ; 11 uses
  %min.iters.check = icmp ult i32 %i.hx, 8
  br i1 %min.iters.check, label %.lr.ph329.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph329.preheader.i
  %i.ja = add nsw i64 %i.iu, %i.iz
  %i.jb = shl nsw i64 %i.ja, 2                    ; 2 uses
  %i.jc = getelementptr i8, ptr %i.ir, i64 %i.jb  ; 2 uses
  %i.jd = getelementptr i8, ptr %i.iw, i64 %i.jb  ; 2 uses
  %i.je = shl nuw nsw i64 %i.iz, 3
  %i.jf = getelementptr i8, ptr %i.ig, i64 %i.je  ; 2 uses
  %bound0 = icmp ult ptr %i.iv, %i.jd
  %bound1 = icmp ult ptr %i.ix, %i.jc
  %found.conflict = and i1 %bound0, %bound1
  %bound0241 = icmp ult ptr %i.iv, %i.jf
  %bound1242 = icmp ult ptr %i.ig, %i.jc
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx = or i1 %found.conflict, %found.conflict243
  %bound0244 = icmp ult ptr %i.ix, %i.jf
  %bound1245 = icmp ult ptr %i.ig, %i.jd
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx, %found.conflict246
  br i1 %conflict.rdx247, label %.lr.ph329.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iz, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.jg = sub nuw nsw i64 %i.iz, %index
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = getelementptr i8, ptr %i.ig, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 -32
  %wide.vec = load <8 x float>, ptr %i.jj, align 4, !tbaa !49, !alias.scope !132 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse249 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.jk = fmul nsz <4 x float> %broadcast.splat, %reverse
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %index
  store <4 x float> %i.jk, ptr %i.jl, align 4, !tbaa !49, !alias.scope !133, !noalias !134
  %i.jm = fmul nsz <4 x float> %broadcast.splat, %reverse249
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index
  store <4 x float> %i.jm, ptr %i.jn, align 4, !tbaa !49, !alias.scope !135, !noalias !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.iz
  br i1 %cmp.n, label %.thread294.i, label %.lr.ph329.i.preheader

.lr.ph329.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph329.preheader.i, %middle.block
  %indvars.iv356.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph329.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter448 = and i64 %i.iz, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %.lr.ph329.i.prol.loopexit, label %.lr.ph329.i.prol

.lr.ph329.i.prol:                                 ; preds = %.lr.ph329.i.preheader
  %i.jp = sub nuw nsw i64 %i.iz, %indvars.iv356.i.ph
  %.idx379.i.prol = shl nuw nsw i64 %i.jp, 3
  %i.jq = getelementptr i8, ptr %i.ig, i64 %.idx379.i.prol ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 -8
  %i.js = load float, ptr %i.jr, align 4, !tbaa !49
  %i.jt = fmul nsz float %i.ch, %i.js
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv356.i.ph
  store float %i.jt, ptr %i.ju, align 4, !tbaa !49
  %i.jv = getelementptr i8, ptr %i.jq, i64 -4
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !49
  %i.jx = fmul nsz float %i.ch, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv356.i.ph
  store float %i.jx, ptr %i.jy, align 4, !tbaa !49
  %indvars.iv.next357.i.prol = or disjoint i64 %indvars.iv356.i.ph, 1
  br label %.lr.ph329.i.prol.loopexit

.lr.ph329.i.prol.loopexit:                        ; preds = %.lr.ph329.i.prol, %.lr.ph329.i.preheader
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph329.i.preheader ], [ %indvars.iv.next357.i.prol, %.lr.ph329.i.prol ]
  %i.jz = add nsw i64 %i.iz, -1
  %i.ka = icmp eq i64 %indvars.iv356.i.ph, %i.jz
  br i1 %i.ka, label %.thread294.i, label %.lr.ph329.i

.lr.ph329.i:                                      ; preds = %.lr.ph329.i.prol.loopexit, %.lr.ph329.i
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i.1, %.lr.ph329.i ], [ %indvars.iv356.i.unr, %.lr.ph329.i.prol.loopexit ] ; 5 uses
  %i.kb = sub nuw nsw i64 %i.iz, %indvars.iv356.i
  %.idx379.i = shl nuw nsw i64 %i.kb, 3
  %i.kc = getelementptr i8, ptr %i.ig, i64 %.idx379.i ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 -8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !49
  %i.kf = fmul nsz float %i.ch, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv356.i
  store float %i.kf, ptr %i.kg, align 4, !tbaa !49
  %i.kh = getelementptr i8, ptr %i.kc, i64 -4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !49
  %i.kj = fmul nsz float %i.ch, %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv356.i
  store float %i.kj, ptr %i.kk, align 4, !tbaa !49
  %indvars.iv.next357.i = add nuw nsw i64 %indvars.iv356.i, 1 ; 3 uses
  %i.kl = sub nuw nsw i64 %i.iz, %indvars.iv.next357.i
  %.idx379.i.1 = shl nuw nsw i64 %i.kl, 3
  %i.km = getelementptr i8, ptr %i.ig, i64 %.idx379.i.1 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 -8
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !49
  %i.kp = fmul nsz float %i.ch, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next357.i
  store float %i.kp, ptr %i.kq, align 4, !tbaa !49
  %i.kr = getelementptr i8, ptr %i.km, i64 -4
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !49
  %i.kt = fmul nsz float %i.ch, %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next357.i
  store float %i.kt, ptr %i.ku, align 4, !tbaa !49
  %indvars.iv.next357.i.1 = add nuw nsw i64 %indvars.iv356.i, 2 ; 2 uses
  %exitcond360.not.i.1 = icmp eq i64 %indvars.iv.next357.i.1, %i.iz
  br i1 %exitcond360.not.i.1, label %.thread294.i, label %.lr.ph329.i, !llvm.loop !105

bb.ar:                                            ; preds = %bb.ap
  %i.kv = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.kw = shl i32 %i.il, %i.da
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.kx
  %i.kz = load ptr, ptr %i.ho, align 8, !tbaa !55
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.kx
  %i.lb = load ptr, ptr %i.hp, align 8, !tbaa !55 ; 11 uses
  %i.lc = load ptr, ptr %i.hq, align 8, !tbaa !55 ; 11 uses
  %i.ld = icmp sgt i32 %i.hx, 0
  br i1 %i.ld, label %.lr.ph325.preheader.i, label %._crit_edge326.i

.lr.ph325.preheader.i:                            ; preds = %bb.ar
  %wide.trip.count354.i = zext nneg i32 %i.hx to i64 ; 6 uses
  %min.iters.check267 = icmp ult i32 %i.hx, 16
  br i1 %min.iters.check267, label %.lr.ph325.i.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph325.preheader.i
  %i.le = shl nuw nsw i64 %wide.trip.count354.i, 3 ; 2 uses
  %i.lf = add nsw i64 %i.le, -4                   ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lb, i64 %i.lf  ; 2 uses
  %i.lh = getelementptr i8, ptr %i.lc, i64 %i.lf  ; 2 uses
  %i.li = getelementptr i8, ptr %i.ig, i64 %i.le  ; 2 uses
  %bound0269 = icmp ult ptr %i.lb, %i.lh
  %bound1270 = icmp ult ptr %i.lc, %i.lg
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0272 = icmp ult ptr %i.lb, %i.li
  %bound1273 = icmp ult ptr %i.ig, %i.lg
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %found.conflict271, %found.conflict274
  %bound0276 = icmp ult ptr %i.lc, %i.li
  %bound1277 = icmp ult ptr %i.ig, %i.lh
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  br i1 %conflict.rdx279, label %.lr.ph325.i.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck268
  %n.vec281 = and i64 %wide.trip.count354.i, 2147483644 ; 3 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next289, %vector.body284 ] ; 7 uses
  %i.lj = or disjoint i64 %index285, 1            ; 2 uses
  %i.lk = or disjoint i64 %index285, 2            ; 2 uses
  %i.ll = or disjoint i64 %index285, 3            ; 2 uses
  %i.lm = shl nuw nsw i64 %index285, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.lm
  %wide.vec286 = load <8 x float>, ptr %i.ln, align 4, !tbaa !49, !alias.scope !136 ; 2 uses
  %strided.vec287 = shufflevector <8 x float> %wide.vec286, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec288 = shufflevector <8 x float> %wide.vec286, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.lo = fmul nsz <4 x float> %broadcast.splat283, %strided.vec287 ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index285
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lj
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lk
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ll
  %i.lt = extractelement <4 x float> %i.lo, i64 0
  store float %i.lt, ptr %i.lp, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lu = extractelement <4 x float> %i.lo, i64 1
  store float %i.lu, ptr %i.lq, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lv = extractelement <4 x float> %i.lo, i64 2
  store float %i.lv, ptr %i.lr, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lw = extractelement <4 x float> %i.lo, i64 3
  store float %i.lw, ptr %i.ls, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lx = fmul nsz <4 x float> %broadcast.splat283, %strided.vec288 ; 4 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %index285
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lj
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lk
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.ll
  %i.mc = extractelement <4 x float> %i.lx, i64 0
  store float %i.mc, ptr %i.ly, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.md = extractelement <4 x float> %i.lx, i64 1
  store float %i.md, ptr %i.lz, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.me = extractelement <4 x float> %i.lx, i64 2
  store float %i.me, ptr %i.ma, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.mf = extractelement <4 x float> %i.lx, i64 3
  store float %i.mf, ptr %i.mb, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %index.next289 = add nuw i64 %index285, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next289, %n.vec281
  br i1 %i.mg, label %middle.block290, label %vector.body284, !llvm.loop !110

middle.block290:                                  ; preds = %vector.body284
  %cmp.n291 = icmp eq i64 %n.vec281, %wide.trip.count354.i
  br i1 %cmp.n291, label %._crit_edge326.i, label %.lr.ph325.i.preheader

.lr.ph325.i.preheader:                            ; preds = %vector.memcheck268, %.lr.ph325.preheader.i, %middle.block290
  %indvars.iv351.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph325.preheader.i ], [ %n.vec281, %middle.block290 ] ; 6 uses
  %xtraiter446 = and i64 %wide.trip.count354.i, 1
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.lr.ph325.i.prol.loopexit, label %.lr.ph325.i.prol

.lr.ph325.i.prol:                                 ; preds = %.lr.ph325.i.preheader
  %.idx.i.prol = shl nuw nsw i64 %indvars.iv351.i.ph, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.prol ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !49
  %i.mj = fmul nsz float %i.ch, %i.mi
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv351.i.ph
  store float %i.mj, ptr %i.mk, align 4, !tbaa !65
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !49
  %i.mn = fmul nsz float %i.ch, %i.mm
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv351.i.ph
  store float %i.mn, ptr %i.mo, align 4, !tbaa !65
  %indvars.iv.next352.i.prol = or disjoint i64 %indvars.iv351.i.ph, 1
  br label %.lr.ph325.i.prol.loopexit

.lr.ph325.i.prol.loopexit:                        ; preds = %.lr.ph325.i.prol, %.lr.ph325.i.preheader
  %indvars.iv351.i.unr = phi i64 [ %indvars.iv351.i.ph, %.lr.ph325.i.preheader ], [ %indvars.iv.next352.i.prol, %.lr.ph325.i.prol ]
  %i.mp = add nsw i64 %wide.trip.count354.i, -1
  %i.mq = icmp eq i64 %indvars.iv351.i.ph, %i.mp
  br i1 %i.mq, label %._crit_edge326.i, label %.lr.ph325.i

.lr.ph325.i:                                      ; preds = %.lr.ph325.i.prol.loopexit, %.lr.ph325.i
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i.1, %.lr.ph325.i ], [ %indvars.iv351.i.unr, %.lr.ph325.i.prol.loopexit ] ; 5 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv351.i, 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i ; 2 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !49
  %i.mt = fmul nsz float %i.ch, %i.ms
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv351.i
  store float %i.mt, ptr %i.mu, align 4, !tbaa !65
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !49
  %i.mx = fmul nsz float %i.ch, %i.mw
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv351.i
  store float %i.mx, ptr %i.my, align 4, !tbaa !65
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 3 uses
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next352.i, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.1 ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !49
  %i.nb = fmul nsz float %i.ch, %i.na
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.next352.i
  store float %i.nb, ptr %i.nc, align 4, !tbaa !65
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !49
  %i.nf = fmul nsz float %i.ch, %i.ne
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.next352.i
  store float %i.nf, ptr %i.ng, align 4, !tbaa !65
  %indvars.iv.next352.i.1 = add nuw nsw i64 %indvars.iv351.i, 2 ; 2 uses
  %exitcond355.not.i.1 = icmp eq i64 %indvars.iv.next352.i.1, %wide.trip.count354.i
  br i1 %exitcond355.not.i.1, label %._crit_edge326.i, label %.lr.ph325.i, !llvm.loop !111

._crit_edge326.i:                                 ; preds = %.lr.ph325.i.prol.loopexit, %.lr.ph325.i, %middle.block290, %bb.ar
  %i.nh = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.ni = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.nh(ptr noundef %i.ni, ptr noundef %i.ky, ptr noundef %i.lb, i64 noundef 8) #8, !inline_history !112
  %i.nj = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.nk = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.nj(ptr noundef %i.nk, ptr noundef %i.la, ptr noundef %i.lc, i64 noundef 8) #8, !inline_history !112
  br label %.thread294.i

bb.as:                                            ; preds = %bb.an
  %i.nl = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !34
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 76
  %i.np = load i32, ptr %i.no, align 4, !tbaa !44 ; 13 uses
  %i.nq = icmp sgt i32 %i.np, 1
  br i1 %i.nq, label %.lr.ph322.i, label %.thread294.i

.lr.ph322.i:                                      ; preds = %bb.as
  %i.nr = lshr i32 %i.np, 1
  %i.ns = icmp sgt i32 %i.hx, 0                   ; 2 uses
  %i.nt = zext nneg i32 %i.np to i64              ; 3 uses
  %wide.trip.count349.i = zext nneg i32 %i.nr to i64
  %wide.trip.count.i = zext i32 %i.hx to i64      ; 8 uses
  %2 = add nsw i64 %wide.trip.count.i, -1         ; 3 uses
  %3 = sub nsw i32 0, %i.np
  %4 = add i32 %i.hx, -1
  %5 = mul i32 %i.np, %4
  %6 = sext i32 %3 to i64
  %7 = mul nsw i64 %6, -4
  %scevgep = getelementptr i8, ptr %i.ig, i64 4
  %8 = shl nuw nsw i64 %wide.trip.count.i, 2
  %9 = add nsw i64 %8, -4
  %10 = sub nsw i32 0, %i.np
  %11 = sext i32 %10 to i64
  %12 = mul i64 %9, %11                           ; 2 uses
  %scevgep333 = getelementptr i8, ptr %i.ig, i64 %12
  %scevgep334 = getelementptr i8, ptr %i.ig, i64 4 ; 2 uses
  %13 = add i32 %i.hx, -1
  %14 = mul i32 %i.np, %13
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %12
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.nu = icmp eq i32 %i.hx, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod445 = trunc i32 %i.hx to i1
  %min.iters.check337 = icmp ult i32 %i.hx, 32
  %15 = trunc i64 %2 to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.np, i32 %15) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %16 = icmp ugt i64 %2, 4294967295
  %invariant.op = or i1 %mul.overflow, %16
  %mul294 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %7, i64 %2) ; 2 uses
  %mul.result295 = extractvalue { i64, i1 } %mul294, 0
  %mul.overflow296 = extractvalue { i64, i1 } %mul294, 1
  %17 = sub i64 0, %mul.result295
  %n.vec359 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n366 = icmp eq i64 %n.vec359, %wide.trip.count.i
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.i, %.lr.ph322.i
  %indvars.iv346.i = phi i64 [ 0, %.lr.ph322.i ], [ %indvars.iv.next347.i, %.loopexit.i ] ; 5 uses
  %indvars.iv346.i.tr = trunc i64 %indvars.iv346.i to i32
  %18 = shl i32 %indvars.iv346.i.tr, 1
  %19 = add i32 %18, %5                           ; 3 uses
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %scevgep293 = getelementptr i8, ptr %scevgep, i64 %21 ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv346.i
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !25
  %i.nx = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.hk, i32 noundef %i.nw) #8 ; 4 uses
  %i.ny = icmp slt i32 %i.nx, 0
  br i1 %i.ny, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nz = trunc i32 %i.nx to i8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv346.i
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !31
  %i.ob = shl nuw nsw i64 %indvars.iv346.i, 1     ; 2 uses
  %i.oc = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.od = icmp eq i32 %i.oc, 0
  br i1 %i.od, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.oe = load ptr, ptr %i.ht, align 8, !tbaa !53 ; 2 uses
  %i.of = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.og = mul i32 %i.of, %i.nx
  %i.oh = sext i32 %i.og to i64                   ; 3 uses
  %i.oi = getelementptr [4 x i8], ptr %i.oe, i64 %i.oh ; 5 uses
  %i.oj = load ptr, ptr %i.hu, align 8, !tbaa !53 ; 2 uses
  %i.ok = getelementptr [4 x i8], ptr %i.oj, i64 %i.oh ; 5 uses
  br i1 %i.ns, label %.lr.ph319.preheader.i, label %.loopexit.i

.lr.ph319.preheader.i:                            ; preds = %bb.av
  %22 = trunc nuw nsw i64 %i.ob to i32            ; 6 uses
  br i1 %min.iters.check337, label %.lr.ph319.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph319.preheader.i
  %23 = sub i32 %19, %mul.result
  %24 = icmp sgt i32 %23, %19
  %.reass = or i1 %24, %invariant.op
  %25 = getelementptr i8, ptr %scevgep293, i64 %17
  %26 = icmp ugt ptr %25, %scevgep293
  %27 = or i1 %26, %mul.overflow296
  %28 = or i1 %.reass, %27
  br i1 %28, label %.lr.ph319.i.preheader, label %vector.memcheck338

vector.memcheck338:                               ; preds = %vector.scevcheck
  %29 = add nsw i64 %i.oh, %wide.trip.count.i
  %30 = shl nsw i64 %29, 2                        ; 2 uses
  %31 = getelementptr i8, ptr %i.oe, i64 %30      ; 3 uses
  %32 = getelementptr i8, ptr %i.oj, i64 %30      ; 3 uses
  %33 = add i32 %14, %22
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 2                        ; 4 uses
  %36 = getelementptr i8, ptr %scevgep335, i64 %35 ; 4 uses
  %37 = getelementptr i8, ptr %scevgep334, i64 %35 ; 4 uses
  %38 = icmp ult ptr %36, %37
  %39 = select i1 %38, ptr %36, ptr %37           ; 2 uses
  %40 = icmp ugt ptr %36, %37
  %41 = select i1 %40, ptr %36, ptr %37
  %42 = getelementptr i8, ptr %41, i64 4          ; 2 uses
  %43 = getelementptr i8, ptr %scevgep333, i64 %35 ; 4 uses
  %44 = getelementptr i8, ptr %i.ig, i64 %35      ; 4 uses
  %45 = icmp ult ptr %43, %44
  %46 = select i1 %45, ptr %43, ptr %44           ; 2 uses
  %47 = icmp ugt ptr %43, %44
  %48 = select i1 %47, ptr %43, ptr %44
  %49 = getelementptr i8, ptr %48, i64 4          ; 2 uses
  %bound0339 = icmp ult ptr %i.oi, %32
  %bound1340 = icmp ult ptr %i.ok, %31
  %found.conflict341 = and i1 %bound0339, %bound1340
  %bound0342 = icmp ult ptr %i.oi, %42
  %bound1343 = icmp ult ptr %39, %31
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %found.conflict341, %found.conflict344
  %bound0346 = icmp ult ptr %i.oi, %49
  %bound1347 = icmp ult ptr %46, %31
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  %bound0350 = icmp ult ptr %i.ok, %42
  %bound1351 = icmp ult ptr %39, %32
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx349, %found.conflict352
  %bound0354 = icmp ult ptr %i.ok, %49
  %bound1355 = icmp ult ptr %46, %32
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx353, %found.conflict356
  br i1 %conflict.rdx357, label %.lr.ph319.i.preheader, label %vector.body362

vector.body362:                                   ; preds = %vector.memcheck338, %vector.body362
  %index363 = phi i64 [ %index.next364, %vector.body362 ], [ 0, %vector.memcheck338 ] ; 4 uses
  %50 = trunc i64 %index363 to i32                ; 4 uses
  %51 = xor i32 %50, -1
  %52 = xor i32 %50, -2
  %53 = xor i32 %50, -3
  %54 = xor i32 %50, -4
  %55 = add i32 %i.hx, %51
  %56 = add i32 %i.hx, %52
  %57 = add i32 %i.hx, %53
  %58 = add i32 %i.hx, %54
  %59 = mul i32 %55, %i.np
  %60 = mul i32 %56, %i.np
  %61 = mul i32 %57, %i.np
  %62 = mul i32 %58, %i.np
  %63 = add nsw i32 %59, %22
  %64 = add nsw i32 %60, %22
  %65 = add nsw i32 %61, %22
  %66 = add nsw i32 %62, %22
  %67 = sext i32 %63 to i64
  %68 = sext i32 %64 to i64
  %69 = sext i32 %65 to i64
  %70 = sext i32 %66 to i64
  %71 = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %67 ; 2 uses
  %72 = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %68 ; 2 uses
  %73 = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %69 ; 2 uses
  %74 = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %70 ; 2 uses
  %75 = load float, ptr %71, align 4, !tbaa !49, !alias.scope !140
  %76 = load float, ptr %72, align 4, !tbaa !49, !alias.scope !140
  %77 = load float, ptr %73, align 4, !tbaa !49, !alias.scope !140
  %78 = load float, ptr %74, align 4, !tbaa !49, !alias.scope !140
  %79 = insertelement <4 x float> poison, float %75, i64 0
  %80 = insertelement <4 x float> %79, float %76, i64 1
  %81 = insertelement <4 x float> %80, float %77, i64 2
  %82 = insertelement <4 x float> %81, float %78, i64 3
  %83 = fmul nsz <4 x float> %broadcast.splat361, %82
  %84 = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %index363
  store <4 x float> %83, ptr %84, align 4, !tbaa !49, !alias.scope !141, !noalias !142
  %85 = getelementptr i8, ptr %71, i64 4
  %86 = getelementptr i8, ptr %72, i64 4
  %87 = getelementptr i8, ptr %73, i64 4
  %88 = getelementptr i8, ptr %74, i64 4
  %89 = load float, ptr %85, align 4, !tbaa !49, !alias.scope !143
  %90 = load float, ptr %86, align 4, !tbaa !49, !alias.scope !143
  %91 = load float, ptr %87, align 4, !tbaa !49, !alias.scope !143
  %92 = load float, ptr %88, align 4, !tbaa !49, !alias.scope !143
  %93 = insertelement <4 x float> poison, float %89, i64 0
  %94 = insertelement <4 x float> %93, float %90, i64 1
  %95 = insertelement <4 x float> %94, float %91, i64 2
  %96 = insertelement <4 x float> %95, float %92, i64 3
  %97 = fmul nsz <4 x float> %broadcast.splat361, %96
  %98 = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %index363
  store <4 x float> %97, ptr %98, align 4, !tbaa !49, !alias.scope !144, !noalias !145
  %index.next364 = add nuw i64 %index363, 4       ; 2 uses
  %99 = icmp eq i64 %index.next364, %n.vec359
  br i1 %99, label %middle.block365, label %vector.body362, !llvm.loop !118

middle.block365:                                  ; preds = %vector.body362
  br i1 %cmp.n366, label %.loopexit.i, label %.lr.ph319.i.preheader

.lr.ph319.i.preheader:                            ; preds = %vector.memcheck338, %vector.scevcheck, %.lr.ph319.preheader.i, %middle.block365
  %indvars.iv341.i.ph = phi i64 [ 0, %vector.memcheck338 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph319.preheader.i ], [ %n.vec359, %middle.block365 ]
  br label %.lr.ph319.i

.lr.ph319.i:                                      ; preds = %.lr.ph319.i.preheader, %.lr.ph319.i
  %indvars.iv341.i = phi i64 [ %indvars.iv.next342.i, %.lr.ph319.i ], [ %indvars.iv341.i.ph, %.lr.ph319.i.preheader ] ; 4 uses
  %i.ol = trunc i64 %indvars.iv341.i to i32
  %i.om = xor i32 %i.ol, -1
  %i.on = add i32 %i.hx, %i.om
  %i.oo = mul i32 %i.on, %i.np
  %i.op = add nsw i32 %i.oo, %22
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.oq ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !49
  %i.ot = fmul nsz float %i.ch, %i.os
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv341.i
  store float %i.ot, ptr %i.ou, align 4, !tbaa !49
  %i.ov = getelementptr i8, ptr %i.or, i64 4
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !49
  %i.ox = fmul nsz float %i.ch, %i.ow
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv341.i
  store float %i.ox, ptr %i.oy, align 4, !tbaa !49
  %indvars.iv.next342.i = add nuw nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %exitcond345.not.i = icmp eq i64 %indvars.iv.next342.i, %wide.trip.count.i
  br i1 %exitcond345.not.i, label %.loopexit.i, label %.lr.ph319.i, !llvm.loop !119

bb.aw:                                            ; preds = %bb.au
  %i.oz = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.pa = shl i32 %i.nx, %i.da
  %i.pb = sext i32 %i.pa to i64                   ; 2 uses
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %i.pb
  %i.pd = load ptr, ptr %i.ho, align 8, !tbaa !55
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.pd, i64 %i.pb
  %i.pf = load ptr, ptr %i.hp, align 8, !tbaa !55 ; 4 uses
  %i.pg = load ptr, ptr %i.hq, align 8, !tbaa !55 ; 4 uses
  br i1 %i.ns, label %.lr.ph316.preheader.i, label %._crit_edge.i

.lr.ph316.preheader.i:                            ; preds = %bb.aw
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ob ; 3 uses
  br i1 %i.nu, label %.lr.ph316.i.epil.preheader, label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %.lr.ph316.preheader.i, %.lr.ph316.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph316.i ], [ 0, %.lr.ph316.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph316.i ], [ 0, %.lr.ph316.preheader.i ]
  %i.ph = mul nuw nsw i64 %indvars.iv.i, %i.nt
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.ph ; 2 uses
  %i.pi = load float, ptr %gep.i, align 4, !tbaa !49
  %i.pj = fmul nsz float %i.ch, %i.pi
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.i
  store float %i.pj, ptr %i.pk, align 4, !tbaa !65
  %i.pl = getelementptr i8, ptr %gep.i, i64 4
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !49
  %i.pn = fmul nsz float %i.ch, %i.pm
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.i
  store float %i.pn, ptr %i.po, align 4, !tbaa !65
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.pp = mul nuw nsw i64 %indvars.iv.next.i, %i.nt
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.pp ; 2 uses
  %i.pq = load float, ptr %gep.i.1, align 4, !tbaa !49
  %i.pr = fmul nsz float %i.ch, %i.pq
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.next.i
  store float %i.pr, ptr %i.ps, align 4, !tbaa !65
  %i.pt = getelementptr i8, ptr %gep.i.1, i64 4
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !49
  %i.pv = fmul nsz float %i.ch, %i.pu
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.next.i
  store float %i.pv, ptr %i.pw, align 4, !tbaa !65
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph316.i, !llvm.loop !120

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph316.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph316.i.epil.preheader

.lr.ph316.i.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph316.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph316.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod445)
  %i.px = mul nuw nsw i64 %indvars.iv.i.epil.init, %i.nt
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.px ; 2 uses
  %i.py = load float, ptr %gep.i.epil, align 4, !tbaa !49
  %i.pz = fmul nsz float %i.ch, %i.py
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.i.epil.init
  store float %i.pz, ptr %i.qa, align 4, !tbaa !65
  %i.qb = getelementptr i8, ptr %gep.i.epil, i64 4
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !49
  %i.qd = fmul nsz float %i.ch, %i.qc
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.i.epil.init
  store float %i.qd, ptr %i.qe, align 4, !tbaa !65
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph316.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.aw
  %i.qf = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.qg = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.qf(ptr noundef %i.qg, ptr noundef %i.pc, ptr noundef %i.pf, i64 noundef 8) #8, !inline_history !112
  %i.qh = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.qi = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.qh(ptr noundef %i.qi, ptr noundef %i.pe, ptr noundef %i.pg, i64 noundef 8) #8, !inline_history !112
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph319.i, %middle.block365, %._crit_edge.i, %bb.av, %bb.at
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  br i1 %exitcond350.not.i, label %.thread294.i, label %bb.at, !llvm.loop !121

.thread294.i:                                     ; preds = %.loopexit.i, %.lr.ph329.i.prol.loopexit, %.lr.ph329.i, %middle.block, %bb.as, %._crit_edge326.i, %bb.aq, %bb.ao
  call void @av_frame_free(ptr noundef nonnull %i.c) #8
  %i.qj = load i32, ptr %i.bp, align 8, !tbaa !27
  %i.qk = sext i32 %i.qj to i64
  %i.ql = icmp slt i64 %indvars.iv.next362.i, %i.qk
  br i1 %i.ql, label %bb.am, label %.sink.split, !llvm.loop !122

.loopexit:                                        ; preds = %bb.am, %bb.ak, %bb.ae, %bb.ah, %bb.z, %.thread.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.af, %bb.aj, %bb.ai
  %.3252.i.ph = phi i32 [ -12, %bb.ak ], [ -12, %bb.ai ], [ -12, %bb.aj ], [ -12, %bb.af ], [ -12, %bb.aa ], [ -12, %bb.ab ], [ -12, %bb.ac ], [ -12, %bb.ad ], [ %.0249.ph.i, %.thread.i ], [ -12, %bb.z ], [ -12, %bb.ah ], [ -12, %bb.ae ], [ %i.ib, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread88

bb.ax:                                            ; preds = %.critedge
  %i.qm = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !146
  %.not75 = icmp eq i32 %i.qn, 0
  br i1 %.not75, label %.thread88, label %bb.ay

.sink.split:                                      ; preds = %.thread294.i, %bb.al
  %i.qo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i32 1, ptr %i.qo, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.ax
  %i.qp = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !130 ; 2 uses
  %i.qr = call i32 @ff_inlink_consume_samples(ptr noundef %i.l, i32 noundef %i.qq, i32 noundef %i.qq, ptr noundef nonnull %i.e) #8 ; 3 uses
  %i.qs = icmp sgt i32 %i.qr, 0
  br i1 %i.qs, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.qt = load ptr, ptr %i.e, align 8, !tbaa !124 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.qt, ptr %i.a, align 8, !tbaa !124
  %i.qu = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 112
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !68
  %i.qx = call ptr @ff_get_audio_buffer(ptr noundef nonnull %i.o, i32 noundef %i.qw) #8 ; 5 uses
  %.not.i79 = icmp eq ptr %i.qx, null
  br i1 %.not.i79, label %headphone_frame.exit.thread, label %bb.ba

headphone_frame.exit.thread:                      ; preds = %bb.az
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread88

bb.ba:                                            ; preds = %bb.az
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 136
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !147
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 136
  store i64 %i.qz, ptr %i.ra, align 8, !tbaa !147
  store ptr %i.qt, ptr %1, align 8, !tbaa !73
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.qx, ptr %i.rb, align 8, !tbaa !74
  %i.rc = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !75
  %i.re = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.re, ptr %i.rf, align 8, !tbaa !76
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.b, ptr %i.rg, align 8, !tbaa !77
  %i.rh = getelementptr inbounds nuw i8, ptr %i.i, <4 x i64> <i64 64, i64 120, i64 136, i64 152>
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <4 x ptr> %i.rh, ptr %i.ri, align 8, !tbaa !148
  %i.rj = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !149
  %i.rl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !28
  %i.rn = icmp eq i32 %i.rm, 0
  %headphone_convolute.headphone_fast_convolute.i = select i1 %i.rn, ptr @headphone_convolute, ptr @headphone_fast_convolute
  %i.ro = call i32 @ff_filter_execute(ptr noundef %i.qu, ptr noundef nonnull %headphone_convolute.headphone_fast_convolute.i, ptr noundef nonnull %1, ptr noundef null, i32 noundef 2) #8 ; 0 uses
  %i.rp = load i32, ptr %i.b, align 8, !tbaa !25
  %i.rq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !25
  %i.rs = add nsw i32 %i.rr, %i.rp                ; 2 uses
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %bb.bb, label %headphone_frame.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qx, i64 112
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !68
  %i.rw = shl nsw i32 %i.rv, 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.qu, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef %i.rs, i32 noundef %i.rw) #8
  br label %headphone_frame.exit

headphone_frame.exit:                             ; preds = %bb.ba, %bb.bb
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  %i.rx = call i32 @ff_filter_frame(ptr noundef nonnull %i.o, ptr noundef nonnull %i.qx) #8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ry = icmp slt i32 %i.rx, 0
  br i1 %i.ry, label %.thread88, label %.thread93

bb.bc:                                            ; preds = %bb.ay
  %i.rz = icmp slt i32 %i.qr, 0
  br i1 %i.rz, label %.thread88, label %.thread93

.thread93:                                        ; preds = %headphone_frame.exit, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.sa = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.l, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #8
  %.not76 = icmp eq i32 %i.sa, 0
  br i1 %.not76, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.thread93
  %i.sb = load i32, ptr %i.f, align 4, !tbaa !25
  %i.sc = load i64, ptr %i.g, align 8, !tbaa !150
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.o, i32 noundef %i.sb, i64 noundef %i.sc) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %.thread88

bb.be:                                            ; preds = %.thread93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  %i.sd = call i32 @ff_outlink_frame_wanted(ptr noundef %i.o) #8
  %.not77 = icmp eq i32 %i.sd, 0
  br i1 %.not77, label %.thread88, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @ff_inlink_request_frame(ptr noundef %i.l) #8
  br label %.thread88

.thread88:                                        ; preds = %.lr.ph, %.preheader104, %.loopexit, %bb.e, %bb.f, %bb.c, %bb.i, %._crit_edge.thread169, %bb.bd, %headphone_frame.exit.thread, %bb.be, %bb.bf, %bb.bc, %headphone_frame.exit, %bb.ax
  %.6 = phi i32 [ -541478725, %bb.ax ], [ %i.rx, %headphone_frame.exit ], [ %i.qr, %bb.bc ], [ 0, %bb.bd ], [ %.3252.i.ph, %.loopexit ], [ -12, %headphone_frame.exit.thread ], [ 0, %bb.bf ], [ 0, %bb.be ], [ -22, %bb.c ], [ 0, %._crit_edge.thread169 ], [ -1094995529, %bb.i ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.preheader104 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_output(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !26
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !44
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44   ; 2 uses
  %i.p = shl nsw i32 %i.o, 1                      ; 2 uses
  %.not = icmp slt i32 %i.m, %i.p
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.p) #8
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b
  %i.q = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.o, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.s = load float, ptr %i.r, align 8, !tbaa !45
  %i.t = mul nsw i32 %i.q, 3
  %i.u = sitofp nsz i32 %i.t to float
  %i.v = fsub nsz float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.x = load float, ptr %i.w, align 4, !tbaa !151
  %i.y = fadd nsz float %i.x, %i.v
  %i.z = fdiv nsz float %i.y, 2.000000e+01
  %i.aa = fpext nsz float %i.z to double
  %i.ab = fmul nsz double %i.aa, f0x40026BB1BBB55516
  %i.ac = fptrunc nsz double %i.ab to float
  %i.ad = tail call nsz float @llvm.exp.f32(float %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store float %i.ad, ptr %i.ae, align 8, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ -22, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #4

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_input(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !44   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.h) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.j, i32 noundef 3) #8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.k, ptr %i.l, align 4, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_append_inpad(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_asprintf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ff_append_inpad_free_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_index_from_channel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_strtok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @av_channel_from_string(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_all_channel_layouts() local_unnamed_addr #3

declare i32 @ff_channel_layouts_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_add_channel_layout(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_all_channel_counts() local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #3

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_check_available_samples(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @headphone_convolute(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !73     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = sext i32 %2 to i64                       ; 6 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !46 ; 3 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 388
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !47 ; 4 uses
  %i.aj = add i32 %i.ai, -1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !25  ; 5 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.i ; 3 uses
  %i.am = icmp sgt i32 %i.ag, 0
  br i1 %i.am, label %.lr.ph.preheader, label %.preheader109.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.an = sext i32 %i.ai to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 2 uses
  %xtraiter172 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ao = icmp ult i32 %i.ag, 4
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter176 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.preheader109.unr-lcssa:                          ; preds = %.lr.ph
  %lcmp.mod174.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod174.not, label %.preheader109, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader109.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader109.unr-lcssa ]
  %lcmp.mod175 = icmp ne i64 %xtraiter172, 0
  tail call void @llvm.assume(i1 %lcmp.mod175)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter173 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter173.next, %.lr.ph.epil ]
  %i.ap = mul nsw i64 %indvars.iv.epil, %i.an
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !53
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter173.next = add i64 %epil.iter173, 1   ; 2 uses
  %epil.iter173.cmp.not = icmp eq i64 %epil.iter173.next, %xtraiter172
  br i1 %epil.iter173.cmp.not, label %.preheader109, label %.lr.ph.epil, !llvm.loop !152

.preheader109:                                    ; preds = %.lr.ph.epil, %.preheader109.unr-lcssa
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !68
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph121, label %._crit_edge122

.preheader109.thread:                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !68 ; 4 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.preheader.preheader.preheader, label %._crit_edge122

.preheader.preheader.preheader:                   ; preds = %.preheader109.thread
  %xtraiter = and i32 %i.aw, 3                    ; 3 uses
  %i.ay = icmp ult i32 %i.aw, 4
  br i1 %i.ay, label %.preheader.preheader.epil.preheader, label %.preheader.preheader.preheader.new

.preheader.preheader.preheader.new:               ; preds = %.preheader.preheader.preheader
  %unroll_iter = and i32 %i.aw, 2147483644
  br label %.preheader.preheader

.lr.ph121:                                        ; preds = %.preheader109
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.ba = sext i32 %i.aa to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.bd = add nsw i32 %i.aa, 31
  %i.be = and i32 %i.bd, -32                      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bg = sext i32 %i.ac to i64                   ; 2 uses
  %i.bh = zext nneg i32 %i.ag to i64
  %wide.trip.count151 = zext nneg i32 %i.ag to i64 ; 3 uses
  %wide.trip.count156 = zext nneg i32 %i.ag to i64
  %xtraiter178 = and i64 %wide.trip.count151, 3   ; 3 uses
  %i.bi = icmp ult i32 %i.ag, 4
  %unroll_iter182 = and i64 %wide.trip.count151, 2147483644
  %lcmp.mod180.not = icmp eq i64 %xtraiter178, 0
  %lcmp.mod181 = icmp ne i64 %xtraiter178, 0
  %invariant.op = sub i32 1, %i.aa
  br label %.lr.ph112.us

.lr.ph112.us:                                     ; preds = %bb.j, %.lr.ph121
  %.099120.us = phi i32 [ %i.er, %bb.j ], [ 0, %.lr.ph121 ]
  %.0100119.us = phi i32 [ %i.eq, %bb.j ], [ %i.ak, %.lr.ph121 ] ; 3 uses
  %.0101117.us = phi ptr [ %i.en, %bb.j ], [ %i.al, %.lr.ph121 ] ; 8 uses
  %.0102116.us = phi ptr [ %i.eo, %bb.j ], [ %i.ad, %.lr.ph121 ] ; 6 uses
  store float 0.000000e+00, ptr %.0101117.us, align 4, !tbaa !49
  %i.bj = sext i32 %.0100119.us to i64            ; 7 uses
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph112.us.new

.lr.ph112.us.new:                                 ; preds = %.lr.ph112.us, %.lr.ph112.us.new
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph112.us.new ], [ 0, %.lr.ph112.us ] ; 6 uses
  %niter183 = phi i64 [ %niter183.next.3, %.lr.ph112.us.new ], [ 0, %.lr.ph112.us ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv143
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !49
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !53
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bj
  store float %i.bl, ptr %i.bo, align 4, !tbaa !49
  %indvars.iv.next144 = or disjoint i64 %indvars.iv143, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv.next144
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !49
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bj
  store float %i.bq, ptr %i.bt, align 4, !tbaa !49
  %indvars.iv.next144.1 = or disjoint i64 %indvars.iv143, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv.next144.1
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !49
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next144.1
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !53
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bj
  store float %i.bv, ptr %i.by, align 4, !tbaa !49
  %indvars.iv.next144.2 = or disjoint i64 %indvars.iv143, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv.next144.2
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !49
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next144.2
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.bj
  store float %i.ca, ptr %i.cd, align 4, !tbaa !49
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %niter183.next.3 = add i64 %niter183, 4         ; 2 uses
  %niter183.ncmp.3 = icmp eq i64 %niter183.next.3, %unroll_iter182
  br i1 %niter183.ncmp.3, label %.preheader.us.unr-lcssa, label %.lr.ph112.us.new, !llvm.loop !153

.preheader.us.unr-lcssa:                          ; preds = %.lr.ph112.us.new
  br i1 %lcmp.mod180.not, label %.preheader.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.us.unr-lcssa, %.lr.ph112.us
  %indvars.iv143.epil.init = phi i64 [ 0, %.lr.ph112.us ], [ %indvars.iv.next144.3, %.preheader.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod181)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv143.epil = phi i64 [ %indvars.iv.next144.epil, %bb.b ], [ %indvars.iv143.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter179 = phi i64 [ %epil.iter179.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %indvars.iv143.epil
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !49
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !53
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bj
  store float %i.cf, ptr %i.ci, align 4, !tbaa !49
  %indvars.iv.next144.epil = add nuw nsw i64 %indvars.iv143.epil, 1
  %epil.iter179.next = add i64 %epil.iter179, 1   ; 2 uses
  %epil.iter179.cmp.not = icmp eq i64 %epil.iter179.next, %xtraiter178
  br i1 %epil.iter179.cmp.not, label %.preheader.us, label %bb.b, !llvm.loop !154

.preheader.us:                                    ; preds = %bb.b, %.preheader.us.unr-lcssa
  %.reass.reass.us.reass.reass = add i32 %.0100119.us, %invariant.op
  %i.cj = and i32 %.reass.reass.us.reass.reass, %i.aj ; 4 uses
  %i.ck = add nsw i32 %i.cj, %i.aa
  %i.cl = icmp slt i32 %i.ck, %i.ai
  %i.cm = sub nsw i32 %i.ai, %i.cj
  %i.cn = sext i32 %i.cj to i64                   ; 2 uses
  %.fr.us = freeze i1 %i.cl
  br i1 %.fr.us, label %.lr.ph115.split.us.us, label %.lr.ph115.split.us124

.lr.ph115.split.us124:                            ; preds = %.preheader.us, %bb.e
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %bb.e ], [ 0, %.preheader.us ] ; 3 uses
  %.0114.us125 = phi ptr [ %i.do, %bb.e ], [ %i.n, %.preheader.us ] ; 2 uses
  %i.co = load i32, ptr %i.az, align 4, !tbaa !79 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp eq i64 %indvars.iv148, %i.cp
  br i1 %i.cq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph115.split.us124
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv148
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !53 ; 2 uses
  %i.ct = srem i32 %i.cj, %i.aa
  %i.cu = sub nsw i32 %i.ac, %i.ct
  %..us = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.cm) ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cn
  %i.cw = sext i32 %..us to i64                   ; 2 uses
  %i.cx = shl nsw i64 %i.cw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.cv, i64 %i.cx, i1 false)
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.cw
  %i.cz = sub nsw i32 %i.ac, %..us
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cy, ptr align 4 %i.cs, i64 %i.db, i1 false)
  %i.dc = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.dd = tail call nsz float %i.dc(ptr noundef %.0114.us125, ptr noundef %i.y, i32 noundef %i.be) #8
  %i.de = load float, ptr %.0101117.us, align 4, !tbaa !49
  %i.df = fadd nsz float %i.dd, %i.de
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph115.split.us124
  %i.dg = sext i32 %i.co to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !53
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.bj
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !49
  %i.dl = load float, ptr %i.bf, align 8, !tbaa !78
  %i.dm = load float, ptr %.0101117.us, align 4, !tbaa !49
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.dl, float %i.dm)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.us127 = phi float [ %i.df, %bb.c ], [ %i.dn, %bb.d ] ; 2 uses
  store float %storemerge.us127, ptr %.0101117.us, align 4, !tbaa !49
  %i.do = getelementptr inbounds [4 x i8], ptr %.0114.us125, i64 %i.bg
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge.us, label %.lr.ph115.split.us124, !llvm.loop !155

.lr.ph115.split.us.us:                            ; preds = %.preheader.us, %bb.h
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %bb.h ], [ 0, %.preheader.us ] ; 3 uses
  %.0114.us.us = phi ptr [ %i.eh, %bb.h ], [ %i.n, %.preheader.us ] ; 2 uses
  %i.dp = load i32, ptr %i.az, align 4, !tbaa !79 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp eq i64 %indvars.iv153, %i.dq
  br i1 %i.dr, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph115.split.us.us
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv153
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !53
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.du, i64 %i.bb, i1 false)
  %i.dv = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.dw = tail call nsz float %i.dv(ptr noundef %.0114.us.us, ptr noundef %i.y, i32 noundef %i.be) #8
  %i.dx = load float, ptr %.0101117.us, align 4, !tbaa !49
  %i.dy = fadd nsz float %i.dw, %i.dx
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph115.split.us.us
  %i.dz = sext i32 %i.dp to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !53
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.bj
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !49
  %i.ee = load float, ptr %i.bf, align 8, !tbaa !78
  %i.ef = load float, ptr %.0101117.us, align 4, !tbaa !49
  %i.eg = tail call nsz float @llvm.fmuladd.f32(float %i.ed, float %i.ee, float %i.ef)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.us.us = phi float [ %i.dy, %bb.f ], [ %i.eg, %bb.g ] ; 2 uses
  store float %storemerge.us.us, ptr %.0101117.us, align 4, !tbaa !49
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0114.us.us, i64 %i.bg
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge.us, label %.lr.ph115.split.us.us, !llvm.loop !155

._crit_edge.us:                                   ; preds = %bb.e, %bb.h
  %i.ei = phi float [ %storemerge.us.us, %bb.h ], [ %storemerge.us127, %bb.e ]
  %i.ej = tail call nsz float @llvm.fabs.f32(float %i.ei)
  %i.ek = fcmp nsz ogt float %i.ej, 1.000000e+00
  br i1 %i.ek, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.us
  %i.el = load i32, ptr %i.q, align 4, !tbaa !25
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.q, align 4, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.us
  %i.en = getelementptr inbounds nuw i8, ptr %.0101117.us, i64 8
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0102116.us, i64 %i.bh
  %i.ep = add nsw i32 %.0100119.us, 1
  %i.eq = and i32 %i.ep, %i.aj                    ; 2 uses
  %i.er = add nuw nsw i32 %.099120.us, 1          ; 2 uses
  %i.es = load i32, ptr %i.as, align 8, !tbaa !68
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph112.us, label %._crit_edge122, !llvm.loop !156

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter177 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter177.next.3, %.lr.ph ]
  %i.eu = mul nsw i64 %indvars.iv, %i.an
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.ev, ptr %i.ew, align 16, !tbaa !53
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ex = mul nsw i64 %indvars.iv.next, %i.an
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !53
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.fa = mul nsw i64 %indvars.iv.next.1, %i.an
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.fb, ptr %i.fc, align 16, !tbaa !53
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.fd = mul nsw i64 %indvars.iv.next.2, %i.an
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !53
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter177.next.3 = add i64 %niter177, 4         ; 2 uses
  %niter177.ncmp.3 = icmp eq i64 %niter177.next.3, %unroll_iter176
  br i1 %niter177.ncmp.3, label %.preheader109.unr-lcssa, label %.lr.ph, !llvm.loop !157

.preheader.preheader:                             ; preds = %.preheader.preheader, %.preheader.preheader.preheader.new
  %.0100119 = phi i32 [ %i.ak, %.preheader.preheader.preheader.new ], [ %i.fr, %.preheader.preheader ]
  %.0101117 = phi ptr [ %i.al, %.preheader.preheader.preheader.new ], [ %i.fp, %.preheader.preheader ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.preheader.preheader.new ], [ %niter.next.3, %.preheader.preheader ]
  store float 0.000000e+00, ptr %.0101117, align 4, !tbaa !49
  %i.fg = getelementptr inbounds nuw i8, ptr %.0101117, i64 8
  %i.fh = add nsw i32 %.0100119, 1
  %i.fi = and i32 %i.fh, %i.aj
  store float 0.000000e+00, ptr %i.fg, align 4, !tbaa !49
  %i.fj = getelementptr inbounds nuw i8, ptr %.0101117, i64 16
  %i.fk = add nsw i32 %i.fi, 1
  %i.fl = and i32 %i.fk, %i.aj
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !49
  %i.fm = getelementptr inbounds nuw i8, ptr %.0101117, i64 24
  %i.fn = add nsw i32 %i.fl, 1
  %i.fo = and i32 %i.fn, %i.aj
  store float 0.000000e+00, ptr %i.fm, align 4, !tbaa !49
  %i.fp = getelementptr inbounds nuw i8, ptr %.0101117, i64 32 ; 2 uses
  %i.fq = add nsw i32 %i.fo, 1
  %i.fr = and i32 %i.fq, %i.aj                    ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge122.loopexit168.unr-lcssa, label %.preheader.preheader, !llvm.loop !156

._crit_edge122.loopexit168.unr-lcssa:             ; preds = %.preheader.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge122, label %.preheader.preheader.epil.preheader

.preheader.preheader.epil.preheader:              ; preds = %._crit_edge122.loopexit168.unr-lcssa, %.preheader.preheader.preheader
  %.0100119.epil.init = phi i32 [ %i.ak, %.preheader.preheader.preheader ], [ %i.fr, %._crit_edge122.loopexit168.unr-lcssa ]
  %.0101117.epil.init = phi ptr [ %i.al, %.preheader.preheader.preheader ], [ %i.fp, %._crit_edge122.loopexit168.unr-lcssa ]
  %lcmp.mod171 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.preheader.preheader.epil

.preheader.preheader.epil:                        ; preds = %.preheader.preheader.epil, %.preheader.preheader.epil.preheader
  %.0100119.epil = phi i32 [ %i.fu, %.preheader.preheader.epil ], [ %.0100119.epil.init, %.preheader.preheader.epil.preheader ]
  %.0101117.epil = phi ptr [ %i.fs, %.preheader.preheader.epil ], [ %.0101117.epil.init, %.preheader.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.preheader.epil ], [ 0, %.preheader.preheader.epil.preheader ]
  store float 0.000000e+00, ptr %.0101117.epil, align 4, !tbaa !49
  %i.fs = getelementptr inbounds nuw i8, ptr %.0101117.epil, i64 8
  %i.ft = add nsw i32 %.0100119.epil, 1
  %i.fu = and i32 %i.ft, %i.aj                    ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge122, label %.preheader.preheader.epil, !llvm.loop !158

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit168.unr-lcssa, %.preheader.preheader.epil, %bb.j, %.preheader109.thread, %.preheader109
  %.0100.lcssa = phi i32 [ %i.ak, %.preheader109 ], [ %i.ak, %.preheader109.thread ], [ %i.eq, %bb.j ], [ %i.fr, %._crit_edge122.loopexit168.unr-lcssa ], [ %i.fu, %.preheader.preheader.epil ]
  store i32 %.0100.lcssa, ptr %i.j, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @headphone_fast_convolute(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 15 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !73     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = sext i32 %2 to i64                       ; 13 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.h
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.h
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !43   ; 7 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47
  %i.ab = add i32 %i.aa, -1                       ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.h
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !55 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.h
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.h
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.h
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.h
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.h
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !48 ; 6 uses
  %i.az = sitofp nsz i32 %i.ay to float
  %i.ba = fdiv nsz float 1.000000e+00, %i.az      ; 4 uses
  %i.bb = load i32, ptr %i.i, align 4, !tbaa !25  ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %i.w, i64 %i.h ; 18 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 5 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !68 ; 5 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.be) ; 4 uses
  %i.bf = icmp sgt i32 %., 0
  br i1 %i.bf, label %.lr.ph.preheader, label %.preheader154

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %. to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bg = icmp eq i32 %., 1
  br i1 %i.bg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader154.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader154, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader154.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader154.loopexit.unr-lcssa ]
  %.0147155.epil.init = phi i32 [ %i.bb, %.lr.ph.preheader ], [ %i.cf, %.preheader154.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod323 = trunc i32 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod323)
  %i.bh = sext i32 %.0147155.epil.init to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bh ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !49
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.epil
  store float %i.bj, ptr %i.bk, align 4, !tbaa !49
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !49
  %i.bl = add nsw i32 %.0147155.epil.init, 1
  %i.bm = and i32 %i.bl, %i.ab
  br label %.preheader154

.preheader154:                                    ; preds = %.lr.ph.epil.preheader, %.preheader154.loopexit.unr-lcssa, %bb.a
  %.0147.lcssa = phi i32 [ %i.bb, %bb.a ], [ %i.cf, %.preheader154.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.epil.preheader ] ; 4 uses
  %i.bn = icmp slt i32 %i.u, %i.be
  br i1 %i.bn, label %.lr.ph158.preheader, label %._crit_edge

.lr.ph158.preheader:                              ; preds = %.preheader154
  %i.bo = sext i32 %i.u to i64                    ; 2 uses
  %i.bp = sub i32 %i.be, %i.u
  %xtraiter324 = and i32 %i.bp, 3                 ; 2 uses
  %lcmp.mod325.not = icmp eq i32 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.lr.ph158.prol.loopexit, label %.lr.ph158.prol

.lr.ph158.prol:                                   ; preds = %.lr.ph158.preheader, %.lr.ph158.prol
  %indvars.iv184.prol = phi i64 [ %indvars.iv.next185.prol, %.lr.ph158.prol ], [ %i.bo, %.lr.ph158.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph158.prol ], [ 0, %.lr.ph158.preheader ]
  %.idx221.prol = shl nsw i64 %indvars.iv184.prol, 3
  %i.bq = getelementptr inbounds i8, ptr %i.bc, i64 %.idx221.prol
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !49
  %indvars.iv.next185.prol = add nsw i64 %indvars.iv184.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter324
  br i1 %prol.iter.cmp.not, label %.lr.ph158.prol.loopexit, label %.lr.ph158.prol, !llvm.loop !160

.lr.ph158.prol.loopexit:                          ; preds = %.lr.ph158.prol, %.lr.ph158.preheader
  %indvars.iv184.unr = phi i64 [ %i.bo, %.lr.ph158.preheader ], [ %indvars.iv.next185.prol, %.lr.ph158.prol ]
  %i.br = sub i32 %i.u, %i.be
  %i.bs = icmp ugt i32 %i.br, -4
  br i1 %i.bs, label %._crit_edge, label %.lr.ph158

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0147155 = phi i32 [ %i.bb, %.lr.ph.preheader.new ], [ %i.cf, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bt = sext i32 %.0147155 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bt ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !49
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx
  store float %i.bv, ptr %i.bw, align 4, !tbaa !49
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !49
  %i.bx = add nsw i32 %.0147155, 1
  %i.by = and i32 %i.bx, %i.ab                    ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bz ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !49
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store float %i.cb, ptr %i.cd, align 4, !tbaa !49
  store float 0.000000e+00, ptr %i.ca, align 4, !tbaa !49
  %i.ce = add nsw i32 %i.by, 1
  %i.cf = and i32 %i.ce, %i.ab                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader154.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !161

.lr.ph158:                                        ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.3, %.lr.ph158 ], [ %indvars.iv184.unr, %.lr.ph158.prol.loopexit ] ; 5 uses
  %.idx221 = shl nsw i64 %indvars.iv184, 3
  %i.cg = getelementptr inbounds i8, ptr %i.bc, i64 %.idx221
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !49
  %indvars.iv.next185 = shl i64 %indvars.iv184, 3
  %i.ch = getelementptr i8, ptr %i.bc, i64 %indvars.iv.next185
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !49
  %indvars.iv.next185.1 = shl i64 %indvars.iv184, 3
  %i.cj = getelementptr i8, ptr %i.bc, i64 %indvars.iv.next185.1
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store float 0.000000e+00, ptr %i.ck, align 4, !tbaa !49
  %indvars.iv.next185.2 = shl i64 %indvars.iv184, 3
  %i.cl = getelementptr i8, ptr %i.bc, i64 %indvars.iv.next185.2
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !49
  %indvars.iv.next185.3 = add nsw i64 %indvars.iv184, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next185.3 to i32
  %exitcond186.not.3 = icmp eq i32 %i.be, %lftr.wideiv.3
  br i1 %exitcond186.not.3, label %._crit_edge, label %.lr.ph158, !llvm.loop !162

._crit_edge:                                      ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158, %.preheader154
  %i.cn = sext i32 %i.ay to i64
  %i.co = shl nsw i64 %i.cn, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.co, i1 false)
  %i.cp = icmp sgt i32 %i.y, 0
  br i1 %i.cp, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.cs = icmp sgt i32 %i.ay, 0
  %i.ct = getelementptr i8, ptr %i.b, i64 56      ; 5 uses
  %i.cu = zext nneg i32 %i.y to i64               ; 8 uses
  %wide.trip.count205 = zext nneg i32 %i.y to i64
  %wide.trip.count195 = zext i32 %i.ay to i64     ; 4 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 60
  %i.cv = shl nsw i64 %i.h, 2
  %i.cw = getelementptr i8, ptr %i.w, i64 %i.cv
  %scevgep240 = getelementptr i8, ptr %i.cw, i64 -4
  %i.cx = shl nuw nsw i64 %wide.trip.count195, 3  ; 4 uses
  %scevgep272 = getelementptr i8, ptr %i.l, i64 %i.cx
  %scevgep273 = getelementptr i8, ptr %i.l, i64 4
  %scevgep274 = getelementptr i8, ptr %i.ae, i64 %i.cx
  %scevgep275 = getelementptr i8, ptr %i.ae, i64 4
  %scevgep276 = getelementptr i8, ptr %i.ak, i64 %i.cx ; 2 uses
  %scevgep277 = getelementptr i8, ptr %i.ak, i64 4 ; 2 uses
  %i.cy = add nsw i64 %i.cx, -4                   ; 3 uses
  %scevgep278 = getelementptr i8, ptr %i.l, i64 %i.cy
  %scevgep279 = getelementptr i8, ptr %i.ae, i64 %i.cy
  %scevgep280 = getelementptr i8, ptr %i.ak, i64 %i.cy ; 2 uses
  %min.iters.check282 = icmp ult i32 %i.ay, 5
  %bound0284 = icmp ult ptr %i.ak, %scevgep279
  %bound1285 = icmp ult ptr %i.ae, %scevgep280
  %found.conflict286 = and i1 %bound0284, %bound1285
  %bound0291 = icmp ult ptr %scevgep277, %scevgep274
  %bound1292 = icmp ult ptr %scevgep275, %scevgep276
  %found.conflict293 = and i1 %bound0291, %bound1292
  %invariant.op = or i1 %found.conflict286, %found.conflict293
  %i.cz = and i64 %wide.trip.count195, 3          ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = select i1 %i.da, i64 4, i64 %i.cz
  %n.vec300 = sub nsw i64 %wide.trip.count195, %i.db ; 2 uses
  %ident.check.not = icmp eq i32 %i.y, 1
  %bound0241 = icmp ult ptr %i.bc, %scevgep
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %.loopexit
  %indvars.iv202 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next203, %.loopexit ] ; 6 uses
  %i.dc = load i32, ptr %i.cq, align 4, !tbaa !79
  %i.dd = zext i32 %i.dc to i64
  %i.de = icmp eq i64 %indvars.iv202, %i.dd
  br i1 %i.de, label %.preheader152, label %bb.c

.preheader152:                                    ; preds = %bb.b
  %i.df = load i32, ptr %i.bd, align 8, !tbaa !68 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %.preheader152
  %wide.trip.count200 = zext nneg i32 %i.df to i64 ; 7 uses
  %invariant.gep227 = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv202 ; 5 uses
  %min.iters.check = icmp ugt i32 %i.df, 8
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph167.preheader318

vector.memcheck:                                  ; preds = %.lr.ph167.preheader
  %i.dh = shl nuw nsw i64 %wide.trip.count200, 3
  %i.di = getelementptr i8, ptr %scevgep240, i64 %i.dh ; 2 uses
  %i.dj = add nuw i64 %indvars.iv202, %wide.trip.count200
  %i.dk = shl i64 %i.dj, 2
  %i.dl = getelementptr i8, ptr %i.v, i64 %i.dk
  %bound0 = icmp ult ptr %i.bc, %i.dl
  %bound1 = icmp ult ptr %invariant.gep227, %i.di
  %found.conflict = and i1 %bound0, %bound1
  %bound1242 = icmp ult ptr %i.ct, %i.di
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx = or i1 %found.conflict, %found.conflict243
  br i1 %conflict.rdx, label %.lr.ph167.preheader318, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %wide.trip.count200, 3          ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 4, i64 %i.dm
  %n.vec = sub nsw i64 %wide.trip.count200, %i.do ; 2 uses
  %i.dp = load float, ptr %i.ct, align 8, !tbaa !78, !alias.scope !178
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep227, i64 %index
  %wide.load = load <4 x float>, ptr %i.dq, align 4, !tbaa !49, !alias.scope !179
  %i.dr = shl nuw nsw i64 %index, 3
  %i.ds = shl i64 %index, 3
  %i.dt = shl i64 %index, 3
  %i.du = shl i64 %index, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dr ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dt
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.du
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %wide.vec = load <8 x float>, ptr %i.dv, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ec = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %strided.vec) ; 4 uses
  %i.ed = extractelement <4 x float> %i.ec, i64 0
  store float %i.ed, ptr %i.dv, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %i.ee = extractelement <4 x float> %i.ec, i64 1
  store float %i.ee, ptr %i.dx, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %i.ef = extractelement <4 x float> %i.ec, i64 2
  store float %i.ef, ptr %i.dz, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %i.eg = extractelement <4 x float> %i.ec, i64 3
  store float %i.eg, ptr %i.eb, align 4, !tbaa !49, !alias.scope !180, !noalias !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %.lr.ph167.preheader318, label %vector.body, !llvm.loop !167

.lr.ph167.preheader318:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph167.preheader
  %indvars.iv197.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph167.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.ei = sub nsw i64 %wide.trip.count200, %indvars.iv197.ph
  %xtraiter331 = and i64 %i.ei, 1
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.lr.ph167.prol.loopexit, label %.lr.ph167.prol

.lr.ph167.prol:                                   ; preds = %.lr.ph167.preheader318
  %i.ej = mul nuw nsw i64 %indvars.iv197.ph, %i.cu
  %gep228.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep227, i64 %i.ej
  %i.ek = load float, ptr %gep228.prol, align 4, !tbaa !49
  %i.el = load float, ptr %i.ct, align 8, !tbaa !78
  %.idx222.prol = shl nuw nsw i64 %indvars.iv197.ph, 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx222.prol ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !49
  %i.eo = tail call nsz float @llvm.fmuladd.f32(float %i.ek, float %i.el, float %i.en)
  store float %i.eo, ptr %i.em, align 4, !tbaa !49
  %indvars.iv.next198.prol = add nuw nsw i64 %indvars.iv197.ph, 1
  br label %.lr.ph167.prol.loopexit

.lr.ph167.prol.loopexit:                          ; preds = %.lr.ph167.prol, %.lr.ph167.preheader318
  %indvars.iv197.unr = phi i64 [ %indvars.iv197.ph, %.lr.ph167.preheader318 ], [ %indvars.iv.next198.prol, %.lr.ph167.prol ]
  %i.ep = add nsw i64 %wide.trip.count200, -1
  %i.eq = icmp eq i64 %indvars.iv197.ph, %i.ep
  br i1 %i.eq, label %.loopexit, label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.prol.loopexit, %.lr.ph167
  %indvars.iv197 = phi i64 [ %indvars.iv.next198.1, %.lr.ph167 ], [ %indvars.iv197.unr, %.lr.ph167.prol.loopexit ] ; 4 uses
  %i.er = mul nuw nsw i64 %indvars.iv197, %i.cu
  %gep228 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep227, i64 %i.er
  %i.es = load float, ptr %gep228, align 4, !tbaa !49
  %i.et = load float, ptr %i.ct, align 8, !tbaa !78
  %.idx222 = shl nuw nsw i64 %indvars.iv197, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx222 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !49
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.es, float %i.et, float %i.ev)
  store float %i.ew, ptr %i.eu, align 4, !tbaa !49
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.ex = mul nuw nsw i64 %indvars.iv.next198, %i.cu
  %gep228.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep227, i64 %i.ex
  %i.ey = load float, ptr %gep228.1, align 4, !tbaa !49
  %i.ez = load float, ptr %i.ct, align 8, !tbaa !78
  %.idx222.1 = shl nuw nsw i64 %indvars.iv.next198, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx222.1 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !49
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.ez, float %i.fb)
  store float %i.fc, ptr %i.fa, align 4, !tbaa !49
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %exitcond201.not.1 = icmp eq i64 %indvars.iv.next198.1, %wide.trip.count200
  br i1 %exitcond201.not.1, label %.loopexit, label %.lr.ph167, !llvm.loop !168

bb.c:                                             ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv202
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !31
  %i.ff = zext i8 %i.fe to i32
  %i.fg = mul i32 %i.ay, %i.ff
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = getelementptr [8 x i8], ptr %i.l, i64 %i.fh ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.co, i1 false)
  %i.fj = load i32, ptr %i.bd, align 8, !tbaa !68 ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph161.preheader, label %._crit_edge162

.lr.ph161.preheader:                              ; preds = %bb.c
  %wide.trip.count190 = zext nneg i32 %i.fj to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv202 ; 5 uses
  %xtraiter326 = and i64 %wide.trip.count190, 3   ; 3 uses
  %i.fl = icmp ult i32 %i.fj, 4
  br i1 %i.fl, label %.lr.ph161.epil.preheader, label %.lr.ph161.preheader.new

.lr.ph161.preheader.new:                          ; preds = %.lr.ph161.preheader
  %unroll_iter329 = and i64 %wide.trip.count190, 2147483644
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %indvars.iv187 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %indvars.iv.next188.3, %.lr.ph161 ] ; 6 uses
  %niter330 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter330.next.3, %.lr.ph161 ]
  %i.fm = mul nuw nsw i64 %indvars.iv187, %i.cu
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fm
  %i.fn = load float, ptr %gep, align 4, !tbaa !49
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv187
  store float %i.fn, ptr %i.fo, align 4, !tbaa !65
  %indvars.iv.next188 = or disjoint i64 %indvars.iv187, 1 ; 2 uses
  %i.fp = mul nuw nsw i64 %indvars.iv.next188, %i.cu
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fp
  %i.fq = load float, ptr %gep.1, align 4, !tbaa !49
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next188
  store float %i.fq, ptr %i.fr, align 4, !tbaa !65
  %indvars.iv.next188.1 = or disjoint i64 %indvars.iv187, 2 ; 2 uses
  %i.fs = mul nuw nsw i64 %indvars.iv.next188.1, %i.cu
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fs
  %i.ft = load float, ptr %gep.2, align 4, !tbaa !49
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next188.1
  store float %i.ft, ptr %i.fu, align 4, !tbaa !65
  %indvars.iv.next188.2 = or disjoint i64 %indvars.iv187, 3 ; 2 uses
  %i.fv = mul nuw nsw i64 %indvars.iv.next188.2, %i.cu
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fv
  %i.fw = load float, ptr %gep.3, align 4, !tbaa !49
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next188.2
  store float %i.fw, ptr %i.fx, align 4, !tbaa !65
  %indvars.iv.next188.3 = add nuw nsw i64 %indvars.iv187, 4 ; 2 uses
  %niter330.next.3 = add i64 %niter330, 4         ; 2 uses
  %niter330.ncmp.3 = icmp eq i64 %niter330.next.3, %unroll_iter329
  br i1 %niter330.ncmp.3, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !169

._crit_edge162.loopexit.unr-lcssa:                ; preds = %.lr.ph161
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %._crit_edge162, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %indvars.iv187.epil.init = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next188.3, %._crit_edge162.loopexit.unr-lcssa ]
  %lcmp.mod328 = icmp ne i64 %xtraiter326, 0
  tail call void @llvm.assume(i1 %lcmp.mod328)
  br label %.lr.ph161.epil

.lr.ph161.epil:                                   ; preds = %.lr.ph161.epil, %.lr.ph161.epil.preheader
  %indvars.iv187.epil = phi i64 [ %indvars.iv187.epil.init, %.lr.ph161.epil.preheader ], [ %indvars.iv.next188.epil, %.lr.ph161.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph161.epil.preheader ], [ %epil.iter.next, %.lr.ph161.epil ]
  %i.fy = mul nuw nsw i64 %indvars.iv187.epil, %i.cu
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fy
  %i.fz = load float, ptr %gep.epil, align 4, !tbaa !49
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv187.epil
  store float %i.fz, ptr %i.ga, align 4, !tbaa !65
  %indvars.iv.next188.epil = add nuw nsw i64 %indvars.iv187.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter326
  br i1 %epil.iter.cmp.not, label %._crit_edge162, label %.lr.ph161.epil, !llvm.loop !170

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.epil, %bb.c
  tail call void %i.at(ptr noundef %i.aq, ptr noundef %i.ae, ptr noundef %i.ah, i64 noundef 8) #8
  br i1 %i.cs, label %.lr.ph165.preheader, label %.loopexit

.lr.ph165.preheader:                              ; preds = %._crit_edge162
  br i1 %min.iters.check282, label %.lr.ph165.preheader319, label %vector.memcheck283

vector.memcheck283:                               ; preds = %.lr.ph165.preheader
  %i.gb = shl nsw i64 %i.fh, 3                    ; 3 uses
  %i.gc = getelementptr i8, ptr %scevgep278, i64 %i.gb
  %i.gd = getelementptr i8, ptr %scevgep273, i64 %i.gb
  %i.ge = getelementptr i8, ptr %scevgep272, i64 %i.gb
  %bound0287 = icmp ult ptr %i.ak, %i.gc
  %bound1288 = icmp ult ptr %i.fi, %scevgep280
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx294.reass = or i1 %found.conflict289, %invariant.op
  %bound0295 = icmp ult ptr %scevgep277, %i.ge
  %bound1296 = icmp ult ptr %i.gd, %scevgep276
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx298 = or i1 %conflict.rdx294.reass, %found.conflict297
  br i1 %conflict.rdx298, label %.lr.ph165.preheader319, label %vector.body301

vector.body301:                                   ; preds = %vector.memcheck283, %vector.body301
  %index302 = phi i64 [ %index.next314, %vector.body301 ], [ 0, %vector.memcheck283 ] ; 4 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %index302
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index302
  %wide.vec303 = load <8 x float>, ptr %i.gg, align 4, !tbaa !49 ; 2 uses
  %strided.vec304 = shufflevector <8 x float> %wide.vec303, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec305 = shufflevector <8 x float> %wide.vec303, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.vec306 = load <8 x float>, ptr %i.gf, align 4, !tbaa !65, !alias.scope !182 ; 3 uses
  %strided.vec307 = shufflevector <8 x float> %wide.vec306, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec309 = shufflevector <8 x float> %wide.vec306, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec310 = shufflevector <8 x float> %wide.vec306, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.gh = fneg nsz <4 x float> %strided.vec310
  %i.gi = fmul nsz <4 x float> %strided.vec305, %i.gh
  %i.gj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec304, <4 x float> %strided.vec307, <4 x float> %i.gi)
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index302 ; 2 uses
  %wide.vec311 = load <8 x float>, ptr %i.gk, align 4, !tbaa !49 ; 2 uses
  %strided.vec312 = shufflevector <8 x float> %wide.vec311, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec313 = shufflevector <8 x float> %wide.vec311, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gl = fadd nsz <4 x float> %strided.vec312, %i.gj
  %i.gm = fmul nsz <4 x float> %strided.vec305, %strided.vec309
  %i.gn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec304, <4 x float> %strided.vec310, <4 x float> %i.gm)
  %i.go = fadd nsz <4 x float> %strided.vec313, %i.gn
  %interleaved.vec = shufflevector <4 x float> %i.gl, <4 x float> %i.go, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.gk, align 4, !tbaa !49
  %index.next314 = add nuw i64 %index302, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next314, %n.vec300
  br i1 %i.gp, label %.lr.ph165.preheader319, label %vector.body301, !llvm.loop !173

.lr.ph165.preheader319:                           ; preds = %vector.body301, %vector.memcheck283, %.lr.ph165.preheader
  %indvars.iv192.ph = phi i64 [ 0, %vector.memcheck283 ], [ 0, %.lr.ph165.preheader ], [ %n.vec300, %vector.body301 ]
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader319, %.lr.ph165
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph165 ], [ %indvars.iv192.ph, %.lr.ph165.preheader319 ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv192 ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv192 ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !65 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !183 ; 2 uses
  %i.gv = load float, ptr %i.gq, align 4, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !183 ; 2 uses
  %i.gy = fneg nsz float %i.gx
  %i.gz = fmul nsz float %i.gu, %i.gy
  %i.ha = tail call nsz float @llvm.fmuladd.f32(float %i.gs, float %i.gv, float %i.gz)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv192 ; 3 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !65
  %i.hd = fadd nsz float %i.hc, %i.ha
  store float %i.hd, ptr %i.hb, align 4, !tbaa !65
  %i.he = load float, ptr %i.gq, align 4, !tbaa !65
  %i.hf = fmul nsz float %i.gu, %i.he
  %i.hg = tail call nsz float @llvm.fmuladd.f32(float %i.gs, float %i.gx, float %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !183
  %i.hj = fadd nsz float %i.hi, %i.hg
  store float %i.hj, ptr %i.hh, align 4, !tbaa !183
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %.loopexit, label %.lr.ph165, !llvm.loop !174

.loopexit:                                        ; preds = %.lr.ph165, %.lr.ph167.prol.loopexit, %.lr.ph167, %._crit_edge162, %.preheader152
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge172, label %bb.b, !llvm.loop !175

._crit_edge172:                                   ; preds = %.loopexit, %._crit_edge
  tail call void %i.aw(ptr noundef %i.an, ptr noundef %i.ae, ptr noundef %i.ak, i64 noundef 8) #8
  %i.hk = load i32, ptr %i.bd, align 8, !tbaa !68 ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph175, label %.preheader

.preheader:                                       ; preds = %bb.e, %._crit_edge172
  %.lcssa = phi i32 [ %i.hk, %._crit_edge172 ], [ %i.ia, %bb.e ]
  %i.hm = icmp sgt i32 %i.u, 1
  br i1 %i.hm, label %.lr.ph178.preheader, label %._crit_edge179

.lr.ph178.preheader:                              ; preds = %.preheader
  %i.hn = add nsw i32 %i.u, -1                    ; 3 uses
  %i.ho = sext i32 %.lcssa to i64
  %wide.trip.count213 = zext nneg i32 %i.hn to i64 ; 2 uses
  %invariant.gep229 = getelementptr [8 x i8], ptr %i.ae, i64 %i.ho ; 3 uses
  %xtraiter334 = and i64 %wide.trip.count213, 1
  %i.hp = icmp eq i32 %i.hn, 1
  br i1 %i.hp, label %.lr.ph178.epil.preheader, label %.lr.ph178.preheader.new

.lr.ph178.preheader.new:                          ; preds = %.lr.ph178.preheader
  %unroll_iter338 = and i64 %wide.trip.count213, 2147483646
  br label %.lr.ph178

.lr.ph175:                                        ; preds = %._crit_edge172, %bb.e
  %i.hq = phi i32 [ %i.ia, %bb.e ], [ %i.hk, %._crit_edge172 ]
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %bb.e ], [ 0, %._crit_edge172 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv207
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !65
  %.idx223 = shl nuw nsw i64 %indvars.iv207, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx223 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !49
  %i.hv = tail call nsz float @llvm.fmuladd.f32(float %i.hs, float %i.ba, float %i.hu) ; 2 uses
  store float %i.hv, ptr %i.ht, align 4, !tbaa !49
  %i.hw = tail call nsz float @llvm.fabs.f32(float %i.hv)
  %i.hx = fcmp nsz ogt float %i.hw, 1.000000e+00
  br i1 %i.hx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph175
  %i.hy = load i32, ptr %i.o, align 4, !tbaa !25
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.o, align 4, !tbaa !25
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph175, %bb.d
  %i.ia = phi i32 [ %i.hq, %.lr.ph175 ], [ %.pre, %bb.d ] ; 3 uses
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp slt i64 %indvars.iv.next208, %i.ib
  br i1 %i.ic, label %.lr.ph175, label %.preheader, !llvm.loop !176

.lr.ph178:                                        ; preds = %.lr.ph178, %.lr.ph178.preheader.new
  %indvars.iv210 = phi i64 [ 0, %.lr.ph178.preheader.new ], [ %indvars.iv.next211.1, %.lr.ph178 ] ; 4 uses
  %niter339 = phi i64 [ 0, %.lr.ph178.preheader.new ], [ %niter339.next.1, %.lr.ph178 ]
  %i.id = trunc i64 %indvars.iv210 to i32
  %i.ie = add i32 %.0147.lcssa, %i.id
  %i.if = and i32 %i.ie, %i.ab
  %gep230 = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv210
  %i.ig = load float, ptr %gep230, align 4, !tbaa !65
  %i.ih = sext i32 %i.if to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ih ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !49
  %i.ik = tail call nsz float @llvm.fmuladd.f32(float %i.ig, float %i.ba, float %i.ij)
  store float %i.ik, ptr %i.ii, align 4, !tbaa !49
  %indvars.iv.next211 = or disjoint i64 %indvars.iv210, 1 ; 2 uses
  %i.il = trunc i64 %indvars.iv.next211 to i32
  %i.im = add i32 %.0147.lcssa, %i.il
  %i.in = and i32 %i.im, %i.ab
  %gep230.1 = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv.next211
  %i.io = load float, ptr %gep230.1, align 4, !tbaa !65
  %i.ip = sext i32 %i.in to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ip ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !49
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %i.io, float %i.ba, float %i.ir)
  store float %i.is, ptr %i.iq, align 4, !tbaa !49
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %niter339.next.1 = add i64 %niter339, 2         ; 2 uses
  %niter339.ncmp.1 = icmp eq i64 %niter339.next.1, %unroll_iter338
  br i1 %niter339.ncmp.1, label %._crit_edge179.loopexit.unr-lcssa, label %.lr.ph178, !llvm.loop !177

._crit_edge179.loopexit.unr-lcssa:                ; preds = %.lr.ph178
  %lcmp.mod336.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod336.not, label %._crit_edge179, label %.lr.ph178.epil.preheader

.lr.ph178.epil.preheader:                         ; preds = %._crit_edge179.loopexit.unr-lcssa, %.lr.ph178.preheader
  %indvars.iv210.epil.init = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next211.1, %._crit_edge179.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod337 = trunc i32 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod337)
  %i.it = trunc i64 %indvars.iv210.epil.init to i32
  %i.iu = add i32 %.0147.lcssa, %i.it
  %i.iv = and i32 %i.iu, %i.ab
  %gep230.epil = getelementptr [8 x i8], ptr %invariant.gep229, i64 %indvars.iv210.epil.init
  %i.iw = load float, ptr %gep230.epil, align 4, !tbaa !65
  %i.ix = sext i32 %i.iv to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ix ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !49
  %i.ja = tail call nsz float @llvm.fmuladd.f32(float %i.iw, float %i.ba, float %i.iz)
  store float %i.ja, ptr %i.iy, align 4, !tbaa !49
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %.lr.ph178.epil.preheader, %._crit_edge179.loopexit.unr-lcssa, %.preheader
  store i32 %.0147.lcssa, ptr %i.i, align 4, !tbaa !25
  ret i32 0
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

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
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"float", !5, i64 0}
!21 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!22 = !{!"HeadphoneContext", !10, i64 0, !12, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !20, i64 48, !20, i64 52, !20, i64 56, !5, i64 64, !5, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !5, i64 104, !5, i64 120, !5, i64 136, !5, i64 152, !5, i64 168, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !9, i64 264, !5, i64 272, !21, i64 784, !5, i64 808, !5, i64 1064}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!22, !6, i64 44}
!25 = !{!6, !6, i64 0}
!26 = !{!22, !6, i64 100}
!27 = !{!22, !6, i64 40}
!28 = !{!22, !6, i64 16}
!29 = !{!22, !9, i64 264}
!30 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!18, !15, i64 32}
!33 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!36 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!37 = !{!"AVRational", !6, i64 0, !6, i64 4}
!38 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!39 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!40 = !{!"AVFilterFormatsConfig", !39, i64 0, !39, i64 8, !30, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!41 = !{!"AVFilterLink", !36, i64 0, !13, i64 8, !36, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !37, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !21, i64 72, !37, i64 96, !38, i64 104, !6, i64 112, !6, i64 116, !40, i64 120, !40, i64 168}
!42 = !{!41, !36, i64 16}
!43 = !{!22, !6, i64 32}
!44 = !{!41, !6, i64 76}
!45 = !{!22, !20, i64 48}
!46 = !{!22, !6, i64 36}
!47 = !{!22, !6, i64 88}
!48 = !{!22, !6, i64 92}
!49 = !{!20, !20, i64 0}
!50 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 float", !9, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"p1 _ZTS14AVComplexFloat", !9, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p2 omnipotent char", !14, i64 0}
!57 = !{!"long", !5, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!60 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !37, i64 124, !57, i64 136, !57, i64 144, !37, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !58, i64 248, !6, i64 256, !38, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !57, i64 304, !59, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !9, i64 376, !21, i64 384, !57, i64 408, !6, i64 416}
!61 = !{!12, !12, i64 0}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!"AVComplexFloat", !20, i64 0, !20, i64 4}
!65 = !{!64, !20, i64 0}
!66 = !{!9, !9, i64 0}
!67 = !{!41, !36, i64 0}
!68 = !{!60, !6, i64 112}
!69 = !{!"p1 int", !9, i64 0}
!70 = !{!"p2 float", !14, i64 0}
!71 = !{!"p2 _ZTS14AVComplexFloat", !14, i64 0}
!72 = !{!"ThreadData", !35, i64 0, !35, i64 8, !69, i64 16, !70, i64 24, !69, i64 32, !70, i64 40, !70, i64 48, !71, i64 56, !71, i64 64, !71, i64 72}
!73 = !{!72, !35, i64 0}
!74 = !{!72, !35, i64 8}
!75 = !{!72, !69, i64 16}
!76 = !{!72, !70, i64 24}
!77 = !{!72, !69, i64 32}
!78 = !{!22, !20, i64 56}
!79 = !{!22, !6, i64 20}
!80 = !{!72, !70, i64 40}
!81 = !{!60, !6, i64 388}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = !{!22, !12, i64 8}
!86 = !{!"AVFilterPad", !12, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!87 = !{!86, !12, i64 0}
!88 = !{!86, !6, i64 8}
!89 = !{!"AVFloatDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88}
!90 = !{!89, !9, i64 72}
!91 = distinct !{!91, !23}
!92 = !{!30, !30, i64 0}
!93 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!21, !6, i64 0}
!96 = !{!21, !6, i64 4}
!97 = !{!21, !9, i64 16}
!98 = distinct !{!98, !23}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, i1 false, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !100}
!104 = distinct !{!104, !23, !62, !63}
!105 = distinct !{!105, !23, !62}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !106}
!110 = distinct !{!110, !23, !62, !63}
!111 = distinct !{!111, !23, !62}
!112 = distinct !{null}
!113 = distinct !{!113, i1 false, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = distinct !{!117, !113}
!118 = distinct !{!118, !23, !62, !63}
!119 = distinct !{!119, !23, !62}
!120 = distinct !{!120, !23, !62}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = !{!18, !15, i64 56}
!124 = !{!35, !35, i64 0}
!125 = !{!18, !6, i64 40}
!126 = !{!22, !6, i64 28}
!127 = !{!"hrir_inputs", !6, i64 0, !6, i64 4}
!128 = !{!127, !6, i64 4}
!129 = !{!127, !6, i64 0}
!130 = !{!22, !6, i64 96}
!131 = !{!60, !56, i64 96}
!132 = !{!101}
!133 = !{!102}
!134 = !{!103, !101}
!135 = !{!103}
!136 = !{!107}
!137 = !{!108}
!138 = !{!109, !107}
!139 = !{!109}
!140 = !{!114}
!141 = !{!115}
!142 = !{!117, !116, !114}
!143 = !{!116}
!144 = !{!117}
!145 = !{!116, !114}
!146 = !{!22, !6, i64 24}
!147 = !{!60, !57, i64 136}
!148 = !{!14, !14, i64 0}
!149 = !{!72, !71, i64 72}
!150 = !{!57, !57, i64 0}
!151 = !{!22, !20, i64 52}
!152 = distinct !{!152, !82}
!153 = distinct !{!153, !23}
!154 = distinct !{!154, !82}
!155 = distinct !{!155, !23}
!156 = distinct !{!156, !23}
!157 = distinct !{!157, !23}
!158 = distinct !{!158, !82}
!159 = !{!72, !70, i64 48}
!160 = distinct !{!160, !82}
!161 = distinct !{!161, !23}
!162 = distinct !{!162, !23}
!163 = distinct !{!163, i1 false, !"LVerDomain"}
!164 = distinct !{!164, !163}
!165 = distinct !{!165, !163}
!166 = distinct !{!166, !163}
!167 = distinct !{!167, !23, !62, !63}
!168 = distinct !{!168, !23, !62}
!169 = distinct !{!169, !23}
!170 = distinct !{!170, !82}
!171 = distinct !{!171, i1 false, !"LVerDomain"}
!172 = distinct !{!172, !171}
!173 = distinct !{!173, !23, !62, !63}
!174 = distinct !{!174, !23, !62}
!175 = distinct !{!175, !23}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
!178 = !{!164}
!179 = !{!165}
!180 = !{!166}
!181 = !{!165, !164}
!182 = !{!172}
!183 = !{!64, !20, i64 4}
end_hunk_0
