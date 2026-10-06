Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_sound_group_is_playing:bb.a
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
end_hunk_0
begin_hunk_1_@ma_dr_wav_init__internal:bb.a
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
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 11
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 15
  %or.cond13 = and i1 %i.gb, %.0410.shrunk854
  %i.hc = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.he = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  %i.hh = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.hi = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.o, i64 11
  %i.hl = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.hm = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.hn = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.o, i64 13
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 14 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  br label %bb.ae

bb.ae:                                            ; preds = %.backedge, %bb.ad
  %i.hz = phi i64 [ %i.fp, %bb.ad ], [ %i.wv, %.backedge ] ; 2 uses
  %i.ia = phi i32 [ %i.fq, %bb.ad ], [ %.pre1479, %.backedge ] ; 2 uses
  %.2413 = phi i64 [ %.1412, %bb.ad ], [ %.6417.jt6, %.backedge ] ; 14 uses
  %.0408 = phi i8 [ 0, %bb.ad ], [ %.1409.jt6, %.backedge ] ; 17 uses
  %.0406 = phi i8 [ 0, %bb.ad ], [ %.1407.jt6, %.backedge ] ; 13 uses
  %.0400 = phi i64 [ 0, %bb.ad ], [ %.2402.jt6, %.backedge ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.ib = load ptr, ptr %0, align 8, !tbaa !673   ; 4 uses
  %i.ic = load ptr, ptr %i.z, align 8, !tbaa !676 ; 4 uses
  switch i32 %i.ia, label %.loopexit1323 [
    i32 4, label %bb.af
    i32 3, label %bb.af
    i32 1, label %bb.af
    i32 0, label %bb.af
    i32 2, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.id = call i64 %i.ib(ptr noundef %i.ic, ptr noundef nonnull %7, i64 noundef 4) #55, !inline_history !2820
  %.not35.i666 = icmp eq i64 %i.id, 4
  br i1 %.not35.i666, label %bb.ag, label %.thread.i667

bb.ag:                                            ; preds = %bb.af
  %i.ie = call i64 %i.ib(ptr noundef %i.ic, ptr noundef nonnull %i.a, i64 noundef 4) #55, !inline_history !2820
  %.not36.i669 = icmp eq i64 %i.ie, 4
  br i1 %.not36.i669, label %bb.ah, label %.thread.i667

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.ia, label %bb.aj [
    i32 4, label %bb.ai
    i32 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.if = load i32, ptr %i.a, align 4
  %i.ig = call i32 @llvm.bswap.i32(i32 %i.if)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ih = load i32, ptr %i.a, align 4
  br label %bb.ak

.thread.i667:                                     ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit1323

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i.i670 = phi i32 [ %i.ig, %bb.ai ], [ %i.ih, %bb.aj ] ; 2 uses
  %i.ii = zext i32 %.0.i.i670 to i64              ; 2 uses
  store i64 %i.ii, ptr %i.fz, align 8, !tbaa !1079
  %i.ij = and i32 %.0.i.i670, 1
  store i32 %i.ij, ptr %i.ga, align 8, !tbaa !1080
  %i.ik = add i64 %i.hz, 8                        ; 2 uses
  store i64 %i.ik, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_dr_wav__read_chunk_header.exit671

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.il = call i64 %i.ib(ptr noundef %i.ic, ptr noundef nonnull %7, i64 noundef 16) #55, !inline_history !2820
  %.not.i661 = icmp eq i64 %i.il, 16
  br i1 %.not.i661, label %bb.am, label %.thread40.i662

bb.am:                                            ; preds = %bb.al
  %i.im = call i64 %i.ib(ptr noundef %i.ic, ptr noundef nonnull %i.b, i64 noundef 8) #55, !inline_history !2820
  %.not34.i665 = icmp eq i64 %i.im, 8
  br i1 %.not34.i665, label %bb.an, label %.thread40.i662

.thread40.i662:                                   ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.loopexit1323

bb.an:                                            ; preds = %bb.am
  %i.in = load i64, ptr %i.b, align 8             ; 2 uses
  %i.io = add i64 %i.in, -24                      ; 2 uses
  store i64 %i.io, ptr %i.fz, align 8, !tbaa !1079
  %i.ip = trunc i64 %i.in to i32
  %i.iq = and i32 %i.ip, 7
  store i32 %i.iq, ptr %i.ga, align 8, !tbaa !1080
  %i.ir = add i64 %i.hz, 24                       ; 2 uses
  store i64 %i.ir, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %ma_dr_wav__read_chunk_header.exit671

ma_dr_wav__read_chunk_header.exit671:             ; preds = %bb.an, %bb.ak
  %i.is = phi i64 [ %i.io, %bb.an ], [ %i.ii, %bb.ak ] ; 9 uses
  %i.it = phi i64 [ %i.ir, %bb.an ], [ %i.ik, %bb.ak ] ; 14 uses
  br i1 %or.cond, label %bb.ao, label %.critedge542

bb.ao:                                            ; preds = %ma_dr_wav__read_chunk_header.exit671
  %i.iu = load ptr, ptr %0, align 8, !tbaa !673
  %i.iv = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.iw = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ix = load i32, ptr %i.dz, align 8, !tbaa !683
  %i.iy = call i64 %1(ptr noundef %2, ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef %i.iw, ptr noundef nonnull %7, i32 noundef %i.ix, ptr noundef nonnull %4) #55
  %.not490 = icmp eq i64 %i.iy, 0
  br i1 %.not490, label %.critedge542, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iz = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 3 uses
  %i.ja = load ptr, ptr %i.z, align 8, !tbaa !676 ; 3 uses
  %i.jb = icmp ult i64 %i.it, 2147483648
  br i1 %i.jb, label %ma_dr_wav__seek_from_start.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jc = call i32 %i.iz(ptr noundef %i.ja, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !2821
  %.not.i672 = icmp eq i32 %i.jc, 0
  br i1 %.not.i672, label %.thread988, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.aq
  %.014.i1817 = add i64 %i.it, -2147483647        ; 3 uses
  %i.jd = icmp ult i64 %.014.i1817, 2147483648
  br i1 %i.jd, label %ma_dr_wav__seek_from_start.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %.014.i = add i64 %.014.i1818, -2147483647      ; 3 uses
  %i.je = icmp ult i64 %.014.i, 2147483648
  br i1 %i.je, label %ma_dr_wav__seek_from_start.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.014.i1818 = phi i64 [ %.014.i, %.preheader.i ], [ %.014.i1817, %.preheader.i.preheader ]
  %i.jf = call i32 %i.iz(ptr noundef %i.ja, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2821
  %.not16.i = icmp eq i32 %i.jf, 0
  br i1 %.not16.i, label %.thread988, label %.preheader.i

ma_dr_wav__seek_from_start.exit:                  ; preds = %.preheader.i, %.preheader.i.preheader, %bb.ap
  %.014.lcssa.sink.i = phi i64 [ %i.it, %bb.ap ], [ %.014.i1817, %.preheader.i.preheader ], [ %.014.i, %.preheader.i ]
  %.sink21.i = phi i32 [ 0, %bb.ap ], [ 1, %.preheader.i.preheader ], [ 1, %.preheader.i ]
  %i.jg = trunc nuw nsw i64 %.014.lcssa.sink.i to i32
  %i.jh = call i32 %i.iz(ptr noundef %i.ja, i32 noundef %i.jg, i32 noundef %.sink21.i) #55, !inline_history !2821
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.thread988, label %.critedge542

.critedge542:                                     ; preds = %bb.ao, %ma_dr_wav__seek_from_start.exit, %ma_dr_wav__read_chunk_header.exit671
  %i.jj = load i32, ptr %i.dz, align 8, !tbaa !683 ; 5 uses
  switch i32 %i.jj, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.ar
    i32 1, label %bb.ar
    i32 3, label %bb.ar
    i32 2, label %.critedge542._crit_edge1484
    i32 4, label %.critedge542._crit_edge
  ]

.critedge542._crit_edge1484:                      ; preds = %.critedge542
  %.pre1485 = load i8, ptr %7, align 8, !tbaa !119
  %.pre1486.pre = load i8, ptr %i.ge, align 1
  %.pre1487.pre = load i8, ptr %i.gf, align 2
  %.pre1488.pre = load i8, ptr %i.gg, align 1
  br label %bb.as

.critedge542._crit_edge:                          ; preds = %.critedge542
  %.pre1480 = load i8, ptr %7, align 8, !tbaa !119 ; 2 uses
  %.pre1481 = load i8, ptr %i.ge, align 1         ; 2 uses
  %.pre1482 = load i8, ptr %i.gf, align 2         ; 2 uses
  %.pre1483 = load i8, ptr %i.gg, align 1         ; 2 uses
  %i.jk = icmp eq i8 %.pre1480, 67
  %i.jl = icmp eq i8 %.pre1481, 79
  %or.cond1146 = select i1 %i.jk, i1 %i.jl, i1 false
  %i.jm = icmp eq i8 %.pre1482, 77
  %or.cond1150 = select i1 %or.cond1146, i1 %i.jm, i1 false
  %.not1221 = icmp eq i8 %.pre1483, 77
  %or.cond1279 = select i1 %or.cond1150, i1 %.not1221, i1 false
  br i1 %or.cond1279, label %bb.cc, label %.thread964

bb.ar:                                            ; preds = %.critedge542, %.critedge542, %.critedge542
  %i.jn = load i8, ptr %7, align 8, !tbaa !119    ; 3 uses
  %i.jo = icmp eq i8 %i.jn, 102                   ; 2 uses
  %i.jp = load i8, ptr %i.ge, align 1             ; 3 uses
  %i.jq = icmp eq i8 %i.jp, 109
  %or.cond1068 = select i1 %i.jo, i1 %i.jq, i1 false
  %i.jr = load i8, ptr %i.gf, align 2             ; 3 uses
  %i.js = icmp eq i8 %i.jr, 116                   ; 2 uses
  %or.cond1072 = select i1 %or.cond1068, i1 %i.js, i1 false
  %i.jt = load i8, ptr %i.gg, align 1             ; 4 uses
  %.not1219 = icmp eq i8 %i.jt, 32
  %or.cond1264 = select i1 %or.cond1072, i1 %.not1219, i1 false
  br i1 %or.cond1264, label %bb.au, label %ma_dr_wav_fourcc_equal.exit674.thread

ma_dr_wav_fourcc_equal.exit674.thread:            ; preds = %bb.ar
  %i.ju = icmp eq i32 %i.jj, 2
  br i1 %i.ju, label %bb.as, label %bb.bp

bb.as:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread, %.critedge542._crit_edge1484
  %.pre1488 = phi i8 [ %.pre1488.pre, %.critedge542._crit_edge1484 ], [ %i.jt, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1487 = phi i8 [ %.pre1487.pre, %.critedge542._crit_edge1484 ], [ %i.jr, %ma_dr_wav_fourcc_equal.exit674.thread ]
  %.pre1486 = phi i8 [ %.pre1486.pre, %.critedge542._crit_edge1484 ], [ %i.jp, %ma_dr_wav_fourcc_equal.exit674.thread ]
  %.pr1009 = phi i8 [ %.pre1485, %.critedge542._crit_edge1484 ], [ %i.jn, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1486.fr = freeze i8 %.pre1486              ; 2 uses
  %.pre1487.fr = freeze i8 %.pre1487              ; 2 uses
  %.not.i675 = icmp eq i8 %.pr1009, 102
  %9 = load <8 x i8>, ptr %i.gz, align 4
  %i.jv = load <4 x i8>, ptr %i.ha, align 1
  %.fr1832 = freeze <4 x i8> %i.jv                ; 2 uses
  %.pre1500 = load i8, ptr %i.hb, align 1         ; 2 uses
  br i1 %.not.i675, label %bb.at, label %ma_dr_wav_guid_equal.exit.thread

bb.at:                                            ; preds = %bb.as
  %10 = load <8 x i8>, ptr %i.gz, align 4
  %.not.1.i = icmp eq i8 %.pre1486.fr, 109
  %.not.2.i = icmp eq i8 %.pre1487.fr, 116
  %11 = insertelement <8 x i8> poison, i8 %.pre1488, i64 0
  %12 = shufflevector <8 x i8> %11, <8 x i8> %10, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %.fr1831 = freeze <8 x i8> %12
  %i.jw = icmp eq <8 x i8> %.fr1831, <i8 32, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.jx = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i.not = icmp eq i8 %.pre1500, -118
  %i.jy = shufflevector <8 x i1> %i.jw, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1822 = and <4 x i1> %i.jy, %i.jx
  %i.jz = shufflevector <4 x i1> %rdx.op1822, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %.fr1948 = freeze <8 x i1> %i.jz
  %i.ka = shufflevector <8 x i1> %.fr1948, <8 x i1> %i.jw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.kb = bitcast <8 x i1> %i.ka to i8
  %i.kc = icmp eq i8 %i.kb, -1
  %op.rdx1823 = and i1 %.not.1.i, %i.kc
  %i.kd = and i1 %op.rdx1823, %.not.2.i
  %op.rdx1825 = select i1 %i.kd, i1 %.not.15.i.not, i1 false
  br i1 %op.rdx1825, label %bb.au, label %ma_dr_wav_guid_equal.exit.thread

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #55
  %i.ke = load ptr, ptr %0, align 8, !tbaa !673
  %i.kf = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.kg = call i64 %i.ke(ptr noundef %i.kf, ptr noundef nonnull %i.o, i64 noundef 16) #55
  %.not519 = icmp eq i64 %i.kg, 16
  br i1 %.not519, label %bb.av, label %ma_dr_wav__seek_forward.exit684.thread.jt1

bb.av:                                            ; preds = %bb.au
  %i.kh = add i64 %i.it, 16                       ; 2 uses
  store i64 %i.kh, ptr %i.d, align 8, !tbaa !164
  %i.ki = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.ki, label %bb.ax [
    i32 4, label %bb.aw
    i32 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.kj = load i8, ptr %i.hc, align 1, !tbaa !119
  %i.kk = zext i8 %i.kj to i16
  %i.kl = load i8, ptr %i.o, align 16, !tbaa !119
  %i.km = zext i8 %i.kl to i16
  %i.kn = shl nuw i16 %i.km, 8
  %i.ko = or disjoint i16 %i.kn, %i.kk
  store i16 %i.ko, ptr %4, align 4, !tbaa !1077
  %i.kp = load i8, ptr %i.he, align 1, !tbaa !119
  %i.kq = zext i8 %i.kp to i16
  %i.kr = load i8, ptr %i.hd, align 2, !tbaa !119
  %i.ks = zext i8 %i.kr to i16
  %i.kt = shl nuw i16 %i.ks, 8
  %i.ku = or disjoint i16 %i.kt, %i.kq
  store i16 %i.ku, ptr %i.gt, align 2, !tbaa !2822
  %i.kv = load i8, ptr %i.hg, align 1, !tbaa !119
  %i.kw = zext i8 %i.kv to i32
  %i.kx = load i8, ptr %i.hh, align 2, !tbaa !119
  %i.ky = zext i8 %i.kx to i32
  %i.kz = shl nuw nsw i32 %i.ky, 8
  %i.la = or disjoint i32 %i.kz, %i.kw
  %i.lb = load i8, ptr %i.hi, align 1, !tbaa !119
  %i.lc = zext i8 %i.lb to i32
  %i.ld = shl nuw nsw i32 %i.lc, 16
  %i.le = or disjoint i32 %i.la, %i.ld
  %i.lf = load i8, ptr %i.hf, align 4, !tbaa !119
  %i.lg = zext i8 %i.lf to i32
  %i.lh = shl nuw i32 %i.lg, 24
  %i.li = or disjoint i32 %i.le, %i.lh
  store i32 %i.li, ptr %i.gu, align 4, !tbaa !2823
  %i.lj = load i8, ptr %i.hk, align 1, !tbaa !119
  %i.lk = zext i8 %i.lj to i32
  %i.ll = load i8, ptr %i.hl, align 2, !tbaa !119
  %i.lm = zext i8 %i.ll to i32
  %i.ln = shl nuw nsw i32 %i.lm, 8
  %i.lo = or disjoint i32 %i.ln, %i.lk
  %i.lp = load i8, ptr %i.hm, align 1, !tbaa !119
  %i.lq = zext i8 %i.lp to i32
  %i.lr = shl nuw nsw i32 %i.lq, 16
  %i.ls = or disjoint i32 %i.lo, %i.lr
  %i.lt = load i8, ptr %i.hj, align 8, !tbaa !119
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw i32 %i.lu, 24
  %i.lw = or disjoint i32 %i.ls, %i.lv
  store i32 %i.lw, ptr %i.gx, align 4, !tbaa !2824
  %i.lx = load i8, ptr %i.ho, align 1, !tbaa !119
  %i.ly = zext i8 %i.lx to i16
  %i.lz = load i8, ptr %i.hn, align 4, !tbaa !119
  %i.ma = zext i8 %i.lz to i16
  %i.mb = shl nuw i16 %i.ma, 8
  %i.mc = or disjoint i16 %i.mb, %i.ly
  store i16 %i.mc, ptr %i.gw, align 4, !tbaa !2825
  %i.md = load i8, ptr %i.hq, align 1, !tbaa !119
  %i.me = zext i8 %i.md to i16
  %i.mf = load i8, ptr %i.hp, align 2, !tbaa !119
  %i.mg = zext i8 %i.mf to i16
  %i.mh = shl nuw i16 %i.mg, 8
  %i.mi = or disjoint i16 %i.mh, %i.me
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

bb.ax:                                            ; preds = %bb.av
  %i.mj = load <2 x i16>, ptr %i.o, align 16
  store <2 x i16> %i.mj, ptr %4, align 4, !tbaa !122
  %i.mk = load <2 x i32>, ptr %i.hf, align 4
  store <2 x i32> %i.mk, ptr %i.gu, align 4, !tbaa !118
  %i.ml = load i16, ptr %i.hn, align 4
  store i16 %i.ml, ptr %i.gw, align 4, !tbaa !2825
  %i.mm = load i16, ptr %i.hp, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

ma_dr_wav_bytes_to_u16_ex.exit625:                ; preds = %bb.aw, %bb.ax
  %.0.i624 = phi i16 [ %i.mi, %bb.aw ], [ %i.mm, %bb.ax ]
  store i16 %.0.i624, ptr %i.gv, align 2, !tbaa !2826
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hr, i8 0, i64 24, i1 false)
  %i.mn = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.mo = icmp ugt i64 %i.mn, 16
  br i1 %i.mo, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #55
  %i.mp = load ptr, ptr %0, align 8, !tbaa !673
  %i.mq = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.mr = call i64 %i.mp(ptr noundef %i.mq, ptr noundef nonnull %i.p, i64 noundef 2) #55
  %.not520 = icmp eq i64 %i.mr, 2
  br i1 %.not520, label %bb.az, label %.critedge546

bb.az:                                            ; preds = %bb.ay
  %i.ms = add i64 %i.it, 18                       ; 2 uses
  %i.mt = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.mt, label %bb.bb [
    i32 4, label %bb.ba
    i32 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.mu = load i8, ptr %i.hv, align 1, !tbaa !119
  %i.mv = zext i8 %i.mu to i16
  %i.mw = load i8, ptr %i.p, align 2, !tbaa !119
  %i.mx = zext i8 %i.mw to i16
  %i.my = shl nuw i16 %i.mx, 8
  %i.mz = or disjoint i16 %i.my, %i.mv
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

bb.bb:                                            ; preds = %bb.az
  %i.na = load i16, ptr %i.p, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

ma_dr_wav_bytes_to_u16_ex.exit619:                ; preds = %bb.ba, %bb.bb
  %.0.i618 = phi i16 [ %i.mz, %bb.ba ], [ %i.na, %bb.bb ] ; 5 uses
  store i16 %.0.i618, ptr %i.hr, align 4, !tbaa !2827
  %i.nb = zext i16 %.0.i618 to i32
  %.not521 = icmp eq i16 %.0.i618, 0
  br i1 %.not521, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.nc = load i16, ptr %4, align 4, !tbaa !1077
  %i.nd = icmp eq i16 %i.nc, -2                   ; 2 uses
  %i.ne = icmp ne i16 %.0.i618, 22
  %or.cond53 = and i1 %i.ne, %i.nd
  br i1 %or.cond53, label %.critedge546, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.nd, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #55
  %i.nf = load ptr, ptr %0, align 8, !tbaa !673
  %i.ng = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.nh = zext i16 %.0.i618 to i64
  %i.ni = call i64 %i.nf(ptr noundef %i.ng, ptr noundef nonnull %i.q, i64 noundef %i.nh) #55
  %i.nj = load i16, ptr %i.hr, align 4, !tbaa !2827
  %i.nk = zext i16 %i.nj to i64                   ; 2 uses
  %.not522 = icmp eq i64 %i.ni, %i.nk
  br i1 %.not522, label %bb.bf, label %.critedge544

bb.bf:                                            ; preds = %bb.be
  %i.nl = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.nl, label %bb.bh [
    i32 4, label %bb.bg
    i32 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.nm = load i8, ptr %i.hw, align 1, !tbaa !119
  %i.nn = zext i8 %i.nm to i16
  %i.no = load i8, ptr %i.q, align 16, !tbaa !119
  %i.np = zext i8 %i.no to i16
  %i.nq = shl nuw i16 %i.np, 8
  %i.nr = or disjoint i16 %i.nq, %i.nn
  store i16 %i.nr, ptr %i.hs, align 2, !tbaa !2828
  %i.ns = load i32, ptr %i.hx, align 2
  %i.nt = call i32 @llvm.bswap.i32(i32 %i.ns)
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

bb.bh:                                            ; preds = %bb.bf
  %i.nu = load i16, ptr %i.q, align 16
  store i16 %i.nu, ptr %i.hs, align 2, !tbaa !2828
  %i.nv = load i32, ptr %i.hx, align 2
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

ma_dr_wav_bytes_to_u32_ex.exit572:                ; preds = %bb.bg, %bb.bh
  %.0.i571 = phi i32 [ %i.nt, %bb.bg ], [ %i.nv, %bb.bh ]
  store i32 %.0.i571, ptr %i.ht, align 4, !tbaa !2829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hu, ptr noundef nonnull align 2 dereferenceable(16) %i.hy, i64 16, i1 false), !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.nw = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.nx = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ny = call i32 %i.nw(ptr noundef %i.nx, i32 noundef %i.nb, i32 noundef 1) #55
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %.critedge546, label %._crit_edge1501

._crit_edge1501:                                  ; preds = %bb.bi
  %.pre1502 = load i16, ptr %i.hr, align 4, !tbaa !2827
  %.pre1507 = zext i16 %.pre1502 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge1501, %ma_dr_wav_bytes_to_u32_ex.exit572
  %.pre-phi = phi i64 [ %.pre1507, %._crit_edge1501 ], [ %i.nk, %ma_dr_wav_bytes_to_u32_ex.exit572 ] ; 2 uses
  %i.oa = add i64 %i.ms, %.pre-phi
  %i.ob = add nuw nsw i64 %.pre-phi, 18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.oc = phi i64 [ %i.oa, %bb.bj ], [ %i.ms, %ma_dr_wav_bytes_to_u16_ex.exit619 ]
  %.0393 = phi i64 [ %i.ob, %bb.bj ], [ 18, %ma_dr_wav_bytes_to_u16_ex.exit619 ] ; 2 uses
  %i.od = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.oe = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.of = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.og = sub i64 %i.of, %.0393
  %i.oh = trunc i64 %i.og to i32
  %i.oi = call i32 %i.od(ptr noundef %i.oe, i32 noundef %i.oh, i32 noundef 1) #55
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %.critedge546, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ok = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.ol = sub i64 %i.ok, %.0393
  %i.om = add i64 %i.ol, %i.oc                    ; 2 uses
  store i64 %i.om, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %bb.bm

.critedge544:                                     ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %.critedge546

bb.bm:                                            ; preds = %bb.bl, %ma_dr_wav_bytes_to_u16_ex.exit625
  %i.on = phi i64 [ %i.om, %bb.bl ], [ %i.kh, %ma_dr_wav_bytes_to_u16_ex.exit625 ] ; 2 uses
  %i.oo = load i32, ptr %i.ga, align 8, !tbaa !1080 ; 4 uses
  %.not523 = icmp eq i32 %i.oo, 0
  br i1 %.not523, label %ma_dr_wav__seek_forward.exit684.thread.jt6, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.op = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.oq = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %i.or = icmp slt i32 %i.oo, 0
  br i1 %i.or, label %.lr.ph1405.preheader, label %ma_dr_wav__seek_forward.exit684

.lr.ph1405.preheader:                             ; preds = %bb.bn
  %i.os = zext i32 %i.oo to i64
  br label %.lr.ph1405

.lr.ph1405:                                       ; preds = %.lr.ph1405.preheader, %.lr.ph.i678
  %.013.i6791404 = phi i64 [ %i.ou, %.lr.ph.i678 ], [ %i.os, %.lr.ph1405.preheader ]
  %i.ot = call i32 %i.op(ptr noundef %i.oq, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i683 = icmp eq i32 %i.ot, 0
  br i1 %.not11.i683, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %.lr.ph.i678

.lr.ph.i678:                                      ; preds = %.lr.ph1405
  %i.ou = add i64 %.013.i6791404, -2147483647     ; 3 uses
  %i.ov = icmp ugt i64 %i.ou, 2147483647
  br i1 %i.ov, label %.lr.ph1405, label %ma_dr_wav__seek_forward.exit684.loopexit

ma_dr_wav__seek_forward.exit684.loopexit:         ; preds = %.lr.ph.i678
  %i.ow = trunc nuw nsw i64 %i.ou to i32
  br label %ma_dr_wav__seek_forward.exit684

ma_dr_wav__seek_forward.exit684:                  ; preds = %ma_dr_wav__seek_forward.exit684.loopexit, %bb.bn
  %.013.i679.lcssa = phi i32 [ %i.oo, %bb.bn ], [ %i.ow, %ma_dr_wav__seek_forward.exit684.loopexit ]
  %i.ox = call i32 %i.op(ptr noundef %i.oq, i32 noundef %.013.i679.lcssa, i32 noundef 1) #55, !inline_history !2819
  %.not10.i680.not = icmp eq i32 %i.ox, 0
  br i1 %.not10.i680.not, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %bb.bo

bb.bo:                                            ; preds = %ma_dr_wav__seek_forward.exit684
  %i.oy = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.oz = zext i32 %i.oy to i64
  %i.pa = add i64 %i.on, %i.oz                    ; 2 uses
  store i64 %i.pa, ptr %i.d, align 8, !tbaa !164
  br label %ma_dr_wav__seek_forward.exit684.thread.jt6

.critedge546:                                     ; preds = %bb.bk, %bb.bc, %bb.bi, %bb.ay, %.critedge544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %ma_dr_wav__seek_forward.exit684.thread.jt1

ma_dr_wav__seek_forward.exit684.thread.jt6:       ; preds = %bb.bm, %bb.bo
  %i.pb = phi i64 [ %i.pa, %bb.bo ], [ %i.on, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.backedge

ma_dr_wav__seek_forward.exit684.thread.jt5:       ; preds = %ma_dr_wav__seek_forward.exit684, %.lr.ph1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.loopexit1323

ma_dr_wav__seek_forward.exit684.thread.jt1:       ; preds = %bb.au, %.critedge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %bb.dj

bb.bp:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread
  %i.pc = icmp eq i8 %i.jn, 100
  %i.pd = icmp eq i8 %i.jp, 97                    ; 2 uses
  %or.cond1102 = select i1 %i.pc, i1 %i.pd, i1 false
  %or.cond1106 = select i1 %or.cond1102, i1 %i.js, i1 false
  %.not1220 = icmp eq i8 %i.jt, 97
  %or.cond1270 = select i1 %or.cond1106, i1 %.not1220, i1 false
  br i1 %or.cond1270, label %bb.bq, label %ma_dr_wav_fourcc_equal.exit685.thread

ma_dr_wav_guid_equal.exit.thread:                 ; preds = %bb.at, %bb.as
  %.not.i686 = icmp eq i8 %.pr1009, 100
  %.not.1.i688 = icmp eq i8 %.pre1486.fr, 97
  %.not.2.i689 = icmp eq i8 %.pre1487.fr, 116
  %13 = insertelement <8 x i8> poison, i8 %.pre1488, i64 0
  %14 = shufflevector <8 x i8> %13, <8 x i8> %9, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %.fr1833 = freeze <8 x i8> %14
  %i.pe = icmp eq <8 x i8> %.fr1833, <i8 97, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.pf = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i702.not = icmp eq i8 %.pre1500, -118
  %i.pg = shufflevector <8 x i1> %i.pe, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.pg, %i.pf
  %i.ph = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pi = shufflevector <8 x i1> %i.ph, <8 x i1> %i.pe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.pj = bitcast <8 x i1> %i.pi to i8
  %i.pk = icmp eq i8 %i.pj, -1
  %op.rdx = select i1 %.not.i686, i1 %i.pk, i1 false
  %op.rdx1819 = and i1 %.not.1.i688, %.not.2.i689
  %i.pl = freeze i1 %op.rdx
  %op.rdx1820 = and i1 %i.pl, %op.rdx1819
  %op.rdx1821 = select i1 %op.rdx1820, i1 %.not.15.i702.not, i1 false
  br i1 %op.rdx1821, label %bb.bq, label %ma_dr_wav_guid_equal.exit704.thread

bb.bq:                                            ; preds = %ma_dr_wav_guid_equal.exit.thread, %bb.bp
  store i64 %i.it, ptr %i.gh, align 8, !tbaa !688
  %.not518 = icmp eq i32 %i.jj, 3
  %spec.select = select i1 %.not518, i64 %.2413, i64 %i.is ; 4 uses
  br i1 %or.cond13, label %bb.br, label %.loopexit1323

bb.br:                                            ; preds = %bb.bq
  %i.pm = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.pn = zext i32 %i.pm to i64
  %i.po = add i64 %i.is, %i.pn                    ; 5 uses
  %i.pp = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.pq = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i705 = icmp eq i64 %i.po, 0
  br i1 %.not12.i705, label %ma_dr_wav__seek_forward.exit712.thread876, label %.lr.ph.i706.preheader

.lr.ph.i706.preheader:                            ; preds = %bb.br
  %i.pr = icmp ugt i64 %i.po, 2147483647
  br i1 %i.pr, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

.lr.ph1401:                                       ; preds = %.lr.ph.i706.preheader, %.lr.ph.i706
  %.013.i7071400 = phi i64 [ %i.pt, %.lr.ph.i706 ], [ %i.po, %.lr.ph.i706.preheader ]
  %i.ps = call i32 %i.pp(ptr noundef %i.pq, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i711 = icmp eq i32 %i.ps, 0
  br i1 %.not11.i711, label %.loopexit1323, label %.lr.ph.i706

.lr.ph.i706:                                      ; preds = %.lr.ph1401
  %i.pt = add i64 %.013.i7071400, -2147483647     ; 3 uses
  %i.pu = icmp ugt i64 %i.pt, 2147483647
  br i1 %i.pu, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

ma_dr_wav__seek_forward.exit712:                  ; preds = %.lr.ph.i706, %.lr.ph.i706.preheader
  %.013.i707.lcssa = phi i64 [ %i.po, %.lr.ph.i706.preheader ], [ %i.pt, %.lr.ph.i706 ]
  %i.pv = trunc nuw nsw i64 %.013.i707.lcssa to i32
  %i.pw = call i32 %i.pp(ptr noundef %i.pq, i32 noundef %i.pv, i32 noundef 1) #55, !inline_history !2819
  %.not10.i708.not = icmp eq i32 %i.pw, 0
  br i1 %.not10.i708.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit712.thread876

ma_dr_wav__seek_forward.exit712.thread876:        ; preds = %bb.br, %ma_dr_wav__seek_forward.exit712
  %i.px = add i64 %i.po, %i.it                    ; 2 uses
  store i64 %i.px, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

ma_dr_wav_fourcc_equal.exit685.thread:            ; preds = %bb.bp
  switch i32 %i.jj, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bs
    i32 3, label %bb.bs
  ]

bb.bs:                                            ; preds = %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread
  %or.cond1138 = select i1 %i.jo, i1 %i.pd, i1 false
  %i.py = icmp eq i8 %i.jr, 99
  %or.cond1142 = select i1 %or.cond1138, i1 %i.py, i1 false
  %.not1234 = icmp eq i8 %i.jt, 116
  %or.cond1276 = select i1 %or.cond1142, i1 %.not1234, i1 false
  br i1 %or.cond1276, label %bb.bt, label %ma_dr_wav_fourcc_equal.exit713.thread

ma_dr_wav_guid_equal.exit704.thread:              ; preds = %ma_dr_wav_guid_equal.exit.thread
  %i.pz = call i32 @ma_dr_wav_guid_equal(ptr noundef nonnull %7, ptr noundef nonnull @ma_dr_wavGUID_W64_FACT)
  %.not496 = icmp eq i32 %i.pz, 0
  br i1 %.not496, label %ma_dr_wav_fourcc_equal.exit713.thread, label %.thread883

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.jj, label %bb.cb [
    i32 0, label %bb.bu
    i32 1, label %bb.bu
    i32 2, label %.thread883
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #55
  %i.qa = load ptr, ptr %0, align 8, !tbaa !673
  %i.qb = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.qc = call i64 %i.qa(ptr noundef %i.qb, ptr noundef nonnull %i.r, i64 noundef 4) #55, !inline_history !2818 ; 2 uses
  %i.qd = add i64 %i.it, %i.qc                    ; 2 uses
  store i64 %i.qd, ptr %i.d, align 8, !tbaa !164
  %.not517 = icmp eq i64 %i.qc, 4
  br i1 %.not517, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.qe = add i64 %i.is, -4
  %i.qf = load i16, ptr %i.gy, align 4, !tbaa !693
  %i.qg = icmp eq i16 %i.qf, 2
  br i1 %i.qg, label %bb.bw, label %.thread884

bb.bw:                                            ; preds = %bb.bv
  %i.qh = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.qh, label %bb.by [
    i32 4, label %bb.bx
    i32 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  %i.qi = load i32, ptr %i.r, align 4
  %i.qj = call i32 @llvm.bswap.i32(i32 %i.qi)
  br label %.thread884

bb.by:                                            ; preds = %bb.bw
  %i.qk = load i32, ptr %i.r, align 4
  br label %.thread884

.thread884:                                       ; preds = %bb.by, %bb.bx, %bb.bv
  %storemerge.shrunk = phi i32 [ 0, %bb.bv ], [ %i.qj, %bb.bx ], [ %i.qk, %bb.by ]
  %storemerge = zext i32 %storemerge.shrunk to i64
  store i64 %storemerge, ptr %i.f, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %.thread988

.thread883:                                       ; preds = %ma_dr_wav_guid_equal.exit704.thread, %bb.bt
  %i.ql = load ptr, ptr %0, align 8, !tbaa !673
  %i.qm = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.qn = call i64 %i.ql(ptr noundef %i.qm, ptr noundef nonnull %i.f, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %i.qo = add i64 %i.it, %i.qn                    ; 2 uses
  store i64 %i.qo, ptr %i.d, align 8, !tbaa !164
  %.not516 = icmp eq i64 %i.qn, 8
  br i1 %.not516, label %bb.ca, label %.thread988

bb.ca:                                            ; preds = %.thread883
  %i.qp = add i64 %i.is, -8
  br label %bb.cb

bb.cb:                                            ; preds = %.thread884, %bb.bt, %bb.ca
  %i.qq = phi i64 [ %i.qd, %.thread884 ], [ %i.qo, %bb.ca ], [ %i.it, %bb.bt ]
  %.1395 = phi i64 [ %i.qe, %.thread884 ], [ %i.qp, %bb.ca ], [ %i.is, %bb.bt ]
  %i.qr = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.qs = zext i32 %i.qr to i64
  %i.qt = add i64 %.1395, %i.qs                   ; 5 uses
  %i.qu = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.qv = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i714 = icmp eq i64 %i.qt, 0
  br i1 %.not12.i714, label %ma_dr_wav__seek_forward.exit721.thread887, label %.lr.ph.i715.preheader

.lr.ph.i715.preheader:                            ; preds = %bb.cb
  %i.qw = icmp ugt i64 %i.qt, 2147483647
  br i1 %i.qw, label %.lr.ph1398, label %ma_dr_wav__seek_forward.exit721

.lr.ph1398:                                       ; preds = %.lr.ph.i715.preheader, %.lr.ph.i715
  %.013.i7161397 = phi i64 [ %i.qy, %.lr.ph.i715 ], [ %i.qt, %.lr.ph.i715.preheader ]
  %i.qx = call i32 %i.qu(ptr noundef %i.qv, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i720 = icmp eq i32 %i.qx, 0
  br i1 %.not11.i720, label %.loopexit1323, label %.lr.ph.i715

.lr.ph.i715:                                      ; preds = %.lr.ph1398
  %i.qy = add i64 %.013.i7161397, -2147483647     ; 3 uses
  %i.qz = icmp ugt i64 %i.qy, 2147483647
  br i1 %i.qz, label %.lr.ph1398, label %ma_dr_wav__seek_forward.exit721

ma_dr_wav__seek_forward.exit721:                  ; preds = %.lr.ph.i715, %.lr.ph.i715.preheader
  %.013.i716.lcssa = phi i64 [ %i.qt, %.lr.ph.i715.preheader ], [ %i.qy, %.lr.ph.i715 ]
  %i.ra = trunc nuw nsw i64 %.013.i716.lcssa to i32
  %i.rb = call i32 %i.qu(ptr noundef %i.qv, i32 noundef %i.ra, i32 noundef 1) #55, !inline_history !2819
  %.not10.i717.not = icmp eq i32 %i.rb, 0
  br i1 %.not10.i717.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit721.thread887

ma_dr_wav__seek_forward.exit721.thread887:        ; preds = %bb.cb, %ma_dr_wav__seek_forward.exit721
  %i.rc = add i64 %i.qq, %i.qt                    ; 2 uses
  store i64 %i.rc, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

bb.cc:                                            ; preds = %.critedge542._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #55
  %i.rd = load i64, ptr %i.fz, align 8, !tbaa !1079 ; 2 uses
  br i1 %.2405, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.re = icmp ult i64 %i.rd, 24
  br i1 %i.re, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1, label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %.not502 = icmp eq i64 %i.rd, 18
  br i1 %.not502, label %bb.cf, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0392 = phi i64 [ 24, %bb.cd ], [ 18, %bb.ce ] ; 3 uses
  %i.rf = load ptr, ptr %0, align 8, !tbaa !673
  %i.rg = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.rh = call i64 %i.rf(ptr noundef %i.rg, ptr noundef nonnull %i.s, i64 noundef range(i64 0, -602) %.0392) #55, !inline_history !2818 ; 2 uses
  %i.ri = add i64 %i.it, %i.rh                    ; 3 uses
  store i64 %i.ri, ptr %i.d, align 8, !tbaa !164
  %.not503 = icmp eq i64 %i.rh, %.0392
end_hunk_1
