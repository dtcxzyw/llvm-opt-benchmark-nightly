Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacenc?download=true
inline.NumInlined: 79
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@aac_encode_frame:bb.a
  %i.aua = lshr i32 %i.atw, 24
  %i.aub = trunc nuw i32 %i.aua to i8
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atx, i64 1
  store ptr %i.auc, ptr %i.jy, align 16, !tbaa !83
  store i8 %i.aub, ptr %i.atx, align 1, !tbaa !61
  %i.aud = load i32, ptr %i.jt, align 16, !tbaa !85
  %i.aue = shl i32 %i.aud, 8                      ; 2 uses
  store i32 %i.aue, ptr %i.jt, align 16, !tbaa !85
  %i.auf = load i32, ptr %i.jz, align 4, !tbaa !84 ; 2 uses
  %i.aug = add nsw i32 %i.auf, 8
  store i32 %i.aug, ptr %i.jz, align 4, !tbaa !84
  %i.auh = icmp slt i32 %i.auf, 24
  br i1 %i.auh, label %bb.gh, label %flush_put_bits.exit, !llvm.loop !0

flush_put_bits.exit:                              ; preds = %bb.gj, %put_bits.exit614
  store i32 32, ptr %i.jz, align 4, !tbaa !84
  store i32 0, ptr %i.jt, align 16, !tbaa !85
  %i.aui = load ptr, ptr %i.jy, align 16, !tbaa !83
  %i.auj = load ptr, ptr %i.jw, align 8, !tbaa !81
  %i.auk = ptrtoint ptr %i.aui to i64
  %i.aul = ptrtoint ptr %i.auj to i64
  %i.aum = sub i64 %i.auk, %i.aul
  %.tr.i617 = trunc i64 %i.aum to i32             ; 2 uses
  %i.aun = shl i32 %.tr.i617, 3
  store i32 %i.aun, ptr %i.ke, align 4, !tbaa !53
  store i32 %.tr.i617, ptr %i.jv, align 8, !tbaa !193
  %i.auo = load float, ptr %i.kh, align 16, !tbaa !56
  %i.aup = getelementptr inbounds nuw i8, ptr %i.d, i64 38248 ; 2 uses
  %i.auq = load float, ptr %i.aup, align 8, !tbaa !86
  %i.aur = fadd nsz float %i.auo, %i.auq
  store float %i.aur, ptr %i.aup, align 8, !tbaa !86
  %i.aus = getelementptr inbounds nuw i8, ptr %i.d, i64 38252 ; 2 uses
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !87
  %i.auu = add nsw i32 %i.aut, 1
  store i32 %i.auu, ptr %i.aus, align 4, !tbaa !87
  %i.auv = getelementptr inbounds nuw i8, ptr %i.d, i64 38264
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aux = load i32, ptr %i.auw, align 8, !tbaa !54
  %i.auy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.auz = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @ff_af_queue_remove(ptr noundef nonnull %i.auv, i32 noundef %i.aux, ptr noundef nonnull %i.auy, ptr noundef nonnull %i.auz) #9
  %i.ava = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 8, !tbaa !223
  %i.avc = or i32 %i.avb, 1
  store i32 %i.avc, ptr %i.ava, align 8, !tbaa !223
  store i32 1, ptr %3, align 4, !tbaa !60
  br label %.loopexit646

