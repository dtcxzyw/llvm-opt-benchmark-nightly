inline.NumInlined: 251
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@DwaCompressor_destroy:bb.a
bb.j:                                             ; preds = %._crit_edge, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !118 ; 2 uses
  %.not48 = icmp eq ptr %i.af, null
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43
  tail call void %i.ah(ptr noundef nonnull %i.af) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77 ; 3 uses
  %.not49 = icmp eq ptr %i.aj, @sLegacyChannelRules
  %.not50 = icmp eq ptr %i.aj, @sDefaultChannelRules
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !78 ; 2 uses
  %.not59 = icmp eq i64 %i.al, 0
  br i1 %.not59, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.m

._crit_edge57.loopexit:                           ; preds = %Classifier_destroy.exit
  %.pre66 = load ptr, ptr %i.ai, align 8, !tbaa !77
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %.preheader
  %i.an = phi ptr [ %.pre66, %._crit_edge57.loopexit ], [ %i.aj, %.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  tail call void %i.ap(ptr noundef %i.an) #21
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph56, %Classifier_destroy.exit
  %i.aq = phi i64 [ %i.al, %.lr.ph56 ], [ %i.ax, %Classifier_destroy.exit ] ; 2 uses
  %.03755 = phi i64 [ 0, %.lr.ph56 ], [ %i.ay, %Classifier_destroy.exit ] ; 2 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.03755 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !85 ; 2 uses
  %.not.i52 = icmp eq ptr %i.au, null
  br i1 %.not.i52, label %Classifier_destroy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 22
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !143
  %.not4.i = icmp eq i16 %i.aw, 0
  br i1 %.not4.i, label %bb.o, label %Classifier_destroy.exit

bb.o:                                             ; preds = %bb.n
  tail call void %i.ar(ptr noundef nonnull %i.au) #21, !inline_history !144
  %.pre65 = load i64, ptr %i.ak, align 8, !tbaa !78
  br label %Classifier_destroy.exit

Classifier_destroy.exit:                          ; preds = %bb.m, %bb.n, %bb.o
  %i.ax = phi i64 [ %i.aq, %bb.m ], [ %i.aq, %bb.n ], [ %.pre65, %bb.o ] ; 2 uses
  %i.ay = add nuw i64 %.03755, 1                  ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  br i1 %i.az, label %bb.m, label %._crit_edge57.loopexit, !llvm.loop !145

bb.p:                                             ; preds = %._crit_edge57, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !95 ; 2 uses
  %.not51 = icmp eq ptr %i.bc, null
  br i1 %.not51, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !43
  tail call void %i.bd(ptr noundef nonnull %i.bc) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %.not51.1 = icmp eq ptr %i.bf, null
  br i1 %.not51.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !43
  tail call void %i.bg(ptr noundef nonnull %i.bf) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !95 ; 2 uses
  %.not51.2 = icmp eq ptr %i.bi, null
  br i1 %.not51.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !43
  tail call void %i.bj(ptr noundef nonnull %i.bi) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_dwab(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._DwaCompressor, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = tail call i64 @internal_exr_huf_compress_spare_bytes() #21
  %i.d = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.c) #21 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = call fastcc i32 @DwaCompressor_construct(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = call fastcc i32 @DwaCompressor_compress(ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.f, %bb.b ]
  call fastcc void @DwaCompressor_destroy(ptr noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ %.0, %bb.d ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_dwaa(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._DwaCompressor, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = tail call i64 @internal_exr_huf_decompress_spare_bytes() #21
  %i.d = tail call i32 @internal_decode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.c) #21 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = call fastcc i32 @DwaCompressor_construct(ptr noundef %5, i32 noundef 0, ptr noundef null, ptr noundef nonnull %0) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = call fastcc i32 @DwaCompressor_uncompress(ptr noundef %5, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.f, %bb.b ]
  call fastcc void @DwaCompressor_destroy(ptr noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ %.0, %bb.d ], [ %i.d, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %4, ptr %i.i, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret i32 %.1
}

declare i32 @internal_decode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @internal_exr_huf_decompress_spare_bytes() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @DwaCompressor_uncompress(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [129 x i8], align 16              ; 8 uses
  %i.b = alloca [129 x i8], align 16              ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct._LossyDctDecoder, align 8   ; 17 uses
  %6 = alloca %struct._LossyDctDecoder, align 8   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.g = icmp ult i64 %2, 88
  br i1 %i.g, label %DwaCompressor_readChannelRules.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %4, i1 false)
  %.sroa.0.0.copyload = load i64, ptr %1, align 1 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 1 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 1 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 1 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 1 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 1 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 1 ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 1 ; 5 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 1 ; 5 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 1 ; 5 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 1
  %i.h = add i64 %.sroa.6.0.copyload, %.sroa.5.0.copyload ; 2 uses
  %i.i = add i64 %i.h, %.sroa.7.0.copyload        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.l = add i64 %2, -88                          ; 2 uses
  %i.m = add i64 %.sroa.8.0.copyload, 88
  %i.n = add i64 %i.m, %i.i
  %i.o = icmp ult i64 %2, %i.n
  %i.p = icmp ult i64 %2, %.sroa.5.0.copyload
  %or.cond = or i1 %i.p, %i.o
  %i.q = icmp ult i64 %2, %.sroa.6.0.copyload
  %or.cond477 = or i1 %i.q, %or.cond
  %i.r = icmp ult i64 %2, %.sroa.7.0.copyload
  %or.cond478 = or i1 %i.r, %or.cond477
  %i.s = icmp ult i64 %2, %.sroa.8.0.copyload
  %or.cond479 = or i1 %i.s, %or.cond478
  br i1 %or.cond479, label %DwaCompressor_readChannelRules.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = or i64 %.sroa.5.0.copyload, %.sroa.4.0.copyload
  %i.u = or i64 %i.t, %.sroa.6.0.copyload
  %i.v = or i64 %i.u, %.sroa.7.0.copyload
  %i.w = or i64 %i.v, %.sroa.8.0.copyload
  %or.cond17 = icmp slt i64 %i.w, 0
  %i.x = icmp slt i64 %.sroa.9.0.copyload, 0
  %or.cond19 = select i1 %or.cond17, i1 true, i1 %i.x
  %i.y = icmp slt i64 %.sroa.10.0.copyload, 0
  %or.cond21 = select i1 %or.cond19, i1 true, i1 %i.y
  %i.z = icmp slt i64 %.sroa.11.0.copyload, 0
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %i.z
  %i.aa = icmp slt i64 %.sroa.12.0.copyload, 0
  %or.cond25 = select i1 %or.cond23, i1 true, i1 %i.aa
  br i1 %or.cond25, label %DwaCompressor_readChannelRules.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp ult i64 %.sroa.0.0.copyload, 2
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @sLegacyChannelRules, ptr %i.ac, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 25, ptr %i.ad, align 8, !tbaa !78
  br label %DwaCompressor_readChannelRules.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp ugt i64 %i.l, 2
  br i1 %i.ae, label %bb.g, label %DwaCompressor_readChannelRules.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = load i16, ptr %i.k, align 2, !tbaa !92  ; 2 uses
  %i.ag = zext i16 %i.af to i64                   ; 3 uses
  %i.ah = icmp ult i16 %i.af, 2
  %i.ai = icmp ult i64 %i.l, %i.ag
  %or.cond549 = or i1 %i.ah, %i.ai
  br i1 %or.cond549, label %DwaCompressor_readChannelRules.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 90 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ag ; 2 uses
  %i.al = add nsw i64 %i.ag, -2                   ; 3 uses
  %.not93.i = icmp eq i64 %i.al, 0
  br i1 %.not93.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.i

bb.i:                                             ; preds = %Classifier_destroy.exit.i, %.lr.ph.i
  %.03784.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bu, %Classifier_destroy.exit.i ]
  %.06183.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.bl, %Classifier_destroy.exit.i ] ; 4 uses
  %.06282.i = phi i64 [ %i.al, %.lr.ph.i ], [ %i.bm, %Classifier_destroy.exit.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ap = icmp ult i64 %.06282.i, 4
  br i1 %i.ap, label %DwaCompressor_readChannelRules.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(129) %i.b, i8 0, i64 129, i1 false)
  %i.aq = add i64 %.06282.i, -3                   ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %bb.j
  %.04660.i.i = phi i64 [ 0, %bb.j ], [ %i.bh, %bb.q ] ; 8 uses
  %i.ar = icmp ugt i64 %.04660.i.i, %i.aq
  br i1 %i.ar, label %.thread53.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.06183.i, i64 %.04660.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !88  ; 2 uses
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %.04660.i.i
  store i8 %i.at, ptr %i.av, align 1, !tbaa !88
  %i.aw = add nuw nsw i64 %.04660.i.i, 1          ; 3 uses
  %.not = icmp ult i64 %.04660.i.i, %i.aq
  br i1 %.not, label %bb.n, label %.thread53.i.i

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.06183.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !88  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aw
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !88
  %i.bb = add nuw nsw i64 %.04660.i.i, 2          ; 4 uses
  %i.bc = icmp ugt i64 %i.bb, %i.aq
  br i1 %i.bc, label %.thread53.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.06183.i, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !88  ; 2 uses
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bb
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !88
  %i.bh = add nuw nsw i64 %.04660.i.i, 3          ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %i.bh, 129
  br i1 %exitcond.not.i.i.2, label %.thread53.i.i, label %bb.k, !llvm.loop !147

