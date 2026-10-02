Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@iq3xs_init_impl.omp_outlined.23:bb.a
._crit_edge:                                      ; preds = %bb.d, %.preheader75.preheader
  %i.ai = sext i32 %i.af to i64
  call void @qsort(ptr noundef nonnull %i.i, i64 noundef %i.ai, i64 noundef 8, ptr noundef nonnull @iq3_compare_func) #14, !llvm.access.group !665
  %i.aj = load ptr, ptr %6, align 8, !tbaa !76, !llvm.access.group !665
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv110
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47, !llvm.access.group !665 ; 2 uses
  %i.am = xor i32 %i.al, -1
  %i.an = load ptr, ptr %4, align 8, !tbaa !76, !llvm.access.group !665 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %indvars.iv110
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !47, !llvm.access.group !665
  %i.ap = load ptr, ptr %7, align 8, !tbaa !78, !llvm.access.group !665 ; 2 uses
  %i.aq = sext i32 %i.al to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %2, align 4, !tbaa !47, !llvm.access.group !665 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph87.preheader, label %._crit_edge88

.lr.ph87.preheader:                               ; preds = %._crit_edge
  %i.au = load i32, ptr %i.i, align 4, !tbaa !47, !llvm.access.group !665
  %wide.trip.count108 = zext nneg i32 %i.as to i64
  br label %.lr.ph87

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34, !llvm.access.group !665
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add nsw i32 %.neg, %i.ax                ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !34, !llvm.access.group !665
  %i.bc = sext i8 %i.bb to i32
  %i.bd = add nsw i32 %.neg121, %i.bc             ; 2 uses
  %i.be = mul nsw i32 %i.bd, %i.bd
  %i.bf = add nuw nsw i32 %i.be, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !34, !llvm.access.group !665
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %.neg122, %i.bi             ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bj
  %i.bl = add nuw nsw i32 %i.bk, %i.bf
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !34, !llvm.access.group !665
  %i.bo = sext i8 %i.bn to i32
  %i.bp = add nsw i32 %.neg123, %i.bo             ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bp
  %i.br = add nuw nsw i32 %i.bq, %i.bl
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !47, !llvm.access.group !665
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !47, !llvm.access.group !665
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !666

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.g
  %indvars.iv105 = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next106, %bb.g ] ; 2 uses
  %indvars.iv103 = phi i64 [ %i.aq, %.lr.ph87.preheader ], [ %indvars.iv.next104, %bb.g ]
  %.084 = phi i32 [ 0, %.lr.ph87.preheader ], [ %i.cf, %bb.g ] ; 2 uses
  %.06083 = phi i32 [ 1, %.lr.ph87.preheader ], [ %.1, %bb.g ] ; 3 uses
  %.06281 = phi i32 [ %i.au, %.lr.ph87.preheader ], [ %.163, %bb.g ] ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1 ; 2 uses
  %.idx124 = shl nuw nsw i64 %indvars.iv105, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx124 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47, !llvm.access.group !665 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, %.06281
  br i1 %i.bx, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph87
  %i.by = load i32, ptr %8, align 4, !tbaa !47, !llvm.access.group !665
  %i.bz = icmp eq i32 %.06083, %i.by
  br i1 %i.bz, label %._crit_edge88.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = add nsw i32 %.06083, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph87
  %.163 = phi i32 [ %i.bw, %bb.f ], [ %.06281, %.lr.ph87 ]
  %.1 = phi i32 [ %i.ca, %bb.f ], [ %.06083, %.lr.ph87 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47, !llvm.access.group !665
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %indvars.iv.next104
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !58, !llvm.access.group !665
  %i.cf = add nuw nsw i32 %.084, 1
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge88.loopexit, label %.lr.ph87, !llvm.loop !667

._crit_edge88.loopexit:                           ; preds = %bb.e, %bb.g
  %.061.lcssa.ph.in = phi i32 [ %i.as, %bb.g ], [ %.084, %bb.e ]
  %.061.lcssa.ph = trunc i32 %.061.lcssa.ph.in to i16
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %._crit_edge
  %.061.lcssa = phi i16 [ 0, %._crit_edge ], [ %.061.lcssa.ph, %._crit_edge88.loopexit ]
  store i16 %.061.lcssa, ptr %i.ar, align 2, !tbaa !58, !llvm.access.group !665
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !665
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88, %.lr.ph95
  %i.cg = phi i32 [ %.pre113, %._crit_edge88 ], [ %i.p, %.lr.ph95 ] ; 2 uses
  %i.ch = phi ptr [ %i.an, %._crit_edge88 ], [ %i.q, %.lr.ph95 ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1
  %i.ci = sext i32 %i.cg to i64
  %.not74.not = icmp slt i64 %indvars.iv110, %i.ci
  br i1 %.not74.not, label %.lr.ph95, label %.loopexit, !llvm.loop !668

._crit_edge99:                                    ; preds = %.loopexit, %bb.c
  call void @__kmpc_dispatch_deinit(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.j)
  call void @free(ptr noundef %i.i) #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @iq3xs_free_impl(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 512, label %iq3_data_index.exit
    i32 256, label %iq3_data_index.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3905, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #24
  unreachable

iq3_data_index.exit:                              ; preds = %bb.a, %bb.a
  %i.a = icmp ne i32 %0, 256
  %i.b = zext i1 %i.a to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @iq3_data, i64 %i.b ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %iq3_data_index.exit
  tail call void @free(ptr noundef nonnull %i.d) #14
  store ptr null, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  tail call void @free(ptr noundef %i.f) #14
  store ptr null, ptr %i.e, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  tail call void @free(ptr noundef %i.h) #14
  store ptr null, ptr %i.g, align 8, !tbaa !85
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %iq3_data_index.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq3_xxs(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = and i64 %3, 255
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4153, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = ashr exact i64 %3, 8                     ; 2 uses
  %i.d = icmp sgt i64 %2, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = mul nsw i64 %i.c, 98
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.f = mul i64 %2, 98
  %i.g = mul i64 %i.f, %i.c
  ret i64 %i.g

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.d ]
  %.01519 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %.01618 = phi ptr [ %0, %.lr.ph ], [ %i.h, %bb.d ] ; 2 uses
  tail call fastcc void @quantize_row_iq3_xxs_impl(ptr noundef %.01618, ptr noundef %.01519, i64 noundef %3, ptr noundef %4)
  %i.h = getelementptr inbounds [4 x i8], ptr %.01618, i64 %3
  %i.i = getelementptr inbounds nuw i8, ptr %.01519, i64 %i.e
  %i.j = add nuw nsw i64 %.020, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !670
}

; Function Attrs: nounwind uwtable
define internal fastcc void @quantize_row_iq3_xxs_impl(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address_is_null) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 6 uses
  %i.b = alloca [32 x float], align 16            ; 25 uses
  %i.c = alloca [32 x float], align 16            ; 41 uses
  %i.d = alloca [32 x i8], align 16               ; 70 uses
  %i.e = alloca [32 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x float], align 16            ; 36 uses
  %i.g = alloca [8 x i8], align 8                 ; 12 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 4                 ; 9 uses
  %i.j = alloca [104 x i8], align 16              ; 14 uses
  %i.k = load ptr, ptr @iq3_data, align 16, !tbaa !83 ; 5 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 8), align 8, !tbaa !84 ; 11 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 16), align 16, !tbaa !85 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.0320484.lcssa.wide.sroa.gep23.a = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep24.a = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep25.a = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep26.a = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep28 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep29.a = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep32.a = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep33.a = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep34.a = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep35.a = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep36 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep37 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep38.a = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep41.a = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep42.a = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep43.a = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep44.a = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep47.a = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep50.a = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep51.a = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep52.a = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep53.a = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3948, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not388 = icmp eq ptr %i.l, null
  br i1 %.not388, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3949, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not389 = icmp eq ptr %i.m, null
  br i1 %.not389, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3950, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = and i64 %2, 255
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3951, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = ashr exact i64 %2, 8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  %i.r = icmp sgt i64 %i.p, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.not390 = icmp eq ptr %3, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 29
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %bb.ao, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.ao
  %indvars.iv593 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next594, %bb.ao ] ; 2 uses
  %.1335490 = phi ptr [ %1, %.lr.ph ], [ %.2, %bb.ao ] ; 3 uses
  %.1340489 = phi ptr [ %i.s, %.lr.ph ], [ %.2341, %bb.ao ] ; 3 uses
  store i16 0, ptr %.1335490, align 2, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.j, i8 0, i64 104, i1 false)
  %i.ef = shl nuw nsw i64 %indvars.iv593, 8       ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef ; 5 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.eh = fmul float %i.ey, 2.000000e+00
  %i.ei = fmul float %i.eh, 3.906250e-03          ; 32 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ef
  br label %bb.n

