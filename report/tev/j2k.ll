Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/j2k?download=true
inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_end_encoding:bb.a
  tail call void @opj_tcd_destroy(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opj_free(ptr noundef nonnull %i.d) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @opj_free(ptr noundef nonnull %i.f) #21
  store ptr null, ptr %i.e, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opj_j2k_destroy_header_memory(ptr nofree noundef captures(none) initializes((80, 84)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opj_free(ptr noundef nonnull %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.c, align 8, !tbaa !13
  ret i32 1
}

declare i32 @opj_stream_flush(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @opj_j2k_build_encoder(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_encoding_validation(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = icmp ne ptr %i.e, null
  %i.g = and i1 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = icmp ne ptr %i.i, null
  %i.k = and i1 %i.g, %i.j
  %i.l = zext i1 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !182
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !106  ; 2 uses
  %i.s = add i32 %i.r, -33
  %or.cond = icmp ult i32 %i.s, -32
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.u = load i32, ptr %i.t, align 4, !tbaa !207
  %i.v = add nsw i32 %i.r, -1
  %i.w = shl nuw i32 1, %i.v                      ; 2 uses
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !208
  %i.aa = icmp ult i32 %i.z, %i.w
  br i1 %i.aa, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.ab = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.307) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @opj_j2k_mct_validation(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i16, ptr %i.a, align 8, !tbaa !228
  %i.c = and i16 %i.b, -32256
  %i.d = icmp eq i16 %i.c, -32256
  br i1 %i.d, label %bb.b, label %.loopexit23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.f = load i32, ptr %i.e, align 4, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load i32, ptr %i.g, align 8, !tbaa !164
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %.loopexit23, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph30, %.loopexit
  %.01829 = phi ptr [ %i.k, %.lr.ph30 ], [ %i.bu, %.loopexit ] ; 4 uses
  %.02028 = phi i32 [ 0, %.lr.ph30 ], [ %i.bv, %.loopexit ]
  %.02127 = phi i32 [ 1, %.lr.ph30 ], [ %.2, %.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01829, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.01829, i64 5648
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97
  %.not = icmp eq ptr %i.q, null
  %i.r = select i1 %.not, i32 0, i32 %.02127      ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55   ; 4 uses
  %.not33 = icmp eq i32 %i.u, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.01829, i64 5600
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96   ; 10 uses
  %i.x = zext i32 %i.u to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.x, 4294967288               ; 4 uses
  %i.y = mul nuw nsw i64 %n.vec, 1080
  %i.z = getelementptr i8, ptr %i.w, i64 %i.y
  %i.aa = trunc nuw i64 %n.vec to i32
  %i.ab = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.r, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ab, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.bl, %vector.body ]
  %i.ac = mul i64 %index, 1080                    ; 8 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.al = getelementptr i8, ptr %i.ad, i64 1100
  %i.am = getelementptr i8, ptr %i.ae, i64 2180
  %i.an = getelementptr i8, ptr %i.af, i64 3260
  %i.ao = getelementptr i8, ptr %i.ag, i64 4340
  %i.ap = getelementptr i8, ptr %i.ah, i64 5420
  %i.aq = getelementptr i8, ptr %i.ai, i64 6500
  %i.ar = getelementptr i8, ptr %i.aj, i64 7580
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !112
  %i.at = load i32, ptr %i.al, align 4, !tbaa !112
  %i.au = load i32, ptr %i.am, align 4, !tbaa !112
  %i.av = load i32, ptr %i.an, align 4, !tbaa !112
  %i.aw = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 1
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 2
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 3
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !112
  %i.bb = load i32, ptr %i.ap, align 4, !tbaa !112
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !112
  %i.bd = load i32, ptr %i.ar, align 4, !tbaa !112
  %i.be = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 1
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 2
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 3
  %3 = and <4 x i32> %i.az, splat (i32 1)
  %4 = and <4 x i32> %i.bh, splat (i32 1)
  %i.bi = xor <4 x i32> %3, splat (i32 1)
  %i.bj = xor <4 x i32> %4, splat (i32 1)
  %i.bk = and <4 x i32> %i.bi, %vec.phi           ; 2 uses
  %i.bl = and <4 x i32> %i.bj, %vec.phi37         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !509

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.bl, %i.bk
  %i.bn = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %.lr.ph.preheader, %middle.block
  %.026.ph = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.01925.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  %.124.ph = phi i32 [ %i.r, %.lr.ph.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %.026 = phi ptr [ %i.bs, %.lr.ph ], [ %.026.ph, %.lr.ph.preheader46 ] ; 2 uses
  %.01925 = phi i32 [ %i.bt, %.lr.ph ], [ %.01925.ph, %.lr.ph.preheader46 ]
  %.124 = phi i32 [ %i.br, %.lr.ph ], [ %.124.ph, %.lr.ph.preheader46 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.026, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !112
  %5 = and i32 %i.bp, 1
  %i.bq = xor i32 %5, 1
  %i.br = and i32 %i.bq, %.124                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.026, i64 1080
  %i.bt = add nuw i32 %.01925, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %i.u
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !510

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.d, %bb.c
  %.2 = phi i32 [ %.02127, %bb.c ], [ %i.r, %bb.d ], [ %i.bn, %middle.block ], [ %i.br, %.lr.ph ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01829, i64 5696
  %i.bv = add nuw i32 %.02028, 1                  ; 2 uses
  %exitcond34.not = icmp eq i32 %i.bv, %i.i
  br i1 %exitcond34.not, label %.loopexit23, label %bb.c, !llvm.loop !511

.loopexit23:                                      ; preds = %.loopexit, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %.2, %.loopexit ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opj_j2k_init_info(ptr noundef initializes((48, 52)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !70
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %opj_j2k_calculate_tp.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.0244.i = phi ptr [ %i.t, %bb.c ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %.0253.i = phi i32 [ %i.u, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  tail call void @opj_pi_update_encoding_parameters(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef %.0253.i) #21
  %i.l = getelementptr inbounds nuw i8, ptr %.0244.i, i64 420
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.b ] ; 2 uses
  %.0231.i = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %bb.b ]
  %i.m = tail call fastcc i32 @opj_j2k_get_num_tp(ptr noundef nonnull %i.a, i32 noundef %.02.i, i32 noundef %.0253.i) ; 2 uses
  %i.n = load i32, ptr %i.b, align 8, !tbaa !70
  %i.o = add i32 %i.n, %i.m
  store i32 %i.o, ptr %i.b, align 8, !tbaa !70
  %i.p = add i32 %i.m, %.0231.i                   ; 2 uses
  %i.q = add i32 %.02.i, 1                        ; 2 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !95
  %.not.i = icmp ugt i32 %i.q, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !512

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.0244.i, i64 5612
  store i32 %i.p, ptr %i.s, align 4, !tbaa !186
  %i.t = getelementptr inbounds nuw i8, ptr %.0244.i, i64 5696
  %i.u = add nuw i32 %.0253.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, %i.i
  br i1 %exitcond.not.i, label %opj_j2k_calculate_tp.exit, label %.lr.ph.i, !llvm.loop !513

opj_j2k_calculate_tp.exit:                        ; preds = %bb.c, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_soc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.b, i32 noundef 65359, i32 noundef 2) #21
  %i.c = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.b, i64 noundef 2, ptr noundef %2) #21
  %.not = icmp eq i64 %i.c, 2
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_siz(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = mul i32 %i.e, 3                          ; 2 uses
  %i.g = add i32 %i.f, 40                         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !13
  %i.l = icmp ugt i32 %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  br i1 %i.l, label %bb.b, label %._crit_edge83

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %i.g to i64
  %i.p = tail call ptr @opj_realloc(ptr noundef %i.n, i64 noundef %i.o) #21 ; 3 uses
  %.not.not = icmp eq ptr %i.p, null
  br i1 %.not.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !13
  tail call void @opj_free(ptr noundef %i.q) #21
  store ptr null, ptr %i.m, align 8, !tbaa !13
  store i32 0, ptr %i.j, align 8, !tbaa !13
  %i.r = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.308) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.m, align 8, !tbaa !13
  store i32 %i.g, ptr %i.j, align 8, !tbaa !13
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.a, %bb.c
  %i.s = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.a ] ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @opj_write_bytes_LE(ptr noundef %i.s, i32 noundef 65361, i32 noundef 2) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.v = add i32 %i.f, 38
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.u, i32 noundef %i.v, i32 noundef 2) #21
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = load i16, ptr %i.c, align 8, !tbaa !69
  %i.y = zext i16 %i.x to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.w, i32 noundef %i.y, i32 noundef 2) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !74
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.z, i32 noundef %i.ab, i32 noundef 4) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !76
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ac, i32 noundef %i.ae, i32 noundef 4) #21
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !124
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.af, i32 noundef %i.ag, i32 noundef 4) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !125
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ah, i32 noundef %i.aj, i32 noundef 4) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.am = load i32, ptr %i.al, align 4, !tbaa !72
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ak, i32 noundef %i.am, i32 noundef 4) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !73
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.an, i32 noundef %i.ap, i32 noundef 4) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 30
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.aq, i32 noundef %i.as, i32 noundef 4) #21
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = load i32, ptr %i.au, align 8, !tbaa !77
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.at, i32 noundef %i.av, i32 noundef 4) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 38
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !55
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.aw, i32 noundef %i.ax, i32 noundef 2) #21
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !55
  %.not82 = icmp eq i32 %i.ay, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge83
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.07381 = phi ptr [ %i.bn, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 5 uses
  %.07480 = phi ptr [ %i.bm, %.lr.ph ], [ %i.az, %.lr.ph.preheader ] ; 4 uses
  %.07579 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.07381, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !66
  %i.bc = add i32 %i.bb, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %.07381, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !103
  %i.bf = shl i32 %i.be, 7
  %i.bg = add i32 %i.bc, %i.bf
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.07480, i32 noundef %i.bg, i32 noundef 1) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %.07480, i64 1
  %i.bi = load i32, ptr %.07381, align 8, !tbaa !67
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bh, i32 noundef %i.bi, i32 noundef 1) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %.07480, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.07381, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !68
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bj, i32 noundef %i.bl, i32 noundef 1) #21
  %i.bm = getelementptr inbounds nuw i8, ptr %.07480, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.07381, i64 64
  %i.bo = add nuw i32 %.07579, 1                  ; 2 uses
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !55
  %i.bq = icmp ult i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !514

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge83
end_hunk_0
