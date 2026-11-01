Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@iq3xs_init_impl.omp_outlined.23:bb.a
._crit_edge:                                      ; preds = %bb.d, %.preheader75.preheader
  %i.ai = sext i32 %i.af to i64
  call void @qsort(ptr noundef nonnull %i.i, i64 noundef %i.ai, i64 noundef 8, ptr noundef nonnull @iq3_compare_func) #14, !llvm.access.group !565
  %i.aj = load ptr, ptr %6, align 8, !tbaa !75, !llvm.access.group !565
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv110
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47, !llvm.access.group !565 ; 2 uses
  %i.am = xor i32 %i.al, -1
  %i.an = load ptr, ptr %4, align 8, !tbaa !75, !llvm.access.group !565 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %indvars.iv110
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !47, !llvm.access.group !565
  %i.ap = load ptr, ptr %7, align 8, !tbaa !77, !llvm.access.group !565 ; 2 uses
  %i.aq = sext i32 %i.al to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %2, align 4, !tbaa !47, !llvm.access.group !565 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph87.preheader, label %._crit_edge88

.lr.ph87.preheader:                               ; preds = %._crit_edge
  %i.au = load i32, ptr %i.i, align 4, !tbaa !47, !llvm.access.group !565
  %wide.trip.count108 = zext nneg i32 %i.as to i64
  br label %.lr.ph87

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34, !llvm.access.group !565
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add nsw i32 %.neg, %i.ax                ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !34, !llvm.access.group !565
  %i.bc = sext i8 %i.bb to i32
  %i.bd = add nsw i32 %.neg121, %i.bc             ; 2 uses
  %i.be = mul nsw i32 %i.bd, %i.bd
  %i.bf = add nuw nsw i32 %i.be, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !34, !llvm.access.group !565
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %.neg122, %i.bi             ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bj
  %i.bl = add nuw nsw i32 %i.bk, %i.bf
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !34, !llvm.access.group !565
  %i.bo = sext i8 %i.bn to i32
  %i.bp = add nsw i32 %.neg123, %i.bo             ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bp
  %i.br = add nuw nsw i32 %i.bq, %i.bl
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !47, !llvm.access.group !565
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !47, !llvm.access.group !565
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !566

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.g
  %indvars.iv105 = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next106, %bb.g ] ; 2 uses
  %indvars.iv103 = phi i64 [ %i.aq, %.lr.ph87.preheader ], [ %indvars.iv.next104, %bb.g ]
  %.084 = phi i32 [ 0, %.lr.ph87.preheader ], [ %i.cf, %bb.g ] ; 2 uses
  %.06083 = phi i32 [ 1, %.lr.ph87.preheader ], [ %.1, %bb.g ] ; 3 uses
  %.06281 = phi i32 [ %i.au, %.lr.ph87.preheader ], [ %.163, %bb.g ] ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1 ; 2 uses
  %.idx124 = shl nuw nsw i64 %indvars.iv105, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx124 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47, !llvm.access.group !565 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, %.06281
  br i1 %i.bx, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph87
  %i.by = load i32, ptr %8, align 4, !tbaa !47, !llvm.access.group !565
  %i.bz = icmp eq i32 %.06083, %i.by
  br i1 %i.bz, label %._crit_edge88.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = add nsw i32 %.06083, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph87
  %.163 = phi i32 [ %i.bw, %bb.f ], [ %.06281, %.lr.ph87 ]
  %.1 = phi i32 [ %i.ca, %bb.f ], [ %.06083, %.lr.ph87 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47, !llvm.access.group !565
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %indvars.iv.next104
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !57, !llvm.access.group !565
  %i.cf = add nuw nsw i32 %.084, 1
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge88.loopexit, label %.lr.ph87, !llvm.loop !567

._crit_edge88.loopexit:                           ; preds = %bb.e, %bb.g
  %.061.lcssa.ph.in = phi i32 [ %i.as, %bb.g ], [ %.084, %bb.e ]
  %.061.lcssa.ph = trunc i32 %.061.lcssa.ph.in to i16
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %._crit_edge
  %.061.lcssa = phi i16 [ 0, %._crit_edge ], [ %.061.lcssa.ph, %._crit_edge88.loopexit ]
  store i16 %.061.lcssa, ptr %i.ar, align 2, !tbaa !57, !llvm.access.group !565
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !565
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88, %.lr.ph95
  %i.cg = phi i32 [ %.pre113, %._crit_edge88 ], [ %i.p, %.lr.ph95 ] ; 2 uses
  %i.ch = phi ptr [ %i.an, %._crit_edge88 ], [ %i.q, %.lr.ph95 ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1
  %i.ci = sext i32 %i.cg to i64
  %.not74.not = icmp slt i64 %indvars.iv110, %i.ci
  br i1 %.not74.not, label %.lr.ph95, label %.loopexit, !llvm.loop !568

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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %iq3_data_index.exit
  tail call void @free(ptr noundef nonnull %i.d) #14
  store ptr null, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  tail call void @free(ptr noundef %i.f) #14
  store ptr null, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @free(ptr noundef %i.h) #14
  store ptr null, ptr %i.g, align 8, !tbaa !84
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !570
}

; Function Attrs: nounwind uwtable
define internal fastcc void @quantize_row_iq3_xxs_impl(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address_is_null) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 6 uses
  %i.b = alloca [32 x float], align 16            ; 24 uses
  %i.c = alloca [32 x float], align 16            ; 41 uses
  %i.d = alloca [32 x i8], align 16               ; 70 uses
  %i.e = alloca [32 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x float], align 16            ; 36 uses
  %i.g = alloca [8 x i8], align 8                 ; 12 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 4                 ; 9 uses
  %i.j = alloca [104 x i8], align 16              ; 14 uses
  %i.k = load ptr, ptr @iq3_data, align 16, !tbaa !82 ; 5 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 8), align 8, !tbaa !83 ; 11 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 16), align 16, !tbaa !84 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.0320484.lcssa.wide.sroa.gep23 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep25 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep26 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep28 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep29 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep32 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep33 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep34 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep35 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep36 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep37 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep38 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep41 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep42 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep43 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep44 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
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
  store i16 0, ptr %.1335490, align 2, !tbaa !57
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
  br i1 %exitcond.not.3, label %bb.k, label %bb.l, !llvm.loop !571

bb.m:                                             ; preds = %bb.al
  %i.ez = fcmp une float %.1375, 0.000000e+00
  br i1 %i.ez, label %bb.an, label %bb.am