bb.l:                                             ; preds = %bb.l, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.3, %bb.l ] ; 5 uses
  %.0373445 = phi float [ 0.000000e+00, %bb.j ], [ %i.ey, %bb.l ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.el = load float, ptr %i.ek, align 4, !tbaa !36 ; 2 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %.0373445)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !36 ; 2 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.em)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load float, ptr %i.es, align 4, !tbaa !36 ; 2 uses
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.eq)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !36 ; 2 uses
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.eu) ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %bb.k, label %bb.l, !llvm.loop !671

bb.m:                                             ; preds = %bb.al
  %i.ez = fcmp une float %.1375, 0.000000e+00
  br i1 %i.ez, label %bb.an, label %bb.am

bb.n:                                             ; preds = %bb.k, %bb.al
  %indvars.iv585 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next586, %bb.al ] ; 6 uses
  %.0374485 = phi float [ 0.000000e+00, %bb.k ], [ %.1375, %bb.al ] ; 3 uses
  %i.fa = shl nuw nsw i64 %indvars.iv585, 5       ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.fa ; 39 uses
  br i1 %.not390, label %.preheader433.preheader, label %.loopexit434.loopexit492

.preheader433.preheader:                          ; preds = %bb.n
  %i.fc = load <32 x float>, ptr %i.fb, align 4, !tbaa !36 ; 2 uses
  %i.fd = fmul <32 x float> %i.fc, %i.fc          ; 9 uses
  %i.fe = shufflevector <32 x float> %i.fd, <32 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.fe, ptr %i.b, align 16, !tbaa !36
  %i.ff = shufflevector <32 x float> %i.fd, <32 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.ff, ptr %i.ad, align 16, !tbaa !36
  %i.fg = shufflevector <32 x float> %i.fd, <32 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.fg, ptr %i.ae, align 16, !tbaa !36
  %i.fh = shufflevector <32 x float> %i.fd, <32 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.fh, ptr %i.af, align 16, !tbaa !36
  %i.fi = shufflevector <32 x float> %i.fd, <32 x float> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x float> %i.fi, ptr %i.ag, align 16, !tbaa !36
  %i.fj = shufflevector <32 x float> %i.fd, <32 x float> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x float> %i.fj, ptr %i.ah, align 16, !tbaa !36
  %i.fk = shufflevector <32 x float> %i.fd, <32 x float> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x float> %i.fk, ptr %i.ai, align 16, !tbaa !36
  %i.fl = shufflevector <32 x float> %i.fd, <32 x float> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x float> %i.fl, ptr %i.aj, align 16, !tbaa !36
  br label %.loopexit434

