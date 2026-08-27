Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-paint?download=true
inline.NumInlined: 457
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hb_gpu_paint_glyph_or_fail:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.o
}

declare void @hb_font_get_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hb_font_paint_glyph_or_fail(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @hb_gpu_paint_glyph(ptr noundef initializes((72, 80)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @hb_font_get_scale(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %i.c = load i32, ptr %i.a, align 4, !tbaa !35
  %i.d = load i32, ptr %i.b, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.c, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.d, ptr %i.f, align 4, !tbaa !67
  %i.g = load atomic ptr, ptr @_ZL22static_gpu_paint_funcs acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %hb_gpu_paint_get_funcs.exit, !prof !52

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.d
  %i.h = call noundef ptr @_ZN32hb_gpu_paint_funcs_lazy_loader_t6createEv() ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = call noundef ptr @hb_paint_funcs_get_empty() #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.h, %.lr.ph.i.i.i ] ; 3 uses
  %i.j = cmpxchg weak ptr @_ZL22static_gpu_paint_funcs, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.k = extractvalue { ptr, i1 } %i.j, 1
  br i1 %i.k, label %hb_gpu_paint_get_funcs.exit, label %bb.d, !prof !53

bb.d:                                             ; preds = %bb.c
  call void @_ZN16hb_lazy_loader_tI16hb_paint_funcs_t32hb_gpu_paint_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %.07.i.i.i)
  %i.l = load atomic ptr, ptr @_ZL22static_gpu_paint_funcs acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %hb_gpu_paint_get_funcs.exit, !prof !54

hb_gpu_paint_get_funcs.exit:                      ; preds = %bb.c, %bb.d, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.g, %bb.a ], [ %.07.i.i.i, %bb.c ], [ %i.l, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !65
  call void @hb_font_paint_glyph(ptr noundef %1, i32 noundef %2, ptr noundef %.19.ph.i.i.i, ptr noundef %0, i32 noundef %i.n, i32 noundef 255) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @hb_font_paint_glyph(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_gpu_paint_encode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 357 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !68, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !71
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @hb_blob_get_empty() #13
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !72
  %i.j = lshr i32 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not220 = icmp eq i32 %i.n, 0
  br i1 %.not220, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = and i32 %i.t, 7
  %.not105 = icmp eq i32 %i.q, 0
  br i1 %.not105, label %._crit_edge.thread, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !73

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.098222 = phi ptr [ %i.u, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %.099221 = phi i32 [ %i.t, %.lr.ph ], [ 0, %bb.d ]
  %i.r = load ptr, ptr %.098222, align 8, !tbaa !51
  %i.s = tail call i32 @hb_blob_get_length(ptr noundef %i.r) #13
  %i.t = add i32 %i.s, %.099221                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.098222, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %.099.lcssa283 = phi i32 [ %i.t, %._crit_edge ], [ 0, %bb.d ]
  %i.v = load i32, ptr %i.h, align 4, !tbaa !72
  %i.w = shl i32 %i.v, 1
  %i.x = add i32 %.099.lcssa283, 24
  %i.y = add i32 %i.x, %i.w                       ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40  ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ad = icmp eq ptr %i.ac, @_ZN9hb_blob_t20recycle_data_destroyEPv
  br i1 %i.ad, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !78 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !79 ; 2 uses
  %.not34.i = icmp ult i32 %i.ah, %i.y
  br i1 %.not34.i, label %bb.g, label %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = lshr exact i32 %i.y, 1
  %i.aj = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.y, i32 range(i32 0, -2147483648) %i.ai) ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = extractvalue { i32, i1 } %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.038.i = phi i32 [ %i.y, %bb.h ], [ %i.al, %bb.g ] ; 3 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.an = zext i32 %.038.i to i64
  %i.ao = tail call ptr @hb_realloc(ptr noundef %i.am, i64 noundef %i.an) #13 ; 3 uses
  %.not35.i = icmp eq ptr %i.ao, null
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !81
  store i32 %.038.i, ptr %i.ag, align 8, !tbaa !79
  br label %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !81
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %._crit_edge.thread
  %.0 = phi ptr [ null, %._crit_edge.thread ], [ %i.ap, %bb.k ], [ null, %bb.e ]
  %i.aq = zext i32 %i.y to i64
  %i.ar = tail call ptr @hb_malloc(i64 noundef %i.aq) #13 ; 2 uses
  %.not36.i = icmp eq ptr %i.ar, null
  br i1 %.not36.i, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit.thread, !prof !8

_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit:    ; preds = %bb.f
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !81 ; 2 uses
  %.not106 = icmp eq ptr %i.as, null
  br i1 %.not106, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit.thread, !prof !82

_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit.thread: ; preds = %bb.l, %bb.j, %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit
  %.3.i189 = phi ptr [ %i.as, %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit ], [ %i.ao, %bb.j ], [ %i.ar, %bb.l ] ; 17 uses
  %.1188 = phi ptr [ null, %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit ], [ null, %bb.j ], [ %.0, %bb.l ] ; 3 uses
  %.0182187 = phi i32 [ %i.ah, %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit ], [ %.038.i, %bb.j ], [ %i.y, %bb.l ] ; 2 uses
  %i.at = load i32, ptr %i.m, align 4, !tbaa !83  ; 9 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit.thread
  %.not.i135.not = icmp eq i32 %i.at, 0
  br i1 %.not.i135.not, label %.cont156, label %.preheader.i, !prof !53

.preheader.i:                                     ; preds = %bb.m, %.preheader.i
  %.043.i = phi i32 [ %i.ax, %.preheader.i ], [ 0, %bb.m ] ; 2 uses
  %i.av = lshr i32 %.043.i, 1
  %i.aw = add nuw i32 %.043.i, 8
  %i.ax = add nuw i32 %i.aw, %i.av                ; 5 uses
  %i.ay = icmp ugt i32 %i.at, %i.ax
  br i1 %i.ay, label %.preheader.i, label %.thread.i, !llvm.loop !84

.thread.i:                                        ; preds = %.preheader.i
  %i.az = icmp ugt i32 %i.ax, 1073741823
  br i1 %i.az, label %bb.n, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !8

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.ba = shl nuw i32 %i.ax, 2
  %i.bb = zext i32 %i.ba to i64
  %i.bc = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.bb) #13 ; 4 uses
  %.not22.i = icmp eq ptr %i.bc, null
  br i1 %.not22.i, label %bb.n, label %2, !prof !85

2:                                                ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %3 = shl i32 %i.at, 2                           ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph, label %4, !prof !8

4:                                                ; preds = %2
  %5 = zext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 0, i64 %5, i1 false)
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph

bb.n:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %.thread.i, %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit.thread
  %.sroa.0.0 = phi i32 [ 0, %_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc.exit.thread ], [ -1, %.thread.i ], [ -1, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ] ; 2 uses
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !40  ; 3 uses
  %.not9.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !74
  %i.bg = icmp eq ptr %i.bf, @_ZN9hb_blob_t20recycle_data_destroyEPv
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !78
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !81
  %.not10.i = icmp eq ptr %.3.i189, %i.bj
  br i1 %.not10.i, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  tail call void @hb_free(ptr noundef nonnull %.3.i189) #13
  br label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit

_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph:           ; preds = %4, %2
  %i.bk = add nuw nsw i32 %i.j, 3
  %i.bl = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.at to i64
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

.cont156:                                         ; preds = %_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit, %bb.m
  %.sroa.13.0.ph289 = phi ptr [ null, %bb.m ], [ %i.bc, %_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit ] ; 9 uses
  %.sroa.0.0.ph287 = phi i32 [ 0, %bb.m ], [ %i.ax, %_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit ] ; 5 uses
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !71
  %i.bo = trunc i32 %i.bn to i16
  store i16 %i.bo, ptr %.3.i189, align 2, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %.3.i189, i64 2
  store i16 0, ptr %i.bp, align 2, !tbaa !86
  %i.bq = getelementptr inbounds nuw i8, ptr %.3.i189, i64 4
  store i16 0, ptr %i.bq, align 2, !tbaa !86
  %i.br = getelementptr inbounds nuw i8, ptr %.3.i189, i64 6
  store i16 0, ptr %i.br, align 2, !tbaa !86
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.3.i189, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.bx = load <4 x i32>, ptr %i.bs, align 8, !tbaa !35
  %i.by = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bx, <4 x i32> splat (i32 -32767))
  %i.bz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.by, <4 x i32> splat (i32 32767))
  %i.ca = trunc nsw <4 x i32> %i.bz to <4 x i16>
  store <4 x i16> %i.ca, ptr %i.bt, align 2, !tbaa !86
  %i.cb = getelementptr inbounds nuw i8, ptr %.3.i189, i64 16
  store <4 x i16> <i16 3, i16 0, i16 0, i16 0>, ptr %i.cb, align 2, !tbaa !86
  %i.cc = getelementptr inbounds nuw i8, ptr %.3.i189, i64 24 ; 12 uses
  %i.cd = load i32, ptr %i.h, align 4, !tbaa !72  ; 2 uses
  %i.ce = shl i32 %i.cd, 1                        ; 2 uses
  %.not.i121 = icmp eq i32 %i.ce, 0
  br i1 %.not.i121, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.r, !prof !8