bb.n:                                             ; preds = %bb.k, %bb.al
  %indvars.iv585 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next586, %bb.al ] ; 6 uses
  %.0374485 = phi float [ 0.000000e+00, %bb.k ], [ %.1375, %bb.al ] ; 3 uses
  %i.fa = shl nuw nsw i64 %indvars.iv585, 5       ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.fa ; 38 uses
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
  %i.on = shl nuw nsw i64 %indvars.iv522, 3       ; 8 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.on ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.on
  %i.oq = load <4 x float>, ptr %i.oo, align 4, !tbaa !36 ; 3 uses
  %i.or = fcmp ult <4 x float> %i.oq, zeroinitializer ; 5 uses
  %i.os = extractelement <4 x i1> %i.or, i64 0    ; 2 uses
  %.1363 = zext i1 %i.os to i8                    ; 2 uses
  %i.ot = or disjoint i8 %.1363, 2
  %i.ou = extractelement <4 x i1> %i.or, i64 1    ; 2 uses
  %.1363.1 = select i1 %i.ou, i8 %i.ot, i8 %.1363 ; 2 uses
  %i.ov = or disjoint i8 %.1363.1, 4
  %i.ow = extractelement <4 x i1> %i.or, i64 2    ; 2 uses
  %.1363.2 = select i1 %i.ow, i8 %i.ov, i8 %.1363.1 ; 2 uses
  %i.ox = fneg <4 x float> %i.oq
  %i.oy = or disjoint i8 %.1363.2, 8
  %i.oz = select <4 x i1> %i.or, <4 x float> %i.ox, <4 x float> %i.oq
  %i.pa = extractelement <4 x i1> %i.or, i64 3    ; 2 uses
  %.1363.3 = select i1 %i.pa, i8 %i.oy, i8 %.1363.2 ; 2 uses
  store <4 x float> %i.oz, ptr %i.op, align 16, !tbaa !36
  %i.pb = or disjoint i64 %i.on, 4                ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.pb
  %i.pd = or i8 %.1363.3, 16
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pb
  %i.pf = load <4 x float>, ptr %i.pc, align 4, !tbaa !36 ; 3 uses
  %i.pg = fcmp ult <4 x float> %i.pf, zeroinitializer ; 5 uses
  %i.ph = extractelement <4 x i1> %i.pg, i64 0    ; 2 uses
  %.1363.4 = select i1 %i.ph, i8 %i.pd, i8 %.1363.3 ; 2 uses
  %i.pi = or i8 %.1363.4, 32
  %i.pj = extractelement <4 x i1> %i.pg, i64 1    ; 2 uses
  %.1363.5 = select i1 %i.pj, i8 %i.pi, i8 %.1363.4 ; 2 uses
  %i.pk = or i8 %.1363.5, 64
  %i.pl = extractelement <4 x i1> %i.pg, i64 2    ; 2 uses
  %.1363.6 = select i1 %i.pl, i8 %i.pk, i8 %.1363.5 ; 2 uses
  %i.pm = fneg <4 x float> %i.pf
  %i.pn = select <4 x i1> %i.pg, <4 x float> %i.pm, <4 x float> %i.pf
  store <4 x float> %i.pn, ptr %i.pe, align 16, !tbaa !36
  %i.po = extractelement <4 x i1> %i.pg, i64 3
  %i.pp = xor i1 %i.ou, %i.po
  %i.pq = xor i1 %i.pp, %i.os
  %i.pr = xor i1 %i.pq, %i.ow
  %i.ps = xor i1 %i.pr, %i.pa
  %i.pt = xor i1 %i.ps, %i.ph
  %i.pu = xor i1 %i.pt, %i.pj
  %.1366.7.narrow = xor i1 %i.pu, %i.pl
  br i1 %.1366.7.narrow, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.q
  %i.pv = load float, ptr %i.c, align 16, !tbaa !36 ; 2 uses
  %i.pw = load float, ptr %i.bp, align 4, !tbaa !36 ; 2 uses
  %i.px = fcmp ogt float %i.pv, %i.pw
  %.0355. = select i1 %i.px, float %i.pv, float %i.pw ; 2 uses
  %i.py = load float, ptr %i.bq, align 8, !tbaa !36 ; 2 uses
  %i.pz = fcmp ogt float %.0355., %i.py
  %.0355..1 = select i1 %i.pz, float %.0355., float %i.py ; 2 uses
  %i.qa = load float, ptr %i.br, align 4, !tbaa !36 ; 2 uses
  %i.qb = fcmp ogt float %.0355..1, %i.qa
  %.0355..2 = select i1 %i.qb, float %.0355..1, float %i.qa ; 2 uses
  %i.qc = load float, ptr %i.bs, align 16, !tbaa !36 ; 2 uses
  %i.qd = fcmp ogt float %.0355..2, %i.qc
  %.0355..3 = select i1 %i.qd, float %.0355..2, float %i.qc ; 2 uses
  %i.qe = load float, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.qf = fcmp ogt float %.0355..3, %i.qe
  %.0355..4 = select i1 %i.qf, float %.0355..3, float %i.qe ; 2 uses
  %i.qg = load float, ptr %i.bu, align 8, !tbaa !36 ; 2 uses
  %i.qh = fcmp ogt float %.0355..4, %i.qg
  %.0355..5 = select i1 %i.qh, float %.0355..4, float %i.qg ; 2 uses
  %i.qi = load float, ptr %i.bv, align 4, !tbaa !36 ; 2 uses
  %i.qj = fcmp ogt float %.0355..5, %i.qi
  %.0355..6 = select i1 %i.qj, float %.0355..5, float %i.qi ; 2 uses
  %i.qk = load float, ptr %i.bw, align 16, !tbaa !36 ; 2 uses
  %i.ql = fcmp ogt float %.0355..6, %i.qk
  %.0355..7 = select i1 %i.ql, float %.0355..6, float %i.qk ; 2 uses
  %i.qm = load float, ptr %i.bx, align 4, !tbaa !36 ; 2 uses
  %i.qn = fcmp ogt float %.0355..7, %i.qm
  %.0355..8 = select i1 %i.qn, float %.0355..7, float %i.qm ; 2 uses
  %i.qo = load float, ptr %i.by, align 8, !tbaa !36 ; 2 uses
  %i.qp = fcmp ogt float %.0355..8, %i.qo
  %.0355..9 = select i1 %i.qp, float %.0355..8, float %i.qo ; 2 uses
  %i.qq = load float, ptr %i.bz, align 4, !tbaa !36 ; 2 uses
  %i.qr = fcmp ogt float %.0355..9, %i.qq
  %.0355..10 = select i1 %i.qr, float %.0355..9, float %i.qq ; 2 uses
  %i.qs = load float, ptr %i.ca, align 16, !tbaa !36 ; 2 uses
  %i.qt = fcmp ogt float %.0355..10, %i.qs
  %.0355..11 = select i1 %i.qt, float %.0355..10, float %i.qs ; 2 uses
  %i.qu = load float, ptr %i.cb, align 4, !tbaa !36 ; 2 uses
  %i.qv = fcmp ogt float %.0355..11, %i.qu
  %.0355..12 = select i1 %i.qv, float %.0355..11, float %i.qu ; 2 uses
  %i.qw = load float, ptr %i.cc, align 8, !tbaa !36 ; 2 uses
  %i.qx = fcmp ogt float %.0355..12, %i.qw
  %.0355..13 = select i1 %i.qx, float %.0355..12, float %i.qw ; 2 uses
  %i.qy = load float, ptr %i.cd, align 4, !tbaa !36 ; 2 uses
  %i.qz = fcmp ogt float %.0355..13, %i.qy
  %.0355..14 = select i1 %i.qz, float %.0355..13, float %i.qy ; 2 uses
  %i.ra = load float, ptr %i.ce, align 16, !tbaa !36 ; 2 uses
  %i.rb = fcmp ogt float %.0355..14, %i.ra
  %.0355..15 = select i1 %i.rb, float %.0355..14, float %i.ra ; 2 uses
  %i.rc = load float, ptr %i.cf, align 4, !tbaa !36 ; 2 uses
  %i.rd = fcmp ogt float %.0355..15, %i.rc
  %.0355..16 = select i1 %i.rd, float %.0355..15, float %i.rc ; 2 uses
  %i.re = load float, ptr %i.cg, align 8, !tbaa !36 ; 2 uses
  %i.rf = fcmp ogt float %.0355..16, %i.re
  %.0355..17 = select i1 %i.rf, float %.0355..16, float %i.re ; 2 uses
  %i.rg = load float, ptr %i.ch, align 4, !tbaa !36 ; 2 uses
  %i.rh = fcmp ogt float %.0355..17, %i.rg
  %.0355..18 = select i1 %i.rh, float %.0355..17, float %i.rg ; 2 uses
  %i.ri = load float, ptr %i.ci, align 16, !tbaa !36 ; 2 uses
  %i.rj = fcmp ogt float %.0355..18, %i.ri
  %.0355..19 = select i1 %i.rj, float %.0355..18, float %i.ri ; 2 uses
  %i.rk = load float, ptr %i.cj, align 4, !tbaa !36 ; 2 uses
  %i.rl = fcmp ogt float %.0355..19, %i.rk
  %.0355..20 = select i1 %i.rl, float %.0355..19, float %i.rk ; 2 uses
  %i.rm = load float, ptr %i.ck, align 8, !tbaa !36 ; 2 uses
  %i.rn = fcmp ogt float %.0355..20, %i.rm
  %.0355..21 = select i1 %i.rn, float %.0355..20, float %i.rm ; 2 uses
  %i.ro = load float, ptr %i.cl, align 4, !tbaa !36 ; 2 uses
  %i.rp = fcmp ogt float %.0355..21, %i.ro
  %.0355..22 = select i1 %i.rp, float %.0355..21, float %i.ro ; 2 uses
  %i.rq = load float, ptr %i.cm, align 16, !tbaa !36 ; 2 uses
  %i.rr = fcmp ogt float %.0355..22, %i.rq
  %.0355..23 = select i1 %i.rr, float %.0355..22, float %i.rq ; 2 uses
  %i.rs = load float, ptr %i.cn, align 4, !tbaa !36 ; 2 uses
  %i.rt = fcmp ogt float %.0355..23, %i.rs
  %.0355..24 = select i1 %i.rt, float %.0355..23, float %i.rs ; 2 uses
  %i.ru = load float, ptr %i.co, align 8, !tbaa !36 ; 2 uses
  %i.rv = fcmp ogt float %.0355..24, %i.ru
  %.0355..25 = select i1 %i.rv, float %.0355..24, float %i.ru ; 2 uses
  %i.rw = load float, ptr %i.cp, align 4, !tbaa !36 ; 2 uses
  %i.rx = fcmp ogt float %.0355..25, %i.rw
  %.0355..26 = select i1 %i.rx, float %.0355..25, float %i.rw ; 2 uses
  %i.ry = load float, ptr %i.cq, align 16, !tbaa !36 ; 2 uses
  %i.rz = fcmp ogt float %.0355..26, %i.ry
  %.0355..27 = select i1 %i.rz, float %.0355..26, float %i.ry ; 2 uses
  %i.sa = load float, ptr %i.cr, align 4, !tbaa !36 ; 2 uses
  %i.sb = fcmp ogt float %.0355..27, %i.sa
  %.0355..28 = select i1 %i.sb, float %.0355..27, float %i.sa ; 2 uses
  %i.sc = load float, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  %i.sd = fcmp ogt float %.0355..28, %i.sc
  %.0355..29 = select i1 %i.sd, float %.0355..28, float %i.sc ; 2 uses
  %i.se = load float, ptr %i.ct, align 4, !tbaa !36 ; 2 uses
  %i.sf = fcmp ogt float %.0355..29, %i.se
  %.0355..30 = select i1 %i.sf, float %.0355..29, float %i.se ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.sg = fcmp olt float %.0355..30, f0x322BCC77
  br i1 %i.sg, label %bb.r, label %.preheader431.preheader

