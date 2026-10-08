Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/zfp?download=true
inline.NumInlined: 142
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zfp_encode_partial_block_strided_double_1
declare i64 @zfp_encode_partial_block_strided_double_1(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_int32_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_int32_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_int64_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_int64_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_float_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_float_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_double_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_double_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_int32_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_int32_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_int64_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_int64_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_float_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_float_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_double_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_double_3(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_int32_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_int32_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_int64_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_int64_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_float_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_float_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_partial_block_strided_double_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_double_4(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_int32_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_int64_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_float_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare i64 @zfp_encode_block_strided_double_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @compress_init_par(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 {
bb.a:
  %4 = alloca %struct.zfp_field, align 8          ; 11 uses
  %i.a = add i64 %3, %2
  %i.b = shl i64 %i.a, 2
  %i.c = add i64 %i.b, -4
  %i.d = udiv i64 %i.c, %2                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !99
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %zfp_field_dimensionality.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %.not4.i = icmp eq i64 %i.h, 0
  br i1 %.not4.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %.not5.i = icmp eq i64 %i.j, 0
  br i1 %.not5.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %.not6.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 4, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %.not6.i, label %bb.g, label %zfp_field_dimensionality.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.p, align 8, !tbaa !14
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.q, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.d, ptr %i.r, align 8, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  store i64 %i.d, ptr %i.o, align 8, !tbaa !17
  br label %bb.h

zfp_field_dimensionality.exit:                    ; preds = %bb.d
  store i64 4, ptr %i.o, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.d, ptr %i.s, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %zfp_field_dimensionality.exit, %bb.g, %bb.f, %bb.e
  %i.t = call i64 @zfp_stream_maximum_size(ptr noundef %0, ptr noundef nonnull %4) ; 3 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !34
  %.not = icmp eq i32 %i.u, %i.w
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = zext i32 %i.u to i64
  %i.y = load i64, ptr @stream_word_bits, align 8, !tbaa !10 ; 2 uses
  %i.z = urem i64 %i.x, %i.y
  %.not51 = icmp eq i64 %i.z, 0
  br i1 %.not51, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = tail call i64 @stream_wtell(ptr noundef %i.ab) #20
  %i.ad = urem i64 %i.ac, %i.y
  %i.ae = icmp ne i64 %i.ad, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.af = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ %i.ae, %bb.j ] ; 2 uses
  %i.ag = shl i64 %2, 3
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #23 ; 8 uses
  %.not52 = icmp eq ptr %i.ah, null
  br i1 %.not52, label %zfp_field_dimensionality.exit.thread, label %.preheader65

.preheader65:                                     ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.af, label %.preheader65.split.us, label %.preheader65.split

.preheader65.split.us:                            ; preds = %.preheader65, %bb.l
  %.04467.us = phi i64 [ %i.am, %bb.l ], [ 0, %.preheader65 ] ; 3 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.t) #23 ; 2 uses
  %.not53.us = icmp eq ptr %i.aj, null
  br i1 %.not53.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %.preheader65.split.us
  %i.ak = tail call ptr @stream_open(ptr noundef nonnull %i.aj, i64 noundef %i.t) #20
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.04467.us
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !57
  %i.am = add nuw i64 %.04467.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.am, %2
  br i1 %exitcond75.not, label %zfp_field_dimensionality.exit.thread, label %.preheader65.split.us

.preheader65.split:                               ; preds = %.preheader65, %bb.m
  %.04467 = phi i64 [ %i.bb, %bb.m ], [ 0, %.preheader65 ] ; 4 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ao = tail call ptr @stream_data(ptr noundef %i.an) #20 ; 2 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.aq = tail call i64 @stream_size(ptr noundef %i.ap) #20
  %.not53 = icmp eq ptr %i.ao, null
  br i1 %.not53, label %.split.us, label %bb.m

bb.m:                                             ; preds = %.preheader65.split
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = mul i64 %.04467, %3
  %i.at = udiv i64 %i.as, %2
  %i.au = load i32, ptr %i.v, align 4, !tbaa !34
  %i.av = lshr i32 %i.au, 3
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = mul i64 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = tail call ptr @stream_open(ptr noundef nonnull %i.ay, i64 noundef %i.t) #20
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.04467
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !57
  %i.bb = add nuw i64 %.04467, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %2
  br i1 %exitcond.not, label %zfp_field_dimensionality.exit.thread, label %.preheader65.split

.split.us:                                        ; preds = %.preheader65.split, %.preheader65.split.us
  %.us-phi = phi i64 [ %.04467.us, %.preheader65.split.us ], [ %.04467, %.preheader65.split ] ; 2 uses
  br i1 %i.af, label %.preheader, label %zfp_field_dimensionality.exit.thread

.preheader:                                       ; preds = %.split.us
  %.not5468 = icmp eq i64 %.us-phi, 0
  br i1 %.not5468, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.169 = phi i64 [ %i.bc, %.lr.ph ], [ %.us-phi, %.preheader ]
  %i.bc = add i64 %.169, -1                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %i.bf = tail call ptr @stream_data(ptr noundef %i.be) #20
  tail call void @free(ptr noundef %i.bf) #20
  tail call void @stream_close(ptr noundef %i.be) #20
  %.not54 = icmp eq i64 %i.bc, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @free(ptr noundef nonnull %i.ah) #20
  br label %zfp_field_dimensionality.exit.thread

zfp_field_dimensionality.exit.thread:             ; preds = %bb.m, %bb.l, %bb.a, %._crit_edge, %.split.us, %bb.k
  %.046 = phi ptr [ null, %bb.a ], [ null, %bb.k ], [ null, %._crit_edge ], [ %i.ah, %.split.us ], [ %i.ah, %bb.l ], [ %i.ah, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.046
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @compress_omp_int32_1.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.zfp_stream, align 8         ; 6 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !10
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.h, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.i = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !30
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !30
  %i.l = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not32 = icmp sgt i32 %i.l, %i.k
  br i1 %.not32, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph35, %._crit_edge
  %i.o = phi i32 [ %i.k, %.lr.ph35 ], [ %i.ak, %._crit_edge ]
  %indvars.iv = phi i64 [ %i.n, %.lr.ph35 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.p = load i64, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !10     ; 2 uses
  %i.r = mul i64 %i.p, %indvars.iv
  %i.s = udiv i64 %i.r, %i.q                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.t = mul i64 %i.p, %indvars.iv.next
  %i.u = udiv i64 %i.t, %i.q                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.v = load ptr, ptr %4, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !tbaa.struct !58
  %i.w = load ptr, ptr %5, align 8, !tbaa !50
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  store ptr %i.y, ptr %i.m, align 8, !tbaa !29
  %i.z = icmp ult i64 %i.s, %i.u
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.031 = phi i64 [ %i.ai, %bb.f ], [ %i.s, %bb.c ] ; 2 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !47
  %i.ab = shl i64 %.031, 2                        ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %7, align 8, !tbaa !10
  %i.ae = sub i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = icmp ult i64 %i.ae, 4
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ag = call i64 @zfp_encode_partial_block_strided_int32_1(ptr noundef nonnull %8, ptr noundef %i.ac, i64 noundef %i.ae, i64 noundef 1) #20 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ah = call i64 @zfp_encode_block_int32_1(ptr noundef nonnull %8, ptr noundef %i.ac) #20 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = add nuw i64 %.031, 1                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.u
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.b, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ak = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.al = sext i32 %i.ak to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.al
  br i1 %.not.not, label %bb.c, label %._crit_edge36

._crit_edge36:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge36, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare !callback !60 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define internal fastcc void @compress_finish_par(ptr %.16.val, ptr noundef captures(none) %0, i64 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = tail call ptr @stream_data(ptr noundef %.16.val) #20
  %i.b = load ptr, ptr %0, align 8, !tbaa !57
  %i.c = tail call ptr @stream_data(ptr noundef %i.b) #20
  %.not = icmp eq ptr %i.a, %i.c
  %.not.fr = freeze i1 %.not                      ; 2 uses
  %i.d = tail call i64 @stream_wtell(ptr noundef %.16.val) #20 ; 2 uses
  %.not3 = icmp eq i64 %1, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %.not.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.02.us = phi i64 [ %i.l, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.0271.us = phi i64 [ %i.h, %.lr.ph.split.us ], [ %i.d, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02.us ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call i64 @stream_wtell(ptr noundef %i.f) #20
  %i.h = add i64 %i.g, %.0271.us                  ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.j = tail call i64 @stream_flush(ptr noundef %i.i) #20 ; 0 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !57
  tail call void @stream_close(ptr noundef %i.k) #20
  %i.l = add nuw i64 %.02.us, 1                   ; 2 uses
  %exitcond6.not = icmp eq i64 %i.l, %1
  br i1 %exitcond6.not, label %._crit_edge.thread, label %.lr.ph.split.us

._crit_edge.thread:                               ; preds = %.lr.ph.split.us
  tail call void @free(ptr noundef nonnull %0) #20
  br label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.02 = phi i64 [ %i.w, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = tail call i64 @stream_wtell(ptr noundef %i.n) #20
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.q = tail call i64 @stream_flush(ptr noundef %i.p) #20 ; 0 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !57
  tail call void @stream_rewind(ptr noundef %i.r) #20
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !57
  tail call void @stream_copy(ptr noundef %.16.val, ptr noundef %i.s, i64 noundef %i.o) #20
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.u = tail call ptr @stream_data(ptr noundef %i.t) #20
  tail call void @free(ptr noundef %i.u) #20
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !57
  tail call void @stream_close(ptr noundef %i.v) #20
  %i.w = add nuw i64 %.02, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %1
  br i1 %exitcond.not, label %._crit_edge.thread9, label %.lr.ph.split

._crit_edge.thread9:                              ; preds = %.lr.ph.split
  tail call void @free(ptr noundef nonnull %0) #20
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #20
  br i1 %.not.fr, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.027.lcssa8 = phi i64 [ %i.h, %._crit_edge.thread ], [ %i.d, %._crit_edge ]
  tail call void @stream_wseek(ptr noundef %.16.val, i64 noundef %.027.lcssa8) #20
  br label %bb.c
end_hunk_0
