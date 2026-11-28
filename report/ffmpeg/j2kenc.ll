Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/j2kenc?download=true
inline.NumInlined: 83
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@encode_frame:bb.a
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 1 ; 2 uses
  %exitcond86.not.i.i = icmp eq i64 %indvars.iv.next83.i.i, %wide.trip.count85.i.i
  br i1 %exitcond86.not.i.i, label %._crit_edge62.split.i.i, label %.preheader.i218.i, !llvm.loop !193

._crit_edge62.split.i.i:                          ; preds = %._crit_edge60.i.i, %.preheader.lr.ph.i.i, %bb.cn
  %indvars.iv.next90.i.i = add nuw nsw i64 %indvars.iv89.i.i, 1 ; 2 uses
  %exitcond95.not.i.i = icmp eq i64 %indvars.iv.next90.i.i, %i.bjq
  br i1 %exitcond95.not.i.i, label %._crit_edge70.i.i, label %bb.cn, !llvm.loop !194

._crit_edge70.i.i:                                ; preds = %._crit_edge62.split.i.i
  %indvars.iv.next97.i.i = add nuw nsw i64 %indvars.iv96.i.i, 1 ; 2 uses
  %exitcond100.not.i.i = icmp eq i64 %indvars.iv.next97.i.i, %wide.trip.count99.i.i
  br i1 %exitcond100.not.i.i, label %makelayers.exit.i, label %.lr.ph69.i.i, !llvm.loop !195

makelayers.exit.i:                                ; preds = %.loopexit.i.i, %._crit_edge70.i.i, %.lr.ph73.i.i, %bb.cm, %.preheader127.i.i
  %i.bmp = load i32, ptr %i.yz, align 8, !tbaa !38
  %i.bmq = call fastcc i32 @encode_packets(ptr noundef %i.b, ptr noundef %i.aev, i32 noundef %i.aec, i32 noundef %i.bmp) ; 2 uses
  %i.bmr = icmp slt i32 %i.bmq, 0
  br i1 %i.bmr, label %encode_tile.exit.thread, label %bb.cu

encode_tile.exit.thread:                          ; preds = %makelayers.exit.i, %.lr.ph315.i, %bb.as, %.thread.i
  %.9.i.ph = phi i32 [ %i.afk, %.lr.ph315.i ], [ -12, %bb.as ], [ -12, %.thread.i ], [ %i.bmq, %makelayers.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %put_siz.exit

bb.cu:                                            ; preds = %makelayers.exit.i
  %i.bms = load ptr, ptr %i.acm, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bms, i32 noundef 48, ptr noundef nonnull @.str.54) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.bmt = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.bmu = ptrtoint ptr %i.bmt to i64
  %i.bmv = ptrtoint ptr %i.aeg to i64
  %i.bmw = sub i64 %i.bmu, %i.bmv
  %i.bmx = trunc i64 %i.bmw to i32
  %i.bmy = add i32 %i.bmx, 6
  %i.bmz = call i32 @llvm.bswap.i32(i32 %i.bmy)
  store i32 %i.bmz, ptr %i.aeg, align 1, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bna = load i32, ptr %i.ny, align 8, !tbaa !60
  %i.bnb = load i32, ptr %i.nx, align 4, !tbaa !62
  %i.bnc = mul nsw i32 %i.bnb, %i.bna
  %i.bnd = sext i32 %i.bnc to i64
  %i.bne = icmp slt i64 %indvars.iv.next, %i.bnd
  br i1 %i.bne, label %bb.ad, label %._crit_edge.loopexit, !llvm.loop !196