.loopexit434.loopexit492:                         ; preds = %bb.n
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fa
  %i.fn = load float, ptr %i.fb, align 4, !tbaa !36 ; 2 uses
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.ei)
  %i.fp = tail call float @sqrtf(float noundef %i.fo) #14
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !36 ; 2 uses
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float %i.ei)
  %i.ft = tail call float @sqrtf(float noundef %i.fs) #14
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !36 ; 2 uses
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.ei)
  %i.fx = tail call float @sqrtf(float noundef %i.fw) #14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !36 ; 2 uses
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %i.ei)
  %i.gb = tail call float @sqrtf(float noundef %i.ga) #14
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !36 ; 2 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.ei)
  %i.gf = tail call float @sqrtf(float noundef %i.ge) #14
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !36 ; 2 uses
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gh, float %i.ei)
  %i.gj = tail call float @sqrtf(float noundef %i.gi) #14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !36 ; 2 uses
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.ei)
  %i.gn = tail call float @sqrtf(float noundef %i.gm) #14
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %i.gp = load float, ptr %i.go, align 4, !tbaa !36 ; 2 uses
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.ei)
  %i.gr = tail call float @sqrtf(float noundef %i.gq) #14
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !36 ; 2 uses
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.ei)
  %i.gv = tail call float @sqrtf(float noundef %i.gu) #14
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fb, i64 36
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !36 ; 2 uses
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.ei)
  %i.gz = tail call float @sqrtf(float noundef %i.gy) #14
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !36 ; 2 uses
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %i.ei)
  %i.hd = tail call float @sqrtf(float noundef %i.hc) #14
  %i.he = getelementptr inbounds nuw i8, ptr %i.fb, i64 44
  %i.hf = load float, ptr %i.he, align 4, !tbaa !36 ; 2 uses
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.hf, float %i.ei)
  %i.hh = tail call float @sqrtf(float noundef %i.hg) #14
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !36 ; 2 uses
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.hj, float %i.ei)
  %i.hl = tail call float @sqrtf(float noundef %i.hk) #14
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fb, i64 52
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !36 ; 2 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.ei)
  %i.hp = tail call float @sqrtf(float noundef %i.ho) #14
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !36 ; 2 uses
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hr, float %i.ei)
  %i.ht = tail call float @sqrtf(float noundef %i.hs) #14
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fb, i64 60
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !36 ; 2 uses
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hv, float %i.ei)
  %i.hx = tail call float @sqrtf(float noundef %i.hw) #14
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !36 ; 2 uses
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.hz, float %i.ei)
  %i.ib = tail call float @sqrtf(float noundef %i.ia) #14
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fb, i64 68
  %i.id = load float, ptr %i.ic, align 4, !tbaa !36 ; 2 uses
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.id, float %i.id, float %i.ei)
  %i.if = tail call float @sqrtf(float noundef %i.ie) #14
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !36 ; 2 uses
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ih, float %i.ei)
  %i.ij = tail call float @sqrtf(float noundef %i.ii) #14
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fb, i64 76
  %i.il = load float, ptr %i.ik, align 4, !tbaa !36 ; 2 uses
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.ei)
  %i.in = tail call float @sqrtf(float noundef %i.im) #14
  %i.io = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.ip = load float, ptr %i.io, align 4, !tbaa !36 ; 2 uses
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.ip, float %i.ei)
  %i.ir = tail call float @sqrtf(float noundef %i.iq) #14
  %i.is = getelementptr inbounds nuw i8, ptr %i.fb, i64 84
  %i.it = load float, ptr %i.is, align 4, !tbaa !36 ; 2 uses
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.it, float %i.it, float %i.ei)
  %i.iv = tail call float @sqrtf(float noundef %i.iu) #14
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fb, i64 88
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !36 ; 2 uses
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ix, float %i.ei)
  %i.iz = tail call float @sqrtf(float noundef %i.iy) #14
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fb, i64 92
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !36 ; 2 uses
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.jb, float %i.ei)
  %i.jd = tail call float @sqrtf(float noundef %i.jc) #14
  %i.je = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.jf = load float, ptr %i.je, align 4, !tbaa !36 ; 2 uses
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jf, float %i.ei)
  %i.jh = tail call float @sqrtf(float noundef %i.jg) #14
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fb, i64 100
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !36 ; 2 uses
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.jj, float %i.ei)
  %i.jl = tail call float @sqrtf(float noundef %i.jk) #14
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fb, i64 104
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !36 ; 2 uses
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.jn, float %i.ei)
  %i.jp = tail call float @sqrtf(float noundef %i.jo) #14
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fb, i64 108
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !36 ; 2 uses
  %i.js = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.jr, float %i.ei)
  %i.jt = tail call float @sqrtf(float noundef %i.js) #14
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fb, i64 112
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !36 ; 2 uses
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jv, float %i.ei)
  %i.jx = tail call float @sqrtf(float noundef %i.jw) #14
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fb, i64 116
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !36 ; 2 uses
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.ei)
  %i.kb = tail call float @sqrtf(float noundef %i.ka) #14
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !36 ; 2 uses
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.kd, float %i.kd, float %i.ei)
  %i.kf = tail call float @sqrtf(float noundef %i.ke) #14
  %i.kg = getelementptr inbounds nuw i8, ptr %i.fb, i64 124
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !36 ; 2 uses
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.kh, float %i.ei)
  %i.kj = tail call float @sqrtf(float noundef %i.ki) #14
  %i.kk = load <32 x float>, ptr %i.fm, align 4, !tbaa !36
  %i.kl = insertelement <32 x float> poison, float %i.fp, i64 0
  %i.km = insertelement <32 x float> %i.kl, float %i.ft, i64 1
  %i.kn = insertelement <32 x float> %i.km, float %i.fx, i64 2
  %i.ko = insertelement <32 x float> %i.kn, float %i.gb, i64 3
  %i.kp = insertelement <32 x float> %i.ko, float %i.gf, i64 4
  %i.kq = insertelement <32 x float> %i.kp, float %i.gj, i64 5
  %i.kr = insertelement <32 x float> %i.kq, float %i.gn, i64 6
  %i.ks = insertelement <32 x float> %i.kr, float %i.gr, i64 7
  %i.kt = insertelement <32 x float> %i.ks, float %i.gv, i64 8
  %i.ku = insertelement <32 x float> %i.kt, float %i.gz, i64 9
  %i.kv = insertelement <32 x float> %i.ku, float %i.hd, i64 10
  %i.kw = insertelement <32 x float> %i.kv, float %i.hh, i64 11
  %i.kx = insertelement <32 x float> %i.kw, float %i.hl, i64 12
  %i.ky = insertelement <32 x float> %i.kx, float %i.hp, i64 13
  %i.kz = insertelement <32 x float> %i.ky, float %i.ht, i64 14
  %i.la = insertelement <32 x float> %i.kz, float %i.hx, i64 15
  %i.lb = insertelement <32 x float> %i.la, float %i.ib, i64 16
  %i.lc = insertelement <32 x float> %i.lb, float %i.if, i64 17
  %i.ld = insertelement <32 x float> %i.lc, float %i.ij, i64 18
  %i.le = insertelement <32 x float> %i.ld, float %i.in, i64 19
  %i.lf = insertelement <32 x float> %i.le, float %i.ir, i64 20
  %i.lg = insertelement <32 x float> %i.lf, float %i.iv, i64 21
  %i.lh = insertelement <32 x float> %i.lg, float %i.iz, i64 22
  %i.li = insertelement <32 x float> %i.lh, float %i.jd, i64 23
  %i.lj = insertelement <32 x float> %i.li, float %i.jh, i64 24
  %i.lk = insertelement <32 x float> %i.lj, float %i.jl, i64 25
  %i.ll = insertelement <32 x float> %i.lk, float %i.jp, i64 26
  %i.lm = insertelement <32 x float> %i.ll, float %i.jt, i64 27
  %i.ln = insertelement <32 x float> %i.lm, float %i.jx, i64 28
  %i.lo = insertelement <32 x float> %i.ln, float %i.kb, i64 29
  %i.lp = insertelement <32 x float> %i.lo, float %i.kf, i64 30
  %i.lq = insertelement <32 x float> %i.lp, float %i.kj, i64 31
  %i.lr = fmul <32 x float> %i.kk, %i.lq          ; 9 uses
  %i.ls = shufflevector <32 x float> %i.lr, <32 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.ls, ptr %i.b, align 16, !tbaa !36
  %i.lt = shufflevector <32 x float> %i.lr, <32 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.lt, ptr %i.w, align 16, !tbaa !36
  %i.lu = shufflevector <32 x float> %i.lr, <32 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.lu, ptr %i.x, align 16, !tbaa !36
  %i.lv = shufflevector <32 x float> %i.lr, <32 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.lv, ptr %i.y, align 16, !tbaa !36
  %i.lw = shufflevector <32 x float> %i.lr, <32 x float> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x float> %i.lw, ptr %i.z, align 16, !tbaa !36
  %i.lx = shufflevector <32 x float> %i.lr, <32 x float> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x float> %i.lx, ptr %i.aa, align 16, !tbaa !36
  %i.ly = shufflevector <32 x float> %i.lr, <32 x float> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x float> %i.ly, ptr %i.ab, align 16, !tbaa !36
  %i.lz = shufflevector <32 x float> %i.lr, <32 x float> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x float> %i.lz, ptr %i.ac, align 16, !tbaa !36
  br label %.loopexit434

