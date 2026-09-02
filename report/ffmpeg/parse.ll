Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/parse?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_opus_parse_packet:bb.a
  store i32 %i.ir, ptr %i.jm, align 4, !tbaa !10
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %thread-pre-split, label %.lr.ph379, !llvm.loop !17

thread-pre-split:                                 ; preds = %.lr.ph379, %middle.block, %bb.be, %bb.k, %bb.t, %bb.ae, %._crit_edge376
  %i.jn = phi i32 [ 1, %bb.k ], [ %i.dw, %._crit_edge376 ], [ 2, %bb.ae ], [ 2, %bb.t ], [ %i.dw, %bb.be ], [ %i.dw, %middle.block ], [ %i.dw, %.lr.ph379 ]
  %.10.ph = phi i32 [ %.1211, %bb.k ], [ %.7217, %._crit_edge376 ], [ %.5215, %bb.ae ], [ %.3213, %bb.t ], [ %.9, %bb.be ], [ %.9, %middle.block ], [ %.9, %.lr.ph379 ] ; 2 uses
  %.1203.ph = phi i32 [ 0, %bb.k ], [ %.0202, %._crit_edge376 ], [ 0, %bb.ae ], [ 0, %bb.t ], [ %.0202, %bb.be ], [ %.0202, %middle.block ], [ %.0202, %.lr.ph379 ]
  store i32 %.10.ph, ptr %0, align 4, !tbaa !27
  %i.jo = sub nsw i32 %.10.ph, %.1203.ph
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !28
  %i.jq = zext nneg i32 %i.l to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr @ff_opus_frame_duration, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !29
  %i.jt = zext i16 %i.js to i32                   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !30
  %i.jv = mul nuw nsw i32 %i.jn, %i.jt
  %i.jw = icmp samesign ugt i32 %i.jv, 5760
  br i1 %i.jw, label %.thread, label %bb.bf

default.unreachable445:                           ; preds = %bb.c
  unreachable

bb.bf:                                            ; preds = %thread-pre-split
  %i.jx = icmp ult i8 %i.e, 96
  br i1 %i.jx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 0, ptr %i.jy, align 4, !tbaa !31
  %i.jz = lshr i32 %i.f, 5
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !32
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.kb = icmp sgt i8 %i.e, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 3 uses
  br i1 %i.kb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 1, ptr %i.kc, align 4, !tbaa !31
  %i.ke = icmp samesign ugt i8 %i.e, 111
  %i.kf = select i1 %i.ke, i32 4, i32 3
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !32
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  store i32 2, ptr %i.kc, align 4, !tbaa !31
  %i.kg = add nsw i32 %i.l, -16
  %i.kh = lshr i32 %i.kg, 2                       ; 3 uses
  store i32 %i.kh, ptr %i.kd, align 4, !tbaa !32
  %.not247 = icmp eq i32 %i.kh, 0
  br i1 %.not247, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ki = add nuw nsw i32 %i.kh, 1
  store i32 %i.ki, ptr %i.kd, align 4, !tbaa !32
  br label %bb.bl

.thread:                                          ; preds = %bb.ai, %bb.ak, %bb.am, %bb.ay, %bb.ba, %bb.ao, %bb.aq, %xiph_lacing_16bit.exit272, %bb.at, %bb.ah, %bb.y, %bb.aa, %xiph_lacing_16bit.exit263, %bb.u, %bb.w, %bb.m, %bb.o, %xiph_lacing_16bit.exit255, %bb.e, %bb.g, %xiph_lacing_16bit.exit, %thread-pre-split, %bb.bd, %xiph_lacing_16bit.exit276, %xiph_lacing_full.exit, %bb.af, %bb.ad, %bb.r, %bb.s, %bb.j, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(424) %0, i8 0, i64 424, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bg, %bb.bj, %bb.bk, %bb.bi, %.thread
  %.0209 = phi i32 [ -1094995529, %.thread ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bg ]
  ret i32 %.0209
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -2147483648, 1) i32 @ff_opus_parse_extradata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.AVChannelLayout, align 8    ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.c, 2
  br i1 %i.f, label %bb.c, label %.thread176

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str) #7
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56   ; 3 uses
  %i.i = icmp slt i32 %i.h, 19
  br i1 %i.i, label %bb.e, label %.thread164

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.h) #7
  br label %bb.an

.thread164:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9     ; 2 uses
  %i.l = icmp ugt i8 %i.k, 15
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread164
  %i.m = zext i8 %i.k to i32
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.m) #7
  br label %bb.an

.thread176:                                       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.n, align 4, !tbaa !57
  %i.o = icmp eq i32 %i.c, 1
  %i.p = select i1 %i.o, i32 1, i32 2
  br label %bb.i

bb.g:                                             ; preds = %.thread164
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.r = load i16, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.s, ptr %i.t, align 4, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9     ; 2 uses
  %i.w = zext i8 %i.v to i32
  %.not149 = icmp eq i8 %i.v, 0
  br i1 %.not149, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %bb.an

