Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 280
begin_hunk_0_@ma_duplex_rb_init:bb.a
  %i.ad = add i32 %i.ab, -2147483617
  %i.ae = icmp ult i32 %i.ad, -2147483616
  br i1 %i.ae, label %ma_calculate_frame_count_after_resampling.exit.thread, label %ma_zero_memory_default.exit42.i

ma_zero_memory_default.exit42.i:                  ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.ag = icmp eq ptr %5, null
  br i1 %i.ag, label %ma_allocation_callbacks_init_copy.exit.i.thread, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit42.i
  %i.ah = load ptr, ptr %5, align 8, !tbaa !126
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !132
  %i.al = icmp eq ptr %i.ak, null                 ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.al, label %bb.g, label %.thread22.i.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !125
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.h, label %ma_calculate_frame_count_after_resampling.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !135
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %ma_allocation_callbacks_init_copy.exit.i.thread, label %ma_calculate_frame_count_after_resampling.exit.thread

bb.i:                                             ; preds = %bb.e
  br i1 %i.al, label %ma_calculate_frame_count_after_resampling.exit.thread, label %.thread22.i.i

.thread22.i.i:                                    ; preds = %bb.i, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.j, label %ma_allocation_callbacks_init_copy.exit.i

bb.j:                                             ; preds = %.thread22.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !135
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %ma_calculate_frame_count_after_resampling.exit.thread, label %ma_allocation_callbacks_init_copy.exit.i

ma_allocation_callbacks_init_copy.exit.i.thread:  ; preds = %bb.h, %ma_zero_memory_default.exit42.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !134
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store i32 %i.ab, ptr %i.ay, align 8, !tbaa !352
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 84
  store i32 1, ptr %i.az, align 4, !tbaa !353
  %i.ba = add nuw nsw i32 %i.ab, 31
  %i.bb = and i32 %i.ba, 2147483616               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !354
  br label %bb.k

ma_allocation_callbacks_init_copy.exit.i:         ; preds = %.thread22.i.i, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !136
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 112
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store i32 %i.ab, ptr %i.bd, align 8, !tbaa !352
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 84
  store i32 1, ptr %i.be, align 4, !tbaa !353
  %i.bf = add nuw nsw i32 %i.ab, 31
  %i.bg = and i32 %i.bf, 2147483616               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !354
  %.not8.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not8.i.i.i, label %ma_aligned_malloc.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %ma_allocation_callbacks_init_copy.exit.i.thread, %ma_allocation_callbacks_init_copy.exit.i
  %.in = phi i32 [ %i.bb, %ma_allocation_callbacks_init_copy.exit.i.thread ], [ %i.bg, %ma_allocation_callbacks_init_copy.exit.i ]
  %i.bi = phi ptr [ %i.ay, %ma_allocation_callbacks_init_copy.exit.i.thread ], [ %i.bd, %ma_allocation_callbacks_init_copy.exit.i ]
  %i.bj = phi ptr [ @ma__malloc_default, %ma_allocation_callbacks_init_copy.exit.i.thread ], [ %.pre, %ma_allocation_callbacks_init_copy.exit.i ]
  %i.bk = zext nneg i32 %.in to i64               ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 39
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !126
  %i.bn = tail call ptr %i.bj(i64 noundef %i.bl, ptr noundef %i.bm) #55, !inline_history !1300 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %ma_aligned_malloc.exit.thread.i, label %ma_aligned_malloc.exit.i

ma_aligned_malloc.exit.thread.i:                  ; preds = %bb.k, %ma_allocation_callbacks_init_copy.exit.i
  store ptr null, ptr %i.ac, align 8, !tbaa !332
  br label %ma_calculate_frame_count_after_resampling.exit.thread

ma_aligned_malloc.exit.i:                         ; preds = %bb.k
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = add i64 %i.bp, 39
  %i.br = and i64 %i.bq, -32                      ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  store ptr %i.bn, ptr %i.bt, align 8, !tbaa !134
  store ptr %i.bs, ptr %i.ac, align 8, !tbaa !332
  %.not39.i = icmp eq i64 %i.br, 0
  br i1 %.not39.i, label %ma_calculate_frame_count_after_resampling.exit.thread, label %bb.l

