Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_context_get_devices__enum_callback:bb.a
  %i.al = add nsw i64 %.040, -2                   ; 2 uses
  %i.am = icmp ugt i64 %i.al, %i.t
  br i1 %i.am, label %.lr.ph.new, label %._crit_edge, !llvm.loop !1259

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !292
  %i.ap = getelementptr inbounds nuw [1544 x i8], ptr %i.ao, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %i.ap, ptr noundef nonnull align 8 dereferenceable(1544) %2, i64 1544, i1 false), !tbaa.struct !226
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !294
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !294
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !292
  %i.au = zext i32 %i.e to i64
  %i.av = getelementptr inbounds nuw [1544 x i8], ptr %i.at, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %i.av, ptr noundef nonnull align 8 dereferenceable(1544) %2, i64 1544, i1 false), !tbaa.struct !226
  %i.aw = load i32, ptr %i.c, align 8, !tbaa !295
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !295
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %ma_realloc.exit, %._crit_edge, %bb.f
  %.1 = phi i32 [ 1, %._crit_edge ], [ 0, %ma_realloc.exit ], [ 1, %bb.f ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @ma_context_get_device_info(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ma_device_info, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %3, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %4, i8 0, i64 1544, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef nonnull align 8 dereferenceable(256) %2, i64 256, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #55 ; 0 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.i = call i32 %i.h(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #55
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #55 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %3, ptr noundef nonnull align 8 dereferenceable(1544) %4, i64 1544, i1 false), !tbaa.struct !226
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ %i.i, %bb.e ], [ -2, %bb.a ], [ -3, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ma_context_is_loopback_supported(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i32, ptr %i.b, align 8, !tbaa !278
  %cond.i = icmp eq i32 %i.c, 0
  %..i = zext i1 %cond.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %..i, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_device_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_device_config) align 8 captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, i8 0, i64 296, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !301
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 4, ptr %.sroa.91.0..sroa_idx, align 8, !tbaa !118
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_resampler_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_resampler_config) align 8 captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !302
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !303
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8, !tbaa !304
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.d, align 4, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %5, ptr %i.e, align 8, !tbaa !306
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 4, ptr %i.f, align 8, !tbaa !307
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_device_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_device_descriptor, align 8 ; 13 uses
  %4 = alloca %struct.ma_device_descriptor, align 8 ; 13 uses
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @ma_device_init_ex(ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %1, ptr noundef %2)
  br label %ma__is_channel_map_valid.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %ma__is_channel_map_valid.exit, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3776) %2, i8 0, i64 3776, i1 false)
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %ma__is_channel_map_valid.exit, label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1263
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ma__is_channel_map_valid.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 8, !tbaa !301    ; 2 uses
  %i.m = and i32 %i.l, -2
  %switch = icmp eq i32 %i.m, 2
  br i1 %switch, label %bb.f, label %ma__is_channel_map_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1264 ; 3 uses
  %i.p = icmp ugt i32 %i.o, 254
  br i1 %i.p, label %ma__is_channel_map_valid.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1265 ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %ma__is_channel_map_valid.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.r, align 1, !tbaa !119
  %.not24.i = icmp eq i8 %i.s, 0
  br i1 %.not24.i, label %ma__is_channel_map_valid.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp eq i32 %i.o, 0
  br i1 %i.t, label %ma__is_channel_map_valid.exit, label %.critedge.preheader.preheader.i

.critedge.preheader.preheader.i:                  ; preds = %bb.i
  %i.u = zext nneg i32 %i.o to i64                ; 3 uses
  br label %.critedge.preheader.i

.critedge.loopexit.i:                             ; preds = %bb.j, %.critedge.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %i.u
  br i1 %exitcond39.not.i, label %ma__is_channel_map_valid.exit.thread, label %.critedge.preheader.i, !llvm.loop !1261

.critedge.preheader.i:                            ; preds = %.critedge.loopexit.i, %.critedge.preheader.preheader.i
  %indvars.iv35.i = phi i64 [ 0, %.critedge.preheader.preheader.i ], [ %indvars.iv.next36.i, %.critedge.loopexit.i ] ; 2 uses
  %indvars.iv.i.a = phi i64 [ 1, %.critedge.preheader.preheader.i ], [ %indvars.iv.next.i, %.critedge.loopexit.i ] ; 2 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 3 uses
  %.not2528.i = icmp samesign ult i64 %indvars.iv.next36.i, %i.u
  br i1 %.not2528.i, label %.lr.ph.i, label %.critedge.loopexit.i