.loopexit434:                                     ; preds = %.loopexit434.loopexit492, %.preheader433.preheader
  %i.ma = phi <32 x float> [ %i.lr, %.loopexit434.loopexit492 ], [ %i.fd, %.preheader433.preheader ] ; 32 uses
  %i.mb = extractelement <32 x float> %i.ma, i64 0
  %i.mc = tail call float @sqrtf(float noundef %i.mb) #14
  store float %i.mc, ptr %i.f, align 16, !tbaa !36
  %i.md = extractelement <32 x float> %i.ma, i64 1
  %i.me = tail call float @sqrtf(float noundef %i.md) #14
  store float %i.me, ptr %i.ak, align 4, !tbaa !36
  %i.mf = extractelement <32 x float> %i.ma, i64 2
  %i.mg = tail call float @sqrtf(float noundef %i.mf) #14
  store float %i.mg, ptr %i.al, align 8, !tbaa !36
  %i.mh = extractelement <32 x float> %i.ma, i64 3
  %i.mi = tail call float @sqrtf(float noundef %i.mh) #14
  store float %i.mi, ptr %i.am, align 4, !tbaa !36
  %i.mj = extractelement <32 x float> %i.ma, i64 4
  %i.mk = tail call float @sqrtf(float noundef %i.mj) #14
  store float %i.mk, ptr %i.an, align 16, !tbaa !36
  %i.ml = extractelement <32 x float> %i.ma, i64 5
  %i.mm = tail call float @sqrtf(float noundef %i.ml) #14
  store float %i.mm, ptr %i.ao, align 4, !tbaa !36
  %i.mn = extractelement <32 x float> %i.ma, i64 6
  %i.mo = tail call float @sqrtf(float noundef %i.mn) #14
  store float %i.mo, ptr %i.ap, align 8, !tbaa !36
  %i.mp = extractelement <32 x float> %i.ma, i64 7
  %i.mq = tail call float @sqrtf(float noundef %i.mp) #14
  store float %i.mq, ptr %i.aq, align 4, !tbaa !36
  %i.mr = extractelement <32 x float> %i.ma, i64 8
  %i.ms = tail call float @sqrtf(float noundef %i.mr) #14
  store float %i.ms, ptr %i.ar, align 16, !tbaa !36
  %i.mt = extractelement <32 x float> %i.ma, i64 9
  %i.mu = tail call float @sqrtf(float noundef %i.mt) #14
  store float %i.mu, ptr %i.as, align 4, !tbaa !36
  %i.mv = extractelement <32 x float> %i.ma, i64 10
  %i.mw = tail call float @sqrtf(float noundef %i.mv) #14
  store float %i.mw, ptr %i.at, align 8, !tbaa !36
  %i.mx = extractelement <32 x float> %i.ma, i64 11
  %i.my = tail call float @sqrtf(float noundef %i.mx) #14
  store float %i.my, ptr %i.au, align 4, !tbaa !36
  %i.mz = extractelement <32 x float> %i.ma, i64 12
  %i.na = tail call float @sqrtf(float noundef %i.mz) #14
  store float %i.na, ptr %i.av, align 16, !tbaa !36
  %i.nb = extractelement <32 x float> %i.ma, i64 13
  %i.nc = tail call float @sqrtf(float noundef %i.nb) #14
  store float %i.nc, ptr %i.aw, align 4, !tbaa !36
  %i.nd = extractelement <32 x float> %i.ma, i64 14
  %i.ne = tail call float @sqrtf(float noundef %i.nd) #14
  store float %i.ne, ptr %i.ax, align 8, !tbaa !36
  %i.nf = extractelement <32 x float> %i.ma, i64 15
  %i.ng = tail call float @sqrtf(float noundef %i.nf) #14
  store float %i.ng, ptr %i.ay, align 4, !tbaa !36
  %i.nh = extractelement <32 x float> %i.ma, i64 16
  %i.ni = tail call float @sqrtf(float noundef %i.nh) #14
  store float %i.ni, ptr %i.az, align 16, !tbaa !36
  %i.nj = extractelement <32 x float> %i.ma, i64 17
  %i.nk = tail call float @sqrtf(float noundef %i.nj) #14
  store float %i.nk, ptr %i.ba, align 4, !tbaa !36
  %i.nl = extractelement <32 x float> %i.ma, i64 18
  %i.nm = tail call float @sqrtf(float noundef %i.nl) #14
  store float %i.nm, ptr %i.bb, align 8, !tbaa !36
  %i.nn = extractelement <32 x float> %i.ma, i64 19
  %i.no = tail call float @sqrtf(float noundef %i.nn) #14
  store float %i.no, ptr %i.bc, align 4, !tbaa !36
  %i.np = extractelement <32 x float> %i.ma, i64 20
  %i.nq = tail call float @sqrtf(float noundef %i.np) #14
  store float %i.nq, ptr %i.bd, align 16, !tbaa !36
  %i.nr = extractelement <32 x float> %i.ma, i64 21
  %i.ns = tail call float @sqrtf(float noundef %i.nr) #14
  store float %i.ns, ptr %i.be, align 4, !tbaa !36
  %i.nt = extractelement <32 x float> %i.ma, i64 22
  %i.nu = tail call float @sqrtf(float noundef %i.nt) #14
  store float %i.nu, ptr %i.bf, align 8, !tbaa !36
  %i.nv = extractelement <32 x float> %i.ma, i64 23
  %i.nw = tail call float @sqrtf(float noundef %i.nv) #14
  store float %i.nw, ptr %i.bg, align 4, !tbaa !36
  %i.nx = extractelement <32 x float> %i.ma, i64 24
  %i.ny = tail call float @sqrtf(float noundef %i.nx) #14
  store float %i.ny, ptr %i.bh, align 16, !tbaa !36
  %i.nz = extractelement <32 x float> %i.ma, i64 25
  %i.oa = tail call float @sqrtf(float noundef %i.nz) #14
  store float %i.oa, ptr %i.bi, align 4, !tbaa !36
  %i.ob = extractelement <32 x float> %i.ma, i64 26
  %i.oc = tail call float @sqrtf(float noundef %i.ob) #14
  store float %i.oc, ptr %i.bj, align 8, !tbaa !36
  %i.od = extractelement <32 x float> %i.ma, i64 27
  %i.oe = tail call float @sqrtf(float noundef %i.od) #14
  store float %i.oe, ptr %i.bk, align 4, !tbaa !36
  %i.of = extractelement <32 x float> %i.ma, i64 28
  %i.og = tail call float @sqrtf(float noundef %i.of) #14
  store float %i.og, ptr %i.bl, align 16, !tbaa !36
  %i.oh = extractelement <32 x float> %i.ma, i64 29
  %i.oi = tail call float @sqrtf(float noundef %i.oh) #14
  store float %i.oi, ptr %i.bm, align 4, !tbaa !36
  %i.oj = extractelement <32 x float> %i.ma, i64 30
  %i.ok = tail call float @sqrtf(float noundef %i.oj) #14
  store float %i.ok, ptr %i.bn, align 8, !tbaa !36
  %i.ol = extractelement <32 x float> %i.ma, i64 31
  %i.om = tail call float @sqrtf(float noundef %i.ol) #14
  store float %i.om, ptr %i.bo, align 4, !tbaa !36
  br label %.preheader427