._crit_edge.loopexit:                             ; preds = %bb.cu
  %.pre346 = load ptr, ptr %i.s, align 8, !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %put_com.exit
  %i.bnf = phi ptr [ %.pre346, %._crit_edge.loopexit ], [ %i.ade, %put_com.exit ] ; 2 uses
  %i.bng = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.bnh = ptrtoint ptr %i.bng to i64
  %i.bni = ptrtoint ptr %i.bnf to i64
  %i.bnj = sub i64 %i.bnh, %i.bni
  %i.bnk = icmp slt i64 %i.bnj, 2
  br i1 %i.bnk, label %put_siz.exit, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge
  store i16 -9729, ptr %i.bnf, align 1, !tbaa !52
  %i.bnl = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 2 ; 2 uses
  store ptr %i.bnm, ptr %i.s, align 8, !tbaa !37
  %i.bnn = load i32, ptr %i.nz, align 4, !tbaa !42
  %i.bno = icmp eq i32 %i.bnn, 1
  br i1 %i.bno, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.bnp = ptrtoint ptr %i.bnm to i64
  %i.bnq = ptrtoint ptr %.0141 to i64
  %i.bnr = sub i64 %i.bnp, %i.bnq
  %i.bns = trunc i64 %i.bnr to i32
  %i.bnt = call i32 @llvm.bswap.i32(i32 %i.bns)
  store i32 %i.bnt, ptr %.0141, align 1, !tbaa !52
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.bnu = load ptr, ptr %i.acm, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bnu, i32 noundef 48, ptr noundef nonnull @.str.48) #11
  %i.bnv = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.bnw = load ptr, ptr %i.r, align 8, !tbaa !201
  %i.bnx = ptrtoint ptr %i.bnv to i64
  %i.bny = ptrtoint ptr %i.bnw to i64
  %i.bnz = sub i64 %i.bnx, %i.bny
  %i.boa = trunc i64 %i.bnz to i32
  store i32 %i.boa, ptr %i.t, align 8, !tbaa !202
  store i32 1, ptr %3, align 4, !tbaa !39
  br label %put_siz.exit

put_siz.exit:                                     ; preds = %bb.ad, %bb.ae, %encode_tile.exit.thread, %bb.ab, %.loopexit271, %bb.y, %bb.t, %._crit_edge, %bb.s, %bb.a, %bb.cx
  %.2 = phi i32 [ 0, %bb.cx ], [ %i.n, %bb.a ], [ -1, %bb.s ], [ -1, %._crit_edge ], [ -1, %bb.y ], [ -1, %bb.t ], [ -1, %bb.ab ], [ -1, %.loopexit271 ], [ %.9.i.ph, %encode_tile.exit.thread ], [ -1, %bb.ae ], [ -1, %bb.ad ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @j2kenc_destroy(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %cleanup.exit, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.h = load i32, ptr %i.f, align 8, !tbaa !60
  %i.i = load i32, ptr %i.g, align 4, !tbaa !62
  %i.j = mul nsw i32 %i.i, %i.h
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph25.i, label %._crit_edge26.i

.lr.ph25.i:                                       ; preds = %.preheader22.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph25.i
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph25.i ], [ %indvars.iv.next29.i, %bb.c ] ; 5 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv28.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67
  %.not21.i = icmp eq ptr %i.o, null
  br i1 %.not21.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.p = load i32, ptr %i.l, align 4, !tbaa !51
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv28.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw [408 x i8], ptr %i.t, i64 %indvars.iv.i
  tail call void @ff_jpeg2000_cleanup(ptr noundef %i.u, ptr noundef nonnull %i.c) #11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !51
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !219

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !63
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.y = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.m, %.preheader.i ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv28.i
  tail call void @av_freep(ptr noundef %i.z) #11
  %.pre31.i = load ptr, ptr %i.d, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.b
  %i.aa = phi ptr [ %.pre31.i, %._crit_edge.i ], [ %i.m, %bb.b ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv28.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.ac) #11
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !60
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !62
  %i.af = mul nsw i32 %i.ae, %i.ad
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next29.i, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge26.i, !llvm.loop !220

._crit_edge26.i:                                  ; preds = %bb.c, %.preheader22.i
  tail call void @av_freep(ptr noundef nonnull %i.d) #11
  br label %cleanup.exit

cleanup.exit:                                     ; preds = %bb.a, %._crit_edge26.i
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal void @init_luts() #0 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind36 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next39, %vector.body ] ; 3 uses
  %vec.ind37 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next40, %vector.body ] ; 2 uses
  %vec.ind38 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next41, %vector.body ] ; 2 uses
  %i.a = mul <4 x i32> %vec.ind37, splat (i32 384)
  %i.b = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.a, <4 x i32> splat (i32 18432))
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig, i64 %index
  store <4 x i32> %i.b, ptr %i.c, align 16, !tbaa !39
  %i.d = mul nuw nsw <4 x i64> %vec.ind, %vec.ind
  %i.e = trunc <4 x i64> %i.d to <4 x i32>        ; 2 uses
  %i.f = shl <4 x i32> %i.e, splat (i32 1)
  %i.g = add <4 x i32> %i.f, splat (i32 64)
  %i.h = and <4 x i32> %i.g, splat (i32 65408)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_sig0, i64 %index
  store <4 x i32> %i.h, ptr %i.i, align 16, !tbaa !39
  %i.j = lshr <4 x i32> %vec.ind36, splat (i32 5)
  %i.k = or <4 x i32> %i.j, splat (i32 1)         ; 3 uses
  %i.l = add nsw <4 x i32> %i.k, splat (i32 -2)
  %0 = shl nuw nsw <4 x i32> %vec.ind36, splat (i32 7)
  %i.m = shl nuw nsw <4 x i32> %vec.ind38, splat (i32 7)
  %i.n = mul nsw <4 x i32> %i.l, %i.m
  %i.o = add nsw <4 x i32> %i.n, splat (i32 8192)
  %i.p = mul <4 x i32> %i.k, splat (i32 -2048)
  %i.q = mul <4 x i32> %i.p, %i.k
  %i.r = add <4 x i32> %i.o, %i.q
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> zeroinitializer)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_ref, i64 %index
  store <4 x i32> %i.s, ptr %i.t, align 16, !tbaa !39
  %i.u = sub nsw <4 x i32> %i.e, %0               ; 2 uses
  %i.v = shl nsw <4 x i32> %i.u, splat (i32 1)
  %i.w = icmp sgt <4 x i32> %i.u, splat (i32 -4065)
  %i.x = add nsw <4 x i32> %i.v, splat (i32 8256)
  %i.y = and <4 x i32> %i.x, splat (i32 -128)
  %i.z = select <4 x i1> %i.w, <4 x i32> %i.y, <4 x i32> zeroinitializer
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @lut_nmsedec_ref0, i64 %index
  store <4 x i32> %i.z, ptr %i.aa, align 16, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next39 = add <4 x i32> %vec.ind36, splat (i32 4)
  %vec.ind.next40 = add <4 x i32> %vec.ind37, splat (i32 4)
  %vec.ind.next41 = add <4 x i32> %vec.ind38, splat (i32 4)
  %i.ab = icmp eq i64 %index.next, 128
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  tail call void @ff_jpeg2000_init_tier1_luts() #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @av_strtok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