.lr.ph.i:                                         ; preds = %.critedge.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv35.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !119
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next33.i, %i.u
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %bb.k, !llvm.loop !1262

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.i.a, %.lr.ph.i ], [ %indvars.iv.next33.i, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv32.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !119
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %ma__is_channel_map_valid.exit, label %bb.j

ma__is_channel_map_valid.exit.thread:             ; preds = %.critedge.loopexit.i, %bb.h, %bb.g, %bb.e
  switch i32 %i.l, label %ma__is_channel_map_valid.exit365.thread [
    i32 1, label %bb.l
    i32 3, label %bb.l
    i32 4, label %bb.l
  ]

bb.l:                                             ; preds = %ma__is_channel_map_valid.exit.thread, %ma__is_channel_map_valid.exit.thread, %ma__is_channel_map_valid.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !308 ; 3 uses
  %i.ac = icmp ugt i32 %i.ab, 254
  br i1 %i.ac, label %ma__is_channel_map_valid.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1266 ; 4 uses
  %.not.i349 = icmp eq ptr %i.ae, null
  br i1 %.not.i349, label %ma__is_channel_map_valid.exit365.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !119
  %.not24.i350 = icmp eq i8 %i.af, 0
  br i1 %.not24.i350, label %ma__is_channel_map_valid.exit365.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = icmp eq i32 %i.ab, 0
  br i1 %i.ag, label %ma__is_channel_map_valid.exit, label %.critedge.preheader.preheader.i351

.critedge.preheader.preheader.i351:               ; preds = %bb.o
  %i.ah = zext nneg i32 %i.ab to i64              ; 3 uses
  br label %.critedge.preheader.i352

.critedge.loopexit.i357:                          ; preds = %bb.p, %.critedge.preheader.i352
  %indvars.iv.next.i358 = add nuw nsw i64 %indvars.iv.i354, 1
  %exitcond39.not.i359 = icmp eq i64 %indvars.iv.next36.i355, %i.ah
  br i1 %exitcond39.not.i359, label %ma__is_channel_map_valid.exit365.thread, label %.critedge.preheader.i352, !llvm.loop !1261

.critedge.preheader.i352:                         ; preds = %.critedge.loopexit.i357, %.critedge.preheader.preheader.i351
  %indvars.iv35.i353 = phi i64 [ 0, %.critedge.preheader.preheader.i351 ], [ %indvars.iv.next36.i355, %.critedge.loopexit.i357 ] ; 2 uses
  %indvars.iv.i354 = phi i64 [ 1, %.critedge.preheader.preheader.i351 ], [ %indvars.iv.next.i358, %.critedge.loopexit.i357 ] ; 2 uses
  %indvars.iv.next36.i355 = add nuw nsw i64 %indvars.iv35.i353, 1 ; 3 uses
  %.not2528.i356 = icmp samesign ult i64 %indvars.iv.next36.i355, %i.ah
  br i1 %.not2528.i356, label %.lr.ph.i361, label %.critedge.loopexit.i357

.lr.ph.i361:                                      ; preds = %.critedge.preheader.i352
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv35.i353
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !119
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next33.i363 = add nuw nsw i64 %indvars.iv32.i362, 1 ; 2 uses
  %exitcond.not.i364 = icmp eq i64 %indvars.iv.next33.i363, %i.ah
  br i1 %exitcond.not.i364, label %.critedge.loopexit.i357, label %bb.q, !llvm.loop !1262

bb.q:                                             ; preds = %bb.p, %.lr.ph.i361
  %indvars.iv32.i362 = phi i64 [ %indvars.iv.i354, %.lr.ph.i361 ], [ %indvars.iv.next33.i363, %bb.p ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv32.i362
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !119
  %i.am = icmp eq i8 %i.aj, %i.al
  br i1 %i.am, label %ma__is_channel_map_valid.exit, label %bb.p

ma__is_channel_map_valid.exit365.thread:          ; preds = %.critedge.loopexit.i357, %bb.n, %bb.m, %ma__is_channel_map_valid.exit.thread
  store ptr %0, ptr %2, align 8, !tbaa !219
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !309
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !310
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !134
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !134
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1267
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.au, ptr %i.av, align 8, !tbaa !311
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !312 ; 2 uses
  %.not320 = icmp eq ptr %i.ax, null
  br i1 %.not320, label %bb.s, label %bb.r

bb.r:                                             ; preds = %ma__is_channel_map_valid.exit365.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 600 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ay, ptr noundef nonnull align 8 dereferenceable(256) %i.ax, i64 256, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %ma__is_channel_map_valid.exit365.thread, %bb.r
  %.sink = phi ptr [ %i.ay, %bb.r ], [ null, %ma__is_channel_map_valid.exit365.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 592
  store ptr %.sink, ptr %i.az, align 8, !tbaa !228
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1268 ; 2 uses
  %.not321 = icmp eq ptr %i.bb, null
  br i1 %.not321, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 2032 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bc, ptr noundef nonnull align 8 dereferenceable(256) %i.bb, i64 256, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink520 = phi ptr [ %i.bc, %bb.t ], [ null, %bb.s ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 2024
  store ptr %.sink520, ptr %i.bd, align 8, !tbaa !224
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 397
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.bh = load <4 x i8>, ptr %i.be, align 8, !tbaa !119
  store <4 x i8> %i.bh, ptr %i.bf, align 1, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 404
  store atomic volatile i32 1065353216, ptr %i.bi seq_cst, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.bm = load <2 x i32>, ptr %1, align 8, !tbaa !118
  store <2 x i32> %i.bm, ptr %i.bj, align 8, !tbaa !118
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1269
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !242
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !1270
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !244
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.bv = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !134
  store <2 x ptr> %i.bv, ptr %i.bu, align 8, !tbaa !134
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !313
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 2544
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !1271
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 2548 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 2552 ; 5 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !1264 ; 4 uses
  %i.ce = load <2 x i32>, ptr %i.bz, align 8, !tbaa !118
  store <2 x i32> %i.ce, ptr %i.ca, align 4, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 2556 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1265 ; 2 uses
  %i.ci = icmp eq i32 %i.cd, 0
  br i1 %i.ci, label %ma_channel_map_copy_or_default.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i366 = icmp eq ptr %i.ch, null
  br i1 %.not.i366, label %.preheader.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = zext i32 %i.cd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr nonnull readonly align 1 %i.ch, i64 %i.cj, i1 false)
  br label %ma_channel_map_copy_or_default.exit

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.024.i.i = phi i32 [ %i.cn, %.preheader.i.i ], [ 0, %bb.v ] ; 2 uses
  %.01723.i.i = phi ptr [ %i.cl, %.preheader.i.i ], [ %i.cf, %bb.v ] ; 2 uses
  %.01822.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ 254, %bb.v ]
  %i.ck = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.cd, i32 noundef %.024.i.i)
  store i8 %i.ck, ptr %.01723.i.i, align 1, !tbaa !119
  %i.cl = getelementptr inbounds nuw i8, ptr %.01723.i.i, i64 1
  %i.cm = add nsw i64 %.01822.i.i, -1             ; 2 uses
  %i.cn = add nuw nsw i32 %.024.i.i, 1            ; 2 uses
  %i.co = icmp uge i32 %i.cn, %i.cd
  %i.cp = icmp eq i64 %i.cm, 0
  %or.cond5.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond5.i.i, label %ma_channel_map_copy_or_default.exit, label %.preheader.i.i, !llvm.loop !5

ma_channel_map_copy_or_default.exit:              ; preds = %.preheader.i.i, %bb.u, %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 3088
  %i.cs = load <2 x i32>, ptr %i.cq, align 8, !tbaa !118
  store <2 x i32> %i.cs, ptr %i.cr, align 8, !tbaa !118
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !314
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 1112
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !1272
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 1116 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 1120 ; 4 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !308 ; 4 uses
  %i.db = load <2 x i32>, ptr %i.cw, align 8, !tbaa !118
  store <2 x i32> %i.db, ptr %i.cx, align 4, !tbaa !118
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 1124 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1266 ; 2 uses
  %i.df = icmp eq i32 %i.da, 0
  br i1 %i.df, label %ma_channel_map_copy_or_default.exit373, label %bb.x

bb.x:                                             ; preds = %ma_channel_map_copy_or_default.exit
  %.not.i367 = icmp eq ptr %i.de, null
  br i1 %.not.i367, label %.preheader.i.i368, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = zext i32 %i.da to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr nonnull readonly align 1 %i.de, i64 %i.dg, i1 false)
  br label %ma_channel_map_copy_or_default.exit373