bb.p:                                             ; preds = %.preheader427
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.on
  %4 = load <2 x float>, ptr %i.sh, align 16, !tbaa !36
  %5 = load <2 x float>, ptr %i.oo, align 4, !tbaa !36 ; 2 uses
  %6 = fmul <2 x float> %4, %5
  %7 = fmul <2 x float> %5, %6                    ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0       ; 2 uses
  %9 = extractelement <2 x float> %7, i64 1       ; 2 uses
  %i.si = fcmp olt float %9, %8                   ; 2 uses
  %.1360 = zext i1 %i.si to i32
  %.1358 = select i1 %i.si, float %9, float %8    ; 2 uses
  %i.sj = or disjoint i64 %i.on, 2                ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.sj
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.sj
  %i.sm = load <4 x float>, ptr %i.sk, align 8, !tbaa !36
  %i.sn = load <4 x float>, ptr %i.sl, align 4, !tbaa !36 ; 5 uses
  %i.so = fmul <4 x float> %i.sm, %i.sn           ; 4 uses
  %foldExtExtBinop = fmul <4 x float> %i.sn, %i.so
  %i.sp = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.sq = fcmp olt float %i.sp, %.1358            ; 2 uses
  %.1360.1 = select i1 %i.sq, i32 2, i32 %.1360
  %.1358.1 = select i1 %i.sq, float %i.sp, float %.1358 ; 2 uses
  %foldExtExtBinop11 = fmul <4 x float> %i.sn, %i.so
  %i.sr = extractelement <4 x float> %foldExtExtBinop11, i64 1 ; 2 uses
  %i.ss = fcmp olt float %i.sr, %.1358.1          ; 2 uses
  %.1360.2 = select i1 %i.ss, i32 3, i32 %.1360.1
  %.1358.2 = select i1 %i.ss, float %i.sr, float %.1358.1 ; 2 uses
  %foldExtExtBinop13 = fmul <4 x float> %i.sn, %i.so
  %i.st = extractelement <4 x float> %foldExtExtBinop13, i64 2 ; 2 uses
  %i.su = fcmp olt float %i.st, %.1358.2          ; 2 uses
  %.1360.3 = select i1 %i.su, i32 4, i32 %.1360.2
  %.1358.3 = select i1 %i.su, float %i.st, float %.1358.2 ; 2 uses
  %foldExtExtBinop15 = fmul <4 x float> %i.sn, %i.so
  %i.sv = extractelement <4 x float> %foldExtExtBinop15, i64 3 ; 2 uses
  %i.sw = fcmp olt float %i.sv, %.1358.3          ; 2 uses
  %.1360.4 = select i1 %i.sw, i32 5, i32 %.1360.3
  %.1358.4 = select i1 %i.sw, float %i.sv, float %.1358.3 ; 2 uses
  %i.sx = or disjoint i64 %i.on, 6                ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.sx
  %i.sz = load float, ptr %i.sy, align 8, !tbaa !36
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.sx
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !36 ; 2 uses
  %i.tc = fmul float %i.sz, %i.tb
  %i.td = fmul float %i.tb, %i.tc                 ; 2 uses
  %i.te = fcmp olt float %i.td, %.1358.4          ; 2 uses
  %.1360.5 = select i1 %i.te, i32 6, i32 %.1360.4
  %.1358.5 = select i1 %i.te, float %i.td, float %.1358.4
  %i.tf = or disjoint i64 %i.on, 7                ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.tf
  %i.th = load float, ptr %i.tg, align 4, !tbaa !36
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.tf
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !36 ; 2 uses
  %i.tk = fmul float %i.th, %i.tj
  %i.tl = fmul float %i.tj, %i.tk
  %i.tm = fcmp olt float %i.tl, %.1358.5
  %.1360.6 = select i1 %i.tm, i32 7, i32 %.1360.5 ; 2 uses
  %i.tn = zext nneg i32 %.1360.6 to i64
  %i.to = or i64 %i.on, %i.tn
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.to ; 2 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !36
  %i.tr = fneg float %i.tq
  store float %i.tr, ptr %i.tp, align 4, !tbaa !36
  %i.ts = shl nuw nsw i32 1, %.1360.6
  %i.tt = trunc nuw i32 %i.ts to i8
  %i.tu = xor i8 %.1363.6, %i.tt
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader427
  %.2364 = phi i8 [ %i.tu, %bb.p ], [ %.1363.6, %.preheader427 ]
  %i.tv = and i8 %.2364, 127
  %i.tw = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv522
  store i8 %i.tv, ptr %i.tw, align 1, !tbaa !34
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next523, 4
  br i1 %exitcond525.not, label %bb.o, label %.preheader427, !llvm.loop !572

bb.r:                                             ; preds = %bb.o
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv585
  store float 0.000000e+00, ptr %i.tx, align 4, !tbaa !36
  br label %bb.al

.preheader431.preheader:                          ; preds = %bb.o
  store i64 72340172838076673, ptr %i.g, align 8
  %i.ty = fdiv float %.0355..30, 1.500000e+01
  br label %.preheader431

.preheader430:                                    ; preds = %.loopexit425
  store i64 %i.yj, ptr %i.g, align 8
  %i.tz = load <4 x i8>, ptr %i.g, align 8, !tbaa !86
  %i.ua = xor <4 x i8> %i.tz, splat (i8 1)
  %i.ub = load i8, ptr %i.cu, align 4, !tbaa !86, !range !87, !noundef !88
  %i.uc = xor i8 %i.ub, 1
  %i.ud = load i8, ptr %i.cv, align 1, !tbaa !86, !range !87, !noundef !88
  %i.ue = xor i8 %i.ud, 1
  %i.uf = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ua)
  %op.rdx = add i8 %i.uf, %i.uc
  %op.rdx9 = add i8 %op.rdx, %i.ue
  %spec.select.5 = zext nneg i8 %op.rdx9 to i32
  %i.ug = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !88
  %i.uh = xor i8 %i.ug, 1
  %i.ui = zext nneg i8 %i.uh to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %i.ui
  %i.uj = load i8, ptr %i.cx, align 1, !tbaa !86, !range !87, !noundef !88
  %i.uk = xor i8 %i.uj, 1
  %i.ul = zext nneg i8 %i.uk to i32
  %i.um = or i32 %spec.select.6, %i.ul
  %i.un = icmp ne i32 %i.um, 0
  %i.uo = fcmp ogt float %.1350, 0.000000e+00
  %or.cond = select i1 %i.un, i1 %i.uo, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ag

.preheader431:                                    ; preds = %.preheader431.preheader, %.loopexit425
  %i.up = phi i64 [ %i.yj, %.loopexit425 ], [ 72340172838076673, %.preheader431.preheader ] ; 4 uses
  %.0347471 = phi i32 [ %i.yk, %.loopexit425 ], [ -15, %.preheader431.preheader ] ; 2 uses
  %.0349470 = phi float [ %.1350, %.loopexit425 ], [ %i.ty, %.preheader431.preheader ] ; 2 uses
  %.0352469 = phi float [ %.1353, %.loopexit425 ], [ 0.000000e+00, %.preheader431.preheader ] ; 3 uses
  %i.uq = sitofp i32 %.0347471 to float
  %i.ur = tail call float @llvm.fmuladd.f32(float %i.uq, float 2.000000e-01, float 1.500000e+01)
  %i.us = fdiv float %i.ur, %.0355..30            ; 2 uses
  %i.ut = fdiv float 1.000000e+00, %i.us
  %i.uu = insertelement <4 x float> poison, float %i.us, i64 0
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uw = insertelement <4 x float> poison, float %i.ut, i64 0
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader421

.preheader421:                                    ; preds = %.preheader431, %bb.w
  %indvars.iv540 = phi i64 [ 0, %.preheader431 ], [ %indvars.iv.next541, %bb.w ] ; 3 uses
  %i.uy = shl nuw nsw i64 %indvars.iv540, 2       ; 3 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.uy ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.uy ; 2 uses
  %i.vb = load <4 x float>, ptr %i.uz, align 16, !tbaa !36 ; 2 uses
  %i.vc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uv, <4 x float> %i.vb, <4 x float> splat (float -1.000000e+00))
  %i.vd = fmul <4 x float> %i.vc, splat (float 5.000000e-01)
  %i.ve = fadd <4 x float> %i.vd, splat (float f0x4B400000)
  %i.vf = bitcast <4 x float> %i.ve to <4 x i32>
  %i.vg = and <4 x i32> %i.vf, splat (i32 8388607)
  %i.vh = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.vg, <4 x i32> splat (i32 4194304))
  %i.vi = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.vh, <4 x i32> splat (i32 7)) ; 2 uses
  %i.vj = trunc nuw nsw <4 x i32> %i.vi to <4 x i8>
  store <4 x i8> %i.vj, ptr %i.va, align 4, !tbaa !34
  %i.vk = shl nuw nsw <4 x i32> %i.vi, <i32 0, i32 3, i32 6, i32 9>
  %i.vl = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.vk)
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !47 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv540 ; 2 uses
  store i8 1, ptr %i.vp, align 1, !tbaa !86
  %i.vq = icmp slt i32 %i.vo, 0
  br i1 %i.vq, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.preheader421
  store i8 0, ptr %i.vp, align 1, !tbaa !86
  %i.vr = sext i32 %i.vo to i64
  %i.vs = sub nsw i64 0, %i.vr
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.vs
  %i.vu = getelementptr inbounds i8, ptr %i.vt, i64 -2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !57, !alias.scope !592 ; 2 uses
  %.not.i = icmp eq i16 %i.vv, 0
  br i1 %.not.i, label %bb.t, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.s
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.uy
  %i.vx = zext i16 %i.vv to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %.pre56.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !36, !alias.scope !594
  %.phi.trans.insert59.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vy = load <2 x float>, ptr %.phi.trans.insert59.i, align 8, !tbaa !36, !alias.scope !594
  %i.vz = load <4 x float>, ptr %i.vw, align 16, !tbaa !36, !alias.scope !595
  %i.wa = insertelement <4 x float> %i.vb, float %.pre56.i, i64 1
  %i.wb = shufflevector <2 x float> %i.vy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wc = shufflevector <4 x float> %i.wa, <4 x float> %i.wb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wd = fneg <4 x float> %i.wc
  br label %.preheader.i

bb.t:                                             ; preds = %bb.s
  store i64 %i.up, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3917, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #24, !noalias !597
  unreachable