bb.l:                                             ; preds = %ma_aligned_malloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 32 %i.bs, i8 0, i64 %i.bk, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 100
  store i8 1, ptr %i.bu, align 4, !tbaa !331
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i32 %0, ptr %i.bv, align 8, !tbaa !355
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 %1, ptr %i.bw, align 4, !tbaa !356
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 144
  store i32 0, ptr %i.bx, align 8, !tbaa !357
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.by, i8 0, i64 64, i1 false)
  store ptr @ma_gRBDataSourceVTable, ptr %6, align 8, !tbaa !358
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 -1, ptr %i.bz, align 8, !tbaa !359
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 -1, ptr %i.ca, align 8, !tbaa !360
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %6, ptr %i.cb, align 8, !tbaa !361
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cd = shl i32 %4, 1
  %i.ce = mul i32 %i.cd, %1
  %i.cf = mul i32 %i.ce, %i.y
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.ci = load atomic i32, ptr %i.ch seq_cst, align 4 ; 2 uses
  %i.cj = and i32 %i.ci, -2147483648              ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.cl = load atomic i32, ptr %i.ck seq_cst, align 8 ; 2 uses
  %i.cm = and i32 %i.cl, 2147483647               ; 2 uses
  %i.cn = and i32 %i.cl, -2147483648              ; 2 uses
  %i.co = icmp eq i32 %i.cj, %i.cn
  br i1 %i.co, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cp = zext nneg i32 %i.cm to i64
  %i.cq = add nuw nsw i64 %i.cp, %i.cg            ; 2 uses
  %i.cr = load i32, ptr %i.bi, align 8, !tbaa !352 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %.not.i.i15 = icmp samesign ult i64 %i.cq, %i.cs
  %i.ct = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %.not.i.i15, label %ma_pcm_rb_seek_write.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = sub i32 %i.ct, %i.cr
  %i.cv = xor i32 %i.cj, -2147483648
  br label %ma_pcm_rb_seek_write.exit

bb.o:                                             ; preds = %bb.l
  %i.cw = and i32 %i.ci, 2147483647
  %i.cx = zext nneg i32 %i.cm to i64
  %i.cy = add nuw nsw i64 %i.cx, %i.cg
  %i.cz = zext nneg i32 %i.cw to i64
  %spec.select30.i.i = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cz)
  %spec.select.i.i = trunc nuw nsw i64 %spec.select30.i.i to i32
  br label %ma_pcm_rb_seek_write.exit

ma_pcm_rb_seek_write.exit:                        ; preds = %bb.m, %bb.n, %bb.o
  %.020.i.i = phi i32 [ %i.cv, %bb.n ], [ %i.cn, %bb.o ], [ %i.cj, %bb.m ]
  %.019.i.i = phi i32 [ %i.cu, %bb.n ], [ %spec.select.i.i, %bb.o ], [ %i.ct, %bb.m ]
  %i.da = or i32 %.019.i.i, %.020.i.i
  %i.db = atomicrmw xchg ptr %i.ck, i32 %i.da seq_cst, align 8 ; 0 uses
  br label %ma_calculate_frame_count_after_resampling.exit.thread

