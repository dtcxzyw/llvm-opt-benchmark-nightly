Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 280
begin_hunk_0_@ma_engine_play_sound_ex:bb.a
  %.not84 = icmp eq ptr %i.aw, null
  br i1 %.not84, label %ma_sound_get_engine.exit.i.i, label %.split

.split:                                           ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1032
  store ptr %.1104, ptr %i.az, align 8, !tbaa !2769
  br label %ma_sound_get_engine.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !132 ; 2 uses
  %.not9.i = icmp eq ptr %i.bb, null
  br i1 %.not9.i, label %ma_free.exit.thread, label %ma_free.exit.thread.sink.split

bb.k:                                             ; preds = %ma_sound_init_from_file.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !132 ; 2 uses
  %.not9.i90 = icmp eq ptr %i.bd, null
  br i1 %.not9.i90, label %ma_free.exit.thread, label %ma_free.exit.thread.sink.split

ma_free.exit.thread.sink.split:                   ; preds = %bb.k, %bb.j
  %.sink139 = phi ptr [ %i.bb, %bb.j ], [ %i.bd, %bb.k ]
  %.065.ph.ph = phi i32 [ %i.au, %bb.j ], [ %i.as, %bb.k ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !126
  tail call void %.sink139(ptr noundef nonnull %.1104, ptr noundef %i.bf) #55
  br label %ma_free.exit.thread

ma_free.exit.thread:                              ; preds = %ma_free.exit.thread.sink.split, %ma_malloc.exit, %bb.j, %bb.k, %._crit_edge
  %.065.ph = phi i32 [ -4, %._crit_edge ], [ %i.as, %bb.k ], [ %i.au, %bb.j ], [ -4, %ma_malloc.exit ], [ %.065.ph.ph, %ma_free.exit.thread.sink.split ]
  store atomic volatile i32 0, ptr %i.e release, align 4
  br label %bb.p

ma_sound_get_engine.exit.i.i:                     ; preds = %bb.i, %.split
  store atomic volatile i32 0, ptr %i.e release, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.1104, i64 360
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1051 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %ma_node_get_state.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %ma_sound_get_engine.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 440
  %i.bk = load atomic i64, ptr %i.bj seq_cst, align 8
  br label %ma_node_get_state.exit.i.i.i.i

ma_node_get_state.exit.i.i.i.i:                   ; preds = %bb.l, %ma_sound_get_engine.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.bk, %bb.l ], [ 0, %ma_sound_get_engine.exit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1104, i64 56 ; 2 uses
  %i.bm = load atomic i32, ptr %i.bl seq_cst, align 8
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %ma_sound_is_playing.exit.thread.i, label %ma_node_get_state_time.exit.i.i.i.i

ma_node_get_state_time.exit.i.i.i.i:              ; preds = %ma_node_get_state.exit.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.1104, i64 72
  %i.bp = load atomic i64, ptr %i.bo seq_cst, align 8
  %i.bq = icmp ult i64 %i.bp, %.0.i.i.i.i
  br i1 %i.bq, label %ma_sound_is_playing.exit.thread.i, label %ma_sound_is_playing.exit.i

ma_sound_is_playing.exit.i:                       ; preds = %ma_node_get_state_time.exit.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.1104, i64 64
  %i.bs = load atomic i64, ptr %i.br seq_cst, align 8
  %.not32.i = icmp ugt i64 %i.bs, %.0.i.i.i.i
  br i1 %.not32.i, label %ma_sound_is_playing.exit.thread.i, label %ma_sound_start.exit

ma_sound_is_playing.exit.thread.i:                ; preds = %ma_sound_is_playing.exit.i, %ma_node_get_state_time.exit.i.i.i.i, %ma_node_get_state.exit.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.1104, i64 952 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1055
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %ma_node_set_state.exit.i, label %ma_sound_at_end.exit.i

ma_sound_at_end.exit.i:                           ; preds = %ma_sound_is_playing.exit.thread.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.1104, i64 968 ; 4 uses
  %i.bx = load atomic i32, ptr %i.bw seq_cst, align 8
  %.not13.i = icmp eq i32 %i.bx, 0
  br i1 %.not13.i, label %ma_node_set_state.exit.i, label %bb.m

bb.m:                                             ; preds = %ma_sound_at_end.exit.i
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !1055 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !358
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !589 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %ma_data_source_seek_to_pcm_frame.exit.thread25.thread.i, label %ma_data_source_seek_to_pcm_frame.exit.i

ma_data_source_seek_to_pcm_frame.exit.thread25.thread.i: ; preds = %bb.n
  %i.ce = atomicrmw xchg ptr %i.bw, i32 0 seq_cst, align 8 ; 0 uses
  br label %ma_node_set_state.exit.i

ma_data_source_seek_to_pcm_frame.exit.i:          ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !590
  %i.ch = tail call i32 %i.cc(ptr noundef nonnull %i.by, i64 noundef %i.cg) #55, !inline_history !1061 ; 4 uses
  switch i32 %i.ch, label %bb.o [
    i32 -29, label %ma_data_source_seek_to_pcm_frame.exit.thread25.i
    i32 0, label %ma_data_source_seek_to_pcm_frame.exit.thread25.i
  ]

ma_data_source_seek_to_pcm_frame.exit.thread25.i: ; preds = %ma_data_source_seek_to_pcm_frame.exit.i, %ma_data_source_seek_to_pcm_frame.exit.i
  %i.ci = atomicrmw xchg ptr %i.bw, i32 0 seq_cst, align 8 ; 0 uses
  switch i32 %i.ch, label %bb.o [
    i32 -29, label %ma_node_set_state.exit.i
    i32 0, label %ma_node_set_state.exit.i
  ]

ma_node_set_state.exit.i:                         ; preds = %ma_data_source_seek_to_pcm_frame.exit.thread25.i, %ma_data_source_seek_to_pcm_frame.exit.thread25.i, %ma_data_source_seek_to_pcm_frame.exit.thread25.thread.i, %ma_sound_at_end.exit.i, %ma_sound_is_playing.exit.thread.i
  %i.cj = atomicrmw xchg ptr %i.bl, i32 0 seq_cst, align 8 ; 0 uses
  br label %ma_sound_start.exit

bb.o:                                             ; preds = %ma_data_source_seek_to_pcm_frame.exit.thread25.i, %bb.m, %ma_data_source_seek_to_pcm_frame.exit.i
  %.1.i.ph = phi i32 [ %i.ch, %ma_data_source_seek_to_pcm_frame.exit.thread25.i ], [ %i.ch, %ma_data_source_seek_to_pcm_frame.exit.i ], [ -2, %bb.m ]
  %i.ck = atomicrmw xchg ptr %i.bw, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.p

ma_sound_start.exit:                              ; preds = %ma_node_set_state.exit.i, %ma_sound_is_playing.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.cm = atomicrmw add ptr %i.cl, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %ma_free.exit.thread, %bb.a, %ma_sound_start.exit, %bb.o
  %.0 = phi i32 [ 0, %ma_sound_start.exit ], [ -2, %bb.a ], [ %.1.i.ph, %bb.o ], [ %.065.ph, %ma_free.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i32 @ma_sound_at_end(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1055
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.f = load atomic i32, ptr %i.e seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_from_file(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.ma_sound_config, align 8    ; 18 uses
  %.sroa.9 = alloca [16 x i8], align 4            ; 5 uses
  %.sroa.10 = alloca [20 x i8], align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_sound_init_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1011, !noalias !2773
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.711.112.copyload = load i32, ptr %i.d, align 8, !tbaa !118
  %.sroa.9.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.112..sroa_idx, i64 16, i1 false), !tbaa.struct !1034
  %.sroa.10.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.112..sroa_idx, i64 20, i1 false), !tbaa.struct !1035
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = load <2 x i32>, ptr %.sroa.11.112..sroa_idx, align 8
  br label %ma_sound_config_init_2.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i8 0, i64 20, i1 false), !alias.scope !2773
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !2773
  br label %ma_sound_config_init_2.exit

ma_sound_config_init_2.exit:                      ; preds = %bb.c, %bb.d
  %.sroa.711.0 = phi i32 [ 5, %bb.d ], [ %.sroa.711.112.copyload, %bb.c ]
  %.sink.i = phi i32 [ 0, %bb.d ], [ %i.c, %bb.c ]
  %i.f = phi <2 x i32> [ zeroinitializer, %bb.d ], [ %i.e, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %.sink.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !118
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 -1, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !164
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !164
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 -1, ptr %.sroa.610.0..sroa_idx, align 8, !tbaa !164
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 %.sroa.711.0, ptr %.sroa.711.0..sroa_idx, align 8, !tbaa !118
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i64 16, i1 false), !tbaa.struct !1062
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !1063
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x i32> %i.f, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store ptr %1, ptr %6, align 8, !tbaa !1056
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1057
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.h, align 8, !tbaa !1058
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %4, ptr %i.i, align 8, !tbaa !1059
  %i.j = icmp eq ptr %5, null
  br i1 %i.j, label %ma_sound_init_ex.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_sound_config_init_2.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 960
  store i64 -1, ptr %i.k, align 8, !tbaa !1060
  br i1 %.not.i, label %ma_sound_init_ex.exit, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 976
  store <2 x ptr> splat (ptr null), ptr %i.l, align 8, !tbaa !134
  %i.m = call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull %5)
  br label %ma_sound_init_ex.exit

