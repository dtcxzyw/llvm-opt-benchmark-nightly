Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/crc32c?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@crc32c_init_hw
define internal void @crc32c_init_hw() #6 {
bb.a:
  tail call fastcc void @crc32c_zeros(ptr noundef nonnull @crc32c_long, i64 noundef 8192)
  tail call fastcc void @crc32c_zeros(ptr noundef nonnull @crc32c_short, i64 noundef 256)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @crc32c_zeros(ptr nofree noundef writeonly captures(none) %0, i64 noundef range(i64 256, 8193) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 17 uses
  %i.b = alloca [32 x i32], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store <4 x i32> <i32 -2097792136, i32 1, i32 2, i32 4>, ptr %i.a, align 16, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> <i32 8, i32 16, i32 32, i32 64>, ptr %i.c, align 16, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> <i32 128, i32 256, i32 512, i32 1024>, ptr %i.d, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> <i32 2048, i32 4096, i32 8192, i32 16384>, ptr %i.e, align 16, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i32> <i32 32768, i32 65536, i32 131072, i32 262144>, ptr %i.f, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> <i32 524288, i32 1048576, i32 2097152, i32 4194304>, ptr %i.g, align 16, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i32> <i32 8388608, i32 16777216, i32 33554432, i32 67108864>, ptr %i.h, align 16, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> <i32 134217728, i32 268435456, i32 536870912, i32 1073741824>, ptr %i.i, align 16, !tbaa !13
  br label %.preheader66.i

.preheader66.i:                                   ; preds = %gf2_matrix_times.exit.i.i, %bb.a
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %gf2_matrix_times.exit.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13   ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i.i.i, label %gf2_matrix_times.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader66.i, %bb.c
  %.012.i.i.i = phi i32 [ %.1.i.i.i, %bb.c ], [ 0, %.preheader66.i ] ; 2 uses
  %.0611.i.i.i = phi i32 [ %i.o, %bb.c ], [ %i.k, %.preheader66.i ] ; 2 uses
  %.0710.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.a, %.preheader66.i ] ; 2 uses
  %i.l = and i32 %.0611.i.i.i, 1
  %.not8.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not8.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load i32, ptr %.0710.i.i.i, align 4, !tbaa !13
  %i.n = xor i32 %i.m, %.012.i.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.1.i.i.i = phi i32 [ %i.n, %bb.b ], [ %.012.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.o = lshr i32 %.0611.i.i.i, 1                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %gf2_matrix_times.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !43

gf2_matrix_times.exit.i.i:                        ; preds = %bb.c, %.preheader66.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.preheader66.i ], [ %.1.i.i.i, %bb.c ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i32 %.0.lcssa.i.i.i, ptr %i.q, align 4, !tbaa !13
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 32
  br i1 %exitcond.not.i.i, label %gf2_matrix_square.exit.i, label %.preheader66.i, !llvm.loop !44

gf2_matrix_square.exit.i:                         ; preds = %gf2_matrix_times.exit.i.i, %gf2_matrix_times.exit.i31.i
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i33.i, %gf2_matrix_times.exit.i31.i ], [ 0, %gf2_matrix_times.exit.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i22.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13   ; 2 uses
  %.not9.i.i23.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i23.i, label %gf2_matrix_times.exit.i31.i, label %.lr.ph.i.i24.i

.lr.ph.i.i24.i:                                   ; preds = %gf2_matrix_square.exit.i, %bb.e
  %.012.i.i25.i = phi i32 [ %.1.i.i29.i, %bb.e ], [ 0, %gf2_matrix_square.exit.i ] ; 2 uses
  %.0611.i.i26.i = phi i32 [ %i.w, %bb.e ], [ %i.s, %gf2_matrix_square.exit.i ] ; 2 uses
  %.0710.i.i27.i = phi ptr [ %i.x, %bb.e ], [ %i.b, %gf2_matrix_square.exit.i ] ; 2 uses
  %i.t = and i32 %.0611.i.i26.i, 1
  %.not8.i.i28.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i.i28.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i24.i
  %i.u = load i32, ptr %.0710.i.i27.i, align 4, !tbaa !13
  %i.v = xor i32 %i.u, %.012.i.i25.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i24.i
  %.1.i.i29.i = phi i32 [ %i.v, %bb.d ], [ %.012.i.i25.i, %.lr.ph.i.i24.i ] ; 2 uses
  %i.w = lshr i32 %.0611.i.i26.i, 1               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i27.i, i64 4
  %.not.i.i30.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i30.i, label %gf2_matrix_times.exit.i31.i, label %.lr.ph.i.i24.i, !llvm.loop !43

gf2_matrix_times.exit.i31.i:                      ; preds = %bb.e, %gf2_matrix_square.exit.i
  %.0.lcssa.i.i32.i = phi i32 [ 0, %gf2_matrix_square.exit.i ], [ %.1.i.i29.i, %bb.e ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i22.i
  store i32 %.0.lcssa.i.i32.i, ptr %i.y, align 4, !tbaa !13
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, 32
  br i1 %exitcond.not.i34.i, label %gf2_matrix_square.exit35.i, label %gf2_matrix_square.exit.i, !llvm.loop !44

gf2_matrix_square.exit35.i:                       ; preds = %gf2_matrix_times.exit.i31.i, %gf2_matrix_square.exit63.i
  %.019.i = phi i64 [ %i.aq, %gf2_matrix_square.exit63.i ], [ %1, %gf2_matrix_times.exit.i31.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %gf2_matrix_times.exit.i45.i, %gf2_matrix_square.exit35.i
  %indvars.iv.i36.i = phi i64 [ 0, %gf2_matrix_square.exit35.i ], [ %indvars.iv.next.i47.i, %gf2_matrix_times.exit.i45.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i36.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13  ; 2 uses
  %.not9.i.i37.i = icmp eq i32 %i.aa, 0
  br i1 %.not9.i.i37.i, label %gf2_matrix_times.exit.i45.i, label %.lr.ph.i.i38.i

.lr.ph.i.i38.i:                                   ; preds = %bb.f, %bb.h
  %.012.i.i39.i = phi i32 [ %.1.i.i43.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.0611.i.i40.i = phi i32 [ %i.ae, %bb.h ], [ %i.aa, %bb.f ] ; 2 uses
  %.0710.i.i41.i = phi ptr [ %i.af, %bb.h ], [ %i.a, %bb.f ] ; 2 uses
  %i.ab = and i32 %.0611.i.i40.i, 1
  %.not8.i.i42.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i42.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i38.i
  %i.ac = load i32, ptr %.0710.i.i41.i, align 4, !tbaa !13
  %i.ad = xor i32 %i.ac, %.012.i.i39.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i38.i
  %.1.i.i43.i = phi i32 [ %i.ad, %bb.g ], [ %.012.i.i39.i, %.lr.ph.i.i38.i ] ; 2 uses
  %i.ae = lshr i32 %.0611.i.i40.i, 1              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0710.i.i41.i, i64 4
  %.not.i.i44.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i44.i, label %gf2_matrix_times.exit.i45.i, label %.lr.ph.i.i38.i, !llvm.loop !43

gf2_matrix_times.exit.i45.i:                      ; preds = %bb.h, %bb.f
  %.0.lcssa.i.i46.i = phi i32 [ 0, %bb.f ], [ %.1.i.i43.i, %bb.h ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i36.i
  store i32 %.0.lcssa.i.i46.i, ptr %i.ag, align 4, !tbaa !13
  %indvars.iv.next.i47.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %exitcond.not.i48.i = icmp eq i64 %indvars.iv.next.i47.i, 32
  br i1 %exitcond.not.i48.i, label %gf2_matrix_square.exit49.i, label %bb.f, !llvm.loop !44

gf2_matrix_square.exit49.i:                       ; preds = %gf2_matrix_times.exit.i45.i
  %i.ah = icmp samesign ult i64 %.019.i, 2
  br i1 %i.ah, label %crc32c_zeros_op.exit, label %.preheader64.i

.preheader64.i:                                   ; preds = %gf2_matrix_square.exit49.i, %gf2_matrix_times.exit.i59.i
  %indvars.iv.i50.i = phi i64 [ %indvars.iv.next.i61.i, %gf2_matrix_times.exit.i59.i ], [ 0, %gf2_matrix_square.exit49.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i50.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13 ; 2 uses
  %.not9.i.i51.i = icmp eq i32 %i.aj, 0
  br i1 %.not9.i.i51.i, label %gf2_matrix_times.exit.i59.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.preheader64.i, %bb.j
  %.012.i.i53.i = phi i32 [ %.1.i.i57.i, %bb.j ], [ 0, %.preheader64.i ] ; 2 uses
  %.0611.i.i54.i = phi i32 [ %i.an, %bb.j ], [ %i.aj, %.preheader64.i ] ; 2 uses
  %.0710.i.i55.i = phi ptr [ %i.ao, %bb.j ], [ %i.b, %.preheader64.i ] ; 2 uses
  %i.ak = and i32 %.0611.i.i54.i, 1
  %.not8.i.i56.i = icmp eq i32 %i.ak, 0
  br i1 %.not8.i.i56.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i52.i
  %i.al = load i32, ptr %.0710.i.i55.i, align 4, !tbaa !13
  %i.am = xor i32 %i.al, %.012.i.i53.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i52.i
  %.1.i.i57.i = phi i32 [ %i.am, %bb.i ], [ %.012.i.i53.i, %.lr.ph.i.i52.i ] ; 2 uses
  %i.an = lshr i32 %.0611.i.i54.i, 1              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0710.i.i55.i, i64 4
  %.not.i.i58.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i58.i, label %gf2_matrix_times.exit.i59.i, label %.lr.ph.i.i52.i, !llvm.loop !43

gf2_matrix_times.exit.i59.i:                      ; preds = %bb.j, %.preheader64.i
  %.0.lcssa.i.i60.i = phi i32 [ 0, %.preheader64.i ], [ %.1.i.i57.i, %bb.j ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i50.i
  store i32 %.0.lcssa.i.i60.i, ptr %i.ap, align 4, !tbaa !13
  %indvars.iv.next.i61.i = add nuw nsw i64 %indvars.iv.i50.i, 1 ; 2 uses
  %exitcond.not.i62.i = icmp eq i64 %indvars.iv.next.i61.i, 32
  br i1 %exitcond.not.i62.i, label %gf2_matrix_square.exit63.i, label %.preheader64.i, !llvm.loop !44

gf2_matrix_square.exit63.i:                       ; preds = %gf2_matrix_times.exit.i59.i
  %i.aq = lshr i64 %.019.i, 2                     ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %gf2_matrix_square.exit35.i, !llvm.loop !45

.preheader.preheader.i:                           ; preds = %gf2_matrix_square.exit63.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false), !tbaa !13
  br label %crc32c_zeros_op.exit

crc32c_zeros_op.exit:                             ; preds = %gf2_matrix_square.exit49.i, %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %gf2_matrix_times.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

bb.l:                                             ; preds = %crc32c_zeros_op.exit, %gf2_matrix_times.exit44
  %indvars.iv = phi i64 [ 0, %crc32c_zeros_op.exit ], [ %indvars.iv.next, %gf2_matrix_times.exit44 ] ; 10 uses
  %.not9.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not9.i, label %gf2_matrix_times.exit34.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph.i

gf2_matrix_times.exit34.thread:                   ; preds = %bb.l
  store i32 0, ptr %0, align 4, !tbaa !13
  store i32 0, ptr %i.as, align 4, !tbaa !13
  store i32 0, ptr %i.at, align 4, !tbaa !13
  br label %gf2_matrix_times.exit44

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.n
  %.012.i = phi i32 [ %.1.i, %bb.n ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.0611.i = phi i32 [ %i.ay, %bb.n ], [ %i.au, %.lr.ph.i.preheader ] ; 2 uses
  %.0710.i = phi ptr [ %i.az, %bb.n ], [ %i.b, %.lr.ph.i.preheader ] ; 2 uses
  %i.av = and i32 %.0611.i, 1
  %.not8.i = icmp eq i32 %i.av, 0
  br i1 %.not8.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.aw = load i32, ptr %.0710.i, align 4, !tbaa !13
  %i.ax = xor i32 %i.aw, %.012.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.1.i = phi i32 [ %i.ax, %bb.m ], [ %.012.i, %.lr.ph.i ] ; 2 uses
  %i.ay = lshr i32 %.0611.i, 1                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 4
  %.not.i14 = icmp eq i32 %i.ay, 0
  br i1 %.not.i14, label %gf2_matrix_times.exit, label %.lr.ph.i, !llvm.loop !43

gf2_matrix_times.exit:                            ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %.1.i, ptr %i.ba, align 4, !tbaa !13
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.bb = shl nuw nsw i32 %indvars.iv.tr, 8
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %gf2_matrix_times.exit, %bb.p
  %.012.i17 = phi i32 [ %.1.i21, %bb.p ], [ 0, %gf2_matrix_times.exit ] ; 2 uses
  %.0611.i18 = phi i32 [ %i.bf, %bb.p ], [ %i.bb, %gf2_matrix_times.exit ] ; 2 uses
  %.0710.i19 = phi ptr [ %i.bg, %bb.p ], [ %i.b, %gf2_matrix_times.exit ] ; 2 uses
  %i.bc = and i32 %.0611.i18, 1
  %.not8.i20 = icmp eq i32 %i.bc, 0
  br i1 %.not8.i20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i16
  %i.bd = load i32, ptr %.0710.i19, align 4, !tbaa !13
  %i.be = xor i32 %i.bd, %.012.i17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i16
  %.1.i21 = phi i32 [ %i.be, %bb.o ], [ %.012.i17, %.lr.ph.i16 ] ; 2 uses
  %i.bf = lshr i32 %.0611.i18, 1                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0710.i19, i64 4
  %.not.i22 = icmp eq i32 %i.bf, 0
  br i1 %.not.i22, label %gf2_matrix_times.exit24, label %.lr.ph.i16, !llvm.loop !43

gf2_matrix_times.exit24:                          ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  store i32 %.1.i21, ptr %i.bh, align 4, !tbaa !13
  %indvars.iv.tr65 = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = shl nuw nsw i32 %indvars.iv.tr65, 16
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %gf2_matrix_times.exit24, %bb.r
  %.012.i27 = phi i32 [ %.1.i31, %bb.r ], [ 0, %gf2_matrix_times.exit24 ] ; 2 uses
  %.0611.i28 = phi i32 [ %i.bm, %bb.r ], [ %i.bi, %gf2_matrix_times.exit24 ] ; 2 uses
  %.0710.i29 = phi ptr [ %i.bn, %bb.r ], [ %i.b, %gf2_matrix_times.exit24 ] ; 2 uses
  %i.bj = and i32 %.0611.i28, 1
  %.not8.i30 = icmp eq i32 %i.bj, 0
  br i1 %.not8.i30, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i26
  %i.bk = load i32, ptr %.0710.i29, align 4, !tbaa !13
  %i.bl = xor i32 %i.bk, %.012.i27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i26
  %.1.i31 = phi i32 [ %i.bl, %bb.q ], [ %.012.i27, %.lr.ph.i26 ] ; 2 uses
  %i.bm = lshr i32 %.0611.i28, 1                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0710.i29, i64 4
  %.not.i32 = icmp eq i32 %i.bm, 0
  br i1 %.not.i32, label %gf2_matrix_times.exit34, label %.lr.ph.i26, !llvm.loop !43

gf2_matrix_times.exit34:                          ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %.1.i31, ptr %i.bo, align 4, !tbaa !13
  %indvars.iv.tr66 = trunc nuw i64 %indvars.iv to i32
  %i.bp = shl nuw i32 %indvars.iv.tr66, 24
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %gf2_matrix_times.exit34, %bb.t
  %.012.i37 = phi i32 [ %.1.i41, %bb.t ], [ 0, %gf2_matrix_times.exit34 ] ; 2 uses
  %.0611.i38 = phi i32 [ %i.bt, %bb.t ], [ %i.bp, %gf2_matrix_times.exit34 ] ; 2 uses
  %.0710.i39 = phi ptr [ %i.bu, %bb.t ], [ %i.b, %gf2_matrix_times.exit34 ] ; 2 uses
  %i.bq = and i32 %.0611.i38, 1
  %.not8.i40 = icmp eq i32 %i.bq, 0
  br i1 %.not8.i40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i36
  %i.br = load i32, ptr %.0710.i39, align 4, !tbaa !13
  %i.bs = xor i32 %i.br, %.012.i37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i36
  %.1.i41 = phi i32 [ %i.bs, %bb.s ], [ %.012.i37, %.lr.ph.i36 ] ; 2 uses
  %i.bt = lshr i32 %.0611.i38, 1                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0710.i39, i64 4
  %.not.i42 = icmp eq i32 %i.bt, 0
  br i1 %.not.i42, label %gf2_matrix_times.exit44, label %.lr.ph.i36, !llvm.loop !43

gf2_matrix_times.exit44:                          ; preds = %bb.t, %gf2_matrix_times.exit34.thread
  %.0.lcssa.i43 = phi i32 [ 0, %gf2_matrix_times.exit34.thread ], [ %.1.i41, %bb.t ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store i32 %.0.lcssa.i43, ptr %i.bv, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.k, label %bb.l, !llvm.loop !46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!9, !9, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{i64 2147776032}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!20, !20, i64 0}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{i64 6456}
!29 = !{i64 7062, i64 7084, i64 7137}
!30 = !{i64 7792, i64 7814, i64 7868}
!31 = !{i64 8462}
!32 = !{i64 8712}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12, !17, !18}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12, !17, !18}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
end_hunk_0