.preheader427:                                    ; preds = %.loopexit434, %bb.q
  %indvars.iv522 = phi i64 [ 0, %.loopexit434 ], [ %indvars.iv.next523, %bb.q ] ; 3 uses
  %i.on = shl nuw nsw i64 %indvars.iv522, 3       ; 9 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.on
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.on
  %4 = load <4 x float>, ptr %i.oo, align 4, !tbaa !36 ; 4 uses
  %i.oq = fcmp ult <4 x float> %4, zeroinitializer ; 5 uses
  %i.or = extractelement <4 x i1> %i.oq, i64 0    ; 2 uses
  %.1363 = zext i1 %i.or to i8                    ; 2 uses
  %i.os = or disjoint i8 %.1363, 2
  %i.ot = extractelement <4 x i1> %i.oq, i64 1    ; 2 uses
  %.1363.1 = select i1 %i.ot, i8 %i.os, i8 %.1363 ; 2 uses
  %i.ou = or disjoint i8 %.1363.1, 4
  %i.ov = extractelement <4 x i1> %i.oq, i64 2    ; 2 uses
  %.1363.2 = select i1 %i.ov, i8 %i.ou, i8 %.1363.1 ; 2 uses
  %i.ow = fneg <4 x float> %4
  %i.ox = or disjoint i8 %.1363.2, 8
  %i.oy = select <4 x i1> %i.oq, <4 x float> %i.ow, <4 x float> %4
  %i.oz = extractelement <4 x i1> %i.oq, i64 3    ; 2 uses
  %.1363.3 = select i1 %i.oz, i8 %i.ox, i8 %.1363.2 ; 2 uses
  store <4 x float> %i.oy, ptr %i.op, align 16, !tbaa !36
  %i.pa = or disjoint i64 %i.on, 4                ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.pa
  %i.pc = or i8 %.1363.3, 16
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pa
  %i.pe = load <4 x float>, ptr %i.pb, align 4, !tbaa !36 ; 3 uses
  %i.pf = fcmp ult <4 x float> %i.pe, zeroinitializer ; 5 uses
  %i.pg = extractelement <4 x i1> %i.pf, i64 0    ; 2 uses
  %.1363.4 = select i1 %i.pg, i8 %i.pc, i8 %.1363.3 ; 2 uses
  %i.ph = or i8 %.1363.4, 32
  %i.pi = extractelement <4 x i1> %i.pf, i64 1    ; 2 uses
  %.1363.5 = select i1 %i.pi, i8 %i.ph, i8 %.1363.4 ; 2 uses
  %i.pj = or i8 %.1363.5, 64
  %i.pk = extractelement <4 x i1> %i.pf, i64 2    ; 2 uses
  %.1363.6 = select i1 %i.pk, i8 %i.pj, i8 %.1363.5 ; 2 uses
  %i.pl = fneg <4 x float> %i.pe
  %i.pm = select <4 x i1> %i.pf, <4 x float> %i.pl, <4 x float> %i.pe
  store <4 x float> %i.pm, ptr %i.pd, align 16, !tbaa !36
  %i.pn = extractelement <4 x i1> %i.pf, i64 3
  %i.po = xor i1 %i.ot, %i.pn
  %i.pp = xor i1 %i.po, %i.or
  %i.pq = xor i1 %i.pp, %i.ov
  %i.pr = xor i1 %i.pq, %i.oz
  %i.ps = xor i1 %i.pr, %i.pg
  %i.pt = xor i1 %i.ps, %i.pi
  %.1366.7.narrow = xor i1 %i.pt, %i.pk
  br i1 %.1366.7.narrow, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.q
  %i.pu = load float, ptr %i.c, align 16, !tbaa !36 ; 2 uses
  %i.pv = load float, ptr %i.bp, align 4, !tbaa !36 ; 2 uses
  %i.pw = fcmp ogt float %i.pu, %i.pv
  %.0355. = select i1 %i.pw, float %i.pu, float %i.pv ; 2 uses
  %i.px = load float, ptr %i.bq, align 8, !tbaa !36 ; 2 uses
  %i.py = fcmp ogt float %.0355., %i.px
  %.0355..1 = select i1 %i.py, float %.0355., float %i.px ; 2 uses
  %i.pz = load float, ptr %i.br, align 4, !tbaa !36 ; 2 uses
  %i.qa = fcmp ogt float %.0355..1, %i.pz
  %.0355..2 = select i1 %i.qa, float %.0355..1, float %i.pz ; 2 uses
  %i.qb = load float, ptr %i.bs, align 16, !tbaa !36 ; 2 uses
  %i.qc = fcmp ogt float %.0355..2, %i.qb
  %.0355..3 = select i1 %i.qc, float %.0355..2, float %i.qb ; 2 uses
  %i.qd = load float, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.qe = fcmp ogt float %.0355..3, %i.qd
  %.0355..4 = select i1 %i.qe, float %.0355..3, float %i.qd ; 2 uses
  %i.qf = load float, ptr %i.bu, align 8, !tbaa !36 ; 2 uses
  %i.qg = fcmp ogt float %.0355..4, %i.qf
  %.0355..5 = select i1 %i.qg, float %.0355..4, float %i.qf ; 2 uses
  %i.qh = load float, ptr %i.bv, align 4, !tbaa !36 ; 2 uses
  %i.qi = fcmp ogt float %.0355..5, %i.qh
  %.0355..6 = select i1 %i.qi, float %.0355..5, float %i.qh ; 2 uses
  %i.qj = load float, ptr %i.bw, align 16, !tbaa !36 ; 2 uses
  %i.qk = fcmp ogt float %.0355..6, %i.qj
  %.0355..7 = select i1 %i.qk, float %.0355..6, float %i.qj ; 2 uses
  %i.ql = load float, ptr %i.bx, align 4, !tbaa !36 ; 2 uses
  %i.qm = fcmp ogt float %.0355..7, %i.ql
  %.0355..8 = select i1 %i.qm, float %.0355..7, float %i.ql ; 2 uses
  %i.qn = load float, ptr %i.by, align 8, !tbaa !36 ; 2 uses
  %i.qo = fcmp ogt float %.0355..8, %i.qn
  %.0355..9 = select i1 %i.qo, float %.0355..8, float %i.qn ; 2 uses
  %i.qp = load float, ptr %i.bz, align 4, !tbaa !36 ; 2 uses
  %i.qq = fcmp ogt float %.0355..9, %i.qp
  %.0355..10 = select i1 %i.qq, float %.0355..9, float %i.qp ; 2 uses
  %i.qr = load float, ptr %i.ca, align 16, !tbaa !36 ; 2 uses
  %i.qs = fcmp ogt float %.0355..10, %i.qr
  %.0355..11 = select i1 %i.qs, float %.0355..10, float %i.qr ; 2 uses
  %i.qt = load float, ptr %i.cb, align 4, !tbaa !36 ; 2 uses
  %i.qu = fcmp ogt float %.0355..11, %i.qt
  %.0355..12 = select i1 %i.qu, float %.0355..11, float %i.qt ; 2 uses
  %i.qv = load float, ptr %i.cc, align 8, !tbaa !36 ; 2 uses
  %i.qw = fcmp ogt float %.0355..12, %i.qv
  %.0355..13 = select i1 %i.qw, float %.0355..12, float %i.qv ; 2 uses
  %i.qx = load float, ptr %i.cd, align 4, !tbaa !36 ; 2 uses
  %i.qy = fcmp ogt float %.0355..13, %i.qx
  %.0355..14 = select i1 %i.qy, float %.0355..13, float %i.qx ; 2 uses
  %i.qz = load float, ptr %i.ce, align 16, !tbaa !36 ; 2 uses
  %i.ra = fcmp ogt float %.0355..14, %i.qz
  %.0355..15 = select i1 %i.ra, float %.0355..14, float %i.qz ; 2 uses
  %i.rb = load float, ptr %i.cf, align 4, !tbaa !36 ; 2 uses
  %i.rc = fcmp ogt float %.0355..15, %i.rb
  %.0355..16 = select i1 %i.rc, float %.0355..15, float %i.rb ; 2 uses
  %i.rd = load float, ptr %i.cg, align 8, !tbaa !36 ; 2 uses
  %i.re = fcmp ogt float %.0355..16, %i.rd
  %.0355..17 = select i1 %i.re, float %.0355..16, float %i.rd ; 2 uses
  %i.rf = load float, ptr %i.ch, align 4, !tbaa !36 ; 2 uses
  %i.rg = fcmp ogt float %.0355..17, %i.rf
  %.0355..18 = select i1 %i.rg, float %.0355..17, float %i.rf ; 2 uses
  %i.rh = load float, ptr %i.ci, align 16, !tbaa !36 ; 2 uses
  %i.ri = fcmp ogt float %.0355..18, %i.rh
  %.0355..19 = select i1 %i.ri, float %.0355..18, float %i.rh ; 2 uses
  %i.rj = load float, ptr %i.cj, align 4, !tbaa !36 ; 2 uses
  %i.rk = fcmp ogt float %.0355..19, %i.rj
  %.0355..20 = select i1 %i.rk, float %.0355..19, float %i.rj ; 2 uses
  %i.rl = load float, ptr %i.ck, align 8, !tbaa !36 ; 2 uses
  %i.rm = fcmp ogt float %.0355..20, %i.rl
  %.0355..21 = select i1 %i.rm, float %.0355..20, float %i.rl ; 2 uses
  %i.rn = load float, ptr %i.cl, align 4, !tbaa !36 ; 2 uses
  %i.ro = fcmp ogt float %.0355..21, %i.rn
  %.0355..22 = select i1 %i.ro, float %.0355..21, float %i.rn ; 2 uses
  %i.rp = load float, ptr %i.cm, align 16, !tbaa !36 ; 2 uses
  %i.rq = fcmp ogt float %.0355..22, %i.rp
  %.0355..23 = select i1 %i.rq, float %.0355..22, float %i.rp ; 2 uses
  %i.rr = load float, ptr %i.cn, align 4, !tbaa !36 ; 2 uses
  %i.rs = fcmp ogt float %.0355..23, %i.rr
  %.0355..24 = select i1 %i.rs, float %.0355..23, float %i.rr ; 2 uses
  %i.rt = load float, ptr %i.co, align 8, !tbaa !36 ; 2 uses
  %i.ru = fcmp ogt float %.0355..24, %i.rt
  %.0355..25 = select i1 %i.ru, float %.0355..24, float %i.rt ; 2 uses
  %i.rv = load float, ptr %i.cp, align 4, !tbaa !36 ; 2 uses
  %i.rw = fcmp ogt float %.0355..25, %i.rv
  %.0355..26 = select i1 %i.rw, float %.0355..25, float %i.rv ; 2 uses
  %i.rx = load float, ptr %i.cq, align 16, !tbaa !36 ; 2 uses
  %i.ry = fcmp ogt float %.0355..26, %i.rx
  %.0355..27 = select i1 %i.ry, float %.0355..26, float %i.rx ; 2 uses
  %i.rz = load float, ptr %i.cr, align 4, !tbaa !36 ; 2 uses
  %i.sa = fcmp ogt float %.0355..27, %i.rz
  %.0355..28 = select i1 %i.sa, float %.0355..27, float %i.rz ; 2 uses
  %i.sb = load float, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  %i.sc = fcmp ogt float %.0355..28, %i.sb
  %.0355..29 = select i1 %i.sc, float %.0355..28, float %i.sb ; 2 uses
  %i.sd = load float, ptr %i.ct, align 4, !tbaa !36 ; 2 uses
  %i.se = fcmp ogt float %.0355..29, %i.sd
  %.0355..30 = select i1 %i.se, float %.0355..29, float %i.sd ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.sf = fcmp olt float %.0355..30, f0x322BCC77
  br i1 %i.sf, label %bb.r, label %.preheader431.preheader