bb.u:                                             ; preds = %.preheader.i
  %i.we = icmp sgt i32 %.140.i, -1
  br i1 %i.we, label %iq3_find_best_neighbour.exit, label %bb.v

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 3 uses
  %.03547.i = phi float [ f0x7F7FFFFF, %.preheader.preheader.i ], [ %.1.i, %.preheader.i ] ; 2 uses
  %.03945.i = phi i32 [ -1, %.preheader.preheader.i ], [ %.140.i, %.preheader.i ]
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %i.vu, i64 %indvars.iv.i
  %i.wg = load i16, ptr %i.wf, align 2, !tbaa !57, !alias.scope !592 ; 2 uses
  %i.wh = zext i16 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.wh
  %i.wj = load <4 x i8>, ptr %i.wi, align 1, !tbaa !34, !alias.scope !593
  %i.wk = sitofp <4 x i8> %i.wj to <4 x float>
  %i.wl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ux, <4 x float> %i.wk, <4 x float> %i.wd) ; 5 uses
  %i.wm = fmul <4 x float> %i.vz, %i.wl           ; 4 uses
  %i.wn = extractelement <4 x float> %i.wm, i64 0
  %i.wo = extractelement <4 x float> %i.wl, i64 0
  %i.wp = tail call float @llvm.fmuladd.f32(float %i.wn, float %i.wo, float 0.000000e+00)
  %i.wq = extractelement <4 x float> %i.wm, i64 1
  %i.wr = extractelement <4 x float> %i.wl, i64 1
  %i.ws = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wr, float %i.wp)
  %i.wt = extractelement <4 x float> %i.wm, i64 2
  %i.wu = extractelement <4 x float> %i.wl, i64 2
  %i.wv = tail call float @llvm.fmuladd.f32(float %i.wt, float %i.wu, float %i.ws)
  %i.ww = extractelement <4 x float> %i.wm, i64 3
end_hunk_0
begin_hunk_1_@iq1_find_best_neighbour2:bb.a
  %i.dh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36
  %i.dj = extractelement <8 x i16> %i.de, i64 1
  %i.dk = sext i16 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !36
  %i.dn = extractelement <8 x i16> %i.de, i64 2
  %i.do = sext i16 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36
  %i.dr = extractelement <8 x i16> %i.de, i64 3
  %i.ds = sext i16 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36
  %i.dv = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.dm, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.dq, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 3
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.dy, <4 x float> %i.da) ; 5 uses
  %i.ea = extractelement <4 x float> %i.dz, i64 0
  %i.eb = extractelement <4 x float> %i.dz, i64 1
  %i.ec = extractelement <4 x float> %i.dz, i64 2 ; 2 uses
  %i.ed = fmul float %.pre175, %i.ec
  %i.ee = extractelement <4 x float> %i.dz, i64 3
  %i.ef = extractelement <8 x i16> %i.de, i64 4
  %i.eg = sext i16 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !36
  %i.ej = extractelement <8 x i16> %i.de, i64 5
  %i.ek = sext i16 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !36
  %i.en = extractelement <8 x i16> %i.de, i64 6
  %i.eo = sext i16 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %5, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !36
  %i.er = extractelement <8 x i16> %i.de, i64 7
  %i.es = sext i16 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %5, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !36
  %i.ev = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.em, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.eq, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 3
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.ey, <4 x float> %i.da) ; 6 uses
  %i.fa = extractelement <4 x float> %i.ez, i64 0
  %i.fb = shufflevector <4 x float> %i.dz, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.fc = fmul <4 x float> %i.s, %i.fb            ; 4 uses
  %i.fd = extractelement <4 x float> %i.fc, i64 0
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ea, float 0.000000e+00)
  %i.ff = extractelement <4 x float> %i.fc, i64 1
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.eb, float %i.fe)
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ec, float %i.fg)
  %i.fi = extractelement <4 x float> %i.fc, i64 2
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.ee, float %i.fh)
  %i.fk = extractelement <4 x float> %i.fc, i64 3
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fa, float %i.fj)
  %i.fm = extractelement <4 x float> %i.ez, i64 1 ; 2 uses
  %i.fn = fmul float %.pre178, %i.fm
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fm, float %i.fl)
  %i.fp = extractelement <4 x float> %i.ez, i64 2
  %i.fq = extractelement <4 x float> %i.ez, i64 3
  %i.fr = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fs = fmul <2 x float> %i.i, %i.fr            ; 2 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.fp, float %i.fo)
  %i.fv = extractelement <2 x float> %i.fs, i64 1
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fq, float %i.fu) ; 2 uses
  %i.fx = fcmp olt float %i.fw, %.2128            ; 2 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv143 to i32
  %.397 = select i1 %i.fx, i32 %i.fy, i32 %.296127 ; 3 uses
  %.3 = select i1 %i.fx, float %i.fw, float %.2128
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, 2048
  br i1 %exitcond146.not, label %bb.d, label %.preheader, !llvm.loop !664

bb.d:                                             ; preds = %.preheader
  %i.fz = icmp slt i32 %.397, 0
  br i1 %i.fz, label %bb.e, label %.thread109

bb.e:                                             ; preds = %bb.d
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.ga = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.b) ; 0 uses
  %i.gb = load <2 x float>, ptr %.phi.trans.insert160, align 4, !tbaa !36 ; 2 uses
  %i.gc = load <2 x float>, ptr %.phi.trans.insert168, align 4, !tbaa !36 ; 2 uses
  %i.gd = load <2 x float>, ptr %i.o, align 4, !tbaa !36 ; 2 uses
  %i.ge = load <8 x float>, ptr %3, align 4, !tbaa !36
  %i.gf = load <2 x float>, ptr %2, align 4, !tbaa !36 ; 2 uses
  %i.gg = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gh = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gi = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gj = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv155 = phi i64 [ 1, %bb.e ], [ %indvars.iv.next156, %bb.f ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv155
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !57
  %i.gm = zext i16 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gm
  %i.go = load <8 x i8>, ptr %i.gn, align 1, !tbaa !34
  %i.gp = sext <8 x i8> %i.go to <8 x i16>
  %i.gq = add nsw <8 x i16> %i.gp, splat (i16 -1)
  %i.gr = sdiv <8 x i16> %i.gq, splat (i16 2)     ; 8 uses
  %i.gs = extractelement <8 x i16> %i.gr, i64 0
  %i.gt = sext i16 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !36 ; 2 uses
  %i.gw = extractelement <8 x i16> %i.gr, i64 1
  %i.gx = sext i16 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !36 ; 2 uses
  %i.ha = extractelement <8 x i16> %i.gr, i64 2
  %i.hb = sext i16 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !36 ; 2 uses
  %i.he = extractelement <8 x i16> %i.gr, i64 3
  %i.hf = sext i16 %i.he to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !36 ; 2 uses
  %i.hi = extractelement <8 x i16> %i.gr, i64 4
  %i.hj = sext i16 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !36 ; 2 uses
  %i.hm = extractelement <8 x i16> %i.gr, i64 5
  %i.hn = sext i16 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !36 ; 2 uses
  %i.hq = extractelement <8 x i16> %i.gr, i64 6
  %i.hr = sext i16 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !36 ; 2 uses
  %i.hu = extractelement <8 x i16> %i.gr, i64 7
  %i.hv = sext i16 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !36 ; 2 uses
  %i.hy = insertelement <8 x float> poison, float %i.gv, i64 0
  %i.hz = insertelement <8 x float> %i.hy, float %i.gz, i64 1
  %i.ia = insertelement <8 x float> %i.hz, float %i.hd, i64 2
  %i.ib = insertelement <8 x float> %i.ia, float %i.hh, i64 3
  %i.ic = insertelement <8 x float> %i.ib, float %i.hl, i64 4
  %i.id = insertelement <8 x float> %i.ic, float %i.hp, i64 5
  %i.ie = insertelement <8 x float> %i.id, float %i.ht, i64 6
  %i.if = insertelement <8 x float> %i.ie, float %i.hx, i64 7
  %i.ig = fmul <8 x float> %i.if, %i.ge           ; 8 uses
  %i.ih = shufflevector <8 x float> %i.ig, <8 x float> poison, <2 x i32> zeroinitializer
  %i.ii = insertelement <2 x float> %i.gf, float %i.gv, i64 1
  %i.ij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ii, <2 x float> zeroinitializer)
  %i.ik = shufflevector <8 x float> %i.ig, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.il = insertelement <2 x float> %i.gj, float %i.gz, i64 1
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.il, <2 x float> %i.ij)
  %i.in = shufflevector <8 x float> %i.ig, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.io = insertelement <2 x float> %i.gb, float %i.hd, i64 1
  %i.ip = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.io, <2 x float> %i.im)
  %i.iq = shufflevector <8 x float> %i.ig, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ir = insertelement <2 x float> %i.gi, float %i.hh, i64 1
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.ir, <2 x float> %i.ip)
  %i.it = shufflevector <8 x float> %i.ig, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.iu = insertelement <2 x float> %i.gc, float %i.hl, i64 1
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iu, <2 x float> %i.is)
  %i.iw = shufflevector <8 x float> %i.ig, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.ix = insertelement <2 x float> %i.gh, float %i.hp, i64 1
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.ix, <2 x float> %i.iv)
  %i.iz = shufflevector <8 x float> %i.ig, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.ja = insertelement <2 x float> %i.gd, float %i.ht, i64 1
  %i.jb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.ja, <2 x float> %i.iy)
  %i.jc = shufflevector <8 x float> %i.ig, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.jd = insertelement <2 x float> %i.gg, float %i.hx, i64 1
  %i.je = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.jd, <2 x float> %i.jb)
  %i.jf = fpext <2 x float> %i.je to <2 x double> ; 2 uses
  %i.jg = trunc nuw nsw i64 %indvars.iv155 to i32
  %i.jh = extractelement <2 x double> %i.jf, i64 0
  %i.ji = extractelement <2 x double> %i.jf, i64 1
  %i.jj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.jg, double noundef %i.jh, double noundef %i.ji) ; 0 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond159.not, label %bb.g, label %bb.f, !llvm.loop !665

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4494, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24
  unreachable

