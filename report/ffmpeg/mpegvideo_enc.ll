inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 123
begin_hunk_0_@ff_convert_matrix:bb.a
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next153 to i32
  %exitcond155.not = icmp eq i32 %i.dg, %lftr.wideiv
  br i1 %exitcond155.not, label %._crit_edge114, label %.lr.ph113.split.split, !llvm.loop !54

._crit_edge114:                                   ; preds = %._crit_edge, %._crit_edge.us128.us, %._crit_edge.us
  %.088.lcssa = phi i32 [ %.1.lcssa.us, %._crit_edge.us ], [ %.2.us123.us.us.lcssa.lcssa, %._crit_edge.us128.us ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.not97 = icmp eq i32 %.088.lcssa, 0
  br i1 %.not97, label %._crit_edge114.thread, label %bb.af

bb.af:                                            ; preds = %._crit_edge114
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !57
  %i.kf = sub nsw i32 21, %.088.lcssa
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ke, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %i.kf) #14
  br label %._crit_edge114.thread

._crit_edge114.thread:                            ; preds = %.loopexit101.us, %bb.a, %bb.af, %._crit_edge114
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare hidden void @ff_jpeg_fdct_islow_8(ptr noundef) #0

declare void @ff_faandct(ptr noundef) #0

declare hidden void @ff_jpeg_fdct_islow_10(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare hidden void @ff_fdct_ifast(ptr noundef) #0

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @ff_write_quant_matrix(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = load i32, ptr %0, align 8, !tbaa !58     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !59   ; 6 uses
  %i.d = icmp sgt i32 %i.c, 1                     ; 2 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = shl i32 %i.a, 1
  %i.f = or disjoint i32 %i.e, 1
  br label %put_bits.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.m, 3
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = shl i32 %i.a, %i.c
  %i.p = icmp eq i32 %i.c, 1
  %i.q = zext i1 %i.p to i32
  %i.r = or i32 %i.o, %i.q
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.s, ptr %i.j, align 1, !tbaa !47
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.u, ptr %i.i, align 8, !tbaa !61
  br label %put_bits.exit

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.136) #14
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.e, %bb.f, %bb.c
  %.sink = phi i32 [ -1, %bb.c ], [ 31, %bb.f ], [ 31, %bb.e ]
  %.026.i.i = phi i32 [ %i.f, %bb.c ], [ 1, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.v = add nsw i32 %i.c, %.sink                 ; 2 uses
  store i32 %.026.i.i, ptr %0, align 8, !tbaa !58
  store i32 %i.v, ptr %i.b, align 4, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %put_bits.exit, %put_bits.exit11
  %i.y = phi i32 [ %i.v, %put_bits.exit ], [ %i.aw, %put_bits.exit11 ] ; 4 uses
  %i.z = phi i32 [ %.026.i.i, %put_bits.exit ], [ %.026.i.i9, %put_bits.exit11 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %put_bits.exit ], [ %indvars.iv.next, %put_bits.exit11 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !47
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !48
  %i.af = zext i16 %i.ae to i32                   ; 4 uses
  %i.ag = icmp sgt i32 %i.y, 8
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = shl i32 %i.z, 8
  %i.ai = or i32 %i.ah, %i.af
  br label %put_bits.exit11

bb.i:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !61  ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ugt i64 %i.an, 3
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = shl i32 %i.z, %i.y
  %i.aq = sub nsw i32 8, %i.y
  %i.ar = lshr i32 %i.af, %i.aq
  %i.as = or i32 %i.ar, %i.ap
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %i.at, ptr %i.ak, align 1, !tbaa !47
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.av, ptr %i.x, align 8, !tbaa !61
  br label %put_bits.exit11

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.136) #14
  br label %put_bits.exit11

put_bits.exit11:                                  ; preds = %bb.j, %bb.k, %bb.h
  %.sink23 = phi i32 [ -8, %bb.h ], [ 24, %bb.k ], [ 24, %bb.j ]
  %.026.i.i9 = phi i32 [ %i.ai, %bb.h ], [ %i.af, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  %i.aw = add nsw i32 %i.y, %.sink23              ; 2 uses
  store i32 %.026.i.i9, ptr %0, align 8, !tbaa !58
  store i32 %i.aw, ptr %i.b, align 4, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !62

bb.l:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = shl i32 %i.a, 1
  br label %put_bits.exit15

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !61 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ugt i64 %i.be, 3
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = shl i32 %i.a, %i.c
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.bb, align 1, !tbaa !47
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store ptr %i.bj, ptr %i.ba, align 8, !tbaa !61
  br label %put_bits.exit15

bb.p:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.136) #14
  br label %put_bits.exit15

put_bits.exit15:                                  ; preds = %bb.o, %bb.p, %bb.m
  %.sink24 = phi i32 [ -1, %bb.m ], [ 31, %bb.p ], [ 31, %bb.o ]
  %.026.i.i13 = phi i32 [ %i.ax, %bb.m ], [ 0, %bb.p ], [ 0, %bb.o ]
  %i.bk = add nsw i32 %i.c, %.sink24
  store i32 %.026.i.i13, ptr %0, align 8, !tbaa !58
  store i32 %i.bk, ptr %i.b, align 4, !tbaa !59
  br label %.loopexit

.loopexit:                                        ; preds = %put_bits.exit11, %put_bits.exit15
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @put_bits(ptr nofree noundef captures(none) %0, i32 noundef range(i32 1, 17) %1, i32 noundef range(i32 0, 65536) %2) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !59   ; 5 uses
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.a, %1
  %i.f = or i32 %i.e, %2
  %i.g = sub nsw i32 %i.c, %1
  br label %put_bits_no_assert.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = shl i32 %i.a, %i.c
  %i.q = sub nsw i32 %1, %i.c
  %i.r = lshr i32 %2, %i.q
  %i.s = or i32 %i.r, %i.p
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.k, align 1, !tbaa !47
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.j, align 8, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.136) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %reass.sub = sub i32 %i.c, %1
  %i.w = add i32 %reass.sub, 32
  br label %put_bits_no_assert.exit

put_bits_no_assert.exit:                          ; preds = %bb.b, %bb.f
  %.026.i = phi i32 [ %i.f, %bb.b ], [ %2, %bb.f ]
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.w, %bb.f ]
  store i32 %.026.i, ptr %0, align 8, !tbaa !58
  store i32 %.0.i, ptr %i.b, align 4, !tbaa !59
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_dct_encode_init(ptr nofree noundef captures(none) initializes((6560, 6568)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6560
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 492
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63
  %.not = icmp eq i32 %i.e, 0
  %spec.store.select = select i1 %.not, ptr @dct_quantize_c, ptr @dct_quantize_trellis_c
  store ptr %spec.store.select, ptr %i.a, align 16
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2147483647) i32 @dct_quantize_c(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) #1 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !76
  tail call void %i.c(ptr noundef %1) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6304
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !77  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %denoise_dct.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6312
  %i.i = sext i32 %i.g to i64                     ; 3 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !79
  %i.o = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6320
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !80
  %i.r = getelementptr inbounds [128 x i8], ptr %i.q, i64 %i.i
  tail call void %i.n(ptr noundef %1, ptr noundef nonnull %i.o, ptr noundef %i.r) #14, !inline_history !81
  br label %denoise_dct.exit

denoise_dct.exit:                                 ; preds = %bb.a, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.t = load i32, ptr %i.s, align 4, !tbaa !78
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %denoise_dct.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !83
  %.not93 = icmp eq i32 %i.x, 0
  br i1 %.not93, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %2, 4
  %.083.in.v = select i1 %i.y, i64 8, i64 12
  %.083.in = getelementptr inbounds nuw i8, ptr %0, i64 %.083.in.v
  %.083 = load i32, ptr %.083.in, align 4, !tbaa !49
  %i.z = shl i32 %.083, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.184 = phi i32 [ %i.z, %bb.d ], [ 8, %bb.c ]   ; 2 uses
  %i.aa = load i16, ptr %1, align 2, !tbaa !48
  %i.ab = sext i16 %i.aa to i32
  %i.ac = ashr exact i32 %.184, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = sdiv i32 %i.ad, %.184
  %i.af = trunc i32 %i.ae to i16
  store i16 %i.af, ptr %1, align 2, !tbaa !48
  %i.ag = icmp slt i32 %2, 4
  %i.ah = sext i32 %3 to i64
  %. = select i1 %i.ag, i64 6256, i64 6264
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.sink = load ptr, ptr %i.ai, align 8, !tbaa !84
  %i.aj = getelementptr inbounds [256 x i8], ptr %.sink, i64 %i.ah
  br label %bb.g

bb.f:                                             ; preds = %denoise_dct.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6272
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !86
  %i.ao = sext i32 %3 to i64
  %i.ap = getelementptr inbounds [256 x i8], ptr %i.an, i64 %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink107 = phi i64 [ 6124, %bb.f ], [ 6120, %bb.e ]
  %.090 = phi ptr [ %i.al, %bb.f ], [ %i.v, %bb.e ] ; 10 uses
  %.086 = phi ptr [ %i.ap, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %.085 = phi i32 [ 0, %bb.f ], [ 1, %bb.e ]      ; 3 uses
  %.081 = phi i32 [ -1, %bb.f ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink107
  %.089.in = load i32, ptr %i.aq, align 4, !tbaa !49
  %.089 = shl nsw i32 %.089.in, 13                ; 2 uses
  %i.ar = sub i32 2097151, %.089                  ; 2 uses
  %i.as = shl i32 %i.ar, 1
  %i.at = zext i32 %i.ar to i64                   ; 2 uses
  %i.au = zext i32 %i.as to i64                   ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %.079100 = phi i32 [ 63, %bb.g ], [ %i.bi, %bb.i ] ; 4 uses
  %i.av = zext nneg i32 %.079100 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.090, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !47
  %i.ay = zext i8 %i.ax to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ay ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !48
  %i.bb = sext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.086, i64 %i.ay
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !49
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.be, %i.bb
  %i.bg = add nsw i64 %i.bf, %i.at
  %i.bh = icmp ugt i64 %i.bg, %i.au
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 0, ptr %i.az, align 2, !tbaa !48
  %i.bi = add nsw i32 %.079100, -1
  %.not94.not = icmp samesign ugt i32 %.079100, %.085
  br i1 %.not94.not, label %bb.h, label %bb.j, !llvm.loop !87

bb.j:                                             ; preds = %bb.h, %bb.i
  %.3 = phi i32 [ %.081, %bb.i ], [ %.079100, %bb.h ] ; 6 uses
  %.not95101 = icmp sgt i32 %.085, %.3
  br i1 %.not95101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bj = sext i32 %.089 to i64                   ; 2 uses
  %i.bk = zext nneg i32 %.085 to i64
  %i.bl = add nuw nsw i32 %.3, 1
  %wide.trip.count = zext nneg i32 %i.bl to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.087102 = phi i32 [ 0, %.lr.ph ], [ %.188, %bb.q ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.090, i64 %indvars.iv
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bo ; 3 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !48
  %i.br = sext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.086, i64 %i.bo
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !49
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bu, %i.br                ; 4 uses
  %i.bw = add nsw i64 %i.bv, %i.at
  %i.bx = icmp ugt i64 %i.bw, %i.au
  br i1 %i.bx, label %bb.l, label %bb.p
end_hunk_0
begin_hunk_1_@dct_quantize_trellis_c:bb.a
  %.7565 = phi i32 [ %.1371.lcssa, %.lr.ph567.new ], [ %.8.1, %bb.bc ]
  %.7388564 = phi i32 [ %.1382.lcssa, %.lr.ph567.new ], [ %.8389.1, %bb.bc ]
  %.7404563 = phi i32 [ 2013265920, %.lr.ph567.new ], [ %.8405.1, %bb.bc ] ; 2 uses
  %.7415562 = phi i32 [ %.1409.lcssa, %.lr.ph567.new ], [ %.8416.1, %bb.bc ]
  %niter = phi i32 [ 0, %.lr.ph567.new ], [ %niter.next.1, %bb.bc ]
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv616
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !49
  %i.lu = icmp eq i64 %indvars.iv616, 0
  %i.lv = select i1 %i.lu, i32 0, i32 %i.lm
  %.0358 = add nsw i32 %i.lt, %i.lv               ; 2 uses
  %i.lw = icmp slt i32 %.0358, %.7404563
  br i1 %i.lw, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv616
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !49
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv616
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !49
  %i.mb = trunc nsw i64 %indvars.iv616 to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.8416 = phi i32 [ %i.mb, %bb.az ], [ %.7415562, %bb.ay ]
  %.8405 = phi i32 [ %.0358, %bb.az ], [ %.7404563, %bb.ay ] ; 2 uses
  %.8389 = phi i32 [ %i.ly, %bb.az ], [ %.7388564, %bb.ay ]
  %.8 = phi i32 [ %i.ma, %bb.az ], [ %.7565, %bb.ay ]
  %indvars.iv.next617 = add nsw i64 %indvars.iv616, 1 ; 5 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next617
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !49
  %i.me = icmp eq i64 %indvars.iv.next617, 0
  %i.mf = select i1 %i.me, i32 0, i32 %i.lm
  %.0358.1 = add nsw i32 %i.md, %i.mf             ; 2 uses
  %i.mg = icmp slt i32 %.0358.1, %.8405
  br i1 %i.mg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next617
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !49
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next617
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !49
  %i.ml = trunc nsw i64 %indvars.iv.next617 to i32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.8416.1 = phi i32 [ %i.ml, %bb.bb ], [ %.8416, %bb.ba ] ; 3 uses
  %.8405.1 = phi i32 [ %.0358.1, %bb.bb ], [ %.8405, %bb.ba ] ; 3 uses
  %.8389.1 = phi i32 [ %i.mi, %bb.bb ], [ %.8389, %bb.ba ] ; 3 uses
  %.8.1 = phi i32 [ %i.mk, %bb.bb ], [ %.8, %bb.ba ] ; 3 uses
  %indvars.iv.next617.1 = add nsw i64 %indvars.iv616, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit483.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !111

.loopexit483.loopexit.unr-lcssa:                  ; preds = %bb.bc
  %lcmp.mod679.not = icmp eq i32 %xtraiter678, 0
  br i1 %lcmp.mod679.not, label %.loopexit483, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit483.loopexit.unr-lcssa, %.lr.ph567
  %indvars.iv616.epil.init = phi i64 [ %i.ln, %.lr.ph567 ], [ %indvars.iv.next617.1, %.loopexit483.loopexit.unr-lcssa ] ; 5 uses
  %.7565.epil.init = phi i32 [ %.1371.lcssa, %.lr.ph567 ], [ %.8.1, %.loopexit483.loopexit.unr-lcssa ]
  %.7388564.epil.init = phi i32 [ %.1382.lcssa, %.lr.ph567 ], [ %.8389.1, %.loopexit483.loopexit.unr-lcssa ]
  %.7404563.epil.init = phi i32 [ 2013265920, %.lr.ph567 ], [ %.8405.1, %.loopexit483.loopexit.unr-lcssa ] ; 2 uses
  %.7415562.epil.init = phi i32 [ %.1409.lcssa, %.lr.ph567 ], [ %.8416.1, %.loopexit483.loopexit.unr-lcssa ]
  %lcmp.mod684 = trunc i32 %i.lp to i1
  tail call void @llvm.assume(i1 %lcmp.mod684)
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv616.epil.init
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !49
  %i.mo = icmp eq i64 %indvars.iv616.epil.init, 0
  %i.mp = select i1 %i.mo, i32 0, i32 %i.lm
  %.0358.epil = add nsw i32 %i.mn, %i.mp          ; 2 uses
  %i.mq = icmp slt i32 %.0358.epil, %.7404563.epil.init
  br i1 %i.mq, label %bb.bd, label %.loopexit483

bb.bd:                                            ; preds = %.epil.preheader
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv616.epil.init
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !49
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv616.epil.init
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !49
  %i.mv = trunc nsw i64 %indvars.iv616.epil.init to i32
  br label %.loopexit483

.loopexit483:                                     ; preds = %.loopexit483.loopexit.unr-lcssa, %bb.bd, %.epil.preheader, %bb.ax, %bb.aw
  %.9417 = phi i32 [ %.1409.lcssa, %bb.aw ], [ %.1409.lcssa, %bb.ax ], [ %.8416.1, %.loopexit483.loopexit.unr-lcssa ], [ %i.mv, %bb.bd ], [ %.7415562.epil.init, %.epil.preheader ] ; 3 uses
  %.9406 = phi i32 [ %.1398.lcssa, %bb.aw ], [ 2013265920, %bb.ax ], [ %.8405.1, %.loopexit483.loopexit.unr-lcssa ], [ %.0358.epil, %bb.bd ], [ %.7404563.epil.init, %.epil.preheader ]
  %.9390 = phi i32 [ %.1382.lcssa, %bb.aw ], [ %.1382.lcssa, %bb.ax ], [ %.8389.1, %.loopexit483.loopexit.unr-lcssa ], [ %i.ms, %bb.bd ], [ %.7388564.epil.init, %.epil.preheader ]
  %.9 = phi i32 [ %.1371.lcssa, %bb.aw ], [ %.1371.lcssa, %bb.ax ], [ %.8.1, %.loopexit483.loopexit.unr-lcssa ], [ %i.mu, %bb.bd ], [ %.7565.epil.init, %.epil.preheader ]
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 6200
  %i.mx = sext i32 %2 to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mx ; 2 uses
  store i32 %.9406, ptr %i.my, align 4, !tbaa !49
  %i.mz = load i16, ptr %1, align 2, !tbaa !48
  %i.na = tail call i16 @llvm.abs.i16(i16 %i.mz, i1 false)
  %i.nb = zext i16 %i.na to i32                   ; 3 uses
  %i.nc = add nsw i32 %.9417, -1                  ; 5 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ep
  %i.ne = shl nuw nsw i32 %.0423, 1
  %i.nf = sub nuw nsw i32 128, %i.ne
  %i.ng = zext nneg i32 %i.nf to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.nd, i8 0, i64 %i.ng, i1 false)
  %.not467 = icmp sgt i32 %.9417, %.0423
  br i1 %.not467, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.loopexit483
  %i.nh = or i32 %i.nc, %i.ao
  %or.cond = icmp eq i32 %i.nh, 0
  br i1 %or.cond, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.ni = mul nuw nsw i32 %i.nb, %i.nb            ; 3 uses
  %i.nj = load i32, ptr %i.f, align 16, !tbaa !49 ; 2 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  br i1 %i.nk, label %.lr.ph579, label %._crit_edge580

.lr.ph579:                                        ; preds = %bb.bf
  %i.nl = load i32, ptr %i.et, align 8, !tbaa !98
  %.off481 = add i32 %i.nl, -1
  %switch482 = icmp ult i32 %.off481, 2
  %wide.trip.count623 = zext nneg i32 %i.nj to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph579, %bb.bl
  %indvars.iv620 = phi i64 [ 0, %.lr.ph579 ], [ %indvars.iv.next621, %bb.bl ] ; 2 uses
  %.0354577 = phi i32 [ %i.ni, %.lr.ph579 ], [ %spec.select475, %bb.bl ] ; 2 uses
  %.0356576 = phi i32 [ 0, %.lr.ph579 ], [ %spec.select, %bb.bl ]
  %i.nm = getelementptr inbounds nuw [256 x i8], ptr %i.e, i64 %indvars.iv620
  %i.nn = load i32, ptr %i.nm, align 16, !tbaa !49 ; 3 uses
  %i.no = tail call i32 @llvm.abs.i32(i32 %i.nn, i1 true) ; 2 uses
  br i1 %switch482, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.np = mul nsw i32 %i.no, %i.ac
  %i.nq = add nsw i32 %i.np, %.1419
  %i.nr = ashr i32 %i.nq, 3
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.ns = shl nuw i32 %i.no, 1
  %i.nt = or disjoint i32 %i.ns, 1
  %i.nu = mul nsw i32 %i.nt, %.0422
  %i.nv = load i16, ptr %.0359, align 2, !tbaa !48
  %i.nw = zext i16 %i.nv to i32
  %i.nx = mul nsw i32 %i.nu, %i.nw
  %i.ny = ashr i32 %i.nx, 5
  %i.nz = add nsw i32 %i.ny, -1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0352 = phi i32 [ %i.nr, %bb.bh ], [ %i.nz, %bb.bi ]
  %i.oa = shl nsw i32 %.0352, 3
  %i.ob = add i32 %i.oa, 32
  %i.oc = and i32 %i.ob, -64
  %i.od = sub nsw i32 %i.oc, %i.nb                ; 2 uses
  %i.oe = mul nsw i32 %i.od, %i.od
  %i.of = add nsw i32 %i.nn, 64                   ; 2 uses
  %i.og = icmp ult i32 %i.of, 128
  br i1 %i.og, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oh = zext nneg i32 %i.of to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %.1425, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !47
  %i.ok = zext i8 %i.oj to i32
  %.pre = mul nuw nsw i32 %i.k, %i.ok
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.pn.pre-phi = phi i32 [ %i.ev, %bb.bj ], [ %.pre, %bb.bk ]
  %.0351 = add nsw i32 %.pn.pre-phi, %i.oe        ; 2 uses
  %i.ol = icmp slt i32 %.0351, %.0354577
  %spec.select = select i1 %i.ol, i32 %i.nn, i32 %.0356576 ; 2 uses
  %spec.select475 = tail call i32 @llvm.smin.i32(i32 %.0351, i32 %.0354577) ; 2 uses
  %indvars.iv.next621 = add nuw nsw i64 %indvars.iv620, 1 ; 2 uses
  %exitcond624.not = icmp eq i64 %indvars.iv.next621, %wide.trip.count623
  br i1 %exitcond624.not, label %._crit_edge580, label %bb.bg, !llvm.loop !112

._crit_edge580:                                   ; preds = %bb.bl, %bb.bf
  %.0356.lcssa = phi i32 [ 0, %bb.bf ], [ %spec.select, %bb.bl ] ; 2 uses
  %.0354.lcssa = phi i32 [ %i.ni, %bb.bf ], [ %spec.select475, %bb.bl ]
  %i.om = trunc i32 %.0356.lcssa to i16
  store i16 %i.om, ptr %1, align 2, !tbaa !48
  %i.on = sub nsw i32 %.0354.lcssa, %i.ni
  store i32 %i.on, ptr %i.my, align 4, !tbaa !49
  %i.oo = icmp eq i32 %.0356.lcssa, 0
  %.476 = sext i1 %i.oo to i32
  br label %.loopexit

bb.bm:                                            ; preds = %bb.be
  %i.op = trunc i32 %.9390 to i16
  %i.oq = zext nneg i32 %i.nc to i64
  %i.or = getelementptr inbounds nuw i8, ptr %.0361, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !47
  %i.ot = zext i8 %i.os to i64
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ot
  store i16 %i.op, ptr %i.ou, align 2, !tbaa !48
  %.neg = xor i32 %.9, -1
  %i.ov = add i32 %.9417, %.neg                   ; 2 uses
  %i.ow = icmp sgt i32 %i.ov, %.0423
  br i1 %i.ow, label %.lr.ph574, label %.loopexit

.lr.ph574:                                        ; preds = %bb.bm, %.lr.ph574
  %.5437572 = phi i32 [ %i.pi, %.lr.ph574 ], [ %i.ov, %bb.bm ] ; 3 uses
  %i.ox = zext nneg i32 %.5437572 to i64          ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !49
  %i.pa = trunc i32 %i.oz to i16
  %5 = sext i32 %.5437572 to i64
  %i.pb = getelementptr i8, ptr %.0361, i64 %5
  %i.pc = getelementptr i8, ptr %i.pb, i64 -1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !47
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.pe
  store i16 %i.pa, ptr %i.pf, align 2, !tbaa !48
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ox
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !49
  %.neg468 = xor i32 %i.ph, -1
  %i.pi = add i32 %.5437572, %.neg468             ; 2 uses
  %i.pj = icmp sgt i32 %i.pi, %.0423
  br i1 %i.pj, label %.lr.ph574, label %.loopexit, !llvm.loop !113

.loopexit:                                        ; preds = %.lr.ph574, %bb.bm, %.loopexit483, %._crit_edge580, %._crit_edge.thread
  %.1 = phi i32 [ %.3431, %._crit_edge.thread ], [ %i.nc, %.loopexit483 ], [ %.476, %._crit_edge580 ], [ %i.nc, %bb.bm ], [ %i.nc, %.lr.ph574 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -2147483648, 1) i32 @ff_mpv_encode_init(ptr noundef %0) local_unnamed_addr #5 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 119 uses
  tail call fastcc void @mpv_encode_defaults(ptr noundef %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3856
  %i.f = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_mpv_encode_init, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.e, align 16, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !117
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.i, i32 8)
  store i32 %i.j, ptr %i.g, align 4, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 10400
  store i64 %i.l, ptr %i.m, align 16, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 356 ; 2 uses
  %i.r = load <2 x i32>, ptr %i.n, align 8, !tbaa !49
  store <2 x i32> %i.r, ptr %i.o, align 16, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !126  ; 4 uses
  %i.u = icmp sgt i32 %i.t, 600
  br i1 %i.u, label %bb.a, label %bb.c

bb.a:                                             ; preds = %switch.lookup
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.w = load i32, ptr %i.v, align 4, !tbaa !127
  %i.x = icmp sgt i32 %i.w, -2
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.2, i32 noundef %i.t, i32 noundef 600) #14
  store i32 600, ptr %i.s, align 4, !tbaa !126
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %switch.lookup
  %i.y = phi i32 [ 600, %bb.b ], [ %i.t, %bb.a ], [ %i.t, %switch.lookup ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 9860 ; 3 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !129 ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 16
  br i1 %i.ad, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #14
  store i32 16, ptr %i.ab, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 9864 ; 2 uses
  store i32 16, ptr %i.ae, align 8, !tbaa !130
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !132
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 16, !tbaa !135
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp slt i32 %i.ac, 0
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #14
  br label %.thread525

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 9864 ; 3 uses
  store i32 %i.ac, ptr %i.al, align 8, !tbaa !130
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !131 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !132
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 3 uses
  store i32 %i.ap, ptr %i.aq, align 16, !tbaa !135
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ar = phi ptr [ %i.aj, %.thread ], [ %i.aq, %bb.f ]
  %i.as = phi ptr [ %i.ag, %.thread ], [ %i.an, %bb.f ]
  %i.at = phi ptr [ %i.af, %.thread ], [ %i.am, %bb.f ]
  %i.au = phi ptr [ %i.ae, %.thread ], [ %i.al, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !136
  %i.ax = and i32 %i.aw, 32
  %.not440 = icmp eq i32 %i.ax, 0
  br i1 %.not440, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr %i.z, align 4, !tbaa !128
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #14
  br label %.thread525

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %i.ay = phi i32 [ %.pre, %._crit_edge ], [ %i.y, %bb.f ]
  %i.az = phi ptr [ %i.ar, %._crit_edge ], [ %i.aq, %bb.f ] ; 4 uses
  %i.ba = phi ptr [ %i.at, %._crit_edge ], [ %i.am, %bb.f ] ; 2 uses
  %i.bb = phi ptr [ %i.au, %._crit_edge ], [ %i.al, %bb.f ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !137 ; 3 uses
  %i.be = lshr i32 %i.bd, 4
  %.lobit = and i32 %i.be, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 3772 ; 2 uses
  store i32 %.lobit, ptr %i.bf, align 4, !tbaa !138
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 6536
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !139
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 6532 ; 5 uses
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !140
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 10152
  store i64 -9223372036854775808, ptr %i.bl, align 8, !tbaa !141
  %i.bm = icmp slt i32 %i.ay, 2
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 12, ptr %i.z, align 4, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi i32 [ 1, %bb.j ], [ 0, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 9856 ; 4 uses
  store i32 %.sink, ptr %i.bn, align 16, !tbaa !142
  %i.bo = lshr i32 %i.bd, 1
  %.lobit441 = and i32 %i.bo, 1                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 10432 ; 2 uses
  store i32 %.lobit441, ptr %i.bp, align 16, !tbaa !143
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.br = load float, ptr %i.bq, align 4, !tbaa !144
  %i.bs = fcmp nsz une float %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !145
  %i.bv = fcmp nsz une float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !146
  %i.by = fcmp nsz une float %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !147
  %i.cb = fcmp nsz une float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !148
  %i.ce = fcmp nsz une float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 10340
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !149
  %i.ch = fcmp nsz une float %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.r, label %bb.q

end_hunk_1