bb.i:                                             ; preds = %.thread176, %bb.g
  %i.x = phi i32 [ %i.p, %.thread176 ], [ %i.w, %bb.g ] ; 15 uses
  %.0130162168172181 = phi i32 [ 30, %.thread176 ], [ %i.h, %bb.g ] ; 2 uses
  %.0128163167175180 = phi ptr [ @opus_default_extradata, %.thread176 ], [ %i.e, %bb.g ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0128163167175180, i64 16
  %i.z = load i16, ptr %i.y, align 1, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.z, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %.0128163167175180, i64 18
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9   ; 4 uses
  %i.ad = zext i8 %i.ac to i32
  %.not150 = icmp eq i8 %i.ac, 0
  br i1 %.not150, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp samesign ugt i32 %i.x, 2
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #7
  br label %bb.am

bb.l:                                             ; preds = %bb.j
  %i.af = icmp eq i32 %i.x, 1                     ; 2 uses
  %spec.select = select i1 %i.af, i32 1, i32 2
  %spec.select223 = select i1 %i.af, i64 4, i64 3
  store i32 1, ptr %2, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %spec.select, ptr %i.ag, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select223, ptr %i.ah, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !61
  %i.aj = add nsw i32 %i.x, -1
  br label %bb.ab

bb.m:                                             ; preds = %bb.i
  %i.ak = add i8 %i.ac, 1
  %or.cond3 = icmp ult i8 %i.ak, 4
  br i1 %or.cond3, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.al = add nuw nsw i32 %i.x, 21
  %i.am = icmp samesign ult i32 %.0130162168172181, %i.al
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %.0130162168172181) #7
  br label %bb.am

bb.p:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.0128163167175180, i64 19
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9   ; 4 uses
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0128163167175180, i64 20
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9   ; 3 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %.not151 = icmp eq i8 %i.ao, 0
  %i.at = icmp ugt i8 %i.ar, %i.ao
  %3 = xor i8 %i.ao, -1
  %add.overflow = icmp ugt i8 %i.ar, %3
  %4 = or i1 %i.at, %add.overflow
  %or.cond157.a = select i1 %.not151, i1 true, i1 %4
  br i1 %or.cond157.a, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.ap, i32 noundef %i.as) #7
  br label %bb.am

bb.r:                                             ; preds = %bb.p
  switch i8 %i.ac, label %bb.z [
    i8 1, label %bb.s
    i8 2, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.au = icmp samesign ugt i32 %i.x, 8
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #7
  br label %bb.am

bb.u:                                             ; preds = %bb.s
  %i.av = zext nneg i32 %i.x to i64
  %i.aw = getelementptr [24 x i8], ptr @ff_vorbis_ch_layouts, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = call i32 @av_channel_layout_copy(ptr noundef nonnull %2, ptr noundef %i.ax) #7 ; 0 uses
  br label %.thread189

bb.v:                                             ; preds = %bb.r
  %.not.i = icmp eq i32 %i.x, 255
  br i1 %.not.i, label %ff_sqrt.exit.thread, label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.v
  %i.az = zext nneg i32 %i.x to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -1
  %i.bf = ashr i32 %i.be, 4                       ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.bf                ; 2 uses
  %.not152 = icmp eq i32 %i.x, %i.bg              ; 2 uses
  %i.bh = add nuw nsw i32 %i.bg, 2
  %.not153 = icmp eq i32 %i.x, %i.bh
  %or.cond158 = select i1 %.not152, i1 true, i1 %.not153
  br i1 %or.cond158, label %bb.x, label %bb.w

ff_sqrt.exit.thread:                              ; preds = %bb.v
  %i.bi = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_sqrt_tab, i64 15), align 1, !tbaa !9 ; 2 uses
  %i.bj = lshr i8 %i.bi, 2
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = icmp ugt i8 %i.bi, 63
  %.neg.i = sext i1 %i.bl to i32
  %i.bm = add nsw i32 %.neg.i, %i.bk              ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.bm
  %i.bo = and i32 %i.bn, 2147483645
  %or.cond158185 = icmp eq i32 %i.bo, 253
  br i1 %or.cond158185, label %.thread187, label %bb.w

bb.w:                                             ; preds = %ff_sqrt.exit.thread, %ff_sqrt.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %bb.am

.thread187:                                       ; preds = %ff_sqrt.exit.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8) #7
  br label %bb.am

bb.x:                                             ; preds = %ff_sqrt.exit
  store i32 3, ptr %2, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.x, ptr %i.bp, align 4, !tbaa !63
  br i1 %.not152, label %.thread189, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.bq, align 8, !tbaa !9
  br label %.thread189

bb.z:                                             ; preds = %bb.r
  store i32 0, ptr %2, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.x, ptr %i.br, align 4, !tbaa !63
  br label %.thread189

.thread189:                                       ; preds = %bb.x, %bb.y, %bb.z, %bb.u
  %.0127 = phi ptr [ @channel_reorder_vorbis, %bb.u ], [ @channel_reorder_unknown, %bb.z ], [ @channel_reorder_unknown, %bb.y ], [ @channel_reorder_unknown, %bb.x ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0128163167175180, i64 21
  br label %bb.ab

bb.aa:                                            ; preds = %bb.m
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.ad) #7
  br label %bb.an

