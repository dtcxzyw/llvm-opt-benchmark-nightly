Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hls_sample_encryption?download=true
inline.NumInlined: 17
inline.NumDeleted: 13
begin_hunk_0_@ff_hls_senc_read_audio_setup_info:bb.a
bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 1 %i.p, i64 %spec.select29, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.r, i8 0, i64 64, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_hls_senc_parse_audio_setup_info(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.c, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  switch i32 %i.h, label %bb.b [
    i32 86018, label %bb.f
    i32 86019, label %bb.c
    i32 86056, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i64
  %i.m = call i32 @avpriv_ac3_parse_header(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, i64 noundef %i.l) #6 ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  br i1 %i.n, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 38
  %i.q = load i16, ptr %i.p, align 2, !tbaa !35
  %i.r = zext i16 %i.q to i32
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  store i32 %i.r, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.u) #6
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38
  %i.aa = call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.w, i64 noundef %i.z) #6 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !39
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !40
  call void @av_free(ptr noundef %i.ab) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @av_free(ptr noundef %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 3
  %i.am = add nuw nsw i32 %i.al, 8                ; 5 uses
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !9
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = lshr i32 %i.ao, 19
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.am, i32 13)
  %i.ar = add nuw nsw i32 %i.aq, 3
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.ar) ; 3 uses
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !9
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = and i32 %i.as, 7
  %i.az = shl i32 %i.ax, %i.ay
  %i.ba = lshr i32 %i.az, 30
  %i.bb = add nuw nsw i32 %i.as, 2
  %i.bc = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.bb)
  %i.bd = add nuw nsw i32 %i.bc, 10
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.bd) ; 3 uses
  %i.bf = lshr i32 %i.be, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !9
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = and i32 %i.be, 7
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = lshr i32 %i.bl, 29
  %i.bn = add nuw nsw i32 %i.be, 3
  %i.bo = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.bn) ; 2 uses
  %i.bp = lshr i32 %i.bo, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 1, !tbaa !9
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bu = and i32 %i.bo, 7
  %i.bv = shl i32 %i.bt, %i.bu
  %i.bw = zext nneg i32 %i.ba to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @eac3_sample_rate_tab, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !37
  %i.ca = zext nneg i32 %i.bm to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_channel_layout_tab, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !42
  %i.cd = zext i16 %i.cc to i64                   ; 2 uses
  %i.ce = or i64 %i.cd, 8
  %.not3549 = icmp slt i32 %i.bv, 0
  %spec.select = select i1 %.not3549, i64 %i.ce, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.cf) #6
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  %i.ci = tail call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.ch, i64 noundef %spec.select) #6 ; 0 uses
  %i.cj = mul nuw nsw i32 %i.ap, 1000
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %.thread, %bb.d, %bb.b
  %.2 = phi i32 [ 0, %bb.e ], [ -1094995529, %bb.b ], [ 0, %bb.a ], [ %i.m, %bb.d ], [ 0, %.thread ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @avpriv_ac3_parse_header(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @av_free(ptr noundef) local_unnamed_addr #4

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #4

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_hls_senc_decrypt_frame(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  switch i32 %0, label %decrypt_video_frame.exit [
    i32 27, label %bb.b
    i32 86056, label %bb.s
    i32 86019, label %bb.s
    i32 86018, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h ; 4 uses
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = ptrtoaddr ptr %i.e to i64
  %i.l = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.r, %.lr.ph.i
  %.02263.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %bb.r ]
  %.02362.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.dq, %bb.r ] ; 2 uses
  %.sroa.045.060.i = phi ptr [ %i.e, %.lr.ph.i ], [ %.sroa.045.1.i, %bb.r ] ; 7 uses
  %i.o = ptrtoint ptr %.sroa.045.060.i to i64     ; 2 uses
  %i.p = sub i64 %i.l, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 3
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %.sroa.045.060.i, align 1  ; 4 uses
  %i.s = icmp eq i32 %i.r, 16777216
  %i.t = trunc i32 %i.r to i8
  %i.u = lshr i32 %i.r, 8
  %i.v = trunc i32 %i.u to i8
  %i.w = lshr i32 %i.r, 16
  %i.x = trunc i32 %i.w to i8
  br i1 %i.s, label %bb.f, label %.thread.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.p, 3
  br i1 %i.y, label %..thread_crit_edge.i.i, label %decrypt_video_frame.exit

..thread_crit_edge.i.i:                           ; preds = %bb.e
  %.pre.i.i = load i8, ptr %.sroa.045.060.i, align 1, !tbaa !9
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.045.060.i, i64 1
  %.pre39.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !9
  %.phi.trans.insert40.i.i = getelementptr inbounds nuw i8, ptr %.sroa.045.060.i, i64 2
  %.pre41.i.i = load i8, ptr %.phi.trans.insert40.i.i, align 1, !tbaa !9
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread_crit_edge.i.i, %bb.d
  %i.z = phi i8 [ %.pre41.i.i, %..thread_crit_edge.i.i ], [ %i.x, %bb.d ]
  %i.aa = phi i8 [ %.pre39.i.i, %..thread_crit_edge.i.i ], [ %i.v, %bb.d ]
  %i.ab = phi i8 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %i.t, %bb.d ]
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = zext i8 %i.aa to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = zext i8 %i.z to i32
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.f, label %decrypt_video_frame.exit

bb.f:                                             ; preds = %.thread.i.i, %bb.d
  %.sink.i.i = phi i32 [ 4, %bb.d ], [ 3, %.thread.i.i ] ; 3 uses
  %i.ak = phi i64 [ 4, %bb.d ], [ 3, %.thread.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.045.060.i, i64 %i.ak ; 10 uses
  %i.am = icmp ult ptr %i.al, %i.i
  br i1 %i.am, label %.lr.ph.i.preheader.i, label %.loopexit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.an = getelementptr i8, ptr %.sroa.045.060.i, i64 %i.k
  %scevgep.i = getelementptr i8, ptr %i.an, i64 %i.h
  %i.ao = sub i64 0, %i.o
  %scevgep65.i = getelementptr i8, ptr %scevgep.i, i64 %i.ao
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.preheader.i
  %.sroa.045.2.i = phi ptr [ %i.bl, %bb.i ], [ %i.al, %.lr.ph.i.preheader.i ] ; 8 uses
  %i.ap = ptrtoint ptr %.sroa.045.2.i to i64
  %i.aq = sub i64 %i.l, %i.ap                     ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 3
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.as = load i32, ptr %.sroa.045.2.i, align 1   ; 4 uses
  %i.at = icmp eq i32 %i.as, 16777216
  %i.au = trunc i32 %i.as to i8
  %i.av = lshr i32 %i.as, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = lshr i32 %i.as, 16
  %i.ay = trunc i32 %i.ax to i8
  br i1 %i.at, label %.loopexit.i, label %.thread34.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.az = icmp eq i64 %i.aq, 3
  br i1 %i.az, label %..thread34_crit_edge.i.i, label %bb.i

..thread34_crit_edge.i.i:                         ; preds = %bb.h
  %.pre42.i.i = load i8, ptr %.sroa.045.2.i, align 1, !tbaa !9
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.sroa.045.2.i, i64 1
  %.pre44.i.i = load i8, ptr %.phi.trans.insert43.i.i, align 1, !tbaa !9
  %.phi.trans.insert45.i.i = getelementptr inbounds nuw i8, ptr %.sroa.045.2.i, i64 2
  %.pre46.i.i = load i8, ptr %.phi.trans.insert45.i.i, align 1, !tbaa !9
  br label %.thread34.i.i

.thread34.i.i:                                    ; preds = %..thread34_crit_edge.i.i, %bb.g
  %i.ba = phi i8 [ %.pre46.i.i, %..thread34_crit_edge.i.i ], [ %i.ay, %bb.g ]
  %i.bb = phi i8 [ %.pre44.i.i, %..thread34_crit_edge.i.i ], [ %i.aw, %bb.g ]
  %i.bc = phi i8 [ %.pre42.i.i, %..thread34_crit_edge.i.i ], [ %i.au, %bb.g ]
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 16
  %i.bf = zext i8 %i.bb to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = zext i8 %i.ba to i32
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.thread34.i.i, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.045.2.i, i64 1 ; 2 uses
  %3 = icmp ult ptr %i.bl, %i.i
  br i1 %3, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !45

.loopexit.i:                                      ; preds = %bb.i, %.thread34.i.i, %bb.g, %bb.f
  %.sroa.045.1.i = phi ptr [ %i.al, %bb.f ], [ %.sroa.045.2.i, %bb.g ], [ %.sroa.045.2.i, %.thread34.i.i ], [ %scevgep65.i, %bb.i ] ; 3 uses
  %i.bm = ptrtoint ptr %.sroa.045.1.i to i64
  %i.bn = ptrtoint ptr %i.al to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32                  ; 5 uses
  %i.bq = load i8, ptr %i.al, align 1, !tbaa !9
  %i.br = and i8 %i.bq, 27
  %or.cond.i = icmp eq i8 %i.br, 1
  %i.bs = icmp sgt i32 %i.bp, 48
  %or.cond5.i = and i1 %or.cond.i, %i.bs
  br i1 %or.cond5.i, label %bb.j, label %bb.p

bb.j:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.bt = load ptr, ptr %1, align 8, !tbaa !47
  %i.bu = call i32 @av_aes_init(ptr noundef %i.bt, ptr noundef nonnull %i.m, i32 noundef 128, i32 noundef 1) #6 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %decrypt_nal_unit.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.m
  %.029.i.i.i = phi i32 [ %.1.i.i.i, %bb.m ], [ 0, %bb.j ] ; 4 uses
  %.02528.i.i.i = phi i32 [ %.126.i.i.i, %bb.m ], [ 0, %bb.j ] ; 4 uses
  %i.bw = sub nsw i32 %i.bp, %.02528.i.i.i
  %i.bx = icmp sgt i32 %i.bw, 3
  %i.by = sext i32 %.02528.i.i.i to i64
  %i.bz = getelementptr inbounds i8, ptr %i.al, i64 %i.by ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9   ; 3 uses
  br i1 %i.bx, label %bb.k, label %.lr.ph._crit_edge.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = or disjoint i32 %i.cg, %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.ck = zext i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck
  %i.cm = icmp eq i32 %i.cl, 3
  br i1 %i.cm, label %bb.l, label %.lr.ph._crit_edge.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cn = sext i32 %.029.i.i.i to i64
  %i.co = getelementptr inbounds i8, ptr %i.al, i64 %i.cn ; 2 uses
  store i8 %i.ca, ptr %i.co, align 1, !tbaa !9
  %i.cp = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cq = add nsw i32 %.029.i.i.i, 2
  %i.cr = getelementptr i8, ptr %i.co, i64 1
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !9
  %i.cs = add nsw i32 %.02528.i.i.i, 3
  br label %bb.m

.lr.ph._crit_edge.i.i.i:                          ; preds = %bb.k, %.lr.ph.i.i.i
  %i.ct = add nsw i32 %.02528.i.i.i, 1
  %i.cu = add nsw i32 %.029.i.i.i, 1
  %i.cv = sext i32 %.029.i.i.i to i64
  %i.cw = getelementptr inbounds i8, ptr %i.al, i64 %i.cv
  store i8 %i.ca, ptr %i.cw, align 1, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph._crit_edge.i.i.i, %bb.l
  %.126.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.ct, %.lr.ph._crit_edge.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i32 [ %i.cq, %bb.l ], [ %i.cu, %.lr.ph._crit_edge.i.i.i ] ; 5 uses
  %i.cx = icmp slt i32 %.126.i.i.i, %i.bp
  br i1 %i.cx, label %.lr.ph.i.i.i, label %remove_scep_3_bytes.exit.i.i, !llvm.loop !50

remove_scep_3_bytes.exit.i.i:                     ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.cy = icmp sgt i32 %.1.i.i.i, 32
  br i1 %i.cy, label %.lr.ph.preheader.i.i, label %decrypt_nal_unit.exit.thread.i

.lr.ph.preheader.i.i:                             ; preds = %remove_scep_3_bytes.exit.i.i
  %i.cz = add nsw i32 %.1.i.i.i, -32
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  br label %.lr.ph.i31.i

.lr.ph.i31.i:                                     ; preds = %bb.o, %.lr.ph.preheader.i.i
  %.026.i.i = phi ptr [ %i.dh, %bb.o ], [ %i.da, %.lr.ph.preheader.i.i ] ; 4 uses
  %.02125.i.i = phi i32 [ %i.di, %bb.o ], [ %i.cz, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.db = icmp samesign ugt i32 %.02125.i.i, 16
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i31.i
  %i.dc = load ptr, ptr %1, align 8, !tbaa !47
  call void @av_aes_crypt(ptr noundef %i.dc, ptr noundef %.026.i.i, ptr noundef %.026.i.i, i32 noundef 1, ptr noundef nonnull %i.c, i32 noundef 1) #6
  %i.dd = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 16
  %i.de = add nsw i32 %.02125.i.i, -16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i31.i
  %.122.i.i = phi i32 [ %i.de, %bb.n ], [ %.02125.i.i, %.lr.ph.i31.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.dd, %bb.n ], [ %.026.i.i, %.lr.ph.i31.i ]
  %i.df = call i32 @llvm.umin.i32(i32 %.122.i.i, i32 144) ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.dg
  %i.di = sub nuw nsw i32 %.122.i.i, %i.df        ; 2 uses
  %.not78.i = icmp eq i32 %i.di, 0
  br i1 %.not78.i, label %decrypt_nal_unit.exit.thread.i, label %.lr.ph.i31.i, !llvm.loop !51

decrypt_nal_unit.exit.thread.i:                   ; preds = %bb.o, %remove_scep_3_bytes.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.dj = icmp ne i32 %.1.i.i.i, %i.bp
  %i.dk = zext i1 %i.dj to i32
  br label %bb.p

decrypt_nal_unit.exit.i:                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %decrypt_video_frame.exit

bb.p:                                             ; preds = %decrypt_nal_unit.exit.thread.i, %.loopexit.i
  %.sroa.9.0.i = phi i32 [ %.1.i.i.i, %decrypt_nal_unit.exit.thread.i ], [ %i.bp, %.loopexit.i ] ; 2 uses
  %.2.i = phi i32 [ %i.dk, %decrypt_nal_unit.exit.thread.i ], [ %.02263.i, %.loopexit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.2.i, 0
  br i1 %.not.i, label %._crit_edge66.i, label %bb.q

._crit_edge66.i:                                  ; preds = %bb.p
  %.pre67.i = add nsw i32 %.sroa.9.0.i, %.sink.i.i
  %.pre68.i = sext i32 %.pre67.i to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dl = zext nneg i32 %.sink.i.i to i64
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.al, i64 %i.dm
  %i.do = add nsw i32 %.sroa.9.0.i, %.sink.i.i
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.02362.i, ptr nonnull align 1 %i.dn, i64 %i.dp, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge66.i
  %.pre-phi69.i = phi i64 [ %.pre68.i, %._crit_edge66.i ], [ %i.dp, %bb.q ]
  %i.dq = getelementptr inbounds i8, ptr %.02362.i, i64 %.pre-phi69.i ; 2 uses
  %i.dr = icmp ult ptr %.sroa.045.1.i, %i.i
  br i1 %i.dr, label %bb.c, label %._crit_edge.loopexit.i, !llvm.loop !52

._crit_edge.loopexit.i:                           ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !43
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.ds = phi ptr [ %i.e, %bb.b ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.023.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %i.dq, %._crit_edge.loopexit.i ]
  %i.dt = ptrtoint ptr %.023.lcssa.i to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = trunc i64 %i.dv to i32
  call void @av_shrink_packet(ptr noundef nonnull %2, i32 noundef %i.dw) #6
  br label %decrypt_video_frame.exit

bb.s:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.dx = getelementptr i8, ptr %2, i64 24
  %.val = load ptr, ptr %i.dx, align 8, !tbaa !43 ; 3 uses
  %i.dy = getelementptr i8, ptr %2, i64 32
  %.val13 = load i32, ptr %i.dy, align 8, !tbaa !44 ; 2 uses
  %i.dz = sext i32 %.val13 to i64
  %i.ea = getelementptr i8, ptr %.val, i64 %i.dz  ; 5 uses
  %i.eb = icmp sgt i32 %.val13, 0
  br i1 %i.eb, label %.lr.ph.i14, label %decrypt_video_frame.exit

.lr.ph.i14:                                       ; preds = %bb.s
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -1 ; 2 uses
  %i.ed = ptrtoaddr ptr %i.ea to i64
  %i.ee = ptrtoint ptr %i.ea to i64               ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  switch i32 %0, label %decrypt_video_frame.exit [
    i32 86018, label %.lr.ph.split.split.us.i
    i32 86019, label %.lr.ph.split.split.i.preheader
    i32 86056, label %.lr.ph.split.split.i.preheader
  ]

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i14, %.lr.ph.i14
  br label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.i14, %bb.aa
  %.sroa.09.023.us.i = phi ptr [ %i.fo, %bb.aa ], [ %.val, %.lr.ph.i14 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !53
  %i.eh = icmp ult ptr %.sroa.09.023.us.i, %i.ec
  br i1 %i.eh, label %.lr.ph.preheader.i.i.us.i, label %get_next_adts_frame.exit.i.us.thread.i

.lr.ph.preheader.i.i.us.i:                        ; preds = %.lr.ph.split.split.us.i
  %.promoted24.i.i.us.i = ptrtoaddr ptr %.sroa.09.023.us.i to i64
  %i.ei = xor i64 %.promoted24.i.i.us.i, -1
  %i.ej = getelementptr i8, ptr %.sroa.09.023.us.i, i64 %i.ei
  %scevgep.i.i.us.i = getelementptr i8, ptr %i.ej, i64 %i.ee
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.u, %.lr.ph.preheader.i.i.us.i
  %.sroa.09.1.us.i = phi ptr [ %.sroa.09.023.us.i, %.lr.ph.preheader.i.i.us.i ], [ %i.ep, %bb.u ] ; 7 uses
  %i.ek = load i8, ptr %.sroa.09.1.us.i, align 1, !tbaa !9
  %i.el = icmp eq i8 %i.ek, -1
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.us.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.09.1.us.i, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !9
  %i.eo = icmp ugt i8 %i.en, -17
  br i1 %i.eo, label %bb.v, label %bb.u
end_hunk_0