bb.p:                                             ; preds = %.preheader427
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.on
  %5 = load float, ptr %i.sg, align 16, !tbaa !36
  %6 = extractelement <4 x float> %4, i64 0       ; 2 uses
  %7 = fmul float %5, %6
  %8 = fmul float %6, %7                          ; 2 uses
  %9 = or disjoint i64 %i.on, 1                   ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !36
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %9
  %13 = load float, ptr %12, align 4, !tbaa !36   ; 2 uses
  %14 = fmul float %11, %13
  %15 = fmul float %13, %14                       ; 2 uses
  %i.sh = fcmp olt float %15, %8                  ; 2 uses
  %.1360 = zext i1 %i.sh to i32
  %.1358 = select i1 %i.sh, float %15, float %8   ; 2 uses
  %16 = or disjoint i64 %i.on, 2                  ; 2 uses
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %16
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %16
  %19 = load <4 x float>, ptr %17, align 8, !tbaa !36
  %20 = load <4 x float>, ptr %18, align 4, !tbaa !36 ; 5 uses
  %21 = fmul <4 x float> %19, %20                 ; 4 uses
  %foldExtExtBinop.a = fmul <4 x float> %20, %21
  %i.si = extractelement <4 x float> %foldExtExtBinop.a, i64 0 ; 2 uses
  %i.sj = fcmp olt float %i.si, %.1358            ; 2 uses
  %.1360.1 = select i1 %i.sj, i32 2, i32 %.1360
  %.1358.1 = select i1 %i.sj, float %i.si, float %.1358 ; 2 uses
  %foldExtExtBinop11 = fmul <4 x float> %20, %21
  %22 = extractelement <4 x float> %foldExtExtBinop11, i64 1 ; 2 uses
  %i.sk = fcmp olt float %22, %.1358.1            ; 2 uses
  %.1360.2 = select i1 %i.sk, i32 3, i32 %.1360.1
  %.1358.2 = select i1 %i.sk, float %22, float %.1358.1 ; 2 uses
  %foldExtExtBinop13 = fmul <4 x float> %20, %21
  %i.sl = extractelement <4 x float> %foldExtExtBinop13, i64 2 ; 2 uses
  %i.sm = fcmp olt float %i.sl, %.1358.2          ; 2 uses
  %.1360.3 = select i1 %i.sm, i32 4, i32 %.1360.2
  %.1358.3 = select i1 %i.sm, float %i.sl, float %.1358.2 ; 2 uses
  %foldExtExtBinop15 = fmul <4 x float> %20, %21
  %i.sn = extractelement <4 x float> %foldExtExtBinop15, i64 3 ; 2 uses
  %i.so = fcmp olt float %i.sn, %.1358.3          ; 2 uses
  %.1360.4 = select i1 %i.so, i32 5, i32 %.1360.3
  %.1358.4 = select i1 %i.so, float %i.sn, float %.1358.3 ; 2 uses
  %23 = or disjoint i64 %i.on, 6                  ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %23
  %24 = load float, ptr %i.sp, align 8, !tbaa !36
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %23
  %26 = load float, ptr %25, align 4, !tbaa !36   ; 2 uses
  %i.sq = fmul float %24, %26
  %i.sr = fmul float %26, %i.sq                   ; 2 uses
  %i.ss = fcmp olt float %i.sr, %.1358.4          ; 2 uses
  %.1360.5 = select i1 %i.ss, i32 6, i32 %.1360.4
  %.1358.5 = select i1 %i.ss, float %i.sr, float %.1358.4
  %27 = or disjoint i64 %i.on, 7                  ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %27
  %28 = load float, ptr %i.st, align 4, !tbaa !36
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %27
  %30 = load float, ptr %29, align 4, !tbaa !36   ; 2 uses
  %i.su = fmul float %28, %30
  %i.sv = fmul float %30, %i.su
  %i.sw = fcmp olt float %i.sv, %.1358.5
  %.1360.6 = select i1 %i.sw, i32 7, i32 %.1360.5 ; 2 uses
  %i.sx = zext nneg i32 %.1360.6 to i64
  %i.sy = or i64 %i.on, %i.sx
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sy ; 2 uses
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !36
  %i.tb = fneg float %i.ta
  store float %i.tb, ptr %i.sz, align 4, !tbaa !36
  %i.tc = shl nuw nsw i32 1, %.1360.6
  %i.td = trunc nuw i32 %i.tc to i8
  %i.te = xor i8 %.1363.6, %i.td
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader427
  %.2364 = phi i8 [ %i.te, %bb.p ], [ %.1363.6, %.preheader427 ]
  %i.tf = and i8 %.2364, 127
  %i.tg = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv522
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !34
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next523, 4
  br i1 %exitcond525.not, label %bb.o, label %.preheader427, !llvm.loop !672