bb.r:                                             ; preds = %.cont156
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cc, ptr readonly align 1 %i.ch, i64 range(i64 0, 103079215081) %i.cf, i1 false), !alias.scope !89
  %.pre251 = load i32, ptr %i.h, align 4, !tbaa !72
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %.cont156, %bb.r
  %i.ci = phi i32 [ %i.cd, %.cont156 ], [ %.pre251, %bb.r ] ; 3 uses
  %.not237 = icmp eq i32 %i.ci, 0
  br i1 %.not237, label %._crit_edge228, label %.lr.ph227

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph, %_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit
  %indvars.iv = phi i64 [ 0, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit ] ; 4 uses
  %.097223 = phi i32 [ %i.bk, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph ], [ %i.cr, %_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %.097223, ptr %i.cj, align 4, !tbaa !35
  %i.ck = load i32, ptr %i.m, align 4, !tbaa !38
  %i.cl = zext i32 %i.ck to i64
  %.not.i123 = icmp samesign ult i64 %indvars.iv, %i.cl
  br i1 %.not.i123, label %bb.t, label %bb.s, !prof !53

bb.s:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  store i64 %i.bl, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit

bb.t:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.cm = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !51
  br label %_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit

_ZN11hb_vector_tIP9hb_blob_tLb0EEixEi.exit:       ; preds = %bb.s, %bb.t
  %i.co = phi ptr [ %i.bm, %bb.s ], [ %.pre, %bb.t ]
  %i.cp = tail call i32 @hb_blob_get_length(ptr noundef %i.co) #13
  %i.cq = lshr i32 %i.cp, 3
  %i.cr = add i32 %i.cq, %.097223
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.cont156, label %_ZN11hb_vector_tIjLb0EEixEi.exit, !llvm.loop !93

.lr.ph227:                                        ; preds = %_ZL9hb_memcpyPvPKvm.exit, %bb.af
  %.093226 = phi i32 [ %i.gi, %bb.af ], [ 0, %_ZL9hb_memcpyPvPKvm.exit ] ; 10 uses
  %i.cs = zext i32 %.093226 to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !86 ; 2 uses
  switch i16 %i.cu, label %bb.ab [
    i16 0, label %bb.u
    i16 1, label %bb.u
    i16 2, label %bb.af
    i16 3, label %bb.af
  ]

bb.u:                                             ; preds = %.lr.ph227, %.lr.ph227
  %i.cv = or disjoint i32 %.093226, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !86 ; 2 uses
  %i.cz = lshr i16 %i.cy, 6
  %i.da = and i16 %i.cz, 4                        ; 2 uses
  %i.db = zext nneg i16 %i.da to i32
  %i.dc = and i16 %i.cy, 512
  %.not110 = icmp eq i16 %i.dc, 0
  %.not280 = icmp eq i16 %i.cu, 1
  %i.dd = or disjoint i32 %.093226, 2
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !86
  %i.dh = zext i16 %i.dg to i32
  %i.di = shl nuw i32 %i.dh, 16
  %i.dj = or disjoint i32 %.093226, 3
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !86
  %i.dn = zext i16 %i.dm to i32
  %i.do = or disjoint i32 %i.di, %i.dn            ; 2 uses
  %i.dp = icmp ult i32 %i.do, %i.at
  br i1 %i.dp, label %_ZN11hb_vector_tIjLb0EEixEi.exit127, label %bb.v

_ZN11hb_vector_tIjLb0EEixEi.exit127:              ; preds = %bb.u
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0.ph289, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !35 ; 2 uses
  %i.dt = lshr i32 %i.ds, 16
  %i.du = trunc nuw i32 %i.dt to i16
  store i16 %i.du, ptr %i.df, align 2, !tbaa !86
  %i.dv = trunc i32 %i.ds to i16
  store i16 %i.dv, ptr %i.dl, align 2, !tbaa !86
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN11hb_vector_tIjLb0EEixEi.exit127
  %.not111.1 = icmp eq i16 %i.da, 0
  br i1 %.not111.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = add i32 %.093226, %i.db                 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dx ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !86
  %i.ea = zext i16 %i.dz to i32
  %i.eb = shl nuw i32 %i.ea, 16
  %i.ec = or disjoint i32 %i.dw, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ed ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !86
  %i.eg = zext i16 %i.ef to i32
  %i.eh = or disjoint i32 %i.eb, %i.eg            ; 2 uses
  %i.ei = icmp ult i32 %i.eh, %i.at
  br i1 %i.ei, label %_ZN11hb_vector_tIjLb0EEixEi.exit127.1, label %bb.x

_ZN11hb_vector_tIjLb0EEixEi.exit127.1:            ; preds = %bb.w
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0.ph289, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !35 ; 2 uses
  %i.em = lshr i32 %i.el, 16
  %i.en = trunc nuw i32 %i.em to i16
  store i16 %i.en, ptr %i.dy, align 2, !tbaa !86
  %i.eo = trunc i32 %i.el to i16
  store i16 %i.eo, ptr %i.ee, align 2, !tbaa !86
  br label %bb.x

bb.x:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit127.1, %bb.w, %bb.v
  br i1 %.not110, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = add i32 %.093226, 6
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.eq ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !86
  %i.et = zext i16 %i.es to i32
  %i.eu = shl nuw i32 %i.et, 16
  %i.ev = add i32 %.093226, 7
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ew ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !86
  %i.ez = zext i16 %i.ey to i32
  %i.fa = or disjoint i32 %i.eu, %i.ez            ; 2 uses
  %i.fb = icmp ult i32 %i.fa, %i.at
  br i1 %i.fb, label %_ZN11hb_vector_tIjLb0EEixEi.exit127.2, label %bb.z

_ZN11hb_vector_tIjLb0EEixEi.exit127.2:            ; preds = %bb.y
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0.ph289, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !35 ; 2 uses
  %i.ff = lshr i32 %i.fe, 16
  %i.fg = trunc nuw i32 %i.ff to i16
  store i16 %i.fg, ptr %i.er, align 2, !tbaa !86
  %i.fh = trunc i32 %i.fe to i16
  store i16 %i.fh, ptr %i.ex, align 2, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit127.2, %bb.y, %bb.x
  br i1 %.not280, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.fi = add i32 %.093226, 8
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.fj ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !86
  %i.fm = zext i16 %i.fl to i32
  %i.fn = shl nuw i32 %i.fm, 16
  %i.fo = add i32 %.093226, 9
  %i.fp = zext i32 %i.fo to i64
end_hunk_0