.thread.i.i:                                      ; preds = %bb.p, %bb.n, %bb.l
  %.04660.i.i.lcssa764 = phi i64 [ %.04660.i.i, %bb.l ], [ %i.aw, %bb.n ], [ %i.bb, %bb.p ] ; 2 uses
  %.pre.i.i = add nuw nsw i64 %.04660.i.i.lcssa764, 1 ; 3 uses
  %i.bi = tail call ptr %i.ao(i64 noundef %.pre.i.i) #21, !inline_history !148 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %.thread53.i.i, label %bb.r

.thread53.i.i:                                    ; preds = %.thread.i.i, %bb.k, %bb.m, %bb.o, %bb.q
  %.0.ph.i.i = phi i32 [ 23, %bb.k ], [ 23, %bb.q ], [ 23, %bb.o ], [ 23, %bb.m ], [ 1, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %DwaCompressor_readChannelRules.exit.thread

bb.r:                                             ; preds = %.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %.pre.i.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %.06183.i, i64 %.pre.i.i ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !88  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bm = sub i64 %i.aq, %.04660.i.i.lcssa764     ; 2 uses
  %i.bn = icmp ugt i8 %i.bk, 63
  br i1 %i.bn, label %Classifier_destroy.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !88
  %i.bq = and i8 %i.bk, 12
  %i.br = icmp eq i8 %i.bq, 12
  %i.bs = icmp ugt i8 %i.bp, 2
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bs
  %spec.select.i = select i1 %or.cond.i, i32 23, i32 0
  br label %Classifier_destroy.exit.i

Classifier_destroy.exit.i:                        ; preds = %bb.s, %bb.r
  %.1.i.ph.i = phi i32 [ 23, %bb.r ], [ %spec.select.i, %bb.s ] ; 2 uses
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !43
  tail call void %i.bt(ptr noundef nonnull %i.bi) #21, !inline_history !149
  %i.bu = add i64 %.03784.i, 1                    ; 2 uses
  %i.bv = icmp eq i32 %.1.i.ph.i, 0               ; 2 uses
  %i.bw = icmp ne i64 %i.bm, 0
  %i.bx = and i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.i, label %._crit_edge.i, !llvm.loop !150

._crit_edge.i:                                    ; preds = %Classifier_destroy.exit.i
  br i1 %i.bv, label %._crit_edge.thread.i, label %DwaCompressor_readChannelRules.exit.thread

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.h
  %.037.lcssa119.i = phi i64 [ %i.bu, %._crit_edge.i ], [ 0, %bb.h ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.037.lcssa119.i, ptr %i.by, align 8, !tbaa !78
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42
  %i.cb = mul i64 %.037.lcssa119.i, 24            ; 2 uses
  %i.cc = tail call ptr %i.ca(i64 noundef %i.cb) #21, !inline_history !151 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %DwaCompressor_readChannelRules.exit.thread, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cc, i8 0, i64 %i.cb, i1 false)
  %.not94.i = icmp eq i64 %.037.lcssa119.i, 0
  br i1 %.not94.i, label %DwaCompressor_readChannelRules.exit, label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.t, %Classifier_read.exit52.i
  %.090.i = phi i64 [ %i.dx, %Classifier_read.exit52.i ], [ 0, %bb.t ] ; 2 uses
  %.16388.i = phi i64 [ %.3.i, %Classifier_read.exit52.i ], [ %i.al, %bb.t ] ; 4 uses
  %.06587.i = phi ptr [ %.166.i, %Classifier_read.exit52.i ], [ %i.aj, %bb.t ] ; 6 uses
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !42
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !77
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090.i ; 6 uses
  %i.ch = icmp ult i64 %.16388.i, 4
  br i1 %i.ch, label %Classifier_read.exit52.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph92.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(129) %i.a, i8 0, i64 129, i1 false)
  %i.ci = add i64 %.16388.i, -3                   ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %bb.u
  %.04660.i44.i = phi i64 [ 0, %bb.u ], [ %i.cz, %bb.ab ] ; 8 uses
  %i.cj = icmp ugt i64 %.04660.i44.i, %i.ci
  br i1 %i.cj, label %.thread53.i46.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.06587.i, i64 %.04660.i44.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !88  ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %.thread.i49.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04660.i44.i
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !88
  %i.co = add nuw nsw i64 %.04660.i44.i, 1        ; 3 uses
  %.not776 = icmp ult i64 %.04660.i44.i, %i.ci
  br i1 %.not776, label %bb.y, label %.thread53.i46.i

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.06587.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !88  ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %.thread.i49.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !88
  %i.ct = add nuw nsw i64 %.04660.i44.i, 2        ; 4 uses
  %i.cu = icmp ugt i64 %i.ct, %i.ci
  br i1 %i.cu, label %.thread53.i46.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %.06587.i, i64 %i.ct
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !88  ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %.thread.i49.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ct
  store i8 %i.cw, ptr %i.cy, align 1, !tbaa !88
  %i.cz = add nuw nsw i64 %.04660.i44.i, 3        ; 2 uses
  %exitcond.not.i45.i.2 = icmp eq i64 %i.cz, 129
  br i1 %exitcond.not.i45.i.2, label %.thread53.i46.i, label %bb.v, !llvm.loop !147

.thread.i49.i:                                    ; preds = %bb.aa, %bb.y, %bb.w
  %.04660.i44.i.lcssa761 = phi i64 [ %.04660.i44.i, %bb.w ], [ %i.co, %bb.y ], [ %i.ct, %bb.aa ] ; 2 uses
  %.pre.i50.i = add nuw nsw i64 %.04660.i44.i.lcssa761, 1 ; 3 uses
  %i.da = tail call ptr %i.ce(i64 noundef %.pre.i50.i) #21, !inline_history !148 ; 3 uses
  %.not.i51.i = icmp eq ptr %i.da, null
  br i1 %.not.i51.i, label %.thread53.i46.i, label %bb.ac

.thread53.i46.i:                                  ; preds = %bb.v, %bb.x, %bb.z, %bb.ab, %.thread.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %Classifier_read.exit52.i

bb.ac:                                            ; preds = %.thread.i49.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.da, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %.pre.i50.i, i1 false)
  store ptr %i.da, ptr %i.cg, align 8, !tbaa !85
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 22
  store i16 0, ptr %i.db, align 2, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.dc = getelementptr inbounds nuw i8, ptr %.06587.i, i64 %.pre.i50.i ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88  ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !88  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 4 uses
  %i.dh = sub i64 %i.ci, %.04660.i44.i.lcssa761   ; 4 uses
  %i.di = zext i8 %i.dd to i32                    ; 2 uses
  %i.dj = lshr i32 %i.di, 4
  %i.dk = add nsw i32 %i.dj, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !86
  %i.dm = icmp ugt i8 %i.dd, 63
  br i1 %i.dm, label %Classifier_read.exit52.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = lshr i32 %i.di, 2
  %i.do = and i32 %i.dn, 3                        ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !87
  %i.dq = icmp eq i32 %i.do, 3
  br i1 %i.dq, label %Classifier_read.exit52.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = and i8 %i.dd, 1
  %i.ds = zext nneg i8 %i.dr to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  store i16 %i.ds, ptr %i.dt, align 4, !tbaa !84
  %i.du = icmp ugt i8 %i.df, 2
  br i1 %i.du, label %Classifier_read.exit52.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = zext nneg i8 %i.df to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !81
  br label %Classifier_read.exit52.i