bb.r:                                             ; preds = %bb.o
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv585
  store float 0.000000e+00, ptr %i.th, align 4, !tbaa !36
  br label %bb.al

.preheader431.preheader:                          ; preds = %bb.o
  store i64 72340172838076673, ptr %i.g, align 8
  %i.ti = fdiv float %.0355..30, 1.500000e+01
  br label %.preheader431

.preheader430:                                    ; preds = %.loopexit425
  store i64 %i.xt, ptr %i.g, align 8
  %i.tj = load <4 x i8>, ptr %i.g, align 8, !tbaa !87
  %i.tk = xor <4 x i8> %i.tj, splat (i8 1)
  %i.tl = load i8, ptr %i.cu, align 4, !tbaa !87, !range !88, !noundef !48
  %i.tm = xor i8 %i.tl, 1
  %i.tn = load i8, ptr %i.cv, align 1, !tbaa !87, !range !88, !noundef !48
  %i.to = xor i8 %i.tn, 1
  %i.tp = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.tk)
  %op.rdx = add i8 %i.tp, %i.tm
  %op.rdx9 = add i8 %op.rdx, %i.to
  %spec.select.5 = zext nneg i8 %op.rdx9 to i32
  %i.tq = load i8, ptr %i.cw, align 2, !tbaa !87, !range !88, !noundef !48
  %i.tr = xor i8 %i.tq, 1
  %i.ts = zext nneg i8 %i.tr to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %i.ts
  %i.tt = load i8, ptr %i.cx, align 1, !tbaa !87, !range !88, !noundef !48
  %i.tu = xor i8 %i.tt, 1
  %i.tv = zext nneg i8 %i.tu to i32
  %i.tw = or i32 %spec.select.6, %i.tv
  %i.tx = icmp ne i32 %i.tw, 0
  %i.ty = fcmp ogt float %.1350, 0.000000e+00
  %or.cond = select i1 %i.tx, i1 %i.ty, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ag

.preheader431:                                    ; preds = %.preheader431.preheader, %.loopexit425
  %i.tz = phi i64 [ %i.xt, %.loopexit425 ], [ 72340172838076673, %.preheader431.preheader ] ; 4 uses
  %.0347471 = phi i32 [ %i.xu, %.loopexit425 ], [ -15, %.preheader431.preheader ] ; 2 uses
  %.0349470 = phi float [ %.1350, %.loopexit425 ], [ %i.ti, %.preheader431.preheader ] ; 2 uses
  %.0352469 = phi float [ %.1353, %.loopexit425 ], [ 0.000000e+00, %.preheader431.preheader ] ; 3 uses
  %i.ua = sitofp i32 %.0347471 to float
  %i.ub = tail call float @llvm.fmuladd.f32(float %i.ua, float 2.000000e-01, float 1.500000e+01)
  %i.uc = fdiv float %i.ub, %.0355..30            ; 2 uses
  %i.ud = fdiv float 1.000000e+00, %i.uc
  %i.ue = insertelement <4 x float> poison, float %i.uc, i64 0
  %i.uf = shufflevector <4 x float> %i.ue, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ug = insertelement <4 x float> poison, float %i.ud, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader421