.thread109:                                       ; preds = %bb.c, %bb.d
  %.4108111 = phi i32 [ %.195, %bb.c ], [ %.397, %bb.d ] ; 2 uses
  %i.jk = zext nneg i32 %.4108111 to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jk
  %i.jm = load <8 x i8>, ptr %i.jl, align 1, !tbaa !34
  %i.jn = sext <8 x i8> %i.jm to <8 x i16>
  %i.jo = add nsw <8 x i16> %i.jn, splat (i16 -1)
  %i.jp = sdiv <8 x i16> %i.jo, splat (i16 2)
  %i.jq = trunc nsw <8 x i16> %i.jp to <8 x i8>
  store <8 x i8> %i.jq, ptr %6, align 1, !tbaa !34
  ret i32 %.4108111
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq1_m(ptr noalias nofree noundef readonly %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 6 uses
  %i.b = alloca [16 x float], align 16            ; 16 uses
  %i.c = alloca [16 x i8], align 16               ; 32 uses
  %i.d = alloca [32 x float], align 16            ; 35 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = and i64 %3, 255
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4947, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.h = ashr exact i64 %3, 8                     ; 4 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 19 uses
  %i.k = icmp sgt i64 %i.h, 0
  %.not573.i = icmp eq ptr %4, null               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %.phi.trans.insert852.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.phi.trans.insert854.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.phi.trans.insert856.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.phi.trans.insert858.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %.phi.trans.insert860.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.phi.trans.insert862.i = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.phi.trans.insert864.i = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.av = mul nsw i64 %i.h, 56
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %quantize_row_iq1_m_impl.exit.loopexit.us
  %.064.us = phi i64 [ %i.arm, %quantize_row_iq1_m_impl.exit.loopexit.us ], [ 0, %.lr.ph ]
  %.01563.us = phi ptr [ %i.arl, %quantize_row_iq1_m_impl.exit.loopexit.us ], [ %1, %.lr.ph ] ; 2 uses
  %.01662.us = phi ptr [ %i.ark, %quantize_row_iq1_m_impl.exit.loopexit.us ], [ %0, %.lr.ph ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 48), align 16, !tbaa !73, !noalias !689 ; 7 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 56), align 8, !tbaa !76, !noalias !689 ; 3 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 64), align 16, !tbaa !78, !noalias !689 ; 3 uses
  %.not.i.us = icmp eq ptr %i.aw, null
  br i1 %.not.i.us, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %.not570.i.us = icmp eq ptr %i.ax, null
  br i1 %.not570.i.us, label %.split66.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not571.i.us = icmp eq ptr %i.ay, null
  br i1 %.not571.i.us, label %.split68.us, label %.lr.ph704.i.us

.lr.ph704.i.us:                                   ; preds = %bb.e, %bb.au
  %indvars.iv834.i.us = phi i64 [ %indvars.iv.next835.i.us, %bb.au ], [ 0, %bb.e ] ; 3 uses
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %.01563.us, i64 %indvars.iv834.i.us ; 5 uses
  %i.ba = shl nuw nsw i64 %indvars.iv834.i.us, 8  ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.01662.us, i64 %i.ba ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.az, i8 0, i64 56, i1 false), !alias.scope !687
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph704.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph704.i.us ], [ %indvars.iv.next.i.us.3, %bb.f ] ; 5 uses
  %.0545591.i.us = phi float [ 0.000000e+00, %.lr.ph704.i.us ], [ %i.bq, %bb.f ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !36, !alias.scope !686 ; 2 uses
  %i.be = call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %.0545591.i.us)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !36, !alias.scope !686 ; 2 uses
  %i.bi = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.be)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !36, !alias.scope !686 ; 2 uses
  %i.bm = call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bi)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !36, !alias.scope !686 ; 2 uses
  %i.bq = call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bm) ; 2 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, 256
  br i1 %exitcond.not.i.us.3, label %bb.g, label %bb.f, !llvm.loop !670

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 3 uses
  %i.bt = fmul float %i.bq, 2.000000e+00
  %i.bu = fmul float %i.bt, 3.906250e-03          ; 32 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ba ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.ao, %bb.g
  %indvars.iv810.i.us = phi i64 [ 0, %bb.g ], [ %indvars.iv.next811.i.us, %bb.ao ] ; 10 uses
  %.0546689.i.us = phi float [ 0.000000e+00, %bb.g ], [ %.2548.i.us, %bb.ao ] ; 4 uses
  %i.bw = shl nuw nsw i64 %indvars.iv810.i.us, 4  ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bw ; 41 uses
  br i1 %.not573.i, label %.preheader587.preheader.i.us, label %.loopexit588.loopexit709.i.us

.loopexit588.loopexit709.i.us:                    ; preds = %bb.h
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %i.bz = load float, ptr %i.bx, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.bu)
  %i.cb = call float @sqrtf(float noundef %i.ca) #14, !noalias !690
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.ce = call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.bu)
  %i.cf = call float @sqrtf(float noundef %i.ce) #14, !noalias !690
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.ci = call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.bu)
  %i.cj = call float @sqrtf(float noundef %i.ci) #14, !noalias !690
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.cm = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.bu)
  %i.cn = call float @sqrtf(float noundef %i.cm) #14, !noalias !690
  %i.co = load <4 x float>, ptr %i.by, align 4, !tbaa !36, !alias.scope !688
  %i.cp = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.cf, i64 1
  %i.cr = insertelement <4 x float> %i.cq, float %i.cj, i64 2
  %i.cs = insertelement <4 x float> %i.cr, float %i.cn, i64 3
  %i.ct = fmul <4 x float> %i.co, %i.cs           ; 2 uses
  store <4 x float> %i.ct, ptr %i.b, align 16, !tbaa !36, !noalias !689
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.cx = call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.bu)
  %i.cy = call float @sqrtf(float noundef %i.cx) #14, !noalias !690
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.da = load float, ptr %i.cz, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.bu)
  %i.dc = call float @sqrtf(float noundef %i.db) #14, !noalias !690
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.de = load float, ptr %i.dd, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.df = call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.bu)
  %i.dg = call float @sqrtf(float noundef %i.df) #14, !noalias !690
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.dj = call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.bu)
  %i.dk = call float @sqrtf(float noundef %i.dj) #14, !noalias !690
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.dn = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.bu)
  %i.do = call float @sqrtf(float noundef %i.dn) #14, !noalias !690
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.dr = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.bu)
  %i.ds = call float @sqrtf(float noundef %i.dr) #14, !noalias !690
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.dv = call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.bu)
  %i.dw = call float @sqrtf(float noundef %i.dv) #14, !noalias !690
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bx, i64 44
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.dz = call float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.bu)
  %i.ea = call float @sqrtf(float noundef %i.dz) #14, !noalias !690
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.ed = call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.bu)
  %i.ee = call float @sqrtf(float noundef %i.ed) #14, !noalias !690
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bx, i64 52
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.eh = call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.bu)
  %i.ei = call float @sqrtf(float noundef %i.eh) #14, !noalias !690
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.bu)
  %i.em = call float @sqrtf(float noundef %i.el) #14, !noalias !690
  %i.en = getelementptr inbounds nuw i8, ptr %i.bx, i64 60
  %i.eo = load float, ptr %i.en, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.bu)
  %i.eq = call float @sqrtf(float noundef %i.ep) #14, !noalias !690
  %i.er = load <12 x float>, ptr %i.cu, align 4, !tbaa !36, !alias.scope !688
  %i.es = insertelement <12 x float> poison, float %i.cy, i64 0
  %i.et = insertelement <12 x float> %i.es, float %i.dc, i64 1
  %i.eu = insertelement <12 x float> %i.et, float %i.dg, i64 2
  %i.ev = insertelement <12 x float> %i.eu, float %i.dk, i64 3
  %i.ew = insertelement <12 x float> %i.ev, float %i.do, i64 4
  %i.ex = insertelement <12 x float> %i.ew, float %i.ds, i64 5
  %i.ey = insertelement <12 x float> %i.ex, float %i.dw, i64 6
  %i.ez = insertelement <12 x float> %i.ey, float %i.ea, i64 7
  %i.fa = insertelement <12 x float> %i.ez, float %i.ee, i64 8
  %i.fb = insertelement <12 x float> %i.fa, float %i.ei, i64 9
  %i.fc = insertelement <12 x float> %i.fb, float %i.em, i64 10
  %i.fd = insertelement <12 x float> %i.fc, float %i.eq, i64 11
  %i.fe = fmul <12 x float> %i.er, %i.fd          ; 4 uses
  %i.ff = shufflevector <12 x float> %i.fe, <12 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.ff, ptr %i.l, align 16, !tbaa !36, !noalias !689
  %i.fg = shufflevector <12 x float> %i.fe, <12 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.fg, ptr %i.m, align 16, !tbaa !36, !noalias !689
  %i.fh = shufflevector <12 x float> %i.fe, <12 x float> poison, <2 x i32> <i32 8, i32 9>
  store <2 x float> %i.fh, ptr %i.n, align 16, !tbaa !36, !noalias !689
  br label %.loopexit588.i.us

.preheader587.preheader.i.us:                     ; preds = %bb.h
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.fl = load <4 x float>, ptr %i.bx, align 4, !tbaa !36, !alias.scope !686 ; 3 uses
  %i.fm = load float, ptr %i.fi, align 4, !tbaa !36, !alias.scope !686
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !36, !alias.scope !686
  %i.fo = load float, ptr %i.fk, align 4, !tbaa !36, !alias.scope !686
  %i.fp = fmul <4 x float> %i.fl, %i.fl           ; 2 uses
  store <4 x float> %i.fp, ptr %i.b, align 16, !tbaa !36, !noalias !689
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bx, i64 44
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bx, i64 52
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bx, i64 60
  %i.ga = load <12 x float>, ptr %i.fq, align 4, !tbaa !36, !alias.scope !686 ; 5 uses
  %i.gb = load float, ptr %i.fr, align 4, !tbaa !36, !alias.scope !686
  %i.gc = load float, ptr %i.fs, align 4, !tbaa !36, !alias.scope !686
  %i.gd = load float, ptr %i.ft, align 4, !tbaa !36, !alias.scope !686
  %i.ge = load float, ptr %i.fu, align 4, !tbaa !36, !alias.scope !686
  %i.gf = load float, ptr %i.fv, align 4, !tbaa !36, !alias.scope !686
  %i.gg = load float, ptr %i.fw, align 4, !tbaa !36, !alias.scope !686
  %i.gh = load float, ptr %i.fx, align 4, !tbaa !36, !alias.scope !686
  %i.gi = load float, ptr %i.fy, align 4, !tbaa !36, !alias.scope !686
  %i.gj = load float, ptr %i.fz, align 4, !tbaa !36, !alias.scope !686
  %i.gk = fmul <12 x float> %i.ga, %i.ga          ; 4 uses
  %i.gl = shufflevector <12 x float> %i.gk, <12 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.gl, ptr %i.l, align 16, !tbaa !36, !noalias !689
  %i.gm = shufflevector <12 x float> %i.gk, <12 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