.preheader.i.i368:                                ; preds = %bb.x, %.preheader.i.i368
  %.024.i.i369 = phi i32 [ %i.dk, %.preheader.i.i368 ], [ 0, %bb.x ] ; 2 uses
  %.01723.i.i370 = phi ptr [ %i.di, %.preheader.i.i368 ], [ %i.dc, %bb.x ] ; 2 uses
  %.01822.i.i371 = phi i64 [ %i.dj, %.preheader.i.i368 ], [ 254, %bb.x ]
  %i.dh = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.da, i32 noundef %.024.i.i369)
  store i8 %i.dh, ptr %.01723.i.i370, align 1, !tbaa !119
  %i.di = getelementptr inbounds nuw i8, ptr %.01723.i.i370, i64 1
  %i.dj = add nsw i64 %.01822.i.i371, -1          ; 2 uses
  %i.dk = add nuw nsw i32 %.024.i.i369, 1         ; 2 uses
  %i.dl = icmp uge i32 %i.dk, %i.da
  %i.dm = icmp eq i64 %i.dj, 0
  %or.cond5.i.i372 = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond5.i.i372, label %ma_channel_map_copy_or_default.exit373, label %.preheader.i.i368, !llvm.loop !5

ma_channel_map_copy_or_default.exit373:           ; preds = %.preheader.i.i368, %ma_channel_map_copy_or_default.exit, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 1656
  %i.dp = load <2 x i32>, ptr %i.dn, align 8, !tbaa !118
  store <2 x i32> %i.dp, ptr %i.do, align 8, !tbaa !118
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dq, i8 0, i64 40, i1 false)
  %i.dr = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.dq, ptr noundef null) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %ma_channel_map_copy_or_default.exit373
  %i.ds = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.dr) ; 2 uses
  %.not322 = icmp eq i32 %i.ds, 0
  br i1 %.not322, label %ma_mutex_init.exit.thread, label %ma__is_channel_map_valid.exit