.loopexit646:                                     ; preds = %.thread917, %._crit_edge707, %copy_input_samples.exit, %bb.c, %bb.e, %bb.b, %flush_put_bits.exit
  %.4 = phi i32 [ %i.g, %bb.b ], [ %i.jr, %._crit_edge707 ], [ 0, %copy_input_samples.exit ], [ 0, %flush_put_bits.exit ], [ 0, %bb.c ], [ 0, %bb.e ], [ -22, %.thread917 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.4
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @aac_encode_end(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 38252
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 38248
  %i.f = load float, ptr %i.e, align 8, !tbaa !86
  %i.g = sitofp nsz i32 %i.d to float
  %i.h = fdiv nsz float %i.f, %i.g
  %i.i = fpext nsz float %i.h to double
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi double [ %i.i, %bb.b ], [ +qnan, %bb.a ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.52, double noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_tx_uninit(ptr noundef nonnull %i.k) #9
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_tx_uninit(ptr noundef nonnull %i.l) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 38144
  tail call void @ff_psy_end(ptr noundef nonnull %i.m) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  tail call void @ff_lpc_end(ptr noundef nonnull %i.n) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 567096
  tail call void @av_freep(ptr noundef nonnull %i.o) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 38136
  tail call void @av_freep(ptr noundef nonnull %i.p) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @av_freep(ptr noundef nonnull %i.q) #9
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 38264
  tail call void @ff_af_queue_close(ptr noundef nonnull %i.r) #9
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @av_channel_layout_describe(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @ff_aac_float_common_init() local_unnamed_addr #4

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @dsp_init(i32 %.64.val, ptr noundef initializes((96, 104)) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store float 3.276800e+04, ptr %i.a, align 4, !tbaa !77
  %i.b = and i32 %.64.val, 8388608
  %i.c = tail call ptr @avpriv_float_dsp_alloc(i32 noundef %i.b) #9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.d, align 16, !tbaa !80
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = call i32 @av_tx_init(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 1, i32 noundef 0, i32 noundef 1024, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = call i32 @av_tx_init(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef 1, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %i.a, i64 noundef 0) #9
  %. = call i32 @llvm.smin.i32(i32 %i.k, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ %., %bb.c ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -12, 1) i32 @alloc_buffers(ptr nofree noundef captures(none) initializes((567096, 567104)) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 38116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = mul nsw i32 %i.b, 3072
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias ptr @av_calloc(i64 noundef %i.d, i64 noundef 4) #9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 567096 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !225
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 38128
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !64
  %i.i = load i8, ptr %i.h, align 1, !tbaa !61
  %i.j = zext i8 %i.i to i64
  %i.k = tail call noalias ptr @av_calloc(i64 noundef %i.j, i64 noundef 92976) #9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 38136
  store ptr %i.k, ptr %i.l, align 8, !tbaa !76
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !225
  %.idx = mul nuw nsw i64 %indvars.iv, 12288
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.q, ptr %i.r, align 8, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !224

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a, %bb.b
  %.011 = phi i32 [ -12, %bb.a ], [ -12, %bb.b ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @put_audio_specific_config(ptr nofree noundef captures(none) initializes((72, 80)) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.PutBitContext, align 8      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.d, align 8, !tbaa !228
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.an, label %put_bits.exit16

put_bits.exit16:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 24 uses
  store ptr %i.c, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.k = load i32, ptr %i.j, align 16, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 38112
  %i.m = load i32, ptr %i.l, align 16, !tbaa !67
  %i.n = shl i32 %i.k, 4
  %i.o = add i32 %i.n, 16
  %i.p = or i32 %i.m, %i.o
  %i.q = shl i32 %i.p, 4
  %i.r = or i32 %i.q, %1                          ; 2 uses
  %i.s = shl i32 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %.not11 = icmp eq i32 %i.u, 0
  br i1 %.not11, label %.thread, label %put_bits.exit58.i

put_bits.exit58.i:                                ; preds = %put_bits.exit16
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !52   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.z = load i32, ptr %i.y, align 8, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 38112
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !67
  %i.ac = shl i32 %i.r, 13
  %i.ad = shl i32 %i.z, 4
  %i.ae = or i32 %i.ac, %i.ad
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 16, !tbaa !61
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 129
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !61
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %3 = ptrtoint ptr %i.f to i64                   ; 2 uses
  %i.am = shl i32 %i.af, 6
  %i.an = shl nuw nsw i32 %i.ai, 2
  %i.ao = or i32 %i.am, %i.an
  %i.ap = lshr i32 %i.al, 2
  %i.aq = or i32 %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  store i32 %i.ar, ptr %i.c, align 1, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store ptr %i.as, ptr %i.h, align 8, !tbaa !83
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %i.v, i64 131
  %.pre56 = load i8, ptr %.phi.trans.insert55, align 1, !tbaa !61
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 130
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !61
  %i.at = zext i8 %.pre to i32
  store i32 26, ptr %i.i, align 4, !tbaa !84
  %i.au = zext i8 %.pre56 to i32
  %i.av = shl nuw nsw i32 %i.al, 6
  %i.aw = shl nuw nsw i32 %i.at, 2
  %i.ax = or i32 %i.av, %i.aw
  %i.ay = or i32 %i.ax, %i.au                     ; 2 uses
  %i.az = shl nuw nsw i32 %i.ay, 3
  store i32 %i.az, ptr %2, align 8, !tbaa !85
  %4 = shl nuw nsw i32 %i.ay, 10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 132
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 156
  %5 = ptrtoint ptr %i.f to i64
  %6 = ptrtoint ptr %i.f to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %put_bits.exit58.i
  %i.bc = phi ptr [ %i.as, %put_bits.exit58.i ], [ %i.ej, %._crit_edge.i ] ; 3 uses
  %i.bd = phi ptr [ %i.as, %put_bits.exit58.i ], [ %i.ek, %._crit_edge.i ] ; 3 uses
  %i.be = phi ptr [ %i.as, %put_bits.exit58.i ], [ %i.el, %._crit_edge.i ] ; 3 uses
  %i.bf = phi i32 [ 14, %put_bits.exit58.i ], [ %i.em, %._crit_edge.i ] ; 3 uses
  %i.bg = phi i32 [ %4, %put_bits.exit58.i ], [ %i.en, %._crit_edge.i ] ; 3 uses
  %indvars.iv107.i = phi i64 [ 0, %put_bits.exit58.i ], [ %indvars.iv.next108.i, %._crit_edge.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv107.i ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !61
  %.not101.i = icmp eq i8 %i.bi, 0
  br i1 %.not101.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.not42.i = icmp eq i64 %indvars.iv107.i, 3
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv107.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv107.i ; 2 uses
  br i1 %.not42.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %put_bits.exit94.us.i
  %i.bl = phi ptr [ %i.cg, %put_bits.exit94.us.i ], [ %i.bc, %.lr.ph.i ] ; 6 uses
  %i.bm = phi ptr [ %i.ch, %put_bits.exit94.us.i ], [ %i.bd, %.lr.ph.i ]
  %i.bn = phi ptr [ %i.ci, %put_bits.exit94.us.i ], [ %i.be, %.lr.ph.i ]
  %i.bo = phi i32 [ %i.cj, %put_bits.exit94.us.i ], [ %i.bf, %.lr.ph.i ] ; 4 uses
  %i.bp = phi i32 [ %.026.i.i92.us.i, %put_bits.exit94.us.i ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i, %put_bits.exit94.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv104.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !61
  %i.bs = zext i8 %i.br to i32                    ; 4 uses
  %i.bt = icmp sgt i32 %i.bo, 4
  br i1 %i.bt, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.bu = ptrtoint ptr %i.bl to i64
  %i.bv = sub i64 %3, %i.bu
  %i.bw = icmp ugt i64 %i.bv, 3
  br i1 %i.bw, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit94.us.i

bb.d:                                             ; preds = %bb.b
  %i.bx = shl i32 %i.bp, %i.bo
  %i.by = sub nsw i32 4, %i.bo
  %i.bz = lshr i32 %i.bs, %i.by
  %i.ca = or i32 %i.bz, %i.bx
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  store i32 %i.cb, ptr %i.bl, align 1, !tbaa !61
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 4 uses
  store ptr %i.cd, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit94.us.i

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.ce = shl i32 %i.bp, 4
  %i.cf = or i32 %i.ce, %i.bs
  br label %put_bits.exit94.us.i

put_bits.exit94.us.i:                             ; preds = %bb.e, %bb.d, %bb.c
  %i.cg = phi ptr [ %i.bl, %bb.e ], [ %i.cd, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  %i.ch = phi ptr [ %i.bm, %bb.e ], [ %i.cd, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  %i.ci = phi ptr [ %i.bn, %bb.e ], [ %i.cd, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  %.sink129.i = phi i32 [ -4, %bb.e ], [ 28, %bb.d ], [ 28, %bb.c ]
  %.026.i.i92.us.i = phi i32 [ %i.cf, %bb.e ], [ %i.bs, %bb.d ], [ %i.bs, %bb.c ] ; 3 uses
  %i.cj = add nsw i32 %.sink129.i, %i.bo          ; 3 uses
  store i32 %.026.i.i92.us.i, ptr %2, align 8, !tbaa !85
  store i32 %i.cj, ptr %i.i, align 4, !tbaa !84
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %i.ck = load i8, ptr %i.bh, align 1, !tbaa !61
  %i.cl = zext i8 %i.ck to i64
  %i.cm = icmp samesign ult i64 %indvars.iv.next105.i, %i.cl
  br i1 %i.cm, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !226

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %put_bits.exit94.i
  %i.cn = phi ptr [ %i.ec, %put_bits.exit94.i ], [ %i.bc, %.lr.ph.i ] ; 2 uses
  %i.co = phi ptr [ %i.ed, %put_bits.exit94.i ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %i.cp = phi ptr [ %i.ee, %put_bits.exit94.i ], [ %i.be, %.lr.ph.i ] ; 4 uses
  %i.cq = phi i32 [ %i.ef, %put_bits.exit94.i ], [ %i.bf, %.lr.ph.i ] ; 4 uses
  %i.cr = phi i32 [ %.026.i.i92.i, %put_bits.exit94.i ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %put_bits.exit94.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !61
  %i.cu = zext i8 %i.ct to i32                    ; 4 uses
  %i.cv = icmp sgt i32 %i.cq, 1
  br i1 %i.cv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.cw = shl i32 %i.cr, 1
  %i.cx = or i32 %i.cw, %i.cu
  br label %put_bits.exit90.i

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.cy = ptrtoint ptr %i.cp to i64
  %i.cz = sub i64 %5, %i.cy
  %i.da = icmp ugt i64 %i.cz, 3
  br i1 %i.da, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.db = shl i32 %i.cr, %i.cq
  %i.dc = sub nsw i32 1, %i.cq
  %i.dd = lshr i32 %i.cu, %i.dc
  %i.de = or i32 %i.dd, %i.db
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  store i32 %i.df, ptr %i.cp, align 1, !tbaa !61
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 4 uses
  store ptr %i.dh, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit90.i

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit90.i

put_bits.exit90.i:                                ; preds = %bb.i, %bb.h, %bb.f
  %i.di = phi ptr [ %i.cn, %bb.f ], [ %i.cn, %bb.i ], [ %i.dh, %bb.h ] ; 2 uses
  %i.dj = phi ptr [ %i.co, %bb.f ], [ %i.co, %bb.i ], [ %i.dh, %bb.h ] ; 5 uses
  %i.dk = phi ptr [ %i.cp, %bb.f ], [ %i.cp, %bb.i ], [ %i.dh, %bb.h ]
  %.sink130.i = phi i32 [ -1, %bb.f ], [ 31, %bb.i ], [ 31, %bb.h ]
  %.026.i.i88.i = phi i32 [ %i.cx, %bb.f ], [ %i.cu, %bb.i ], [ %i.cu, %bb.h ] ; 2 uses
  %i.dl = add nsw i32 %.sink130.i, %i.cq          ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !61
  %i.do = zext i8 %i.dn to i32                    ; 4 uses
  %i.dp = icmp sgt i32 %i.dl, 4
  br i1 %i.dp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %put_bits.exit90.i
  %i.dq = shl i32 %.026.i.i88.i, 4
  %i.dr = or i32 %i.dq, %i.do
  br label %put_bits.exit94.i

bb.k:                                             ; preds = %put_bits.exit90.i
  %i.ds = ptrtoint ptr %i.dj to i64
  %i.dt = sub i64 %6, %i.ds
  %i.du = icmp ugt i64 %i.dt, 3
  br i1 %i.du, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dv = shl i32 %.026.i.i88.i, %i.dl
  %i.dw = sub nsw i32 4, %i.dl
  %i.dx = lshr i32 %i.do, %i.dw
  %i.dy = or i32 %i.dx, %i.dv
  %i.dz = tail call i32 @llvm.bswap.i32(i32 %i.dy)
  store i32 %i.dz, ptr %i.dj, align 1, !tbaa !61
  %i.ea = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 4 uses
  store ptr %i.eb, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit94.i

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit94.i

put_bits.exit94.i:                                ; preds = %bb.m, %bb.l, %bb.j
  %i.ec = phi ptr [ %i.di, %bb.j ], [ %i.di, %bb.m ], [ %i.eb, %bb.l ] ; 2 uses
  %i.ed = phi ptr [ %i.dj, %bb.j ], [ %i.dj, %bb.m ], [ %i.eb, %bb.l ] ; 2 uses
  %i.ee = phi ptr [ %i.dk, %bb.j ], [ %i.dj, %bb.m ], [ %i.eb, %bb.l ] ; 2 uses
  %.sink131.i = phi i32 [ -4, %bb.j ], [ 28, %bb.m ], [ 28, %bb.l ]
  %.026.i.i92.i = phi i32 [ %i.dr, %bb.j ], [ %i.do, %bb.m ], [ %i.do, %bb.l ] ; 3 uses
  %i.ef = add nsw i32 %.sink131.i, %i.dl          ; 3 uses
  store i32 %.026.i.i92.i, ptr %2, align 8, !tbaa !85
  store i32 %i.ef, ptr %i.i, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eg = load i8, ptr %i.bh, align 1, !tbaa !61
  %i.eh = zext i8 %i.eg to i64
  %i.ei = icmp samesign ult i64 %indvars.iv.next.i, %i.eh
  br i1 %i.ei, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !226

._crit_edge.i:                                    ; preds = %put_bits.exit94.i, %put_bits.exit94.us.i, %.preheader.i
  %i.ej = phi ptr [ %i.cg, %put_bits.exit94.us.i ], [ %i.bc, %.preheader.i ], [ %i.ec, %put_bits.exit94.i ] ; 5 uses
  %i.ek = phi ptr [ %i.ch, %put_bits.exit94.us.i ], [ %i.bd, %.preheader.i ], [ %i.ed, %put_bits.exit94.i ]
  %i.el = phi ptr [ %i.ci, %put_bits.exit94.us.i ], [ %i.be, %.preheader.i ], [ %i.ee, %put_bits.exit94.i ]
  %i.em = phi i32 [ %i.cj, %put_bits.exit94.us.i ], [ %i.bf, %.preheader.i ], [ %i.ef, %put_bits.exit94.i ] ; 6 uses
  %i.en = phi i32 [ %.026.i.i92.us.i, %put_bits.exit94.us.i ], [ %i.bg, %.preheader.i ], [ %.026.i.i92.i, %put_bits.exit94.i ] ; 3 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next108.i, 4
  br i1 %exitcond.not.i, label %bb.n, label %.preheader.i, !llvm.loop !227

bb.n:                                             ; preds = %._crit_edge.i
  %i.eo = and i32 %i.x, 8388608
  %.not.i = icmp eq i32 %i.eo, 0                  ; 2 uses
  %i.ep = icmp sgt i32 %i.em, 7
  br i1 %i.ep, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eq = and i32 %i.em, 7
  %i.er = shl i32 %i.en, %i.eq
  %i.es = and i32 %i.em, 2147483640
  br label %align_put_bits.exit.i

bb.p:                                             ; preds = %bb.n
  %i.et = ptrtoint ptr %i.ej to i64
  %i.eu = sub i64 %3, %i.et
  %i.ev = icmp ugt i64 %i.eu, 3
  br i1 %i.ev, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ew = shl i32 %i.en, %i.em
  %i.ex = tail call i32 @llvm.bswap.i32(i32 %i.ew)
  store i32 %i.ex, ptr %i.ej, align 1, !tbaa !61
  %i.ey = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  store ptr %i.ez, ptr %i.h, align 8, !tbaa !83
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fa = phi ptr [ %i.ej, %bb.r ], [ %i.ez, %bb.q ]
  %reass.sub.i.i.i = and i32 %i.em, -8
  %i.fb = add i32 %reass.sub.i.i.i, 32
  br label %align_put_bits.exit.i

align_put_bits.exit.i:                            ; preds = %bb.s, %bb.o
  %i.fc = phi ptr [ %i.ej, %bb.o ], [ %i.fa, %bb.s ] ; 2 uses
  %.026.i.i.i.i = phi i32 [ %i.er, %bb.o ], [ 0, %bb.s ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.es, %bb.o ], [ %i.fb, %bb.s ] ; 4 uses
  %i.fd = select i1 %.not.i, i32 12, i32 4        ; 4 uses
  %i.fe = icmp sgt i32 %.0.i.i.i.i, 8
  br i1 %i.fe, label %bb.t, label %bb.u

bb.t:                                             ; preds = %align_put_bits.exit.i
  %i.ff = shl i32 %.026.i.i.i.i, 8
  %i.fg = or disjoint i32 %i.ff, %i.fd
  br label %bb.x

bb.u:                                             ; preds = %align_put_bits.exit.i
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fc to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = icmp ugt i64 %i.fk, 3
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fm = shl i32 %.026.i.i.i.i, %.0.i.i.i.i
  %i.fn = sub nsw i32 8, %.0.i.i.i.i
  %i.fo = lshr i32 %i.fd, %i.fn
  %i.fp = or i32 %i.fo, %i.fm
  %i.fq = tail call i32 @llvm.bswap.i32(i32 %i.fp)
  store i32 %i.fq, ptr %i.fc, align 1, !tbaa !61
  %i.fr = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store ptr %i.fs, ptr %i.h, align 8, !tbaa !83
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.sink132.i = phi i32 [ -8, %bb.t ], [ 24, %bb.w ], [ 24, %bb.v ]
  %.026.i.i96.i = phi i32 [ %i.fg, %bb.t ], [ %i.fd, %bb.w ], [ %i.fd, %bb.v ]
  %i.ft = add nsw i32 %.sink132.i, %.0.i.i.i.i
  %i.fu = select i1 %.not.i, ptr @.str.45, ptr @.str.44
  store i32 %.026.i.i96.i, ptr %2, align 8, !tbaa !85
  store i32 %i.ft, ptr %i.i, align 4, !tbaa !84
  call void @ff_put_string(ptr noundef nonnull %2, ptr noundef nonnull %i.fu, i32 noundef 0) #9
  %.pre57 = load i32, ptr %2, align 8, !tbaa !85  ; 2 uses
  %.pre58 = load i32, ptr %i.i, align 4, !tbaa !84 ; 5 uses
  %i.fv = icmp sgt i32 %.pre58, 11
  br i1 %i.fv, label %.thread, label %bb.y

.thread:                                          ; preds = %put_bits.exit16, %bb.x
  %i.fw = phi i32 [ %.pre57, %bb.x ], [ %i.s, %put_bits.exit16 ]
  %i.fx = phi i32 [ %.pre58, %bb.x ], [ 16, %put_bits.exit16 ]
  %i.fy = shl i32 %i.fw, 11
  %i.fz = or disjoint i32 %i.fy, 695
  %i.ga = add nsw i32 %i.fx, -11
  br label %put_bits.exit36

bb.y:                                             ; preds = %bb.x
  %i.gb = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.gc = load ptr, ptr %i.h, align 8, !tbaa !83  ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = icmp ugt i64 %i.gf, 3
  br i1 %i.gg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gh = shl i32 %.pre57, %.pre58
  %i.gi = sub nsw i32 11, %.pre58
  %i.gj = lshr i32 695, %i.gi
  %i.gk = or i32 %i.gj, %i.gh
  %i.gl = call i32 @llvm.bswap.i32(i32 %i.gk)
  store i32 %i.gl, ptr %i.gc, align 1, !tbaa !61
  %i.gm = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store ptr %i.gn, ptr %i.h, align 8, !tbaa !83
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.go = add nsw i32 %.pre58, 21
  br label %put_bits.exit36

put_bits.exit36:                                  ; preds = %.thread, %bb.ab
  %.026.i.i34 = phi i32 [ %i.fz, %.thread ], [ 695, %bb.ab ] ; 3 uses
  %.0.i.i35 = phi i32 [ %i.ga, %.thread ], [ %i.go, %bb.ab ] ; 5 uses
  store i32 %.026.i.i34, ptr %2, align 8, !tbaa !85
  store i32 %.0.i.i35, ptr %i.i, align 4, !tbaa !84
  %i.gp = icmp sgt i32 %.0.i.i35, 5
  br i1 %i.gp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %put_bits.exit36
  %i.gq = shl i32 %.026.i.i34, 5
  %i.gr = or disjoint i32 %i.gq, 5
  br label %put_bits.exit40

bb.ad:                                            ; preds = %put_bits.exit36
  %i.gs = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.gt = load ptr, ptr %i.h, align 8, !tbaa !83  ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = icmp ugt i64 %i.gw, 3
  br i1 %i.gx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gy = shl i32 %.026.i.i34, %.0.i.i35
  %i.gz = sub nsw i32 5, %.0.i.i35
  %i.ha = lshr i32 5, %i.gz
  %i.hb = or i32 %i.ha, %i.gy
  %i.hc = call i32 @llvm.bswap.i32(i32 %i.hb)
  store i32 %i.hc, ptr %i.gt, align 1, !tbaa !61
  %i.hd = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store ptr %i.he, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit40

bb.af:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit40

put_bits.exit40:                                  ; preds = %bb.ae, %bb.af, %bb.ac
  %.sink = phi i32 [ -5, %bb.ac ], [ 27, %bb.af ], [ 27, %bb.ae ]
  %.026.i.i38 = phi i32 [ %i.gr, %bb.ac ], [ 5, %bb.af ], [ 5, %bb.ae ] ; 3 uses
  %i.hf = add nsw i32 %.0.i.i35, %.sink           ; 4 uses
  store i32 %.026.i.i38, ptr %2, align 8, !tbaa !85
  store i32 %i.hf, ptr %i.i, align 4, !tbaa !84
  %i.hg = icmp sgt i32 %i.hf, 1
  br i1 %i.hg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %put_bits.exit40
  %i.hh = shl i32 %.026.i.i38, 1
  br label %put_bits.exit44

bb.ah:                                            ; preds = %put_bits.exit40
  %i.hi = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.hj = load ptr, ptr %i.h, align 8, !tbaa !83  ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = icmp ugt i64 %i.hm, 3
  br i1 %i.hn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ho = shl i32 %.026.i.i38, %i.hf
  %i.hp = call i32 @llvm.bswap.i32(i32 %i.ho)
  store i32 %i.hp, ptr %i.hj, align 1, !tbaa !61
  %i.hq = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store ptr %i.hr, ptr %i.h, align 8, !tbaa !83
  br label %put_bits.exit44

bb.aj:                                            ; preds = %bb.ah
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.43) #9
  br label %put_bits.exit44

put_bits.exit44:                                  ; preds = %bb.ai, %bb.aj, %bb.ag
  %.sink78 = phi i32 [ -1, %bb.ag ], [ 31, %bb.aj ], [ 31, %bb.ai ]
  %.026.i.i42 = phi i32 [ %i.hh, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.ai ]
  %i.hs = add nsw i32 %i.hf, %.sink78             ; 3 uses
  store i32 %i.hs, ptr %i.i, align 4, !tbaa !84
  %i.ht = icmp slt i32 %i.hs, 32
  br i1 %i.ht, label %.lr.ph.i46, label %flush_put_bits.exit

.lr.ph.i46:                                       ; preds = %put_bits.exit44
  %i.hu = shl i32 %.026.i.i42, %i.hs              ; 2 uses
  store i32 %i.hu, ptr %2, align 8, !tbaa !85
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i46
  %i.hv = phi i32 [ %i.id, %bb.am ], [ %i.hu, %.lr.ph.i46 ]
  %i.hw = load ptr, ptr %i.h, align 8, !tbaa !83  ; 3 uses
  %i.hx = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.hy = icmp ult ptr %i.hw, %i.hx
end_hunk_0