bb.ab:                                            ; preds = %.thread189, %bb.l
  %.0138 = phi i32 [ %i.ap, %.thread189 ], [ 1, %bb.l ] ; 2 uses
  %.0137 = phi i32 [ %i.as, %.thread189 ], [ %i.aj, %bb.l ] ; 4 uses
  %.0129 = phi ptr [ %i.bs, %.thread189 ], [ @ff_opus_parse_extradata.default_channel_map, %bb.l ] ; 2 uses
  %.1 = phi ptr [ %.0127, %.thread189 ], [ @channel_reorder_unknown, %bb.l ] ; 2 uses
  %i.bt = zext nneg i32 %i.x to i64               ; 2 uses
  %i.bu = call noalias ptr @av_calloc(i64 noundef %i.bt, i64 noundef 20) #7 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !64
  %.not154 = icmp eq ptr %i.bu, null
  br i1 %.not154, label %bb.am, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.ab
  %i.bw = add nuw nsw i32 %.0137, %.0138
  %i.bx = shl nuw nsw i32 %.0137, 1
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph198, %bb.ak
  %indvars.iv = phi i64 [ 0, %.lr.ph198 ], [ %indvars.iv.next, %bb.ak ] ; 5 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.by, i64 %indvars.iv ; 5 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cb = call i32 %.1(i32 noundef %i.x, i32 noundef %i.ca) #7, !callees !65
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %.0129, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9   ; 3 uses
  %i.cf = zext i8 %i.ce to i32                    ; 6 uses
  %i.cg = icmp eq i8 %i.ce, -1
  br i1 %i.cg, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not155 = icmp sgt i32 %i.bw, %i.cf
  br i1 %.not155, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !67
  %.not200 = icmp eq i64 %indvars.iv, 0
  br i1 %.not200, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae, %bb.ag
  %.0135196 = phi i32 [ %i.co, %bb.ag ], [ 0, %bb.ae ] ; 3 uses
  %i.ci = call i32 %.1(i32 noundef %i.x, i32 noundef %.0135196) #7, !callees !65
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %.0129, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cm = icmp eq i8 %i.cl, %i.ce
  br i1 %i.cm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph
  store i32 1, ptr %i.ch, align 4, !tbaa !67
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 %.0135196, ptr %i.cn, align 4, !tbaa !68
  br label %.loopexit

bb.ag:                                            ; preds = %.lr.ph
  %i.co = add nuw nsw i32 %.0135196, 1            ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %exitcond.not = icmp eq i64 %indvars.iv, %i.cp
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !33

.loopexit:                                        ; preds = %bb.ag, %bb.ae, %bb.af
  %i.cq = icmp samesign ugt i32 %i.bx, %i.cf
  br i1 %i.cq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  %i.cr = lshr i32 %i.cf, 1
  store i32 %i.cr, ptr %i.bz, align 4, !tbaa !69
  %i.cs = and i32 %i.cf, 1
  br label %bb.ak

bb.ai:                                            ; preds = %.loopexit
  %i.ct = sub nuw nsw i32 %i.cf, %.0137
  store i32 %i.ct, ptr %i.bz, align 4, !tbaa !69
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %i.ca, i32 noundef %i.cf) #7
  call void @av_freep(ptr noundef nonnull %i.bv) #7
  br label %bb.am

bb.ak:                                            ; preds = %bb.ac, %bb.ai, %bb.ah
  %.sink225 = phi i64 [ 4, %bb.ah ], [ 4, %bb.ai ], [ 16, %bb.ac ]
  %.sink = phi i32 [ %i.cs, %bb.ah ], [ 0, %bb.ai ], [ 1, %bb.ac ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink225
  store i32 %.sink, ptr %i.cu, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next, %i.bt
  br i1 %exitcond205.not, label %._crit_edge, label %bb.ac, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.ak
  %i.cv = call i32 @av_channel_layout_copy(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #7 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  store i32 %.0138, ptr %1, align 8, !tbaa !70
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0137, ptr %i.cx, align 4, !tbaa !71
  br label %bb.an

bb.am:                                            ; preds = %bb.aj, %bb.w, %.thread187, %bb.ab, %._crit_edge, %bb.t, %bb.q, %bb.o, %bb.k
  %.5 = phi i32 [ -1094995529, %bb.o ], [ -1094995529, %bb.q ], [ -1094995529, %bb.t ], [ -1094995529, %bb.aj ], [ %i.cv, %._crit_edge ], [ -1094995529, %bb.k ], [ -12, %bb.ab ], [ -1094995529, %.thread187 ], [ -1094995529, %bb.w ]
  call void @av_channel_layout_uninit(ptr noundef nonnull %2) #7
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aa, %bb.h, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ -1094995529, %bb.e ], [ -1163346256, %bb.f ], [ %.5, %bb.am ], [ -1094995529, %bb.h ], [ 0, %bb.al ], [ -22, %bb.c ], [ -1163346256, %bb.aa ]
end_hunk_0