end_hunk_1
begin_hunk_2_@quantize_iq1_m:bb.a
.lr.ph673.preheader.i.us:                         ; preds = %.preheader585.i.us
  %wide.trip.count.i.us = zext nneg i32 %.3528.3.i.us to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.us, 3    ; 3 uses
  %i.qj = icmp ult i32 %.3528.3.i.us, 4
  br i1 %i.qj, label %.lr.ph673.i.us.epil.preheader, label %.lr.ph673.preheader.i.us.new

.lr.ph673.preheader.i.us.new:                     ; preds = %.lr.ph673.preheader.i.us
  %unroll_iter = and i64 %wide.trip.count.i.us, 2147483644
  br label %.lr.ph673.i.us

.lr.ph673.i.us:                                   ; preds = %.lr.ph673.i.us, %.lr.ph673.preheader.i.us.new
  %indvars.iv782.i.us = phi i64 [ 0, %.lr.ph673.preheader.i.us.new ], [ %indvars.iv.next783.i.us.3, %.lr.ph673.i.us ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph673.preheader.i.us.new ], [ %niter.next.3, %.lr.ph673.i.us ]
  %.idx884.i.us = shl nuw nsw i64 %indvars.iv782.i.us, 3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx884.i.us
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !47, !noalias !689
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.c, i64 %i.qm
  store i8 0, ptr %i.qn, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next783.i.us = shl i64 %indvars.iv782.i.us, 3
  %i.qo = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next783.i.us
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !47, !noalias !689
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.c, i64 %i.qr
  store i8 0, ptr %i.qs, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next783.i.us.1 = shl i64 %indvars.iv782.i.us, 3
  %i.qt = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next783.i.us.1
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !47, !noalias !689
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds i8, ptr %i.c, i64 %i.qw
  store i8 0, ptr %i.qx, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next783.i.us.2 = shl i64 %indvars.iv782.i.us, 3
  %i.qy = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next783.i.us.2
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !47, !noalias !689
  %i.rb = sext i32 %i.ra to i64
  %i.rc = getelementptr inbounds i8, ptr %i.c, i64 %i.rb
  store i8 0, ptr %i.rc, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next783.i.us.3 = add nuw nsw i64 %indvars.iv782.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader584.i.us.loopexit.unr-lcssa, label %.lr.ph673.i.us, !llvm.loop !676

.preheader584.i.us.loopexit.unr-lcssa:            ; preds = %.lr.ph673.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader584.i.us, label %.lr.ph673.i.us.epil.preheader

