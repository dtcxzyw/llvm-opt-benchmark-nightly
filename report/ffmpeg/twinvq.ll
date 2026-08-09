inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ff_twinvq_decode_frame:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.afv, ptr align 4 %i.zv, i64 %i.afx, i1 false)
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.afv, i64 %i.afw
  %i.afz = load ptr, ptr %i.be, align 8, !tbaa !116
  %i.aga = sext i32 %i.afo to i64
  %i.agb = shl nsw i64 %i.aga, 2                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.afy, ptr align 4 %i.afz, i64 %i.agb, i1 false)
  %i.agc = icmp eq i32 %i.zx, 2
  br i1 %i.agc, label %bb.ad, label %imdct_output.exit

bb.ad:                                            ; preds = %bb.ac
  %i.agd = load ptr, ptr %i.bg, align 8, !tbaa !106
  %i.age = getelementptr inbounds [4 x i8], ptr %i.agd, i64 %i.afu ; 3 uses
  %i.agf = load i16, ptr %i.afp, align 8, !tbaa !39
  %i.agg = zext i16 %i.agf to i64
  %.idx.i = shl nuw nsw i64 %i.agg, 3
  %i.agh = getelementptr inbounds nuw i8, ptr %i.zv, i64 %.idx.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.age, ptr align 4 %i.agh, i64 %i.afx, i1 false)
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.afw
  %i.agj = load ptr, ptr %i.be, align 8, !tbaa !116
  %i.agk = load i16, ptr %i.afp, align 8, !tbaa !39
  %i.agl = zext i16 %i.agk to i64
  %.idx47.i = shl nuw nsw i64 %i.agl, 3
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 %.idx47.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.agi, ptr align 4 %i.agm, i64 %i.agb, i1 false)
  %i.agn = load ptr, ptr %i.as, align 8, !tbaa !78
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 64
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !122
  %i.agq = load i16, ptr %i.afp, align 8, !tbaa !39
  %i.agr = zext i16 %i.agq to i32
  call void %i.agp(ptr noundef %i.afv, ptr noundef %i.age, i32 noundef %i.agr) #9, !inline_history !123
  br label %imdct_output.exit

imdct_output.exit:                                ; preds = %._crit_edge.i58, %bb.ac, %bb.ad
  %i.ags = load <2 x ptr>, ptr %i.be, align 8, !tbaa !106
  %i.agt = shufflevector <2 x ptr> %i.ags, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.agt, ptr %i.be, align 8, !tbaa !106
  %i.agu = load i32, ptr %i.aj, align 8, !tbaa !51
  %i.agv = add nsw i32 %i.agu, 1                  ; 3 uses
  store i32 %i.agv, ptr %i.aj, align 8, !tbaa !51
  %i.agw = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.agx = icmp slt i32 %i.agv, %i.agw
  br i1 %i.agx, label %bb.h, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %imdct_output.exit, %bb.g
  %i.agy = load i32, ptr %i.o, align 8, !tbaa !38 ; 2 uses
  %i.agz = icmp slt i32 %i.agy, 2
  br i1 %i.agz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge
  %i.aha = add nsw i32 %i.agy, 1
  store i32 %i.aha, ptr %i.o, align 8, !tbaa !38
  store i32 0, ptr %2, align 4, !tbaa !72
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge
  store i32 1, ptr %2, align 4, !tbaa !72
  %i.ahb = load i32, ptr %i.ac, align 4, !tbaa !49 ; 2 uses
  %i.ahc = add nsw i32 %i.ahb, 1
  %i.ahd = icmp eq i32 %i.j, %i.ahc
  %. = select i1 %i.ahd, i32 %i.j, i32 %i.ahb
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.f, %bb.b, %bb.ae, %bb.e
  %.0 = phi i32 [ %i.ah, %bb.f ], [ -22, %bb.e ], [ %i.y, %bb.b ], [ %i.j, %bb.ae ], [ %., %bb.af ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold nounwind optsize uwtable
define hidden noundef i32 @ff_twinvq_decode_close(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 34064
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  tail call void @av_tx_uninit(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.f) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !125

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 34032
  tail call void @av_freep(ptr noundef nonnull %i.g) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 34024
  tail call void @av_freep(ptr noundef nonnull %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 34040
  tail call void @av_freep(ptr noundef nonnull %i.i) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 34088
  tail call void @av_freep(ptr noundef nonnull %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.k) #9
  ret i32 0
}

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define hidden i32 @ff_twinvq_decode_init(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 8, ptr %i.c, align 4, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 34096
  %i.g = load i32, ptr %i.f, align 8, !tbaa !127  ; 3 uses
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.g, 7
  %i.i = ashr i32 %i.h, 3                         ; 2 uses
  store i32 %i.i, ptr %i.d, align 4, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ %i.e, %bb.a ]
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3                      ; 2 uses
  %i.m = sext i32 %i.g to i64
  %i.n = sdiv i64 %i.l, %i.m                      ; 4 uses
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1, i64 noundef %i.l, i32 noundef %i.g) #9
  br label %twinvq_memset_float.exit

bb.d:                                             ; preds = %._crit_edge
  %i.p = icmp samesign ugt i64 %i.n, 2
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i64 noundef %i.n) #9
  br label %twinvq_memset_float.exit

