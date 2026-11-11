Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_sound_group_set_stop_time_in_milliseconds:bb.a

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define range(i32 0, 2) i32 @ma_sound_group_is_playing(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_sound_is_playing.exit, label %ma_sound_get_engine.exit.i

ma_sound_get_engine.exit.i:                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1051 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ma_node_get_state.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %ma_sound_get_engine.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  br label %ma_node_get_state.exit.i.i.i

ma_node_get_state.exit.i.i.i:                     ; preds = %bb.b, %ma_sound_get_engine.exit.i
  %.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %ma_sound_get_engine.exit.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %ma_sound_is_playing.exit, label %ma_node_get_state_time.exit.i.i.i

ma_node_get_state_time.exit.i.i.i:                ; preds = %ma_node_get_state.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %i.l = icmp ult i64 %i.k, %.0.i.i.i
  br i1 %i.l, label %ma_sound_is_playing.exit, label %ma_node_get_state_time.exit10.i.i.i

ma_node_get_state_time.exit10.i.i.i:              ; preds = %ma_node_get_state_time.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = icmp ule i64 %i.n, %.0.i.i.i
  %i.p = zext i1 %i.o to i32
  br label %ma_sound_is_playing.exit

ma_sound_is_playing.exit:                         ; preds = %bb.a, %ma_node_get_state.exit.i.i.i, %ma_node_get_state_time.exit.i.i.i, %ma_node_get_state_time.exit10.i.i.i
  %.0.i = phi i32 [ 0, %bb.a ], [ 0, %ma_node_get_state.exit.i.i.i ], [ 0, %ma_node_get_state_time.exit.i.i.i ], [ %i.p, %ma_node_get_state_time.exit10.i.i.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i64 @ma_sound_group_get_time_in_pcm_frames(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_sound_get_time_in_pcm_frames.exit, label %ma_node_get_time.exit.i

ma_node_get_time.exit.i:                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  br label %ma_sound_get_time_in_pcm_frames.exit

ma_sound_get_time_in_pcm_frames.exit:             ; preds = %bb.a, %ma_node_get_time.exit.i
  %.0.i = phi i64 [ %i.c, %ma_node_get_time.exit.i ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_dr_wav_version(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 14, ptr %1, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 5, ptr %2, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_dr_wav_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ma_dr_wav_fmt_get_format(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !1077   ; 2 uses
  %.not = icmp eq i16 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i16 [ %i.d, %bb.c ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ma_dr_wav_bytes_to_u16(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  ret i16 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_wav_init_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %ma_dr_wav_preinit.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, i8 0, i64 400, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !673
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !674
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.f, align 8, !tbaa !675
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.g, align 8, !tbaa !676
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %.thread.i, label %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i

.thread.i:                                        ; preds = %bb.b
  %.sroa.5.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ma_dr_wav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @ma_dr_wav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i, align 8, !tbaa !134
  %.sroa.7.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @ma_dr_wav__free_default, ptr %.sroa.7.0..sroa_idx38.i, align 8, !tbaa !134
  br label %ma_dr_wav_preinit.exit

ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6.0.copyload27.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.7.0.copyload29.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.5.0.copyload25.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i, align 8, !tbaa !134
  %i.i = load <2 x ptr>, ptr %8, align 8, !tbaa !134
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !134
  %i.j = icmp eq ptr %.sroa.7.0.copyload29.i, null
  br i1 %i.j, label %ma_dr_wav_preinit.exit.thread, label %bb.c

bb.c:                                             ; preds = %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i
  %i.k = icmp eq ptr %.sroa.5.0.copyload25.i, null
  %i.l = icmp eq ptr %.sroa.6.0.copyload27.i, null
  %or.cond39.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond39.i, label %ma_dr_wav_preinit.exit.thread, label %ma_dr_wav_preinit.exit

ma_dr_wav_preinit.exit:                           ; preds = %bb.c, %.thread.i
  %i.m = tail call fastcc i32 @ma_dr_wav_init__internal(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %6, i32 noundef %7)
  br label %ma_dr_wav_preinit.exit.thread

ma_dr_wav_preinit.exit.thread:                    ; preds = %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i, %bb.c, %bb.a, %ma_dr_wav_preinit.exit
  %.0 = phi i32 [ %i.m, %ma_dr_wav_preinit.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_wav_init__internal(ptr nofree noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca i64, align 8                      ; 24 uses
  %i.e = alloca [4 x i8], align 1                 ; 13 uses
  %4 = alloca %struct.ma_dr_wav_fmt, align 4      ; 20 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %5 = alloca %struct.ma_dr_wav__metadata_parser, align 8 ; 14 uses
  %i.g = alloca [12 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [4 x i8], align 1                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 16               ; 5 uses
  %i.l = alloca [4 x i8], align 4                 ; 7 uses
  %i.m = alloca [4 x i8], align 1                 ; 10 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %6 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 7 uses
  %7 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 21 uses
  %i.o = alloca [16 x i8], align 16               ; 22 uses
  %i.p = alloca [2 x i8], align 2                 ; 7 uses
  %i.q = alloca [22 x i8], align 16               ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 6 uses
  %i.s = alloca [24 x i8], align 16               ; 15 uses
  %i.t = alloca [8 x i8], align 4                 ; 7 uses
  %8 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 10 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca [4096 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  store i64 0, ptr %i.f, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.w = trunc i32 %3 to i1                       ; 2 uses
  %i.x = and i32 %3, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !673
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 43 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ab = call i64 %i.y(ptr noundef %i.aa, ptr noundef nonnull %i.e, i64 noundef 4) #55, !inline_history !2815
  %.not = icmp eq i64 %i.ab, 4
  br i1 %.not, label %bb.b, label %ma_dr_wav_free.exit779

bb.b:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.e, align 1, !tbaa !119
  switch i8 %i.ac, label %ma_dr_wav_free.exit779 [
    i8 82, label %bb.c
    i8 114, label %bb.d
    i8 70, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !119 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 70
  %or.cond1022 = select i1 %i.af, i1 %i.ai, i1 false ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.ak = load i8, ptr %i.aj, align 1             ; 3 uses
  %.not1212 = icmp eq i8 %i.ak, 70
  %or.cond1240 = select i1 %or.cond1022, i1 %.not1212, i1 false
  br i1 %or.cond1240, label %.thread1552, label %.thread

.thread:                                          ; preds = %bb.c
  %.not1213 = icmp eq i8 %i.ak, 88
  %or.cond1243 = select i1 %or.cond1022, i1 %.not1213, i1 false
  br i1 %or.cond1243, label %.thread1552, label %.thread805

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !119
  %i.an = icmp eq i8 %i.am, 105
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 102
  %or.cond1030 = select i1 %i.an, i1 %i.aq, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %.not1211 = icmp eq i8 %i.as, 102
  %or.cond1246 = select i1 %or.cond1030, i1 %.not1211, i1 false
  br i1 %or.cond1246, label %bb.e, label %ma_dr_wav_free.exit779

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 2, ptr %i.at, align 8, !tbaa !683
  %i.au = load ptr, ptr %0, align 8, !tbaa !673
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.aw = call i64 %i.au(ptr noundef %i.av, ptr noundef nonnull %i.g, i64 noundef 12) #55, !inline_history !2815
  %.not468 = icmp eq i64 %i.aw, 12
  %i.ax = load <8 x i8>, ptr %i.g, align 8
  %.fr1828.a = freeze <8 x i8> %i.ax
  %i.ay = icmp eq <8 x i8> %.fr1828.a, <i8 46, i8 -111, i8 -49, i8 17, i8 -91, i8 -42, i8 40, i8 -37> ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load <4 x i8>, ptr %i.az, align 8
  %.fr1829.a = freeze <4 x i8> %i.ba
  %i.bb = icmp eq <4 x i8> %.fr1829.a, <i8 4, i8 -63, i8 0, i8 0>
  %i.bc = shufflevector <8 x i1> %i.ay, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1826 = and <4 x i1> %i.bc, %i.bb
  %i.bd = shufflevector <4 x i1> %rdx.op1826, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <8 x i1> %i.bd, <8 x i1> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bf = bitcast <8 x i1> %i.be to i8
  %i.bg = icmp eq i8 %i.bf, -1
  %op.rdx1827 = select i1 %i.bg, i1 %.not468, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  br i1 %op.rdx1827, label %bb.g, label %ma_dr_wav_free.exit779

.thread805:                                       ; preds = %.thread
  %i.bh = icmp eq i8 %i.ae, 70
  %i.bi = icmp eq i8 %i.ah, 54
  %or.cond1034 = select i1 %i.bh, i1 %i.bi, i1 false
  %.not1214 = icmp eq i8 %i.ak, 52
  %or.cond1249 = select i1 %or.cond1034, i1 %.not1214, i1 false
  br i1 %or.cond1249, label %.thread1552, label %ma_dr_wav_free.exit779

bb.f:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !119
  %i.bl = icmp eq i8 %i.bk, 79
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 82
  %or.cond1038 = select i1 %i.bl, i1 %i.bo, i1 false
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  %.not1210 = icmp eq i8 %i.bq, 77
  %or.cond1252 = select i1 %or.cond1038, i1 %.not1210, i1 false
  br i1 %or.cond1252, label %.thread1553, label %ma_dr_wav_free.exit779

.thread1553:                                      ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 4, ptr %i.br, align 8, !tbaa !683
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.o

.thread1552:                                      ; preds = %.thread805, %.thread, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %.thread ], [ 3, %.thread805 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink, ptr %i.bt, align 8, !tbaa !683
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.pre = load i32, ptr %i.at, align 8, !tbaa !683
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  switch i32 %.pre, label %ma_dr_wav_free.exit779 [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 3, label %bb.h
    i32 2, label %bb.l
    i32 4, label %bb.o
  ]

bb.h:                                             ; preds = %.thread1552, %bb.g, %bb.g, %bb.g
  %i.bw = phi ptr [ %i.bu, %.thread1552 ], [ %i.bv, %bb.g ], [ %i.bv, %bb.g ], [ %i.bv, %bb.g ] ; 2 uses
  %i.bx = phi i64 [ 4, %.thread1552 ], [ 16, %bb.g ], [ 16, %bb.g ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #55
  %i.by = load ptr, ptr %0, align 8, !tbaa !673
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ca = call i64 %i.by(ptr noundef %i.bz, ptr noundef nonnull %i.h, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.cb = add i64 %i.bx, %i.ca
  %.not477 = icmp eq i64 %i.ca, 4
  br i1 %.not477, label %bb.i, label %.critedge537

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.bw, align 8, !tbaa !683
  switch i32 %i.cc, label %.critedge537 [
    i32 3, label %bb.j
    i32 1, label %ma_dr_wav_bytes_to_u32_ex.exit590
    i32 0, label %ma_dr_wav_bytes_to_u32_ex.exit590
  ]

bb.j:                                             ; preds = %bb.i
  %i.cd = load i32, ptr %i.h, align 4
  %.not478 = icmp eq i32 %i.cd, -1
  br i1 %.not478, label %ma_dr_wav_bytes_to_u32_ex.exit590, label %.critedge537

ma_dr_wav_bytes_to_u32_ex.exit590:                ; preds = %bb.i, %bb.i, %bb.j
  %i.ce = load ptr, ptr %0, align 8, !tbaa !673
  %i.cf = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cg = call i64 %i.ce(ptr noundef %i.cf, ptr noundef nonnull %i.i, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.ch = add i64 %i.cg, %i.cb                    ; 2 uses
  store i64 %i.ch, ptr %i.d, align 8, !tbaa !164
  %.not479 = icmp eq i64 %i.cg, 4
  br i1 %.not479, label %bb.k, label %.critedge537

bb.k:                                             ; preds = %ma_dr_wav_bytes_to_u32_ex.exit590
  %9 = load i8, ptr %i.i, align 1, !tbaa !119
  %10 = icmp eq i8 %9, 87
  %11 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 65
  %or.cond1042 = select i1 %10, i1 %13, i1 false
  %14 = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 86
  %or.cond1046 = select i1 %or.cond1042, i1 %16, i1 false
  %17 = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %18 = load i8, ptr %17, align 1
  %.fr = freeze i8 %18
  %.not1217 = icmp eq i8 %.fr, 69
  %or.cond1255 = and i1 %or.cond1046, %.not1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  br i1 %or.cond1255, label %.thread821, label %ma_dr_wav_free.exit779

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #55
  %i.ci = load ptr, ptr %0, align 8, !tbaa !673
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ck = call i64 %i.ci(ptr noundef %i.cj, ptr noundef nonnull %i.j, i64 noundef 8) #55, !inline_history !2815
  %.not474 = icmp ne i64 %i.ck, 8
  %i.cl = load i64, ptr %i.j, align 8
  %i.cm = icmp ult i64 %i.cl, 80
  %or.cond1048 = select i1 %.not474, i1 true, i1 %i.cm
  br i1 %or.cond1048, label %.critedge540, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %0, align 8, !tbaa !673
  %i.co = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cp = call i64 %i.cn(ptr noundef %i.co, ptr noundef nonnull %i.k, i64 noundef 16) #55, !inline_history !2815 ; 2 uses
  %i.cq = add i64 %i.cp, 24                       ; 2 uses
  store i64 %i.cq, ptr %i.d, align 8, !tbaa !164
  %.not475 = icmp eq i64 %i.cp, 16
  br i1 %.not475, label %bb.n, label %.critedge540

bb.n:                                             ; preds = %bb.m
  %i.cr = call i32 @ma_dr_wav_guid_equal(ptr noundef nonnull %i.k, ptr noundef nonnull @ma_dr_wavGUID_W64_WAVE)
  %.not476.not = icmp eq i32 %i.cr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #55
  br i1 %.not476.not, label %ma_dr_wav_free.exit779, label %.thread821

bb.o:                                             ; preds = %.thread1553, %bb.g
  %i.cs = phi ptr [ %i.bs, %.thread1553 ], [ %i.bv, %bb.g ] ; 2 uses
  %i.ct = phi i64 [ 4, %.thread1553 ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #55
  %i.cu = load ptr, ptr %0, align 8, !tbaa !673
  %i.cv = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cw = call i64 %i.cu(ptr noundef %i.cv, ptr noundef nonnull %i.l, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.cx = add i64 %i.ct, %i.cw
  %.not470 = icmp eq i64 %i.cw, 4
  br i1 %.not470, label %bb.p, label %.thread827

bb.p:                                             ; preds = %bb.o
  %i.cy = load i32, ptr %i.l, align 4
  %i.cz = call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = icmp ult i32 %i.cz, 18
  br i1 %i.da, label %.thread827, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %0, align 8, !tbaa !673
  %i.dc = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.dd = call i64 %i.db(ptr noundef %i.dc, ptr noundef nonnull %i.m, i64 noundef 4) #55, !inline_history !2815 ; 2 uses
  %i.de = add i64 %i.dd, %i.cx                    ; 3 uses
  store i64 %i.de, ptr %i.d, align 8, !tbaa !164
  %.not471 = icmp eq i64 %i.dd, 4
  br i1 %.not471, label %bb.r, label %.thread827

bb.r:                                             ; preds = %bb.q
  %i.df = load i8, ptr %i.m, align 1, !tbaa !119
  %i.dg = icmp eq i8 %i.df, 65
  br i1 %i.dg, label %bb.s, label %.thread834

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !119
  %i.dj = icmp eq i8 %i.di, 73
  %i.dk = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = icmp eq i8 %i.dl, 70
  %or.cond1052 = select i1 %i.dj, i1 %i.dm, i1 false ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.do = load i8, ptr %i.dn, align 1             ; 2 uses
  %.not1215 = icmp eq i8 %i.do, 70
  %or.cond1258 = select i1 %or.cond1052, i1 %.not1215, i1 false
  br i1 %or.cond1258, label %.thread830, label %.thread823

.thread830:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %.thread821

.thread823:                                       ; preds = %bb.s
  br i1 %or.cond1052, label %bb.t, label %.thread834

.thread827:                                       ; preds = %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %ma_dr_wav_free.exit779

.thread834:                                       ; preds = %.thread823, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %ma_dr_wav_free.exit779

bb.t:                                             ; preds = %.thread823
  %.not1216.not = icmp eq i8 %i.do, 67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br i1 %.not1216.not, label %.thread821, label %ma_dr_wav_free.exit779

.thread821:                                       ; preds = %bb.k, %.thread830, %bb.n, %bb.t
  %i.dp = phi ptr [ %i.cs, %.thread830 ], [ %i.bv, %bb.n ], [ %i.cs, %bb.t ], [ %i.bw, %bb.k ] ; 15 uses
  %i.dq = phi i64 [ %i.de, %.thread830 ], [ %i.cq, %bb.n ], [ %i.de, %bb.t ], [ %i.ch, %bb.k ] ; 2 uses
  %.2405 = phi i1 [ true, %.thread830 ], [ true, %bb.n ], [ false, %bb.t ], [ true, %bb.k ] ; 3 uses
  %i.dr = load i32, ptr %i.dp, align 8, !tbaa !683 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 3
  br i1 %i.ds, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %.thread821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.dt = load ptr, ptr %0, align 8, !tbaa !673   ; 2 uses
  %i.du = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.dv = call i64 %i.dt(ptr noundef %i.du, ptr noundef nonnull %6, i64 noundef 4) #55, !inline_history !2817
  %.not35.i = icmp eq i64 %i.dv, 4
  br i1 %.not35.i, label %bb.v, label %ma_dr_wav__read_chunk_header.exit

bb.v:                                             ; preds = %bb.u
  %i.dw = call i64 %i.dt(ptr noundef %i.du, ptr noundef nonnull %i.c, i64 noundef 4) #55, !inline_history !2817
  %.not36.i = icmp eq i64 %i.dw, 4
  br i1 %.not36.i, label %bb.w, label %ma_dr_wav__read_chunk_header.exit

ma_dr_wav__read_chunk_header.exit:                ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.thread849

bb.w:                                             ; preds = %bb.v
  %i.dx = load i32, ptr %i.c, align 4             ; 2 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !1079
  %i.ea = and i32 %i.dx, 1                        ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !1080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.ec = load <4 x i8>, ptr %6, align 8
  %.fr1830.a = freeze <4 x i8> %i.ec
  %.fr1830.scalar = bitcast <4 x i8> %.fr1830.a to i32
  %i.ed = icmp eq i32 %.fr1830.scalar, 875983716
  br i1 %i.ed, label %ma_dr_wav__seek_forward.exit, label %.thread849

ma_dr_wav__seek_forward.exit:                     ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !674
  %i.eg = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.eh = call i32 %i.ef(ptr noundef %i.eg, i32 noundef 8, i32 noundef 1) #55, !inline_history !2816
  %.not10.i.not = icmp eq i32 %i.eh, 0
  br i1 %.not10.i.not, label %.thread849, label %bb.x

bb.x:                                             ; preds = %ma_dr_wav__seek_forward.exit
  %i.ei = load ptr, ptr %0, align 8, !tbaa !673
  %i.ej = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ek = call i64 %i.ei(ptr noundef %i.ej, ptr noundef nonnull %i.n, i64 noundef 8) #55, !inline_history !2815 ; 2 uses
  %.not484 = icmp eq i64 %i.ek, 8
  br i1 %.not484, label %bb.y, label %.thread849

bb.y:                                             ; preds = %bb.x
  %i.el = add nsw i64 %i.dq, 16
  %i.em = add nsw i64 %i.ek, %i.el
  %i.en = load i64, ptr %i.n, align 8
  %i.eo = load ptr, ptr %0, align 8, !tbaa !673
  %i.ep = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.eq = call i64 %i.eo(ptr noundef %i.ep, ptr noundef nonnull %i.n, i64 noundef 8) #55, !inline_history !2815 ; 2 uses
  %i.er = add i64 %i.eq, %i.em
  %.not485 = icmp eq i64 %i.eq, 8
  br i1 %.not485, label %bb.z, label %.thread849

bb.z:                                             ; preds = %bb.y
  %i.es = zext nneg i32 %i.ea to i64
  %i.et = add nsw i64 %i.dy, -24
  %i.eu = add nsw i64 %i.et, %i.es                ; 5 uses
  %i.ev = load i64, ptr %i.n, align 8
  store i64 %i.ev, ptr %i.f, align 8, !tbaa !164
  %i.ew = load ptr, ptr %i.ee, align 8, !tbaa !674 ; 2 uses
  %i.ex = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i = icmp eq i64 %i.eu, 0
  br i1 %.not12.i, label %ma_dr_wav__seek_forward.exit660.thread845, label %.lr.ph.i654.preheader

.lr.ph.i654.preheader:                            ; preds = %bb.z
  %i.ey = icmp ugt i64 %i.eu, 2147483647
  br i1 %i.ey, label %.lr.ph1386, label %ma_dr_wav__seek_forward.exit660

.lr.ph1386:                                       ; preds = %.lr.ph.i654.preheader, %.lr.ph.i654
  %.013.i6551385 = phi i64 [ %i.fa, %.lr.ph.i654 ], [ %i.eu, %.lr.ph.i654.preheader ]
  %i.ez = call i32 %i.ew(ptr noundef %i.ex, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2816
  %.not11.i659 = icmp eq i32 %i.ez, 0
  br i1 %.not11.i659, label %.thread849, label %.lr.ph.i654

.lr.ph.i654:                                      ; preds = %.lr.ph1386
  %i.fa = add i64 %.013.i6551385, -2147483647     ; 3 uses
  %i.fb = icmp ugt i64 %i.fa, 2147483647
  br i1 %i.fb, label %.lr.ph1386, label %ma_dr_wav__seek_forward.exit660

ma_dr_wav__seek_forward.exit660:                  ; preds = %.lr.ph.i654, %.lr.ph.i654.preheader
  %.013.i655.lcssa = phi i64 [ %i.eu, %.lr.ph.i654.preheader ], [ %i.fa, %.lr.ph.i654 ]
  %i.fc = trunc nuw nsw i64 %.013.i655.lcssa to i32
  %i.fd = call i32 %i.ew(ptr noundef %i.ex, i32 noundef %i.fc, i32 noundef 1) #55, !inline_history !2816
  %.not10.i656.not = icmp eq i32 %i.fd, 0
  br i1 %.not10.i656.not, label %.thread849, label %ma_dr_wav__seek_forward.exit660.thread845

end_hunk_0