ma_calculate_frame_count_after_resampling.exit.thread: ; preds = %bb.i, %bb.g, %bb.h, %ma_aligned_malloc.exit.i, %bb.d, %bb.j, %ma_aligned_malloc.exit.thread.i, %ma_zero_memory_default.exit.i.i, %bb.a, %ma_calculate_frame_count_after_resampling.exit, %ma_pcm_rb_seek_write.exit
  %.0 = phi i32 [ 0, %ma_pcm_rb_seek_write.exit ], [ -2, %ma_calculate_frame_count_after_resampling.exit ], [ -2, %bb.a ], [ -4, %ma_aligned_malloc.exit.thread.i ], [ -2, %ma_zero_memory_default.exit.i.i ], [ -2, %bb.i ], [ -2, %bb.g ], [ -2, %bb.h ], [ -4, %ma_aligned_malloc.exit.i ], [ -2, %bb.d ], [ -2, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ma_device_get_log(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_context_get_log.exit, label %ma_device_get_context.exit

ma_device_get_context.exit:                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !219    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ma_context_get_log.exit, label %bb.b

bb.b:                                             ; preds = %ma_device_get_context.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275
  br label %ma_context_get_log.exit

ma_context_get_log.exit:                          ; preds = %bb.a, %ma_device_get_context.exit, %bb.b
  %.0.i1 = phi ptr [ %i.e, %bb.b ], [ null, %ma_device_get_context.exit ], [ null, %bb.a ]
  ret ptr %.0.i1
}

; Function Attrs: nounwind uwtable
define i32 @ma_device_get_name(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_device_info, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %.not = icmp eq ptr %4, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %4, align 8, !tbaa !154
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp ne ptr %2, null                     ; 2 uses
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %2, align 1, !tbaa !119
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = call i32 @ma_device_get_info(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) ; 2 uses
  %.not22.a = icmp eq i32 %i.c, 0
  br i1 %.not22.a, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.e = call i32 @ma_strncpy_s(ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %i.d, i64 noundef -1) ; 0 uses
  br i1 %.not, label %bb.j, label %.sink.split

bb.h:                                             ; preds = %bb.f
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 256
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  %.sink25 = phi ptr [ %i.f, %bb.i ], [ %2, %bb.g ]
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink25) #66
  store i64 %i.g, ptr %4, align 8, !tbaa !154
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.g, %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_get_format_name(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ma_device_init__pulse.65, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.168, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ma_channel_map_to_string(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #23 {
bb.a:
  %.not56 = icmp eq i32 %1, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp eq ptr %0, null
  %.not39.not = icmp eq ptr %2, null              ; 2 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not39.not, label %ma_channel_map_get_channel.exit.us.us, label %ma_channel_map_get_channel.exit.us

ma_channel_map_get_channel.exit.us.us:            ; preds = %.lr.ph.split.us, %ma_channel_map_get_channel.exit.us.us
  %.045.us.us = phi i32 [ %i.f, %ma_channel_map_get_channel.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.03344.us.us = phi i64 [ %spec.select, %ma_channel_map_get_channel.exit.us.us ], [ 0, %.lr.ph.split.us ]
  %i.b = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %1, i32 noundef %.045.us.us)
  %i.c = tail call ptr @ma_channel_position_to_string(i8 noundef zeroext %i.b)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #66
  %i.e = add i64 %i.d, %.03344.us.us
  %i.f = add nuw i32 %.045.us.us, 1               ; 3 uses
  %i.g = icmp ult i32 %i.f, %1
  %i.h = zext i1 %i.g to i64
  %spec.select = add i64 %i.e, %i.h               ; 2 uses
  %exitcond67.not = icmp eq i32 %i.f, %1
  br i1 %exitcond67.not, label %._crit_edge.thread, label %ma_channel_map_get_channel.exit.us.us, !llvm.loop !1301

ma_channel_map_get_channel.exit.us:               ; preds = %.lr.ph.split.us, %bb.f
  %.045.us = phi i32 [ %i.o, %bb.f ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.03344.us = phi i64 [ %.1.us, %bb.f ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.i = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %1, i32 noundef %.045.us)
  %i.j = tail call ptr @ma_channel_position_to_string(i8 noundef zeroext %i.i) ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #66 ; 2 uses
  %i.l = add i64 %i.k, %.03344.us                 ; 4 uses
  %i.m = icmp ugt i64 %3, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ma_channel_map_get_channel.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.03344.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ma_channel_map_get_channel.exit.us
  %i.o = add nuw i32 %.045.us, 1                  ; 3 uses
  %i.p = icmp ult i32 %i.o, %1
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %i.l, 1                          ; 3 uses
  %i.r = icmp ugt i64 %3, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  store i8 32, ptr %i.s, align 1, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1.us = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %exitcond66.not = icmp eq i32 %i.o, %1
  br i1 %exitcond66.not, label %._crit_edge, label %ma_channel_map_get_channel.exit.us, !llvm.loop !1301

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.t = zext i32 %1 to i64                       ; 4 uses
  br i1 %.not39.not, label %ma_channel_map_get_channel.exit.us46, label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit.us46:             ; preds = %.lr.ph.split, %ma_channel_map_get_channel.exit.us46
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %ma_channel_map_get_channel.exit.us46 ], [ 0, %.lr.ph.split ] ; 2 uses
  %.03344.us48 = phi i64 [ %spec.select55, %ma_channel_map_get_channel.exit.us46 ], [ 0, %.lr.ph.split ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv61
  %i.v = load i8, ptr %i.u, align 1, !tbaa !119
  %i.w = tail call ptr @ma_channel_position_to_string(i8 noundef zeroext %i.v)
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #66
  %i.y = add i64 %i.x, %.03344.us48
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 3 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next62, %i.t
  %i.aa = zext i1 %i.z to i64
  %spec.select55 = add i64 %i.y, %i.aa            ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %i.t
  br i1 %exitcond65.not, label %._crit_edge.thread, label %ma_channel_map_get_channel.exit.us46, !llvm.loop !1301

ma_channel_map_get_channel.exit:                  ; preds = %.lr.ph.split, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph.split ] ; 2 uses
  %.03344 = phi i64 [ %.1, %bb.k ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !119
  %i.ad = tail call ptr @ma_channel_position_to_string(i8 noundef zeroext %i.ac) ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #66 ; 2 uses
  %i.af = add i64 %i.ae, %.03344                  ; 4 uses
  %i.ag = icmp ugt i64 %3, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ma_channel_map_get_channel.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.03344
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %i.ae, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ma_channel_map_get_channel.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %i.af, 1                        ; 3 uses
  %i.ak = icmp ugt i64 %3, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  store i8 32, ptr %i.al, align 1, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.1 = phi i64 [ %i.af, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %ma_channel_map_get_channel.exit, !llvm.loop !1301

._crit_edge:                                      ; preds = %bb.k, %bb.f, %bb.a
  %.033.lcssa = phi i64 [ 0, %bb.a ], [ %.1.us, %bb.f ], [ %.1, %bb.k ] ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %._crit_edge.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.am = icmp ugt i64 %3, %.033.lcssa
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.033.lcssa
  store i8 0, ptr %i.an, align 1, !tbaa !119
  br label %._crit_edge.thread

bb.n:                                             ; preds = %bb.l
  %.not38 = icmp eq i64 %3, 0
  br i1 %.not38, label %._crit_edge.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %2, i64 %3
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  store i8 0, ptr %i.ap, align 1, !tbaa !119
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %ma_channel_map_get_channel.exit.us46, %ma_channel_map_get_channel.exit.us.us, %bb.m, %bb.o, %bb.n, %._crit_edge
  %.033.lcssa79 = phi i64 [ %.033.lcssa, %._crit_edge ], [ %.033.lcssa, %bb.m ], [ %.033.lcssa, %bb.o ], [ %.033.lcssa, %bb.n ], [ %spec.select, %ma_channel_map_get_channel.exit.us.us ], [ %spec.select55, %ma_channel_map_get_channel.exit.us46 ]
  ret i64 %.033.lcssa79
}

; Function Attrs: nounwind uwtable
define noundef i32 @ma_duplex_rb_uninit(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_pcm_rb_uninit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.c = load i8, ptr %i.b, align 4, !tbaa !331
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %ma_pcm_rb_uninit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !332
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ma_pcm_rb_uninit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i.i, label %ma_pcm_rb_uninit.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !126
  tail call void %i.k(ptr noundef nonnull %i.h, ptr noundef %i.l) #55, !inline_history !1302
  br label %ma_pcm_rb_uninit.exit

ma_pcm_rb_uninit.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret i32 0
end_hunk_0