.lr.ph673.i.us.epil.preheader:                    ; preds = %.preheader584.i.us.loopexit.unr-lcssa, %.lr.ph673.preheader.i.us
  %indvars.iv782.i.us.epil.init = phi i64 [ 0, %.lr.ph673.preheader.i.us ], [ %indvars.iv.next783.i.us.3, %.preheader584.i.us.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %.lr.ph673.i.us.epil

.lr.ph673.i.us.epil:                              ; preds = %.lr.ph673.i.us.epil, %.lr.ph673.i.us.epil.preheader
  %indvars.iv782.i.us.epil = phi i64 [ %indvars.iv782.i.us.epil.init, %.lr.ph673.i.us.epil.preheader ], [ %indvars.iv.next783.i.us.epil, %.lr.ph673.i.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph673.i.us.epil.preheader ], [ %epil.iter.next, %.lr.ph673.i.us.epil ]
  %.idx884.i.us.epil = shl nuw nsw i64 %indvars.iv782.i.us.epil, 3
  %i.rd = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx884.i.us.epil
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !47, !noalias !689
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds i8, ptr %i.c, i64 %i.rf
  store i8 0, ptr %i.rg, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next783.i.us.epil = add nuw nsw i64 %indvars.iv782.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader584.i.us, label %.lr.ph673.i.us.epil, !llvm.loop !677

.preheader584.i.us:                               ; preds = %.preheader584.i.us.loopexit.unr-lcssa, %.lr.ph673.i.us.epil, %.preheader585.i.us
  %i.rh = icmp samesign ult i32 %.3528.3.i.us, %.3524.3.i.us
  br i1 %i.rh, label %.lr.ph675.preheader.i.us, label %.preheader583.i.us

.lr.ph675.preheader.i.us:                         ; preds = %.preheader584.i.us
  %i.ri = zext nneg i32 %.3528.3.i.us to i64      ; 2 uses
  %i.rj = sub nuw nsw i32 %.3524.3.i.us, %.3528.3.i.us
  %xtraiter248 = and i32 %i.rj, 3                 ; 2 uses
  %lcmp.mod249.not = icmp eq i32 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.lr.ph675.i.us.prol.loopexit, label %.lr.ph675.i.us.prol

.lr.ph675.i.us.prol:                              ; preds = %.lr.ph675.preheader.i.us, %.lr.ph675.i.us.prol
  %indvars.iv787.i.us.prol = phi i64 [ %indvars.iv.next788.i.us.prol, %.lr.ph675.i.us.prol ], [ %i.ri, %.lr.ph675.preheader.i.us ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph675.i.us.prol ], [ 0, %.lr.ph675.preheader.i.us ]
  %.idx885.i.us.prol = shl nuw nsw i64 %indvars.iv787.i.us.prol, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx885.i.us.prol
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !47, !noalias !689
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds i8, ptr %i.c, i64 %i.rm
  store i8 1, ptr %i.rn, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next788.i.us.prol = add nuw nsw i64 %indvars.iv787.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter248
  br i1 %prol.iter.cmp.not, label %.lr.ph675.i.us.prol.loopexit, label %.lr.ph675.i.us.prol, !llvm.loop !678

.lr.ph675.i.us.prol.loopexit:                     ; preds = %.lr.ph675.i.us.prol, %.lr.ph675.preheader.i.us
  %indvars.iv787.i.us.unr = phi i64 [ %i.ri, %.lr.ph675.preheader.i.us ], [ %indvars.iv.next788.i.us.prol, %.lr.ph675.i.us.prol ]
  %i.ro = sub nsw i32 %.3528.3.i.us, %.3524.3.i.us
  %i.rp = icmp ugt i32 %i.ro, -4
  br i1 %i.rp, label %.preheader583.i.us, label %.lr.ph675.i.us

.lr.ph675.i.us:                                   ; preds = %.lr.ph675.i.us.prol.loopexit, %.lr.ph675.i.us
  %indvars.iv787.i.us = phi i64 [ %indvars.iv.next788.i.us.3, %.lr.ph675.i.us ], [ %indvars.iv787.i.us.unr, %.lr.ph675.i.us.prol.loopexit ] ; 5 uses
  %.idx885.i.us = shl nuw nsw i64 %indvars.iv787.i.us, 3
  %i.rq = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx885.i.us
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !47, !noalias !689
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds i8, ptr %i.c, i64 %i.rs
  store i8 1, ptr %i.rt, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next788.i.us = shl i64 %indvars.iv787.i.us, 3
  %i.ru = getelementptr i8, ptr %i.j, i64 %indvars.iv.next788.i.us
  %i.rv = getelementptr i8, ptr %i.ru, i64 8
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !47, !noalias !689
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds i8, ptr %i.c, i64 %i.rx
  store i8 1, ptr %i.ry, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next788.i.us.1 = shl i64 %indvars.iv787.i.us, 3
  %i.rz = getelementptr i8, ptr %i.j, i64 %indvars.iv.next788.i.us.1
  %i.sa = getelementptr i8, ptr %i.rz, i64 16
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !47, !noalias !689
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds i8, ptr %i.c, i64 %i.sc
  store i8 1, ptr %i.sd, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next788.i.us.2 = shl i64 %indvars.iv787.i.us, 3
  %i.se = getelementptr i8, ptr %i.j, i64 %indvars.iv.next788.i.us.2
  %i.sf = getelementptr i8, ptr %i.se, i64 24
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !47, !noalias !689
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds i8, ptr %i.c, i64 %i.sh
  store i8 1, ptr %i.si, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next788.i.us.3 = add nuw nsw i64 %indvars.iv787.i.us, 4 ; 2 uses
  %i.sj = trunc nuw i64 %indvars.iv.next788.i.us.3 to i32
  %i.sk = icmp sgt i32 %.3524.3.i.us, %i.sj
  br i1 %i.sk, label %.lr.ph675.i.us, label %.preheader583.i.us, !llvm.loop !679

.preheader583.i.us:                               ; preds = %.lr.ph675.i.us.prol.loopexit, %.lr.ph675.i.us, %.preheader584.i.us
  %i.sl = icmp samesign ult i32 %.3524.3.i.us, 16
  br i1 %i.sl, label %.lr.ph677.preheader.i.us, label %._crit_edge.i.us

.lr.ph677.preheader.i.us:                         ; preds = %.preheader583.i.us
  %i.sm = zext nneg i32 %.3524.3.i.us to i64      ; 2 uses
  %i.sn = sub nsw i32 0, %.3524.3.i.us
  %xtraiter251 = and i32 %i.sn, 3                 ; 2 uses
  %lcmp.mod252.not = icmp eq i32 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.lr.ph677.i.us.prol.loopexit, label %.lr.ph677.i.us.prol

.lr.ph677.i.us.prol:                              ; preds = %.lr.ph677.preheader.i.us, %.lr.ph677.i.us.prol
  %indvars.iv790.i.us.prol = phi i64 [ %indvars.iv.next791.i.us.prol, %.lr.ph677.i.us.prol ], [ %i.sm, %.lr.ph677.preheader.i.us ] ; 2 uses
  %prol.iter253 = phi i32 [ %prol.iter253.next, %.lr.ph677.i.us.prol ], [ 0, %.lr.ph677.preheader.i.us ]
  %.idx886.i.us.prol = shl nuw nsw i64 %indvars.iv790.i.us.prol, 3
  %i.so = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx886.i.us.prol
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !47, !noalias !689
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds i8, ptr %i.c, i64 %i.sq
  store i8 2, ptr %i.sr, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next791.i.us.prol = add nuw nsw i64 %indvars.iv790.i.us.prol, 1 ; 2 uses
  %prol.iter253.next = add i32 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i32 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %.lr.ph677.i.us.prol.loopexit, label %.lr.ph677.i.us.prol, !llvm.loop !680

.lr.ph677.i.us.prol.loopexit:                     ; preds = %.lr.ph677.i.us.prol, %.lr.ph677.preheader.i.us
  %indvars.iv790.i.us.unr = phi i64 [ %i.sm, %.lr.ph677.preheader.i.us ], [ %indvars.iv.next791.i.us.prol, %.lr.ph677.i.us.prol ]
  %i.ss = icmp ugt i32 %.3524.3.i.us, 12
  br i1 %i.ss, label %._crit_edge.i.us, label %.lr.ph677.i.us

.lr.ph677.i.us:                                   ; preds = %.lr.ph677.i.us.prol.loopexit, %.lr.ph677.i.us
  %indvars.iv790.i.us = phi i64 [ %indvars.iv.next791.i.us.3, %.lr.ph677.i.us ], [ %indvars.iv790.i.us.unr, %.lr.ph677.i.us.prol.loopexit ] ; 5 uses
  %.idx886.i.us = shl nuw nsw i64 %indvars.iv790.i.us, 3
  %i.st = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx886.i.us
  %i.su = load i32, ptr %i.st, align 4, !tbaa !47, !noalias !689
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds i8, ptr %i.c, i64 %i.sv
  store i8 2, ptr %i.sw, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next791.i.us = shl i64 %indvars.iv790.i.us, 3
  %i.sx = getelementptr i8, ptr %i.j, i64 %indvars.iv.next791.i.us
  %i.sy = getelementptr i8, ptr %i.sx, i64 8
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !47, !noalias !689
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %i.c, i64 %i.ta
  store i8 2, ptr %i.tb, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next791.i.us.1 = shl i64 %indvars.iv790.i.us, 3
  %i.tc = getelementptr i8, ptr %i.j, i64 %indvars.iv.next791.i.us.1
  %i.td = getelementptr i8, ptr %i.tc, i64 16
  %i.te = load i32, ptr %i.td, align 4, !tbaa !47, !noalias !689
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.c, i64 %i.tf
  store i8 2, ptr %i.tg, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next791.i.us.2 = add nuw nsw i64 %indvars.iv790.i.us, 3 ; 2 uses
  %.idx886.i.us.3 = shl nuw nsw i64 %indvars.iv.next791.i.us.2, 3
  %i.th = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx886.i.us.3
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !47, !noalias !689
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds i8, ptr %i.c, i64 %i.tj
  store i8 2, ptr %i.tk, align 1, !tbaa !34, !noalias !689
  %indvars.iv.next791.i.us.3 = add nuw nsw i64 %indvars.iv790.i.us, 4
  %i.tl = trunc nuw i64 %indvars.iv.next791.i.us.2 to i32
  %i.tm = icmp slt i32 %i.tl, 15
  br i1 %i.tm, label %.lr.ph677.i.us, label %._crit_edge.i.us, !llvm.loop !681

._crit_edge.i.us:                                 ; preds = %.lr.ph677.i.us.prol.loopexit, %.lr.ph677.i.us, %.preheader583.i.us
  %i.tn = fcmp olt float %.3532.3.i.us, 0.000000e+00
  br i1 %i.tn, label %.preheader582.preheader.i.us, label %._crit_edge._crit_edge.i.us

._crit_edge._crit_edge.i.us:                      ; preds = %._crit_edge.i.us
  %5 = load <4 x i8>, ptr %i.c, align 16, !tbaa !34, !noalias !689
  %i.to = load <4 x i8>, ptr %.phi.trans.insert858.i, align 4, !tbaa !34, !noalias !689
  br label %bb.ag

.preheader582.preheader.i.us:                     ; preds = %._crit_edge.i.us
  %.pre851.i.us = load i8, ptr %i.c, align 16, !tbaa !34, !noalias !689
  %i.tp = sub i8 2, %.pre851.i.us                 ; 2 uses
  store i8 %i.tp, ptr %i.c, align 16, !tbaa !34, !noalias !689
  %i.tq = load i8, ptr %.phi.trans.insert852.i, align 1, !tbaa !34, !noalias !689
  %i.tr = sub i8 2, %i.tq                         ; 2 uses
  store i8 %i.tr, ptr %.phi.trans.insert852.i, align 1, !tbaa !34, !noalias !689
  %i.ts = load <2 x i8>, ptr %.phi.trans.insert854.i, align 2, !tbaa !34, !noalias !689
  %i.tt = sub <2 x i8> splat (i8 2), %i.ts        ; 3 uses
  %i.tu = extractelement <2 x i8> %i.tt, i64 0
  store i8 %i.tu, ptr %.phi.trans.insert854.i, align 2, !tbaa !34, !noalias !689
  %i.tv = extractelement <2 x i8> %i.tt, i64 1
  store i8 %i.tv, ptr %.phi.trans.insert856.i, align 1, !tbaa !34, !noalias !689
  %i.tw = load <4 x i8>, ptr %.phi.trans.insert858.i, align 4, !tbaa !34, !noalias !689
  %i.tx = sub <4 x i8> splat (i8 2), %i.tw        ; 5 uses
  %6 = extractelement <4 x i8> %i.tx, i64 0
  store i8 %6, ptr %.phi.trans.insert858.i, align 4, !tbaa !34, !noalias !689
  %7 = extractelement <4 x i8> %i.tx, i64 1
  store i8 %7, ptr %.phi.trans.insert860.i, align 1, !tbaa !34, !noalias !689
  %8 = extractelement <4 x i8> %i.tx, i64 2
  store i8 %8, ptr %.phi.trans.insert862.i, align 2, !tbaa !34, !noalias !689
  %9 = extractelement <4 x i8> %i.tx, i64 3
  store i8 %9, ptr %.phi.trans.insert864.i, align 1, !tbaa !34, !noalias !689
  %i.ty = load <8 x i8>, ptr %i.at, align 8, !tbaa !34, !noalias !689
  %i.tz = sub <8 x i8> splat (i8 2), %i.ty
  store <8 x i8> %i.tz, ptr %i.at, align 8, !tbaa !34, !noalias !689
  %i.ua = fneg float %.3532.3.i.us
  %i.ub = icmp eq i32 %.3.3.i.us, 0
  %i.uc = icmp eq i32 %.3.3.i.us, 1
  %i.ud = icmp eq i32 %.3.3.i.us, 2
  %i.ue = zext i1 %i.ud to i32
  %i.uf = select i1 %i.uc, i32 2, i32 %i.ue
  %i.ug = select i1 %i.ub, i32 3, i32 %i.uf
  %10 = insertelement <4 x i8> poison, i8 %i.tp, i64 0
  %11 = insertelement <4 x i8> %10, i8 %i.tr, i64 1
  %12 = shufflevector <2 x i8> %i.tt, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x i8> %11, <4 x i8> %12, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader582.preheader.i.us, %._crit_edge._crit_edge.i.us
  %.4533.i.us = phi float [ %i.ua, %.preheader582.preheader.i.us ], [ %.3532.3.i.us, %._crit_edge._crit_edge.i.us ] ; 4 uses
  %.4.i.us = phi i32 [ %i.ug, %.preheader582.preheader.i.us ], [ %.3.3.i.us, %._crit_edge._crit_edge.i.us ] ; 3 uses
  %i.uh = phi <4 x i8> [ %13, %.preheader582.preheader.i.us ], [ %5, %._crit_edge._crit_edge.i.us ]
  %14 = phi <4 x i8> [ %i.tx, %.preheader582.preheader.i.us ], [ %i.to, %._crit_edge._crit_edge.i.us ]
  %i.ui = and i32 %.4.i.us, 1
  %i.uj = icmp eq i32 %i.ui, 0
  %i.uk = select i1 %i.uj, ptr @__const.quantize_row_iq1_m_impl.x_p, ptr @__const.quantize_row_iq1_m_impl.x_m ; 9 uses
  %i.ul = icmp samesign ult i32 %.4.i.us, 2
  %i.um = select i1 %i.ul, ptr @__const.quantize_row_iq1_m_impl.x_p, ptr @__const.quantize_row_iq1_m_impl.x_m ; 9 uses
  %i.un = sext <4 x i8> %i.uh to <4 x i16>
  %i.uo = zext <4 x i8> %14 to <4 x i16>
  %i.up = shufflevector <4 x i16> %i.un, <4 x i16> %i.uo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uq = shl <8 x i16> %i.up, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.ur = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.uq)
  %i.us = zext i16 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !47, !noalias !690 ; 3 uses
  %i.uv = icmp sgt i32 %i.uu, -1                  ; 2 uses
  br i1 %i.uv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.uw = sext i32 %i.uu to i64
  %i.ux = sub nsw i64 0, %i.uw
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ux
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -2
  %i.va = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.uz, ptr noundef %i.aw, ptr noundef nonnull readonly %i.bx, ptr noundef nonnull %i.b, float noundef %.4533.i.us, ptr noundef %i.um, ptr noundef nonnull %i.c)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0502.i.us = phi i32 [ %i.va, %bb.ah ], [ %i.uu, %bb.ag ] ; 3 uses
  %i.vb = trunc i32 %.0502.i.us to i16
  %i.vc = load <4 x i8>, ptr %i.at, align 8, !tbaa !34, !noalias !689
  %i.vd = sext <4 x i8> %i.vc to <4 x i16>
  %i.ve = load <4 x i8>, ptr %i.au, align 4, !tbaa !34, !noalias !689
  %i.vf = zext <4 x i8> %i.ve to <4 x i16>
  %i.vg = shufflevector <4 x i16> %i.vd, <4 x i16> %i.vf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vh = shl <8 x i16> %i.vg, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.vi = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.vh)
  %i.vj = zext i16 %i.vi to i64
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.vj
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !47, !noalias !690 ; 3 uses
  %i.vm = icmp slt i32 %i.vl, 0
  br i1 %i.vm, label %.thread.i.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.vn = trunc i32 %i.vl to i16                  ; 2 uses
  br i1 %i.uv, label %bb.ak, label %.preheader581.i.us