ma_sound_init_ex.exit:                            ; preds = %bb.e, %ma_zero_memory_default.exit.i.i, %ma_sound_config_init_2.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %ma_sound_config_init_2.exit ], [ -2, %ma_zero_memory_default.exit.i.i ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @ma_sound_start(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %ma_sound_get_engine.exit.i

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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %ma_sound_is_playing.exit.thread, label %ma_node_get_state_time.exit.i.i.i

ma_node_get_state_time.exit.i.i.i:                ; preds = %ma_node_get_state.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %i.l = icmp ult i64 %i.k, %.0.i.i.i
  br i1 %i.l, label %ma_sound_is_playing.exit.thread, label %ma_sound_is_playing.exit

ma_sound_is_playing.exit:                         ; preds = %ma_node_get_state_time.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %.not32 = icmp ugt i64 %i.n, %.0.i.i.i
  br i1 %.not32, label %ma_sound_is_playing.exit.thread, label %.thread

ma_sound_is_playing.exit.thread:                  ; preds = %ma_node_get_state_time.exit.i.i.i, %ma_node_get_state.exit.i.i.i, %ma_sound_is_playing.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1055
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ma_node_set_state.exit, label %ma_sound_at_end.exit

ma_sound_at_end.exit:                             ; preds = %ma_sound_is_playing.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.s = load atomic i32, ptr %i.r seq_cst, align 8
  %.not13 = icmp eq i32 %i.s, 0
  br i1 %.not13, label %ma_node_set_state.exit, label %bb.c

bb.c:                                             ; preds = %ma_sound_at_end.exit
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !1055 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !358
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !589  ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %ma_data_source_seek_to_pcm_frame.exit.thread25.thread, label %ma_data_source_seek_to_pcm_frame.exit

ma_data_source_seek_to_pcm_frame.exit.thread25.thread: ; preds = %bb.d
  %i.z = atomicrmw xchg ptr %i.r, i32 0 seq_cst, align 8 ; 0 uses
  br label %ma_node_set_state.exit

ma_data_source_seek_to_pcm_frame.exit:            ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !590
  %i.ac = tail call i32 %i.x(ptr noundef nonnull %i.t, i64 noundef %i.ab) #55, !inline_history !591 ; 4 uses
  switch i32 %i.ac, label %.thread [
    i32 -29, label %ma_data_source_seek_to_pcm_frame.exit.thread25
    i32 0, label %ma_data_source_seek_to_pcm_frame.exit.thread25
  ]

ma_data_source_seek_to_pcm_frame.exit.thread25:   ; preds = %ma_data_source_seek_to_pcm_frame.exit, %ma_data_source_seek_to_pcm_frame.exit
  %i.ad = atomicrmw xchg ptr %i.r, i32 0 seq_cst, align 8 ; 0 uses
  switch i32 %i.ac, label %.thread [
    i32 -29, label %ma_node_set_state.exit
    i32 0, label %ma_node_set_state.exit
  ]

ma_node_set_state.exit:                           ; preds = %ma_data_source_seek_to_pcm_frame.exit.thread25, %ma_data_source_seek_to_pcm_frame.exit.thread25, %ma_data_source_seek_to_pcm_frame.exit.thread25.thread, %ma_sound_is_playing.exit.thread, %ma_sound_at_end.exit
  %i.ae = atomicrmw xchg ptr %i.g, i32 0 seq_cst, align 8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %ma_data_source_seek_to_pcm_frame.exit, %ma_data_source_seek_to_pcm_frame.exit.thread25, %bb.c, %ma_sound_is_playing.exit, %bb.a, %ma_node_set_state.exit
  %.1 = phi i32 [ %i.ac, %ma_data_source_seek_to_pcm_frame.exit.thread25 ], [ -2, %bb.a ], [ 0, %ma_node_set_state.exit ], [ 0, %ma_sound_is_playing.exit ], [ -2, %bb.c ], [ %i.ac, %ma_data_source_seek_to_pcm_frame.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @ma_engine_play_sound(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @ma_engine_play_sound_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_from_file_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef initializes((1016, 1024)) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_sound_config, align 8    ; 6 uses
  %4 = alloca %struct.ma_resource_manager_pipeline_notifications, align 8 ; 5 uses
  %5 = alloca %struct.ma_resource_manager_data_source_config, align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1057 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1064
  %.not = icmp eq i32 %i.d, 0
  %spec.select.v = select i1 %.not, i32 8, i32 40
  %spec.select = or i32 %spec.select.v, %i.b      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125  ; 2 uses
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %ma_malloc.exit.thread, label %ma_malloc.exit

ma_malloc.exit.thread:                            ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1016
  store ptr null, ptr %i.h, align 8, !tbaa !1054
  br label %ma_fence_release.exit

ma_malloc.exit:                                   ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.j = tail call ptr %i.g(i64 noundef 744, ptr noundef %i.i) #55, !inline_history !127 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1016 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1054
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %ma_fence_release.exit, label %bb.b

bb.b:                                             ; preds = %ma_malloc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !tbaa.struct !136
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1059 ; 3 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null                   ; 2 uses
  %or.cond = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store ptr %i.o, ptr %i.q, align 8, !tbaa !899
  br label %.preheader.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.s, label %ma_fence_acquire.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.thread
  %i.t = phi ptr [ %i.o, %.thread ], [ %i.r, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i
  %i.v = load atomic i32, ptr %i.u seq_cst, align 8 ; 2 uses
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %ma_fence_acquire.exit.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = cmpxchg weak ptr %i.u, i32 %i.v, i32 %i.w seq_cst seq_cst, align 8 ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  %.not.i = icmp eq i32 %i.aa, 2147483647
  %or.cond68 = select i1 %i.z, i1 true, i1 %.not.i
  br i1 %or.cond68, label %ma_fence_acquire.exit.loopexit, label %bb.d

ma_fence_acquire.exit.loopexit:                   ; preds = %bb.d, %bb.e
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !1054
  br label %ma_fence_acquire.exit

ma_fence_acquire.exit:                            ; preds = %ma_fence_acquire.exit.loopexit, %bb.c
  %i.ab = phi ptr [ %.pre, %ma_fence_acquire.exit.loopexit ], [ %i.j, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.af = load <2 x ptr>, ptr %1, align 8, !tbaa !134
  store <2 x ptr> %i.af, ptr %5, align 16, !tbaa !134
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 %spec.select, ptr %i.ag, align 16, !tbaa !898
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.ah, align 16, !tbaa !893
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !164
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !164
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !164
  store <2 x i64> %i.am, ptr %i.ac, align 8, !tbaa !164
end_hunk_0
begin_hunk_1_@ma_sound_init_from_data_source_internal:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 0, ptr %i.cy, align 8, !tbaa !592
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 -1, ptr %i.cz, align 8, !tbaa !360
  %i.da = icmp ult i64 %i.cw, %i.ce
  br i1 %i.da, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !358
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !589 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = call i32 %i.dd(ptr noundef nonnull %i.ch, i64 noundef %i.ce) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.ag:                                            ; preds = %bb.ad
  %i.dg = icmp ugt i64 %i.cw, %i.cg
  br i1 %i.dg, label %bb.ah, label %ma_data_source_set_range_in_pcm_frames.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load ptr, ptr %i.ch, align 8, !tbaa !358
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !589 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = call i32 %i.dj(ptr noundef nonnull %i.ch, i64 noundef %i.cg) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

ma_data_source_set_range_in_pcm_frames.exit:      ; preds = %bb.z, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %ma_sound_get_data_source.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2785 ; 3 uses
  %.not71 = icmp eq i64 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !1033 ; 5 uses
  %.not72 = icmp eq i64 %i.dp, -1
  %or.cond122 = select i1 %.not71, i1 %.not72, i1 false
  br i1 %or.cond122, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %ma_sound_get_data_source.exit81

ma_sound_get_data_source.exit81:                  ; preds = %ma_data_source_set_range_in_pcm_frames.exit
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !1055 ; 5 uses
  %i.dr = icmp eq ptr %i.dq, null
  %i.ds = icmp ult i64 %i.dp, %i.dn
  %or.cond24.i = or i1 %i.dr, %i.ds
  br i1 %or.cond24.i, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.aj

bb.aj:                                            ; preds = %ma_sound_get_data_source.exit81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !359 ; 2 uses
  %i.dv = icmp ugt i64 %i.dp, %i.du
  %i.dw = icmp ne i64 %i.dp, -1                   ; 2 uses
  %or.cond.i82 = and i1 %i.dw, %i.dv
  br i1 %or.cond.i82, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store i64 %i.dn, ptr %i.dx, align 8, !tbaa !592
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !590
  %i.eb = sub i64 %i.du, %i.ea
  %i.ec = call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.eb)
  %spec.store.select.i = select i1 %i.dw, i64 %i.ec, i64 -1
  store i64 %spec.store.select.i, ptr %i.dy, align 8, !tbaa !360
  br label %ma_data_source_set_loop_point_in_pcm_frames.exit

ma_data_source_set_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_set_range_in_pcm_frames.exit, %bb.ak, %bb.aj, %ma_sound_get_data_source.exit81
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !1064
  %.not73 = icmp eq i32 %i.ee, 0
  br i1 %.not73, label %bb.al, label %bb.am

bb.al:                                            ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.ef = load i32, ptr %i.h, align 8, !tbaa !1057
  %i.eg = lshr i32 %i.ef, 5
  %.lobit = and i32 %i.eg, 1
  br label %bb.am

bb.am:                                            ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit, %bb.al
  %i.eh = phi i32 [ 1, %ma_data_source_set_loop_point_in_pcm_frames.exit ], [ %.lobit, %bb.al ] ; 2 uses
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !1055 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %ma_sound_set_looping.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.el = atomicrmw xchg ptr %i.ek, i32 %i.eh seq_cst, align 8 ; 0 uses
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !358
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !597 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %ma_sound_set_looping.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = call i32 %i.eo(ptr noundef nonnull %i.ei, i32 noundef %i.eh) #55, !inline_history !2786 ; 0 uses
  br label %ma_sound_set_looping.exit

ma_sound_set_looping.exit:                        ; preds = %bb.n, %.thread.i, %bb.k, %bb.l, %bb.o, %ma_engine_node_get_heap_size.exit.i, %bb.ao, %bb.an, %bb.am, %ma_data_source_get_data_format.exit.thread, %bb.f, %bb.y, %bb.u
  %.057 = phi i32 [ 0, %bb.ao ], [ -4, %bb.y ], [ %.0.i.ph, %ma_data_source_get_data_format.exit.thread ], [ -3, %bb.f ], [ %.056, %bb.u ], [ 0, %bb.am ], [ 0, %bb.an ], [ %i.ax, %bb.n ], [ %i.ay, %.thread.i ], [ -4, %bb.k ], [ -4, %bb.l ], [ %i.ax, %bb.o ], [ %i.aq, %ma_engine_node_get_heap_size.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_sound_preinit.exit.thread, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 960
  store i64 -1, ptr %i.b, align 8, !tbaa !1060
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %ma_sound_preinit.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !134
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !134
  %i.h = load ptr, ptr %1, align 8, !tbaa !1056
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1071
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %ma_sound_preinit.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %ma_sound_preinit.exit.thread

ma_sound_preinit.exit.thread:                     ; preds = %ma_zero_memory_default.exit.i, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ %i.l, %bb.e ], [ -2, %ma_zero_memory_default.exit.i ], [ %i.k, %bb.d ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_from_file_w(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.ma_sound_config, align 8    ; 18 uses
  %.sroa.9 = alloca [16 x i8], align 4            ; 5 uses
  %.sroa.10 = alloca [20 x i8], align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_sound_init_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1011, !noalias !2789
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.711.112.copyload = load i32, ptr %i.d, align 8, !tbaa !118
  %.sroa.9.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.112..sroa_idx, i64 16, i1 false), !tbaa.struct !1034
  %.sroa.10.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.112..sroa_idx, i64 20, i1 false), !tbaa.struct !1035
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = load <2 x i32>, ptr %.sroa.11.112..sroa_idx, align 8
  br label %ma_sound_config_init_2.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i8 0, i64 20, i1 false), !alias.scope !2789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !2789
  br label %ma_sound_config_init_2.exit

ma_sound_config_init_2.exit:                      ; preds = %bb.c, %bb.d
  %.sroa.711.0 = phi i32 [ 5, %bb.d ], [ %.sroa.711.112.copyload, %bb.c ]
  %.sink.i = phi i32 [ 0, %bb.d ], [ %i.c, %bb.c ]
  %i.f = phi <2 x i32> [ zeroinitializer, %bb.d ], [ %i.e, %bb.c ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %6, i8 0, i64 44, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %.sink.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !118
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 -1, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !164
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !164
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 -1, ptr %.sroa.610.0..sroa_idx, align 8, !tbaa !164
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 %.sroa.711.0, ptr %.sroa.711.0..sroa_idx, align 8, !tbaa !118
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i64 16, i1 false), !tbaa.struct !1062
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !1063
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x i32> %i.f, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !1071
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1057
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.h, align 8, !tbaa !1058
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %4, ptr %i.i, align 8, !tbaa !1059
  %i.j = icmp eq ptr %5, null
  br i1 %i.j, label %ma_sound_init_ex.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_sound_config_init_2.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 960
  store i64 -1, ptr %i.k, align 8, !tbaa !1060
  br i1 %.not.i, label %ma_sound_init_ex.exit, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 976
  store <2 x ptr> splat (ptr null), ptr %i.l, align 8, !tbaa !134
  %i.m = call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull %5)
  br label %ma_sound_init_ex.exit

ma_sound_init_ex.exit:                            ; preds = %bb.e, %ma_zero_memory_default.exit.i.i, %ma_sound_config_init_2.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %ma_sound_config_init_2.exit ], [ -2, %ma_zero_memory_default.exit.i.i ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_copy(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_resource_manager_data_source_config, align 8 ; 9 uses
  %6 = alloca %struct.ma_sound_config, align 8    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %ma_free.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 960
  store i64 -1, ptr %i.b, align 8, !tbaa !1060
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1054
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125  ; 2 uses
  %.not8.i = icmp eq ptr %i.j, null
  br i1 %.not8.i, label %ma_free.exit, label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.l = tail call ptr %i.j(i64 noundef 744, ptr noundef %i.k) #55, !inline_history !127 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1016 ; 5 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1054
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %ma_malloc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1037 ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !1054 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ma_resource_manager_data_source_init_copy.exit.thread, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 728 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !941
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(744) %i.l, i8 0, i64 744, i1 false)
  %i.u = icmp eq ptr %i.p, null
  br i1 %i.u, label %ma_resource_manager_data_source_init_copy.exit.thread, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 728
  store i32 %i.t, ptr %i.v, align 8, !tbaa !941
  %i.w = load i32, ptr %i.s, align 8, !tbaa !941
  %i.x = and i32 %i.w, 1
  %.not12.i = icmp eq i32 %i.x, 0
  br i1 %.not12.i, label %ma_resource_manager_data_source_init_copy.exit, label %ma_resource_manager_data_source_init_copy.exit.thread

ma_resource_manager_data_source_init_copy.exit:   ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !164
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !164
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !164
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 0, ptr %.sroa.86.0..sroa_idx.i.i, align 4, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !907
  store i32 %i.z, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !898
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !906
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !915
  %i.ad = call fastcc i32 @ma_resource_manager_data_buffer_init_ex_internal(ptr noundef nonnull %i.p, ptr noundef nonnull %5, i32 noundef %i.ac, ptr noundef nonnull %i.l) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %ma_sound_config_init_2.exit, label %ma_resource_manager_data_source_init_copy.exit.thread

ma_resource_manager_data_source_init_copy.exit.thread: ; preds = %ma_zero_memory_default.exit.i.i, %bb.e, %bb.d, %ma_resource_manager_data_source_init_copy.exit
  %.0.i3954 = phi i32 [ %i.ad, %ma_resource_manager_data_source_init_copy.exit ], [ -2, %ma_zero_memory_default.exit.i.i ], [ -3, %bb.e ], [ -2, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !1054 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %ma_resource_manager_data_source_init_copy.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !132 ; 2 uses
  %.not9.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !126
  call void %i.ah(ptr noundef nonnull %i.ae, ptr noundef %i.ai) #55, !inline_history !133
  br label %ma_free.exit

ma_sound_config_init_2.exit:                      ; preds = %ma_resource_manager_data_source_init_copy.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %6, i8 0, i64 44, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, i8 0, i64 48, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.748.112.copyload = load i32, ptr %i.ak, align 8, !tbaa !118
  %.sroa.9.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.112..sroa_idx, i64 16, i1 false)
  %.sroa.10.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1332
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.112..sroa_idx, i64 20, i1 false)
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 -1, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !164
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !164
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 -1, ptr %.sroa.647.0..sroa_idx, align 8, !tbaa !164
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 %.sroa.748.112.copyload, ptr %.sroa.748.0..sroa_idx, align 8, !tbaa !118
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.al = load <2 x i32>, ptr %.sroa.11.112..sroa_idx, align 8
  store <2 x i32> %i.al, ptr %.sroa.11.0..sroa_idx, align 8
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !1054
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1066
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1057
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.ao, align 8, !tbaa !1058
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2790
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !1031
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !2791
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 %i.as, ptr %i.at, align 4, !tbaa !1067
  %i.au = call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %4) ; 2 uses
  %.not37 = icmp eq i32 %i.au, 0
  br i1 %.not37, label %bb.n, label %bb.h

bb.h:                                             ; preds = %ma_sound_config_init_2.exit
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !1054 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ma_zero_memory_default.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 728
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !941
  %i.az = and i32 %i.ay, 1
  %.not.i41 = icmp eq i32 %i.az, 0
  br i1 %.not.i41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = call i32 @ma_resource_manager_data_stream_uninit(ptr noundef nonnull %i.av) ; 0 uses
  br label %ma_resource_manager_data_source_uninit.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = call i32 @ma_resource_manager_data_buffer_uninit(ptr noundef nonnull %i.av) ; 0 uses
  br label %ma_resource_manager_data_source_uninit.exit

ma_resource_manager_data_source_uninit.exit:      ; preds = %bb.j, %bb.k
  %.pr = load ptr, ptr %i.m, align 8, !tbaa !1054 ; 2 uses
  %i.bc = icmp eq ptr %.pr, null
  br i1 %i.bc, label %ma_zero_memory_default.exit, label %bb.l

bb.l:                                             ; preds = %ma_resource_manager_data_source_uninit.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !132 ; 2 uses
  %.not9.i44 = icmp eq ptr %i.be, null
  br i1 %.not9.i44, label %ma_zero_memory_default.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !126
  call void %i.be(ptr noundef nonnull %.pr, ptr noundef %i.bf) #55, !inline_history !133
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.h, %ma_resource_manager_data_source_uninit.exit, %bb.l, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  br label %ma_free.exit

bb.n:                                             ; preds = %ma_sound_config_init_2.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 1008
  store i8 1, ptr %i.bg, align 8, !tbaa !1053
end_hunk_1
begin_hunk_2_@ma_sound_get_cursor_in_seconds:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !593  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ma_sound_get_cursor_in_pcm_frames.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 %i.n(ptr noundef nonnull %.pre41, ptr noundef nonnull %i.d) #55, !inline_history !2802 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.i, label %ma_sound_get_cursor_in_pcm_frames.exit

bb.i:                                             ; preds = %bb.h
  %i.q = load i64, ptr %i.d, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %.pre41, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !590
  %storemerge.i.i = call i64 @llvm.usub.sat.i64(i64 %i.q, i64 %i.s)
  %.pre.pre = load ptr, ptr %i.f, align 8, !tbaa !1055
  br label %ma_sound_get_cursor_in_pcm_frames.exit.thread29

ma_sound_get_cursor_in_pcm_frames.exit.thread29:  ; preds = %bb.i, %bb.f
  %.pre = phi ptr [ %.pre.pre, %bb.i ], [ null, %bb.f ]
  %.018.ph = phi i64 [ %storemerge.i.i, %bb.i ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %ma_sound_get_cursor_in_pcm_frames.exit.thread23

ma_sound_get_cursor_in_pcm_frames.exit:           ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ -29, %bb.g ], [ %i.p, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %ma_sound_get_cursor_in_pcm_frames.exit.thread

ma_sound_get_cursor_in_pcm_frames.exit.thread23:  ; preds = %bb.e, %ma_sound_get_cursor_in_pcm_frames.exit.thread29
  %i.t = phi ptr [ %.pre, %ma_sound_get_cursor_in_pcm_frames.exit.thread29 ], [ %.pre41, %bb.e ] ; 3 uses
  %.11927 = phi i64 [ %.018.ph, %ma_sound_get_cursor_in_pcm_frames.exit.thread29 ], [ %i.j, %bb.e ]
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %ma_sound_get_data_format.exit.thread, label %bb.j

ma_sound_get_data_format.exit.thread:             ; preds = %ma_sound_get_cursor_in_pcm_frames.exit.thread23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1074
  br label %bb.l

bb.j:                                             ; preds = %ma_sound_get_cursor_in_pcm_frames.exit.thread23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !358
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !585  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %ma_sound_get_data_format.exit.thread37, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = call i32 %i.z(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !1073 ; 2 uses
  %.not36.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not36.i.i, label %ma_sound_get_data_format.exit, label %ma_sound_get_data_format.exit.thread37

ma_sound_get_data_format.exit.thread37:           ; preds = %bb.k, %bb.j
  %.0.i32.i.ph = phi i32 [ -29, %bb.j ], [ %i.ab, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_sound_get_cursor_in_pcm_frames.exit.thread

ma_sound_get_data_format.exit:                    ; preds = %bb.k
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.l

bb.l:                                             ; preds = %ma_sound_get_data_format.exit, %ma_sound_get_data_format.exit.thread
  %.136 = phi i32 [ %i.w, %ma_sound_get_data_format.exit.thread ], [ %i.ac, %ma_sound_get_data_format.exit ]
  %i.ad = sitofp i64 %.11927 to float
  %i.ae = uitofp i32 %.136 to float
  %i.af = fdiv float %i.ad, %i.ae
  store float %i.af, ptr %1, align 4, !tbaa !349
  br label %ma_sound_get_cursor_in_pcm_frames.exit.thread

ma_sound_get_cursor_in_pcm_frames.exit.thread:    ; preds = %bb.d, %bb.c, %ma_sound_get_data_format.exit.thread37, %ma_sound_get_cursor_in_pcm_frames.exit, %bb.l
  %.0 = phi i32 [ 0, %bb.l ], [ %.0.i.i, %ma_sound_get_cursor_in_pcm_frames.exit ], [ %.0.i32.i.ph, %ma_sound_get_data_format.exit.thread37 ], [ -3, %bb.d ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_get_length_in_seconds(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1055 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %ma_data_source_get_length_in_seconds.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %1, align 4, !tbaa !349
  store i64 0, ptr %i.d, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !359  ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i, label %bb.e, label %ma_data_source_get_length_in_pcm_frames.exit.thread17.i

ma_data_source_get_length_in_pcm_frames.exit.thread17.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !590
  %i.n = sub i64 %i.k, %i.m
  store i64 %i.n, ptr %i.d, align 8, !tbaa !164
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !595  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ma_data_source_get_length_in_seconds.exit, label %ma_data_source_get_length_in_pcm_frames.exit.i

ma_data_source_get_length_in_pcm_frames.exit.i:   ; preds = %bb.e
  %i.s = call i32 %i.q(ptr noundef nonnull %i.g, ptr noundef nonnull %i.d) #55, !inline_history !2803 ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %ma_data_source_get_length_in_seconds.exit

bb.f:                                             ; preds = %ma_data_source_get_length_in_pcm_frames.exit.i, %ma_data_source_get_length_in_pcm_frames.exit.thread17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !585  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %ma_data_source_get_data_format.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call i32 %i.v(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !2804 ; 2 uses
  %.not36.i.i = icmp eq i32 %i.x, 0
  br i1 %.not36.i.i, label %bb.h, label %ma_data_source_get_data_format.exit.thread.i

ma_data_source_get_data_format.exit.thread.i:     ; preds = %bb.g, %bb.f
  %.0.i13.ph.i = phi i32 [ -29, %bb.f ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_data_source_get_length_in_seconds.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.c, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.z = load i64, ptr %i.d, align 8, !tbaa !164
  %i.aa = sitofp i64 %i.z to float
  %i.ab = uitofp i32 %i.y to float
  %i.ac = fdiv float %i.aa, %i.ab
  store float %i.ac, ptr %1, align 4, !tbaa !349
  br label %ma_data_source_get_length_in_seconds.exit

ma_data_source_get_length_in_seconds.exit:        ; preds = %bb.c, %bb.e, %ma_data_source_get_length_in_pcm_frames.exit.i, %ma_data_source_get_data_format.exit.thread.i, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ -2, %bb.c ], [ %i.s, %ma_data_source_get_length_in_pcm_frames.exit.i ], [ %.0.i13.ph.i, %ma_data_source_get_data_format.exit.thread.i ], [ -29, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %ma_data_source_get_length_in_seconds.exit
  %.0 = phi i32 [ %.0.i, %ma_data_source_get_length_in_seconds.exit ], [ -2, %bb.a ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -3, 1) i32 @ma_sound_set_end_callback(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1055
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr %1, ptr %i.e, align 8, !tbaa !1075
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %2, ptr %i.f, align 8, !tbaa !1076
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_group_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ma_sound_config, align 8    ; 14 uses
  %.sroa.9 = alloca [16 x i8], align 4            ; 5 uses
  %.sroa.10 = alloca [20 x i8], align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1011, !noalias !2807
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.75.112.copyload = load i32, ptr %i.c, align 8, !tbaa !118
  %.sroa.9.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.112..sroa_idx, i64 16, i1 false), !tbaa.struct !1034
  %.sroa.10.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.112..sroa_idx, i64 20, i1 false), !tbaa.struct !1035
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.d = load <2 x i32>, ptr %.sroa.11.112..sroa_idx, align 8
  br label %ma_sound_group_config_init_2.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i8 0, i64 20, i1 false), !alias.scope !2807
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !2807
  br label %ma_sound_group_config_init_2.exit

ma_sound_group_config_init_2.exit:                ; preds = %bb.b, %bb.c
  %.sroa.75.0 = phi i32 [ 5, %bb.c ], [ %.sroa.75.112.copyload, %bb.b ]
  %.sink.i = phi i32 [ 0, %bb.c ], [ %i.b, %bb.b ]
  %i.e = phi <2 x i32> [ zeroinitializer, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %ma_sound_group_init_ex.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %ma_sound_group_config_init_2.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !134
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %.sink.i, ptr %.sroa.54.0..sroa_idx, align 4, !tbaa !118
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.7.0..sroa_idx, i8 0, i64 60, i1 false)
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 %.sroa.75.0, ptr %.sroa.75.0..sroa_idx, align 8, !tbaa !118
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i64 16, i1 false), !tbaa.struct !1062
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !1063
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 152
  store <2 x i32> %i.e, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.g = or i32 %1, 16384
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !1057
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 960
  store i64 -1, ptr %i.h, align 8, !tbaa !1060
  br i1 %.not.i, label %ma_sound_group_init_ex.exit, label %bb.d

bb.d:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 976
  store <2 x ptr> splat (ptr null), ptr %i.i, align 8, !tbaa !134
  %i.j = call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull %3)
  br label %ma_sound_group_init_ex.exit

ma_sound_group_init_ex.exit:                      ; preds = %ma_sound_group_config_init_2.exit, %ma_zero_memory_default.exit.i, %bb.d
  %.0.i = phi i32 [ -2, %ma_zero_memory_default.exit.i ], [ -2, %ma_sound_group_config_init_2.exit ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_group_init_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_sound_config, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_sound_init_ex.exit, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ma_sound_init_ex.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_zero_memory_default.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 208, i1 false), !tbaa.struct !1065
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1057
  %i.e = or i32 %i.d, 16384
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1057
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 960
  store i64 -1, ptr %i.f, align 8, !tbaa !1060
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %ma_sound_init_ex.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !134
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !134
  %i.k = call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull %2)
  br label %ma_sound_init_ex.exit

ma_sound_init_ex.exit:                            ; preds = %bb.b, %ma_zero_memory_default.exit.i.i, %ma_zero_memory_default.exit, %bb.a
  %.0 = phi i32 [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.a ], [ %i.k, %bb.b ], [ -2, %ma_zero_memory_default.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @ma_sound_group_uninit(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  tail call void @ma_sound_uninit(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_sound_group_get_engine(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_sound_get_engine.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1051
  br label %ma_sound_get_engine.exit

ma_sound_get_engine.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define noundef i32 @ma_sound_group_start(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_sound_start.exit, label %ma_sound_get_engine.exit.i.i

ma_sound_get_engine.exit.i.i:                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1051 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ma_node_get_state.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %ma_sound_get_engine.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  br label %ma_node_get_state.exit.i.i.i.i

ma_node_get_state.exit.i.i.i.i:                   ; preds = %bb.b, %ma_sound_get_engine.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %ma_sound_get_engine.exit.i.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %ma_sound_is_playing.exit.thread.i, label %ma_node_get_state_time.exit.i.i.i.i

ma_node_get_state_time.exit.i.i.i.i:              ; preds = %ma_node_get_state.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %i.l = icmp ult i64 %i.k, %.0.i.i.i.i
  br i1 %i.l, label %ma_sound_is_playing.exit.thread.i, label %ma_sound_is_playing.exit.i

ma_sound_is_playing.exit.i:                       ; preds = %ma_node_get_state_time.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %.not32.i = icmp ugt i64 %i.n, %.0.i.i.i.i
  br i1 %.not32.i, label %ma_sound_is_playing.exit.thread.i, label %ma_sound_start.exit

ma_sound_is_playing.exit.thread.i:                ; preds = %ma_sound_is_playing.exit.i, %ma_node_get_state_time.exit.i.i.i.i, %ma_node_get_state.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1055
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ma_node_set_state.exit.i, label %ma_sound_at_end.exit.i

ma_sound_at_end.exit.i:                           ; preds = %ma_sound_is_playing.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.s = load atomic i32, ptr %i.r seq_cst, align 8
  %.not13.i = icmp eq i32 %i.s, 0
  br i1 %.not13.i, label %ma_node_set_state.exit.i, label %bb.c

bb.c:                                             ; preds = %ma_sound_at_end.exit.i
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !1055 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %ma_sound_start.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !358
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !589  ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %ma_data_source_seek_to_pcm_frame.exit.thread25.thread.i, label %ma_data_source_seek_to_pcm_frame.exit.i

ma_data_source_seek_to_pcm_frame.exit.thread25.thread.i: ; preds = %bb.d
  %i.z = atomicrmw xchg ptr %i.r, i32 0 seq_cst, align 8 ; 0 uses
  br label %ma_node_set_state.exit.i

ma_data_source_seek_to_pcm_frame.exit.i:          ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !590
  %i.ac = tail call i32 %i.x(ptr noundef nonnull %i.t, i64 noundef %i.ab) #55, !inline_history !1061 ; 4 uses
  switch i32 %i.ac, label %ma_sound_start.exit [
    i32 -29, label %ma_data_source_seek_to_pcm_frame.exit.thread25.i
    i32 0, label %ma_data_source_seek_to_pcm_frame.exit.thread25.i
  ]

ma_data_source_seek_to_pcm_frame.exit.thread25.i: ; preds = %ma_data_source_seek_to_pcm_frame.exit.i, %ma_data_source_seek_to_pcm_frame.exit.i
  %i.ad = atomicrmw xchg ptr %i.r, i32 0 seq_cst, align 8 ; 0 uses
  switch i32 %i.ac, label %ma_sound_start.exit [
    i32 -29, label %ma_node_set_state.exit.i
    i32 0, label %ma_node_set_state.exit.i
  ]

ma_node_set_state.exit.i:                         ; preds = %ma_data_source_seek_to_pcm_frame.exit.thread25.i, %ma_data_source_seek_to_pcm_frame.exit.thread25.i, %ma_data_source_seek_to_pcm_frame.exit.thread25.thread.i, %ma_sound_at_end.exit.i, %ma_sound_is_playing.exit.thread.i
  %i.ae = atomicrmw xchg ptr %i.g, i32 0 seq_cst, align 8 ; 0 uses
  br label %ma_sound_start.exit

ma_sound_start.exit:                              ; preds = %bb.a, %ma_sound_is_playing.exit.i, %bb.c, %ma_data_source_seek_to_pcm_frame.exit.i, %ma_data_source_seek_to_pcm_frame.exit.thread25.i, %ma_node_set_state.exit.i
  %.1.i = phi i32 [ %i.ac, %ma_data_source_seek_to_pcm_frame.exit.thread25.i ], [ -2, %bb.a ], [ 0, %ma_node_set_state.exit.i ], [ 0, %ma_sound_is_playing.exit.i ], [ -2, %bb.c ], [ %i.ac, %ma_data_source_seek_to_pcm_frame.exit.i ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define range(i32 -2, 1) i32 @ma_sound_group_stop(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_sound_stop.exit, label %ma_node_set_state.exit.i

ma_node_set_state.exit.i:                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = atomicrmw xchg ptr %i.b, i32 1 seq_cst, align 8 ; 0 uses
  br label %ma_sound_stop.exit

ma_sound_stop.exit:                               ; preds = %bb.a, %ma_node_set_state.exit.i
  %.0.i = phi i32 [ 0, %ma_node_set_state.exit.i ], [ -2, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: norecurse nounwind uwtable
define void @ma_sound_group_set_volume(ptr nofree noundef captures(address) %0, float noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_sound_set_volume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.c = bitcast float %1 to i32
  store atomic volatile i32 %i.c, ptr %i.b seq_cst, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1028
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 756
  store float %1, ptr %i.g, align 4, !tbaa !457
  br label %ma_sound_set_volume.exit

bb.d:                                             ; preds = %bb.b
end_hunk_2