.preheader421:                                    ; preds = %.preheader431, %bb.w
  %indvars.iv540 = phi i64 [ 0, %.preheader431 ], [ %indvars.iv.next541, %bb.w ] ; 3 uses
  %i.ui = shl nuw nsw i64 %indvars.iv540, 2       ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ui ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ui ; 2 uses
  %i.ul = load <4 x float>, ptr %i.uj, align 16, !tbaa !36 ; 2 uses
  %i.um = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uf, <4 x float> %i.ul, <4 x float> splat (float -1.000000e+00))
  %i.un = fmul <4 x float> %i.um, splat (float 5.000000e-01)
  %i.uo = fadd <4 x float> %i.un, splat (float f0x4B400000)
  %i.up = bitcast <4 x float> %i.uo to <4 x i32>
  %i.uq = and <4 x i32> %i.up, splat (i32 8388607)
  %i.ur = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.uq, <4 x i32> splat (i32 4194304))
  %i.us = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ur, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ut = trunc nuw nsw <4 x i32> %i.us to <4 x i8>
  store <4 x i8> %i.ut, ptr %i.uk, align 4, !tbaa !34
  %i.uu = shl nuw nsw <4 x i32> %i.us, <i32 0, i32 3, i32 6, i32 9>
  %i.uv = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.uu)
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !47 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv540 ; 2 uses
  store i8 1, ptr %i.uz, align 1, !tbaa !87
  %i.va = icmp slt i32 %i.uy, 0
  br i1 %i.va, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.preheader421
  store i8 0, ptr %i.uz, align 1, !tbaa !87
  %i.vb = sext i32 %i.uy to i64
  %i.vc = sub nsw i64 0, %i.vb
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.vc
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 -2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !58, !alias.scope !692, !noalias !697 ; 2 uses
  %.not.i = icmp eq i16 %i.vf, 0
  br i1 %.not.i, label %bb.t, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.s
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ui
  %i.vh = zext i16 %i.vf to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %.pre56.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !36, !alias.scope !694, !noalias !698
  %.phi.trans.insert59.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.vi = load <2 x float>, ptr %.phi.trans.insert59.i, align 8, !tbaa !36, !alias.scope !694, !noalias !698
  %i.vj = load <4 x float>, ptr %i.vg, align 16, !tbaa !36, !alias.scope !695, !noalias !699
  %i.vk = insertelement <4 x float> %i.ul, float %.pre56.i, i64 1
  %i.vl = shufflevector <2 x float> %i.vi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vm = shufflevector <4 x float> %i.vk, <4 x float> %i.vl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vn = fneg <4 x float> %i.vm
  br label %.preheader.i

bb.t:                                             ; preds = %bb.s
  store i64 %i.tz, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3917, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #24, !noalias !700
  unreachable

bb.u:                                             ; preds = %.preheader.i
  %i.vo = icmp sgt i32 %.140.i, -1
  br i1 %i.vo, label %iq3_find_best_neighbour.exit, label %bb.v

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 3 uses
  %.03547.i = phi float [ f0x7F7FFFFF, %.preheader.preheader.i ], [ %.1.i, %.preheader.i ] ; 2 uses
  %.03945.i = phi i32 [ -1, %.preheader.preheader.i ], [ %.140.i, %.preheader.i ]
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.i
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !58, !alias.scope !692, !noalias !697 ; 2 uses
  %i.vr = zext i16 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.vr
  %i.vt = load <4 x i8>, ptr %i.vs, align 1, !tbaa !34, !alias.scope !693, !noalias !701
  %i.vu = sitofp <4 x i8> %i.vt to <4 x float>
  %i.vv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uh, <4 x float> %i.vu, <4 x float> %i.vn) ; 5 uses
  %i.vw = fmul <4 x float> %i.vj, %i.vv           ; 4 uses
  %i.vx = extractelement <4 x float> %i.vw, i64 0
  %i.vy = extractelement <4 x float> %i.vv, i64 0
  %i.vz = tail call float @llvm.fmuladd.f32(float %i.vx, float %i.vy, float 0.000000e+00)
  %i.wa = extractelement <4 x float> %i.vw, i64 1
  %i.wb = extractelement <4 x float> %i.vv, i64 1
  %i.wc = tail call float @llvm.fmuladd.f32(float %i.wa, float %i.wb, float %i.vz)
  %i.wd = extractelement <4 x float> %i.vw, i64 2
  %i.we = extractelement <4 x float> %i.vv, i64 2
  %i.wf = tail call float @llvm.fmuladd.f32(float %i.wd, float %i.we, float %i.wc)
  %i.wg = extractelement <4 x float> %i.vw, i64 3
  %i.wh = extractelement <4 x float> %i.vv, i64 3
  %i.wi = tail call float @llvm.fmuladd.f32(float %i.wg, float %i.wh, float %i.wf) ; 2 uses
  %i.wj = fcmp olt float %i.wi, %.03547.i         ; 2 uses
  %i.wk = zext i16 %i.vq to i32
  %.140.i = select i1 %i.wj, i32 %i.wk, i32 %.03945.i ; 3 uses
  %.1.i = select i1 %i.wj, float %i.wi, float %.03547.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.vh
  br i1 %exitcond.not.i, label %bb.u, label %.preheader.i, !llvm.loop !20

bb.v:                                             ; preds = %bb.u
  store i64 %i.tz, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3932, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24, !noalias !700
  unreachable

iq3_find_best_neighbour.exit:                     ; preds = %bb.u
  %i.wl = zext nneg i32 %.140.i to i64
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.wl
  %i.wn = load <4 x i8>, ptr %i.wm, align 1, !tbaa !34, !alias.scope !693, !noalias !701
  %i.wo = sext <4 x i8> %i.wn to <4 x i16>
  %i.wp = add nsw <4 x i16> %i.wo, splat (i16 -1)
  %i.wq = sdiv <4 x i16> %i.wp, splat (i16 2)
  %i.wr = trunc nsw <4 x i16> %i.wq to <4 x i8>
  store <4 x i8> %i.wr, ptr %i.uk, align 4, !tbaa !34, !alias.scope !696, !noalias !702
  br label %bb.w

bb.w:                                             ; preds = %iq3_find_best_neighbour.exit, %.preheader421
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next541, 8
  br i1 %exitcond543.not, label %.preheader426, label %.preheader421, !llvm.loop !679

bb.x:                                             ; preds = %.preheader426
  %i.ws = extractelement <2 x float> %i.xl, i64 0 ; 3 uses
  %i.wt = fcmp ogt float %i.ws, 0.000000e+00
  br i1 %i.wt, label %bb.y, label %.loopexit425

.preheader426:                                    ; preds = %bb.w, %.preheader426
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %.preheader426 ], [ 0, %bb.w ] ; 4 uses
  %i.wu = phi <2 x float> [ %i.xl, %.preheader426 ], [ zeroinitializer, %bb.w ]
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv544
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !36
  %i.wx = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv544
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !34
end_hunk_0