Classifier_read.exit52.i:                         ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %.thread53.i46.i, %.lr.ph92.i
  %.166.i = phi ptr [ %.06587.i, %.lr.ph92.i ], [ %.06587.i, %.thread53.i46.i ], [ %i.dg, %bb.af ], [ %i.dg, %bb.ac ], [ %i.dg, %bb.ad ], [ %i.dg, %bb.ae ]
  %.3.i = phi i64 [ %.16388.i, %.lr.ph92.i ], [ %.16388.i, %.thread53.i46.i ], [ %i.dh, %bb.af ], [ %i.dh, %bb.ac ], [ %i.dh, %bb.ad ], [ %i.dh, %bb.ae ]
  %i.dx = add nuw i64 %.090.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dx, %.037.lcssa119.i
  br i1 %exitcond.not.i, label %DwaCompressor_readChannelRules.exit, label %.lr.ph92.i, !llvm.loop !152

DwaCompressor_readChannelRules.exit:              ; preds = %Classifier_read.exit52.i, %bb.e, %bb.t
  %.0496 = phi ptr [ %i.k, %bb.e ], [ %i.ak, %bb.t ], [ %i.ak, %Classifier_read.exit52.i ] ; 3 uses
  %i.dy = call fastcc i32 @DwaCompressor_initializeBuffers(ptr noundef %0, ptr noundef %i.c) ; 2 uses
  %.not441 = icmp eq i32 %i.dy, 0
  br i1 %.not441, label %bb.ag, label %DwaCompressor_readChannelRules.exit.thread