bb.f:                                             ; preds = %bb.d
  %i.q = trunc nuw nsw i64 %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 34100
  store i32 %i.q, ptr %i.r, align 4, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !128
  %i.u = and i32 %i.t, 8388608
  %i.v = tail call ptr @avpriv_float_dsp_alloc(i32 noundef %i.u) #9 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !78
  %.not28 = icmp eq ptr %i.v, null
  br i1 %.not28, label %twinvq_memset_float.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call fastcc i32 @init_mdct_win(ptr noundef nonnull %i.b) #10 ; 2 uses
  %.not29 = icmp eq i32 %i.x, 0
  br i1 %.not29, label %twinvq_memset_float.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #9
  br label %twinvq_memset_float.exit

twinvq_memset_float.exit.loopexit:                ; preds = %bb.g
  tail call fastcc void @init_bitstream_params(ptr noundef nonnull %i.b) #10
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  store <2 x float> splat (float 1.000000e-01), ptr %i.y, align 4, !tbaa !63
  store float 1.000000e-01, ptr %i.z, align 4, !tbaa !63
  br label %twinvq_memset_float.exit

twinvq_memset_float.exit:                         ; preds = %twinvq_memset_float.exit.loopexit, %bb.f, %bb.h, %bb.e, %bb.c
  %.0 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.e ], [ %i.x, %bb.h ], [ -12, %bb.f ], [ 0, %twinvq_memset_float.exit.loopexit ]
  ret i32 %.0
}

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc i32 @init_mdct_win(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = load i8, ptr %i.c, align 8, !tbaa !57
  %1 = zext i8 %i.g to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.i = load i8, ptr %i.h, align 8, !tbaa !57
  %.rhs.trunc88.a = zext i8 %i.i to i16
  %i.j = udiv i16 %i.e, %.rhs.trunc88.a           ; 2 uses
  %.zext89.a = zext i16 %i.j to i32               ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 356
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56   ; 2 uses
  %i.n = icmp eq i32 %i.m, 1
  %i.o = select i1 %i.n, float 2.000000e+00, float 1.000000e+00
  %i.p = shl nuw nsw i32 %i.f, 1
  %i.q = mul nsw i32 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !129

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.v = load i16, ptr %i.u, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 8, !tbaa !57
  %.rhs.trunc91 = zext i8 %i.x to i16
  %i.y = udiv i16 %i.v, %.rhs.trunc91             ; 2 uses
  %.zext92 = zext i16 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.z = uitofp i16 %i.y to float
  %i.aa = fdiv nnan nsz float %i.o, %i.z
  %i.ab = fpext nnan nsz float %i.aa to double
  %i.ac = call nnan nsz double @llvm.sqrt.f64(double %i.ab)
  %i.ad = fmul nnan nsz double %i.ac, f0xBF00000000000000
  %i.ae = fptrunc nsz double %i.ad to float
  store float %i.ae, ptr %i.a, align 4, !tbaa !63
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ah = call i32 @av_tx_init(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i32 noundef 1, i32 noundef 1, i32 noundef %.zext92, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %.not76 = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not76, label %bb.b, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.ai = load i16, ptr %i.d, align 8, !tbaa !39
  %i.aj = zext i16 %i.ai to i64
  %i.ak = call ptr @av_malloc_array(i64 noundef %i.aj, i64 noundef 4) #9 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 34088
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !76
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = sext i32 %i.q to i64                    ; 3 uses
  %i.an = call ptr @av_malloc_array(i64 noundef %i.am, i64 noundef 4) #9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 34024
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !52
  %.not71 = icmp eq ptr %i.an, null
  br i1 %.not71, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @av_malloc_array(i64 noundef %i.am, i64 noundef 4) #9 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 34032
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !116
  %.not72 = icmp eq ptr %i.ap, null
  br i1 %.not72, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = call ptr @av_malloc_array(i64 noundef %i.am, i64 noundef 4) #9 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 34040
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !111
  %.not73 = icmp eq ptr %i.ar, null
  br i1 %.not73, label %.thread, label %.preheader94

.preheader94:                                     ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 34064
  br label %bb.h

bb.h:                                             ; preds = %.preheader94, %._crit_edge
  %indvars.iv110 = phi i64 [ 0, %.preheader94 ], [ %indvars.iv.next111, %._crit_edge ] ; 3 uses
  %i.au = load i16, ptr %i.d, align 8, !tbaa !39
  %i.av = zext i16 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 2
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv110
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !57
  %i.az = zext i8 %i.ay to i32
  %i.ba = udiv i32 %i.aw, %i.az                   ; 4 uses
  %i.bb = uitofp nneg i32 %i.ba to double
  %i.bc = fdiv nnan nsz double f0x401921FB54442D18, %i.bb
  %i.bd = lshr i32 %i.ba, 2                       ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = call ptr @av_malloc_array(i64 noundef %i.be, i64 noundef 4) #9 ; 5 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv110
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !106
  %.not74.not = icmp eq ptr %i.bf, null
  br i1 %.not74.not, label %.thread, label %.preheader93

.preheader93:                                     ; preds = %bb.h
  %i.bh = lshr i32 %i.ba, 3                       ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64
  br label %bb.i

.preheader:                                       ; preds = %bb.i
  %i.bj = icmp samesign ugt i32 %i.ba, 15
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bk = zext nneg i32 %i.bd to i64
  %i.bl = zext nneg i32 %i.bh to i64
  br label %.lr.ph

bb.i:                                             ; preds = %.preheader93, %bb.i
  %indvars.iv104.a = phi i64 [ 0, %.preheader93 ], [ %indvars.iv.next105.a, %bb.i ] ; 4 uses
  %indvars.iv104.tr = trunc nuw nsw i64 %indvars.iv104.a to i32
  %i.bm = shl nuw nsw i32 %indvars.iv104.tr, 1
  %i.bn = or disjoint i32 %i.bm, 1
  %i.bo = uitofp nneg i32 %i.bn to double
  %i.bp = fmul nnan nsz double %i.bc, %i.bo
  %i.bq = call nsz double @llvm.cos.f64(double %i.bp)
  %i.br = fptrunc nsz double %i.bq to float
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv104.a
  store float %i.br, ptr %i.bs, align 4, !tbaa !63
  %indvars.iv.next105.a = add nuw nsw i64 %indvars.iv104.a, 1
  %.not75.not = icmp samesign ult i64 %indvars.iv104.a, %i.bi
  br i1 %.not75.not, label %bb.i, label %.preheader, !llvm.loop !130

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv107 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next108.a, %.lr.ph ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv107
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !63
  %i.bv = sub nsw i64 %i.bk, %indvars.iv107
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bv
  store float %i.bu, ptr %i.bw, align 4, !tbaa !63
  %indvars.iv.next108.a = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.bx = icmp samesign ult i64 %indvars.iv.next108.a, %i.bl
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 3
  br i1 %exitcond113.not, label %bb.j, label %bb.h, !llvm.loop !132

bb.j:                                             ; preds = %._crit_edge
  %.not11.i83 = icmp ult i16 %i.j, 256            ; 2 uses
  %i.by = lshr i32 %.zext89.a, 8
  %.110.i84 = select i1 %.not11.i83, i32 %.zext89.a, i32 %i.by
  %.1.i85 = select i1 %.not11.i83, i32 0, i32 8
  %i.bz = zext nneg i32 %.110.i84 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nuw nsw i32 %.1.i85, %i.cc
  call void @ff_init_ff_sine_windows(i32 noundef %i.cd) #9
  %2 = shl nuw nsw i32 %1, 1
  %3 = udiv i32 %i.f, %2                          ; 3 uses
  %.not11.i77 = icmp samesign ult i32 %3, 256     ; 2 uses
  %i.ce = lshr i32 %3, 8
  %.110.i78 = select i1 %.not11.i77, i32 %3, i32 %i.ce
  %.1.i79 = select i1 %.not11.i77, i32 0, i32 8
  %i.cf = zext nneg i32 %.110.i78 to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %.1.i79, %i.ci
  call void @ff_init_ff_sine_windows(i32 noundef %i.cj) #9
  %i.ck = load i16, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.cl = zext i16 %i.ck to i32                   ; 2 uses
  %.not11.i = icmp ult i16 %i.ck, 256             ; 2 uses
  %i.cm = lshr i32 %i.cl, 8
  %.110.i = select i1 %.not11.i, i32 %i.cl, i32 %i.cm
  %.1.i = select i1 %.not11.i, i32 0, i32 8
  %i.cn = zext nneg i32 %.110.i to i64
  %i.co = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !62
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nuw nsw i32 %.1.i, %i.cq
  call void @ff_init_ff_sine_windows(i32 noundef %i.cr) #9
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.h, %bb.d, %bb.e, %bb.f, %bb.g, %bb.j
  %.4 = phi i32 [ -12, %bb.h ], [ -12, %bb.d ], [ 0, %bb.j ], [ -12, %bb.g ], [ -12, %bb.f ], [ -12, %bb.e ], [ %i.ah, %bb.c ]
  ret i32 %.4
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_bitstream_params(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 12 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !133
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.m = load i32, ptr %i.l, align 8, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.o = load i8, ptr %i.n, align 8, !tbaa !135
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 209
  %i.q = load i8, ptr %i.p, align 1, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 211
  %i.s = load i8, ptr %i.r, align 1, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 210
  %i.u = load i8, ptr %i.t, align 2, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 227
  %i.w = load i8, ptr %i.v, align 1, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 225 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !137
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !139
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 33
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !140
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, %i.ae
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = mul nsw i32 %i.aj, %i.g
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !141

.critedge:                                        ; preds = %bb.b
  %i.am = zext i8 %i.o to i32
  %i.an = zext i8 %i.q to i32
  %i.ao = add nuw nsw i32 %i.an, %i.am
  %i.ap = zext i8 %i.s to i32
  %i.aq = zext i8 %i.u to i32
  %i.ar = mul nuw nsw i32 %i.aq, %i.ap
  %i.as = add nuw nsw i32 %i.ao, %i.ar
  %i.at = mul nsw i32 %i.as, %i.g
  %i.au = zext i8 %i.w to i32
  %i.av = zext i8 %i.y to i32
  %i.aw = add nuw nsw i32 %i.av, %i.au
  %i.ax = zext i8 %i.aa to i32
  %i.ay = add nuw nsw i32 %i.aw, %i.ax
  %i.az = mul nsw i32 %i.ay, %i.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !72
  %i.bc = shl nsw i32 %i.g, 3
  %i.bd = or disjoint i32 %i.bc, 4
  %i.be = add i32 %i.bd, %i.at                    ; 3 uses
  %i.bf = add i32 %i.be, %i.az
  %i.bg = add i32 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !72
  %i.bi = mul nsw i32 %i.g, 5                     ; 2 uses
  %i.bj = load i8, ptr %i.d, align 8, !tbaa !57
  %i.bk = zext i8 %i.bj to i32
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !72
  %i.bm = add nsw i32 %i.bl, %i.bi
  %i.bn = mul nsw i32 %i.bm, %i.bk
  %i.bo = add nsw i32 %i.be, %i.bn
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !57
  %i.br = zext i8 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !72
  %i.bu = add nsw i32 %i.bt, %i.bi
  %i.bv = mul nsw i32 %i.bu, %i.br
  %i.bw = add nsw i32 %i.be, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !72
  %i.by = zext i16 %i.k to i64
  %i.bz = mul nsw i64 %i.i, %i.by
  %i.ca = sext i32 %i.m to i64
  %i.cb = sdiv i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 36740
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !142
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !143
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.cj = load <2 x i32>, ptr %i.ci, align 4, !tbaa !72
  %i.ck = add nsw <2 x i32> %i.cj, splat (i32 2)
  store <2 x i32> %i.ck, ptr %i.ci, align 4, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.critedge
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 34008
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 33976
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 33984
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 33992
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 33964
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 33972
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 226
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %indvars.iv121 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next122, %bb.i ] ; 9 uses
  %i.cs = icmp eq i64 %indvars.iv121, 3
  br i1 %i.cs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ct = load i8, ptr %i.x, align 1, !tbaa !137
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.g, %i.cu
  %i.cw = load i8, ptr %i.cr, align 2, !tbaa !73
  %i.cx = zext i8 %i.cw to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv121
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = sub nsw i32 %i.cc, %i.cz
  %i.db = load i16, ptr %i.j, align 8, !tbaa !39
  %i.dc = zext i16 %i.db to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi i32 [ %i.cx, %bb.g ], [ %i.dc, %bb.h ]
  %.0108 = phi i32 [ %i.cv, %bb.g ], [ %i.da, %bb.h ] ; 4 uses
  %.0109 = mul nsw i32 %.pn, %i.g                 ; 3 uses
  %i.dd = add nsw i32 %.0108, 13
  %i.de = sdiv i32 %i.dd, 14                      ; 10 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv121
  store i32 %i.de, ptr %i.df, align 4, !tbaa !72
  %i.dg = add nsw i32 %i.de, -1                   ; 2 uses
  %i.dh = add i32 %i.dg, %.0108
  %i.di = sdiv i32 %i.dh, %i.de                   ; 3 uses
  %i.dj = sdiv i32 %.0108, %i.de                  ; 2 uses
  %i.dk = mul nsw i32 %i.di, %i.de
  %.neg = add i32 %i.de, %.0108
  %i.dl = sub i32 %.neg, %i.dk
  %i.dm = add nsw i32 %i.di, 1
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv121 ; 2 uses
  store i8 %i.do, ptr %i.dp, align 2, !tbaa !62
  %i.dq = sdiv i32 %i.di, 2
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv121 ; 2 uses
  store i8 %i.dr, ptr %i.ds, align 2, !tbaa !62
end_hunk_0