declare void @ff_jpeg2000_init_tier1_luts() local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_jpeg2000_init_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @ff_jpeg2000_reinit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @ff_dwt_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1163346256, 1) i32 @encode_packets(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = srem i32 %2, %i.d
  %i.f = sdiv i32 %2, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.i = mul nsw i32 %i.h, %i.e                   ; 13 uses
  %i.j = add nsw i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !59
  %. = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.l) ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !48   ; 2 uses
  %i.o = mul nsw i32 %i.n, %i.f                   ; 13 uses
  %i.p = add nsw i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !61
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.r) ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.u, i32 noundef 48, ptr noundef nonnull @.str.55) #11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 932
  %i.w = load i32, ptr %i.v, align 4, !tbaa !79
  switch i32 %i.w, label %.loopexit [
    i32 0, label %.preheader628
    i32 1, label %.preheader632
    i32 2, label %.preheader640
    i32 3, label %.preheader649
    i32 4, label %.preheader656
  ]

.preheader656:                                    ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph705, label %.loopexit

.lr.ph705:                                        ; preds = %.preheader656
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = icmp slt i32 %i.o, %i.s
  %i.ad = icmp slt i32 %i.i, %.
  %i.ae = sext i32 %i.i to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = sext i32 %i.o to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = icmp sgt i32 %3, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 499
  br label %bb.aa

.preheader649:                                    ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51 ; 5 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph717, label %._crit_edge718.thread

.lr.ph717:                                        ; preds = %.preheader649
  %i.an = load ptr, ptr %1, align 8, !tbaa !67
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !55  ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph710.us.preheader, label %._crit_edge718.thread

.lr.ph710.us.preheader:                           ; preds = %.lr.ph717
  %wide.trip.count859 = zext nneg i32 %i.al to i64
  %wide.trip.count854 = zext nneg i32 %i.ao to i64 ; 3 uses
  %min.iters.check1034 = icmp ult i32 %i.ao, 8
  %n.vec1036 = and i64 %wide.trip.count854, 2147483640 ; 3 uses
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n1056 = icmp eq i64 %n.vec1036, %wide.trip.count854
  br label %.lr.ph710.us

