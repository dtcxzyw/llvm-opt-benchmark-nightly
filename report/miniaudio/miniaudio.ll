Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_sound_group_set_stop_time_in_milliseconds:bb.a

ma_sound_set_stop_time_in_pcm_frames.exit.i:      ; preds = %bb.b, %ma_sound_get_engine.exit.i
  %.0.i3.i = phi i64 [ %i.i, %bb.b ], [ 0, %ma_sound_get_engine.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = atomicrmw xchg ptr %i.j, i64 %.0.i3.i seq_cst, align 8 ; 0 uses
  br label %ma_sound_set_stop_time_in_milliseconds.exit

ma_sound_set_stop_time_in_milliseconds.exit:      ; preds = %bb.a, %ma_sound_set_stop_time_in_pcm_frames.exit.i
  ret void
}

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
  %7 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 22 uses
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
  %i.ab = call i64 %i.y(ptr noundef %i.aa, ptr noundef nonnull %i.e, i64 noundef 4) #55, !inline_history !2818
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
  %i.aw = call i64 %i.au(ptr noundef %i.av, ptr noundef nonnull %i.g, i64 noundef 12) #55, !inline_history !2818
  %.not468 = icmp eq i64 %i.aw, 12
  %i.ax = load <8 x i8>, ptr %i.g, align 8
  %.fr1828 = freeze <8 x i8> %i.ax
  %i.ay = icmp eq <8 x i8> %.fr1828, <i8 46, i8 -111, i8 -49, i8 17, i8 -91, i8 -42, i8 40, i8 -37> ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load <4 x i8>, ptr %i.az, align 8
  %.fr1829 = freeze <4 x i8> %i.ba
  %i.bb = icmp eq <4 x i8> %.fr1829, <i8 4, i8 -63, i8 0, i8 0>
  %i.bc = shufflevector <8 x i1> %i.ay, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1826 = and <4 x i1> %i.bc, %i.bb
  %i.bd = shufflevector <4 x i1> %rdx.op1826, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <8 x i1> %i.bd, <8 x i1> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bf = bitcast <8 x i1> %i.be to i8
  %i.bg = icmp eq i8 %i.bf, -1
  %op.rdx1827 = select i1 %.not468, i1 %i.bg, i1 false
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
  %i.ca = call i64 %i.by(ptr noundef %i.bz, ptr noundef nonnull %i.h, i64 noundef 4) #55, !inline_history !2818 ; 2 uses
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
  %i.cg = call i64 %i.ce(ptr noundef %i.cf, ptr noundef nonnull %i.i, i64 noundef 4) #55, !inline_history !2818 ; 2 uses
  %i.ch = add i64 %i.cg, %i.cb                    ; 2 uses
  store i64 %i.ch, ptr %i.d, align 8, !tbaa !164
  %.not479 = icmp eq i64 %i.cg, 4
  br i1 %.not479, label %bb.k, label %.critedge537

bb.k:                                             ; preds = %ma_dr_wav_bytes_to_u32_ex.exit590
  %i.ci = load i8, ptr %i.i, align 1, !tbaa !119
  %i.cj = icmp eq i8 %i.ci, 87
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, 65
  %or.cond1042 = select i1 %i.cj, i1 %i.cm, i1 false
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 86
  %or.cond1046 = select i1 %or.cond1042, i1 %i.cp, i1 false
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.cr = load i8, ptr %i.cq, align 1
  %.fr = freeze i8 %i.cr
  %.not1217 = icmp eq i8 %.fr, 69
  %or.cond1255 = and i1 %or.cond1046, %.not1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  br i1 %or.cond1255, label %.thread821, label %ma_dr_wav_free.exit779

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #55
  %i.cs = load ptr, ptr %0, align 8, !tbaa !673
  %i.ct = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cu = call i64 %i.cs(ptr noundef %i.ct, ptr noundef nonnull %i.j, i64 noundef 8) #55, !inline_history !2818
  %.not474 = icmp ne i64 %i.cu, 8
  %i.cv = load i64, ptr %i.j, align 8
  %i.cw = icmp ult i64 %i.cv, 80
  %or.cond1048 = select i1 %.not474, i1 true, i1 %i.cw
  br i1 %or.cond1048, label %.critedge540, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = load ptr, ptr %0, align 8, !tbaa !673
  %i.cy = load ptr, ptr %i.z, align 8, !tbaa !676
end_hunk_0
begin_hunk_1_@ma_dr_wav_init__internal:bb.a

.thread827:                                       ; preds = %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %ma_dr_wav_free.exit779

.thread834:                                       ; preds = %.thread823, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %ma_dr_wav_free.exit779

bb.t:                                             ; preds = %.thread823
  %.not1216.not = icmp eq i8 %i.dy, 67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br i1 %.not1216.not, label %.thread821, label %ma_dr_wav_free.exit779

.thread821:                                       ; preds = %bb.k, %.thread830, %bb.n, %bb.t
  %i.dz = phi ptr [ %i.dc, %.thread830 ], [ %i.bv, %bb.n ], [ %i.dc, %bb.t ], [ %i.bw, %bb.k ] ; 15 uses
  %i.ea = phi i64 [ %i.do, %.thread830 ], [ %i.da, %bb.n ], [ %i.do, %bb.t ], [ %i.ch, %bb.k ] ; 2 uses
  %.2405 = phi i1 [ true, %.thread830 ], [ true, %bb.n ], [ false, %bb.t ], [ true, %bb.k ] ; 3 uses
  %i.eb = load i32, ptr %i.dz, align 8, !tbaa !683 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 3
  br i1 %i.ec, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %.thread821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.ed = load ptr, ptr %0, align 8, !tbaa !673   ; 2 uses
  %i.ee = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.ef = call i64 %i.ed(ptr noundef %i.ee, ptr noundef nonnull %6, i64 noundef 4) #55, !inline_history !2820
  %.not35.i = icmp eq i64 %i.ef, 4
  br i1 %.not35.i, label %bb.v, label %ma_dr_wav__read_chunk_header.exit

bb.v:                                             ; preds = %bb.u
  %i.eg = call i64 %i.ed(ptr noundef %i.ee, ptr noundef nonnull %i.c, i64 noundef 4) #55, !inline_history !2820
  %.not36.i = icmp eq i64 %i.eg, 4
  br i1 %.not36.i, label %bb.w, label %ma_dr_wav__read_chunk_header.exit

ma_dr_wav__read_chunk_header.exit:                ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.thread849

bb.w:                                             ; preds = %bb.v
  %i.eh = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !1079
  %i.ek = and i32 %i.eh, 1                        ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !1080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.em = load <4 x i8>, ptr %6, align 8
  %.fr1830 = freeze <4 x i8> %i.em
  %.fr1830.scalar = bitcast <4 x i8> %.fr1830 to i32
  %i.en = icmp eq i32 %.fr1830.scalar, 875983716
  br i1 %i.en, label %ma_dr_wav__seek_forward.exit, label %.thread849

ma_dr_wav__seek_forward.exit:                     ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !674
  %i.eq = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.er = call i32 %i.ep(ptr noundef %i.eq, i32 noundef 8, i32 noundef 1) #55, !inline_history !2819
  %.not10.i.not = icmp eq i32 %i.er, 0
  br i1 %.not10.i.not, label %.thread849, label %bb.x