bb.ag:                                            ; preds = %DwaCompressor_readChannelRules.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !154
  store i64 %i.ee, ptr %i.c, align 8, !tbaa !76
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !93 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !94 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.0496, i64 %.sroa.5.0.copyload ; 4 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %.sroa.6.0.copyload ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.7.0.copyload ; 3 uses
  %i.em = icmp ugt ptr %.0496, %i.j
  %i.en = icmp ugt ptr %i.ej, %i.j
  %or.cond481 = select i1 %i.em, i1 true, i1 %i.en
  %i.eo = icmp slt i64 %i.h, 0
  %or.cond483 = or i1 %i.eo, %or.cond481
  %i.ep = icmp ugt ptr %i.ek, %i.j
  %or.cond484 = select i1 %or.cond483, i1 true, i1 %i.ep
  br i1 %or.cond484, label %DwaCompressor_readChannelRules.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eq = icmp slt i64 %i.i, 0
  %i.er = icmp ugt ptr %i.el, %i.j
  %or.cond485 = select i1 %i.eq, i1 true, i1 %i.er
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.8.0.copyload
  %i.et = icmp ugt ptr %i.es, %i.j
  %or.cond487 = select i1 %or.cond485, i1 true, i1 %i.et
  br i1 %or.cond487, label %DwaCompressor_readChannelRules.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = icmp ugt i64 %.sroa.0.0.copyload, 2
  br i1 %i.eu, label %DwaCompressor_readChannelRules.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @DwaCompressor_setupChannelData(ptr noundef %0)
  %.not444 = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not444, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !76
  %i.ex = icmp ugt i64 %.sroa.4.0.copyload, %i.ew
  br i1 %i.ex, label %DwaCompressor_readChannelRules.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = load ptr, ptr %i.dz, align 8, !tbaa !29
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !65
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !95
  %i.fd = tail call i32 @exr_uncompress_buffer(ptr noundef %i.fa, ptr noundef %.0496, i64 noundef %.sroa.5.0.copyload, ptr noundef %i.fc, i64 noundef %.sroa.4.0.copyload, ptr noundef null) #21
  %.not445 = icmp eq i32 %i.fd, 0
  br i1 %.not445, label %bb.am, label %DwaCompressor_readChannelRules.exit.thread

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.not446 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not446, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = load ptr, ptr %i.ef, align 8, !tbaa !93 ; 3 uses
  %.not447 = icmp eq ptr %i.fe, null
  br i1 %.not447, label %DwaCompressor_readChannelRules.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = shl nuw i64 %.sroa.11.0.copyload, 1     ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !155
  %i.fi = icmp ugt i64 %i.ff, %i.fh
  br i1 %i.fi, label %DwaCompressor_readChannelRules.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  switch i64 %.sroa.13.0.copyload, label %DwaCompressor_readChannelRules.exit.thread [
    i64 0, label %bb.aq
    i64 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 184
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !156
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 192
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !157
  %i.fo = tail call i32 @internal_huf_decompress(ptr noundef %i.fj, ptr noundef %i.ej, i64 noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.fe, i64 noundef %.sroa.11.0.copyload, ptr noundef %i.fl, i64 noundef %i.fn) #21 ; 2 uses
  %.not450 = icmp eq i32 %i.fo, 0
  br i1 %.not450, label %bb.as, label %DwaCompressor_readChannelRules.exit.thread

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.fp = load ptr, ptr %i.dz, align 8, !tbaa !29
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !65
  %i.fs = call i32 @exr_uncompress_buffer(ptr noundef %i.fr, ptr noundef %i.ej, i64 noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.fe, i64 noundef %i.ff, ptr noundef nonnull %i.d) #21 ; 2 uses
  %.not448 = icmp eq i32 %i.fs, 0                 ; 2 uses
  %i.ft = load i64, ptr %i.d, align 8
  %.not449 = icmp eq i64 %i.ff, %i.ft
  %cond10 = select i1 %.not448, i1 %.not449, i1 false
  %.0333 = select i1 %.not448, i32 23, i32 %i.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br i1 %cond10, label %bb.as, label %DwaCompressor_readChannelRules.exit.thread

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.am
  %.not451 = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not451, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.fu = shl nuw i64 %.sroa.12.0.copyload, 1     ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !158
  %i.fx = icmp ugt i64 %i.fu, %i.fw
  br i1 %i.fx, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 184
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 192
  %i.gb = call i32 @internal_decode_alloc_buffer(ptr noundef %i.fy, i32 noundef 3, ptr noundef nonnull %i.fz, ptr noundef nonnull %i.ga, i64 noundef %i.fu) #21 ; 2 uses
  %.not453 = icmp eq i32 %i.gb, 0
  br i1 %.not453, label %bb.av, label %.thread

bb.av:                                            ; preds = %bb.au
  %i.gc = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !65
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 184
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !156
  %i.gh = call i32 @exr_uncompress_buffer(ptr noundef %i.ge, ptr noundef %i.ek, i64 noundef %.sroa.7.0.copyload, ptr noundef %i.gg, i64 noundef %i.fu, ptr noundef nonnull %i.e) #21
  %.not454 = icmp eq i32 %i.gh, 0
  %i.gi = load i64, ptr %i.e, align 8
  %.not455 = icmp eq i64 %i.fu, %i.gi
  %or.cond489 = select i1 %.not454, i1 %.not455, i1 false
  br i1 %or.cond489, label %bb.aw, label %.thread

.thread:                                          ; preds = %bb.at, %bb.au, %bb.av
  %.2.ph = phi i32 [ 23, %bb.av ], [ %i.gb, %bb.au ], [ 23, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %DwaCompressor_readChannelRules.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.gj = load ptr, ptr %i.eh, align 8, !tbaa !94
  %i.gk = load ptr, ptr %i.dz, align 8, !tbaa !29
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 184
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !156
  call void @internal_zip_reconstruct_bytes(ptr noundef %i.gj, ptr noundef %i.gm, i64 noundef %i.fu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.ay

bb.ax:                                            ; preds = %bb.as
  %.not452 = icmp eq i64 %.sroa.12.0.copyload, 0
  br i1 %.not452, label %bb.ay, label %DwaCompressor_readChannelRules.exit.thread

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.not456 = icmp eq i64 %.sroa.10.0.copyload, 0
  br i1 %.not456, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !138
  %i.gp = icmp ugt i64 %.sroa.9.0.copyload, %i.go
  br i1 %i.gp, label %.thread505, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !76
  %i.gs = icmp ugt i64 %.sroa.10.0.copyload, %i.gr
  br i1 %i.gs, label %.thread505, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gt = load ptr, ptr %i.dz, align 8, !tbaa !29
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !137
  %i.gy = call i32 @exr_uncompress_buffer(ptr noundef %i.gv, ptr noundef %i.el, i64 noundef %.sroa.8.0.copyload, ptr noundef %i.gx, i64 noundef %.sroa.9.0.copyload, ptr noundef nonnull %i.f) #21
  %.not457 = icmp eq i32 %i.gy, 0
  %i.gz = load i64, ptr %i.f, align 8
  %.not458 = icmp eq i64 %i.gz, %.sroa.9.0.copyload
  %or.cond493 = select i1 %.not457, i1 %.not458, i1 false
  br i1 %or.cond493, label %bb.bc, label %.thread505

.thread505:                                       ; preds = %bb.ba, %bb.az, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %DwaCompressor_readChannelRules.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !95
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !137
  %i.hd = call i64 @internal_rle_decompress(ptr noundef %i.hb, i64 noundef %.sroa.10.0.copyload, ptr noundef %i.hc, i64 noundef %.sroa.9.0.copyload) #21
  %.not459 = icmp eq i64 %i.hd, %.sroa.10.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br i1 %.not459, label %bb.bd, label %DwaCompressor_readChannelRules.exit.thread

bb.bd:                                            ; preds = %bb.bc, %bb.ay
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !46 ; 5 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.bd
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !45 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.hf to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.hj = icmp ult i32 %i.hf, 8
  br i1 %i.hj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.bf

._crit_edge.unr-lcssa:                            ; preds = %bb.bf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_0