.lr.ph710.us:                                     ; preds = %.lr.ph710.us.preheader, %._crit_edge711.us
  %indvars.iv856 = phi i64 [ 0, %.lr.ph710.us.preheader ], [ %indvars.iv.next857, %._crit_edge711.us ] ; 2 uses
  %.2467716.us = phi i32 [ 32, %.lr.ph710.us.preheader ], [ %.lcssa1023, %._crit_edge711.us ] ; 2 uses
  %.2472715.us = phi i32 [ 32, %.lr.ph710.us.preheader ], [ %..3473.us.lcssa, %._crit_edge711.us ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [408 x i8], ptr %i.an, i64 %indvars.iv856
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 9 uses
  br i1 %min.iters.check1034, label %scalar.ph1033.preheader, label %vector.ph1035

vector.ph1035:                                    ; preds = %.lr.ph710.us
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %.2467716.us, i64 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %.2472715.us, i64 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1035
  %index1044 = phi i64 [ 0, %vector.ph1035 ], [ %index.next1051, %vector.body1043 ] ; 9 uses
  %vec.phi1045 = phi <4 x i32> [ %broadcast.splat1038, %vector.ph1035 ], [ %i.dl, %vector.body1043 ]
  %vec.phi1046 = phi <4 x i32> [ %broadcast.splat1038, %vector.ph1035 ], [ %i.dm, %vector.body1043 ]
  %vec.phi1047 = phi <4 x i32> [ %broadcast.splat1040, %vector.ph1035 ], [ %i.ch, %vector.body1043 ]
  %vec.phi1048 = phi <4 x i32> [ %broadcast.splat1040, %vector.ph1035 ], [ %i.ci, %vector.body1043 ]
  %vec.ind1049 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph1035 ], [ %vec.ind.next1052, %vector.body1043 ] ; 3 uses
  %i.as = xor <4 x i32> %vec.ind1049, splat (i32 -1)
  %i.at = add nsw <4 x i32> %broadcast.splat1042, %i.as
  %reass.sub1060 = sub <4 x i32> %broadcast.splat1042, %vec.ind1049
  %i.au = add <4 x i32> %reass.sub1060, splat (i32 251)
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %index1044 ; 2 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %index1044 ; 2 uses
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %index1044 ; 2 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %index1044 ; 2 uses
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %index1044 ; 2 uses
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %index1044 ; 2 uses
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %index1044 ; 2 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %index1044 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 108
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 148
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 228
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 268
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 308
  %i.bl = load i8, ptr %i.bd, align 4, !tbaa !251
  %i.bm = load i8, ptr %i.be, align 4, !tbaa !251
  %i.bn = load i8, ptr %i.bf, align 4, !tbaa !251
  %i.bo = load i8, ptr %i.bg, align 4, !tbaa !251
  %i.bp = insertelement <4 x i8> poison, i8 %i.bl, i64 0
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 1
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 2
  %i.bs = insertelement <4 x i8> %i.br, i8 %i.bo, i64 3
  %i.bt = load i8, ptr %i.bh, align 4, !tbaa !251
  %i.bu = load i8, ptr %i.bi, align 4, !tbaa !251
  %i.bv = load i8, ptr %i.bj, align 4, !tbaa !251
  %i.bw = load i8, ptr %i.bk, align 4, !tbaa !251
  %i.bx = insertelement <4 x i8> poison, i8 %i.bt, i64 0
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 1
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bv, i64 2
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.bw, i64 3
  %i.cb = zext <4 x i8> %i.bs to <4 x i32>
  %i.cc = zext <4 x i8> %i.ca to <4 x i32>
  %i.cd = and <4 x i32> %i.at, splat (i32 255)    ; 2 uses
  %i.ce = and <4 x i32> %i.au, splat (i32 255)    ; 2 uses
  %i.cf = add nuw nsw <4 x i32> %i.cd, %i.cb
  %i.cg = add nuw nsw <4 x i32> %i.ce, %i.cc
  %i.ch = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi1047, <4 x i32> %i.cf) ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi1048, <4 x i32> %i.cg) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 29
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 69
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 109
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 149
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 189
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 229
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 269
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 309
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !252
  %i.cs = load i8, ptr %i.ck, align 1, !tbaa !252
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !252
  %i.cu = load i8, ptr %i.cm, align 1, !tbaa !252
  %i.cv = insertelement <4 x i8> poison, i8 %i.cr, i64 0
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cs, i64 1
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.ct, i64 2
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.cu, i64 3
  %i.cz = load i8, ptr %i.cn, align 1, !tbaa !252
  %i.da = load i8, ptr %i.co, align 1, !tbaa !252
end_hunk_0