.thread.i.us:                                     ; preds = %bb.ai
  %i.vo = sext i32 %i.vl to i64
  %i.vp = sub nsw i64 0, %i.vo
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.vp
  %i.vr = getelementptr inbounds i8, ptr %i.vq, i64 -2
  %i.vs = call fastcc i32 @iq1_find_best_neighbour2(ptr noundef %i.vr, ptr noundef %i.aw, ptr noundef nonnull readonly %i.ib, ptr noundef %i.m, float noundef %.4533.i.us, ptr noundef %i.uk, ptr noundef %i.at)
  %i.vt = trunc i32 %i.vs to i16
  br label %.preheader581.i.us

.preheader581.i.us:                               ; preds = %.thread.i.us, %bb.aj
  %.sroa.5.0.us = phi i16 [ %i.vt, %.thread.i.us ], [ %i.vn, %bb.aj ] ; 2 uses
  %.mask.us = and i32 %.0502.i.us, 65535
  %i.vu = zext nneg i32 %.mask.us to i64
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.vu
  %i.vw = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.vx = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.vy = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.vz = insertelement <2 x float> poison, float %i.he, i64 0
  %i.wa = zext i16 %.sroa.5.0.us to i64
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.wa
  %i.wc = load <8 x i8>, ptr %i.vv, align 1, !tbaa !34, !noalias !690
  %i.wd = load <8 x i8>, ptr %i.wb, align 1, !tbaa !34, !noalias !690
  %i.we = shufflevector <8 x i8> %i.wc, <8 x i8> %i.wd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wf = sext <16 x i8> %i.we to <16 x i16>
  %i.wg = add nsw <16 x i16> %i.wf, splat (i16 -1)
  %i.wh = sdiv <16 x i16> %i.wg, splat (i16 2)    ; 16 uses
  %i.wi = extractelement <16 x i16> %i.wh, i64 0
  %i.wj = sext i16 %i.wi to i64
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.wj
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.wm = extractelement <16 x i16> %i.wh, i64 1
  %i.wn = sext i16 %i.wm to i64
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.wn
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.wq = extractelement <16 x i16> %i.wh, i64 2
  %i.wr = sext i16 %i.wq to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.wr
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.wu = extractelement <16 x i16> %i.wh, i64 3
  %i.wv = sext i16 %i.wu to i64
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.wv
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.wy = insertelement <4 x float> poison, float %i.wl, i64 0
  %i.wz = insertelement <4 x float> %i.wy, float %i.wp, i64 1
  %i.xa = insertelement <4 x float> %i.wz, float %i.wt, i64 2
  %i.xb = insertelement <4 x float> %i.xa, float %i.wx, i64 3
  %i.xc = fmul <4 x float> %i.hj, %i.xb           ; 4 uses
  %i.xd = shufflevector <4 x float> %i.xc, <4 x float> poison, <2 x i32> zeroinitializer
  %i.xe = insertelement <2 x float> %i.vw, float %i.wl, i64 1
  %i.xf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xd, <2 x float> %i.xe, <2 x float> zeroinitializer)
  %i.xg = shufflevector <4 x float> %i.xc, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xh = insertelement <2 x float> %i.vx, float %i.wp, i64 1
  %i.xi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xg, <2 x float> %i.xh, <2 x float> %i.xf)
  %i.xj = shufflevector <4 x float> %i.xc, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.xk = insertelement <2 x float> %i.vy, float %i.wt, i64 1
  %i.xl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xj, <2 x float> %i.xk, <2 x float> %i.xi)
  %i.xm = shufflevector <4 x float> %i.xc, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.xn = insertelement <2 x float> %i.vz, float %i.wx, i64 1
  %i.xo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xm, <2 x float> %i.xn, <2 x float> %i.xl)
  %i.xp = extractelement <16 x i16> %i.wh, i64 4
  %i.xq = sext i16 %i.xp to i64
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.xq
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.xt = extractelement <16 x i16> %i.wh, i64 5
  %i.xu = sext i16 %i.xt to i64
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.xu
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.xx = extractelement <16 x i16> %i.wh, i64 6
  %i.xy = sext i16 %i.xx to i64
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.xy
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.yb = extractelement <16 x i16> %i.wh, i64 7
  %i.yc = sext i16 %i.yb to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.yc
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.yf = extractelement <16 x i16> %i.wh, i64 8
  %i.yg = sext i16 %i.yf to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.yg
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.yj = extractelement <16 x i16> %i.wh, i64 9
  %i.yk = sext i16 %i.yj to i64
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.yk
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.yn = extractelement <16 x i16> %i.wh, i64 10
  %i.yo = sext i16 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.yo
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.yr = extractelement <16 x i16> %i.wh, i64 11
  %i.ys = sext i16 %i.yr to i64
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.ys
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.yv = extractelement <16 x i16> %i.wh, i64 12
  %i.yw = sext i16 %i.yv to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.yw
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.yz = extractelement <16 x i16> %i.wh, i64 13
  %i.za = sext i16 %i.yz to i64
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.za
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.zd = extractelement <16 x i16> %i.wh, i64 14
  %i.ze = sext i16 %i.zd to i64
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.ze
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.zh = extractelement <16 x i16> %i.wh, i64 15
  %i.zi = sext i16 %i.zh to i64
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.zi
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !36, !noalias !689 ; 2 uses
  %i.zl = insertelement <12 x float> poison, float %i.zk, i64 0
  %i.zm = insertelement <12 x float> %i.zl, float %i.zg, i64 1
  %i.zn = insertelement <12 x float> %i.zm, float %i.zc, i64 2
  %i.zo = insertelement <12 x float> %i.zn, float %i.yy, i64 3
  %i.zp = insertelement <12 x float> %i.zo, float %i.yu, i64 4
  %i.zq = insertelement <12 x float> %i.zp, float %i.yq, i64 5
  %i.zr = insertelement <12 x float> %i.zq, float %i.ym, i64 6
  %i.zs = insertelement <12 x float> %i.zr, float %i.yi, i64 7
  %i.zt = insertelement <12 x float> %i.zs, float %i.ye, i64 8
  %i.zu = insertelement <12 x float> %i.zt, float %i.ya, i64 9
  %i.zv = insertelement <12 x float> %i.zu, float %i.xw, i64 10
  %i.zw = insertelement <12 x float> %i.zv, float %i.xs, i64 11
  %i.zx = fmul <12 x float> %i.hk, %i.zw          ; 12 uses
  %i.zy = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 11, i32 11>
  %i.zz = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.aaa = insertelement <2 x float> %i.zz, float %i.xs, i64 1
  %i.aab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %i.aaa, <2 x float> %i.xo)
  %i.aac = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 10, i32 10>
  %i.aad = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.aae = insertelement <2 x float> %i.aad, float %i.xw, i64 1
  %i.aaf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.aae, <2 x float> %i.aab)
  %i.aag = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 9, i32 9>
  %i.aah = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.aai = insertelement <2 x float> %i.aah, float %i.ya, i64 1
  %i.aaj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aag, <2 x float> %i.aai, <2 x float> %i.aaf)
  %i.aak = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 8, i32 8>
  %i.aal = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.aam = insertelement <2 x float> %i.aal, float %i.ye, i64 1
  %i.aan = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aak, <2 x float> %i.aam, <2 x float> %i.aaj)
  %i.aao = load <2 x float>, ptr %i.ib, align 4, !tbaa !36, !alias.scope !686 ; 2 uses
  %i.aap = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.aaq = insertelement <2 x float> %i.aao, float %i.yi, i64 1
  %i.aar = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aap, <2 x float> %i.aaq, <2 x float> %i.aan)
  %i.aas = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.aat = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aau = insertelement <2 x float> %i.aat, float %i.ym, i64 1
  %i.aav = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aas, <2 x float> %i.aau, <2 x float> %i.aar)
  %i.aaw = load <2 x float>, ptr %i.ig, align 4, !tbaa !36, !alias.scope !686 ; 2 uses
  %i.aax = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.aay = insertelement <2 x float> %i.aaw, float %i.yq, i64 1
  %i.aaz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aax, <2 x float> %i.aay, <2 x float> %i.aav)
  %i.aba = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.abb = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abc = insertelement <2 x float> %i.abb, float %i.yu, i64 1
  %i.abd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aba, <2 x float> %i.abc, <2 x float> %i.aaz)
  %i.abe = load <2 x float>, ptr %i.il, align 4, !tbaa !36, !alias.scope !686 ; 2 uses
  %i.abf = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.abg = insertelement <2 x float> %i.abe, float %i.yy, i64 1
  %i.abh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abf, <2 x float> %i.abg, <2 x float> %i.abd)
  %i.abi = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.abj = shufflevector <2 x float> %i.abe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abk = insertelement <2 x float> %i.abj, float %i.zc, i64 1
  %i.abl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abi, <2 x float> %i.abk, <2 x float> %i.abh)
  %i.abm = load <2 x float>, ptr %i.iq, align 4, !tbaa !36, !alias.scope !686 ; 2 uses
  %i.abn = shufflevector <12 x float> %i.zx, <12 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abo = insertelement <2 x float> %i.abm, float %i.zg, i64 1
end_hunk_2