bb.x:                                             ; preds = %ma_dr_wav__seek_forward.exit
  %i.es = load ptr, ptr %0, align 8, !tbaa !673
  %i.et = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.eu = call i64 %i.es(ptr noundef %i.et, ptr noundef nonnull %i.n, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %.not484 = icmp eq i64 %i.eu, 8
  br i1 %.not484, label %bb.y, label %.thread849

bb.y:                                             ; preds = %bb.x
  %i.ev = add nsw i64 %i.ea, 16
  %i.ew = add nsw i64 %i.eu, %i.ev
  %i.ex = load i64, ptr %i.n, align 8
  %i.ey = load ptr, ptr %0, align 8, !tbaa !673
  %i.ez = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.fa = call i64 %i.ey(ptr noundef %i.ez, ptr noundef nonnull %i.n, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %i.fb = add i64 %i.fa, %i.ew
  %.not485 = icmp eq i64 %i.fa, 8
  br i1 %.not485, label %bb.z, label %.thread849

bb.z:                                             ; preds = %bb.y
  %i.fc = zext nneg i32 %i.ek to i64
  %i.fd = add nsw i64 %i.ei, -24
  %i.fe = add nsw i64 %i.fd, %i.fc                ; 5 uses
  %i.ff = load i64, ptr %i.n, align 8
  store i64 %i.ff, ptr %i.f, align 8, !tbaa !164
  %i.fg = load ptr, ptr %i.eo, align 8, !tbaa !674 ; 2 uses
  %i.fh = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i = icmp eq i64 %i.fe, 0
  br i1 %.not12.i, label %ma_dr_wav__seek_forward.exit660.thread845, label %.lr.ph.i654.preheader

.lr.ph.i654.preheader:                            ; preds = %bb.z
  %i.fi = icmp ugt i64 %i.fe, 2147483647
  br i1 %i.fi, label %.lr.ph1386, label %ma_dr_wav__seek_forward.exit660

.lr.ph1386:                                       ; preds = %.lr.ph.i654.preheader, %.lr.ph.i654
  %.013.i6551385 = phi i64 [ %i.fk, %.lr.ph.i654 ], [ %i.fe, %.lr.ph.i654.preheader ]
  %i.fj = call i32 %i.fg(ptr noundef %i.fh, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i659 = icmp eq i32 %i.fj, 0
  br i1 %.not11.i659, label %.thread849, label %.lr.ph.i654

.lr.ph.i654:                                      ; preds = %.lr.ph1386
  %i.fk = add i64 %.013.i6551385, -2147483647     ; 3 uses
  %i.fl = icmp ugt i64 %i.fk, 2147483647
  br i1 %i.fl, label %.lr.ph1386, label %ma_dr_wav__seek_forward.exit660

ma_dr_wav__seek_forward.exit660:                  ; preds = %.lr.ph.i654, %.lr.ph.i654.preheader
  %.013.i655.lcssa = phi i64 [ %i.fe, %.lr.ph.i654.preheader ], [ %i.fk, %.lr.ph.i654 ]
  %i.fm = trunc nuw nsw i64 %.013.i655.lcssa to i32
  %i.fn = call i32 %i.fg(ptr noundef %i.fh, i32 noundef %i.fm, i32 noundef 1) #55, !inline_history !2819
  %.not10.i656.not = icmp eq i32 %i.fn, 0
  br i1 %.not10.i656.not, label %.thread849, label %ma_dr_wav__seek_forward.exit660.thread845

.thread849:                                       ; preds = %.lr.ph1386, %ma_dr_wav__read_chunk_header.exit, %ma_dr_wav__seek_forward.exit, %bb.x, %bb.y, %ma_dr_wav__seek_forward.exit660, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #55
  br label %ma_dr_wav_free.exit779

ma_dr_wav__seek_forward.exit660.thread845:        ; preds = %bb.z, %ma_dr_wav__seek_forward.exit660
  %i.fo = add i64 %i.fb, %i.fe                    ; 2 uses
  store i64 %i.fo, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #55
  %.pr = load i32, ptr %i.dz, align 8, !tbaa !683
  br label %bb.aa

bb.aa:                                            ; preds = %ma_dr_wav__seek_forward.exit660.thread845, %.thread821
  %i.fp = phi i64 [ %i.fo, %ma_dr_wav__seek_forward.exit660.thread845 ], [ %i.ea, %.thread821 ] ; 2 uses
  %i.fq = phi i32 [ %.pr, %ma_dr_wav__seek_forward.exit660.thread845 ], [ %i.eb, %.thread821 ] ; 2 uses
  %.1412 = phi i64 [ %i.ex, %ma_dr_wav__seek_forward.exit660.thread845 ], [ 0, %.thread821 ]
  switch i32 %i.fq, label %.thread852 [
    i32 0, label %bb.ab
    i32 3, label %bb.ab
  ]

.thread852:                                       ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.fr = and i32 %3, 3
  %i.fs = icmp eq i32 %i.fr, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  br i1 %i.fs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load ptr, ptr %0, align 8, !tbaa !673
  store ptr %i.ft, ptr %5, align 8, !tbaa !1082
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !674
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !1083
  %i.fx = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !1084
  br label %bb.ad

bb.ad:                                            ; preds = %.thread852, %bb.ac, %bb.ab
  %.0410.shrunk854 = phi i1 [ false, %.thread852 ], [ true, %bb.ac ], [ false, %bb.ab ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  %i.gb = icmp eq i32 %i.x, 0                     ; 2 uses
  %i.gc = icmp ne ptr %1, null
  %or.cond = and i1 %i.gc, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 3 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.go = getelementptr inbounds nuw i8, ptr %i.s, i64 19 ; 9 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 9 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.s, i64 21 ; 9 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 405
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 11
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 15
  %or.cond13 = and i1 %i.gb, %.0410.shrunk854
  %i.hd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.hf = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  %10 = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %11 = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %i.o, i64 11
  %13 = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %14 = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.hi = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 13
  %i.hk = getelementptr inbounds nuw i8, ptr %i.o, i64 14 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  br label %bb.ae

bb.ae:                                            ; preds = %.backedge, %bb.ad
  %i.hu = phi i64 [ %i.fp, %bb.ad ], [ %i.vm, %.backedge ] ; 2 uses
  %i.hv = phi i32 [ %i.fq, %bb.ad ], [ %.pre1479, %.backedge ] ; 2 uses
  %.2413 = phi i64 [ %.1412, %bb.ad ], [ %.6417.jt6, %.backedge ] ; 14 uses
  %.0408 = phi i8 [ 0, %bb.ad ], [ %.1409.jt6, %.backedge ] ; 17 uses
  %.0406 = phi i8 [ 0, %bb.ad ], [ %.1407.jt6, %.backedge ] ; 13 uses
  %.0400 = phi i64 [ 0, %bb.ad ], [ %.2402.jt6, %.backedge ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.hw = load ptr, ptr %0, align 8, !tbaa !673   ; 4 uses
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !676 ; 4 uses
  switch i32 %i.hv, label %.loopexit1323 [
    i32 4, label %bb.af
    i32 3, label %bb.af
    i32 1, label %bb.af
    i32 0, label %bb.af
    i32 2, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.hy = call i64 %i.hw(ptr noundef %i.hx, ptr noundef nonnull %7, i64 noundef 4) #55, !inline_history !2820
  %.not35.i666 = icmp eq i64 %i.hy, 4
  br i1 %.not35.i666, label %bb.ag, label %.thread.i667

bb.ag:                                            ; preds = %bb.af
  %i.hz = call i64 %i.hw(ptr noundef %i.hx, ptr noundef nonnull %i.a, i64 noundef 4) #55, !inline_history !2820
  %.not36.i669 = icmp eq i64 %i.hz, 4
  br i1 %.not36.i669, label %15, label %.thread.i667

15:                                               ; preds = %bb.ag
  switch i32 %i.hv, label %bb.ai [
    i32 4, label %bb.ah
    i32 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %15, %15
  %i.ia = load i32, ptr %i.a, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %i.ia)
  br label %bb.aj

bb.ai:                                            ; preds = %15
  %17 = load i32, ptr %i.a, align 4
  br label %bb.aj

.thread.i667:                                     ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit1323

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i.i670 = phi i32 [ %16, %bb.ah ], [ %17, %bb.ai ] ; 2 uses
  %i.ib = zext i32 %.0.i.i670 to i64              ; 2 uses
  store i64 %i.ib, ptr %i.fz, align 8, !tbaa !1079
  %i.ic = and i32 %.0.i.i670, 1
  store i32 %i.ic, ptr %i.ga, align 8, !tbaa !1080
  %i.id = add i64 %i.hu, 8                        ; 2 uses
  store i64 %i.id, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_dr_wav__read_chunk_header.exit671

bb.ak:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.ie = call i64 %i.hw(ptr noundef %i.hx, ptr noundef nonnull %7, i64 noundef 16) #55, !inline_history !2820
  %.not.i661 = icmp eq i64 %i.ie, 16
  br i1 %.not.i661, label %bb.al, label %.thread40.i662

bb.al:                                            ; preds = %bb.ak
  %i.if = call i64 %i.hw(ptr noundef %i.hx, ptr noundef nonnull %i.b, i64 noundef 8) #55, !inline_history !2820
  %.not34.i665 = icmp eq i64 %i.if, 8
  br i1 %.not34.i665, label %bb.am, label %.thread40.i662

.thread40.i662:                                   ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.loopexit1323

bb.am:                                            ; preds = %bb.al
  %i.ig = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ih = add i64 %i.ig, -24                      ; 2 uses
  store i64 %i.ih, ptr %i.fz, align 8, !tbaa !1079
  %i.ii = trunc i64 %i.ig to i32
  %i.ij = and i32 %i.ii, 7
  store i32 %i.ij, ptr %i.ga, align 8, !tbaa !1080
  %i.ik = add i64 %i.hu, 24                       ; 2 uses
  store i64 %i.ik, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %ma_dr_wav__read_chunk_header.exit671

ma_dr_wav__read_chunk_header.exit671:             ; preds = %bb.am, %bb.aj
  %i.il = phi i64 [ %i.ih, %bb.am ], [ %i.ib, %bb.aj ] ; 9 uses
  %i.im = phi i64 [ %i.ik, %bb.am ], [ %i.id, %bb.aj ] ; 14 uses
  br i1 %or.cond, label %bb.an, label %.critedge542

bb.an:                                            ; preds = %ma_dr_wav__read_chunk_header.exit671
  %i.in = load ptr, ptr %0, align 8, !tbaa !673
  %i.io = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.ip = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.iq = load i32, ptr %i.dz, align 8, !tbaa !683
  %i.ir = call i64 %1(ptr noundef %2, ptr noundef %i.in, ptr noundef %i.io, ptr noundef %i.ip, ptr noundef nonnull %7, i32 noundef %i.iq, ptr noundef nonnull %4) #55
  %.not490 = icmp eq i64 %i.ir, 0
  br i1 %.not490, label %.critedge542, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.is = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 3 uses
  %i.it = load ptr, ptr %i.z, align 8, !tbaa !676 ; 3 uses
  %i.iu = icmp ult i64 %i.im, 2147483648
  br i1 %i.iu, label %ma_dr_wav__seek_from_start.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iv = call i32 %i.is(ptr noundef %i.it, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !2821
  %.not.i672 = icmp eq i32 %i.iv, 0
  br i1 %.not.i672, label %.thread988, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ap
  %.014.i1817 = add i64 %i.im, -2147483647        ; 3 uses
  %i.iw = icmp ult i64 %.014.i1817, 2147483648
  br i1 %i.iw, label %ma_dr_wav__seek_from_start.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %.014.i = add i64 %.014.i1818, -2147483647      ; 3 uses
  %i.ix = icmp ult i64 %.014.i, 2147483648
  br i1 %i.ix, label %ma_dr_wav__seek_from_start.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.014.i1818 = phi i64 [ %.014.i, %.preheader.i ], [ %.014.i1817, %.preheader.i.preheader ]
  %i.iy = call i32 %i.is(ptr noundef %i.it, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2821
  %.not16.i = icmp eq i32 %i.iy, 0
  br i1 %.not16.i, label %.thread988, label %.preheader.i

ma_dr_wav__seek_from_start.exit:                  ; preds = %.preheader.i, %.preheader.i.preheader, %bb.ao
  %.014.lcssa.sink.i = phi i64 [ %i.im, %bb.ao ], [ %.014.i1817, %.preheader.i.preheader ], [ %.014.i, %.preheader.i ]
  %.sink21.i = phi i32 [ 0, %bb.ao ], [ 1, %.preheader.i.preheader ], [ 1, %.preheader.i ]
  %i.iz = trunc nuw nsw i64 %.014.lcssa.sink.i to i32
  %i.ja = call i32 %i.is(ptr noundef %i.it, i32 noundef %i.iz, i32 noundef %.sink21.i) #55, !inline_history !2821
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %.thread988, label %.critedge542

.critedge542:                                     ; preds = %bb.an, %ma_dr_wav__seek_from_start.exit, %ma_dr_wav__read_chunk_header.exit671
  %i.jc = load i32, ptr %i.dz, align 8, !tbaa !683 ; 5 uses
  switch i32 %i.jc, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.aq
    i32 1, label %bb.aq
    i32 3, label %bb.aq
    i32 2, label %.critedge542._crit_edge1484
    i32 4, label %.critedge542._crit_edge
  ]

.critedge542._crit_edge1484:                      ; preds = %.critedge542
  %.pre1485 = load i8, ptr %7, align 8, !tbaa !119
  %.pre1486.pre = load i8, ptr %i.ge, align 1
  %.pre1487.pre = load i8, ptr %i.gf, align 2
  %.pre1488.pre = load i8, ptr %i.gg, align 1
  br label %bb.ar

.critedge542._crit_edge:                          ; preds = %.critedge542
  %.pre1480 = load i8, ptr %7, align 8, !tbaa !119 ; 2 uses
  %.pre1481 = load i8, ptr %i.ge, align 1         ; 2 uses
  %.pre1482 = load i8, ptr %i.gf, align 2         ; 2 uses
  %.pre1483 = load i8, ptr %i.gg, align 1         ; 2 uses
  %i.jd = icmp eq i8 %.pre1480, 67
  %i.je = icmp eq i8 %.pre1481, 79
  %or.cond1146 = select i1 %i.jd, i1 %i.je, i1 false
  %i.jf = icmp eq i8 %.pre1482, 77
  %or.cond1150 = select i1 %or.cond1146, i1 %i.jf, i1 false
  %.not1221 = icmp eq i8 %.pre1483, 77
  %or.cond1279 = select i1 %or.cond1150, i1 %.not1221, i1 false
  br i1 %or.cond1279, label %bb.cb, label %.thread964

bb.aq:                                            ; preds = %.critedge542, %.critedge542, %.critedge542
  %i.jg = load i8, ptr %7, align 8, !tbaa !119    ; 3 uses
  %i.jh = icmp eq i8 %i.jg, 102                   ; 2 uses
  %i.ji = load i8, ptr %i.ge, align 1             ; 3 uses
  %i.jj = icmp eq i8 %i.ji, 109
  %or.cond1068 = select i1 %i.jh, i1 %i.jj, i1 false
  %i.jk = load i8, ptr %i.gf, align 2             ; 3 uses
  %i.jl = icmp eq i8 %i.jk, 116                   ; 2 uses
  %or.cond1072 = select i1 %or.cond1068, i1 %i.jl, i1 false
  %i.jm = load i8, ptr %i.gg, align 1             ; 4 uses
  %.not1219 = icmp eq i8 %i.jm, 32
  %or.cond1264 = select i1 %or.cond1072, i1 %.not1219, i1 false
  br i1 %or.cond1264, label %bb.at, label %ma_dr_wav_fourcc_equal.exit674.thread

ma_dr_wav_fourcc_equal.exit674.thread:            ; preds = %bb.aq
  %i.jn = icmp eq i32 %i.jc, 2
  br i1 %i.jn, label %bb.ar, label %bb.bo

bb.ar:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread, %.critedge542._crit_edge1484
  %.pre1488 = phi i8 [ %.pre1488.pre, %.critedge542._crit_edge1484 ], [ %i.jm, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1487 = phi i8 [ %.pre1487.pre, %.critedge542._crit_edge1484 ], [ %i.jk, %ma_dr_wav_fourcc_equal.exit674.thread ]
  %.pre1486 = phi i8 [ %.pre1486.pre, %.critedge542._crit_edge1484 ], [ %i.ji, %ma_dr_wav_fourcc_equal.exit674.thread ]
  %.pr1009 = phi i8 [ %.pre1485, %.critedge542._crit_edge1484 ], [ %i.jg, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1486.fr = freeze i8 %.pre1486              ; 2 uses
  %.pre1487.fr = freeze i8 %.pre1487              ; 2 uses
  %.not.i675 = icmp eq i8 %.pr1009, 102
  %i.jo = load <4 x i8>, ptr %i.gz, align 4
  %i.jp = load <4 x i8>, ptr %i.ha, align 8
  %i.jq = load <4 x i8>, ptr %i.hb, align 1
  %.fr1832 = freeze <4 x i8> %i.jq                ; 2 uses
  %.pre1500 = load i8, ptr %i.hc, align 1         ; 2 uses
  br i1 %.not.i675, label %bb.as, label %ma_dr_wav_guid_equal.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.jr = load <4 x i8>, ptr %i.ha, align 8
  %i.js = load <4 x i8>, ptr %i.gz, align 4
  %.not.1.i = icmp eq i8 %.pre1486.fr, 109
  %.not.2.i = icmp eq i8 %.pre1487.fr, 116
  %i.jt = shufflevector <4 x i8> %i.js, <4 x i8> %i.jr, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.ju = insertelement <8 x i8> %i.jt, i8 %.pre1488, i64 0
  %.fr1831 = freeze <8 x i8> %i.ju
  %i.jv = icmp eq <8 x i8> %.fr1831, <i8 32, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.jw = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i.not = icmp eq i8 %.pre1500, -118
  %i.jx = shufflevector <8 x i1> %i.jv, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1822 = and <4 x i1> %i.jx, %i.jw
  %i.jy = shufflevector <4 x i1> %rdx.op1822, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %.fr1948 = freeze <8 x i1> %i.jy
  %i.jz = shufflevector <8 x i1> %.fr1948, <8 x i1> %i.jv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ka = bitcast <8 x i1> %i.jz to i8
  %i.kb = icmp eq i8 %i.ka, -1
  %op.rdx1823.a = and i1 %.not.1.i, %i.kb
  %i.kc = and i1 %op.rdx1823.a, %.not.2.i
  %op.rdx1825 = select i1 %i.kc, i1 %.not.15.i.not, i1 false
  br i1 %op.rdx1825, label %bb.at, label %ma_dr_wav_guid_equal.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #55
  %i.kd = load ptr, ptr %0, align 8, !tbaa !673
  %i.ke = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.kf = call i64 %i.kd(ptr noundef %i.ke, ptr noundef nonnull %i.o, i64 noundef 16) #55
  %.not519 = icmp eq i64 %i.kf, 16
  br i1 %.not519, label %bb.au, label %ma_dr_wav__seek_forward.exit684.thread.jt1

bb.au:                                            ; preds = %bb.at
  %i.kg = add i64 %i.im, 16                       ; 2 uses
  store i64 %i.kg, ptr %i.d, align 8, !tbaa !164
  %i.kh = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.kh, label %bb.aw [
    i32 4, label %bb.av
    i32 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.ki = load i8, ptr %i.hd, align 1, !tbaa !119
  %i.kj = zext i8 %i.ki to i16
  %i.kk = load i8, ptr %i.o, align 16, !tbaa !119
  %i.kl = zext i8 %i.kk to i16
  %i.km = shl nuw i16 %i.kl, 8
  %i.kn = or disjoint i16 %i.km, %i.kj
  store i16 %i.kn, ptr %4, align 4, !tbaa !1077
  %i.ko = load i8, ptr %i.hf, align 1, !tbaa !119
  %i.kp = zext i8 %i.ko to i16
  %i.kq = load i8, ptr %i.he, align 2, !tbaa !119
  %i.kr = zext i8 %i.kq to i16
  %i.ks = shl nuw i16 %i.kr, 8
  %i.kt = or disjoint i16 %i.ks, %i.kp
  store i16 %i.kt, ptr %i.gt, align 2, !tbaa !2822
  %18 = load i8, ptr %9, align 1, !tbaa !119
  %19 = zext i8 %18 to i32
  %20 = load i8, ptr %10, align 2, !tbaa !119
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or disjoint i32 %22, %19
  %24 = load i8, ptr %11, align 1, !tbaa !119
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or disjoint i32 %23, %26
  %28 = load i8, ptr %i.hg, align 4, !tbaa !119
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, 24
  %31 = or disjoint i32 %27, %30
  store i32 %31, ptr %i.gu, align 4, !tbaa !2823
  %32 = load i8, ptr %12, align 1, !tbaa !119
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %13, align 2, !tbaa !119
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or disjoint i32 %36, %33
  %38 = load i8, ptr %14, align 1, !tbaa !119
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 16
  %41 = or disjoint i32 %37, %40
  %42 = load i8, ptr %i.hh, align 8, !tbaa !119
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 %43, 24
  %45 = or disjoint i32 %41, %44
  store i32 %45, ptr %i.gx, align 4, !tbaa !2824
  %i.ku = load i8, ptr %i.hj, align 1, !tbaa !119
  %i.kv = zext i8 %i.ku to i16
  %i.kw = load i8, ptr %i.hi, align 4, !tbaa !119
  %i.kx = zext i8 %i.kw to i16
  %i.ky = shl nuw i16 %i.kx, 8
  %i.kz = or disjoint i16 %i.ky, %i.kv
  store i16 %i.kz, ptr %i.gw, align 4, !tbaa !2825
  %i.la = load i8, ptr %i.hl, align 1, !tbaa !119
  %i.lb = zext i8 %i.la to i16
  %i.lc = load i8, ptr %i.hk, align 2, !tbaa !119
  %i.ld = zext i8 %i.lc to i16
  %i.le = shl nuw i16 %i.ld, 8
  %i.lf = or disjoint i16 %i.le, %i.lb
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

bb.aw:                                            ; preds = %bb.au
  %i.lg = load <2 x i16>, ptr %i.o, align 16
  store <2 x i16> %i.lg, ptr %4, align 4, !tbaa !122
  %i.lh = load <2 x i32>, ptr %i.hg, align 4
  store <2 x i32> %i.lh, ptr %i.gu, align 4, !tbaa !118
  %i.li = load i16, ptr %i.hi, align 4
  store i16 %i.li, ptr %i.gw, align 4, !tbaa !2825
  %i.lj = load i16, ptr %i.hk, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

ma_dr_wav_bytes_to_u16_ex.exit625:                ; preds = %bb.av, %bb.aw
  %.0.i624 = phi i16 [ %i.lf, %bb.av ], [ %i.lj, %bb.aw ]
  store i16 %.0.i624, ptr %i.gv, align 2, !tbaa !2826
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false)
  %i.lk = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.ll = icmp ugt i64 %i.lk, 16
  br i1 %i.ll, label %bb.ax, label %bb.bl

bb.ax:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #55
  %i.lm = load ptr, ptr %0, align 8, !tbaa !673
  %i.ln = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.lo = call i64 %i.lm(ptr noundef %i.ln, ptr noundef nonnull %i.p, i64 noundef 2) #55
  %.not520 = icmp eq i64 %i.lo, 2
  br i1 %.not520, label %bb.ay, label %.critedge546

bb.ay:                                            ; preds = %bb.ax
  %i.lp = add i64 %i.im, 18                       ; 2 uses
  %i.lq = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.lq, label %bb.ba [
    i32 4, label %bb.az
    i32 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %i.lr = load i8, ptr %i.hq, align 1, !tbaa !119
  %i.ls = zext i8 %i.lr to i16
  %i.lt = load i8, ptr %i.p, align 2, !tbaa !119
  %i.lu = zext i8 %i.lt to i16
  %i.lv = shl nuw i16 %i.lu, 8
  %i.lw = or disjoint i16 %i.lv, %i.ls
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

bb.ba:                                            ; preds = %bb.ay
  %i.lx = load i16, ptr %i.p, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

ma_dr_wav_bytes_to_u16_ex.exit619:                ; preds = %bb.az, %bb.ba
  %.0.i618 = phi i16 [ %i.lw, %bb.az ], [ %i.lx, %bb.ba ] ; 5 uses
  store i16 %.0.i618, ptr %i.hm, align 4, !tbaa !2827
  %i.ly = zext i16 %.0.i618 to i32
  %.not521 = icmp eq i16 %.0.i618, 0
  br i1 %.not521, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.lz = load i16, ptr %4, align 4, !tbaa !1077
  %i.ma = icmp eq i16 %i.lz, -2                   ; 2 uses
  %i.mb = icmp ne i16 %.0.i618, 22
  %or.cond53 = and i1 %i.mb, %i.ma
  br i1 %or.cond53, label %.critedge546, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ma, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #55
  %i.mc = load ptr, ptr %0, align 8, !tbaa !673
  %i.md = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.me = zext i16 %.0.i618 to i64
  %i.mf = call i64 %i.mc(ptr noundef %i.md, ptr noundef nonnull %i.q, i64 noundef %i.me) #55
  %i.mg = load i16, ptr %i.hm, align 4, !tbaa !2827
  %i.mh = zext i16 %i.mg to i64                   ; 2 uses
  %.not522 = icmp eq i64 %i.mf, %i.mh
  br i1 %.not522, label %bb.be, label %.critedge544

bb.be:                                            ; preds = %bb.bd
  %i.mi = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.mi, label %bb.bg [
    i32 4, label %bb.bf
    i32 1, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.mj = load i8, ptr %i.hr, align 1, !tbaa !119
  %i.mk = zext i8 %i.mj to i16
  %i.ml = load i8, ptr %i.q, align 16, !tbaa !119
  %i.mm = zext i8 %i.ml to i16
  %i.mn = shl nuw i16 %i.mm, 8
  %i.mo = or disjoint i16 %i.mn, %i.mk
  store i16 %i.mo, ptr %i.hn, align 2, !tbaa !2828
  %i.mp = load i32, ptr %i.hs, align 2
  %i.mq = call i32 @llvm.bswap.i32(i32 %i.mp)
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

bb.bg:                                            ; preds = %bb.be
  %i.mr = load i16, ptr %i.q, align 16
  store i16 %i.mr, ptr %i.hn, align 2, !tbaa !2828
  %i.ms = load i32, ptr %i.hs, align 2
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

ma_dr_wav_bytes_to_u32_ex.exit572:                ; preds = %bb.bf, %bb.bg
  %.0.i571 = phi i32 [ %i.mq, %bb.bf ], [ %i.ms, %bb.bg ]
  store i32 %.0.i571, ptr %i.ho, align 4, !tbaa !2829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hp, ptr noundef nonnull align 2 dereferenceable(16) %i.ht, i64 16, i1 false), !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.mt = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.mu = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.mv = call i32 %i.mt(ptr noundef %i.mu, i32 noundef %i.ly, i32 noundef 1) #55
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %.critedge546, label %._crit_edge1501

._crit_edge1501:                                  ; preds = %bb.bh
  %.pre1502 = load i16, ptr %i.hm, align 4, !tbaa !2827
  %.pre1507 = zext i16 %.pre1502 to i64
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge1501, %ma_dr_wav_bytes_to_u32_ex.exit572
  %.pre-phi = phi i64 [ %.pre1507, %._crit_edge1501 ], [ %i.mh, %ma_dr_wav_bytes_to_u32_ex.exit572 ] ; 2 uses
  %i.mx = add i64 %i.lp, %.pre-phi
  %i.my = add nuw nsw i64 %.pre-phi, 18
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.mz = phi i64 [ %i.mx, %bb.bi ], [ %i.lp, %ma_dr_wav_bytes_to_u16_ex.exit619 ]
  %.0393 = phi i64 [ %i.my, %bb.bi ], [ 18, %ma_dr_wav_bytes_to_u16_ex.exit619 ] ; 2 uses
  %i.na = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.nb = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.nc = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.nd = sub i64 %i.nc, %.0393
  %i.ne = trunc i64 %i.nd to i32
  %i.nf = call i32 %i.na(ptr noundef %i.nb, i32 noundef %i.ne, i32 noundef 1) #55
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %.critedge546, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nh = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.ni = sub i64 %i.nh, %.0393
  %i.nj = add i64 %i.ni, %i.mz                    ; 2 uses
  store i64 %i.nj, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %bb.bl

.critedge544:                                     ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %.critedge546

bb.bl:                                            ; preds = %bb.bk, %ma_dr_wav_bytes_to_u16_ex.exit625
  %i.nk = phi i64 [ %i.nj, %bb.bk ], [ %i.kg, %ma_dr_wav_bytes_to_u16_ex.exit625 ] ; 2 uses
  %i.nl = load i32, ptr %i.ga, align 8, !tbaa !1080 ; 4 uses
  %.not523 = icmp eq i32 %i.nl, 0
  br i1 %.not523, label %ma_dr_wav__seek_forward.exit684.thread.jt6, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nm = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.nn = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %i.no = icmp slt i32 %i.nl, 0
  br i1 %i.no, label %.lr.ph1405.preheader, label %ma_dr_wav__seek_forward.exit684

.lr.ph1405.preheader:                             ; preds = %bb.bm
  %i.np = zext i32 %i.nl to i64
  br label %.lr.ph1405

.lr.ph1405:                                       ; preds = %.lr.ph1405.preheader, %.lr.ph.i678
  %.013.i6791404 = phi i64 [ %i.nr, %.lr.ph.i678 ], [ %i.np, %.lr.ph1405.preheader ]
  %i.nq = call i32 %i.nm(ptr noundef %i.nn, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i683 = icmp eq i32 %i.nq, 0
  br i1 %.not11.i683, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %.lr.ph.i678

.lr.ph.i678:                                      ; preds = %.lr.ph1405
  %i.nr = add i64 %.013.i6791404, -2147483647     ; 3 uses
  %i.ns = icmp ugt i64 %i.nr, 2147483647
  br i1 %i.ns, label %.lr.ph1405, label %ma_dr_wav__seek_forward.exit684.loopexit

ma_dr_wav__seek_forward.exit684.loopexit:         ; preds = %.lr.ph.i678
  %i.nt = trunc nuw nsw i64 %i.nr to i32
  br label %ma_dr_wav__seek_forward.exit684

ma_dr_wav__seek_forward.exit684:                  ; preds = %ma_dr_wav__seek_forward.exit684.loopexit, %bb.bm
  %.013.i679.lcssa = phi i32 [ %i.nl, %bb.bm ], [ %i.nt, %ma_dr_wav__seek_forward.exit684.loopexit ]
  %i.nu = call i32 %i.nm(ptr noundef %i.nn, i32 noundef %.013.i679.lcssa, i32 noundef 1) #55, !inline_history !2819
  %.not10.i680.not = icmp eq i32 %i.nu, 0
  br i1 %.not10.i680.not, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %bb.bn

bb.bn:                                            ; preds = %ma_dr_wav__seek_forward.exit684
  %i.nv = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.nw = zext i32 %i.nv to i64
  %i.nx = add i64 %i.nk, %i.nw                    ; 2 uses
  store i64 %i.nx, ptr %i.d, align 8, !tbaa !164
  br label %ma_dr_wav__seek_forward.exit684.thread.jt6

.critedge546:                                     ; preds = %bb.bj, %bb.bb, %bb.bh, %bb.ax, %.critedge544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %ma_dr_wav__seek_forward.exit684.thread.jt1

ma_dr_wav__seek_forward.exit684.thread.jt6:       ; preds = %bb.bl, %bb.bn
  %i.ny = phi i64 [ %i.nx, %bb.bn ], [ %i.nk, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.backedge

ma_dr_wav__seek_forward.exit684.thread.jt5:       ; preds = %ma_dr_wav__seek_forward.exit684, %.lr.ph1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.loopexit1323

ma_dr_wav__seek_forward.exit684.thread.jt1:       ; preds = %bb.at, %.critedge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %bb.dh

bb.bo:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread
  %i.nz = icmp eq i8 %i.jg, 100
  %i.oa = icmp eq i8 %i.ji, 97                    ; 2 uses
  %or.cond1102 = select i1 %i.nz, i1 %i.oa, i1 false
  %or.cond1106 = select i1 %or.cond1102, i1 %i.jl, i1 false
  %.not1220 = icmp eq i8 %i.jm, 97
  %or.cond1270 = select i1 %or.cond1106, i1 %.not1220, i1 false
  br i1 %or.cond1270, label %bb.bp, label %ma_dr_wav_fourcc_equal.exit685.thread

ma_dr_wav_guid_equal.exit.thread:                 ; preds = %bb.as, %bb.ar
  %.not.i686 = icmp eq i8 %.pr1009, 100
  %.not.1.i688 = icmp eq i8 %.pre1486.fr, 97
  %.not.2.i689 = icmp eq i8 %.pre1487.fr, 116
  %i.ob = shufflevector <4 x i8> %i.jo, <4 x i8> %i.jp, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.oc = insertelement <8 x i8> %i.ob, i8 %.pre1488, i64 0
  %.fr1833 = freeze <8 x i8> %i.oc
  %i.od = icmp eq <8 x i8> %.fr1833, <i8 97, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.oe = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i702.not = icmp eq i8 %.pre1500, -118
  %i.of = shufflevector <8 x i1> %i.od, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.of, %i.oe
  %i.og = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oh = shufflevector <8 x i1> %i.og, <8 x i1> %i.od, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.oi = bitcast <8 x i1> %i.oh to i8
  %i.oj = icmp eq i8 %i.oi, -1
  %op.rdx = select i1 %.not.i686, i1 %i.oj, i1 false
  %op.rdx1819 = and i1 %.not.1.i688, %.not.2.i689
  %i.ok = freeze i1 %op.rdx
  %op.rdx1820 = and i1 %i.ok, %op.rdx1819
  %op.rdx1821 = select i1 %op.rdx1820, i1 %.not.15.i702.not, i1 false
  br i1 %op.rdx1821, label %bb.bp, label %ma_dr_wav_guid_equal.exit704.thread

bb.bp:                                            ; preds = %ma_dr_wav_guid_equal.exit.thread, %bb.bo
  store i64 %i.im, ptr %i.gh, align 8, !tbaa !688
  %.not518 = icmp eq i32 %i.jc, 3
  %spec.select = select i1 %.not518, i64 %.2413, i64 %i.il ; 4 uses
  br i1 %or.cond13, label %bb.bq, label %.loopexit1323

bb.bq:                                            ; preds = %bb.bp
  %i.ol = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.om = zext i32 %i.ol to i64
  %i.on = add i64 %i.il, %i.om                    ; 5 uses
  %i.oo = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.op = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i705 = icmp eq i64 %i.on, 0
  br i1 %.not12.i705, label %ma_dr_wav__seek_forward.exit712.thread876, label %.lr.ph.i706.preheader

.lr.ph.i706.preheader:                            ; preds = %bb.bq
  %i.oq = icmp ugt i64 %i.on, 2147483647
  br i1 %i.oq, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

.lr.ph1401:                                       ; preds = %.lr.ph.i706.preheader, %.lr.ph.i706
  %.013.i7071400 = phi i64 [ %i.os, %.lr.ph.i706 ], [ %i.on, %.lr.ph.i706.preheader ]
  %i.or = call i32 %i.oo(ptr noundef %i.op, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i711 = icmp eq i32 %i.or, 0
  br i1 %.not11.i711, label %.loopexit1323, label %.lr.ph.i706

.lr.ph.i706:                                      ; preds = %.lr.ph1401
  %i.os = add i64 %.013.i7071400, -2147483647     ; 3 uses
  %i.ot = icmp ugt i64 %i.os, 2147483647
  br i1 %i.ot, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

ma_dr_wav__seek_forward.exit712:                  ; preds = %.lr.ph.i706, %.lr.ph.i706.preheader
  %.013.i707.lcssa = phi i64 [ %i.on, %.lr.ph.i706.preheader ], [ %i.os, %.lr.ph.i706 ]
  %i.ou = trunc nuw nsw i64 %.013.i707.lcssa to i32
  %i.ov = call i32 %i.oo(ptr noundef %i.op, i32 noundef %i.ou, i32 noundef 1) #55, !inline_history !2819
  %.not10.i708.not = icmp eq i32 %i.ov, 0
  br i1 %.not10.i708.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit712.thread876

ma_dr_wav__seek_forward.exit712.thread876:        ; preds = %bb.bq, %ma_dr_wav__seek_forward.exit712
  %i.ow = add i64 %i.on, %i.im                    ; 2 uses
  store i64 %i.ow, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

ma_dr_wav_fourcc_equal.exit685.thread:            ; preds = %bb.bo
  switch i32 %i.jc, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.br
    i32 1, label %bb.br
    i32 3, label %bb.br
  ]

bb.br:                                            ; preds = %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread
  %or.cond1138 = select i1 %i.jh, i1 %i.oa, i1 false
  %i.ox = icmp eq i8 %i.jk, 99
  %or.cond1142 = select i1 %or.cond1138, i1 %i.ox, i1 false
  %.not1234 = icmp eq i8 %i.jm, 116
  %or.cond1276 = select i1 %or.cond1142, i1 %.not1234, i1 false
  br i1 %or.cond1276, label %bb.bs, label %ma_dr_wav_fourcc_equal.exit713.thread

ma_dr_wav_guid_equal.exit704.thread:              ; preds = %ma_dr_wav_guid_equal.exit.thread
  %i.oy = call i32 @ma_dr_wav_guid_equal(ptr noundef nonnull %7, ptr noundef nonnull @ma_dr_wavGUID_W64_FACT)
  %.not496 = icmp eq i32 %i.oy, 0
  br i1 %.not496, label %ma_dr_wav_fourcc_equal.exit713.thread, label %.thread883

bb.bs:                                            ; preds = %bb.br
  switch i32 %i.jc, label %bb.ca [
    i32 0, label %bb.bt
    i32 1, label %bb.bt
    i32 2, label %.thread883
  ]

bb.bt:                                            ; preds = %bb.bs, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #55
  %i.oz = load ptr, ptr %0, align 8, !tbaa !673
  %i.pa = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.pb = call i64 %i.oz(ptr noundef %i.pa, ptr noundef nonnull %i.r, i64 noundef 4) #55, !inline_history !2818 ; 2 uses
  %i.pc = add i64 %i.im, %i.pb                    ; 2 uses
  store i64 %i.pc, ptr %i.d, align 8, !tbaa !164
  %.not517 = icmp eq i64 %i.pb, 4
  br i1 %.not517, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.pd = add i64 %i.il, -4
  %i.pe = load i16, ptr %i.gy, align 4, !tbaa !693
  %i.pf = icmp eq i16 %i.pe, 2
  br i1 %i.pf, label %bb.bv, label %.thread884

bb.bv:                                            ; preds = %bb.bu
  %i.pg = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.pg, label %bb.bx [
    i32 4, label %bb.bw
    i32 1, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %46 = load i32, ptr %i.r, align 4
  %i.ph = call i32 @llvm.bswap.i32(i32 %46)
  br label %.thread884

bb.bx:                                            ; preds = %bb.bv
  %47 = load i32, ptr %i.r, align 4
  br label %.thread884

.thread884:                                       ; preds = %bb.bx, %bb.bw, %bb.bu
  %storemerge.shrunk = phi i32 [ 0, %bb.bu ], [ %i.ph, %bb.bw ], [ %47, %bb.bx ]
  %storemerge = zext i32 %storemerge.shrunk to i64
  store i64 %storemerge, ptr %i.f, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %bb.ca

bb.by:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %.thread988

.thread883:                                       ; preds = %ma_dr_wav_guid_equal.exit704.thread, %bb.bs
  %i.pi = load ptr, ptr %0, align 8, !tbaa !673
  %i.pj = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.pk = call i64 %i.pi(ptr noundef %i.pj, ptr noundef nonnull %i.f, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %i.pl = add i64 %i.im, %i.pk                    ; 2 uses
  store i64 %i.pl, ptr %i.d, align 8, !tbaa !164
  %.not516 = icmp eq i64 %i.pk, 8
  br i1 %.not516, label %bb.bz, label %.thread988

bb.bz:                                            ; preds = %.thread883
  %i.pm = add i64 %i.il, -8
  br label %bb.ca

bb.ca:                                            ; preds = %.thread884, %bb.bs, %bb.bz
  %i.pn = phi i64 [ %i.pc, %.thread884 ], [ %i.pl, %bb.bz ], [ %i.im, %bb.bs ]
  %.1395 = phi i64 [ %i.pd, %.thread884 ], [ %i.pm, %bb.bz ], [ %i.il, %bb.bs ]
  %i.po = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.pp = zext i32 %i.po to i64
  %i.pq = add i64 %.1395, %i.pp                   ; 5 uses
  %i.pr = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.ps = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i714 = icmp eq i64 %i.pq, 0
  br i1 %.not12.i714, label %ma_dr_wav__seek_forward.exit721.thread887, label %.lr.ph.i715.preheader

.lr.ph.i715.preheader:                            ; preds = %bb.ca
  %i.pt = icmp ugt i64 %i.pq, 2147483647
  br i1 %i.pt, label %.lr.ph1398, label %ma_dr_wav__seek_forward.exit721

.lr.ph1398:                                       ; preds = %.lr.ph.i715.preheader, %.lr.ph.i715
  %.013.i7161397 = phi i64 [ %i.pv, %.lr.ph.i715 ], [ %i.pq, %.lr.ph.i715.preheader ]
  %i.pu = call i32 %i.pr(ptr noundef %i.ps, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i720 = icmp eq i32 %i.pu, 0
  br i1 %.not11.i720, label %.loopexit1323, label %.lr.ph.i715

.lr.ph.i715:                                      ; preds = %.lr.ph1398
  %i.pv = add i64 %.013.i7161397, -2147483647     ; 3 uses
  %i.pw = icmp ugt i64 %i.pv, 2147483647
  br i1 %i.pw, label %.lr.ph1398, label %ma_dr_wav__seek_forward.exit721

ma_dr_wav__seek_forward.exit721:                  ; preds = %.lr.ph.i715, %.lr.ph.i715.preheader
  %.013.i716.lcssa = phi i64 [ %i.pq, %.lr.ph.i715.preheader ], [ %i.pv, %.lr.ph.i715 ]
  %i.px = trunc nuw nsw i64 %.013.i716.lcssa to i32
  %i.py = call i32 %i.pr(ptr noundef %i.ps, i32 noundef %i.px, i32 noundef 1) #55, !inline_history !2819
  %.not10.i717.not = icmp eq i32 %i.py, 0
  br i1 %.not10.i717.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit721.thread887

ma_dr_wav__seek_forward.exit721.thread887:        ; preds = %bb.ca, %ma_dr_wav__seek_forward.exit721
  %i.pz = add i64 %i.pn, %i.pq                    ; 2 uses
  store i64 %i.pz, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

bb.cb:                                            ; preds = %.critedge542._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #55
  %i.qa = load i64, ptr %i.fz, align 8, !tbaa !1079 ; 2 uses
  br i1 %.2405, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qb = icmp ult i64 %i.qa, 24
  br i1 %i.qb, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %.not502 = icmp eq i64 %i.qa, 18
  br i1 %.not502, label %bb.ce, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.0392 = phi i64 [ 24, %bb.cc ], [ 18, %bb.cd ] ; 3 uses
  %i.qc = load ptr, ptr %0, align 8, !tbaa !673
  %i.qd = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.qe = call i64 %i.qc(ptr noundef %i.qd, ptr noundef nonnull %i.s, i64 noundef range(i64 0, -602) %.0392) #55, !inline_history !2818 ; 2 uses
  %i.qf = add i64 %i.im, %i.qe                    ; 3 uses
  store i64 %i.qf, ptr %i.d, align 8, !tbaa !164
  %.not503 = icmp eq i64 %i.qe, %.0392
  br i1 %.not503, label %bb.cf, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cf:                                            ; preds = %bb.ce
  %i.qg = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.qg, label %bb.ch [
    i32 4, label %bb.cg
    i32 1, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %i.qh = load i8, ptr %i.gi, align 1, !tbaa !119
  %i.qi = zext i8 %i.qh to i16
  %i.qj = load i8, ptr %i.s, align 16, !tbaa !119
  %i.qk = zext i8 %i.qj to i16
  %i.ql = shl nuw i16 %i.qk, 8
  %i.qm = or disjoint i16 %i.ql, %i.qi
  %i.qn = load i32, ptr %i.gj, align 2
  %i.qo = call i32 @llvm.bswap.i32(i32 %i.qn)
  %i.qp = load i8, ptr %i.gl, align 1, !tbaa !119
  %i.qq = zext i8 %i.qp to i16
  %i.qr = load i8, ptr %i.gk, align 2, !tbaa !119
  %i.qs = zext i8 %i.qr to i16
  %i.qt = shl nuw i16 %i.qs, 8
  %i.qu = or disjoint i16 %i.qt, %i.qq
  br label %ma_dr_wav_bytes_to_u16_ex.exit601

bb.ch:                                            ; preds = %bb.cf
  %i.qv = load i16, ptr %i.s, align 16
  %i.qw = load i32, ptr %i.gj, align 2
  %i.qx = load i16, ptr %i.gk, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit601

ma_dr_wav_bytes_to_u16_ex.exit601:                ; preds = %bb.cg, %bb.ch
  %.0.i559900.in = phi i32 [ %i.qo, %bb.cg ], [ %i.qw, %bb.ch ]
  %.0.i606894898 = phi i16 [ %i.qm, %bb.cg ], [ %i.qv, %bb.ch ] ; 3 uses
  %.0.i600 = phi i16 [ %i.qu, %bb.cg ], [ %i.qx, %bb.ch ] ; 4 uses
  %.0.i559900 = zext i32 %.0.i559900.in to i64
  %i.qy = call fastcc i64 @ma_dr_wav_aiff_extented_to_s64(ptr noundef %i.gm) ; 2 uses
  %or.cond15 = icmp ugt i64 %i.qy, 4294967295
  br i1 %or.cond15, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1, label %bb.ci

bb.ci:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit601
  br i1 %.2405, label %.thread956, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qz = load i8, ptr %i.gn, align 2, !tbaa !119
  switch i8 %i.qz, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1 [
    i8 78, label %bb.ck
    i8 114, label %bb.cl
    i8 115, label %bb.co
    i8 102, label %bb.cq
    i8 70, label %bb.cr
    i8 97, label %bb.cs
    i8 65, label %bb.ct
    i8 117, label %bb.cu
    i8 85, label %bb.cv
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.ra = load i8, ptr %i.go, align 1, !tbaa !119
  %i.rb = icmp eq i8 %i.ra, 79
  %i.rc = load i8, ptr %i.gp, align 4
  %i.rd = icmp eq i8 %i.rc, 78
  %or.cond1154 = select i1 %i.rb, i1 %i.rd, i1 false
  %i.re = load i8, ptr %i.gq, align 1
  %.not1232 = icmp eq i8 %i.re, 69
  %or.cond1282 = select i1 %or.cond1154, i1 %.not1232, i1 false
  br i1 %or.cond1282, label %.thread956, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cl:                                            ; preds = %bb.cj
  %i.rf = load i8, ptr %i.go, align 1, !tbaa !119
  %i.rg = icmp eq i8 %i.rf, 97
  %i.rh = load i8, ptr %i.gp, align 4
  %i.ri = icmp eq i8 %i.rh, 119
  %or.cond1158 = select i1 %i.rg, i1 %i.ri, i1 false
  %i.rj = load i8, ptr %i.gq, align 1
  %.not1231 = icmp eq i8 %i.rj, 32
  %or.cond1285 = select i1 %or.cond1158, i1 %.not1231, i1 false
  br i1 %or.cond1285, label %bb.cm, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cm:                                            ; preds = %bb.cl
  %i.rk = icmp eq i16 %.0.i600, 8
  br i1 %i.rk, label %bb.cn, label %.thread956

bb.cn:                                            ; preds = %bb.cm
  store i8 1, ptr %i.gs, align 1, !tbaa !700
  br label %.thread956

bb.co:                                            ; preds = %bb.cj
  %i.rl = load i8, ptr %i.go, align 1, !tbaa !119
  %i.rm = icmp eq i8 %i.rl, 111
  %i.rn = load i8, ptr %i.gp, align 4
  %i.ro = icmp eq i8 %i.rn, 119
  %or.cond1162 = select i1 %i.rm, i1 %i.ro, i1 false
  %i.rp = load i8, ptr %i.gq, align 1
  %.not1230 = icmp eq i8 %i.rp, 116
  %or.cond1288 = select i1 %or.cond1162, i1 %.not1230, i1 false
  br i1 %or.cond1288, label %bb.cp, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cp:                                            ; preds = %bb.co
  store i8 1, ptr %i.gr, align 4, !tbaa !697
  br label %.thread956

bb.cq:                                            ; preds = %bb.cj
  %i.rq = load i8, ptr %i.go, align 1, !tbaa !119
  %i.rr = icmp eq i8 %i.rq, 108                   ; 2 uses
  %i.rs = load i8, ptr %i.gp, align 4             ; 2 uses
  %i.rt = icmp eq i8 %i.rs, 51
  %or.cond1166 = select i1 %i.rr, i1 %i.rt, i1 false
  %i.ru = load i8, ptr %i.gq, align 1             ; 2 uses
  %.not1228 = icmp eq i8 %i.ru, 50
  %or.cond1291 = select i1 %or.cond1166, i1 %.not1228, i1 false
  br i1 %or.cond1291, label %.thread956, label %.thread915

.thread915:                                       ; preds = %bb.cq
  %i.rv = icmp eq i8 %i.rs, 54
  %or.cond1170 = select i1 %i.rr, i1 %i.rv, i1 false
  %.not1229 = icmp eq i8 %i.ru, 52
  %or.cond1294 = select i1 %or.cond1170, i1 %.not1229, i1 false
  br i1 %or.cond1294, label %.thread956, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cr:                                            ; preds = %bb.cj
  %i.rw = load i8, ptr %i.go, align 1, !tbaa !119
  %i.rx = icmp eq i8 %i.rw, 76                    ; 2 uses
  %i.ry = load i8, ptr %i.gp, align 4             ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 51
  %or.cond1174 = select i1 %i.rx, i1 %i.rz, i1 false
  %i.sa = load i8, ptr %i.gq, align 1             ; 2 uses
  %.not1226 = icmp eq i8 %i.sa, 50
  %or.cond1297 = select i1 %or.cond1174, i1 %.not1226, i1 false
  br i1 %or.cond1297, label %.thread956, label %.thread926

.thread926:                                       ; preds = %bb.cr
  %i.sb = icmp eq i8 %i.ry, 54
  %or.cond1178 = select i1 %i.rx, i1 %i.sb, i1 false
  %.not1227 = icmp eq i8 %i.sa, 52
  %or.cond1300 = select i1 %or.cond1178, i1 %.not1227, i1 false
  br i1 %or.cond1300, label %.thread956, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cs:                                            ; preds = %bb.cj
  %i.sc = load i8, ptr %i.go, align 1, !tbaa !119
  %i.sd = icmp eq i8 %i.sc, 108
  %i.se = load i8, ptr %i.gp, align 4
  %i.sf = icmp eq i8 %i.se, 97
  %or.cond1182 = select i1 %i.sd, i1 %i.sf, i1 false
  %i.sg = load i8, ptr %i.gq, align 1
  %.not1225 = icmp eq i8 %i.sg, 119
  %or.cond1303 = select i1 %or.cond1182, i1 %.not1225, i1 false
  br i1 %or.cond1303, label %.thread956, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.ct:                                            ; preds = %bb.cj
  %i.sh = load i8, ptr %i.go, align 1, !tbaa !119
  %i.si = icmp eq i8 %i.sh, 76
  %i.sj = load i8, ptr %i.gp, align 4
  %i.sk = icmp eq i8 %i.sj, 65
  %or.cond1186 = select i1 %i.si, i1 %i.sk, i1 false
  %i.sl = load i8, ptr %i.gq, align 1
  %.not1224 = icmp eq i8 %i.sl, 87
  %or.cond1306 = select i1 %or.cond1186, i1 %.not1224, i1 false
  br i1 %or.cond1306, label %.thread956, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cu:                                            ; preds = %bb.cj
  %i.sm = load i8, ptr %i.go, align 1, !tbaa !119
  %i.sn = icmp eq i8 %i.sm, 108
  %i.so = load i8, ptr %i.gp, align 4
  %i.sp = icmp eq i8 %i.so, 97
  %or.cond1190 = select i1 %i.sn, i1 %i.sp, i1 false
  %i.sq = load i8, ptr %i.gq, align 1
  %.not1223 = icmp eq i8 %i.sq, 119
  %or.cond1309 = select i1 %or.cond1190, i1 %.not1223, i1 false
  br i1 %or.cond1309, label %.thread956, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cv:                                            ; preds = %bb.cj
  %i.sr = load i8, ptr %i.go, align 1, !tbaa !119
  %i.ss = icmp eq i8 %i.sr, 76
  %i.st = load i8, ptr %i.gp, align 4
  %i.su = icmp eq i8 %i.st, 65
  %or.cond1194 = select i1 %i.ss, i1 %i.su, i1 false
  %i.sv = load i8, ptr %i.gq, align 1
  %.not1222 = icmp eq i8 %i.sv, 87
  %or.cond1312 = select i1 %or.cond1194, i1 %.not1222, i1 false
  br i1 %or.cond1312, label %.thread956, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

.thread956:                                       ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %.thread926, %bb.cr, %.thread915, %bb.cq, %bb.ck, %bb.cm, %bb.cn, %bb.cp, %bb.ci
  %.2 = phi i16 [ 1, %bb.ci ], [ 7, %bb.cv ], [ 6, %bb.ct ], [ 3, %.thread915 ], [ 3, %bb.cr ], [ 3, %.thread926 ], [ 3, %bb.cq ], [ 1, %bb.ck ], [ 1, %bb.cp ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 6, %bb.cs ], [ 7, %bb.cu ] ; 2 uses
  store i16 %.2, ptr %4, align 4, !tbaa !1077
  store i16 %.0.i606894898, ptr %i.gt, align 2, !tbaa !2822
  %i.sw = trunc nuw i64 %i.qy to i32              ; 2 uses
  store i32 %i.sw, ptr %i.gu, align 4, !tbaa !2823
  %i.sx = zext i16 %.0.i606894898 to i32
  %i.sy = zext i16 %.0.i600 to i32
  %i.sz = mul nuw nsw i32 %i.sy, %i.sx
  %i.ta = lshr i32 %i.sz, 3                       ; 2 uses
  %i.tb = trunc i32 %i.ta to i16
  store i16 %i.tb, ptr %i.gw, align 4, !tbaa !2825
  %i.tc = and i32 %i.ta, 65535
  %i.td = mul i32 %i.tc, %i.sw
  store i32 %i.td, ptr %i.gx, align 4, !tbaa !2824
  %i.te = and i16 %.2, 6
  %or.cond21 = icmp eq i16 %i.te, 6
  %i.tf = icmp ugt i16 %.0.i600, 8
  %or.cond57 = select i1 %or.cond21, i1 %i.tf, i1 false
  br i1 %or.cond57, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.thread956
  store i16 %.0.i606894898, ptr %i.gw, align 4, !tbaa !2825
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread956
  %i.tg = phi i16 [ 8, %bb.cw ], [ %.0.i600, %.thread956 ] ; 2 uses
  %i.th = and i16 %i.tg, 7
  %i.ti = add i16 %i.th, %i.tg
  store i16 %i.ti, ptr %i.gv, align 2, !tbaa !2826
  br i1 %.2405, label %ma_dr_wav_fourcc_equal.exit734.thread.jt6, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.tj = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.tk = sub i64 %i.il, %.0392                   ; 5 uses
  %i.tl = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i735 = icmp eq i64 %i.tk, 0
  br i1 %.not12.i735, label %ma_dr_wav__seek_forward.exit742.thread961, label %.lr.ph.i736.preheader

.lr.ph.i736.preheader:                            ; preds = %bb.cy
  %i.tm = icmp ugt i64 %i.tk, 2147483647
  br i1 %i.tm, label %.lr.ph1395, label %ma_dr_wav__seek_forward.exit742

.lr.ph1395:                                       ; preds = %.lr.ph.i736.preheader, %.lr.ph.i736
  %.013.i7371394 = phi i64 [ %i.to, %.lr.ph.i736 ], [ %i.tk, %.lr.ph.i736.preheader ]
  %i.tn = call i32 %i.tj(ptr noundef %i.tl, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i741 = icmp eq i32 %i.tn, 0
  br i1 %.not11.i741, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1, label %.lr.ph.i736

.lr.ph.i736:                                      ; preds = %.lr.ph1395
  %i.to = add i64 %.013.i7371394, -2147483647     ; 3 uses
  %i.tp = icmp ugt i64 %i.to, 2147483647
  br i1 %i.tp, label %.lr.ph1395, label %ma_dr_wav__seek_forward.exit742

ma_dr_wav__seek_forward.exit742:                  ; preds = %.lr.ph.i736, %.lr.ph.i736.preheader
  %.013.i737.lcssa = phi i64 [ %i.tk, %.lr.ph.i736.preheader ], [ %i.to, %.lr.ph.i736 ]
  %i.tq = trunc nuw nsw i64 %.013.i737.lcssa to i32
  %i.tr = call i32 %i.tj(ptr noundef %i.tl, i32 noundef %i.tq, i32 noundef 1) #55, !inline_history !2819
  %.not10.i738.not = icmp eq i32 %i.tr, 0
  br i1 %.not10.i738.not, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1, label %ma_dr_wav__seek_forward.exit742.thread961

ma_dr_wav__seek_forward.exit742.thread961:        ; preds = %bb.cy, %ma_dr_wav__seek_forward.exit742
  %i.ts = add i64 %i.qf, %i.tk                    ; 2 uses
  store i64 %i.ts, ptr %i.d, align 8, !tbaa !164
  br label %ma_dr_wav_fourcc_equal.exit734.thread.jt6

ma_dr_wav_fourcc_equal.exit734.thread.jt6:        ; preds = %ma_dr_wav__seek_forward.exit742.thread961, %bb.cx
  %i.tt = phi i64 [ %i.ts, %ma_dr_wav__seek_forward.exit742.thread961 ], [ %i.qf, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #55
  br label %.backedge

ma_dr_wav_fourcc_equal.exit734.thread.jt1:        ; preds = %bb.ck, %.thread926, %bb.cj, %bb.cu, %.thread915, %bb.cv, %bb.cs, %bb.cl, %bb.co, %bb.ct, %ma_dr_wav__seek_forward.exit742, %ma_dr_wav_bytes_to_u16_ex.exit601, %bb.ce, %bb.cd, %bb.cc, %.lr.ph1395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #55
  br label %bb.dh

.thread964:                                       ; preds = %.critedge542._crit_edge
  %i.tu = icmp eq i8 %.pre1480, 83
  %i.tv = icmp eq i8 %.pre1481, 83
  %or.cond1202 = select i1 %i.tu, i1 %i.tv, i1 false
  %i.tw = icmp eq i8 %.pre1482, 78
  %or.cond1206 = select i1 %or.cond1202, i1 %i.tw, i1 false
  %.not1233 = icmp eq i8 %.pre1483, 68
  %or.cond1315 = select i1 %or.cond1206, i1 %.not1233, i1 false
  br i1 %or.cond1315, label %bb.cz, label %ma_dr_wav_fourcc_equal.exit713.thread

bb.cz:                                            ; preds = %.thread964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #55
  %i.tx = load ptr, ptr %0, align 8, !tbaa !673
  %i.ty = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.tz = call i64 %i.tx(ptr noundef %i.ty, ptr noundef nonnull %i.t, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %i.ua = add i64 %i.im, %i.tz                    ; 3 uses
  store i64 %i.ua, ptr %i.d, align 8, !tbaa !164
  %.not499 = icmp eq i64 %i.tz, 8
  br i1 %.not499, label %48, label %ma_dr_wav__seek_forward.exit751.thread.jt1

48:                                               ; preds = %bb.cz
  %49 = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %49, label %bb.db [
    i32 4, label %bb.da
    i32 1, label %bb.da
  ]

bb.da:                                            ; preds = %48, %48
  %i.ub = load i32, ptr %i.t, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %i.ub)
  br label %ma_dr_wav_bytes_to_u32_ex.exit

bb.db:                                            ; preds = %48
  %51 = load i32, ptr %i.t, align 4
  br label %ma_dr_wav_bytes_to_u32_ex.exit

ma_dr_wav_bytes_to_u32_ex.exit:                   ; preds = %bb.da, %bb.db
  %.0.i.in = phi i32 [ %50, %bb.da ], [ %51, %bb.db ] ; 6 uses
  %.0.i = zext i32 %.0.i.in to i64                ; 2 uses
  %i.uc = add i64 %i.ua, %.0.i                    ; 2 uses
  store i64 %i.uc, ptr %i.gh, align 8, !tbaa !688
  %.4415 = call i64 @llvm.usub.sat.i64(i64 %i.il, i64 %.0.i) ; 2 uses
  br i1 %i.w, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %ma_dr_wav_bytes_to_u32_ex.exit
  %.not500 = icmp eq i8 %.0408, 0
  br i1 %.not500, label %ma_dr_wav__seek_forward.exit751.thread.jt1, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ud = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 3 uses
  %i.ue = load ptr, ptr %i.z, align 8, !tbaa !676 ; 3 uses
  %.not12.i744 = icmp eq i32 %.0.i.in, 0
  br i1 %.not12.i744, label %ma_dr_wav__seek_forward.exit751.thread968, label %.lr.ph.i745.preheader

.lr.ph.i745.preheader:                            ; preds = %bb.dd
  %i.uf = icmp slt i32 %.0.i.in, 0
  br i1 %i.uf, label %.lr.ph1392.preheader, label %ma_dr_wav__seek_forward.exit751

.lr.ph1392.preheader:                             ; preds = %.lr.ph.i745.preheader
  %52 = add i32 %.0.i.in, -2147483647
  %i.ug = call i32 %i.ud(ptr noundef %i.ue, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i750.peel = icmp eq i32 %i.ug, 0
  br i1 %.not11.i750.peel, label %ma_dr_wav__seek_forward.exit751.thread.jt1, label %.lr.ph.i745.peel

.lr.ph.i745.peel:                                 ; preds = %.lr.ph1392.preheader
  %53 = icmp eq i32 %.0.i.in, -1
  br i1 %53, label %.lr.ph1392, label %ma_dr_wav__seek_forward.exit751

.lr.ph1392:                                       ; preds = %.lr.ph.i745.peel
  %54 = call i32 %i.ud(ptr noundef %i.ue, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i750 = icmp eq i32 %54, 0
  br i1 %.not11.i750, label %ma_dr_wav__seek_forward.exit751.thread.jt1, label %ma_dr_wav__seek_forward.exit751

ma_dr_wav__seek_forward.exit751:                  ; preds = %.lr.ph.i745.peel, %.lr.ph1392, %.lr.ph.i745.preheader
  %.013.i746.lcssa = phi i32 [ %.0.i.in, %.lr.ph.i745.preheader ], [ %52, %.lr.ph.i745.peel ], [ 1, %.lr.ph1392 ]
  %i.uh = call i32 %i.ud(ptr noundef %i.ue, i32 noundef %.013.i746.lcssa, i32 noundef 1) #55, !inline_history !2819
  %.not10.i747.not = icmp eq i32 %i.uh, 0
  br i1 %.not10.i747.not, label %ma_dr_wav__seek_forward.exit751.thread.jt1, label %ma_dr_wav__seek_forward.exit751.thread968

ma_dr_wav__seek_forward.exit751.thread968:        ; preds = %bb.dd, %ma_dr_wav__seek_forward.exit751
  store i64 %i.uc, ptr %i.d, align 8, !tbaa !164
  br label %ma_dr_wav__seek_forward.exit751.thread.jt5

bb.de:                                            ; preds = %ma_dr_wav_bytes_to_u32_ex.exit
  %i.ui = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.uj = zext i32 %i.ui to i64
  %i.uk = add i64 %i.il, -8
  %i.ul = add i64 %i.uk, %i.uj                    ; 5 uses
  %i.um = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.un = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i752 = icmp eq i64 %i.ul, 0
  br i1 %.not12.i752, label %ma_dr_wav__seek_forward.exit751.thread.jt6, label %.lr.ph.i753.preheader

.lr.ph.i753.preheader:                            ; preds = %bb.de
  %i.uo = icmp ugt i64 %i.ul, 2147483647
  br i1 %i.uo, label %.lr.ph1389, label %ma_dr_wav__seek_forward.exit759

.lr.ph1389:                                       ; preds = %.lr.ph.i753.preheader, %.lr.ph.i753
  %.013.i7541388 = phi i64 [ %i.uq, %.lr.ph.i753 ], [ %i.ul, %.lr.ph.i753.preheader ]
  %i.up = call i32 %i.um(ptr noundef %i.un, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i758 = icmp eq i32 %i.up, 0
  br i1 %.not11.i758, label %ma_dr_wav__seek_forward.exit751.thread.jt5, label %.lr.ph.i753

.lr.ph.i753:                                      ; preds = %.lr.ph1389
  %i.uq = add i64 %.013.i7541388, -2147483647     ; 3 uses
  %i.ur = icmp ugt i64 %i.uq, 2147483647
  br i1 %i.ur, label %.lr.ph1389, label %ma_dr_wav__seek_forward.exit759

ma_dr_wav__seek_forward.exit759:                  ; preds = %.lr.ph.i753, %.lr.ph.i753.preheader
  %.013.i754.lcssa = phi i64 [ %i.ul, %.lr.ph.i753.preheader ], [ %i.uq, %.lr.ph.i753 ]
  %i.us = trunc nuw nsw i64 %.013.i754.lcssa to i32
  %i.ut = call i32 %i.um(ptr noundef %i.un, i32 noundef %i.us, i32 noundef 1) #55, !inline_history !2819
  %.not10.i755.not = icmp eq i32 %i.ut, 0
  br i1 %.not10.i755.not, label %ma_dr_wav__seek_forward.exit751.thread.jt5, label %ma_dr_wav__seek_forward.exit751.thread.jt6

ma_dr_wav__seek_forward.exit751.thread.jt5:       ; preds = %ma_dr_wav__seek_forward.exit759, %.lr.ph1389, %ma_dr_wav__seek_forward.exit751.thread968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #55
  br label %.loopexit1323

ma_dr_wav__seek_forward.exit751.thread.jt1:       ; preds = %bb.cz, %.lr.ph1392.preheader, %.lr.ph1392, %bb.dc, %ma_dr_wav__seek_forward.exit751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #55
  br label %bb.dh

ma_dr_wav__seek_forward.exit751.thread.jt6:       ; preds = %ma_dr_wav__seek_forward.exit759, %bb.de
  %i.uu = add i64 %i.ul, %i.ua                    ; 2 uses
  store i64 %i.uu, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #55
  br label %.backedge

ma_dr_wav_fourcc_equal.exit713.thread:            ; preds = %.critedge542, %ma_dr_wav_fourcc_equal.exit685.thread, %.thread964, %ma_dr_wav_guid_equal.exit704.thread, %bb.br
  br i1 %.0410.shrunk854, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %ma_dr_wav_fourcc_equal.exit713.thread
  %i.uv = call fastcc i64 @ma_dr_wav__metadata_process_chunk(ptr noundef %5, ptr noundef %7) ; 0 uses
  %i.uw = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.ux = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.uy = call fastcc i32 @ma_dr_wav__seek_from_start(ptr noundef %i.uw, i64 noundef %i.im, ptr noundef %i.ux)
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %.loopexit1323, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %ma_dr_wav_fourcc_equal.exit713.thread
  %i.va = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.vb = zext i32 %i.va to i64
  %i.vc = add i64 %i.il, %i.vb                    ; 5 uses
  %i.vd = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.ve = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i760 = icmp eq i64 %i.vc, 0
  br i1 %.not12.i760, label %ma_dr_wav__seek_forward.exit767.thread974, label %.lr.ph.i761.preheader

.lr.ph.i761.preheader:                            ; preds = %bb.dg
  %i.vf = icmp ugt i64 %i.vc, 2147483647
  br i1 %i.vf, label %.lr.ph1408, label %ma_dr_wav__seek_forward.exit767

.lr.ph1408:                                       ; preds = %.lr.ph.i761.preheader, %.lr.ph.i761
  %.013.i7621407 = phi i64 [ %i.vh, %.lr.ph.i761 ], [ %i.vc, %.lr.ph.i761.preheader ]
  %i.vg = call i32 %i.vd(ptr noundef %i.ve, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i766 = icmp eq i32 %i.vg, 0
  br i1 %.not11.i766, label %.loopexit1323, label %.lr.ph.i761

.lr.ph.i761:                                      ; preds = %.lr.ph1408
  %i.vh = add i64 %.013.i7621407, -2147483647     ; 3 uses
  %i.vi = icmp ugt i64 %i.vh, 2147483647
  br i1 %i.vi, label %.lr.ph1408, label %ma_dr_wav__seek_forward.exit767

ma_dr_wav__seek_forward.exit767:                  ; preds = %.lr.ph.i761, %.lr.ph.i761.preheader
  %.013.i762.lcssa = phi i64 [ %i.vc, %.lr.ph.i761.preheader ], [ %i.vh, %.lr.ph.i761 ]
  %i.vj = trunc nuw nsw i64 %.013.i762.lcssa to i32
  %i.vk = call i32 %i.vd(ptr noundef %i.ve, i32 noundef %i.vj, i32 noundef 1) #55, !inline_history !2819
  %.not10.i763.not = icmp eq i32 %i.vk, 0
  br i1 %.not10.i763.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit767.thread974

ma_dr_wav__seek_forward.exit767.thread974:        ; preds = %bb.dg, %ma_dr_wav__seek_forward.exit767
  %i.vl = add i64 %i.im, %i.vc                    ; 2 uses
  store i64 %i.vl, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

.thread988:                                       ; preds = %ma_dr_wav__seek_from_start.exit, %.thread883, %bb.ap, %.lr.ph, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  br label %ma_dr_wav_free.exit779

bb.dh:                                            ; preds = %ma_dr_wav_fourcc_equal.exit734.thread.jt1, %ma_dr_wav__seek_forward.exit684.thread.jt1, %ma_dr_wav__seek_forward.exit751.thread.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  br label %ma_dr_wav_free.exit779

.backedge:                                        ; preds = %ma_dr_wav_fourcc_equal.exit734.thread.jt6, %ma_dr_wav__seek_forward.exit721.thread887, %ma_dr_wav__seek_forward.exit712.thread876, %ma_dr_wav__seek_forward.exit767.thread974, %ma_dr_wav__seek_forward.exit684.thread.jt6, %ma_dr_wav__seek_forward.exit751.thread.jt6
  %i.vm = phi i64 [ %i.uu, %ma_dr_wav__seek_forward.exit751.thread.jt6 ], [ %i.ny, %ma_dr_wav__seek_forward.exit684.thread.jt6 ], [ %i.vl, %ma_dr_wav__seek_forward.exit767.thread974 ], [ %i.ow, %ma_dr_wav__seek_forward.exit712.thread876 ], [ %i.pz, %ma_dr_wav__seek_forward.exit721.thread887 ], [ %i.tt, %ma_dr_wav_fourcc_equal.exit734.thread.jt6 ]
  %.6417.jt6 = phi i64 [ %.4415, %ma_dr_wav__seek_forward.exit751.thread.jt6 ], [ %.2413, %ma_dr_wav__seek_forward.exit684.thread.jt6 ], [ %.2413, %ma_dr_wav__seek_forward.exit767.thread974 ], [ %spec.select, %ma_dr_wav__seek_forward.exit712.thread876 ], [ %.2413, %ma_dr_wav__seek_forward.exit721.thread887 ], [ %.2413, %ma_dr_wav_fourcc_equal.exit734.thread.jt6 ]
  %.1409.jt6 = phi i8 [ %.0408, %ma_dr_wav__seek_forward.exit751.thread.jt6 ], [ 1, %ma_dr_wav__seek_forward.exit684.thread.jt6 ], [ %.0408, %ma_dr_wav__seek_forward.exit767.thread974 ], [ %.0408, %ma_dr_wav__seek_forward.exit712.thread876 ], [ %.0408, %ma_dr_wav__seek_forward.exit721.thread887 ], [ 1, %ma_dr_wav_fourcc_equal.exit734.thread.jt6 ]
  %.1407.jt6 = phi i8 [ 1, %ma_dr_wav__seek_forward.exit751.thread.jt6 ], [ %.0406, %ma_dr_wav__seek_forward.exit684.thread.jt6 ], [ %.0406, %ma_dr_wav__seek_forward.exit767.thread974 ], [ 1, %ma_dr_wav__seek_forward.exit712.thread876 ], [ %.0406, %ma_dr_wav__seek_forward.exit721.thread887 ], [ %.0406, %ma_dr_wav_fourcc_equal.exit734.thread.jt6 ]
  %.2402.jt6 = phi i64 [ %.0400, %ma_dr_wav__seek_forward.exit751.thread.jt6 ], [ %.0400, %ma_dr_wav__seek_forward.exit684.thread.jt6 ], [ %.0400, %ma_dr_wav__seek_forward.exit767.thread974 ], [ %.0400, %ma_dr_wav__seek_forward.exit712.thread876 ], [ %.0400, %ma_dr_wav__seek_forward.exit721.thread887 ], [ %.0.i559900, %ma_dr_wav_fourcc_equal.exit734.thread.jt6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  %.pre1479 = load i32, ptr %i.dz, align 8, !tbaa !683
  br label %bb.ae

.loopexit1323:                                    ; preds = %bb.ae, %ma_dr_wav__seek_forward.exit767, %bb.df, %ma_dr_wav__seek_forward.exit721, %ma_dr_wav__seek_forward.exit712, %bb.bp, %.lr.ph1398, %.lr.ph1401, %.lr.ph1408, %ma_dr_wav__seek_forward.exit751.thread.jt5, %ma_dr_wav__seek_forward.exit684.thread.jt5, %.thread40.i662, %.thread.i667
  %.1407985 = phi i8 [ 1, %ma_dr_wav__seek_forward.exit751.thread.jt5 ], [ 1, %.lr.ph1401 ], [ %.0406, %.lr.ph1408 ], [ %.0406, %.thread40.i662 ], [ %.0406, %.thread.i667 ], [ %.0406, %ma_dr_wav__seek_forward.exit684.thread.jt5 ], [ %.0406, %.lr.ph1398 ], [ %.0406, %bb.ae ], [ 1, %bb.bp ], [ 1, %ma_dr_wav__seek_forward.exit712 ], [ %.0406, %ma_dr_wav__seek_forward.exit721 ], [ %.0406, %bb.df ], [ %.0406, %ma_dr_wav__seek_forward.exit767 ]
  %.1409984 = phi i8 [ %.0408, %ma_dr_wav__seek_forward.exit751.thread.jt5 ], [ %.0408, %.lr.ph1401 ], [ %.0408, %.lr.ph1408 ], [ %.0408, %.thread40.i662 ], [ %.0408, %.thread.i667 ], [ 1, %ma_dr_wav__seek_forward.exit684.thread.jt5 ], [ %.0408, %.lr.ph1398 ], [ %.0408, %bb.bp ], [ %.0408, %ma_dr_wav__seek_forward.exit712 ], [ %.0408, %ma_dr_wav__seek_forward.exit721 ], [ %.0408, %bb.df ], [ %.0408, %ma_dr_wav__seek_forward.exit767 ], [ %.0408, %bb.ae ]
  %.6417983 = phi i64 [ %.4415, %ma_dr_wav__seek_forward.exit751.thread.jt5 ], [ %spec.select, %.lr.ph1401 ], [ %.2413, %.lr.ph1408 ], [ %.2413, %.thread40.i662 ], [ %.2413, %.thread.i667 ], [ %.2413, %ma_dr_wav__seek_forward.exit684.thread.jt5 ], [ %.2413, %.lr.ph1398 ], [ %.2413, %bb.ae ], [ %spec.select, %bb.bp ], [ %spec.select, %ma_dr_wav__seek_forward.exit712 ], [ %.2413, %ma_dr_wav__seek_forward.exit721 ], [ %.2413, %bb.df ], [ %.2413, %ma_dr_wav__seek_forward.exit767 ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  %i.vn = icmp ne i8 %.1409984, 0
  %i.vo = icmp ne i8 %.1407985, 0
  %or.cond23 = select i1 %i.vn, i1 %i.vo, i1 false
  br i1 %or.cond23, label %bb.di, label %ma_dr_wav_free.exit779

bb.di:                                            ; preds = %.loopexit1323
  %i.vp = load i32, ptr %i.gu, align 4, !tbaa !2823
  %i.vq = add i32 %i.vp, -384001
  %or.cond26 = icmp ult i32 %i.vq, -384000
  %i.vr = load i16, ptr %i.gt, align 2
  %i.vs = add i16 %i.vr, -257
  %i.vt = icmp ult i16 %i.vs, -256
  %or.cond34 = select i1 %or.cond26, i1 true, i1 %i.vt
  %i.vu = load i16, ptr %i.gv, align 2
  %i.vv = add i16 %i.vu, -65
  %i.vw = icmp ult i16 %i.vv, -64
  %or.cond42 = select i1 %or.cond34, i1 true, i1 %i.vw
  %i.vx = load i16, ptr %i.gw, align 4
  %i.vy = icmp eq i16 %i.vx, 0
  %or.cond46 = select i1 %or.cond42, i1 true, i1 %i.vy
  br i1 %or.cond46, label %ma_dr_wav_free.exit779, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vz = load i16, ptr %4, align 4, !tbaa !1077  ; 2 uses
  %i.wa = icmp eq i16 %i.vz, -2
  br i1 %i.wa, label %bb.dk, label %ma_dr_wav_bytes_to_u16_ex.exit

bb.dk:                                            ; preds = %bb.dj
  %i.wb = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.wb, label %bb.dm [
    i32 4, label %bb.dl
    i32 1, label %bb.dl
  ]

bb.dl:                                            ; preds = %bb.dk, %bb.dk
  %i.wc = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !119
  %i.we = zext i8 %i.wd to i16
  %i.wf = load i8, ptr %i.hp, align 4, !tbaa !119
  %i.wg = zext i8 %i.wf to i16
  %i.wh = shl nuw i16 %i.wg, 8
  %i.wi = or disjoint i16 %i.wh, %i.we
  br label %ma_dr_wav_bytes_to_u16_ex.exit

bb.dm:                                            ; preds = %bb.dk
  %i.wj = load i16, ptr %i.hp, align 4
  br label %ma_dr_wav_bytes_to_u16_ex.exit

ma_dr_wav_bytes_to_u16_ex.exit:                   ; preds = %bb.dm, %bb.dl, %bb.dj
  %i.wk = phi i16 [ %i.vz, %bb.dj ], [ %i.wi, %bb.dl ], [ %i.wj, %bb.dm ] ; 7 uses
  br i1 %i.w, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit
  %i.wl = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.wm = load i64, ptr %i.gh, align 8, !tbaa !688
  %i.wn = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.wo = call fastcc i32 @ma_dr_wav__seek_from_start(ptr noundef %i.wl, i64 noundef %i.wm, ptr noundef %i.wn)
  %.not524 = icmp eq i32 %i.wo, 0
  br i1 %.not524, label %ma_dr_wav_free.exit779, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wp = load i64, ptr %i.gh, align 8, !tbaa !688
  store i64 %i.wp, ptr %i.d, align 8, !tbaa !164
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %ma_dr_wav_bytes_to_u16_ex.exit
  %i.wq = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 8
  %i.ws = icmp ne i32 %i.wr, 0
  %or.cond49 = select i1 %.0410.shrunk854, i1 %i.ws, i1 false
  br i1 %or.cond49, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %bb.dp
  %i.wt = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.wu = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.wv = call fastcc i32 @ma_dr_wav__seek_from_start(ptr noundef %i.wt, i64 noundef %i.fp, ptr noundef %i.wu)
  %i.ww = icmp eq i32 %i.wv, 0
  br i1 %i.ww, label %ma_dr_wav_free.exit779, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.wy = call fastcc i32 @ma_dr_wav__metadata_alloc(ptr noundef %5, ptr noundef nonnull %i.wx)
  %.not525 = icmp eq i32 %i.wy, 0
  br i1 %.not525, label %bb.ds, label %ma_dr_wav_free.exit779

bb.ds:                                            ; preds = %bb.dr
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.wz, align 8, !tbaa !1085
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  %i.xa = load ptr, ptr %0, align 8, !tbaa !673
  %i.xb = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.xc = load i32, ptr %i.dz, align 8, !tbaa !683
  %i.xd = call fastcc i32 @ma_dr_wav__read_chunk_header(ptr noundef %i.xa, ptr noundef %i.xb, i32 noundef %i.xc, ptr noundef %i.d, ptr noundef %8)
  %.not5261413 = icmp eq i32 %i.xd, 0
  br i1 %.not5261413, label %.lr.ph1414, label %._crit_edge

.lr.ph1414:                                       ; preds = %bb.ds
  %i.xe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.xf = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.dt

bb.dt:                                            ; preds = %.lr.ph1414, %ma_dr_wav_free.exit
  %i.xg = call fastcc i64 @ma_dr_wav__metadata_process_chunk(ptr noundef %5, ptr noundef %8)
  %i.xh = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.xi = load i64, ptr %i.xe, align 8, !tbaa !1079
  %i.xj = load i32, ptr %i.xf, align 8, !tbaa !1080
  %i.xk = zext i32 %i.xj to i64
  %i.xl = sub i64 %i.xi, %i.xg
  %i.xm = add i64 %i.xl, %i.xk                    ; 4 uses
  %i.xn = load ptr, ptr %i.z, align 8, !tbaa !676 ; 3 uses
  %.not12.i768 = icmp eq i64 %i.xm, 0
  br i1 %.not12.i768, label %ma_dr_wav_free.exit, label %.lr.ph.i769.preheader

.lr.ph.i769.preheader:                            ; preds = %bb.dt
  %i.xo = icmp ugt i64 %i.xm, 2147483647
  br i1 %i.xo, label %.lr.ph1411, label %ma_dr_wav__seek_forward.exit775

.lr.ph1411:                                       ; preds = %.lr.ph.i769.preheader, %.lr.ph.i769
  %.013.i7701410 = phi i64 [ %i.xq, %.lr.ph.i769 ], [ %i.xm, %.lr.ph.i769.preheader ]
  %i.xp = call i32 %i.xh(ptr noundef %i.xn, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i774 = icmp eq i32 %i.xp, 0
end_hunk_1
begin_hunk_2_@ma_engine_node_process_pcm_frames__general:bb.a
  %exitcond.not.i.3 = icmp eq i64 %i.is, %i.fv
  br i1 %exitcond.not.i.3, label %ma_copy_pcm_frames.exit, label %.lr.ph.i164, !llvm.loop !3195

bb.af:                                            ; preds = %ma_engine_node_get_volume.exit
  %i.it = zext i32 %.0134174185201 to i64
  %i.iu = load i32, ptr %i.cg, align 8, !tbaa !3203
  call fastcc void @ma_channel_map_apply_f32(ptr noundef %i.cx, ptr noundef null, i32 noundef %i.i, ptr noundef %i.dt, ptr noundef null, i32 noundef %i.g, i64 noundef %i.it, i32 noundef 1, i32 noundef %i.iu)
  br i1 %.not149, label %bb.ag, label %ma_copy_pcm_frames.exit

bb.ag:                                            ; preds = %bb.af
  %i.iv = mul i32 %.0134174185201, %i.i           ; 3 uses
  %i.iw = zext i32 %i.iv to i64                   ; 3 uses
  %i.ix = icmp eq ptr %i.ct, null
  %i.iy = fcmp oeq float %i.ft, 1.000000e+00
  %or.cond.i165 = or i1 %i.ix, %i.iy
  %.not.i.i166 = icmp eq i32 %i.iv, 0
  %or.cond3.i = or i1 %.not.i.i166, %or.cond.i165
  br i1 %or.cond3.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ag
  %min.iters.check255 = icmp ult i32 %i.iv, 8
  br i1 %min.iters.check255, label %.lr.ph.i.i.preheader277, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec257 = and i64 %i.iw, 4294967288           ; 3 uses
  %broadcast.splatinsert258 = insertelement <4 x float> poison, float %i.ft, i64 0
  %broadcast.splat259 = shufflevector <4 x float> %broadcast.splatinsert258, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph256
  %index261 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body260 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index261 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %wide.load262 = load <4 x float>, ptr %i.iz, align 4, !tbaa !349
  %wide.load263 = load <4 x float>, ptr %i.ja, align 4, !tbaa !349
  %i.jb = fmul <4 x float> %wide.load262, %broadcast.splat259
  %i.jc = fmul <4 x float> %wide.load263, %broadcast.splat259
  store <4 x float> %i.jb, ptr %i.iz, align 4, !tbaa !349
  store <4 x float> %i.jc, ptr %i.ja, align 4, !tbaa !349
  %index.next264 = add nuw i64 %index261, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.jd, label %middle.block265, label %vector.body260, !llvm.loop !3196

middle.block265:                                  ; preds = %vector.body260
  %cmp.n266 = icmp eq i64 %n.vec257, %i.iw
  br i1 %cmp.n266, label %ma_copy_pcm_frames.exit, label %.lr.ph.i.i.preheader277

.lr.ph.i.i.preheader277:                          ; preds = %.lr.ph.i.i.preheader, %middle.block265
  %.125.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec257, %middle.block265 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader277, %.lr.ph.i.i
  %.125.i.i = phi i64 [ %i.jh, %.lr.ph.i.i ], [ %.125.i.i.ph, %.lr.ph.i.i.preheader277 ] ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.125.i.i ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !349
  %i.jg = fmul float %i.jf, %i.ft
  store float %i.jg, ptr %i.je, align 4, !tbaa !349
  %i.jh = add nuw nsw i64 %.125.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jh, %i.iw
  br i1 %exitcond.not.i.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i.i, !llvm.loop !3197

ma_copy_pcm_frames.exit:                          ; preds = %.lr.ph.i.i, %.lr.ph.i, %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %.lr.ph27.i.prol.loopexit, %.lr.ph27.i, %middle.block265, %middle.block251, %middle.block, %bb.af, %bb.ab, %bb.ac, %.preheader23.i, %bb.ae, %bb.ag, %ma_engine_find_closest_listener.exit
  br i1 %i.bt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %ma_copy_pcm_frames.exit
  %i.ji = zext i32 %.0134174185201 to i64
  %i.jj = call i32 @ma_panner_process_pcm_frames(ptr noundef nonnull %i.bo, ptr noundef %i.cx, ptr noundef %i.cx, i64 noundef %i.ji) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %ma_copy_pcm_frames.exit
  %i.jk = add i32 %.0135171187200, %.0128         ; 2 uses
  %i.jl = add i32 %.0134174185201, %.0129         ; 2 uses
  %i.jm = icmp eq i32 %.0134174185201, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br i1 %i.jm, label %bb.aj, label %bb.o

bb.aj:                                            ; preds = %bb.ai, %bb.o
  %.1130 = phi i32 [ %i.jl, %bb.ai ], [ %.0129, %bb.o ]
  %.1 = phi i32 [ %i.jk, %bb.ai ], [ %.0128, %bb.o ]
  store i32 %.1, ptr %2, align 4, !tbaa !118
  store i32 %.1130, ptr %4, align 4, !tbaa !118
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ma_engine_node_process_pcm_frames__group(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.b = load atomic volatile i32, ptr %i.a acquire, align 4 ; 2 uses
  %i.c = bitcast i32 %i.b to float                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !1172 ; 2 uses
  %i.f = fcmp oeq float %i.e, %i.c
  br i1 %i.f, label %bb.b, label %.thread28.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 892 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !1024
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.j = load float, ptr %i.i, align 8, !tbaa !1173 ; 2 uses
  %i.k = fcmp une float %i.h, %i.j
  br i1 %i.k, label %.thread.i, label %ma_engine_node_update_pitch_if_required.exit

.thread28.i:                                      ; preds = %bb.a
  store i32 %i.b, ptr %i.d, align 8, !tbaa !1172
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 892 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !1024 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.o = load float, ptr %i.n, align 8, !tbaa !1173 ; 2 uses
  %i.p = fcmp une float %i.m, %i.o
  br i1 %i.p, label %.thread.i, label %.thread29.i

.thread.i:                                        ; preds = %.thread28.i, %bb.b
  %i.q = phi float [ %i.o, %.thread28.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.l, %.thread28.i ], [ %i.g, %bb.b ]
  %i.s = phi float [ %i.c, %.thread28.i ], [ %i.e, %bb.b ]
  store float %i.q, ptr %i.r, align 4, !tbaa !1024
  br label %.thread29.i

.thread29.i:                                      ; preds = %.thread.i, %.thread28.i
  %i.t = phi float [ %i.s, %.thread.i ], [ %i.c, %.thread28.i ]
  %i.u = phi float [ %i.q, %.thread.i ], [ %i.m, %.thread28.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1023
  %i.x = uitofp i32 %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1022 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %ma_engine_get_sample_rate.exit.i, label %bb.c

bb.c:                                             ; preds = %.thread29.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 776
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1014
  %i.ad = uitofp i32 %i.ac to float
  br label %ma_engine_get_sample_rate.exit.i

ma_engine_get_sample_rate.exit.i:                 ; preds = %bb.c, %.thread29.i
  %.0.i.i = phi float [ %i.ad, %bb.c ], [ 0.000000e+00, %.thread29.i ]
  %i.ae = fdiv float %i.x, %.0.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ag = fmul float %i.t, %i.ae
  %i.ah = fmul float %i.u, %i.ag                  ; 2 uses
  %i.ai = fcmp ugt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.d, label %ma_engine_node_update_pitch_if_required.exit

bb.d:                                             ; preds = %ma_engine_get_sample_rate.exit.i
  %i.aj = fmul float %i.ah, 1.000000e+03
  %i.ak = fptoui float %i.aj to i32               ; 3 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %ma_engine_node_update_pitch_if_required.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !247 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %ma_engine_node_update_pitch_if_required.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !536 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %ma_engine_node_update_pitch_if_required.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !250
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !251
  %i.av = tail call i32 %i.aq(ptr noundef %i.at, ptr noundef %i.au, i32 noundef %i.ak, i32 noundef 1000) #55, !inline_history !104
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %bb.h, label %ma_engine_node_update_pitch_if_required.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.ak, ptr %i.aw, align 8, !tbaa !537
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 1000, ptr %i.ax, align 4, !tbaa !538
  br label %ma_engine_node_update_pitch_if_required.exit

ma_engine_node_update_pitch_if_required.exit:     ; preds = %bb.b, %ma_engine_get_sample_rate.exit.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  tail call fastcc void @ma_engine_node_process_pcm_frames__general(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma_dr_wav__malloc_default(i64 noundef %0, ptr nofree readnone captures(none) %1) #41 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #67
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma_dr_wav__realloc_default(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #42 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -17, 1) i32 @ma_dr_wav__read_chunk_header(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef nonnull %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  switch i32 %2, label %bb.j [
    i32 4, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.c = tail call i64 %0(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 4) #55
  %.not35 = icmp eq i64 %i.c, 4
  br i1 %.not35, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = call i64 %0(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 4) #55
  %.not36 = icmp eq i64 %i.d, 4
  br i1 %.not36, label %5, label %.thread

5:                                                ; preds = %bb.c
  switch i32 %2, label %bb.e [
    i32 4, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %5, %5
  %i.e = load i32, ptr %i.a, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %i.e)
  br label %bb.f

bb.e:                                             ; preds = %5
  %7 = load i32, ptr %i.a, align 4
  br label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c
  %.031.ph = phi i32 [ -10, %bb.c ], [ -17, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %6, %bb.d ], [ %7, %bb.e ]    ; 2 uses
  %i.f = zext i32 %.0.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !1079
  %i.h = and i32 %.0.i, 1
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.h, ptr %i.i, align 8, !tbaa !1080
  %i.j = load i64, ptr %3, align 8, !tbaa !164
  %i.k = add i64 %i.j, 8
  store i64 %i.k, ptr %3, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.l = tail call i64 %0(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 16) #55
  %.not = icmp eq i64 %i.l, 16
  br i1 %.not, label %bb.h, label %.thread40

bb.h:                                             ; preds = %bb.g
  %i.m = call i64 %0(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 8) #55
  %.not34 = icmp eq i64 %i.m, 8
  br i1 %.not34, label %bb.i, label %.thread40

.thread40:                                        ; preds = %bb.g, %bb.h
  %.132.ph = phi i32 [ -10, %bb.h ], [ -17, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.b, align 8              ; 2 uses
  %i.o = add i64 %i.n, -24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !1079
  %i.q = trunc i64 %i.n to i32
  %i.r = and i32 %i.q, 7
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !1080
  %i.t = load i64, ptr %3, align 8, !tbaa !164
  %i.u = add i64 %i.t, 24
  store i64 %i.u, ptr %3, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %.thread40, %.thread, %bb.a
  %.2 = phi i32 [ -10, %bb.a ], [ %.031.ph, %.thread ], [ %.132.ph, %.thread40 ], [ 0, %bb.i ], [ 0, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ma_dr_wav__seek_from_start(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %1, 2147483648
  br i1 %i.a, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %0(ptr noundef %2, i32 noundef 2147483647, i32 noundef 0) #55
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.01423 = add i64 %1, -2147483647               ; 3 uses
  %i.c = icmp ult i64 %.01423, 2147483648
  br i1 %i.c, label %.loopexit.sink.split, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.014 = add i64 %.01424, -2147483647            ; 3 uses
  %i.d = icmp ult i64 %.014, 2147483648
  br i1 %i.d, label %.loopexit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.01424 = phi i64 [ %.014, %.preheader ], [ %.01423, %.preheader.preheader ]
  %i.e = tail call i32 %0(ptr noundef %2, i32 noundef 2147483647, i32 noundef 1) #55
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %.loopexit, label %.preheader

.loopexit.sink.split:                             ; preds = %.preheader, %.preheader.preheader, %bb.a
  %.014.lcssa.sink = phi i64 [ %1, %bb.a ], [ %.01423, %.preheader.preheader ], [ %.014, %.preheader ]
  %.sink21 = phi i32 [ 0, %bb.a ], [ 1, %.preheader.preheader ], [ 1, %.preheader ]
  %i.f = trunc nuw nsw i64 %.014.lcssa.sink to i32
  %i.g = tail call i32 %0(ptr noundef %2, i32 noundef %i.f, i32 noundef %.sink21) #55
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.g, %.loopexit.sink.split ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ma_dr_wav_aiff_extented_to_s64(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !119
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i32, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i32, ptr %i.i, align 1
  %i.k = zext i32 %i.h to i64
  %i.l = zext i32 %i.j to i64
  %i.m = shl nuw i64 %i.l, 32
  %i.n = or disjoint i64 %i.m, %i.k               ; 2 uses
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %i.n)
  %i.o = lshr i32 %i.b, 7                         ; 3 uses
  %.masked = and i32 %i.c, 32512
  %i.p = or disjoint i32 %.masked, %i.f           ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp eq i64 %i.n, 0
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %i.p, 32767
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not31 = icmp eq i32 %i.o, 0
  %i.t = select i1 %.not31, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.u = add nsw i32 %i.p, -16383                 ; 2 uses
  %i.v = icmp ugt i32 %i.u, 63
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not30 = icmp eq i32 %i.o, 0
  %i.w = select i1 %.not30, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = icmp eq i32 %i.u, 0
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = sub nuw nsw i32 16446, %i.p
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %op.rdx, %i.z                  ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  %i.ab = sub nsw i64 0, %i.aa
  %spec.select = select i1 %.not, i64 %i.aa, i64 %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a, %bb.e, %bb.c
  %.0 = phi i64 [ 0, %bb.f ], [ %i.t, %bb.c ], [ %i.w, %bb.e ], [ 0, %bb.a ], [ %spec.select, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ma_dr_wav__metadata_process_chunk(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 11 uses
  %i.b = alloca [7 x i8], align 1                 ; 10 uses
  %i.c = alloca [36 x i8], align 16               ; 12 uses
  %i.d = alloca [24 x i8], align 16               ; 10 uses
  %i.e = alloca [4 x i8], align 4                 ; 7 uses
  %i.f = alloca [257 x i8], align 16              ; 14 uses
  %i.g = alloca [4 x i8], align 1                 ; 10 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = load i8, ptr %1, align 1, !tbaa !119
  switch i8 %i.i, label %ma_dr_wav_fourcc_equal.exit260.thread [
    i8 115, label %bb.b
    i8 105, label %bb.u
    i8 97, label %bb.ad
    i8 99, label %bb.am
    i8 98, label %bb.at
    i8 76, label %bb.be
    i8 108, label %bb.bg
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !119
  %i.l = icmp eq i8 %i.k, 109
  br i1 %i.l, label %bb.c, label %ma_dr_wav_fourcc_equal.exit260.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %i.o = icmp eq i8 %i.n, 112
  br i1 %i.o, label %ma_dr_wav__chunk_matches.exit, label %ma_dr_wav_fourcc_equal.exit260.thread

ma_dr_wav__chunk_matches.exit:                    ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !119
  %.not = icmp eq i8 %i.q, 108
  br i1 %.not, label %bb.d, label %ma_dr_wav_fourcc_equal.exit260.thread

bb.d:                                             ; preds = %ma_dr_wav__chunk_matches.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1079
  %i.t = icmp ugt i64 %i.s, 35
  br i1 %i.t, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1085
  %i.w = icmp eq i32 %i.v, 0
end_hunk_2