ma_mutex_init.exit.thread:                        ; preds = %ma_channel_map_copy_or_default.exit373, %ma_mutex_init.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.du = tail call i32 @ma_event_init(ptr noundef nonnull %i.dt) ; 2 uses
  %.not323 = icmp eq i32 %i.du, 0
  br i1 %.not323, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %ma_mutex_init.exit.thread
  %i.dv = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.dq) #55 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.aa:                                            ; preds = %ma_mutex_init.exit.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.dx = tail call i32 @ma_event_init(ptr noundef nonnull %i.dw) ; 2 uses
  %.not324 = icmp eq i32 %i.dx, 0
  br i1 %.not324, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.dz = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.dy) #55 ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.eb = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ea) #55 ; 0 uses
  %i.ec = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.dq) #55 ; 0 uses
  br label %ma__is_channel_map_valid.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.ee = tail call i32 @ma_event_init(ptr noundef nonnull %i.ed) ; 2 uses
  %.not325 = icmp eq i32 %i.ee, 0
end_hunk_0
begin_hunk_1_@ma_device_init_by_type__alsa:bb.a
  %.pre602 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i461

ma_device_get_context.exit.i461:                  ; preds = %bb.cc, %bb.cb
  %i.qo = phi ptr [ %.pre602, %bb.cc ], [ %i.qj, %bb.cb ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 440
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !119
  %i.qr = call i32 %i.qq(ptr noundef %i.bj) #55   ; 0 uses
  %i.qs = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, null
  br i1 %i.qt, label %ma_device_get_log.exit463, label %bb.cd

bb.cd:                                            ; preds = %ma_device_get_context.exit.i461
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 112
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !275
  br label %ma_device_get_log.exit463

ma_device_get_log.exit463:                        ; preds = %ma_device_get_context.exit.i461, %bb.cd
  %.0.i1.i462 = phi ptr [ %i.qv, %bb.cd ], [ null, %ma_device_get_context.exit.i461 ]
  %i.qw = call i32 @ma_log_post(ptr noundef %.0.i1.i462, i32 noundef 1, ptr noundef nonnull @.str.413) ; 0 uses
  %i.qx = sub nsw i32 0, %i.qh
  %i.qy = call fastcc i32 @ma_result_from_errno(i32 noundef %i.qx)
  br label %ma_log_post.exit

bb.ce:                                            ; preds = %bb.ca
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qj, i64 720
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !119
  %i.rb = load i64, ptr %i.c, align 8, !tbaa !154
  %i.rc = call i32 %i.ra(ptr noundef %i.bj, ptr noundef nonnull %i.nj, i64 noundef %i.rb) #55 ; 2 uses
  %i.rd = icmp slt i32 %i.rc, 0
  br i1 %i.rd, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.re = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 312
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !132 ; 2 uses
  %.not9.i465 = icmp eq ptr %i.rg, null
  br i1 %.not9.i465, label %ma_device_get_context.exit.i467, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 288
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !126
  call void %i.rg(ptr noundef nonnull %i.nj, ptr noundef %i.ri) #55, !inline_history !133
  %.pre601 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i467

ma_device_get_context.exit.i467:                  ; preds = %bb.cg, %bb.cf
  %i.rj = phi ptr [ %.pre601, %bb.cg ], [ %i.re, %bb.cf ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 440
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !119
  %i.rm = call i32 %i.rl(ptr noundef %i.bj) #55   ; 0 uses
  %i.rn = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %ma_device_get_log.exit469, label %bb.ch

bb.ch:                                            ; preds = %ma_device_get_context.exit.i467
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 112
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !275
  br label %ma_device_get_log.exit469

ma_device_get_log.exit469:                        ; preds = %ma_device_get_context.exit.i467, %bb.ch
  %.0.i1.i468 = phi ptr [ %i.rq, %bb.ch ], [ null, %ma_device_get_context.exit.i467 ]
  %i.rr = call i32 @ma_log_post(ptr noundef %.0.i1.i468, i32 noundef 1, ptr noundef nonnull @.str.414) ; 0 uses
  %i.rs = sub nsw i32 0, %i.rc
  %i.rt = call fastcc i32 @ma_result_from_errno(i32 noundef %i.rs)
  br label %ma_log_post.exit

bb.ci:                                            ; preds = %bb.ce, %bb.bz
  %i.ru = load ptr, ptr %0, align 8, !tbaa !219
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 728
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !119
  %i.rx = call i32 %i.rw(ptr noundef %i.bj, ptr noundef nonnull %i.nj) #55 ; 2 uses
  %i.ry = icmp slt i32 %i.rx, 0
  %i.rz = load ptr, ptr %0, align 8, !tbaa !219   ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 312
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !132 ; 3 uses
  %.not9.i471 = icmp eq ptr %i.sb, null           ; 2 uses
  br i1 %i.ry, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  br i1 %.not9.i471, label %ma_device_get_context.exit.i473, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 288
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !126
  call void %i.sb(ptr noundef nonnull %i.nj, ptr noundef %i.sd) #55, !inline_history !133
  %.pre600 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i473

ma_device_get_context.exit.i473:                  ; preds = %bb.ck, %bb.cj
  %i.se = phi ptr [ %.pre600, %bb.ck ], [ %i.rz, %bb.cj ]
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 440
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !119
  %i.sh = call i32 %i.sg(ptr noundef %i.bj) #55   ; 0 uses
  %i.si = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %ma_device_get_log.exit475, label %bb.cl

bb.cl:                                            ; preds = %ma_device_get_context.exit.i473
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 112
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !275
  br label %ma_device_get_log.exit475

ma_device_get_log.exit475:                        ; preds = %ma_device_get_context.exit.i473, %bb.cl
  %.0.i1.i474 = phi ptr [ %i.sl, %bb.cl ], [ null, %ma_device_get_context.exit.i473 ]
  %i.sm = call i32 @ma_log_post(ptr noundef %.0.i1.i474, i32 noundef 1, ptr noundef nonnull @.str.415) ; 0 uses
  %i.sn = sub nsw i32 0, %i.rx
  %i.so = call fastcc i32 @ma_result_from_errno(i32 noundef %i.sn)
  br label %ma_log_post.exit

bb.cm:                                            ; preds = %bb.ci
  br i1 %.not9.i471, label %ma_free.exit478, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rz, i64 288
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !126
  call void %i.sb(ptr noundef nonnull %i.nj, ptr noundef %i.sq) #55, !inline_history !133
  %.pre595.a = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_free.exit478

ma_free.exit478:                                  ; preds = %bb.cm, %bb.cn
  %i.sr = phi ptr [ %i.rz, %bb.cm ], [ %.pre595.a, %bb.cn ]
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 752
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !119 ; 2 uses
  %.not337 = icmp eq ptr %i.st, null
  br i1 %.not337, label %.thread549, label %bb.co

bb.co:                                            ; preds = %ma_free.exit478
  %i.su = call ptr %i.st(ptr noundef %i.bj) #55   ; 5 uses
  %.not338 = icmp eq ptr %i.su, null
  br i1 %.not338, label %.thread549, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !3130 ; 3 uses
  %.not339 = icmp ult i32 %i.sv, %i.ix
  br i1 %.not339, label %.preheader.i.preheader, label %.preheader554

.preheader.i.preheader:                           ; preds = %bb.cp
  %i.sw = add i32 %i.ix, -1
  %i.sx = call i32 @llvm.umin.i32(i32 %i.sw, i32 253)
  %umin = zext nneg i32 %i.sx to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %umin
  br label %.preheader.i

.preheader554:                                    ; preds = %bb.cp
  %.not566 = icmp eq i32 %i.ix, 0
  br i1 %.not566, label %ma_channel_map_init_standard.exit484, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader554
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %wide.trip.count = zext i32 %i.ix to i64
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph, %bb.cq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cq ] ; 3 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !118
  %i.tb = call fastcc zeroext i8 @ma_convert_alsa_channel_position_to_ma_channel(i32 noundef %i.ta)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ma_channel_map_init_standard.exit484, label %bb.cq, !llvm.loop !3122

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.024.i = phi i32 [ %i.tf, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.01723.i = phi ptr [ %i.te, %.preheader.i ], [ %i.b, %.preheader.i.preheader ] ; 3 uses
  %i.td = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 1, i32 noundef %i.ix, i32 noundef %.024.i)
  store i8 %i.td, ptr %.01723.i, align 1, !tbaa !119
  %i.te = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.tf = add nuw nsw i32 %.024.i, 1
  %exitcond572 = icmp eq ptr %.01723.i, %scevgep
  br i1 %exitcond572, label %ma_channel_map_init_standard.exit.preheader, label %.preheader.i, !llvm.loop !5

ma_channel_map_init_standard.exit.preheader:      ; preds = %.preheader.i
  %.not567 = icmp eq i32 %i.sv, 0
  br i1 %.not567, label %.preheader, label %.lr.ph560

.lr.ph560:                                        ; preds = %ma_channel_map_init_standard.exit.preheader
  %i.tg = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %wide.trip.count576 = zext i32 %i.sv to i64
  br label %ma_channel_map_init_standard.exit

.preheader:                                       ; preds = %ma_channel_map_init_standard.exit, %ma_channel_map_init_standard.exit.preheader
  %i.th = zext i32 %i.ix to i64
  %i.ti = icmp ugt i32 %i.ix, 1
  br i1 %i.ti, label %.lr.ph562, label %ma_channel_map_init_standard.exit484

ma_channel_map_init_standard.exit:                ; preds = %.lr.ph560, %ma_channel_map_init_standard.exit
  %indvars.iv573 = phi i64 [ 0, %.lr.ph560 ], [ %indvars.iv.next574, %ma_channel_map_init_standard.exit ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv573
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !118
  %i.tl = call fastcc zeroext i8 @ma_convert_alsa_channel_position_to_ma_channel(i32 noundef %i.tk)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv573
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !119
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %.preheader, label %ma_channel_map_init_standard.exit, !llvm.loop !3123

.lr.ph562:                                        ; preds = %.preheader, %._crit_edge
  %indvars.iv.next585709 = phi i64 [ %indvars.iv.next585, %._crit_edge ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv578708 = phi i64 [ %indvars.iv.next579, %._crit_edge ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv584707 = phi i64 [ %indvars.iv.next585709, %._crit_edge ], [ 0, %.preheader ]
  %i.tn = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv584707
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !119
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cs
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next581 to i32
  %exitcond583.not = icmp eq i32 %i.ix, %lftr.wideiv
  br i1 %exitcond583.not, label %._crit_edge, label %bb.cs, !llvm.loop !3124

bb.cs:                                            ; preds = %.lr.ph562, %bb.cr
  %indvars.iv580 = phi i64 [ %indvars.iv578708, %.lr.ph562 ], [ %indvars.iv.next581, %bb.cr ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv580
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !119
  %.not704 = icmp eq i8 %i.to, %i.tq
  br i1 %.not704, label %.preheader.i479, label %bb.cr

._crit_edge:                                      ; preds = %bb.cr
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578708, 1
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv.next585709, 1 ; 2 uses
  %i.tr = icmp samesign ult i64 %indvars.iv.next585, %i.th
  br i1 %i.tr, label %.lr.ph562, label %ma_channel_map_init_standard.exit484, !llvm.loop !3125

.preheader.i479:                                  ; preds = %bb.cs, %.preheader.i479
  %.024.i480 = phi i32 [ %i.tv, %.preheader.i479 ], [ 0, %bb.cs ] ; 2 uses
  %.01723.i481 = phi ptr [ %i.tt, %.preheader.i479 ], [ %i.b, %bb.cs ] ; 2 uses
  %.01822.i482 = phi i64 [ %i.tu, %.preheader.i479 ], [ 254, %bb.cs ]
  %i.ts = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 1, i32 noundef %i.ix, i32 noundef %.024.i480)
  store i8 %i.ts, ptr %.01723.i481, align 1, !tbaa !119
  %i.tt = getelementptr inbounds nuw i8, ptr %.01723.i481, i64 1
  %i.tu = add nsw i64 %.01822.i482, -1            ; 2 uses
  %i.tv = add nuw nsw i32 %.024.i480, 1           ; 2 uses
  %i.tw = icmp uge i32 %i.tv, %i.ix
  %i.tx = icmp eq i64 %i.tu, 0
  %or.cond5.i483 = select i1 %i.tw, i1 true, i1 %i.tx
  br i1 %or.cond5.i483, label %ma_channel_map_init_standard.exit484, label %.preheader.i479, !llvm.loop !5

ma_channel_map_init_standard.exit484:             ; preds = %bb.cq, %._crit_edge, %.preheader.i479, %.preheader, %.preheader554
  call void @free(ptr noundef %i.su) #55
  br label %ma_channel_map_init_standard.exit490

.thread549:                                       ; preds = %ma_free.exit478, %bb.co
  %i.ty = icmp eq i32 %i.ix, 0
  br i1 %i.ty, label %ma_channel_map_init_standard.exit490, label %.preheader.i485.preheader

.preheader.i485.preheader:                        ; preds = %.thread549
  %i.tz = add i32 %i.ix, -1
  %i.ua = call i32 @llvm.umin.i32(i32 %i.tz, i32 253)
  %umin587 = zext nneg i32 %i.ua to i64
  %scevgep588 = getelementptr i8, ptr %i.b, i64 %umin587
  br label %.preheader.i485

.preheader.i485:                                  ; preds = %.preheader.i485.preheader, %.preheader.i485
  %.024.i486 = phi i32 [ %i.ud, %.preheader.i485 ], [ 0, %.preheader.i485.preheader ] ; 2 uses
  %.01723.i487 = phi ptr [ %i.uc, %.preheader.i485 ], [ %i.b, %.preheader.i485.preheader ] ; 3 uses
  %i.ub = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 1, i32 noundef %i.ix, i32 noundef %.024.i486)
  store i8 %i.ub, ptr %.01723.i487, align 1, !tbaa !119
  %i.uc = getelementptr inbounds nuw i8, ptr %.01723.i487, i64 1
  %i.ud = add nuw nsw i32 %.024.i486, 1
  %exitcond589 = icmp eq ptr %.01723.i487, %scevgep588
  br i1 %exitcond589, label %ma_channel_map_init_standard.exit490, label %.preheader.i485, !llvm.loop !5

ma_channel_map_init_standard.exit490:             ; preds = %.preheader.i485, %.thread549, %ma_channel_map_init_standard.exit484
  %i.ue = load ptr, ptr %0, align 8, !tbaa !219
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 944
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !119
  %i.uh = call i32 %i.ug(ptr noundef %i.bj) #55   ; 3 uses
  %i.ui = icmp slt i32 %i.uh, 1
  %i.uj = load ptr, ptr %0, align 8, !tbaa !219   ; 4 uses
  br i1 %i.ui, label %ma_device_get_context.exit.i491, label %bb.cu

ma_device_get_context.exit.i491:                  ; preds = %ma_channel_map_init_standard.exit490
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 440
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !119
  %i.um = call i32 %i.ul(ptr noundef %i.bj) #55   ; 0 uses
  %i.un = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.uo = icmp eq ptr %i.un, null
  br i1 %i.uo, label %ma_device_get_log.exit493, label %bb.ct

bb.ct:                                            ; preds = %ma_device_get_context.exit.i491
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 112
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !275
  br label %ma_device_get_log.exit493

ma_device_get_log.exit493:                        ; preds = %ma_device_get_context.exit.i491, %bb.ct
  %.0.i1.i492 = phi ptr [ %i.uq, %bb.ct ], [ null, %ma_device_get_context.exit.i491 ]
  %i.ur = call i32 @ma_log_post(ptr noundef %.0.i1.i492, i32 noundef 1, ptr noundef nonnull @.str.416) ; 0 uses
  br label %ma_log_post.exit

bb.cu:                                            ; preds = %ma_channel_map_init_standard.exit490
  %i.us = getelementptr inbounds nuw i8, ptr %i.uj, i64 296
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !125 ; 2 uses
  %.not8.i495 = icmp eq ptr %i.ut, null
  br i1 %.not8.i495, label %ma_device_get_context.exit.i497, label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.cu
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uj, i64 288
  %i.uv = add nuw nsw i32 %i.uh, 1
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = shl nuw nsw i64 %i.uw, 3
  %i.uy = load ptr, ptr %i.uu, align 8, !tbaa !126
  %i.uz = call ptr %i.ut(i64 noundef %i.ux, ptr noundef %i.uy) #55, !inline_history !127 ; 10 uses
  %i.va = icmp eq ptr %i.uz, null
  br i1 %i.va, label %ma_malloc.exit.ma_device_get_context.exit.i497_crit_edge, label %bb.cw

ma_malloc.exit.ma_device_get_context.exit.i497_crit_edge: ; preds = %ma_malloc.exit
  %.pre599 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i497

ma_device_get_context.exit.i497:                  ; preds = %ma_malloc.exit.ma_device_get_context.exit.i497_crit_edge, %bb.cu
  %i.vb = phi ptr [ %.pre599, %ma_malloc.exit.ma_device_get_context.exit.i497_crit_edge ], [ %i.uj, %bb.cu ]
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 440
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !119
  %i.ve = call i32 %i.vd(ptr noundef %i.bj) #55   ; 0 uses
  %i.vf = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, null
  br i1 %i.vg, label %ma_device_get_log.exit499, label %bb.cv

bb.cv:                                            ; preds = %ma_device_get_context.exit.i497
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 112
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !275
  br label %ma_device_get_log.exit499

ma_device_get_log.exit499:                        ; preds = %ma_device_get_context.exit.i497, %bb.cv
  %.0.i1.i498 = phi ptr [ %i.vi, %bb.cv ], [ null, %ma_device_get_context.exit.i497 ]
  %i.vj = call i32 @ma_log_post(ptr noundef %.0.i1.i498, i32 noundef 1, ptr noundef nonnull @.str.417) ; 0 uses
  br label %ma_log_post.exit

bb.cw:                                            ; preds = %ma_malloc.exit
  %i.vk = call i32 @eventfd(i32 noundef 0, i32 noundef 0) #55 ; 6 uses
  %i.vl = icmp slt i32 %i.vk, 0
  br i1 %i.vl, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.vm = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 312
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !132 ; 2 uses
  %.not9.i501 = icmp eq ptr %i.vo, null
  br i1 %.not9.i501, label %ma_device_get_context.exit.i503, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 288
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !126
  call void %i.vo(ptr noundef nonnull %i.uz, ptr noundef %i.vq) #55, !inline_history !133
  %.pre598 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i503

ma_device_get_context.exit.i503:                  ; preds = %bb.cy, %bb.cx
  %i.vr = phi ptr [ %.pre598, %bb.cy ], [ %i.vm, %bb.cx ]
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 440
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !119
  %i.vu = call i32 %i.vt(ptr noundef %i.bj) #55   ; 0 uses
  %i.vv = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %ma_device_get_log.exit505, label %bb.cz

bb.cz:                                            ; preds = %ma_device_get_context.exit.i503
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 112
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !275
  br label %ma_device_get_log.exit505

ma_device_get_log.exit505:                        ; preds = %ma_device_get_context.exit.i503, %bb.cz
  %.0.i1.i504 = phi ptr [ %i.vy, %bb.cz ], [ null, %ma_device_get_context.exit.i503 ]
  %i.vz = call i32 @ma_log_post(ptr noundef %.0.i1.i504, i32 noundef 1, ptr noundef nonnull @.str.418) ; 0 uses
  %i.wa = tail call ptr @__errno_location() #68
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !118
  %i.wc = call fastcc i32 @ma_result_from_errno(i32 noundef %i.wb)
  br label %ma_log_post.exit

bb.da:                                            ; preds = %bb.cw
  store i32 %i.vk, ptr %i.uz, align 4, !tbaa !1168
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  store i16 1, ptr %i.wd, align 4, !tbaa !3131
  %i.we = getelementptr inbounds nuw i8, ptr %i.uz, i64 6
  store i16 0, ptr %i.we, align 2, !tbaa !1169
  %i.wf = load ptr, ptr %0, align 8, !tbaa !219
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 936
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !119
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.wj = call i32 %i.wh(ptr noundef %i.bj, ptr noundef nonnull %i.wi, i32 noundef %i.uh) #55 ; 3 uses
  %i.wk = icmp slt i32 %i.wj, 1
  br i1 %i.wk, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.wl = call i32 @close(i32 noundef %i.vk) #55  ; 0 uses
  %i.wm = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 312
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !132 ; 2 uses
  %.not9.i507 = icmp eq ptr %i.wo, null
  br i1 %.not9.i507, label %ma_device_get_context.exit.i509, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 288
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !126
  call void %i.wo(ptr noundef nonnull %i.uz, ptr noundef %i.wq) #55, !inline_history !133
  %.pre597 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i509

ma_device_get_context.exit.i509:                  ; preds = %bb.dc, %bb.db
  %i.wr = phi ptr [ %.pre597, %bb.dc ], [ %i.wm, %bb.db ]
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 440
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !119
  %i.wu = call i32 %i.wt(ptr noundef %i.bj) #55   ; 0 uses
  %i.wv = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ww = icmp eq ptr %i.wv, null
  br i1 %i.ww, label %ma_device_get_log.exit511, label %bb.dd

bb.dd:                                            ; preds = %ma_device_get_context.exit.i509
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 112
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !275
  br label %ma_device_get_log.exit511

ma_device_get_log.exit511:                        ; preds = %ma_device_get_context.exit.i509, %bb.dd
  %.0.i1.i510 = phi ptr [ %i.wy, %bb.dd ], [ null, %ma_device_get_context.exit.i509 ]
  %i.wz = call i32 @ma_log_post(ptr noundef %.0.i1.i510, i32 noundef 1, ptr noundef nonnull @.str.419) ; 0 uses
  br label %ma_log_post.exit

bb.de:                                            ; preds = %bb.da
  %i.xa = icmp eq i32 %3, 2                       ; 2 uses
  br i1 %i.xa, label %bb.df, label %bb.dg

end_hunk_1
